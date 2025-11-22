.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.extern @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern @__ct__7LHPointFRC7LHPoint@12
.extern _jmp_addr_0x0046f260
.extern _jmp_addr_0x0046f2b0
.extern _jmp_addr_0x00519ad0
.extern _jmp_addr_0x0053c470
.extern ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern _jmp_addr_0x00553a70
.extern @GetPlayer3DColor__7GPlayerFv@12
.extern _jmp_addr_0x007201d0
.extern ?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z
.extern _jmp_addr_0x00727630
.extern _jmp_addr_0x00727680
.extern _jmp_addr_0x007813b0
.extern _jmp_addr_0x007813f0
.extern _jmp_addr_0x00784f30
.extern _jmp_addr_0x00784f40
.extern _jmp_addr_0x007867b0
.extern @__ct__15PictureRoomBaseFPCc@12
.extern _jmp_addr_0x0078f1e0
.extern _jmp_addr_0x0078f1f0
.extern _jmp_addr_0x0078f320
.extern _jmp_addr_0x0078f5e0
.extern _jmp_addr_0x0078f600
.extern _jmp_addr_0x00793d90
.extern _jmp_addr_0x007949e0
.extern _jmp_addr_0x00794a80
.extern _jmp_addr_0x00795310
.extern _jmp_addr_0x00795430
.extern _jmp_addr_0x007954a0
.extern _jmp_addr_0x007974c0
.extern ??0InnerCamera@@QAE@XZ
.extern _jmp_addr_0x00797510
.extern _jmp_addr_0x00797530
.extern _jmp_addr_0x00797590
.extern _jmp_addr_0x007977a0
.extern _jmp_addr_0x00797f10
.extern _jmp_addr_0x00798350
.extern _jmp_addr_0x00798430
.extern @__ct__10TempleRoomFPCc@12
.extern _jmp_addr_0x007989a0
.extern _jmp_addr_0x007989e0
.extern _jmp_addr_0x00798af0
.extern _jmp_addr_0x00798b30
.extern _jmp_addr_0x007991c0
.extern _jmp_addr_0x00799e60
.extern ?PreDraw@GameOptionsRoom@@UAEXXZ
.extern _jmp_addr_0x00799fe0
.extern ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z
.extern _jmp_addr_0x0079a3a0
.extern _jmp_addr_0x0079a5a0
.extern _jmp_addr_0x0079a600
.extern _jmp_addr_0x0079a620
.extern _jmp_addr_0x0079a640
.extern _jmp_addr_0x0079a6a0
.extern _jmp_addr_0x0079a910
.extern _jmp_addr_0x0079f5d0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _wcscat
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _iswspace
.extern __strcmpi
.extern _wcsstr
.extern __wtoi
.extern _wcsncat
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Release__8LH3DMeshFv@4
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern _jmp_addr_0x00838430
.extern _jmp_addr_0x0083d860
.extern _jmp_addr_0x0083dfe0

.globl _jmp_addr_0x0079c550
.globl _jmp_addr_0x0079c650
.globl _jmp_addr_0x0079c770
.globl _jmp_addr_0x0079cc80
.globl _jmp_addr_0x0079cd30
.globl _jmp_addr_0x0079d1c0
.globl _jmp_addr_0x0079dd20
.globl _jmp_addr_0x0079ddf0

.globl _globl_ct_0x0079ccb0
.globl _globl_ct_0x0079cce0
.globl _globl_ct_0x0079cd00
.globl _globl_ct_0x0079d0e0
.globl _globl_ct_0x0079d110
.globl _globl_ct_0x0079d140
.globl _globl_ct_0x0079d170
.globl _globl_ct_0x0079d190

start_0x0079c550_0x0079f5d0:
// Snippet: asm, [0x0079c550, 0x0079f5b0)
_jmp_addr_0x0079c550:    sub                esp, 0x00000184                               // 0x0079c550    81ec84010000
                         push               ebx                                           // 0x0079c556    53
                         push               ebp                                           // 0x0079c557    55
                         {disp32} mov       ebp, dword ptr [esp + 0x00000194]             // 0x0079c558    8bac2494010000
                         push               esi                                           // 0x0079c55f    56
                         push               edi                                           // 0x0079c560    57
                         xor.s              eax, eax                                      // 0x0079c561    33c0
                         push               0x00c2a314                                    // 0x0079c563    6814a3c200
                         mov                ecx, 0x00000040                               // 0x0079c568    b940000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000098]             // 0x0079c56d    8dbc2498000000
                         push               ebp                                           // 0x0079c574    55
                         rep stosd                                                        // 0x0079c575    f3ab
                         call               _wcsstr                                       // 0x0079c577    e851bc0200
                         mov.s              ebx, eax                                      // 0x0079c57c    8bd8
                         add                esp, 0x08                                     // 0x0079c57e    83c408
                         test               ebx, ebx                                      // 0x0079c581    85db
                         {disp8} jne        _jmp_addr_0x0079c592                          // 0x0079c583    750d
                         push               ebp                                           // 0x0079c585    55
                         call               _wcslen                                       // 0x0079c586    e8d79e0200
                         add                esp, 0x04                                     // 0x0079c58b    83c404
                         {disp8} lea        ebx, dword ptr [ebp + eax * 0x2 + 0x00]       // 0x0079c58e    8d5c4500
_jmp_addr_0x0079c592:    push               ebp                                           // 0x0079c592    55
                         call               _wcslen                                       // 0x0079c593    e8ca9e0200
                         add                ebx, 0x04                                     // 0x0079c598    83c304
                         push               ebx                                           // 0x0079c59b    53
                         mov.s              esi, eax                                      // 0x0079c59c    8bf0
                         call               _wcslen                                       // 0x0079c59e    e8bf9e0200
                         mov.s              edx, eax                                      // 0x0079c5a3    8bd0
                         sub.s              esi, edx                                      // 0x0079c5a5    2bf2
                         xor.s              eax, eax                                      // 0x0079c5a7    33c0
                         sub                esi, 0x02                                     // 0x0079c5a9    83ee02
                         mov                ecx, 0x00000020                               // 0x0079c5ac    b920000000
                         {disp8} lea        edi, dword ptr [esp + 0x1c]                   // 0x0079c5b1    8d7c241c
                         push               esi                                           // 0x0079c5b5    56
                         rep stosd                                                        // 0x0079c5b6    f3ab
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0079c5b8    8d442420
                         push               ebp                                           // 0x0079c5bc    55
                         push               eax                                           // 0x0079c5bd    50
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0079c5be    89542424
                         call               _wcsncat                                      // 0x0079c5c2    e898de0200
                         {disp32} mov       ecx, dword ptr [esp + 0x000001b4]             // 0x0079c5c7    8b8c24b4010000
                         add                esp, 0x14                                     // 0x0079c5ce    83c414
                         push               ecx                                           // 0x0079c5d1    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000098]             // 0x0079c5d2    8d942498000000
                         push               0x00c2a30c                                    // 0x0079c5d9    680ca3c200
                         push               edx                                           // 0x0079c5de    52
                         call               dword ptr [rdata_bytes + 0x360]               // 0x0079c5df    ff1560938a00
                         {disp32} lea       eax, dword ptr [esp + 0x000000a0]             // 0x0079c5e5    8d8424a0000000
                         push               eax                                           // 0x0079c5ec    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0079c5ed    8d4c2424
                         push               ecx                                           // 0x0079c5f1    51
                         call               _wcscat                                       // 0x0079c5f2    e895990200
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0079c5f7    8b542424
                         push               edx                                           // 0x0079c5fb    52
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x0079c5fc    8d44242c
                         push               ebx                                           // 0x0079c600    53
                         push               eax                                           // 0x0079c601    50
                         call               _wcsncat                                      // 0x0079c602    e858de0200
                         {disp32} mov       esi, dword ptr [esp + 0x000001b8]             // 0x0079c607    8bb424b8010000
                         push               esi                                           // 0x0079c60e    56
                         call               _wcslen                                       // 0x0079c60f    e84e9e0200
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0079c614    8d4c2438
                         push               ecx                                           // 0x0079c618    51
                         mov.s              edi, eax                                      // 0x0079c619    8bf8
                         call               _wcslen                                       // 0x0079c61b    e8429e0200
                         add.s              edi, eax                                      // 0x0079c620    03f8
                         add                esp, 0x28                                     // 0x0079c622    83c428
                         cmp                edi, 0x00001b58                               // 0x0079c625    81ff581b0000
                         {disp8} jae        _jmp_addr_0x0079c63b                          // 0x0079c62b    730e
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0079c62d    8d542414
                         push               esi                                           // 0x0079c631    56
                         push               edx                                           // 0x0079c632    52
                         call               _jmp_addr_0x0079c770                          // 0x0079c633    e838010000
                         add                esp, 0x08                                     // 0x0079c638    83c408
_jmp_addr_0x0079c63b:    pop                edi                                           // 0x0079c63b    5f
                         pop                esi                                           // 0x0079c63c    5e
                         pop                ebp                                           // 0x0079c63d    5d
                         pop                ebx                                           // 0x0079c63e    5b
                         add                esp, 0x00000184                               // 0x0079c63f    81c484010000
                         ret                                                              // 0x0079c645    c3
                         nop                                                              // 0x0079c646    90
                         nop                                                              // 0x0079c647    90
                         nop                                                              // 0x0079c648    90
                         nop                                                              // 0x0079c649    90
                         nop                                                              // 0x0079c64a    90
                         nop                                                              // 0x0079c64b    90
                         nop                                                              // 0x0079c64c    90
                         nop                                                              // 0x0079c64d    90
                         nop                                                              // 0x0079c64e    90
                         nop                                                              // 0x0079c64f    90
_jmp_addr_0x0079c650:    sub                esp, 0x00000804                               // 0x0079c650    81ec04080000
                         push               ebx                                           // 0x0079c656    53
                         push               ebp                                           // 0x0079c657    55
                         push               esi                                           // 0x0079c658    56
                         push               edi                                           // 0x0079c659    57
                         {disp32} mov       edi, dword ptr [esp + 0x00000820]             // 0x0079c65a    8bbc2420080000
                         push               0x000002dd                                    // 0x0079c661    68dd020000
                         push               0x00c2a324                                    // 0x0079c666    6824a3c200
                         push               edi                                           // 0x0079c66b    57
                         call               _wcslen                                       // 0x0079c66c    e8f19d0200
                         {disp8} lea        eax, dword ptr [eax + eax * 0x1 + 0x02]       // 0x0079c671    8d440002
                         add                esp, 0x04                                     // 0x0079c675    83c404
                         push               eax                                           // 0x0079c678    50
                         call               ___nw__FUl                                    // 0x0079c679    e812f10300
                         push               edi                                           // 0x0079c67e    57
                         mov.s              esi, eax                                      // 0x0079c67f    8bf0
                         call               _wcslen                                       // 0x0079c681    e8dc9d0200
                         mov.s              ecx, eax                                      // 0x0079c686    8bc8
                         inc                ecx                                           // 0x0079c688    41
                         mov.s              edx, ecx                                      // 0x0079c689    8bd1
                         shr                ecx, 2                                        // 0x0079c68b    c1e902
                         xor.s              eax, eax                                      // 0x0079c68e    33c0
                         mov.s              edi, esi                                      // 0x0079c690    8bfe
                         rep stosd                                                        // 0x0079c692    f3ab
                         mov.s              ecx, edx                                      // 0x0079c694    8bca
                         and                ecx, 0x03                                     // 0x0079c696    83e103
                         rep stosb                                                        // 0x0079c699    f3aa
                         {disp32} mov       edi, dword ptr [esp + 0x0000082c]             // 0x0079c69b    8bbc242c080000
                         push               0x00c2a31c                                    // 0x0079c6a2    681ca3c200
                         push               edi                                           // 0x0079c6a7    57
                         call               _wcsstr                                       // 0x0079c6a8    e820bb0200
                         push               edi                                           // 0x0079c6ad    57
                         mov.s              ebp, eax                                      // 0x0079c6ae    8be8
                         call               _wcslen                                       // 0x0079c6b0    e8ad9d0200
                         add                ebp, 0x04                                     // 0x0079c6b5    83c504
                         push               ebp                                           // 0x0079c6b8    55
                         mov.s              ebx, eax                                      // 0x0079c6b9    8bd8
                         call               _wcslen                                       // 0x0079c6bb    e8a29d0200
                         mov.s              edx, eax                                      // 0x0079c6c0    8bd0
                         xor.s              eax, eax                                      // 0x0079c6c2    33c0
                         sub.s              ebx, edx                                      // 0x0079c6c4    2bda
                         mov                ecx, 0x00000200                               // 0x0079c6c6    b900020000
                         {disp8} lea        edi, dword ptr [esp + 0x34]                   // 0x0079c6cb    8d7c2434
                         rep stosd                                                        // 0x0079c6cf    f3ab
                         {disp32} mov       eax, dword ptr [esp + 0x0000083c]             // 0x0079c6d1    8b84243c080000
                         sub                ebx, 0x02                                     // 0x0079c6d8    83eb02
                         push               ebx                                           // 0x0079c6db    53
                         push               eax                                           // 0x0079c6dc    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x0079c6dd    8d4c243c
                         push               ecx                                           // 0x0079c6e1    51
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0079c6e2    8954243c
                         call               _wcsncat                                      // 0x0079c6e6    e874dd0200
                         {disp32} mov       edx, dword ptr [esp + 0x0000084c]             // 0x0079c6eb    8b94244c080000
                         add                esp, 0x2c                                     // 0x0079c6f2    83c42c
                         push               edx                                           // 0x0079c6f5    52
                         push               0x009cd6c8                                    // 0x0079c6f6    68c8d69c00
                         push               esi                                           // 0x0079c6fb    56
                         call               dword ptr [rdata_bytes + 0x360]               // 0x0079c6fc    ff1560938a00
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0079c702    8d442420
                         push               esi                                           // 0x0079c706    56
                         push               eax                                           // 0x0079c707    50
                         call               _wcscat                                       // 0x0079c708    e87f980200
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0079c70d    8b4c2424
                         push               ecx                                           // 0x0079c711    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0079c712    8d54242c
                         push               ebp                                           // 0x0079c716    55
                         push               edx                                           // 0x0079c717    52
                         call               _wcsncat                                      // 0x0079c718    e842dd0200
                         push               esi                                           // 0x0079c71d    56
                         call               ??3@YAXPAX@Z                                  // 0x0079c71e    e875270100
                         {disp32} mov       esi, dword ptr [esp + 0x0000083c]             // 0x0079c723    8bb4243c080000
                         push               esi                                           // 0x0079c72a    56
                         call               _wcslen                                       // 0x0079c72b    e8329d0200
                         mov.s              edi, eax                                      // 0x0079c730    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x0079c732    8d44243c
                         push               eax                                           // 0x0079c736    50
                         call               _wcslen                                       // 0x0079c737    e8269d0200
                         add.s              edi, eax                                      // 0x0079c73c    03f8
                         add                esp, 0x2c                                     // 0x0079c73e    83c42c
                         cmp                edi, 0x00001b58                               // 0x0079c741    81ff581b0000
                         {disp8} jae        _jmp_addr_0x0079c757                          // 0x0079c747    730e
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0079c749    8d4c2414
                         push               esi                                           // 0x0079c74d    56
                         push               ecx                                           // 0x0079c74e    51
                         call               _jmp_addr_0x0079c770                          // 0x0079c74f    e81c000000
                         add                esp, 0x08                                     // 0x0079c754    83c408
_jmp_addr_0x0079c757:    pop                edi                                           // 0x0079c757    5f
                         pop                esi                                           // 0x0079c758    5e
                         pop                ebp                                           // 0x0079c759    5d
                         pop                ebx                                           // 0x0079c75a    5b
                         add                esp, 0x00000804                               // 0x0079c75b    81c404080000
                         ret                                                              // 0x0079c761    c3
                         nop                                                              // 0x0079c762    90
                         nop                                                              // 0x0079c763    90
                         nop                                                              // 0x0079c764    90
                         nop                                                              // 0x0079c765    90
                         nop                                                              // 0x0079c766    90
                         nop                                                              // 0x0079c767    90
                         nop                                                              // 0x0079c768    90
                         nop                                                              // 0x0079c769    90
                         nop                                                              // 0x0079c76a    90
                         nop                                                              // 0x0079c76b    90
                         nop                                                              // 0x0079c76c    90
                         nop                                                              // 0x0079c76d    90
                         nop                                                              // 0x0079c76e    90
                         nop                                                              // 0x0079c76f    90
_jmp_addr_0x0079c770:    sub                esp, 0x00000c7c                               // 0x0079c770    81ec7c0c0000
                         {disp32} mov       eax, dword ptr [esp + 0x00000c80]             // 0x0079c776    8b8424800c0000
                         push               ebx                                           // 0x0079c77d    53
                         push               ebp                                           // 0x0079c77e    55
                         push               esi                                           // 0x0079c77f    56
                         push               edi                                           // 0x0079c780    57
                         push               eax                                           // 0x0079c781    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000090]             // 0x0079c782    8d8c2490000000
                         push               ecx                                           // 0x0079c789    51
                         call               _wcscpy                                       // 0x0079c78a    e827980200
                         or                 eax, -0x1                                     // 0x0079c78f    83c8ff
                         {disp32} lea       edx, dword ptr [esp + 0x00000094]             // 0x0079c792    8d942494000000
                         push               edx                                           // 0x0079c799    52
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0079c79a    8944242c
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0079c79e    89442428
                         call               _wcslen                                       // 0x0079c7a2    e8bb9c0200
                         mov.s              ebx, eax                                      // 0x0079c7a7    8bd8
                         add                esp, 0x0c                                     // 0x0079c7a9    83c40c
                         xor.s              esi, esi                                      // 0x0079c7ac    33f6
                         test               ebx, ebx                                      // 0x0079c7ae    85db
                         {disp32} jle       _jmp_addr_0x0079ca4e                          // 0x0079c7b0    0f8e98020000
_jmp_addr_0x0079c7b6:    {disp32} mov       ax, word ptr [esp + esi * 0x2 + 0x0000008c]   // 0x0079c7b6    668b84748c000000
                         cmp                ax, 0x0024                                    // 0x0079c7be    663d2400
                         {disp32} lea       edi, dword ptr [esp + esi * 0x2 + 0x0000008c] // 0x0079c7c2    8dbc748c000000
                         {disp8} je         _jmp_addr_0x0079c7db                          // 0x0079c7c9    7410
                         cmp                ax, 0x002f                                    // 0x0079c7cb    663d2f00
                         {disp8} je         _jmp_addr_0x0079c7db                          // 0x0079c7cf    740a
                         cmp                ax, 0x005c                                    // 0x0079c7d1    663d5c00
                         {disp32} jne       _jmp_addr_0x0079ca45                          // 0x0079c7d5    0f856a020000
_jmp_addr_0x0079c7db:    {disp32} mov       ax, word ptr [esp + esi * 0x2 + 0x0000008e]   // 0x0079c7db    668b84748e000000
                         cmp                ax, 0x0067                                    // 0x0079c7e3    663d6700
                         {disp32} je        _jmp_addr_0x0079c9e7                          // 0x0079c7e7    0f84fa010000
                         cmp                ax, 0x0047                                    // 0x0079c7ed    663d4700
                         {disp32} je        _jmp_addr_0x0079c9e7                          // 0x0079c7f1    0f84f0010000
                         cmp                ax, 0x006d                                    // 0x0079c7f7    663d6d00
                         {disp8} je         _jmp_addr_0x0079c833                          // 0x0079c7fb    7436
                         cmp                ax, 0x004d                                    // 0x0079c7fd    663d4d00
                         {disp8} je         _jmp_addr_0x0079c833                          // 0x0079c801    7430
                         cmp.s              esi, ebx                                      // 0x0079c803    3bf3
                         {disp32} jge       _jmp_addr_0x0079ca45                          // 0x0079c805    0f8d3a020000
_jmp_addr_0x0079c80b:    xor.s              eax, eax                                      // 0x0079c80b    33c0
                         mov                ax, word ptr [edi]                            // 0x0079c80d    668b07
                         push               eax                                           // 0x0079c810    50
                         call               _iswspace                                     // 0x0079c811    e852a30200
                         add                esp, 0x04                                     // 0x0079c816    83c404
                         test               eax, eax                                      // 0x0079c819    85c0
                         {disp32} jne       _jmp_addr_0x0079ca45                          // 0x0079c81b    0f8524020000
                         mov                word ptr [edi], -0x0702                       // 0x0079c821    66c707fef8
                         inc                esi                                           // 0x0079c826    46
                         add                edi, 0x02                                     // 0x0079c827    83c702
                         cmp.s              esi, ebx                                      // 0x0079c82a    3bf3
                         {disp8} jl         _jmp_addr_0x0079c80b                          // 0x0079c82c    7cdd
                         {disp32} jmp       _jmp_addr_0x0079ca45                          // 0x0079c82e    e912020000
_jmp_addr_0x0079c833:    add                esi, 0x02                                     // 0x0079c833    83c602
                         cmp.s              esi, ebx                                      // 0x0079c836    3bf3
                         mov                word ptr [edi], 0x0000                        // 0x0079c838    66c7070000
                         mov.s              ebp, esi                                      // 0x0079c83d    8bee
                         {disp8} jge        _jmp_addr_0x0079c862                          // 0x0079c83f    7d21
                         {disp32} lea       edi, dword ptr [esp + esi * 0x2 + 0x0000008c] // 0x0079c841    8dbc748c000000
_jmp_addr_0x0079c848:    xor.s              ecx, ecx                                      // 0x0079c848    33c9
                         mov                cx, word ptr [edi]                            // 0x0079c84a    668b0f
                         push               ecx                                           // 0x0079c84d    51
                         call               _iswspace                                     // 0x0079c84e    e815a30200
                         add                esp, 0x04                                     // 0x0079c853    83c404
                         test               eax, eax                                      // 0x0079c856    85c0
                         {disp8} jne        _jmp_addr_0x0079c862                          // 0x0079c858    7508
                         inc                esi                                           // 0x0079c85a    46
                         add                edi, 0x02                                     // 0x0079c85b    83c702
                         cmp.s              esi, ebx                                      // 0x0079c85e    3bf3
                         {disp8} jl         _jmp_addr_0x0079c848                          // 0x0079c860    7ce6
_jmp_addr_0x0079c862:    mov.s              edi, esi                                      // 0x0079c862    8bfe
                         sub.s              edi, ebp                                      // 0x0079c864    2bfd
                         push               edi                                           // 0x0079c866    57
                         {disp32} lea       edx, dword ptr [esp + ebp * 0x2 + 0x00000090] // 0x0079c867    8d946c90000000
                         push               edx                                           // 0x0079c86e    52
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0079c86f    8d442454
                         push               eax                                           // 0x0079c873    50
                         call               _wcsncpy                                      // 0x0079c874    e8ac9b0200
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x0079c879    8d4c2458
                         xor.s              ebp, ebp                                      // 0x0079c87d    33ed
                         push               ecx                                           // 0x0079c87f    51
                         {disp8} mov        word ptr [esp + edi * 0x2 + 0x5c], bp         // 0x0079c880    66896c7c5c
                         call               __wtoi                                        // 0x0079c885    e84ebf0200
                         add                esp, 0x10                                     // 0x0079c88a    83c410
                         cmp.s              eax, ebp                                      // 0x0079c88d    3bc5
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0079c88f    8944241c
                         {disp32} jl        _jmp_addr_0x0079ca45                          // 0x0079c893    0f8cac010000
                         cmp                eax, 0x21                                     // 0x0079c899    83f821
                         {disp32} jge       _jmp_addr_0x0079ca45                          // 0x0079c89c    0f8da3010000
                         {disp32} lea       edx, dword ptr [esp + 0x0000008c]             // 0x0079c8a2    8d94248c000000
                         push               0x00c2a350                                    // 0x0079c8a9    6850a3c200
                         push               edx                                           // 0x0079c8ae    52
                         call               _wcscat                                       // 0x0079c8af    e8d8960200
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0079c8b4    8b4c2424
                         mov.s              eax, ecx                                      // 0x0079c8b8    8bc1
                         shl                eax, 6                                        // 0x0079c8ba    c1e006
                         add.s              eax, ecx                                      // 0x0079c8bd    03c1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0079c8bf    8b0d5c19d000
                         lea                edi, dword ptr [eax + eax * 0x2]              // 0x0079c8c5    8d3c40
                         {disp32} mov       word ptr [esp + 0x00000a94], bp               // 0x0079c8c8    6689ac24940a0000
                         {disp32} mov       word ptr [esp + 0x00000894], bp               // 0x0079c8d0    6689ac2494080000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x0079c8d8    8b8900032500
                         add                esp, 0x08                                     // 0x0079c8de    83c408
                         {disp32} lea       eax, dword ptr [esp + 0x00000a8c]             // 0x0079c8e1    8d84248c0a0000
                         shl                edi, 2                                        // 0x0079c8e8    c1e702
                         push               eax                                           // 0x0079c8eb    50
                         add.s              ecx, edi                                      // 0x0079c8ec    03cf
                         call               _jmp_addr_0x0046f260                          // 0x0079c8ee    e86d29cdff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0079c8f3    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0079c8f8    8b8800032500
                         {disp32} lea       edx, dword ptr [esp + 0x0000088c]             // 0x0079c8fe    8d94248c080000
                         push               edx                                           // 0x0079c905    52
                         add.s              ecx, edi                                      // 0x0079c906    03cf
                         call               _jmp_addr_0x0046f2b0                          // 0x0079c908    e8a329cdff
                         cmp                word ptr [esp + 0x00000a8c], bp               // 0x0079c90d    6639ac248c0a0000
                         {disp8} je         _jmp_addr_0x0079c92f                          // 0x0079c915    7418
                         {disp32} lea       ecx, dword ptr [esp + 0x00000a8c]             // 0x0079c917    8d8c248c0a0000
                         push               ecx                                           // 0x0079c91e    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000090]             // 0x0079c91f    8d942490000000
                         push               edx                                           // 0x0079c926    52
                         call               _wcscat                                       // 0x0079c927    e860960200
                         add                esp, 0x08                                     // 0x0079c92c    83c408
_jmp_addr_0x0079c92f:    cmp                word ptr [esp + 0x0000088c], bp               // 0x0079c92f    6639ac248c080000
                         {disp32} je        _jmp_addr_0x0079c9d0                          // 0x0079c937    0f8493000000
                         {disp32} mov       eax, dword ptr [esp + 0x0000088c]             // 0x0079c93d    8b84248c080000
                         push               eax                                           // 0x0079c944    50
                         {disp32} lea       edi, dword ptr [esp + 0x00000890]             // 0x0079c945    8dbc2490080000
                         call               _iswspace                                     // 0x0079c94c    e817a20200
                         add                esp, 0x04                                     // 0x0079c951    83c404
                         test               eax, eax                                      // 0x0079c954    85c0
                         {disp8} je         _jmp_addr_0x0079c973                          // 0x0079c956    741b
_jmp_addr_0x0079c958:    cmp                word ptr [edi], bp                            // 0x0079c958    66392f
                         {disp8} je         _jmp_addr_0x0079c973                          // 0x0079c95b    7416
                         xor.s              ecx, ecx                                      // 0x0079c95d    33c9
                         {disp8} mov        cx, word ptr [edi + 0x02]                     // 0x0079c95f    668b4f02
                         add                edi, 0x02                                     // 0x0079c963    83c702
                         push               ecx                                           // 0x0079c966    51
                         call               _iswspace                                     // 0x0079c967    e8fca10200
                         add                esp, 0x04                                     // 0x0079c96c    83c404
                         test               eax, eax                                      // 0x0079c96f    85c0
                         {disp8} jne        _jmp_addr_0x0079c958                          // 0x0079c971    75e5
_jmp_addr_0x0079c973:    cmp                word ptr [edi], 0x28                          // 0x0079c973    66833f28
                         {disp8} jne        _jmp_addr_0x0079c97c                          // 0x0079c977    7503
                         add                edi, 0x02                                     // 0x0079c979    83c702
_jmp_addr_0x0079c97c:    push               edi                                           // 0x0079c97c    57
                         call               _wcslen                                       // 0x0079c97d    e8e09a0200
                         add                esp, 0x04                                     // 0x0079c982    83c404
                         cmp                word ptr [edi + eax * 0x2 + -0x02], 0x29      // 0x0079c985    66837c47fe29
                         {disp8} jne        _jmp_addr_0x0079c99b                          // 0x0079c98b    750e
                         push               edi                                           // 0x0079c98d    57
                         call               _wcslen                                       // 0x0079c98e    e8cf9a0200
                         add                esp, 0x04                                     // 0x0079c993    83c404
                         {disp8} mov        word ptr [edi + eax * 0x2 + -0x02], bp        // 0x0079c996    66896c47fe
_jmp_addr_0x0079c99b:    cmp                word ptr [edi], bp                            // 0x0079c99b    66392f
                         {disp8} je         _jmp_addr_0x0079c9d0                          // 0x0079c99e    7430
                         cmp                word ptr [esp + 0x00000a8c], bp               // 0x0079c9a0    6639ac248c0a0000
                         {disp8} je         _jmp_addr_0x0079c9bf                          // 0x0079c9a8    7415
                         {disp32} lea       edx, dword ptr [esp + 0x0000008c]             // 0x0079c9aa    8d94248c000000
                         push               0x009cee0c                                    // 0x0079c9b1    680cee9c00
                         push               edx                                           // 0x0079c9b6    52
                         call               _wcscat                                       // 0x0079c9b7    e8d0950200
                         add                esp, 0x08                                     // 0x0079c9bc    83c408
_jmp_addr_0x0079c9bf:    {disp32} lea       eax, dword ptr [esp + 0x0000008c]             // 0x0079c9bf    8d84248c000000
                         push               edi                                           // 0x0079c9c6    57
                         push               eax                                           // 0x0079c9c7    50
                         call               _wcscat                                       // 0x0079c9c8    e8bf950200
                         add                esp, 0x08                                     // 0x0079c9cd    83c408
