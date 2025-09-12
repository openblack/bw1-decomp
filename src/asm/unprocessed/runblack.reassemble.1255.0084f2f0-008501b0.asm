.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007fae60
.extern _jmp_addr_0x007fb5c0
.extern _jmp_addr_0x00841170
.extern _jmp_addr_0x0084ca00

.globl _jmp_addr_0x0084f2f0
.globl _jmp_addr_0x0084f910

.globl _globl_ct_0x0084f8e0

start_0x0084f2f0_0x008501b0:
// Snippet: asm, [0x0084f2f0, 0x0085018c)
_jmp_addr_0x0084f2f0:    sub                esp, 0x00000398                               // 0x0084f2f0    81ec98030000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e33bc]        // 0x0084f2f6    a1bc93fa00
                         push               ebx                                           // 0x0084f2fb    53
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x271d8c]        // 0x0084f2fc    8b1d8c7dc300
                         mov.s              edx, ecx                                      // 0x0084f302    8bd1
                         push               ebp                                           // 0x0084f304    55
                         {disp32} mov       dword ptr [data_bytes + 0x53f17c], edx        // 0x0084f305    89157c51f000
                         test               byte ptr [eax], 0x01                          // 0x0084f30b    f60001
                         push               esi                                           // 0x0084f30e    56
                         push               edi                                           // 0x0084f30f    57
                         {disp8} mov        edi, dword ptr [edx + 0x14]                   // 0x0084f310    8b7a14
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0084f313    89542418
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x0084f317    895c2414
                         mov                ebp, 0x00e47460                               // 0x0084f31b    bd6074e400
                         {disp32} jne       _jmp_addr_0x0084f3b1                          // 0x0084f320    0f858b000000
                         {disp8} mov        eax, dword ptr [edx + 0x10]                   // 0x0084f326    8b4210
                         xor.s              esi, esi                                      // 0x0084f329    33f6
                         test               eax, eax                                      // 0x0084f32b    85c0
                         {disp32} jle       _jmp_addr_0x0084f526                          // 0x0084f32d    0f8ef3010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea0]        // 0x0084f333    a1a09eea00
                         mov                ecx, 0x00e4746c                               // 0x0084f338    b96c74e400
_jmp_addr_0x0084f33d:    {disp8} fld        dword ptr [eax + 0x18]                        // 0x0084f33d    d94018
                         add                ecx, 0x20                                     // 0x0084f340    83c120
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x0084f343    d84f08
                         add                edi, 0x20                                     // 0x0084f346    83c720
                         {disp8} fld        dword ptr [edi + -0x1c]                       // 0x0084f349    d947e4
                         inc                esi                                           // 0x0084f34c    46
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0084f34d    d8480c
                         faddp              st(1), st                                     // 0x0084f350    dec1
                         {disp8} fld        dword ptr [edi + -0x20]                       // 0x0084f352    d947e0
                         fmul               dword ptr [eax]                               // 0x0084f355    d808
                         faddp              st(1), st                                     // 0x0084f357    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0084f359    d84024
                         {disp8} fstp       dword ptr [ecx + -0x2c]                       // 0x0084f35c    d959d4
                         {disp8} fld        dword ptr [eax + 0x1c]                        // 0x0084f35f    d9401c
                         {disp8} fmul       dword ptr [edi + -0x18]                       // 0x0084f362    d84fe8
                         {disp8} fld        dword ptr [edi + -0x1c]                       // 0x0084f365    d947e4
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0084f368    d84810
                         faddp              st(1), st                                     // 0x0084f36b    dec1
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0084f36d    d94004
                         {disp8} fmul       dword ptr [edi + -0x20]                       // 0x0084f370    d84fe0
                         faddp              st(1), st                                     // 0x0084f373    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x0084f375    d84028
                         {disp8} fstp       dword ptr [ecx + -0x28]                       // 0x0084f378    d959d8
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0084f37b    d94020
                         {disp8} fmul       dword ptr [edi + -0x18]                       // 0x0084f37e    d84fe8
                         {disp8} fld        dword ptr [edi + -0x1c]                       // 0x0084f381    d947e4
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0084f384    d84814
                         faddp              st(1), st                                     // 0x0084f387    dec1
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0084f389    d94008
                         {disp8} fmul       dword ptr [edi + -0x20]                       // 0x0084f38c    d84fe0
                         faddp              st(1), st                                     // 0x0084f38f    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0084f391    d8402c
                         {disp8} fstp       dword ptr [ecx + -0x20]                       // 0x0084f394    d959e0
                         {disp8} mov        ebp, dword ptr [ecx + -0x20]                  // 0x0084f397    8b69e0
                         {disp8} mov        dword ptr [ecx + -0x24], ebp                  // 0x0084f39a    8969dc
                         {disp8} mov        dword ptr [ecx + -0x1c], ebx                  // 0x0084f39d    8959e4
                         {disp8} mov        dword ptr [ecx + -0x18], 0x00000000           // 0x0084f3a0    c741e800000000
                         cmp                esi, dword ptr [edx + 0x10]                   // 0x0084f3a7    3b7210
                         {disp8} jl         _jmp_addr_0x0084f33d                          // 0x0084f3aa    7c91
                         {disp32} jmp       _jmp_addr_0x0084f526                          // 0x0084f3ac    e975010000
_jmp_addr_0x0084f3b1:    {disp8} mov        eax, dword ptr [edx + 0x20]                   // 0x0084f3b1    8b4220
                         xor.s              ebx, ebx                                      // 0x0084f3b4    33db
                         cmp.s              eax, ebx                                      // 0x0084f3b6    3bc3
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0084f3b8    895c2410
                         {disp32} jle       _jmp_addr_0x0084f526                          // 0x0084f3bc    0f8e64010000
                         {disp8} jmp        _jmp_addr_0x0084f3c8                          // 0x0084f3c2    eb04
_jmp_addr_0x0084f3c4:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0084f3c4    8b542418
_jmp_addr_0x0084f3c8:    {disp8} mov        ecx, dword ptr [edx + 0x24]                   // 0x0084f3c8    8b4a24
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0084f3cb    8b542410
                         lea                eax, dword ptr [ecx + edx * 0x4]              // 0x0084f3cf    8d0491
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3e44]        // 0x0084f3d2    8b0d449eea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3e48]        // 0x0084f3d8    8b15489eea00
                         xor.s              esi, esi                                      // 0x0084f3de    33f6
                         {disp8} mov        si, word ptr [eax + 0x02]                     // 0x0084f3e0    668b7002
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0084f3e4    8944241c
                         {disp32} mov       eax, dword ptr [?g_current_matrix@LH3DMesh@@2PAULH3DMatrix@@A]        // 0x0084f3e8    a148fee900
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e14], ecx        // 0x0084f3ed    890d149eea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3e50]        // 0x0084f3f3    8b0d509eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e18], edx        // 0x0084f3f9    8915189eea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3e54]        // 0x0084f3ff    8b15549eea00
                         lea                esi, dword ptr [esi + esi * 0x2]              // 0x0084f405    8d3476
                         shl                esi, 4                                        // 0x0084f408    c1e604
                         add.s              esi, eax                                      // 0x0084f40b    03f0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e40]        // 0x0084f40d    a1409eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e10], eax        // 0x0084f412    a3109eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e4c]        // 0x0084f417    a14c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e20], ecx        // 0x0084f41c    890d209eea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3e5c]        // 0x0084f422    8b0d5c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e24], edx        // 0x0084f428    8915249eea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3e60]        // 0x0084f42e    8b15609eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e1c], eax        // 0x0084f434    a31c9eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e58]        // 0x0084f439    a1589eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e2c], ecx        // 0x0084f43e    890d2c9eea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3e68]        // 0x0084f444    8b0d689eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e30], edx        // 0x0084f44a    8915309eea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3e6c]        // 0x0084f450    8b156c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e28], eax        // 0x0084f456    a3289eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e64]        // 0x0084f45b    a1649eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e38], ecx        // 0x0084f460    890d389eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e3c], edx        // 0x0084f466    89153c9eea00
                         mov.s              edx, esi                                      // 0x0084f46c    8bd6
                         mov                ecx, 0x00ea9e10                               // 0x0084f46e    b9109eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e34], eax        // 0x0084f473    a3349eea00
                         call               _jmp_addr_0x007fae60                          // 0x0084f478    e8e3b9faff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0084f47d    8b4c241c
                         xor.s              edx, edx                                      // 0x0084f481    33d2
                         mov                dx, word ptr [ecx]                            // 0x0084f483    668b11
                         mov.s              eax, ebx                                      // 0x0084f486    8bc3
                         add.s              edx, ebx                                      // 0x0084f488    03d3
                         cmp.s              ebx, edx                                      // 0x0084f48a    3bda
                         {disp8} jge        _jmp_addr_0x0084f507                          // 0x0084f48c    7d79
_jmp_addr_0x0084f48e:    {disp8} fld        dword ptr [esi + 0x18]                        // 0x0084f48e    d94618
                         add                ebp, 0x20                                     // 0x0084f491    83c520
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x0084f494    d84f08
                         add                edi, 0x20                                     // 0x0084f497    83c720
                         {disp8} fld        dword ptr [edi + -0x20]                       // 0x0084f49a    d947e0
                         inc                eax                                           // 0x0084f49d    40
                         fmul               dword ptr [esi]                               // 0x0084f49e    d80e
                         faddp              st(1), st                                     // 0x0084f4a0    dec1
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0084f4a2    d9460c
                         {disp8} fmul       dword ptr [edi + -0x1c]                       // 0x0084f4a5    d84fe4
                         faddp              st(1), st                                     // 0x0084f4a8    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                        // 0x0084f4aa    d84624
                         {disp8} fstp       dword ptr [ebp + -0x20]                       // 0x0084f4ad    d95de0
                         {disp8} fld        dword ptr [esi + 0x1c]                        // 0x0084f4b0    d9461c
                         {disp8} fmul       dword ptr [edi + -0x18]                       // 0x0084f4b3    d84fe8
                         {disp8} fld        dword ptr [edi + -0x1c]                       // 0x0084f4b6    d947e4
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x0084f4b9    d84e10
                         faddp              st(1), st                                     // 0x0084f4bc    dec1
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x0084f4be    d94604
                         {disp8} fmul       dword ptr [edi + -0x20]                       // 0x0084f4c1    d84fe0
                         faddp              st(1), st                                     // 0x0084f4c4    dec1
                         {disp8} fadd       dword ptr [esi + 0x28]                        // 0x0084f4c6    d84628
                         {disp8} fstp       dword ptr [ebp + -0x1c]                       // 0x0084f4c9    d95de4
                         {disp8} fld        dword ptr [edi + -0x1c]                       // 0x0084f4cc    d947e4
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0084f4cf    d84e14
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x0084f4d2    d94608
                         {disp8} fmul       dword ptr [edi + -0x20]                       // 0x0084f4d5    d84fe0
                         faddp              st(1), st                                     // 0x0084f4d8    dec1
                         {disp8} fld        dword ptr [esi + 0x20]                        // 0x0084f4da    d94620
                         {disp8} fmul       dword ptr [edi + -0x18]                       // 0x0084f4dd    d84fe8
                         faddp              st(1), st                                     // 0x0084f4e0    dec1
                         {disp8} fadd       dword ptr [esi + 0x2c]                        // 0x0084f4e2    d8462c
                         {disp8} fstp       dword ptr [ebp + -0x14]                       // 0x0084f4e5    d95dec
                         {disp8} mov        edx, dword ptr [ebp + -0x14]                  // 0x0084f4e8    8b55ec
                         {disp8} mov        dword ptr [ebp + -0x18], edx                  // 0x0084f4eb    8955e8
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0084f4ee    8b542414
                         {disp8} mov        dword ptr [ebp + -0x10], edx                  // 0x0084f4f2    8955f0
                         xor.s              edx, edx                                      // 0x0084f4f5    33d2
                         {disp8} mov        dword ptr [ebp + -0x0c], 0x00000000           // 0x0084f4f7    c745f400000000
                         mov                dx, word ptr [ecx]                            // 0x0084f4fe    668b11
                         add.s              edx, ebx                                      // 0x0084f501    03d3
                         cmp.s              eax, edx                                      // 0x0084f503    3bc2
                         {disp8} jl         _jmp_addr_0x0084f48e                          // 0x0084f505    7c87
