.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0048cbb0
.extern _jmp_addr_0x0048e260
.extern _jmp_addr_0x0048f280
.extern _jmp_addr_0x004ec450
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?GetVisualTime@GGameInfo@@QAEMXZ
.extern _jmp_addr_0x00591010
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x0063ed40
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern _jmp_addr_0x0064a9f0
.extern _jmp_addr_0x0078ea20
.extern _fprintf
.extern _fopen
.extern _fclose
.extern _fread
.extern _fwrite
.extern _fseek
.extern __sleep
.extern _jmp_addr_0x007de090
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x00814fd0
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern _jmp_addr_0x0082ee70
.extern ?StartFrame@LH3DRender@@SAXXZ
.extern ?FinishFrame@LH3DRender@@QAEXXZ
.extern _jmp_addr_0x00848350
.extern ?Time2SkyType@LH3DSky@@QAEMM@Z

.globl _jmp_addr_0x006405f0
.globl _jmp_addr_0x00640cb0

start_0x0063ff80_0x00640fa0:
// Snippet: asm, [0x0063ff80, 0x00640f4c)
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0063ff80    8b0d5c19d000
                         sub               esp, 0x00000cfc                               // 0x0063ff86    81ecfc0c0000
                         push              ebx                                           // 0x0063ff8c    53
                         push              ebp                                           // 0x0063ff8d    55
                         push              esi                                           // 0x0063ff8e    56
                         push              edi                                           // 0x0063ff8f    57
                         {disp32} lea      eax, dword ptr [esp + 0x000000e4]             // 0x0063ff90    8d8424e4000000
                         push              eax                                           // 0x0063ff97    50
                         add               ecx, 0x00250310                               // 0x0063ff98    81c110032500
                         call              _jmp_addr_0x0078ea20                          // 0x0063ff9e    e87dea1400
                         or                ecx, 0xffffffff                               // 0x0063ffa3    83c9ff
                         xor.s             eax, eax                                      // 0x0063ffa6    33c0
                         mov               edi, 0x00bfe2f4                               // 0x0063ffa8    bff4e2bf00
                         repne scasb                                                     // 0x0063ffad    f2ae
                         not               ecx                                           // 0x0063ffaf    f7d1
                         sub.s             edi, ecx                                      // 0x0063ffb1    2bf9
                         mov.s             ebx, ecx                                      // 0x0063ffb3    8bd9
                         or                ecx, 0xffffffff                               // 0x0063ffb5    83c9ff
                         mov.s             esi, edi                                      // 0x0063ffb8    8bf7
                         {disp32} lea      edx, dword ptr [esp + 0x000000e4]             // 0x0063ffba    8d9424e4000000
                         mov.s             edi, edx                                      // 0x0063ffc1    8bfa
                         repne scasb                                                     // 0x0063ffc3    f2ae
                         mov.s             ecx, ebx                                      // 0x0063ffc5    8bcb
                         shr               ecx, 2                                        // 0x0063ffc7    c1e902
                         dec               edi                                           // 0x0063ffca    4f
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x0063ffcb    f3a5
                         mov.s             ecx, ebx                                      // 0x0063ffcd    8bcb
                         {disp32} lea      eax, dword ptr [esp + 0x000000e4]             // 0x0063ffcf    8d8424e4000000
                         and               ecx, 0x03                                     // 0x0063ffd6    83e103
                         push              0x009ce5d8                                    // 0x0063ffd9    68d8e59c00
                         push              eax                                           // 0x0063ffde    50
                         rep movsb                                                       // 0x0063ffdf    f3a4
                         call              _fopen                                        // 0x0063ffe1    e8376e1800
                         mov.s             ebp, eax                                      // 0x0063ffe6    8be8
                         add               esp, 0x08                                     // 0x0063ffe8    83c408
                         test              ebp, ebp                                      // 0x0063ffeb    85ed
                         {disp8} jne       _jmp_addr_0x0063fffa                          // 0x0063ffed    750b
                         pop               edi                                           // 0x0063ffef    5f
                         pop               esi                                           // 0x0063fff0    5e
                         pop               ebp                                           // 0x0063fff1    5d
                         pop               ebx                                           // 0x0063fff2    5b
                         add               esp, 0x00000cfc                               // 0x0063fff3    81c4fc0c0000
                         ret                                                             // 0x0063fff9    c3
_jmp_addr_0x0063fffa:    push              ebp                                           // 0x0063fffa    55
                         push              0x2                                           // 0x0063fffb    6a02
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x0063fffd    8d4c2418
                         push              0x1                                           // 0x00640001    6a01
                         mov               esi, 0x00000969                               // 0x00640003    be69090000
                         push              ecx                                           // 0x00640008    51
                         {disp8} mov       dword ptr [esp + 0x20], esi                   // 0x00640009    89742420
                         call              _fread                                        // 0x0064000d    e879741800
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x00640012    8b442420
                         add               esp, 0x10                                     // 0x00640016    83c410
                         cmp.s             eax, esi                                      // 0x00640019    3bc6
                         push              ebp                                           // 0x0064001b    55
                         {disp8} je        _jmp_addr_0x00640033                          // 0x0064001c    7415
                         call              _fclose                                       // 0x0064001e    e80d6e1800
                         add               esp, 0x04                                     // 0x00640023    83c404
                         pop               edi                                           // 0x00640026    5f
                         pop               esi                                           // 0x00640027    5e
                         pop               ebp                                           // 0x00640028    5d
                         xor.s             eax, eax                                      // 0x00640029    33c0
                         pop               ebx                                           // 0x0064002b    5b
                         add               esp, 0x00000cfc                               // 0x0064002c    81c4fc0c0000
                         ret                                                             // 0x00640032    c3
_jmp_addr_0x00640033:    push              0x4                                           // 0x00640033    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x64]                   // 0x00640035    8d542464
                         push              0x1                                           // 0x00640039    6a01
                         push              edx                                           // 0x0064003b    52
                         call              _fread                                        // 0x0064003c    e84a741800
                         push              ebp                                           // 0x00640041    55
                         push              0xc                                           // 0x00640042    6a0c
                         {disp8} lea       eax, dword ptr [esp + 0x7c]                   // 0x00640044    8d44247c
                         push              0x1                                           // 0x00640048    6a01
                         push              eax                                           // 0x0064004a    50
                         call              _fread                                        // 0x0064004b    e83b741800
                         push              ebp                                           // 0x00640050    55
                         push              0xc                                           // 0x00640051    6a0c
                         {disp32} lea      ecx, dword ptr [esp + 0x00000098]             // 0x00640053    8d8c2498000000
                         push              0x1                                           // 0x0064005a    6a01
                         push              ecx                                           // 0x0064005c    51
                         call              _fread                                        // 0x0064005d    e829741800
                         push              ebp                                           // 0x00640062    55
                         push              0x4                                           // 0x00640063    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x7c]                   // 0x00640065    8d54247c
                         push              0x1                                           // 0x00640069    6a01
                         push              edx                                           // 0x0064006b    52
                         call              _fread                                        // 0x0064006c    e81a741800
                         add               esp, 0x40                                     // 0x00640071    83c440
                         push              ebp                                           // 0x00640074    55
                         push              0x4                                           // 0x00640075    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x68]                   // 0x00640077    8d442468
                         push              0x1                                           // 0x0064007b    6a01
                         push              eax                                           // 0x0064007d    50
                         call              _fread                                        // 0x0064007e    e808741800
                         push              ebp                                           // 0x00640083    55
                         push              0x4                                           // 0x00640084    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x54]                   // 0x00640086    8d4c2454
                         push              0x1                                           // 0x0064008a    6a01
                         push              ecx                                           // 0x0064008c    51
                         call              _fread                                        // 0x0064008d    e8f9731800
                         push              ebp                                           // 0x00640092    55
                         push              0x8                                           // 0x00640093    6a08
                         {disp32} lea      edx, dword ptr [esp + 0x000000a4]             // 0x00640095    8d9424a4000000
                         push              0x1                                           // 0x0064009c    6a01
                         push              edx                                           // 0x0064009e    52
                         call              _fread                                        // 0x0064009f    e8e7731800
                         push              ebp                                           // 0x006400a4    55
                         push              0x4                                           // 0x006400a5    6a04
                         {disp32} lea      eax, dword ptr [esp + 0x00000088]             // 0x006400a7    8d842488000000
                         push              0x1                                           // 0x006400ae    6a01
                         push              eax                                           // 0x006400b0    50
                         call              _fread                                        // 0x006400b1    e8d5731800
                         add               esp, 0x40                                     // 0x006400b6    83c440
                         push              ebp                                           // 0x006400b9    55
                         push              0x4                                           // 0x006400ba    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x24]                   // 0x006400bc    8d4c2424
                         push              0x1                                           // 0x006400c0    6a01
                         push              ecx                                           // 0x006400c2    51
                         call              _fread                                        // 0x006400c3    e8c3731800
                         {disp8} mov       edx, dword ptr [esp + 0x2c]                   // 0x006400c8    8b54242c
                         push              ebp                                           // 0x006400cc    55
                         push              edx                                           // 0x006400cd    52
                         {disp32} lea      eax, dword ptr [esp + 0x000002fc]             // 0x006400ce    8d8424fc020000
                         push              0x1                                           // 0x006400d5    6a01
                         push              eax                                           // 0x006400d7    50
                         call              _fread                                        // 0x006400d8    e8ae731800
                         {disp8} mov       ecx, dword ptr [esp + 0x3c]                   // 0x006400dd    8b4c243c
                         add               esp, 0x20                                     // 0x006400e1    83c420
                         {disp32} mov      byte ptr [esp + ecx * 0x1 + 0x000002e4], 0x00 // 0x006400e4    c6840ce402000000
                         push              0x1                                           // 0x006400ec    6a01
                         mov               ecx, 0x00e85050                               // 0x006400ee    b95050e800
                         call              _jmp_addr_0x007de090                          // 0x006400f3    e898df1900
                         {disp32} mov      eax, dword ptr [_Direct3DDevice7]             // 0x006400f8    a138a6ec00
                         mov               edx, dword ptr [eax]                          // 0x006400fd    8b10
                         push              0x0                                           // 0x006400ff    6a00
                         push              0x3f800000                                    // 0x00640101    680000803f
                         push              0x0                                           // 0x00640106    6a00
                         push              0x3                                           // 0x00640108    6a03
                         push              0x0                                           // 0x0064010a    6a00
                         push              0x0                                           // 0x0064010c    6a00
                         push              eax                                           // 0x0064010e    50
                         call              dword ptr [edx + 0x28]                        // 0x0064010f    ff5228
                         call              _jmp_addr_0x0082ee70                          // 0x00640112    e859ed1e00
                         call              ?StartFrame@LH3DRender@@SAXXZ                 // 0x00640117    e8c4ef1e00
                         {disp8} lea       edx, dword ptr [esp + 0x70]                   // 0x0064011c    8d542470
                         {disp8} lea       ecx, dword ptr [esp + 0x64]                   // 0x00640120    8d4c2464
                         call              ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x00640124    e8f7971d00