_jmp_addr_0x0079c9d0:    {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x0079c9d0    8d8c248c000000
                         push               0x00c2a34c                                    // 0x0079c9d7    684ca3c200
                         push               ecx                                           // 0x0079c9dc    51
                         call               _wcscat                                       // 0x0079c9dd    e8aa950200
                         add                esp, 0x08                                     // 0x0079c9e2    83c408
                         {disp8} jmp        _jmp_addr_0x0079ca45                          // 0x0079c9e5    eb5e
_jmp_addr_0x0079c9e7:    add                esi, 0x02                                     // 0x0079c9e7    83c602
                         cmp.s              esi, ebx                                      // 0x0079c9ea    3bf3
                         mov                word ptr [edi], 0x0000                        // 0x0079c9ec    66c7070000
                         mov.s              ebp, esi                                      // 0x0079c9f1    8bee
                         {disp8} jge        _jmp_addr_0x0079ca16                          // 0x0079c9f3    7d21
                         {disp32} lea       edi, dword ptr [esp + esi * 0x2 + 0x0000008c] // 0x0079c9f5    8dbc748c000000
_jmp_addr_0x0079c9fc:    xor.s              edx, edx                                      // 0x0079c9fc    33d2
                         mov                dx, word ptr [edi]                            // 0x0079c9fe    668b17
                         push               edx                                           // 0x0079ca01    52
                         call               _iswspace                                     // 0x0079ca02    e861a10200
                         add                esp, 0x04                                     // 0x0079ca07    83c404
                         test               eax, eax                                      // 0x0079ca0a    85c0
                         {disp8} jne        _jmp_addr_0x0079ca16                          // 0x0079ca0c    7508
                         inc                esi                                           // 0x0079ca0e    46
                         add                edi, 0x02                                     // 0x0079ca0f    83c702
                         cmp.s              esi, ebx                                      // 0x0079ca12    3bf3
                         {disp8} jl         _jmp_addr_0x0079c9fc                          // 0x0079ca14    7ce6
_jmp_addr_0x0079ca16:    mov.s              edi, esi                                      // 0x0079ca16    8bfe
                         sub.s              edi, ebp                                      // 0x0079ca18    2bfd
                         push               edi                                           // 0x0079ca1a    57
                         {disp32} lea       eax, dword ptr [esp + ebp * 0x2 + 0x00000090] // 0x0079ca1b    8d846c90000000
                         push               eax                                           // 0x0079ca22    50
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x0079ca23    8d4c2474
                         push               ecx                                           // 0x0079ca27    51
                         call               _wcsncpy                                      // 0x0079ca28    e8f8990200
                         {disp8} lea        edx, dword ptr [esp + 0x78]                   // 0x0079ca2d    8d542478
                         push               edx                                           // 0x0079ca31    52
                         {disp8} mov        word ptr [esp + edi * 0x2 + 0x7c], 0x0000     // 0x0079ca32    66c7447c7c0000
                         call               __wtoi                                        // 0x0079ca39    e89abd0200
                         add                esp, 0x10                                     // 0x0079ca3e    83c410
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0079ca41    89442420
_jmp_addr_0x0079ca45:    inc                esi                                           // 0x0079ca45    46
                         cmp.s              esi, ebx                                      // 0x0079ca46    3bf3
                         {disp32} jl        _jmp_addr_0x0079c7b6                          // 0x0079ca48    0f8c68fdffff
_jmp_addr_0x0079ca4e:    {disp32} mov       eax, dword ptr [data_bytes + 0x470104]        // 0x0079ca4e    a10461e300
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0079ca53    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0079ca57    c744243000000000
                         {disp8} fild       qword ptr [esp + 0x2c]                        // 0x0079ca5f    df6c242c
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x0079ca63    8d8c248c000000
                         push               ecx                                           // 0x0079ca6a    51
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0079ca6b    d95c241c
                         call               _wcslen                                       // 0x0079ca6f    e8ee990200
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0079ca74    8b54241c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x470138]        // 0x0079ca78    8b0d3861e300
                         add                esp, 0x04                                     // 0x0079ca7e    83c404
                         push               edx                                           // 0x0079ca81    52
                         push               eax                                           // 0x0079ca82    50
                         {disp32} lea       eax, dword ptr [esp + 0x00000094]             // 0x0079ca83    8d842494000000
                         push               eax                                           // 0x0079ca8a    50
                         call               @GetStringWidth__13GatheringTextFPwif@20      // 0x0079ca8b    e8a0460900
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2611c]             // 0x0079ca90    d80d1cf18c00
                         call               _jmp_addr_0x007a1400                          // 0x0079ca96    e865490000
                         mov.s              ebp, eax                                      // 0x0079ca9b    8be8
                         cmp                ebp, 0x000000e6                               // 0x0079ca9d    81fde6000000
                         {disp32} jb        _jmp_addr_0x0079cbba                          // 0x0079caa3    0f8211010000
                         xor.s              esi, esi                                      // 0x0079caa9    33f6
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                   // 0x0079caab    896c243c
                         {disp8} mov        dword ptr [esp + 0x40], esi                   // 0x0079caaf    89742440
                         {disp8} fild       qword ptr [esp + 0x3c]                        // 0x0079cab3    df6c243c
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x0079cab7    8d8c248c000000
                         push               ecx                                           // 0x0079cabe    51
                         {disp32} fdivr     dword ptr [rdata_bytes + 0xf5f20]             // 0x0079cabf    d83d20ef9900
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0079cac5    d95c241c
                         call               _wcslen                                       // 0x0079cac9    e894990200
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0079cace    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x0079cad2    8974242c
                         {disp8} fild       qword ptr [esp + 0x28]                        // 0x0079cad6    df6c2428
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0079cada    d84c241c
                         call               _jmp_addr_0x007a1400                          // 0x0079cade    e81d490000
                         {disp32} lea       edx, dword ptr [esp + 0x00000090]             // 0x0079cae3    8d942490000000
                         push               edx                                           // 0x0079caea    52
                         mov.s              ebx, eax                                      // 0x0079caeb    8bd8
                         call               _wcslen                                       // 0x0079caed    e870990200
                         add                esp, 0x08                                     // 0x0079caf2    83c408
                         test               eax, eax                                      // 0x0079caf5    85c0
                         {disp8} jbe        _jmp_addr_0x0079cb6c                          // 0x0079caf7    7673
                         {disp32} lea       edi, dword ptr [esp + 0x0000008c]             // 0x0079caf9    8dbc248c000000
_jmp_addr_0x0079cb00:    mov                ax, word ptr [edi]                            // 0x0079cb00    668b07
                         cmp                ax, 0x0020                                    // 0x0079cb03    663d2000
                         {disp8} je         _jmp_addr_0x0079cb0f                          // 0x0079cb07    7406
                         cmp                ax, 0xf8fe                                    // 0x0079cb09    663dfef8
                         {disp8} jne        _jmp_addr_0x0079cb54                          // 0x0079cb0d    7545
_jmp_addr_0x0079cb0f:    {disp8} mov        dword ptr [esp + 0x34], esi                   // 0x0079cb0f    89742434
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x0079cb13    c744243800000000
                         {disp8} fild       qword ptr [esp + 0x34]                        // 0x0079cb1b    df6c2434
                         {disp32} lea       eax, dword ptr [esp + 0x0000008c]             // 0x0079cb1f    8d84248c000000
                         push               eax                                           // 0x0079cb26    50
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0079cb27    d95c2414
                         call               _wcslen                                       // 0x0079cb2b    e832990200
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x0079cb30    89442448
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000            // 0x0079cb34    c744244c00000000
                         {disp8} fild       qword ptr [esp + 0x48]                        // 0x0079cb3c    df6c2448
                         add                esp, 0x04                                     // 0x0079cb40    83c404
                         {disp8} fdivr      dword ptr [esp + 0x10]                        // 0x0079cb43    d87c2410
                         {disp8} fcomp      dword ptr [esp + 0x18]                        // 0x0079cb47    d85c2418
                         fnstsw             ax                                            // 0x0079cb4b    dfe0
                         test               ah, 0x01                                      // 0x0079cb4d    f6c401
                         {disp8} je         _jmp_addr_0x0079cb54                          // 0x0079cb50    7402
                         mov.s              ebx, esi                                      // 0x0079cb52    8bde
_jmp_addr_0x0079cb54:    {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x0079cb54    8d8c248c000000
                         push               ecx                                           // 0x0079cb5b    51
                         inc                esi                                           // 0x0079cb5c    46
                         add                edi, 0x02                                     // 0x0079cb5d    83c702
                         call               _wcslen                                       // 0x0079cb60    e8fd980200
                         add                esp, 0x04                                     // 0x0079cb65    83c404
                         cmp.s              esi, eax                                      // 0x0079cb68    3bf0
                         .byte              0x72, 0x94// {disp8} jb _jmp_addr_0x0079cb00  // 0x0079cb6a    7294
_jmp_addr_0x0079cb6c:    {disp32} mov       esi, dword ptr [esp + 0x00000c94]             // 0x0079cb6c    8bb424940c0000
                         push               ebx                                           // 0x0079cb73    53
                         {disp32} lea       edx, dword ptr [esp + 0x00000090]             // 0x0079cb74    8d942490000000
                         push               edx                                           // 0x0079cb7b    52
                         push               esi                                           // 0x0079cb7c    56
                         call               _wcsncat                                      // 0x0079cb7d    e8ddd80200
                         push               esi                                           // 0x0079cb82    56
                         call               _jmp_addr_0x0079a640                          // 0x0079cb83    e8b8daffff
                         {disp32} mov       ax, word ptr [esp + ebx * 0x2 + 0x0000009c]   // 0x0079cb88    668b845c9c000000
                         add                esp, 0x10                                     // 0x0079cb90    83c410
                         cmp                ax, 0x0020                                    // 0x0079cb93    663d2000
                         {disp8} je         _jmp_addr_0x0079cb9f                          // 0x0079cb97    7406
                         cmp                ax, 0xf8fe                                    // 0x0079cb99    663dfef8
                         {disp8} jne        _jmp_addr_0x0079cba0                          // 0x0079cb9d    7501
_jmp_addr_0x0079cb9f:    inc                ebx                                           // 0x0079cb9f    43
_jmp_addr_0x0079cba0:    {disp32} lea       eax, dword ptr [esp + ebx * 0x2 + 0x0000008c] // 0x0079cba0    8d845c8c000000
                         push               eax                                           // 0x0079cba7    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000090]             // 0x0079cba8    8d8c2490000000
                         push               ecx                                           // 0x0079cbaf    51
                         call               _wcscpy                                       // 0x0079cbb0    e801940200
                         add                esp, 0x08                                     // 0x0079cbb5    83c408
                         {disp8} jmp        _jmp_addr_0x0079cbd8                          // 0x0079cbb8    eb1e
_jmp_addr_0x0079cbba:    {disp32} mov       esi, dword ptr [esp + 0x00000c94]             // 0x0079cbba    8bb424940c0000
                         {disp32} lea       edx, dword ptr [esp + 0x0000008c]             // 0x0079cbc1    8d94248c000000
                         push               edx                                           // 0x0079cbc8    52
                         push               esi                                           // 0x0079cbc9    56
                         call               _wcscat                                       // 0x0079cbca    e8bd930200
                         push               esi                                           // 0x0079cbcf    56
                         call               _jmp_addr_0x0079a640                          // 0x0079cbd0    e86bdaffff
                         add                esp, 0x0c                                     // 0x0079cbd5    83c40c
_jmp_addr_0x0079cbd8:    cmp                ebp, 0x000000e6                               // 0x0079cbd8    81fde6000000
                         {disp32} jae       _jmp_addr_0x0079ca4e                          // 0x0079cbde    0f836afeffff
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0079cbe4    8b442420
                         xor.s              edi, edi                                      // 0x0079cbe8    33ff
                         cmp.s              eax, edi                                      // 0x0079cbea    3bc7
                         {disp8} jl         _jmp_addr_0x0079cc27                          // 0x0079cbec    7c39
                         {disp32} mov       esi, dword ptr [esp + 0x00000c94]             // 0x0079cbee    8bb424940c0000
                         add                eax, 0xfffff8fe                               // 0x0079cbf5    05fef8ffff
                         {disp8} mov        word ptr [esp + 0x12], ax                     // 0x0079cbfa    6689442412
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0079cbff    8d442410
                         push               eax                                           // 0x0079cc03    50
                         push               esi                                           // 0x0079cc04    56
                         {disp8} mov        word ptr [esp + 0x18], -0x0701                // 0x0079cc05    66c7442418fff8
                         {disp8} mov        word ptr [esp + 0x1c], di                     // 0x0079cc0c    66897c241c
                         call               _wcscat                                       // 0x0079cc11    e876930200
                         push               esi                                           // 0x0079cc16    56
                         call               _jmp_addr_0x0079a640                          // 0x0079cc17    e824daffff
                         push               esi                                           // 0x0079cc1c    56
                         call               _jmp_addr_0x0079a640                          // 0x0079cc1d    e81edaffff
                         add                esp, 0x10                                     // 0x0079cc22    83c410
                         {disp8} jmp        _jmp_addr_0x0079cc2e                          // 0x0079cc25    eb07
_jmp_addr_0x0079cc27:    {disp32} mov       esi, dword ptr [esp + 0x00000c94]             // 0x0079cc27    8bb424940c0000
_jmp_addr_0x0079cc2e:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0079cc2e    8b44241c
                         cmp.s              eax, edi                                      // 0x0079cc32    3bc7
                         {disp8} jl         _jmp_addr_0x0079cc66                          // 0x0079cc34    7c30
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0079cc36    8d4c2410
                         push               ecx                                           // 0x0079cc3a    51
                         add                eax, 0xfffff8fe                               // 0x0079cc3b    05fef8ffff
                         push               esi                                           // 0x0079cc40    56
                         {disp8} mov        word ptr [esp + 0x18], -0x0700                // 0x0079cc41    66c744241800f9
                         {disp8} mov        word ptr [esp + 0x1a], ax                     // 0x0079cc48    668944241a
                         {disp8} mov        word ptr [esp + 0x1c], di                     // 0x0079cc4d    66897c241c
                         call               _wcscat                                       // 0x0079cc52    e835930200
                         push               esi                                           // 0x0079cc57    56
                         call               _jmp_addr_0x0079a640                          // 0x0079cc58    e8e3d9ffff
                         push               esi                                           // 0x0079cc5d    56
                         call               _jmp_addr_0x0079a640                          // 0x0079cc5e    e8ddd9ffff
                         add                esp, 0x10                                     // 0x0079cc63    83c410
_jmp_addr_0x0079cc66:    pop                edi                                           // 0x0079cc66    5f
                         pop                esi                                           // 0x0079cc67    5e
                         pop                ebp                                           // 0x0079cc68    5d
                         pop                ebx                                           // 0x0079cc69    5b
                         add                esp, 0x00000c7c                               // 0x0079cc6a    81c47c0c0000
                         ret                                                              // 0x0079cc70    c3
                         nop                                                              // 0x0079cc71    90
                         nop                                                              // 0x0079cc72    90
                         nop                                                              // 0x0079cc73    90
                         nop                                                              // 0x0079cc74    90
                         nop                                                              // 0x0079cc75    90
                         nop                                                              // 0x0079cc76    90
                         nop                                                              // 0x0079cc77    90
                         nop                                                              // 0x0079cc78    90
                         nop                                                              // 0x0079cc79    90
                         nop                                                              // 0x0079cc7a    90
                         nop                                                              // 0x0079cc7b    90
                         nop                                                              // 0x0079cc7c    90
                         nop                                                              // 0x0079cc7d    90
                         nop                                                              // 0x0079cc7e    90
                         nop                                                              // 0x0079cc7f    90
_jmp_addr_0x0079cc80:    {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0079cc80    8b5104
                         test               edx, edx                                      // 0x0079cc83    85d2
                         {disp8} ja         _jmp_addr_0x0079cc8c                          // 0x0079cc85    7705
                         xor.s              eax, eax                                      // 0x0079cc87    33c0
                         ret                0x0004                                        // 0x0079cc89    c20400
_jmp_addr_0x0079cc8c:    mov                eax, dword ptr [ecx]                          // 0x0079cc8c    8b01
                         test               eax, eax                                      // 0x0079cc8e    85c0
                         {disp8} jne        _jmp_addr_0x0079cc95                          // 0x0079cc90    7503
                         ret                0x0004                                        // 0x0079cc92    c20400
_jmp_addr_0x0079cc95:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0079cc95    8b4c2404
                         cmp.s              ecx, edx                                      // 0x0079cc99    3bca
                         {disp8} jl         _jmp_addr_0x0079cca2                          // 0x0079cc9b    7c05
                         xor.s              eax, eax                                      // 0x0079cc9d    33c0
                         ret                0x0004                                        // 0x0079cc9f    c20400
_jmp_addr_0x0079cca2:    test               ecx, ecx                                      // 0x0079cca2    85c9
                         {disp8} jle        _jmp_addr_0x0079ccab                          // 0x0079cca4    7e05
_jmp_addr_0x0079cca6:    dec                ecx                                           // 0x0079cca6    49
                         mov                eax, dword ptr [eax]                          // 0x0079cca7    8b00
                         {disp8} jne        _jmp_addr_0x0079cca6                          // 0x0079cca9    75fb
_jmp_addr_0x0079ccab:    ret                0x0004                                        // 0x0079ccab    c20400
                         nop                                                              // 0x0079ccae    90
                         nop                                                              // 0x0079ccaf    90
_globl_ct_0x0079ccb0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0079ccb0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0079ccb6    b001
                         test               al, cl                                        // 0x0079ccb8    84c8
                         {disp8} jne        _jmp_addr_0x0079ccc4                          // 0x0079ccba    7508
                         or.s               cl, al                                        // 0x0079ccbc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0079ccbe    880d34c9fa00
_jmp_addr_0x0079ccc4:    {disp32} jmp       _jmp_addr_0x0079ccd0                          // 0x0079ccc4    e907000000
                         nop                                                              // 0x0079ccc9    90
                         nop                                                              // 0x0079ccca    90
                         nop                                                              // 0x0079cccb    90
                         nop                                                              // 0x0079cccc    90
                         nop                                                              // 0x0079cccd    90
                         nop                                                              // 0x0079ccce    90
                         nop                                                              // 0x0079cccf    90
_jmp_addr_0x0079ccd0:    push               0x00407870                                    // 0x0079ccd0    6870784000
                         call               _atexit                                       // 0x0079ccd5    e8b78a0200
                         pop                ecx                                           // 0x0079ccda    59
                         ret                                                              // 0x0079ccdb    c3
                         nop                                                              // 0x0079ccdc    90
                         nop                                                              // 0x0079ccdd    90
                         nop                                                              // 0x0079ccde    90
                         nop                                                              // 0x0079ccdf    90
_globl_ct_0x0079cce0:    {disp32} jmp       _jmp_addr_0x0079ccf0                          // 0x0079cce0    e90b000000
                         nop                                                              // 0x0079cce5    90
                         nop                                                              // 0x0079cce6    90
                         nop                                                              // 0x0079cce7    90
                         nop                                                              // 0x0079cce8    90
                         nop                                                              // 0x0079cce9    90
                         nop                                                              // 0x0079ccea    90
                         nop                                                              // 0x0079cceb    90
                         nop                                                              // 0x0079ccec    90
                         nop                                                              // 0x0079cced    90
                         nop                                                              // 0x0079ccee    90
                         nop                                                              // 0x0079ccef    90
_jmp_addr_0x0079ccf0:    {disp32} mov       dword ptr [data_bytes + 0x470154], 0xffffffff // 0x0079ccf0    c7055461e300ffffffff
                         ret                                                              // 0x0079ccfa    c3
                         nop                                                              // 0x0079ccfb    90
                         nop                                                              // 0x0079ccfc    90
                         nop                                                              // 0x0079ccfd    90
                         nop                                                              // 0x0079ccfe    90
                         nop                                                              // 0x0079ccff    90
_globl_ct_0x0079cd00:    {disp32} jmp       _jmp_addr_0x0079cd10                          // 0x0079cd00    e90b000000
                         nop                                                              // 0x0079cd05    90
                         nop                                                              // 0x0079cd06    90
                         nop                                                              // 0x0079cd07    90
                         nop                                                              // 0x0079cd08    90
                         nop                                                              // 0x0079cd09    90
                         nop                                                              // 0x0079cd0a    90
                         nop                                                              // 0x0079cd0b    90
                         nop                                                              // 0x0079cd0c    90
                         nop                                                              // 0x0079cd0d    90
                         nop                                                              // 0x0079cd0e    90
                         nop                                                              // 0x0079cd0f    90
_jmp_addr_0x0079cd10:    {disp32} fld       dword ptr [rdata_bytes + 0xf5f28]             // 0x0079cd10    d90528ef9900
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f24]             // 0x0079cd16    d80d24ef9900
                         {disp32} fstp      dword ptr [data_bytes + 0x470150]             // 0x0079cd1c    d91d5061e300
                         ret                                                              // 0x0079cd22    c3
                         nop                                                              // 0x0079cd23    90
                         nop                                                              // 0x0079cd24    90
                         nop                                                              // 0x0079cd25    90
                         nop                                                              // 0x0079cd26    90
                         nop                                                              // 0x0079cd27    90
                         nop                                                              // 0x0079cd28    90
                         nop                                                              // 0x0079cd29    90
                         nop                                                              // 0x0079cd2a    90
                         nop                                                              // 0x0079cd2b    90
                         nop                                                              // 0x0079cd2c    90
                         nop                                                              // 0x0079cd2d    90
                         nop                                                              // 0x0079cd2e    90
                         nop                                                              // 0x0079cd2f    90
_jmp_addr_0x0079cd30:    sub                esp, 0x0c                                     // 0x0079cd30    83ec0c
                         push               ebx                                           // 0x0079cd33    53
                         push               ebp                                           // 0x0079cd34    55
                         push               esi                                           // 0x0079cd35    56
                         push               edi                                           // 0x0079cd36    57
                         mov.s              ebx, ecx                                      // 0x0079cd37    8bd9
                         push               0x00c2a464                                    // 0x0079cd39    6864a4c200
                         call               @__ct__15PictureRoomBaseFPCc@12               // 0x0079cd3e    e8cd23ffff
                         {disp8} mov        dword ptr [esp + 0x10], 0xc2ae0000            // 0x0079cd43    c74424100000aec2
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0079cd4b    8b4c2410
                         {disp32} lea       eax, dword ptr [ebx + 0x00000104]             // 0x0079cd4f    8d8304010000
                         mov                dword ptr [eax], ecx                          // 0x0079cd55    8908
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0079cd57    c744241400000000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0079cd5f    8b542414
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0079cd63    895004
                         {disp8} mov        dword ptr [esp + 0x18], 0x42ae0000            // 0x0079cd66    c74424180000ae42
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0079cd6e    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0079cd72    894808
                         mov                dword ptr [ebx], 0x0099ef30                   // 0x0079cd75    c70330ef9900
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x0079cd7b    a0e481c300
                         xor.s              edx, edx                                      // 0x0079cd80    33d2
                         cmp.s              al, dl                                        // 0x0079cd82    3ac2
                         mov                eax, 0x00c2a444                               // 0x0079cd84    b844a4c200
                         {disp8} je         _jmp_addr_0x0079cd90                          // 0x0079cd89    7405
                         mov                eax, 0x00c2a424                               // 0x0079cd8b    b824a4c200
_jmp_addr_0x0079cd90:    {disp32} mov       dword ptr [ebx + 0x00000114], eax             // 0x0079cd90    898314010000
                         {disp32} mov       dword ptr [ebx + 0x00000120], 0x00c2a404      // 0x0079cd96    c7832001000004a4c200
                         {disp32} mov       dword ptr [ebx + 0x00000110], 0x00c2a3e4      // 0x0079cda0    c78310010000e4a3c200
                         {disp32} mov       dword ptr [ebx + 0x00000118], 0x00c2a3c0      // 0x0079cdaa    c78318010000c0a3c200
                         cmp                byte ptr [data_bytes + 0x2721e4], dl          // 0x0079cdb4    3815e481c300
                         mov                eax, 0x00c2a398                               // 0x0079cdba    b898a3c200
                         {disp8} je         _jmp_addr_0x0079cdc6                          // 0x0079cdbf    7405
                         mov                eax, 0x00c2a374                               // 0x0079cdc1    b874a3c200
_jmp_addr_0x0079cdc6:    {disp32} mov       dword ptr [ebx + 0x00000124], eax             // 0x0079cdc6    898324010000
                         {disp32} mov       dword ptr [ebx + 0x0000011c], edx             // 0x0079cdcc    89931c010000
                         {disp32} mov       dword ptr [ebx + 0x00000128], 0x00000003      // 0x0079cdd2    c7832801000003000000
                         {disp32} mov       dword ptr [ebx + 0x00000100], 0x41f00000      // 0x0079cddc    c783000100000000f041
                         {disp32} mov       dword ptr [ebx + 0x00000160], edx             // 0x0079cde6    899360010000
                         {disp32} mov       dword ptr [ebx + 0x00000164], edx             // 0x0079cdec    899364010000
                         or                 ecx, 0xffffffff                               // 0x0079cdf2    83c9ff
                         xor.s              eax, eax                                      // 0x0079cdf5    33c0
                         mov                edi, 0x00c58370                               // 0x0079cdf7    bf7083c500
                         repne scasb                                                      // 0x0079cdfc    f2ae
                         not                ecx                                           // 0x0079cdfe    f7d1
                         sub.s              edi, ecx                                      // 0x0079ce00    2bf9
                         mov.s              eax, ecx                                      // 0x0079ce02    8bc1
                         {disp8} lea        ebp, dword ptr [ebx + 0x3c]                   // 0x0079ce04    8d6b3c
                         mov.s              esi, edi                                      // 0x0079ce07    8bf7
                         shr                ecx, 2                                        // 0x0079ce09    c1e902
                         mov.s              edi, ebp                                      // 0x0079ce0c    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0079ce0e    f3a5
                         mov.s              ecx, eax                                      // 0x0079ce10    8bc8
                         and                ecx, 0x03                                     // 0x0079ce12    83e103
                         rep movsb                                                        // 0x0079ce15    f3a4
                         {disp32} mov       dword ptr [ebx + 0x00000130], edx             // 0x0079ce17    899330010000
                         {disp32} mov       dword ptr [ebx + 0x00000134], 0xc0e00000      // 0x0079ce1d    c783340100000000e0c0
                         mov                ecx, 0x41a00000                               // 0x0079ce27    b90000a041
                         {disp32} mov       dword ptr [ebx + 0x00000138], ecx             // 0x0079ce2c    898b38010000
                         {disp32} mov       dword ptr [ebx + 0x00000148], edx             // 0x0079ce32    899348010000
                         {disp32} mov       dword ptr [ebx + 0x0000014c], 0x40c00000      // 0x0079ce38    c7834c0100000000c040
                         mov                eax, 0xc0800000                               // 0x0079ce42    b8000080c0
                         {disp32} mov       dword ptr [ebx + 0x00000150], eax             // 0x0079ce47    898350010000
                         pop                edi                                           // 0x0079ce4d    5f
                         {disp32} mov       dword ptr [ebx + 0x0000013c], edx             // 0x0079ce4e    89933c010000
                         {disp32} mov       dword ptr [ebx + 0x00000140], 0x40e00000      // 0x0079ce54    c783400100000000e040
                         {disp32} mov       dword ptr [ebx + 0x00000144], ecx             // 0x0079ce5e    898b44010000
                         pop                esi                                           // 0x0079ce64    5e
                         {disp32} mov       dword ptr [ebx + 0x0000015c], eax             // 0x0079ce65    89835c010000
                         pop                ebp                                           // 0x0079ce6b    5d
                         {disp32} mov       dword ptr [ebx + 0x00000154], edx             // 0x0079ce6c    899354010000
                         {disp32} mov       dword ptr [ebx + 0x00000158], 0xc0c00000      // 0x0079ce72    c783580100000000c0c0
                         mov.s              eax, ebx                                      // 0x0079ce7c    8bc3
                         pop                ebx                                           // 0x0079ce7e    5b
                         add                esp, 0x0c                                     // 0x0079ce7f    83c40c
                         ret                                                              // 0x0079ce82    c3
                         nop                                                              // 0x0079ce83    90
                         nop                                                              // 0x0079ce84    90
                         nop                                                              // 0x0079ce85    90
                         nop                                                              // 0x0079ce86    90
                         nop                                                              // 0x0079ce87    90
                         nop                                                              // 0x0079ce88    90
                         nop                                                              // 0x0079ce89    90
                         nop                                                              // 0x0079ce8a    90
                         nop                                                              // 0x0079ce8b    90
                         nop                                                              // 0x0079ce8c    90
                         nop                                                              // 0x0079ce8d    90
                         nop                                                              // 0x0079ce8e    90
                         nop                                                              // 0x0079ce8f    90
                         push               esi                                           // 0x0079ce90    56
                         mov.s              esi, ecx                                      // 0x0079ce91    8bf1
                         call               _jmp_addr_0x0078f320                          // 0x0079ce93    e88824ffff
                         xor.s              eax, eax                                      // 0x0079ce98    33c0
                         {disp32} mov       dword ptr [esi + 0x00000160], eax             // 0x0079ce9a    898660010000
                         {disp32} mov       dword ptr [esi + 0x00000164], eax             // 0x0079cea0    898664010000
                         {disp32} mov       dword ptr [esi + 0x00000168], eax             // 0x0079cea6    898668010000
                         pop                esi                                           // 0x0079ceac    5e
                         ret                                                              // 0x0079cead    c3
                         nop                                                              // 0x0079ceae    90
                         nop                                                              // 0x0079ceaf    90
                         ret                0x0004                                        // 0x0079ceb0    c20400
                         nop                                                              // 0x0079ceb3    90
                         nop                                                              // 0x0079ceb4    90
                         nop                                                              // 0x0079ceb5    90
                         nop                                                              // 0x0079ceb6    90
                         nop                                                              // 0x0079ceb7    90
                         nop                                                              // 0x0079ceb8    90
                         nop                                                              // 0x0079ceb9    90
                         nop                                                              // 0x0079ceba    90
                         nop                                                              // 0x0079cebb    90
                         nop                                                              // 0x0079cebc    90
                         nop                                                              // 0x0079cebd    90
                         nop                                                              // 0x0079cebe    90
                         nop                                                              // 0x0079cebf    90
                         mov                dword ptr [ecx], 0x0099ef30                   // 0x0079cec0    c70130ef9900
                         {disp32} jmp       _jmp_addr_0x0078f1e0                          // 0x0079cec6    e91523ffff
                         nop                                                              // 0x0079cecb    90
                         nop                                                              // 0x0079cecc    90
                         nop                                                              // 0x0079cecd    90
                         nop                                                              // 0x0079cece    90
                         nop                                                              // 0x0079cecf    90
                         push               ebx                                           // 0x0079ced0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0079ced1    8b5c2408
                         push               esi                                           // 0x0079ced5    56
                         mov.s              esi, ecx                                      // 0x0079ced6    8bf1
                         push               ebx                                           // 0x0079ced8    53
                         call               ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z     // 0x0079ced9    e852d3ffff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0079cede    8b8664010000
                         test               eax, eax                                      // 0x0079cee4    85c0
                         {disp32} je        _jmp_addr_0x0079cf93                          // 0x0079cee6    0f84a7000000
                         test               bl, bl                                        // 0x0079ceec    84db
                         {disp32} jne       _jmp_addr_0x0079cf93                          // 0x0079ceee    0f859f000000
                         {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0079cef4    db053481c300
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0079cefa    d80db0a38a00
                         {disp32} fadd      dword ptr [esi + 0x00000168]                  // 0x0079cf00    d88668010000
                         {disp32} fst       dword ptr [esi + 0x00000168]                  // 0x0079cf06    d99668010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87678]             // 0x0079cf0c    d80d78069300
                         call               _jmp_addr_0x007a1400                          // 0x0079cf12    e8e9440000
                         cmp                eax, 0x00000080                               // 0x0079cf17    3d80000000
                         {disp8} jle        _jmp_addr_0x0079cf23                          // 0x0079cf1c    7e05
                         mov                eax, 0x00000080                               // 0x0079cf1e    b880000000
_jmp_addr_0x0079cf23:    {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x0079cf23    a378809c00
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0079cf28    8b86c4000000
                         cmp                dword ptr [eax + 0x00000124], 0x01            // 0x0079cf2e    83b82401000001
                         {disp8} jne        _jmp_addr_0x0079cf93                          // 0x0079cf35    755c
                         mov                al, -0x01                                     // 0x0079cf37    b0ff
                         {disp8} mov        byte ptr [esp + 0x0c], al                     // 0x0079cf39    8844240c
                         {disp8} mov        byte ptr [esp + 0x0d], al                     // 0x0079cf3d    8844240d
                         {disp8} mov        byte ptr [esp + 0x0e], al                     // 0x0079cf41    8844240e
                         {disp8} mov        byte ptr [esp + 0x0f], al                     // 0x0079cf45    8844240f
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aa3 // 0x0079cf49    813dac7cd100a31a0000
                         {disp8} ja         _jmp_addr_0x0079cf5c                          // 0x0079cf53    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079cf55    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0079cf68                          // 0x0079cf5a    eb0c
_jmp_addr_0x0079cf5c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079cf5c    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013fa4]             // 0x0079cf62    8d81a43f0100
_jmp_addr_0x0079cf68:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0079cf68    8b4008
                         push               0x0                                           // 0x0079cf6b    6a00
                         push               0x1                                           // 0x0079cf6d    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0079cf6f    8d542414
                         push               edx                                           // 0x0079cf73    52
                         push               0x3c                                          // 0x0079cf74    6a3c
                         push               eax                                           // 0x0079cf76    50
                         push               0x1                                           // 0x0079cf77    6a01
                         push               0x0                                           // 0x0079cf79    6a00
                         push               0x00000258                                    // 0x0079cf7b    6858020000
                         push               0x00000320                                    // 0x0079cf80    6820030000
                         push               0x0                                           // 0x0079cf85    6a00
                         push               0x0                                           // 0x0079cf87    6a00
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0079cf89    e8c247c7ff
                         fstp               st(0)                                         // 0x0079cf8e    ddd8
                         add                esp, 0x2c                                     // 0x0079cf90    83c42c
_jmp_addr_0x0079cf93:    pop                esi                                           // 0x0079cf93    5e
                         pop                ebx                                           // 0x0079cf94    5b
                         ret                0x0004                                        // 0x0079cf95    c20400
                         nop                                                              // 0x0079cf98    90
                         nop                                                              // 0x0079cf99    90
                         nop                                                              // 0x0079cf9a    90
                         nop                                                              // 0x0079cf9b    90
                         nop                                                              // 0x0079cf9c    90
                         nop                                                              // 0x0079cf9d    90
                         nop                                                              // 0x0079cf9e    90
                         nop                                                              // 0x0079cf9f    90
                         {disp32} jmp       _jmp_addr_0x0078f1f0                          // 0x0079cfa0    e94b22ffff
                         nop                                                              // 0x0079cfa5    90
                         nop                                                              // 0x0079cfa6    90
                         nop                                                              // 0x0079cfa7    90
                         nop                                                              // 0x0079cfa8    90
                         nop                                                              // 0x0079cfa9    90
                         nop                                                              // 0x0079cfaa    90
                         nop                                                              // 0x0079cfab    90
                         nop                                                              // 0x0079cfac    90
                         nop                                                              // 0x0079cfad    90
                         nop                                                              // 0x0079cfae    90
                         nop                                                              // 0x0079cfaf    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0079cfb0    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0079cfb4    8b542408
                         push               eax                                           // 0x0079cfb8    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0079cfb9    8b442408
                         push               edx                                           // 0x0079cfbd    52
                         push               eax                                           // 0x0079cfbe    50
                         call               _jmp_addr_0x0078f5e0                          // 0x0079cfbf    e81c26ffff
                         ret                0x000c                                        // 0x0079cfc4    c20c00
                         nop                                                              // 0x0079cfc7    90
                         nop                                                              // 0x0079cfc8    90
                         nop                                                              // 0x0079cfc9    90
                         nop                                                              // 0x0079cfca    90
                         nop                                                              // 0x0079cfcb    90
                         nop                                                              // 0x0079cfcc    90
                         nop                                                              // 0x0079cfcd    90
                         nop                                                              // 0x0079cfce    90
                         nop                                                              // 0x0079cfcf    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0079cfd0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0079cfd4    8b542404
                         push               eax                                           // 0x0079cfd8    50
                         push               edx                                           // 0x0079cfd9    52
                         call               _jmp_addr_0x0078f600                          // 0x0079cfda    e82126ffff
                         ret                0x0008                                        // 0x0079cfdf    c20800
                         nop                                                              // 0x0079cfe2    90
                         nop                                                              // 0x0079cfe3    90
                         nop                                                              // 0x0079cfe4    90
                         nop                                                              // 0x0079cfe5    90
                         nop                                                              // 0x0079cfe6    90
                         nop                                                              // 0x0079cfe7    90
                         nop                                                              // 0x0079cfe8    90
                         nop                                                              // 0x0079cfe9    90
                         nop                                                              // 0x0079cfea    90
                         nop                                                              // 0x0079cfeb    90
                         nop                                                              // 0x0079cfec    90
                         nop                                                              // 0x0079cfed    90
                         nop                                                              // 0x0079cfee    90
                         nop                                                              // 0x0079cfef    90
                         mov                eax, 0x00000001                               // 0x0079cff0    b801000000
                         ret                                                              // 0x0079cff5    c3
                         nop                                                              // 0x0079cff6    90
                         nop                                                              // 0x0079cff7    90
                         nop                                                              // 0x0079cff8    90
                         nop                                                              // 0x0079cff9    90
                         nop                                                              // 0x0079cffa    90
                         nop                                                              // 0x0079cffb    90
                         nop                                                              // 0x0079cffc    90
                         nop                                                              // 0x0079cffd    90
                         nop                                                              // 0x0079cffe    90
                         nop                                                              // 0x0079cfff    90
                         push               esi                                           // 0x0079d000    56
                         mov.s              esi, ecx                                      // 0x0079d001    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0079d003    8b86c4000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000124]             // 0x0079d009    8b8824010000
                         test               ecx, ecx                                      // 0x0079d00f    85c9
                         {disp8} jne        _jmp_addr_0x0079d01d                          // 0x0079d011    750a
                         {disp32} mov       dword ptr [esi + 0x00000168], 0x00000000      // 0x0079d013    c7866801000000000000
_jmp_addr_0x0079d01d:    call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0079d01d    e8aeaec6ff
                         test               eax, eax                                      // 0x0079d022    85c0
                         {disp8} jne        _jmp_addr_0x0079d09d                          // 0x0079d024    7577
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x0079d026    8b8ec4000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000124]             // 0x0079d02c    8b9124010000
                         mov                eax, 0x00000001                               // 0x0079d032    b801000000
                         cmp.s              edx, eax                                      // 0x0079d037    3bd0
                         {disp8} jne        _jmp_addr_0x0079d09d                          // 0x0079d039    7562
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x0079d03b    8b8e60010000
                         test               ecx, ecx                                      // 0x0079d041    85c9
                         {disp8} jne        _jmp_addr_0x0079d068                          // 0x0079d043    7523
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0079d045    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0079d04b    8b8ab4590000
                         cmp                dword ptr [ecx + 0x1c], esi                   // 0x0079d051    39711c
                         {disp8} jne        _jmp_addr_0x0079d068                          // 0x0079d054    7512
                         {disp32} mov       cl, byte ptr [data_bytes + 0x43ffe0]          // 0x0079d056    8a0de05fe000
                         test               cl, cl                                        // 0x0079d05c    84c9
                         {disp8} jne        _jmp_addr_0x0079d09d                          // 0x0079d05e    753d
                         {disp32} mov       dword ptr [esi + 0x00000164], eax             // 0x0079d060    898664010000
                         pop                esi                                           // 0x0079d066    5e
                         ret                                                              // 0x0079d067    c3
_jmp_addr_0x0079d068:    {disp32} mov       al, byte ptr [data_bytes + 0x43ffe0]          // 0x0079d068    a0e05fe000
                         test               al, al                                        // 0x0079d06d    84c0
                         {disp8} jne        _jmp_addr_0x0079d09d                          // 0x0079d06f    752c
                         call               _jmp_addr_0x0053c470                          // 0x0079d071    e8faf3d9ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0079d076    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0079d07c    8b8ab4590000
                         push               0x0                                           // 0x0079d082    6a00
                         call               _jmp_addr_0x00793d90                          // 0x0079d084    e8076dffff
                         {disp32} mov       dword ptr [esi + 0x00000160], 0x00000000      // 0x0079d089    c7866001000000000000
                         {disp32} mov       dword ptr [esi + 0x00000164], 0x00000000      // 0x0079d093    c7866401000000000000
_jmp_addr_0x0079d09d:    pop                esi                                           // 0x0079d09d    5e
                         ret                                                              // 0x0079d09e    c3
                         nop                                                              // 0x0079d09f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0079d0a0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a0c]             // 0x0079d0a5    8b880c5a2000
                         test               ecx, ecx                                      // 0x0079d0ab    85c9
                         {disp8} je         _jmp_addr_0x0079d0b5                          // 0x0079d0ad    7406
                         mov                eax, 0x00000001                               // 0x0079d0af    b801000000
                         ret                                                              // 0x0079d0b4    c3
_jmp_addr_0x0079d0b5:    {disp32} mov       eax, dword ptr [data_bytes + 0x4741b0]        // 0x0079d0b5    a1b0a1e300
                         test               eax, eax                                      // 0x0079d0ba    85c0
                         {disp8} je         _jmp_addr_0x0079d0c4                          // 0x0079d0bc    7406
                         mov                eax, 0x00000001                               // 0x0079d0be    b801000000
                         ret                                                              // 0x0079d0c3    c3
_jmp_addr_0x0079d0c4:    {disp32} mov       ecx, dword ptr [data_bytes + 0x226284]        // 0x0079d0c4    8b0d84c2be00
                         xor.s              eax, eax                                      // 0x0079d0ca    33c0
                         cmp                ecx, 0x03                                     // 0x0079d0cc    83f903
                         sete               al                                            // 0x0079d0cf    0f94c0
                         ret                                                              // 0x0079d0d2    c3
                         nop                                                              // 0x0079d0d3    90
                         nop                                                              // 0x0079d0d4    90
                         nop                                                              // 0x0079d0d5    90
                         nop                                                              // 0x0079d0d6    90
                         nop                                                              // 0x0079d0d7    90
                         nop                                                              // 0x0079d0d8    90
                         nop                                                              // 0x0079d0d9    90
                         nop                                                              // 0x0079d0da    90
                         nop                                                              // 0x0079d0db    90
                         nop                                                              // 0x0079d0dc    90
                         nop                                                              // 0x0079d0dd    90
                         nop                                                              // 0x0079d0de    90
                         nop                                                              // 0x0079d0df    90
_globl_ct_0x0079d0e0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0079d0e0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0079d0e6    b001
                         test               al, cl                                        // 0x0079d0e8    84c8
                         {disp8} jne        _jmp_addr_0x0079d0f4                          // 0x0079d0ea    7508
                         or.s               cl, al                                        // 0x0079d0ec    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0079d0ee    880d34c9fa00
_jmp_addr_0x0079d0f4:    {disp32} jmp       _jmp_addr_0x0079d100                          // 0x0079d0f4    e907000000
                         nop                                                              // 0x0079d0f9    90
                         nop                                                              // 0x0079d0fa    90
                         nop                                                              // 0x0079d0fb    90
                         nop                                                              // 0x0079d0fc    90
                         nop                                                              // 0x0079d0fd    90
                         nop                                                              // 0x0079d0fe    90
                         nop                                                              // 0x0079d0ff    90
_jmp_addr_0x0079d100:    push               0x00407870                                    // 0x0079d100    6870784000
                         call               _atexit                                       // 0x0079d105    e887860200
                         pop                ecx                                           // 0x0079d10a    59
                         ret                                                              // 0x0079d10b    c3
                         nop                                                              // 0x0079d10c    90
                         nop                                                              // 0x0079d10d    90
                         nop                                                              // 0x0079d10e    90
                         nop                                                              // 0x0079d10f    90
_globl_ct_0x0079d110:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0079d110    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0079d116    b001
                         test               al, cl                                        // 0x0079d118    84c8
                         {disp8} jne        _jmp_addr_0x0079d124                          // 0x0079d11a    7508
                         or.s               cl, al                                        // 0x0079d11c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0079d11e    880d34c9fa00
_jmp_addr_0x0079d124:    {disp32} jmp       _jmp_addr_0x0079d130                          // 0x0079d124    e907000000
                         nop                                                              // 0x0079d129    90
                         nop                                                              // 0x0079d12a    90
                         nop                                                              // 0x0079d12b    90
                         nop                                                              // 0x0079d12c    90
                         nop                                                              // 0x0079d12d    90
                         nop                                                              // 0x0079d12e    90
                         nop                                                              // 0x0079d12f    90
_jmp_addr_0x0079d130:    push               0x00407870                                    // 0x0079d130    6870784000
                         call               _atexit                                       // 0x0079d135    e857860200
                         pop                ecx                                           // 0x0079d13a    59
                         ret                                                              // 0x0079d13b    c3
                         nop                                                              // 0x0079d13c    90
                         nop                                                              // 0x0079d13d    90
                         nop                                                              // 0x0079d13e    90
                         nop                                                              // 0x0079d13f    90
_globl_ct_0x0079d140:    {disp32} jmp       _jmp_addr_0x0079d150                          // 0x0079d140    e90b000000
                         nop                                                              // 0x0079d145    90
                         nop                                                              // 0x0079d146    90
                         nop                                                              // 0x0079d147    90
                         nop                                                              // 0x0079d148    90
                         nop                                                              // 0x0079d149    90
                         nop                                                              // 0x0079d14a    90
                         nop                                                              // 0x0079d14b    90
                         nop                                                              // 0x0079d14c    90
                         nop                                                              // 0x0079d14d    90
                         nop                                                              // 0x0079d14e    90
                         nop                                                              // 0x0079d14f    90
_jmp_addr_0x0079d150:    {disp32} fld       dword ptr [rdata_bytes + 0xf5f7c]             // 0x0079d150    d9057cef9900
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f78]             // 0x0079d156    d80d78ef9900
                         {disp32} fstp      dword ptr [data_bytes + 0x474164]             // 0x0079d15c    d91d64a1e300
                         ret                                                              // 0x0079d162    c3
                         nop                                                              // 0x0079d163    90
                         nop                                                              // 0x0079d164    90
                         nop                                                              // 0x0079d165    90
                         nop                                                              // 0x0079d166    90
                         nop                                                              // 0x0079d167    90
                         nop                                                              // 0x0079d168    90
                         nop                                                              // 0x0079d169    90
                         nop                                                              // 0x0079d16a    90
                         nop                                                              // 0x0079d16b    90
                         nop                                                              // 0x0079d16c    90
                         nop                                                              // 0x0079d16d    90
                         nop                                                              // 0x0079d16e    90
                         nop                                                              // 0x0079d16f    90