_jmp_addr_0x0084f507:    xor.s              eax, eax                                      // 0x0084f507    33c0
                         mov                ax, word ptr [ecx]                            // 0x0084f509    668b01
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0084f50c    8b4c2418
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x0084f510    8b5120
                         add.s              ebx, eax                                      // 0x0084f513    03d8
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0084f515    8b442410
                         inc                eax                                           // 0x0084f519    40
                         cmp.s              eax, edx                                      // 0x0084f51a    3bc2
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0084f51c    89442410
                         {disp32} jl        _jmp_addr_0x0084f3c4                          // 0x0084f520    0f8c9efeffff
_jmp_addr_0x0084f526:    mov                ecx, 0x0000000c                               // 0x0084f526    b90c000000
                         mov                esi, 0x00ea1d28                               // 0x0084f52b    be281dea00
                         {disp8} lea        edi, dword ptr [esp + 0x78]                   // 0x0084f530    8d7c2478
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0084f534    f3a5
                         mov                edx, 0x00ea9de0                               // 0x0084f536    bae09dea00
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                   // 0x0084f53b    8d4c2478
                         call               _jmp_addr_0x007fae60                          // 0x0084f53f    e81cb9faff
                         mov                edx, 0x00f030e8                               // 0x0084f544    bae830f000
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                   // 0x0084f549    8d4c2478
                         call               _jmp_addr_0x007fae60                          // 0x0084f54d    e80eb9faff
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                   // 0x0084f552    8b44247c
                         {disp32} mov       ecx, dword ptr [esp + 0x00000080]             // 0x0084f556    8b8c2480000000
                         {disp8} mov        edx, dword ptr [esp + 0x78]                   // 0x0084f55d    8b542478
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0084f561    8b7c2418
                         {disp8} mov        esi, dword ptr [edi + 0x1c]                   // 0x0084f565    8b771c
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x0084f568    89442440
                         {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x0084f56c    8b842488000000
                         {disp8} mov        dword ptr [esp + 0x44], ecx                   // 0x0084f573    894c2444
                         {disp32} mov       ecx, dword ptr [esp + 0x0000008c]             // 0x0084f577    8b8c248c000000
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0084f57e    8954243c
                         {disp32} mov       edx, dword ptr [esp + 0x00000084]             // 0x0084f582    8b942484000000
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0084f589    89442458
                         {disp8} mov        dword ptr [esp + 0x5c], ecx                   // 0x0084f58d    894c245c
                         {disp8} mov        dword ptr [esp + 0x54], edx                   // 0x0084f591    89542454
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x0084f595    89742410
                         mov                eax, 0x00000002                               // 0x0084f599    b802000000
                         {disp32} lea       ecx, dword ptr [esp + 0x000000ac]             // 0x0084f59e    8d8c24ac000000
_jmp_addr_0x0084f5a5:    {disp8} lea        edx, dword ptr [eax + -0x02]                  // 0x0084f5a5    8d50fe
                         {disp8} mov        dword ptr [ecx + -0x04], edx                  // 0x0084f5a8    8951fc
                         {disp8} lea        edx, dword ptr [eax + -0x01]                  // 0x0084f5ab    8d50ff
                         mov                dword ptr [ecx], edx                          // 0x0084f5ae    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0084f5b0    894104
                         add                eax, 0x03                                     // 0x0084f5b3    83c003
                         add                ecx, 0xc                                      // 0x0084f5b6    83c10c
                         cmp                eax, 0x000000c2                               // 0x0084f5b9    3dc2000000
                         {disp8} jl         _jmp_addr_0x0084f5a5                          // 0x0084f5be    7ce5
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0084f5c0    8b4718
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0084f5c3    8d0440
                         lea                ecx, dword ptr [esi + eax * 0x2]              // 0x0084f5c6    8d0c46
                         cmp.s              esi, ecx                                      // 0x0084f5c9    3bf1
                         {disp32} jae       _jmp_addr_0x0084f8d3                          // 0x0084f5cb    0f8302030000
_jmp_addr_0x0084f5d1:    xor.s              ebx, ebx                                      // 0x0084f5d1    33db
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x0084f5d3    895c242c
                         mov                ebp, 0x00e43820                               // 0x0084f5d7    bd2038e400
_jmp_addr_0x0084f5dc:    {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0084f5dc    8b4718
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x0084f5df    8d1440
                         {disp8} mov        eax, dword ptr [edi + 0x1c]                   // 0x0084f5e2    8b471c
                         lea                ecx, dword ptr [eax + edx * 0x2]              // 0x0084f5e5    8d0c50
                         cmp.s              esi, ecx                                      // 0x0084f5e8    3bf1
                         {disp32} jae       _jmp_addr_0x0084f7c9                          // 0x0084f5ea    0f83d9010000
                         mov                ax, word ptr [esi]                            // 0x0084f5f0    668b06
                         {disp8} mov        dx, word ptr [esi + 0x02]                     // 0x0084f5f3    668b5602
                         {disp8} mov        bx, word ptr [esi + 0x04]                     // 0x0084f5f7    668b5e04
                         {disp8} lea        edi, dword ptr [ebp + -0x40]                  // 0x0084f5fb    8d7dc0
                         mov                ecx, 0x00000008                               // 0x0084f5fe    b908000000
                         and                eax, 0x0000ffff                               // 0x0084f603    25ffff0000
                         shl                eax, 5                                        // 0x0084f608    c1e005
                         {disp32} lea       eax, dword ptr [eax + 0x00e47460]             // 0x0084f60b    8d806074e400
                         and                edx, 0x0000ffff                               // 0x0084f611    81e2ffff0000
                         shl                edx, 5                                        // 0x0084f617    c1e205
                         mov.s              esi, eax                                      // 0x0084f61a    8bf0
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0084f61c    f3a5
                         {disp32} lea       edx, dword ptr [edx + 0x00e47460]             // 0x0084f61e    8d926074e400
                         and                ebx, 0x0000ffff                               // 0x0084f624    81e3ffff0000
                         mov.s              esi, edx                                      // 0x0084f62a    8bf2
                         shl                ebx, 5                                        // 0x0084f62c    c1e305
                         {disp32} lea       ebx, dword ptr [ebx + 0x00e47460]             // 0x0084f62f    8d9b6074e400
                         {disp8} lea        edi, dword ptr [ebp + -0x20]                  // 0x0084f635    8d7de0
                         mov                ecx, 0x00000008                               // 0x0084f638    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0084f63d    f3a5
                         mov                ecx, 0x00000008                               // 0x0084f63f    b908000000
                         mov.s              esi, ebx                                      // 0x0084f644    8bf3
                         mov.s              edi, ebp                                      // 0x0084f646    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0084f648    f3a5
                         fld                dword ptr [eax]                               // 0x0084f64a    d900
                         fld                dword ptr [edx]                               // 0x0084f64c    d902
                         fld                dword ptr [ebx]                               // 0x0084f64e    d903
                         fld                st(1)                                         // 0x0084f650    d9c1
                         fsub               st, st(1)                                     // 0x0084f652    d8e1
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0084f654    8b4804
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0084f657    8b4008
                         {disp8} mov        dword ptr [esp + 0x70], ecx                   // 0x0084f65a    894c2470
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0084f65e    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0084f661    8b5208
                         {disp8} mov        dword ptr [esp + 0x74], eax                   // 0x0084f664    89442474
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0084f668    d95c2430
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x0084f66c    8b4304
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x0084f66f    894c244c
                         fstp               st(0)                                         // 0x0084f673    ddd8
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x0084f675    8b4b08
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x0084f678    d944244c
                         {disp8} mov        dword ptr [esp + 0x64], eax                   // 0x0084f67c    89442464
                         {disp8} fsub       dword ptr [esp + 0x64]                        // 0x0084f680    d8642464
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x0084f684    89542450
                         {disp8} mov        dword ptr [esp + 0x68], ecx                   // 0x0084f688    894c2468
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0084f68c    d95c2434
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0084f690    d9442450
                         {disp8} fsub       dword ptr [esp + 0x68]                        // 0x0084f694    d8642468
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0084f698    d95c2438
                         fxch               st(1)                                         // 0x0084f69c    d9c9
                         fsub               st, st(1)                                     // 0x0084f69e    d8e1
                         fxch               st(1)                                         // 0x0084f6a0    d9c9
                         fstp               st(0)                                         // 0x0084f6a2    ddd8
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0084f6a4    d9442470
                         {disp8} fsub       dword ptr [esp + 0x4c]                        // 0x0084f6a8    d864244c
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x0084f6ac    d9442474
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x0084f6b0    d8642450
                         fld                st(1)                                         // 0x0084f6b4    d9c1
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0084f6b6    d84c2438
                         fld                st(1)                                         // 0x0084f6ba    d9c1
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x0084f6bc    d84c2434
                         fsubp              st(1), st                                     // 0x0084f6c0    dee9
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0084f6c2    d95c2420
                         {disp8} fmul       dword ptr [esp + 0x30]                        // 0x0084f6c6    d84c2430
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0084f6ca    d9442438
                         fmul               st, st(3)                                     // 0x0084f6ce    d8cb
                         fsubp              st(1), st                                     // 0x0084f6d0    dee9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0084f6d2    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0084f6d6    d9442434
                         fmul               st, st(2)                                     // 0x0084f6da    d8ca
                         fxch               st(1)                                         // 0x0084f6dc    d9c9
                         {disp8} fmul       dword ptr [esp + 0x30]                        // 0x0084f6de    d84c2430
                         fsubp              st(1), st                                     // 0x0084f6e2    dee9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0084f6e4    d95c2428
                         fstp               st(0)                                         // 0x0084f6e8    ddd8
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0084f6ea    d9442428
                         push               ecx                                           // 0x0084f6ee    51
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0084f6ef    d9442428
                         fld                st(0)                                         // 0x0084f6f3    d9c0
                         fmul               st, st(1)                                     // 0x0084f6f5    d8c9
                         fld                st(2)                                         // 0x0084f6f7    d9c2
                         fmul               st, st(3)                                     // 0x0084f6f9    d8cb
                         faddp              st(1), st                                     // 0x0084f6fb    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0084f6fd    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0084f701    d84c2424
                         faddp              st(1), st                                     // 0x0084f705    dec1
                         fstp               dword ptr [esp]                               // 0x0084f707    d91c24
                         fstp               st(0)                                         // 0x0084f70a    ddd8
                         fstp               st(0)                                         // 0x0084f70c    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0084f70e    e85d1affff
                         fld                st(0)                                         // 0x0084f713    d9c0
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0084f715    8b742414
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0084f719    d84c2424
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x0084f71d    8b7c241c
                         add                esi, 0x06                                     // 0x0084f721    83c606
                         add                esp, 0x04                                     // 0x0084f724    83c404
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0084f727    d95c2420
                         add                ebp, 0x60                                     // 0x0084f72b    83c560
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x0084f72e    89742410
                         fld                st(0)                                         // 0x0084f732    d9c0
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0084f734    d84c2424
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0084f738    d95c2424
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0084f73c    d84c2428
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0084f740    d9442444
                         fmul               st, st(1)                                     // 0x0084f744    d8c9
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0084f746    d9442440
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0084f74a    d84c2424
                         faddp              st(1), st                                     // 0x0084f74e    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0084f750    d944243c
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0084f754    d84c2420
                         faddp              st(1), st                                     // 0x0084f758    dec1
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0084f75a    d80590a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfab98]             // 0x0084f760    d80d983b9a00
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x0084f766    d944245c
                         fmul               st, st(2)                                     // 0x0084f76a    d8ca
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0084f76c    d9442458
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0084f770    d84c2424
                         faddp              st(1), st                                     // 0x0084f774    dec1
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x0084f776    d9442454
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0084f77a    d84c2420
                         faddp              st(1), st                                     // 0x0084f77e    dec1
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0084f780    d80590a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfab98]             // 0x0084f786    d80d983b9a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0084f78c    d95c2414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0084f790    8b542414
                         {disp8} fst        dword ptr [ebp + -0x48]                       // 0x0084f794    d955b8
                         mov.s              eax, edx                                      // 0x0084f797    8bc2
                         {disp8} fst        dword ptr [ebp + -0x68]                       // 0x0084f799    d95598
                         mov.s              ecx, edx                                      // 0x0084f79c    8bca
                         {disp32} fstp      dword ptr [ebp + -0x00000088]                 // 0x0084f79e    d99d78ffffff
                         {disp8} mov        dword ptr [ebp + -0x44], edx                  // 0x0084f7a4    8955bc
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0084f7a7    8b54242c
                         {disp8} mov        dword ptr [ebp + -0x64], eax                  // 0x0084f7ab    89459c
                         fstp               st(0)                                         // 0x0084f7ae    ddd8
                         {disp32} mov       dword ptr [ebp + -0x00000084], ecx            // 0x0084f7b0    898d7cffffff
                         inc                edx                                           // 0x0084f7b6    42
                         cmp                ebp, 0x00e45020                               // 0x0084f7b7    81fd2050e400
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0084f7bd    8954242c
                         mov.s              ebx, edx                                      // 0x0084f7c1    8bda
                         {disp32} jl        _jmp_addr_0x0084f5dc                          // 0x0084f7c3    0f8c13feffff
