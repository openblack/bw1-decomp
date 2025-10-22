.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x00481390
.extern _jmp_addr_0x00484260
.extern ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ
.extern _jmp_addr_0x004845f0
.extern _jmp_addr_0x004848c0
.extern _jmp_addr_0x004848f0
.extern _jmp_addr_0x00484ae0
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x006e8160
.extern _jmp_addr_0x007fb5c0
.extern _jmp_addr_0x00839f10
.extern _jmp_addr_0x0083a0e0
.extern _jmp_addr_0x00860e00
.extern _jmp_addr_0x00867400

.globl _jmp_addr_0x0048f0f0
.globl _jmp_addr_0x0048f180
.globl _jmp_addr_0x0048f200
.globl _jmp_addr_0x0048f280
.globl _jmp_addr_0x0048f550
.globl _jmp_addr_0x0048f5b0
.globl _jmp_addr_0x0048f710
.globl _jmp_addr_0x0048f750

start_0x0048f060_0x0048f7b0:
// Snippet: asm, [0x0048f060, 0x0048f778)
                         {disp8} mov        edx, dword ptr [esp + 0x04]                          // 0x0048f060    8b542404
                         push               esi                                                  // 0x0048f064    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                          // 0x0048f065    8b74240c
                         mov.s              eax, ecx                                             // 0x0048f069    8bc1
                         push               edi                                                  // 0x0048f06b    57
                         lea                ecx, dword ptr [edx + edx * 0x4]                     // 0x0048f06c    8d0c92
                         {disp32} lea       edi, dword ptr [eax + ecx * 0x8 + 0x00005478]        // 0x0048f06f    8dbcc878540000
                         mov                ecx, 0x0000000a                                      // 0x0048f076    b90a000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0048f07b    f3a5
                         pop                edi                                                  // 0x0048f07d    5f
                         {disp32} mov       dword ptr [eax + edx * 0x4 + 0x00005518], 0x00000001 // 0x0048f07e    c784901855000001000000
                         pop                esi                                                  // 0x0048f089    5e
                         ret                0x0008                                               // 0x0048f08a    c20800
                         nop                                                                     // 0x0048f08d    90
                         nop                                                                     // 0x0048f08e    90
                         nop                                                                     // 0x0048f08f    90
                         push               esi                                                  // 0x0048f090    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                          // 0x0048f091    8b742408
                         mov.s              eax, ecx                                             // 0x0048f095    8bc1
                         push               edi                                                  // 0x0048f097    57
                         {disp32} lea       edi, dword ptr [eax + 0x00005408]                    // 0x0048f098    8db808540000
                         mov                ecx, 0x0000000a                                      // 0x0048f09e    b90a000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0048f0a3    f3a5
                         pop                edi                                                  // 0x0048f0a5    5f
                         {disp32} mov       dword ptr [eax + 0x00005430], 0x00000001             // 0x0048f0a6    c7803054000001000000
                         pop                esi                                                  // 0x0048f0b0    5e
                         ret                0x0004                                               // 0x0048f0b1    c20400
                         nop                                                                     // 0x0048f0b4    90
                         nop                                                                     // 0x0048f0b5    90
                         nop                                                                     // 0x0048f0b6    90
                         nop                                                                     // 0x0048f0b7    90
                         nop                                                                     // 0x0048f0b8    90
                         nop                                                                     // 0x0048f0b9    90
                         nop                                                                     // 0x0048f0ba    90
                         nop                                                                     // 0x0048f0bb    90
                         nop                                                                     // 0x0048f0bc    90
                         nop                                                                     // 0x0048f0bd    90
                         nop                                                                     // 0x0048f0be    90
                         nop                                                                     // 0x0048f0bf    90
                         push               esi                                                  // 0x0048f0c0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                          // 0x0048f0c1    8b742408
                         mov.s              eax, ecx                                             // 0x0048f0c5    8bc1
                         push               edi                                                  // 0x0048f0c7    57
                         {disp32} lea       edi, dword ptr [eax + 0x00005434]                    // 0x0048f0c8    8db834540000
                         mov                ecx, 0x0000000a                                      // 0x0048f0ce    b90a000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0048f0d3    f3a5
                         pop                edi                                                  // 0x0048f0d5    5f
                         {disp32} mov       dword ptr [eax + 0x0000545c], 0x00000001             // 0x0048f0d6    c7805c54000001000000
                         pop                esi                                                  // 0x0048f0e0    5e
                         ret                0x0004                                               // 0x0048f0e1    c20400
                         nop                                                                     // 0x0048f0e4    90
                         nop                                                                     // 0x0048f0e5    90
                         nop                                                                     // 0x0048f0e6    90
                         nop                                                                     // 0x0048f0e7    90
                         nop                                                                     // 0x0048f0e8    90
                         nop                                                                     // 0x0048f0e9    90
                         nop                                                                     // 0x0048f0ea    90
                         nop                                                                     // 0x0048f0eb    90
                         nop                                                                     // 0x0048f0ec    90
                         nop                                                                     // 0x0048f0ed    90
                         nop                                                                     // 0x0048f0ee    90
                         nop                                                                     // 0x0048f0ef    90