_globl_ct_0x0079d170:    {disp32} jmp       _jmp_addr_0x0079d180                          // 0x0079d170    e90b000000
                         nop                                                              // 0x0079d175    90
                         nop                                                              // 0x0079d176    90
                         nop                                                              // 0x0079d177    90
                         nop                                                              // 0x0079d178    90
                         nop                                                              // 0x0079d179    90
                         nop                                                              // 0x0079d17a    90
                         nop                                                              // 0x0079d17b    90
                         nop                                                              // 0x0079d17c    90
                         nop                                                              // 0x0079d17d    90
                         nop                                                              // 0x0079d17e    90
                         nop                                                              // 0x0079d17f    90
_jmp_addr_0x0079d180:    {disp32} mov       dword ptr [data_bytes + 0x474160], 0xffffffff // 0x0079d180    c70560a1e300ffffffff
                         ret                                                              // 0x0079d18a    c3
                         nop                                                              // 0x0079d18b    90
                         nop                                                              // 0x0079d18c    90
                         nop                                                              // 0x0079d18d    90
                         nop                                                              // 0x0079d18e    90
                         nop                                                              // 0x0079d18f    90
_globl_ct_0x0079d190:    {disp32} jmp       _jmp_addr_0x0079d1a0                          // 0x0079d190    e90b000000
                         nop                                                              // 0x0079d195    90
                         nop                                                              // 0x0079d196    90
                         nop                                                              // 0x0079d197    90
                         nop                                                              // 0x0079d198    90
                         nop                                                              // 0x0079d199    90
                         nop                                                              // 0x0079d19a    90
                         nop                                                              // 0x0079d19b    90
                         nop                                                              // 0x0079d19c    90
                         nop                                                              // 0x0079d19d    90
                         nop                                                              // 0x0079d19e    90
                         nop                                                              // 0x0079d19f    90
_jmp_addr_0x0079d1a0:    fldln2                                                           // 0x0079d1a0    d9ed
                         {disp32} fld       qword ptr [__real@3fe0000000000000]           // 0x0079d1a2    dd0560b28a00
                         fyl2x                                                            // 0x0079d1a8    d9f1
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0079d1aa    d83d90a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x47415c]             // 0x0079d1b0    d91d5ca1e300
                         ret                                                              // 0x0079d1b6    c3
                         nop                                                              // 0x0079d1b7    90
                         nop                                                              // 0x0079d1b8    90
                         nop                                                              // 0x0079d1b9    90
                         nop                                                              // 0x0079d1ba    90
                         nop                                                              // 0x0079d1bb    90
                         nop                                                              // 0x0079d1bc    90
                         nop                                                              // 0x0079d1bd    90
                         nop                                                              // 0x0079d1be    90
                         nop                                                              // 0x0079d1bf    90
_jmp_addr_0x0079d1c0:    push               ebx                                           // 0x0079d1c0    53
                         push               ebp                                           // 0x0079d1c1    55
                         push               esi                                           // 0x0079d1c2    56
                         push               edi                                           // 0x0079d1c3    57
                         mov.s              ebp, ecx                                      // 0x0079d1c4    8be9
                         push               0x00c2a590                                    // 0x0079d1c6    6890a5c200
                         call               @__ct__10TempleRoomFPCc@12                    // 0x0079d1cb    e8a0b6ffff
                         xor.s              ebx, ebx                                      // 0x0079d1d0    33db
                         {disp32} mov       dword ptr [ebp + 0x00000150], ebx             // 0x0079d1d2    899d50010000
                         {disp32} mov       dword ptr [ebp + 0x0000014c], ebx             // 0x0079d1d8    899d4c010000
                         mov.s              ecx, ebp                                      // 0x0079d1de    8bcd
                         {disp8} mov        dword ptr [ebp + 0x00], 0x0099ef84            // 0x0079d1e0    c7450084ef9900
                         call               _jmp_addr_0x0079f5d0                          // 0x0079d1e7    e8e4230000
                         cmp                byte ptr [data_bytes + 0x2721e4], bl          // 0x0079d1ec    381de481c300
                         mov                eax, 0x00c2a570                               // 0x0079d1f2    b870a5c200
                         {disp8} je         _jmp_addr_0x0079d1fe                          // 0x0079d1f7    7405
                         mov                eax, 0x00c2a550                               // 0x0079d1f9    b850a5c200
_jmp_addr_0x0079d1fe:    push               0x00c2a800                                    // 0x0079d1fe    6800a8c200
                         push               0x00c2a7d4                                    // 0x0079d203    68d4a7c200
                         push               0x00c2a7a8                                    // 0x0079d208    68a8a7c200
                         push               0xb                                           // 0x0079d20d    6a0b
                         push               eax                                           // 0x0079d20f    50
                         mov.s              ecx, ebp                                      // 0x0079d210    8bcd
                         call               _jmp_addr_0x00798b30                          // 0x0079d212    e819b9ffff
                         or                 ecx, 0xffffffff                               // 0x0079d217    83c9ff
                         {disp32} mov       dword ptr [ebp + 0x00000154], ebx             // 0x0079d21a    899d54010000
                         {disp32} mov       dword ptr [ebp + 0x000000ec], ebx             // 0x0079d220    899dec000000
                         {disp32} mov       dword ptr [ebp + 0x000000f0], ebx             // 0x0079d226    899df0000000
                         xor.s              eax, eax                                      // 0x0079d22c    33c0
                         mov                edi, 0x00c282e0                               // 0x0079d22e    bfe082c200
                         repne scasb                                                      // 0x0079d233    f2ae
                         not                ecx                                           // 0x0079d235    f7d1
                         sub.s              edi, ecx                                      // 0x0079d237    2bf9
                         mov.s              eax, ecx                                      // 0x0079d239    8bc1
                         mov.s              esi, edi                                      // 0x0079d23b    8bf7
                         {disp8} lea        edx, dword ptr [ebp + 0x3c]                   // 0x0079d23d    8d553c
                         shr                ecx, 2                                        // 0x0079d240    c1e902
                         mov.s              edi, edx                                      // 0x0079d243    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0079d245    f3a5
                         mov.s              ecx, eax                                      // 0x0079d247    8bc8
                         and                ecx, 0x03                                     // 0x0079d249    83e103
                         rep movsb                                                        // 0x0079d24c    f3a4
                         pop                edi                                           // 0x0079d24e    5f
                         pop                esi                                           // 0x0079d24f    5e
                         mov.s              eax, ebp                                      // 0x0079d250    8bc5
                         pop                ebp                                           // 0x0079d252    5d
                         pop                ebx                                           // 0x0079d253    5b
                         ret                                                              // 0x0079d254    c3
                         nop                                                              // 0x0079d255    90
                         nop                                                              // 0x0079d256    90
                         nop                                                              // 0x0079d257    90
                         nop                                                              // 0x0079d258    90
                         nop                                                              // 0x0079d259    90
                         nop                                                              // 0x0079d25a    90
                         nop                                                              // 0x0079d25b    90
                         nop                                                              // 0x0079d25c    90
                         nop                                                              // 0x0079d25d    90
                         nop                                                              // 0x0079d25e    90
                         nop                                                              // 0x0079d25f    90
                         mov                eax, 0x00000001                               // 0x0079d260    b801000000
                         ret                                                              // 0x0079d265    c3
                         nop                                                              // 0x0079d266    90
                         nop                                                              // 0x0079d267    90
                         nop                                                              // 0x0079d268    90
                         nop                                                              // 0x0079d269    90
                         nop                                                              // 0x0079d26a    90
                         nop                                                              // 0x0079d26b    90
                         nop                                                              // 0x0079d26c    90
                         nop                                                              // 0x0079d26d    90
                         nop                                                              // 0x0079d26e    90
                         nop                                                              // 0x0079d26f    90
                         mov                dword ptr [ecx], 0x0099ef84                   // 0x0079d270    c70184ef9900
                         {disp32} jmp       _jmp_addr_0x007989a0                          // 0x0079d276    e925b7ffff
                         nop                                                              // 0x0079d27b    90
                         nop                                                              // 0x0079d27c    90
                         nop                                                              // 0x0079d27d    90
                         nop                                                              // 0x0079d27e    90
                         nop                                                              // 0x0079d27f    90
                         sub                esp, 0x0c                                     // 0x0079d280    83ec0c
                         push               esi                                           // 0x0079d283    56
                         push               edi                                           // 0x0079d284    57
                         {disp32} mov       edi, dword ptr [data_bytes + 0x517460]        // 0x0079d285    8b3d60d4ed00
                         test               edi, edi                                      // 0x0079d28b    85ff
                         mov.s              esi, ecx                                      // 0x0079d28d    8bf1
                         {disp8} je         _jmp_addr_0x0079d2b7                          // 0x0079d28f    7426
_jmp_addr_0x0079d291:    {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0079d291    8b4710
                         and                eax, 0x3f                                     // 0x0079d294    83e03f
                         cmp                al, 0x08                                      // 0x0079d297    3c08
                         {disp8} je         _jmp_addr_0x0079d2b0                          // 0x0079d299    7415
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0079d29b    8b4704
                         test               eax, eax                                      // 0x0079d29e    85c0
                         {disp8} je         _jmp_addr_0x0079d2b0                          // 0x0079d2a0    740e
                         mov.s              ecx, edi                                      // 0x0079d2a2    8bcf
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0079d2a4    c7400400000000
                         call               _jmp_addr_0x00838430                          // 0x0079d2ab    e880b10900
_jmp_addr_0x0079d2b0:    {disp8} mov        edi, dword ptr [edi + 0x0c]                   // 0x0079d2b0    8b7f0c
                         test               edi, edi                                      // 0x0079d2b3    85ff
                         {disp8} jne        _jmp_addr_0x0079d291                          // 0x0079d2b5    75da
_jmp_addr_0x0079d2b7:    {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x0079d2b7    8b86e0000000
                         test               eax, eax                                      // 0x0079d2bd    85c0
                         {disp32} mov       dword ptr [esi + 0x0000015c], 0x00000000      // 0x0079d2bf    c7865c01000000000000
                         {disp32} jne       _jmp_addr_0x0079d68c                          // 0x0079d2c9    0f85bd030000
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x0079d2cf    a0e481c300
                         test               al, al                                        // 0x0079d2d4    84c0
                         {disp8} jne        _jmp_addr_0x0079d2e4                          // 0x0079d2d6    750c
                         mov                ecx, 0x00c2a748                               // 0x0079d2d8    b948a7c200
                         mov                eax, 0x00c2a570                               // 0x0079d2dd    b870a5c200
                         {disp8} jmp        _jmp_addr_0x0079d2ee                          // 0x0079d2e2    eb0a
_jmp_addr_0x0079d2e4:    mov                ecx, 0x00c2a724                               // 0x0079d2e4    b924a7c200
                         mov                eax, 0x00c2a550                               // 0x0079d2e9    b850a5c200
_jmp_addr_0x0079d2ee:    push               0x00c2a704                                    // 0x0079d2ee    6804a7c200
                         push               0x00c2a6e4                                    // 0x0079d2f3    68e4a6c200
                         push               ecx                                           // 0x0079d2f8    51
                         push               eax                                           // 0x0079d2f9    50
                         mov.s              ecx, esi                                      // 0x0079d2fa    8bce
                         call               _jmp_addr_0x007989e0                          // 0x0079d2fc    e8dfb6ffff
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x0079d301    a0e481c300
                         test               al, al                                        // 0x0079d306    84c0
                         mov                eax, 0x00c2a6c0                               // 0x0079d308    b8c0a6c200
                         {disp8} je         _jmp_addr_0x0079d314                          // 0x0079d30d    7405
                         mov                eax, 0x00c2a69c                               // 0x0079d30f    b89ca6c200
_jmp_addr_0x0079d314:    push               0x0                                           // 0x0079d314    6a00
                         push               eax                                           // 0x0079d316    50
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x0079d317    e8d4940600
                         add                esp, 0x08                                     // 0x0079d31c    83c408
                         xor.s              ecx, ecx                                      // 0x0079d31f    33c9
                         {disp32} mov       dword ptr [esi + 0x000000ec], eax             // 0x0079d321    8986ec000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0079d327    e8a4e10600
                         {disp32} mov       edx, dword ptr [esi + 0x000000ec]             // 0x0079d32c    8b96ec000000
                         push               0x0                                           // 0x0079d332    6a00
                         {disp32} mov       dword ptr [esi + 0x000000f0], eax             // 0x0079d334    8986f0000000
                         mov                edi, dword ptr [eax]                          // 0x0079d33a    8b38
                         push               0x0                                           // 0x0079d33c    6a00
                         mov.s              ecx, eax                                      // 0x0079d33e    8bc8
                         call               dword ptr [edi + 0xf4]                        // 0x0079d340    ff97f4000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079d346    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079d34c    8b01
                         mov                edx, 0x00000001                               // 0x0079d34e    ba01000000
                         call               dword ptr [eax + 0x58]                        // 0x0079d353    ff5058
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079d356    8b8ef0000000
                         push               0x3f800000                                    // 0x0079d35c    680000803f
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079d361    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0079d369    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0079d371    c744241400000000
                         mov                eax, dword ptr [ecx]                          // 0x0079d379    8b01
                         push               0x0                                           // 0x0079d37b    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0079d37d    8d542410
                         call               dword ptr [eax + 0x20]                        // 0x0079d381    ff5020
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x506d08]        // 0x0079d384    8b0d08cdec00
                         push               0x6f                                          // 0x0079d38a    6a6f
                         push               0x00c2a67c                                    // 0x0079d38c    687ca6c200
                         push               0x0000c628                                    // 0x0079d391    6828c60000
                         {disp32} mov       dword ptr [esi + 0x00000158], ecx             // 0x0079d396    898e58010000
                         call               ___nw__FUl                                    // 0x0079d39c    e8efe30300
                         add                esp, 0x0c                                     // 0x0079d3a1    83c40c
                         mov.s              ecx, eax                                      // 0x0079d3a4    8bc8
                         {disp32} mov       dword ptr [esi + 0x00000154], eax             // 0x0079d3a6    898654010000
                         call               _jmp_addr_0x00797530                          // 0x0079d3ac    e87fa1ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000154]             // 0x0079d3b1    8b8e54010000
                         call               _jmp_addr_0x00797f10                          // 0x0079d3b7    e854abffff
                         {disp32} mov       al, byte ptr [data_bytes + 0x43ffe0]          // 0x0079d3bc    a0e05fe000
                         test               al, al                                        // 0x0079d3c1    84c0
                         {disp8} jne        _jmp_addr_0x0079d3e3                          // 0x0079d3c3    751e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2644f4]        // 0x0079d3c5    a1f4a4c200
                         test               eax, eax                                      // 0x0079d3ca    85c0
                         mov.s              ecx, esi                                      // 0x0079d3cc    8bce
                         {disp8} je         _jmp_addr_0x0079d3d7                          // 0x0079d3ce    7407
                         call               _jmp_addr_0x0079dcd0                          // 0x0079d3d0    e8fb080000
                         {disp8} jmp        _jmp_addr_0x0079d3dc                          // 0x0079d3d5    eb05
_jmp_addr_0x0079d3d7:    call               _jmp_addr_0x0079dce0                          // 0x0079d3d7    e804090000
_jmp_addr_0x0079d3dc:    mov.s              ecx, esi                                      // 0x0079d3dc    8bce
                         call               _jmp_addr_0x0079df50                          // 0x0079d3de    e86d0b0000
_jmp_addr_0x0079d3e3:    push               0x0                                           // 0x0079d3e3    6a00
                         push               0x00c2a654                                    // 0x0079d3e5    6854a6c200
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x0079d3ea    e801940600
                         add                esp, 0x08                                     // 0x0079d3ef    83c408
                         xor.s              ecx, ecx                                      // 0x0079d3f2    33c9
                         {disp32} mov       dword ptr [esi + 0x000000f4], eax             // 0x0079d3f4    8986f4000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0079d3fa    e8d1e00600
                         {disp32} mov       edx, dword ptr [esi + 0x000000f4]             // 0x0079d3ff    8b96f4000000
                         push               0x0                                           // 0x0079d405    6a00
                         {disp32} mov       dword ptr [esi + 0x000000f8], eax             // 0x0079d407    8986f8000000
                         mov                edi, dword ptr [eax]                          // 0x0079d40d    8b38
                         push               0x0                                           // 0x0079d40f    6a00
                         mov.s              ecx, eax                                      // 0x0079d411    8bc8
                         call               dword ptr [edi + 0xf4]                        // 0x0079d413    ff97f4000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f8]             // 0x0079d419    8b8ef8000000
                         mov                eax, dword ptr [ecx]                          // 0x0079d41f    8b01
                         mov                edx, 0x00000001                               // 0x0079d421    ba01000000
                         call               dword ptr [eax + 0x58]                        // 0x0079d426    ff5058
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f8]             // 0x0079d429    8b8ef8000000
                         push               0x3f800000                                    // 0x0079d42f    680000803f
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079d434    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0079d43c    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0079d444    c744241400000000
                         mov                eax, dword ptr [ecx]                          // 0x0079d44c    8b01
                         push               0x0                                           // 0x0079d44e    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0079d450    8d542410
                         call               dword ptr [eax + 0x20]                        // 0x0079d454    ff5020
                         push               0x0                                           // 0x0079d457    6a00
                         push               0x00c2a628                                    // 0x0079d459    6828a6c200
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x0079d45e    e88d930600
                         add                esp, 0x08                                     // 0x0079d463    83c408
                         xor.s              ecx, ecx                                      // 0x0079d466    33c9
                         {disp32} mov       dword ptr [esi + 0x000000fc], eax             // 0x0079d468    8986fc000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0079d46e    e85de00600
                         {disp32} mov       edx, dword ptr [esi + 0x000000fc]             // 0x0079d473    8b96fc000000
                         push               0x0                                           // 0x0079d479    6a00
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0079d47b    898600010000
                         mov                edi, dword ptr [eax]                          // 0x0079d481    8b38
                         push               0x0                                           // 0x0079d483    6a00
                         mov.s              ecx, eax                                      // 0x0079d485    8bc8
                         call               dword ptr [edi + 0xf4]                        // 0x0079d487    ff97f4000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000100]             // 0x0079d48d    8b8e00010000
                         mov                eax, dword ptr [ecx]                          // 0x0079d493    8b01
                         mov                edx, 0x00000001                               // 0x0079d495    ba01000000
                         call               dword ptr [eax + 0x58]                        // 0x0079d49a    ff5058
                         {disp32} mov       ecx, dword ptr [esi + 0x00000100]             // 0x0079d49d    8b8e00010000
                         push               0x3f800000                                    // 0x0079d4a3    680000803f
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079d4a8    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0079d4b0    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0079d4b8    c744241400000000
                         mov                eax, dword ptr [ecx]                          // 0x0079d4c0    8b01
                         push               0x0                                           // 0x0079d4c2    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0079d4c4    8d542410
                         call               dword ptr [eax + 0x20]                        // 0x0079d4c8    ff5020
                         push               0x0                                           // 0x0079d4cb    6a00
                         push               0x00c2a5fc                                    // 0x0079d4cd    68fca5c200
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x0079d4d2    e819930600
                         add                esp, 0x08                                     // 0x0079d4d7    83c408
                         xor.s              ecx, ecx                                      // 0x0079d4da    33c9
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0079d4dc    898604010000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0079d4e2    e8e9df0600
                         {disp32} mov       edx, dword ptr [esi + 0x00000104]             // 0x0079d4e7    8b9604010000
                         push               0x0                                           // 0x0079d4ed    6a00
                         {disp32} mov       dword ptr [esi + 0x00000108], eax             // 0x0079d4ef    898608010000
                         mov                edi, dword ptr [eax]                          // 0x0079d4f5    8b38
                         push               0x0                                           // 0x0079d4f7    6a00
                         mov.s              ecx, eax                                      // 0x0079d4f9    8bc8
                         call               dword ptr [edi + 0xf4]                        // 0x0079d4fb    ff97f4000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000108]             // 0x0079d501    8b8e08010000
                         mov                eax, dword ptr [ecx]                          // 0x0079d507    8b01
                         mov                edx, 0x00000001                               // 0x0079d509    ba01000000
                         call               dword ptr [eax + 0x58]                        // 0x0079d50e    ff5058
                         {disp32} mov       ecx, dword ptr [esi + 0x00000108]             // 0x0079d511    8b8e08010000
                         push               0x3f800000                                    // 0x0079d517    680000803f
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079d51c    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0079d524    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0079d52c    c744241400000000
                         mov                eax, dword ptr [ecx]                          // 0x0079d534    8b01
                         push               0x0                                           // 0x0079d536    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0079d538    8d542410
                         call               dword ptr [eax + 0x20]                        // 0x0079d53c    ff5020
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x0079d53f    8b8ec4000000
                         mov                edx, dword ptr [ecx]                          // 0x0079d545    8b11
                         call               dword ptr [edx + 0x10]                        // 0x0079d547    ff5210
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x0079d54a    8b8ec4000000
                         test               ecx, ecx                                      // 0x0079d550    85c9
                         {disp8} je         _jmp_addr_0x0079d55b                          // 0x0079d552    7407
                         mov                eax, dword ptr [ecx]                          // 0x0079d554    8b01
                         push               0x1                                           // 0x0079d556    6a01
                         call               dword ptr [eax + 0x2c]                        // 0x0079d558    ff502c