_jmp_addr_0x0084f7c9:    test               ebx, ebx                                      // 0x0084f7c9    85db
                         {disp32} jle       _jmp_addr_0x0084f8bf                          // 0x0084f7cb    0f8eee000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50464c]        // 0x0084f7d1    a14ca6ec00
                         {disp8} mov        cl, byte ptr [edi + 0x05]                     // 0x0084f7d6    8a4f05
                         xor.s              edx, edx                                      // 0x0084f7d9    33d2
                         {disp8} mov        dl, byte ptr [eax + 0x05]                     // 0x0084f7db    8a5005
                         and                edx, 0x01                                     // 0x0084f7de    83e201
                         test               cl, 0x01                                      // 0x0084f7e1    f6c101
                         {disp8} mov        cl, byte ptr [eax + 0x05]                     // 0x0084f7e4    8a4805
                         mov.s              ebp, edx                                      // 0x0084f7e7    8bea
                         {disp8} je         _jmp_addr_0x0084f7f0                          // 0x0084f7e9    7405
                         or                 cl, 1                                         // 0x0084f7eb    80c901
                         {disp8} jmp        _jmp_addr_0x0084f7f3                          // 0x0084f7ee    eb03
_jmp_addr_0x0084f7f0:    and                cl, -0x02                                     // 0x0084f7f0    80e1fe
_jmp_addr_0x0084f7f3:    {disp8} mov        byte ptr [eax + 0x05], cl                     // 0x0084f7f3    884805
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0084f7f6    a14ca2ec00
                         cmp                eax, -0x01                                    // 0x0084f7fb    83f8ff
                         {disp8} jne        _jmp_addr_0x0084f82d                          // 0x0084f7fe    752d
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0084f800    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0084f805    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0084f807    8d54241c
                         push               edx                                           // 0x0084f80b    52
                         push               0x17                                          // 0x0084f80c    6a17
                         push               eax                                           // 0x0084f80e    50
                         call               dword ptr [ecx + 0x54]                        // 0x0084f80f    ff5154
                         test               eax, eax                                      // 0x0084f812    85c0
                         {disp8} je         _jmp_addr_0x0084f822                          // 0x0084f814    740c
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], 0xffffffff // 0x0084f816    c7054ca2ec00ffffffff
                         {disp8} jmp        _jmp_addr_0x0084f836                          // 0x0084f820    eb14
_jmp_addr_0x0084f822:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0084f822    8b44241c
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x0084f826    a34ca2ec00
                         {disp8} jmp        _jmp_addr_0x0084f831                          // 0x0084f82b    eb04
_jmp_addr_0x0084f82d:    {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0084f82d    8944241c
_jmp_addr_0x0084f831:    cmp                eax, 0x03                                     // 0x0084f831    83f803
                         {disp8} je         _jmp_addr_0x0084f854                          // 0x0084f834    741e
_jmp_addr_0x0084f836:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0084f836    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0084f83b    8b08
                         push               0x3                                           // 0x0084f83d    6a03
                         push               0x17                                          // 0x0084f83f    6a17
                         push               eax                                           // 0x0084f841    50
                         call               dword ptr [ecx + 0x50]                        // 0x0084f842    ff5150
                         neg                eax                                           // 0x0084f845    f7d8
                         sbb.s              eax, eax                                      // 0x0084f847    1bc0
                         and                eax, 0xfffffffc                               // 0x0084f849    83e0fc
                         add                eax, 0x03                                     // 0x0084f84c    83c003
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x0084f84f    a34ca2ec00
_jmp_addr_0x0084f854:    {disp32} mov       edx, dword ptr [data_bytes + 0x50464c]        // 0x0084f854    8b154ca6ec00
                         push               edx                                           // 0x0084f85a    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000ac]             // 0x0084f85b    8d8424ac000000
                         push               eax                                           // 0x0084f862    50
                         push               ebx                                           // 0x0084f863    53
                         lea                ecx, dword ptr [ebx + ebx * 0x2]              // 0x0084f864    8d0c5b
                         push               0x00e437e0                                    // 0x0084f867    68e037e400
                         push               ecx                                           // 0x0084f86c    51
                         call               _jmp_addr_0x0084ca00                          // 0x0084f86d    e88ed1ffff
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0084f872    8b442430
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x50424c]        // 0x0084f876    8b0d4ca2ec00
                         add                esp, 0x14                                     // 0x0084f87c    83c414
                         cmp.s              ecx, eax                                      // 0x0084f87f    3bc8
                         mov.s              ebx, eax                                      // 0x0084f881    8bd8
                         {disp8} je         _jmp_addr_0x0084f8a8                          // 0x0084f883    7423
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x0084f885    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x0084f88b    8b11
                         push               eax                                           // 0x0084f88d    50
                         push               0x17                                          // 0x0084f88e    6a17
                         push               ecx                                           // 0x0084f890    51
                         call               dword ptr [edx + 0x50]                        // 0x0084f891    ff5250
                         test               eax, eax                                      // 0x0084f894    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], 0xffffffff // 0x0084f896    c7054ca2ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0084f8a8                          // 0x0084f8a0    7506
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], ebx        // 0x0084f8a2    891d4ca2ec00
_jmp_addr_0x0084f8a8:    test               ebp, ebp                                      // 0x0084f8a8    85ed
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50464c]        // 0x0084f8aa    a14ca6ec00
                         {disp8} mov        cl, byte ptr [eax + 0x05]                     // 0x0084f8af    8a4805
                         {disp8} je         _jmp_addr_0x0084f8b9                          // 0x0084f8b2    7405
                         or                 cl, 1                                         // 0x0084f8b4    80c901
                         {disp8} jmp        _jmp_addr_0x0084f8bc                          // 0x0084f8b7    eb03
_jmp_addr_0x0084f8b9:    and                cl, -0x02                                     // 0x0084f8b9    80e1fe
_jmp_addr_0x0084f8bc:    {disp8} mov        byte ptr [eax + 0x05], cl                     // 0x0084f8bc    884805
_jmp_addr_0x0084f8bf:    {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0084f8bf    8b4718
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0084f8c2    8b4f1c
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0084f8c5    8d0440
                         lea                edx, dword ptr [ecx + eax * 0x2]              // 0x0084f8c8    8d1441
                         cmp.s              esi, edx                                      // 0x0084f8cb    3bf2
                         {disp32} jb        _jmp_addr_0x0084f5d1                          // 0x0084f8cd    0f82fefcffff
_jmp_addr_0x0084f8d3:    pop                edi                                           // 0x0084f8d3    5f
                         pop                esi                                           // 0x0084f8d4    5e
                         pop                ebp                                           // 0x0084f8d5    5d
                         pop                ebx                                           // 0x0084f8d6    5b
                         add                esp, 0x00000398                               // 0x0084f8d7    81c498030000
                         ret                                                              // 0x0084f8dd    c3
                         nop                                                              // 0x0084f8de    90
                         nop                                                              // 0x0084f8df    90
_globl_ct_0x0084f8e0:    {disp32} jmp       _jmp_addr_0x0084f8f0                          // 0x0084f8e0    e90b000000
                         nop                                                              // 0x0084f8e5    90
                         nop                                                              // 0x0084f8e6    90
                         nop                                                              // 0x0084f8e7    90
                         nop                                                              // 0x0084f8e8    90
                         nop                                                              // 0x0084f8e9    90
                         nop                                                              // 0x0084f8ea    90
                         nop                                                              // 0x0084f8eb    90
                         nop                                                              // 0x0084f8ec    90
                         nop                                                              // 0x0084f8ed    90
                         nop                                                              // 0x0084f8ee    90
                         nop                                                              // 0x0084f8ef    90
_jmp_addr_0x0084f8f0:    {disp32} mov       dword ptr [data_bytes + 0x53d0d8], 0x00000000 // 0x0084f8f0    c705d830f00000000000
                         {disp32} mov       dword ptr [data_bytes + 0x53d0dc], 0x3f800000 // 0x0084f8fa    c705dc30f0000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x53d0e0], 0x00000000 // 0x0084f904    c705e030f00000000000
                         ret                                                              // 0x0084f90e    c3
                         nop                                                              // 0x0084f90f    90
_jmp_addr_0x0084f910:    push               ebp                                           // 0x0084f910    55
                         mov.s              ebp, esp                                      // 0x0084f911    8bec
                         sub                esp, 0x00000388                               // 0x0084f913    81ec88030000
                         {disp32} fld       dword ptr [data_bytes + 0x2730ac]             // 0x0084f919    d905ac90c300
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e33bc]        // 0x0084f91f    8b15bc93fa00
                         {disp32} fsub      dword ptr [data_bytes + 0x2730a8]             // 0x0084f925    d825a890c300
                         {disp32} mov       dword ptr [data_bytes + 0x53f17c], ecx        // 0x0084f92b    890d7c51f000
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x0084f931    8b4114
                         push               ebx                                           // 0x0084f934    53
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0084f935    d83d90a38a00
                         {disp8} mov        dword ptr [ebp + -0x08], eax                  // 0x0084f93b    8945f8
                         test               byte ptr [edx], 0x01                          // 0x0084f93e    f60201
                         push               esi                                           // 0x0084f941    56
                         mov                ebx, 0x00e48c60                               // 0x0084f942    bb608ce400
                         push               edi                                           // 0x0084f947    57
                         {disp8} mov        dword ptr [ebp + -0x14], ecx                  // 0x0084f948    894dec
                         {disp8} mov        dword ptr [ebp + -0x0c], ebx                  // 0x0084f94b    895df4
                         {disp8} fstp       dword ptr [ebp + -0x3c]                       // 0x0084f94e    d95dc4
                         {disp32} jne       _jmp_addr_0x0084fc8f                          // 0x0084f951    0f8538030000
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4e3ea0]        // 0x0084f957    8b35a09eea00
                         mov                ecx, 0x0000000c                               // 0x0084f95d    b90c000000
                         {disp8} lea        edi, dword ptr [ebp + -0x7c]                  // 0x0084f962    8d7d84
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0084f965    f3a5
                         {disp8} lea        ecx, dword ptr [ebp + -0x7c]                  // 0x0084f967    8d4d84
                         call               _jmp_addr_0x007fb5c0                          // 0x0084f96a    e851bcfaff
                         {disp8} mov        eax, dword ptr [ebp + -0x14]                  // 0x0084f96f    8b45ec
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x0084f972    8b4810
                         test               ecx, ecx                                      // 0x0084f975    85c9
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000000           // 0x0084f977    c745fc00000000
                         {disp32} jle       _jmp_addr_0x0084fc0c                          // 0x0084f97e    0f8e88020000
                         {disp32} fld       qword ptr [__real@8@40008000000000000000]              // 0x0084f984    dd0510c48a00
                         {disp8} mov        esi, dword ptr [ebp + -0x08]                  // 0x0084f98a    8b75f8
                         fsqrt                                                            // 0x0084f98d    d9fa
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x0084f98f    8b0da09eea00
                         {disp8} lea        edi, dword ptr [esi + 0x1c]                   // 0x0084f995    8d7e1c
                         {disp8} fstp       dword ptr [ebp + -0x0c]                       // 0x0084f998    d95df4