_jmp_addr_0x0048f0f0:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x0048f0f0    8b442404
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x4 + 0x00005518]        // 0x0048f0f4    8b948118550000
                         test               edx, edx                                             // 0x0048f0fb    85d2
                         {disp8} je         _jmp_addr_0x0048f130                                 // 0x0048f0fd    7431
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                          // 0x0048f0ff    8b54240c
                         push               edx                                                  // 0x0048f103    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                          // 0x0048f104    8b54240c
                         push               edx                                                  // 0x0048f108    52
                         {disp32} mov       edx, dword ptr [ecx + 0x000047f0]                    // 0x0048f109    8b91f0470000
                         push               edx                                                  // 0x0048f10f    52
                         {disp32} mov       edx, dword ptr [ecx + 0x00000098]                    // 0x0048f110    8b9198000000
                         {disp32} mov       edx, dword ptr [ecx + edx * 0x4 + 0x000000b4]        // 0x0048f116    8b9491b4000000
                         lea                eax, dword ptr [eax + eax * 0x4]                     // 0x0048f11d    8d0480
                         push               edx                                                  // 0x0048f120    52
                         {disp32} lea       ecx, dword ptr [ecx + eax * 0x8 + 0x00005478]        // 0x0048f121    8d8cc178540000
                         call               _jmp_addr_0x00867400                                 // 0x0048f128    e8d3823d00
                         ret                0x000c                                               // 0x0048f12d    c20c00
_jmp_addr_0x0048f130:    {disp32} mov       eax, dword ptr [ecx + 0x000051b8]                    // 0x0048f130    8b81b8510000
                         {disp32} mov       edx, dword ptr [ecx + 0x00005178]                    // 0x0048f136    8b9178510000
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x0048f13c    8d0440
                         shl                eax, 4                                               // 0x0048f13f    c1e004
                         {disp8} fld        dword ptr [eax + edx * 0x1 + 0x2c]                   // 0x0048f142    d944102c
                         add.s              eax, edx                                             // 0x0048f146    03c2
                         {disp8} fld        dword ptr [eax + 0x28]                               // 0x0048f148    d94028
                         {disp8} fld        dword ptr [eax + 0x24]                               // 0x0048f14b    d94024
                         {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x0048f14e    8b442408
                         fstp               dword ptr [eax]                                      // 0x0048f152    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                               // 0x0048f154    d95804
                         {disp8} fstp       dword ptr [eax + 0x08]                               // 0x0048f157    d95808
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x0048f15a    8b44240c
                         mov                dword ptr [eax], 0x00000000                          // 0x0048f15e    c70000000000
                         {disp8} mov        dword ptr [eax + 0x04], 0xbf800000                   // 0x0048f164    c74004000080bf
                         {disp8} mov        dword ptr [eax + 0x08], 0x00000000                   // 0x0048f16b    c7400800000000
                         ret                0x000c                                               // 0x0048f172    c20c00
                         nop                                                                     // 0x0048f175    90
                         nop                                                                     // 0x0048f176    90
                         nop                                                                     // 0x0048f177    90
                         nop                                                                     // 0x0048f178    90
                         nop                                                                     // 0x0048f179    90
                         nop                                                                     // 0x0048f17a    90
                         nop                                                                     // 0x0048f17b    90
                         nop                                                                     // 0x0048f17c    90
                         nop                                                                     // 0x0048f17d    90
                         nop                                                                     // 0x0048f17e    90
                         nop                                                                     // 0x0048f17f    90
_jmp_addr_0x0048f180:    sub                esp, 0x0c                                            // 0x0048f180    83ec0c
                         push               esi                                                  // 0x0048f183    56
                         mov.s              esi, ecx                                             // 0x0048f184    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005430]                    // 0x0048f186    8b8630540000
                         test               eax, eax                                             // 0x0048f18c    85c0
                         {disp8} je         _jmp_addr_0x0048f1c4                                 // 0x0048f18e    7434
                         {disp8} mov        edx, dword ptr [esp + 0x14]                          // 0x0048f190    8b542414
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]                    // 0x0048f194    8b8698000000
                         push               edi                                                  // 0x0048f19a    57
                         {disp32} mov       edi, dword ptr [esi + eax * 0x4 + 0x000000b4]        // 0x0048f19b    8bbc86b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x0048f1a2    8d4c2408
                         push               ecx                                                  // 0x0048f1a6    51
                         push               edx                                                  // 0x0048f1a7    52
                         mov.s              ecx, esi                                             // 0x0048f1a8    8bce
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ                // 0x0048f1aa    e80151ffff
                         push               eax                                                  // 0x0048f1af    50
                         push               edi                                                  // 0x0048f1b0    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00005408]                    // 0x0048f1b1    8d8e08540000
                         call               _jmp_addr_0x00867400                                 // 0x0048f1b7    e844823d00
                         pop                edi                                                  // 0x0048f1bc    5f
                         pop                esi                                                  // 0x0048f1bd    5e
                         add                esp, 0x0c                                            // 0x0048f1be    83c40c
                         ret                0x0004                                               // 0x0048f1c1    c20400
_jmp_addr_0x0048f1c4:    mov.s              ecx, esi                                             // 0x0048f1c4    8bce
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ                // 0x0048f1c6    e8e550ffff
                         {disp32} mov       esi, dword ptr [esi + 0x000051b8]                    // 0x0048f1cb    8bb6b8510000
                         lea                ecx, dword ptr [esi + esi * 0x2]                     // 0x0048f1d1    8d0c76
                         shl                ecx, 4                                               // 0x0048f1d4    c1e104
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x2c]                   // 0x0048f1d7    d944082c
                         add.s              eax, ecx                                             // 0x0048f1db    03c1
                         {disp8} fld        dword ptr [eax + 0x28]                               // 0x0048f1dd    d94028
                         pop                esi                                                  // 0x0048f1e0    5e
                         {disp8} fld        dword ptr [eax + 0x24]                               // 0x0048f1e1    d94024
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0048f1e4    8b442410
                         fstp               dword ptr [eax]                                      // 0x0048f1e8    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                               // 0x0048f1ea    d95804
                         {disp8} fstp       dword ptr [eax + 0x08]                               // 0x0048f1ed    d95808
                         add                esp, 0x0c                                            // 0x0048f1f0    83c40c
                         ret                0x0004                                               // 0x0048f1f3    c20400
                         nop                                                                     // 0x0048f1f6    90
                         nop                                                                     // 0x0048f1f7    90
                         nop                                                                     // 0x0048f1f8    90
                         nop                                                                     // 0x0048f1f9    90
                         nop                                                                     // 0x0048f1fa    90
                         nop                                                                     // 0x0048f1fb    90
                         nop                                                                     // 0x0048f1fc    90
                         nop                                                                     // 0x0048f1fd    90
                         nop                                                                     // 0x0048f1fe    90
                         nop                                                                     // 0x0048f1ff    90