_jmp_addr_0x0079d55b:    push               0x00000096                                    // 0x0079d55b    6896000000
                         push               0x00c2a67c                                    // 0x0079d560    687ca6c200
                         push               0x000004e4                                    // 0x0079d565    68e4040000
                         call               ___nw__FUl                                    // 0x0079d56a    e821e20300
                         mov.s              edi, eax                                      // 0x0079d56f    8bf8
                         add                esp, 0x0c                                     // 0x0079d571    83c40c
                         test               edi, edi                                      // 0x0079d574    85ff
                         {disp8} je         _jmp_addr_0x0079d589                          // 0x0079d576    7411
                         mov.s              ecx, edi                                      // 0x0079d578    8bcf
                         call               ??0InnerCamera@@QAE@XZ                        // 0x0079d57a    e8719fffff
                         mov                dword ptr [edi], 0x0099efcc                   // 0x0079d57f    c707ccef9900
                         mov.s              ecx, edi                                      // 0x0079d585    8bcf
                         {disp8} jmp        _jmp_addr_0x0079d58b                          // 0x0079d587    eb02
_jmp_addr_0x0079d589:    xor.s              ecx, ecx                                      // 0x0079d589    33c9
_jmp_addr_0x0079d58b:    {disp32} mov       dword ptr [esi + 0x000000c4], ecx             // 0x0079d58b    898ec4000000
                         mov                edx, dword ptr [ecx]                          // 0x0079d591    8b11
                         push               0x00c2a704                                    // 0x0079d593    6804a7c200
                         call               dword ptr [edx + 8]                           // 0x0079d598    ff5208
                         push               0x0                                           // 0x0079d59b    6a00
                         push               0x0                                           // 0x0079d59d    6a00
                         push               0x44                                          // 0x0079d59f    6a44
                         push               0x00c2a5d0                                    // 0x0079d5a1    68d0a5c200
                         call               _jmp_addr_0x008379e0                          // 0x0079d5a6    e835a40900
                         push               eax                                           // 0x0079d5ab    50
                         push               0x5                                           // 0x0079d5ac    6a05
                         {disp32} mov       dword ptr [data_bytes + 0x4741a4], eax        // 0x0079d5ae    a3a4a1e300
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x0079d5b3    e878270900
                         add                esp, 0x18                                     // 0x0079d5b8    83c418
                         push               0x7                                           // 0x0079d5bb    6a07
                         push               0x00c2a47c                                    // 0x0079d5bd    687ca4c200
                         mov.s              ecx, esi                                      // 0x0079d5c2    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x4741a8], eax        // 0x0079d5c4    a3a8a1e300
                         call               _jmp_addr_0x00798350                          // 0x0079d5c9    e882adffff
                         {disp32} mov       eax, dword ptr [esi + 0x000000c0]             // 0x0079d5ce    8b86c0000000
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x0079d5d4    8b4014
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0079d5d7    8b4804
                         test               ecx, 0x00080000                               // 0x0079d5da    f7c100000800
                         {disp8} jne        _jmp_addr_0x0079d5e6                          // 0x0079d5e0    7504
                         xor.s              esi, esi                                      // 0x0079d5e2    33f6
                         {disp8} jmp        _jmp_addr_0x0079d626                          // 0x0079d5e4    eb40
_jmp_addr_0x0079d5e6:    mov.s              esi, ecx                                      // 0x0079d5e6    8bf1
                         and                esi, 0x00008000                               // 0x0079d5e8    81e600800000
                         {disp8} je         _jmp_addr_0x0079d5f8                          // 0x0079d5ee    7408
                         {disp8} mov        edx, dword ptr [eax + 0x48]                   // 0x0079d5f0    8b5048
                         {disp8} mov        edi, dword ptr [edx + 0x08]                   // 0x0079d5f3    8b7a08
                         {disp8} jmp        _jmp_addr_0x0079d5fa                          // 0x0079d5f6    eb02
_jmp_addr_0x0079d5f8:    xor.s              edi, edi                                      // 0x0079d5f8    33ff
_jmp_addr_0x0079d5fa:    test               ecx, 0x00040000                               // 0x0079d5fa    f7c100000400
                         {disp8} je         _jmp_addr_0x0079d61d                          // 0x0079d600    741b
                         test               esi, esi                                      // 0x0079d602    85f6
                         {disp8} je         _jmp_addr_0x0079d612                          // 0x0079d604    740c
                         {disp8} mov        ecx, dword ptr [eax + 0x48]                   // 0x0079d606    8b4848
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0079d609    8b5108
                         add.s              ecx, edx                                      // 0x0079d60c    03ca
                         mov                ecx, dword ptr [ecx]                          // 0x0079d60e    8b09
                         {disp8} jmp        _jmp_addr_0x0079d61f                          // 0x0079d610    eb0d
_jmp_addr_0x0079d612:    {disp8} mov        ecx, dword ptr [eax + 0x48]                   // 0x0079d612    8b4848
                         xor.s              edx, edx                                      // 0x0079d615    33d2
                         add.s              ecx, edx                                      // 0x0079d617    03ca
                         mov                ecx, dword ptr [ecx]                          // 0x0079d619    8b09
                         {disp8} jmp        _jmp_addr_0x0079d61f                          // 0x0079d61b    eb02
_jmp_addr_0x0079d61d:    xor.s              ecx, ecx                                      // 0x0079d61d    33c9
_jmp_addr_0x0079d61f:    {disp8} mov        esi, dword ptr [eax + 0x48]                   // 0x0079d61f    8b7048
                         add.s              esi, ecx                                      // 0x0079d622    03f1
                         add.s              esi, edi                                      // 0x0079d624    03f7
_jmp_addr_0x0079d626:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0079d626    8b4604
                         xor.s              edi, edi                                      // 0x0079d629    33ff
                         test               eax, eax                                      // 0x0079d62b    85c0
                         push               ebp                                           // 0x0079d62d    55
                         {disp8} jbe        _jmp_addr_0x0079d681                          // 0x0079d62e    7651
                         xor.s              ebp, ebp                                      // 0x0079d630    33ed
_jmp_addr_0x0079d632:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0079d632    8b4608
                         mov.s              ecx, ebp                                      // 0x0079d635    8bcd
                         add.s              ecx, eax                                      // 0x0079d637    03c8
                         push               ecx                                           // 0x0079d639    51
                         push               0x00c2a5c0                                    // 0x0079d63a    68c0a5c200
                         call               __strcmpi                                     // 0x0079d63f    e89c960200
                         add                esp, 0x08                                     // 0x0079d644    83c408
                         test               eax, eax                                      // 0x0079d647    85c0
                         {disp8} je         _jmp_addr_0x0079d66a                          // 0x0079d649    741f
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0079d64b    8b4604
                         inc                edi                                           // 0x0079d64e    47
                         add                ebp, 0x000000e0                               // 0x0079d64f    81c5e0000000
                         cmp.s              edi, eax                                      // 0x0079d655    3bf8
                         .byte              0x72, 0xd9// {disp8} jb _jmp_addr_0x0079d632  // 0x0079d657    72d9
                         push               0x0                                           // 0x0079d659    6a00
                         call               _jmp_addr_0x0079f250                          // 0x0079d65b    e8f01b0000
                         add                esp, 0x04                                     // 0x0079d660    83c404
                         pop                ebp                                           // 0x0079d663    5d
                         pop                edi                                           // 0x0079d664    5f
                         pop                esi                                           // 0x0079d665    5e
                         add                esp, 0x0c                                     // 0x0079d666    83c40c
                         ret                                                              // 0x0079d669    c3
_jmp_addr_0x0079d66a:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0079d66a    8b4608
                         {disp32} lea       edx, dword ptr [edi * 0x8 + 0x00000000]       // 0x0079d66d    8d14fd00000000
                         sub.s              edx, edi                                      // 0x0079d674    2bd7
                         shl                edx, 5                                        // 0x0079d676    c1e205
                         add.s              edx, eax                                      // 0x0079d679    03d0
                         {disp32} mov       dword ptr [data_bytes + 0x474198], edx        // 0x0079d67b    891598a1e300
_jmp_addr_0x0079d681:    push               0x0                                           // 0x0079d681    6a00
                         call               _jmp_addr_0x0079f250                          // 0x0079d683    e8c81b0000
                         add                esp, 0x04                                     // 0x0079d688    83c404
                         pop                ebp                                           // 0x0079d68b    5d
_jmp_addr_0x0079d68c:    pop                edi                                           // 0x0079d68c    5f
                         pop                esi                                           // 0x0079d68d    5e
                         add                esp, 0x0c                                     // 0x0079d68e    83c40c
                         ret                                                              // 0x0079d691    c3
                         nop                                                              // 0x0079d692    90
                         nop                                                              // 0x0079d693    90
                         nop                                                              // 0x0079d694    90
                         nop                                                              // 0x0079d695    90
                         nop                                                              // 0x0079d696    90
                         nop                                                              // 0x0079d697    90
                         nop                                                              // 0x0079d698    90
                         nop                                                              // 0x0079d699    90
                         nop                                                              // 0x0079d69a    90
                         nop                                                              // 0x0079d69b    90
                         nop                                                              // 0x0079d69c    90
                         nop                                                              // 0x0079d69d    90
                         nop                                                              // 0x0079d69e    90
                         nop                                                              // 0x0079d69f    90
                         push               esi                                           // 0x0079d6a0    56
                         mov.s              esi, ecx                                      // 0x0079d6a1    8bf1
                         call               _jmp_addr_0x007974c0                          // 0x0079d6a3    e8189effff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0079d6a8    f644240801
                         {disp8} je         _jmp_addr_0x0079d6b8                          // 0x0079d6ad    7409
                         push               esi                                           // 0x0079d6af    56
                         call               ??3@YAXPAX@Z                                  // 0x0079d6b0    e8e3170100
                         add                esp, 0x04                                     // 0x0079d6b5    83c404
_jmp_addr_0x0079d6b8:    mov.s              eax, esi                                      // 0x0079d6b8    8bc6
                         pop                esi                                           // 0x0079d6ba    5e
                         ret                0x0004                                        // 0x0079d6bb    c20400
                         nop                                                              // 0x0079d6be    90
                         nop                                                              // 0x0079d6bf    90
                         push               esi                                           // 0x0079d6c0    56
                         mov.s              esi, ecx                                      // 0x0079d6c1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x0079d6c3    8b86e0000000
                         push               edi                                           // 0x0079d6c9    57
                         xor.s              edi, edi                                      // 0x0079d6ca    33ff
                         cmp.s              eax, edi                                      // 0x0079d6cc    3bc7
                         {disp32} je        _jmp_addr_0x0079d795                          // 0x0079d6ce    0f84c1000000
                         call               _jmp_addr_0x00798af0                          // 0x0079d6d4    e817b4ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079d6d9    8b8ef0000000
                         cmp.s              ecx, edi                                      // 0x0079d6df    3bcf
                         {disp32} mov       dword ptr [esi + 0x00000158], edi             // 0x0079d6e1    89be58010000
                         {disp8} je         _jmp_addr_0x0079d6ee                          // 0x0079d6e7    7405
                         mov                eax, dword ptr [ecx]                          // 0x0079d6e9    8b01
                         call               dword ptr [eax + 4]                           // 0x0079d6eb    ff5004
_jmp_addr_0x0079d6ee:    {disp32} mov       ecx, dword ptr [esi + 0x000000ec]             // 0x0079d6ee    8b8eec000000
                         cmp.s              ecx, edi                                      // 0x0079d6f4    3bcf
                         {disp8} je         _jmp_addr_0x0079d6fd                          // 0x0079d6f6    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x0079d6f8    e803960600
_jmp_addr_0x0079d6fd:    {disp32} mov       ecx, dword ptr [esi + 0x000000f8]             // 0x0079d6fd    8b8ef8000000
                         cmp.s              ecx, edi                                      // 0x0079d703    3bcf
                         {disp8} je         _jmp_addr_0x0079d70c                          // 0x0079d705    7405
                         mov                edx, dword ptr [ecx]                          // 0x0079d707    8b11
                         call               dword ptr [edx + 4]                           // 0x0079d709    ff5204
_jmp_addr_0x0079d70c:    {disp32} mov       ecx, dword ptr [esi + 0x000000f4]             // 0x0079d70c    8b8ef4000000
                         cmp.s              ecx, edi                                      // 0x0079d712    3bcf
                         {disp8} je         _jmp_addr_0x0079d71b                          // 0x0079d714    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x0079d716    e8e5950600
_jmp_addr_0x0079d71b:    {disp32} mov       ecx, dword ptr [esi + 0x00000100]             // 0x0079d71b    8b8e00010000
                         cmp.s              ecx, edi                                      // 0x0079d721    3bcf
                         {disp8} je         _jmp_addr_0x0079d72a                          // 0x0079d723    7405
                         mov                eax, dword ptr [ecx]                          // 0x0079d725    8b01
                         call               dword ptr [eax + 4]                           // 0x0079d727    ff5004
_jmp_addr_0x0079d72a:    {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x0079d72a    8b8efc000000
                         cmp.s              ecx, edi                                      // 0x0079d730    3bcf
                         {disp8} je         _jmp_addr_0x0079d739                          // 0x0079d732    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x0079d734    e8c7950600
_jmp_addr_0x0079d739:    {disp32} mov       ecx, dword ptr [esi + 0x00000108]             // 0x0079d739    8b8e08010000
                         cmp.s              ecx, edi                                      // 0x0079d73f    3bcf
                         {disp8} je         _jmp_addr_0x0079d748                          // 0x0079d741    7405
                         mov                edx, dword ptr [ecx]                          // 0x0079d743    8b11
                         call               dword ptr [edx + 4]                           // 0x0079d745    ff5204
_jmp_addr_0x0079d748:    {disp32} mov       ecx, dword ptr [esi + 0x00000104]             // 0x0079d748    8b8e04010000
                         cmp.s              ecx, edi                                      // 0x0079d74e    3bcf
                         {disp8} je         _jmp_addr_0x0079d757                          // 0x0079d750    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x0079d752    e8a9950600
_jmp_addr_0x0079d757:    {disp32} mov       ecx, dword ptr [esi + 0x00000154]             // 0x0079d757    8b8e54010000
                         cmp.s              ecx, edi                                      // 0x0079d75d    3bcf
                         {disp8} je         _jmp_addr_0x0079d766                          // 0x0079d75f    7405
                         call               _jmp_addr_0x00797510                          // 0x0079d761    e8aa9dffff
_jmp_addr_0x0079d766:    {disp32} mov       eax, dword ptr [esi + 0x00000154]             // 0x0079d766    8b8654010000
                         push               eax                                           // 0x0079d76c    50
                         call               ??3@YAXPAX@Z                                  // 0x0079d76d    e826170100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4741a4]        // 0x0079d772    8b0da4a1e300
                         add                esp, 0x04                                     // 0x0079d778    83c404
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x0079d77b    e8c0a50900
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4741a8]        // 0x0079d780    8b0da8a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741a4], edi        // 0x0079d786    893da4a1e300
                         {disp8} mov        dword ptr [ecx + 0x08], edi                   // 0x0079d78c    897908
                         {disp32} mov       dword ptr [data_bytes + 0x4741a8], edi        // 0x0079d78f    893da8a1e300
_jmp_addr_0x0079d795:    pop                edi                                           // 0x0079d795    5f
                         pop                esi                                           // 0x0079d796    5e
                         ret                                                              // 0x0079d797    c3
                         nop                                                              // 0x0079d798    90
                         nop                                                              // 0x0079d799    90
                         nop                                                              // 0x0079d79a    90
                         nop                                                              // 0x0079d79b    90
                         nop                                                              // 0x0079d79c    90
                         nop                                                              // 0x0079d79d    90
                         nop                                                              // 0x0079d79e    90
                         nop                                                              // 0x0079d79f    90
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x0079d7a0    d9052c60e000
                         push               esi                                           // 0x0079d7a6    56
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x0079d7a7    d81d40588c00
                         mov.s              esi, ecx                                      // 0x0079d7ad    8bf1
                         fnstsw             ax                                            // 0x0079d7af    dfe0
                         test               ah, 0x41                                      // 0x0079d7b1    f6c441
                         {disp8} jne        _jmp_addr_0x0079d7bd                          // 0x0079d7b4    7507
                         mov                eax, dword ptr [esi]                          // 0x0079d7b6    8b06
                         call               dword ptr [eax + 0xc]                         // 0x0079d7b8    ff500c
                         pop                esi                                           // 0x0079d7bb    5e
                         ret                                                              // 0x0079d7bc    c3
_jmp_addr_0x0079d7bd:    {disp32} mov       byte ptr [data_bytes + 0x4d9e28], 0x01        // 0x0079d7bd    c60528fee90001
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x0079d7c4    8b8ec0000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x18]                   // 0x0079d7ca    8b4918
                         mov                eax, dword ptr [ecx]                          // 0x0079d7cd    8b01
                         mov                edx, 0x00000001                               // 0x0079d7cf    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x0079d7d4    ff90a0000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x0079d7da    8b8ec0000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe4]        // 0x0079d7e0    8b15e45fe000
                         {disp8} mov        ecx, dword ptr [ecx + 0x18]                   // 0x0079d7e6    8b4918
                         mov                eax, dword ptr [ecx]                          // 0x0079d7e9    8b01
                         push               edx                                           // 0x0079d7eb    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe8]        // 0x0079d7ec    8b15e85fe000
                         call               dword ptr [eax + 0x2c]                        // 0x0079d7f2    ff502c
                         {disp32} mov       eax, dword ptr [esi + 0x000000c0]             // 0x0079d7f5    8b86c0000000
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0079d7fb    8b4818
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x0079d7fe    a0e481c300
                         mov                edx, dword ptr [ecx]                          // 0x0079d803    8b11
                         neg                al                                            // 0x0079d805    f6d8
                         push               0x1                                           // 0x0079d807    6a01
                         push               0x0                                           // 0x0079d809    6a00
                         push               0x4                                           // 0x0079d80b    6a04
                         sbb.s              eax, eax                                      // 0x0079d80d    1bc0
                         and                eax, 0x05                                     // 0x0079d80f    83e005
                         push               eax                                           // 0x0079d812    50
                         push               0x0                                           // 0x0079d813    6a00
                         push               0x0                                           // 0x0079d815    6a00
                         call               dword ptr [edx + 0x22c]                       // 0x0079d817    ff922c020000
                         {disp32} mov       byte ptr [data_bytes + 0x4d9e28], 0x00        // 0x0079d81d    c60528fee90000
                         pop                esi                                           // 0x0079d824    5e
                         ret                                                              // 0x0079d825    c3
                         nop                                                              // 0x0079d826    90
                         nop                                                              // 0x0079d827    90
                         nop                                                              // 0x0079d828    90
                         nop                                                              // 0x0079d829    90
                         nop                                                              // 0x0079d82a    90
                         nop                                                              // 0x0079d82b    90
                         nop                                                              // 0x0079d82c    90
                         nop                                                              // 0x0079d82d    90
                         nop                                                              // 0x0079d82e    90
                         nop                                                              // 0x0079d82f    90
_jmp_addr_0x0079d830:    sub                esp, 0x2c                                     // 0x0079d830    83ec2c
                         push               ebp                                           // 0x0079d833    55
                         push               esi                                           // 0x0079d834    56
                         push               edi                                           // 0x0079d835    57
                         mov.s              edi, ecx                                      // 0x0079d836    8bf9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0079d838    8b0d5c19d000
                         push               0x0                                           // 0x0079d83e    6a00
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0079d840    e85b30dbff
                         mov.s              ebp, eax                                      // 0x0079d845    8be8
                         test               ebp, ebp                                      // 0x0079d847    85ed
                         {disp32} je        _jmp_addr_0x0079da30                          // 0x0079d849    0f84e1010000
_jmp_addr_0x0079d84f:    {disp32} mov       eax, dword ptr [ebp + 0x00000a48]             // 0x0079d84f    8b85480a0000
                         test               eax, eax                                      // 0x0079d855    85c0
                         {disp32} je        _jmp_addr_0x0079da1a                          // 0x0079d857    0f84bd010000
                         add                eax, 0x14                                     // 0x0079d85d    83c014
                         mov                ecx, dword ptr [eax]                          // 0x0079d860    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0079d862    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0079d865    8b4008
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0079d868    89442428
                         {disp8} mov        al, byte ptr [esp + 0x3c]                     // 0x0079d86c    8a44243c
                         test               al, al                                        // 0x0079d870    84c0
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0079d872    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0079d876    89542424
                         {disp32} je        _jmp_addr_0x0079d90e                          // 0x0079d87a    0f848e000000
                         {disp8} mov        ecx, dword ptr [esp + 0x26]                   // 0x0079d880    8b4c2426
                         {disp8} mov        edx, dword ptr [esp + 0x22]                   // 0x0079d884    8b542422
                         and                ecx, 0x0000ffff                               // 0x0079d888    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0079d88e    894c2414
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0079d892    db442414
                         push               0x0                                           // 0x0079d896    6a00
                         push               ecx                                           // 0x0079d898    51
                         and                edx, 0x0000ffff                               // 0x0079d899    81e2ffff0000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079d89f    d80d74ef9900
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0079d8a5    8954241c
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x0079d8a9    8d442434
                         fstp               dword ptr [esp]                               // 0x0079d8ad    d91c24
                         push               ecx                                           // 0x0079d8b0    51
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x0079d8b1    db442420
                         {disp32} mov       ecx, dword ptr [edi + 0x00000154]             // 0x0079d8b5    8b8f54010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079d8bb    d80d74ef9900
                         fstp               dword ptr [esp]                               // 0x0079d8c1    d91c24
                         push               eax                                           // 0x0079d8c4    50
                         call               _jmp_addr_0x00797590                          // 0x0079d8c5    e8c69cffff
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0079d8ca    d9442430
                         {disp32} fadd      dword ptr [__real@3dcccccd]                   // 0x0079d8ce    d8052cb28a00
                         {disp32} mov       eax, dword ptr [edi + 0x000000c0]             // 0x0079d8d4    8b87c0000000
                         push               0x3f266666                                    // 0x0079d8da    686666263f
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0079d8df    8d4c2410
                         push               ecx                                           // 0x0079d8e3    51
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0079d8e4    d95c2438
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0079d8e8    8d542434
                         {disp8} mov        byte ptr [esp + 0x14], 0x61                   // 0x0079d8ec    c644241461
                         {disp8} mov        byte ptr [esp + 0x15], 0x6e                   // 0x0079d8f1    c64424156e
                         {disp8} mov        byte ptr [esp + 0x16], 0x7c                   // 0x0079d8f6    c64424167c
                         {disp8} mov        byte ptr [esp + 0x17], -0x01                  // 0x0079d8fb    c6442417ff
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0079d900    8b4824
                         push               edx                                           // 0x0079d903    52
                         call               _jmp_addr_0x0083d860                          // 0x0079d904    e857ff0900
                         {disp32} jmp       _jmp_addr_0x0079da1a                          // 0x0079d909    e90c010000
_jmp_addr_0x0079d90e:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0079d90e    8d4c2410
                         push               ecx                                           // 0x0079d912    51
                         mov.s              ecx, ebp                                      // 0x0079d913    8bcd
                         call               @GetPlayer3DColor__7GPlayerFv@12              // 0x0079d915    e876dceaff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0079d91a    8b442410
                         test               eax, 0x00ffffff                               // 0x0079d91e    a9ffffff00
                         {disp8} jne        _jmp_addr_0x0079d928                          // 0x0079d923    7503
                         or                 eax, -0x1                                     // 0x0079d925    83c8ff
_jmp_addr_0x0079d928:    mov.s              edx, eax                                      // 0x0079d928    8bd0
                         and                edx, 0x0000ff00                               // 0x0079d92a    81e200ff0000
                         shl                edx, 6                                        // 0x0079d930    c1e206
                         mov                ecx, 0x003fc000                               // 0x0079d933    b900c03f00
                         sub.s              ecx, edx                                      // 0x0079d938    2bca
                         shr                ecx, 8                                        // 0x0079d93a    c1e908
                         mov.s              edx, eax                                      // 0x0079d93d    8bd0
                         and                edx, 0xffffff00                               // 0x0079d93f    81e200ffffff
                         add.s              ecx, edx                                      // 0x0079d945    03ca
                         mov.s              edx, eax                                      // 0x0079d947    8bd0
                         and                edx, 0x00ff0000                               // 0x0079d949    81e20000ff00
                         shl                edx, 6                                        // 0x0079d94f    c1e206
                         mov                esi, 0x3fc00000                               // 0x0079d952    be0000c03f
                         sub.s              esi, edx                                      // 0x0079d957    2bf2
                         shr                esi, 8                                        // 0x0079d959    c1ee08
                         mov.s              edx, eax                                      // 0x0079d95c    8bd0
                         and                edx, 0xffff0000                               // 0x0079d95e    81e20000ffff
                         add.s              esi, edx                                      // 0x0079d964    03f2
                         and                ecx, 0x0000ff00                               // 0x0079d966    81e100ff0000
                         and                esi, 0xffff0000                               // 0x0079d96c    81e60000ffff
                         or.s               ecx, esi                                      // 0x0079d972    0bce
                         mov.s              edx, eax                                      // 0x0079d974    8bd0
                         and                edx, 0x000000ff                               // 0x0079d976    81e2ff000000
                         shl                edx, 6                                        // 0x0079d97c    c1e206
                         mov                esi, 0x00003fc0                               // 0x0079d97f    bec03f0000
                         sub.s              esi, edx                                      // 0x0079d984    2bf2
                         {disp8} mov        edx, dword ptr [esp + 0x22]                   // 0x0079d986    8b542422
                         shr                esi, 8                                        // 0x0079d98a    c1ee08
                         add.s              esi, eax                                      // 0x0079d98d    03f0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x474194]        // 0x0079d98f    a194a1e300
                         and                esi, 0x000000ff                               // 0x0079d994    81e6ff000000
                         or.s               ecx, esi                                      // 0x0079d99a    0bce
                         or                 ecx, 0xff000000                               // 0x0079d99c    81c9000000ff
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0079d9a2    894c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x26]                   // 0x0079d9a6    8b4c2426
                         {disp32} mov       esi, dword ptr [edi + 0x00000154]             // 0x0079d9aa    8bb754010000
                         and                ecx, 0x0000ffff                               // 0x0079d9b0    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0079d9b6    894c2414
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0079d9ba    db442414
                         push               0x3d4ccccd                                    // 0x0079d9be    68cdcc4c3d
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0079d9c3    8944241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0079d9c7    8b4c241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079d9cb    d80d74ef9900
                         {disp32} mov       eax, dword ptr [edi + 0x000000f8]             // 0x0079d9d1    8b87f8000000
                         push               ecx                                           // 0x0079d9d7    51
                         and                edx, 0x0000ffff                               // 0x0079d9d8    81e2ffff0000
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0079d9de    8954241c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0079d9e2    d95c2424
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0079d9e6    db44241c
                         push               eax                                           // 0x0079d9ea    50
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0079d9eb    8b442428
                         sub                esp, 0x0c                                     // 0x0079d9ef    83ec0c
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079d9f2    d80d74ef9900
                         mov.s              edx, esp                                      // 0x0079d9f8    8bd4
                         push               0x0                                           // 0x0079d9fa    6a00
                         push               eax                                           // 0x0079d9fc    50
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0079d9fd    d95c2434
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0079da01    8b4c2434
                         push               ecx                                           // 0x0079da05    51
                         push               edx                                           // 0x0079da06    52
                         mov.s              ecx, esi                                      // 0x0079da07    8bce
                         call               _jmp_addr_0x00797590                          // 0x0079da09    e8829bffff
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x0079da0e    8d542428
                         push               edx                                           // 0x0079da12    52
                         mov.s              ecx, esi                                      // 0x0079da13    8bce
                         call               _jmp_addr_0x0079da40                          // 0x0079da15    e826000000