_jmp_addr_0x0084f99b:    {disp8} fld        dword ptr [ecx + 0x18]                        // 0x0084f99b    d94118
                         {disp8} fmul       dword ptr [edi + -0x14]                       // 0x0084f99e    d84fec
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0084f9a1    d9410c
                         {disp8} fmul       dword ptr [edi + -0x18]                       // 0x0084f9a4    d84fe8
                         faddp              st(1), st                                     // 0x0084f9a7    dec1
                         fld                dword ptr [ecx]                               // 0x0084f9a9    d901
                         fmul               dword ptr [esi]                               // 0x0084f9ab    d80e
                         faddp              st(1), st                                     // 0x0084f9ad    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x0084f9af    d84124
                         fstp               dword ptr [ebx]                               // 0x0084f9b2    d91b
                         {disp8} fld        dword ptr [ecx + 0x1c]                        // 0x0084f9b4    d9411c
                         {disp8} fmul       dword ptr [edi + -0x14]                       // 0x0084f9b7    d84fec
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x0084f9ba    d94110
                         {disp8} fmul       dword ptr [edi + -0x18]                       // 0x0084f9bd    d84fe8
                         faddp              st(1), st                                     // 0x0084f9c0    dec1
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0084f9c2    d94104
                         fmul               dword ptr [esi]                               // 0x0084f9c5    d80e
                         faddp              st(1), st                                     // 0x0084f9c7    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x0084f9c9    d84128
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x0084f9cc    d95b04
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x0084f9cf    d94120
                         {disp8} fmul       dword ptr [edi + -0x14]                       // 0x0084f9d2    d84fec
                         {disp8} fld        dword ptr [ecx + 0x14]                        // 0x0084f9d5    d94114
                         {disp8} fmul       dword ptr [edi + -0x18]                       // 0x0084f9d8    d84fe8
                         faddp              st(1), st                                     // 0x0084f9db    dec1
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0084f9dd    d94108
                         fmul               dword ptr [esi]                               // 0x0084f9e0    d80e
                         faddp              st(1), st                                     // 0x0084f9e2    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x0084f9e4    d8412c
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x0084f9e7    d95b0c
                         {disp32} fld       dword ptr [data_bytes + 0x517d24]             // 0x0084f9ea    d90524dded00
                         {disp32} fld       dword ptr [data_bytes + 0x517d28]             // 0x0084f9f0    d90528dded00
                         {disp8} fstp       dword ptr [ebp + -0x80]                       // 0x0084f9f6    d95d80
                         {disp8} fadd       dword ptr [edi + -0x08]                       // 0x0084f9f9    d847f8
                         {disp8} fld        dword ptr [edi + -0x04]                       // 0x0084f9fc    d947fc
                         {disp8} fld        dword ptr [ebp + -0x80]                       // 0x0084f9ff    d94580
                         fadd               dword ptr [edi]                               // 0x0084fa02    d807
                         {disp8} fld        dword ptr [ebp + -0x7c]                       // 0x0084fa04    d94584
                         fmul               st, st(3)                                     // 0x0084fa07    d8cb
                         {disp8} fld        dword ptr [ebp + -0x64]                       // 0x0084fa09    d9459c
                         fmul               st, st(2)                                     // 0x0084fa0c    d8ca
                         faddp              st(1), st                                     // 0x0084fa0e    dec1
                         {disp8} fld        dword ptr [ebp + -0x70]                       // 0x0084fa10    d94590
                         fmul               st, st(3)                                     // 0x0084fa13    d8cb
                         faddp              st(1), st                                     // 0x0084fa15    dec1
                         {disp8} fstp       dword ptr [ebp + -0x28]                       // 0x0084fa17    d95dd8
                         {disp8} fld        dword ptr [ebp + -0x60]                       // 0x0084fa1a    d945a0
                         fmul               st, st(1)                                     // 0x0084fa1d    d8c9
                         {disp8} fld        dword ptr [ebp + -0x6c]                       // 0x0084fa1f    d94594
                         fmul               st, st(3)                                     // 0x0084fa22    d8cb
                         faddp              st(1), st                                     // 0x0084fa24    dec1
                         {disp8} fld        dword ptr [ebp + -0x78]                       // 0x0084fa26    d94588
                         fmul               st, st(4)                                     // 0x0084fa29    d8cc
                         faddp              st(1), st                                     // 0x0084fa2b    dec1
                         {disp8} fstp       dword ptr [ebp + -0x24]                       // 0x0084fa2d    d95ddc
                         {disp8} fld        dword ptr [ebp + -0x5c]                       // 0x0084fa30    d945a4
                         fmul               st, st(1)                                     // 0x0084fa33    d8c9
                         {disp8} fld        dword ptr [ebp + -0x68]                       // 0x0084fa35    d94598
                         fmul               st, st(3)                                     // 0x0084fa38    d8cb
                         faddp              st(1), st                                     // 0x0084fa3a    dec1
                         {disp8} fld        dword ptr [ebp + -0x74]                       // 0x0084fa3c    d9458c
                         fmul               st, st(4)                                     // 0x0084fa3f    d8cc
                         faddp              st(1), st                                     // 0x0084fa41    dec1
                         {disp8} fstp       dword ptr [ebp + -0x20]                       // 0x0084fa43    d95de0
                         fstp               st(0)                                         // 0x0084fa46    ddd8
                         fstp               st(0)                                         // 0x0084fa48    ddd8
                         fstp               st(0)                                         // 0x0084fa4a    ddd8
                         {disp8} fld        dword ptr [ebp + -0x24]                       // 0x0084fa4c    d945dc
                         {disp8} fmul       dword ptr [ebp + -0x24]                       // 0x0084fa4f    d84ddc
                         {disp8} fld        dword ptr [ebp + -0x28]                       // 0x0084fa52    d945d8
                         {disp8} fmul       dword ptr [ebp + -0x28]                       // 0x0084fa55    d84dd8
                         faddp              st(1), st                                     // 0x0084fa58    dec1
                         {disp8} fdiv       dword ptr [ebp + -0x0c]                       // 0x0084fa5a    d875f4
                         {disp32} fsub      dword ptr [data_bytes + 0x2730a8]             // 0x0084fa5d    d825a890c300
                         {disp8} fmul       dword ptr [ebp + -0x3c]                       // 0x0084fa63    d84dc4
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0084fa66    d81598a38a00
                         fnstsw             ax                                            // 0x0084fa6c    dfe0
                         test               ah, 0x41                                      // 0x0084fa6e    f6c441
                         {disp8} je         _jmp_addr_0x0084fa7f                          // 0x0084fa71    740c
                         xor.s              eax, eax                                      // 0x0084fa73    33c0
                         fstp               st(0)                                         // 0x0084fa75    ddd8
                         {disp8} mov        dword ptr [ebx + 0x14], eax                   // 0x0084fa77    894314
                         {disp8} mov        dword ptr [ebx + 0x10], eax                   // 0x0084fa7a    894310
                         {disp8} jmp        _jmp_addr_0x0084fafc                          // 0x0084fa7d    eb7d
_jmp_addr_0x0084fa7f:    {disp32} fmul      dword ptr [__real@437f0000]                   // 0x0084fa7f    d80d70b28a00
                         {disp8} lea        ecx, dword ptr [ebp + -0x1c]                  // 0x0084fa85    8d4de4
                         {disp8} mov        dword ptr [ebp + -0x18], ecx                  // 0x0084fa88    894de8
                         {disp8} fstp       dword ptr [ebp + -0x10]                       // 0x0084fa8b    d95df0
                         {disp8} fld        dword ptr [ebp + -0x10]                       // 0x0084fa8e    d945f0
                         {disp8} mov        edx, dword ptr [ebp + -0x18]                  // 0x0084fa91    8b55e8
                         fistp              dword ptr [edx]                               // 0x0084fa94    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x1c]                  // 0x0084fa96    8b55e4
                         cmp                edx, 0x000000ff                               // 0x0084fa99    81faff000000
                         {disp8} jae        _jmp_addr_0x0084faec                          // 0x0084fa9f    734b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x271d8c]        // 0x0084faa1    8b0d8c7dc300
                         mov.s              eax, ecx                                      // 0x0084faa7    8bc1
                         and                eax, 0x00ff0000                               // 0x0084faa9    250000ff00
                         mov.s              esi, ecx                                      // 0x0084faae    8bf1
                         imul               eax, edx                                      // 0x0084fab0    0fafc2
                         and                esi, 0x0000ff00                               // 0x0084fab3    81e600ff0000
                         imul               esi, edx                                      // 0x0084fab9    0faff2
                         and                esi, 0x00ff0000                               // 0x0084fabc    81e60000ff00
                         and                eax, 0xff0000ff                               // 0x0084fac2    25ff0000ff
                         or.s               eax, esi                                      // 0x0084fac7    0bc6
                         mov.s              esi, ecx                                      // 0x0084fac9    8bf1
                         and                esi, 0x000000ff                               // 0x0084facb    81e6ff000000
                         imul               esi, edx                                      // 0x0084fad1    0faff2
                         and                esi, 0x0000ff00                               // 0x0084fad4    81e600ff0000
                         or.s               eax, esi                                      // 0x0084fada    0bc6
                         {disp8} mov        esi, dword ptr [ebp + -0x08]                  // 0x0084fadc    8b75f8
                         shr                eax, 8                                        // 0x0084fadf    c1e808
                         and                ecx, 0xff000000                               // 0x0084fae2    81e1000000ff
                         or.s               eax, ecx                                      // 0x0084fae8    0bc1
                         {disp8} jmp        _jmp_addr_0x0084faf1                          // 0x0084faea    eb05
_jmp_addr_0x0084faec:    {disp32} mov       eax, dword ptr [data_bytes + 0x271d8c]        // 0x0084faec    a18c7dc300
_jmp_addr_0x0084faf1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x0084faf1    8b0da09eea00
                         {disp8} mov        dword ptr [ebx + 0x10], eax                   // 0x0084faf7    894310
                         xor.s              eax, eax                                      // 0x0084fafa    33c0