_jmp_addr_0x0048f200:    sub                esp, 0x0c                                            // 0x0048f200    83ec0c
                         push               esi                                                  // 0x0048f203    56
                         mov.s              esi, ecx                                             // 0x0048f204    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000545c]                    // 0x0048f206    8b865c540000
                         test               eax, eax                                             // 0x0048f20c    85c0
                         {disp8} je         _jmp_addr_0x0048f244                                 // 0x0048f20e    7434
                         {disp8} mov        edx, dword ptr [esp + 0x14]                          // 0x0048f210    8b542414
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]                    // 0x0048f214    8b8698000000
                         push               edi                                                  // 0x0048f21a    57
                         {disp32} mov       edi, dword ptr [esi + eax * 0x4 + 0x000000b4]        // 0x0048f21b    8bbc86b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x0048f222    8d4c2408
                         push               ecx                                                  // 0x0048f226    51
                         push               edx                                                  // 0x0048f227    52
                         mov.s              ecx, esi                                             // 0x0048f228    8bce
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ                // 0x0048f22a    e88150ffff
                         push               eax                                                  // 0x0048f22f    50
                         push               edi                                                  // 0x0048f230    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00005434]                    // 0x0048f231    8d8e34540000
                         call               _jmp_addr_0x00867400                                 // 0x0048f237    e8c4813d00
                         pop                edi                                                  // 0x0048f23c    5f
                         pop                esi                                                  // 0x0048f23d    5e
                         add                esp, 0x0c                                            // 0x0048f23e    83c40c
                         ret                0x0004                                               // 0x0048f241    c20400
_jmp_addr_0x0048f244:    mov.s              ecx, esi                                             // 0x0048f244    8bce
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ                // 0x0048f246    e86550ffff
                         {disp32} mov       esi, dword ptr [esi + 0x000051b8]                    // 0x0048f24b    8bb6b8510000
                         lea                ecx, dword ptr [esi + esi * 0x2]                     // 0x0048f251    8d0c76
                         shl                ecx, 4                                               // 0x0048f254    c1e104
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x2c]                   // 0x0048f257    d944082c
                         add.s              eax, ecx                                             // 0x0048f25b    03c1
                         {disp8} fld        dword ptr [eax + 0x28]                               // 0x0048f25d    d94028
                         pop                esi                                                  // 0x0048f260    5e
                         {disp8} fld        dword ptr [eax + 0x24]                               // 0x0048f261    d94024
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0048f264    8b442410
                         fstp               dword ptr [eax]                                      // 0x0048f268    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                               // 0x0048f26a    d95804
                         {disp8} fstp       dword ptr [eax + 0x08]                               // 0x0048f26d    d95808
                         add                esp, 0x0c                                            // 0x0048f270    83c40c
                         ret                0x0004                                               // 0x0048f273    c20400
                         nop                                                                     // 0x0048f276    90
                         nop                                                                     // 0x0048f277    90
                         nop                                                                     // 0x0048f278    90
                         nop                                                                     // 0x0048f279    90
                         nop                                                                     // 0x0048f27a    90
                         nop                                                                     // 0x0048f27b    90
                         nop                                                                     // 0x0048f27c    90
                         nop                                                                     // 0x0048f27d    90
                         nop                                                                     // 0x0048f27e    90
                         nop                                                                     // 0x0048f27f    90
_jmp_addr_0x0048f280:    sub                esp, 0x54                                            // 0x0048f280    83ec54
                         push               ebx                                                  // 0x0048f283    53
                         push               ebp                                                  // 0x0048f284    55
                         mov.s              ebx, ecx                                             // 0x0048f285    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x000048d0]                    // 0x0048f287    8b83d0480000
                         test               eax, eax                                             // 0x0048f28d    85c0
                         push               esi                                                  // 0x0048f28f    56
                         push               edi                                                  // 0x0048f290    57
                         {disp32} je        _jmp_addr_0x0048f53e                                 // 0x0048f291    0f84a7020000
                         {disp32} mov       eax, dword ptr [ebx + 0x00005230]                    // 0x0048f297    8b8330520000
                         test               eax, eax                                             // 0x0048f29d    85c0
                         {disp32} mov       eax, dword ptr [ebx + 0x000051c8]                    // 0x0048f29f    8b83c8510000
                         {disp8} je         _jmp_addr_0x0048f2ad                                 // 0x0048f2a5    7406
                         push               eax                                                  // 0x0048f2a7    50
                         call               _jmp_addr_0x00481390                                 // 0x0048f2a8    e8e320ffff