_jmp_addr_0x00640129:    push              ebp                                           // 0x00640129    55
                         xor.s             eax, eax                                      // 0x0064012a    33c0
                         mov               ecx, 0x0000020a                               // 0x0064012c    b90a020000
                         {disp32} lea      edi, dword ptr [esp + 0x000004e8]             // 0x00640131    8dbc24e8040000
                         rep stosd                                                       // 0x00640138    f3ab
                         push              0x4                                           // 0x0064013a    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x18]                   // 0x0064013c    8d442418
                         push              0x1                                           // 0x00640140    6a01
                         push              eax                                           // 0x00640142    50
                         {disp32} mov      dword ptr [esp + 0x00000d14], 0x00000001      // 0x00640143    c78424140d000001000000
                         call              _fread                                        // 0x0064014e    e838731800
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x00640153    8b442420
                         add               esp, 0x10                                     // 0x00640157    83c410
                         test              eax, eax                                      // 0x0064015a    85c0
                         {disp32} jl       _jmp_addr_0x006405bf                          // 0x0064015c    0f8c5d040000
                         push              ebp                                           // 0x00640162    55
                         push              0x00000828                                    // 0x00640163    6828080000
                         {disp32} lea      ecx, dword ptr [esp + 0x000004ec]             // 0x00640168    8d8c24ec040000
                         push              0x1                                           // 0x0064016f    6a01
                         push              ecx                                           // 0x00640171    51
                         call              _fread                                        // 0x00640172    e814731800
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00640177    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0064017d    33c0
                         {disp8} mov       dword ptr [esp + 0x28], eax                   // 0x0064017f    89442428
                         {disp32} mov      edx, dword ptr [ecx + 0x00250538]             // 0x00640183    8b9138052500
                         add               esp, 0x10                                     // 0x00640189    83c410
                         xor.s             edi, edi                                      // 0x0064018c    33ff
                         test              edx, edx                                      // 0x0064018e    85d2
                         {disp32} je       _jmp_addr_0x00640394                          // 0x00640190    0f84fe010000
                         {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x00640196    8b542410
                         push              edx                                           // 0x0064019a    52
                         call              ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0064019b    e81008f1ff
                         test              eax, eax                                      // 0x006401a0    85c0
                         {disp32} je       _jmp_addr_0x00640390                          // 0x006401a2    0f84e8010000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000a4c]             // 0x006401a8    8b884c0a0000
                         test              ecx, ecx                                      // 0x006401ae    85c9
                         {disp32} je       _jmp_addr_0x00640390                          // 0x006401b0    0f84da010000
                         call              ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x006401b6    e89576e3ff
                         mov.s             esi, eax                                      // 0x006401bb    8bf0
                         mov               eax, dword ptr [esi]                          // 0x006401bd    8b06
                         mov.s             ecx, esi                                      // 0x006401bf    8bce
                         call              dword ptr [eax + 0x18]                        // 0x006401c1    ff5018
                         push              ebp                                           // 0x006401c4    55
                         push              0x4                                           // 0x006401c5    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x20]                   // 0x006401c7    8d4c2420
                         push              0x1                                           // 0x006401cb    6a01
                         push              ecx                                           // 0x006401cd    51
                         call              _fread                                        // 0x006401ce    e8b8721800
                         {disp8} mov       eax, dword ptr [esp + 0x28]                   // 0x006401d3    8b442428
                         {disp32} mov      ecx, dword ptr [esi + 0x000047b8]             // 0x006401d7    8b8eb8470000
                         add               esp, 0x10                                     // 0x006401dd    83c410
                         cmp.s             eax, ecx                                      // 0x006401e0    3bc1
                         {disp8} jne       _jmp_addr_0x006401ea                          // 0x006401e2    7506
                         {disp32} mov      edi, dword ptr [esi + 0x000047f0]             // 0x006401e4    8bbef0470000
_jmp_addr_0x006401ea:    {disp32} mov      ecx, dword ptr [esi + 0x000048d0]             // 0x006401ea    8b8ed0480000
                         test              ecx, ecx                                      // 0x006401f0    85c9
                         {disp8} je        _jmp_addr_0x006401ff                          // 0x006401f2    740b
                         mov.s             ecx, esi                                      // 0x006401f4    8bce
                         call              _jmp_addr_0x0048cbb0                          // 0x006401f6    e8b5c9e4ff
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x006401fb    8b442418
_jmp_addr_0x006401ff:    test              edi, edi                                      // 0x006401ff    85ff
                         {disp32} je       _jmp_addr_0x00640394                          // 0x00640201    0f848d010000
                         push              ebp                                           // 0x00640207    55
                         push              0x30                                          // 0x00640208    6a30
                         push              eax                                           // 0x0064020a    50
                         push              edi                                           // 0x0064020b    57
                         call              _fread                                        // 0x0064020c    e87a721800
                         push              ebp                                           // 0x00640211    55
                         push              0x4                                           // 0x00640212    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x4c]                   // 0x00640214    8d54244c
                         push              0x1                                           // 0x00640218    6a01
                         push              edx                                           // 0x0064021a    52
                         call              _fread                                        // 0x0064021b    e86b721800
                         push              ebp                                           // 0x00640220    55
                         push              0x4                                           // 0x00640221    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x54]                   // 0x00640223    8d442454
                         push              0x1                                           // 0x00640227    6a01
                         push              eax                                           // 0x00640229    50
                         call              _fread                                        // 0x0064022a    e85c721800
                         add               esp, 0x30                                     // 0x0064022f    83c430
                         test              esi, esi                                      // 0x00640232    85f6
                         {disp32} je       _jmp_addr_0x00640443                          // 0x00640234    0f8409020000
                         {disp32} mov      ecx, dword ptr [esi + 0x0000482c]             // 0x0064023a    8b8e2c480000
                         push              ebp                                           // 0x00640240    55
                         push              0x4                                           // 0x00640241    6a04
                         add               ecx, 0x000000a0                               // 0x00640243    81c1a0000000
                         push              0x1                                           // 0x00640249    6a01
                         push              ecx                                           // 0x0064024b    51
                         call              _fread                                        // 0x0064024c    e83a721800
                         {disp32} mov      edx, dword ptr [esi + 0x0000482c]             // 0x00640251    8b962c480000
                         push              ebp                                           // 0x00640257    55
                         push              0x4                                           // 0x00640258    6a04
                         add               edx, 0x000000a4                               // 0x0064025a    81c2a4000000
                         push              0x1                                           // 0x00640260    6a01
                         push              edx                                           // 0x00640262    52
                         call              _fread                                        // 0x00640263    e823721800
                         {disp32} mov      eax, dword ptr [esi + 0x0000482c]             // 0x00640268    8b862c480000
                         push              ebp                                           // 0x0064026e    55
                         push              0x4                                           // 0x0064026f    6a04
                         add               eax, 0x000000a8                               // 0x00640271    05a8000000
                         push              0x1                                           // 0x00640276    6a01
                         push              eax                                           // 0x00640278    50
                         call              _fread                                        // 0x00640279    e80d721800
                         {disp32} mov      ecx, dword ptr [esi + 0x0000482c]             // 0x0064027e    8b8e2c480000
                         push              ebp                                           // 0x00640284    55
                         push              0x4                                           // 0x00640285    6a04
                         add               ecx, 0x00000098                               // 0x00640287    81c198000000
                         push              0x1                                           // 0x0064028d    6a01
                         push              ecx                                           // 0x0064028f    51
                         call              _fread                                        // 0x00640290    e8f6711800
                         {disp32} mov      edx, dword ptr [esi + 0x0000482c]             // 0x00640295    8b962c480000
                         add               esp, 0x40                                     // 0x0064029b    83c440
                         push              ebp                                           // 0x0064029e    55
                         push              0x4                                           // 0x0064029f    6a04
                         add               edx, 0x00000094                               // 0x006402a1    81c294000000
                         push              0x1                                           // 0x006402a7    6a01
                         push              edx                                           // 0x006402a9    52
                         call              _fread                                        // 0x006402aa    e8dc711800
                         {disp32} mov      eax, dword ptr [esi + 0x0000482c]             // 0x006402af    8b862c480000
                         push              ebp                                           // 0x006402b5    55
                         push              0x30                                          // 0x006402b6    6a30
                         add               eax, 0x14                                     // 0x006402b8    83c014
                         push              0x1                                           // 0x006402bb    6a01
                         push              eax                                           // 0x006402bd    50
                         call              _fread                                        // 0x006402be    e8c8711800
                         push              ebp                                           // 0x006402c3    55
                         push              0x4                                           // 0x006402c4    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x4c]                   // 0x006402c6    8d4c244c
                         push              0x1                                           // 0x006402ca    6a01
                         push              ecx                                           // 0x006402cc    51
                         call              _fread                                        // 0x006402cd    e8b9711800
                         {disp8} mov       edx, dword ptr [esp + 0x54]                   // 0x006402d2    8b542454
                         push              0x1                                           // 0x006402d6    6a01
                         push              edx                                           // 0x006402d8    52
                         push              ebp                                           // 0x006402d9    55
                         call              _fseek                                        // 0x006402da    e87a851800
                         {disp32} mov      ecx, dword ptr [esi + 0x0000482c]             // 0x006402df    8b8e2c480000
                         mov               eax, dword ptr [ecx]                          // 0x006402e5    8b01
                         add               esp, 0x3c                                     // 0x006402e7    83c43c
                         push              0x0                                           // 0x006402ea    6a00
                         or                edx, 0xffffffff                               // 0x006402ec    83caff
                         call              dword ptr [eax + 0x2c]                        // 0x006402ef    ff502c
                         {disp32} mov      ecx, dword ptr [esi + 0x0000482c]             // 0x006402f2    8b8e2c480000
                         {disp32} mov      edx, dword ptr [esi + 0x00000098]             // 0x006402f8    8b9698000000
                         mov               eax, dword ptr [ecx]                          // 0x006402fe    8b01
                         {disp32} mov      edx, dword ptr [esi + edx * 0x4 + 0x000000b4] // 0x00640300    8b9496b4000000
                         push              0x0                                           // 0x00640307    6a00
                         push              0x0                                           // 0x00640309    6a00
                         call              dword ptr [eax + 0xf4]                        // 0x0064030b    ff90f4000000
                         {disp32} mov      eax, dword ptr [esi + 0x0000482c]             // 0x00640311    8b862c480000
                         {disp32} mov      dword ptr [eax + 0x00000080], edi             // 0x00640317    89b880000000
                         {disp32} mov      dword ptr [data_bytes + 0x271d9c], edi        // 0x0064031d    893d9c7dc300
                         mov               edi, 0x00000064                               // 0x00640323    bf64000000
_jmp_addr_0x00640328:    {disp32} mov      ecx, dword ptr [data_bytes + 0x379008]        // 0x00640328    8b0d08f0d300
                         {disp8} fld       dword ptr [esp + 0x2c]                        // 0x0064032e    d944242c
                         {disp8} fmul      dword ptr [esp + 0x34]                        // 0x00640332    d84c2434
                         {disp32} mov      edx, dword ptr [esi + 0x00000098]             // 0x00640336    8b9698000000
                         {disp32} mov      eax, dword ptr [esi + edx * 0x4 + 0x000000b4] // 0x0064033c    8b8496b4000000
                         push              ecx                                           // 0x00640343    51
                         push              ecx                                           // 0x00640344    51
                         {disp32} mov      ecx, dword ptr [esi + 0x00004828]             // 0x00640345    8b8e28480000
                         fstp              dword ptr [esp]                               // 0x0064034b    d91c24
                         push              0x3d4ccccd                                    // 0x0064034e    68cdcc4c3d
                         push              eax                                           // 0x00640353    50
                         call              _jmp_addr_0x00848350                          // 0x00640354    e8f77f2000
                         dec               edi                                           // 0x00640359    4f
                         {disp8} jne       _jmp_addr_0x00640328                          // 0x0064035a    75cc
                         {disp32} mov      ecx, dword ptr [esi + 0x0000482c]             // 0x0064035c    8b8e2c480000
                         call              _jmp_addr_0x00814fd0                          // 0x00640362    e8694c1d00
                         {disp32} mov      dword ptr [data_bytes + 0x271d9c], OFFSET ?g_current_list_matrix@LH3DMesh@@2PAULH3DMatrix@@A // 0x00640367    c7059c7dc30028cee900
                         {disp32} mov      ecx, dword ptr [esi + 0x0000482c]             // 0x00640371    8b8e2c480000
                         mov               eax, dword ptr [ecx]                          // 0x00640377    8b01
                         mov               edx, 0x00000001                               // 0x00640379    ba01000000
                         call              dword ptr [eax + 0xa0]                        // 0x0064037e    ff90a0000000
                         mov.s             ecx, esi                                      // 0x00640384    8bce
                         call              _jmp_addr_0x0048e260                          // 0x00640386    e8d5dee4ff
                         {disp32} jmp      _jmp_addr_0x00640443                          // 0x0064038b    e9b3000000
_jmp_addr_0x00640390:    {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x00640390    8b442418
_jmp_addr_0x00640394:    lea               ecx, dword ptr [eax + eax * 0x2]              // 0x00640394    8d0c40
                         push              0x1                                           // 0x00640397    6a01
                         shl               ecx, 4                                        // 0x00640399    c1e104
                         push              ecx                                           // 0x0064039c    51
                         push              ebp                                           // 0x0064039d    55
                         call              _fseek                                        // 0x0064039e    e8b6841800
                         push              ebp                                           // 0x006403a3    55
                         push              0x4                                           // 0x006403a4    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x68]                   // 0x006403a6    8d542468
                         push              0x1                                           // 0x006403aa    6a01
                         push              edx                                           // 0x006403ac    52
                         call              _fread                                        // 0x006403ad    e8d9701800
                         push              ebp                                           // 0x006403b2    55
                         push              0x4                                           // 0x006403b3    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x70]                   // 0x006403b5    8d442470
                         push              0x1                                           // 0x006403b9    6a01
                         push              eax                                           // 0x006403bb    50
                         call              _fread                                        // 0x006403bc    e8ca701800
                         push              ebp                                           // 0x006403c1    55
                         push              0x4                                           // 0x006403c2    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x48]                   // 0x006403c4    8d4c2448
                         push              0x1                                           // 0x006403c8    6a01
                         push              ecx                                           // 0x006403ca    51
                         call              _fread                                        // 0x006403cb    e8bb701800
                         push              ebp                                           // 0x006403d0    55
                         push              0x4                                           // 0x006403d1    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x58]                   // 0x006403d3    8d542458
                         push              0x1                                           // 0x006403d7    6a01
                         push              edx                                           // 0x006403d9    52
                         call              _fread                                        // 0x006403da    e8ac701800
                         add               esp, 0x4c                                     // 0x006403df    83c44c
                         push              ebp                                           // 0x006403e2    55
                         push              0x4                                           // 0x006403e3    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x006403e5    8d44241c
                         push              0x1                                           // 0x006403e9    6a01
                         push              eax                                           // 0x006403eb    50
                         call              _fread                                        // 0x006403ec    e89a701800
                         push              ebp                                           // 0x006403f1    55
                         push              0x4                                           // 0x006403f2    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x2c]                   // 0x006403f4    8d4c242c
                         push              0x1                                           // 0x006403f8    6a01
                         push              ecx                                           // 0x006403fa    51
                         call              _fread                                        // 0x006403fb    e88b701800
                         push              ebp                                           // 0x00640400    55
                         push              0x4                                           // 0x00640401    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x3c]                   // 0x00640403    8d54243c
                         push              0x1                                           // 0x00640407    6a01
                         push              edx                                           // 0x00640409    52
                         call              _fread                                        // 0x0064040a    e87c701800
                         push              ebp                                           // 0x0064040f    55
                         push              0x30                                          // 0x00640410    6a30
                         {disp32} lea      eax, dword ptr [esp + 0x000000ec]             // 0x00640412    8d8424ec000000
                         push              0x1                                           // 0x00640419    6a01
                         push              eax                                           // 0x0064041b    50
                         call              _fread                                        // 0x0064041c    e86a701800
                         add               esp, 0x40                                     // 0x00640421    83c440
                         push              ebp                                           // 0x00640424    55
                         push              0x4                                           // 0x00640425    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x30]                   // 0x00640427    8d4c2430
                         push              0x1                                           // 0x0064042b    6a01
                         push              ecx                                           // 0x0064042d    51
                         call              _fread                                        // 0x0064042e    e858701800
                         {disp8} mov       edx, dword ptr [esp + 0x38]                   // 0x00640433    8b542438
                         push              0x1                                           // 0x00640437    6a01
                         push              edx                                           // 0x00640439    52
                         push              ebp                                           // 0x0064043a    55
                         call              _fseek                                        // 0x0064043b    e819841800
                         add               esp, 0x1c                                     // 0x00640440    83c41c
_jmp_addr_0x00640443:    push              ebp                                           // 0x00640443    55
                         push              0x4                                           // 0x00640444    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x18]                   // 0x00640446    8d442418
                         push              0x1                                           // 0x0064044a    6a01
                         push              eax                                           // 0x0064044c    50
                         call              _fread                                        // 0x0064044d    e839701800
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x00640452    8b442420
                         add               esp, 0x10                                     // 0x00640456    83c410
                         test              eax, eax                                      // 0x00640459    85c0
                         {disp32} je       _jmp_addr_0x00640129                          // 0x0064045b    0f84c8fcffff
                         push              ebp                                           // 0x00640461    55
                         push              0x4                                           // 0x00640462    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x50]                   // 0x00640464    8d4c2450
                         push              0x1                                           // 0x00640468    6a01
                         push              ecx                                           // 0x0064046a    51
                         call              _fread                                        // 0x0064046b    e81b701800
                         push              ebp                                           // 0x00640470    55
                         push              0x4                                           // 0x00640471    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x50]                   // 0x00640473    8d542450
                         push              0x1                                           // 0x00640477    6a01
                         push              edx                                           // 0x00640479    52
                         call              _fread                                        // 0x0064047a    e80c701800
                         push              ebp                                           // 0x0064047f    55
                         push              0x1                                           // 0x00640480    6a01
                         {disp8} lea       eax, dword ptr [esp + 0x48]                   // 0x00640482    8d442448
                         push              0x4                                           // 0x00640486    6a04
                         push              eax                                           // 0x00640488    50
                         call              _fread                                        // 0x00640489    e8fd6f1800
                         push              ebp                                           // 0x0064048e    55
                         push              0x1                                           // 0x0064048f    6a01
                         {disp8} lea       ecx, dword ptr [esp + 0x68]                   // 0x00640491    8d4c2468
                         push              0x4                                           // 0x00640495    6a04
                         push              ecx                                           // 0x00640497    51
                         call              _fread                                        // 0x00640498    e8ee6f1800
                         add               esp, 0x40                                     // 0x0064049d    83c440
                         push              ebp                                           // 0x006404a0    55
                         push              0x1                                           // 0x006404a1    6a01
                         {disp32} lea      edx, dword ptr [esp + 0x0000008c]             // 0x006404a3    8d94248c000000
                         push              0x30                                          // 0x006404aa    6a30
                         push              edx                                           // 0x006404ac    52
                         call              _fread                                        // 0x006404ad    e8d96f1800
                         push              ebp                                           // 0x006404b2    55
                         push              0x1                                           // 0x006404b3    6a01
                         {disp8} lea       eax, dword ptr [esp + 0x70]                   // 0x006404b5    8d442470
                         push              0x4                                           // 0x006404b9    6a04
                         push              eax                                           // 0x006404bb    50
                         call              _fread                                        // 0x006404bc    e8ca6f1800
                         push              ebp                                           // 0x006404c1    55
                         push              0x1                                           // 0x006404c2    6a01
                         {disp8} lea       ecx, dword ptr [esp + 0x68]                   // 0x006404c4    8d4c2468
                         push              0x4                                           // 0x006404c8    6a04
                         push              ecx                                           // 0x006404ca    51
                         call              _fread                                        // 0x006404cb    e8bb6f1800
                         {disp8} mov       eax, dword ptr [esp + 0x60]                   // 0x006404d0    8b442460
                         add               esp, 0x30                                     // 0x006404d4    83c430
                         test              eax, eax                                      // 0x006404d7    85c0
                         {disp8} jl        _jmp_addr_0x0064052d                          // 0x006404d9    7c52
                         cmp               eax, 0x000001b9                               // 0x006404db    3db9010000
                         {disp8} jge       _jmp_addr_0x0064052d                          // 0x006404e0    7d4b
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517508]        // 0x006404e2    8b0d08d5ed00
                         cmp               eax, dword ptr [ecx]                          // 0x006404e8    3b01
                         {disp8} jge       _jmp_addr_0x006404f2                          // 0x006404ea    7d06
                         {disp8} mov       esi, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x006404ec    8b748104
                         {disp8} jmp       _jmp_addr_0x006404f5                          // 0x006404f0    eb03
_jmp_addr_0x006404f2:    {disp8} mov       esi, dword ptr [ecx + 0x04]                   // 0x006404f2    8b7104
_jmp_addr_0x006404f5:    mov               ecx, 0x00000002                               // 0x006404f5    b902000000
                         call              @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x006404fa    e8d1af1c00
                         {disp32} mov      ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x006404ff    8b0d34fee900
                         mov.s             ebx, eax                                      // 0x00640505    8bd8
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x00640507    8b442420
                         test              eax, eax                                      // 0x0064050b    85c0
                         {disp8} jl        _jmp_addr_0x00640513                          // 0x0064050d    7c04
                         cmp               eax, dword ptr [ecx]                          // 0x0064050f    3b01
                         {disp8} jl        _jmp_addr_0x00640515                          // 0x00640511    7c02
_jmp_addr_0x00640513:    xor.s             eax, eax                                      // 0x00640513    33c0
_jmp_addr_0x00640515:    {disp8} mov       edx, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x00640515    8b548104
                         mov               edi, dword ptr [ebx]                          // 0x00640519    8b3b
                         push              0x0                                           // 0x0064051b    6a00
                         push              0x0                                           // 0x0064051d    6a00
                         mov.s             ecx, ebx                                      // 0x0064051f    8bcb
                         call              dword ptr [edi + 0xf4]                        // 0x00640521    ff97f4000000
                         mov               eax, dword ptr [ebx]                          // 0x00640527    8b03
                         mov.s             edx, esi                                      // 0x00640529    8bd6
                         {disp8} jmp       _jmp_addr_0x00640560                          // 0x0064052b    eb33
_jmp_addr_0x0064052d:    xor.s             ecx, ecx                                      // 0x0064052d    33c9
                         call              @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0064052f    e89caf1c00
                         {disp32} mov      ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00640534    8b0d34fee900
                         mov.s             ebx, eax                                      // 0x0064053a    8bd8
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x0064053c    8b442420
                         test              eax, eax                                      // 0x00640540    85c0
                         {disp8} jl        _jmp_addr_0x00640548                          // 0x00640542    7c04
                         cmp               eax, dword ptr [ecx]                          // 0x00640544    3b01
                         {disp8} jl        _jmp_addr_0x0064054a                          // 0x00640546    7c02
_jmp_addr_0x00640548:    xor.s             eax, eax                                      // 0x00640548    33c0
_jmp_addr_0x0064054a:    {disp8} mov       edx, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x0064054a    8b548104
                         mov               esi, dword ptr [ebx]                          // 0x0064054e    8b33
                         push              0x0                                           // 0x00640550    6a00
                         push              0x0                                           // 0x00640552    6a00
                         mov.s             ecx, ebx                                      // 0x00640554    8bcb
                         call              dword ptr [esi + 0xf4]                        // 0x00640556    ff96f4000000
                         mov               eax, dword ptr [ebx]                          // 0x0064055c    8b03
                         xor.s             edx, edx                                      // 0x0064055e    33d2
_jmp_addr_0x00640560:    mov.s             ecx, ebx                                      // 0x00640560    8bcb
                         call              dword ptr [eax + 0x180]                       // 0x00640562    ff9080010000
                         mov               eax, dword ptr [ebx]                          // 0x00640568    8b03
                         {disp8} mov       edx, dword ptr [esp + 0x38]                   // 0x0064056a    8b542438
                         mov.s             ecx, ebx                                      // 0x0064056e    8bcb
                         call              dword ptr [eax + 0x188]                       // 0x00640570    ff9088010000
                         mov               eax, dword ptr [ebx]                          // 0x00640576    8b03
                         {disp8} lea       edi, dword ptr [ebx + 0x14]                   // 0x00640578    8d7b14
                         mov               ecx, 0x0000000c                               // 0x0064057b    b90c000000
                         {disp32} lea      esi, dword ptr [esp + 0x00000084]             // 0x00640580    8db42484000000
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x00640587    f3a5
                         mov               edx, 0x00000001                               // 0x00640589    ba01000000
                         mov.s             ecx, ebx                                      // 0x0064058e    8bcb
                         {disp8} mov       dword ptr [ebx + 0x4c], 0xffffffff            // 0x00640590    c7434cffffffff
                         {disp8} mov       dword ptr [ebx + 0x50], 0x00000000            // 0x00640597    c7435000000000
                         call              dword ptr [eax + 0xa0]                        // 0x0064059e    ff90a0000000
                         mov               eax, dword ptr [ebx]                          // 0x006405a4    8b03
                         mov               edx, 0x00000001                               // 0x006405a6    ba01000000
                         mov.s             ecx, ebx                                      // 0x006405ab    8bcb
                         call              dword ptr [eax + 0x58]                        // 0x006405ad    ff5058
                         mov               edx, dword ptr [ebx]                          // 0x006405b0    8b13
                         mov.s             ecx, ebx                                      // 0x006405b2    8bcb
                         call              dword ptr [edx + 0x108]                       // 0x006405b4    ff9208010000
                         {disp32} jmp      _jmp_addr_0x00640129                          // 0x006405ba    e96afbffff
_jmp_addr_0x006405bf:    call              ?FinishFrame@LH3DRender@@QAEXXZ               // 0x006405bf    e89cee1e00
                         push              0x1                                           // 0x006405c4    6a01
                         mov               ecx, 0x00e85050                               // 0x006405c6    b95050e800
                         call              _jmp_addr_0x007de090                          // 0x006405cb    e8c0da1900
                         push              0x000007d0                                    // 0x006405d0    68d0070000
                         call              __sleep                                       // 0x006405d5    e8f4951800
                         add               esp, 0x04                                     // 0x006405da    83c404
                         pop               edi                                           // 0x006405dd    5f
                         pop               esi                                           // 0x006405de    5e
                         pop               ebp                                           // 0x006405df    5d
                         mov               eax, 0x00000001                               // 0x006405e0    b801000000
                         pop               ebx                                           // 0x006405e5    5b
                         add               esp, 0x00000cfc                               // 0x006405e6    81c4fc0c0000
                         ret                                                             // 0x006405ec    c3
                         nop                                                             // 0x006405ed    90
                         nop                                                             // 0x006405ee    90
                         nop                                                             // 0x006405ef    90
_jmp_addr_0x006405f0:    {disp32} mov      ecx, dword ptr [_game]                        // 0x006405f0    8b0d5c19d000
                         sub               esp, 0x0000025c                               // 0x006405f6    81ec5c020000
                         push              ebx                                           // 0x006405fc    53
                         push              esi                                           // 0x006405fd    56
                         push              edi                                           // 0x006405fe    57
                         {disp8} lea       eax, dword ptr [esp + 0x68]                   // 0x006405ff    8d442468
                         push              eax                                           // 0x00640603    50
                         add               ecx, 0x00250310                               // 0x00640604    81c110032500
                         call              _jmp_addr_0x0078ea20                          // 0x0064060a    e811e41400
                         or                ecx, 0xffffffff                               // 0x0064060f    83c9ff
                         xor.s             eax, eax                                      // 0x00640612    33c0
                         mov               edi, 0x00bfe2f4                               // 0x00640614    bff4e2bf00
                         repne scasb                                                     // 0x00640619    f2ae
                         not               ecx                                           // 0x0064061b    f7d1
                         sub.s             edi, ecx                                      // 0x0064061d    2bf9
                         mov.s             ebx, ecx                                      // 0x0064061f    8bd9
                         or                ecx, 0xffffffff                               // 0x00640621    83c9ff
                         mov.s             esi, edi                                      // 0x00640624    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x68]                   // 0x00640626    8d542468
                         mov.s             edi, edx                                      // 0x0064062a    8bfa
                         repne scasb                                                     // 0x0064062c    f2ae
                         mov.s             ecx, ebx                                      // 0x0064062e    8bcb
                         shr               ecx, 2                                        // 0x00640630    c1e902
                         dec               edi                                           // 0x00640633    4f
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x00640634    f3a5
                         mov.s             ecx, ebx                                      // 0x00640636    8bcb
                         {disp8} lea       eax, dword ptr [esp + 0x68]                   // 0x00640638    8d442468
                         and               ecx, 0x03                                     // 0x0064063c    83e103
                         push              0x009ce5dc                                    // 0x0064063f    68dce59c00
                         push              eax                                           // 0x00640644    50
                         rep movsb                                                       // 0x00640645    f3a4
                         call              _fopen                                        // 0x00640647    e8d1671800
                         mov.s             esi, eax                                      // 0x0064064c    8bf0
                         add               esp, 0x08                                     // 0x0064064e    83c408
                         test              esi, esi                                      // 0x00640651    85f6
                         {disp8} jne       _jmp_addr_0x0064065f                          // 0x00640653    750a
                         pop               edi                                           // 0x00640655    5f
                         pop               esi                                           // 0x00640656    5e
                         pop               ebx                                           // 0x00640657    5b
                         add               esp, 0x0000025c                               // 0x00640658    81c45c020000
                         ret                                                             // 0x0064065e    c3
_jmp_addr_0x0064065f:    push              ebp                                           // 0x0064065f    55
                         push              esi                                           // 0x00640660    56
                         push              0x2                                           // 0x00640661    6a02
                         mov               ebp, 0x00000001                               // 0x00640663    bd01000000
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x00640668    8d4c2418
                         push              ebp                                           // 0x0064066c    55
                         push              ecx                                           // 0x0064066d    51
                         {disp8} mov       dword ptr [esp + 0x20], 0x00000969            // 0x0064066e    c744242069090000
                         call              _fwrite                                       // 0x00640676    e8276f1800
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0064067b    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x00640681    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x00640683    8a81595a2000
                         add               esp, 0x10                                     // 0x00640689    83c410
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0064068c    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0064068f    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x00640692    8d0450
                         shl               eax, 5                                        // 0x00640695    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x00640698    8d4c0818
                         call              ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0064069c    e8efa00000
                         push              esi                                           // 0x006406a1    56
                         push              0x4                                           // 0x006406a2    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x006406a4    8d4c2418
                         push              ebp                                           // 0x006406a8    55
                         push              ecx                                           // 0x006406a9    51
                         {disp8} mov       dword ptr [esp + 0x20], eax                   // 0x006406aa    89442420
                         call              _fwrite                                       // 0x006406ae    e8ef6e1800
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x006406b3    8b0d5c19d000
                         add               esp, 0x10                                     // 0x006406b9    83c410
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x006406bc    e8bfbaf0ff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x006406c1    8b0dc01dea00
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x006406c7    8b15b81dea00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x006406cd    a1bc1dea00
                         {disp8} mov       dword ptr [esp + 0x5c], ecx                   // 0x006406d2    894c245c
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x006406d6    8b0d5c19d000
                         {disp8} mov       dword ptr [esp + 0x54], edx                   // 0x006406dc    89542454
                         {disp8} mov       dword ptr [esp + 0x58], eax                   // 0x006406e0    89442458
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x006406e4    e897baf0ff
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4dbdc4]        // 0x006406e9    8b15c41dea00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4dbdc8]        // 0x006406ef    a1c81dea00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4dbdcc]        // 0x006406f4    8b0dcc1dea00
                         push              esi                                           // 0x006406fa    56
                         push              0xc                                           // 0x006406fb    6a0c
                         {disp8} mov       dword ptr [esp + 0x44], edx                   // 0x006406fd    89542444
                         {disp8} mov       dword ptr [esp + 0x68], edx                   // 0x00640701    89542468
                         {disp8} lea       edx, dword ptr [esp + 0x5c]                   // 0x00640705    8d54245c
                         push              ebp                                           // 0x00640709    55
                         push              edx                                           // 0x0064070a    52
                         {disp8} mov       dword ptr [esp + 0x50], eax                   // 0x0064070b    89442450
                         {disp8} mov       dword ptr [esp + 0x54], ecx                   // 0x0064070f    894c2454
                         {disp8} mov       dword ptr [esp + 0x74], eax                   // 0x00640713    89442474
                         {disp8} mov       dword ptr [esp + 0x78], ecx                   // 0x00640717    894c2478
                         call              _fwrite                                       // 0x0064071b    e8826e1800
                         push              esi                                           // 0x00640720    56
                         push              0xc                                           // 0x00640721    6a0c
                         {disp8} lea       eax, dword ptr [esp + 0x78]                   // 0x00640723    8d442478
                         push              ebp                                           // 0x00640727    55
                         push              eax                                           // 0x00640728    50
                         call              _fwrite                                       // 0x00640729    e8746e1800
                         add               esp, 0x20                                     // 0x0064072e    83c420
                         mov               ecx, OFFSET _GGameInfo_00d019f8               // 0x00640731    b9f819d000
                         call              ?GetVisualTime@GGameInfo@@QAEMXZ              // 0x00640736    e8656ef1ff
                         {disp8} fstp      dword ptr [esp + 0x24]                        // 0x0064073b    d95c2424
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                   // 0x0064073f    8b4c2424
                         push              ecx                                           // 0x00640743    51
                         call              ?Time2SkyType@LH3DSky@@QAEMM@Z                // 0x00640744    e8679a2200
                         {disp8} fstp      dword ptr [esp + 0x54]                        // 0x00640749    d95c2454
                         {disp32} fld      dword ptr [data_bytes + 0x22d37c]             // 0x0064074d    d9057c33bf00
                         push              esi                                           // 0x00640753    56
                         {disp32} fmul     dword ptr [_rdata_float0p5]                   // 0x00640754    d80db4a38a00
                         push              0x4                                           // 0x0064075a    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x30]                   // 0x0064075c    8d542430
                         push              ebp                                           // 0x00640760    55
                         push              edx                                           // 0x00640761    52
                         {disp8} fstp      dword ptr [esp + 0x5c]                        // 0x00640762    d95c245c
                         call              _fwrite                                       // 0x00640766    e8376e1800
                         push              esi                                           // 0x0064076b    56
                         push              0x4                                           // 0x0064076c    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x6c]                   // 0x0064076e    8d44246c
                         push              ebp                                           // 0x00640772    55
                         push              eax                                           // 0x00640773    50
                         call              _fwrite                                       // 0x00640774    e8296e1800
                         push              esi                                           // 0x00640779    56
                         push              0x4                                           // 0x0064077a    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x74]                   // 0x0064077c    8d4c2474
                         push              ebp                                           // 0x00640780    55
                         push              ecx                                           // 0x00640781    51
                         call              _fwrite                                       // 0x00640782    e81b6e1800
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00640787    8b0d5c19d000
                         add               esp, 0x34                                     // 0x0064078d    83c434
                         push              esi                                           // 0x00640790    56
                         push              0x8                                           // 0x00640791    6a08
                         push              ebp                                           // 0x00640793    55
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00640794    e8e7b9f0ff
                         add               eax, 0x00000080                               // 0x00640799    0580000000
                         push              eax                                           // 0x0064079e    50
                         call              _fwrite                                       // 0x0064079f    e8fe6d1800
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x006407a4    8b0d5c19d000
                         add               esp, 0x10                                     // 0x006407aa    83c410
                         mov               ebx, 0x00bec798                               // 0x006407ad    bb98c7be00
                         call              ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006407b2    e8c927f1ff
                         test              eax, eax                                      // 0x006407b7    85c0
                         {disp8} je        _jmp_addr_0x006407f6                          // 0x006407b9    743b
                         push              esi                                           // 0x006407bb    56
                         push              0x4                                           // 0x006407bc    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x006407be    8d54241c
                         push              ebp                                           // 0x006407c2    55
                         push              edx                                           // 0x006407c3    52
                         {disp8} mov       dword ptr [esp + 0x24], ebp                   // 0x006407c4    896c2424
                         call              _fwrite                                       // 0x006407c8    e8d56d1800
                         {disp32} mov      eax, dword ptr [_game]                        // 0x006407cd    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00205b80]             // 0x006407d2    8b88805b2000
                         {disp32} mov      eax, dword ptr [ecx + 0x000000a0]             // 0x006407d8    8b81a0000000
                         {disp8} mov       ecx, dword ptr [eax + 0x6c]                   // 0x006407de    8b486c
                         add               esp, 0x10                                     // 0x006407e1    83c410
                         test              ecx, ecx                                      // 0x006407e4    85c9
                         {disp8} je        _jmp_addr_0x00640814                          // 0x006407e6    742c
                         {disp8} mov       ebx, dword ptr [eax + 0x68]                   // 0x006407e8    8b5868
                         test              ebx, ebx                                      // 0x006407eb    85db
                         {disp8} jne       _jmp_addr_0x00640814                          // 0x006407ed    7525
                         mov               ebx, 0x00bec798                               // 0x006407ef    bb98c7be00
                         {disp8} jmp       _jmp_addr_0x00640814                          // 0x006407f4    eb1e