_jmp_addr_0x0084fafc:    {disp32} mov       edx, dword ptr [data_bytes + 0x4d9e2c]        // 0x0084fafc    8b152cfee900
                         {disp8} mov        dword ptr [ebx + 0x14], edx                   // 0x0084fb02    895314
                         {disp32} mov       dl, byte ptr [data_bytes + 0x27309c]          // 0x0084fb05    8a159c90c300
                         test               dl, dl                                        // 0x0084fb0b    84d2
                         {disp8} je         _jmp_addr_0x0084fb54                          // 0x0084fb0d    7445
                         {disp8} fld        dword ptr [ebp + -0x20]                       // 0x0084fb0f    d945e0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x517d20]        // 0x0084fb12    8b1520dded00
                         {disp32} fmul      dword ptr [data_bytes + 0x53d0e0]             // 0x0084fb18    d80de030f000
                         {disp8} mov        dword ptr [ebx + 0x1c], edx                   // 0x0084fb1e    89531c
                         {disp32} fld       dword ptr [data_bytes + 0x53d0dc]             // 0x0084fb21    d905dc30f000
                         {disp8} fmul       dword ptr [ebp + -0x24]                       // 0x0084fb27    d84ddc
                         faddp              st(1), st                                     // 0x0084fb2a    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x53d0d8]             // 0x0084fb2c    d905d830f000
                         {disp8} fmul       dword ptr [ebp + -0x28]                       // 0x0084fb32    d84dd8
                         faddp              st(1), st                                     // 0x0084fb35    dec1
                         {disp32} fmul      dword ptr [data_bytes + 0x2730a0]             // 0x0084fb37    d80da090c300
                         {disp32} fadd      dword ptr [data_bytes + 0x517d1c]             // 0x0084fb3d    d8051cdded00
                         {disp8} fst        dword ptr [ebx + 0x18]                        // 0x0084fb43    d95318
                         {disp8} fstp       dword ptr [ebx + 0x38]                        // 0x0084fb46    d95b38
                         {disp8} fld        dword ptr [ebx + 0x1c]                        // 0x0084fb49    d9431c
                         {disp32} fsub      dword ptr [data_bytes + 0x2730a4]             // 0x0084fb4c    d825a490c300
                         {disp8} jmp        _jmp_addr_0x0084fb63                          // 0x0084fb52    eb0f
_jmp_addr_0x0084fb54:    {disp8} fld        dword ptr [edi + -0x10]                       // 0x0084fb54    d947f0
                         {disp8} fst        dword ptr [ebx + 0x18]                        // 0x0084fb57    d95318
                         {disp8} fstp       dword ptr [ebx + 0x38]                        // 0x0084fb5a    d95b38
                         {disp8} fld        dword ptr [edi + -0x0c]                       // 0x0084fb5d    d947f4
                         {disp8} fst        dword ptr [ebx + 0x1c]                        // 0x0084fb60    d9531c
_jmp_addr_0x0084fb63:    {disp8} fstp       dword ptr [ebx + 0x3c]                        // 0x0084fb63    d95b3c
                         add                ebx, 0x20                                     // 0x0084fb66    83c320
                         {disp32} fld       dword ptr [data_bytes + 0x2730b0]             // 0x0084fb69    d905b090c300
                         {disp8} mov        edx, dword ptr [ebp + -0x14]                  // 0x0084fb6f    8b55ec
                         fld                st(0)                                         // 0x0084fb72    d9c0
                         add                esi, 0x20                                     // 0x0084fb74    83c620
                         {disp8} fmul       dword ptr [edi + -0x08]                       // 0x0084fb77    d84ff8
                         add                ebx, 0x20                                     // 0x0084fb7a    83c320
                         add                edi, 0x20                                     // 0x0084fb7d    83c720
                         {disp8} mov        dword ptr [ebp + -0x08], esi                  // 0x0084fb80    8975f8
                         {disp8} fstp       dword ptr [ebp + -0x4c]                       // 0x0084fb83    d95db4
                         fld                st(0)                                         // 0x0084fb86    d9c0
                         {disp8} fmul       dword ptr [edi + -0x24]                       // 0x0084fb88    d84fdc
                         {disp8} fstp       dword ptr [ebp + -0x48]                       // 0x0084fb8b    d95db8
                         {disp8} fmul       dword ptr [edi + -0x20]                       // 0x0084fb8e    d84fe0
                         {disp8} fld        dword ptr [ebp + -0x4c]                       // 0x0084fb91    d945b4
                         {disp8} fadd       dword ptr [esi + -0x20]                       // 0x0084fb94    d846e0
                         {disp8} fstp       dword ptr [ebp + -0x34]                       // 0x0084fb97    d95dcc
                         {disp8} fld        dword ptr [ebp + -0x48]                       // 0x0084fb9a    d945b8
                         {disp8} fadd       dword ptr [edi + -0x38]                       // 0x0084fb9d    d847c8
                         {disp8} fstp       dword ptr [ebp + -0x30]                       // 0x0084fba0    d95dd0
                         {disp8} fadd       dword ptr [edi + -0x34]                       // 0x0084fba3    d847cc
                         fld                st(0)                                         // 0x0084fba6    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x0084fba8    d84918
                         {disp8} fld        dword ptr [ebp + -0x30]                       // 0x0084fbab    d945d0
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x0084fbae    d8490c
                         faddp              st(1), st                                     // 0x0084fbb1    dec1
                         {disp8} fld        dword ptr [ebp + -0x34]                       // 0x0084fbb3    d945cc
                         fmul               dword ptr [ecx]                               // 0x0084fbb6    d809
                         faddp              st(1), st                                     // 0x0084fbb8    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x0084fbba    d84124
                         {disp8} fstp       dword ptr [ebx + -0x20]                       // 0x0084fbbd    d95be0
                         {disp8} fld        dword ptr [ebp + -0x34]                       // 0x0084fbc0    d945cc
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0084fbc3    d84904
                         fld                st(1)                                         // 0x0084fbc6    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x0084fbc8    d8491c
                         faddp              st(1), st                                     // 0x0084fbcb    dec1
                         {disp8} fld        dword ptr [ebp + -0x30]                       // 0x0084fbcd    d945d0
                         {disp8} fmul       dword ptr [ecx + 0x10]                        // 0x0084fbd0    d84910
                         faddp              st(1), st                                     // 0x0084fbd3    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x0084fbd5    d84128
                         {disp8} fstp       dword ptr [ebx + -0x1c]                       // 0x0084fbd8    d95be4
                         {disp8} fld        dword ptr [ebp + -0x34]                       // 0x0084fbdb    d945cc
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0084fbde    d84908
                         fxch               st(1)                                         // 0x0084fbe1    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x0084fbe3    d84920
                         faddp              st(1), st                                     // 0x0084fbe6    dec1
                         {disp8} fld        dword ptr [ebp + -0x30]                       // 0x0084fbe8    d945d0
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x0084fbeb    d84914
                         faddp              st(1), st                                     // 0x0084fbee    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x0084fbf0    d8412c
                         {disp8} mov        dword ptr [ebx + -0x10], eax                  // 0x0084fbf3    8943f0
                         {disp8} mov        dword ptr [ebx + -0x0c], eax                  // 0x0084fbf6    8943f4
                         {disp8} mov        eax, dword ptr [ebp + -0x04]                  // 0x0084fbf9    8b45fc
                         {disp8} fstp       dword ptr [ebx + -0x14]                       // 0x0084fbfc    d95bec
                         inc                eax                                           // 0x0084fbff    40
                         cmp                eax, dword ptr [edx + 0x10]                   // 0x0084fc00    3b4210
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x0084fc03    8945fc
                         {disp32} jl        _jmp_addr_0x0084f99b                          // 0x0084fc06    0f8c8ffdffff
_jmp_addr_0x0084fc0c:    {disp8} mov        ecx, dword ptr [ebp + -0x14]                  // 0x0084fc0c    8b4dec
_jmp_addr_0x0084fc0f:    mov                eax, 0x00000002                               // 0x0084fc0f    b802000000
                         {disp32} lea       edx, dword ptr [ebp + -0x00000384]            // 0x0084fc14    8d957cfcffff
_jmp_addr_0x0084fc1a:    {disp8} lea        esi, dword ptr [eax + -0x02]                  // 0x0084fc1a    8d70fe
                         {disp8} mov        dword ptr [edx + -0x04], esi                  // 0x0084fc1d    8972fc
                         {disp8} lea        esi, dword ptr [eax + -0x01]                  // 0x0084fc20    8d70ff
                         mov                dword ptr [edx], esi                          // 0x0084fc23    8932
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0084fc25    894204
                         add                eax, 0x03                                     // 0x0084fc28    83c003
                         add                edx, 0x0c                                     // 0x0084fc2b    83c20c
                         cmp                eax, 0x000000c2                               // 0x0084fc2e    3dc2000000
                         {disp8} jl         _jmp_addr_0x0084fc1a                          // 0x0084fc33    7ce5
                         {disp8} mov        edi, dword ptr [ecx + 0x1c]                   // 0x0084fc35    8b791c
                         {disp8} mov        ecx, dword ptr [ecx + 0x18]                   // 0x0084fc38    8b4918
                         lea                edx, dword ptr [ecx + ecx * 0x2]              // 0x0084fc3b    8d1449
                         lea                eax, dword ptr [edi + edx * 0x2]              // 0x0084fc3e    8d0457
                         cmp.s              edi, eax                                      // 0x0084fc41    3bf8
                         {disp8} mov        dword ptr [ebp + -0x0c], edi                  // 0x0084fc43    897df4
                         {disp32} jae       _jmp_addr_0x00850185                          // 0x0084fc46    0f8339050000
                         {disp8} mov        ebx, dword ptr [ebp + -0x40]                  // 0x0084fc4c    8b5dc0
_jmp_addr_0x0084fc4f:    xor.s              edx, edx                                      // 0x0084fc4f    33d2
                         {disp8} mov        dword ptr [ebp + -0x10], edx                  // 0x0084fc51    8955f0