_jmp_addr_0x0048f2ad:    {disp8} mov        ebp, dword ptr [esp + 0x68]                          // 0x0048f2ad    8b6c2468
                         lea                esi, dword ptr [eax + eax * 0x2]                     // 0x0048f2b1    8d3440
                         shl                esi, 4                                               // 0x0048f2b4    c1e604
                         add.s              esi, ebp                                             // 0x0048f2b7    03f5
                         mov                ecx, 0x0000000c                                      // 0x0048f2b9    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x34]                          // 0x0048f2be    8d7c2434
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0048f2c2    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x0048f2c4    8d4c2434
                         call               _jmp_addr_0x007fb5c0                                 // 0x0048f2c8    e8f3c23600
                         {disp32} mov       ecx, dword ptr [ebx + 0x000048d0]                    // 0x0048f2cd    8b8bd0480000
                         mov                edx, dword ptr [ecx]                                 // 0x0048f2d3    8b11
                         call               dword ptr [edx + 0x120]                              // 0x0048f2d5    ff9220010000
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x0048f2db    d9442434
                         fmul               st, st(1)                                            // 0x0048f2df    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x0048f2e1    d95c2434
                         {disp8} fld        dword ptr [esp + 0x40]                               // 0x0048f2e5    d9442440
                         fmul               st, st(1)                                            // 0x0048f2e9    d8c9
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x0048f2eb    d95c2440
                         {disp8} mov        esi, dword ptr [esp + 0x40]                          // 0x0048f2ef    8b742440
                         {disp8} fld        dword ptr [esp + 0x4c]                               // 0x0048f2f3    d944244c
                         fmul               st, st(1)                                            // 0x0048f2f7    d8c9
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0048f2f9    d95c244c
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                          // 0x0048f2fd    8b44244c
                         {disp8} fld        dword ptr [esp + 0x58]                               // 0x0048f301    d9442458
                         {disp8} mov        dword ptr [esp + 0x4c], esi                          // 0x0048f305    8974244c
                         fmul               st, st(1)                                            // 0x0048f309    d8c9
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x0048f30b    89442428
                         {disp8} mov        dword ptr [esp + 0x40], eax                          // 0x0048f30f    89442440
                         {disp32} mov       eax, dword ptr [ebx + 0x00005230]                    // 0x0048f313    8b8330520000
                         test               eax, eax                                             // 0x0048f319    85c0
                         {disp8} fstp       dword ptr [esp + 0x58]                               // 0x0048f31b    d95c2458
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x0048f31f    d9442438
                         fmul               st, st(1)                                            // 0x0048f323    d8c9
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x0048f325    d95c2438
                         {disp8} fld        dword ptr [esp + 0x44]                               // 0x0048f329    d9442444
                         fmul               st, st(1)                                            // 0x0048f32d    d8c9
                         {disp8} fstp       dword ptr [esp + 0x44]                               // 0x0048f32f    d95c2444
                         {disp8} mov        esi, dword ptr [esp + 0x44]                          // 0x0048f333    8b742444
                         {disp8} fld        dword ptr [esp + 0x50]                               // 0x0048f337    d9442450
                         fmul               st, st(1)                                            // 0x0048f33b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x50]                               // 0x0048f33d    d95c2450
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                          // 0x0048f341    8b4c2450
                         {disp8} fld        dword ptr [esp + 0x5c]                               // 0x0048f345    d944245c
                         {disp8} mov        dword ptr [esp + 0x50], esi                          // 0x0048f349    89742450
                         fmul               st, st(1)                                            // 0x0048f34d    d8c9
                         {disp8} mov        dword ptr [esp + 0x44], ecx                          // 0x0048f34f    894c2444
                         {disp8} fstp       dword ptr [esp + 0x5c]                               // 0x0048f353    d95c245c
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x0048f357    d944243c
                         fmul               st, st(1)                                            // 0x0048f35b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x0048f35d    d95c243c
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x0048f361    d9442448
                         fmul               st, st(1)                                            // 0x0048f365    d8c9
                         {disp8} fstp       dword ptr [esp + 0x48]                               // 0x0048f367    d95c2448
                         {disp8} mov        esi, dword ptr [esp + 0x48]                          // 0x0048f36b    8b742448
                         {disp8} fld        dword ptr [esp + 0x54]                               // 0x0048f36f    d9442454
                         fmul               st, st(1)                                            // 0x0048f373    d8c9
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x0048f375    d95c2454
                         {disp8} mov        edx, dword ptr [esp + 0x54]                          // 0x0048f379    8b542454
                         {disp8} fld        dword ptr [esp + 0x60]                               // 0x0048f37d    d9442460
                         {disp8} mov        dword ptr [esp + 0x54], esi                          // 0x0048f381    89742454
                         fmul               st, st(1)                                            // 0x0048f385    d8c9
                         {disp8} mov        dword ptr [esp + 0x48], edx                          // 0x0048f387    89542448
                         {disp8} fstp       dword ptr [esp + 0x60]                               // 0x0048f38b    d95c2460
                         fstp               st(0)                                                // 0x0048f38f    ddd8
                         {disp8} je         _jmp_addr_0x0048f3b3                                 // 0x0048f391    7420
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x0048f393    d9442428
                         fchs                                                                    // 0x0048f397    d9e0
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x0048f399    d95c2440
                         {disp8} fld        dword ptr [esp + 0x44]                               // 0x0048f39d    d9442444
                         fchs                                                                    // 0x0048f3a1    d9e0
                         {disp8} fstp       dword ptr [esp + 0x44]                               // 0x0048f3a3    d95c2444
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x0048f3a7    d9442448
                         fchs                                                                    // 0x0048f3ab    d9e0
                         {disp8} fstp       dword ptr [esp + 0x48]                               // 0x0048f3ad    d95c2448
                         {disp8} jmp        _jmp_addr_0x0048f3d1                                 // 0x0048f3b1    eb1e