_jmp_addr_0x006407f6:    push              esi                                           // 0x006407f6    56
                         push              0x4                                           // 0x006407f7    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x006407f9    8d54241c
                         push              ebp                                           // 0x006407fd    55
                         push              edx                                           // 0x006407fe    52
                         {disp8} mov       dword ptr [esp + 0x24], 0x00000000            // 0x006407ff    c744242400000000
                         call              _fwrite                                       // 0x00640807    e8966d1800
                         add               esp, 0x10                                     // 0x0064080c    83c410
                         mov               ebx, OFFSET _CHAR_ARRAY_00d99648              // 0x0064080f    bb4896d900
_jmp_addr_0x00640814:    or                ecx, 0xffffffff                               // 0x00640814    83c9ff
                         xor.s             eax, eax                                      // 0x00640817    33c0
                         mov.s             edi, ebx                                      // 0x00640819    8bfb
                         repne scasb                                                     // 0x0064081b    f2ae
                         push              esi                                           // 0x0064081d    56
                         push              0x4                                           // 0x0064081e    6a04
                         not               ecx                                           // 0x00640820    f7d1
                         {disp8} lea       eax, dword ptr [esp + 0x18]                   // 0x00640822    8d442418
                         dec               ecx                                           // 0x00640826    49
                         push              ebp                                           // 0x00640827    55
                         push              eax                                           // 0x00640828    50
                         {disp8} mov       dword ptr [esp + 0x20], ecx                   // 0x00640829    894c2420
                         call              _fwrite                                       // 0x0064082d    e8706d1800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]                   // 0x00640832    8b4c2420
                         push              esi                                           // 0x00640836    56
                         push              ecx                                           // 0x00640837    51
                         push              ebp                                           // 0x00640838    55
                         push              ebx                                           // 0x00640839    53
                         call              _fwrite                                       // 0x0064083a    e8636d1800
                         add               esp, 0x20                                     // 0x0064083f    83c420
                         xor.s             eax, eax                                      // 0x00640842    33c0
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x00640844    89442410
_jmp_addr_0x00640848:    {disp32} mov      ecx, dword ptr [_game]                        // 0x00640848    8b0d5c19d000
                         {disp32} mov      edx, dword ptr [ecx + 0x00250538]             // 0x0064084e    8b9138052500
                         test              edx, edx                                      // 0x00640854    85d2
                         {disp32} je       _jmp_addr_0x00640b65                          // 0x00640856    0f8409030000
                         push              eax                                           // 0x0064085c    50
                         call              ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0064085d    e84e01f1ff
                         mov.s             ebx, eax                                      // 0x00640862    8bd8
                         test              ebx, ebx                                      // 0x00640864    85db
                         {disp32} je       _jmp_addr_0x00640b65                          // 0x00640866    0f84f9020000
                         {disp32} mov      ecx, dword ptr [ebx + 0x00000a4c]             // 0x0064086c    8b8b4c0a0000
                         test              ecx, ecx                                      // 0x00640872    85c9
                         {disp32} je       _jmp_addr_0x00640b65                          // 0x00640874    0f84eb020000
                         cmp               dword ptr [ebx + 0x000008e0], ebp             // 0x0064087a    39abe0080000
                         {disp32} jne      _jmp_addr_0x00640b65                          // 0x00640880    0f85df020000
                         call              ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00640886    e8c56fe3ff
                         mov.s             ecx, ebx                                      // 0x0064088b    8bcb
                         mov.s             edi, eax                                      // 0x0064088d    8bf8
                         call              _jmp_addr_0x0064a9f0                          // 0x0064088f    e85ca10000
                         mov.s             ecx, eax                                      // 0x00640894    8bc8
                         call              ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                          // 0x00640896    e815c0f9ff
                         {disp32} mov      eax, dword ptr [eax + 0x000001bc]             // 0x0064089b    8b80bc010000
                         {disp32} mov      edx, dword ptr [_game]                        // 0x006408a1    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x00205b80]             // 0x006408a7    8b8a805b2000
                         push              eax                                           // 0x006408ad    50
                         call              dword ptr [rdata_bytes + 0x63c]               // 0x006408ae    ff153c968a00
                         test              edi, edi                                      // 0x006408b4    85ff
                         mov.s             ebx, eax                                      // 0x006408b6    8bd8
                         {disp32} je       _jmp_addr_0x00640b65                          // 0x006408b8    0f84a7020000
                         test              ebx, ebx                                      // 0x006408be    85db
                         {disp32} je       _jmp_addr_0x00640b65                          // 0x006408c0    0f849f020000
                         push              esi                                           // 0x006408c6    56
                         push              0x4                                           // 0x006408c7    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x18]                   // 0x006408c9    8d442418
                         push              ebp                                           // 0x006408cd    55
                         push              eax                                           // 0x006408ce    50
                         call              _fwrite                                       // 0x006408cf    e8ce6c1800
                         push              esi                                           // 0x006408d4    56
                         push              0x00000828                                    // 0x006408d5    6828080000
                         push              ebp                                           // 0x006408da    55
                         push              ebx                                           // 0x006408db    53
                         call              _fwrite                                       // 0x006408dc    e8c16c1800
                         {disp32} mov      ecx, dword ptr [edi + 0x000047b8]             // 0x006408e1    8b8fb8470000
                         {disp32} mov      ebx, dword ptr [edi + 0x000047f0]             // 0x006408e7    8b9ff0470000
                         push              esi                                           // 0x006408ed    56
                         push              0x4                                           // 0x006408ee    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x48]                   // 0x006408f0    8d542448
                         push              ebp                                           // 0x006408f4    55
                         push              edx                                           // 0x006408f5    52
                         {disp8} mov       dword ptr [esp + 0x50], ecx                   // 0x006408f6    894c2450
                         call              _fwrite                                       // 0x006408fa    e8a36c1800
                         {disp8} mov       eax, dword ptr [esp + 0x50]                   // 0x006408ff    8b442450
                         push              esi                                           // 0x00640903    56
                         push              0x30                                          // 0x00640904    6a30
                         push              eax                                           // 0x00640906    50
                         push              ebx                                           // 0x00640907    53
                         call              _fwrite                                       // 0x00640908    e8956c1800
                         {disp32} fld      dword ptr [edi + 0x00000090]                  // 0x0064090d    d98790000000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x19c40]             // 0x00640913    d80d402c8c00
                         add               esp, 0x40                                     // 0x00640919    83c440
                         mov.s             ecx, edi                                      // 0x0064091c    8bcf
                         {disp8} fstp      dword ptr [esp + 0x2c]                        // 0x0064091e    d95c242c
                         call              _jmp_addr_0x004ec450                          // 0x00640922    e829bbeaff
                         push              esi                                           // 0x00640927    56
                         {disp8} fstp      dword ptr [esp + 0x3c]                        // 0x00640928    d95c243c
                         push              0x4                                           // 0x0064092c    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x34]                   // 0x0064092e    8d4c2434
                         push              ebp                                           // 0x00640932    55
                         push              ecx                                           // 0x00640933    51
                         call              _fwrite                                       // 0x00640934    e8696c1800
                         push              esi                                           // 0x00640939    56
                         push              0x4                                           // 0x0064093a    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x50]                   // 0x0064093c    8d542450
                         push              ebp                                           // 0x00640940    55
                         push              edx                                           // 0x00640941    52
                         call              _fwrite                                       // 0x00640942    e85b6c1800
                         {disp32} mov      eax, dword ptr [edi + 0x0000482c]             // 0x00640947    8b872c480000
                         push              esi                                           // 0x0064094d    56
                         push              0x4                                           // 0x0064094e    6a04
                         add               eax, 0x000000a0                               // 0x00640950    05a0000000
                         push              ebp                                           // 0x00640955    55
                         push              eax                                           // 0x00640956    50
                         call              _fwrite                                       // 0x00640957    e8466c1800
                         {disp32} mov      ecx, dword ptr [edi + 0x0000482c]             // 0x0064095c    8b8f2c480000
                         push              esi                                           // 0x00640962    56
                         push              0x4                                           // 0x00640963    6a04
                         add               ecx, 0x000000a4                               // 0x00640965    81c1a4000000
                         push              ebp                                           // 0x0064096b    55
                         push              ecx                                           // 0x0064096c    51
                         call              _fwrite                                       // 0x0064096d    e8306c1800
                         {disp32} mov      edx, dword ptr [edi + 0x0000482c]             // 0x00640972    8b972c480000
                         add               esp, 0x40                                     // 0x00640978    83c440
                         push              esi                                           // 0x0064097b    56
                         push              0x4                                           // 0x0064097c    6a04
                         add               edx, 0x000000a8                               // 0x0064097e    81c2a8000000
                         push              ebp                                           // 0x00640984    55
                         push              edx                                           // 0x00640985    52
                         call              _fwrite                                       // 0x00640986    e8176c1800
                         {disp32} mov      eax, dword ptr [edi + 0x0000482c]             // 0x0064098b    8b872c480000
                         push              esi                                           // 0x00640991    56
                         push              0x4                                           // 0x00640992    6a04
                         add               eax, 0x00000098                               // 0x00640994    0598000000
                         push              ebp                                           // 0x00640999    55
                         push              eax                                           // 0x0064099a    50
                         call              _fwrite                                       // 0x0064099b    e8026c1800
                         {disp32} mov      ecx, dword ptr [edi + 0x0000482c]             // 0x006409a0    8b8f2c480000
                         push              esi                                           // 0x006409a6    56
                         push              0x4                                           // 0x006409a7    6a04
                         add               ecx, 0x00000094                               // 0x006409a9    81c194000000
                         push              ebp                                           // 0x006409af    55
                         push              ecx                                           // 0x006409b0    51
                         call              _fwrite                                       // 0x006409b1    e8ec6b1800
                         {disp32} mov      edx, dword ptr [edi + 0x0000482c]             // 0x006409b6    8b972c480000
                         push              esi                                           // 0x006409bc    56
                         push              0x30                                          // 0x006409bd    6a30
                         add               edx, 0x14                                     // 0x006409bf    83c214
                         push              ebp                                           // 0x006409c2    55
                         push              edx                                           // 0x006409c3    52
                         call              _fwrite                                       // 0x006409c4    e8d96b1800
                         add               esp, 0x40                                     // 0x006409c9    83c440
                         push              esi                                           // 0x006409cc    56
                         push              0x4                                           // 0x006409cd    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x30]                   // 0x006409cf    8d442430
                         push              ebp                                           // 0x006409d3    55
                         push              eax                                           // 0x006409d4    50
                         {disp8} mov       dword ptr [esp + 0x38], 0x000057b8            // 0x006409d5    c7442438b8570000
                         call              _fwrite                                       // 0x006409dd    e8c06b1800
                         {disp8} mov       ecx, dword ptr [esp + 0x38]                   // 0x006409e2    8b4c2438
                         push              esi                                           // 0x006409e6    56
                         push              ecx                                           // 0x006409e7    51
                         push              ebp                                           // 0x006409e8    55
                         push              edi                                           // 0x006409e9    57
                         call              _fwrite                                       // 0x006409ea    e8b36b1800
                         {disp32} mov      ecx, dword ptr [edi + 0x000048d0]             // 0x006409ef    8b8fd0480000
                         add               esp, 0x20                                     // 0x006409f5    83c420
                         test              ecx, ecx                                      // 0x006409f8    85c9
                         {disp32} je       _jmp_addr_0x00640b4c                          // 0x006409fa    0f844c010000
                         mov               edx, dword ptr [ecx]                          // 0x00640a00    8b11
                         call              dword ptr [edx + 0x34]                        // 0x00640a02    ff5234
                         test              eax, eax                                      // 0x00640a05    85c0
                         {disp32} jne      _jmp_addr_0x00640b4c                          // 0x00640a07    0f853f010000
                         {disp32} mov      eax, dword ptr [edi + 0x000048d0]             // 0x00640a0d    8b87d0480000
                         {disp8} mov       ecx, dword ptr [eax + 0x40]                   // 0x00640a13    8b4840
                         test              ecx, ecx                                      // 0x00640a16    85c9
                         {disp32} je       _jmp_addr_0x00640b4c                          // 0x00640a18    0f842e010000
                         push              esi                                           // 0x00640a1e    56
                         push              0x4                                           // 0x00640a1f    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x54]                   // 0x00640a21    8d4c2454
                         push              ebp                                           // 0x00640a25    55
                         push              ecx                                           // 0x00640a26    51
                         {disp8} mov       dword ptr [esp + 0x5c], ebp                   // 0x00640a27    896c245c
                         call              _fwrite                                       // 0x00640a2b    e8726b1800
                         {disp32} mov      ecx, dword ptr [edi + 0x000048d0]             // 0x00640a30    8b8fd0480000
                         mov               edx, dword ptr [ecx]                          // 0x00640a36    8b11
                         add               esp, 0x10                                     // 0x00640a38    83c410
                         call              dword ptr [edx + 0x608]                       // 0x00640a3b    ff9208060000
                         {disp8} mov       dword ptr [esp + 0x34], eax                   // 0x00640a41    89442434
                         {disp32} mov      eax, dword ptr [edi + 0x000048d0]             // 0x00640a45    8b87d0480000
                         {disp8} mov       ecx, dword ptr [eax + 0x40]                   // 0x00640a4b    8b4840
                         mov               edx, dword ptr [ecx]                          // 0x00640a4e    8b11
                         call              dword ptr [edx + 0x184]                       // 0x00640a50    ff9284010000
                         xor.s             ecx, ecx                                      // 0x00640a56    33c9
                         {disp8} mov       dword ptr [esp + 0x1c], eax                   // 0x00640a58    8944241c
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517508]        // 0x00640a5c    a108d5ed00
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x00640a61    894c2418
_jmp_addr_0x00640a65:    cmp               ecx, dword ptr [eax]                          // 0x00640a65    3b08
                         {disp8} jge       _jmp_addr_0x00640a73                          // 0x00640a67    7d0a
                         test              ecx, ecx                                      // 0x00640a69    85c9
                         {disp8} jl        _jmp_addr_0x00640a73                          // 0x00640a6b    7c06
                         {disp8} mov       edx, dword ptr [eax + ecx * 0x4 + 0x04]       // 0x00640a6d    8b548804
                         {disp8} jmp       _jmp_addr_0x00640a76                          // 0x00640a71    eb03