_jmp_addr_0x0079da1a:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0079da1a    8b0d5c19d000
                         push               ebp                                           // 0x0079da20    55
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0079da21    e87a2edbff
                         mov.s              ebp, eax                                      // 0x0079da26    8be8
                         test               ebp, ebp                                      // 0x0079da28    85ed
                         {disp32} jne       _jmp_addr_0x0079d84f                          // 0x0079da2a    0f851ffeffff
_jmp_addr_0x0079da30:    pop                edi                                           // 0x0079da30    5f
                         pop                esi                                           // 0x0079da31    5e
                         pop                ebp                                           // 0x0079da32    5d
                         add                esp, 0x2c                                     // 0x0079da33    83c42c
                         ret                0x0004                                        // 0x0079da36    c20400
                         nop                                                              // 0x0079da39    90
                         nop                                                              // 0x0079da3a    90
                         nop                                                              // 0x0079da3b    90
                         nop                                                              // 0x0079da3c    90
                         nop                                                              // 0x0079da3d    90
                         nop                                                              // 0x0079da3e    90
                         nop                                                              // 0x0079da3f    90
_jmp_addr_0x0079da40:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0079da40    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0079da44    8b542418
                         push               esi                                           // 0x0079da48    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x0079da49    8b742418
                         mov                eax, dword ptr [esi]                          // 0x0079da4d    8b06
                         push               ecx                                           // 0x0079da4f    51
                         push               edx                                           // 0x0079da50    52
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0079da51    8d542414
                         mov.s              ecx, esi                                      // 0x0079da55    8bce
                         call               dword ptr [eax + 0x20]                        // 0x0079da57    ff5020
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0079da5a    8b442408
                         mov                ecx, dword ptr [eax]                          // 0x0079da5e    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0079da60    8d542418
                         push               edx                                           // 0x0079da64    52
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0079da65    8d442424
                         or                 ecx, 0xff000000                               // 0x0079da69    81c9000000ff
                         push               eax                                           // 0x0079da6f    50
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x0079da70    894c2428
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0079da74    c744242000000000
                         call               _jmp_addr_0x007867b0                          // 0x0079da7c    e82f8dfeff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0079da81    8b4c2420
                         mov                eax, dword ptr [esi]                          // 0x0079da85    8b06
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0079da87    8b542428
                         add                esp, 0x08                                     // 0x0079da8b    83c408
                         push               ecx                                           // 0x0079da8e    51
                         mov.s              ecx, esi                                      // 0x0079da8f    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x0079da91    ff502c
                         mov                edx, dword ptr [esi]                          // 0x0079da94    8b16
                         mov.s              ecx, esi                                      // 0x0079da96    8bce
                         call               dword ptr [edx + 0x100]                       // 0x0079da98    ff9200010000
                         pop                esi                                           // 0x0079da9e    5e
                         ret                0x001c                                        // 0x0079da9f    c21c00
                         nop                                                              // 0x0079daa2    90
                         nop                                                              // 0x0079daa3    90
                         nop                                                              // 0x0079daa4    90
                         nop                                                              // 0x0079daa5    90
                         nop                                                              // 0x0079daa6    90
                         nop                                                              // 0x0079daa7    90
                         nop                                                              // 0x0079daa8    90
                         nop                                                              // 0x0079daa9    90
                         nop                                                              // 0x0079daaa    90
                         nop                                                              // 0x0079daab    90
                         nop                                                              // 0x0079daac    90
                         nop                                                              // 0x0079daad    90
                         nop                                                              // 0x0079daae    90
                         nop                                                              // 0x0079daaf    90
_jmp_addr_0x0079dab0:    sub                esp, 0x34                                     // 0x0079dab0    83ec34
                         push               ebp                                           // 0x0079dab3    55
                         {disp32} mov       ebp, dword ptr [_CreatureList]                // 0x0079dab4    8b2df8fcc500
                         test               ebp, ebp                                      // 0x0079daba    85ed
                         push               esi                                           // 0x0079dabc    56
                         push               edi                                           // 0x0079dabd    57
                         mov.s              edi, ecx                                      // 0x0079dabe    8bf9
                         {disp32} je        _jmp_addr_0x0079dcae                          // 0x0079dac0    0f84e8010000
_jmp_addr_0x0079dac6:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x0079dac6    8b4d04
                         test               ecx, ecx                                      // 0x0079dac9    85c9
                         {disp32} je        _jmp_addr_0x0079dca3                          // 0x0079dacb    0f84d2010000
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x0079dad1    8d4114
                         mov                edx, dword ptr [eax]                          // 0x0079dad4    8b10
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0079dad6    89542428
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0079dada    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0079dadd    8b4008
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0079dae0    89442430
                         {disp8} mov        al, byte ptr [esp + 0x44]                     // 0x0079dae4    8a442444
                         test               al, al                                        // 0x0079dae8    84c0
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0079daea    8954242c
                         {disp32} je        _jmp_addr_0x0079db82                          // 0x0079daee    0f848e000000
                         {disp8} mov        ecx, dword ptr [esp + 0x2e]                   // 0x0079daf4    8b4c242e
                         {disp8} mov        edx, dword ptr [esp + 0x2a]                   // 0x0079daf8    8b54242a
                         and                ecx, 0x0000ffff                               // 0x0079dafc    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0079db02    894c2410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x0079db06    db442410
                         push               0x0                                           // 0x0079db0a    6a00
                         push               ecx                                           // 0x0079db0c    51
                         and                edx, 0x0000ffff                               // 0x0079db0d    81e2ffff0000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079db13    d80d74ef9900
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0079db19    89542418
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x0079db1d    8d44243c
                         fstp               dword ptr [esp]                               // 0x0079db21    d91c24
                         push               ecx                                           // 0x0079db24    51
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0079db25    db44241c
                         {disp32} mov       ecx, dword ptr [edi + 0x00000154]             // 0x0079db29    8b8f54010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079db2f    d80d74ef9900
                         fstp               dword ptr [esp]                               // 0x0079db35    d91c24
                         push               eax                                           // 0x0079db38    50
                         call               _jmp_addr_0x00797590                          // 0x0079db39    e8529affff
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0079db3e    d9442438
                         {disp32} fadd      dword ptr [__real@3dcccccd]                   // 0x0079db42    d8052cb28a00
                         {disp32} mov       eax, dword ptr [edi + 0x000000c0]             // 0x0079db48    8b87c0000000
                         push               0x3f266666                                    // 0x0079db4e    686666263f
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0079db53    8d4c2410
                         push               ecx                                           // 0x0079db57    51
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0079db58    d95c2440
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x0079db5c    8d54243c
                         {disp8} mov        byte ptr [esp + 0x14], 0x61                   // 0x0079db60    c644241461
                         {disp8} mov        byte ptr [esp + 0x15], 0x6e                   // 0x0079db65    c64424156e
                         {disp8} mov        byte ptr [esp + 0x16], 0x7c                   // 0x0079db6a    c64424167c
                         {disp8} mov        byte ptr [esp + 0x17], -0x01                  // 0x0079db6f    c6442417ff
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0079db74    8b4824
                         push               edx                                           // 0x0079db77    52
                         call               _jmp_addr_0x0083d860                          // 0x0079db78    e8e3fc0900
                         {disp32} jmp       _jmp_addr_0x0079dca3                          // 0x0079db7d    e921010000
_jmp_addr_0x0079db82:    mov                edx, dword ptr [ecx]                          // 0x0079db82    8b11
                         call               dword ptr [edx + 0x1c]                        // 0x0079db84    ff521c
                         test               eax, eax                                      // 0x0079db87    85c0
                         {disp8} je         _jmp_addr_0x0079db99                          // 0x0079db89    740e
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0079db8b    8d4c2424
                         push               ecx                                           // 0x0079db8f    51
                         mov.s              ecx, eax                                      // 0x0079db90    8bc8
                         call               @GetPlayer3DColor__7GPlayerFv@12              // 0x0079db92    e8f9d9eaff
                         {disp8} jmp        _jmp_addr_0x0079dba5                          // 0x0079db97    eb0c
_jmp_addr_0x0079db99:    {disp8} mov        dword ptr [esp + 0x14], 0xffffffff            // 0x0079db99    c7442414ffffffff
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0079dba1    8d442414
_jmp_addr_0x0079dba5:    mov                eax, dword ptr [eax]                          // 0x0079dba5    8b00
                         test               eax, 0x00ffffff                               // 0x0079dba7    a9ffffff00
                         {disp8} jne        _jmp_addr_0x0079dbb1                          // 0x0079dbac    7503
                         or                 eax, -0x1                                     // 0x0079dbae    83c8ff
_jmp_addr_0x0079dbb1:    mov.s              edx, eax                                      // 0x0079dbb1    8bd0
                         and                edx, 0x0000ff00                               // 0x0079dbb3    81e200ff0000
                         shl                edx, 6                                        // 0x0079dbb9    c1e206
                         mov                ecx, 0x003fc000                               // 0x0079dbbc    b900c03f00
                         sub.s              ecx, edx                                      // 0x0079dbc1    2bca
                         shr                ecx, 8                                        // 0x0079dbc3    c1e908
                         mov.s              edx, eax                                      // 0x0079dbc6    8bd0
                         and                edx, 0xffffff00                               // 0x0079dbc8    81e200ffffff
                         add.s              ecx, edx                                      // 0x0079dbce    03ca
                         mov.s              edx, eax                                      // 0x0079dbd0    8bd0
                         and                edx, 0x00ff0000                               // 0x0079dbd2    81e20000ff00
                         shl                edx, 6                                        // 0x0079dbd8    c1e206
                         mov                esi, 0x3fc00000                               // 0x0079dbdb    be0000c03f
                         sub.s              esi, edx                                      // 0x0079dbe0    2bf2
                         shr                esi, 8                                        // 0x0079dbe2    c1ee08
                         mov.s              edx, eax                                      // 0x0079dbe5    8bd0
                         and                edx, 0xffff0000                               // 0x0079dbe7    81e20000ffff
                         add.s              esi, edx                                      // 0x0079dbed    03f2
                         and                ecx, 0x0000ff00                               // 0x0079dbef    81e100ff0000
                         and                esi, 0xffff0000                               // 0x0079dbf5    81e60000ffff
                         or.s               ecx, esi                                      // 0x0079dbfb    0bce
                         mov.s              edx, eax                                      // 0x0079dbfd    8bd0
                         and                edx, 0x000000ff                               // 0x0079dbff    81e2ff000000
                         shl                edx, 6                                        // 0x0079dc05    c1e206
                         mov                esi, 0x00003fc0                               // 0x0079dc08    bec03f0000
                         sub.s              esi, edx                                      // 0x0079dc0d    2bf2
                         {disp8} mov        edx, dword ptr [esp + 0x2a]                   // 0x0079dc0f    8b54242a
                         shr                esi, 8                                        // 0x0079dc13    c1ee08
                         add.s              esi, eax                                      // 0x0079dc16    03f0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x474194]        // 0x0079dc18    a194a1e300
                         and                esi, 0x000000ff                               // 0x0079dc1d    81e6ff000000
                         or.s               ecx, esi                                      // 0x0079dc23    0bce
                         or                 ecx, 0xff000000                               // 0x0079dc25    81c9000000ff
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0079dc2b    894c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x2e]                   // 0x0079dc2f    8b4c242e
                         {disp32} mov       esi, dword ptr [edi + 0x00000154]             // 0x0079dc33    8bb754010000
                         and                ecx, 0x0000ffff                               // 0x0079dc39    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0079dc3f    894c2410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x0079dc43    db442410
                         push               0x3d4ccccd                                    // 0x0079dc47    68cdcc4c3d
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0079dc4c    8944241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0079dc50    8b4c241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079dc54    d80d74ef9900
                         {disp32} mov       eax, dword ptr [edi + 0x00000100]             // 0x0079dc5a    8b8700010000
                         push               ecx                                           // 0x0079dc60    51
                         and                edx, 0x0000ffff                               // 0x0079dc61    81e2ffff0000
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0079dc67    89542418
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0079dc6b    d95c2424
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x0079dc6f    db442418
                         push               eax                                           // 0x0079dc73    50
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0079dc74    8b442428
                         sub                esp, 0x0c                                     // 0x0079dc78    83ec0c
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079dc7b    d80d74ef9900
                         mov.s              edx, esp                                      // 0x0079dc81    8bd4
                         push               0x0                                           // 0x0079dc83    6a00
                         push               eax                                           // 0x0079dc85    50
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0079dc86    d95c2430
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0079dc8a    8b4c2430
                         push               ecx                                           // 0x0079dc8e    51
                         push               edx                                           // 0x0079dc8f    52
                         mov.s              ecx, esi                                      // 0x0079dc90    8bce
                         call               _jmp_addr_0x00797590                          // 0x0079dc92    e8f998ffff
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0079dc97    8d542438
                         push               edx                                           // 0x0079dc9b    52
                         mov.s              ecx, esi                                      // 0x0079dc9c    8bce
                         call               _jmp_addr_0x0079da40                          // 0x0079dc9e    e89dfdffff
_jmp_addr_0x0079dca3:    {disp8} mov        ebp, dword ptr [ebp + 0x00]                   // 0x0079dca3    8b6d00
                         test               ebp, ebp                                      // 0x0079dca6    85ed
                         {disp32} jne       _jmp_addr_0x0079dac6                          // 0x0079dca8    0f8518feffff
_jmp_addr_0x0079dcae:    pop                edi                                           // 0x0079dcae    5f
                         pop                esi                                           // 0x0079dcaf    5e
                         pop                ebp                                           // 0x0079dcb0    5d
                         add                esp, 0x34                                     // 0x0079dcb1    83c434
                         ret                0x0004                                        // 0x0079dcb4    c20400
                         nop                                                              // 0x0079dcb7    90
                         nop                                                              // 0x0079dcb8    90
                         nop                                                              // 0x0079dcb9    90
                         nop                                                              // 0x0079dcba    90
                         nop                                                              // 0x0079dcbb    90
                         nop                                                              // 0x0079dcbc    90
                         nop                                                              // 0x0079dcbd    90
                         nop                                                              // 0x0079dcbe    90
                         nop                                                              // 0x0079dcbf    90
                         ret                                                              // 0x0079dcc0    c3
                         nop                                                              // 0x0079dcc1    90
                         nop                                                              // 0x0079dcc2    90
                         nop                                                              // 0x0079dcc3    90
                         nop                                                              // 0x0079dcc4    90
                         nop                                                              // 0x0079dcc5    90
                         nop                                                              // 0x0079dcc6    90
                         nop                                                              // 0x0079dcc7    90
                         nop                                                              // 0x0079dcc8    90
                         nop                                                              // 0x0079dcc9    90
                         nop                                                              // 0x0079dcca    90
                         nop                                                              // 0x0079dccb    90
                         nop                                                              // 0x0079dccc    90
                         nop                                                              // 0x0079dccd    90
                         nop                                                              // 0x0079dcce    90
                         nop                                                              // 0x0079dccf    90
_jmp_addr_0x0079dcd0:    {disp32} jmp       _jmp_addr_0x0079dce0                          // 0x0079dcd0    e90b000000
                         nop                                                              // 0x0079dcd5    90
                         nop                                                              // 0x0079dcd6    90
                         nop                                                              // 0x0079dcd7    90
                         nop                                                              // 0x0079dcd8    90
                         nop                                                              // 0x0079dcd9    90
                         nop                                                              // 0x0079dcda    90
                         nop                                                              // 0x0079dcdb    90
                         nop                                                              // 0x0079dcdc    90
                         nop                                                              // 0x0079dcdd    90
                         nop                                                              // 0x0079dcde    90
                         nop                                                              // 0x0079dcdf    90
_jmp_addr_0x0079dce0:    push               ebx                                           // 0x0079dce0    53
                         push               ebp                                           // 0x0079dce1    55
                         push               esi                                           // 0x0079dce2    56
                         push               edi                                           // 0x0079dce3    57
                         xor.s              ebp, ebp                                      // 0x0079dce4    33ed
                         xor.s              ebx, ebx                                      // 0x0079dce6    33db
                         or                 edi, 0xffffffff                               // 0x0079dce8    83cfff
_jmp_addr_0x0079dceb:    mov.s              eax, ebx                                      // 0x0079dceb    8bc3
                         mov                esi, 0x00000040                               // 0x0079dced    be40000000
_jmp_addr_0x0079dcf2:    {disp32} mov       edx, dword ptr [ecx + 0x00000154]             // 0x0079dcf2    8b9154010000
                         {disp8} mov        dword ptr [eax + edx * 0x1 + 0x18], edi       // 0x0079dcf8    897c1018
                         {disp8} mov        dword ptr [eax + edx * 0x1 + 0x1c], ebp       // 0x0079dcfc    896c101c
                         add                eax, 0x0c                                     // 0x0079dd00    83c00c
                         dec                esi                                           // 0x0079dd03    4e
                         {disp8} jne        _jmp_addr_0x0079dcf2                          // 0x0079dd04    75ec
                         add                ebx, 0x0000030c                               // 0x0079dd06    81c30c030000
                         cmp                ebx, 0x0000c300                               // 0x0079dd0c    81fb00c30000
                         .byte              0x72, 0xd7// {disp8} jb _jmp_addr_0x0079dceb  // 0x0079dd12    72d7
                         pop                edi                                           // 0x0079dd14    5f
                         pop                esi                                           // 0x0079dd15    5e
                         pop                ebp                                           // 0x0079dd16    5d
                         pop                ebx                                           // 0x0079dd17    5b
                         ret                                                              // 0x0079dd18    c3
                         nop                                                              // 0x0079dd19    90
                         nop                                                              // 0x0079dd1a    90
                         nop                                                              // 0x0079dd1b    90
                         nop                                                              // 0x0079dd1c    90
                         nop                                                              // 0x0079dd1d    90
                         nop                                                              // 0x0079dd1e    90
                         nop                                                              // 0x0079dd1f    90
_jmp_addr_0x0079dd20:    push               esi                                           // 0x0079dd20    56
                         mov.s              esi, ecx                                      // 0x0079dd21    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0079dd23    8b4e60
                         test               ecx, ecx                                      // 0x0079dd26    85c9
                         {disp8} je         _jmp_addr_0x0079dd38                          // 0x0079dd28    740e
                         mov                eax, dword ptr [ecx]                          // 0x0079dd2a    8b01
                         push               0x0                                           // 0x0079dd2c    6a00
                         call               dword ptr [eax + 0xc]                         // 0x0079dd2e    ff500c
                         {disp8} mov        dword ptr [esi + 0x60], 0x00000000            // 0x0079dd31    c7466000000000
_jmp_addr_0x0079dd38:    pop                esi                                           // 0x0079dd38    5e
                         ret                                                              // 0x0079dd39    c3
                         nop                                                              // 0x0079dd3a    90
                         nop                                                              // 0x0079dd3b    90
                         nop                                                              // 0x0079dd3c    90
                         nop                                                              // 0x0079dd3d    90
                         nop                                                              // 0x0079dd3e    90
                         nop                                                              // 0x0079dd3f    90
_jmp_addr_0x0079dd40:    sub                esp, 0x0c                                     // 0x0079dd40    83ec0c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0079dd43    8b442410
                         xor.s              ecx, ecx                                      // 0x0079dd47    33c9
                         {disp8} mov        cx, word ptr [eax + 0x06]                     // 0x0079dd49    668b4806
                         xor.s              edx, edx                                      // 0x0079dd4d    33d2
                         {disp8} mov        dx, word ptr [eax + 0x02]                     // 0x0079dd4f    668b5002
                         push               esi                                           // 0x0079dd53    56
                         xor.s              esi, esi                                      // 0x0079dd54    33f6
                         push               esi                                           // 0x0079dd56    56
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0079dd57    8d442408
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0079dd5b    894c2418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x0079dd5f    db442418
                         push               ecx                                           // 0x0079dd63    51
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0079dd64    8954241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079dd68    d80d74ef9900
                         fstp               dword ptr [esp]                               // 0x0079dd6e    d91c24
                         push               ecx                                           // 0x0079dd71    51
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x0079dd72    db442420
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0079dd76    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x000059b4]             // 0x0079dd7c    8b91b4590000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079dd82    d80d74ef9900
                         fstp               dword ptr [esp]                               // 0x0079dd88    d91c24
                         push               eax                                           // 0x0079dd8b    50
                         mov                eax, dword ptr [edx]                          // 0x0079dd8c    8b02
                         {disp32} mov       ecx, dword ptr [eax + 0x00000154]             // 0x0079dd8e    8b8854010000
                         call               _jmp_addr_0x00797590                          // 0x0079dd94    e8f797ffff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0079dd99    d9442408
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0079dd9d    8b442418
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0079dda1    d805b4a38a00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0079dda7    8b54241c
                         mov                ecx, 0x3dcccccd                               // 0x0079ddab    b9cdcccc3d
                         mov                dword ptr [edx], ecx                          // 0x0079ddb0    890a
                         {disp8} fstp       dword ptr [eax + 0x28]                        // 0x0079ddb2    d95828
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0079ddb5    8b54240c
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x0079ddb9    894820
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x0079ddbc    894810
                         mov                dword ptr [eax], ecx                          // 0x0079ddbf    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0079ddc1    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x1c], esi                   // 0x0079ddc5    89701c
                         {disp8} mov        dword ptr [eax + 0x18], esi                   // 0x0079ddc8    897018
                         {disp8} mov        dword ptr [eax + 0x14], esi                   // 0x0079ddcb    897014
                         {disp8} mov        dword ptr [eax + 0x0c], esi                   // 0x0079ddce    89700c
                         {disp8} mov        dword ptr [eax + 0x08], esi                   // 0x0079ddd1    897008
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0079ddd4    897004
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0079ddd7    894824
                         {disp8} mov        dword ptr [eax + 0x2c], edx                   // 0x0079ddda    89502c
                         pop                esi                                           // 0x0079dddd    5e
                         add                esp, 0x0c                                     // 0x0079ddde    83c40c
                         ret                                                              // 0x0079dde1    c3
                         nop                                                              // 0x0079dde2    90
                         nop                                                              // 0x0079dde3    90
                         nop                                                              // 0x0079dde4    90
                         nop                                                              // 0x0079dde5    90
                         nop                                                              // 0x0079dde6    90
                         nop                                                              // 0x0079dde7    90
                         nop                                                              // 0x0079dde8    90
                         nop                                                              // 0x0079dde9    90
                         nop                                                              // 0x0079ddea    90
                         nop                                                              // 0x0079ddeb    90
                         nop                                                              // 0x0079ddec    90
                         nop                                                              // 0x0079dded    90
                         nop                                                              // 0x0079ddee    90
                         nop                                                              // 0x0079ddef    90
_jmp_addr_0x0079ddf0:    sub                esp, 0x28                                     // 0x0079ddf0    83ec28
                         push               esi                                           // 0x0079ddf3    56
                         push               edi                                           // 0x0079ddf4    57
                         mov.s              esi, ecx                                      // 0x0079ddf5    8bf1
                         call               _jmp_addr_0x0079dd20                          // 0x0079ddf7    e824ffffff
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x0079ddfc    8d4614
                         mov                ecx, dword ptr [eax]                          // 0x0079ddff    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0079de01    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0079de04    8b4008
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0079de07    894c240c
                         mov.s              ecx, esi                                      // 0x0079de0b    8bce
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0079de0d    89542410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0079de11    89442414
                         call               _jmp_addr_0x007201d0                          // 0x0079de15    e8b623f8ff
                         {disp8} mov        ecx, dword ptr [esp + 0x12]                   // 0x0079de1a    8b4c2412
                         {disp8} mov        edx, dword ptr [esp + 0x0e]                   // 0x0079de1e    8b54240e
                         {disp8} mov        edi, dword ptr [eax + 0x28]                   // 0x0079de22    8b7828
                         and                ecx, 0x0000ffff                               // 0x0079de25    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0079de2b    894c2408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x0079de2f    db442408
                         push               0x0                                           // 0x0079de33    6a00
                         push               ecx                                           // 0x0079de35    51
                         and                edx, 0x0000ffff                               // 0x0079de36    81e2ffff0000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079de3c    d80d74ef9900
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0079de42    89542410
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x0079de46    8d44242c
                         fstp               dword ptr [esp]                               // 0x0079de4a    d91c24
                         push               ecx                                           // 0x0079de4d    51
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0079de4e    db442414
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0079de52    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x000059b4]             // 0x0079de58    8b91b4590000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5f74]             // 0x0079de5e    d80d74ef9900
                         fstp               dword ptr [esp]                               // 0x0079de64    d91c24
                         push               eax                                           // 0x0079de67    50
                         mov                eax, dword ptr [edx]                          // 0x0079de68    8b02
                         {disp32} mov       ecx, dword ptr [eax + 0x00000154]             // 0x0079de6a    8b8854010000
                         call               _jmp_addr_0x00797590                          // 0x0079de70    e81b97ffff
                         mov                ecx, dword ptr [eax]                          // 0x0079de75    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0079de77    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0079de7a    8b4008
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0079de7d    89542410
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079de81    d9442410
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0079de85    d805b4a38a00
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0079de8b    894c240c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0079de8f    89442414
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0079de93    d95c2410
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0079de97    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0079de9b    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0079dea1    e85a350000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0079dea6    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0079deaa    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0079deb0    89442418
                         call               _jmp_addr_0x007a1400                          // 0x0079deb4    e847350000
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0079deb9    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0079debd    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0079dec3    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0079dec7    c744242000000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0079decf    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0079ded5    e826350000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0079deda    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0079dede    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0079dee4    89442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0079dee8    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0079deee    e80d350000
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0079def3    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0079def7    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x0079defb    c744242c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0079df03    e888510600
                         {disp8} fsubr      dword ptr [esp + 0x10]                        // 0x0079df08    d86c2410
                         cmp                edi, -0x01                                    // 0x0079df0c    83ffff
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0079df0f    d95c2420
                         {disp8} je         _jmp_addr_0x0079df3e                          // 0x0079df13    7429
                         mov                edx, dword ptr [esi]                          // 0x0079df15    8b16
                         push               -0x1                                          // 0x0079df17    6aff
                         push               0x3dcccccd                                    // 0x0079df19    68cdcccc3d
                         mov.s              ecx, esi                                      // 0x0079df1e    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0079df20    ff521c
                         push               eax                                           // 0x0079df23    50
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0079df24    8d442424
                         push               edi                                           // 0x0079df28    57
                         push               eax                                           // 0x0079df29    50
                         call               ?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z                          // 0x0079df2a    e83190f8ff
                         add                esp, 0x14                                     // 0x0079df2f    83c414
                         push               0x0                                           // 0x0079df32    6a00
                         mov.s              ecx, eax                                      // 0x0079df34    8bc8
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0079df36    894660
                         call               _jmp_addr_0x00727680                          // 0x0079df39    e84297f8ff
_jmp_addr_0x0079df3e:    pop                edi                                           // 0x0079df3e    5f
                         pop                esi                                           // 0x0079df3f    5e
                         add                esp, 0x28                                     // 0x0079df40    83c428
                         ret                                                              // 0x0079df43    c3
                         nop                                                              // 0x0079df44    90
                         nop                                                              // 0x0079df45    90
                         nop                                                              // 0x0079df46    90
                         nop                                                              // 0x0079df47    90
                         nop                                                              // 0x0079df48    90
                         nop                                                              // 0x0079df49    90
                         nop                                                              // 0x0079df4a    90
                         nop                                                              // 0x0079df4b    90
                         nop                                                              // 0x0079df4c    90
                         nop                                                              // 0x0079df4d    90
                         nop                                                              // 0x0079df4e    90
                         nop                                                              // 0x0079df4f    90
_jmp_addr_0x0079df50:    push               esi                                           // 0x0079df50    56
                         call               _jmp_addr_0x0079e000                          // 0x0079df51    e8aa000000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0079df56    a15c19d000
                         {disp32} mov       esi, dword ptr [eax + 0x00205bc4]             // 0x0079df5b    8bb0c45b2000
                         test               esi, esi                                      // 0x0079df61    85f6
                         {disp8} je         _jmp_addr_0x0079df82                          // 0x0079df63    741d
_jmp_addr_0x0079df65:    mov                edx, dword ptr [esi]                          // 0x0079df65    8b16
                         mov.s              ecx, esi                                      // 0x0079df67    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x0079df69    ff522c
                         cmp                eax, 0x01                                     // 0x0079df6c    83f801
                         {disp8} jne        _jmp_addr_0x0079df78                          // 0x0079df6f    7507
                         mov.s              ecx, esi                                      // 0x0079df71    8bce
                         call               _jmp_addr_0x0079ddf0                          // 0x0079df73    e878feffff
_jmp_addr_0x0079df78:    {disp32} mov       esi, dword ptr [esi + 0x000000e8]             // 0x0079df78    8bb6e8000000
                         test               esi, esi                                      // 0x0079df7e    85f6
                         {disp8} jne        _jmp_addr_0x0079df65                          // 0x0079df80    75e3
_jmp_addr_0x0079df82:    pop                esi                                           // 0x0079df82    5e
                         ret                                                              // 0x0079df83    c3
                         nop                                                              // 0x0079df84    90
                         nop                                                              // 0x0079df85    90
                         nop                                                              // 0x0079df86    90
                         nop                                                              // 0x0079df87    90
                         nop                                                              // 0x0079df88    90
                         nop                                                              // 0x0079df89    90
                         nop                                                              // 0x0079df8a    90
                         nop                                                              // 0x0079df8b    90
                         nop                                                              // 0x0079df8c    90
                         nop                                                              // 0x0079df8d    90
                         nop                                                              // 0x0079df8e    90
                         nop                                                              // 0x0079df8f    90
_jmp_addr_0x0079df90:    {disp32} mov       eax, dword ptr [_game]                        // 0x0079df90    a15c19d000
                         sub                esp, 0x34                                     // 0x0079df95    83ec34
                         push               esi                                           // 0x0079df98    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205bc4]             // 0x0079df99    8bb0c45b2000
                         test               esi, esi                                      // 0x0079df9f    85f6
                         {disp8} je         _jmp_addr_0x0079dffa                          // 0x0079dfa1    7457
_jmp_addr_0x0079dfa3:    mov                edx, dword ptr [esi]                          // 0x0079dfa3    8b16
                         mov.s              ecx, esi                                      // 0x0079dfa5    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x0079dfa7    ff522c
                         test               eax, eax                                      // 0x0079dfaa    85c0
                         {disp8} je         _jmp_addr_0x0079dff0                          // 0x0079dfac    7442
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0079dfae    8b4660
                         test               eax, eax                                      // 0x0079dfb1    85c0
                         {disp8} je         _jmp_addr_0x0079dff0                          // 0x0079dfb3    743b
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0079dfb5    8d442404
                         push               eax                                           // 0x0079dfb9    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0079dfba    8d4c240c
                         push               ecx                                           // 0x0079dfbe    51
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x0079dfbf    8d5614
                         push               edx                                           // 0x0079dfc2    52
                         call               _jmp_addr_0x0079dd40                          // 0x0079dfc3    e878fdffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0079dfc8    8b442410
                         add                esp, 0x0c                                     // 0x0079dfcc    83c40c
                         push               eax                                           // 0x0079dfcf    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0079dfd0    8d4c240c
                         push               ecx                                           // 0x0079dfd4    51
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0079dfd5    8b4e60
                         call               _jmp_addr_0x00727630                          // 0x0079dfd8    e85396f8ff
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0079dfdd    8b4e60
                         push               0x000000ff                                    // 0x0079dfe0    68ff000000
                         push               0x0                                           // 0x0079dfe5    6a00
                         push               0x1                                           // 0x0079dfe7    6a01
                         push               0x0                                           // 0x0079dfe9    6a00
                         call               _jmp_addr_0x00519ad0                          // 0x0079dfeb    e8e0bad7ff