_jmp_addr_0x0048f3b3:    {disp8} fld        dword ptr [esp + 0x4c]                               // 0x0048f3b3    d944244c
                         fchs                                                                    // 0x0048f3b7    d9e0
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0048f3b9    d95c244c
                         {disp8} fld        dword ptr [esp + 0x50]                               // 0x0048f3bd    d9442450
                         fchs                                                                    // 0x0048f3c1    d9e0
                         {disp8} fstp       dword ptr [esp + 0x50]                               // 0x0048f3c3    d95c2450
                         {disp8} fld        dword ptr [esp + 0x54]                               // 0x0048f3c7    d9442454
                         fchs                                                                    // 0x0048f3cb    d9e0
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x0048f3cd    d95c2454
_jmp_addr_0x0048f3d1:    {disp8} fld        dword ptr [esp + 0x34]                               // 0x0048f3d1    d9442434
                         {disp32} mov       eax, dword ptr [ebx + 0x000048d0]                    // 0x0048f3d5    8b83d0480000
                         test               eax, eax                                             // 0x0048f3db    85c0
                         fchs                                                                    // 0x0048f3dd    d9e0
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x0048f3df    d95c2434
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x0048f3e3    d9442438
                         fchs                                                                    // 0x0048f3e7    d9e0
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x0048f3e9    d95c2438
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x0048f3ed    d944243c
                         fchs                                                                    // 0x0048f3f1    d9e0
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x0048f3f3    d95c243c
                         {disp32} je        _jmp_addr_0x0048f53e                                 // 0x0048f3f7    0f8441010000
                         {disp8} mov        ecx, dword ptr [eax + 0x40]                          // 0x0048f3fd    8b4840
                         test               ecx, ecx                                             // 0x0048f400    85c9
                         {disp32} je        _jmp_addr_0x0048f53e                                 // 0x0048f402    0f8436010000
                         mov.s              edi, ecx                                             // 0x0048f408    8bf9
                         add                edi, 0x14                                            // 0x0048f40a    83c714
                         mov                ecx, 0x0000000c                                      // 0x0048f40d    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x34]                          // 0x0048f412    8d742434
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0048f416    f3a5
                         {disp32} mov       eax, dword ptr [ebx + 0x00005230]                    // 0x0048f418    8b8330520000
                         test               eax, eax                                             // 0x0048f41e    85c0
                         {disp32} mov       eax, dword ptr [ebx + 0x000051c8]                    // 0x0048f420    8b83c8510000
                         {disp8} je         _jmp_addr_0x0048f430                                 // 0x0048f426    7408
                         push               eax                                                  // 0x0048f428    50
                         mov.s              ecx, ebx                                             // 0x0048f429    8bcb
                         call               _jmp_addr_0x00481390                                 // 0x0048f42b    e8601fffff
_jmp_addr_0x0048f430:    {disp32} mov       edx, dword ptr [ebx + 0x00000098]                    // 0x0048f430    8b9398000000
                         push               eax                                                  // 0x0048f436    50
                         {disp32} mov       eax, dword ptr [ebx + edx * 0x4 + 0x000000b4]        // 0x0048f437    8b8493b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                          // 0x0048f43e    8d4c242c
                         push               ecx                                                  // 0x0048f442    51
                         push               eax                                                  // 0x0048f443    50
                         push               ebp                                                  // 0x0048f444    55
                         call               _jmp_addr_0x0083a0e0                                 // 0x0048f445    e896ac3a00
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                          // 0x0048f44a    8b4c2450
                         {disp8} mov        edx, dword ptr [esp + 0x54]                          // 0x0048f44e    8b542454
                         {disp8} mov        eax, dword ptr [esp + 0x58]                          // 0x0048f452    8b442458
                         {disp8} mov        dword ptr [esp + 0x20], ecx                          // 0x0048f456    894c2420
                         {disp32} mov       ecx, dword ptr [ebx + 0x000048d0]                    // 0x0048f45a    8b8bd0480000
                         mov.s              esi, ecx                                             // 0x0048f460    8bf1
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x0048f462    89542424
                         mov                edx, dword ptr [esi]                                 // 0x0048f466    8b16
                         add                esp, 0x10                                            // 0x0048f468    83c410
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x0048f46b    89442418
                         {disp8} mov        dword ptr [esp + 0x68], ecx                          // 0x0048f46f    894c2468
                         call               dword ptr [edx + 0x594]                              // 0x0048f473    ff9294050000
                         {disp8} fstp       dword ptr [esp + 0x68]                               // 0x0048f479    d95c2468
                         mov                eax, dword ptr [esi]                                 // 0x0048f47d    8b06
                         mov.s              ecx, esi                                             // 0x0048f47f    8bce
                         call               dword ptr [eax + 0x42c]                              // 0x0048f481    ff902c040000
                         {disp8} fmul       dword ptr [esp + 0x68]                               // 0x0048f487    d84c2468
                         {disp8} fstp       dword ptr [esp + 0x68]                               // 0x0048f48b    d95c2468
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0048f48f    d9442410
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x0048f493    d81598a38a00
                         fnstsw             ax                                                   // 0x0048f499    dfe0
                         test               ah, 0x40                                             // 0x0048f49b    f6c440
                         {disp8} je         _jmp_addr_0x0048f4c2                                 // 0x0048f49e    7422
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048f4a0    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0048f4a4    d81d98a38a00
                         fnstsw             ax                                                   // 0x0048f4aa    dfe0
                         test               ah, 0x40                                             // 0x0048f4ac    f6c440
                         {disp8} je         _jmp_addr_0x0048f4c2                                 // 0x0048f4af    7411
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0048f4b1    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0048f4b5    d81d98a38a00
                         fnstsw             ax                                                   // 0x0048f4bb    dfe0
                         test               ah, 0x40                                             // 0x0048f4bd    f6c440
                         {disp8} jne        _jmp_addr_0x0048f4fa                                 // 0x0048f4c0    7538