_jmp_addr_0x00640a73:    {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x00640a73    8b5004
_jmp_addr_0x00640a76:    cmp               edx, dword ptr [esp + 0x1c]                   // 0x00640a76    3b54241c
                         {disp8} je        _jmp_addr_0x00640a89                          // 0x00640a7a    740d
                         inc               ecx                                           // 0x00640a7c    41
                         cmp               ecx, 0x000001b9                               // 0x00640a7d    81f9b9010000
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x00640a83    894c2418
                         {disp8} jl        _jmp_addr_0x00640a65                          // 0x00640a87    7cdc
_jmp_addr_0x00640a89:    xor.s             ebp, ebp                                      // 0x00640a89    33ed
                         cmp               ecx, 0x000001b9                               // 0x00640a8b    81f9b9010000
                         {disp8} mov       dword ptr [esp + 0x14], ebp                   // 0x00640a91    896c2414
                         {disp8} jne       _jmp_addr_0x00640aa1                          // 0x00640a95    750a
                         {disp8} mov       dword ptr [esp + 0x18], 0xffffffff            // 0x00640a97    c7442418ffffffff
                         {disp8} jmp       _jmp_addr_0x00640ab6                          // 0x00640a9f    eb15
_jmp_addr_0x00640aa1:    {disp32} mov      eax, dword ptr [edi + 0x000048d0]             // 0x00640aa1    8b87d0480000
                         {disp8} mov       ecx, dword ptr [eax + 0x40]                   // 0x00640aa7    8b4840
                         mov               edx, dword ptr [ecx]                          // 0x00640aaa    8b11
                         call              dword ptr [edx + 0x18c]                       // 0x00640aac    ff928c010000
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x00640ab2    89442414
_jmp_addr_0x00640ab6:    push              esi                                           // 0x00640ab6    56
                         {disp8} mov       dword ptr [esp + 0x34], ebp                   // 0x00640ab7    896c2434
                         push              0x4                                           // 0x00640abb    6a04
                         mov               ebp, 0x00000001                               // 0x00640abd    bd01000000
                         {disp8} lea       eax, dword ptr [esp + 0x38]                   // 0x00640ac2    8d442438
                         push              ebp                                           // 0x00640ac6    55
                         push              eax                                           // 0x00640ac7    50
                         call              _fwrite                                       // 0x00640ac8    e8d56a1800
                         add               esp, 0x10                                     // 0x00640acd    83c410
                         push              ebx                                           // 0x00640ad0    53
                         mov.s             ecx, edi                                      // 0x00640ad1    8bcf
                         call              _jmp_addr_0x0048f280                          // 0x00640ad3    e8a8e7e4ff
                         push              esi                                           // 0x00640ad8    56
                         push              0x4                                           // 0x00640ad9    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x1c]                   // 0x00640adb    8d4c241c
                         push              ebp                                           // 0x00640adf    55
                         push              ecx                                           // 0x00640ae0    51
                         call              _fwrite                                       // 0x00640ae1    e8bc6a1800
                         push              esi                                           // 0x00640ae6    56
                         push              ebp                                           // 0x00640ae7    55
                         {disp8} lea       edx, dword ptr [esp + 0x4c]                   // 0x00640ae8    8d54244c
                         push              0x4                                           // 0x00640aec    6a04
                         push              edx                                           // 0x00640aee    52
                         call              _fwrite                                       // 0x00640aef    e8ae6a1800
                         push              esi                                           // 0x00640af4    56
                         push              ebp                                           // 0x00640af5    55
                         {disp8} lea       eax, dword ptr [esp + 0x40]                   // 0x00640af6    8d442440
                         push              0x4                                           // 0x00640afa    6a04
                         push              eax                                           // 0x00640afc    50
                         call              _fwrite                                       // 0x00640afd    e8a06a1800
                         {disp32} mov      ecx, dword ptr [edi + 0x000048d0]             // 0x00640b02    8b8fd0480000
                         {disp8} mov       edx, dword ptr [ecx + 0x40]                   // 0x00640b08    8b5140
                         push              esi                                           // 0x00640b0b    56
                         push              ebp                                           // 0x00640b0c    55
                         add               edx, 0x14                                     // 0x00640b0d    83c214
                         push              0x30                                          // 0x00640b10    6a30
                         push              edx                                           // 0x00640b12    52
                         call              _fwrite                                       // 0x00640b13    e88a6a1800
                         {disp32} mov      eax, dword ptr [edi + 0x000048d0]             // 0x00640b18    8b87d0480000
                         {disp8} mov       ecx, dword ptr [eax + 0x40]                   // 0x00640b1e    8b4840
                         add               esp, 0x40                                     // 0x00640b21    83c440
                         push              esi                                           // 0x00640b24    56
                         push              ebp                                           // 0x00640b25    55
                         add               ecx, 0x4c                                     // 0x00640b26    83c14c
                         push              0x4                                           // 0x00640b29    6a04
                         push              ecx                                           // 0x00640b2b    51
                         call              _fwrite                                       // 0x00640b2c    e8716a1800
                         {disp32} mov      edx, dword ptr [edi + 0x000048d0]             // 0x00640b31    8b97d0480000
                         {disp8} mov       eax, dword ptr [edx + 0x40]                   // 0x00640b37    8b4240
                         push              esi                                           // 0x00640b3a    56
                         push              ebp                                           // 0x00640b3b    55
                         add               eax, 0x50                                     // 0x00640b3c    83c050
                         push              0x4                                           // 0x00640b3f    6a04
                         push              eax                                           // 0x00640b41    50
                         call              _fwrite                                       // 0x00640b42    e85b6a1800
                         add               esp, 0x20                                     // 0x00640b47    83c420
                         {disp8} jmp       _jmp_addr_0x00640b65                          // 0x00640b4a    eb19
_jmp_addr_0x00640b4c:    push              esi                                           // 0x00640b4c    56
                         push              0x4                                           // 0x00640b4d    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x24]                   // 0x00640b4f    8d4c2424
                         push              ebp                                           // 0x00640b53    55
                         push              ecx                                           // 0x00640b54    51
                         {disp8} mov       dword ptr [esp + 0x2c], 0x00000000            // 0x00640b55    c744242c00000000
                         call              _fwrite                                       // 0x00640b5d    e8406a1800
                         add               esp, 0x10                                     // 0x00640b62    83c410
_jmp_addr_0x00640b65:    {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x00640b65    8b442410
                         inc               eax                                           // 0x00640b69    40
                         cmp               eax, 0x08                                     // 0x00640b6a    83f808
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x00640b6d    89442410
                         {disp32} jl       _jmp_addr_0x00640848                          // 0x00640b71    0f8cd1fcffff
                         push              esi                                           // 0x00640b77    56
                         push              0x4                                           // 0x00640b78    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x18]                   // 0x00640b7a    8d542418
                         push              ebp                                           // 0x00640b7e    55
                         push              edx                                           // 0x00640b7f    52
                         {disp8} mov       dword ptr [esp + 0x20], 0xffffffff            // 0x00640b80    c7442420ffffffff
                         call              _fwrite                                       // 0x00640b88    e8156a1800
                         push              esi                                           // 0x00640b8d    56
                         call              _fclose                                       // 0x00640b8e    e89d621800
                         add               esp, 0x14                                     // 0x00640b93    83c414
                         mov.s             eax, ebp                                      // 0x00640b96    8bc5
                         pop               ebp                                           // 0x00640b98    5d
                         pop               edi                                           // 0x00640b99    5f
                         pop               esi                                           // 0x00640b9a    5e
                         pop               ebx                                           // 0x00640b9b    5b
                         add               esp, 0x0000025c                               // 0x00640b9c    81c45c020000
                         ret                                                             // 0x00640ba2    c3
                         nop                                                             // 0x00640ba3    90
                         nop                                                             // 0x00640ba4    90
                         nop                                                             // 0x00640ba5    90
                         nop                                                             // 0x00640ba6    90
                         nop                                                             // 0x00640ba7    90
                         nop                                                             // 0x00640ba8    90
                         nop                                                             // 0x00640ba9    90
                         nop                                                             // 0x00640baa    90
                         nop                                                             // 0x00640bab    90
                         nop                                                             // 0x00640bac    90
                         nop                                                             // 0x00640bad    90
                         nop                                                             // 0x00640bae    90
                         nop                                                             // 0x00640baf    90
                         push              ebp                                           // 0x00640bb0    55
                         mov.s             ebp, esp                                      // 0x00640bb1    8bec
                         and               esp, 0xfffffff8                               // 0x00640bb3    83e4f8
                         push              ecx                                           // 0x00640bb6    51
                         {disp8} mov       eax, dword ptr [ebp + 0x08]                   // 0x00640bb7    8b4508
                         push              ebx                                           // 0x00640bba    53
                         push              esi                                           // 0x00640bbb    56
                         push              edi                                           // 0x00640bbc    57
                         {disp32} mov      edi, dword ptr [eax + 0x00005198]             // 0x00640bbd    8bb898510000
                         push              0x009cd0bc                                    // 0x00640bc3    68bcd09c00
                         push              0x00bfe36c                                    // 0x00640bc8    686ce3bf00
                         call              _fopen                                        // 0x00640bcd    e84b621800
                         mov.s             esi, eax                                      // 0x00640bd2    8bf0
                         add               esp, 0x08                                     // 0x00640bd4    83c408
                         test              esi, esi                                      // 0x00640bd7    85f6
                         {disp8} mov       dword ptr [esp + 0x0c], esi                   // 0x00640bd9    8974240c
                         {disp32} je       _jmp_addr_0x00640c91                          // 0x00640bdd    0f84ae000000
                         {disp32} fld      dword ptr [edi + 0x00050020]                  // 0x00640be3    d98720000500
                         {disp32} mov      ecx, dword ptr [edi + 0x00050000]             // 0x00640be9    8b8f00000500
                         push              0x40a40000                                    // 0x00640bef    680000a440
                         push              0x0                                           // 0x00640bf4    6a00
                         push              0x40a40000                                    // 0x00640bf6    680000a440
                         push              0x0                                           // 0x00640bfb    6a00
                         sub               esp, 0x08                                     // 0x00640bfd    83ec08
                         fstp              qword ptr [esp]                               // 0x00640c00    dd1c24
                         push              0x3ff00000                                    // 0x00640c03    680000f03f
                         push              0x0                                           // 0x00640c08    6a00
                         push              ecx                                           // 0x00640c0a    51
                         push              0x0                                           // 0x00640c0b    6a00
                         push              0x00bfe358                                    // 0x00640c0d    6858e3bf00
                         push              esi                                           // 0x00640c12    56
                         call              _fprintf                                      // 0x00640c13    e898611800
                         {disp32} mov      eax, dword ptr [edi + 0x00050000]             // 0x00640c18    8b8700000500
                         add               esp, 0x30                                     // 0x00640c1e    83c430
                         xor.s             ebx, ebx                                      // 0x00640c21    33db
                         test              eax, eax                                      // 0x00640c23    85c0
                         {disp8} jle       _jmp_addr_0x00640c70                          // 0x00640c25    7e49
                         {disp8} lea       esi, dword ptr [edi + 0x0c]                   // 0x00640c27    8d770c
_jmp_addr_0x00640c2a:    {disp8} fld       dword ptr [esi + 0x04]                        // 0x00640c2a    d94604
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x00640c2d    8b54240c
                         {disp32} fsub     dword ptr [edi + 0x00050020]                  // 0x00640c31    d8a720000500
                         sub               esp, 0x08                                     // 0x00640c37    83ec08
                         sub               esp, 0x08                                     // 0x00640c3a    83ec08
                         sub               esp, 0x08                                     // 0x00640c3d    83ec08
                         {disp8} fstp      qword ptr [esp + 0x10]                        // 0x00640c40    dd5c2410
                         fld               dword ptr [esi]                               // 0x00640c44    d906
                         {disp8} fstp      qword ptr [esp + 0x08]                        // 0x00640c46    dd5c2408
                         {disp8} fld       dword ptr [esi + -0x04]                       // 0x00640c4a    d946fc
                         fstp              qword ptr [esp]                               // 0x00640c4d    dd1c24
                         push              0x00bfe34c                                    // 0x00640c50    684ce3bf00
                         push              edx                                           // 0x00640c55    52
                         call              _fprintf                                      // 0x00640c56    e855611800
                         {disp32} mov      eax, dword ptr [edi + 0x00050000]             // 0x00640c5b    8b8700000500
                         add               esp, 0x20                                     // 0x00640c61    83c420
                         add               esi, 0x14                                     // 0x00640c64    83c614
                         inc               ebx                                           // 0x00640c67    43
                         cmp.s             ebx, eax                                      // 0x00640c68    3bd8
                         {disp8} jl        _jmp_addr_0x00640c2a                          // 0x00640c6a    7cbe
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00640c6c    8b74240c
_jmp_addr_0x00640c70:    push              esi                                           // 0x00640c70    56
                         call              _fclose                                       // 0x00640c71    e8ba611800
                         add               esp, 0x04                                     // 0x00640c76    83c404
                         push              0x00bfe330                                    // 0x00640c79    6830e3bf00
                         push              -0x1                                          // 0x00640c7e    6aff
                         mov               ecx, OFFSET _global                           // 0x00640c80    b9203bcd00
                         call              _jmp_addr_0x00591010                          // 0x00640c85    e88603f5ff
                         pop               edi                                           // 0x00640c8a    5f
                         pop               esi                                           // 0x00640c8b    5e
                         pop               ebx                                           // 0x00640c8c    5b
                         mov.s             esp, ebp                                      // 0x00640c8d    8be5
                         pop               ebp                                           // 0x00640c8f    5d
                         ret                                                             // 0x00640c90    c3
_jmp_addr_0x00640c91:    push              0x00bfe30c                                    // 0x00640c91    680ce3bf00
                         push              -0x1                                          // 0x00640c96    6aff
                         mov               ecx, OFFSET _global                           // 0x00640c98    b9203bcd00
                         call              _jmp_addr_0x00591010                          // 0x00640c9d    e86e03f5ff
                         pop               edi                                           // 0x00640ca2    5f
                         pop               esi                                           // 0x00640ca3    5e
                         pop               ebx                                           // 0x00640ca4    5b
                         mov.s             esp, ebp                                      // 0x00640ca5    8be5
                         pop               ebp                                           // 0x00640ca7    5d
                         ret                                                             // 0x00640ca8    c3
                         nop                                                             // 0x00640ca9    90
                         nop                                                             // 0x00640caa    90
                         nop                                                             // 0x00640cab    90
                         nop                                                             // 0x00640cac    90
                         nop                                                             // 0x00640cad    90
                         nop                                                             // 0x00640cae    90
                         nop                                                             // 0x00640caf    90
_jmp_addr_0x00640cb0:    ret               0x0008                                        // 0x00640cb0    c20800
                         nop                                                             // 0x00640cb3    90
                         nop                                                             // 0x00640cb4    90
                         nop                                                             // 0x00640cb5    90
                         nop                                                             // 0x00640cb6    90
                         nop                                                             // 0x00640cb7    90
                         nop                                                             // 0x00640cb8    90
                         nop                                                             // 0x00640cb9    90
                         nop                                                             // 0x00640cba    90
                         nop                                                             // 0x00640cbb    90
                         nop                                                             // 0x00640cbc    90
                         nop                                                             // 0x00640cbd    90
                         nop                                                             // 0x00640cbe    90
                         nop                                                             // 0x00640cbf    90
                         push              esi                                           // 0x00640cc0    56
                         mov.s             esi, ecx                                      // 0x00640cc1    8bf1
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x00640cc3    8b4c2408
                         {disp8} lea       eax, dword ptr [ecx + -0x11]                  // 0x00640cc7    8d41ef
                         cmp               eax, 0x21                                     // 0x00640cca    83f821
                         {disp32} ja       _jmp_addr_0x00640f3b                          // 0x00640ccd    0f8768020000
                         xor.s             edx, edx                                      // 0x00640cd3    33d2
                         {disp32} mov      dl, byte ptr [eax + 0x00640f78]               // 0x00640cd5    8a90780f6400
                         jmp               dword ptr [edx*4 + 0x640f4c]                  // 0x00640cdb    ff24954c0f6400
                         push              0x0                                           // 0x00640ce2    6a00
                         push              0x00bfe598                                    // 0x00640ce4    6898e5bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640ce9    e852e0ffff
                         push              0x1                                           // 0x00640cee    6a01
                         push              0x00bfe578                                    // 0x00640cf0    6878e5bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640cf5    e846e0ffff
                         push              0x1                                           // 0x00640cfa    6a01
                         push              0x00bfe56c                                    // 0x00640cfc    686ce5bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d01    e83ae0ffff
                         push              0x1                                           // 0x00640d06    6a01
                         push              0x00bfe558                                    // 0x00640d08    6858e5bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d0d    e82ee0ffff
                         push              0x1                                           // 0x00640d12    6a01
                         push              0x00bfe544                                    // 0x00640d14    6844e5bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d19    e822e0ffff
                         push              0x1                                           // 0x00640d1e    6a01
                         push              0x00bfe52c                                    // 0x00640d20    682ce5bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d25    e816e0ffff
                         push              0x1                                           // 0x00640d2a    6a01
                         push              0x00bfe510                                    // 0x00640d2c    6810e5bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d31    e80ae0ffff
                         push              0x1                                           // 0x00640d36    6a01
                         push              0x00bfe4f0                                    // 0x00640d38    68f0e4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d3d    e8fedfffff
                         add               esp, 0x40                                     // 0x00640d42    83c440
                         push              0x1                                           // 0x00640d45    6a01
                         push              0x00bfe4cc                                    // 0x00640d47    68cce4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d4c    e8efdfffff
                         push              0x1                                           // 0x00640d51    6a01
                         push              0x00bfe4b0                                    // 0x00640d53    68b0e4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d58    e8e3dfffff
                         add               esp, 0x10                                     // 0x00640d5d    83c410
                         pop               esi                                           // 0x00640d60    5e
                         ret               0x0008                                        // 0x00640d61    c20800
                         push              0x0                                           // 0x00640d64    6a00
                         push              0x00bfe4a0                                    // 0x00640d66    68a0e4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640d6b    e8d0dfffff
                         add               esp, 0x08                                     // 0x00640d70    83c408
                         push              0x0                                           // 0x00640d73    6a00
                         push              0x16                                          // 0x00640d75    6a16
                         mov.s             ecx, esi                                      // 0x00640d77    8bce
                         call              _jmp_addr_0x00640cb0                          // 0x00640d79    e832ffffff
                         xor.s             eax, eax                                      // 0x00640d7e    33c0
                         {disp32} mov      ax, word ptr [rdata_bytes + 0xf861e]          // 0x00640d80    66a11e169a00
                         mov.s             ecx, esi                                      // 0x00640d86    8bce
                         push              eax                                           // 0x00640d88    50
                         push              0x16                                          // 0x00640d89    6a16
                         call              _jmp_addr_0x00640cb0                          // 0x00640d8b    e820ffffff
                         xor.s             ecx, ecx                                      // 0x00640d90    33c9
                         {disp32} mov      cx, word ptr [rdata_bytes + 0xf8620]          // 0x00640d92    668b0d20169a00
                         or                cx, word ptr [0x9a161e]                       // 0x00640d99    660b0d1e169a00
                         push              ecx                                           // 0x00640da0    51
                         push              0x2e                                          // 0x00640da1    6a2e
                         mov.s             ecx, esi                                      // 0x00640da3    8bce
                         call              _jmp_addr_0x00640cb0                          // 0x00640da5    e806ffffff
                         {disp32} mov      byte ptr [data_bytes + 0x33b9d8], 0x01        // 0x00640daa    c605d819d00001
                         pop               esi                                           // 0x00640db1    5e
                         ret               0x0008                                        // 0x00640db2    c20800
                         push              0x0                                           // 0x00640db5    6a00
                         push              0x00bfe48c                                    // 0x00640db7    688ce4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640dbc    e87fdfffff
                         xor.s             edx, edx                                      // 0x00640dc1    33d2
                         {disp32} mov      dx, word ptr [rdata_bytes + 0xf8620]          // 0x00640dc3    668b1520169a00
                         add               esp, 0x08                                     // 0x00640dca    83c408
                         mov.s             ecx, esi                                      // 0x00640dcd    8bce
                         push              edx                                           // 0x00640dcf    52
                         push              0x3                                           // 0x00640dd0    6a03
                         call              _jmp_addr_0x00640cb0                          // 0x00640dd2    e8d9feffff
                         pop               esi                                           // 0x00640dd7    5e
                         ret               0x0008                                        // 0x00640dd8    c20800
                         push              0x0                                           // 0x00640ddb    6a00
                         push              0x00bfe478                                    // 0x00640ddd    6878e4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640de2    e859dfffff
                         xor.s             eax, eax                                      // 0x00640de7    33c0
                         {disp32} mov      ax, word ptr [rdata_bytes + 0xf8620]          // 0x00640de9    66a120169a00
                         add               esp, 0x08                                     // 0x00640def    83c408
                         mov.s             ecx, esi                                      // 0x00640df2    8bce
                         push              eax                                           // 0x00640df4    50
                         push              0x2                                           // 0x00640df5    6a02
                         call              _jmp_addr_0x00640cb0                          // 0x00640df7    e8b4feffff
                         pop               esi                                           // 0x00640dfc    5e
                         ret               0x0008                                        // 0x00640dfd    c20800
                         push              0x0                                           // 0x00640e00    6a00
                         push              0x00bfe45c                                    // 0x00640e02    685ce4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640e07    e834dfffff
                         xor.s             ecx, ecx                                      // 0x00640e0c    33c9
                         {disp32} mov      cx, word ptr [rdata_bytes + 0xf861c]          // 0x00640e0e    668b0d1c169a00
                         add               esp, 0x08                                     // 0x00640e15    83c408
                         push              ecx                                           // 0x00640e18    51
                         push              0x2                                           // 0x00640e19    6a02
                         mov.s             ecx, esi                                      // 0x00640e1b    8bce
                         call              _jmp_addr_0x00640cb0                          // 0x00640e1d    e88efeffff
                         pop               esi                                           // 0x00640e22    5e
                         ret               0x0008                                        // 0x00640e23    c20800
                         push              0x0                                           // 0x00640e26    6a00
                         push              0x00bfe43c                                    // 0x00640e28    683ce4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640e2d    e80edfffff
                         xor.s             edx, edx                                      // 0x00640e32    33d2
                         {disp32} mov      dx, word ptr [rdata_bytes + 0xf8620]          // 0x00640e34    668b1520169a00
                         add               esp, 0x08                                     // 0x00640e3b    83c408
                         mov.s             ecx, esi                                      // 0x00640e3e    8bce
                         push              edx                                           // 0x00640e40    52
                         push              0x2c                                          // 0x00640e41    6a2c
                         call              _jmp_addr_0x00640cb0                          // 0x00640e43    e868feffff
                         pop               esi                                           // 0x00640e48    5e
                         ret               0x0008                                        // 0x00640e49    c20800
                         {disp32} mov      al, byte ptr [data_bytes + 0x33b9d8]          // 0x00640e4c    a0d819d000
                         test              al, al                                        // 0x00640e51    84c0
                         push              0x0                                           // 0x00640e53    6a00
                         {disp8} je        _jmp_addr_0x00640e6f                          // 0x00640e55    7418
                         push              0x00bfe420                                    // 0x00640e57    6820e4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640e5c    e8dfdeffff
                         add               esp, 0x08                                     // 0x00640e61    83c408
                         {disp32} mov      byte ptr [data_bytes + 0x33b9d8], 0x00        // 0x00640e64    c605d819d00000
                         pop               esi                                           // 0x00640e6b    5e
                         ret               0x0008                                        // 0x00640e6c    c20800
_jmp_addr_0x00640e6f:    push              0x00bfe408                                    // 0x00640e6f    6808e4bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640e74    e8c7deffff
                         add               esp, 0x08                                     // 0x00640e79    83c408
                         {disp32} mov      byte ptr [data_bytes + 0x33b9d8], 0x01        // 0x00640e7c    c605d819d00001
                         pop               esi                                           // 0x00640e83    5e
                         ret               0x0008                                        // 0x00640e84    c20800
                         {disp32} mov      eax, dword ptr [data_bytes + 0x380a7c]        // 0x00640e87    a17c6ad400
                         {disp32} mov      edx, dword ptr [_game]                        // 0x00640e8c    8b155c19d000
                         xor.s             ecx, ecx                                      // 0x00640e92    33c9
                         test              eax, eax                                      // 0x00640e94    85c0
                         sete              cl                                            // 0x00640e96    0f94c1
                         xor.s             eax, eax                                      // 0x00640e99    33c0
                         push              0x0                                           // 0x00640e9b    6a00
                         {disp32} mov      dword ptr [data_bytes + 0x380a7c], ecx        // 0x00640e9d    890d7c6ad400
                         {disp32} mov      al, byte ptr [edx + 0x00205a59]               // 0x00640ea3    8a82595a2000
                         lea               esi, dword ptr [eax + eax * 0x4]              // 0x00640ea9    8d3480
                         lea               esi, dword ptr [eax + esi * 0x8]              // 0x00640eac    8d34f0
                         lea               eax, dword ptr [eax + esi * 0x2]              // 0x00640eaf    8d0470
                         shl               eax, 5                                        // 0x00640eb2    c1e005
                         {disp32} mov      dword ptr [eax + edx * 0x1 + 0x00000944], ecx // 0x00640eb5    898c1044090000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x380a7c]        // 0x00640ebc    a17c6ad400
                         test              eax, eax                                      // 0x00640ec1    85c0
                         {disp8} je        _jmp_addr_0x00640ed6                          // 0x00640ec3    7411
                         push              0x00bfe3ec                                    // 0x00640ec5    68ece3bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640eca    e871deffff
                         add               esp, 0x08                                     // 0x00640ecf    83c408
                         pop               esi                                           // 0x00640ed2    5e
                         ret               0x0008                                        // 0x00640ed3    c20800
_jmp_addr_0x00640ed6:    push              0x00bfe3d0                                    // 0x00640ed6    68d0e3bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640edb    e860deffff
                         add               esp, 0x08                                     // 0x00640ee0    83c408
                         pop               esi                                           // 0x00640ee3    5e
                         ret               0x0008                                        // 0x00640ee4    c20800
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00640ee7    8b0d5c19d000
                         {disp8} mov       eax, dword ptr [ecx + 0x14]                   // 0x00640eed    8b4114
                         mov               esi, 0x00400000                               // 0x00640ef0    be00004000
                         test              esi, eax                                      // 0x00640ef5    85c6
                         push              0x0                                           // 0x00640ef7    6a00
                         {disp8} je        _jmp_addr_0x00640f1d                          // 0x00640ef9    7422
                         push              0x00bfe3ac                                    // 0x00640efb    68ace3bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640f00    e83bdeffff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00640f05    a15c19d000
                         {disp8} mov       ecx, dword ptr [eax + 0x14]                   // 0x00640f0a    8b4814
                         add               esp, 0x08                                     // 0x00640f0d    83c408
                         and               ecx, 0xffbfffff                               // 0x00640f10    81e1ffffbfff
                         {disp8} mov       dword ptr [eax + 0x14], ecx                   // 0x00640f16    894814
                         pop               esi                                           // 0x00640f19    5e
                         ret               0x0008                                        // 0x00640f1a    c20800
_jmp_addr_0x00640f1d:    push              0x00bfe388                                    // 0x00640f1d    6888e3bf00
                         call              _jmp_addr_0x0063ed40                          // 0x00640f22    e819deffff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00640f27    a15c19d000
                         {disp8} mov       ecx, dword ptr [eax + 0x14]                   // 0x00640f2c    8b4814
                         add               esp, 0x08                                     // 0x00640f2f    83c408
                         or.s              ecx, esi                                      // 0x00640f32    0bce
                         {disp8} mov       dword ptr [eax + 0x14], ecx                   // 0x00640f34    894814
                         pop               esi                                           // 0x00640f37    5e
                         ret               0x0008                                        // 0x00640f38    c20800
_jmp_addr_0x00640f3b:    {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x00640f3b    8b54240c
                         push              edx                                           // 0x00640f3f    52
                         push              ecx                                           // 0x00640f40    51
                         mov.s             ecx, esi                                      // 0x00640f41    8bce
                         call              _jmp_addr_0x00640cb0                          // 0x00640f43    e868fdffff
                         pop               esi                                           // 0x00640f48    5e
                         ret               0x0008                                        // 0x00640f49    c20800

// Snippet: jmptbl, [0x00640f4c, 0x00640f78)
.byte 0x87, 0x0e, 0x64, 0x00      // 0x00640f4c
.byte 0x4c, 0x0e, 0x64, 0x00      // 0x00640f50
.byte 0xdb, 0x0d, 0x64, 0x00      // 0x00640f54
.byte 0xb5, 0x0d, 0x64, 0x00      // 0x00640f58
.byte 0x26, 0x0e, 0x64, 0x00      // 0x00640f5c
.byte 0xe2, 0x0c, 0x64, 0x00      // 0x00640f60
.byte 0x48, 0x0f, 0x64, 0x00      // 0x00640f64
.byte 0xe7, 0x0e, 0x64, 0x00      // 0x00640f68
.byte 0x64, 0x0d, 0x64, 0x00      // 0x00640f6c
.byte 0x00, 0x0e, 0x64, 0x00      // 0x00640f70
.byte 0x3b, 0x0f, 0x64, 0x00      // 0x00640f74

// Snippet: ijmptbl, [0x00640f78, 0x00640f9a)
.byte 0x00, 0x0a, 0x01, 0x0a      // 0x00640f78
.byte 0x0a, 0x0a, 0x02, 0x03      // 0x00640f7c
.byte 0x0a, 0x0a, 0x0a, 0x0a      // 0x00640f80
.byte 0x0a, 0x0a, 0x0a, 0x0a      // 0x00640f84
.byte 0x04, 0x0a, 0x05, 0x0a      // 0x00640f88
.byte 0x06, 0x0a, 0x0a, 0x0a      // 0x00640f8c
.byte 0x0a, 0x0a, 0x0a, 0x07      // 0x00640f90
.byte 0x0a, 0x08, 0x0a, 0x0a      // 0x00640f94
.byte 0x0a, 0x09                  // 0x00640f98

// Snippet: db, [0x00640f9a, 0x00640fa0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00640f9a
.byte 0x90, 0x90                  // 0x00640f9e