_jmp_addr_0x0079dff0:    {disp32} mov       esi, dword ptr [esi + 0x000000e8]             // 0x0079dff0    8bb6e8000000
                         test               esi, esi                                      // 0x0079dff6    85f6
                         {disp8} jne        _jmp_addr_0x0079dfa3                          // 0x0079dff8    75a9
_jmp_addr_0x0079dffa:    pop                esi                                           // 0x0079dffa    5e
                         add                esp, 0x34                                     // 0x0079dffb    83c434
                         ret                                                              // 0x0079dffe    c3
                         nop                                                              // 0x0079dfff    90
_jmp_addr_0x0079e000:    {disp32} mov       eax, dword ptr [_game]                        // 0x0079e000    a15c19d000
                         push               esi                                           // 0x0079e005    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205bc4]             // 0x0079e006    8bb0c45b2000
                         test               esi, esi                                      // 0x0079e00c    85f6
                         {disp8} je         _jmp_addr_0x0079e02d                          // 0x0079e00e    741d
_jmp_addr_0x0079e010:    mov                edx, dword ptr [esi]                          // 0x0079e010    8b16
                         mov.s              ecx, esi                                      // 0x0079e012    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x0079e014    ff522c
                         cmp                eax, 0x01                                     // 0x0079e017    83f801
                         {disp8} jne        _jmp_addr_0x0079e023                          // 0x0079e01a    7507
                         mov.s              ecx, esi                                      // 0x0079e01c    8bce
                         call               _jmp_addr_0x0079dd20                          // 0x0079e01e    e8fdfcffff
_jmp_addr_0x0079e023:    {disp32} mov       esi, dword ptr [esi + 0x000000e8]             // 0x0079e023    8bb6e8000000
                         test               esi, esi                                      // 0x0079e029    85f6
                         {disp8} jne        _jmp_addr_0x0079e010                          // 0x0079e02b    75e3
_jmp_addr_0x0079e02d:    pop                esi                                           // 0x0079e02d    5e
                         ret                                                              // 0x0079e02e    c3
                         nop                                                              // 0x0079e02f    90
_jmp_addr_0x0079e030:    sub                esp, 0x24                                     // 0x0079e030    83ec24
                         push               ebx                                           // 0x0079e033    53
                         push               ebp                                           // 0x0079e034    55
                         push               esi                                           // 0x0079e035    56
                         push               edi                                           // 0x0079e036    57
                         mov.s              edi, ecx                                      // 0x0079e037    8bf9
                         xor.s              ebp, ebp                                      // 0x0079e039    33ed
                         call               _jmp_addr_0x00784f30                          // 0x0079e03b    e8f06efeff
                         test               eax, eax                                      // 0x0079e040    85c0
                         {disp32} jbe       _jmp_addr_0x0079e134                          // 0x0079e042    0f86ec000000
                         mov                bl, -0x01                                     // 0x0079e048    b3ff
_jmp_addr_0x0079e04a:    push               ebp                                           // 0x0079e04a    55
                         call               _jmp_addr_0x00784f40                          // 0x0079e04b    e8f06efeff
                         mov.s              esi, eax                                      // 0x0079e050    8bf0
                         add                esp, 0x04                                     // 0x0079e052    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0079e055    8d44241c
                         push               eax                                           // 0x0079e059    50
                         mov.s              ecx, esi                                      // 0x0079e05a    8bce
                         call               _jmp_addr_0x007813b0                          // 0x0079e05c    e84f33feff
                         mov.s              ecx, esi                                      // 0x0079e061    8bce
                         call               _jmp_addr_0x007813f0                          // 0x0079e063    e88833feff
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x0079e068    dc1d80b68a00
                         fnstsw             ax                                            // 0x0079e06e    dfe0
                         test               ah, 0x01                                      // 0x0079e070    f6c401
                         {disp32} je        _jmp_addr_0x0079e126                          // 0x0079e073    0f84ad000000
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x0079e079    8a442438
                         test               al, al                                        // 0x0079e07d    84c0
                         {disp8} je         _jmp_addr_0x0079e0d1                          // 0x0079e07f    7450
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0079e081    8b4c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0079e085    d9442420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0079e089    8b542424
                         {disp32} fadd      dword ptr [__real@3dcccccd]                   // 0x0079e08d    d8052cb28a00
                         push               0x3f266666                                    // 0x0079e093    686666263f
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x0079e098    894c242c
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0079e09c    8d442414
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0079e0a0    d95c2430
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0079e0a4    89542434
                         {disp32} mov       edx, dword ptr [edi + 0x000000c0]             // 0x0079e0a8    8b97c0000000
                         push               eax                                           // 0x0079e0ae    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0079e0af    8d4c2430
                         {disp8} mov        byte ptr [esp + 0x18], 0x61                   // 0x0079e0b3    c644241861
                         {disp8} mov        byte ptr [esp + 0x19], 0x6e                   // 0x0079e0b8    c64424196e
                         {disp8} mov        byte ptr [esp + 0x1a], 0x7c                   // 0x0079e0bd    c644241a7c
                         {disp8} mov        byte ptr [esp + 0x1b], bl                     // 0x0079e0c2    885c241b
                         push               ecx                                           // 0x0079e0c6    51
                         {disp8} mov        ecx, dword ptr [edx + 0x24]                   // 0x0079e0c7    8b4a24
                         call               _jmp_addr_0x0083d860                          // 0x0079e0ca    e891f70900
                         {disp8} jmp        _jmp_addr_0x0079e126                          // 0x0079e0cf    eb55
_jmp_addr_0x0079e0d1:    {disp32} mov       eax, dword ptr [data_bytes + 0x474194]        // 0x0079e0d1    a194a1e300
                         {disp32} mov       esi, dword ptr [edi + 0x00000154]             // 0x0079e0d6    8bb754010000
                         push               0x3d4ccccd                                    // 0x0079e0dc    68cdcc4c3d
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0079e0e1    8944241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0079e0e5    8b4c241c
                         {disp32} mov       eax, dword ptr [edi + 0x00000108]             // 0x0079e0e9    8b8708010000
                         push               ecx                                           // 0x0079e0ef    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0079e0f0    8b4c2424
                         push               eax                                           // 0x0079e0f4    50
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0079e0f5    8b442430
                         sub                esp, 0x0c                                     // 0x0079e0f9    83ec0c
                         mov.s              edx, esp                                      // 0x0079e0fc    8bd4
                         push               0x0                                           // 0x0079e0fe    6a00
                         push               eax                                           // 0x0079e100    50
                         push               ecx                                           // 0x0079e101    51
                         push               edx                                           // 0x0079e102    52
                         mov.s              ecx, esi                                      // 0x0079e103    8bce
                         {disp8} mov        byte ptr [esp + 0x3c], bl                     // 0x0079e105    885c243c
                         {disp8} mov        byte ptr [esp + 0x3d], bl                     // 0x0079e109    885c243d
                         {disp8} mov        byte ptr [esp + 0x3e], bl                     // 0x0079e10d    885c243e
                         {disp8} mov        byte ptr [esp + 0x3f], bl                     // 0x0079e111    885c243f
                         call               _jmp_addr_0x00797590                          // 0x0079e115    e87694ffff
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0079e11a    8d54242c
                         push               edx                                           // 0x0079e11e    52
                         mov.s              ecx, esi                                      // 0x0079e11f    8bce
                         call               _jmp_addr_0x0079da40                          // 0x0079e121    e81af9ffff
_jmp_addr_0x0079e126:    inc                ebp                                           // 0x0079e126    45
                         call               _jmp_addr_0x00784f30                          // 0x0079e127    e8046efeff
                         cmp.s              ebp, eax                                      // 0x0079e12c    3be8
                         {disp32} jb        _jmp_addr_0x0079e04a                          // 0x0079e12e    0f8216ffffff
_jmp_addr_0x0079e134:    pop                edi                                           // 0x0079e134    5f
                         pop                esi                                           // 0x0079e135    5e
                         pop                ebp                                           // 0x0079e136    5d
                         pop                ebx                                           // 0x0079e137    5b
                         add                esp, 0x24                                     // 0x0079e138    83c424
                         ret                0x0004                                        // 0x0079e13b    c20400
                         nop                                                              // 0x0079e13e    90
                         nop                                                              // 0x0079e13f    90
                         push               ebx                                           // 0x0079e140    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0079e141    8b5c2408
                         test               bl, bl                                        // 0x0079e145    84db
                         push               edi                                           // 0x0079e147    57
                         mov.s              edi, ecx                                      // 0x0079e148    8bf9
                         {disp32} jne       _jmp_addr_0x0079e235                          // 0x0079e14a    0f85e5000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0079e150    a14ca2ec00
                         push               esi                                           // 0x0079e155    56
                         xor.s              esi, esi                                      // 0x0079e156    33f6
_jmp_addr_0x0079e158:    test               esi, esi                                      // 0x0079e158    85f6
                         {disp8} je         _jmp_addr_0x0079e174                          // 0x0079e15a    7418
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f0]        // 0x0079e15c    8b0df0a4c200
                         test               ecx, ecx                                      // 0x0079e162    85c9
                         {disp8} je         _jmp_addr_0x0079e197                          // 0x0079e164    7431
                         mov.s              ecx, edi                                      // 0x0079e166    8bcf
                         call               _jmp_addr_0x0079df90                          // 0x0079e168    e823feffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0079e16d    a14ca2ec00
                         {disp8} jmp        _jmp_addr_0x0079e197                          // 0x0079e172    eb23
_jmp_addr_0x0079e174:    cmp                eax, 0x08                                     // 0x0079e174    83f808
                         {disp8} je         _jmp_addr_0x0079e197                          // 0x0079e177    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0079e179    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0079e17e    8b08
                         push               0x8                                           // 0x0079e180    6a08
                         push               0x17                                          // 0x0079e182    6a17
                         push               eax                                           // 0x0079e184    50
                         call               dword ptr [ecx + 0x50]                        // 0x0079e185    ff5150
                         neg                eax                                           // 0x0079e188    f7d8
                         sbb.s              eax, eax                                      // 0x0079e18a    1bc0
                         and                eax, 0xfffffff7                               // 0x0079e18c    83e0f7
                         add                eax, 0x08                                     // 0x0079e18f    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x0079e192    a34ca2ec00
_jmp_addr_0x0079e197:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644ec]        // 0x0079e197    8b0deca4c200
                         test               ecx, ecx                                      // 0x0079e19d    85c9
                         {disp8} je         _jmp_addr_0x0079e1b3                          // 0x0079e19f    7412
                         test               esi, esi                                      // 0x0079e1a1    85f6
                         sete               dl                                            // 0x0079e1a3    0f94c2
                         mov.s              ecx, edi                                      // 0x0079e1a6    8bcf
                         push               edx                                           // 0x0079e1a8    52
                         call               _jmp_addr_0x0079d830                          // 0x0079e1a9    e882f6ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0079e1ae    a14ca2ec00
_jmp_addr_0x0079e1b3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f8]        // 0x0079e1b3    8b0df8a4c200
                         test               ecx, ecx                                      // 0x0079e1b9    85c9
                         {disp8} je         _jmp_addr_0x0079e1cf                          // 0x0079e1bb    7412
                         test               esi, esi                                      // 0x0079e1bd    85f6
                         sete               al                                            // 0x0079e1bf    0f94c0
                         mov.s              ecx, edi                                      // 0x0079e1c2    8bcf
                         push               eax                                           // 0x0079e1c4    50
                         call               _jmp_addr_0x0079dab0                          // 0x0079e1c5    e8e6f8ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0079e1ca    a14ca2ec00
_jmp_addr_0x0079e1cf:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644fc]        // 0x0079e1cf    8b0dfca4c200
                         test               ecx, ecx                                      // 0x0079e1d5    85c9
                         {disp8} je         _jmp_addr_0x0079e1eb                          // 0x0079e1d7    7412
                         test               esi, esi                                      // 0x0079e1d9    85f6
                         sete               cl                                            // 0x0079e1db    0f94c1
                         push               ecx                                           // 0x0079e1de    51
                         mov.s              ecx, edi                                      // 0x0079e1df    8bcf
                         call               _jmp_addr_0x0079e030                          // 0x0079e1e1    e84afeffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0079e1e6    a14ca2ec00
_jmp_addr_0x0079e1eb:    test               esi, esi                                      // 0x0079e1eb    85f6
                         {disp8} jne        _jmp_addr_0x0079e212                          // 0x0079e1ed    7523
                         cmp                eax, 0x04                                     // 0x0079e1ef    83f804
                         {disp8} je         _jmp_addr_0x0079e212                          // 0x0079e1f2    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0079e1f4    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0079e1f9    8b10
                         push               0x4                                           // 0x0079e1fb    6a04
                         push               0x17                                          // 0x0079e1fd    6a17
                         push               eax                                           // 0x0079e1ff    50
                         call               dword ptr [edx + 0x50]                        // 0x0079e200    ff5250
                         neg                eax                                           // 0x0079e203    f7d8
                         sbb.s              eax, eax                                      // 0x0079e205    1bc0
                         and                eax, 0xfffffffb                               // 0x0079e207    83e0fb
                         add                eax, 0x04                                     // 0x0079e20a    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x0079e20d    a34ca2ec00
_jmp_addr_0x0079e212:    inc                esi                                           // 0x0079e212    46
                         cmp                esi, 0x02                                     // 0x0079e213    83fe02
                         {disp32} jl        _jmp_addr_0x0079e158                          // 0x0079e216    0f8c3cffffff
                         {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0079e21c    db053481c300
                         pop                esi                                           // 0x0079e222    5e
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0079e223    d80db0a38a00
                         {disp32} fadd      dword ptr [data_bytes + 0x474194]             // 0x0079e229    d80594a1e300
                         {disp32} fstp      dword ptr [data_bytes + 0x474194]             // 0x0079e22f    d91d94a1e300
_jmp_addr_0x0079e235:    push               ebx                                           // 0x0079e235    53
                         mov.s              ecx, edi                                      // 0x0079e236    8bcf
                         call               ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z     // 0x0079e238    e8f3bfffff
                         pop                edi                                           // 0x0079e23d    5f
                         pop                ebx                                           // 0x0079e23e    5b
                         ret                0x0004                                        // 0x0079e23f    c20400
                         nop                                                              // 0x0079e242    90
                         nop                                                              // 0x0079e243    90
                         nop                                                              // 0x0079e244    90
                         nop                                                              // 0x0079e245    90
                         nop                                                              // 0x0079e246    90
                         nop                                                              // 0x0079e247    90
                         nop                                                              // 0x0079e248    90
                         nop                                                              // 0x0079e249    90
                         nop                                                              // 0x0079e24a    90
                         nop                                                              // 0x0079e24b    90
                         nop                                                              // 0x0079e24c    90
                         nop                                                              // 0x0079e24d    90
                         nop                                                              // 0x0079e24e    90
                         nop                                                              // 0x0079e24f    90
                         call               _jmp_addr_0x00799e60                          // 0x0079e250    e80bbcffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x44001c]        // 0x0079e255    a11c60e000
                         test               eax, eax                                      // 0x0079e25a    85c0
                         {disp8} je         _jmp_addr_0x0079e273                          // 0x0079e25c    7415
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0079e25e    8b0d5c19d000
                         call               _jmp_addr_0x00553a70                          // 0x0079e264    e80758dbff
                         {disp32} mov       dword ptr [data_bytes + 0x44001c], 0x00000000 // 0x0079e269    c7051c60e00000000000
_jmp_addr_0x0079e273:    ret                                                              // 0x0079e273    c3
                         nop                                                              // 0x0079e274    90
                         nop                                                              // 0x0079e275    90
                         nop                                                              // 0x0079e276    90
                         nop                                                              // 0x0079e277    90
                         nop                                                              // 0x0079e278    90
                         nop                                                              // 0x0079e279    90
                         nop                                                              // 0x0079e27a    90
                         nop                                                              // 0x0079e27b    90
                         nop                                                              // 0x0079e27c    90
                         nop                                                              // 0x0079e27d    90
                         nop                                                              // 0x0079e27e    90
                         nop                                                              // 0x0079e27f    90
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e0]          // 0x0079e280    a0e081c300
                         sub                esp, 0x54                                     // 0x0079e285    83ec54
                         test               al, al                                        // 0x0079e288    84c0
                         push               ebx                                           // 0x0079e28a    53
                         push               ebp                                           // 0x0079e28b    55
                         push               esi                                           // 0x0079e28c    56
                         mov                ebx, 0x00000001                               // 0x0079e28d    bb01000000
                         push               edi                                           // 0x0079e292    57
                         mov.s              esi, ecx                                      // 0x0079e293    8bf1
                         {disp32} mov       dword ptr [data_bytes + 0x4741b0], ebx        // 0x0079e295    891db0a1e300
                         {disp8} je         _jmp_addr_0x0079e2ce                          // 0x0079e29b    7431
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x0079e29d    a0e481c300
                         test               al, al                                        // 0x0079e2a2    84c0
                         {disp8} je         _jmp_addr_0x0079e2ce                          // 0x0079e2a4    7428
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x0079e2a6    8b462c
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0079e2a9    8b4e28
                         push               eax                                           // 0x0079e2ac    50
                         push               ecx                                           // 0x0079e2ad    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x0079e2ae    8b8ec0000000
                         push               ebx                                           // 0x0079e2b4    53
                         call               _jmp_addr_0x00795310                          // 0x0079e2b5    e85670ffff
                         mov                edx, dword ptr [esi]                          // 0x0079e2ba    8b16
                         push               ebx                                           // 0x0079e2bc    53
                         mov.s              ecx, esi                                      // 0x0079e2bd    8bce
                         call               dword ptr [edx + 4]                           // 0x0079e2bf    ff5204
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x0079e2c2    8b8ec0000000
                         push               ebx                                           // 0x0079e2c8    53
                         call               _jmp_addr_0x007954a0                          // 0x0079e2c9    e8d271ffff
_jmp_addr_0x0079e2ce:    {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x0079e2ce    8b8ec0000000
                         push               0x000000ff                                    // 0x0079e2d4    68ff000000
                         call               _jmp_addr_0x00795430                          // 0x0079e2d9    e85271ffff
                         {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0079e2de    db053481c300
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0079e2e4    d80db0a38a00
                         {disp32} fadd      dword ptr [data_bytes + 0x47416c]             // 0x0079e2ea    d8056ca1e300
                         {disp32} fst       dword ptr [data_bytes + 0x47416c]             // 0x0079e2f0    d9156ca1e300
                         fsin                                                             // 0x0079e2f6    d9fe
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2f740]             // 0x0079e2f8    dc0d40878d00
                         {disp32} fadd      qword ptr [rdata_bytes + 0x87670]             // 0x0079e2fe    dc0570069300
                         call               _jmp_addr_0x007a1400                          // 0x0079e304    e8f7300000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe8]        // 0x0079e309    8b15e85fe000
                         mov.s              ebp, eax                                      // 0x0079e30f    8be8
                         mov.s              eax, edx                                      // 0x0079e311    8bc2
                         shr                eax, 8                                        // 0x0079e313    c1e808
                         mov.s              ecx, eax                                      // 0x0079e316    8bc8
                         and                ecx, 0x0000ff00                               // 0x0079e318    81e100ff0000
                         lea                edi, dword ptr [ecx + ecx * 0x2]              // 0x0079e31e    8d3c49
                         lea                edi, dword ptr [ecx + edi * 0x4]              // 0x0079e321    8d3cb9
                         and                eax, 0x000000ff                               // 0x0079e324    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x0079e329    8d0c40
                         and                edx, 0x000000ff                               // 0x0079e32c    81e2ff000000
                         lea                eax, dword ptr [eax + ecx * 0x4]              // 0x0079e332    8d0488
                         lea                ecx, dword ptr [edx + edx * 0x2]              // 0x0079e335    8d0c52
                         shl                edi, 4                                        // 0x0079e338    c1e704
                         lea                edx, dword ptr [edx + ecx * 0x4]              // 0x0079e33b    8d148a
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e33e    8b8ef0000000
                         and                edi, 0xffff00ff                               // 0x0079e344    81e7ff00ffff
                         shl                eax, 4                                        // 0x0079e34a    c1e004
                         or.s               edi, eax                                      // 0x0079e34d    0bf8
                         mov                eax, dword ptr [ecx]                          // 0x0079e34f    8b01
                         shl                edx, 4                                        // 0x0079e351    c1e204
                         shr                edx, 8                                        // 0x0079e354    c1ea08
                         and                edi, 0x00ffff00                               // 0x0079e357    81e700ffff00
                         or.s               edi, edx                                      // 0x0079e35d    0bfa
                         mov.s              edx, ebx                                      // 0x0079e35f    8bd3
                         call               dword ptr [eax + 0x48]                        // 0x0079e361    ff5048
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e364    8b8ef0000000
                         push               0x3f800000                                    // 0x0079e36a    680000803f
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x0079e36f    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0079e377    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x0079e37f    c744243400000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e387    8b01
                         push               0x0                                           // 0x0079e389    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x0079e38b    8d542430
                         call               dword ptr [eax + 0x20]                        // 0x0079e38f    ff5020
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe4]        // 0x0079e392    8b15e45fe000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e398    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e39e    8b01
                         push               edx                                           // 0x0079e3a0    52
                         mov.s              edx, ebp                                      // 0x0079e3a1    8bd5
                         shl                edx, 0x18                                     // 0x0079e3a3    c1e218
                         add.s              edx, edi                                      // 0x0079e3a6    03d7
                         call               dword ptr [eax + 0x2c]                        // 0x0079e3a8    ff502c
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e3ab    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e3b1    8b01
                         mov.s              edx, ebx                                      // 0x0079e3b3    8bd3
                         call               dword ptr [eax + 0xa0]                        // 0x0079e3b5    ff90a0000000
                         {disp32} fld       dword ptr [data_bytes + 0x47416c]             // 0x0079e3bb    d9056ca1e300
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e3c1    8b8ef0000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf6008]             // 0x0079e3c7    d80d08f09900
                         mov                edx, dword ptr [ecx]                          // 0x0079e3cd    8b11
                         push               ecx                                           // 0x0079e3cf    51
                         fstp               dword ptr [esp]                               // 0x0079e3d0    d91c24
                         push               ecx                                           // 0x0079e3d3    51
                         {disp32} fld       dword ptr [data_bytes + 0x47416c]             // 0x0079e3d4    d9056ca1e300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fc4]             // 0x0079e3da    d80dc4ef8c00
                         fstp               dword ptr [esp]                               // 0x0079e3e0    d91c24
                         call               dword ptr [edx + 0xe8]                        // 0x0079e3e3    ff92e8000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e3e9    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e3ef    8b01
                         call               dword ptr [eax + 0x108]                       // 0x0079e3f1    ff9008010000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e3f7    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e3fd    8b01
                         mov.s              edx, ebx                                      // 0x0079e3ff    8bd3
                         call               dword ptr [eax + 0x48]                        // 0x0079e401    ff5048
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e404    8b8ef0000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x0079e40a    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3d4ccccd            // 0x0079e412    c744242ccdcc4c3d
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0079e41a    c744243000000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e422    8b01
                         push               0x3f800000                                    // 0x0079e424    680000803f
                         push               0x3f490fdb                                    // 0x0079e429    68db0f493f
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x0079e42e    8d542430
                         call               dword ptr [eax + 0x20]                        // 0x0079e432    ff5020
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe4]        // 0x0079e435    8b15e45fe000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e43b    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e441    8b01
                         push               edx                                           // 0x0079e443    52
                         inc                ebp                                           // 0x0079e444    45
                         shl                ebp, 0x18                                     // 0x0079e445    c1e518
                         mov.s              edx, edi                                      // 0x0079e448    8bd7
                         sub.s              edx, ebp                                      // 0x0079e44a    2bd5
                         call               dword ptr [eax + 0x2c]                        // 0x0079e44c    ff502c
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e44f    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e455    8b01
                         mov.s              edx, ebx                                      // 0x0079e457    8bd3
                         call               dword ptr [eax + 0xa0]                        // 0x0079e459    ff90a0000000
                         {disp32} fld       dword ptr [data_bytes + 0x47416c]             // 0x0079e45f    d9056ca1e300
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e465    8b8ef0000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e674]             // 0x0079e46b    d80d74768c00
                         mov                edx, dword ptr [ecx]                          // 0x0079e471    8b11
                         push               ecx                                           // 0x0079e473    51
                         fstp               dword ptr [esp]                               // 0x0079e474    d91c24
                         push               ecx                                           // 0x0079e477    51
                         {disp32} fld       dword ptr [data_bytes + 0x47416c]             // 0x0079e478    d9056ca1e300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c840]             // 0x0079e47e    d80d40588c00
                         fstp               dword ptr [esp]                               // 0x0079e484    d91c24
                         call               dword ptr [edx + 0xe8]                        // 0x0079e487    ff92e8000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0079e48d    8b8ef0000000
                         mov                eax, dword ptr [ecx]                          // 0x0079e493    8b01
                         call               dword ptr [eax + 0x108]                       // 0x0079e495    ff9008010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x474170]        // 0x0079e49b    a170a1e300
                         test               eax, eax                                      // 0x0079e4a0    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504618], 0x00c387c8 // 0x0079e4a2    c70518a6ec00c887c300
                         {disp8} jne        _jmp_addr_0x0079e4b8                          // 0x0079e4ac    750a
                         {disp32} mov       dword ptr [data_bytes + 0x504618], 0x00c38728 // 0x0079e4ae    c70518a6ec002887c300
_jmp_addr_0x0079e4b8:    {disp32} mov       ecx, dword ptr [esi + 0x00000154]             // 0x0079e4b8    8b8e54010000
                         call               _jmp_addr_0x007977a0                          // 0x0079e4be    e8dd92ffff
                         mov.s              ecx, esi                                      // 0x0079e4c3    8bce
                         call               _jmp_addr_0x00799fe0                          // 0x0079e4c5    e816bbffff
                         {disp32} mov       al, byte ptr [data_bytes + 0x474158]          // 0x0079e4ca    a058a1e300
                         test               bl, al                                        // 0x0079e4cf    84c3
                         {disp32} jne       _jmp_addr_0x0079e598                          // 0x0079e4d1    0f85c1000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x0079e4d7    8b15ac7cd100
                         mov.s              cl, al                                        // 0x0079e4dd    8ac8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079e4df    a1a87cd100
                         or.s               cl, bl                                        // 0x0079e4e4    0acb
                         cmp                edx, 0x00000485                               // 0x0079e4e6    81fa85040000
                         {disp32} mov       byte ptr [data_bytes + 0x474158], cl          // 0x0079e4ec    880d58a1e300
                         mov.s              ecx, eax                                      // 0x0079e4f2    8bc8
                         {disp8} jbe        _jmp_addr_0x0079e4fc                          // 0x0079e4f4    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000363c]             // 0x0079e4f6    8d883c360000
_jmp_addr_0x0079e4fc:    cmp                edx, 0x000004c1                               // 0x0079e4fc    81fac1040000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079e502    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x474174], ecx        // 0x0079e505    890d74a1e300
                         mov.s              ecx, eax                                      // 0x0079e50b    8bc8
                         {disp8} jbe        _jmp_addr_0x0079e515                          // 0x0079e50d    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000390c]             // 0x0079e50f    8d880c390000
_jmp_addr_0x0079e515:    cmp                edx, 0x000004c6                               // 0x0079e515    81fac6040000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079e51b    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x474178], ecx        // 0x0079e51e    890d78a1e300
                         mov.s              ecx, eax                                      // 0x0079e524    8bc8
                         {disp8} jbe        _jmp_addr_0x0079e52e                          // 0x0079e526    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00003948]             // 0x0079e528    8d8848390000
_jmp_addr_0x0079e52e:    cmp                edx, 0x000004c3                               // 0x0079e52e    81fac3040000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079e534    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x47417c], ecx        // 0x0079e537    890d7ca1e300
                         mov.s              ecx, eax                                      // 0x0079e53d    8bc8
                         {disp8} jbe        _jmp_addr_0x0079e547                          // 0x0079e53f    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00003924]             // 0x0079e541    8d8824390000
_jmp_addr_0x0079e547:    cmp                edx, 0x000004c5                               // 0x0079e547    81fac5040000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079e54d    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x474180], ecx        // 0x0079e550    890d80a1e300
                         mov.s              ecx, eax                                      // 0x0079e556    8bc8
                         {disp8} jbe        _jmp_addr_0x0079e560                          // 0x0079e558    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000393c]             // 0x0079e55a    8d883c390000
_jmp_addr_0x0079e560:    cmp                edx, 0x000004c2                               // 0x0079e560    81fac2040000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079e566    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x474184], ecx        // 0x0079e569    890d84a1e300
                         mov.s              ecx, eax                                      // 0x0079e56f    8bc8
                         {disp8} jbe        _jmp_addr_0x0079e579                          // 0x0079e571    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00003918]             // 0x0079e573    8d8818390000
_jmp_addr_0x0079e579:    cmp                edx, 0x00000480                               // 0x0079e579    81fa80040000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079e57f    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x474188], ecx        // 0x0079e582    890d88a1e300
                         {disp8} jbe        _jmp_addr_0x0079e58f                          // 0x0079e588    7605
                         add                eax, 0x00003600                               // 0x0079e58a    0500360000
_jmp_addr_0x0079e58f:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0079e58f    8b5008
                         {disp32} mov       dword ptr [data_bytes + 0x47418c], edx        // 0x0079e592    89158ca1e300
_jmp_addr_0x0079e598:    {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0079e598    8b86c4000000
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]             // 0x0079e59e    8b802c010000
                         cmp                eax, 0x07                                     // 0x0079e5a4    83f807
                         {disp8} jne        _jmp_addr_0x0079e5ae                          // 0x0079e5a7    7505
                         mov                eax, 0x00000006                               // 0x0079e5a9    b806000000
_jmp_addr_0x0079e5ae:    push               0x3f800000                                    // 0x0079e5ae    680000803f
                         push               0x3f800000                                    // 0x0079e5b3    680000803f
                         push               0x00c2a498                                    // 0x0079e5b8    6898a4c200
                         push               0x00e3a174                                    // 0x0079e5bd    6874a1e300
                         push               eax                                           // 0x0079e5c2    50
                         push               0x000003fc                                    // 0x0079e5c3    68fc030000
                         push               0x7                                           // 0x0079e5c8    6a07
                         mov.s              ecx, esi                                      // 0x0079e5ca    8bce
                         call               _jmp_addr_0x00798430                          // 0x0079e5cc    e85f9effff
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0079e5d1    8b86c4000000
                         cmp                dword ptr [eax + 0x00000124], 0x03            // 0x0079e5d7    83b82401000003
                         {disp32} jne       _jmp_addr_0x0079e842                          // 0x0079e5de    0f855e020000
                         cmp                dword ptr [eax + 0x00000130], 0x07            // 0x0079e5e4    83b83001000007
                         {disp32} jne       _jmp_addr_0x0079e842                          // 0x0079e5eb    0f8551020000
                         {disp32} fld       dword ptr [eax + 0x000003cc]                  // 0x0079e5f1    d980cc030000
                         {disp32} fsub      qword ptr [rdata_bytes + 0xf6000]             // 0x0079e5f7    dc2500f09900
                         {disp32} fmul      qword ptr [rdata_bytes + 0x1c838]             // 0x0079e5fd    dc0d38588c00
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x0079e603    d9542410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0079e607    d81d98a38a00
                         fnstsw             ax                                            // 0x0079e60d    dfe0
                         test               ah, 0x01                                      // 0x0079e60f    f6c401
                         {disp32} jne       _jmp_addr_0x0079e842                          // 0x0079e612    0f852a020000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079e618    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]              // 0x0079e61c    d81d78b48a00
                         fnstsw             ax                                            // 0x0079e622    dfe0
                         test               ah, 0x41                                      // 0x0079e624    f6c441
                         {disp8} jne        _jmp_addr_0x0079e643                          // 0x0079e627    751a
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079e629    d9442410
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]              // 0x0079e62d    d82578b48a00
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x0079e633    d80d4cb28a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x0079e639    d80578b48a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0079e63f    d95c2410
_jmp_addr_0x0079e643:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079e643    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2418]              // 0x0079e647    d81d18b48a00
                         fnstsw             ax                                            // 0x0079e64d    dfe0
                         test               ah, 0x41                                      // 0x0079e64f    f6c441
                         {disp8} jne        _jmp_addr_0x0079e65e                          // 0x0079e652    750a
                         {disp8} mov        dword ptr [esp + 0x10], 0x40800000            // 0x0079e654    c744241000008040
                         {disp8} jmp        _jmp_addr_0x0079e673                          // 0x0079e65c    eb15