_jmp_addr_0x0048f4c2:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048f4c2    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0048f4c6    d84c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0048f4ca    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0048f4ce    d84c2418
                         faddp              st(1), st                                            // 0x0048f4d2    dec1
                         fld                st(1)                                                // 0x0048f4d4    d9c1
                         fmul               st, st(2)                                            // 0x0048f4d6    d8ca
                         faddp              st(1), st                                            // 0x0048f4d8    dec1
                         fsqrt                                                                   // 0x0048f4da    d9fa
                         {disp8} fdivr      dword ptr [esp + 0x68]                               // 0x0048f4dc    d87c2468
                         fld                st(0)                                                // 0x0048f4e0    d9c0
                         fmulp              st(2), st                                            // 0x0048f4e2    deca
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048f4e4    d9442414
                         fmul               st, st(1)                                            // 0x0048f4e8    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0048f4ea    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0048f4ee    d9442418
                         fmul               st, st(1)                                            // 0x0048f4f2    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0048f4f4    d95c2418
                         fstp               st(0)                                                // 0x0048f4f8    ddd8
_jmp_addr_0x0048f4fa:    {disp8} fld        dword ptr [esp + 0x28]                               // 0x0048f4fa    d9442428
                         {disp32} mov       ecx, dword ptr [ebx + 0x000048d0]                    // 0x0048f4fe    8b8bd0480000
                         {disp8} mov        edx, dword ptr [ecx + 0x40]                          // 0x0048f504    8b5140
                         fsub               st, st(1)                                            // 0x0048f507    d8e1
                         add                edx, 0x38                                            // 0x0048f509    83c238
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0048f50c    d95c241c
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x0048f510    8b44241c
                         fstp               st(0)                                                // 0x0048f514    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0048f516    d944242c
                         {disp8} fsub       dword ptr [esp + 0x14]                               // 0x0048f51a    d8642414
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0048f51e    d95c2420
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x0048f522    d9442430
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                          // 0x0048f526    8b4c2420
                         {disp8} fsub       dword ptr [esp + 0x18]                               // 0x0048f52a    d8642418
                         mov                dword ptr [edx], eax                                 // 0x0048f52e    8902
                         {disp8} mov        dword ptr [edx + 0x04], ecx                          // 0x0048f530    894a04
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0048f533    d95c2424
                         {disp8} mov        eax, dword ptr [esp + 0x24]                          // 0x0048f537    8b442424
                         {disp8} mov        dword ptr [edx + 0x08], eax                          // 0x0048f53b    894208
_jmp_addr_0x0048f53e:    pop                edi                                                  // 0x0048f53e    5f
                         pop                esi                                                  // 0x0048f53f    5e
                         pop                ebp                                                  // 0x0048f540    5d
                         pop                ebx                                                  // 0x0048f541    5b
                         add                esp, 0x54                                            // 0x0048f542    83c454
                         ret                0x0004                                               // 0x0048f545    c20400
                         nop                                                                     // 0x0048f548    90
                         nop                                                                     // 0x0048f549    90
                         nop                                                                     // 0x0048f54a    90
                         nop                                                                     // 0x0048f54b    90
                         nop                                                                     // 0x0048f54c    90
                         nop                                                                     // 0x0048f54d    90
                         nop                                                                     // 0x0048f54e    90
                         nop                                                                     // 0x0048f54f    90
_jmp_addr_0x0048f550:    push               esi                                                  // 0x0048f550    56
                         mov.s              esi, ecx                                             // 0x0048f551    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x000048d0]                    // 0x0048f553    8b8ed0480000
                         test               ecx, ecx                                             // 0x0048f559    85c9
                         {disp8} je         _jmp_addr_0x0048f5a2                                 // 0x0048f55b    7445
                         mov                eax, dword ptr [ecx]                                 // 0x0048f55d    8b01
                         call               dword ptr [eax + 0x34]                               // 0x0048f55f    ff5034
                         test               eax, eax                                             // 0x0048f562    85c0
                         {disp8} je         _jmp_addr_0x0048f584                                 // 0x0048f564    741e
                         {disp32} mov       ecx, dword ptr [esi + 0x000048d0]                    // 0x0048f566    8b8ed0480000
                         mov                edx, dword ptr [ecx]                                 // 0x0048f56c    8b11
                         call               dword ptr [edx + 0xa4]                               // 0x0048f56e    ff92a4000000
                         mov.s              ecx, eax                                             // 0x0048f574    8bc8
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x0048f576    e8d582feff
                         mov                edx, dword ptr [eax]                                 // 0x0048f57b    8b10
                         mov.s              ecx, eax                                             // 0x0048f57d    8bc8
                         call               dword ptr [edx + 0x1c]                               // 0x0048f57f    ff521c
                         pop                esi                                                  // 0x0048f582    5e
                         ret                                                                     // 0x0048f583    c3
_jmp_addr_0x0048f584:    {disp32} mov       eax, dword ptr [esi + 0x000047f0]                    // 0x0048f584    8b86f0470000
                         push               eax                                                  // 0x0048f58a    50
                         mov.s              ecx, esi                                             // 0x0048f58b    8bce
                         call               _jmp_addr_0x0048f280                                 // 0x0048f58d    e8eefcffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000048d0]                    // 0x0048f592    8b8ed0480000
                         mov                edx, dword ptr [ecx]                                 // 0x0048f598    8b11
                         push               0x0                                                  // 0x0048f59a    6a00
                         call               dword ptr [edx + 0x614]                              // 0x0048f59c    ff9214060000
