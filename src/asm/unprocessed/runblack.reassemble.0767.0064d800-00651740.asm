.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern ??0MapCoords@@QAE@XZ
.extern ?SetMessage@GDebug@@SAXGPADZZ
.extern _jmp_addr_0x00513640
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x00543200
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x0056f910
.extern ??0GameThing@@QAE@XZ
.extern _jmp_addr_0x0056fa80
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern ?SetToZero@GameThingWithPos@@QAEXXZ
.extern _jmp_addr_0x005dc060
.extern _jmp_addr_0x005ebd80
.extern _jmp_addr_0x00602fc0
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern _jmp_addr_0x0064a9f0
.extern _GetRemapedPlayer__FUl
.extern _jmp_addr_0x00652300
.extern _jmp_addr_0x006524b0
.extern _jmp_addr_0x0068c1d0
.extern _jmp_addr_0x0068c650
.extern ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z
.extern _jmp_addr_0x007337d0
.extern ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ
.extern _jmp_addr_0x00741f30
.extern _jmp_addr_0x00775380
.extern _jmp_addr_0x00775720
.extern _jmp_addr_0x00775740
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ??0_Lockit@std@@QAE@XZ
.extern ??1_Lockit@std@@QAE@XZ
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern _memmove
.extern ??2@YAPAXI@Z
.extern _strncpy
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl ?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ
.globl _jmp_addr_0x0064d840
.globl _jmp_addr_0x0064d950
.globl _jmp_addr_0x0064d9b0
.globl _jmp_addr_0x0064da10
.globl _jmp_addr_0x0064da80
.globl _jmp_addr_0x0064daf0
.globl _jmp_addr_0x0064db40
.globl _jmp_addr_0x0064db70
.globl _jmp_addr_0x0064df80
.globl _jmp_addr_0x0064dfd0
.globl _jmp_addr_0x0064e060
.globl _jmp_addr_0x0064e0b0
.globl _jmp_addr_0x0064e160
.globl _jmp_addr_0x0064e200
.globl _jmp_addr_0x0064e2a0
.globl _jmp_addr_0x0064e350
.globl _jmp_addr_0x0064e3a0
.globl _jmp_addr_0x0064e440
.globl _jmp_addr_0x0064e500
.globl _jmp_addr_0x0064e5c0
.globl _jmp_addr_0x0064ffd0
.globl _jmp_addr_0x006500c0
.globl _jmp_addr_0x00650250
.globl _jmp_addr_0x00650270
.globl _jmp_addr_0x00650280
.globl _jmp_addr_0x00650300
.globl _jmp_addr_0x00650370
.globl _jmp_addr_0x006507d0
.globl _jmp_addr_0x00650840
.globl _jmp_addr_0x006508f0
.globl _jmp_addr_0x00650a70
.globl _jmp_addr_0x00650ae0
.globl _jmp_addr_0x00650b20
.globl _jmp_addr_0x00650c40
.globl _jmp_addr_0x00650d70
.globl _jmp_addr_0x00650df0
.globl _jmp_addr_0x00650ea0
.globl _jmp_addr_0x00650f90
.globl _jmp_addr_0x006510c0
.globl _jmp_addr_0x006510f0
.globl _jmp_addr_0x00651120
.globl _jmp_addr_0x006511b0
.globl _jmp_addr_0x00651210
.globl _jmp_addr_0x00651240

.globl _globl_ct_0x0064e670
.globl _globl_ct_0x0064e6a0
.globl _globl_ct_0x0064e6d0
.globl _globl_ct_0x0064e6f0
.globl _globl_ct_0x0064e720
.globl ?ToBeDeleted@PlayerActionState@@UAEXH@Z
.globl ?GetPlayer@PlayerActionState@@UAEPAVGPlayer@@XZ

start_0x0064d800_0x00651740:
// Snippet: asm, [0x0064d800, 0x00651721)
?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ:
                                    call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0064d800    e88bcfffff
                         push               eax                                           // 0x0064d805    50
                         call               _GetRemapedPlayer__FUl                        // 0x0064d806    e885ffffff
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00bff0b8]       // 0x0064d80b    8b0485b8f0bf00
                         add                esp, 0x04                                     // 0x0064d812    83c404
                         ret                                                              // 0x0064d815    c3
                         nop                                                              // 0x0064d816    90
                         nop                                                              // 0x0064d817    90
                         nop                                                              // 0x0064d818    90
                         nop                                                              // 0x0064d819    90
                         nop                                                              // 0x0064d81a    90
                         nop                                                              // 0x0064d81b    90
                         nop                                                              // 0x0064d81c    90
                         nop                                                              // 0x0064d81d    90
                         nop                                                              // 0x0064d81e    90
                         nop                                                              // 0x0064d81f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0064d820    8b442404
                         push               eax                                           // 0x0064d824    50
                         call               _GetRemapedPlayer__FUl                        // 0x0064d825    e866ffffff
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00bff0b8]       // 0x0064d82a    8b0485b8f0bf00
                         add                esp, 0x04                                     // 0x0064d831    83c404
                         ret                                                              // 0x0064d834    c3
                         nop                                                              // 0x0064d835    90
                         nop                                                              // 0x0064d836    90
                         nop                                                              // 0x0064d837    90
                         nop                                                              // 0x0064d838    90
                         nop                                                              // 0x0064d839    90
                         nop                                                              // 0x0064d83a    90
                         nop                                                              // 0x0064d83b    90
                         nop                                                              // 0x0064d83c    90
                         nop                                                              // 0x0064d83d    90
                         nop                                                              // 0x0064d83e    90
                         nop                                                              // 0x0064d83f    90
_jmp_addr_0x0064d840:    sub                esp, 0x000000c8                               // 0x0064d840    81ecc8000000
                         push               ebx                                           // 0x0064d846    53
                         push               ebp                                           // 0x0064d847    55
                         push               esi                                           // 0x0064d848    56
                         push               edi                                           // 0x0064d849    57
                         mov.s              ebx, ecx                                      // 0x0064d84a    8bd9
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0064d84c    e83fcfffff
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00bff094]       // 0x0064d851    8b048594f0bf00
                         push               eax                                           // 0x0064d858    50
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0064d859    8d442414
                         push               0x00bff204                                    // 0x0064d85d    6804f2bf00
                         push               eax                                           // 0x0064d862    50
                         call               _sprintf                                      // 0x0064d863    e86a7f1700
                         {disp32} mov       ebp, dword ptr [esp + 0x000000e8]             // 0x0064d868    8bac24e8000000
                         or                 ecx, 0xffffffff                               // 0x0064d86f    83c9ff
                         xor.s              eax, eax                                      // 0x0064d872    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x1c]                   // 0x0064d874    8d7c241c
                         repne scasb                                                      // 0x0064d878    f2ae
                         not                ecx                                           // 0x0064d87a    f7d1
                         dec                ecx                                           // 0x0064d87c    49
                         push               ecx                                           // 0x0064d87d    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0064d87e    8d4c2420
                         push               ecx                                           // 0x0064d882    51
                         push               ebp                                           // 0x0064d883    55
                         push               ebx                                           // 0x0064d884    53
                         call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x0064d885    e886bd0c00
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000944]             // 0x0064d88a    8b8b44090000
                         add                esp, 0x1c                                     // 0x0064d890    83c41c
                         test               ecx, ecx                                      // 0x0064d893    85c9
                         {disp8} je         _jmp_addr_0x0064d89f                          // 0x0064d895    7408
                         mov                edx, dword ptr [ecx]                          // 0x0064d897    8b11
                         call               dword ptr [edx + 0x40c]                       // 0x0064d899    ff920c040000
_jmp_addr_0x0064d89f:    {disp32} mov       esi, dword ptr [ebx + 0x00000a50]             // 0x0064d89f    8bb3500a0000
                         test               esi, esi                                      // 0x0064d8a5    85f6
                         {disp8} je         _jmp_addr_0x0064d8f7                          // 0x0064d8a7    744e
_jmp_addr_0x0064d8a9:    {disp32} mov       eax, dword ptr [esi + 0x000005b4]             // 0x0064d8a9    8b86b4050000
                         push               eax                                           // 0x0064d8af    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0064d8b0    8d4c2414
                         push               0x00bff1d4                                    // 0x0064d8b4    68d4f1bf00
                         push               ecx                                           // 0x0064d8b9    51
                         call               _sprintf                                      // 0x0064d8ba    e8137f1700
                         or                 ecx, 0xffffffff                               // 0x0064d8bf    83c9ff
                         xor.s              eax, eax                                      // 0x0064d8c2    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x1c]                   // 0x0064d8c4    8d7c241c
                         repne scasb                                                      // 0x0064d8c8    f2ae
                         not                ecx                                           // 0x0064d8ca    f7d1
                         dec                ecx                                           // 0x0064d8cc    49
                         push               ecx                                           // 0x0064d8cd    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0064d8ce    8d542420
                         push               edx                                           // 0x0064d8d2    52
                         push               ebp                                           // 0x0064d8d3    55
                         push               ebx                                           // 0x0064d8d4    53
                         call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x0064d8d5    e836bd0c00
                         {disp32} mov       eax, dword ptr [esp + 0x000000fc]             // 0x0064d8da    8b8424fc000000
                         add                esp, 0x1c                                     // 0x0064d8e1    83c41c
                         push               eax                                           // 0x0064d8e4    50
                         push               ebp                                           // 0x0064d8e5    55
                         mov.s              ecx, esi                                      // 0x0064d8e6    8bce
                         call               _jmp_addr_0x00741f30                          // 0x0064d8e8    e843460f00
                         {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x0064d8ed    8bb65c070000
                         test               esi, esi                                      // 0x0064d8f3    85f6
                         {disp8} jne        _jmp_addr_0x0064d8a9                          // 0x0064d8f5    75b2
_jmp_addr_0x0064d8f7:    {disp32} mov       ebx, dword ptr [ebx + 0x00000a48]             // 0x0064d8f7    8b9b480a0000
                         test               ebx, ebx                                      // 0x0064d8fd    85db
                         {disp8} je         _jmp_addr_0x0064d937                          // 0x0064d8ff    7436
                         {disp8} mov        edi, dword ptr [ebx + 0x30]                   // 0x0064d901    8b7b30
                         test               edi, edi                                      // 0x0064d904    85ff
                         {disp8} je         _jmp_addr_0x0064d915                          // 0x0064d906    740d
                         mov                edx, dword ptr [edi]                          // 0x0064d908    8b17
                         push               0x0                                           // 0x0064d90a    6a00
                         push               ebp                                           // 0x0064d90c    55
                         mov.s              ecx, edi                                      // 0x0064d90d    8bcf
                         call               dword ptr [edx + 0x82c]                       // 0x0064d90f    ff922c080000
_jmp_addr_0x0064d915:    {disp8} mov        esi, dword ptr [ebx + 0x4c]                   // 0x0064d915    8b734c
                         test               esi, esi                                      // 0x0064d918    85f6
                         {disp8} je         _jmp_addr_0x0064d937                          // 0x0064d91a    741b
_jmp_addr_0x0064d91c:    cmp.s              esi, edi                                      // 0x0064d91c    3bf7
                         {disp8} je         _jmp_addr_0x0064d92d                          // 0x0064d91e    740d
                         mov                eax, dword ptr [esi]                          // 0x0064d920    8b06
                         push               0x0                                           // 0x0064d922    6a00
                         push               ebp                                           // 0x0064d924    55
                         mov.s              ecx, esi                                      // 0x0064d925    8bce
                         call               dword ptr [eax + 0x82c]                       // 0x0064d927    ff902c080000
_jmp_addr_0x0064d92d:    {disp32} mov       esi, dword ptr [esi + 0x00000084]             // 0x0064d92d    8bb684000000
                         test               esi, esi                                      // 0x0064d933    85f6
                         {disp8} jne        _jmp_addr_0x0064d91c                          // 0x0064d935    75e5
_jmp_addr_0x0064d937:    pop                edi                                           // 0x0064d937    5f
                         pop                esi                                           // 0x0064d938    5e
                         pop                ebp                                           // 0x0064d939    5d
                         mov                eax, 0x00000001                               // 0x0064d93a    b801000000
                         pop                ebx                                           // 0x0064d93f    5b
                         add                esp, 0x000000c8                               // 0x0064d940    81c4c8000000
                         ret                0x0008                                        // 0x0064d946    c20800
                         nop                                                              // 0x0064d949    90
                         nop                                                              // 0x0064d94a    90
                         nop                                                              // 0x0064d94b    90
                         nop                                                              // 0x0064d94c    90
                         nop                                                              // 0x0064d94d    90
                         nop                                                              // 0x0064d94e    90
                         nop                                                              // 0x0064d94f    90
_jmp_addr_0x0064d950:    push               ebx                                           // 0x0064d950    53
                         push               ebp                                           // 0x0064d951    55
                         mov.s              ebp, ecx                                      // 0x0064d952    8be9
                         push               edi                                           // 0x0064d954    57
                         {disp32} mov       edi, dword ptr [ebp + 0x00000a50]             // 0x0064d955    8bbd500a0000
                         xor.s              ebx, ebx                                      // 0x0064d95b    33db
                         test               edi, edi                                      // 0x0064d95d    85ff
                         {disp8} je         _jmp_addr_0x0064d9aa                          // 0x0064d95f    7449
                         push               esi                                           // 0x0064d961    56
_jmp_addr_0x0064d962:    mov.s              ecx, edi                                      // 0x0064d962    8bcf
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x0064d964    e847dc0e00
                         test               eax, eax                                      // 0x0064d969    85c0
                         {disp8} je         _jmp_addr_0x0064d98d                          // 0x0064d96b    7420
                         xor.s              esi, esi                                      // 0x0064d96d    33f6
_jmp_addr_0x0064d96f:    push               esi                                           // 0x0064d96f    56
                         push               0x1                                           // 0x0064d970    6a01
                         mov.s              ecx, edi                                      // 0x0064d972    8bcf
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x0064d974    e837dc0e00
                         mov.s              ecx, eax                                      // 0x0064d979    8bc8
                         call               _jmp_addr_0x007337d0                          // 0x0064d97b    e8505e0e00
                         test               eax, eax                                      // 0x0064d980    85c0
                         {disp8} je         _jmp_addr_0x0064d987                          // 0x0064d982    7403
                         add                ebx, dword ptr [eax + 0x70]                   // 0x0064d984    035870
_jmp_addr_0x0064d987:    inc                esi                                           // 0x0064d987    46
                         cmp                esi, 0x05                                     // 0x0064d988    83fe05
                         {disp8} jl         _jmp_addr_0x0064d96f                          // 0x0064d98b    7ce2
_jmp_addr_0x0064d98d:    test               edi, edi                                      // 0x0064d98d    85ff
                         {disp8} jne        _jmp_addr_0x0064d999                          // 0x0064d98f    7508
                         {disp32} mov       edi, dword ptr [ebp + 0x00000a50]             // 0x0064d991    8bbd500a0000
                         {disp8} jmp        _jmp_addr_0x0064d99f                          // 0x0064d997    eb06
_jmp_addr_0x0064d999:    {disp32} mov       edi, dword ptr [edi + 0x0000075c]             // 0x0064d999    8bbf5c070000
_jmp_addr_0x0064d99f:    test               edi, edi                                      // 0x0064d99f    85ff
                         {disp8} jne        _jmp_addr_0x0064d962                          // 0x0064d9a1    75bf
                         pop                esi                                           // 0x0064d9a3    5e
                         pop                edi                                           // 0x0064d9a4    5f
                         pop                ebp                                           // 0x0064d9a5    5d
                         mov.s              eax, ebx                                      // 0x0064d9a6    8bc3
                         pop                ebx                                           // 0x0064d9a8    5b
                         ret                                                              // 0x0064d9a9    c3
_jmp_addr_0x0064d9aa:    pop                edi                                           // 0x0064d9aa    5f
                         pop                ebp                                           // 0x0064d9ab    5d
                         mov.s              eax, ebx                                      // 0x0064d9ac    8bc3
                         pop                ebx                                           // 0x0064d9ae    5b
                         ret                                                              // 0x0064d9af    c3
_jmp_addr_0x0064d9b0:    push               ebx                                           // 0x0064d9b0    53
                         push               esi                                           // 0x0064d9b1    56
                         mov.s              ebx, ecx                                      // 0x0064d9b2    8bd9
                         {disp32} mov       esi, dword ptr [ebx + 0x00000a50]             // 0x0064d9b4    8bb3500a0000
                         push               edi                                           // 0x0064d9ba    57
                         xor.s              edi, edi                                      // 0x0064d9bb    33ff
                         test               esi, esi                                      // 0x0064d9bd    85f6
                         {disp8} je         _jmp_addr_0x0064d9fb                          // 0x0064d9bf    743a
_jmp_addr_0x0064d9c1:    mov.s              ecx, esi                                      // 0x0064d9c1    8bce
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x0064d9c3    e8e8db0e00
                         test               eax, eax                                      // 0x0064d9c8    85c0
                         {disp8} je         _jmp_addr_0x0064d9e5                          // 0x0064d9ca    7419
                         push               0x0                                           // 0x0064d9cc    6a00
                         push               0x0                                           // 0x0064d9ce    6a00
                         mov.s              ecx, esi                                      // 0x0064d9d0    8bce
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x0064d9d2    e8d9db0e00
                         mov.s              ecx, eax                                      // 0x0064d9d7    8bc8
                         call               _jmp_addr_0x007337d0                          // 0x0064d9d9    e8f25d0e00
                         test               eax, eax                                      // 0x0064d9de    85c0
                         {disp8} je         _jmp_addr_0x0064d9e5                          // 0x0064d9e0    7403
                         add                edi, dword ptr [eax + 0x70]                   // 0x0064d9e2    037870
_jmp_addr_0x0064d9e5:    test               esi, esi                                      // 0x0064d9e5    85f6
                         {disp8} jne        _jmp_addr_0x0064d9f1                          // 0x0064d9e7    7508
                         {disp32} mov       esi, dword ptr [ebx + 0x00000a50]             // 0x0064d9e9    8bb3500a0000
                         {disp8} jmp        _jmp_addr_0x0064d9f7                          // 0x0064d9ef    eb06
_jmp_addr_0x0064d9f1:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x0064d9f1    8bb65c070000
_jmp_addr_0x0064d9f7:    test               esi, esi                                      // 0x0064d9f7    85f6
                         {disp8} jne        _jmp_addr_0x0064d9c1                          // 0x0064d9f9    75c6
_jmp_addr_0x0064d9fb:    mov.s              eax, edi                                      // 0x0064d9fb    8bc7
                         pop                edi                                           // 0x0064d9fd    5f
                         pop                esi                                           // 0x0064d9fe    5e
                         pop                ebx                                           // 0x0064d9ff    5b
                         ret                                                              // 0x0064da00    c3
                         nop                                                              // 0x0064da01    90
                         nop                                                              // 0x0064da02    90
                         nop                                                              // 0x0064da03    90
                         nop                                                              // 0x0064da04    90
                         nop                                                              // 0x0064da05    90
                         nop                                                              // 0x0064da06    90
                         nop                                                              // 0x0064da07    90
                         nop                                                              // 0x0064da08    90
                         nop                                                              // 0x0064da09    90
                         nop                                                              // 0x0064da0a    90
                         nop                                                              // 0x0064da0b    90
                         nop                                                              // 0x0064da0c    90
                         nop                                                              // 0x0064da0d    90
                         nop                                                              // 0x0064da0e    90
                         nop                                                              // 0x0064da0f    90
_jmp_addr_0x0064da10:    sub                esp, 0x08                                     // 0x0064da10    83ec08
                         push               edi                                           // 0x0064da13    57
                         mov.s              edi, ecx                                      // 0x0064da14    8bf9
                         test               edi, edi                                      // 0x0064da16    85ff
                         {disp8} je         _jmp_addr_0x0064da76                          // 0x0064da18    745c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0064da1a    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0064da20    e85b55f0ff
                         test               eax, eax                                      // 0x0064da25    85c0
                         {disp8} je         _jmp_addr_0x0064da76                          // 0x0064da27    744d
                         push               esi                                           // 0x0064da29    56
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0064da2a    8d442414
                         {disp32} lea       esi, dword ptr [edi + 0x000000f8]             // 0x0064da2e    8db7f8000000
                         push               eax                                           // 0x0064da34    50
                         mov.s              ecx, esi                                      // 0x0064da35    8bce
                         call               _jmp_addr_0x005ebd80                          // 0x0064da37    e844e3f9ff
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x0064da3c    8b7604
                         cmp.s              eax, esi                                      // 0x0064da3f    3bc6
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0064da41    89442408
                         {disp8} je         _jmp_addr_0x0064da56                          // 0x0064da45    740f
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0064da47    8b4c2414
                         cmp                ecx, dword ptr [eax + 0x0c]                   // 0x0064da4b    3b480c
                         {disp8} jl         _jmp_addr_0x0064da56                          // 0x0064da4e    7c06
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0064da50    8d442408
                         {disp8} jmp        _jmp_addr_0x0064da5e                          // 0x0064da54    eb08
_jmp_addr_0x0064da56:    {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x0064da56    8974240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0064da5a    8d44240c
_jmp_addr_0x0064da5e:    mov                eax, dword ptr [eax]                          // 0x0064da5e    8b00
                         cmp                eax, dword ptr [edi + 0x000000fc]             // 0x0064da60    3b87fc000000
                         pop                esi                                           // 0x0064da66    5e
                         {disp8} je         _jmp_addr_0x0064da76                          // 0x0064da67    740d
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0064da69    8b542414
                         push               edx                                           // 0x0064da6d    52
                         {disp8} lea        ecx, dword ptr [eax + 0x10]                   // 0x0064da6e    8d4810
                         call               _jmp_addr_0x00775740                          // 0x0064da71    e8ca7c1200
_jmp_addr_0x0064da76:    pop                edi                                           // 0x0064da76    5f
                         add                esp, 0x08                                     // 0x0064da77    83c408
                         ret                0x0008                                        // 0x0064da7a    c20800
                         nop                                                              // 0x0064da7d    90
                         nop                                                              // 0x0064da7e    90
                         nop                                                              // 0x0064da7f    90
_jmp_addr_0x0064da80:    sub                esp, 0x08                                     // 0x0064da80    83ec08
                         push               edi                                           // 0x0064da83    57
                         mov.s              edi, ecx                                      // 0x0064da84    8bf9
                         test               edi, edi                                      // 0x0064da86    85ff
                         {disp8} je         _jmp_addr_0x0064dae6                          // 0x0064da88    745c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0064da8a    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0064da90    e8eb54f0ff
                         test               eax, eax                                      // 0x0064da95    85c0
                         {disp8} je         _jmp_addr_0x0064dae6                          // 0x0064da97    744d
                         push               esi                                           // 0x0064da99    56
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0064da9a    8d442414
                         {disp32} lea       esi, dword ptr [edi + 0x000000f8]             // 0x0064da9e    8db7f8000000
                         push               eax                                           // 0x0064daa4    50
                         mov.s              ecx, esi                                      // 0x0064daa5    8bce
                         call               _jmp_addr_0x005ebd80                          // 0x0064daa7    e8d4e2f9ff
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x0064daac    8b7604
                         cmp.s              eax, esi                                      // 0x0064daaf    3bc6
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0064dab1    89442408
                         {disp8} je         _jmp_addr_0x0064dac6                          // 0x0064dab5    740f
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0064dab7    8b4c2414
                         cmp                ecx, dword ptr [eax + 0x0c]                   // 0x0064dabb    3b480c
                         {disp8} jl         _jmp_addr_0x0064dac6                          // 0x0064dabe    7c06
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0064dac0    8d442408
                         {disp8} jmp        _jmp_addr_0x0064dace                          // 0x0064dac4    eb08
_jmp_addr_0x0064dac6:    {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x0064dac6    8974240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0064daca    8d44240c
_jmp_addr_0x0064dace:    mov                eax, dword ptr [eax]                          // 0x0064dace    8b00
                         cmp                eax, dword ptr [edi + 0x000000fc]             // 0x0064dad0    3b87fc000000
                         pop                esi                                           // 0x0064dad6    5e
                         {disp8} je         _jmp_addr_0x0064dae6                          // 0x0064dad7    740d
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0064dad9    8b542414
                         push               edx                                           // 0x0064dadd    52
                         {disp8} lea        ecx, dword ptr [eax + 0x10]                   // 0x0064dade    8d4810
                         call               _jmp_addr_0x00775720                          // 0x0064dae1    e83a7c1200
_jmp_addr_0x0064dae6:    pop                edi                                           // 0x0064dae6    5f
                         add                esp, 0x08                                     // 0x0064dae7    83c408
                         ret                0x0008                                        // 0x0064daea    c20800
                         nop                                                              // 0x0064daed    90
                         nop                                                              // 0x0064daee    90
                         nop                                                              // 0x0064daef    90
_jmp_addr_0x0064daf0:    push               esi                                           // 0x0064daf0    56
                         mov.s              esi, ecx                                      // 0x0064daf1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000008d8]             // 0x0064daf3    8b86d8080000
                         cmp                eax, 0x000001f3                               // 0x0064daf9    3df3010000
                         {disp8} jne        _jmp_addr_0x0064db1d                          // 0x0064dafe    751d
                         push               0x000007cc                                    // 0x0064db00    68cc070000
                         {disp32} lea       eax, dword ptr [esi + 0x0000010c]             // 0x0064db05    8d860c010000
                         push               eax                                           // 0x0064db0b    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00000108]             // 0x0064db0c    8d8e08010000
                         push               ecx                                           // 0x0064db12    51
                         call               _memmove                                      // 0x0064db13    e8d8851700
                         add                esp, 0x0c                                     // 0x0064db18    83c40c
                         {disp8} jmp        _jmp_addr_0x0064db24                          // 0x0064db1b    eb07
_jmp_addr_0x0064db1d:    inc                eax                                           // 0x0064db1d    40
                         {disp32} mov       dword ptr [esi + 0x000008d8], eax             // 0x0064db1e    8986d8080000
_jmp_addr_0x0064db24:    {disp32} mov       edx, dword ptr [esi + 0x000008d8]             // 0x0064db24    8b96d8080000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0064db2a    d9442408
                         {disp32} fstp      dword ptr [esi + edx * 0x4 + 0x00000108]      // 0x0064db2e    d99c9608010000
                         pop                esi                                           // 0x0064db35    5e
                         ret                0x0004                                        // 0x0064db36    c20400
                         nop                                                              // 0x0064db39    90
                         nop                                                              // 0x0064db3a    90
                         nop                                                              // 0x0064db3b    90
                         nop                                                              // 0x0064db3c    90
                         nop                                                              // 0x0064db3d    90
                         nop                                                              // 0x0064db3e    90
                         nop                                                              // 0x0064db3f    90
_jmp_addr_0x0064db40:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30a654]        // 0x0064db40    8b0d5406cd00
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0064db46    8b4104
                         cmp                eax, dword ptr [data_bytes + 0x286d20]        // 0x0064db49    3b0520cdc400
                         {disp8} jne        _jmp_addr_0x0064db5d                          // 0x0064db4f    750c
                         push               0x0                                           // 0x0064db51    6a00
                         call               _jmp_addr_0x00543200                          // 0x0064db53    e8a856efff
                         call               _jmp_addr_0x00513640                          // 0x0064db58    e8e35aecff
_jmp_addr_0x0064db5d:    {disp32} jmp       _HideAll__13DialogBoxBaseFv@0                 // 0x0064db5d    e97e5becff
                         nop                                                              // 0x0064db62    90
                         nop                                                              // 0x0064db63    90
                         nop                                                              // 0x0064db64    90
                         nop                                                              // 0x0064db65    90
                         nop                                                              // 0x0064db66    90
                         nop                                                              // 0x0064db67    90
                         nop                                                              // 0x0064db68    90
                         nop                                                              // 0x0064db69    90
                         nop                                                              // 0x0064db6a    90
                         nop                                                              // 0x0064db6b    90
                         nop                                                              // 0x0064db6c    90
                         nop                                                              // 0x0064db6d    90
                         nop                                                              // 0x0064db6e    90
                         nop                                                              // 0x0064db6f    90
_jmp_addr_0x0064db70:    sub                esp, 0x10                                     // 0x0064db70    83ec10
                         push               ebx                                           // 0x0064db73    53
                         push               ebp                                           // 0x0064db74    55
                         push               esi                                           // 0x0064db75    56
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0064db76    894c240c
                         push               edi                                           // 0x0064db7a    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x0064db7b    8b7c2428
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0064db7f    8d4c2428
                         call               _jmp_addr_0x0056f910                          // 0x0064db83    e8881df2ff
                         mov                esi, dword ptr [edi]                          // 0x0064db88    8b37
                         {disp32} mov       edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064db8a    8b15e419d000
                         cmp.s              esi, edx                                      // 0x0064db90    3bf2
                         {disp8} lea        ebx, dword ptr [edi + 0x08]                   // 0x0064db92    8d5f08
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0064db95    897c2414
                         mov.s              ebp, ebx                                      // 0x0064db99    8beb
                         {disp8} jne        _jmp_addr_0x0064dba1                          // 0x0064db9b    7504
                         mov                esi, dword ptr [ebx]                          // 0x0064db9d    8b33
                         {disp8} jmp        _jmp_addr_0x0064dbbf                          // 0x0064db9f    eb1e
_jmp_addr_0x0064dba1:    mov                eax, dword ptr [ebx]                          // 0x0064dba1    8b03
                         cmp.s              eax, edx                                      // 0x0064dba3    3bc2
                         {disp8} je         _jmp_addr_0x0064dbbf                          // 0x0064dba5    7418
                         mov                ecx, dword ptr [eax]                          // 0x0064dba7    8b08
                         cmp.s              ecx, edx                                      // 0x0064dba9    3bca
                         {disp8} je         _jmp_addr_0x0064dbb5                          // 0x0064dbab    7408
_jmp_addr_0x0064dbad:    mov.s              eax, ecx                                      // 0x0064dbad    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x0064dbaf    8b08
                         cmp.s              ecx, edx                                      // 0x0064dbb1    3bca
                         {disp8} jne        _jmp_addr_0x0064dbad                          // 0x0064dbb3    75f8
_jmp_addr_0x0064dbb5:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x0064dbb5    8b7008
                         {disp8} lea        ebp, dword ptr [eax + 0x08]                   // 0x0064dbb8    8d6808
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0064dbbb    89442414
_jmp_addr_0x0064dbbf:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0064dbbf    8d4c241c
                         call               ??0_Lockit@std@@QAE@XZ                        // 0x0064dbc3    e8db121600
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0064dbc8    8b542414
                         cmp.s              edx, edi                                      // 0x0064dbcc    3bd7
                         {disp8} je         _jmp_addr_0x0064dc33                          // 0x0064dbce    7463
                         mov                eax, dword ptr [edi]                          // 0x0064dbd0    8b07
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0064dbd2    895004
                         mov                ecx, dword ptr [edi]                          // 0x0064dbd5    8b0f
                         mov                dword ptr [edx], ecx                          // 0x0064dbd7    890a
                         cmp                edx, dword ptr [ebx]                          // 0x0064dbd9    3b13
                         {disp8} jne        _jmp_addr_0x0064dbe2                          // 0x0064dbdb    7505
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x0064dbdd    895604
                         {disp8} jmp        _jmp_addr_0x0064dbf7                          // 0x0064dbe0    eb15
_jmp_addr_0x0064dbe2:    {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0064dbe2    8b4204
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0064dbe5    894604
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0064dbe8    8b4a04
                         mov                dword ptr [ecx], esi                          // 0x0064dbeb    8931
                         mov                eax, dword ptr [ebx]                          // 0x0064dbed    8b03
                         {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x0064dbef    894500
                         mov                ecx, dword ptr [ebx]                          // 0x0064dbf2    8b0b
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0064dbf4    895104
_jmp_addr_0x0064dbf7:    {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0064dbf7    8b6c2410
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0064dbfb    8b4504
                         cmp                dword ptr [eax + 0x04], edi                   // 0x0064dbfe    397804
                         {disp8} jne        _jmp_addr_0x0064dc08                          // 0x0064dc01    7505
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0064dc03    895004
                         {disp8} jmp        _jmp_addr_0x0064dc16                          // 0x0064dc06    eb0e
_jmp_addr_0x0064dc08:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0064dc08    8b4704
                         cmp                dword ptr [eax], edi                          // 0x0064dc0b    3938
                         {disp8} jne        _jmp_addr_0x0064dc13                          // 0x0064dc0d    7504
                         mov                dword ptr [eax], edx                          // 0x0064dc0f    8910
                         {disp8} jmp        _jmp_addr_0x0064dc16                          // 0x0064dc11    eb03
_jmp_addr_0x0064dc13:    {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0064dc13    895008
_jmp_addr_0x0064dc16:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0064dc16    8b4704
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0064dc19    894204
                         {disp8} mov        eax, dword ptr [edx + 0x20]                   // 0x0064dc1c    8b4220
                         {disp8} mov        ecx, dword ptr [edi + 0x20]                   // 0x0064dc1f    8b4f20
                         {disp8} mov        dword ptr [edx + 0x20], ecx                   // 0x0064dc22    894a20
                         {disp8} mov        dword ptr [edi + 0x20], eax                   // 0x0064dc25    894720
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0064dc28    897c2414
                         mov.s              edx, edi                                      // 0x0064dc2c    8bd7
                         {disp32} jmp       _jmp_addr_0x0064dcc0                          // 0x0064dc2e    e98d000000
_jmp_addr_0x0064dc33:    {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0064dc33    8b4204
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0064dc36    8b4c2410
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0064dc3a    894604
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0064dc3d    8b4104
                         cmp                dword ptr [eax + 0x04], edi                   // 0x0064dc40    397804
                         {disp8} jne        _jmp_addr_0x0064dc4a                          // 0x0064dc43    7505
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0064dc45    897004
                         {disp8} jmp        _jmp_addr_0x0064dc58                          // 0x0064dc48    eb0e
_jmp_addr_0x0064dc4a:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0064dc4a    8b4704
                         cmp                dword ptr [eax], edi                          // 0x0064dc4d    3938
                         {disp8} jne        _jmp_addr_0x0064dc55                          // 0x0064dc4f    7504
                         mov                dword ptr [eax], esi                          // 0x0064dc51    8930
                         {disp8} jmp        _jmp_addr_0x0064dc58                          // 0x0064dc53    eb03
_jmp_addr_0x0064dc55:    {disp8} mov        dword ptr [eax + 0x08], esi                   // 0x0064dc55    897008
_jmp_addr_0x0064dc58:    {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0064dc58    8b4104
                         cmp                dword ptr [eax], edi                          // 0x0064dc5b    3938
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0064dc5d    89442418
                         {disp8} jne        _jmp_addr_0x0064dc90                          // 0x0064dc61    752d
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x33b9e4]        // 0x0064dc63    8b2de419d000
                         cmp                dword ptr [ebx], ebp                          // 0x0064dc69    392b
                         {disp8} jne        _jmp_addr_0x0064dc74                          // 0x0064dc6b    7507
                         {disp8} mov        ebx, dword ptr [edi + 0x04]                   // 0x0064dc6d    8b5f04
                         mov                dword ptr [eax], ebx                          // 0x0064dc70    8918
                         {disp8} jmp        _jmp_addr_0x0064dc90                          // 0x0064dc72    eb1c
_jmp_addr_0x0064dc74:    mov                ebx, dword ptr [esi]                          // 0x0064dc74    8b1e
                         cmp.s              ebx, ebp                                      // 0x0064dc76    3bdd
                         mov.s              ecx, esi                                      // 0x0064dc78    8bce
                         {disp8} je         _jmp_addr_0x0064dc8a                          // 0x0064dc7a    740e
                         mov.s              eax, ebx                                      // 0x0064dc7c    8bc3
_jmp_addr_0x0064dc7e:    mov.s              ecx, eax                                      // 0x0064dc7e    8bc8
                         mov                eax, dword ptr [ecx]                          // 0x0064dc80    8b01
                         cmp.s              eax, ebp                                      // 0x0064dc82    3bc5
                         {disp8} jne        _jmp_addr_0x0064dc7e                          // 0x0064dc84    75f8
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0064dc86    8b442418
_jmp_addr_0x0064dc8a:    mov                dword ptr [eax], ecx                          // 0x0064dc8a    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0064dc8c    8b4c2410
_jmp_addr_0x0064dc90:    {disp8} mov        ebp, dword ptr [ecx + 0x04]                   // 0x0064dc90    8b6904
                         cmp                dword ptr [ebp + 0x08], edi                   // 0x0064dc93    397d08
                         {disp8} jne        _jmp_addr_0x0064dcbc                          // 0x0064dc96    7524
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064dc98    8b1de419d000
                         cmp                dword ptr [edi], ebx                          // 0x0064dc9e    391f
                         {disp8} jne        _jmp_addr_0x0064dca7                          // 0x0064dca0    7505
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0064dca2    8b4f04
                         {disp8} jmp        _jmp_addr_0x0064dcb9                          // 0x0064dca5    eb12
_jmp_addr_0x0064dca7:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0064dca7    8b4608
                         cmp.s              eax, ebx                                      // 0x0064dcaa    3bc3
                         mov.s              ecx, esi                                      // 0x0064dcac    8bce
                         {disp8} je         _jmp_addr_0x0064dcb9                          // 0x0064dcae    7409
_jmp_addr_0x0064dcb0:    mov.s              ecx, eax                                      // 0x0064dcb0    8bc8
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0064dcb2    8b4108
                         cmp.s              eax, ebx                                      // 0x0064dcb5    3bc3
                         {disp8} jne        _jmp_addr_0x0064dcb0                          // 0x0064dcb7    75f7
_jmp_addr_0x0064dcb9:    {disp8} mov        dword ptr [ebp + 0x08], ecx                   // 0x0064dcb9    894d08
_jmp_addr_0x0064dcbc:    {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0064dcbc    8b6c2410
_jmp_addr_0x0064dcc0:    {disp8} mov        eax, dword ptr [edx + 0x20]                   // 0x0064dcc0    8b4220
                         mov                ebx, 0x00000001                               // 0x0064dcc3    bb01000000
                         cmp.s              eax, ebx                                      // 0x0064dcc8    3bc3
                         {disp32} jne       _jmp_addr_0x0064df38                          // 0x0064dcca    0f8568020000
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0064dcd0    8b5504
                         cmp                esi, dword ptr [edx + 0x04]                   // 0x0064dcd3    3b7204
                         {disp32} je        _jmp_addr_0x0064df35                          // 0x0064dcd6    0f8459020000
                         xor.s              edi, edi                                      // 0x0064dcdc    33ff
_jmp_addr_0x0064dcde:    cmp                dword ptr [esi + 0x20], ebx                   // 0x0064dcde    395e20
                         {disp32} jne       _jmp_addr_0x0064df35                          // 0x0064dce1    0f854e020000
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0064dce7    8b4e04
                         mov                eax, dword ptr [ecx]                          // 0x0064dcea    8b01
                         cmp.s              esi, eax                                      // 0x0064dcec    3bf0
                         {disp8} jne        _jmp_addr_0x0064dd5e                          // 0x0064dcee    756e
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0064dcf0    8b4108
                         cmp                dword ptr [eax + 0x20], edi                   // 0x0064dcf3    397820
                         {disp8} jne        _jmp_addr_0x0064dd45                          // 0x0064dcf6    754d
                         {disp8} mov        dword ptr [eax + 0x20], ebx                   // 0x0064dcf8    895820
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064dcfb    8b4604
                         {disp8} mov        dword ptr [eax + 0x20], edi                   // 0x0064dcfe    897820
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064dd01    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0064dd04    8b4808
                         mov                edx, dword ptr [ecx]                          // 0x0064dd07    8b11
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0064dd09    895008
                         mov                edx, dword ptr [ecx]                          // 0x0064dd0c    8b11
                         cmp                edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064dd0e    3b15e419d000
                         {disp8} je         _jmp_addr_0x0064dd19                          // 0x0064dd14    7403
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0064dd16    894204
_jmp_addr_0x0064dd19:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064dd19    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0064dd1c    895104
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0064dd1f    8b5504
                         cmp                eax, dword ptr [edx + 0x04]                   // 0x0064dd22    3b4204
                         {disp8} jne        _jmp_addr_0x0064dd2c                          // 0x0064dd25    7505
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0064dd27    894a04
                         {disp8} jmp        _jmp_addr_0x0064dd3a                          // 0x0064dd2a    eb0e
_jmp_addr_0x0064dd2c:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064dd2c    8b5004
                         cmp                eax, dword ptr [edx]                          // 0x0064dd2f    3b02
                         {disp8} jne        _jmp_addr_0x0064dd37                          // 0x0064dd31    7504
                         mov                dword ptr [edx], ecx                          // 0x0064dd33    890a
                         {disp8} jmp        _jmp_addr_0x0064dd3a                          // 0x0064dd35    eb03
_jmp_addr_0x0064dd37:    {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0064dd37    894a08
_jmp_addr_0x0064dd3a:    mov                dword ptr [ecx], eax                          // 0x0064dd3a    8901
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0064dd3c    894804
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064dd3f    8b4604
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0064dd42    8b4008
_jmp_addr_0x0064dd45:    mov                ecx, dword ptr [eax]                          // 0x0064dd45    8b08
                         cmp                dword ptr [ecx + 0x20], ebx                   // 0x0064dd47    395920
                         {disp32} jne       _jmp_addr_0x0064dddf                          // 0x0064dd4a    0f858f000000
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0064dd50    8b5008
                         cmp                dword ptr [edx + 0x20], ebx                   // 0x0064dd53    395a20
                         {disp32} jne       _jmp_addr_0x0064dddf                          // 0x0064dd56    0f8583000000
                         {disp8} jmp        _jmp_addr_0x0064ddc8                          // 0x0064dd5c    eb6a
_jmp_addr_0x0064dd5e:    cmp                dword ptr [eax + 0x20], edi                   // 0x0064dd5e    397820
                         {disp8} jne        _jmp_addr_0x0064ddb1                          // 0x0064dd61    754e
                         {disp8} mov        dword ptr [eax + 0x20], ebx                   // 0x0064dd63    895820
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064dd66    8b4604
                         {disp8} mov        dword ptr [eax + 0x20], edi                   // 0x0064dd69    897820
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064dd6c    8b4604
                         mov                ecx, dword ptr [eax]                          // 0x0064dd6f    8b08
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0064dd71    8b5108
                         mov                dword ptr [eax], edx                          // 0x0064dd74    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0064dd76    8b5108
                         cmp                edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064dd79    3b15e419d000
                         {disp8} je         _jmp_addr_0x0064dd84                          // 0x0064dd7f    7403
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0064dd81    894204
_jmp_addr_0x0064dd84:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064dd84    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0064dd87    895104
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0064dd8a    8b5504
                         cmp                eax, dword ptr [edx + 0x04]                   // 0x0064dd8d    3b4204
                         {disp8} jne        _jmp_addr_0x0064dd97                          // 0x0064dd90    7505
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0064dd92    894a04
                         {disp8} jmp        _jmp_addr_0x0064dda6                          // 0x0064dd95    eb0f
_jmp_addr_0x0064dd97:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064dd97    8b5004
                         cmp                eax, dword ptr [edx + 0x08]                   // 0x0064dd9a    3b4208
                         {disp8} jne        _jmp_addr_0x0064dda4                          // 0x0064dd9d    7505
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0064dd9f    894a08
                         {disp8} jmp        _jmp_addr_0x0064dda6                          // 0x0064dda2    eb02
_jmp_addr_0x0064dda4:    mov                dword ptr [edx], ecx                          // 0x0064dda4    890a
_jmp_addr_0x0064dda6:    {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0064dda6    894108
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0064dda9    894804
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064ddac    8b4604
                         mov                eax, dword ptr [eax]                          // 0x0064ddaf    8b00
_jmp_addr_0x0064ddb1:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0064ddb1    8b4808
                         cmp                dword ptr [ecx + 0x20], ebx                   // 0x0064ddb4    395920
                         {disp32} jne       _jmp_addr_0x0064de91                          // 0x0064ddb7    0f85d4000000
                         mov                edx, dword ptr [eax]                          // 0x0064ddbd    8b10
                         cmp                dword ptr [edx + 0x20], ebx                   // 0x0064ddbf    395a20
                         {disp32} jne       _jmp_addr_0x0064de91                          // 0x0064ddc2    0f85c9000000
_jmp_addr_0x0064ddc8:    {disp8} mov        dword ptr [eax + 0x20], edi                   // 0x0064ddc8    897820
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0064ddcb    8b4504
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x0064ddce    8b7604
                         cmp                esi, dword ptr [eax + 0x04]                   // 0x0064ddd1    3b7004
                         {disp32} jne       _jmp_addr_0x0064dcde                          // 0x0064ddd4    0f8504ffffff
                         {disp32} jmp       _jmp_addr_0x0064df35                          // 0x0064ddda    e956010000
_jmp_addr_0x0064dddf:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0064dddf    8b4808
                         cmp                dword ptr [ecx + 0x20], ebx                   // 0x0064dde2    395920
                         {disp8} jne        _jmp_addr_0x0064de32                          // 0x0064dde5    754b
                         mov                edx, dword ptr [eax]                          // 0x0064dde7    8b10
                         {disp8} mov        dword ptr [edx + 0x20], ebx                   // 0x0064dde9    895a20
                         mov                ecx, dword ptr [eax]                          // 0x0064ddec    8b08
                         {disp8} mov        dword ptr [eax + 0x20], edi                   // 0x0064ddee    897820
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0064ddf1    8b5108
                         mov                dword ptr [eax], edx                          // 0x0064ddf4    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0064ddf6    8b5108
                         cmp                edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064ddf9    3b15e419d000
                         {disp8} je         _jmp_addr_0x0064de04                          // 0x0064ddff    7403
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0064de01    894204
_jmp_addr_0x0064de04:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064de04    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0064de07    895104
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0064de0a    8b5504
                         cmp                eax, dword ptr [edx + 0x04]                   // 0x0064de0d    3b4204
                         {disp8} jne        _jmp_addr_0x0064de17                          // 0x0064de10    7505
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0064de12    894a04
                         {disp8} jmp        _jmp_addr_0x0064de26                          // 0x0064de15    eb0f
_jmp_addr_0x0064de17:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064de17    8b5004
                         cmp                eax, dword ptr [edx + 0x08]                   // 0x0064de1a    3b4208
                         {disp8} jne        _jmp_addr_0x0064de24                          // 0x0064de1d    7505
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0064de1f    894a08
                         {disp8} jmp        _jmp_addr_0x0064de26                          // 0x0064de22    eb02
_jmp_addr_0x0064de24:    mov                dword ptr [edx], ecx                          // 0x0064de24    890a
_jmp_addr_0x0064de26:    {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0064de26    894108
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0064de29    894804
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064de2c    8b4604
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0064de2f    8b4008
_jmp_addr_0x0064de32:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0064de32    8b4e04
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x0064de35    8b5120
                         {disp8} mov        dword ptr [eax + 0x20], edx                   // 0x0064de38    895020
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0064de3b    8b4e04
                         {disp8} mov        dword ptr [ecx + 0x20], ebx                   // 0x0064de3e    895920
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0064de41    8b5008
                         {disp8} mov        dword ptr [edx + 0x20], ebx                   // 0x0064de44    895a20
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064de47    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0064de4a    8b4808
                         mov                edx, dword ptr [ecx]                          // 0x0064de4d    8b11
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0064de4f    895008
                         mov                edx, dword ptr [ecx]                          // 0x0064de52    8b11
                         cmp                edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064de54    3b15e419d000
                         {disp8} je         _jmp_addr_0x0064de5f                          // 0x0064de5a    7403
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0064de5c    894204
_jmp_addr_0x0064de5f:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064de5f    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0064de62    895104
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0064de65    8b5504
                         cmp                eax, dword ptr [edx + 0x04]                   // 0x0064de68    3b4204
                         {disp8} jne        _jmp_addr_0x0064de77                          // 0x0064de6b    750a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0064de6d    894a04
                         mov                dword ptr [ecx], eax                          // 0x0064de70    8901
                         {disp32} jmp       _jmp_addr_0x0064df32                          // 0x0064de72    e9bb000000
_jmp_addr_0x0064de77:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064de77    8b5004
                         cmp                eax, dword ptr [edx]                          // 0x0064de7a    3b02
                         {disp8} jne        _jmp_addr_0x0064de87                          // 0x0064de7c    7509
                         mov                dword ptr [edx], ecx                          // 0x0064de7e    890a
                         mov                dword ptr [ecx], eax                          // 0x0064de80    8901
                         {disp32} jmp       _jmp_addr_0x0064df32                          // 0x0064de82    e9ab000000
_jmp_addr_0x0064de87:    {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0064de87    894a08
                         mov                dword ptr [ecx], eax                          // 0x0064de8a    8901
                         {disp32} jmp       _jmp_addr_0x0064df32                          // 0x0064de8c    e9a1000000
_jmp_addr_0x0064de91:    mov                ecx, dword ptr [eax]                          // 0x0064de91    8b08
                         cmp                dword ptr [ecx + 0x20], ebx                   // 0x0064de93    395920
                         {disp8} jne        _jmp_addr_0x0064dee1                          // 0x0064de96    7549
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0064de98    8b5008
                         {disp8} mov        dword ptr [edx + 0x20], ebx                   // 0x0064de9b    895a20
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0064de9e    8b4808
                         {disp8} mov        dword ptr [eax + 0x20], edi                   // 0x0064dea1    897820
                         mov                edx, dword ptr [ecx]                          // 0x0064dea4    8b11
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0064dea6    895008
                         mov                edx, dword ptr [ecx]                          // 0x0064dea9    8b11
                         cmp                edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064deab    3b15e419d000
                         {disp8} je         _jmp_addr_0x0064deb6                          // 0x0064deb1    7403
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0064deb3    894204
_jmp_addr_0x0064deb6:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064deb6    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0064deb9    895104
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0064debc    8b5504
                         cmp                eax, dword ptr [edx + 0x04]                   // 0x0064debf    3b4204
                         {disp8} jne        _jmp_addr_0x0064dec9                          // 0x0064dec2    7505
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0064dec4    894a04
                         {disp8} jmp        _jmp_addr_0x0064ded7                          // 0x0064dec7    eb0e
_jmp_addr_0x0064dec9:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064dec9    8b5004
                         cmp                eax, dword ptr [edx]                          // 0x0064decc    3b02
                         {disp8} jne        _jmp_addr_0x0064ded4                          // 0x0064dece    7504
                         mov                dword ptr [edx], ecx                          // 0x0064ded0    890a
                         {disp8} jmp        _jmp_addr_0x0064ded7                          // 0x0064ded2    eb03
_jmp_addr_0x0064ded4:    {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0064ded4    894a08
_jmp_addr_0x0064ded7:    mov                dword ptr [ecx], eax                          // 0x0064ded7    8901
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0064ded9    894804
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064dedc    8b4604
                         mov                eax, dword ptr [eax]                          // 0x0064dedf    8b00
_jmp_addr_0x0064dee1:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0064dee1    8b4e04
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x0064dee4    8b5120
                         {disp8} mov        dword ptr [eax + 0x20], edx                   // 0x0064dee7    895020
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0064deea    8b4e04
                         {disp8} mov        dword ptr [ecx + 0x20], ebx                   // 0x0064deed    895920
                         mov                edx, dword ptr [eax]                          // 0x0064def0    8b10
                         {disp8} mov        dword ptr [edx + 0x20], ebx                   // 0x0064def2    895a20
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0064def5    8b4604
                         mov                ecx, dword ptr [eax]                          // 0x0064def8    8b08
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0064defa    8b5108
                         mov                dword ptr [eax], edx                          // 0x0064defd    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0064deff    8b5108
                         cmp                edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0064df02    3b15e419d000
                         {disp8} je         _jmp_addr_0x0064df0d                          // 0x0064df08    7403
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0064df0a    894204
_jmp_addr_0x0064df0d:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064df0d    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0064df10    895104
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0064df13    8b5504
                         cmp                eax, dword ptr [edx + 0x04]                   // 0x0064df16    3b4204
                         {disp8} jne        _jmp_addr_0x0064df20                          // 0x0064df19    7505
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0064df1b    894a04
                         {disp8} jmp        _jmp_addr_0x0064df2f                          // 0x0064df1e    eb0f
_jmp_addr_0x0064df20:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0064df20    8b5004
                         cmp                eax, dword ptr [edx + 0x08]                   // 0x0064df23    3b4208
                         {disp8} jne        _jmp_addr_0x0064df2d                          // 0x0064df26    7505
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0064df28    894a08
                         {disp8} jmp        _jmp_addr_0x0064df2f                          // 0x0064df2b    eb02
_jmp_addr_0x0064df2d:    mov                dword ptr [edx], ecx                          // 0x0064df2d    890a
_jmp_addr_0x0064df2f:    {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0064df2f    894108
_jmp_addr_0x0064df32:    {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0064df32    894804
_jmp_addr_0x0064df35:    {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x0064df35    895e20
_jmp_addr_0x0064df38:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0064df38    8d4c241c
                         call               ??1_Lockit@std@@QAE@XZ                        // 0x0064df3c    e8fe0f1600
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0064df41    8b742414
                         {disp8} lea        ecx, dword ptr [esi + 0x10]                   // 0x0064df45    8d4e10
                         call               _jmp_addr_0x00775380                          // 0x0064df48    e833741200
                         push               esi                                           // 0x0064df4d    56
                         call               ??3@YAXPAX@Z                                  // 0x0064df4e    e8450f1600
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                   // 0x0064df53    8b450c
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0064df56    8b4c242c
                         add                esp, 0x04                                     // 0x0064df5a    83c404
                         pop                edi                                           // 0x0064df5d    5f
                         dec                eax                                           // 0x0064df5e    48
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                   // 0x0064df5f    89450c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0064df62    8b442420
                         pop                esi                                           // 0x0064df66    5e
                         pop                ebp                                           // 0x0064df67    5d
                         mov                dword ptr [eax], ecx                          // 0x0064df68    8908
                         pop                ebx                                           // 0x0064df6a    5b
                         add                esp, 0x10                                     // 0x0064df6b    83c410
                         ret                0x0008                                        // 0x0064df6e    c20800
                         nop                                                              // 0x0064df71    90
                         nop                                                              // 0x0064df72    90
                         nop                                                              // 0x0064df73    90
                         nop                                                              // 0x0064df74    90
                         nop                                                              // 0x0064df75    90
                         nop                                                              // 0x0064df76    90
                         nop                                                              // 0x0064df77    90
                         nop                                                              // 0x0064df78    90
                         nop                                                              // 0x0064df79    90
                         nop                                                              // 0x0064df7a    90
                         nop                                                              // 0x0064df7b    90
                         nop                                                              // 0x0064df7c    90
                         nop                                                              // 0x0064df7d    90
                         nop                                                              // 0x0064df7e    90
                         nop                                                              // 0x0064df7f    90
_jmp_addr_0x0064df80:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b9e4]        // 0x0064df80    a1e419d000
                         push               ebx                                           // 0x0064df85    53
                         push               esi                                           // 0x0064df86    56
                         push               edi                                           // 0x0064df87    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0064df88    8b7c2410
                         cmp.s              edi, eax                                      // 0x0064df8c    3bf8
                         mov.s              ebx, ecx                                      // 0x0064df8e    8bd9
                         mov.s              esi, edi                                      // 0x0064df90    8bf7
                         {disp8} je         _jmp_addr_0x0064dfbd                          // 0x0064df92    7429
_jmp_addr_0x0064df94:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0064df94    8b4608
                         push               eax                                           // 0x0064df97    50
                         mov.s              ecx, ebx                                      // 0x0064df98    8bcb
                         call               _jmp_addr_0x0064df80                          // 0x0064df9a    e8e1ffffff
                         mov                esi, dword ptr [esi]                          // 0x0064df9f    8b36
                         {disp8} lea        ecx, dword ptr [edi + 0x10]                   // 0x0064dfa1    8d4f10
                         call               _jmp_addr_0x00775380                          // 0x0064dfa4    e8d7731200
                         push               edi                                           // 0x0064dfa9    57
                         call               ??3@YAXPAX@Z                                  // 0x0064dfaa    e8e90e1600
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b9e4]        // 0x0064dfaf    a1e419d000
                         add                esp, 0x04                                     // 0x0064dfb4    83c404
                         cmp.s              esi, eax                                      // 0x0064dfb7    3bf0
                         mov.s              edi, esi                                      // 0x0064dfb9    8bfe
                         {disp8} jne        _jmp_addr_0x0064df94                          // 0x0064dfbb    75d7
_jmp_addr_0x0064dfbd:    pop                edi                                           // 0x0064dfbd    5f
                         pop                esi                                           // 0x0064dfbe    5e
                         pop                ebx                                           // 0x0064dfbf    5b
                         ret                0x0004                                        // 0x0064dfc0    c20400
                         nop                                                              // 0x0064dfc3    90
                         nop                                                              // 0x0064dfc4    90
                         nop                                                              // 0x0064dfc5    90
                         nop                                                              // 0x0064dfc6    90
                         nop                                                              // 0x0064dfc7    90
                         nop                                                              // 0x0064dfc8    90
                         nop                                                              // 0x0064dfc9    90
                         nop                                                              // 0x0064dfca    90
                         nop                                                              // 0x0064dfcb    90
                         nop                                                              // 0x0064dfcc    90
                         nop                                                              // 0x0064dfcd    90
                         nop                                                              // 0x0064dfce    90
                         nop                                                              // 0x0064dfcf    90
_jmp_addr_0x0064dfd0:    push               ecx                                           // 0x0064dfd0    51
                         push               ebx                                           // 0x0064dfd1    53
                         push               ebp                                           // 0x0064dfd2    55
                         push               esi                                           // 0x0064dfd3    56
                         push               edi                                           // 0x0064dfd4    57
                         push               0x24                                          // 0x0064dfd5    6a24
                         mov.s              edi, ecx                                      // 0x0064dfd7    8bf9
                         call               ??2@YAPAXI@Z                                  // 0x0064dfd9    e810851700
                         mov.s              esi, eax                                      // 0x0064dfde    8bf0
                         xor.s              ebp, ebp                                      // 0x0064dfe0    33ed
                         add                esp, 0x04                                     // 0x0064dfe2    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0064dfe5    8d4c2410
                         {disp8} mov        dword ptr [esi + 0x04], ebp                   // 0x0064dfe9    896e04
                         {disp8} mov        dword ptr [esi + 0x20], 0x00000001            // 0x0064dfec    c7462001000000
                         mov.s              ebx, esi                                      // 0x0064dff3    8bde
                         call               ??0_Lockit@std@@QAE@XZ                        // 0x0064dff5    e8a90e1600
                         cmp                dword ptr [data_bytes + 0x33b9e4], ebp        // 0x0064dffa    392de419d000
                         {disp8} jne        _jmp_addr_0x0064e014                          // 0x0064e000    7512
                         {disp32} mov       dword ptr [data_bytes + 0x33b9e4], esi        // 0x0064e002    8935e419d000
                         mov                dword ptr [esi], ebp                          // 0x0064e008    892e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b9e4]        // 0x0064e00a    a1e419d000
                         xor.s              ebx, ebx                                      // 0x0064e00f    33db
                         {disp8} mov        dword ptr [eax + 0x08], ebp                   // 0x0064e011    896808
_jmp_addr_0x0064e014:    {disp32} inc       dword ptr [data_bytes + 0x381a2c]             // 0x0064e014    ff052c7ad400
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0064e01a    8d4c2410
                         call               ??1_Lockit@std@@QAE@XZ                        // 0x0064e01e    e81c0f1600
                         cmp.s              ebx, ebp                                      // 0x0064e023    3bdd
                         {disp8} je         _jmp_addr_0x0064e030                          // 0x0064e025    7409
                         push               ebx                                           // 0x0064e027    53
                         call               ??3@YAXPAX@Z                                  // 0x0064e028    e86b0e1600
                         add                esp, 0x04                                     // 0x0064e02d    83c404
_jmp_addr_0x0064e030:    {disp32} mov       esi, dword ptr [data_bytes + 0x33b9e4]        // 0x0064e030    8b35e419d000
                         push               0x24                                          // 0x0064e036    6a24
                         call               ??2@YAPAXI@Z                                  // 0x0064e038    e8b1841700
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0064e03d    897004
                         {disp8} mov        dword ptr [eax + 0x20], ebp                   // 0x0064e040    896820
                         {disp8} mov        dword ptr [edi + 0x0c], ebp                   // 0x0064e043    896f0c
                         {disp8} mov        dword ptr [edi + 0x04], eax                   // 0x0064e046    894704
                         add                esp, 0x04                                     // 0x0064e049    83c404
                         mov                dword ptr [eax], eax                          // 0x0064e04c    8900
                         {disp8} mov        edi, dword ptr [edi + 0x04]                   // 0x0064e04e    8b7f04
                         {disp8} mov        dword ptr [edi + 0x08], edi                   // 0x0064e051    897f08
                         pop                edi                                           // 0x0064e054    5f
                         pop                esi                                           // 0x0064e055    5e
                         pop                ebp                                           // 0x0064e056    5d
                         pop                ebx                                           // 0x0064e057    5b
                         pop                ecx                                           // 0x0064e058    59
                         ret                                                              // 0x0064e059    c3
                         nop                                                              // 0x0064e05a    90
                         nop                                                              // 0x0064e05b    90
                         nop                                                              // 0x0064e05c    90
                         nop                                                              // 0x0064e05d    90
                         nop                                                              // 0x0064e05e    90
                         nop                                                              // 0x0064e05f    90
_jmp_addr_0x0064e060:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e060    a190c9be00
                         test               eax, eax                                      // 0x0064e065    85c0
                         push               esi                                           // 0x0064e067    56
                         mov.s              esi, ecx                                      // 0x0064e068    8bf1
                         {disp8} je         _jmp_addr_0x0064e0a0                          // 0x0064e06a    7434
                         push               edi                                           // 0x0064e06c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0064e06d    8b7c240c
                         push               0x0                                           // 0x0064e071    6a00
                         push               0x14                                          // 0x0064e073    6a14
                         push               edi                                           // 0x0064e075    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0064e076    e8a5e81600
                         cmp                eax, 0x03                                     // 0x0064e07b    83f803
                         {disp8} jne        _jmp_addr_0x0064e08a                          // 0x0064e07e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0064e080    c70590c9be0000000000
_jmp_addr_0x0064e08a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0064e08a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0064e090    33c0
                         mov                al, byte ptr [edi]                            // 0x0064e092    8a07
                         pop                edi                                           // 0x0064e094    5f
                         add                eax, 0x14                                     // 0x0064e095    83c014
                         add.s              ecx, eax                                      // 0x0064e098    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0064e09a    898e14020000
_jmp_addr_0x0064e0a0:    pop                esi                                           // 0x0064e0a0    5e
                         ret                0x0004                                        // 0x0064e0a1    c20400
                         nop                                                              // 0x0064e0a4    90
                         nop                                                              // 0x0064e0a5    90
                         nop                                                              // 0x0064e0a6    90
                         nop                                                              // 0x0064e0a7    90
                         nop                                                              // 0x0064e0a8    90
                         nop                                                              // 0x0064e0a9    90
                         nop                                                              // 0x0064e0aa    90
                         nop                                                              // 0x0064e0ab    90
                         nop                                                              // 0x0064e0ac    90
                         nop                                                              // 0x0064e0ad    90
                         nop                                                              // 0x0064e0ae    90
                         nop                                                              // 0x0064e0af    90
_jmp_addr_0x0064e0b0:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e0b0    a190c9be00
                         test               eax, eax                                      // 0x0064e0b5    85c0
                         push               ebx                                           // 0x0064e0b7    53
                         push               esi                                           // 0x0064e0b8    56
                         push               edi                                           // 0x0064e0b9    57
                         mov.s              esi, ecx                                      // 0x0064e0ba    8bf1
                         {disp32} je        _jmp_addr_0x0064e150                          // 0x0064e0bc    0f848e000000
                         push               0x0                                           // 0x0064e0c2    6a00
                         push               0x4                                           // 0x0064e0c4    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0064e0c6    8d44241c
                         push               eax                                           // 0x0064e0ca    50
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0064e0cb    e850e81600
                         cmp                eax, 0x03                                     // 0x0064e0d0    83f803
                         {disp8} jne        _jmp_addr_0x0064e0df                          // 0x0064e0d3    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0064e0d5    c70590c9be0000000000
_jmp_addr_0x0064e0df:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0064e0df    8b442414
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0064e0e3    8b9614020000
                         mov.s              ecx, eax                                      // 0x0064e0e9    8bc8
                         and                ecx, 0x000000ff                               // 0x0064e0eb    81e1ff000000
                         add                ecx, 0x4                                      // 0x0064e0f1    83c104
                         add.s              edx, ecx                                      // 0x0064e0f4    03d1
                         xor.s              ebx, ebx                                      // 0x0064e0f6    33db
                         test               eax, eax                                      // 0x0064e0f8    85c0
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0064e0fa    899614020000
                         {disp8} jbe        _jmp_addr_0x0064e150                          // 0x0064e100    764e
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0064e102    8b7c2410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e106    a190c9be00
_jmp_addr_0x0064e10b:    test               eax, eax                                      // 0x0064e10b    85c0
                         {disp8} je         _jmp_addr_0x0064e150                          // 0x0064e10d    7441
                         push               0x0                                           // 0x0064e10f    6a00
                         push               0x1                                           // 0x0064e111    6a01
                         push               edi                                           // 0x0064e113    57
                         mov.s              ecx, esi                                      // 0x0064e114    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0064e116    e805e81600
                         cmp                eax, 0x03                                     // 0x0064e11b    83f803
                         {disp8} jne        _jmp_addr_0x0064e12a                          // 0x0064e11e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0064e120    c70590c9be0000000000
_jmp_addr_0x0064e12a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0064e12a    8b8614020000
                         xor.s              edx, edx                                      // 0x0064e130    33d2
                         mov                dl, byte ptr [edi]                            // 0x0064e132    8a17
                         inc                edx                                           // 0x0064e134    42
                         add.s              eax, edx                                      // 0x0064e135    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0064e137    898614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e13d    a190c9be00
                         test               eax, eax                                      // 0x0064e142    85c0
                         {disp8} je         _jmp_addr_0x0064e150                          // 0x0064e144    740a
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0064e146    8b4c2414
                         inc                ebx                                           // 0x0064e14a    43
                         inc                edi                                           // 0x0064e14b    47
                         cmp.s              ebx, ecx                                      // 0x0064e14c    3bd9
                         .byte              0x72, 0xbb// {disp8} jb _jmp_addr_0x0064e10b  // 0x0064e14e    72bb
_jmp_addr_0x0064e150:    pop                edi                                           // 0x0064e150    5f
                         pop                esi                                           // 0x0064e151    5e
                         pop                ebx                                           // 0x0064e152    5b
                         ret                0x0008                                        // 0x0064e153    c20800
                         nop                                                              // 0x0064e156    90
                         nop                                                              // 0x0064e157    90
                         nop                                                              // 0x0064e158    90
                         nop                                                              // 0x0064e159    90
                         nop                                                              // 0x0064e15a    90
                         nop                                                              // 0x0064e15b    90
                         nop                                                              // 0x0064e15c    90
                         nop                                                              // 0x0064e15d    90
                         nop                                                              // 0x0064e15e    90
                         nop                                                              // 0x0064e15f    90
_jmp_addr_0x0064e160:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e160    a190c9be00
                         test               eax, eax                                      // 0x0064e165    85c0
                         push               edi                                           // 0x0064e167    57
                         mov.s              edi, ecx                                      // 0x0064e168    8bf9
                         {disp8} jne        _jmp_addr_0x0064e172                          // 0x0064e16a    7506
                         xor.s              eax, eax                                      // 0x0064e16c    33c0
                         pop                edi                                           // 0x0064e16e    5f
                         ret                0x0004                                        // 0x0064e16f    c20400
_jmp_addr_0x0064e172:    push               ebx                                           // 0x0064e172    53
                         push               ebp                                           // 0x0064e173    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0064e174    8b6c2410
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0064e178    8b4504
                         push               esi                                           // 0x0064e17b    56
                         xor.s              ebx, ebx                                      // 0x0064e17c    33db
                         push               ebx                                           // 0x0064e17e    53
                         {disp8} lea        esi, dword ptr [ebp + 0x04]                   // 0x0064e17f    8d7504
                         push               0x4                                           // 0x0064e182    6a04
                         push               esi                                           // 0x0064e184    56
                         mov.s              ecx, edi                                      // 0x0064e185    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0064e187    89442420
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0064e18b    e890e71600
                         cmp                eax, 0x03                                     // 0x0064e190    83f803
                         {disp8} jne        _jmp_addr_0x0064e19b                          // 0x0064e193    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebx        // 0x0064e195    891d90c9be00
_jmp_addr_0x0064e19b:    {disp32} mov       eax, dword ptr [edi + 0x00000214]             // 0x0064e19b    8b8714020000
                         xor.s              ecx, ecx                                      // 0x0064e1a1    33c9
                         mov                cl, byte ptr [esi]                            // 0x0064e1a3    8a0e
                         add                ecx, 0x4                                      // 0x0064e1a5    83c104
                         add.s              eax, ecx                                      // 0x0064e1a8    03c1
                         {disp32} mov       dword ptr [edi + 0x00000214], eax             // 0x0064e1aa    898714020000
                         xor.s              esi, esi                                      // 0x0064e1b0    33f6
_jmp_addr_0x0064e1b2:    test               esi, esi                                      // 0x0064e1b2    85f6
                         {disp8} jne        _jmp_addr_0x0064e1bb                          // 0x0064e1b4    7505
                         {disp8} mov        esi, dword ptr [ebp + 0x00]                   // 0x0064e1b6    8b7500
                         {disp8} jmp        _jmp_addr_0x0064e1c1                          // 0x0064e1b9    eb06
_jmp_addr_0x0064e1bb:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x0064e1bb    8bb65c070000
_jmp_addr_0x0064e1c1:    test               esi, esi                                      // 0x0064e1c1    85f6
                         {disp8} je         _jmp_addr_0x0064e1eb                          // 0x0064e1c3    7426
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0064e1c5    8b442414
                         inc                ebx                                           // 0x0064e1c9    43
                         cmp.s              ebx, eax                                      // 0x0064e1ca    3bd8
                         {disp8} jg         _jmp_addr_0x0064e1e1                          // 0x0064e1cc    7f13
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e1ce    a190c9be00
                         test               eax, eax                                      // 0x0064e1d3    85c0
                         {disp8} je         _jmp_addr_0x0064e1eb                          // 0x0064e1d5    7414
                         push               esi                                           // 0x0064e1d7    56
                         mov.s              ecx, edi                                      // 0x0064e1d8    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0064e1da    e8313cf1ff
                         {disp8} jmp        _jmp_addr_0x0064e1b2                          // 0x0064e1df    ebd1
_jmp_addr_0x0064e1e1:    {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0064e1e1    c70590c9be0000000000
_jmp_addr_0x0064e1eb:    pop                esi                                           // 0x0064e1eb    5e
                         pop                ebp                                           // 0x0064e1ec    5d
                         pop                ebx                                           // 0x0064e1ed    5b
                         mov                eax, 0x00000001                               // 0x0064e1ee    b801000000
                         pop                edi                                           // 0x0064e1f3    5f
                         ret                0x0004                                        // 0x0064e1f4    c20400
                         nop                                                              // 0x0064e1f7    90
                         nop                                                              // 0x0064e1f8    90
                         nop                                                              // 0x0064e1f9    90
                         nop                                                              // 0x0064e1fa    90
                         nop                                                              // 0x0064e1fb    90
                         nop                                                              // 0x0064e1fc    90
                         nop                                                              // 0x0064e1fd    90
                         nop                                                              // 0x0064e1fe    90
                         nop                                                              // 0x0064e1ff    90
_jmp_addr_0x0064e200:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e200    a190c9be00
                         test               eax, eax                                      // 0x0064e205    85c0
                         push               edi                                           // 0x0064e207    57
                         mov.s              edi, ecx                                      // 0x0064e208    8bf9
                         {disp8} jne        _jmp_addr_0x0064e212                          // 0x0064e20a    7506
                         xor.s              eax, eax                                      // 0x0064e20c    33c0
                         pop                edi                                           // 0x0064e20e    5f
                         ret                0x0004                                        // 0x0064e20f    c20400
_jmp_addr_0x0064e212:    push               ebx                                           // 0x0064e212    53
                         push               ebp                                           // 0x0064e213    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0064e214    8b6c2410
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0064e218    8b4504
                         push               esi                                           // 0x0064e21b    56
                         xor.s              ebx, ebx                                      // 0x0064e21c    33db
                         push               ebx                                           // 0x0064e21e    53
                         {disp8} lea        esi, dword ptr [ebp + 0x04]                   // 0x0064e21f    8d7504
                         push               0x4                                           // 0x0064e222    6a04
                         push               esi                                           // 0x0064e224    56
                         mov.s              ecx, edi                                      // 0x0064e225    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0064e227    89442420
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0064e22b    e8f0e61600
                         cmp                eax, 0x03                                     // 0x0064e230    83f803
                         {disp8} jne        _jmp_addr_0x0064e23b                          // 0x0064e233    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebx        // 0x0064e235    891d90c9be00
_jmp_addr_0x0064e23b:    {disp32} mov       eax, dword ptr [edi + 0x00000214]             // 0x0064e23b    8b8714020000
                         xor.s              ecx, ecx                                      // 0x0064e241    33c9
                         mov                cl, byte ptr [esi]                            // 0x0064e243    8a0e
                         add                ecx, 0x4                                      // 0x0064e245    83c104
                         add.s              eax, ecx                                      // 0x0064e248    03c1
                         {disp32} mov       dword ptr [edi + 0x00000214], eax             // 0x0064e24a    898714020000
                         xor.s              esi, esi                                      // 0x0064e250    33f6
_jmp_addr_0x0064e252:    test               esi, esi                                      // 0x0064e252    85f6
                         {disp8} jne        _jmp_addr_0x0064e25b                          // 0x0064e254    7505
                         {disp8} mov        esi, dword ptr [ebp + 0x00]                   // 0x0064e256    8b7500
                         {disp8} jmp        _jmp_addr_0x0064e261                          // 0x0064e259    eb06
_jmp_addr_0x0064e25b:    {disp32} mov       esi, dword ptr [esi + 0x00000088]             // 0x0064e25b    8bb688000000
_jmp_addr_0x0064e261:    test               esi, esi                                      // 0x0064e261    85f6
                         {disp8} je         _jmp_addr_0x0064e28b                          // 0x0064e263    7426
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0064e265    8b442414
                         inc                ebx                                           // 0x0064e269    43
                         cmp.s              ebx, eax                                      // 0x0064e26a    3bd8
                         {disp8} jg         _jmp_addr_0x0064e281                          // 0x0064e26c    7f13
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e26e    a190c9be00
                         test               eax, eax                                      // 0x0064e273    85c0
                         {disp8} je         _jmp_addr_0x0064e28b                          // 0x0064e275    7414
                         push               esi                                           // 0x0064e277    56
                         mov.s              ecx, edi                                      // 0x0064e278    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0064e27a    e8913bf1ff
                         {disp8} jmp        _jmp_addr_0x0064e252                          // 0x0064e27f    ebd1
_jmp_addr_0x0064e281:    {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0064e281    c70590c9be0000000000
_jmp_addr_0x0064e28b:    pop                esi                                           // 0x0064e28b    5e
                         pop                ebp                                           // 0x0064e28c    5d
                         pop                ebx                                           // 0x0064e28d    5b
                         mov                eax, 0x00000001                               // 0x0064e28e    b801000000
                         pop                edi                                           // 0x0064e293    5f
                         ret                0x0004                                        // 0x0064e294    c20400
                         nop                                                              // 0x0064e297    90
                         nop                                                              // 0x0064e298    90
                         nop                                                              // 0x0064e299    90
                         nop                                                              // 0x0064e29a    90
                         nop                                                              // 0x0064e29b    90
                         nop                                                              // 0x0064e29c    90
                         nop                                                              // 0x0064e29d    90
                         nop                                                              // 0x0064e29e    90
                         nop                                                              // 0x0064e29f    90
_jmp_addr_0x0064e2a0:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e2a0    a190c9be00
                         test               eax, eax                                      // 0x0064e2a5    85c0
                         push               ebx                                           // 0x0064e2a7    53
                         push               esi                                           // 0x0064e2a8    56
                         push               edi                                           // 0x0064e2a9    57
                         mov.s              esi, ecx                                      // 0x0064e2aa    8bf1
                         {disp32} je        _jmp_addr_0x0064e344                          // 0x0064e2ac    0f8492000000
                         push               0x0                                           // 0x0064e2b2    6a00
                         push               0x4                                           // 0x0064e2b4    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0064e2b6    8d44241c
                         push               eax                                           // 0x0064e2ba    50
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0064e2bb    e860e61600
                         cmp                eax, 0x03                                     // 0x0064e2c0    83f803
                         {disp8} jne        _jmp_addr_0x0064e2cf                          // 0x0064e2c3    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0064e2c5    c70590c9be0000000000
_jmp_addr_0x0064e2cf:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0064e2cf    8b442414
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0064e2d3    8b9614020000
                         mov.s              ecx, eax                                      // 0x0064e2d9    8bc8
                         and                ecx, 0x000000ff                               // 0x0064e2db    81e1ff000000
                         add                ecx, 0x4                                      // 0x0064e2e1    83c104
                         add.s              edx, ecx                                      // 0x0064e2e4    03d1
                         xor.s              ebx, ebx                                      // 0x0064e2e6    33db
                         test               eax, eax                                      // 0x0064e2e8    85c0
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0064e2ea    899614020000
                         {disp8} jbe        _jmp_addr_0x0064e344                          // 0x0064e2f0    7652
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0064e2f2    8b7c2410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e2f6    a190c9be00
_jmp_addr_0x0064e2fb:    test               eax, eax                                      // 0x0064e2fb    85c0
                         {disp8} je         _jmp_addr_0x0064e344                          // 0x0064e2fd    7445
                         push               0x0                                           // 0x0064e2ff    6a00
                         push               0x4                                           // 0x0064e301    6a04
                         push               edi                                           // 0x0064e303    57
                         mov.s              ecx, esi                                      // 0x0064e304    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0064e306    e815e61600
                         cmp                eax, 0x03                                     // 0x0064e30b    83f803
                         {disp8} jne        _jmp_addr_0x0064e31a                          // 0x0064e30e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0064e310    c70590c9be0000000000
_jmp_addr_0x0064e31a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0064e31a    8b8614020000
                         xor.s              edx, edx                                      // 0x0064e320    33d2
                         mov                dl, byte ptr [edi]                            // 0x0064e322    8a17
                         add                edx, 0x04                                     // 0x0064e324    83c204
                         add.s              eax, edx                                      // 0x0064e327    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0064e329    898614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0064e32f    a190c9be00
                         test               eax, eax                                      // 0x0064e334    85c0
                         {disp8} je         _jmp_addr_0x0064e344                          // 0x0064e336    740c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0064e338    8b4c2414
                         inc                ebx                                           // 0x0064e33c    43
                         add                edi, 0x04                                     // 0x0064e33d    83c704
                         cmp.s              ebx, ecx                                      // 0x0064e340    3bd9
                         .byte              0x72, 0xb7// {disp8} jb _jmp_addr_0x0064e2fb  // 0x0064e342    72b7
_jmp_addr_0x0064e344:    pop                edi                                           // 0x0064e344    5f
                         pop                esi                                           // 0x0064e345    5e
                         pop                ebx                                           // 0x0064e346    5b
                         ret                0x0008                                        // 0x0064e347    c20800
                         nop                                                              // 0x0064e34a    90
                         nop                                                              // 0x0064e34b    90
                         nop                                                              // 0x0064e34c    90
                         nop                                                              // 0x0064e34d    90
                         nop                                                              // 0x0064e34e    90
                         nop                                                              // 0x0064e34f    90
_jmp_addr_0x0064e350:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0064e350    a194c9be00
                         test               eax, eax                                      // 0x0064e355    85c0
                         push               esi                                           // 0x0064e357    56
                         mov.s              esi, ecx                                      // 0x0064e358    8bf1
                         {disp8} je         _jmp_addr_0x0064e390                          // 0x0064e35a    7434
                         push               edi                                           // 0x0064e35c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0064e35d    8b7c240c
                         push               0x0                                           // 0x0064e361    6a00
                         push               0x14                                          // 0x0064e363    6a14
                         push               edi                                           // 0x0064e365    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0064e366    e875e51600
                         cmp                eax, 0x03                                     // 0x0064e36b    83f803
                         {disp8} jne        _jmp_addr_0x0064e37a                          // 0x0064e36e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0064e370    c70594c9be0000000000
_jmp_addr_0x0064e37a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0064e37a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0064e380    33c0
                         mov                al, byte ptr [edi]                            // 0x0064e382    8a07
                         pop                edi                                           // 0x0064e384    5f
                         add                eax, 0x14                                     // 0x0064e385    83c014
                         add.s              ecx, eax                                      // 0x0064e388    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0064e38a    898e14020000
_jmp_addr_0x0064e390:    pop                esi                                           // 0x0064e390    5e
                         ret                0x0004                                        // 0x0064e391    c20400
                         nop                                                              // 0x0064e394    90
                         nop                                                              // 0x0064e395    90
                         nop                                                              // 0x0064e396    90
                         nop                                                              // 0x0064e397    90
                         nop                                                              // 0x0064e398    90
                         nop                                                              // 0x0064e399    90
                         nop                                                              // 0x0064e39a    90
                         nop                                                              // 0x0064e39b    90
                         nop                                                              // 0x0064e39c    90
                         nop                                                              // 0x0064e39d    90
                         nop                                                              // 0x0064e39e    90
                         nop                                                              // 0x0064e39f    90
_jmp_addr_0x0064e3a0:    push               ecx                                           // 0x0064e3a0    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0064e3a1    a194c9be00
                         test               eax, eax                                      // 0x0064e3a6    85c0
                         push               ebx                                           // 0x0064e3a8    53
                         push               esi                                           // 0x0064e3a9    56
                         mov.s              esi, ecx                                      // 0x0064e3aa    8bf1
                         {disp32} je        _jmp_addr_0x0064e43a                          // 0x0064e3ac    0f8488000000
                         push               0x0                                           // 0x0064e3b2    6a00
                         push               0x4                                           // 0x0064e3b4    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0064e3b6    8d442410
                         push               eax                                           // 0x0064e3ba    50
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0064e3bb    e820e51600
                         cmp                eax, 0x03                                     // 0x0064e3c0    83f803
                         {disp8} jne        _jmp_addr_0x0064e3cf                          // 0x0064e3c3    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0064e3c5    c70594c9be0000000000
_jmp_addr_0x0064e3cf:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0064e3cf    8b442408
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0064e3d3    8b9614020000
                         mov.s              ecx, eax                                      // 0x0064e3d9    8bc8
                         and                ecx, 0x000000ff                               // 0x0064e3db    81e1ff000000
                         add                ecx, 0x4                                      // 0x0064e3e1    83c104
                         add.s              edx, ecx                                      // 0x0064e3e4    03d1
                         xor.s              ebx, ebx                                      // 0x0064e3e6    33db
                         test               eax, eax                                      // 0x0064e3e8    85c0
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0064e3ea    899614020000
                         {disp8} jbe        _jmp_addr_0x0064e43a                          // 0x0064e3f0    7648
                         push               edi                                           // 0x0064e3f2    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0064e3f3    8b7c2414
_jmp_addr_0x0064e3f7:    {disp32} mov       ecx, dword ptr [data_bytes + 0x226994]        // 0x0064e3f7    8b0d94c9be00
                         test               ecx, ecx                                      // 0x0064e3fd    85c9
                         {disp8} je         _jmp_addr_0x0064e433                          // 0x0064e3ff    7432
                         push               0x0                                           // 0x0064e401    6a00
                         push               0x1                                           // 0x0064e403    6a01
                         push               edi                                           // 0x0064e405    57
                         mov.s              ecx, esi                                      // 0x0064e406    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0064e408    e8d3e41600
                         cmp                eax, 0x03                                     // 0x0064e40d    83f803
                         {disp8} jne        _jmp_addr_0x0064e41c                          // 0x0064e410    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0064e412    c70594c9be0000000000
_jmp_addr_0x0064e41c:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0064e41c    8b8614020000
                         xor.s              edx, edx                                      // 0x0064e422    33d2
                         mov                dl, byte ptr [edi]                            // 0x0064e424    8a17
                         inc                edx                                           // 0x0064e426    42
                         add.s              eax, edx                                      // 0x0064e427    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0064e429    898614020000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0064e42f    8b44240c
_jmp_addr_0x0064e433:    inc                ebx                                           // 0x0064e433    43
                         inc                edi                                           // 0x0064e434    47
                         cmp.s              ebx, eax                                      // 0x0064e435    3bd8
                         .byte              0x72, 0xbe// {disp8} jb _jmp_addr_0x0064e3f7  // 0x0064e437    72be
                         pop                edi                                           // 0x0064e439    5f
_jmp_addr_0x0064e43a:    pop                esi                                           // 0x0064e43a    5e
                         pop                ebx                                           // 0x0064e43b    5b
                         pop                ecx                                           // 0x0064e43c    59
                         ret                0x0004                                        // 0x0064e43d    c20400
_jmp_addr_0x0064e440:    push               ecx                                           // 0x0064e440    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0064e441    a194c9be00
                         push               ebx                                           // 0x0064e446    53
                         xor.s              ebx, ebx                                      // 0x0064e447    33db
                         cmp.s              eax, ebx                                      // 0x0064e449    3bc3
                         push               edi                                           // 0x0064e44b    57
                         mov.s              edi, ecx                                      // 0x0064e44c    8bf9
                         {disp8} jne        _jmp_addr_0x0064e458                          // 0x0064e44e    7508
                         pop                edi                                           // 0x0064e450    5f
                         xor.s              eax, eax                                      // 0x0064e451    33c0
                         pop                ebx                                           // 0x0064e453    5b
                         pop                ecx                                           // 0x0064e454    59
                         ret                0x0004                                        // 0x0064e455    c20400
_jmp_addr_0x0064e458:    push               ebx                                           // 0x0064e458    53
                         push               0x4                                           // 0x0064e459    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0064e45b    8d442410
                         push               eax                                           // 0x0064e45f    50
                         mov.s              ecx, edi                                      // 0x0064e460    8bcf
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0064e462    e879e41600
                         cmp                eax, 0x03                                     // 0x0064e467    83f803
                         {disp8} jne        _jmp_addr_0x0064e472                          // 0x0064e46a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebx        // 0x0064e46c    891d94c9be00
_jmp_addr_0x0064e472:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0064e472    8b442408
                         {disp32} mov       edx, dword ptr [edi + 0x00000214]             // 0x0064e476    8b9714020000
                         mov.s              ecx, eax                                      // 0x0064e47c    8bc8
                         and                ecx, 0x000000ff                               // 0x0064e47e    81e1ff000000
                         add                ecx, 0x4                                      // 0x0064e484    83c104
                         add.s              edx, ecx                                      // 0x0064e487    03d1
                         cmp.s              eax, ebx                                      // 0x0064e489    3bc3
                         {disp32} mov       dword ptr [edi + 0x00000214], edx             // 0x0064e48b    899714020000
                         {disp8} jle        _jmp_addr_0x0064e4ef                          // 0x0064e491    7e5c
                         push               esi                                           // 0x0064e493    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0064e494    8b742414
_jmp_addr_0x0064e498:    {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0064e498    8d542414
                         push               edx                                           // 0x0064e49c    52
                         mov.s              ecx, edi                                      // 0x0064e49d    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0064e49f    e8dc3cf1ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0064e4a4    8b442414
                         {disp32} mov       dword ptr [eax + 0x0000075c], ebx             // 0x0064e4a8    89985c070000
                         mov                eax, dword ptr [esi]                          // 0x0064e4ae    8b06
                         cmp.s              eax, ebx                                      // 0x0064e4b0    3bc3
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0064e4b2    8b542414
                         {disp8} je         _jmp_addr_0x0064e4d6                          // 0x0064e4b6    741e
                         {disp32} mov       ecx, dword ptr [eax + 0x0000075c]             // 0x0064e4b8    8b885c070000
                         cmp.s              ecx, ebx                                      // 0x0064e4be    3bcb
                         {disp8} je         _jmp_addr_0x0064e4ce                          // 0x0064e4c0    740c
_jmp_addr_0x0064e4c2:    mov.s              eax, ecx                                      // 0x0064e4c2    8bc1
                         {disp32} mov       ecx, dword ptr [eax + 0x0000075c]             // 0x0064e4c4    8b885c070000
                         cmp.s              ecx, ebx                                      // 0x0064e4ca    3bcb
                         {disp8} jne        _jmp_addr_0x0064e4c2                          // 0x0064e4cc    75f4
_jmp_addr_0x0064e4ce:    {disp32} mov       dword ptr [eax + 0x0000075c], edx             // 0x0064e4ce    89905c070000
                         {disp8} jmp        _jmp_addr_0x0064e4d8                          // 0x0064e4d4    eb02
_jmp_addr_0x0064e4d6:    mov                dword ptr [esi], edx                          // 0x0064e4d6    8916
_jmp_addr_0x0064e4d8:    {disp32} mov       dword ptr [edx + 0x0000075c], ebx             // 0x0064e4d8    899a5c070000
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x0064e4de    ff4604
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0064e4e1    8b44240c
                         dec                eax                                           // 0x0064e4e5    48
                         cmp.s              eax, ebx                                      // 0x0064e4e6    3bc3
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0064e4e8    8944240c
                         {disp8} jg         _jmp_addr_0x0064e498                          // 0x0064e4ec    7faa
                         pop                esi                                           // 0x0064e4ee    5e
_jmp_addr_0x0064e4ef:    pop                edi                                           // 0x0064e4ef    5f
                         mov                eax, 0x00000001                               // 0x0064e4f0    b801000000
                         pop                ebx                                           // 0x0064e4f5    5b
                         pop                ecx                                           // 0x0064e4f6    59
                         ret                0x0004                                        // 0x0064e4f7    c20400
                         nop                                                              // 0x0064e4fa    90
                         nop                                                              // 0x0064e4fb    90
                         nop                                                              // 0x0064e4fc    90
                         nop                                                              // 0x0064e4fd    90
                         nop                                                              // 0x0064e4fe    90
                         nop                                                              // 0x0064e4ff    90
_jmp_addr_0x0064e500:    push               ecx                                           // 0x0064e500    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0064e501    a194c9be00
                         push               ebx                                           // 0x0064e506    53
                         xor.s              ebx, ebx                                      // 0x0064e507    33db
                         cmp.s              eax, ebx                                      // 0x0064e509    3bc3
                         push               edi                                           // 0x0064e50b    57
                         mov.s              edi, ecx                                      // 0x0064e50c    8bf9
                         {disp8} jne        _jmp_addr_0x0064e518                          // 0x0064e50e    7508
                         pop                edi                                           // 0x0064e510    5f
                         xor.s              eax, eax                                      // 0x0064e511    33c0
                         pop                ebx                                           // 0x0064e513    5b
                         pop                ecx                                           // 0x0064e514    59
                         ret                0x0004                                        // 0x0064e515    c20400
_jmp_addr_0x0064e518:    push               ebx                                           // 0x0064e518    53
                         push               0x4                                           // 0x0064e519    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0064e51b    8d442410
                         push               eax                                           // 0x0064e51f    50
                         mov.s              ecx, edi                                      // 0x0064e520    8bcf
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0064e522    e8b9e31600
                         cmp                eax, 0x03                                     // 0x0064e527    83f803
                         {disp8} jne        _jmp_addr_0x0064e532                          // 0x0064e52a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebx        // 0x0064e52c    891d94c9be00
_jmp_addr_0x0064e532:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0064e532    8b442408
                         {disp32} mov       edx, dword ptr [edi + 0x00000214]             // 0x0064e536    8b9714020000
                         mov.s              ecx, eax                                      // 0x0064e53c    8bc8
                         and                ecx, 0x000000ff                               // 0x0064e53e    81e1ff000000
                         add                ecx, 0x4                                      // 0x0064e544    83c104
                         add.s              edx, ecx                                      // 0x0064e547    03d1
                         cmp.s              eax, ebx                                      // 0x0064e549    3bc3
                         {disp32} mov       dword ptr [edi + 0x00000214], edx             // 0x0064e54b    899714020000
                         {disp8} jle        _jmp_addr_0x0064e5af                          // 0x0064e551    7e5c
                         push               esi                                           // 0x0064e553    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0064e554    8b742414
_jmp_addr_0x0064e558:    {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0064e558    8d542414
                         push               edx                                           // 0x0064e55c    52
                         mov.s              ecx, edi                                      // 0x0064e55d    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0064e55f    e81c3cf1ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0064e564    8b442414
                         {disp32} mov       dword ptr [eax + 0x00000088], ebx             // 0x0064e568    899888000000
                         mov                eax, dword ptr [esi]                          // 0x0064e56e    8b06
                         cmp.s              eax, ebx                                      // 0x0064e570    3bc3
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0064e572    8b542414
                         {disp8} je         _jmp_addr_0x0064e596                          // 0x0064e576    741e
                         {disp32} mov       ecx, dword ptr [eax + 0x00000088]             // 0x0064e578    8b8888000000
                         cmp.s              ecx, ebx                                      // 0x0064e57e    3bcb
                         {disp8} je         _jmp_addr_0x0064e58e                          // 0x0064e580    740c
_jmp_addr_0x0064e582:    mov.s              eax, ecx                                      // 0x0064e582    8bc1
                         {disp32} mov       ecx, dword ptr [eax + 0x00000088]             // 0x0064e584    8b8888000000
                         cmp.s              ecx, ebx                                      // 0x0064e58a    3bcb
                         {disp8} jne        _jmp_addr_0x0064e582                          // 0x0064e58c    75f4
_jmp_addr_0x0064e58e:    {disp32} mov       dword ptr [eax + 0x00000088], edx             // 0x0064e58e    899088000000
                         {disp8} jmp        _jmp_addr_0x0064e598                          // 0x0064e594    eb02
_jmp_addr_0x0064e596:    mov                dword ptr [esi], edx                          // 0x0064e596    8916
_jmp_addr_0x0064e598:    {disp32} mov       dword ptr [edx + 0x00000088], ebx             // 0x0064e598    899a88000000
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x0064e59e    ff4604
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0064e5a1    8b44240c
                         dec                eax                                           // 0x0064e5a5    48
                         cmp.s              eax, ebx                                      // 0x0064e5a6    3bc3
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0064e5a8    8944240c
                         {disp8} jg         _jmp_addr_0x0064e558                          // 0x0064e5ac    7faa
                         pop                esi                                           // 0x0064e5ae    5e
_jmp_addr_0x0064e5af:    pop                edi                                           // 0x0064e5af    5f
                         mov                eax, 0x00000001                               // 0x0064e5b0    b801000000
                         pop                ebx                                           // 0x0064e5b5    5b
                         pop                ecx                                           // 0x0064e5b6    59
                         ret                0x0004                                        // 0x0064e5b7    c20400
                         nop                                                              // 0x0064e5ba    90
                         nop                                                              // 0x0064e5bb    90
                         nop                                                              // 0x0064e5bc    90
                         nop                                                              // 0x0064e5bd    90
                         nop                                                              // 0x0064e5be    90
                         nop                                                              // 0x0064e5bf    90
_jmp_addr_0x0064e5c0:    push               ecx                                           // 0x0064e5c0    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0064e5c1    a194c9be00
                         test               eax, eax                                      // 0x0064e5c6    85c0
                         push               ebx                                           // 0x0064e5c8    53
                         push               esi                                           // 0x0064e5c9    56
                         mov.s              esi, ecx                                      // 0x0064e5ca    8bf1
                         {disp32} je        _jmp_addr_0x0064e65e                          // 0x0064e5cc    0f848c000000
                         push               0x0                                           // 0x0064e5d2    6a00
                         push               0x4                                           // 0x0064e5d4    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0064e5d6    8d442410
                         push               eax                                           // 0x0064e5da    50
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0064e5db    e800e31600
                         cmp                eax, 0x03                                     // 0x0064e5e0    83f803
                         {disp8} jne        _jmp_addr_0x0064e5ef                          // 0x0064e5e3    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0064e5e5    c70594c9be0000000000
_jmp_addr_0x0064e5ef:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0064e5ef    8b442408
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0064e5f3    8b9614020000
                         mov.s              ecx, eax                                      // 0x0064e5f9    8bc8
                         and                ecx, 0x000000ff                               // 0x0064e5fb    81e1ff000000
                         add                ecx, 0x4                                      // 0x0064e601    83c104
                         add.s              edx, ecx                                      // 0x0064e604    03d1
                         xor.s              ebx, ebx                                      // 0x0064e606    33db
                         test               eax, eax                                      // 0x0064e608    85c0
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0064e60a    899614020000
                         {disp8} jbe        _jmp_addr_0x0064e65e                          // 0x0064e610    764c
                         push               edi                                           // 0x0064e612    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0064e613    8b7c2414
_jmp_addr_0x0064e617:    {disp32} mov       ecx, dword ptr [data_bytes + 0x226994]        // 0x0064e617    8b0d94c9be00
                         test               ecx, ecx                                      // 0x0064e61d    85c9
                         {disp8} je         _jmp_addr_0x0064e655                          // 0x0064e61f    7434
                         push               0x0                                           // 0x0064e621    6a00
                         push               0x4                                           // 0x0064e623    6a04
                         push               edi                                           // 0x0064e625    57
                         mov.s              ecx, esi                                      // 0x0064e626    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0064e628    e8b3e21600
                         cmp                eax, 0x03                                     // 0x0064e62d    83f803
                         {disp8} jne        _jmp_addr_0x0064e63c                          // 0x0064e630    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0064e632    c70594c9be0000000000
_jmp_addr_0x0064e63c:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0064e63c    8b8614020000
                         xor.s              edx, edx                                      // 0x0064e642    33d2
                         mov                dl, byte ptr [edi]                            // 0x0064e644    8a17
                         add                edx, 0x04                                     // 0x0064e646    83c204
                         add.s              eax, edx                                      // 0x0064e649    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0064e64b    898614020000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0064e651    8b44240c
_jmp_addr_0x0064e655:    inc                ebx                                           // 0x0064e655    43
                         add                edi, 0x04                                     // 0x0064e656    83c704
                         cmp.s              ebx, eax                                      // 0x0064e659    3bd8
                         .byte              0x72, 0xba// {disp8} jb _jmp_addr_0x0064e617  // 0x0064e65b    72ba
                         pop                edi                                           // 0x0064e65d    5f
_jmp_addr_0x0064e65e:    pop                esi                                           // 0x0064e65e    5e
                         pop                ebx                                           // 0x0064e65f    5b
                         pop                ecx                                           // 0x0064e660    59
                         ret                0x0004                                        // 0x0064e661    c20400
                         nop                                                              // 0x0064e664    90
                         nop                                                              // 0x0064e665    90
                         nop                                                              // 0x0064e666    90
                         nop                                                              // 0x0064e667    90
                         nop                                                              // 0x0064e668    90
                         nop                                                              // 0x0064e669    90
                         nop                                                              // 0x0064e66a    90
                         nop                                                              // 0x0064e66b    90
                         nop                                                              // 0x0064e66c    90
                         nop                                                              // 0x0064e66d    90
                         nop                                                              // 0x0064e66e    90
                         nop                                                              // 0x0064e66f    90
_globl_ct_0x0064e670:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0064e670    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0064e676    b001
                         test               al, cl                                        // 0x0064e678    84c8
                         {disp8} jne        _jmp_addr_0x0064e684                          // 0x0064e67a    7508
                         or.s               cl, al                                        // 0x0064e67c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0064e67e    880d34c9fa00
_jmp_addr_0x0064e684:    {disp32} jmp       _jmp_addr_0x0064e690                          // 0x0064e684    e907000000
                         nop                                                              // 0x0064e689    90
                         nop                                                              // 0x0064e68a    90
                         nop                                                              // 0x0064e68b    90
                         nop                                                              // 0x0064e68c    90
                         nop                                                              // 0x0064e68d    90
                         nop                                                              // 0x0064e68e    90
                         nop                                                              // 0x0064e68f    90
_jmp_addr_0x0064e690:    push               0x00407870                                    // 0x0064e690    6870784000
                         call               _atexit                                       // 0x0064e695    e8f7701700
                         pop                ecx                                           // 0x0064e69a    59
                         ret                                                              // 0x0064e69b    c3
                         nop                                                              // 0x0064e69c    90
                         nop                                                              // 0x0064e69d    90
                         nop                                                              // 0x0064e69e    90
                         nop                                                              // 0x0064e69f    90
_globl_ct_0x0064e6a0:    {disp32} jmp       _jmp_addr_0x0064e6b0                          // 0x0064e6a0    e90b000000
                         nop                                                              // 0x0064e6a5    90
                         nop                                                              // 0x0064e6a6    90
                         nop                                                              // 0x0064e6a7    90
                         nop                                                              // 0x0064e6a8    90
                         nop                                                              // 0x0064e6a9    90
                         nop                                                              // 0x0064e6aa    90
                         nop                                                              // 0x0064e6ab    90
                         nop                                                              // 0x0064e6ac    90
                         nop                                                              // 0x0064e6ad    90
                         nop                                                              // 0x0064e6ae    90
                         nop                                                              // 0x0064e6af    90
_jmp_addr_0x0064e6b0:    {disp32} fld       dword ptr [rdata_bytes + 0x89cf0]             // 0x0064e6b0    d905f02c9300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x89cec]             // 0x0064e6b6    d80dec2c9300
                         {disp32} fstp      dword ptr [data_bytes + 0x381f40]             // 0x0064e6bc    d91d407fd400
                         ret                                                              // 0x0064e6c2    c3
                         nop                                                              // 0x0064e6c3    90
                         nop                                                              // 0x0064e6c4    90
                         nop                                                              // 0x0064e6c5    90
                         nop                                                              // 0x0064e6c6    90
                         nop                                                              // 0x0064e6c7    90
                         nop                                                              // 0x0064e6c8    90
                         nop                                                              // 0x0064e6c9    90
                         nop                                                              // 0x0064e6ca    90
                         nop                                                              // 0x0064e6cb    90
                         nop                                                              // 0x0064e6cc    90
                         nop                                                              // 0x0064e6cd    90
                         nop                                                              // 0x0064e6ce    90
                         nop                                                              // 0x0064e6cf    90
_globl_ct_0x0064e6d0:    {disp32} jmp       _jmp_addr_0x0064e6e0                          // 0x0064e6d0    e90b000000
                         nop                                                              // 0x0064e6d5    90
                         nop                                                              // 0x0064e6d6    90
                         nop                                                              // 0x0064e6d7    90
                         nop                                                              // 0x0064e6d8    90
                         nop                                                              // 0x0064e6d9    90
                         nop                                                              // 0x0064e6da    90
                         nop                                                              // 0x0064e6db    90
                         nop                                                              // 0x0064e6dc    90
                         nop                                                              // 0x0064e6dd    90
                         nop                                                              // 0x0064e6de    90
                         nop                                                              // 0x0064e6df    90
_jmp_addr_0x0064e6e0:    {disp32} mov       dword ptr [data_bytes + 0x381f3c], 0xffffffff // 0x0064e6e0    c7053c7fd400ffffffff
                         ret                                                              // 0x0064e6ea    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0064e6eb    e80931dbff
_globl_ct_0x0064e6f0:    {disp32} jmp       _jmp_addr_0x0064e700                          // 0x0064e6f0    e90b000000
                         nop                                                              // 0x0064e6f5    90
                         nop                                                              // 0x0064e6f6    90
                         nop                                                              // 0x0064e6f7    90
                         nop                                                              // 0x0064e6f8    90
                         nop                                                              // 0x0064e6f9    90
                         nop                                                              // 0x0064e6fa    90
                         nop                                                              // 0x0064e6fb    90
                         nop                                                              // 0x0064e6fc    90
                         nop                                                              // 0x0064e6fd    90
                         nop                                                              // 0x0064e6fe    90
                         nop                                                              // 0x0064e6ff    90
_jmp_addr_0x0064e700:    {disp32} mov       dword ptr [data_bytes + 0x381f30], 0x00000000 // 0x0064e700    c705307fd40000000000
                         {disp32} mov       dword ptr [data_bytes + 0x381f34], 0x00000000 // 0x0064e70a    c705347fd40000000000
                         {disp32} mov       dword ptr [data_bytes + 0x381f38], 0x00000000 // 0x0064e714    c705387fd40000000000
                         ret                                                              // 0x0064e71e    c3
                         nop                                                              // 0x0064e71f    90
_globl_ct_0x0064e720:    {disp32} jmp       _jmp_addr_0x0064e730                          // 0x0064e720    e90b000000
                         nop                                                              // 0x0064e725    90
                         nop                                                              // 0x0064e726    90
                         nop                                                              // 0x0064e727    90
                         nop                                                              // 0x0064e728    90
                         nop                                                              // 0x0064e729    90
                         nop                                                              // 0x0064e72a    90
                         nop                                                              // 0x0064e72b    90
                         nop                                                              // 0x0064e72c    90
                         nop                                                              // 0x0064e72d    90
                         nop                                                              // 0x0064e72e    90
                         nop                                                              // 0x0064e72f    90
_jmp_addr_0x0064e730:    mov                eax, 0x006525b0                               // 0x0064e730    b8b0256500
                         {disp32} mov       dword ptr [data_bytes + 0x239280], eax        // 0x0064e735    a380f2bf00
                         xor.s              ecx, ecx                                      // 0x0064e73a    33c9
                         mov                eax, 0x00652620                               // 0x0064e73c    b820266500
                         {disp32} mov       dword ptr [data_bytes + 0x239290], eax        // 0x0064e741    a390f2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239284], ecx        // 0x0064e746    890d84f2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239294], ecx        // 0x0064e74c    890d94f2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2392a4], ecx        // 0x0064e752    890da4f2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2392b4], ecx        // 0x0064e758    890db4f2bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a9c8]        // 0x0064e75e    8b0dc809c000
                         mov                eax, 0x00652740                               // 0x0064e764    b840276500
                         {disp32} mov       dword ptr [data_bytes + 0x2392a0], eax        // 0x0064e769    a3a0f2bf00
                         xor.s              edx, edx                                      // 0x0064e76e    33d2
                         {disp32} mov       dword ptr [data_bytes + 0x2392d4], ecx        // 0x0064e770    890dd4f2bf00
                         mov                eax, 0x006556d0                               // 0x0064e776    b8d0566500
                         {disp32} mov       dword ptr [data_bytes + 0x2392b0], eax        // 0x0064e77b    a3b0f2bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a9c4]        // 0x0064e780    a1c409c000
                         {disp32} mov       dword ptr [data_bytes + 0x2392d0], eax        // 0x0064e785    a3d0f2bf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x23a9d0]          // 0x0064e78a    66a1d009c000
                         {disp32} mov       word ptr [data_bytes + 0x2392dc], ax          // 0x0064e790    66a3dcf2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239288], edx        // 0x0064e796    891588f2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239298], edx        // 0x0064e79c    891598f2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2392a8], edx        // 0x0064e7a2    8915a8f2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2392b8], edx        // 0x0064e7a8    8915b8f2bf00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x23a9cc]        // 0x0064e7ae    8b15cc09c000
                         xor.s              eax, eax                                      // 0x0064e7b4    33c0
                         push               ebx                                           // 0x0064e7b6    53
                         {disp32} mov       dword ptr [data_bytes + 0x2392d8], edx        // 0x0064e7b7    8915d8f2bf00
                         push               esi                                           // 0x0064e7bd    56
                         xor.s              esi, esi                                      // 0x0064e7be    33f6
                         push               edi                                           // 0x0064e7c0    57
                         {disp32} mov       dword ptr [data_bytes + 0x23928c], esi        // 0x0064e7c1    89358cf2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23929c], esi        // 0x0064e7c7    89359cf2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2392ac], esi        // 0x0064e7cd    8935acf2bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2392bc], esi        // 0x0064e7d3    8935bcf2bf00
                         mov                ebx, 0x00000002                               // 0x0064e7d9    bb02000000
                         {disp32} mov       dword ptr [data_bytes + 0x2392c0], ebx        // 0x0064e7de    891dc0f2bf00
                         mov                ecx, 0x0000000c                               // 0x0064e7e4    b90c000000
                         mov                edi, 0x00bff2de                               // 0x0064e7e9    bfdef2bf00
                         rep stosd                                                        // 0x0064e7ee    f3ab
                         stosw                                                            // 0x0064e7f0    66ab
                         xor.s              ecx, ecx                                      // 0x0064e7f2    33c9
                         mov                eax, 0x00652750                               // 0x0064e7f4    b850276500
                         {disp32} mov       dword ptr [data_bytes + 0x239310], eax        // 0x0064e7f9    a310f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239314], ecx        // 0x0064e7fe    890d14f3bf00
                         mov                eax, 0x00652790                               // 0x0064e804    b890276500
                         {disp32} mov       dword ptr [data_bytes + 0x239320], eax        // 0x0064e809    a320f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239324], ecx        // 0x0064e80e    890d24f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239334], ecx        // 0x0064e814    890d34f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239344], ecx        // 0x0064e81a    890d44f3bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a9b0]        // 0x0064e820    8b0db009c000
                         mov                eax, 0x00652bd0                               // 0x0064e826    b8d02b6500
                         {disp32} mov       dword ptr [data_bytes + 0x239330], eax        // 0x0064e82b    a330f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239360], ecx        // 0x0064e830    890d60f3bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a9b8]        // 0x0064e836    8b0db809c000
                         mov                eax, 0x006556e0                               // 0x0064e83c    b8e0566500
                         {disp32} mov       dword ptr [data_bytes + 0x239340], eax        // 0x0064e841    a340f3bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a9b4]        // 0x0064e846    a1b409c000
                         xor.s              edx, edx                                      // 0x0064e84b    33d2
                         {disp32} mov       dword ptr [data_bytes + 0x239364], eax        // 0x0064e84d    a364f3bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a9bc]        // 0x0064e852    a1bc09c000
                         {disp32} mov       dword ptr [data_bytes + 0x239368], ecx        // 0x0064e857    890d68f3bf00
                         {disp32} mov       cl, byte ptr [data_bytes + 0x23a9c0]          // 0x0064e85d    8a0dc009c000
                         {disp32} mov       dword ptr [data_bytes + 0x239318], edx        // 0x0064e863    891518f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239328], edx        // 0x0064e869    891528f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239338], edx        // 0x0064e86f    891538f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239348], edx        // 0x0064e875    891548f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23936c], eax        // 0x0064e87b    a36cf3bf00
                         {disp32} mov       byte ptr [data_bytes + 0x239370], cl          // 0x0064e880    880d70f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23931c], esi        // 0x0064e886    89351cf3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23932c], esi        // 0x0064e88c    89352cf3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23933c], esi        // 0x0064e892    89353cf3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23934c], esi        // 0x0064e898    89354cf3bf00
                         mov                edx, 0x00000025                               // 0x0064e89e    ba25000000
                         {disp32} mov       dword ptr [data_bytes + 0x239350], edx        // 0x0064e8a3    891550f3bf00
                         xor.s              eax, eax                                      // 0x0064e8a9    33c0
                         mov                ecx, 0x0000000b                               // 0x0064e8ab    b90b000000
                         mov                edi, 0x00bff371                               // 0x0064e8b0    bf71f3bf00
                         rep stosd                                                        // 0x0064e8b5    f3ab
                         stosw                                                            // 0x0064e8b7    66ab
                         stosb                                                            // 0x0064e8b9    aa
                         xor.s              ecx, ecx                                      // 0x0064e8ba    33c9
                         xor.s              edi, edi                                      // 0x0064e8bc    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x2393a4], ecx        // 0x0064e8be    890da4f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393b4], ecx        // 0x0064e8c4    890db4f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393c4], ecx        // 0x0064e8ca    890dc4f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393d4], ecx        // 0x0064e8d0    890dd4f3bf00
                         mov                eax, 0x00652ca0                               // 0x0064e8d6    b8a02c6500
                         {disp32} mov       dword ptr [data_bytes + 0x2393a0], eax        // 0x0064e8db    a3a0f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393ac], edi        // 0x0064e8e0    893dacf3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393bc], edi        // 0x0064e8e6    893dbcf3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393cc], edi        // 0x0064e8ec    893dccf3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393dc], edi        // 0x0064e8f2    893ddcf3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393a8], esi        // 0x0064e8f8    8935a8f3bf00
                         mov                eax, 0x00652d10                               // 0x0064e8fe    b8102d6500
                         {disp32} mov       dword ptr [data_bytes + 0x2393b0], eax        // 0x0064e903    a3b0f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393b8], esi        // 0x0064e908    8935b8f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393c8], esi        // 0x0064e90e    8935c8f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393d8], esi        // 0x0064e914    8935d8f3bf00
                         mov                eax, 0x00652e80                               // 0x0064e91a    b8802e6500
                         {disp32} mov       dword ptr [data_bytes + 0x2393c0], eax        // 0x0064e91f    a3c0f3bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2393e0], edx        // 0x0064e924    8915e0f3bf00
                         mov                eax, 0x00655750                               // 0x0064e92a    b850576500
                         {disp32} mov       dword ptr [data_bytes + 0x2393d0], eax        // 0x0064e92f    a3d0f3bf00
                         mov                ecx, 0x00000005                               // 0x0064e934    b905000000
                         mov                esi, 0x00c00998                               // 0x0064e939    be9809c000
                         mov                edi, 0x00bff3f0                               // 0x0064e93e    bff0f3bf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064e943    f3a5
                         movsw                                                            // 0x0064e945    66a5
                         movsb                                                            // 0x0064e947    a4
                         xor.s              eax, eax                                      // 0x0064e948    33c0
                         mov                ecx, 0x0000000a                               // 0x0064e94a    b90a000000
                         mov                edi, 0x00bff407                               // 0x0064e94f    bf07f4bf00
                         rep stosd                                                        // 0x0064e954    f3ab
                         stosb                                                            // 0x0064e956    aa
                         mov                eax, 0x00652e90                               // 0x0064e957    b8902e6500
                         {disp32} mov       dword ptr [data_bytes + 0x239430], eax        // 0x0064e95c    a330f4bf00
                         xor.s              ecx, ecx                                      // 0x0064e961    33c9
                         mov                eax, 0x00652f30                               // 0x0064e963    b8302f6500
                         {disp32} mov       dword ptr [data_bytes + 0x239440], eax        // 0x0064e968    a340f4bf00
                         mov                eax, 0x006531a0                               // 0x0064e96d    b8a0316500
                         {disp32} mov       dword ptr [data_bytes + 0x239450], eax        // 0x0064e972    a350f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239434], ecx        // 0x0064e977    890d34f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239444], ecx        // 0x0064e97d    890d44f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239454], ecx        // 0x0064e983    890d54f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239464], ecx        // 0x0064e989    890d64f4bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a98c]        // 0x0064e98f    8b0d8c09c000
                         mov                eax, 0x006557f0                               // 0x0064e995    b8f0576500
                         {disp32} mov       dword ptr [data_bytes + 0x239460], eax        // 0x0064e99a    a360f4bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a988]        // 0x0064e99f    a18809c000
                         xor.s              edi, edi                                      // 0x0064e9a4    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239480], eax        // 0x0064e9a6    a380f4bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a990]        // 0x0064e9ab    a19009c000
                         xor.s              esi, esi                                      // 0x0064e9b0    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x239484], ecx        // 0x0064e9b2    890d84f4bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a994]        // 0x0064e9b8    8b0d9409c000
                         {disp32} mov       dword ptr [data_bytes + 0x239488], eax        // 0x0064e9be    a388f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23943c], edi        // 0x0064e9c3    893d3cf4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23944c], edi        // 0x0064e9c9    893d4cf4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23945c], edi        // 0x0064e9cf    893d5cf4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23946c], edi        // 0x0064e9d5    893d6cf4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23948c], ecx        // 0x0064e9db    890d8cf4bf00
                         xor.s              eax, eax                                      // 0x0064e9e1    33c0
                         mov                ecx, 0x0000000c                               // 0x0064e9e3    b90c000000
                         mov                edi, 0x00bff490                               // 0x0064e9e8    bf90f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239438], esi        // 0x0064e9ed    893538f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239448], esi        // 0x0064e9f3    893548f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239458], esi        // 0x0064e9f9    893558f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239468], esi        // 0x0064e9ff    893568f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239470], edx        // 0x0064ea05    891570f4bf00
                         rep stosd                                                        // 0x0064ea0b    f3ab
                         mov                eax, 0x006531b0                               // 0x0064ea0d    b8b0316500
                         xor.s              ecx, ecx                                      // 0x0064ea12    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x2394c0], eax        // 0x0064ea14    a3c0f4bf00
                         xor.s              edi, edi                                      // 0x0064ea19    33ff
                         mov                eax, 0x006531f0                               // 0x0064ea1b    b8f0316500
                         {disp32} mov       dword ptr [data_bytes + 0x2394c4], ecx        // 0x0064ea20    890dc4f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394c8], esi        // 0x0064ea26    8935c8f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394cc], edi        // 0x0064ea2c    893dccf4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394d0], eax        // 0x0064ea32    a3d0f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394d4], ecx        // 0x0064ea37    890dd4f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394d8], esi        // 0x0064ea3d    8935d8f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394e4], ecx        // 0x0064ea43    890de4f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394f4], ecx        // 0x0064ea49    890df4f4bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a978]        // 0x0064ea4f    8b0d7809c000
                         {disp32} mov       dword ptr [data_bytes + 0x239514], ecx        // 0x0064ea55    890d14f5bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a980]        // 0x0064ea5b    8b0d8009c000
                         mov                eax, 0x006533e0                               // 0x0064ea61    b8e0336500
                         {disp32} mov       dword ptr [data_bytes + 0x2394e0], eax        // 0x0064ea66    a3e0f4bf00
                         mov                eax, 0x00655800                               // 0x0064ea6b    b800586500
                         {disp32} mov       dword ptr [data_bytes + 0x2394f0], eax        // 0x0064ea70    a3f0f4bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a974]        // 0x0064ea75    a17409c000
                         {disp32} mov       dword ptr [data_bytes + 0x239510], eax        // 0x0064ea7a    a310f5bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a97c]        // 0x0064ea7f    a17c09c000
                         {disp32} mov       dword ptr [data_bytes + 0x239518], eax        // 0x0064ea84    a318f5bf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x23a984]          // 0x0064ea89    66a18409c000
                         {disp32} mov       word ptr [data_bytes + 0x239520], ax          // 0x0064ea8f    66a320f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23951c], ecx        // 0x0064ea95    890d1cf5bf00
                         {disp32} mov       cl, byte ptr [data_bytes + 0x23a986]          // 0x0064ea9b    8a0d8609c000
                         xor.s              eax, eax                                      // 0x0064eaa1    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x2394dc], edi        // 0x0064eaa3    893ddcf4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394ec], edi        // 0x0064eaa9    893decf4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394fc], edi        // 0x0064eaaf    893dfcf4bf00
                         {disp32} mov       byte ptr [data_bytes + 0x239522], cl          // 0x0064eab5    880d22f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394e8], esi        // 0x0064eabb    8935e8f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2394f8], esi        // 0x0064eac1    8935f8f4bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239500], edx        // 0x0064eac7    891500f5bf00
                         mov                ecx, 0x0000000b                               // 0x0064eacd    b90b000000
                         mov                edi, 0x00bff523                               // 0x0064ead2    bf23f5bf00
                         rep stosd                                                        // 0x0064ead7    f3ab
                         stosb                                                            // 0x0064ead9    aa
                         xor.s              ecx, ecx                                      // 0x0064eada    33c9
                         mov                eax, 0x006533f0                               // 0x0064eadc    b8f0336500
                         {disp32} mov       dword ptr [data_bytes + 0x239550], eax        // 0x0064eae1    a350f5bf00
                         xor.s              edi, edi                                      // 0x0064eae6    33ff
                         mov                eax, 0x00653460                               // 0x0064eae8    b860346500
                         {disp32} mov       dword ptr [data_bytes + 0x239560], eax        // 0x0064eaed    a360f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239554], ecx        // 0x0064eaf2    890d54f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23955c], edi        // 0x0064eaf8    893d5cf5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239564], ecx        // 0x0064eafe    890d64f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23956c], edi        // 0x0064eb04    893d6cf5bf00
                         mov                eax, 0x00653650                               // 0x0064eb0a    b850366500
                         {disp32} mov       dword ptr [data_bytes + 0x239570], eax        // 0x0064eb0f    a370f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239574], ecx        // 0x0064eb14    890d74f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23957c], edi        // 0x0064eb1a    893d7cf5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239584], ecx        // 0x0064eb20    890d84f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23958c], edi        // 0x0064eb26    893d8cf5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239558], esi        // 0x0064eb2c    893558f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239568], esi        // 0x0064eb32    893568f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239578], esi        // 0x0064eb38    893578f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239588], esi        // 0x0064eb3e    893588f5bf00
                         mov                eax, 0x00655890                               // 0x0064eb44    b890586500
                         {disp32} mov       dword ptr [data_bytes + 0x239580], eax        // 0x0064eb49    a380f5bf00
                         xor.s              eax, eax                                      // 0x0064eb4e    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239590], edx        // 0x0064eb50    891590f5bf00
                         mov                ecx, 0x00000009                               // 0x0064eb56    b909000000
                         mov                esi, 0x00c00950                               // 0x0064eb5b    be5009c000
                         mov                edi, 0x00bff5a0                               // 0x0064eb60    bfa0f5bf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064eb65    f3a5
                         mov                ecx, 0x00000007                               // 0x0064eb67    b907000000
                         mov                edi, 0x00bff5c4                               // 0x0064eb6c    bfc4f5bf00
                         rep stosd                                                        // 0x0064eb71    f3ab
                         mov                eax, 0x00652750                               // 0x0064eb73    b850276500
                         {disp32} mov       dword ptr [data_bytes + 0x2395e0], eax        // 0x0064eb78    a3e0f5bf00
                         mov                eax, 0x006528e0                               // 0x0064eb7d    b8e0286500
                         xor.s              ecx, ecx                                      // 0x0064eb82    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x2395f0], eax        // 0x0064eb84    a3f0f5bf00
                         xor.s              esi, esi                                      // 0x0064eb89    33f6
                         mov                eax, 0x00652bd0                               // 0x0064eb8b    b8d02b6500
                         xor.s              edi, edi                                      // 0x0064eb90    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239600], eax        // 0x0064eb92    a300f6bf00
                         mov                eax, 0x006556e0                               // 0x0064eb97    b8e0566500
                         {disp32} mov       dword ptr [data_bytes + 0x2395e4], ecx        // 0x0064eb9c    890de4f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2395e8], esi        // 0x0064eba2    8935e8f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2395ec], edi        // 0x0064eba8    893decf5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2395f4], ecx        // 0x0064ebae    890df4f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2395f8], esi        // 0x0064ebb4    8935f8f5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2395fc], edi        // 0x0064ebba    893dfcf5bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239604], ecx        // 0x0064ebc0    890d04f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239608], esi        // 0x0064ebc6    893508f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23960c], edi        // 0x0064ebcc    893d0cf6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239610], eax        // 0x0064ebd2    a310f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239614], ecx        // 0x0064ebd7    890d14f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23961c], edi        // 0x0064ebdd    893d1cf6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239618], esi        // 0x0064ebe3    893518f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239620], edx        // 0x0064ebe9    891520f6bf00
                         mov                ecx, 0x00000005                               // 0x0064ebef    b905000000
                         mov                esi, 0x00c00938                               // 0x0064ebf4    be3809c000
                         mov                edi, 0x00bff630                               // 0x0064ebf9    bf30f6bf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064ebfe    f3a5
                         movsw                                                            // 0x0064ec00    66a5
                         movsb                                                            // 0x0064ec02    a4
                         xor.s              eax, eax                                      // 0x0064ec03    33c0
                         mov                ecx, 0x0000000a                               // 0x0064ec05    b90a000000
                         mov                edi, 0x00bff647                               // 0x0064ec0a    bf47f6bf00
                         rep stosd                                                        // 0x0064ec0f    f3ab
                         stosb                                                            // 0x0064ec11    aa
                         xor.s              edi, edi                                      // 0x0064ec12    33ff
                         xor.s              ecx, ecx                                      // 0x0064ec14    33c9
                         mov                eax, 0x00653660                               // 0x0064ec16    b860366500
                         {disp32} mov       dword ptr [data_bytes + 0x239670], eax        // 0x0064ec1b    a370f6bf00
                         xor.s              esi, esi                                      // 0x0064ec20    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x239674], ecx        // 0x0064ec22    890d74f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239684], ecx        // 0x0064ec28    890d84f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239694], ecx        // 0x0064ec2e    890d94f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2396a4], ecx        // 0x0064ec34    890da4f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23967c], edi        // 0x0064ec3a    893d7cf6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23968c], edi        // 0x0064ec40    893d8cf6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23969c], edi        // 0x0064ec46    893d9cf6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2396ac], edi        // 0x0064ec4c    893dacf6bf00
                         mov                eax, 0x00653670                               // 0x0064ec52    b870366500
                         {disp32} mov       dword ptr [data_bytes + 0x239680], eax        // 0x0064ec57    a380f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239678], esi        // 0x0064ec5c    893578f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239688], esi        // 0x0064ec62    893588f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239698], esi        // 0x0064ec68    893598f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2396a8], esi        // 0x0064ec6e    8935a8f6bf00
                         mov                eax, 0x00653800                               // 0x0064ec74    b800386500
                         {disp32} mov       dword ptr [data_bytes + 0x239690], eax        // 0x0064ec79    a390f6bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2396b0], 0x00000004 // 0x0064ec7e    c705b0f6bf0004000000
                         mov                eax, 0x00655930                               // 0x0064ec88    b830596500
                         {disp32} mov       dword ptr [data_bytes + 0x2396a0], eax        // 0x0064ec8d    a3a0f6bf00
                         mov                ecx, 0x00000005                               // 0x0064ec92    b905000000
                         mov                esi, 0x00c00920                               // 0x0064ec97    be2009c000
                         mov                edi, 0x00bff6c0                               // 0x0064ec9c    bfc0f6bf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064eca1    f3a5
                         movsw                                                            // 0x0064eca3    66a5
                         xor.s              eax, eax                                      // 0x0064eca5    33c0
                         mov                ecx, 0x0000000a                               // 0x0064eca7    b90a000000
                         mov                edi, 0x00bff6d6                               // 0x0064ecac    bfd6f6bf00
                         rep stosd                                                        // 0x0064ecb1    f3ab
                         stosw                                                            // 0x0064ecb3    66ab
                         mov                eax, 0x00653810                               // 0x0064ecb5    b810386500
                         {disp32} mov       dword ptr [data_bytes + 0x239700], eax        // 0x0064ecba    a300f7bf00
                         xor.s              ecx, ecx                                      // 0x0064ecbf    33c9
                         mov                eax, 0x00653820                               // 0x0064ecc1    b820386500
                         {disp32} mov       dword ptr [data_bytes + 0x239710], eax        // 0x0064ecc6    a310f7bf00
                         mov                eax, 0x006538c0                               // 0x0064eccb    b8c0386500
                         {disp32} mov       dword ptr [data_bytes + 0x239720], eax        // 0x0064ecd0    a320f7bf00
                         xor.s              edi, edi                                      // 0x0064ecd5    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239704], ecx        // 0x0064ecd7    890d04f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239714], ecx        // 0x0064ecdd    890d14f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239724], ecx        // 0x0064ece3    890d24f7bf00
                         mov                eax, 0x00655990                               // 0x0064ece9    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239734], ecx        // 0x0064ecee    890d34f7bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a91c]        // 0x0064ecf4    8b0d1c09c000
                         {disp32} mov       dword ptr [data_bytes + 0x239730], eax        // 0x0064ecfa    a330f7bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a918]        // 0x0064ecff    a11809c000
                         xor.s              esi, esi                                      // 0x0064ed04    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x239754], ecx        // 0x0064ed06    890d54f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23970c], edi        // 0x0064ed0c    893d0cf7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23971c], edi        // 0x0064ed12    893d1cf7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23972c], edi        // 0x0064ed18    893d2cf7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23973c], edi        // 0x0064ed1e    893d3cf7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239750], eax        // 0x0064ed24    a350f7bf00
                         xor.s              eax, eax                                      // 0x0064ed29    33c0
                         mov                ecx, 0x0000000e                               // 0x0064ed2b    b90e000000
                         mov                edi, 0x00bff758                               // 0x0064ed30    bf58f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239708], esi        // 0x0064ed35    893508f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239718], esi        // 0x0064ed3b    893518f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239728], esi        // 0x0064ed41    893528f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239738], esi        // 0x0064ed47    893538f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239740], 0x00000001 // 0x0064ed4d    c70540f7bf0001000000
                         rep stosd                                                        // 0x0064ed57    f3ab
                         xor.s              ecx, ecx                                      // 0x0064ed59    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x239790], eax        // 0x0064ed5b    a390f7bf00
                         or                 edi, 0xffffffff                               // 0x0064ed60    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23979c], edi        // 0x0064ed63    893d9cf7bf00
                         xor.s              edi, edi                                      // 0x0064ed69    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239794], ecx        // 0x0064ed6b    890d94f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397a4], ecx        // 0x0064ed71    890da4f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397b4], ecx        // 0x0064ed77    890db4f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397c4], ecx        // 0x0064ed7d    890dc4f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397ac], edi        // 0x0064ed83    893dacf7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397bc], edi        // 0x0064ed89    893dbcf7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397cc], edi        // 0x0064ed8f    893dccf7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239798], esi        // 0x0064ed95    893598f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397a8], esi        // 0x0064ed9b    8935a8f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397b8], esi        // 0x0064eda1    8935b8f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397c8], esi        // 0x0064eda7    8935c8f7bf00
                         mov                eax, 0x006538d0                               // 0x0064edad    b8d0386500
                         {disp32} mov       dword ptr [data_bytes + 0x2397a0], eax        // 0x0064edb2    a3a0f7bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2397d0], edx        // 0x0064edb7    8915d0f7bf00
                         mov                eax, 0x00653940                               // 0x0064edbd    b840396500
                         {disp32} mov       dword ptr [data_bytes + 0x2397b0], eax        // 0x0064edc2    a3b0f7bf00
                         mov                eax, 0x00655990                               // 0x0064edc7    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x2397c0], eax        // 0x0064edcc    a3c0f7bf00
                         mov                ecx, 0x00000006                               // 0x0064edd1    b906000000
                         mov                esi, 0x00c008fc                               // 0x0064edd6    befc08c000
                         mov                edi, 0x00bff7e0                               // 0x0064eddb    bfe0f7bf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064ede0    f3a5
                         movsw                                                            // 0x0064ede2    66a5
                         movsb                                                            // 0x0064ede4    a4
                         xor.s              eax, eax                                      // 0x0064ede5    33c0
                         mov                ecx, 0x00000009                               // 0x0064ede7    b909000000
                         mov                edi, 0x00bff7fb                               // 0x0064edec    bffbf7bf00
                         rep stosd                                                        // 0x0064edf1    f3ab
                         stosb                                                            // 0x0064edf3    aa
                         mov                eax, 0x00653960                               // 0x0064edf4    b860396500
                         {disp32} mov       dword ptr [data_bytes + 0x239820], eax        // 0x0064edf9    a320f8bf00
                         mov                eax, 0x00653970                               // 0x0064edfe    b870396500
                         {disp32} mov       dword ptr [data_bytes + 0x239830], eax        // 0x0064ee03    a330f8bf00
                         xor.s              ecx, ecx                                      // 0x0064ee08    33c9
                         mov                eax, 0x00653b10                               // 0x0064ee0a    b8103b6500
                         {disp32} mov       dword ptr [data_bytes + 0x239840], eax        // 0x0064ee0f    a340f8bf00
                         xor.s              edi, edi                                      // 0x0064ee14    33ff
                         mov                eax, 0x00655940                               // 0x0064ee16    b840596500
                         {disp32} mov       dword ptr [data_bytes + 0x239850], eax        // 0x0064ee1b    a350f8bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a8f0]        // 0x0064ee20    a1f008c000
                         {disp32} mov       dword ptr [data_bytes + 0x239870], eax        // 0x0064ee25    a370f8bf00
                         {disp32} mov       al, byte ptr [data_bytes + 0x23a8f8]          // 0x0064ee2a    a0f808c000
                         {disp32} mov       dword ptr [data_bytes + 0x239824], ecx        // 0x0064ee2f    890d24f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239834], ecx        // 0x0064ee35    890d34f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239844], ecx        // 0x0064ee3b    890d44f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239854], ecx        // 0x0064ee41    890d54f8bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8f4]        // 0x0064ee47    8b0df408c000
                         xor.s              esi, esi                                      // 0x0064ee4d    33f6
                         {disp32} mov       byte ptr [data_bytes + 0x239878], al          // 0x0064ee4f    a278f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23982c], edi        // 0x0064ee54    893d2cf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23983c], edi        // 0x0064ee5a    893d3cf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23984c], edi        // 0x0064ee60    893d4cf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23985c], edi        // 0x0064ee66    893d5cf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239874], ecx        // 0x0064ee6c    890d74f8bf00
                         xor.s              eax, eax                                      // 0x0064ee72    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239828], esi        // 0x0064ee74    893528f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239838], esi        // 0x0064ee7a    893538f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239848], esi        // 0x0064ee80    893548f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239858], esi        // 0x0064ee86    893558f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239860], ebx        // 0x0064ee8c    891d60f8bf00
                         mov                ecx, 0x0000000d                               // 0x0064ee92    b90d000000
                         mov                edi, 0x00bff879                               // 0x0064ee97    bf79f8bf00
                         rep stosd                                                        // 0x0064ee9c    f3ab
                         stosw                                                            // 0x0064ee9e    66ab
                         stosb                                                            // 0x0064eea0    aa
                         mov                eax, 0x00653b20                               // 0x0064eea1    b8203b6500
                         xor.s              ecx, ecx                                      // 0x0064eea6    33c9
                         xor.s              edi, edi                                      // 0x0064eea8    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x2398b0], eax        // 0x0064eeaa    a3b0f8bf00
                         mov                eax, 0x00653b30                               // 0x0064eeaf    b8303b6500
                         {disp32} mov       dword ptr [data_bytes + 0x2398b4], ecx        // 0x0064eeb4    890db4f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398b8], esi        // 0x0064eeba    8935b8f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398bc], edi        // 0x0064eec0    893dbcf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398c0], eax        // 0x0064eec6    a3c0f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398c4], ecx        // 0x0064eecb    890dc4f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398c8], esi        // 0x0064eed1    8935c8f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398cc], edi        // 0x0064eed7    893dccf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398d4], ecx        // 0x0064eedd    890dd4f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398e4], ecx        // 0x0064eee3    890de4f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398dc], edi        // 0x0064eee9    893ddcf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398ec], edi        // 0x0064eeef    893decf8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398d8], esi        // 0x0064eef5    8935d8f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398e8], esi        // 0x0064eefb    8935e8f8bf00
                         mov                eax, 0x00652740                               // 0x0064ef01    b840276500
                         {disp32} mov       dword ptr [data_bytes + 0x2398d0], eax        // 0x0064ef06    a3d0f8bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2398f0], edx        // 0x0064ef0b    8915f0f8bf00
                         mov                eax, 0x00655990                               // 0x0064ef11    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x2398e0], eax        // 0x0064ef16    a3e0f8bf00
                         xor.s              eax, eax                                      // 0x0064ef1b    33c0
                         mov                ecx, 0x00000005                               // 0x0064ef1d    b905000000
                         mov                esi, 0x00c008dc                               // 0x0064ef22    bedc08c000
                         mov                edi, 0x00bff900                               // 0x0064ef27    bf00f9bf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064ef2c    f3a5
                         mov                ecx, 0x0000000b                               // 0x0064ef2e    b90b000000
                         mov                edi, 0x00bff914                               // 0x0064ef33    bf14f9bf00
                         rep stosd                                                        // 0x0064ef38    f3ab
                         mov                eax, 0x00653bf0                               // 0x0064ef3a    b8f03b6500
                         {disp32} mov       dword ptr [data_bytes + 0x239940], eax        // 0x0064ef3f    a340f9bf00
                         xor.s              ecx, ecx                                      // 0x0064ef44    33c9
                         mov                eax, 0x00653cc0                               // 0x0064ef46    b8c03c6500
                         {disp32} mov       dword ptr [data_bytes + 0x239950], eax        // 0x0064ef4b    a350f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239944], ecx        // 0x0064ef50    890d44f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239954], ecx        // 0x0064ef56    890d54f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239964], ecx        // 0x0064ef5c    890d64f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239974], ecx        // 0x0064ef62    890d74f9bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8cc]        // 0x0064ef68    8b0dcc08c000
                         mov                eax, 0x00653de0                               // 0x0064ef6e    b8e03d6500
                         {disp32} mov       dword ptr [data_bytes + 0x239960], eax        // 0x0064ef73    a360f9bf00
                         xor.s              edi, edi                                      // 0x0064ef78    33ff
                         mov                eax, 0x00655990                               // 0x0064ef7a    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239970], eax        // 0x0064ef7f    a370f9bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a8d0]        // 0x0064ef84    a1d008c000
                         {disp32} mov       dword ptr [data_bytes + 0x239994], eax        // 0x0064ef89    a394f9bf00
                         {disp32} mov       al, byte ptr [data_bytes + 0x23a8d8]          // 0x0064ef8e    a0d808c000
                         {disp32} mov       dword ptr [data_bytes + 0x239990], ecx        // 0x0064ef93    890d90f9bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8d4]        // 0x0064ef99    8b0dd408c000
                         xor.s              esi, esi                                      // 0x0064ef9f    33f6
                         {disp32} mov       byte ptr [data_bytes + 0x23999c], al          // 0x0064efa1    a29cf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239998], ecx        // 0x0064efa6    890d98f9bf00
                         xor.s              eax, eax                                      // 0x0064efac    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23994c], edi        // 0x0064efae    893d4cf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23995c], edi        // 0x0064efb4    893d5cf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23996c], edi        // 0x0064efba    893d6cf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x23997c], edi        // 0x0064efc0    893d7cf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239948], esi        // 0x0064efc6    893548f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239958], esi        // 0x0064efcc    893558f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239968], esi        // 0x0064efd2    893568f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239978], esi        // 0x0064efd8    893578f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239980], edx        // 0x0064efde    891580f9bf00
                         mov                ecx, 0x0000000c                               // 0x0064efe4    b90c000000
                         mov                edi, 0x00bff99d                               // 0x0064efe9    bf9df9bf00
                         rep stosd                                                        // 0x0064efee    f3ab
                         stosw                                                            // 0x0064eff0    66ab
                         stosb                                                            // 0x0064eff2    aa
                         mov                eax, 0x00654050                               // 0x0064eff3    b850406500
                         {disp32} mov       dword ptr [data_bytes + 0x2399d0], eax        // 0x0064eff8    a3d0f9bf00
                         mov                eax, 0x00654060                               // 0x0064effd    b860406500
                         xor.s              ecx, ecx                                      // 0x0064f002    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x2399e0], eax        // 0x0064f004    a3e0f9bf00
                         mov                eax, 0x00654100                               // 0x0064f009    b800416500
                         xor.s              edi, edi                                      // 0x0064f00e    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x2399f0], eax        // 0x0064f010    a3f0f9bf00
                         mov                eax, 0x00655990                               // 0x0064f015    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x2399d4], ecx        // 0x0064f01a    890dd4f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2399e4], ecx        // 0x0064f020    890de4f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2399f4], ecx        // 0x0064f026    890df4f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a04], ecx        // 0x0064f02c    890d04fabf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8bc]        // 0x0064f032    8b0dbc08c000
                         {disp32} mov       dword ptr [data_bytes + 0x2399d8], esi        // 0x0064f038    8935d8f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2399dc], edi        // 0x0064f03e    893ddcf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2399e8], esi        // 0x0064f044    8935e8f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2399ec], edi        // 0x0064f04a    893decf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2399f8], esi        // 0x0064f050    8935f8f9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x2399fc], edi        // 0x0064f056    893dfcf9bf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a00], eax        // 0x0064f05c    a300fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a08], esi        // 0x0064f061    893508fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a0c], edi        // 0x0064f067    893d0cfabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a10], ebx        // 0x0064f06d    891d10fabf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a8c0]        // 0x0064f073    a1c008c000
                         {disp32} mov       dword ptr [data_bytes + 0x239a24], eax        // 0x0064f078    a324fabf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x23a8c8]          // 0x0064f07d    66a1c808c000
                         {disp32} mov       dword ptr [data_bytes + 0x239a20], ecx        // 0x0064f083    890d20fabf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8c4]        // 0x0064f089    8b0dc408c000
                         {disp32} mov       word ptr [data_bytes + 0x239a2c], ax          // 0x0064f08f    66a32cfabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a28], ecx        // 0x0064f095    890d28fabf00
                         {disp32} mov       cl, byte ptr [data_bytes + 0x23a8ca]          // 0x0064f09b    8a0dca08c000
                         xor.s              eax, eax                                      // 0x0064f0a1    33c0
                         {disp32} mov       byte ptr [data_bytes + 0x239a2e], cl          // 0x0064f0a3    880d2efabf00
                         mov                ecx, 0x0000000c                               // 0x0064f0a9    b90c000000
                         mov                edi, 0x00bffa2f                               // 0x0064f0ae    bf2ffabf00
                         rep stosd                                                        // 0x0064f0b3    f3ab
                         stosb                                                            // 0x0064f0b5    aa
                         mov                eax, 0x00654140                               // 0x0064f0b6    b840416500
                         {disp32} mov       dword ptr [data_bytes + 0x239a60], eax        // 0x0064f0bb    a360fabf00
                         xor.s              ecx, ecx                                      // 0x0064f0c0    33c9
                         mov                eax, 0x00654150                               // 0x0064f0c2    b850416500
                         {disp32} mov       dword ptr [data_bytes + 0x239a70], eax        // 0x0064f0c7    a370fabf00
                         mov                eax, 0x006541f0                               // 0x0064f0cc    b8f0416500
                         {disp32} mov       dword ptr [data_bytes + 0x239a80], eax        // 0x0064f0d1    a380fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a64], ecx        // 0x0064f0d6    890d64fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a74], ecx        // 0x0064f0dc    890d74fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a84], ecx        // 0x0064f0e2    890d84fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a94], ecx        // 0x0064f0e8    890d94fabf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x22026c]        // 0x0064f0ee    8b0d6c62be00
                         mov                eax, 0x00655990                               // 0x0064f0f4    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239a90], eax        // 0x0064f0f9    a390fabf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x220268]        // 0x0064f0fe    a16862be00
                         {disp32} mov       dword ptr [data_bytes + 0x239ab0], eax        // 0x0064f103    a3b0fabf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x220270]        // 0x0064f108    a17062be00
                         {disp32} mov       dword ptr [data_bytes + 0x239ab8], eax        // 0x0064f10d    a3b8fabf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x220278]          // 0x0064f112    66a17862be00
                         xor.s              edi, edi                                      // 0x0064f118    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239ab4], ecx        // 0x0064f11a    890db4fabf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x220274]        // 0x0064f120    8b0d7462be00
                         {disp32} mov       word ptr [data_bytes + 0x239ac0], ax          // 0x0064f126    66a3c0fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239abc], ecx        // 0x0064f12c    890dbcfabf00
                         xor.s              eax, eax                                      // 0x0064f132    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239a6c], edi        // 0x0064f134    893d6cfabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a7c], edi        // 0x0064f13a    893d7cfabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a8c], edi        // 0x0064f140    893d8cfabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a9c], edi        // 0x0064f146    893d9cfabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a68], esi        // 0x0064f14c    893568fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a78], esi        // 0x0064f152    893578fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a88], esi        // 0x0064f158    893588fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239a98], esi        // 0x0064f15e    893598fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239aa0], ebx        // 0x0064f164    891da0fabf00
                         mov                ecx, 0x0000000b                               // 0x0064f16a    b90b000000
                         mov                edi, 0x00bffac2                               // 0x0064f16f    bfc2fabf00
                         rep stosd                                                        // 0x0064f174    f3ab
                         stosw                                                            // 0x0064f176    66ab
                         mov                eax, 0x00654230                               // 0x0064f178    b830426500
                         {disp32} mov       dword ptr [data_bytes + 0x239af0], eax        // 0x0064f17d    a3f0fabf00
                         xor.s              ecx, ecx                                      // 0x0064f182    33c9
                         mov                eax, 0x006542a0                               // 0x0064f184    b8a0426500
                         {disp32} mov       dword ptr [data_bytes + 0x239b00], eax        // 0x0064f189    a300fbbf00
                         mov                eax, 0x00654450                               // 0x0064f18e    b850446500
                         {disp32} mov       dword ptr [data_bytes + 0x239af4], ecx        // 0x0064f193    890df4fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b04], ecx        // 0x0064f199    890d04fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b10], eax        // 0x0064f19f    a310fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b14], ecx        // 0x0064f1a4    890d14fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b24], ecx        // 0x0064f1aa    890d24fbbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x220258]        // 0x0064f1b0    8b0d5862be00
                         mov                eax, 0x00655990                               // 0x0064f1b6    b890596500
                         xor.s              edi, edi                                      // 0x0064f1bb    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239b20], eax        // 0x0064f1bd    a320fbbf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22025c]        // 0x0064f1c2    a15c62be00
                         {disp32} mov       dword ptr [data_bytes + 0x239b40], ecx        // 0x0064f1c7    890d40fbbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x220260]        // 0x0064f1cd    8b0d6062be00
                         {disp32} mov       dword ptr [data_bytes + 0x239af8], esi        // 0x0064f1d3    8935f8fabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239afc], edi        // 0x0064f1d9    893dfcfabf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b08], esi        // 0x0064f1df    893508fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b0c], edi        // 0x0064f1e5    893d0cfbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b18], esi        // 0x0064f1eb    893518fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b1c], edi        // 0x0064f1f1    893d1cfbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b28], esi        // 0x0064f1f7    893528fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b2c], edi        // 0x0064f1fd    893d2cfbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b30], ebx        // 0x0064f203    891d30fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b44], eax        // 0x0064f209    a344fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b48], ecx        // 0x0064f20e    890d48fbbf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x220264]          // 0x0064f214    66a16462be00
                         {disp32} mov       cl, byte ptr [data_bytes + 0x220266]          // 0x0064f21a    8a0d6662be00
                         {disp32} mov       word ptr [data_bytes + 0x239b4c], ax          // 0x0064f220    66a34cfbbf00
                         xor.s              eax, eax                                      // 0x0064f226    33c0
                         {disp32} mov       byte ptr [data_bytes + 0x239b4e], cl          // 0x0064f228    880d4efbbf00
                         mov                ecx, 0x0000000c                               // 0x0064f22e    b90c000000
                         mov                edi, 0x00bffb4f                               // 0x0064f233    bf4ffbbf00
                         rep stosd                                                        // 0x0064f238    f3ab
                         stosb                                                            // 0x0064f23a    aa
                         xor.s              ecx, ecx                                      // 0x0064f23b    33c9
                         mov                eax, 0x006544a0                               // 0x0064f23d    b8a0446500
                         {disp32} mov       dword ptr [data_bytes + 0x239b80], eax        // 0x0064f242    a380fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b84], ecx        // 0x0064f247    890d84fbbf00
                         mov                eax, 0x006544f0                               // 0x0064f24d    b8f0446500
                         {disp32} mov       dword ptr [data_bytes + 0x239b90], eax        // 0x0064f252    a390fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b94], ecx        // 0x0064f257    890d94fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ba4], ecx        // 0x0064f25d    890da4fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239bb4], ecx        // 0x0064f263    890db4fbbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8ac]        // 0x0064f269    8b0dac08c000
                         mov                eax, 0x00654670                               // 0x0064f26f    b870466500
                         {disp32} mov       dword ptr [data_bytes + 0x239ba0], eax        // 0x0064f274    a3a0fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239bd4], ecx        // 0x0064f279    890dd4fbbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8b4]        // 0x0064f27f    8b0db408c000
                         mov                eax, 0x00655990                               // 0x0064f285    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239bb0], eax        // 0x0064f28a    a3b0fbbf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a8a8]        // 0x0064f28f    a1a808c000
                         {disp32} mov       dword ptr [data_bytes + 0x239bd0], eax        // 0x0064f294    a3d0fbbf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a8b0]        // 0x0064f299    a1b008c000
                         {disp32} mov       dword ptr [data_bytes + 0x239bd8], eax        // 0x0064f29e    a3d8fbbf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x23a8b8]          // 0x0064f2a3    66a1b808c000
                         {disp32} mov       dword ptr [data_bytes + 0x239bdc], ecx        // 0x0064f2a9    890ddcfbbf00
                         {disp32} mov       cl, byte ptr [data_bytes + 0x23a8ba]          // 0x0064f2af    8a0dba08c000
                         xor.s              edi, edi                                      // 0x0064f2b5    33ff
                         {disp32} mov       word ptr [data_bytes + 0x239be0], ax          // 0x0064f2b7    66a3e0fbbf00
                         {disp32} mov       byte ptr [data_bytes + 0x239be2], cl          // 0x0064f2bd    880de2fbbf00
                         xor.s              eax, eax                                      // 0x0064f2c3    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239b8c], edi        // 0x0064f2c5    893d8cfbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b9c], edi        // 0x0064f2cb    893d9cfbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239bac], edi        // 0x0064f2d1    893dacfbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239bbc], edi        // 0x0064f2d7    893dbcfbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b88], esi        // 0x0064f2dd    893588fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239b98], esi        // 0x0064f2e3    893598fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ba8], esi        // 0x0064f2e9    8935a8fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239bb8], esi        // 0x0064f2ef    8935b8fbbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239bc0], 0x00000001 // 0x0064f2f5    c705c0fbbf0001000000
                         mov                ecx, 0x0000000b                               // 0x0064f2ff    b90b000000
                         mov                edi, 0x00bffbe3                               // 0x0064f304    bfe3fbbf00
                         rep stosd                                                        // 0x0064f309    f3ab
                         stosb                                                            // 0x0064f30b    aa
                         mov                eax, 0x006544a0                               // 0x0064f30c    b8a0446500
                         {disp32} mov       dword ptr [data_bytes + 0x239c10], eax        // 0x0064f311    a310fcbf00
                         xor.s              ecx, ecx                                      // 0x0064f316    33c9
                         mov                eax, 0x006544f0                               // 0x0064f318    b8f0446500
                         {disp32} mov       dword ptr [data_bytes + 0x239c20], eax        // 0x0064f31d    a320fcbf00
                         mov                eax, 0x00654670                               // 0x0064f322    b870466500
                         {disp32} mov       dword ptr [data_bytes + 0x239c30], eax        // 0x0064f327    a330fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c14], ecx        // 0x0064f32c    890d14fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c24], ecx        // 0x0064f332    890d24fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c34], ecx        // 0x0064f338    890d34fcbf00
                         mov                eax, 0x00655990                               // 0x0064f33e    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239c44], ecx        // 0x0064f343    890d44fcbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a89c]        // 0x0064f349    8b0d9c08c000
                         {disp32} mov       dword ptr [data_bytes + 0x239c40], eax        // 0x0064f34f    a340fcbf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a898]        // 0x0064f354    a19808c000
                         xor.s              edi, edi                                      // 0x0064f359    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239c64], ecx        // 0x0064f35b    890d64fcbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a8a4]        // 0x0064f361    8b0da408c000
                         {disp32} mov       dword ptr [data_bytes + 0x239c60], eax        // 0x0064f367    a360fcbf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a8a0]        // 0x0064f36c    a1a008c000
                         {disp32} mov       dword ptr [data_bytes + 0x239c6c], ecx        // 0x0064f371    890d6cfcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c18], esi        // 0x0064f377    893518fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c1c], edi        // 0x0064f37d    893d1cfcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c28], esi        // 0x0064f383    893528fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c2c], edi        // 0x0064f389    893d2cfcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c38], esi        // 0x0064f38f    893538fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c3c], edi        // 0x0064f395    893d3cfcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c48], esi        // 0x0064f39b    893548fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c4c], edi        // 0x0064f3a1    893d4cfcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c50], edx        // 0x0064f3a7    891550fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239c68], eax        // 0x0064f3ad    a368fcbf00
                         mov                ecx, 0x0000000c                               // 0x0064f3b2    b90c000000
                         xor.s              eax, eax                                      // 0x0064f3b7    33c0
                         mov                edi, 0x00bffc70                               // 0x0064f3b9    bf70fcbf00
                         rep stosd                                                        // 0x0064f3be    f3ab
                         or                 edi, 0xffffffff                               // 0x0064f3c0    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x239cac], edi        // 0x0064f3c3    893dacfcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ca0], eax        // 0x0064f3c9    a3a0fcbf00
                         xor.s              edi, edi                                      // 0x0064f3ce    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239cbc], edi        // 0x0064f3d0    893dbcfcbf00
                         or                 edi, 0xffffffff                               // 0x0064f3d6    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x239ccc], edi        // 0x0064f3d9    893dccfcbf00
                         xor.s              ecx, ecx                                      // 0x0064f3df    33c9
                         xor.s              edi, edi                                      // 0x0064f3e1    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239cdc], edi        // 0x0064f3e3    893ddcfcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ca4], ecx        // 0x0064f3e9    890da4fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239cb4], ecx        // 0x0064f3ef    890db4fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239cc4], ecx        // 0x0064f3f5    890dc4fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239cd4], ecx        // 0x0064f3fb    890dd4fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ca8], esi        // 0x0064f401    8935a8fcbf00
                         mov                eax, 0x00654690                               // 0x0064f407    b890466500
                         {disp32} mov       dword ptr [data_bytes + 0x239cb0], eax        // 0x0064f40c    a3b0fcbf00
                         xor.s              eax, eax                                      // 0x0064f411    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239cc0], eax        // 0x0064f413    a3c0fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239cb8], esi        // 0x0064f418    8935b8fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239cc8], esi        // 0x0064f41e    8935c8fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239cd8], esi        // 0x0064f424    8935d8fcbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ce0], 0x00000001 // 0x0064f42a    c705e0fcbf0001000000
                         mov                eax, 0x00655990                               // 0x0064f434    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239cd0], eax        // 0x0064f439    a3d0fcbf00
                         mov                ecx, 0x00000005                               // 0x0064f43e    b905000000
                         mov                esi, 0x00c00880                               // 0x0064f443    be8008c000
                         mov                edi, 0x00bffcf0                               // 0x0064f448    bff0fcbf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064f44d    f3a5
                         movsw                                                            // 0x0064f44f    66a5
                         xor.s              eax, eax                                      // 0x0064f451    33c0
                         mov                ecx, 0x0000000a                               // 0x0064f453    b90a000000
                         mov                edi, 0x00bffd06                               // 0x0064f458    bf06fdbf00
                         rep stosd                                                        // 0x0064f45d    f3ab
                         stosw                                                            // 0x0064f45f    66ab
                         xor.s              eax, eax                                      // 0x0064f461    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239d30], eax        // 0x0064f463    a330fdbf00
                         or                 edi, 0xffffffff                               // 0x0064f468    83cfff
                         xor.s              ecx, ecx                                      // 0x0064f46b    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x239d3c], edi        // 0x0064f46d    893d3cfdbf00
                         mov                eax, 0x00654800                               // 0x0064f473    b800486500
                         {disp32} mov       dword ptr [data_bytes + 0x239d40], eax        // 0x0064f478    a340fdbf00
                         xor.s              eax, eax                                      // 0x0064f47d    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239d50], eax        // 0x0064f47f    a350fdbf00
                         xor.s              edi, edi                                      // 0x0064f484    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239d34], ecx        // 0x0064f486    890d34fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d44], ecx        // 0x0064f48c    890d44fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d4c], edi        // 0x0064f492    893d4cfdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d54], ecx        // 0x0064f498    890d54fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d64], ecx        // 0x0064f49e    890d64fdbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2201d0]        // 0x0064f4a4    8b0dd061be00
                         or                 edi, 0xffffffff                               // 0x0064f4aa    83cfff
                         mov                eax, 0x00655990                               // 0x0064f4ad    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239d60], eax        // 0x0064f4b2    a360fdbf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2201cc]        // 0x0064f4b7    a1cc61be00
                         {disp32} mov       dword ptr [data_bytes + 0x239d5c], edi        // 0x0064f4bc    893d5cfdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d80], eax        // 0x0064f4c2    a380fdbf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x2201d4]          // 0x0064f4c7    66a1d461be00
                         {disp32} mov       dword ptr [data_bytes + 0x239d84], ecx        // 0x0064f4cd    890d84fdbf00
                         {disp32} mov       cl, byte ptr [data_bytes + 0x2201d6]          // 0x0064f4d3    8a0dd661be00
                         xor.s              edi, edi                                      // 0x0064f4d9    33ff
                         xor.s              esi, esi                                      // 0x0064f4db    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x239d6c], edi        // 0x0064f4dd    893d6cfdbf00
                         {disp32} mov       word ptr [data_bytes + 0x239d88], ax          // 0x0064f4e3    66a388fdbf00
                         {disp32} mov       byte ptr [data_bytes + 0x239d8a], cl          // 0x0064f4e9    880d8afdbf00
                         xor.s              eax, eax                                      // 0x0064f4ef    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239d38], esi        // 0x0064f4f1    893538fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d48], esi        // 0x0064f4f7    893548fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d58], esi        // 0x0064f4fd    893558fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d68], esi        // 0x0064f503    893568fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239d70], edx        // 0x0064f509    891570fdbf00
                         mov                ecx, 0x0000000d                               // 0x0064f50f    b90d000000
                         mov                edi, 0x00bffd8b                               // 0x0064f514    bf8bfdbf00
                         rep stosd                                                        // 0x0064f519    f3ab
                         stosb                                                            // 0x0064f51b    aa
                         xor.s              ecx, ecx                                      // 0x0064f51c    33c9
                         mov                eax, 0x00654810                               // 0x0064f51e    b810486500
                         xor.s              edi, edi                                      // 0x0064f523    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239dc0], eax        // 0x0064f525    a3c0fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239dc4], ecx        // 0x0064f52a    890dc4fdbf00
                         mov                eax, 0x00654900                               // 0x0064f530    b800496500
                         {disp32} mov       dword ptr [data_bytes + 0x239dd0], eax        // 0x0064f535    a3d0fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239dd4], ecx        // 0x0064f53a    890dd4fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239de4], ecx        // 0x0064f540    890de4fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239df4], ecx        // 0x0064f546    890df4fdbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2201c4]        // 0x0064f54c    8b0dc461be00
                         mov                eax, 0x00654910                               // 0x0064f552    b810496500
                         {disp32} mov       dword ptr [data_bytes + 0x239de0], eax        // 0x0064f557    a3e0fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e14], ecx        // 0x0064f55c    890d14febf00
                         {disp32} mov       cl, byte ptr [data_bytes + 0x2201ca]          // 0x0064f562    8a0dca61be00
                         mov                eax, 0x00655990                               // 0x0064f568    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239df0], eax        // 0x0064f56d    a3f0fdbf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2201c0]        // 0x0064f572    a1c061be00
                         {disp32} mov       dword ptr [data_bytes + 0x239e10], eax        // 0x0064f577    a310febf00
                         {disp32} mov       ax, word ptr [data_bytes + 0x2201c8]          // 0x0064f57c    66a1c861be00
                         {disp32} mov       word ptr [data_bytes + 0x239e18], ax          // 0x0064f582    66a318febf00
                         xor.s              eax, eax                                      // 0x0064f588    33c0
                         {disp32} mov       byte ptr [data_bytes + 0x239e1a], cl          // 0x0064f58a    880d1afebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239dcc], edi        // 0x0064f590    893dccfdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ddc], edi        // 0x0064f596    893ddcfdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239dec], edi        // 0x0064f59c    893decfdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239dfc], edi        // 0x0064f5a2    893dfcfdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239dc8], esi        // 0x0064f5a8    8935c8fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239dd8], esi        // 0x0064f5ae    8935d8fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239de8], esi        // 0x0064f5b4    8935e8fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239df8], esi        // 0x0064f5ba    8935f8fdbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e00], ebx        // 0x0064f5c0    891d00febf00
                         mov                ecx, 0x0000000d                               // 0x0064f5c6    b90d000000
                         mov                edi, 0x00bffe1b                               // 0x0064f5cb    bf1bfebf00
                         rep stosd                                                        // 0x0064f5d0    f3ab
                         stosb                                                            // 0x0064f5d2    aa
                         mov                eax, 0x00654920                               // 0x0064f5d3    b820496500
                         {disp32} mov       dword ptr [data_bytes + 0x239e50], eax        // 0x0064f5d8    a350febf00
                         mov                eax, 0x006549b0                               // 0x0064f5dd    b8b0496500
                         {disp32} mov       dword ptr [data_bytes + 0x239e60], eax        // 0x0064f5e2    a360febf00
                         xor.s              ecx, ecx                                      // 0x0064f5e7    33c9
                         mov                eax, 0x006549c0                               // 0x0064f5e9    b8c0496500
                         {disp32} mov       dword ptr [data_bytes + 0x239e70], eax        // 0x0064f5ee    a370febf00
                         mov                eax, 0x00655990                               // 0x0064f5f3    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x239e80], eax        // 0x0064f5f8    a380febf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a874]        // 0x0064f5fd    a17408c000
                         xor.s              edi, edi                                      // 0x0064f602    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239ea0], eax        // 0x0064f604    a3a0febf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a87c]        // 0x0064f609    a17c08c000
                         {disp32} mov       dword ptr [data_bytes + 0x239e54], ecx        // 0x0064f60e    890d54febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e64], ecx        // 0x0064f614    890d64febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e74], ecx        // 0x0064f61a    890d74febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e84], ecx        // 0x0064f620    890d84febf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a878]        // 0x0064f626    8b0d7808c000
                         {disp32} mov       dword ptr [data_bytes + 0x239ea8], eax        // 0x0064f62c    a3a8febf00
                         xor.s              eax, eax                                      // 0x0064f631    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239e5c], edi        // 0x0064f633    893d5cfebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e6c], edi        // 0x0064f639    893d6cfebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e7c], edi        // 0x0064f63f    893d7cfebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e8c], edi        // 0x0064f645    893d8cfebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ea4], ecx        // 0x0064f64b    890da4febf00
                         mov                ecx, 0x0000000d                               // 0x0064f651    b90d000000
                         mov                edi, 0x00bffeac                               // 0x0064f656    bfacfebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e58], esi        // 0x0064f65b    893558febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e68], esi        // 0x0064f661    893568febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e78], esi        // 0x0064f667    893578febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e88], esi        // 0x0064f66d    893588febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239e90], ebx        // 0x0064f673    891d90febf00
                         rep stosd                                                        // 0x0064f679    f3ab
                         mov                eax, 0x006549d0                               // 0x0064f67b    b8d0496500
                         {disp32} mov       dword ptr [data_bytes + 0x239ee0], eax        // 0x0064f680    a3e0febf00
                         xor.s              ecx, ecx                                      // 0x0064f685    33c9
                         mov                eax, 0x00654a70                               // 0x0064f687    b8704a6500
                         xor.s              edi, edi                                      // 0x0064f68c    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239ef0], eax        // 0x0064f68e    a3f0febf00
                         mov                eax, 0x00654b50                               // 0x0064f693    b8504b6500
                         {disp32} mov       dword ptr [data_bytes + 0x239ee4], ecx        // 0x0064f698    890de4febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ee8], esi        // 0x0064f69e    8935e8febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239eec], edi        // 0x0064f6a4    893decfebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ef4], ecx        // 0x0064f6aa    890df4febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239ef8], esi        // 0x0064f6b0    8935f8febf00
                         {disp32} mov       dword ptr [data_bytes + 0x239efc], edi        // 0x0064f6b6    893dfcfebf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f00], eax        // 0x0064f6bc    a300ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f04], ecx        // 0x0064f6c1    890d04ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f14], ecx        // 0x0064f6c7    890d14ffbf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x22033c]        // 0x0064f6cd    8b0d3c63be00
                         {disp32} mov       dword ptr [data_bytes + 0x239f0c], edi        // 0x0064f6d3    893d0cffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f1c], edi        // 0x0064f6d9    893d1cffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f30], ecx        // 0x0064f6df    890d30ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f08], esi        // 0x0064f6e5    893508ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f18], esi        // 0x0064f6eb    893518ffbf00
                         mov                eax, 0x00655980                               // 0x0064f6f1    b880596500
                         {disp32} mov       dword ptr [data_bytes + 0x239f10], eax        // 0x0064f6f6    a310ffbf00
                         {disp32} mov       al, byte ptr [data_bytes + 0x220340]          // 0x0064f6fb    a04063be00
                         {disp32} mov       byte ptr [data_bytes + 0x239f34], al          // 0x0064f700    a234ffbf00
                         xor.s              eax, eax                                      // 0x0064f705    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239f20], edx        // 0x0064f707    891520ffbf00
                         mov                ecx, 0x0000000e                               // 0x0064f70d    b90e000000
                         mov                edi, 0x00bfff35                               // 0x0064f712    bf35ffbf00
                         rep stosd                                                        // 0x0064f717    f3ab
                         stosw                                                            // 0x0064f719    66ab
                         stosb                                                            // 0x0064f71b    aa
                         xor.s              edi, edi                                      // 0x0064f71c    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x239f7c], edi        // 0x0064f71e    893d7cffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f8c], edi        // 0x0064f724    893d8cffbf00
                         or                 edi, 0xffffffff                               // 0x0064f72a    83cfff
                         xor.s              ecx, ecx                                      // 0x0064f72d    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x239f9c], edi        // 0x0064f72f    893d9cffbf00
                         xor.s              edi, edi                                      // 0x0064f735    33ff
                         mov                eax, 0x00654be0                               // 0x0064f737    b8e04b6500
                         {disp32} mov       dword ptr [data_bytes + 0x239f70], eax        // 0x0064f73c    a370ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f74], ecx        // 0x0064f741    890d74ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f84], ecx        // 0x0064f747    890d84ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f94], ecx        // 0x0064f74d    890d94ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239fa4], ecx        // 0x0064f753    890da4ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239fac], edi        // 0x0064f759    893dacffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f78], esi        // 0x0064f75f    893578ffbf00
                         mov                eax, 0x00654c40                               // 0x0064f765    b8404c6500
                         {disp32} mov       dword ptr [data_bytes + 0x239f80], eax        // 0x0064f76a    a380ffbf00
                         xor.s              eax, eax                                      // 0x0064f76f    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x239f90], eax        // 0x0064f771    a390ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f88], esi        // 0x0064f776    893588ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239f98], esi        // 0x0064f77c    893598ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239fa8], esi        // 0x0064f782    8935a8ffbf00
                         {disp32} mov       dword ptr [data_bytes + 0x239fb0], edx        // 0x0064f788    8915b0ffbf00
                         mov                eax, 0x00655950                               // 0x0064f78e    b850596500
                         {disp32} mov       dword ptr [data_bytes + 0x239fa0], eax        // 0x0064f793    a3a0ffbf00
                         mov                ecx, 0x00000006                               // 0x0064f798    b906000000
                         mov                esi, 0x00c00858                               // 0x0064f79d    be5808c000
                         mov                edi, 0x00bfffc0                               // 0x0064f7a2    bfc0ffbf00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064f7a7    f3a5
                         movsb                                                            // 0x0064f7a9    a4
                         xor.s              eax, eax                                      // 0x0064f7aa    33c0
                         mov                ecx, 0x00000009                               // 0x0064f7ac    b909000000
                         mov                edi, 0x00bfffd9                               // 0x0064f7b1    bfd9ffbf00
                         rep stosd                                                        // 0x0064f7b6    f3ab
                         stosw                                                            // 0x0064f7b8    66ab
                         stosb                                                            // 0x0064f7ba    aa
                         mov                eax, 0x00654c60                               // 0x0064f7bb    b8604c6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a000], eax        // 0x0064f7c0    a30000c000
                         xor.s              ecx, ecx                                      // 0x0064f7c5    33c9
                         xor.s              esi, esi                                      // 0x0064f7c7    33f6
                         mov                eax, 0x00654c70                               // 0x0064f7c9    b8704c6500
                         xor.s              edi, edi                                      // 0x0064f7ce    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a010], eax        // 0x0064f7d0    a31000c000
                         mov                eax, 0x00654d00                               // 0x0064f7d5    b8004d6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a020], eax        // 0x0064f7da    a32000c000
                         mov                eax, 0x00655990                               // 0x0064f7df    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a004], ecx        // 0x0064f7e4    890d0400c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a008], esi        // 0x0064f7ea    89350800c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a00c], edi        // 0x0064f7f0    893d0c00c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a014], ecx        // 0x0064f7f6    890d1400c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a018], esi        // 0x0064f7fc    89351800c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a01c], edi        // 0x0064f802    893d1c00c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a024], ecx        // 0x0064f808    890d2400c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a028], esi        // 0x0064f80e    89352800c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a02c], edi        // 0x0064f814    893d2c00c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a034], ecx        // 0x0064f81a    890d3400c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a038], esi        // 0x0064f820    89353800c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a03c], edi        // 0x0064f826    893d3c00c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a030], eax        // 0x0064f82c    a33000c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a040], ebx        // 0x0064f831    891d4000c000
                         mov                ecx, 0x00000007                               // 0x0064f837    b907000000
                         mov                esi, 0x00c00838                               // 0x0064f83c    be3808c000
                         mov                edi, 0x00c00050                               // 0x0064f841    bf5000c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064f846    f3a5
                         movsb                                                            // 0x0064f848    a4
                         xor.s              eax, eax                                      // 0x0064f849    33c0
                         mov                ecx, 0x00000008                               // 0x0064f84b    b908000000
                         mov                edi, 0x00c0006d                               // 0x0064f850    bf6d00c000
                         rep stosd                                                        // 0x0064f855    f3ab
                         stosw                                                            // 0x0064f857    66ab
                         stosb                                                            // 0x0064f859    aa
                         xor.s              edi, edi                                      // 0x0064f85a    33ff
                         xor.s              ecx, ecx                                      // 0x0064f85c    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x23a09c], edi        // 0x0064f85e    893d9c00c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0ac], edi        // 0x0064f864    893dac00c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0bc], edi        // 0x0064f86a    893dbc00c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0cc], edi        // 0x0064f870    893dcc00c000
                         xor.s              esi, esi                                      // 0x0064f876    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x23a094], ecx        // 0x0064f878    890d9400c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0a4], ecx        // 0x0064f87e    890da400c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0b4], ecx        // 0x0064f884    890db400c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0c4], ecx        // 0x0064f88a    890dc400c000
                         mov                eax, 0x00654d10                               // 0x0064f890    b8104d6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a090], eax        // 0x0064f895    a39000c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a098], esi        // 0x0064f89a    89359800c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0a8], esi        // 0x0064f8a0    8935a800c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0b8], esi        // 0x0064f8a6    8935b800c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0c8], esi        // 0x0064f8ac    8935c800c000
                         mov                eax, 0x00654e30                               // 0x0064f8b2    b8304e6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a0a0], eax        // 0x0064f8b7    a3a000c000
                         mov                eax, 0x00654ea0                               // 0x0064f8bc    b8a04e6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a0b0], eax        // 0x0064f8c1    a3b000c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a0d0], ebx        // 0x0064f8c6    891dd000c000
                         mov                eax, 0x00655990                               // 0x0064f8cc    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a0c0], eax        // 0x0064f8d1    a3c000c000
                         xor.s              eax, eax                                      // 0x0064f8d6    33c0
                         mov                ecx, 0x00000007                               // 0x0064f8d8    b907000000
                         mov                esi, 0x00c0081c                               // 0x0064f8dd    be1c08c000
                         mov                edi, 0x00c000e0                               // 0x0064f8e2    bfe000c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064f8e7    f3a5
                         mov                ecx, 0x00000009                               // 0x0064f8e9    b909000000
                         mov                edi, 0x00c000fc                               // 0x0064f8ee    bffc00c000
                         rep stosd                                                        // 0x0064f8f3    f3ab
                         xor.s              edi, edi                                      // 0x0064f8f5    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a12c], edi        // 0x0064f8f7    893d2c01c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a13c], edi        // 0x0064f8fd    893d3c01c000
                         or                 edi, 0xffffffff                               // 0x0064f903    83cfff
                         xor.s              ecx, ecx                                      // 0x0064f906    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x23a14c], edi        // 0x0064f908    893d4c01c000
                         mov                eax, 0x00654eb0                               // 0x0064f90e    b8b04e6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a120], eax        // 0x0064f913    a32001c000
                         xor.s              esi, esi                                      // 0x0064f918    33f6
                         xor.s              edi, edi                                      // 0x0064f91a    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a124], ecx        // 0x0064f91c    890d2401c000
                         mov                eax, 0x00654f80                               // 0x0064f922    b8804f6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a130], eax        // 0x0064f927    a33001c000
                         xor.s              eax, eax                                      // 0x0064f92c    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a140], eax        // 0x0064f92e    a34001c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a134], ecx        // 0x0064f933    890d3401c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a144], ecx        // 0x0064f939    890d4401c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a154], ecx        // 0x0064f93f    890d5401c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a15c], edi        // 0x0064f945    893d5c01c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a128], esi        // 0x0064f94b    89352801c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a138], esi        // 0x0064f951    89353801c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a148], esi        // 0x0064f957    89354801c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a158], esi        // 0x0064f95d    89355801c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a160], ebx        // 0x0064f963    891d6001c000
                         mov                eax, 0x00655990                               // 0x0064f969    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a150], eax        // 0x0064f96e    a35001c000
                         mov                ecx, 0x00000006                               // 0x0064f973    b906000000
                         mov                esi, 0x00c00800                               // 0x0064f978    be0008c000
                         mov                edi, 0x00c00170                               // 0x0064f97d    bf7001c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064f982    f3a5
                         movsb                                                            // 0x0064f984    a4
                         xor.s              eax, eax                                      // 0x0064f985    33c0
                         mov                ecx, 0x00000009                               // 0x0064f987    b909000000
                         mov                edi, 0x00c00189                               // 0x0064f98c    bf8901c000
                         rep stosd                                                        // 0x0064f991    f3ab
                         stosw                                                            // 0x0064f993    66ab
                         stosb                                                            // 0x0064f995    aa
                         xor.s              ecx, ecx                                      // 0x0064f996    33c9
                         xor.s              esi, esi                                      // 0x0064f998    33f6
                         mov                eax, 0x00654f90                               // 0x0064f99a    b8904f6500
                         xor.s              edi, edi                                      // 0x0064f99f    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a1b0], eax        // 0x0064f9a1    a3b001c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1bc], edi        // 0x0064f9a6    893dbc01c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1cc], edi        // 0x0064f9ac    893dcc01c000
                         or                 edi, 0xffffffff                               // 0x0064f9b2    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a1dc], edi        // 0x0064f9b5    893ddc01c000
                         xor.s              edi, edi                                      // 0x0064f9bb    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a1ec], edi        // 0x0064f9bd    893dec01c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1b4], ecx        // 0x0064f9c3    890db401c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1c4], ecx        // 0x0064f9c9    890dc401c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1d4], ecx        // 0x0064f9cf    890dd401c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1e4], ecx        // 0x0064f9d5    890de401c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1b8], esi        // 0x0064f9db    8935b801c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1c8], esi        // 0x0064f9e1    8935c801c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1d8], esi        // 0x0064f9e7    8935d801c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1e8], esi        // 0x0064f9ed    8935e801c000
                         mov                eax, 0x00654fa0                               // 0x0064f9f3    b8a04f6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a1c0], eax        // 0x0064f9f8    a3c001c000
                         xor.s              eax, eax                                      // 0x0064f9fd    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a1d0], eax        // 0x0064f9ff    a3d001c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a1f0], ebx        // 0x0064fa04    891df001c000
                         mov                eax, 0x00655990                               // 0x0064fa0a    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a1e0], eax        // 0x0064fa0f    a3e001c000
                         mov                ecx, 0x00000005                               // 0x0064fa14    b905000000
                         mov                esi, 0x00c007e8                               // 0x0064fa19    bee807c000
                         mov                edi, 0x00c00200                               // 0x0064fa1e    bf0002c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064fa23    f3a5
                         movsw                                                            // 0x0064fa25    66a5
                         xor.s              eax, eax                                      // 0x0064fa27    33c0
                         mov                ecx, 0x0000000a                               // 0x0064fa29    b90a000000
                         mov                edi, 0x00c00216                               // 0x0064fa2e    bf1602c000
                         rep stosd                                                        // 0x0064fa33    f3ab
                         stosw                                                            // 0x0064fa35    66ab
                         or                 edi, 0xffffffff                               // 0x0064fa37    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a24c], edi        // 0x0064fa3a    893d4c02c000
                         xor.s              edi, edi                                      // 0x0064fa40    33ff
                         xor.s              eax, eax                                      // 0x0064fa42    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a240], eax        // 0x0064fa44    a34002c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a25c], edi        // 0x0064fa49    893d5c02c000
                         or                 edi, 0xffffffff                               // 0x0064fa4f    83cfff
                         xor.s              ecx, ecx                                      // 0x0064fa52    33c9
                         xor.s              esi, esi                                      // 0x0064fa54    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x23a26c], edi        // 0x0064fa56    893d6c02c000
                         xor.s              edi, edi                                      // 0x0064fa5c    33ff
                         mov                eax, 0x006550f0                               // 0x0064fa5e    b8f0506500
                         {disp32} mov       dword ptr [data_bytes + 0x23a250], eax        // 0x0064fa63    a35002c000
                         xor.s              eax, eax                                      // 0x0064fa68    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a260], eax        // 0x0064fa6a    a36002c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a27c], edi        // 0x0064fa6f    893d7c02c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a244], ecx        // 0x0064fa75    890d4402c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a254], ecx        // 0x0064fa7b    890d5402c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a264], ecx        // 0x0064fa81    890d6402c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a274], ecx        // 0x0064fa87    890d7402c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a248], esi        // 0x0064fa8d    89354802c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a258], esi        // 0x0064fa93    89355802c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a268], esi        // 0x0064fa99    89356802c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a278], esi        // 0x0064fa9f    89357802c000
                         mov                eax, 0x00655990                               // 0x0064faa5    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a270], eax        // 0x0064faaa    a37002c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a280], ebx        // 0x0064faaf    891d8002c000
                         mov                ecx, 0x00000006                               // 0x0064fab5    b906000000
                         mov                esi, 0x00c007d0                               // 0x0064faba    bed007c000
                         mov                edi, 0x00c00290                               // 0x0064fabf    bf9002c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064fac4    f3a5
                         xor.s              eax, eax                                      // 0x0064fac6    33c0
                         mov                ecx, 0x0000000a                               // 0x0064fac8    b90a000000
                         mov                edi, 0x00c002a8                               // 0x0064facd    bfa802c000
                         rep stosd                                                        // 0x0064fad2    f3ab
                         or                 edi, 0xffffffff                               // 0x0064fad4    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a2d0], eax        // 0x0064fad7    a3d002c000
                         xor.s              ecx, ecx                                      // 0x0064fadc    33c9
                         xor.s              esi, esi                                      // 0x0064fade    33f6
                         mov                eax, 0x00655150                               // 0x0064fae0    b850516500
                         {disp32} mov       dword ptr [data_bytes + 0x23a2dc], edi        // 0x0064fae5    893ddc02c000
                         xor.s              edi, edi                                      // 0x0064faeb    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a2e0], eax        // 0x0064faed    a3e002c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2d4], ecx        // 0x0064faf2    890dd402c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2d8], esi        // 0x0064faf8    8935d802c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2e4], ecx        // 0x0064fafe    890de402c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2e8], esi        // 0x0064fb04    8935e802c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2ec], edi        // 0x0064fb0a    893dec02c000
                         xor.s              eax, eax                                      // 0x0064fb10    33c0
                         or                 edi, 0xffffffff                               // 0x0064fb12    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a2fc], edi        // 0x0064fb15    893dfc02c000
                         xor.s              edi, edi                                      // 0x0064fb1b    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a30c], edi        // 0x0064fb1d    893d0c03c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2f0], eax        // 0x0064fb23    a3f002c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2f4], ecx        // 0x0064fb28    890df402c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a304], ecx        // 0x0064fb2e    890d0403c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a2f8], esi        // 0x0064fb34    8935f802c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a308], esi        // 0x0064fb3a    89350803c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a310], ebx        // 0x0064fb40    891d1003c000
                         mov                eax, 0x00655990                               // 0x0064fb46    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a300], eax        // 0x0064fb4b    a30003c000
                         xor.s              eax, eax                                      // 0x0064fb50    33c0
                         mov                ecx, 0x00000006                               // 0x0064fb52    b906000000
                         mov                esi, 0x00c007b8                               // 0x0064fb57    beb807c000
                         mov                edi, 0x00c00320                               // 0x0064fb5c    bf2003c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064fb61    f3a5
                         mov                ecx, 0x0000000a                               // 0x0064fb63    b90a000000
                         mov                edi, 0x00c00338                               // 0x0064fb68    bf3803c000
                         rep stosd                                                        // 0x0064fb6d    f3ab
                         or                 edi, 0xffffffff                               // 0x0064fb6f    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a36c], edi        // 0x0064fb72    893d6c03c000
                         xor.s              edi, edi                                      // 0x0064fb78    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a360], eax        // 0x0064fb7a    a36003c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a37c], edi        // 0x0064fb7f    893d7c03c000
                         or                 edi, 0xffffffff                               // 0x0064fb85    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a38c], edi        // 0x0064fb88    893d8c03c000
                         xor.s              edi, edi                                      // 0x0064fb8e    33ff
                         xor.s              ecx, ecx                                      // 0x0064fb90    33c9
                         xor.s              esi, esi                                      // 0x0064fb92    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x23a39c], edi        // 0x0064fb94    893d9c03c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a364], ecx        // 0x0064fb9a    890d6403c000
                         mov                eax, 0x00655160                               // 0x0064fba0    b860516500
                         {disp32} mov       dword ptr [data_bytes + 0x23a370], eax        // 0x0064fba5    a37003c000
                         xor.s              eax, eax                                      // 0x0064fbaa    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a380], eax        // 0x0064fbac    a38003c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a374], ecx        // 0x0064fbb1    890d7403c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a384], ecx        // 0x0064fbb7    890d8403c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a394], ecx        // 0x0064fbbd    890d9403c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a368], esi        // 0x0064fbc3    89356803c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a378], esi        // 0x0064fbc9    89357803c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a388], esi        // 0x0064fbcf    89358803c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a398], esi        // 0x0064fbd5    89359803c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a3a0], ebx        // 0x0064fbdb    891da003c000
                         mov                eax, 0x00655990                               // 0x0064fbe1    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a390], eax        // 0x0064fbe6    a39003c000
                         mov                ecx, 0x00000006                               // 0x0064fbeb    b906000000
                         mov                esi, 0x00c0079c                               // 0x0064fbf0    be9c07c000
                         mov                edi, 0x00c003b0                               // 0x0064fbf5    bfb003c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064fbfa    f3a5
                         movsw                                                            // 0x0064fbfc    66a5
                         movsb                                                            // 0x0064fbfe    a4
                         xor.s              eax, eax                                      // 0x0064fbff    33c0
                         mov                ecx, 0x00000009                               // 0x0064fc01    b909000000
                         mov                edi, 0x00c003cb                               // 0x0064fc06    bfcb03c000
                         rep stosd                                                        // 0x0064fc0b    f3ab
                         stosb                                                            // 0x0064fc0d    aa
                         xor.s              eax, eax                                      // 0x0064fc0e    33c0
                         or                 edi, 0xffffffff                               // 0x0064fc10    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a3f0], eax        // 0x0064fc13    a3f003c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a3fc], edi        // 0x0064fc18    893dfc03c000
                         mov                eax, 0x00655330                               // 0x0064fc1e    b830536500
                         xor.s              edi, edi                                      // 0x0064fc23    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a400], eax        // 0x0064fc25    a30004c000
                         xor.s              eax, eax                                      // 0x0064fc2a    33c0
                         xor.s              ecx, ecx                                      // 0x0064fc2c    33c9
                         xor.s              esi, esi                                      // 0x0064fc2e    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x23a40c], edi        // 0x0064fc30    893d0c04c000
                         or                 edi, 0xffffffff                               // 0x0064fc36    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a410], eax        // 0x0064fc39    a31004c000
                         mov                eax, 0x00655990                               // 0x0064fc3e    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a41c], edi        // 0x0064fc43    893d1c04c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a3f4], ecx        // 0x0064fc49    890df403c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a3f8], esi        // 0x0064fc4f    8935f803c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a404], ecx        // 0x0064fc55    890d0404c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a408], esi        // 0x0064fc5b    89350804c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a414], ecx        // 0x0064fc61    890d1404c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a418], esi        // 0x0064fc67    89351804c000
                         xor.s              edi, edi                                      // 0x0064fc6d    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a420], eax        // 0x0064fc6f    a32004c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a424], ecx        // 0x0064fc74    890d2404c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a42c], edi        // 0x0064fc7a    893d2c04c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a428], esi        // 0x0064fc80    89352804c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a430], ebx        // 0x0064fc86    891d3004c000
                         mov                ecx, 0x00000007                               // 0x0064fc8c    b907000000
                         mov                esi, 0x00c0077c                               // 0x0064fc91    be7c07c000
                         mov                edi, 0x00c00440                               // 0x0064fc96    bf4004c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064fc9b    f3a5
                         movsb                                                            // 0x0064fc9d    a4
                         xor.s              eax, eax                                      // 0x0064fc9e    33c0
                         mov                ecx, 0x00000008                               // 0x0064fca0    b908000000
                         mov                edi, 0x00c0045d                               // 0x0064fca5    bf5d04c000
                         rep stosd                                                        // 0x0064fcaa    f3ab
                         stosw                                                            // 0x0064fcac    66ab
                         stosb                                                            // 0x0064fcae    aa
                         xor.s              edi, edi                                      // 0x0064fcaf    33ff
                         xor.s              ecx, ecx                                      // 0x0064fcb1    33c9
                         xor.s              esi, esi                                      // 0x0064fcb3    33f6
                         mov                eax, 0x00655470                               // 0x0064fcb5    b870546500
                         {disp32} mov       dword ptr [data_bytes + 0x23a480], eax        // 0x0064fcba    a38004c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a484], ecx        // 0x0064fcbf    890d8404c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a48c], edi        // 0x0064fcc5    893d8c04c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a494], ecx        // 0x0064fccb    890d9404c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a49c], edi        // 0x0064fcd1    893d9c04c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a4a4], ecx        // 0x0064fcd7    890da404c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a4ac], edi        // 0x0064fcdd    893dac04c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a4b4], ecx        // 0x0064fce3    890db404c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a4bc], edi        // 0x0064fce9    893dbc04c000
                         mov                eax, 0x006554d0                               // 0x0064fcef    b8d0546500
                         {disp32} mov       dword ptr [data_bytes + 0x23a490], eax        // 0x0064fcf4    a39004c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a488], esi        // 0x0064fcf9    89358804c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a498], esi        // 0x0064fcff    89359804c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a4a8], esi        // 0x0064fd05    8935a804c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a4b8], esi        // 0x0064fd0b    8935b804c000
                         mov                eax, 0x00655600                               // 0x0064fd11    b800566500
                         {disp32} mov       dword ptr [data_bytes + 0x23a4a0], eax        // 0x0064fd16    a3a004c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a4c0], edx        // 0x0064fd1b    8915c004c000
                         mov                eax, 0x00655990                               // 0x0064fd21    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a4b0], eax        // 0x0064fd26    a3b004c000
                         mov                ecx, 0x00000008                               // 0x0064fd2b    b908000000
                         mov                esi, 0x00c00758                               // 0x0064fd30    be5807c000
                         mov                edi, 0x00c004d0                               // 0x0064fd35    bfd004c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064fd3a    f3a5
                         movsw                                                            // 0x0064fd3c    66a5
                         movsb                                                            // 0x0064fd3e    a4
                         xor.s              eax, eax                                      // 0x0064fd3f    33c0
                         mov                ecx, 0x00000007                               // 0x0064fd41    b907000000
                         mov                edi, 0x00c004f3                               // 0x0064fd46    bff304c000
                         rep stosd                                                        // 0x0064fd4b    f3ab
                         stosb                                                            // 0x0064fd4d    aa
                         mov                eax, 0x00655470                               // 0x0064fd4e    b870546500
                         {disp32} mov       dword ptr [data_bytes + 0x23a510], eax        // 0x0064fd53    a31005c000
                         xor.s              ecx, ecx                                      // 0x0064fd58    33c9
                         mov                eax, 0x006554d0                               // 0x0064fd5a    b8d0546500
                         xor.s              edi, edi                                      // 0x0064fd5f    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a520], eax        // 0x0064fd61    a32005c000
                         xor.s              eax, eax                                      // 0x0064fd66    33c0
                         xor.s              esi, esi                                      // 0x0064fd68    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x23a514], ecx        // 0x0064fd6a    890d1405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a51c], edi        // 0x0064fd70    893d1c05c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a524], ecx        // 0x0064fd76    890d2405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a52c], edi        // 0x0064fd7c    893d2c05c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a530], eax        // 0x0064fd82    a33005c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a534], ecx        // 0x0064fd87    890d3405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a544], ecx        // 0x0064fd8d    890d4405c000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a748]        // 0x0064fd93    8b0d4807c000
                         or                 edi, 0xffffffff                               // 0x0064fd99    83cfff
                         mov                eax, 0x00655990                               // 0x0064fd9c    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a53c], edi        // 0x0064fda1    893d3c05c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a540], eax        // 0x0064fda7    a34005c000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x23a74c]        // 0x0064fdac    a14c07c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a560], ecx        // 0x0064fdb1    890d6005c000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x23a750]        // 0x0064fdb7    8b0d5007c000
                         xor.s              edi, edi                                      // 0x0064fdbd    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a518], esi        // 0x0064fdbf    89351805c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a528], esi        // 0x0064fdc5    89352805c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a538], esi        // 0x0064fdcb    89353805c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a548], esi        // 0x0064fdd1    89354805c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a54c], edi        // 0x0064fdd7    893d4c05c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a550], edx        // 0x0064fddd    89155005c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a564], eax        // 0x0064fde3    a36405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a568], ecx        // 0x0064fde8    890d6805c000
                         {disp32} mov       al, byte ptr [data_bytes + 0x23a754]          // 0x0064fdee    a05407c000
                         {disp32} mov       byte ptr [data_bytes + 0x23a56c], al          // 0x0064fdf3    a26c05c000
                         xor.s              eax, eax                                      // 0x0064fdf8    33c0
                         mov                ecx, 0x0000000c                               // 0x0064fdfa    b90c000000
                         mov                edi, 0x00c0056d                               // 0x0064fdff    bf6d05c000
                         rep stosd                                                        // 0x0064fe04    f3ab
                         stosw                                                            // 0x0064fe06    66ab
                         stosb                                                            // 0x0064fe08    aa
                         or                 edi, 0xffffffff                               // 0x0064fe09    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a5ac], edi        // 0x0064fe0c    893dac05c000
                         xor.s              edi, edi                                      // 0x0064fe12    33ff
                         xor.s              eax, eax                                      // 0x0064fe14    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a5a0], eax        // 0x0064fe16    a3a005c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5bc], edi        // 0x0064fe1b    893dbc05c000
                         or                 edi, 0xffffffff                               // 0x0064fe21    83cfff
                         xor.s              ecx, ecx                                      // 0x0064fe24    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x23a5cc], edi        // 0x0064fe26    893dcc05c000
                         xor.s              edi, edi                                      // 0x0064fe2c    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a5a4], ecx        // 0x0064fe2e    890da405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5b4], ecx        // 0x0064fe34    890db405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5c4], ecx        // 0x0064fe3a    890dc405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5d4], ecx        // 0x0064fe40    890dd405c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5dc], edi        // 0x0064fe46    893ddc05c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5a8], esi        // 0x0064fe4c    8935a805c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5b8], esi        // 0x0064fe52    8935b805c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5c8], esi        // 0x0064fe58    8935c805c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5d8], esi        // 0x0064fe5e    8935d805c000
                         mov                eax, 0x00652be0                               // 0x0064fe64    b8e02b6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a5b0], eax        // 0x0064fe69    a3b005c000
                         xor.s              eax, eax                                      // 0x0064fe6e    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a5c0], eax        // 0x0064fe70    a3c005c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a5e0], edx        // 0x0064fe75    8915e005c000
                         mov                eax, 0x00655990                               // 0x0064fe7b    b890596500
                         {disp32} mov       dword ptr [data_bytes + 0x23a5d0], eax        // 0x0064fe80    a3d005c000
                         mov                ecx, 0x00000008                               // 0x0064fe85    b908000000
                         mov                esi, 0x00c00724                               // 0x0064fe8a    be2407c000
                         mov                edi, 0x00c005f0                               // 0x0064fe8f    bff005c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064fe94    f3a5
                         movsw                                                            // 0x0064fe96    66a5
                         xor.s              eax, eax                                      // 0x0064fe98    33c0
                         mov                ecx, 0x00000007                               // 0x0064fe9a    b907000000
                         mov                edi, 0x00c00612                               // 0x0064fe9f    bf1206c000
                         rep stosd                                                        // 0x0064fea4    f3ab
                         stosw                                                            // 0x0064fea6    66ab
                         xor.s              ecx, ecx                                      // 0x0064fea8    33c9
                         mov                eax, 0x00652750                               // 0x0064feaa    b850276500
                         {disp32} mov       dword ptr [data_bytes + 0x23a630], eax        // 0x0064feaf    a33006c000
                         xor.s              edi, edi                                      // 0x0064feb4    33ff
                         xor.s              esi, esi                                      // 0x0064feb6    33f6
                         mov                eax, 0x00652a90                               // 0x0064feb8    b8902a6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a640], eax        // 0x0064febd    a34006c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a634], ecx        // 0x0064fec2    890d3406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a63c], edi        // 0x0064fec8    893d3c06c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a644], ecx        // 0x0064fece    890d4406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a64c], edi        // 0x0064fed4    893d4c06c000
                         mov                eax, 0x00652bd0                               // 0x0064feda    b8d02b6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a650], eax        // 0x0064fedf    a35006c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a654], ecx        // 0x0064fee4    890d5406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a65c], edi        // 0x0064feea    893d5c06c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a664], ecx        // 0x0064fef0    890d6406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a66c], edi        // 0x0064fef6    893d6c06c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a638], esi        // 0x0064fefc    89353806c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a648], esi        // 0x0064ff02    89354806c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a658], esi        // 0x0064ff08    89355806c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a668], esi        // 0x0064ff0e    89356806c000
                         mov                eax, 0x006556e0                               // 0x0064ff14    b8e0566500
                         {disp32} mov       dword ptr [data_bytes + 0x23a660], eax        // 0x0064ff19    a36006c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a670], edx        // 0x0064ff1e    89157006c000
                         mov                ecx, 0x00000005                               // 0x0064ff24    b905000000
                         mov                esi, 0x00c00710                               // 0x0064ff29    be1007c000
                         mov                edi, 0x00c00680                               // 0x0064ff2e    bf8006c000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0064ff33    f3a5
                         xor.s              eax, eax                                      // 0x0064ff35    33c0
                         mov                ecx, 0x0000000b                               // 0x0064ff37    b90b000000
                         mov                edi, 0x00c00694                               // 0x0064ff3c    bf9406c000
                         rep stosd                                                        // 0x0064ff41    f3ab
                         xor.s              ecx, ecx                                      // 0x0064ff43    33c9
                         xor.s              esi, esi                                      // 0x0064ff45    33f6
                         or                 edi, 0xffffffff                               // 0x0064ff47    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x23a6c0], eax        // 0x0064ff4a    a3c006c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6c4], ecx        // 0x0064ff4f    890dc406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6cc], edi        // 0x0064ff55    893dcc06c000
                         xor.s              edi, edi                                      // 0x0064ff5b    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a6dc], edi        // 0x0064ff5d    893ddc06c000
                         or                 edi, 0xffffffff                               // 0x0064ff63    83cfff
                         mov                eax, 0x00652c40                               // 0x0064ff66    b8402c6500
                         {disp32} mov       dword ptr [data_bytes + 0x23a6ec], edi        // 0x0064ff6b    893dec06c000
                         xor.s              edi, edi                                      // 0x0064ff71    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x23a6d0], eax        // 0x0064ff73    a3d006c000
                         xor.s              eax, eax                                      // 0x0064ff78    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x23a6fc], edi        // 0x0064ff7a    893dfc06c000
                         pop                edi                                           // 0x0064ff80    5f
                         {disp32} mov       dword ptr [data_bytes + 0x23a6c8], esi        // 0x0064ff81    8935c806c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6d8], esi        // 0x0064ff87    8935d806c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6e0], eax        // 0x0064ff8d    a3e006c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6e8], esi        // 0x0064ff92    8935e806c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6f8], esi        // 0x0064ff98    8935f806c000
                         mov                eax, 0x00655990                               // 0x0064ff9e    b890596500
                         pop                esi                                           // 0x0064ffa3    5e
                         {disp32} mov       dword ptr [data_bytes + 0x23a6d4], ecx        // 0x0064ffa4    890dd406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6e4], ecx        // 0x0064ffaa    890de406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6f0], eax        // 0x0064ffb0    a3f006c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a6f4], ecx        // 0x0064ffb5    890df406c000
                         {disp32} mov       dword ptr [data_bytes + 0x23a700], edx        // 0x0064ffbb    89150007c000
                         pop                ebx                                           // 0x0064ffc1    5b
                         ret                                                              // 0x0064ffc2    c3
                         nop                                                              // 0x0064ffc3    90
                         nop                                                              // 0x0064ffc4    90
                         nop                                                              // 0x0064ffc5    90
                         nop                                                              // 0x0064ffc6    90
                         nop                                                              // 0x0064ffc7    90
                         nop                                                              // 0x0064ffc8    90
                         nop                                                              // 0x0064ffc9    90
                         nop                                                              // 0x0064ffca    90
                         nop                                                              // 0x0064ffcb    90
                         nop                                                              // 0x0064ffcc    90
                         nop                                                              // 0x0064ffcd    90
                         nop                                                              // 0x0064ffce    90
                         nop                                                              // 0x0064ffcf    90
_jmp_addr_0x0064ffd0:    sub                esp, 0x0c                                     // 0x0064ffd0    83ec0c
                         push               ebx                                           // 0x0064ffd3    53
                         push               ebp                                           // 0x0064ffd4    55
                         push               esi                                           // 0x0064ffd5    56
                         push               edi                                           // 0x0064ffd6    57
                         push               0x00000080                                    // 0x0064ffd7    6880000000
                         mov.s              ebx, ecx                                      // 0x0064ffdc    8bd9
                         push               0x00000080                                    // 0x0064ffde    6880000000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0064ffe3    8d4c2418
                         call               _jmp_addr_0x00602fc0                          // 0x0064ffe7    e8d42ffbff
                         mov.s              ecx, ebx                                      // 0x0064ffec    8bcb
                         mov.s              edi, eax                                      // 0x0064ffee    8bf8
                         call               ??0GameThing@@QAE@XZ                          // 0x0064fff0    e81bfaf1ff
                         {disp8} lea        esi, dword ptr [ebx + 0x14]                   // 0x0064fff5    8d7314
                         mov.s              ecx, esi                                      // 0x0064fff8    8bce
                         call               ??0MapCoords@@QAE@XZ                          // 0x0064fffa    e8611bdfff
                         xor.s              ebp, ebp                                      // 0x0064ffff    33ed
                         {disp8} mov        dword ptr [ebx + 0x20], ebp                   // 0x00650001    896b20
                         mov.s              ecx, ebx                                      // 0x00650004    8bcb
                         mov                dword ptr [ebx], 0x008c31a0                   // 0x00650006    c703a0318c00
                         call               ?SetToZero@GameThingWithPos@@QAEXXZ           // 0x0065000c    e8bf05f2ff
                         mov                eax, dword ptr [edi]                          // 0x00650011    8b07
                         mov                dword ptr [esi], eax                          // 0x00650013    8906
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x00650015    8b4f04
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00650018    8b442420
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0065001c    894e04
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x0065001f    8b5708
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00650022    8b4c2424
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00650026    895608
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00650029    8b542428
                         {disp8} mov        dword ptr [ebx + 0x2c], ebp                   // 0x0065002d    896b2c
                         {disp8} mov        dword ptr [ebx + 0x28], ebp                   // 0x00650030    896b28
                         {disp8} mov        dword ptr [ebx + 0x4c], ecx                   // 0x00650033    894b4c
                         or                 ecx, 0xffffffff                               // 0x00650036    83c9ff
                         {disp8} mov        dword ptr [ebx + 0x6c], eax                   // 0x00650039    89436c
                         {disp8} mov        dword ptr [ebx + 0x68], edx                   // 0x0065003c    895368
                         mov                dword ptr [ebx], 0x008fa29c                   // 0x0065003f    c7039ca28f00
                         {disp8} mov        dword ptr [ebx + 0x48], 0x00000001            // 0x00650045    c7434801000000
                         {disp32} mov       dword ptr [ebx + 0x00000088], ebp             // 0x0065004c    89ab88000000
                         xor.s              eax, eax                                      // 0x00650052    33c0
                         mov                edi, 0x009d7d0c                               // 0x00650054    bf0c7d9d00
                         repne scasb                                                      // 0x00650059    f2ae
                         not                ecx                                           // 0x0065005b    f7d1
                         sub.s              edi, ecx                                      // 0x0065005d    2bf9
                         mov.s              eax, ecx                                      // 0x0065005f    8bc1
                         shr                ecx, 2                                        // 0x00650061    c1e902
                         mov.s              esi, edi                                      // 0x00650064    8bf7
                         {disp32} lea       edx, dword ptr [ebx + 0x0000008c]             // 0x00650066    8d938c000000
                         mov.s              edi, edx                                      // 0x0065006c    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0065006e    f3a5
                         mov.s              ecx, eax                                      // 0x00650070    8bc8
                         and                ecx, 0x03                                     // 0x00650072    83e103
                         rep movsb                                                        // 0x00650075    f3a4
                         or                 ecx, 0xffffffff                               // 0x00650077    83c9ff
                         xor.s              eax, eax                                      // 0x0065007a    33c0
                         mov                edi, 0x009d7d0c                               // 0x0065007c    bf0c7d9d00
                         repne scasb                                                      // 0x00650081    f2ae
                         not                ecx                                           // 0x00650083    f7d1
                         sub.s              edi, ecx                                      // 0x00650085    2bf9
                         mov.s              eax, ecx                                      // 0x00650087    8bc1
                         shr                ecx, 2                                        // 0x00650089    c1e902
                         {disp32} lea       edx, dword ptr [ebx + 0x0000018c]             // 0x0065008c    8d938c010000
                         mov.s              esi, edi                                      // 0x00650092    8bf7
                         mov.s              edi, edx                                      // 0x00650094    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00650096    f3a5
                         mov.s              ecx, eax                                      // 0x00650098    8bc8
                         and                ecx, 0x03                                     // 0x0065009a    83e103
                         rep movsb                                                        // 0x0065009d    f3a4
                         mov.s              ecx, ebx                                      // 0x0065009f    8bcb
                         call               _jmp_addr_0x006500c0                          // 0x006500a1    e81a000000
                         mov.s              ecx, ebx                                      // 0x006500a6    8bcb
                         call               _jmp_addr_0x00650250                          // 0x006500a8    e8a3010000
                         pop                edi                                           // 0x006500ad    5f
                         pop                esi                                           // 0x006500ae    5e
                         pop                ebp                                           // 0x006500af    5d
                         mov.s              eax, ebx                                      // 0x006500b0    8bc3
                         pop                ebx                                           // 0x006500b2    5b
                         add                esp, 0x0c                                     // 0x006500b3    83c40c
                         ret                0x000c                                        // 0x006500b6    c20c00
                         nop                                                              // 0x006500b9    90
                         nop                                                              // 0x006500ba    90
                         nop                                                              // 0x006500bb    90
                         nop                                                              // 0x006500bc    90
                         nop                                                              // 0x006500bd    90
                         nop                                                              // 0x006500be    90
                         nop                                                              // 0x006500bf    90
_jmp_addr_0x006500c0:    xor.s              eax, eax                                      // 0x006500c0    33c0
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x006500c2    894130
                         {disp8} mov        dword ptr [ecx + 0x34], eax                   // 0x006500c5    894134
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x006500c8    894138
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x006500cb    89413c
                         {disp8} mov        dword ptr [ecx + 0x40], eax                   // 0x006500ce    894140
                         {disp8} mov        dword ptr [ecx + 0x44], eax                   // 0x006500d1    894144
                         {disp8} mov        dword ptr [ecx + 0x58], eax                   // 0x006500d4    894158
                         {disp8} mov        dword ptr [ecx + 0x54], eax                   // 0x006500d7    894154
                         {disp8} mov        dword ptr [ecx + 0x50], eax                   // 0x006500da    894150
                         {disp8} mov        dword ptr [ecx + 0x64], eax                   // 0x006500dd    894164
                         {disp8} mov        dword ptr [ecx + 0x60], eax                   // 0x006500e0    894160
                         {disp8} mov        dword ptr [ecx + 0x5c], eax                   // 0x006500e3    89415c
                         {disp8} mov        dword ptr [ecx + 0x70], eax                   // 0x006500e6    894170
                         {disp8} mov        dword ptr [ecx + 0x74], eax                   // 0x006500e9    894174
                         {disp8} mov        dword ptr [ecx + 0x78], eax                   // 0x006500ec    894178
                         {disp32} mov       dword ptr [ecx + 0x00000084], eax             // 0x006500ef    898184000000
                         {disp32} mov       dword ptr [ecx + 0x00000080], eax             // 0x006500f5    898180000000
                         {disp8} mov        dword ptr [ecx + 0x7c], eax                   // 0x006500fb    89417c
                         ret                                                              // 0x006500fe    c3
                         nop                                                              // 0x006500ff    90
?ToBeDeleted@PlayerActionState@@UAEXH@Z:
                         push               ebx                                           // 0x00650100    53
                         push               ebp                                           // 0x00650101    55
                         push               esi                                           // 0x00650102    56
                         push               edi                                           // 0x00650103    57
                         mov.s              edi, ecx                                      // 0x00650104    8bf9
_jmp_addr_0x00650106:    {disp8} mov        eax, dword ptr [edi + 0x28]                   // 0x00650106    8b4728
                         test               eax, eax                                      // 0x00650109    85c0
                         {disp8} je         _jmp_addr_0x00650153                          // 0x0065010b    7446
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x0065010d    8b5804
                         xor.s              ebp, ebp                                      // 0x00650110    33ed
                         test               eax, eax                                      // 0x00650112    85c0
                         {disp8} je         _jmp_addr_0x00650144                          // 0x00650114    742e
_jmp_addr_0x00650116:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00650116    395804
                         mov                esi, dword ptr [eax]                          // 0x00650119    8b30
                         {disp8} jne        _jmp_addr_0x0065013c                          // 0x0065011b    751f
                         cmp                eax, dword ptr [edi + 0x28]                   // 0x0065011d    3b4728
                         {disp8} jne        _jmp_addr_0x00650127                          // 0x00650120    7505
                         {disp8} mov        dword ptr [edi + 0x28], esi                   // 0x00650122    897728
                         {disp8} jmp        _jmp_addr_0x0065012a                          // 0x00650125    eb03
_jmp_addr_0x00650127:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00650127    897500
_jmp_addr_0x0065012a:    {disp8} mov        edx, dword ptr [edi + 0x2c]                   // 0x0065012a    8b572c
                         dec                edx                                           // 0x0065012d    4a
                         push               eax                                           // 0x0065012e    50
                         {disp8} mov        dword ptr [edi + 0x2c], edx                   // 0x0065012f    89572c
                         call               ??3@YAXPAX@Z                                  // 0x00650132    e861ed1500
                         add                esp, 0x04                                     // 0x00650137    83c404
                         {disp8} jmp        _jmp_addr_0x0065013e                          // 0x0065013a    eb02
_jmp_addr_0x0065013c:    mov.s              ebp, eax                                      // 0x0065013c    8be8
_jmp_addr_0x0065013e:    test               esi, esi                                      // 0x0065013e    85f6
                         mov.s              eax, esi                                      // 0x00650140    8bc6
                         {disp8} jne        _jmp_addr_0x00650116                          // 0x00650142    75d2
_jmp_addr_0x00650144:    test               ebx, ebx                                      // 0x00650144    85db
                         {disp8} je         _jmp_addr_0x00650106                          // 0x00650146    74be
                         mov                eax, dword ptr [ebx]                          // 0x00650148    8b03
                         push               0x1                                           // 0x0065014a    6a01
                         mov.s              ecx, ebx                                      // 0x0065014c    8bcb
                         call               dword ptr [eax + 4]                           // 0x0065014e    ff5004
                         {disp8} jmp        _jmp_addr_0x00650106                          // 0x00650151    ebb3
_jmp_addr_0x00650153:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00650153    8b4c2414
                         push               ecx                                           // 0x00650157    51
                         mov.s              ecx, edi                                      // 0x00650158    8bcf
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x0065015a    e8a1fcf1ff
                         pop                edi                                           // 0x0065015f    5f
                         pop                esi                                           // 0x00650160    5e
                         pop                ebp                                           // 0x00650161    5d
                         pop                ebx                                           // 0x00650162    5b
                         ret                0x0004                                        // 0x00650163    c20400
                         nop                                                              // 0x00650166    90
                         nop                                                              // 0x00650167    90
                         nop                                                              // 0x00650168    90
                         nop                                                              // 0x00650169    90
                         nop                                                              // 0x0065016a    90
                         nop                                                              // 0x0065016b    90
                         nop                                                              // 0x0065016c    90
                         nop                                                              // 0x0065016d    90
                         nop                                                              // 0x0065016e    90
                         nop                                                              // 0x0065016f    90
_jmp_addr_0x00650170:    push               ebx                                           // 0x00650170    53
                         push               ebp                                           // 0x00650171    55
                         push               esi                                           // 0x00650172    56
                         mov.s              ebx, ecx                                      // 0x00650173    8bd9
                         push               edi                                           // 0x00650175    57
                         {disp32} mov       dword ptr [ebx + 0x00000088], 0x00000000      // 0x00650176    c7838800000000000000
_jmp_addr_0x00650180:    {disp8} mov        eax, dword ptr [ebx + 0x28]                   // 0x00650180    8b4328
                         test               eax, eax                                      // 0x00650183    85c0
                         {disp8} je         _jmp_addr_0x006501cd                          // 0x00650185    7446
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00650187    8b7804
                         xor.s              ebp, ebp                                      // 0x0065018a    33ed
                         test               eax, eax                                      // 0x0065018c    85c0
                         {disp8} je         _jmp_addr_0x006501be                          // 0x0065018e    742e
_jmp_addr_0x00650190:    cmp                dword ptr [eax + 0x04], edi                   // 0x00650190    397804
                         mov                esi, dword ptr [eax]                          // 0x00650193    8b30
                         {disp8} jne        _jmp_addr_0x006501b6                          // 0x00650195    751f
                         cmp                eax, dword ptr [ebx + 0x28]                   // 0x00650197    3b4328
                         {disp8} jne        _jmp_addr_0x006501a1                          // 0x0065019a    7505
                         {disp8} mov        dword ptr [ebx + 0x28], esi                   // 0x0065019c    897328
                         {disp8} jmp        _jmp_addr_0x006501a4                          // 0x0065019f    eb03
_jmp_addr_0x006501a1:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x006501a1    897500
_jmp_addr_0x006501a4:    {disp8} mov        edx, dword ptr [ebx + 0x2c]                   // 0x006501a4    8b532c
                         dec                edx                                           // 0x006501a7    4a
                         push               eax                                           // 0x006501a8    50
                         {disp8} mov        dword ptr [ebx + 0x2c], edx                   // 0x006501a9    89532c
                         call               ??3@YAXPAX@Z                                  // 0x006501ac    e8e7ec1500
                         add                esp, 0x04                                     // 0x006501b1    83c404
                         {disp8} jmp        _jmp_addr_0x006501b8                          // 0x006501b4    eb02
_jmp_addr_0x006501b6:    mov.s              ebp, eax                                      // 0x006501b6    8be8
_jmp_addr_0x006501b8:    test               esi, esi                                      // 0x006501b8    85f6
                         mov.s              eax, esi                                      // 0x006501ba    8bc6
                         {disp8} jne        _jmp_addr_0x00650190                          // 0x006501bc    75d2
_jmp_addr_0x006501be:    test               edi, edi                                      // 0x006501be    85ff
                         {disp8} je         _jmp_addr_0x00650180                          // 0x006501c0    74be
                         mov                eax, dword ptr [edi]                          // 0x006501c2    8b07
                         push               0x1                                           // 0x006501c4    6a01
                         mov.s              ecx, edi                                      // 0x006501c6    8bcf
                         call               dword ptr [eax + 4]                           // 0x006501c8    ff5004
                         {disp8} jmp        _jmp_addr_0x00650180                          // 0x006501cb    ebb3
_jmp_addr_0x006501cd:    or                 ecx, 0xffffffff                               // 0x006501cd    83c9ff
                         {disp8} mov        dword ptr [ebx + 0x38], 0x00000000            // 0x006501d0    c7433800000000
                         {disp8} mov        dword ptr [ebx + 0x30], 0x00000001            // 0x006501d7    c7433001000000
                         {disp8} mov        dword ptr [ebx + 0x34], 0x00000000            // 0x006501de    c7433400000000
                         {disp8} mov        dword ptr [ebx + 0x44], 0x00000000            // 0x006501e5    c7434400000000
                         {disp8} mov        dword ptr [ebx + 0x3c], 0x00000000            // 0x006501ec    c7433c00000000
                         {disp8} mov        dword ptr [ebx + 0x74], 0x00000000            // 0x006501f3    c7437400000000
                         xor.s              eax, eax                                      // 0x006501fa    33c0
                         mov                edi, 0x009d7d0c                               // 0x006501fc    bf0c7d9d00
                         repne scasb                                                      // 0x00650201    f2ae
                         not                ecx                                           // 0x00650203    f7d1
                         sub.s              edi, ecx                                      // 0x00650205    2bf9
                         mov.s              eax, ecx                                      // 0x00650207    8bc1
                         shr                ecx, 2                                        // 0x00650209    c1e902
                         mov.s              esi, edi                                      // 0x0065020c    8bf7
                         {disp32} lea       edx, dword ptr [ebx + 0x0000008c]             // 0x0065020e    8d938c000000
                         mov.s              edi, edx                                      // 0x00650214    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00650216    f3a5
                         mov.s              ecx, eax                                      // 0x00650218    8bc8
                         and                ecx, 0x03                                     // 0x0065021a    83e103
                         rep movsb                                                        // 0x0065021d    f3a4
                         or                 ecx, 0xffffffff                               // 0x0065021f    83c9ff
                         xor.s              eax, eax                                      // 0x00650222    33c0
                         mov                edi, 0x009d7d0c                               // 0x00650224    bf0c7d9d00
                         repne scasb                                                      // 0x00650229    f2ae
                         not                ecx                                           // 0x0065022b    f7d1
                         sub.s              edi, ecx                                      // 0x0065022d    2bf9
                         mov.s              eax, ecx                                      // 0x0065022f    8bc1
                         mov.s              esi, edi                                      // 0x00650231    8bf7
                         {disp32} lea       edx, dword ptr [ebx + 0x0000018c]             // 0x00650233    8d938c010000
                         shr                ecx, 2                                        // 0x00650239    c1e902
                         mov.s              edi, edx                                      // 0x0065023c    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0065023e    f3a5
                         mov.s              ecx, eax                                      // 0x00650240    8bc8
                         and                ecx, 0x03                                     // 0x00650242    83e103
                         rep movsb                                                        // 0x00650245    f3a4
                         pop                edi                                           // 0x00650247    5f
                         pop                esi                                           // 0x00650248    5e
                         pop                ebp                                           // 0x00650249    5d
                         pop                ebx                                           // 0x0065024a    5b
                         ret                                                              // 0x0065024b    c3
                         nop                                                              // 0x0065024c    90
                         nop                                                              // 0x0065024d    90
                         nop                                                              // 0x0065024e    90
                         nop                                                              // 0x0065024f    90
_jmp_addr_0x00650250:    push               esi                                           // 0x00650250    56
                         mov.s              esi, ecx                                      // 0x00650251    8bf1
                         call               _jmp_addr_0x00650170                          // 0x00650253    e818ffffff
                         mov                eax, dword ptr [esi]                          // 0x00650258    8b06
                         mov.s              ecx, esi                                      // 0x0065025a    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x0065025c    ff501c
                         test               eax, eax                                      // 0x0065025f    85c0
                         {disp8} je         _jmp_addr_0x0065026a                          // 0x00650261    7407
                         mov.s              ecx, esi                                      // 0x00650263    8bce
                         call               _jmp_addr_0x00652300                          // 0x00650265    e896200000
_jmp_addr_0x0065026a:    pop                esi                                           // 0x0065026a    5e
                         ret                                                              // 0x0065026b    c3
                         nop                                                              // 0x0065026c    90
                         nop                                                              // 0x0065026d    90
                         nop                                                              // 0x0065026e    90
                         nop                                                              // 0x0065026f    90
_jmp_addr_0x00650270:    {disp32} jmp       _jmp_addr_0x00650170                          // 0x00650270    e9fbfeffff
                         nop                                                              // 0x00650275    90
                         nop                                                              // 0x00650276    90
                         nop                                                              // 0x00650277    90
                         nop                                                              // 0x00650278    90
                         nop                                                              // 0x00650279    90
                         nop                                                              // 0x0065027a    90
                         nop                                                              // 0x0065027b    90
                         nop                                                              // 0x0065027c    90
                         nop                                                              // 0x0065027d    90
                         nop                                                              // 0x0065027e    90
                         nop                                                              // 0x0065027f    90
_jmp_addr_0x00650280:    push               esi                                           // 0x00650280    56
                         push               edi                                           // 0x00650281    57
                         push               0x00000098                                    // 0x00650282    6898000000
                         push               0x00c009d4                                    // 0x00650287    68d409c000
                         push               0x20                                          // 0x0065028c    6a20
                         mov.s              edi, ecx                                      // 0x0065028e    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00650290    e85b64deff
                         add                esp, 0x0c                                     // 0x00650295    83c40c
                         test               eax, eax                                      // 0x00650298    85c0
                         {disp8} je         _jmp_addr_0x006502b1                          // 0x0065029a    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0065029c    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006502a0    8b54240c
                         push               ecx                                           // 0x006502a4    51
                         push               edx                                           // 0x006502a5    52
                         mov.s              ecx, eax                                      // 0x006502a6    8bc8
                         call               _jmp_addr_0x00650b60                          // 0x006502a8    e8b3080000
                         mov.s              esi, eax                                      // 0x006502ad    8bf0
                         {disp8} jmp        _jmp_addr_0x006502b3                          // 0x006502af    eb02
_jmp_addr_0x006502b1:    xor.s              esi, esi                                      // 0x006502b1    33f6
_jmp_addr_0x006502b3:    test               esi, esi                                      // 0x006502b3    85f6
                         {disp8} je         _jmp_addr_0x006502f1                          // 0x006502b5    743a
                         push               0x8                                           // 0x006502b7    6a08
                         call               ??2@YAPAXI@Z                                  // 0x006502b9    e830621700
                         add                esp, 0x04                                     // 0x006502be    83c404
                         test               eax, eax                                      // 0x006502c1    85c0
                         {disp8} je         _jmp_addr_0x006502f1                          // 0x006502c3    742c
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x006502c5    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x006502c8    c70000000000
                         {disp8} mov        ecx, dword ptr [edi + 0x28]                   // 0x006502ce    8b4f28
                         test               ecx, ecx                                      // 0x006502d1    85c9
                         {disp8} je         _jmp_addr_0x006502eb                          // 0x006502d3    7416
_jmp_addr_0x006502d5:    mov.s              edx, ecx                                      // 0x006502d5    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x006502d7    8b09
                         test               ecx, ecx                                      // 0x006502d9    85c9
                         {disp8} jne        _jmp_addr_0x006502d5                          // 0x006502db    75f8
                         test               edx, edx                                      // 0x006502dd    85d2
                         {disp8} je         _jmp_addr_0x006502eb                          // 0x006502df    740a
                         mov                dword ptr [edx], eax                          // 0x006502e1    8902
                         {disp8} inc        dword ptr [edi + 0x2c]                        // 0x006502e3    ff472c
                         pop                edi                                           // 0x006502e6    5f
                         pop                esi                                           // 0x006502e7    5e
                         ret                0x0008                                        // 0x006502e8    c20800
_jmp_addr_0x006502eb:    {disp8} mov        dword ptr [edi + 0x28], eax                   // 0x006502eb    894728
                         {disp8} inc        dword ptr [edi + 0x2c]                        // 0x006502ee    ff472c
_jmp_addr_0x006502f1:    pop                edi                                           // 0x006502f1    5f
                         pop                esi                                           // 0x006502f2    5e
                         ret                0x0008                                        // 0x006502f3    c20800
                         nop                                                              // 0x006502f6    90
                         nop                                                              // 0x006502f7    90
                         nop                                                              // 0x006502f8    90
                         nop                                                              // 0x006502f9    90
                         nop                                                              // 0x006502fa    90
                         nop                                                              // 0x006502fb    90
                         nop                                                              // 0x006502fc    90
                         nop                                                              // 0x006502fd    90
                         nop                                                              // 0x006502fe    90
                         nop                                                              // 0x006502ff    90
_jmp_addr_0x00650300:    push               ebx                                           // 0x00650300    53
                         push               ebp                                           // 0x00650301    55
                         push               esi                                           // 0x00650302    56
                         mov.s              ebp, ecx                                      // 0x00650303    8be9
                         push               edi                                           // 0x00650305    57
                         {disp8} mov        edi, dword ptr [ebp + 0x28]                   // 0x00650306    8b7d28
                         test               edi, edi                                      // 0x00650309    85ff
                         mov                bl, 0x01                                      // 0x0065030b    b301
                         {disp8} je         _jmp_addr_0x00650352                          // 0x0065030d    7443
_jmp_addr_0x0065030f:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0065030f    8b4704
                         {disp8} mov        esi, dword ptr [eax + 0x18]                   // 0x00650312    8b7018
                         test               esi, esi                                      // 0x00650315    85f6
                         {disp8} je         _jmp_addr_0x0065034c                          // 0x00650317    7433
_jmp_addr_0x00650319:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00650319    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x0065031c    8b4814
                         test               ecx, ecx                                      // 0x0065031f    85c9
                         {disp8} jne        _jmp_addr_0x00650346                          // 0x00650321    7523
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x00650323    8b4018
                         test               eax, eax                                      // 0x00650326    85c0
                         {disp8} je         _jmp_addr_0x00650359                          // 0x00650328    742f
                         test               byte ptr [eax + 0x0a], bl                     // 0x0065032a    84580a
                         {disp8} jne        _jmp_addr_0x00650359                          // 0x0065032d    752a
                         push               0x0                                           // 0x0065032f    6a00
                         push               0x009c7f30                                    // 0x00650331    68307f9c00
                         push               0x009c7f30                                    // 0x00650336    68307f9c00
                         push               0x0                                           // 0x0065033b    6a00
                         push               eax                                           // 0x0065033d    50
                         call               ___RTDynamicCast                              // 0x0065033e    e8d6561700
                         add                esp, 0x14                                     // 0x00650343    83c414
_jmp_addr_0x00650346:    mov                esi, dword ptr [esi]                          // 0x00650346    8b36
                         test               esi, esi                                      // 0x00650348    85f6
                         {disp8} jne        _jmp_addr_0x00650319                          // 0x0065034a    75cd
_jmp_addr_0x0065034c:    mov                edi, dword ptr [edi]                          // 0x0065034c    8b3f
                         test               edi, edi                                      // 0x0065034e    85ff
                         {disp8} jne        _jmp_addr_0x0065030f                          // 0x00650350    75bd
_jmp_addr_0x00650352:    pop                edi                                           // 0x00650352    5f
                         pop                esi                                           // 0x00650353    5e
                         pop                ebp                                           // 0x00650354    5d
                         mov.s              al, bl                                        // 0x00650355    8ac3
                         pop                ebx                                           // 0x00650357    5b
                         ret                                                              // 0x00650358    c3
_jmp_addr_0x00650359:    mov.s              ecx, ebp                                      // 0x00650359    8bcd
                         call               _jmp_addr_0x00650250                          // 0x0065035b    e8f0feffff
                         pop                edi                                           // 0x00650360    5f
                         pop                esi                                           // 0x00650361    5e
                         pop                ebp                                           // 0x00650362    5d
                         xor.s              al, al                                        // 0x00650363    32c0
                         pop                ebx                                           // 0x00650365    5b
                         ret                                                              // 0x00650366    c3
                         nop                                                              // 0x00650367    90
                         nop                                                              // 0x00650368    90
                         nop                                                              // 0x00650369    90
                         nop                                                              // 0x0065036a    90
                         nop                                                              // 0x0065036b    90
                         nop                                                              // 0x0065036c    90
                         nop                                                              // 0x0065036d    90
                         nop                                                              // 0x0065036e    90
                         nop                                                              // 0x0065036f    90
_jmp_addr_0x00650370:    sub                esp, 0x28                                     // 0x00650370    83ec28
                         push               ebx                                           // 0x00650373    53
                         push               ebp                                           // 0x00650374    55
                         mov.s              ebp, ecx                                      // 0x00650375    8be9
                         {disp8} fld        dword ptr [ebp + 0x50]                        // 0x00650377    d94550
                         push               esi                                           // 0x0065037a    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0065037b    d80d00c48a00
                         {disp8} lea        esi, dword ptr [ebp + 0x50]                   // 0x00650381    8d7550
                         push               edi                                           // 0x00650384    57
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                   // 0x00650385    c644241301
                         call               _jmp_addr_0x007a1400                          // 0x0065038a    e871101500
                         {disp8} mov        dword ptr [ebp + 0x14], eax                   // 0x0065038f    894514
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00650392    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00650395    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0065039b    e860101500
                         {disp8} mov        dword ptr [ebp + 0x18], eax                   // 0x006503a0    894518
                         {disp8} mov        dword ptr [ebp + 0x1c], 0x00000000            // 0x006503a3    c7451c00000000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006503aa    8b4500
                         mov.s              ecx, ebp                                      // 0x006503ad    8bcd
                         call               dword ptr [eax + 0x1c]                        // 0x006503af    ff501c
                         mov.s              ecx, eax                                      // 0x006503b2    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x006503b4    e837a6ffff
                         mov                ecx, dword ptr [esi]                          // 0x006503b9    8b0e
                         add                eax, 0x000000c8                               // 0x006503bb    05c8000000
                         mov                dword ptr [eax], ecx                          // 0x006503c0    8908
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x006503c2    8b5604
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x006503c5    895004
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006503c8    8b4e08
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x006503cb    894808
                         mov.s              ecx, ebp                                      // 0x006503ce    8bcd
                         call               _jmp_addr_0x00650840                          // 0x006503d0    e86b040000
                         test               eax, eax                                      // 0x006503d5    85c0
                         {disp32} je        _jmp_addr_0x006505ad                          // 0x006503d7    0f84d0010000
                         {disp8} mov        edx, dword ptr [ebp + 0x28]                   // 0x006503dd    8b5528
                         {disp8} mov        edi, dword ptr [edx + 0x04]                   // 0x006503e0    8b7a04
                         cmp                dword ptr [ebp + 0x30], 0x01                  // 0x006503e3    837d3001
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                   // 0x006503e7    8b4f14
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x006503ea    897c2414
                         {disp32} jne       _jmp_addr_0x00650558                          // 0x006503ee    0f8564010000
                         lea                eax, dword ptr [ecx + ecx * 0x8]              // 0x006503f4    8d04c9
                         shl                eax, 4                                        // 0x006503f7    c1e004
                         {disp32} mov       eax, dword ptr [eax + 0x00bff2c0]             // 0x006503fa    8b80c0f2bf00
                         cmp                eax, 0x25                                     // 0x00650400    83f825
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00650403    89442418
                         {disp32} je        _jmp_addr_0x00650558                          // 0x00650407    0f844b010000
                         cmp                ecx, 0x0f                                     // 0x0065040d    83f90f
                         {disp8} je         _jmp_addr_0x00650417                          // 0x00650410    7405
                         cmp                ecx, 0x10                                     // 0x00650412    83f910
                         {disp8} jne        _jmp_addr_0x00650464                          // 0x00650415    754d
_jmp_addr_0x00650417:    {disp8} mov        edx, dword ptr [edi + 0x1c]                   // 0x00650417    8b571c
                         test               edx, edx                                      // 0x0065041a    85d2
                         {disp8} jbe        _jmp_addr_0x00650430                          // 0x0065041c    7612
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0065041e    8b4718
                         test               eax, eax                                      // 0x00650421    85c0
                         {disp8} je         _jmp_addr_0x00650430                          // 0x00650423    740b
                         cmp                edx, 0x01                                     // 0x00650425    83fa01
                         {disp8} jle        _jmp_addr_0x00650430                          // 0x00650428    7e06
                         mov                eax, dword ptr [eax]                          // 0x0065042a    8b00
                         test               eax, eax                                      // 0x0065042c    85c0
                         {disp8} jne        _jmp_addr_0x00650434                          // 0x0065042e    7504
_jmp_addr_0x00650430:    xor.s              eax, eax                                      // 0x00650430    33c0
                         {disp8} jmp        _jmp_addr_0x00650437                          // 0x00650432    eb03
_jmp_addr_0x00650434:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00650434    8b4004
_jmp_addr_0x00650437:    {disp8} mov        eax, dword ptr [eax + 0x5c]                   // 0x00650437    8b405c
                         test               eax, eax                                      // 0x0065043a    85c0
                         {disp8} jl         _jmp_addr_0x00650464                          // 0x0065043c    7c26
                         cmp                eax, 0x2a                                     // 0x0065043e    83f82a
                         {disp8} jge        _jmp_addr_0x00650464                          // 0x00650441    7d21
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00650443    8d14c0
                         shl                edx, 3                                        // 0x00650446    c1e203
                         sub.s              edx, eax                                      // 0x00650449    2bd0
                         cmp                dword ptr [edx * 0x4 + 0x00cc66c8], 0x02      // 0x0065044b    833c95c866cc0002
                         {disp8} jne        _jmp_addr_0x00650464                          // 0x00650453    750f
                         xor.s              eax, eax                                      // 0x00650455    33c0
                         cmp                ecx, 0x0f                                     // 0x00650457    83f90f
                         sete               al                                            // 0x0065045a    0f94c0
                         add                eax, 0x04                                     // 0x0065045d    83c004
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00650460    89442418
_jmp_addr_0x00650464:    push               0x000000df                                    // 0x00650464    68df000000
                         push               0x00c009d4                                    // 0x00650469    68d409c000
                         push               0x74                                          // 0x0065046e    6a74
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00650470    e87b62deff
                         mov.s              ebx, eax                                      // 0x00650475    8bd8
                         add                esp, 0x0c                                     // 0x00650477    83c40c
                         test               ebx, ebx                                      // 0x0065047a    85db
                         {disp8} je         _jmp_addr_0x006504eb                          // 0x0065047c    746d
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0065047e    8b4718
                         test               eax, eax                                      // 0x00650481    85c0
                         {disp8} je         _jmp_addr_0x0065048e                          // 0x00650483    7409
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00650485    8b7004
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x00650488    89742414
                         {disp8} jmp        _jmp_addr_0x0065049a                          // 0x0065048c    eb0c
_jmp_addr_0x0065048e:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0065048e    c744241400000000
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00650496    8b742414
_jmp_addr_0x0065049a:    push               esi                                           // 0x0065049a    56
                         mov.s              ecx, ebx                                      // 0x0065049b    8bcb
                         call               _jmp_addr_0x00650640                          // 0x0065049d    e89e010000
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x006504a2    8b4e14
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006504a5    8b442414
                         {disp8} mov        dword ptr [ebx + 0x14], ecx                   // 0x006504a9    894b14
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x006504ac    8b5618
                         {disp8} mov        dword ptr [ebx + 0x18], edx                   // 0x006504af    895318
                         add                esi, 0x1c                                     // 0x006504b2    83c61c
                         {disp8} lea        edi, dword ptr [ebx + 0x1c]                   // 0x006504b5    8d7b1c
                         mov                ecx, 0x00000010                               // 0x006504b8    b910000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x006504bd    f3a5
                         {disp8} mov        ecx, dword ptr [eax + 0x5c]                   // 0x006504bf    8b485c
                         {disp8} mov        dword ptr [ebx + 0x5c], ecx                   // 0x006504c2    894b5c
                         {disp8} mov        edx, dword ptr [eax + 0x60]                   // 0x006504c5    8b5060
                         {disp8} mov        dword ptr [ebx + 0x60], edx                   // 0x006504c8    895360
                         {disp8} mov        ecx, dword ptr [eax + 0x64]                   // 0x006504cb    8b4864
                         {disp8} mov        dword ptr [ebx + 0x64], ecx                   // 0x006504ce    894b64
                         {disp8} mov        edx, dword ptr [eax + 0x68]                   // 0x006504d1    8b5068
                         {disp8} mov        dword ptr [ebx + 0x68], edx                   // 0x006504d4    895368
                         {disp8} mov        ecx, dword ptr [eax + 0x6c]                   // 0x006504d7    8b486c
                         {disp8} mov        dword ptr [ebx + 0x6c], ecx                   // 0x006504da    894b6c
                         {disp8} mov        edx, dword ptr [eax + 0x70]                   // 0x006504dd    8b5070
                         {disp8} mov        dword ptr [ebx + 0x70], edx                   // 0x006504e0    895370
                         mov                dword ptr [ebx], 0x008fa09c                   // 0x006504e3    c7039ca08f00
                         {disp8} jmp        _jmp_addr_0x006504ed                          // 0x006504e9    eb02
_jmp_addr_0x006504eb:    xor.s              ebx, ebx                                      // 0x006504eb    33db
_jmp_addr_0x006504ed:    push               ebx                                           // 0x006504ed    53
                         call               _jmp_addr_0x00650d70                          // 0x006504ee    e87d080000
                         push               0x000000e2                                    // 0x006504f3    68e2000000
                         push               0x00c009d4                                    // 0x006504f8    68d409c000
                         push               0x20                                          // 0x006504fd    6a20
                         mov.s              esi, eax                                      // 0x006504ff    8bf0
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00650501    e8ea61deff
                         add                esp, 0x10                                     // 0x00650506    83c410
                         test               eax, eax                                      // 0x00650509    85c0
                         {disp8} je         _jmp_addr_0x0065051e                          // 0x0065050b    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0065050d    8b4c2418
                         push               esi                                           // 0x00650511    56
                         push               ecx                                           // 0x00650512    51
                         mov.s              ecx, eax                                      // 0x00650513    8bc8
                         call               _jmp_addr_0x00650b60                          // 0x00650515    e846060000
                         mov.s              esi, eax                                      // 0x0065051a    8bf0
                         {disp8} jmp        _jmp_addr_0x00650520                          // 0x0065051c    eb02
_jmp_addr_0x0065051e:    xor.s              esi, esi                                      // 0x0065051e    33f6
_jmp_addr_0x00650520:    test               esi, esi                                      // 0x00650520    85f6
                         {disp8} je         _jmp_addr_0x00650540                          // 0x00650522    741c
                         push               0x8                                           // 0x00650524    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650526    e8c35f1700
                         add                esp, 0x04                                     // 0x0065052b    83c404
                         test               eax, eax                                      // 0x0065052e    85c0
                         {disp8} je         _jmp_addr_0x00650540                          // 0x00650530    740e
                         {disp8} mov        ecx, dword ptr [ebp + 0x28]                   // 0x00650532    8b4d28
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00650535    897004
                         mov                dword ptr [eax], ecx                          // 0x00650538    8908
                         {disp8} mov        dword ptr [ebp + 0x28], eax                   // 0x0065053a    894528
                         {disp8} inc        dword ptr [ebp + 0x2c]                        // 0x0065053d    ff452c
_jmp_addr_0x00650540:    pop                edi                                           // 0x00650540    5f
                         pop                esi                                           // 0x00650541    5e
                         {disp8} mov        dword ptr [ebp + 0x30], 0x00000000            // 0x00650542    c7453000000000
                         {disp8} mov        dword ptr [ebp + 0x34], 0x00000001            // 0x00650549    c7453401000000
                         pop                ebp                                           // 0x00650550    5d
                         mov                al, 0x01                                      // 0x00650551    b001
                         pop                ebx                                           // 0x00650553    5b
                         add                esp, 0x28                                     // 0x00650554    83c428
                         ret                                                              // 0x00650557    c3
_jmp_addr_0x00650558:    {disp8} mov        edi, dword ptr [ebp + 0x38]                   // 0x00650558    8b7d38
                         lea                edx, dword ptr [ecx + ecx * 0x8]              // 0x0065055b    8d14c9
                         add.s              edx, edi                                      // 0x0065055e    03d7
                         shl                edx, 4                                        // 0x00650560    c1e204
                         add                edx, 0x00bff280                               // 0x00650563    81c280f2bf00
                         mov.s              edi, edx                                      // 0x00650569    8bfa
                         mov                edx, dword ptr [edi]                          // 0x0065056b    8b17
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0065056d    8b4f04
                         {disp8} mov        ebx, dword ptr [edi + 0x08]                   // 0x00650570    8b5f08
                         {disp8} mov        edi, dword ptr [edi + 0x0c]                   // 0x00650573    8b7f0c
                         xor.s              eax, eax                                      // 0x00650576    33c0
                         test               edx, edx                                      // 0x00650578    85d2
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x0065057a    895c2430
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x0065057e    897c2434
                         {disp8} je         _jmp_addr_0x00650590                          // 0x00650582    740c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00650584    8b442414
                         add                eax, 0x18                                     // 0x00650588    83c018
                         push               eax                                           // 0x0065058b    50
                         add.s              ecx, ebp                                      // 0x0065058c    03cd
                         call               edx                                           // 0x0065058e    ffd2
_jmp_addr_0x00650590:    sub                eax, 0x00                                     // 0x00650590    83e800
                         {disp8} je         _jmp_addr_0x006505a6                          // 0x00650593    7411
                         dec                eax                                           // 0x00650595    48
                         {disp8} jne        _jmp_addr_0x006505ad                          // 0x00650596    7515
                         mov.s              ecx, ebp                                      // 0x00650598    8bcd
                         call               _jmp_addr_0x00650250                          // 0x0065059a    e8b1fcffff
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x0065059f    c644241300
                         {disp8} jmp        _jmp_addr_0x006505ad                          // 0x006505a4    eb07
_jmp_addr_0x006505a6:    mov.s              ecx, ebp                                      // 0x006505a6    8bcd
                         call               _jmp_addr_0x006506e0                          // 0x006505a8    e833010000
_jmp_addr_0x006505ad:    {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006505ad    8b5500
                         mov.s              ecx, ebp                                      // 0x006505b0    8bcd
                         call               dword ptr [edx + 0x1c]                        // 0x006505b2    ff521c
                         mov.s              ecx, eax                                      // 0x006505b5    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x006505b7    e834a4ffff
                         add                eax, 0x000000b0                               // 0x006505bc    05b0000000
                         mov.s              ecx, esi                                      // 0x006505c1    8bce
                         mov                edx, dword ptr [ecx]                          // 0x006505c3    8b11
                         mov                dword ptr [eax], edx                          // 0x006505c5    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x006505c7    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x006505ca    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x006505cd    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x006505d0    894808
                         push               esi                                           // 0x006505d3    56
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006505d4    8d4c2420
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006505d8    e8832bfbff
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006505dd    8b4500
                         push               esi                                           // 0x006505e0    56
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x006505e1    8d542420
                         push               edx                                           // 0x006505e5    52
                         mov.s              ecx, ebp                                      // 0x006505e6    8bcd
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x006505e8    c744242c00000000
                         call               dword ptr [eax + 0x1c]                        // 0x006505f0    ff501c
                         mov.s              ecx, eax                                      // 0x006505f3    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x006505f5    e8f6a3ffff
                         mov.s              ecx, eax                                      // 0x006505fa    8bc8
                         call               _jmp_addr_0x005dc060                          // 0x006505fc    e85fbaf8ff
                         {disp8} mov        ebp, dword ptr [ebp + 0x28]                   // 0x00650601    8b6d28
                         test               ebp, ebp                                      // 0x00650604    85ed
                         {disp8} je         _jmp_addr_0x00650627                          // 0x00650606    741f
_jmp_addr_0x00650608:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00650608    8b4d04
                         call               _jmp_addr_0x00650cb0                          // 0x0065060b    e8a0060000
                         push               eax                                           // 0x00650610    50
                         push               0x4                                           // 0x00650611    6a04
                         push               0x00cd3b24                                    // 0x00650613    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00650618    e88317ecff
                         {disp8} mov        ebp, dword ptr [ebp + 0x00]                   // 0x0065061d    8b6d00
                         add                esp, 0x0c                                     // 0x00650620    83c40c
                         test               ebp, ebp                                      // 0x00650623    85ed
                         {disp8} jne        _jmp_addr_0x00650608                          // 0x00650625    75e1
_jmp_addr_0x00650627:    {disp8} mov        al, byte ptr [esp + 0x13]                     // 0x00650627    8a442413
                         pop                edi                                           // 0x0065062b    5f
                         pop                esi                                           // 0x0065062c    5e
                         pop                ebp                                           // 0x0065062d    5d
                         pop                ebx                                           // 0x0065062e    5b
                         add                esp, 0x28                                     // 0x0065062f    83c428
                         ret                                                              // 0x00650632    c3
                         nop                                                              // 0x00650633    90
                         nop                                                              // 0x00650634    90
                         nop                                                              // 0x00650635    90
                         nop                                                              // 0x00650636    90
                         nop                                                              // 0x00650637    90
                         nop                                                              // 0x00650638    90
                         nop                                                              // 0x00650639    90
                         nop                                                              // 0x0065063a    90
                         nop                                                              // 0x0065063b    90
                         nop                                                              // 0x0065063c    90
                         nop                                                              // 0x0065063d    90
                         nop                                                              // 0x0065063e    90
                         nop                                                              // 0x0065063f    90
_jmp_addr_0x00650640:    mov.s              eax, ecx                                      // 0x00650640    8bc1
                         push               esi                                           // 0x00650642    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00650643    8b742408
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00650647    8b4e04
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0065064a    894804
.att_syntax
                         movl               $??_7Base@@6B@, (%eax)                        // 0x0065064d    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dx, word ptr [esi + 0x08]                     // 0x00650653    668b5608
                         {disp8} mov        word ptr [eax + 0x08], dx                     // 0x00650657    66895008
                         {disp8} mov        cl, byte ptr [esi + 0x0a]                     // 0x0065065b    8a4e0a
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x0065065e    88480a
                         mov.s              dl, cl                                        // 0x00650661    8ad1
                         {disp8} mov        cl, byte ptr [esi + 0x0a]                     // 0x00650663    8a4e0a
                         xor.s              cl, dl                                        // 0x00650666    32ca
                         and                cl, 0x01                                      // 0x00650668    80e101
                         xor.s              cl, dl                                        // 0x0065066b    32ca
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x0065066d    88480a
                         {disp8} mov        dl, byte ptr [esi + 0x0a]                     // 0x00650670    8a560a
                         xor.s              dl, cl                                        // 0x00650673    32d1
                         and                dl, 0x02                                      // 0x00650675    80e202
                         xor.s              dl, cl                                        // 0x00650678    32d1
                         {disp8} mov        byte ptr [eax + 0x0a], dl                     // 0x0065067a    88500a
                         {disp8} mov        cl, byte ptr [esi + 0x0a]                     // 0x0065067d    8a4e0a
                         xor.s              cl, dl                                        // 0x00650680    32ca
                         and                cl, 0x04                                      // 0x00650682    80e104
                         xor.s              cl, dl                                        // 0x00650685    32ca
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x00650687    88480a
                         {disp8} mov        dl, byte ptr [esi + 0x0a]                     // 0x0065068a    8a560a
                         xor.s              dl, cl                                        // 0x0065068d    32d1
                         and                dl, 0x08                                      // 0x0065068f    80e208
                         xor.s              dl, cl                                        // 0x00650692    32d1
                         {disp8} mov        byte ptr [eax + 0x0a], dl                     // 0x00650694    88500a
                         {disp8} mov        cl, byte ptr [esi + 0x0a]                     // 0x00650697    8a4e0a
                         xor.s              cl, dl                                        // 0x0065069a    32ca
                         and                cl, 0x10                                      // 0x0065069c    80e110
                         xor.s              cl, dl                                        // 0x0065069f    32ca
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x006506a1    88480a
                         {disp8} mov        dl, byte ptr [esi + 0x0a]                     // 0x006506a4    8a560a
                         xor.s              dl, cl                                        // 0x006506a7    32d1
                         and                dl, 0x20                                      // 0x006506a9    80e220
                         xor.s              dl, cl                                        // 0x006506ac    32d1
                         {disp8} mov        byte ptr [eax + 0x0a], dl                     // 0x006506ae    88500a
                         {disp8} mov        cl, byte ptr [esi + 0x0a]                     // 0x006506b1    8a4e0a
                         xor.s              cl, dl                                        // 0x006506b4    32ca
                         and                cl, 0x40                                      // 0x006506b6    80e140
                         xor.s              cl, dl                                        // 0x006506b9    32ca
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x006506bb    88480a
                         {disp8} mov        dx, word ptr [esi + 0x0c]                     // 0x006506be    668b560c
                         {disp8} mov        word ptr [eax + 0x0c], dx                     // 0x006506c2    6689500c
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x006506c6    8b4e10
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x006506c9    894810
                         mov                dword ptr [eax], 0x008fff50                   // 0x006506cc    c70050ff8f00
                         pop                esi                                           // 0x006506d2    5e
                         ret                0x0004                                        // 0x006506d3    c20400
                         nop                                                              // 0x006506d6    90
                         nop                                                              // 0x006506d7    90
                         nop                                                              // 0x006506d8    90
                         nop                                                              // 0x006506d9    90
                         nop                                                              // 0x006506da    90
                         nop                                                              // 0x006506db    90
                         nop                                                              // 0x006506dc    90
                         nop                                                              // 0x006506dd    90
                         nop                                                              // 0x006506de    90
                         nop                                                              // 0x006506df    90
_jmp_addr_0x006506e0:    push               ecx                                           // 0x006506e0    51
                         {disp8} mov        edx, dword ptr [ecx + 0x38]                   // 0x006506e1    8b5138
                         inc                edx                                           // 0x006506e4    42
                         mov.s              eax, edx                                      // 0x006506e5    8bc2
                         cmp                eax, 0x03                                     // 0x006506e7    83f803
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x006506ea    894c2400
                         {disp8} mov        dword ptr [ecx + 0x38], edx                   // 0x006506ee    895138
                         {disp32} jne       _jmp_addr_0x006507c3                          // 0x006506f1    0f85cc000000
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x006506f7    8b4128
                         push               ebx                                           // 0x006506fa    53
                         push               ebp                                           // 0x006506fb    55
                         push               esi                                           // 0x006506fc    56
                         push               edi                                           // 0x006506fd    57
                         {disp8} mov        dword ptr [ecx + 0x38], 0x00000000            // 0x006506fe    c7413800000000
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00650705    8b7804
_jmp_addr_0x00650708:    {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x00650708    8b4718
                         test               eax, eax                                      // 0x0065070b    85c0
                         {disp8} je         _jmp_addr_0x0065075d                          // 0x0065070d    744e
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x0065070f    8b5804
                         xor.s              ebp, ebp                                      // 0x00650712    33ed
                         test               eax, eax                                      // 0x00650714    85c0
                         {disp8} je         _jmp_addr_0x0065074a                          // 0x00650716    7432
_jmp_addr_0x00650718:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00650718    395804
                         mov                esi, dword ptr [eax]                          // 0x0065071b    8b30
                         {disp8} jne        _jmp_addr_0x00650742                          // 0x0065071d    7523
                         cmp                eax, dword ptr [edi + 0x18]                   // 0x0065071f    3b4718
                         {disp8} jne        _jmp_addr_0x00650729                          // 0x00650722    7505
                         {disp8} mov        dword ptr [edi + 0x18], esi                   // 0x00650724    897718
                         {disp8} jmp        _jmp_addr_0x0065072c                          // 0x00650727    eb03
_jmp_addr_0x00650729:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00650729    897500
_jmp_addr_0x0065072c:    {disp8} mov        edx, dword ptr [edi + 0x1c]                   // 0x0065072c    8b571c
                         dec                edx                                           // 0x0065072f    4a
                         push               eax                                           // 0x00650730    50
                         {disp8} mov        dword ptr [edi + 0x1c], edx                   // 0x00650731    89571c
                         call               ??3@YAXPAX@Z                                  // 0x00650734    e85fe71500
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00650739    8b4c2414
                         add                esp, 0x04                                     // 0x0065073d    83c404
                         {disp8} jmp        _jmp_addr_0x00650744                          // 0x00650740    eb02
_jmp_addr_0x00650742:    mov.s              ebp, eax                                      // 0x00650742    8be8
_jmp_addr_0x00650744:    test               esi, esi                                      // 0x00650744    85f6
                         mov.s              eax, esi                                      // 0x00650746    8bc6
                         {disp8} jne        _jmp_addr_0x00650718                          // 0x00650748    75ce
_jmp_addr_0x0065074a:    test               ebx, ebx                                      // 0x0065074a    85db
                         {disp8} je         _jmp_addr_0x00650708                          // 0x0065074c    74ba
                         mov                edx, dword ptr [ebx]                          // 0x0065074e    8b13
                         push               0x1                                           // 0x00650750    6a01
                         mov.s              ecx, ebx                                      // 0x00650752    8bcb
                         call               dword ptr [edx + 4]                           // 0x00650754    ff5204
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00650757    8b4c2410
                         {disp8} jmp        _jmp_addr_0x00650708                          // 0x0065075b    ebab
_jmp_addr_0x0065075d:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0065075d    8b4128
                         xor.s              ebx, ebx                                      // 0x00650760    33db
                         test               eax, eax                                      // 0x00650762    85c0
                         {disp8} je         _jmp_addr_0x00650797                          // 0x00650764    7431
_jmp_addr_0x00650766:    cmp                dword ptr [eax + 0x04], edi                   // 0x00650766    397804
                         mov                esi, dword ptr [eax]                          // 0x00650769    8b30
                         {disp8} jne        _jmp_addr_0x0065078f                          // 0x0065076b    7522
                         cmp                eax, dword ptr [ecx + 0x28]                   // 0x0065076d    3b4128
                         {disp8} jne        _jmp_addr_0x00650777                          // 0x00650770    7505
                         {disp8} mov        dword ptr [ecx + 0x28], esi                   // 0x00650772    897128
                         {disp8} jmp        _jmp_addr_0x00650779                          // 0x00650775    eb02
_jmp_addr_0x00650777:    mov                dword ptr [ebx], esi                          // 0x00650777    8933
_jmp_addr_0x00650779:    {disp8} mov        edx, dword ptr [ecx + 0x2c]                   // 0x00650779    8b512c
                         dec                edx                                           // 0x0065077c    4a
                         push               eax                                           // 0x0065077d    50
                         {disp8} mov        dword ptr [ecx + 0x2c], edx                   // 0x0065077e    89512c
                         call               ??3@YAXPAX@Z                                  // 0x00650781    e812e71500
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00650786    8b4c2414
                         add                esp, 0x04                                     // 0x0065078a    83c404
                         {disp8} jmp        _jmp_addr_0x00650791                          // 0x0065078d    eb02
_jmp_addr_0x0065078f:    mov.s              ebx, eax                                      // 0x0065078f    8bd8
_jmp_addr_0x00650791:    test               esi, esi                                      // 0x00650791    85f6
                         mov.s              eax, esi                                      // 0x00650793    8bc6
                         {disp8} jne        _jmp_addr_0x00650766                          // 0x00650795    75cf
_jmp_addr_0x00650797:    test               edi, edi                                      // 0x00650797    85ff
                         {disp8} je         _jmp_addr_0x006507a8                          // 0x00650799    740d
                         mov                eax, dword ptr [edi]                          // 0x0065079b    8b07
                         push               0x1                                           // 0x0065079d    6a01
                         mov.s              ecx, edi                                      // 0x0065079f    8bcf
                         call               dword ptr [eax + 4]                           // 0x006507a1    ff5004
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006507a4    8b4c2410
_jmp_addr_0x006507a8:    {disp8} mov        eax, dword ptr [ecx + 0x34]                   // 0x006507a8    8b4134
                         test               eax, eax                                      // 0x006507ab    85c0
                         pop                edi                                           // 0x006507ad    5f
                         pop                esi                                           // 0x006507ae    5e
                         pop                ebp                                           // 0x006507af    5d
                         pop                ebx                                           // 0x006507b0    5b
                         {disp8} je         _jmp_addr_0x006507bc                          // 0x006507b1    7409
                         {disp8} mov        dword ptr [ecx + 0x34], 0x00000000            // 0x006507b3    c7413400000000
                         pop                ecx                                           // 0x006507ba    59
                         ret                                                              // 0x006507bb    c3
_jmp_addr_0x006507bc:    {disp8} mov        dword ptr [ecx + 0x30], 0x00000001            // 0x006507bc    c7413001000000
_jmp_addr_0x006507c3:    pop                ecx                                           // 0x006507c3    59
                         ret                                                              // 0x006507c4    c3
                         nop                                                              // 0x006507c5    90
                         nop                                                              // 0x006507c6    90
                         nop                                                              // 0x006507c7    90
                         nop                                                              // 0x006507c8    90
                         nop                                                              // 0x006507c9    90
                         nop                                                              // 0x006507ca    90
                         nop                                                              // 0x006507cb    90
                         nop                                                              // 0x006507cc    90
                         nop                                                              // 0x006507cd    90
                         nop                                                              // 0x006507ce    90
                         nop                                                              // 0x006507cf    90
_jmp_addr_0x006507d0:    {disp32} mov       eax, dword ptr [_game]                        // 0x006507d0    a15c19d000
                         sub                esp, 0x10                                     // 0x006507d5    83ec10
                         push               esi                                           // 0x006507d8    56
                         push               edi                                           // 0x006507d9    57
                         mov.s              edi, ecx                                      // 0x006507da    8bf9
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x006507dc    8b88405a2000
                         {disp8} mov        esi, dword ptr [edi + 0x28]                   // 0x006507e2    8b7728
                         test               esi, esi                                      // 0x006507e5    85f6
                         {disp8} mov        dword ptr [edi + 0x3c], ecx                   // 0x006507e7    894f3c
                         {disp8} mov        dword ptr [edi + 0x40], 0x00000000            // 0x006507ea    c7474000000000
                         {disp8} je         _jmp_addr_0x00650834                          // 0x006507f1    7441
                         push               ebx                                           // 0x006507f3    53
_jmp_addr_0x006507f4:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x006507f4    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x006507f7    8b4814
                         lea                edx, dword ptr [ecx + ecx * 0x8]              // 0x006507fa    8d14c9
                         shl                edx, 4                                        // 0x006507fd    c1e204
                         add                edx, 0x00bff2b0                               // 0x00650800    81c2b0f2bf00
                         mov                ecx, dword ptr [edx]                          // 0x00650806    8b0a
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x00650808    894c240c
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0065080c    8b4a04
                         {disp8} mov        ebx, dword ptr [edx + 0x08]                   // 0x0065080f    8b5a08
                         {disp8} mov        edx, dword ptr [edx + 0x0c]                   // 0x00650812    8b520c
                         add                eax, 0x18                                     // 0x00650815    83c018
                         push               eax                                           // 0x00650818    50
                         add.s              ecx, edi                                      // 0x00650819    03cf
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0065081b    895c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0065081f    8954241c
                         call               dword ptr [esp + 0x10]                        // 0x00650823    ff542410
                         {disp8} fadd       dword ptr [edi + 0x40]                        // 0x00650827    d84740
                         {disp8} fstp       dword ptr [edi + 0x40]                        // 0x0065082a    d95f40
                         mov                esi, dword ptr [esi]                          // 0x0065082d    8b36
                         test               esi, esi                                      // 0x0065082f    85f6
                         {disp8} jne        _jmp_addr_0x006507f4                          // 0x00650831    75c1
                         pop                ebx                                           // 0x00650833    5b
_jmp_addr_0x00650834:    pop                edi                                           // 0x00650834    5f
                         pop                esi                                           // 0x00650835    5e
                         add                esp, 0x10                                     // 0x00650836    83c410
                         ret                                                              // 0x00650839    c3
                         nop                                                              // 0x0065083a    90
                         nop                                                              // 0x0065083b    90
                         nop                                                              // 0x0065083c    90
                         nop                                                              // 0x0065083d    90
                         nop                                                              // 0x0065083e    90
                         nop                                                              // 0x0065083f    90
_jmp_addr_0x00650840:    {disp8} mov        edx, dword ptr [ecx + 0x2c]                   // 0x00650840    8b512c
                         xor.s              eax, eax                                      // 0x00650843    33c0
                         cmp.s              eax, edx                                      // 0x00650845    3bc2
                         sbb.s              eax, eax                                      // 0x00650847    1bc0
                         neg                eax                                           // 0x00650849    f7d8
                         ret                                                              // 0x0065084b    c3
                         nop                                                              // 0x0065084c    90
                         nop                                                              // 0x0065084d    90
                         nop                                                              // 0x0065084e    90
                         nop                                                              // 0x0065084f    90
                         sub                esp, 0x08                                     // 0x00650850    83ec08
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00650853    a15c19d000
                         push               esi                                           // 0x00650858    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205a40]             // 0x00650859    8bb0405a2000
                         sub                esi, dword ptr [ecx + 0x3c]                   // 0x0065085f    2b713c
                         xor.s              edx, edx                                      // 0x00650862    33d2
                         mov                eax, 0x000003e8                               // 0x00650864    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x00650869    f735381ad000
                         push               edi                                           // 0x0065086f    57
                         xor.s              edx, edx                                      // 0x00650870    33d2
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x00650872    c744240c00000000
                         mov.s              edi, eax                                      // 0x0065087a    8bf8
                         mov.s              eax, esi                                      // 0x0065087c    8bc6
                         div                edi                                           // 0x0065087e    f7f7
                         pop                edi                                           // 0x00650880    5f
                         pop                esi                                           // 0x00650881    5e
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00650882    89442400
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x00650886    df6c2400
                         {disp8} fld        dword ptr [ecx + 0x40]                        // 0x0065088a    d94140
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0065088d    d81d98a38a00
                         fnstsw             ax                                            // 0x00650893    dfe0
                         test               ah, 0x41                                      // 0x00650895    f6c441
                         {disp8} je         _jmp_addr_0x006508a6                          // 0x00650898    740c
                         fstp               st(0)                                         // 0x0065089a    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0065089c    d90598a38a00
                         add                esp, 0x08                                     // 0x006508a2    83c408
                         ret                                                              // 0x006508a5    c3
_jmp_addr_0x006508a6:    {disp8} fdiv       dword ptr [ecx + 0x40]                        // 0x006508a6    d87140
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x006508a9    d81598a38a00
                         fnstsw             ax                                            // 0x006508af    dfe0
                         test               ah, 0x01                                      // 0x006508b1    f6c401
                         {disp8} je         _jmp_addr_0x006508c2                          // 0x006508b4    740c
                         fstp               st(0)                                         // 0x006508b6    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x006508b8    d90598a38a00
                         add                esp, 0x08                                     // 0x006508be    83c408
                         ret                                                              // 0x006508c1    c3
_jmp_addr_0x006508c2:    {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x006508c2    d81590a38a00
                         fnstsw             ax                                            // 0x006508c8    dfe0
                         test               ah, 0x41                                      // 0x006508ca    f6c441
                         {disp8} jne        _jmp_addr_0x006508d7                          // 0x006508cd    7508
                         fstp               st(0)                                         // 0x006508cf    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x006508d1    d90590a38a00
_jmp_addr_0x006508d7:    add                esp, 0x08                                     // 0x006508d7    83c408
                         ret                                                              // 0x006508da    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x006508db    e8190fdbff
?GetPlayer@PlayerActionState@@UAEPAVGPlayer@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x4c]                   // 0x006508e0    8b414c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006508e3    8b0d5c19d000
                         push               eax                                           // 0x006508e9    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x006508ea    e8c100f0ff
                         ret                                                              // 0x006508ef    c3
_jmp_addr_0x006508f0:    sub                esp, 0x0c                                     // 0x006508f0    83ec0c
                         push               esi                                           // 0x006508f3    56
                         mov.s              esi, ecx                                      // 0x006508f4    8bf1
                         {disp8} fld        dword ptr [esi + 0x50]                        // 0x006508f6    d94650
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x006508f9    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006508ff    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00650905    e8f60a1500
                         {disp8} fld        dword ptr [esi + 0x58]                        // 0x0065090a    d94658
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0065090d    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00650913    89442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00650917    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0065091d    e8de0a1500
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00650922    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00650926    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0065092a    c744240c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00650932    e859271b00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2414]              // 0x00650937    d80514b48a00
                         {disp8} fstp       dword ptr [esi + 0x54]                        // 0x0065093d    d95e54
                         pop                esi                                           // 0x00650940    5e
                         add                esp, 0x0c                                     // 0x00650941    83c40c
                         ret                                                              // 0x00650944    c3
                         nop                                                              // 0x00650945    90
                         nop                                                              // 0x00650946    90
                         nop                                                              // 0x00650947    90
                         nop                                                              // 0x00650948    90
                         nop                                                              // 0x00650949    90
                         nop                                                              // 0x0065094a    90
                         nop                                                              // 0x0065094b    90
                         nop                                                              // 0x0065094c    90
                         nop                                                              // 0x0065094d    90
                         nop                                                              // 0x0065094e    90
                         nop                                                              // 0x0065094f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x74]                   // 0x00650950    8b4174
                         sub                esp, 0x0c                                     // 0x00650953    83ec0c
                         test               eax, eax                                      // 0x00650956    85c0
                         {disp32} je        _jmp_addr_0x00650a61                          // 0x00650958    0f8403010000
                         push               ebx                                           // 0x0065095e    53
                         push               esi                                           // 0x0065095f    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00650960    8b742418
                         push               edi                                           // 0x00650964    57
                         {disp8} lea        eax, dword ptr [ecx + 0x50]                   // 0x00650965    8d4150
                         mov                ebx, dword ptr [eax]                          // 0x00650968    8b18
                         {disp8} lea        edi, dword ptr [esi + 0x0c]                   // 0x0065096a    8d7e0c
                         mov.s              edx, edi                                      // 0x0065096d    8bd7
                         mov                dword ptr [edx], ebx                          // 0x0065096f    891a
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x00650971    8b5804
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x00650974    895a04
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00650977    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0065097a    894208
                         {disp8} mov        ecx, dword ptr [ecx + 0x74]                   // 0x0065097d    8b4974
                         mov                edx, dword ptr [ecx]                          // 0x00650980    8b11
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00650982    8d44240c
                         push               eax                                           // 0x00650986    50
                         call               dword ptr [edx + 0x170]                       // 0x00650987    ff9270010000
                         mov.s              ebx, eax                                      // 0x0065098d    8bd8
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x0065098f    8b4b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00650992    894c241c
                         mov.s              ecx, ebx                                      // 0x00650996    8bcb
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00650998    e8f3261b00
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0065099d    d844241c
                         {disp8} lea        ecx, dword ptr [esi + 0x18]                   // 0x006509a1    8d4e18
                         mov.s              edx, ecx                                      // 0x006509a4    8bd1
                         {disp8} fst        dword ptr [esi + 0x04]                        // 0x006509a6    d95604
                         fild               dword ptr [ebx]                               // 0x006509a9    db03
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006509ab    d80da4a38a00
                         fstp               dword ptr [esi]                               // 0x006509b1    d91e
                         {disp8} fild       dword ptr [ebx + 0x04]                        // 0x006509b3    db4304
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006509b6    d80da4a38a00
                         {disp8} fst        dword ptr [esp + 0x1c]                        // 0x006509bc    d954241c
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x006509c0    d95e08
                         fld                dword ptr [esi]                               // 0x006509c3    d906
                         fsub               dword ptr [edi]                               // 0x006509c5    d827
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x006509c7    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006509cb    8b44240c
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x006509cf    d86704
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006509d2    d95c2410
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x006509d6    d944241c
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x006509da    d86708
                         mov                dword ptr [edx], eax                          // 0x006509dd    8902
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006509df    8b442410
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x006509e3    894204
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006509e6    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006509ea    8b442414
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x006509ee    894208
                         fld                dword ptr [ecx]                               // 0x006509f1    d901
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x006509f3    d94108
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x006509f6    8b5104
                         fld                st(1)                                         // 0x006509f9    d9c1
                         pop                edi                                           // 0x006509fb    5f
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006509fc    d81d98a38a00
                         pop                esi                                           // 0x00650a02    5e
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00650a03    89542414
                         pop                ebx                                           // 0x00650a07    5b
                         fnstsw             ax                                            // 0x00650a08    dfe0
                         test               ah, 0x40                                      // 0x00650a0a    f6c440
                         {disp8} je         _jmp_addr_0x00650a2d                          // 0x00650a0d    741e
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00650a0f    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00650a13    d81d98a38a00
                         fnstsw             ax                                            // 0x00650a19    dfe0
                         test               ah, 0x40                                      // 0x00650a1b    f6c440
                         {disp8} je         _jmp_addr_0x00650a2d                          // 0x00650a1e    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00650a20    d81598a38a00
                         fnstsw             ax                                            // 0x00650a26    dfe0
                         test               ah, 0x40                                      // 0x00650a28    f6c440
                         {disp8} jne        _jmp_addr_0x00650a5d                          // 0x00650a2b    7530
_jmp_addr_0x00650a2d:    fld                st(0)                                         // 0x00650a2d    d9c0
                         fmul               st, st(1)                                     // 0x00650a2f    d8c9
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00650a31    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00650a35    d84c2410
                         faddp              st(1), st                                     // 0x00650a39    dec1
                         fld                st(2)                                         // 0x00650a3b    d9c2
                         fmul               st, st(3)                                     // 0x00650a3d    d8cb
                         faddp              st(1), st                                     // 0x00650a3f    dec1
                         fsqrt                                                            // 0x00650a41    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00650a43    d83d90a38a00
                         fld                st(0)                                         // 0x00650a49    d9c0
                         fmul               st, st(3)                                     // 0x00650a4b    d8cb
                         fstp               dword ptr [ecx]                               // 0x00650a4d    d919
                         fld                st(0)                                         // 0x00650a4f    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00650a51    d84c2410
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x00650a55    d95904
                         fmul               st, st(1)                                     // 0x00650a58    d8c9
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x00650a5a    d95908
_jmp_addr_0x00650a5d:    fstp               st(0)                                         // 0x00650a5d    ddd8
                         fstp               st(0)                                         // 0x00650a5f    ddd8
_jmp_addr_0x00650a61:    add                esp, 0x0c                                     // 0x00650a61    83c40c
                         ret                0x0004                                        // 0x00650a64    c20400
                         nop                                                              // 0x00650a67    90
                         nop                                                              // 0x00650a68    90
                         nop                                                              // 0x00650a69    90
                         nop                                                              // 0x00650a6a    90
                         nop                                                              // 0x00650a6b    90
                         nop                                                              // 0x00650a6c    90
                         nop                                                              // 0x00650a6d    90
                         nop                                                              // 0x00650a6e    90
                         nop                                                              // 0x00650a6f    90
_jmp_addr_0x00650a70:    sub                esp, 0x18                                     // 0x00650a70    83ec18
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00650a73    8b44241c
                         push               esi                                           // 0x00650a77    56
                         push               eax                                           // 0x00650a78    50
                         mov.s              esi, ecx                                      // 0x00650a79    8bf1
                         call               _jmp_addr_0x0068c650                          // 0x00650a7b    e8d0bb0300
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00650a80    8b542428
                         add                esp, 0x04                                     // 0x00650a84    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00650a87    8d4c2410
                         push               ecx                                           // 0x00650a8b    51
                         push               edx                                           // 0x00650a8c    52
                         mov.s              ecx, eax                                      // 0x00650a8d    8bc8
                         call               _jmp_addr_0x0068c1d0                          // 0x00650a8f    e83cb70300
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x00650a94    d98684000000
                         {disp8} mov        eax, dword ptr [esi + 0x7c]                   // 0x00650a9a    8b467c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00650a9d    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1651c]             // 0x00650aa1    d80d1cf58b00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000080]             // 0x00650aa7    8b8e80000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00650aad    89442404
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00650ab1    8b442428
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x00650ab5    d8442404
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x00650ab9    894c2408
                         pop                esi                                           // 0x00650abd    5e
                         fstp               dword ptr [eax]                               // 0x00650abe    d918
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00650ac0    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1651c]             // 0x00650ac4    d80d1cf58b00
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x00650aca    d8442404
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00650ace    d95804
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x00650ad1    d95808
                         add                esp, 0x18                                     // 0x00650ad4    83c418
                         ret                0x000c                                        // 0x00650ad7    c20c00
                         nop                                                              // 0x00650ada    90
                         nop                                                              // 0x00650adb    90
                         nop                                                              // 0x00650adc    90
                         nop                                                              // 0x00650add    90
                         nop                                                              // 0x00650ade    90
                         nop                                                              // 0x00650adf    90
_jmp_addr_0x00650ae0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00650ae0    8b442404
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x00650ae4    8b0c85107dd300
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00650aeb    8b4128
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00650aee    8b4c2408
                         test               ecx, ecx                                      // 0x00650af2    85c9
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00650af4    8d0480
                         {disp8} jne        _jmp_addr_0x00650b08                          // 0x00650af7    750f
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00650af9    8d1480
                         shl                edx, 4                                        // 0x00650afc    c1e204
                         {disp32} mov       eax, dword ptr [edx + 0x00d9d778]             // 0x00650aff    8b8278d7d900
                         ret                0x0008                                        // 0x00650b05    c20800
_jmp_addr_0x00650b08:    lea                eax, dword ptr [eax + eax * 0x4]              // 0x00650b08    8d0480
                         shl                eax, 4                                        // 0x00650b0b    c1e004
                         {disp32} mov       eax, dword ptr [eax + 0x00d9d77c]             // 0x00650b0e    8b807cd7d900
                         ret                0x0008                                        // 0x00650b14    c20800
                         nop                                                              // 0x00650b17    90
                         nop                                                              // 0x00650b18    90
                         nop                                                              // 0x00650b19    90
                         nop                                                              // 0x00650b1a    90
                         nop                                                              // 0x00650b1b    90
                         nop                                                              // 0x00650b1c    90
                         nop                                                              // 0x00650b1d    90
                         nop                                                              // 0x00650b1e    90
                         nop                                                              // 0x00650b1f    90
_jmp_addr_0x00650b20:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00650b20    8b542404
                         test               edx, edx                                      // 0x00650b24    85d2
                         {disp8} jne        _jmp_addr_0x00650b5a                          // 0x00650b26    7532
                         push               ebx                                           // 0x00650b28    53
                         {disp32} lea       ebx, dword ptr [ecx + 0x0000018c]             // 0x00650b29    8d998c010000
                         push               esi                                           // 0x00650b2f    56
                         push               edi                                           // 0x00650b30    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00650b31    8b7c2414
                         or                 ecx, 0xffffffff                               // 0x00650b35    83c9ff
                         xor.s              eax, eax                                      // 0x00650b38    33c0
                         repne scasb                                                      // 0x00650b3a    f2ae
                         not                ecx                                           // 0x00650b3c    f7d1
                         sub.s              edi, ecx                                      // 0x00650b3e    2bf9
                         mov.s              eax, ecx                                      // 0x00650b40    8bc1
                         mov.s              esi, edi                                      // 0x00650b42    8bf7
                         shr                ecx, 2                                        // 0x00650b44    c1e902
                         mov.s              edi, ebx                                      // 0x00650b47    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00650b49    f3a5
                         mov.s              ecx, eax                                      // 0x00650b4b    8bc8
                         and                ecx, 0x03                                     // 0x00650b4d    83e103
                         rep movsb                                                        // 0x00650b50    f3a4
                         pop                edi                                           // 0x00650b52    5f
                         pop                esi                                           // 0x00650b53    5e
                         mov.s              eax, edx                                      // 0x00650b54    8bc2
                         pop                ebx                                           // 0x00650b56    5b
                         ret                0x0008                                        // 0x00650b57    c20800
_jmp_addr_0x00650b5a:    mov.s              eax, edx                                      // 0x00650b5a    8bc2
                         ret                0x0008                                        // 0x00650b5c    c20800
                         nop                                                              // 0x00650b5f    90
_jmp_addr_0x00650b60:    push               ecx                                           // 0x00650b60    51
                         push               ebx                                           // 0x00650b61    53
                         push               ebp                                           // 0x00650b62    55
                         push               esi                                           // 0x00650b63    56
                         mov.s              ebx, ecx                                      // 0x00650b64    8bd9
                         push               edi                                           // 0x00650b66    57
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00650b67    895c2410
                         call               ??0GameThing@@QAE@XZ                          // 0x00650b6b    e8a0eef1ff
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00650b70    8b442418
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x00650b74    8b6c241c
                         {disp8} mov        dword ptr [ebx + 0x1c], 0x00000000            // 0x00650b78    c7431c00000000
                         {disp8} mov        dword ptr [ebx + 0x18], 0x00000000            // 0x00650b7f    c7431800000000
                         mov                dword ptr [ebx], 0x008fa19c                   // 0x00650b86    c7039ca18f00
                         {disp8} mov        dword ptr [ebx + 0x14], eax                   // 0x00650b8c    894314
                         {disp8} mov        edi, dword ptr [ebp + 0x00]                   // 0x00650b8f    8b7d00
                         test               edi, edi                                      // 0x00650b92    85ff
                         {disp8} je         _jmp_addr_0x00650bdd                          // 0x00650b94    7447
_jmp_addr_0x00650b96:    {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x00650b96    8b7704
                         test               esi, esi                                      // 0x00650b99    85f6
                         {disp8} je         _jmp_addr_0x00650bd1                          // 0x00650b9b    7434
                         push               0x8                                           // 0x00650b9d    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650b9f    e84a591700
                         add                esp, 0x04                                     // 0x00650ba4    83c404
                         test               eax, eax                                      // 0x00650ba7    85c0
                         {disp8} je         _jmp_addr_0x00650bd1                          // 0x00650ba9    7426
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00650bab    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x00650bae    c70000000000
                         {disp8} mov        ecx, dword ptr [ebx + 0x18]                   // 0x00650bb4    8b4b18
                         test               ecx, ecx                                      // 0x00650bb7    85c9
                         {disp8} je         _jmp_addr_0x00650bcb                          // 0x00650bb9    7410
_jmp_addr_0x00650bbb:    mov.s              edx, ecx                                      // 0x00650bbb    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650bbd    8b09
                         test               ecx, ecx                                      // 0x00650bbf    85c9
                         {disp8} jne        _jmp_addr_0x00650bbb                          // 0x00650bc1    75f8
                         test               edx, edx                                      // 0x00650bc3    85d2
                         {disp8} je         _jmp_addr_0x00650bcb                          // 0x00650bc5    7404
                         mov                dword ptr [edx], eax                          // 0x00650bc7    8902
                         {disp8} jmp        _jmp_addr_0x00650bce                          // 0x00650bc9    eb03
_jmp_addr_0x00650bcb:    {disp8} mov        dword ptr [ebx + 0x18], eax                   // 0x00650bcb    894318
_jmp_addr_0x00650bce:    {disp8} inc        dword ptr [ebx + 0x1c]                        // 0x00650bce    ff431c
_jmp_addr_0x00650bd1:    mov                edi, dword ptr [edi]                          // 0x00650bd1    8b3f
                         test               edi, edi                                      // 0x00650bd3    85ff
                         {disp8} jne        _jmp_addr_0x00650b96                          // 0x00650bd5    75bf
                         {disp8} jmp        _jmp_addr_0x00650bdd                          // 0x00650bd7    eb04
_jmp_addr_0x00650bd9:    {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00650bd9    8b5c2410
_jmp_addr_0x00650bdd:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00650bdd    8b4500
                         test               eax, eax                                      // 0x00650be0    85c0
                         {disp8} je         _jmp_addr_0x00650c1c                          // 0x00650be2    7438
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x00650be4    8b5804
                         xor.s              edi, edi                                      // 0x00650be7    33ff
                         test               eax, eax                                      // 0x00650be9    85c0
                         {disp8} je         _jmp_addr_0x00650bd9                          // 0x00650beb    74ec
_jmp_addr_0x00650bed:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00650bed    395804
                         mov                esi, dword ptr [eax]                          // 0x00650bf0    8b30
                         {disp8} jne        _jmp_addr_0x00650c12                          // 0x00650bf2    751e
                         cmp                eax, dword ptr [ebp + 0x00]                   // 0x00650bf4    3b4500
                         {disp8} jne        _jmp_addr_0x00650bfe                          // 0x00650bf7    7505
                         {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00650bf9    897500
                         {disp8} jmp        _jmp_addr_0x00650c00                          // 0x00650bfc    eb02
_jmp_addr_0x00650bfe:    mov                dword ptr [edi], esi                          // 0x00650bfe    8937
_jmp_addr_0x00650c00:    {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x00650c00    8b5504
                         dec                edx                                           // 0x00650c03    4a
                         push               eax                                           // 0x00650c04    50
                         {disp8} mov        dword ptr [ebp + 0x04], edx                   // 0x00650c05    895504
                         call               ??3@YAXPAX@Z                                  // 0x00650c08    e88be21500
                         add                esp, 0x04                                     // 0x00650c0d    83c404
                         {disp8} jmp        _jmp_addr_0x00650c14                          // 0x00650c10    eb02
_jmp_addr_0x00650c12:    mov.s              edi, eax                                      // 0x00650c12    8bf8
_jmp_addr_0x00650c14:    test               esi, esi                                      // 0x00650c14    85f6
                         mov.s              eax, esi                                      // 0x00650c16    8bc6
                         {disp8} jne        _jmp_addr_0x00650bed                          // 0x00650c18    75d3
                         {disp8} jmp        _jmp_addr_0x00650bd9                          // 0x00650c1a    ebbd
_jmp_addr_0x00650c1c:    test               ebp, ebp                                      // 0x00650c1c    85ed
                         {disp8} je         _jmp_addr_0x00650c29                          // 0x00650c1e    7409
                         push               ebp                                           // 0x00650c20    55
                         call               ??3@YAXPAX@Z                                  // 0x00650c21    e872e21500
                         add                esp, 0x04                                     // 0x00650c26    83c404
_jmp_addr_0x00650c29:    pop                edi                                           // 0x00650c29    5f
                         pop                esi                                           // 0x00650c2a    5e
                         pop                ebp                                           // 0x00650c2b    5d
                         mov.s              eax, ebx                                      // 0x00650c2c    8bc3
                         pop                ebx                                           // 0x00650c2e    5b
                         pop                ecx                                           // 0x00650c2f    59
                         ret                0x0008                                        // 0x00650c30    c20800
                         nop                                                              // 0x00650c33    90
                         nop                                                              // 0x00650c34    90
                         nop                                                              // 0x00650c35    90
                         nop                                                              // 0x00650c36    90
                         nop                                                              // 0x00650c37    90
                         nop                                                              // 0x00650c38    90
                         nop                                                              // 0x00650c39    90
                         nop                                                              // 0x00650c3a    90
                         nop                                                              // 0x00650c3b    90
                         nop                                                              // 0x00650c3c    90
                         nop                                                              // 0x00650c3d    90
                         nop                                                              // 0x00650c3e    90
                         nop                                                              // 0x00650c3f    90
_jmp_addr_0x00650c40:    push               ebx                                           // 0x00650c40    53
                         push               ebp                                           // 0x00650c41    55
                         push               esi                                           // 0x00650c42    56
                         push               edi                                           // 0x00650c43    57
                         mov.s              edi, ecx                                      // 0x00650c44    8bf9
                         mov                dword ptr [edi], 0x008fa19c                   // 0x00650c46    c7079ca18f00
_jmp_addr_0x00650c4c:    {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x00650c4c    8b4718
                         test               eax, eax                                      // 0x00650c4f    85c0
                         {disp8} je         _jmp_addr_0x00650c99                          // 0x00650c51    7446
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x00650c53    8b5804
                         xor.s              ebp, ebp                                      // 0x00650c56    33ed
                         test               eax, eax                                      // 0x00650c58    85c0
                         {disp8} je         _jmp_addr_0x00650c8a                          // 0x00650c5a    742e
_jmp_addr_0x00650c5c:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00650c5c    395804
                         mov                esi, dword ptr [eax]                          // 0x00650c5f    8b30
                         {disp8} jne        _jmp_addr_0x00650c82                          // 0x00650c61    751f
                         cmp                eax, dword ptr [edi + 0x18]                   // 0x00650c63    3b4718
                         {disp8} jne        _jmp_addr_0x00650c6d                          // 0x00650c66    7505
                         {disp8} mov        dword ptr [edi + 0x18], esi                   // 0x00650c68    897718
                         {disp8} jmp        _jmp_addr_0x00650c70                          // 0x00650c6b    eb03
_jmp_addr_0x00650c6d:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00650c6d    897500
_jmp_addr_0x00650c70:    {disp8} mov        edx, dword ptr [edi + 0x1c]                   // 0x00650c70    8b571c
                         dec                edx                                           // 0x00650c73    4a
                         push               eax                                           // 0x00650c74    50
                         {disp8} mov        dword ptr [edi + 0x1c], edx                   // 0x00650c75    89571c
                         call               ??3@YAXPAX@Z                                  // 0x00650c78    e81be21500
                         add                esp, 0x04                                     // 0x00650c7d    83c404
                         {disp8} jmp        _jmp_addr_0x00650c84                          // 0x00650c80    eb02
_jmp_addr_0x00650c82:    mov.s              ebp, eax                                      // 0x00650c82    8be8
_jmp_addr_0x00650c84:    test               esi, esi                                      // 0x00650c84    85f6
                         mov.s              eax, esi                                      // 0x00650c86    8bc6
                         {disp8} jne        _jmp_addr_0x00650c5c                          // 0x00650c88    75d2
_jmp_addr_0x00650c8a:    test               ebx, ebx                                      // 0x00650c8a    85db
                         {disp8} je         _jmp_addr_0x00650c4c                          // 0x00650c8c    74be
                         mov                eax, dword ptr [ebx]                          // 0x00650c8e    8b03
                         push               0x1                                           // 0x00650c90    6a01
                         mov.s              ecx, ebx                                      // 0x00650c92    8bcb
                         call               dword ptr [eax + 4]                           // 0x00650c94    ff5004
                         {disp8} jmp        _jmp_addr_0x00650c4c                          // 0x00650c97    ebb3
_jmp_addr_0x00650c99:    mov.s              ecx, edi                                      // 0x00650c99    8bcf
                         call               _jmp_addr_0x0056fa80                          // 0x00650c9b    e8e0edf1ff
                         pop                edi                                           // 0x00650ca0    5f
                         pop                esi                                           // 0x00650ca1    5e
                         pop                ebp                                           // 0x00650ca2    5d
                         pop                ebx                                           // 0x00650ca3    5b
                         ret                                                              // 0x00650ca4    c3
                         nop                                                              // 0x00650ca5    90
                         nop                                                              // 0x00650ca6    90
                         nop                                                              // 0x00650ca7    90
                         nop                                                              // 0x00650ca8    90
                         nop                                                              // 0x00650ca9    90
                         nop                                                              // 0x00650caa    90
                         nop                                                              // 0x00650cab    90
                         nop                                                              // 0x00650cac    90
                         nop                                                              // 0x00650cad    90
                         nop                                                              // 0x00650cae    90
                         nop                                                              // 0x00650caf    90
_jmp_addr_0x00650cb0:    push               esi                                           // 0x00650cb0    56
                         mov.s              esi, ecx                                      // 0x00650cb1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00650cb3    8b4614
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00650cb6    8d04c0
                         shl                eax, 4                                        // 0x00650cb9    c1e004
                         push               edi                                           // 0x00650cbc    57
                         add                eax, 0x00bff240                               // 0x00650cbd    0540f2bf00
                         push               eax                                           // 0x00650cc2    50
                         push               0x00c009fc                                    // 0x00650cc3    68fc09c000
                         push               0x00d47b30                                    // 0x00650cc8    68307bd400
                         call               _sprintf                                      // 0x00650ccd    e8004b1700
                         {disp8} mov        esi, dword ptr [esi + 0x18]                   // 0x00650cd2    8b7618
                         add                esp, 0x0c                                     // 0x00650cd5    83c40c
                         test               esi, esi                                      // 0x00650cd8    85f6
                         {disp8} je         _jmp_addr_0x00650d37                          // 0x00650cda    745b
_jmp_addr_0x00650cdc:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00650cdc    8b4e04
                         call               _jmp_addr_0x00651620                          // 0x00650cdf    e83c090000
                         push               eax                                           // 0x00650ce4    50
                         or                 ecx, 0xffffffff                               // 0x00650ce5    83c9ff
                         xor.s              eax, eax                                      // 0x00650ce8    33c0
                         mov                edi, 0x00d47b30                               // 0x00650cea    bf307bd400
                         repne scasb                                                      // 0x00650cef    f2ae
                         not                ecx                                           // 0x00650cf1    f7d1
                         dec                ecx                                           // 0x00650cf3    49
                         add                ecx, 0x00d47b30                               // 0x00650cf4    81c1307bd400
                         push               0x009c8c40                                    // 0x00650cfa    68408c9c00
                         push               ecx                                           // 0x00650cff    51
                         call               _sprintf                                      // 0x00650d00    e8cd4a1700
                         mov                eax, dword ptr [esi]                          // 0x00650d05    8b06
                         add                esp, 0x0c                                     // 0x00650d07    83c40c
                         test               eax, eax                                      // 0x00650d0a    85c0
                         {disp8} je         _jmp_addr_0x00650d31                          // 0x00650d0c    7423
                         or                 ecx, 0xffffffff                               // 0x00650d0e    83c9ff
                         xor.s              eax, eax                                      // 0x00650d11    33c0
                         mov                edi, 0x00d47b30                               // 0x00650d13    bf307bd400
                         repne scasb                                                      // 0x00650d18    f2ae
                         not                ecx                                           // 0x00650d1a    f7d1
                         dec                ecx                                           // 0x00650d1c    49
                         add                ecx, 0x00d47b30                               // 0x00650d1d    81c1307bd400
                         push               0x009cdff4                                    // 0x00650d23    68f4df9c00
                         push               ecx                                           // 0x00650d28    51
                         call               _sprintf                                      // 0x00650d29    e8a44a1700
                         add                esp, 0x08                                     // 0x00650d2e    83c408
_jmp_addr_0x00650d31:    mov                esi, dword ptr [esi]                          // 0x00650d31    8b36
                         test               esi, esi                                      // 0x00650d33    85f6
                         {disp8} jne        _jmp_addr_0x00650cdc                          // 0x00650d35    75a5
_jmp_addr_0x00650d37:    or                 ecx, 0xffffffff                               // 0x00650d37    83c9ff
                         xor.s              eax, eax                                      // 0x00650d3a    33c0
                         mov                edi, 0x00d47b30                               // 0x00650d3c    bf307bd400
                         repne scasb                                                      // 0x00650d41    f2ae
                         not                ecx                                           // 0x00650d43    f7d1
                         dec                ecx                                           // 0x00650d45    49
                         add                ecx, 0x00d47b30                               // 0x00650d46    81c1307bd400
                         push               0x00c009f8                                    // 0x00650d4c    68f809c000
                         push               ecx                                           // 0x00650d51    51
                         call               _sprintf                                      // 0x00650d52    e87b4a1700
                         add                esp, 0x08                                     // 0x00650d57    83c408
                         pop                edi                                           // 0x00650d5a    5f
                         mov                eax, 0x00d47b30                               // 0x00650d5b    b8307bd400
                         pop                esi                                           // 0x00650d60    5e
                         ret                                                              // 0x00650d61    c3
                         nop                                                              // 0x00650d62    90
                         nop                                                              // 0x00650d63    90
                         nop                                                              // 0x00650d64    90
                         nop                                                              // 0x00650d65    90
                         nop                                                              // 0x00650d66    90
                         nop                                                              // 0x00650d67    90
                         nop                                                              // 0x00650d68    90
                         nop                                                              // 0x00650d69    90
                         nop                                                              // 0x00650d6a    90
                         nop                                                              // 0x00650d6b    90
                         nop                                                              // 0x00650d6c    90
                         nop                                                              // 0x00650d6d    90
                         nop                                                              // 0x00650d6e    90
                         nop                                                              // 0x00650d6f    90
_jmp_addr_0x00650d70:    push               esi                                           // 0x00650d70    56
                         push               edi                                           // 0x00650d71    57
                         push               0x000001b0                                    // 0x00650d72    68b0010000
                         push               0x00c009d4                                    // 0x00650d77    68d409c000
                         push               0x8                                           // 0x00650d7c    6a08
                         call               ___nw__FUl                                    // 0x00650d7e    e80daa1800
                         add                esp, 0x0c                                     // 0x00650d83    83c40c
                         test               eax, eax                                      // 0x00650d86    85c0
                         {disp8} je         _jmp_addr_0x00650d9b                          // 0x00650d88    7411
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x00650d8a    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x00650d91    c70000000000
                         mov.s              esi, eax                                      // 0x00650d97    8bf0
                         {disp8} jmp        _jmp_addr_0x00650d9d                          // 0x00650d99    eb02
_jmp_addr_0x00650d9b:    xor.s              esi, esi                                      // 0x00650d9b    33f6
_jmp_addr_0x00650d9d:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00650d9d    8b7c240c
                         test               edi, edi                                      // 0x00650da1    85ff
                         {disp8} je         _jmp_addr_0x00650ddd                          // 0x00650da3    7438
                         push               0x8                                           // 0x00650da5    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650da7    e842571700
                         add                esp, 0x04                                     // 0x00650dac    83c404
                         test               eax, eax                                      // 0x00650daf    85c0
                         {disp8} je         _jmp_addr_0x00650ddd                          // 0x00650db1    742a
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00650db3    897804
                         mov                dword ptr [eax], 0x00000000                   // 0x00650db6    c70000000000
                         mov                ecx, dword ptr [esi]                          // 0x00650dbc    8b0e
                         test               ecx, ecx                                      // 0x00650dbe    85c9
                         {disp8} je         _jmp_addr_0x00650dd8                          // 0x00650dc0    7416
_jmp_addr_0x00650dc2:    mov.s              edx, ecx                                      // 0x00650dc2    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650dc4    8b09
                         test               ecx, ecx                                      // 0x00650dc6    85c9
                         {disp8} jne        _jmp_addr_0x00650dc2                          // 0x00650dc8    75f8
                         test               edx, edx                                      // 0x00650dca    85d2
                         {disp8} je         _jmp_addr_0x00650dd8                          // 0x00650dcc    740a
                         mov                dword ptr [edx], eax                          // 0x00650dce    8902
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650dd0    ff4604
                         pop                edi                                           // 0x00650dd3    5f
                         mov.s              eax, esi                                      // 0x00650dd4    8bc6
                         pop                esi                                           // 0x00650dd6    5e
                         ret                                                              // 0x00650dd7    c3
_jmp_addr_0x00650dd8:    mov                dword ptr [esi], eax                          // 0x00650dd8    8906
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650dda    ff4604
_jmp_addr_0x00650ddd:    pop                edi                                           // 0x00650ddd    5f
                         mov.s              eax, esi                                      // 0x00650dde    8bc6
                         pop                esi                                           // 0x00650de0    5e
                         ret                                                              // 0x00650de1    c3
                         nop                                                              // 0x00650de2    90
                         nop                                                              // 0x00650de3    90
                         nop                                                              // 0x00650de4    90
                         nop                                                              // 0x00650de5    90
                         nop                                                              // 0x00650de6    90
                         nop                                                              // 0x00650de7    90
                         nop                                                              // 0x00650de8    90
                         nop                                                              // 0x00650de9    90
                         nop                                                              // 0x00650dea    90
                         nop                                                              // 0x00650deb    90
                         nop                                                              // 0x00650dec    90
                         nop                                                              // 0x00650ded    90
                         nop                                                              // 0x00650dee    90
                         nop                                                              // 0x00650def    90
_jmp_addr_0x00650df0:    push               esi                                           // 0x00650df0    56
                         push               edi                                           // 0x00650df1    57
                         push               0x000001b7                                    // 0x00650df2    68b7010000
                         push               0x00c009d4                                    // 0x00650df7    68d409c000
                         push               0x8                                           // 0x00650dfc    6a08
                         call               ___nw__FUl                                    // 0x00650dfe    e88da91800
                         add                esp, 0x0c                                     // 0x00650e03    83c40c
                         test               eax, eax                                      // 0x00650e06    85c0
                         {disp8} je         _jmp_addr_0x00650e1b                          // 0x00650e08    7411
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x00650e0a    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x00650e11    c70000000000
                         mov.s              esi, eax                                      // 0x00650e17    8bf0
                         {disp8} jmp        _jmp_addr_0x00650e1d                          // 0x00650e19    eb02
_jmp_addr_0x00650e1b:    xor.s              esi, esi                                      // 0x00650e1b    33f6
_jmp_addr_0x00650e1d:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00650e1d    8b7c240c
                         test               edi, edi                                      // 0x00650e21    85ff
                         {disp8} je         _jmp_addr_0x00650e57                          // 0x00650e23    7432
                         push               0x8                                           // 0x00650e25    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650e27    e8c2561700
                         add                esp, 0x04                                     // 0x00650e2c    83c404
                         test               eax, eax                                      // 0x00650e2f    85c0
                         {disp8} je         _jmp_addr_0x00650e57                          // 0x00650e31    7424
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00650e33    897804
                         mov                dword ptr [eax], 0x00000000                   // 0x00650e36    c70000000000
                         mov                ecx, dword ptr [esi]                          // 0x00650e3c    8b0e
                         test               ecx, ecx                                      // 0x00650e3e    85c9
                         {disp8} je         _jmp_addr_0x00650e52                          // 0x00650e40    7410
_jmp_addr_0x00650e42:    mov.s              edx, ecx                                      // 0x00650e42    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650e44    8b09
                         test               ecx, ecx                                      // 0x00650e46    85c9
                         {disp8} jne        _jmp_addr_0x00650e42                          // 0x00650e48    75f8
                         test               edx, edx                                      // 0x00650e4a    85d2
                         {disp8} je         _jmp_addr_0x00650e52                          // 0x00650e4c    7404
                         mov                dword ptr [edx], eax                          // 0x00650e4e    8902
                         {disp8} jmp        _jmp_addr_0x00650e54                          // 0x00650e50    eb02
_jmp_addr_0x00650e52:    mov                dword ptr [esi], eax                          // 0x00650e52    8906
_jmp_addr_0x00650e54:    {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650e54    ff4604
_jmp_addr_0x00650e57:    {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00650e57    8b7c2410
                         test               edi, edi                                      // 0x00650e5b    85ff
                         {disp8} je         _jmp_addr_0x00650e97                          // 0x00650e5d    7438
                         push               0x8                                           // 0x00650e5f    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650e61    e888561700
                         add                esp, 0x04                                     // 0x00650e66    83c404
                         test               eax, eax                                      // 0x00650e69    85c0
                         {disp8} je         _jmp_addr_0x00650e97                          // 0x00650e6b    742a
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00650e6d    897804
                         mov                dword ptr [eax], 0x00000000                   // 0x00650e70    c70000000000
                         mov                ecx, dword ptr [esi]                          // 0x00650e76    8b0e
                         test               ecx, ecx                                      // 0x00650e78    85c9
                         {disp8} je         _jmp_addr_0x00650e92                          // 0x00650e7a    7416
_jmp_addr_0x00650e7c:    mov.s              edx, ecx                                      // 0x00650e7c    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650e7e    8b09
                         test               ecx, ecx                                      // 0x00650e80    85c9
                         {disp8} jne        _jmp_addr_0x00650e7c                          // 0x00650e82    75f8
                         test               edx, edx                                      // 0x00650e84    85d2
                         {disp8} je         _jmp_addr_0x00650e92                          // 0x00650e86    740a
                         mov                dword ptr [edx], eax                          // 0x00650e88    8902
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650e8a    ff4604
                         pop                edi                                           // 0x00650e8d    5f
                         mov.s              eax, esi                                      // 0x00650e8e    8bc6
                         pop                esi                                           // 0x00650e90    5e
                         ret                                                              // 0x00650e91    c3
_jmp_addr_0x00650e92:    mov                dword ptr [esi], eax                          // 0x00650e92    8906
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650e94    ff4604
_jmp_addr_0x00650e97:    pop                edi                                           // 0x00650e97    5f
                         mov.s              eax, esi                                      // 0x00650e98    8bc6
                         pop                esi                                           // 0x00650e9a    5e
                         ret                                                              // 0x00650e9b    c3
                         nop                                                              // 0x00650e9c    90
                         nop                                                              // 0x00650e9d    90
                         nop                                                              // 0x00650e9e    90
                         nop                                                              // 0x00650e9f    90
_jmp_addr_0x00650ea0:    push               esi                                           // 0x00650ea0    56
                         push               edi                                           // 0x00650ea1    57
                         push               0x000001bf                                    // 0x00650ea2    68bf010000
                         push               0x00c009d4                                    // 0x00650ea7    68d409c000
                         push               0x8                                           // 0x00650eac    6a08
                         call               ___nw__FUl                                    // 0x00650eae    e8dda81800
                         add                esp, 0x0c                                     // 0x00650eb3    83c40c
                         test               eax, eax                                      // 0x00650eb6    85c0
                         {disp8} je         _jmp_addr_0x00650ecb                          // 0x00650eb8    7411
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x00650eba    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x00650ec1    c70000000000
                         mov.s              esi, eax                                      // 0x00650ec7    8bf0
                         {disp8} jmp        _jmp_addr_0x00650ecd                          // 0x00650ec9    eb02
_jmp_addr_0x00650ecb:    xor.s              esi, esi                                      // 0x00650ecb    33f6
_jmp_addr_0x00650ecd:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00650ecd    8b7c240c
                         test               edi, edi                                      // 0x00650ed1    85ff
                         {disp8} je         _jmp_addr_0x00650f07                          // 0x00650ed3    7432
                         push               0x8                                           // 0x00650ed5    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650ed7    e812561700
                         add                esp, 0x04                                     // 0x00650edc    83c404
                         test               eax, eax                                      // 0x00650edf    85c0
                         {disp8} je         _jmp_addr_0x00650f07                          // 0x00650ee1    7424
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00650ee3    897804
                         mov                dword ptr [eax], 0x00000000                   // 0x00650ee6    c70000000000
                         mov                ecx, dword ptr [esi]                          // 0x00650eec    8b0e
                         test               ecx, ecx                                      // 0x00650eee    85c9
                         {disp8} je         _jmp_addr_0x00650f02                          // 0x00650ef0    7410
_jmp_addr_0x00650ef2:    mov.s              edx, ecx                                      // 0x00650ef2    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650ef4    8b09
                         test               ecx, ecx                                      // 0x00650ef6    85c9
                         {disp8} jne        _jmp_addr_0x00650ef2                          // 0x00650ef8    75f8
                         test               edx, edx                                      // 0x00650efa    85d2
                         {disp8} je         _jmp_addr_0x00650f02                          // 0x00650efc    7404
                         mov                dword ptr [edx], eax                          // 0x00650efe    8902
                         {disp8} jmp        _jmp_addr_0x00650f04                          // 0x00650f00    eb02
_jmp_addr_0x00650f02:    mov                dword ptr [esi], eax                          // 0x00650f02    8906
_jmp_addr_0x00650f04:    {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650f04    ff4604
_jmp_addr_0x00650f07:    {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00650f07    8b7c2410
                         test               edi, edi                                      // 0x00650f0b    85ff
                         {disp8} je         _jmp_addr_0x00650f41                          // 0x00650f0d    7432
                         push               0x8                                           // 0x00650f0f    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650f11    e8d8551700
                         add                esp, 0x04                                     // 0x00650f16    83c404
                         test               eax, eax                                      // 0x00650f19    85c0
                         {disp8} je         _jmp_addr_0x00650f41                          // 0x00650f1b    7424
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00650f1d    897804
                         mov                dword ptr [eax], 0x00000000                   // 0x00650f20    c70000000000
                         mov                ecx, dword ptr [esi]                          // 0x00650f26    8b0e
                         test               ecx, ecx                                      // 0x00650f28    85c9
                         {disp8} je         _jmp_addr_0x00650f3c                          // 0x00650f2a    7410
_jmp_addr_0x00650f2c:    mov.s              edx, ecx                                      // 0x00650f2c    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650f2e    8b09
                         test               ecx, ecx                                      // 0x00650f30    85c9
                         {disp8} jne        _jmp_addr_0x00650f2c                          // 0x00650f32    75f8
                         test               edx, edx                                      // 0x00650f34    85d2
                         {disp8} je         _jmp_addr_0x00650f3c                          // 0x00650f36    7404
                         mov                dword ptr [edx], eax                          // 0x00650f38    8902
                         {disp8} jmp        _jmp_addr_0x00650f3e                          // 0x00650f3a    eb02
_jmp_addr_0x00650f3c:    mov                dword ptr [esi], eax                          // 0x00650f3c    8906
_jmp_addr_0x00650f3e:    {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650f3e    ff4604
_jmp_addr_0x00650f41:    {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00650f41    8b7c2414
                         test               edi, edi                                      // 0x00650f45    85ff
                         {disp8} je         _jmp_addr_0x00650f81                          // 0x00650f47    7438
                         push               0x8                                           // 0x00650f49    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650f4b    e89e551700
                         add                esp, 0x04                                     // 0x00650f50    83c404
                         test               eax, eax                                      // 0x00650f53    85c0
                         {disp8} je         _jmp_addr_0x00650f81                          // 0x00650f55    742a
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00650f57    897804
                         mov                dword ptr [eax], 0x00000000                   // 0x00650f5a    c70000000000
                         mov                ecx, dword ptr [esi]                          // 0x00650f60    8b0e
                         test               ecx, ecx                                      // 0x00650f62    85c9
                         {disp8} je         _jmp_addr_0x00650f7c                          // 0x00650f64    7416
_jmp_addr_0x00650f66:    mov.s              edx, ecx                                      // 0x00650f66    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650f68    8b09
                         test               ecx, ecx                                      // 0x00650f6a    85c9
                         {disp8} jne        _jmp_addr_0x00650f66                          // 0x00650f6c    75f8
                         test               edx, edx                                      // 0x00650f6e    85d2
                         {disp8} je         _jmp_addr_0x00650f7c                          // 0x00650f70    740a
                         mov                dword ptr [edx], eax                          // 0x00650f72    8902
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650f74    ff4604
                         pop                edi                                           // 0x00650f77    5f
                         mov.s              eax, esi                                      // 0x00650f78    8bc6
                         pop                esi                                           // 0x00650f7a    5e
                         ret                                                              // 0x00650f7b    c3
_jmp_addr_0x00650f7c:    mov                dword ptr [esi], eax                          // 0x00650f7c    8906
                         {disp8} inc        dword ptr [esi + 0x04]                        // 0x00650f7e    ff4604
_jmp_addr_0x00650f81:    pop                edi                                           // 0x00650f81    5f
                         mov.s              eax, esi                                      // 0x00650f82    8bc6
                         pop                esi                                           // 0x00650f84    5e
                         ret                                                              // 0x00650f85    c3
                         nop                                                              // 0x00650f86    90
                         nop                                                              // 0x00650f87    90
                         nop                                                              // 0x00650f88    90
                         nop                                                              // 0x00650f89    90
                         nop                                                              // 0x00650f8a    90
                         nop                                                              // 0x00650f8b    90
                         nop                                                              // 0x00650f8c    90
                         nop                                                              // 0x00650f8d    90
                         nop                                                              // 0x00650f8e    90
                         nop                                                              // 0x00650f8f    90
_jmp_addr_0x00650f90:    push               ebx                                           // 0x00650f90    53
                         push               esi                                           // 0x00650f91    56
                         push               edi                                           // 0x00650f92    57
                         push               0x000001c8                                    // 0x00650f93    68c8010000
                         push               0x00c009d4                                    // 0x00650f98    68d409c000
                         push               0x8                                           // 0x00650f9d    6a08
                         call               ___nw__FUl                                    // 0x00650f9f    e8eca71800
                         add                esp, 0x0c                                     // 0x00650fa4    83c40c
                         test               eax, eax                                      // 0x00650fa7    85c0
                         {disp8} je         _jmp_addr_0x00650fbc                          // 0x00650fa9    7411
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x00650fab    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x00650fb2    c70000000000
                         mov.s              edi, eax                                      // 0x00650fb8    8bf8
                         {disp8} jmp        _jmp_addr_0x00650fbe                          // 0x00650fba    eb02
_jmp_addr_0x00650fbc:    xor.s              edi, edi                                      // 0x00650fbc    33ff
_jmp_addr_0x00650fbe:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00650fbe    8b742410
                         test               esi, esi                                      // 0x00650fc2    85f6
                         {disp8} je         _jmp_addr_0x00650ff8                          // 0x00650fc4    7432
                         push               0x8                                           // 0x00650fc6    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00650fc8    e821551700
                         add                esp, 0x04                                     // 0x00650fcd    83c404
                         test               eax, eax                                      // 0x00650fd0    85c0
                         {disp8} je         _jmp_addr_0x00650ff8                          // 0x00650fd2    7424
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00650fd4    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x00650fd7    c70000000000
                         mov                ecx, dword ptr [edi]                          // 0x00650fdd    8b0f
                         test               ecx, ecx                                      // 0x00650fdf    85c9
                         {disp8} je         _jmp_addr_0x00650ff3                          // 0x00650fe1    7410
_jmp_addr_0x00650fe3:    mov.s              edx, ecx                                      // 0x00650fe3    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00650fe5    8b09
                         test               ecx, ecx                                      // 0x00650fe7    85c9
                         {disp8} jne        _jmp_addr_0x00650fe3                          // 0x00650fe9    75f8
                         test               edx, edx                                      // 0x00650feb    85d2
                         {disp8} je         _jmp_addr_0x00650ff3                          // 0x00650fed    7404
                         mov                dword ptr [edx], eax                          // 0x00650fef    8902
                         {disp8} jmp        _jmp_addr_0x00650ff5                          // 0x00650ff1    eb02
_jmp_addr_0x00650ff3:    mov                dword ptr [edi], eax                          // 0x00650ff3    8907
_jmp_addr_0x00650ff5:    {disp8} inc        dword ptr [edi + 0x04]                        // 0x00650ff5    ff4704
_jmp_addr_0x00650ff8:    {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00650ff8    8b742414
                         test               esi, esi                                      // 0x00650ffc    85f6
                         {disp8} je         _jmp_addr_0x00651032                          // 0x00650ffe    7432
                         push               0x8                                           // 0x00651000    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00651002    e8e7541700
                         add                esp, 0x04                                     // 0x00651007    83c404
                         test               eax, eax                                      // 0x0065100a    85c0
                         {disp8} je         _jmp_addr_0x00651032                          // 0x0065100c    7424
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0065100e    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x00651011    c70000000000
                         mov                ecx, dword ptr [edi]                          // 0x00651017    8b0f
                         test               ecx, ecx                                      // 0x00651019    85c9
                         {disp8} je         _jmp_addr_0x0065102d                          // 0x0065101b    7410
_jmp_addr_0x0065101d:    mov.s              edx, ecx                                      // 0x0065101d    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x0065101f    8b09
                         test               ecx, ecx                                      // 0x00651021    85c9
                         {disp8} jne        _jmp_addr_0x0065101d                          // 0x00651023    75f8
                         test               edx, edx                                      // 0x00651025    85d2
                         {disp8} je         _jmp_addr_0x0065102d                          // 0x00651027    7404
                         mov                dword ptr [edx], eax                          // 0x00651029    8902
                         {disp8} jmp        _jmp_addr_0x0065102f                          // 0x0065102b    eb02
_jmp_addr_0x0065102d:    mov                dword ptr [edi], eax                          // 0x0065102d    8907
_jmp_addr_0x0065102f:    {disp8} inc        dword ptr [edi + 0x04]                        // 0x0065102f    ff4704
_jmp_addr_0x00651032:    {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00651032    8b742418
                         test               esi, esi                                      // 0x00651036    85f6
                         {disp8} je         _jmp_addr_0x0065106c                          // 0x00651038    7432
                         push               0x8                                           // 0x0065103a    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0065103c    e8ad541700
                         add                esp, 0x04                                     // 0x00651041    83c404
                         test               eax, eax                                      // 0x00651044    85c0
                         {disp8} je         _jmp_addr_0x0065106c                          // 0x00651046    7424
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00651048    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x0065104b    c70000000000
                         mov                ecx, dword ptr [edi]                          // 0x00651051    8b0f
                         test               ecx, ecx                                      // 0x00651053    85c9
                         {disp8} je         _jmp_addr_0x00651067                          // 0x00651055    7410
_jmp_addr_0x00651057:    mov.s              edx, ecx                                      // 0x00651057    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00651059    8b09
                         test               ecx, ecx                                      // 0x0065105b    85c9
                         {disp8} jne        _jmp_addr_0x00651057                          // 0x0065105d    75f8
                         test               edx, edx                                      // 0x0065105f    85d2
                         {disp8} je         _jmp_addr_0x00651067                          // 0x00651061    7404
                         mov                dword ptr [edx], eax                          // 0x00651063    8902
                         {disp8} jmp        _jmp_addr_0x00651069                          // 0x00651065    eb02
_jmp_addr_0x00651067:    mov                dword ptr [edi], eax                          // 0x00651067    8907
_jmp_addr_0x00651069:    {disp8} inc        dword ptr [edi + 0x04]                        // 0x00651069    ff4704
_jmp_addr_0x0065106c:    {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0065106c    8b5c241c
                         test               ebx, ebx                                      // 0x00651070    85db
                         {disp8} je         _jmp_addr_0x006510ac                          // 0x00651072    7438
                         push               0x8                                           // 0x00651074    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00651076    e873541700
                         mov.s              esi, eax                                      // 0x0065107b    8bf0
                         add                esp, 0x04                                     // 0x0065107d    83c404
                         test               esi, esi                                      // 0x00651080    85f6
                         {disp8} je         _jmp_addr_0x006510ac                          // 0x00651082    7428
                         mov.s              ecx, edi                                      // 0x00651084    8bcf
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x00651086    895e04
                         mov                dword ptr [esi], 0x00000000                   // 0x00651089    c70600000000
                         call               _jmp_addr_0x006524b0                          // 0x0065108f    e81c140000
                         test               eax, eax                                      // 0x00651094    85c0
                         {disp8} je         _jmp_addr_0x006510a3                          // 0x00651096    740b
                         mov                dword ptr [eax], esi                          // 0x00651098    8930
                         {disp8} inc        dword ptr [edi + 0x04]                        // 0x0065109a    ff4704
                         mov.s              eax, edi                                      // 0x0065109d    8bc7
                         pop                edi                                           // 0x0065109f    5f
                         pop                esi                                           // 0x006510a0    5e
                         pop                ebx                                           // 0x006510a1    5b
                         ret                                                              // 0x006510a2    c3
_jmp_addr_0x006510a3:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x006510a3    8b4704
                         inc                eax                                           // 0x006510a6    40
                         mov                dword ptr [edi], esi                          // 0x006510a7    8937
                         {disp8} mov        dword ptr [edi + 0x04], eax                   // 0x006510a9    894704
_jmp_addr_0x006510ac:    mov.s              eax, edi                                      // 0x006510ac    8bc7
                         pop                edi                                           // 0x006510ae    5f
                         pop                esi                                           // 0x006510af    5e
                         pop                ebx                                           // 0x006510b0    5b
                         ret                                                              // 0x006510b1    c3
                         nop                                                              // 0x006510b2    90
                         nop                                                              // 0x006510b3    90
                         nop                                                              // 0x006510b4    90
                         nop                                                              // 0x006510b5    90
                         nop                                                              // 0x006510b6    90
                         nop                                                              // 0x006510b7    90
                         nop                                                              // 0x006510b8    90
                         nop                                                              // 0x006510b9    90
                         nop                                                              // 0x006510ba    90
                         nop                                                              // 0x006510bb    90
                         nop                                                              // 0x006510bc    90
                         nop                                                              // 0x006510bd    90
                         nop                                                              // 0x006510be    90
                         nop                                                              // 0x006510bf    90
_jmp_addr_0x006510c0:    push               0x000001d2                                    // 0x006510c0    68d2010000
                         push               0x00c009d4                                    // 0x006510c5    68d409c000
                         push               0x8                                           // 0x006510ca    6a08
                         call               ___nw__FUl                                    // 0x006510cc    e8bfa61800
                         add                esp, 0x0c                                     // 0x006510d1    83c40c
                         test               eax, eax                                      // 0x006510d4    85c0
                         {disp8} je         _jmp_addr_0x006510e6                          // 0x006510d6    740e
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x006510d8    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x006510df    c70000000000
                         ret                                                              // 0x006510e5    c3
_jmp_addr_0x006510e6:    xor.s              eax, eax                                      // 0x006510e6    33c0
                         ret                                                              // 0x006510e8    c3
                         nop                                                              // 0x006510e9    90
                         nop                                                              // 0x006510ea    90
                         nop                                                              // 0x006510eb    90
                         nop                                                              // 0x006510ec    90
                         nop                                                              // 0x006510ed    90
                         nop                                                              // 0x006510ee    90
                         nop                                                              // 0x006510ef    90
_jmp_addr_0x006510f0:    push               esi                                           // 0x006510f0    56
                         mov.s              esi, ecx                                      // 0x006510f1    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x006510f3    e818e9f1ff
                         mov.s              ecx, esi                                      // 0x006510f8    8bce
                         mov                dword ptr [esi], 0x008fa09c                   // 0x006510fa    c7069ca08f00
                         call               _jmp_addr_0x00651240                          // 0x00651100    e83b010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00651105    8b442408
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00651109    894618
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000000            // 0x0065110c    c7461400000000
                         mov.s              eax, esi                                      // 0x00651113    8bc6
                         pop                esi                                           // 0x00651115    5e
                         ret                0x0004                                        // 0x00651116    c20400
                         nop                                                              // 0x00651119    90
                         nop                                                              // 0x0065111a    90
                         nop                                                              // 0x0065111b    90
                         nop                                                              // 0x0065111c    90
                         nop                                                              // 0x0065111d    90
                         nop                                                              // 0x0065111e    90
                         nop                                                              // 0x0065111f    90
_jmp_addr_0x00651120:    push               esi                                           // 0x00651120    56
                         mov.s              esi, ecx                                      // 0x00651121    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x00651123    e8e8e8f1ff
                         mov.s              ecx, esi                                      // 0x00651128    8bce
                         mov                dword ptr [esi], 0x008fa09c                   // 0x0065112a    c7069ca08f00
                         call               _jmp_addr_0x00651240                          // 0x00651130    e80b010000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00651135    8b4c2408
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000001            // 0x00651139    c7461401000000
                         mov                edx, dword ptr [ecx]                          // 0x00651140    8b11
                         {disp8} lea        eax, dword ptr [esi + 0x68]                   // 0x00651142    8d4668
                         mov                dword ptr [eax], edx                          // 0x00651145    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00651147    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0065114a    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0065114d    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00651150    894808
                         mov.s              eax, esi                                      // 0x00651153    8bc6
                         pop                esi                                           // 0x00651155    5e
                         ret                0x0004                                        // 0x00651156    c20400
                         nop                                                              // 0x00651159    90
                         nop                                                              // 0x0065115a    90
                         nop                                                              // 0x0065115b    90
                         nop                                                              // 0x0065115c    90
                         nop                                                              // 0x0065115d    90
                         nop                                                              // 0x0065115e    90
                         nop                                                              // 0x0065115f    90
                         push               ebx                                           // 0x00651160    53
                         push               esi                                           // 0x00651161    56
                         push               edi                                           // 0x00651162    57
                         mov.s              ebx, ecx                                      // 0x00651163    8bd9
                         call               ??0GameThing@@QAE@XZ                          // 0x00651165    e8a6e8f1ff
                         mov.s              ecx, ebx                                      // 0x0065116a    8bcb
                         mov                dword ptr [ebx], 0x008fa09c                   // 0x0065116c    c7039ca08f00
                         call               _jmp_addr_0x00651240                          // 0x00651172    e8c9000000
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00651177    8b7c2410
                         or                 ecx, 0xffffffff                               // 0x0065117b    83c9ff
                         {disp8} mov        dword ptr [ebx + 0x14], 0x00000002            // 0x0065117e    c7431402000000
                         xor.s              eax, eax                                      // 0x00651185    33c0
                         repne scasb                                                      // 0x00651187    f2ae
                         not                ecx                                           // 0x00651189    f7d1
                         sub.s              edi, ecx                                      // 0x0065118b    2bf9
                         mov.s              eax, ecx                                      // 0x0065118d    8bc1
                         mov.s              esi, edi                                      // 0x0065118f    8bf7
                         {disp8} lea        edx, dword ptr [ebx + 0x1c]                   // 0x00651191    8d531c
                         shr                ecx, 2                                        // 0x00651194    c1e902
                         mov.s              edi, edx                                      // 0x00651197    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00651199    f3a5
                         mov.s              ecx, eax                                      // 0x0065119b    8bc8
                         and                ecx, 0x03                                     // 0x0065119d    83e103
                         rep movsb                                                        // 0x006511a0    f3a4
                         pop                edi                                           // 0x006511a2    5f
                         pop                esi                                           // 0x006511a3    5e
                         mov.s              eax, ebx                                      // 0x006511a4    8bc3
                         pop                ebx                                           // 0x006511a6    5b
                         ret                0x0004                                        // 0x006511a7    c20400
                         nop                                                              // 0x006511aa    90
                         nop                                                              // 0x006511ab    90
                         nop                                                              // 0x006511ac    90
                         nop                                                              // 0x006511ad    90
                         nop                                                              // 0x006511ae    90
                         nop                                                              // 0x006511af    90
_jmp_addr_0x006511b0:    push               esi                                           // 0x006511b0    56
                         mov.s              esi, ecx                                      // 0x006511b1    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x006511b3    e858e8f1ff
                         mov.s              ecx, esi                                      // 0x006511b8    8bce
                         mov                dword ptr [esi], 0x008fa09c                   // 0x006511ba    c7069ca08f00
                         call               _jmp_addr_0x00651240                          // 0x006511c0    e87b000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006511c5    8b442408
                         {disp8} mov        dword ptr [esi + 0x5c], eax                   // 0x006511c9    89465c
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000003            // 0x006511cc    c7461403000000
                         mov.s              eax, esi                                      // 0x006511d3    8bc6
                         pop                esi                                           // 0x006511d5    5e
                         ret                0x0004                                        // 0x006511d6    c20400
                         nop                                                              // 0x006511d9    90
                         nop                                                              // 0x006511da    90
                         nop                                                              // 0x006511db    90
                         nop                                                              // 0x006511dc    90
                         nop                                                              // 0x006511dd    90
                         nop                                                              // 0x006511de    90
                         nop                                                              // 0x006511df    90
                         push               esi                                           // 0x006511e0    56
                         mov.s              esi, ecx                                      // 0x006511e1    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x006511e3    e828e8f1ff
                         mov.s              ecx, esi                                      // 0x006511e8    8bce
                         mov                dword ptr [esi], 0x008fa09c                   // 0x006511ea    c7069ca08f00
                         call               _jmp_addr_0x00651240                          // 0x006511f0    e84b000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006511f5    8b442408
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x006511f9    894660
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000004            // 0x006511fc    c7461404000000
                         mov.s              eax, esi                                      // 0x00651203    8bc6
                         pop                esi                                           // 0x00651205    5e
                         ret                0x0004                                        // 0x00651206    c20400
                         nop                                                              // 0x00651209    90
                         nop                                                              // 0x0065120a    90
                         nop                                                              // 0x0065120b    90
                         nop                                                              // 0x0065120c    90
                         nop                                                              // 0x0065120d    90
                         nop                                                              // 0x0065120e    90
                         nop                                                              // 0x0065120f    90
_jmp_addr_0x00651210:    push               esi                                           // 0x00651210    56
                         mov.s              esi, ecx                                      // 0x00651211    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x00651213    e8f8e7f1ff
                         mov.s              ecx, esi                                      // 0x00651218    8bce
                         mov                dword ptr [esi], 0x008fa09c                   // 0x0065121a    c7069ca08f00
                         call               _jmp_addr_0x00651240                          // 0x00651220    e81b000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00651225    8b442408
                         {disp8} mov        dword ptr [esi + 0x64], eax                   // 0x00651229    894664
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000005            // 0x0065122c    c7461405000000
                         mov.s              eax, esi                                      // 0x00651233    8bc6
                         pop                esi                                           // 0x00651235    5e
                         ret                0x0004                                        // 0x00651236    c20400
                         nop                                                              // 0x00651239    90
                         nop                                                              // 0x0065123a    90
                         nop                                                              // 0x0065123b    90
                         nop                                                              // 0x0065123c    90
                         nop                                                              // 0x0065123d    90
                         nop                                                              // 0x0065123e    90
                         nop                                                              // 0x0065123f    90
_jmp_addr_0x00651240:    xor.s              eax, eax                                      // 0x00651240    33c0
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x00651242    894118
                         {disp8} mov        dword ptr [ecx + 0x60], eax                   // 0x00651245    894160
                         ret                                                              // 0x00651248    c3
                         nop                                                              // 0x00651249    90
                         nop                                                              // 0x0065124a    90
                         nop                                                              // 0x0065124b    90
                         nop                                                              // 0x0065124c    90
                         nop                                                              // 0x0065124d    90
                         nop                                                              // 0x0065124e    90
                         nop                                                              // 0x0065124f    90
                         push               esi                                           // 0x00651250    56
                         push               edi                                           // 0x00651251    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00651252    8b7c240c
                         {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x00651256    8b4714
                         dec                eax                                           // 0x00651259    48
                         mov.s              esi, ecx                                      // 0x0065125a    8bf1
                         {disp8} je         _jmp_addr_0x00651273                          // 0x0065125c    7415
                         dec                eax                                           // 0x0065125e    48
                         {disp8} jne        _jmp_addr_0x00651273                          // 0x0065125f    7512
                         push               0x40                                          // 0x00651261    6a40
                         {disp8} lea        eax, dword ptr [edi + 0x1c]                   // 0x00651263    8d471c
                         push               eax                                           // 0x00651266    50
                         {disp8} lea        ecx, dword ptr [esi + 0x1c]                   // 0x00651267    8d4e1c
                         push               ecx                                           // 0x0065126a    51
                         call               _strncpy                                      // 0x0065126b    e8307e1700
                         add                esp, 0x0c                                     // 0x00651270    83c40c
_jmp_addr_0x00651273:    {disp8} mov        edx, dword ptr [edi + 0x14]                   // 0x00651273    8b5714
                         pop                edi                                           // 0x00651276    5f
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x00651277    895614
                         mov.s              eax, esi                                      // 0x0065127a    8bc6
                         pop                esi                                           // 0x0065127c    5e
                         ret                0x0004                                        // 0x0065127d    c20400
                         mov.s              eax, ecx                                      // 0x00651280    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00651282    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000000            // 0x00651286    c7401400000000
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0065128d    894818
                         ret                0x0004                                        // 0x00651290    c20400
                         nop                                                              // 0x00651293    90
                         nop                                                              // 0x00651294    90
                         nop                                                              // 0x00651295    90
                         nop                                                              // 0x00651296    90
                         nop                                                              // 0x00651297    90
                         nop                                                              // 0x00651298    90
                         nop                                                              // 0x00651299    90
                         nop                                                              // 0x0065129a    90
                         nop                                                              // 0x0065129b    90
                         nop                                                              // 0x0065129c    90
                         nop                                                              // 0x0065129d    90
                         nop                                                              // 0x0065129e    90
                         nop                                                              // 0x0065129f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006512a0    8b542404
                         mov.s              eax, ecx                                      // 0x006512a4    8bc1
                         push               esi                                           // 0x006512a6    56
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000001            // 0x006512a7    c7401401000000
                         mov                esi, dword ptr [edx]                          // 0x006512ae    8b32
                         {disp8} lea        ecx, dword ptr [eax + 0x68]                   // 0x006512b0    8d4868
                         mov                dword ptr [ecx], esi                          // 0x006512b3    8931
                         {disp8} mov        esi, dword ptr [edx + 0x04]                   // 0x006512b5    8b7204
                         {disp8} mov        dword ptr [ecx + 0x04], esi                   // 0x006512b8    897104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006512bb    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006512be    895108
                         pop                esi                                           // 0x006512c1    5e
                         ret                0x0004                                        // 0x006512c2    c20400
                         nop                                                              // 0x006512c5    90
                         nop                                                              // 0x006512c6    90
                         nop                                                              // 0x006512c7    90
                         nop                                                              // 0x006512c8    90
                         nop                                                              // 0x006512c9    90
                         nop                                                              // 0x006512ca    90
                         nop                                                              // 0x006512cb    90
                         nop                                                              // 0x006512cc    90
                         nop                                                              // 0x006512cd    90
                         nop                                                              // 0x006512ce    90
                         nop                                                              // 0x006512cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006512d0    8b442404
                         push               esi                                           // 0x006512d4    56
                         mov.s              esi, ecx                                      // 0x006512d5    8bf1
                         push               0x40                                          // 0x006512d7    6a40
                         push               eax                                           // 0x006512d9    50
                         {disp8} lea        ecx, dword ptr [esi + 0x1c]                   // 0x006512da    8d4e1c
                         push               ecx                                           // 0x006512dd    51
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000002            // 0x006512de    c7461402000000
                         call               _strncpy                                      // 0x006512e5    e8b67d1700
                         add                esp, 0x0c                                     // 0x006512ea    83c40c
                         mov.s              eax, esi                                      // 0x006512ed    8bc6
                         pop                esi                                           // 0x006512ef    5e
                         ret                0x0004                                        // 0x006512f0    c20400
                         nop                                                              // 0x006512f3    90
                         nop                                                              // 0x006512f4    90
                         nop                                                              // 0x006512f5    90
                         nop                                                              // 0x006512f6    90
                         nop                                                              // 0x006512f7    90
                         nop                                                              // 0x006512f8    90
                         nop                                                              // 0x006512f9    90
                         nop                                                              // 0x006512fa    90
                         nop                                                              // 0x006512fb    90
                         nop                                                              // 0x006512fc    90
                         nop                                                              // 0x006512fd    90
                         nop                                                              // 0x006512fe    90
                         nop                                                              // 0x006512ff    90
                         mov.s              eax, ecx                                      // 0x00651300    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00651302    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000003            // 0x00651306    c7401403000000
                         {disp8} mov        dword ptr [eax + 0x5c], ecx                   // 0x0065130d    89485c
                         ret                0x0004                                        // 0x00651310    c20400
                         nop                                                              // 0x00651313    90
                         nop                                                              // 0x00651314    90
                         nop                                                              // 0x00651315    90
                         nop                                                              // 0x00651316    90
                         nop                                                              // 0x00651317    90
                         nop                                                              // 0x00651318    90
                         nop                                                              // 0x00651319    90
                         nop                                                              // 0x0065131a    90
                         nop                                                              // 0x0065131b    90
                         nop                                                              // 0x0065131c    90
                         nop                                                              // 0x0065131d    90
                         nop                                                              // 0x0065131e    90
                         nop                                                              // 0x0065131f    90
                         mov.s              eax, ecx                                      // 0x00651320    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00651322    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000004            // 0x00651326    c7401404000000
                         {disp8} mov        dword ptr [eax + 0x60], ecx                   // 0x0065132d    894860
                         ret                0x0004                                        // 0x00651330    c20400
                         nop                                                              // 0x00651333    90
                         nop                                                              // 0x00651334    90
                         nop                                                              // 0x00651335    90
                         nop                                                              // 0x00651336    90
                         nop                                                              // 0x00651337    90
                         nop                                                              // 0x00651338    90
                         nop                                                              // 0x00651339    90
                         nop                                                              // 0x0065133a    90
                         nop                                                              // 0x0065133b    90
                         nop                                                              // 0x0065133c    90
                         nop                                                              // 0x0065133d    90
                         nop                                                              // 0x0065133e    90
                         nop                                                              // 0x0065133f    90
                         mov.s              eax, ecx                                      // 0x00651340    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00651342    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000005            // 0x00651346    c7401405000000
                         {disp8} mov        dword ptr [eax + 0x64], ecx                   // 0x0065134d    894864
                         ret                0x0004                                        // 0x00651350    c20400
                         nop                                                              // 0x00651353    90
                         nop                                                              // 0x00651354    90
                         nop                                                              // 0x00651355    90
                         nop                                                              // 0x00651356    90
                         nop                                                              // 0x00651357    90
                         nop                                                              // 0x00651358    90
                         nop                                                              // 0x00651359    90
                         nop                                                              // 0x0065135a    90
                         nop                                                              // 0x0065135b    90
                         nop                                                              // 0x0065135c    90
                         nop                                                              // 0x0065135d    90
                         nop                                                              // 0x0065135e    90
                         nop                                                              // 0x0065135f    90
_jmp_addr_0x00651360:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00651360    8b542404
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x00651364    8b4114
                         push               esi                                           // 0x00651367    56
                         cmp                eax, dword ptr [edx + 0x14]                   // 0x00651368    3b4214
                         {disp32} jne       _jmp_addr_0x006513f8                          // 0x0065136b    0f8587000000
                         dec                eax                                           // 0x00651371    48
                         {disp8} je         _jmp_addr_0x006513cb                          // 0x00651372    7457
                         dec                eax                                           // 0x00651374    48
                         {disp8} je         _jmp_addr_0x0065137d                          // 0x00651375    7406
                         mov                al, 0x01                                      // 0x00651377    b001
                         pop                esi                                           // 0x00651379    5e
                         ret                0x0004                                        // 0x0065137a    c20400
_jmp_addr_0x0065137d:    push               ebx                                           // 0x0065137d    53
                         {disp8} lea        esi, dword ptr [edx + 0x1c]                   // 0x0065137e    8d721c
                         {disp8} lea        eax, dword ptr [ecx + 0x1c]                   // 0x00651381    8d411c
_jmp_addr_0x00651384:    mov                dl, byte ptr [eax]                            // 0x00651384    8a10
                         mov                bl, byte ptr [esi]                            // 0x00651386    8a1e
                         mov.s              cl, dl                                        // 0x00651388    8aca
                         cmp.s              dl, bl                                        // 0x0065138a    3ad3
                         {disp8} jne        _jmp_addr_0x006513b8                          // 0x0065138c    752a
                         test               cl, cl                                        // 0x0065138e    84c9
                         {disp8} je         _jmp_addr_0x006513a8                          // 0x00651390    7416
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00651392    8a5001
                         {disp8} mov        bl, byte ptr [esi + 0x01]                     // 0x00651395    8a5e01
                         mov.s              cl, dl                                        // 0x00651398    8aca
                         cmp.s              dl, bl                                        // 0x0065139a    3ad3
                         {disp8} jne        _jmp_addr_0x006513b8                          // 0x0065139c    751a
                         add                eax, 0x02                                     // 0x0065139e    83c002
                         add                esi, 0x02                                     // 0x006513a1    83c602
                         test               cl, cl                                        // 0x006513a4    84c9
                         {disp8} jne        _jmp_addr_0x00651384                          // 0x006513a6    75dc
_jmp_addr_0x006513a8:    xor.s              eax, eax                                      // 0x006513a8    33c0
                         xor.s              ecx, ecx                                      // 0x006513aa    33c9
                         test               eax, eax                                      // 0x006513ac    85c0
                         sete               cl                                            // 0x006513ae    0f94c1
                         pop                ebx                                           // 0x006513b1    5b
                         mov.s              al, cl                                        // 0x006513b2    8ac1
                         pop                esi                                           // 0x006513b4    5e
                         ret                0x0004                                        // 0x006513b5    c20400
_jmp_addr_0x006513b8:    sbb.s              eax, eax                                      // 0x006513b8    1bc0
                         sbb                eax, -0x01                                    // 0x006513ba    83d8ff
                         xor.s              ecx, ecx                                      // 0x006513bd    33c9
                         test               eax, eax                                      // 0x006513bf    85c0
                         sete               cl                                            // 0x006513c1    0f94c1
                         pop                ebx                                           // 0x006513c4    5b
                         mov.s              al, cl                                        // 0x006513c5    8ac1
                         pop                esi                                           // 0x006513c7    5e
                         ret                0x0004                                        // 0x006513c8    c20400
_jmp_addr_0x006513cb:    {disp8} fld        dword ptr [ecx + 0x68]                        // 0x006513cb    d94168
                         {disp8} fcomp      dword ptr [edx + 0x68]                        // 0x006513ce    d85a68
                         fnstsw             ax                                            // 0x006513d1    dfe0
                         test               ah, 0x40                                      // 0x006513d3    f6c440
                         {disp8} je         _jmp_addr_0x006513f8                          // 0x006513d6    7420
                         {disp8} fld        dword ptr [ecx + 0x6c]                        // 0x006513d8    d9416c
                         {disp8} fcomp      dword ptr [edx + 0x6c]                        // 0x006513db    d85a6c
                         fnstsw             ax                                            // 0x006513de    dfe0
                         test               ah, 0x40                                      // 0x006513e0    f6c440
                         {disp8} je         _jmp_addr_0x006513f8                          // 0x006513e3    7413
                         {disp8} fld        dword ptr [ecx + 0x70]                        // 0x006513e5    d94170
                         {disp8} fcomp      dword ptr [edx + 0x70]                        // 0x006513e8    d85a70
                         fnstsw             ax                                            // 0x006513eb    dfe0
                         test               ah, 0x40                                      // 0x006513ed    f6c440
                         {disp8} je         _jmp_addr_0x006513f8                          // 0x006513f0    7406
                         mov                al, 0x01                                      // 0x006513f2    b001
                         pop                esi                                           // 0x006513f4    5e
                         ret                0x0004                                        // 0x006513f5    c20400
_jmp_addr_0x006513f8:    xor.s              al, al                                        // 0x006513f8    32c0
                         pop                esi                                           // 0x006513fa    5e
                         ret                0x0004                                        // 0x006513fb    c20400
                         nop                                                              // 0x006513fe    90
                         nop                                                              // 0x006513ff    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00651400    8b442404
                         push               eax                                           // 0x00651404    50
                         call               _jmp_addr_0x00651360                          // 0x00651405    e856ffffff
                         neg                al                                            // 0x0065140a    f6d8
                         sbb.s              eax, eax                                      // 0x0065140c    1bc0
                         inc                eax                                           // 0x0065140e    40
                         ret                0x0004                                        // 0x0065140f    c20400
                         nop                                                              // 0x00651412    90
                         nop                                                              // 0x00651413    90
                         nop                                                              // 0x00651414    90
                         nop                                                              // 0x00651415    90
                         nop                                                              // 0x00651416    90
                         nop                                                              // 0x00651417    90
                         nop                                                              // 0x00651418    90
                         nop                                                              // 0x00651419    90
                         nop                                                              // 0x0065141a    90
                         nop                                                              // 0x0065141b    90
                         nop                                                              // 0x0065141c    90
                         nop                                                              // 0x0065141d    90
                         nop                                                              // 0x0065141e    90
                         nop                                                              // 0x0065141f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00651420    8b542404
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x00651424    8b4114
                         push               esi                                           // 0x00651427    56
                         cmp                eax, dword ptr [edx + 0x14]                   // 0x00651428    3b4214
                         {disp8} jne        _jmp_addr_0x00651494                          // 0x0065142b    7567
                         dec                eax                                           // 0x0065142d    48
                         {disp8} je         _jmp_addr_0x00651494                          // 0x0065142e    7464
                         dec                eax                                           // 0x00651430    48
                         {disp8} je         _jmp_addr_0x00651446                          // 0x00651431    7413
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                   // 0x00651433    8b415c
                         {disp8} mov        esi, dword ptr [edx + 0x5c]                   // 0x00651436    8b725c
                         xor.s              ecx, ecx                                      // 0x00651439    33c9
                         cmp.s              eax, esi                                      // 0x0065143b    3bc6
                         setge              cl                                            // 0x0065143d    0f9dc1
                         mov.s              al, cl                                        // 0x00651440    8ac1
                         pop                esi                                           // 0x00651442    5e
                         ret                0x0004                                        // 0x00651443    c20400
_jmp_addr_0x00651446:    push               ebx                                           // 0x00651446    53
                         {disp8} lea        esi, dword ptr [edx + 0x1c]                   // 0x00651447    8d721c
                         {disp8} lea        eax, dword ptr [ecx + 0x1c]                   // 0x0065144a    8d411c
_jmp_addr_0x0065144d:    mov                dl, byte ptr [eax]                            // 0x0065144d    8a10
                         mov                bl, byte ptr [esi]                            // 0x0065144f    8a1e
                         mov.s              cl, dl                                        // 0x00651451    8aca
                         cmp.s              dl, bl                                        // 0x00651453    3ad3
                         {disp8} jne        _jmp_addr_0x00651481                          // 0x00651455    752a
                         test               cl, cl                                        // 0x00651457    84c9
                         {disp8} je         _jmp_addr_0x00651471                          // 0x00651459    7416
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x0065145b    8a5001
                         {disp8} mov        bl, byte ptr [esi + 0x01]                     // 0x0065145e    8a5e01
                         mov.s              cl, dl                                        // 0x00651461    8aca
                         cmp.s              dl, bl                                        // 0x00651463    3ad3
                         {disp8} jne        _jmp_addr_0x00651481                          // 0x00651465    751a
                         add                eax, 0x02                                     // 0x00651467    83c002
                         add                esi, 0x02                                     // 0x0065146a    83c602
                         test               cl, cl                                        // 0x0065146d    84c9
                         {disp8} jne        _jmp_addr_0x0065144d                          // 0x0065146f    75dc
_jmp_addr_0x00651471:    xor.s              eax, eax                                      // 0x00651471    33c0
                         xor.s              ecx, ecx                                      // 0x00651473    33c9
                         test               eax, eax                                      // 0x00651475    85c0
                         setge              cl                                            // 0x00651477    0f9dc1
                         pop                ebx                                           // 0x0065147a    5b
                         mov.s              al, cl                                        // 0x0065147b    8ac1
                         pop                esi                                           // 0x0065147d    5e
                         ret                0x0004                                        // 0x0065147e    c20400
_jmp_addr_0x00651481:    sbb.s              eax, eax                                      // 0x00651481    1bc0
                         sbb                eax, -0x01                                    // 0x00651483    83d8ff
                         xor.s              ecx, ecx                                      // 0x00651486    33c9
                         test               eax, eax                                      // 0x00651488    85c0
                         setge              cl                                            // 0x0065148a    0f9dc1
                         pop                ebx                                           // 0x0065148d    5b
                         mov.s              al, cl                                        // 0x0065148e    8ac1
                         pop                esi                                           // 0x00651490    5e
                         ret                0x0004                                        // 0x00651491    c20400
_jmp_addr_0x00651494:    xor.s              al, al                                        // 0x00651494    32c0
                         pop                esi                                           // 0x00651496    5e
                         ret                0x0004                                        // 0x00651497    c20400
                         nop                                                              // 0x0065149a    90
                         nop                                                              // 0x0065149b    90
                         nop                                                              // 0x0065149c    90
                         nop                                                              // 0x0065149d    90
                         nop                                                              // 0x0065149e    90
                         nop                                                              // 0x0065149f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006514a0    8b542404
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x006514a4    8b4114
                         push               esi                                           // 0x006514a7    56
                         cmp                eax, dword ptr [edx + 0x14]                   // 0x006514a8    3b4214
                         {disp8} jne        _jmp_addr_0x00651514                          // 0x006514ab    7567
                         dec                eax                                           // 0x006514ad    48
                         {disp8} je         _jmp_addr_0x00651514                          // 0x006514ae    7464
                         dec                eax                                           // 0x006514b0    48
                         {disp8} je         _jmp_addr_0x006514c6                          // 0x006514b1    7413
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                   // 0x006514b3    8b415c
                         {disp8} mov        esi, dword ptr [edx + 0x5c]                   // 0x006514b6    8b725c
                         xor.s              ecx, ecx                                      // 0x006514b9    33c9
                         cmp.s              eax, esi                                      // 0x006514bb    3bc6
                         setle              cl                                            // 0x006514bd    0f9ec1
                         mov.s              al, cl                                        // 0x006514c0    8ac1
                         pop                esi                                           // 0x006514c2    5e
                         ret                0x0004                                        // 0x006514c3    c20400
_jmp_addr_0x006514c6:    push               ebx                                           // 0x006514c6    53
                         {disp8} lea        esi, dword ptr [edx + 0x1c]                   // 0x006514c7    8d721c
                         {disp8} lea        eax, dword ptr [ecx + 0x1c]                   // 0x006514ca    8d411c
_jmp_addr_0x006514cd:    mov                dl, byte ptr [eax]                            // 0x006514cd    8a10
                         mov                bl, byte ptr [esi]                            // 0x006514cf    8a1e
                         mov.s              cl, dl                                        // 0x006514d1    8aca
                         cmp.s              dl, bl                                        // 0x006514d3    3ad3
                         {disp8} jne        _jmp_addr_0x00651501                          // 0x006514d5    752a
                         test               cl, cl                                        // 0x006514d7    84c9
                         {disp8} je         _jmp_addr_0x006514f1                          // 0x006514d9    7416
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x006514db    8a5001
                         {disp8} mov        bl, byte ptr [esi + 0x01]                     // 0x006514de    8a5e01
                         mov.s              cl, dl                                        // 0x006514e1    8aca
                         cmp.s              dl, bl                                        // 0x006514e3    3ad3
                         {disp8} jne        _jmp_addr_0x00651501                          // 0x006514e5    751a
                         add                eax, 0x02                                     // 0x006514e7    83c002
                         add                esi, 0x02                                     // 0x006514ea    83c602
                         test               cl, cl                                        // 0x006514ed    84c9
                         {disp8} jne        _jmp_addr_0x006514cd                          // 0x006514ef    75dc
_jmp_addr_0x006514f1:    xor.s              eax, eax                                      // 0x006514f1    33c0
                         xor.s              ecx, ecx                                      // 0x006514f3    33c9
                         test               eax, eax                                      // 0x006514f5    85c0
                         setle              cl                                            // 0x006514f7    0f9ec1
                         pop                ebx                                           // 0x006514fa    5b
                         mov.s              al, cl                                        // 0x006514fb    8ac1
                         pop                esi                                           // 0x006514fd    5e
                         ret                0x0004                                        // 0x006514fe    c20400
_jmp_addr_0x00651501:    sbb.s              eax, eax                                      // 0x00651501    1bc0
                         sbb                eax, -0x01                                    // 0x00651503    83d8ff
                         xor.s              ecx, ecx                                      // 0x00651506    33c9
                         test               eax, eax                                      // 0x00651508    85c0
                         setle              cl                                            // 0x0065150a    0f9ec1
                         pop                ebx                                           // 0x0065150d    5b
                         mov.s              al, cl                                        // 0x0065150e    8ac1
                         pop                esi                                           // 0x00651510    5e
                         ret                0x0004                                        // 0x00651511    c20400
_jmp_addr_0x00651514:    xor.s              al, al                                        // 0x00651514    32c0
                         pop                esi                                           // 0x00651516    5e
                         ret                0x0004                                        // 0x00651517    c20400
                         nop                                                              // 0x0065151a    90
                         nop                                                              // 0x0065151b    90
                         nop                                                              // 0x0065151c    90
                         nop                                                              // 0x0065151d    90
                         nop                                                              // 0x0065151e    90
                         nop                                                              // 0x0065151f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00651520    8b542404
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x00651524    8b4114
                         push               esi                                           // 0x00651527    56
                         cmp                eax, dword ptr [edx + 0x14]                   // 0x00651528    3b4214
                         {disp8} jne        _jmp_addr_0x00651594                          // 0x0065152b    7567
                         dec                eax                                           // 0x0065152d    48
                         {disp8} je         _jmp_addr_0x00651594                          // 0x0065152e    7464
                         dec                eax                                           // 0x00651530    48
                         {disp8} je         _jmp_addr_0x00651546                          // 0x00651531    7413
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                   // 0x00651533    8b415c
                         {disp8} mov        esi, dword ptr [edx + 0x5c]                   // 0x00651536    8b725c
                         xor.s              ecx, ecx                                      // 0x00651539    33c9
                         cmp.s              eax, esi                                      // 0x0065153b    3bc6
                         setl               cl                                            // 0x0065153d    0f9cc1
                         mov.s              al, cl                                        // 0x00651540    8ac1
                         pop                esi                                           // 0x00651542    5e
                         ret                0x0004                                        // 0x00651543    c20400
_jmp_addr_0x00651546:    push               ebx                                           // 0x00651546    53
                         {disp8} lea        esi, dword ptr [edx + 0x1c]                   // 0x00651547    8d721c
                         {disp8} lea        eax, dword ptr [ecx + 0x1c]                   // 0x0065154a    8d411c
_jmp_addr_0x0065154d:    mov                dl, byte ptr [eax]                            // 0x0065154d    8a10
                         mov                bl, byte ptr [esi]                            // 0x0065154f    8a1e
                         mov.s              cl, dl                                        // 0x00651551    8aca
                         cmp.s              dl, bl                                        // 0x00651553    3ad3
                         {disp8} jne        _jmp_addr_0x00651581                          // 0x00651555    752a
                         test               cl, cl                                        // 0x00651557    84c9
                         {disp8} je         _jmp_addr_0x00651571                          // 0x00651559    7416
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x0065155b    8a5001
                         {disp8} mov        bl, byte ptr [esi + 0x01]                     // 0x0065155e    8a5e01
                         mov.s              cl, dl                                        // 0x00651561    8aca
                         cmp.s              dl, bl                                        // 0x00651563    3ad3
                         {disp8} jne        _jmp_addr_0x00651581                          // 0x00651565    751a
                         add                eax, 0x02                                     // 0x00651567    83c002
                         add                esi, 0x02                                     // 0x0065156a    83c602
                         test               cl, cl                                        // 0x0065156d    84c9
                         {disp8} jne        _jmp_addr_0x0065154d                          // 0x0065156f    75dc
_jmp_addr_0x00651571:    xor.s              eax, eax                                      // 0x00651571    33c0
                         xor.s              ecx, ecx                                      // 0x00651573    33c9
                         test               eax, eax                                      // 0x00651575    85c0
                         setl               cl                                            // 0x00651577    0f9cc1
                         pop                ebx                                           // 0x0065157a    5b
                         mov.s              al, cl                                        // 0x0065157b    8ac1
                         pop                esi                                           // 0x0065157d    5e
                         ret                0x0004                                        // 0x0065157e    c20400
_jmp_addr_0x00651581:    sbb.s              eax, eax                                      // 0x00651581    1bc0
                         sbb                eax, -0x01                                    // 0x00651583    83d8ff
                         xor.s              ecx, ecx                                      // 0x00651586    33c9
                         test               eax, eax                                      // 0x00651588    85c0
                         setl               cl                                            // 0x0065158a    0f9cc1
                         pop                ebx                                           // 0x0065158d    5b
                         mov.s              al, cl                                        // 0x0065158e    8ac1
                         pop                esi                                           // 0x00651590    5e
                         ret                0x0004                                        // 0x00651591    c20400
_jmp_addr_0x00651594:    xor.s              al, al                                        // 0x00651594    32c0
                         pop                esi                                           // 0x00651596    5e
                         ret                0x0004                                        // 0x00651597    c20400
                         nop                                                              // 0x0065159a    90
                         nop                                                              // 0x0065159b    90
                         nop                                                              // 0x0065159c    90
                         nop                                                              // 0x0065159d    90
                         nop                                                              // 0x0065159e    90
                         nop                                                              // 0x0065159f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006515a0    8b542404
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x006515a4    8b4114
                         push               esi                                           // 0x006515a7    56
                         cmp                eax, dword ptr [edx + 0x14]                   // 0x006515a8    3b4214
                         {disp8} jne        _jmp_addr_0x00651614                          // 0x006515ab    7567
                         dec                eax                                           // 0x006515ad    48
                         {disp8} je         _jmp_addr_0x00651614                          // 0x006515ae    7464
                         dec                eax                                           // 0x006515b0    48
                         {disp8} je         _jmp_addr_0x006515c6                          // 0x006515b1    7413
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                   // 0x006515b3    8b415c
                         {disp8} mov        esi, dword ptr [edx + 0x5c]                   // 0x006515b6    8b725c
                         xor.s              ecx, ecx                                      // 0x006515b9    33c9
                         cmp.s              eax, esi                                      // 0x006515bb    3bc6
                         setg               cl                                            // 0x006515bd    0f9fc1
                         mov.s              al, cl                                        // 0x006515c0    8ac1
                         pop                esi                                           // 0x006515c2    5e
                         ret                0x0004                                        // 0x006515c3    c20400
_jmp_addr_0x006515c6:    push               ebx                                           // 0x006515c6    53
                         {disp8} lea        esi, dword ptr [edx + 0x1c]                   // 0x006515c7    8d721c
                         {disp8} lea        eax, dword ptr [ecx + 0x1c]                   // 0x006515ca    8d411c
_jmp_addr_0x006515cd:    mov                dl, byte ptr [eax]                            // 0x006515cd    8a10
                         mov                bl, byte ptr [esi]                            // 0x006515cf    8a1e
                         mov.s              cl, dl                                        // 0x006515d1    8aca
                         cmp.s              dl, bl                                        // 0x006515d3    3ad3
                         {disp8} jne        _jmp_addr_0x00651601                          // 0x006515d5    752a
                         test               cl, cl                                        // 0x006515d7    84c9
                         {disp8} je         _jmp_addr_0x006515f1                          // 0x006515d9    7416
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x006515db    8a5001
                         {disp8} mov        bl, byte ptr [esi + 0x01]                     // 0x006515de    8a5e01
                         mov.s              cl, dl                                        // 0x006515e1    8aca
                         cmp.s              dl, bl                                        // 0x006515e3    3ad3
                         {disp8} jne        _jmp_addr_0x00651601                          // 0x006515e5    751a
                         add                eax, 0x02                                     // 0x006515e7    83c002
                         add                esi, 0x02                                     // 0x006515ea    83c602
                         test               cl, cl                                        // 0x006515ed    84c9
                         {disp8} jne        _jmp_addr_0x006515cd                          // 0x006515ef    75dc
_jmp_addr_0x006515f1:    xor.s              eax, eax                                      // 0x006515f1    33c0
                         xor.s              ecx, ecx                                      // 0x006515f3    33c9
                         test               eax, eax                                      // 0x006515f5    85c0
                         setg               cl                                            // 0x006515f7    0f9fc1
                         pop                ebx                                           // 0x006515fa    5b
                         mov.s              al, cl                                        // 0x006515fb    8ac1
                         pop                esi                                           // 0x006515fd    5e
                         ret                0x0004                                        // 0x006515fe    c20400
_jmp_addr_0x00651601:    sbb.s              eax, eax                                      // 0x00651601    1bc0
                         sbb                eax, -0x01                                    // 0x00651603    83d8ff
                         xor.s              ecx, ecx                                      // 0x00651606    33c9
                         test               eax, eax                                      // 0x00651608    85c0
                         setg               cl                                            // 0x0065160a    0f9fc1
                         pop                ebx                                           // 0x0065160d    5b
                         mov.s              al, cl                                        // 0x0065160e    8ac1
                         pop                esi                                           // 0x00651610    5e
                         ret                0x0004                                        // 0x00651611    c20400
_jmp_addr_0x00651614:    xor.s              al, al                                        // 0x00651614    32c0
                         pop                esi                                           // 0x00651616    5e
                         ret                0x0004                                        // 0x00651617    c20400
                         nop                                                              // 0x0065161a    90
                         nop                                                              // 0x0065161b    90
                         nop                                                              // 0x0065161c    90
                         nop                                                              // 0x0065161d    90
                         nop                                                              // 0x0065161e    90
                         nop                                                              // 0x0065161f    90
_jmp_addr_0x00651620:    {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x00651620    8b4114
                         cmp                eax, 0x05                                     // 0x00651623    83f805
                         {disp32} ja        _jmp_addr_0x0065171b                          // 0x00651626    0f87ef000000
                         jmp                dword ptr [eax*4 + 0x651724]                  // 0x0065162c    ff248524176500
                         {disp8} mov        ecx, dword ptr [ecx + 0x18]                   // 0x00651633    8b4918
                         mov                eax, dword ptr [ecx]                          // 0x00651636    8b01
                         call               dword ptr [eax + 0xd8]                        // 0x00651638    ff90d8000000
                         push               eax                                           // 0x0065163e    50
                         push               0x00d47a30                                    // 0x0065163f    68307ad400
                         call               _sprintf                                      // 0x00651644    e889411700
                         add                esp, 0x08                                     // 0x00651649    83c408
                         mov                eax, 0x00d47a30                               // 0x0065164c    b8307ad400
                         ret                                                              // 0x00651651    c3
                         {disp8} fld        dword ptr [ecx + 0x70]                        // 0x00651652    d94170
                         sub                esp, 0x08                                     // 0x00651655    83ec08
                         fstp               qword ptr [esp]                               // 0x00651658    dd1c24
                         sub                esp, 0x08                                     // 0x0065165b    83ec08
                         {disp8} fld        dword ptr [ecx + 0x6c]                        // 0x0065165e    d9416c
                         sub                esp, 0x08                                     // 0x00651661    83ec08
                         {disp8} fstp       qword ptr [esp + 0x08]                        // 0x00651664    dd5c2408
                         {disp8} fld        dword ptr [ecx + 0x68]                        // 0x00651668    d94168
                         fstp               qword ptr [esp]                               // 0x0065166b    dd1c24
                         push               0x00c00a08                                    // 0x0065166e    68080ac000
                         push               0x00d47a30                                    // 0x00651673    68307ad400
                         call               _sprintf                                      // 0x00651678    e855411700
                         add                esp, 0x20                                     // 0x0065167d    83c420
                         mov                eax, 0x00d47a30                               // 0x00651680    b8307ad400
                         ret                                                              // 0x00651685    c3
                         push               esi                                           // 0x00651686    56
                         push               edi                                           // 0x00651687    57
                         {disp8} lea        edi, dword ptr [ecx + 0x1c]                   // 0x00651688    8d791c
                         or                 ecx, 0xffffffff                               // 0x0065168b    83c9ff
                         xor.s              eax, eax                                      // 0x0065168e    33c0
                         repne scasb                                                      // 0x00651690    f2ae
                         not                ecx                                           // 0x00651692    f7d1
                         sub.s              edi, ecx                                      // 0x00651694    2bf9
                         mov.s              edx, ecx                                      // 0x00651696    8bd1
                         mov.s              esi, edi                                      // 0x00651698    8bf7
                         shr                ecx, 2                                        // 0x0065169a    c1e902
                         mov                edi, 0x00d47a30                               // 0x0065169d    bf307ad400
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x006516a2    f3a5
                         mov.s              ecx, edx                                      // 0x006516a4    8bca
                         and                ecx, 0x03                                     // 0x006516a6    83e103
                         rep movsb                                                        // 0x006516a9    f3a4
                         pop                edi                                           // 0x006516ab    5f
                         pop                esi                                           // 0x006516ac    5e
                         mov                eax, 0x00d47a30                               // 0x006516ad    b8307ad400
                         ret                                                              // 0x006516b2    c3
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                   // 0x006516b3    8b415c
                         push               eax                                           // 0x006516b6    50
                         push               0x009cda78                                    // 0x006516b7    6878da9c00
                         push               0x00d47a30                                    // 0x006516bc    68307ad400
                         call               _sprintf                                      // 0x006516c1    e80c411700
                         add                esp, 0x0c                                     // 0x006516c6    83c40c
                         mov                eax, 0x00d47a30                               // 0x006516c9    b8307ad400
                         ret                                                              // 0x006516ce    c3
                         {disp8} mov        ecx, dword ptr [ecx + 0x60]                   // 0x006516cf    8b4960
                         add                ecx, 0x000008e4                               // 0x006516d2    81c1e4080000
                         push               ecx                                           // 0x006516d8    51
                         call               _jmp_addr_0x0053b4a0                          // 0x006516d9    e8c29deeff
                         add                esp, 0x04                                     // 0x006516de    83c404
                         push               eax                                           // 0x006516e1    50
                         push               0x009c8c40                                    // 0x006516e2    68408c9c00
                         push               0x00d47a30                                    // 0x006516e7    68307ad400
                         call               _sprintf                                      // 0x006516ec    e8e1401700
                         add                esp, 0x0c                                     // 0x006516f1    83c40c
                         mov                eax, 0x00d47a30                               // 0x006516f4    b8307ad400
                         ret                                                              // 0x006516f9    c3
                         {disp8} fld        dword ptr [ecx + 0x64]                        // 0x006516fa    d94164
                         sub                esp, 0x08                                     // 0x006516fd    83ec08
                         fstp               qword ptr [esp]                               // 0x00651700    dd1c24
                         push               0x009d0604                                    // 0x00651703    6804069d00
                         push               0x00d47a30                                    // 0x00651708    68307ad400
                         call               _sprintf                                      // 0x0065170d    e8c0401700
                         add                esp, 0x10                                     // 0x00651712    83c410
                         mov                eax, 0x00d47a30                               // 0x00651715    b8307ad400
                         ret                                                              // 0x0065171a    c3
_jmp_addr_0x0065171b:    mov                eax, 0x00c00a00                               // 0x0065171b    b8000ac000
                         ret                                                              // 0x00651720    c3

// Snippet: db, [0x00651721, 0x00651724)
.byte 0x8d, 0x49, 0x00            // 0x00651721

// Snippet: jmptbl, [0x00651724, 0x0065173c)
.byte 0x33, 0x16, 0x65, 0x00      // 0x00651724
.byte 0x52, 0x16, 0x65, 0x00      // 0x00651728
.byte 0x86, 0x16, 0x65, 0x00      // 0x0065172c
.byte 0xb3, 0x16, 0x65, 0x00      // 0x00651730
.byte 0xcf, 0x16, 0x65, 0x00      // 0x00651734
.byte 0xfa, 0x16, 0x65, 0x00      // 0x00651738

// Snippet: db, [0x0065173c, 0x00651740)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0065173c