_jmp_addr_0x0079e65e:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079e65e    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0079e662    d81d98a38a00
                         fnstsw             ax                                            // 0x0079e668    dfe0
                         test               ah, 0x41                                      // 0x0079e66a    f6c441
                         {disp32} jne       _jmp_addr_0x0079e842                          // 0x0079e66d    0f85cf010000
_jmp_addr_0x0079e673:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079e673    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba00]             // 0x0079e677    d80d004a8c00
                         call               _jmp_addr_0x007a1400                          // 0x0079e67d    e87e2d0000
                         mov.s              ebp, eax                                      // 0x0079e682    8be8
                         cmp                ebp, 0x000000ff                               // 0x0079e684    81fdff000000
                         {disp8} jbe        _jmp_addr_0x0079e691                          // 0x0079e68a    7605
                         mov                ebp, 0x000000ff                               // 0x0079e68c    bdff000000
_jmp_addr_0x0079e691:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079e691    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2fc04]             // 0x0079e695    d80d048c8d00
                         call               _jmp_addr_0x007a1400                          // 0x0079e69b    e8602d0000
                         mov.s              edi, eax                                      // 0x0079e6a0    8bf8
                         cmp                edi, 0x000000ff                               // 0x0079e6a2    81ffff000000
                         {disp8} jbe        _jmp_addr_0x0079e6af                          // 0x0079e6a8    7605
                         mov                edi, 0x000000ff                               // 0x0079e6aa    bfff000000
_jmp_addr_0x0079e6af:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079e6af    d9442410
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]              // 0x0079e6b3    d82578b48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23750]             // 0x0079e6b9    d80d50c78c00
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x0079e6bf    d9542418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0079e6c3    d81d98a38a00
                         fnstsw             ax                                            // 0x0079e6c9    dfe0
                         test               ah, 0x01                                      // 0x0079e6cb    f6c401
                         {disp8} je         _jmp_addr_0x0079e6d8                          // 0x0079e6ce    7408
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0079e6d0    c744241800000000
_jmp_addr_0x0079e6d8:    cmp                dword ptr [data_bytes + 0x50424c], 0x08       // 0x0079e6d8    833d4ca2ec0008
                         {disp8} je         _jmp_addr_0x0079e6ff                          // 0x0079e6df    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0079e6e1    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0079e6e6    8b08
                         push               0x8                                           // 0x0079e6e8    6a08
                         push               0x17                                          // 0x0079e6ea    6a17
                         push               eax                                           // 0x0079e6ec    50
                         call               dword ptr [ecx + 0x50]                        // 0x0079e6ed    ff5150
                         neg                eax                                           // 0x0079e6f0    f7d8
                         sbb.s              eax, eax                                      // 0x0079e6f2    1bc0
                         and                eax, 0xfffffff7                               // 0x0079e6f4    83e0f7
                         add                eax, 0x08                                     // 0x0079e6f7    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x0079e6fa    a34ca2ec00
_jmp_addr_0x0079e6ff:    {disp32} mov       edx, dword ptr [esi + 0x000000c4]             // 0x0079e6ff    8b96c4000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x42a00000            // 0x0079e705    c74424280000a042
                         {disp8} mov        dword ptr [esp + 0x2c], 0x40a00000            // 0x0079e70d    c744242c0000a040
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0079e715    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x42700000            // 0x0079e71d    c744241c00007042
                         {disp8} mov        dword ptr [esp + 0x20], 0x40a00000            // 0x0079e725    c74424200000a040
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0079e72d    c744242400000000
                         {disp32} fild      dword ptr [edx + 0x000004d8]                  // 0x0079e735    db82d8040000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0079e73b    c744241400000000
                         mov.s              eax, ebp                                      // 0x0079e743    8bc5
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc9c]             // 0x0079e745    d80d9c6c8c00
                         shl                eax, 8                                        // 0x0079e74b    c1e008
                         add.s              eax, ebp                                      // 0x0079e74e    03c5
                         shl                eax, 8                                        // 0x0079e750    c1e008
                         fld                st(0)                                         // 0x0079e753    d9c0
                         add.s              eax, ebp                                      // 0x0079e755    03c5
                         fcos                                                             // 0x0079e757    d9ff
                         shl                edi, 0x18                                     // 0x0079e759    c1e718
                         add.s              edi, eax                                      // 0x0079e75c    03f8
                         push               edi                                           // 0x0079e75e    57
                         push               ecx                                           // 0x0079e75f    51
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0079e760    8b4c2420
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0079e764    8d542424
                         {disp8} mov        dword ptr [esp + 0x34], 0x40a00000            // 0x0079e768    c74424340000a040
                         {disp8} mov        dword ptr [esp + 0x28], 0x40a00000            // 0x0079e770    c74424280000a040
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x0079e778    d95c245c
                         fsin                                                             // 0x0079e77c    d9fe
                         fld                st(0)                                         // 0x0079e77e    d9c0
                         fchs                                                             // 0x0079e780    d9e0
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x0079e782    d95c2454
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0079e786    d90598a38a00
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x0079e78c    d944245c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2760c]             // 0x0079e790    d80d0c068d00
                         fadd               st, st(1)                                     // 0x0079e796    d8c1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0079e798    d95c2430
                         fld                st(1)                                         // 0x0079e79c    d9c1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2760c]             // 0x0079e79e    d80d0c068d00
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0079e7a4    d844241c
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0079e7a8    d95c2438
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x0079e7ac    d944245c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a8]             // 0x0079e7b0    d80da8368c00
                         fadd               st, st(1)                                     // 0x0079e7b6    d8c1
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0079e7b8    d95c2424
                         fstp               st(0)                                         // 0x0079e7bc    ddd8
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a8]             // 0x0079e7be    d80da8368c00
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0079e7c4    d844241c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0079e7c8    d95c242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0079e7cc    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x0079e7d0    d80d402c8c00
                         fstp               dword ptr [esp]                               // 0x0079e7d6    d91c24
                         push               ecx                                           // 0x0079e7d9    51
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0079e7da    d944241c
                         push               ecx                                           // 0x0079e7de    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0079e7df    d80d14b48a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x0079e7e5    d80558768c00
                         fstp               dword ptr [esp]                               // 0x0079e7eb    d91c24
                         push               0x41a00000                                    // 0x0079e7ee    680000a041
                         sub                esp, 0x0c                                     // 0x0079e7f3    83ec0c
                         mov.s              ecx, esp                                      // 0x0079e7f6    8bcc
                         push               edx                                           // 0x0079e7f8    52
                         call               @__ct__7LHPointFRC7LHPoint@12                 // 0x0079e7f9    e8c2e7caff
                         sub                esp, 0x0c                                     // 0x0079e7fe    83ec0c
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0079e801    8d442454
                         mov.s              ecx, esp                                      // 0x0079e805    8bcc
                         push               eax                                           // 0x0079e807    50
                         call               @__ct__7LHPointFRC7LHPoint@12                 // 0x0079e808    e8b3e7caff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x0079e80d    8b8ec0000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x24]                   // 0x0079e813    8b4924
                         call               _jmp_addr_0x0083dfe0                          // 0x0079e816    e8c5f70900
                         cmp                dword ptr [data_bytes + 0x50424c], 0x04       // 0x0079e81b    833d4ca2ec0004
                         {disp8} je         _jmp_addr_0x0079e842                          // 0x0079e822    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0079e824    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0079e829    8b10
                         push               0x4                                           // 0x0079e82b    6a04
                         push               0x17                                          // 0x0079e82d    6a17
                         push               eax                                           // 0x0079e82f    50
                         call               dword ptr [edx + 0x50]                        // 0x0079e830    ff5250
                         neg                eax                                           // 0x0079e833    f7d8
                         sbb.s              eax, eax                                      // 0x0079e835    1bc0
                         and                eax, 0xfffffffb                               // 0x0079e837    83e0fb
                         add                eax, 0x04                                     // 0x0079e83a    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x0079e83d    a34ca2ec00
_jmp_addr_0x0079e842:    {disp32} mov       eax, dword ptr [_game]                        // 0x0079e842    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x0079e847    8b88b4590000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4741ac]        // 0x0079e84d    a1aca1e300
                         test               eax, eax                                      // 0x0079e852    85c0
                         mov                edi, dword ptr [ecx]                          // 0x0079e854    8b39
                         {disp8} jne        _jmp_addr_0x0079e879                          // 0x0079e856    7521
                         {disp32} mov       edx, dword ptr [edi + 0x000000c4]             // 0x0079e858    8b97c4000000
                         {disp32} fld       dword ptr [edx + 0x00000450]                  // 0x0079e85e    d98250040000
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0079e864    dc1d60b28a00
                         fnstsw             ax                                            // 0x0079e86a    dfe0
                         test               ah, 0x41                                      // 0x0079e86c    f6c441
                         {disp8} jne        _jmp_addr_0x0079e8af                          // 0x0079e86f    753e
                         {disp32} mov       dword ptr [data_bytes + 0x4741ac], ebx        // 0x0079e871    891daca1e300
                         {disp8} jmp        _jmp_addr_0x0079e8af                          // 0x0079e877    eb36
_jmp_addr_0x0079e879:    push               ebx                                           // 0x0079e879    53
                         call               _jmp_addr_0x0079f250                          // 0x0079e87a    e8d1090000
                         {disp32} mov       eax, dword ptr [edi + 0x000000c4]             // 0x0079e87f    8b87c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0079e885    d98050040000
                         add                esp, 0x04                                     // 0x0079e88b    83c404
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0079e88e    dc1d60b28a00
                         fnstsw             ax                                            // 0x0079e894    dfe0
                         test               ah, 0x41                                      // 0x0079e896    f6c441
                         {disp8} je         _jmp_addr_0x0079e8af                          // 0x0079e899    7414
                         push               0x0                                           // 0x0079e89b    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x4741ac], 0x00000000 // 0x0079e89d    c705aca1e30000000000
                         call               _jmp_addr_0x0079f250                          // 0x0079e8a7    e8a4090000
                         add                esp, 0x04                                     // 0x0079e8ac    83c404
_jmp_addr_0x0079e8af:    push               0x0                                           // 0x0079e8af    6a00
                         push               0x0                                           // 0x0079e8b1    6a00
                         push               0x0                                           // 0x0079e8b3    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0079e8b5    8d4c2434
                         push               ecx                                           // 0x0079e8b9    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000154]             // 0x0079e8ba    8b8e54010000
                         call               _jmp_addr_0x00797590                          // 0x0079e8c0    e8cb8cffff
                         mov                edx, dword ptr [eax]                          // 0x0079e8c5    8b10
                         {disp32} mov       dword ptr [data_bytes + 0x4e3f20], edx        // 0x0079e8c7    8915209fea00
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0079e8cd    8b4804
                         {disp32} mov       dword ptr [data_bytes + 0x4e3f24], ecx        // 0x0079e8d0    890d249fea00
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0079e8d6    8b5008
                         {disp32} mov       dword ptr [data_bytes + 0x4e3f28], edx        // 0x0079e8d9    8915289fea00
                         {disp32} mov       eax, dword ptr [esi + 0x00000154]             // 0x0079e8df    8b8654010000
                         fld                dword ptr [eax]                               // 0x0079e8e5    d900
                         pop                edi                                           // 0x0079e8e7    5f
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5ffc]             // 0x0079e8e8    d80dfcef9900
                         pop                esi                                           // 0x0079e8ee    5e
                         pop                ebp                                           // 0x0079e8ef    5d
                         pop                ebx                                           // 0x0079e8f0    5b
                         {disp32} fstp      dword ptr [data_bytes + 0x2723dc]             // 0x0079e8f1    d91ddc83c300
                         add                esp, 0x54                                     // 0x0079e8f7    83c454
                         ret                                                              // 0x0079e8fa    c3
                         nop                                                              // 0x0079e8fb    90
                         nop                                                              // 0x0079e8fc    90
                         nop                                                              // 0x0079e8fd    90
                         nop                                                              // 0x0079e8fe    90
                         nop                                                              // 0x0079e8ff    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0079e900    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0079e904    8b542408
                         push               eax                                           // 0x0079e908    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0079e909    8b442408
                         push               edx                                           // 0x0079e90d    52
                         push               eax                                           // 0x0079e90e    50
                         call               _jmp_addr_0x0079a3a0                          // 0x0079e90f    e88cbaffff
                         ret                0x000c                                        // 0x0079e914    c20c00
                         nop                                                              // 0x0079e917    90
                         nop                                                              // 0x0079e918    90
                         nop                                                              // 0x0079e919    90
                         nop                                                              // 0x0079e91a    90
                         nop                                                              // 0x0079e91b    90
                         nop                                                              // 0x0079e91c    90
                         nop                                                              // 0x0079e91d    90
                         nop                                                              // 0x0079e91e    90
                         nop                                                              // 0x0079e91f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0079e920    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0079e924    8b542404
                         push               eax                                           // 0x0079e928    50
                         push               edx                                           // 0x0079e929    52
                         call               _jmp_addr_0x0079a5a0                          // 0x0079e92a    e871bcffff
                         ret                0x0008                                        // 0x0079e92f    c20800
                         nop                                                              // 0x0079e932    90
                         nop                                                              // 0x0079e933    90
                         nop                                                              // 0x0079e934    90
                         nop                                                              // 0x0079e935    90
                         nop                                                              // 0x0079e936    90
                         nop                                                              // 0x0079e937    90
                         nop                                                              // 0x0079e938    90
                         nop                                                              // 0x0079e939    90
                         nop                                                              // 0x0079e93a    90
                         nop                                                              // 0x0079e93b    90
                         nop                                                              // 0x0079e93c    90
                         nop                                                              // 0x0079e93d    90
                         nop                                                              // 0x0079e93e    90
                         nop                                                              // 0x0079e93f    90
                         sub                esp, 0x00000168                               // 0x0079e940    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079e946    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079e94a    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079e950    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079e956    8b81ac030000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079e95c    8d542400
                         push               edx                                           // 0x0079e960    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0079e961    89442408
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0079e965    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003f            // 0x0079e96d    c74424283f000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079e975    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079e97d    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000064            // 0x0079e985    c744244c64000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079e98d    e89eb4c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079e992    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644ec], 0x00000000 // 0x0079e996    c705eca4c20000000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079e9a0    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079e9a6    b801000000
                         add                esp, 0x00000168                               // 0x0079e9ab    81c468010000
                         ret                                                              // 0x0079e9b1    c3
                         nop                                                              // 0x0079e9b2    90
                         nop                                                              // 0x0079e9b3    90
                         nop                                                              // 0x0079e9b4    90
                         nop                                                              // 0x0079e9b5    90
                         nop                                                              // 0x0079e9b6    90
                         nop                                                              // 0x0079e9b7    90
                         nop                                                              // 0x0079e9b8    90
                         nop                                                              // 0x0079e9b9    90
                         nop                                                              // 0x0079e9ba    90
                         nop                                                              // 0x0079e9bb    90
                         nop                                                              // 0x0079e9bc    90
                         nop                                                              // 0x0079e9bd    90
                         nop                                                              // 0x0079e9be    90
                         nop                                                              // 0x0079e9bf    90
                         sub                esp, 0x00000168                               // 0x0079e9c0    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079e9c6    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079e9ca    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079e9d0    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079e9d6    8b81ac030000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0079e9dc    89442404
                         xor.s              eax, eax                                      // 0x0079e9e0    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079e9e2    8d542400
                         push               edx                                           // 0x0079e9e6    52
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0079e9e7    89442424
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003e            // 0x0079e9eb    c74424283e000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0079e9f3    8944240c
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079e9f7    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000064            // 0x0079e9ff    c744244c64000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079ea07    e824b4c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ea0c    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644ec], 0x00000001 // 0x0079ea10    c705eca4c20001000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079ea1a    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079ea20    b801000000
                         add                esp, 0x00000168                               // 0x0079ea25    81c468010000
                         ret                                                              // 0x0079ea2b    c3
                         nop                                                              // 0x0079ea2c    90
                         nop                                                              // 0x0079ea2d    90
                         nop                                                              // 0x0079ea2e    90
                         nop                                                              // 0x0079ea2f    90
                         sub                esp, 0x00000168                               // 0x0079ea30    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ea36    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079ea3a    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079ea40    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079ea46    8b81ac030000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079ea4c    8d542400
                         push               edx                                           // 0x0079ea50    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0079ea51    89442408
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0079ea55    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003f            // 0x0079ea5d    c74424283f000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079ea65    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079ea6d    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x0000006e            // 0x0079ea75    c744244c6e000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079ea7d    e8aeb3c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ea82    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644f8], 0x00000000 // 0x0079ea86    c705f8a4c20000000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079ea90    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079ea96    b801000000
                         add                esp, 0x00000168                               // 0x0079ea9b    81c468010000
                         ret                                                              // 0x0079eaa1    c3
                         nop                                                              // 0x0079eaa2    90
                         nop                                                              // 0x0079eaa3    90
                         nop                                                              // 0x0079eaa4    90
                         nop                                                              // 0x0079eaa5    90
                         nop                                                              // 0x0079eaa6    90
                         nop                                                              // 0x0079eaa7    90
                         nop                                                              // 0x0079eaa8    90
                         nop                                                              // 0x0079eaa9    90
                         nop                                                              // 0x0079eaaa    90
                         nop                                                              // 0x0079eaab    90
                         nop                                                              // 0x0079eaac    90
                         nop                                                              // 0x0079eaad    90
                         nop                                                              // 0x0079eaae    90
                         nop                                                              // 0x0079eaaf    90
                         sub                esp, 0x00000168                               // 0x0079eab0    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079eab6    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079eaba    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079eac0    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079eac6    8b81ac030000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079eacc    8d542400
                         push               edx                                           // 0x0079ead0    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0079ead1    89442408
                         {disp8} mov        dword ptr [esp + 0x24], 0x0000006e            // 0x0079ead5    c74424246e000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003e            // 0x0079eadd    c74424283e000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079eae5    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079eaed    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000064            // 0x0079eaf5    c744244c64000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079eafd    e82eb3c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079eb02    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644f8], 0x00000001 // 0x0079eb06    c705f8a4c20001000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079eb10    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079eb16    b801000000
                         add                esp, 0x00000168                               // 0x0079eb1b    81c468010000
                         ret                                                              // 0x0079eb21    c3
                         nop                                                              // 0x0079eb22    90
                         nop                                                              // 0x0079eb23    90
                         nop                                                              // 0x0079eb24    90
                         nop                                                              // 0x0079eb25    90
                         nop                                                              // 0x0079eb26    90
                         nop                                                              // 0x0079eb27    90
                         nop                                                              // 0x0079eb28    90
                         nop                                                              // 0x0079eb29    90
                         nop                                                              // 0x0079eb2a    90
                         nop                                                              // 0x0079eb2b    90
                         nop                                                              // 0x0079eb2c    90
                         nop                                                              // 0x0079eb2d    90
                         nop                                                              // 0x0079eb2e    90
                         nop                                                              // 0x0079eb2f    90
                         sub                esp, 0x00000168                               // 0x0079eb30    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079eb36    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079eb3a    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079eb40    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079eb46    8b81ac030000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079eb4c    8d542400
                         push               edx                                           // 0x0079eb50    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0079eb51    89442408
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0079eb55    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003f            // 0x0079eb5d    c74424283f000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079eb65    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079eb6d    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x0000005f            // 0x0079eb75    c744244c5f000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079eb7d    e8aeb2c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079eb82    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644f0], 0x00000000 // 0x0079eb86    c705f0a4c20000000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079eb90    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079eb96    b801000000
                         add                esp, 0x00000168                               // 0x0079eb9b    81c468010000
                         ret                                                              // 0x0079eba1    c3
                         nop                                                              // 0x0079eba2    90
                         nop                                                              // 0x0079eba3    90
                         nop                                                              // 0x0079eba4    90
                         nop                                                              // 0x0079eba5    90
                         nop                                                              // 0x0079eba6    90
                         nop                                                              // 0x0079eba7    90
                         nop                                                              // 0x0079eba8    90
                         nop                                                              // 0x0079eba9    90
                         nop                                                              // 0x0079ebaa    90
                         nop                                                              // 0x0079ebab    90
                         nop                                                              // 0x0079ebac    90
                         nop                                                              // 0x0079ebad    90
                         nop                                                              // 0x0079ebae    90
                         nop                                                              // 0x0079ebaf    90
                         sub                esp, 0x00000168                               // 0x0079ebb0    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ebb6    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079ebba    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079ebc0    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079ebc6    8b81ac030000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0079ebcc    89442404
                         xor.s              eax, eax                                      // 0x0079ebd0    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079ebd2    8d542400
                         push               edx                                           // 0x0079ebd6    52
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0079ebd7    89442424
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003e            // 0x0079ebdb    c74424283e000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0079ebe3    8944240c
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079ebe7    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x0000005f            // 0x0079ebef    c744244c5f000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079ebf7    e834b2c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ebfc    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644f0], 0x00000001 // 0x0079ec00    c705f0a4c20001000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079ec0a    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079ec10    b801000000
                         add                esp, 0x00000168                               // 0x0079ec15    81c468010000
                         ret                                                              // 0x0079ec1b    c3
                         nop                                                              // 0x0079ec1c    90
                         nop                                                              // 0x0079ec1d    90
                         nop                                                              // 0x0079ec1e    90
                         nop                                                              // 0x0079ec1f    90
                         sub                esp, 0x00000168                               // 0x0079ec20    81ec68010000
                         push               esi                                           // 0x0079ec26    56
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0079ec27    8d4c2404
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079ec2b    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079ec31    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079ec37    8b81ac030000
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0079ec3d    8d542404
                         xor.s              esi, esi                                      // 0x0079ec41    33f6
                         push               edx                                           // 0x0079ec43    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0079ec44    8944240c
                         {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x0079ec48    89742428
                         {disp8} mov        dword ptr [esp + 0x2c], 0x0000003f            // 0x0079ec4c    c744242c3f000000
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x0079ec54    89742410
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000003            // 0x0079ec58    c744245803000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000069            // 0x0079ec60    c744245069000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079ec68    e8c3b1c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0079ec6d    8d4c2404
                         {disp32} mov       dword ptr [data_bytes + 0x2644f4], esi        // 0x0079ec71    8935f4a4c200
                         {disp32} mov       dword ptr [data_bytes + 0x264478], esi        // 0x0079ec77    893578a4c200
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079ec7d    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079ec83    b801000000
                         pop                esi                                           // 0x0079ec88    5e
                         add                esp, 0x00000168                               // 0x0079ec89    81c468010000
                         ret                                                              // 0x0079ec8f    c3
                         sub                esp, 0x00000168                               // 0x0079ec90    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ec96    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079ec9a    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079eca0    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079eca6    8b81ac030000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0079ecac    89442404
                         xor.s              eax, eax                                      // 0x0079ecb0    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079ecb2    8d542400
                         push               edx                                           // 0x0079ecb6    52
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0079ecb7    89442424
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003e            // 0x0079ecbb    c74424283e000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0079ecc3    8944240c
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079ecc7    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000069            // 0x0079eccf    c744244c69000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079ecd7    e854b1c8ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0079ecdc    a15c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x2644f4], 0x00000001 // 0x0079ece1    c705f4a4c20001000000
                         {disp32} mov       dword ptr [data_bytes + 0x264478], 0x00000001 // 0x0079eceb    c70578a4c20001000000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x0079ecf5    8b88b4590000
                         mov                ecx, dword ptr [ecx]                          // 0x0079ecfb    8b09
                         call               _jmp_addr_0x0079dcd0                          // 0x0079ecfd    e8ceefffff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ed02    8d4c2400
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079ed06    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079ed0c    b801000000
                         add                esp, 0x00000168                               // 0x0079ed11    81c468010000
                         ret                                                              // 0x0079ed17    c3
                         nop                                                              // 0x0079ed18    90
                         nop                                                              // 0x0079ed19    90
                         nop                                                              // 0x0079ed1a    90
                         nop                                                              // 0x0079ed1b    90
                         nop                                                              // 0x0079ed1c    90
                         nop                                                              // 0x0079ed1d    90
                         nop                                                              // 0x0079ed1e    90
                         nop                                                              // 0x0079ed1f    90
                         sub                esp, 0x00000168                               // 0x0079ed20    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ed26    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079ed2a    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079ed30    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079ed36    8b81ac030000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079ed3c    8d542400
                         push               edx                                           // 0x0079ed40    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0079ed41    89442408
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0079ed45    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003f            // 0x0079ed4d    c74424283f000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0079ed55    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079ed5d    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x0000006c            // 0x0079ed65    c744244c6c000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079ed6d    e8beb0c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079ed72    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644fc], 0x00000000 // 0x0079ed76    c705fca4c20000000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079ed80    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079ed86    b801000000
                         add                esp, 0x00000168                               // 0x0079ed8b    81c468010000
                         ret                                                              // 0x0079ed91    c3
                         nop                                                              // 0x0079ed92    90
                         nop                                                              // 0x0079ed93    90
                         nop                                                              // 0x0079ed94    90
                         nop                                                              // 0x0079ed95    90
                         nop                                                              // 0x0079ed96    90
                         nop                                                              // 0x0079ed97    90
                         nop                                                              // 0x0079ed98    90
                         nop                                                              // 0x0079ed99    90
                         nop                                                              // 0x0079ed9a    90
                         nop                                                              // 0x0079ed9b    90
                         nop                                                              // 0x0079ed9c    90
                         nop                                                              // 0x0079ed9d    90
                         nop                                                              // 0x0079ed9e    90
                         nop                                                              // 0x0079ed9f    90
                         sub                esp, 0x00000168                               // 0x0079eda0    81ec68010000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079eda6    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0079edaa    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079edb0    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0079edb6    8b81ac030000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0079edbc    89442404
                         xor.s              eax, eax                                      // 0x0079edc0    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0079edc2    8d542400
                         push               edx                                           // 0x0079edc6    52
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0079edc7    89442424
                         {disp8} mov        dword ptr [esp + 0x28], 0x0000003e            // 0x0079edcb    c74424283e000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0079edd3    8944240c
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000003            // 0x0079edd7    c744245403000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x0000006c            // 0x0079eddf    c744244c6c000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0079ede7    e844b0c8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0079edec    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2644fc], 0x00000001 // 0x0079edf0    c705fca4c20001000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0079edfa    ff1558978a00
                         mov                eax, 0x00000001                               // 0x0079ee00    b801000000
                         add                esp, 0x00000168                               // 0x0079ee05    81c468010000
                         ret                                                              // 0x0079ee0b    c3
                         nop                                                              // 0x0079ee0c    90
                         nop                                                              // 0x0079ee0d    90
                         nop                                                              // 0x0079ee0e    90
                         nop                                                              // 0x0079ee0f    90
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2644ec]        // 0x0079ee10    8b0deca4c200
                         xor.s              edx, edx                                      // 0x0079ee16    33d2
                         mov                eax, 0x00000001                               // 0x0079ee18    b801000000
                         cmp.s              ecx, eax                                      // 0x0079ee1d    3bc8
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0079ee1f    8b4c2404
                         sete               dl                                            // 0x0079ee23    0f94c2
                         mov                dword ptr [ecx], edx                          // 0x0079ee26    8911
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0079ee28    8b5108
                         test               edx, edx                                      // 0x0079ee2b    85d2
                         {disp8} je         _jmp_addr_0x0079ee48                          // 0x0079ee2d    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079ee2f    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e91 // 0x0079ee34    c705c4a1c200910e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079ee3e    c7054061e30000000000
_jmp_addr_0x0079ee48:    ret                                                              // 0x0079ee48    c3
                         nop                                                              // 0x0079ee49    90
                         nop                                                              // 0x0079ee4a    90
                         nop                                                              // 0x0079ee4b    90
                         nop                                                              // 0x0079ee4c    90
                         nop                                                              // 0x0079ee4d    90
                         nop                                                              // 0x0079ee4e    90
                         nop                                                              // 0x0079ee4f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2644ec]        // 0x0079ee50    a1eca4c200
                         xor.s              ecx, ecx                                      // 0x0079ee55    33c9
                         test               eax, eax                                      // 0x0079ee57    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0079ee59    8b442404
                         sete               cl                                            // 0x0079ee5d    0f94c1
                         mov                dword ptr [eax], ecx                          // 0x0079ee60    8908
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0079ee62    8b4808
                         test               ecx, ecx                                      // 0x0079ee65    85c9
                         mov                eax, 0x00000001                               // 0x0079ee67    b801000000
                         {disp8} je         _jmp_addr_0x0079ee87                          // 0x0079ee6c    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079ee6e    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e91 // 0x0079ee73    c705c4a1c200910e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079ee7d    c7054061e30000000000
_jmp_addr_0x0079ee87:    ret                                                              // 0x0079ee87    c3
                         nop                                                              // 0x0079ee88    90
                         nop                                                              // 0x0079ee89    90
                         nop                                                              // 0x0079ee8a    90
                         nop                                                              // 0x0079ee8b    90
                         nop                                                              // 0x0079ee8c    90
                         nop                                                              // 0x0079ee8d    90
                         nop                                                              // 0x0079ee8e    90
                         nop                                                              // 0x0079ee8f    90
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f8]        // 0x0079ee90    8b0df8a4c200
                         xor.s              edx, edx                                      // 0x0079ee96    33d2
                         mov                eax, 0x00000001                               // 0x0079ee98    b801000000
                         cmp.s              ecx, eax                                      // 0x0079ee9d    3bc8
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0079ee9f    8b4c2404
                         sete               dl                                            // 0x0079eea3    0f94c2
                         mov                dword ptr [ecx], edx                          // 0x0079eea6    8911
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0079eea8    8b5108
                         test               edx, edx                                      // 0x0079eeab    85d2
                         {disp8} je         _jmp_addr_0x0079eec8                          // 0x0079eead    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079eeaf    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e8f // 0x0079eeb4    c705c4a1c2008f0e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079eebe    c7054061e30000000000
_jmp_addr_0x0079eec8:    ret                                                              // 0x0079eec8    c3
                         nop                                                              // 0x0079eec9    90
                         nop                                                              // 0x0079eeca    90
                         nop                                                              // 0x0079eecb    90
                         nop                                                              // 0x0079eecc    90
                         nop                                                              // 0x0079eecd    90
                         nop                                                              // 0x0079eece    90
                         nop                                                              // 0x0079eecf    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2644f8]        // 0x0079eed0    a1f8a4c200
                         xor.s              ecx, ecx                                      // 0x0079eed5    33c9
                         test               eax, eax                                      // 0x0079eed7    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0079eed9    8b442404
                         sete               cl                                            // 0x0079eedd    0f94c1
                         mov                dword ptr [eax], ecx                          // 0x0079eee0    8908
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0079eee2    8b4808
                         test               ecx, ecx                                      // 0x0079eee5    85c9
                         mov                eax, 0x00000001                               // 0x0079eee7    b801000000
                         {disp8} je         _jmp_addr_0x0079ef07                          // 0x0079eeec    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079eeee    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e8f // 0x0079eef3    c705c4a1c2008f0e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079eefd    c7054061e30000000000