_jmp_addr_0x0048f5a2:    pop                esi                                                  // 0x0048f5a2    5e
                         ret                                                                     // 0x0048f5a3    c3
                         nop                                                                     // 0x0048f5a4    90
                         nop                                                                     // 0x0048f5a5    90
                         nop                                                                     // 0x0048f5a6    90
                         nop                                                                     // 0x0048f5a7    90
                         nop                                                                     // 0x0048f5a8    90
                         nop                                                                     // 0x0048f5a9    90
                         nop                                                                     // 0x0048f5aa    90
                         nop                                                                     // 0x0048f5ab    90
                         nop                                                                     // 0x0048f5ac    90
                         nop                                                                     // 0x0048f5ad    90
                         nop                                                                     // 0x0048f5ae    90
                         nop                                                                     // 0x0048f5af    90
_jmp_addr_0x0048f5b0:    sub                esp, 0x40                                            // 0x0048f5b0    83ec40
                         push               esi                                                  // 0x0048f5b3    56
                         mov.s              esi, ecx                                             // 0x0048f5b4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000047b8]                    // 0x0048f5b6    8b86b8470000
                         test               eax, eax                                             // 0x0048f5bc    85c0
                         {disp8} jne        _jmp_addr_0x0048f5cb                                 // 0x0048f5be    750b
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0048f5c0    d90598a38a00
                         pop                esi                                                  // 0x0048f5c6    5e
                         add                esp, 0x40                                            // 0x0048f5c7    83c440
                         ret                                                                     // 0x0048f5ca    c3
_jmp_addr_0x0048f5cb:    push               0x0                                                  // 0x0048f5cb    6a00
                         push               0x0                                                  // 0x0048f5cd    6a00
                         mov.s              ecx, esi                                             // 0x0048f5cf    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x0048f5d1    e87aa01800
                         test               eax, eax                                             // 0x0048f5d6    85c0
                         {disp8} jne        _jmp_addr_0x0048f5e5                                 // 0x0048f5d8    750b
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0048f5da    d90598a38a00
                         pop                esi                                                  // 0x0048f5e0    5e
                         add                esp, 0x40                                            // 0x0048f5e1    83c440
                         ret                                                                     // 0x0048f5e4    c3
_jmp_addr_0x0048f5e5:    {disp32} mov       ecx, dword ptr [esi + 0x000047fc]                    // 0x0048f5e5    8b8efc470000
                         {disp32} mov       edx, dword ptr [esi + 0x000047f8]                    // 0x0048f5eb    8b96f8470000
                         push               edi                                                  // 0x0048f5f1    57
                         push               0x1                                                  // 0x0048f5f2    6a01
                         push               0x0                                                  // 0x0048f5f4    6a00
                         push               ecx                                                  // 0x0048f5f6    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000047f4]                    // 0x0048f5f7    8b8ef4470000
                         push               0x0                                                  // 0x0048f5fd    6a00
                         push               edx                                                  // 0x0048f5ff    52
                         {disp32} mov       edx, dword ptr [esi + 0x00000098]                    // 0x0048f600    8b9698000000
                         push               ecx                                                  // 0x0048f606    51
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000                   // 0x0048f607    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000                   // 0x0048f60f    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000                   // 0x0048f617    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000                   // 0x0048f61f    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000                   // 0x0048f627    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x0048f62f    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000                   // 0x0048f637    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000                   // 0x0048f63f    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000                   // 0x0048f647    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x3f800000                   // 0x0048f64f    c74424500000803f
                         {disp8} mov        dword ptr [esp + 0x40], 0x3f800000                   // 0x0048f657    c74424400000803f
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f800000                   // 0x0048f65f    c74424300000803f
                         {disp32} mov       ecx, dword ptr [esi + edx * 0x4 + 0x000000b4]        // 0x0048f667    8b8c96b4000000
                         {disp32} mov       edx, dword ptr [esi + 0x00005180]                    // 0x0048f66e    8b9680510000
                         push               ecx                                                  // 0x0048f674    51
                         push               edx                                                  // 0x0048f675    52
                         mov.s              ecx, eax                                             // 0x0048f676    8bc8
                         call               _jmp_addr_0x00860e00                                 // 0x0048f678    e883173d00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]                    // 0x0048f67d    8b8e98000000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x000000b4]        // 0x0048f683    8b948eb4000000
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x0048f68a    8d442418
                         push               eax                                                  // 0x0048f68e    50
                         {disp32} mov       eax, dword ptr [esi + 0x00005180]                    // 0x0048f68f    8b8680510000
                         push               edx                                                  // 0x0048f695    52
                         push               eax                                                  // 0x0048f696    50
                         call               _jmp_addr_0x00839f10                                 // 0x0048f697    e874a83a00
                         {disp32} mov       eax, dword ptr [esi + 0x000047b8]                    // 0x0048f69c    8b86b8470000
                         add                esp, 0x0c                                            // 0x0048f6a2    83c40c
                         xor.s              edi, edi                                             // 0x0048f6a5    33ff
                         test               eax, eax                                             // 0x0048f6a7    85c0
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x0048f6a9    c744240800000000
                         {disp8} jle        _jmp_addr_0x0048f705                                 // 0x0048f6b1    7e52
                         push               ebx                                                  // 0x0048f6b3    53
                         xor.s              ebx, ebx                                             // 0x0048f6b4    33db
_jmp_addr_0x0048f6b6:    {disp32} mov       ecx, dword ptr [esi + 0x00005180]                    // 0x0048f6b6    8b8e80510000
                         {disp8} lea        edx, dword ptr [ebx + ecx * 0x1 + 0x24]              // 0x0048f6bc    8d540b24
                         mov                eax, dword ptr [edx]                                 // 0x0048f6c0    8b02
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0048f6c2    89442410
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                          // 0x0048f6c6    8b4a04
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x0048f6c9    894c2414
                         {disp8} mov        edx, dword ptr [edx + 0x08]                          // 0x0048f6cd    8b5208
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x0048f6d0    8d442410
                         push               eax                                                  // 0x0048f6d4    50
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x0048f6d5    8954241c
                         call               _jmp_addr_0x006e8160                                 // 0x0048f6d9    e8828a2500
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0048f6de    d9442410
                         fcomp              st(1)                                                // 0x0048f6e2    d8d9
                         add                esp, 0x04                                            // 0x0048f6e4    83c404
                         fnstsw             ax                                                   // 0x0048f6e7    dfe0
                         test               ah, 0x01                                             // 0x0048f6e9    f6c401
                         {disp8} je         _jmp_addr_0x0048f6f4                                 // 0x0048f6ec    7406
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0048f6ee    d95c240c
                         {disp8} jmp        _jmp_addr_0x0048f6f6                                 // 0x0048f6f2    eb02