_jmp_addr_0x0084fc54:    {disp8} mov        ecx, dword ptr [ebp + -0x14]                  // 0x0084fc54    8b4dec
                         {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x0084fc57    8b4118
                         {disp8} mov        ecx, dword ptr [ecx + 0x1c]                   // 0x0084fc5a    8b491c
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0084fc5d    8d0440
                         lea                eax, dword ptr [ecx + eax * 0x2]              // 0x0084fc60    8d0441
                         cmp.s              edi, eax                                      // 0x0084fc63    3bf8
                         {disp32} jae       _jmp_addr_0x00850121                          // 0x0084fc65    0f83b6040000
                         {disp32} mov       cl, byte ptr [data_bytes + 0x53f188]          // 0x0084fc6b    8a0d8851f000
                         xor.s              eax, eax                                      // 0x0084fc71    33c0
                         test               cl, cl                                        // 0x0084fc73    84c9
                         sete               al                                            // 0x0084fc75    0f94c0
                         cmp                eax, 0x07                                     // 0x0084fc78    83f807
                         {disp8} mov        dword ptr [ebp + -0x18], eax                  // 0x0084fc7b    8945e8
                         {disp32} jge       _jmp_addr_0x0085010f                          // 0x0084fc7e    0f8d8b040000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x0084fc84    8d1452
                         shl                edx, 5                                        // 0x0084fc87    c1e205
                         {disp32} jmp       _jmp_addr_0x0084ffaa                          // 0x0084fc8a    e91b030000
_jmp_addr_0x0084fc8f:    {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x0084fc8f    8b5120
                         xor.s              eax, eax                                      // 0x0084fc92    33c0
                         cmp.s              edx, eax                                      // 0x0084fc94    3bd0
                         {disp8} mov        dword ptr [ebp + -0x10], eax                  // 0x0084fc96    8945f0
                         {disp8} mov        dword ptr [ebp + -0x18], eax                  // 0x0084fc99    8945e8
                         {disp32} jle       _jmp_addr_0x0084fc0f                          // 0x0084fc9c    0f8e6dffffff
_jmp_addr_0x0084fca2:    {disp8} mov        eax, dword ptr [ecx + 0x24]                   // 0x0084fca2    8b4124
                         {disp8} mov        ecx, dword ptr [ebp + -0x18]                  // 0x0084fca5    8b4de8
                         {disp32} mov       edi, dword ptr [?g_current_matrix@LH3DMesh@@2PAULH3DMatrix@@A]        // 0x0084fca8    8b3d48fee900
                         lea                eax, dword ptr [eax + ecx * 0x4]              // 0x0084fcae    8d0488
                         xor.s              ebx, ebx                                      // 0x0084fcb1    33db
                         {disp8} mov        bx, word ptr [eax + 0x02]                     // 0x0084fcb3    668b5802
                         mov                ecx, 0x0000000c                               // 0x0084fcb7    b90c000000
                         {disp8} mov        dword ptr [ebp + -0x38], eax                  // 0x0084fcbc    8945c8
                         lea                ebx, dword ptr [ebx + ebx * 0x2]              // 0x0084fcbf    8d1c5b
                         shl                ebx, 4                                        // 0x0084fcc2    c1e304
                         add.s              ebx, edi                                      // 0x0084fcc5    03df
                         mov.s              esi, ebx                                      // 0x0084fcc7    8bf3
                         {disp8} lea        edi, dword ptr [ebp + -0x7c]                  // 0x0084fcc9    8d7d84
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0084fccc    f3a5
                         {disp8} lea        ecx, dword ptr [ebp + -0x7c]                  // 0x0084fcce    8d4d84
                         call               _jmp_addr_0x007fb5c0                          // 0x0084fcd1    e8eab8faff
                         {disp8} mov        ecx, dword ptr [ebp + -0x38]                  // 0x0084fcd6    8b4dc8
                         {disp8} mov        edx, dword ptr [ebp + -0x10]                  // 0x0084fcd9    8b55f0
                         xor.s              eax, eax                                      // 0x0084fcdc    33c0
                         mov                ax, word ptr [ecx]                            // 0x0084fcde    668b01
                         {disp8} mov        dword ptr [ebp + -0x04], edx                  // 0x0084fce1    8955fc
                         add.s              eax, edx                                      // 0x0084fce4    03c2
                         cmp.s              edx, eax                                      // 0x0084fce6    3bd0
                         {disp32} jge       _jmp_addr_0x0084ff80                          // 0x0084fce8    0f8d92020000
                         {disp8} mov        edi, dword ptr [ebp + -0x08]                  // 0x0084fcee    8b7df8
                         {disp8} lea        esi, dword ptr [edi + 0x1c]                   // 0x0084fcf1    8d771c
_jmp_addr_0x0084fcf4:    fld                dword ptr [edi]                               // 0x0084fcf4    d907
                         {disp8} mov        ecx, dword ptr [ebp + -0x0c]                  // 0x0084fcf6    8b4df4
                         fmul               dword ptr [ebx]                               // 0x0084fcf9    d80b
                         {disp8} fld        dword ptr [ebx + 0x18]                        // 0x0084fcfb    d94318
                         {disp8} fmul       dword ptr [esi + -0x14]                       // 0x0084fcfe    d84eec
                         faddp              st(1), st                                     // 0x0084fd01    dec1
                         {disp8} fld        dword ptr [ebx + 0x0c]                        // 0x0084fd03    d9430c
                         {disp8} fmul       dword ptr [esi + -0x18]                       // 0x0084fd06    d84ee8
                         faddp              st(1), st                                     // 0x0084fd09    dec1
                         {disp8} fadd       dword ptr [ebx + 0x24]                        // 0x0084fd0b    d84324
                         fstp               dword ptr [ecx]                               // 0x0084fd0e    d919
                         {disp8} fld        dword ptr [esi + -0x14]                       // 0x0084fd10    d946ec
                         {disp8} fmul       dword ptr [ebx + 0x1c]                        // 0x0084fd13    d84b1c
                         {disp8} fld        dword ptr [esi + -0x18]                       // 0x0084fd16    d946e8
                         {disp8} fmul       dword ptr [ebx + 0x10]                        // 0x0084fd19    d84b10
                         faddp              st(1), st                                     // 0x0084fd1c    dec1
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x0084fd1e    d94304
                         fmul               dword ptr [edi]                               // 0x0084fd21    d80f
                         faddp              st(1), st                                     // 0x0084fd23    dec1
                         {disp8} fadd       dword ptr [ebx + 0x28]                        // 0x0084fd25    d84328
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0084fd28    d95904
                         {disp8} fld        dword ptr [esi + -0x14]                       // 0x0084fd2b    d946ec
                         {disp8} fmul       dword ptr [ebx + 0x20]                        // 0x0084fd2e    d84b20
                         {disp8} fld        dword ptr [esi + -0x18]                       // 0x0084fd31    d946e8
                         {disp8} fmul       dword ptr [ebx + 0x14]                        // 0x0084fd34    d84b14
                         faddp              st(1), st                                     // 0x0084fd37    dec1
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x0084fd39    d94308
                         fmul               dword ptr [edi]                               // 0x0084fd3c    d80f
                         faddp              st(1), st                                     // 0x0084fd3e    dec1
                         {disp8} fadd       dword ptr [ebx + 0x2c]                        // 0x0084fd40    d8432c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x0084fd43    d9590c
                         {disp32} fld       dword ptr [data_bytes + 0x517d24]             // 0x0084fd46    d90524dded00
                         {disp32} fld       dword ptr [data_bytes + 0x517d28]             // 0x0084fd4c    d90528dded00
                         {disp8} fstp       dword ptr [ebp + -0x80]                       // 0x0084fd52    d95d80
                         {disp8} fadd       dword ptr [esi + -0x08]                       // 0x0084fd55    d846f8
                         {disp8} fld        dword ptr [esi + -0x04]                       // 0x0084fd58    d946fc
                         {disp8} fld        dword ptr [ebp + -0x80]                       // 0x0084fd5b    d94580
                         fadd               dword ptr [esi]                               // 0x0084fd5e    d806
                         {disp8} fld        dword ptr [ebp + -0x7c]                       // 0x0084fd60    d94584
                         fmul               st, st(3)                                     // 0x0084fd63    d8cb
                         {disp8} fld        dword ptr [ebp + -0x64]                       // 0x0084fd65    d9459c
                         fmul               st, st(2)                                     // 0x0084fd68    d8ca
                         faddp              st(1), st                                     // 0x0084fd6a    dec1
                         {disp8} fld        dword ptr [ebp + -0x70]                       // 0x0084fd6c    d94590
                         fmul               st, st(3)                                     // 0x0084fd6f    d8cb
                         faddp              st(1), st                                     // 0x0084fd71    dec1
                         {disp8} fstp       dword ptr [ebp + -0x34]                       // 0x0084fd73    d95dcc
                         {disp8} fld        dword ptr [ebp + -0x60]                       // 0x0084fd76    d945a0
                         fmul               st, st(1)                                     // 0x0084fd79    d8c9
                         {disp8} fld        dword ptr [ebp + -0x6c]                       // 0x0084fd7b    d94594
                         fmul               st, st(3)                                     // 0x0084fd7e    d8cb
                         faddp              st(1), st                                     // 0x0084fd80    dec1
                         {disp8} fld        dword ptr [ebp + -0x78]                       // 0x0084fd82    d94588
                         fmul               st, st(4)                                     // 0x0084fd85    d8cc
                         faddp              st(1), st                                     // 0x0084fd87    dec1
                         {disp8} fstp       dword ptr [ebp + -0x30]                       // 0x0084fd89    d95dd0
                         {disp8} fld        dword ptr [ebp + -0x5c]                       // 0x0084fd8c    d945a4
                         fmul               st, st(1)                                     // 0x0084fd8f    d8c9
                         {disp8} fld        dword ptr [ebp + -0x68]                       // 0x0084fd91    d94598
                         fmul               st, st(3)                                     // 0x0084fd94    d8cb
                         faddp              st(1), st                                     // 0x0084fd96    dec1
                         {disp8} fld        dword ptr [ebp + -0x74]                       // 0x0084fd98    d9458c
                         fmul               st, st(4)                                     // 0x0084fd9b    d8cc
                         faddp              st(1), st                                     // 0x0084fd9d    dec1
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x0084fd9f    d95dd4
                         fstp               st(0)                                         // 0x0084fda2    ddd8
                         fstp               st(0)                                         // 0x0084fda4    ddd8
                         fstp               st(0)                                         // 0x0084fda6    ddd8
                         {disp8} fld        dword ptr [ebp + -0x30]                       // 0x0084fda8    d945d0
                         fabs                                                             // 0x0084fdab    d9e1
                         {disp8} fld        dword ptr [ebp + -0x34]                       // 0x0084fdad    d945cc
                         fabs                                                             // 0x0084fdb0    d9e1
                         fxch               st(1)                                         // 0x0084fdb2    d9c9
                         fxch               st(1)                                         // 0x0084fdb4    d9c9
                         faddp              st(1), st                                     // 0x0084fdb6    dec1
                         {disp32} fsub      dword ptr [data_bytes + 0x2730a8]             // 0x0084fdb8    d825a890c300
                         {disp8} fmul       dword ptr [ebp + -0x3c]                       // 0x0084fdbe    d84dc4
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0084fdc1    d81598a38a00
                         fnstsw             ax                                            // 0x0084fdc7    dfe0
                         test               ah, 0x41                                      // 0x0084fdc9    f6c441
                         {disp8} je         _jmp_addr_0x0084fddd                          // 0x0084fdcc    740f
                         xor.s              eax, eax                                      // 0x0084fdce    33c0
                         fstp               st(0)                                         // 0x0084fdd0    ddd8
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x0084fdd2    894114
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x0084fdd5    894110
                         {disp32} jmp       _jmp_addr_0x0084fe5d                          // 0x0084fdd8    e980000000
_jmp_addr_0x0084fddd:    {disp32} fmul      dword ptr [__real@437f0000]                   // 0x0084fddd    d80d70b28a00
                         {disp8} lea        edx, dword ptr [ebp + -0x1c]                  // 0x0084fde3    8d55e4
                         {disp8} mov        dword ptr [ebp + -0x0c], edx                  // 0x0084fde6    8955f4
                         {disp8} fstp       dword ptr [ebp + -0x40]                       // 0x0084fde9    d95dc0
                         {disp8} fld        dword ptr [ebp + -0x40]                       // 0x0084fdec    d945c0
                         {disp8} mov        edx, dword ptr [ebp + -0x0c]                  // 0x0084fdef    8b55f4
                         fistp              dword ptr [edx]                               // 0x0084fdf2    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x1c]                  // 0x0084fdf4    8b55e4
                         cmp                edx, 0x000000ff                               // 0x0084fdf7    81faff000000
                         {disp8} jae        _jmp_addr_0x0084fe52                          // 0x0084fdfd    7353
                         {disp32} mov       edi, dword ptr [data_bytes + 0x271d8c]        // 0x0084fdff    8b3d8c7dc300
                         mov.s              eax, edi                                      // 0x0084fe05    8bc7
                         and                edi, 0x0000ff00                               // 0x0084fe07    81e700ff0000
                         imul               edi, edx                                      // 0x0084fe0d    0faffa
                         and                eax, 0x00ff0000                               // 0x0084fe10    250000ff00
                         imul               eax, edx                                      // 0x0084fe15    0fafc2
                         and                edi, 0x00ff0000                               // 0x0084fe18    81e70000ff00
                         and                eax, 0xff0000ff                               // 0x0084fe1e    25ff0000ff
                         or.s               eax, edi                                      // 0x0084fe23    0bc7
                         {disp32} mov       edi, dword ptr [data_bytes + 0x271d8c]        // 0x0084fe25    8b3d8c7dc300
                         and                edi, 0x000000ff                               // 0x0084fe2b    81e7ff000000
                         imul               edi, edx                                      // 0x0084fe31    0faffa
                         {disp32} mov       edx, dword ptr [data_bytes + 0x271d8c]        // 0x0084fe34    8b158c7dc300
                         and                edi, 0x0000ff00                               // 0x0084fe3a    81e700ff0000
                         or.s               eax, edi                                      // 0x0084fe40    0bc7
                         {disp8} mov        edi, dword ptr [ebp + -0x08]                  // 0x0084fe42    8b7df8
                         shr                eax, 8                                        // 0x0084fe45    c1e808
                         and                edx, 0xff000000                               // 0x0084fe48    81e2000000ff
                         or.s               eax, edx                                      // 0x0084fe4e    0bc2
                         {disp8} jmp        _jmp_addr_0x0084fe57                          // 0x0084fe50    eb05
_jmp_addr_0x0084fe52:    {disp32} mov       eax, dword ptr [data_bytes + 0x271d8c]        // 0x0084fe52    a18c7dc300
_jmp_addr_0x0084fe57:    {disp8} mov        edx, dword ptr [ebp + -0x10]                  // 0x0084fe57    8b55f0
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x0084fe5a    894110
_jmp_addr_0x0084fe5d:    {disp32} mov       eax, dword ptr [data_bytes + 0x4d9e2c]        // 0x0084fe5d    a12cfee900
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x0084fe62    894114
                         xor.s              eax, eax                                      // 0x0084fe65    33c0
                         {disp32} mov       al, byte ptr [data_bytes + 0x2730b4]          // 0x0084fe67    a0b490c300
                         dec                eax                                           // 0x0084fe6c    48
                         {disp8} je         _jmp_addr_0x0084fe87                          // 0x0084fe6d    7418
                         dec                eax                                           // 0x0084fe6f    48
                         {disp8} je         _jmp_addr_0x0084fe82                          // 0x0084fe70    7410
                         dec                eax                                           // 0x0084fe72    48
                         {disp8} je         _jmp_addr_0x0084fe7d                          // 0x0084fe73    7408
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0084fe75    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0084fe8a                          // 0x0084fe7b    eb0d
_jmp_addr_0x0084fe7d:    {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x0084fe7d    d945d4
                         {disp8} jmp        _jmp_addr_0x0084fe8a                          // 0x0084fe80    eb08
_jmp_addr_0x0084fe82:    {disp8} fld        dword ptr [ebp + -0x34]                       // 0x0084fe82    d945cc
                         {disp8} jmp        _jmp_addr_0x0084fe8a                          // 0x0084fe85    eb03
_jmp_addr_0x0084fe87:    {disp8} fld        dword ptr [ebp + -0x30]                       // 0x0084fe87    d945d0
_jmp_addr_0x0084fe8a:    {disp32} mov       al, byte ptr [data_bytes + 0x27309c]          // 0x0084fe8a    a09c90c300
                         test               al, al                                        // 0x0084fe8f    84c0
                         {disp8} je         _jmp_addr_0x0084feb8                          // 0x0084fe91    7425
                         {disp32} fmul      dword ptr [data_bytes + 0x2730a0]             // 0x0084fe93    d80da090c300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517d20]        // 0x0084fe99    a120dded00
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x0084fe9e    89411c
                         {disp32} fadd      dword ptr [data_bytes + 0x517d1c]             // 0x0084fea1    d8051cdded00
                         {disp8} fst        dword ptr [ecx + 0x18]                        // 0x0084fea7    d95118
                         {disp8} fstp       dword ptr [ecx + 0x38]                        // 0x0084feaa    d95938
                         {disp8} fld        dword ptr [ecx + 0x1c]                        // 0x0084fead    d9411c
                         {disp32} fsub      dword ptr [data_bytes + 0x2730a4]             // 0x0084feb0    d825a490c300
                         {disp8} jmp        _jmp_addr_0x0084fec9                          // 0x0084feb6    eb11
_jmp_addr_0x0084feb8:    fstp               st(0)                                         // 0x0084feb8    ddd8
                         {disp8} fld        dword ptr [esi + -0x10]                       // 0x0084feba    d946f0
                         {disp8} fst        dword ptr [ecx + 0x18]                        // 0x0084febd    d95118
                         {disp8} fstp       dword ptr [ecx + 0x38]                        // 0x0084fec0    d95938
                         {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0084fec3    d946f4
                         {disp8} fst        dword ptr [ecx + 0x1c]                        // 0x0084fec6    d9511c
_jmp_addr_0x0084fec9:    {disp8} fstp       dword ptr [ecx + 0x3c]                        // 0x0084fec9    d9593c
                         add                ecx, 0x20                                     // 0x0084fecc    83c120
                         {disp32} fld       dword ptr [data_bytes + 0x2730b0]             // 0x0084fecf    d905b090c300
                         xor.s              eax, eax                                      // 0x0084fed5    33c0
                         fld                st(0)                                         // 0x0084fed7    d9c0
                         add                ecx, 0x20                                     // 0x0084fed9    83c120
                         {disp8} fmul       dword ptr [esi + -0x08]                       // 0x0084fedc    d84ef8
                         {disp8} mov        dword ptr [ebp + -0x0c], ecx                  // 0x0084fedf    894df4
                         add                edi, 0x20                                     // 0x0084fee2    83c720
                         add                esi, 0x20                                     // 0x0084fee5    83c620
                         {disp8} fstp       dword ptr [ebp + -0x4c]                       // 0x0084fee8    d95db4
                         {disp8} mov        dword ptr [ebp + -0x08], edi                  // 0x0084feeb    897df8
                         fld                st(0)                                         // 0x0084feee    d9c0
                         {disp8} fmul       dword ptr [esi + -0x24]                       // 0x0084fef0    d84edc
                         {disp8} fstp       dword ptr [ebp + -0x48]                       // 0x0084fef3    d95db8
                         {disp8} fmul       dword ptr [esi + -0x20]                       // 0x0084fef6    d84ee0
                         {disp8} fld        dword ptr [ebp + -0x4c]                       // 0x0084fef9    d945b4
                         {disp8} fadd       dword ptr [edi + -0x20]                       // 0x0084fefc    d847e0
                         {disp8} fstp       dword ptr [ebp + -0x28]                       // 0x0084feff    d95dd8
                         {disp8} fld        dword ptr [ebp + -0x48]                       // 0x0084ff02    d945b8
                         {disp8} fadd       dword ptr [esi + -0x38]                       // 0x0084ff05    d846c8
                         {disp8} fstp       dword ptr [ebp + -0x24]                       // 0x0084ff08    d95ddc
                         {disp8} fadd       dword ptr [esi + -0x34]                       // 0x0084ff0b    d846cc
                         fld                st(0)                                         // 0x0084ff0e    d9c0
                         {disp8} fmul       dword ptr [ebx + 0x18]                        // 0x0084ff10    d84b18
                         {disp8} fld        dword ptr [ebp + -0x24]                       // 0x0084ff13    d945dc
                         {disp8} fmul       dword ptr [ebx + 0x0c]                        // 0x0084ff16    d84b0c
                         faddp              st(1), st                                     // 0x0084ff19    dec1
                         {disp8} fld        dword ptr [ebp + -0x28]                       // 0x0084ff1b    d945d8
                         fmul               dword ptr [ebx]                               // 0x0084ff1e    d80b
                         faddp              st(1), st                                     // 0x0084ff20    dec1
                         {disp8} fadd       dword ptr [ebx + 0x24]                        // 0x0084ff22    d84324
                         {disp8} fstp       dword ptr [ecx + -0x20]                       // 0x0084ff25    d959e0
                         fld                st(0)                                         // 0x0084ff28    d9c0
                         {disp8} fmul       dword ptr [ebx + 0x1c]                        // 0x0084ff2a    d84b1c
                         {disp8} fld        dword ptr [ebp + -0x24]                       // 0x0084ff2d    d945dc
                         {disp8} fmul       dword ptr [ebx + 0x10]                        // 0x0084ff30    d84b10
                         faddp              st(1), st                                     // 0x0084ff33    dec1
                         {disp8} fld        dword ptr [ebp + -0x28]                       // 0x0084ff35    d945d8
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x0084ff38    d84b04
                         faddp              st(1), st                                     // 0x0084ff3b    dec1
                         {disp8} fadd       dword ptr [ebx + 0x28]                        // 0x0084ff3d    d84328
                         {disp8} fstp       dword ptr [ecx + -0x1c]                       // 0x0084ff40    d959e4
                         {disp8} fld        dword ptr [ebp + -0x28]                       // 0x0084ff43    d945d8
                         {disp8} fmul       dword ptr [ebx + 0x08]                        // 0x0084ff46    d84b08
                         fxch               st(1)                                         // 0x0084ff49    d9c9
                         {disp8} fmul       dword ptr [ebx + 0x20]                        // 0x0084ff4b    d84b20
                         faddp              st(1), st                                     // 0x0084ff4e    dec1
                         {disp8} fld        dword ptr [ebp + -0x24]                       // 0x0084ff50    d945dc
                         {disp8} fmul       dword ptr [ebx + 0x14]                        // 0x0084ff53    d84b14
                         faddp              st(1), st                                     // 0x0084ff56    dec1
                         {disp8} fadd       dword ptr [ebx + 0x2c]                        // 0x0084ff58    d8432c
                         {disp8} mov        dword ptr [ecx + -0x10], eax                  // 0x0084ff5b    8941f0
                         {disp8} mov        dword ptr [ecx + -0x0c], eax                  // 0x0084ff5e    8941f4
                         {disp8} mov        eax, dword ptr [ebp + -0x38]                  // 0x0084ff61    8b45c8
                         {disp8} fstp       dword ptr [ecx + -0x14]                       // 0x0084ff64    d959ec
                         {disp8} mov        ecx, dword ptr [ebp + -0x04]                  // 0x0084ff67    8b4dfc
                         inc                ecx                                           // 0x0084ff6a    41
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                  // 0x0084ff6b    894dfc
                         xor.s              ecx, ecx                                      // 0x0084ff6e    33c9
                         mov                cx, word ptr [eax]                            // 0x0084ff70    668b08
                         {disp8} mov        eax, dword ptr [ebp + -0x04]                  // 0x0084ff73    8b45fc
                         add.s              ecx, edx                                      // 0x0084ff76    03ca
                         cmp.s              eax, ecx                                      // 0x0084ff78    3bc1
                         {disp32} jl        _jmp_addr_0x0084fcf4                          // 0x0084ff7a    0f8c74fdffff
_jmp_addr_0x0084ff80:    {disp8} mov        eax, dword ptr [ebp + -0x38]                  // 0x0084ff80    8b45c8
                         xor.s              ecx, ecx                                      // 0x0084ff83    33c9
                         mov                cx, word ptr [eax]                            // 0x0084ff85    668b08
                         {disp8} mov        eax, dword ptr [ebp + -0x18]                  // 0x0084ff88    8b45e8
                         add.s              edx, ecx                                      // 0x0084ff8b    03d1
                         {disp8} mov        ecx, dword ptr [ebp + -0x14]                  // 0x0084ff8d    8b4dec
                         {disp8} mov        dword ptr [ebp + -0x10], edx                  // 0x0084ff90    8955f0
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x0084ff93    8b5120
                         inc                eax                                           // 0x0084ff96    40
                         cmp.s              eax, edx                                      // 0x0084ff97    3bc2
                         {disp8} mov        dword ptr [ebp + -0x18], eax                  // 0x0084ff99    8945e8
                         {disp32} jl        _jmp_addr_0x0084fca2                          // 0x0084ff9c    0f8c00fdffff
                         {disp32} jmp       _jmp_addr_0x0084fc0f                          // 0x0084ffa2    e968fcffff
_jmp_addr_0x0084ffa7:    {disp8} mov        eax, dword ptr [ebp + -0x18]                  // 0x0084ffa7    8b45e8
_jmp_addr_0x0084ffaa:    cmp                eax, 0x06                                     // 0x0084ffaa    83f806
                         {disp32} ja        _jmp_addr_0x00850068                          // 0x0084ffad    0f87b5000000
                         jmp                dword ptr [eax*4 + 0x85018c]                  // 0x0084ffb3    ff24858c018500
                         mov                ax, word ptr [edi]                            // 0x0084ffba    668b07
                         shl                ax, 1                                         // 0x0084ffbd    66d1e0
                         {disp8} mov        dword ptr [ebp + -0x08], eax                  // 0x0084ffc0    8945f8
                         {disp8} mov        ax, word ptr [edi + 0x02]                     // 0x0084ffc3    668b4702
                         shl                ax, 1                                         // 0x0084ffc7    66d1e0
                         {disp32} jmp       _jmp_addr_0x0085005e                          // 0x0084ffca    e98f000000
                         xor.s              eax, eax                                      // 0x0084ffcf    33c0
                         mov                ax, word ptr [edi]                            // 0x0084ffd1    668b07
                         shl                ax, 1                                         // 0x0084ffd4    66d1e0
                         xor.s              ebx, ebx                                      // 0x0084ffd7    33db
                         {disp8} mov        bx, word ptr [edi + 0x02]                     // 0x0084ffd9    668b5f02
                         shl                bx, 1                                         // 0x0084ffdd    66d1e3
                         {disp8} mov        dword ptr [ebp + -0x08], eax                  // 0x0084ffe0    8945f8
                         inc                eax                                           // 0x0084ffe3    40
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x0084ffe4    8945fc
                         inc                ebx                                           // 0x0084ffe7    43
                         {disp8} jmp        _jmp_addr_0x00850068                          // 0x0084ffe8    eb7e
                         mov                bx, word ptr [edi]                            // 0x0084ffea    668b1f
                         xor.s              eax, eax                                      // 0x0084ffed    33c0
                         {disp8} mov        ax, word ptr [edi + 0x02]                     // 0x0084ffef    668b4702
                         shl                ax, 1                                         // 0x0084fff3    66d1e0
                         {disp8} lea        ecx, dword ptr [eax + 0x01]                   // 0x0084fff6    8d4801
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                  // 0x0084fff9    894df8
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x0084fffc    8945fc
                         {disp8} jmp        _jmp_addr_0x00850065                          // 0x0084ffff    eb64
                         xor.s              eax, eax                                      // 0x00850001    33c0
                         {disp8} mov        ax, word ptr [edi + 0x02]                     // 0x00850003    668b4702
                         shl                ax, 1                                         // 0x00850007    66d1e0
                         xor.s              ebx, ebx                                      // 0x0085000a    33db
                         {disp8} mov        bx, word ptr [edi + 0x04]                     // 0x0085000c    668b5f04
                         shl                bx, 1                                         // 0x00850010    66d1e3
                         {disp8} mov        dword ptr [ebp + -0x08], eax                  // 0x00850013    8945f8
                         inc                eax                                           // 0x00850016    40
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x00850017    8945fc
                         inc                ebx                                           // 0x0085001a    43
                         {disp8} jmp        _jmp_addr_0x00850068                          // 0x0085001b    eb4b
                         {disp8} mov        bx, word ptr [edi + 0x02]                     // 0x0085001d    668b5f02
                         xor.s              eax, eax                                      // 0x00850021    33c0
                         {disp8} mov        ax, word ptr [edi + 0x04]                     // 0x00850023    668b4704
                         shl                ax, 1                                         // 0x00850027    66d1e0
                         {disp8} lea        ecx, dword ptr [eax + 0x01]                   // 0x0085002a    8d4801
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                  // 0x0085002d    894df8
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x00850030    8945fc
                         {disp8} jmp        _jmp_addr_0x00850065                          // 0x00850033    eb30
                         xor.s              eax, eax                                      // 0x00850035    33c0
                         {disp8} mov        ax, word ptr [edi + 0x04]                     // 0x00850037    668b4704
                         shl                ax, 1                                         // 0x0085003b    66d1e0
                         xor.s              ebx, ebx                                      // 0x0085003e    33db
                         mov                bx, word ptr [edi]                            // 0x00850040    668b1f
                         shl                bx, 1                                         // 0x00850043    66d1e3
                         {disp8} mov        dword ptr [ebp + -0x08], eax                  // 0x00850046    8945f8
                         inc                eax                                           // 0x00850049    40
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x0085004a    8945fc
                         inc                ebx                                           // 0x0085004d    43
                         {disp8} jmp        _jmp_addr_0x00850068                          // 0x0085004e    eb18
                         xor.s              eax, eax                                      // 0x00850050    33c0
                         mov                ax, word ptr [edi]                            // 0x00850052    668b07
                         shl                ax, 1                                         // 0x00850055    66d1e0
                         {disp8} lea        ecx, dword ptr [eax + 0x01]                   // 0x00850058    8d4801
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                  // 0x0085005b    894df8
_jmp_addr_0x0085005e:    {disp8} mov        bx, word ptr [edi + 0x04]                     // 0x0085005e    668b5f04
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x00850062    8945fc
_jmp_addr_0x00850065:    shl                bx, 1                                         // 0x00850065    66d1e3
_jmp_addr_0x00850068:    {disp8} mov        ecx, dword ptr [ebp + -0x08]                  // 0x00850068    8b4df8
                         and                ecx, 0x0000ffff                               // 0x0085006b    81e1ffff0000
                         shl                ecx, 5                                        // 0x00850071    c1e105
                         {disp32} lea       esi, dword ptr [ecx + 0x00e48c60]             // 0x00850074    8db1608ce400
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x0085007a    8b4e10
                         test               ecx, ecx                                      // 0x0085007d    85c9
                         mov.s              eax, edx                                      // 0x0085007f    8bc2
                         {disp8} jne        _jmp_addr_0x008500ac                          // 0x00850081    7529
                         {disp8} mov        ecx, dword ptr [ebp + -0x04]                  // 0x00850083    8b4dfc
                         and                ecx, 0x0000ffff                               // 0x00850086    81e1ffff0000
                         shl                ecx, 5                                        // 0x0085008c    c1e105
                         cmp                dword ptr [ecx + 0x00e48c70], 0x00            // 0x0085008f    83b9708ce40000
                         {disp8} jne        _jmp_addr_0x008500ac                          // 0x00850096    7514
                         mov.s              ecx, ebx                                      // 0x00850098    8bcb
                         and                ecx, 0x0000ffff                               // 0x0085009a    81e1ffff0000
                         shl                ecx, 5                                        // 0x008500a0    c1e105
                         cmp                dword ptr [ecx + 0x00e48c70], 0x00            // 0x008500a3    83b9708ce40000
                         {disp8} je         _jmp_addr_0x008500ff                          // 0x008500aa    7453
_jmp_addr_0x008500ac:    {disp8} inc        dword ptr [ebp + -0x10]                       // 0x008500ac    ff45f0
                         {disp32} lea       edi, dword ptr [eax + 0x00e437e0]             // 0x008500af    8db8e037e400
                         mov                ecx, 0x00000008                               // 0x008500b5    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x008500ba    f3a5
                         {disp8} mov        esi, dword ptr [ebp + -0x04]                  // 0x008500bc    8b75fc
                         and                esi, 0x0000ffff                               // 0x008500bf    81e6ffff0000
                         shl                esi, 5                                        // 0x008500c5    c1e605
                         add                esi, 0x00e48c60                               // 0x008500c8    81c6608ce400
                         {disp32} lea       edi, dword ptr [eax + 0x00e43800]             // 0x008500ce    8db80038e400
                         mov                ecx, 0x00000008                               // 0x008500d4    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x008500d9    f3a5
                         mov.s              esi, ebx                                      // 0x008500db    8bf3
                         and                esi, 0x0000ffff                               // 0x008500dd    81e6ffff0000
                         shl                esi, 5                                        // 0x008500e3    c1e605
                         add                edx, 0x60                                     // 0x008500e6    83c260
                         add                esi, 0x00e48c60                               // 0x008500e9    81c6608ce400
                         {disp32} lea       edi, dword ptr [eax + 0x00e43820]             // 0x008500ef    8db82038e400
                         mov                ecx, 0x00000008                               // 0x008500f5    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x008500fa    f3a5
                         {disp8} mov        edi, dword ptr [ebp + -0x0c]                  // 0x008500fc    8b7df4
_jmp_addr_0x008500ff:    {disp8} mov        eax, dword ptr [ebp + -0x18]                  // 0x008500ff    8b45e8
                         inc                eax                                           // 0x00850102    40
                         cmp                eax, 0x07                                     // 0x00850103    83f807
                         {disp8} mov        dword ptr [ebp + -0x18], eax                  // 0x00850106    8945e8
                         {disp32} jl        _jmp_addr_0x0084ffa7                          // 0x00850109    0f8c98feffff
_jmp_addr_0x0085010f:    {disp8} mov        edx, dword ptr [ebp + -0x10]                  // 0x0085010f    8b55f0
                         add                edi, 0x06                                     // 0x00850112    83c706
                         cmp                edx, 0x39                                     // 0x00850115    83fa39
                         {disp8} mov        dword ptr [ebp + -0x0c], edi                  // 0x00850118    897df4
                         {disp32} jl        _jmp_addr_0x0084fc54                          // 0x0085011b    0f8c33fbffff
_jmp_addr_0x00850121:    test               edx, edx                                      // 0x00850121    85d2
                         {disp8} jle        _jmp_addr_0x0085016e                          // 0x00850123    7e49
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50464c]        // 0x00850125    a14ca6ec00
                         xor.s              ecx, ecx                                      // 0x0085012a    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x05]                     // 0x0085012c    8a4805
                         and                ecx, 0x01                                     // 0x0085012f    83e101
                         mov.s              esi, ecx                                      // 0x00850132    8bf1
                         and                byte ptr [eax + 0x05], -0x02                  // 0x00850134    806005fe
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50464c]        // 0x00850138    a14ca6ec00
                         push               eax                                           // 0x0085013d    50
                         {disp32} lea       ecx, dword ptr [ebp + -0x00000388]            // 0x0085013e    8d8d78fcffff
                         push               ecx                                           // 0x00850144    51
                         push               edx                                           // 0x00850145    52
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x00850146    8d1452
                         push               0x00e437e0                                    // 0x00850149    68e037e400
                         push               edx                                           // 0x0085014e    52
                         call               _jmp_addr_0x0084ca00                          // 0x0085014f    e8acc8ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50464c]        // 0x00850154    a14ca6ec00
                         {disp8} mov        cl, byte ptr [eax + 0x05]                     // 0x00850159    8a4805
                         add                esp, 0x14                                     // 0x0085015c    83c414
                         test               esi, esi                                      // 0x0085015f    85f6
                         {disp8} je         _jmp_addr_0x00850168                          // 0x00850161    7405
                         or                 cl, 1                                         // 0x00850163    80c901
                         {disp8} jmp        _jmp_addr_0x0085016b                          // 0x00850166    eb03
_jmp_addr_0x00850168:    and                cl, -0x02                                     // 0x00850168    80e1fe
_jmp_addr_0x0085016b:    {disp8} mov        byte ptr [eax + 0x05], cl                     // 0x0085016b    884805
_jmp_addr_0x0085016e:    {disp8} mov        ecx, dword ptr [ebp + -0x14]                  // 0x0085016e    8b4dec
                         {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x00850171    8b4118
                         {disp8} mov        ecx, dword ptr [ecx + 0x1c]                   // 0x00850174    8b491c
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00850177    8d0440
                         lea                edx, dword ptr [ecx + eax * 0x2]              // 0x0085017a    8d1441
                         cmp.s              edi, edx                                      // 0x0085017d    3bfa
                         {disp32} jb        _jmp_addr_0x0084fc4f                          // 0x0085017f    0f82cafaffff
_jmp_addr_0x00850185:    pop                edi                                           // 0x00850185    5f
                         pop                esi                                           // 0x00850186    5e
                         pop                ebx                                           // 0x00850187    5b
                         mov.s              esp, ebp                                      // 0x00850188    8be5
                         pop                ebp                                           // 0x0085018a    5d
                         ret                                                              // 0x0085018b    c3

// Snippet: jmptbl, [0x0085018c, 0x008501a8)
.byte 0xba, 0xff, 0x84, 0x00      // 0x0085018c
.byte 0xcf, 0xff, 0x84, 0x00      // 0x00850190
.byte 0xea, 0xff, 0x84, 0x00      // 0x00850194
.byte 0x01, 0x00, 0x85, 0x00      // 0x00850198
.byte 0x1d, 0x00, 0x85, 0x00      // 0x0085019c
.byte 0x35, 0x00, 0x85, 0x00      // 0x008501a0
.byte 0x50, 0x00, 0x85, 0x00      // 0x008501a4

// Snippet: db, [0x008501a8, 0x008501b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x008501a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x008501ac