_jmp_addr_0x0079ef07:    ret                                                              // 0x0079ef07    c3
                         nop                                                              // 0x0079ef08    90
                         nop                                                              // 0x0079ef09    90
                         nop                                                              // 0x0079ef0a    90
                         nop                                                              // 0x0079ef0b    90
                         nop                                                              // 0x0079ef0c    90
                         nop                                                              // 0x0079ef0d    90
                         nop                                                              // 0x0079ef0e    90
                         nop                                                              // 0x0079ef0f    90
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f0]        // 0x0079ef10    8b0df0a4c200
                         xor.s              edx, edx                                      // 0x0079ef16    33d2
                         mov                eax, 0x00000001                               // 0x0079ef18    b801000000
                         cmp.s              ecx, eax                                      // 0x0079ef1d    3bc8
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0079ef1f    8b4c2404
                         sete               dl                                            // 0x0079ef23    0f94c2
                         mov                dword ptr [ecx], edx                          // 0x0079ef26    8911
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0079ef28    8b5108
                         test               edx, edx                                      // 0x0079ef2b    85d2
                         {disp8} je         _jmp_addr_0x0079ef48                          // 0x0079ef2d    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079ef2f    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e93 // 0x0079ef34    c705c4a1c200930e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079ef3e    c7054061e30000000000
_jmp_addr_0x0079ef48:    ret                                                              // 0x0079ef48    c3
                         nop                                                              // 0x0079ef49    90
                         nop                                                              // 0x0079ef4a    90
                         nop                                                              // 0x0079ef4b    90
                         nop                                                              // 0x0079ef4c    90
                         nop                                                              // 0x0079ef4d    90
                         nop                                                              // 0x0079ef4e    90
                         nop                                                              // 0x0079ef4f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2644f0]        // 0x0079ef50    a1f0a4c200
                         xor.s              ecx, ecx                                      // 0x0079ef55    33c9
                         test               eax, eax                                      // 0x0079ef57    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0079ef59    8b442404
                         sete               cl                                            // 0x0079ef5d    0f94c1
                         mov                dword ptr [eax], ecx                          // 0x0079ef60    8908
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0079ef62    8b4808
                         test               ecx, ecx                                      // 0x0079ef65    85c9
                         mov                eax, 0x00000001                               // 0x0079ef67    b801000000
                         {disp8} je         _jmp_addr_0x0079ef87                          // 0x0079ef6c    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079ef6e    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e93 // 0x0079ef73    c705c4a1c200930e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079ef7d    c7054061e30000000000
_jmp_addr_0x0079ef87:    ret                                                              // 0x0079ef87    c3
                         nop                                                              // 0x0079ef88    90
                         nop                                                              // 0x0079ef89    90
                         nop                                                              // 0x0079ef8a    90
                         nop                                                              // 0x0079ef8b    90
                         nop                                                              // 0x0079ef8c    90
                         nop                                                              // 0x0079ef8d    90
                         nop                                                              // 0x0079ef8e    90
                         nop                                                              // 0x0079ef8f    90
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f4]        // 0x0079ef90    8b0df4a4c200
                         xor.s              edx, edx                                      // 0x0079ef96    33d2
                         mov                eax, 0x00000001                               // 0x0079ef98    b801000000
                         cmp.s              ecx, eax                                      // 0x0079ef9d    3bc8
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0079ef9f    8b4c2404
                         sete               dl                                            // 0x0079efa3    0f94c2
                         mov                dword ptr [ecx], edx                          // 0x0079efa6    8911
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0079efa8    8b5108
                         test               edx, edx                                      // 0x0079efab    85d2
                         {disp8} je         _jmp_addr_0x0079efc8                          // 0x0079efad    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079efaf    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e92 // 0x0079efb4    c705c4a1c200920e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079efbe    c7054061e30000000000
_jmp_addr_0x0079efc8:    ret                                                              // 0x0079efc8    c3
                         nop                                                              // 0x0079efc9    90
                         nop                                                              // 0x0079efca    90
                         nop                                                              // 0x0079efcb    90
                         nop                                                              // 0x0079efcc    90
                         nop                                                              // 0x0079efcd    90
                         nop                                                              // 0x0079efce    90
                         nop                                                              // 0x0079efcf    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2644f4]        // 0x0079efd0    a1f4a4c200
                         xor.s              ecx, ecx                                      // 0x0079efd5    33c9
                         test               eax, eax                                      // 0x0079efd7    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0079efd9    8b442404
                         sete               cl                                            // 0x0079efdd    0f94c1
                         mov                dword ptr [eax], ecx                          // 0x0079efe0    8908
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0079efe2    8b4808
                         test               ecx, ecx                                      // 0x0079efe5    85c9
                         mov                eax, 0x00000001                               // 0x0079efe7    b801000000
                         {disp8} je         _jmp_addr_0x0079f007                          // 0x0079efec    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079efee    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e92 // 0x0079eff3    c705c4a1c200920e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079effd    c7054061e30000000000
_jmp_addr_0x0079f007:    ret                                                              // 0x0079f007    c3
                         nop                                                              // 0x0079f008    90
                         nop                                                              // 0x0079f009    90
                         nop                                                              // 0x0079f00a    90
                         nop                                                              // 0x0079f00b    90
                         nop                                                              // 0x0079f00c    90
                         nop                                                              // 0x0079f00d    90
                         nop                                                              // 0x0079f00e    90
                         nop                                                              // 0x0079f00f    90
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2644fc]        // 0x0079f010    8b0dfca4c200
                         xor.s              edx, edx                                      // 0x0079f016    33d2
                         mov                eax, 0x00000001                               // 0x0079f018    b801000000
                         cmp.s              ecx, eax                                      // 0x0079f01d    3bc8
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0079f01f    8b4c2404
                         sete               dl                                            // 0x0079f023    0f94c2
                         mov                dword ptr [ecx], edx                          // 0x0079f026    8911
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0079f028    8b5108
                         test               edx, edx                                      // 0x0079f02b    85d2
                         {disp8} je         _jmp_addr_0x0079f048                          // 0x0079f02d    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079f02f    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e90 // 0x0079f034    c705c4a1c200900e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079f03e    c7054061e30000000000
_jmp_addr_0x0079f048:    ret                                                              // 0x0079f048    c3
                         nop                                                              // 0x0079f049    90
                         nop                                                              // 0x0079f04a    90
                         nop                                                              // 0x0079f04b    90
                         nop                                                              // 0x0079f04c    90
                         nop                                                              // 0x0079f04d    90
                         nop                                                              // 0x0079f04e    90
                         nop                                                              // 0x0079f04f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2644fc]        // 0x0079f050    a1fca4c200
                         xor.s              ecx, ecx                                      // 0x0079f055    33c9
                         test               eax, eax                                      // 0x0079f057    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0079f059    8b442404
                         sete               cl                                            // 0x0079f05d    0f94c1
                         mov                dword ptr [eax], ecx                          // 0x0079f060    8908
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0079f062    8b4808
                         test               ecx, ecx                                      // 0x0079f065    85c9
                         mov                eax, 0x00000001                               // 0x0079f067    b801000000
                         {disp8} je         _jmp_addr_0x0079f087                          // 0x0079f06c    7419
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079f06e    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e90 // 0x0079f073    c705c4a1c200900e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0079f07d    c7054061e30000000000
_jmp_addr_0x0079f087:    ret                                                              // 0x0079f087    c3
                         nop                                                              // 0x0079f088    90
                         nop                                                              // 0x0079f089    90
                         nop                                                              // 0x0079f08a    90
                         nop                                                              // 0x0079f08b    90
                         nop                                                              // 0x0079f08c    90
                         nop                                                              // 0x0079f08d    90
                         nop                                                              // 0x0079f08e    90
                         nop                                                              // 0x0079f08f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0079f090    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0079f094    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0079f097    8b155c19d000
                         push               0x0                                           // 0x0079f09d    6a00
                         push               0x0                                           // 0x0079f09f    6a00
                         push               0xc1f00000                                    // 0x0079f0a1    680000f0c1
                         push               ecx                                           // 0x0079f0a6    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0079f0a7    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0079f0ad    e82e59ffff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0079f0b2    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x0079f0b7    8b88b4590000
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x0079f0bd    8b4144
                         test               eax, eax                                      // 0x0079f0c0    85c0
                         {disp8} jne        _jmp_addr_0x0079f0d1                          // 0x0079f0c2    750d
                         push               0x00c2a76c                                    // 0x0079f0c4    686ca7c200
                         call               _jmp_addr_0x00794a80                          // 0x0079f0c9    e8b259ffff
                         add                esp, 0x04                                     // 0x0079f0ce    83c404
_jmp_addr_0x0079f0d1:    mov                eax, 0x00000001                               // 0x0079f0d1    b801000000
                         ret                                                              // 0x0079f0d6    c3
                         nop                                                              // 0x0079f0d7    90
                         nop                                                              // 0x0079f0d8    90
                         nop                                                              // 0x0079f0d9    90
                         nop                                                              // 0x0079f0da    90
                         nop                                                              // 0x0079f0db    90
                         nop                                                              // 0x0079f0dc    90
                         nop                                                              // 0x0079f0dd    90
                         nop                                                              // 0x0079f0de    90
                         nop                                                              // 0x0079f0df    90
                         push               ebx                                           // 0x0079f0e0    53
                         push               ebp                                           // 0x0079f0e1    55
                         xor.s              ebx, ebx                                      // 0x0079f0e2    33db
                         mov                eax, 0x3f800000                               // 0x0079f0e4    b80000803f
                         push               esi                                           // 0x0079f0e9    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0079f0ea    8b742410
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0079f0ee    894618
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0079f0f1    894614
                         mov                dword ptr [esi], 0x00000001                   // 0x0079f0f4    c70601000000
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x0079f0fa    895e10
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x0079f0fd    895e0c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0079f100    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x0079f105    8b88b4590000
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x0079f10b    8b4620
                         cmp.s              eax, ebx                                      // 0x0079f10e    3bc3
                         mov                ebp, dword ptr [ecx]                          // 0x0079f110    8b29
                         {disp8} je         _jmp_addr_0x0079f18f                          // 0x0079f112    747b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4741a0]        // 0x0079f114    8b0da0a1e300
                         {disp32} mov       edx, dword ptr [data_bytes + 0x47419c]        // 0x0079f11a    8b159ca1e300
                         push               edi                                           // 0x0079f120    57
                         mov.s              edi, ecx                                      // 0x0079f121    8bf9
                         sub.s              ecx, eax                                      // 0x0079f123    2bc8
                         push               ecx                                           // 0x0079f125    51
                         push               edx                                           // 0x0079f126    52
                         {disp32} mov       dword ptr [data_bytes + 0x4741a0], ecx        // 0x0079f127    890da0a1e300
                         call               _jmp_addr_0x0079a6a0                          // 0x0079f12d    e86eb5ffff
                         {disp32} mov       dword ptr [data_bytes + 0x4741a0], eax        // 0x0079f132    a3a0a1e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4741ac]        // 0x0079f137    a1aca1e300
                         add                esp, 0x08                                     // 0x0079f13c    83c408
                         cmp.s              eax, ebx                                      // 0x0079f13f    3bc3
                         {disp8} jne        _jmp_addr_0x0079f14c                          // 0x0079f141    7509
                         push               ebx                                           // 0x0079f143    53
                         call               _jmp_addr_0x0079f250                          // 0x0079f144    e807010000
                         add                esp, 0x04                                     // 0x0079f149    83c404
_jmp_addr_0x0079f14c:    cmp                dword ptr [data_bytes + 0x4741a0], edi        // 0x0079f14c    393da0a1e300
                         pop                edi                                           // 0x0079f152    5f
                         {disp8} je         _jmp_addr_0x0079f18f                          // 0x0079f153    743a
                         cmp                dword ptr [data_bytes + 0x474190], ebx        // 0x0079f155    391d90a1e300
                         {disp8} jne        _jmp_addr_0x0079f195                          // 0x0079f15b    7538
                         push               0x1                                           // 0x0079f15d    6a01
                         push               ebx                                           // 0x0079f15f    53
                         push               ebx                                           // 0x0079f160    53
                         push               ebx                                           // 0x0079f161    53
                         push               0x2                                           // 0x0079f162    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0079f164    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0079f16a    33d2
                         mov                ecx, 0x00000006                               // 0x0079f16c    b906000000
                         div                ecx                                           // 0x0079f171    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0079f173    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0079f179    83c236
                         push               edx                                           // 0x0079f17c    52
                         push               ebx                                           // 0x0079f17d    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0079f17e    e8ddabc8ff
                         {disp32} mov       dword ptr [data_bytes + 0x474190], 0x00000001 // 0x0079f183    c70590a1e30001000000
                         {disp8} jmp        _jmp_addr_0x0079f195                          // 0x0079f18d    eb06
_jmp_addr_0x0079f18f:    {disp32} mov       dword ptr [data_bytes + 0x474190], ebx        // 0x0079f18f    891d90a1e300
_jmp_addr_0x0079f195:    {disp32} mov       eax, dword ptr [data_bytes + 0x4741a8]        // 0x0079f195    a1a8a1e300
                         cmp                dword ptr [eax + 0x08], ebx                   // 0x0079f19a    395808
                         {disp8} je         _jmp_addr_0x0079f1a4                          // 0x0079f19d    7405
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x0079f19f    89461c
                         {disp8} jmp        _jmp_addr_0x0079f1a7                          // 0x0079f1a2    eb03
_jmp_addr_0x0079f1a4:    {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x0079f1a4    895e1c
_jmp_addr_0x0079f1a7:    cmp                dword ptr [esi + 0x08], ebx                   // 0x0079f1a7    395e08
                         {disp8} je         _jmp_addr_0x0079f1fb                          // 0x0079f1aa    744f
                         {disp32} mov       edx, dword ptr [ebp + 0x000000c4]             // 0x0079f1ac    8b95c4000000
                         {disp32} fld       dword ptr [edx + 0x00000450]                  // 0x0079f1b2    d98250040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x0079f1b8    dc1d80b68a00
                         fnstsw             ax                                            // 0x0079f1be    dfe0
                         test               ah, 0x40                                      // 0x0079f1c0    f6c440
                         mov                eax, 0x00000001                               // 0x0079f1c3    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079f1c8    a3c0a1c200
                         {disp8} jne        _jmp_addr_0x0079f1e3                          // 0x0079f1cd    7514
                         pop                esi                                           // 0x0079f1cf    5e
                         pop                ebp                                           // 0x0079f1d0    5d
                         {disp32} mov       dword ptr [data_bytes + 0x470140], ebx        // 0x0079f1d1    891d4061e300
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000ee3 // 0x0079f1d7    c705c4a1c200e30e0000
                         pop                ebx                                           // 0x0079f1e1    5b
                         ret                                                              // 0x0079f1e2    c3
_jmp_addr_0x0079f1e3:    pop                esi                                           // 0x0079f1e3    5e
                         pop                ebp                                           // 0x0079f1e4    5d
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000ee2 // 0x0079f1e5    c705c4a1c200e20e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000300 // 0x0079f1ef    c7054061e30000030000
                         pop                ebx                                           // 0x0079f1f9    5b
                         ret                                                              // 0x0079f1fa    c3
_jmp_addr_0x0079f1fb:    {disp32} mov       eax, dword ptr [ebp + 0x000000c4]             // 0x0079f1fb    8b85c4000000
                         cmp                dword ptr [eax + 0x00000124], 0x04            // 0x0079f201    83b82401000004
                         {disp8} jne        _jmp_addr_0x0079f23b                          // 0x0079f208    7531
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0079f20a    d98050040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x0079f210    dc1d80b68a00
                         fnstsw             ax                                            // 0x0079f216    dfe0
                         test               ah, 0x40                                      // 0x0079f218    f6c440
                         mov                eax, 0x00000001                               // 0x0079f21b    b801000000
                         {disp8} je         _jmp_addr_0x0079f240                          // 0x0079f220    741e
                         pop                esi                                           // 0x0079f222    5e
                         pop                ebp                                           // 0x0079f223    5d
                         {disp32} mov       dword ptr [data_bytes + 0x470140], ebx        // 0x0079f224    891d4061e300
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0079f22a    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e8b // 0x0079f22f    c705c4a1c2008b0e0000
                         pop                ebx                                           // 0x0079f239    5b
                         ret                                                              // 0x0079f23a    c3
_jmp_addr_0x0079f23b:    mov                eax, 0x00000001                               // 0x0079f23b    b801000000
_jmp_addr_0x0079f240:    pop                esi                                           // 0x0079f240    5e
                         pop                ebp                                           // 0x0079f241    5d
                         pop                ebx                                           // 0x0079f242    5b
                         ret                                                              // 0x0079f243    c3
                         nop                                                              // 0x0079f244    90
                         nop                                                              // 0x0079f245    90
                         nop                                                              // 0x0079f246    90
                         nop                                                              // 0x0079f247    90
                         nop                                                              // 0x0079f248    90
                         nop                                                              // 0x0079f249    90
                         nop                                                              // 0x0079f24a    90
                         nop                                                              // 0x0079f24b    90
                         nop                                                              // 0x0079f24c    90
                         nop                                                              // 0x0079f24d    90
                         nop                                                              // 0x0079f24e    90
                         nop                                                              // 0x0079f24f    90
_jmp_addr_0x0079f250:    push               0x00e36158                                    // 0x0079f250    685861e300
                         call               _jmp_addr_0x0079a600                          // 0x0079f255    e8a6b3ffff
                         push               0x0                                           // 0x0079f25a    6a00
                         push               0x000004c4                                    // 0x0079f25c    68c4040000
                         push               0x00e36158                                    // 0x0079f261    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f266    e8a5b6ffff
                         push               0x00e36158                                    // 0x0079f26b    685861e300
                         call               _jmp_addr_0x0079a640                          // 0x0079f270    e8cbb3ffff
                         push               0x0                                           // 0x0079f275    6a00
                         push               0x000004c7                                    // 0x0079f277    68c7040000
                         push               0x00e36158                                    // 0x0079f27c    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f281    e88ab6ffff
                         push               0x0                                           // 0x0079f286    6a00
                         push               0x000004c8                                    // 0x0079f288    68c8040000
                         push               0x00e36158                                    // 0x0079f28d    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f292    e879b6ffff
                         push               0x0                                           // 0x0079f297    6a00
                         push               0x000004c9                                    // 0x0079f299    68c9040000
                         push               0x00e36158                                    // 0x0079f29e    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f2a3    e868b6ffff
                         push               0x00e36158                                    // 0x0079f2a8    685861e300
                         call               _jmp_addr_0x0079a640                          // 0x0079f2ad    e88eb3ffff
                         push               0x0                                           // 0x0079f2b2    6a00
                         push               0x000004ca                                    // 0x0079f2b4    68ca040000
                         push               0x00e36158                                    // 0x0079f2b9    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f2be    e84db6ffff
                         add                esp, 0x48                                     // 0x0079f2c3    83c448
                         push               0x0                                           // 0x0079f2c6    6a00
                         push               0x000004cb                                    // 0x0079f2c8    68cb040000
                         push               0x00e36158                                    // 0x0079f2cd    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f2d2    e839b6ffff
                         push               0x0                                           // 0x0079f2d7    6a00
                         push               0x000019cd                                    // 0x0079f2d9    68cd190000
                         push               0x00e36158                                    // 0x0079f2de    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f2e3    e828b6ffff
                         push               0x00e36158                                    // 0x0079f2e8    685861e300
                         call               _jmp_addr_0x0079a640                          // 0x0079f2ed    e84eb3ffff
                         push               0x0                                           // 0x0079f2f2    6a00
                         push               0x000004cc                                    // 0x0079f2f4    68cc040000
                         push               0x00e36158                                    // 0x0079f2f9    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f2fe    e80db6ffff
                         push               0x0                                           // 0x0079f303    6a00
                         push               0x000004cd                                    // 0x0079f305    68cd040000
                         push               0x00e36158                                    // 0x0079f30a    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f30f    e8fcb5ffff
                         push               0x00e36158                                    // 0x0079f314    685861e300
                         call               _jmp_addr_0x0079a640                          // 0x0079f319    e822b3ffff
                         push               0x0                                           // 0x0079f31e    6a00
                         push               0x000004ce                                    // 0x0079f320    68ce040000
                         push               0x00e36158                                    // 0x0079f325    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f32a    e8e1b5ffff
                         add                esp, 0x44                                     // 0x0079f32f    83c444
                         push               0x0                                           // 0x0079f332    6a00
                         push               0x000004cf                                    // 0x0079f334    68cf040000
                         push               0x00e36158                                    // 0x0079f339    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f33e    e8cdb5ffff
                         push               0x0                                           // 0x0079f343    6a00
                         push               0x000004d0                                    // 0x0079f345    68d0040000
                         push               0x00e36158                                    // 0x0079f34a    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f34f    e8bcb5ffff
                         push               0x0                                           // 0x0079f354    6a00
                         push               0x000004d1                                    // 0x0079f356    68d1040000
                         push               0x00e36158                                    // 0x0079f35b    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f360    e8abb5ffff
                         push               0x0                                           // 0x0079f365    6a00
                         push               0x000004d2                                    // 0x0079f367    68d2040000
                         push               0x00e36158                                    // 0x0079f36c    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f371    e89ab5ffff
                         push               0x0                                           // 0x0079f376    6a00
                         push               0x000004d3                                    // 0x0079f378    68d3040000
                         push               0x00e36158                                    // 0x0079f37d    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f382    e889b5ffff
                         push               0x0                                           // 0x0079f387    6a00
                         push               0x000004d5                                    // 0x0079f389    68d5040000
                         push               0x00e36158                                    // 0x0079f38e    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f393    e878b5ffff
                         add                esp, 0x48                                     // 0x0079f398    83c448
                         push               0x0                                           // 0x0079f39b    6a00
                         push               0x000004d6                                    // 0x0079f39d    68d6040000
                         push               0x00e36158                                    // 0x0079f3a2    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f3a7    e864b5ffff
                         push               0x0                                           // 0x0079f3ac    6a00
                         push               0x000004d7                                    // 0x0079f3ae    68d7040000
                         push               0x00e36158                                    // 0x0079f3b3    685861e300
                         call               _jmp_addr_0x0079a910                          // 0x0079f3b8    e853b5ffff
                         push               0x00e36158                                    // 0x0079f3bd    685861e300
                         call               _jmp_addr_0x0079a620                          // 0x0079f3c2    e859b2ffff
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0079f3c7    8b442420
                         add                esp, 0x1c                                     // 0x0079f3cb    83c41c
                         test               eax, eax                                      // 0x0079f3ce    85c0
                         {disp8} je         _jmp_addr_0x0079f3da                          // 0x0079f3d0    7408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x474198]        // 0x0079f3d2    a198a1e300
                         push               eax                                           // 0x0079f3d7    50
                         {disp8} jmp        _jmp_addr_0x0079f3dc                          // 0x0079f3d8    eb02
_jmp_addr_0x0079f3da:    push               0x0                                           // 0x0079f3da    6a00
_jmp_addr_0x0079f3dc:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4741a0]        // 0x0079f3dc    8b0da0a1e300
                         {disp32} mov       edx, dword ptr [data_bytes + 0x470138]        // 0x0079f3e2    8b153861e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4741a4]        // 0x0079f3e8    a1a4a1e300
                         push               ecx                                           // 0x0079f3ed    51
                         push               0x00e36158                                    // 0x0079f3ee    685861e300
                         push               edx                                           // 0x0079f3f3    52
                         push               eax                                           // 0x0079f3f4    50
                         call               _jmp_addr_0x007991c0                          // 0x0079f3f5    e8c69dffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4741a8]        // 0x0079f3fa    8b0da8a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x47419c], eax        // 0x0079f400    a39ca1e300
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079f405    8b4908
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0079f408    8b4110
                         and                eax, 0x3f                                     // 0x0079f40b    83e03f
                         add                esp, 0x14                                     // 0x0079f40e    83c414
                         cmp                eax, 0x08                                     // 0x0079f411    83f808
                         {disp8} je         _jmp_addr_0x0079f41b                          // 0x0079f414    7405
                         cmp                eax, 0x04                                     // 0x0079f416    83f804
                         {disp8} jne        _jmp_addr_0x0079f425                          // 0x0079f419    750a
_jmp_addr_0x0079f41b:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0079f41b    c7813801000001000000
_jmp_addr_0x0079f425:    ret                                                              // 0x0079f425    c3
                         nop                                                              // 0x0079f426    90
                         nop                                                              // 0x0079f427    90
                         nop                                                              // 0x0079f428    90
                         nop                                                              // 0x0079f429    90
                         nop                                                              // 0x0079f42a    90
                         nop                                                              // 0x0079f42b    90
                         nop                                                              // 0x0079f42c    90
                         nop                                                              // 0x0079f42d    90
                         nop                                                              // 0x0079f42e    90
                         nop                                                              // 0x0079f42f    90
                         {disp32} jmp       ?PreDraw@GameOptionsRoom@@UAEXXZ              // 0x0079f430    e94babffff
                         nop                                                              // 0x0079f435    90
                         nop                                                              // 0x0079f436    90
                         nop                                                              // 0x0079f437    90
                         nop                                                              // 0x0079f438    90
                         nop                                                              // 0x0079f439    90
                         nop                                                              // 0x0079f43a    90
                         nop                                                              // 0x0079f43b    90
                         nop                                                              // 0x0079f43c    90
                         nop                                                              // 0x0079f43d    90
                         nop                                                              // 0x0079f43e    90
                         nop                                                              // 0x0079f43f    90
                         push               esi                                           // 0x0079f440    56
                         mov                esi, 0x00000001                               // 0x0079f441    be01000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f446    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e7e // 0x0079f44c    c705c4a1c2007e0e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000f00 // 0x0079f456    c7054061e300000f0000
                         {disp32} mov       edx, dword ptr [ecx + 0x000000c4]             // 0x0079f460    8b91c4000000
                         {disp32} mov       eax, dword ptr [edx + 0x000003f8]             // 0x0079f466    8b82f8030000
                         push               edi                                           // 0x0079f46c    57
                         xor.s              edi, edi                                      // 0x0079f46d    33ff
                         cmp.s              eax, esi                                      // 0x0079f46f    3bc6
                         {disp8} jne        _jmp_addr_0x0079f4d3                          // 0x0079f471    7560
                         cmp                dword ptr [edx + 0x0000013c], esi             // 0x0079f473    39b23c010000
                         {disp8} jne        _jmp_addr_0x0079f4aa                          // 0x0079f479    752f
                         {disp32} fld       dword ptr [edx + 0x00000450]                  // 0x0079f47b    d98250040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x0079f481    dc1d80b68a00
                         fnstsw             ax                                            // 0x0079f487    dfe0
                         test               ah, 0x40                                      // 0x0079f489    f6c440
                         {disp8} je         _jmp_addr_0x0079f4aa                          // 0x0079f48c    741c
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f48e    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000eed // 0x0079f494    c705c4a1c200ed0e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000f00 // 0x0079f49e    c7054061e300000f0000
                         {disp8} jmp        _jmp_addr_0x0079f4d3                          // 0x0079f4a8    eb29
_jmp_addr_0x0079f4aa:    {disp32} fld       dword ptr [edx + 0x00000450]                  // 0x0079f4aa    d98250040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x0079f4b0    dc1d80b68a00
                         fnstsw             ax                                            // 0x0079f4b6    dfe0
                         test               ah, 0x40                                      // 0x0079f4b8    f6c440
                         {disp8} jne        _jmp_addr_0x0079f4d3                          // 0x0079f4bb    7516
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f4bd    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e75 // 0x0079f4c3    c705c4a1c200750e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f4cd    893d4061e300
_jmp_addr_0x0079f4d3:    {disp32} mov       eax, dword ptr [ecx + 0x000000c4]             // 0x0079f4d3    8b81c4000000
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]             // 0x0079f4d9    8b802c010000
                         cmp                eax, -0x01                                    // 0x0079f4df    83f8ff
                         {disp32} je        _jmp_addr_0x0079f5ad                          // 0x0079f4e2    0f84c5000000
                         cmp                dword ptr [ecx + 0x7c], edi                   // 0x0079f4e8    39797c
                         {disp32} jne       _jmp_addr_0x0079f5ad                          // 0x0079f4eb    0f85bc000000
                         cmp                eax, 0x07                                     // 0x0079f4f1    83f807
                         {disp32} ja        _jmp_addr_0x0079f5ad                          // 0x0079f4f4    0f87b3000000
                         jmp                dword ptr [eax*4 + 0x79f5b0]                  // 0x0079f4fa    ff2485b0f57900
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f501    893d4061e300
                         pop                edi                                           // 0x0079f507    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f508    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e95 // 0x0079f50e    c705c4a1c200950e0000
                         pop                esi                                           // 0x0079f518    5e
                         ret                                                              // 0x0079f519    c3
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f51a    893d4061e300
                         pop                edi                                           // 0x0079f520    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f521    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e94 // 0x0079f527    c705c4a1c200940e0000
                         pop                esi                                           // 0x0079f531    5e
                         ret                                                              // 0x0079f532    c3
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f533    893d4061e300
                         pop                edi                                           // 0x0079f539    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f53a    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e96 // 0x0079f540    c705c4a1c200960e0000
                         pop                esi                                           // 0x0079f54a    5e
                         ret                                                              // 0x0079f54b    c3
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f54c    893d4061e300
                         pop                edi                                           // 0x0079f552    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f553    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e9a // 0x0079f559    c705c4a1c2009a0e0000
                         pop                esi                                           // 0x0079f563    5e
                         ret                                                              // 0x0079f564    c3
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f565    893d4061e300
                         pop                edi                                           // 0x0079f56b    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f56c    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e99 // 0x0079f572    c705c4a1c200990e0000
                         pop                esi                                           // 0x0079f57c    5e
                         ret                                                              // 0x0079f57d    c3
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f57e    893d4061e300
                         pop                edi                                           // 0x0079f584    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f585    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e97 // 0x0079f58b    c705c4a1c200970e0000
                         pop                esi                                           // 0x0079f595    5e
                         ret                                                              // 0x0079f596    c3
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], esi        // 0x0079f597    8935c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e98 // 0x0079f59d    c705c4a1c200980e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], edi        // 0x0079f5a7    893d4061e300
_jmp_addr_0x0079f5ad:    pop                edi                                           // 0x0079f5ad    5f
                         pop                esi                                           // 0x0079f5ae    5e
                         ret                                                              // 0x0079f5af    c3

// Snippet: jmptbl, [0x0079f5b0, 0x0079f5d0)
.byte 0x01, 0xf5, 0x79, 0x00      // 0x0079f5b0
.byte 0x65, 0xf5, 0x79, 0x00      // 0x0079f5b4
.byte 0x97, 0xf5, 0x79, 0x00      // 0x0079f5b8
.byte 0x4c, 0xf5, 0x79, 0x00      // 0x0079f5bc
.byte 0x7e, 0xf5, 0x79, 0x00      // 0x0079f5c0
.byte 0x33, 0xf5, 0x79, 0x00      // 0x0079f5c4
.byte 0xad, 0xf5, 0x79, 0x00      // 0x0079f5c8
.byte 0x1a, 0xf5, 0x79, 0x00      // 0x0079f5cc