_jmp_addr_0x0048f6f4:    fstp               st(0)                                                // 0x0048f6f4    ddd8
_jmp_addr_0x0048f6f6:    {disp32} mov       eax, dword ptr [esi + 0x000047b8]                    // 0x0048f6f6    8b86b8470000
                         inc                edi                                                  // 0x0048f6fc    47
                         add                ebx, 0x30                                            // 0x0048f6fd    83c330
                         cmp.s              edi, eax                                             // 0x0048f700    3bf8
                         {disp8} jl         _jmp_addr_0x0048f6b6                                 // 0x0048f702    7cb2
                         pop                ebx                                                  // 0x0048f704    5b
_jmp_addr_0x0048f705:    {disp8} fld        dword ptr [esp + 0x08]                               // 0x0048f705    d9442408
                         pop                edi                                                  // 0x0048f709    5f
                         pop                esi                                                  // 0x0048f70a    5e
                         add                esp, 0x40                                            // 0x0048f70b    83c440
                         ret                                                                     // 0x0048f70e    c3
                         nop                                                                     // 0x0048f70f    90
_jmp_addr_0x0048f710:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x0048f710    8b442408
                         test               eax, eax                                             // 0x0048f714    85c0
                         push               esi                                                  // 0x0048f716    56
                         mov.s              esi, ecx                                             // 0x0048f717    8bf1
                         {disp8} je         _jmp_addr_0x0048f735                                 // 0x0048f719    741a
                         call               _jmp_addr_0x004848f0                                 // 0x0048f71b    e8d051ffff
                         mov.s              ecx, esi                                             // 0x0048f720    8bce
                         call               _jmp_addr_0x004845f0                                 // 0x0048f722    e8c94effff
                         mov.s              ecx, esi                                             // 0x0048f727    8bce
                         call               _jmp_addr_0x004848c0                                 // 0x0048f729    e89251ffff
                         mov.s              ecx, esi                                             // 0x0048f72e    8bce
                         call               _jmp_addr_0x00484ae0                                 // 0x0048f730    e8ab53ffff
_jmp_addr_0x0048f735:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x0048f735    8b442408
                         test               eax, eax                                             // 0x0048f739    85c0
                         {disp8} je         _jmp_addr_0x0048f744                                 // 0x0048f73b    7407
                         mov.s              ecx, esi                                             // 0x0048f73d    8bce
                         call               _jmp_addr_0x00484260                                 // 0x0048f73f    e81c4bffff
_jmp_addr_0x0048f744:    pop                esi                                                  // 0x0048f744    5e
                         ret                0x0008                                               // 0x0048f745    c20800
                         nop                                                                     // 0x0048f748    90
                         nop                                                                     // 0x0048f749    90
                         nop                                                                     // 0x0048f74a    90
                         nop                                                                     // 0x0048f74b    90
                         nop                                                                     // 0x0048f74c    90
                         nop                                                                     // 0x0048f74d    90
                         nop                                                                     // 0x0048f74e    90
                         nop                                                                     // 0x0048f74f    90
_jmp_addr_0x0048f750:    {disp32} mov       eax, dword ptr [ecx + 0x00004994]                    // 0x0048f750    8b8194490000
                         add                eax, -0x02                                           // 0x0048f756    83c0fe
                         cmp                eax, 0x23                                            // 0x0048f759    83f823
                         {disp8} ja         _jmp_addr_0x0048f777                                 // 0x0048f75c    7719
                         xor.s              edx, edx                                             // 0x0048f75e    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x0048f780]                      // 0x0048f760    8a9080f74800
                         jmp                dword ptr [edx*4 + 0x48f778]                         // 0x0048f766    ff249578f74800
                         {disp32} mov       dword ptr [ecx + 0x00005730], 0x00000001             // 0x0048f76d    c7813057000001000000
_jmp_addr_0x0048f777:    ret                                                                     // 0x0048f777    c3

// Snippet: jmptbl, [0x0048f778, 0x0048f780)
.byte 0x6d, 0xf7, 0x48, 0x00      // 0x0048f778
.byte 0x77, 0xf7, 0x48, 0x00      // 0x0048f77c

// Snippet: ijmptbl, [0x0048f780, 0x0048f7a4)
.byte 0x00, 0x00, 0x00, 0x00      // 0x0048f780
.byte 0x00, 0x00, 0x00, 0x00      // 0x0048f784
.byte 0x00, 0x00, 0x00, 0x01      // 0x0048f788
.byte 0x00, 0x01, 0x00, 0x01      // 0x0048f78c
.byte 0x01, 0x01, 0x01, 0x01      // 0x0048f790
.byte 0x00, 0x00, 0x00, 0x00      // 0x0048f794
.byte 0x01, 0x01, 0x01, 0x01      // 0x0048f798
.byte 0x01, 0x01, 0x01, 0x01      // 0x0048f79c
.byte 0x01, 0x01, 0x01, 0x00      // 0x0048f7a0

// Snippet: db, [0x0048f7a4, 0x0048f7b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048f7a4
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048f7a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048f7ac

