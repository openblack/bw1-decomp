.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00481160
.extern _jmp_addr_0x00481390
.extern _jmp_addr_0x0048f710
.extern _jmp_addr_0x00490910
.extern _jmp_addr_0x004ee2b0
.extern _jmp_addr_0x007a1400
.extern _fprintf
.extern _jmp_addr_0x0083a0e0

.globl _jmp_addr_0x0048f7b0
.globl _jmp_addr_0x0048f800
.globl _jmp_addr_0x0048f820
.globl _jmp_addr_0x0048f830
.globl _jmp_addr_0x00490460
.globl _jmp_addr_0x004907c0
.globl _jmp_addr_0x00490860
.globl _jmp_addr_0x004908b0

start_0x0048f7b0_0x00490910:
// Snippet: asm, [0x0048f7b0, 0x004908d6)
_jmp_addr_0x0048f7b0:    push               esi                                           // 0x0048f7b0    56
                         mov.s              esi, ecx                                      // 0x0048f7b1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]             // 0x0048f7b3    8b8694490000
                         test               eax, eax                                      // 0x0048f7b9    85c0
                         {disp8} jne        _jmp_addr_0x0048f7d5                          // 0x0048f7bb    7518
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0048f7bd    8b442408
                         mov.s              ecx, eax                                      // 0x0048f7c1    8bc8
                         push               ecx                                           // 0x0048f7c3    51
                         mov.s              ecx, esi                                      // 0x0048f7c4    8bce
                         {disp32} mov       dword ptr [esi + 0x00005240], eax             // 0x0048f7c6    898640520000
                         call               _jmp_addr_0x00481160                          // 0x0048f7cc    e88f19ffff
                         pop                esi                                           // 0x0048f7d1    5e
                         ret                0x0004                                        // 0x0048f7d2    c20400
_jmp_addr_0x0048f7d5:    push               0x1                                           // 0x0048f7d5    6a01
                         push               0x1                                           // 0x0048f7d7    6a01
                         mov.s              ecx, esi                                      // 0x0048f7d9    8bce
                         call               _jmp_addr_0x0048f710                          // 0x0048f7db    e830ffffff
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0048f7e0    8b542408
                         {disp32} mov       dword ptr [esi + 0x00005240], edx             // 0x0048f7e4    899640520000
                         {disp32} mov       dword ptr [esi + 0x0000523c], 0x00000001      // 0x0048f7ea    c7863c52000001000000
                         pop                esi                                           // 0x0048f7f4    5e
                         ret                0x0004                                        // 0x0048f7f5    c20400
                         nop                                                              // 0x0048f7f8    90
                         nop                                                              // 0x0048f7f9    90
                         nop                                                              // 0x0048f7fa    90
                         nop                                                              // 0x0048f7fb    90
                         nop                                                              // 0x0048f7fc    90
                         nop                                                              // 0x0048f7fd    90
                         nop                                                              // 0x0048f7fe    90
                         nop                                                              // 0x0048f7ff    90
_jmp_addr_0x0048f800:    push               esi                                           // 0x0048f800    56
                         mov.s              esi, ecx                                      // 0x0048f801    8bf1
                         call               _jmp_addr_0x004ee2b0                          // 0x0048f803    e8a8ea0500
                         {disp32} fld       dword ptr [esi + 0x0000492c]                  // 0x0048f808    d9862c490000
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x0048f80e    d88e94000000
                         pop                esi                                           // 0x0048f814    5e
                         fchs                                                             // 0x0048f815    d9e0
                         ret                                                              // 0x0048f817    c3
                         nop                                                              // 0x0048f818    90
                         nop                                                              // 0x0048f819    90
                         nop                                                              // 0x0048f81a    90
                         nop                                                              // 0x0048f81b    90
                         nop                                                              // 0x0048f81c    90
                         nop                                                              // 0x0048f81d    90
                         nop                                                              // 0x0048f81e    90
                         nop                                                              // 0x0048f81f    90
_jmp_addr_0x0048f820:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0048f820    8b442404
                         ret                                                              // 0x0048f824    c3
                         nop                                                              // 0x0048f825    90
                         nop                                                              // 0x0048f826    90
                         nop                                                              // 0x0048f827    90
                         nop                                                              // 0x0048f828    90
                         nop                                                              // 0x0048f829    90
                         nop                                                              // 0x0048f82a    90
                         nop                                                              // 0x0048f82b    90
                         nop                                                              // 0x0048f82c    90
                         nop                                                              // 0x0048f82d    90
                         nop                                                              // 0x0048f82e    90
                         nop                                                              // 0x0048f82f    90
_jmp_addr_0x0048f830:    {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048f830    a1703ccd00
                         test               eax, eax                                      // 0x0048f835    85c0
                         push               esi                                           // 0x0048f837    56
                         push               edi                                           // 0x0048f838    57
                         mov.s              esi, ecx                                      // 0x0048f839    8bf1
                         {disp8} je         _jmp_addr_0x0048f85d                          // 0x0048f83b    7420
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048f83d    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0048f842    8b88405a2000
                         {disp32} mov       edx, dword ptr [eax + 0x002502d0]             // 0x0048f848    8b90d0022500
                         push               ecx                                           // 0x0048f84e    51
                         push               0x009d1528                                    // 0x0048f84f    6828159d00
                         push               edx                                           // 0x0048f854    52
                         call               _fprintf                                      // 0x0048f855    e856753300
                         add                esp, 0x0c                                     // 0x0048f85a    83c40c
_jmp_addr_0x0048f85d:    {disp32} mov       eax, dword ptr [esi + 0x00004838]             // 0x0048f85d    8b8638480000
                         push               eax                                           // 0x0048f863    50
                         call               _jmp_addr_0x0048f820                          // 0x0048f864    e8b7ffffff
                         mov.s              edi, eax                                      // 0x0048f869    8bf8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048f86b    a1703ccd00
                         add                esp, 0x04                                     // 0x0048f870    83c404
                         test               eax, eax                                      // 0x0048f873    85c0
                         {disp8} je         _jmp_addr_0x0048f8a1                          // 0x0048f875    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004838]             // 0x0048f877    8b8e38480000
                         push               ecx                                           // 0x0048f87d    51
                         call               _jmp_addr_0x0048f820                          // 0x0048f87e    e89dffffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048f883    8b155c19d000
                         add                esp, 0x04                                     // 0x0048f889    83c404
                         push               eax                                           // 0x0048f88c    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048f88d    8b82d0022500
                         push               0x009d1514                                    // 0x0048f893    6814159d00
                         push               eax                                           // 0x0048f898    50
                         call               _fprintf                                      // 0x0048f899    e812753300
                         add                esp, 0x0c                                     // 0x0048f89e    83c40c
_jmp_addr_0x0048f8a1:    {disp32} mov       ecx, dword ptr [esi + 0x0000483c]             // 0x0048f8a1    8b8e3c480000
                         push               ecx                                           // 0x0048f8a7    51
                         call               _jmp_addr_0x0048f820                          // 0x0048f8a8    e873ffffff
                         add.s              edi, eax                                      // 0x0048f8ad    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048f8af    a1703ccd00
                         add                esp, 0x04                                     // 0x0048f8b4    83c404
                         test               eax, eax                                      // 0x0048f8b7    85c0
                         {disp8} je         _jmp_addr_0x0048f8e4                          // 0x0048f8b9    7429
                         {disp32} mov       edx, dword ptr [esi + 0x0000483c]             // 0x0048f8bb    8b963c480000
                         push               edx                                           // 0x0048f8c1    52
                         call               _jmp_addr_0x0048f820                          // 0x0048f8c2    e859ffffff
                         add                esp, 0x04                                     // 0x0048f8c7    83c404
                         push               eax                                           // 0x0048f8ca    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048f8cb    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048f8d0    8b88d0022500
                         push               0x009d1500                                    // 0x0048f8d6    6800159d00
                         push               ecx                                           // 0x0048f8db    51
                         call               _fprintf                                      // 0x0048f8dc    e8cf743300
                         add                esp, 0x0c                                     // 0x0048f8e1    83c40c
_jmp_addr_0x0048f8e4:    {disp32} mov       edx, dword ptr [esi + 0x00004840]             // 0x0048f8e4    8b9640480000
                         push               edx                                           // 0x0048f8ea    52
                         call               _jmp_addr_0x0048f820                          // 0x0048f8eb    e830ffffff
                         add.s              edi, eax                                      // 0x0048f8f0    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048f8f2    a1703ccd00
                         add                esp, 0x04                                     // 0x0048f8f7    83c404
                         test               eax, eax                                      // 0x0048f8fa    85c0
                         {disp8} je         _jmp_addr_0x0048f928                          // 0x0048f8fc    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004840]             // 0x0048f8fe    8b8640480000
                         push               eax                                           // 0x0048f904    50
                         call               _jmp_addr_0x0048f820                          // 0x0048f905    e816ffffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048f90a    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048f910    8b91d0022500
                         add                esp, 0x04                                     // 0x0048f916    83c404
                         push               eax                                           // 0x0048f919    50
                         push               0x009d14e8                                    // 0x0048f91a    68e8149d00
                         push               edx                                           // 0x0048f91f    52
                         call               _fprintf                                      // 0x0048f920    e88b743300
                         add                esp, 0x0c                                     // 0x0048f925    83c40c
_jmp_addr_0x0048f928:    {disp32} mov       eax, dword ptr [esi + 0x00000084]             // 0x0048f928    8b8684000000
                         push               eax                                           // 0x0048f92e    50
                         call               _jmp_addr_0x0048f820                          // 0x0048f92f    e8ecfeffff
                         add.s              edi, eax                                      // 0x0048f934    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048f936    a1703ccd00
                         add                esp, 0x04                                     // 0x0048f93b    83c404
                         test               eax, eax                                      // 0x0048f93e    85c0
                         {disp8} je         _jmp_addr_0x0048f96c                          // 0x0048f940    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]             // 0x0048f942    8b8e84000000
                         push               ecx                                           // 0x0048f948    51
                         call               _jmp_addr_0x0048f820                          // 0x0048f949    e8d2feffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048f94e    8b155c19d000
                         add                esp, 0x04                                     // 0x0048f954    83c404
                         push               eax                                           // 0x0048f957    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048f958    8b82d0022500
                         push               0x009d14d8                                    // 0x0048f95e    68d8149d00
                         push               eax                                           // 0x0048f963    50
                         call               _fprintf                                      // 0x0048f964    e847743300
                         add                esp, 0x0c                                     // 0x0048f969    83c40c
_jmp_addr_0x0048f96c:    {disp32} mov       ecx, dword ptr [esi + 0x00004844]             // 0x0048f96c    8b8e44480000
                         push               ecx                                           // 0x0048f972    51
                         call               _jmp_addr_0x0048f820                          // 0x0048f973    e8a8feffff
                         add.s              edi, eax                                      // 0x0048f978    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048f97a    a1703ccd00
                         add                esp, 0x04                                     // 0x0048f97f    83c404
                         test               eax, eax                                      // 0x0048f982    85c0
                         {disp8} je         _jmp_addr_0x0048f9af                          // 0x0048f984    7429
                         {disp32} mov       edx, dword ptr [esi + 0x00004844]             // 0x0048f986    8b9644480000
                         push               edx                                           // 0x0048f98c    52
                         call               _jmp_addr_0x0048f820                          // 0x0048f98d    e88efeffff
                         add                esp, 0x04                                     // 0x0048f992    83c404
                         push               eax                                           // 0x0048f995    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048f996    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048f99b    8b88d0022500
                         push               0x009d14c8                                    // 0x0048f9a1    68c8149d00
                         push               ecx                                           // 0x0048f9a6    51
                         call               _fprintf                                      // 0x0048f9a7    e804743300
                         add                esp, 0x0c                                     // 0x0048f9ac    83c40c
_jmp_addr_0x0048f9af:    {disp32} mov       edx, dword ptr [esi + 0x00004848]             // 0x0048f9af    8b9648480000
                         push               edx                                           // 0x0048f9b5    52
                         call               _jmp_addr_0x0048f820                          // 0x0048f9b6    e865feffff
                         add.s              edi, eax                                      // 0x0048f9bb    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048f9bd    a1703ccd00
                         add                esp, 0x04                                     // 0x0048f9c2    83c404
                         test               eax, eax                                      // 0x0048f9c5    85c0
                         {disp8} je         _jmp_addr_0x0048f9f3                          // 0x0048f9c7    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004848]             // 0x0048f9c9    8b8648480000
                         push               eax                                           // 0x0048f9cf    50
                         call               _jmp_addr_0x0048f820                          // 0x0048f9d0    e84bfeffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048f9d5    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048f9db    8b91d0022500
                         add                esp, 0x04                                     // 0x0048f9e1    83c404
                         push               eax                                           // 0x0048f9e4    50
                         push               0x009d14b8                                    // 0x0048f9e5    68b8149d00
                         push               edx                                           // 0x0048f9ea    52
                         call               _fprintf                                      // 0x0048f9eb    e8c0733300
                         add                esp, 0x0c                                     // 0x0048f9f0    83c40c
_jmp_addr_0x0048f9f3:    {disp32} mov       eax, dword ptr [esi + 0x0000484c]             // 0x0048f9f3    8b864c480000
                         push               eax                                           // 0x0048f9f9    50
                         call               _jmp_addr_0x0048f820                          // 0x0048f9fa    e821feffff
                         add.s              edi, eax                                      // 0x0048f9ff    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fa01    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fa06    83c404
                         test               eax, eax                                      // 0x0048fa09    85c0
                         {disp8} je         _jmp_addr_0x0048fa37                          // 0x0048fa0b    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x0000484c]             // 0x0048fa0d    8b8e4c480000
                         push               ecx                                           // 0x0048fa13    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fa14    e807feffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048fa19    8b155c19d000
                         add                esp, 0x04                                     // 0x0048fa1f    83c404
                         push               eax                                           // 0x0048fa22    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048fa23    8b82d0022500
                         push               0x009d14a4                                    // 0x0048fa29    68a4149d00
                         push               eax                                           // 0x0048fa2e    50
                         call               _fprintf                                      // 0x0048fa2f    e87c733300
                         add                esp, 0x0c                                     // 0x0048fa34    83c40c
_jmp_addr_0x0048fa37:    {disp32} mov       ecx, dword ptr [esi + 0x00004850]             // 0x0048fa37    8b8e50480000
                         push               ecx                                           // 0x0048fa3d    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fa3e    e8ddfdffff
                         add.s              edi, eax                                      // 0x0048fa43    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fa45    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fa4a    83c404
                         test               eax, eax                                      // 0x0048fa4d    85c0
                         {disp8} je         _jmp_addr_0x0048fa7a                          // 0x0048fa4f    7429
                         {disp32} mov       edx, dword ptr [esi + 0x00004850]             // 0x0048fa51    8b9650480000
                         push               edx                                           // 0x0048fa57    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fa58    e8c3fdffff
                         add                esp, 0x04                                     // 0x0048fa5d    83c404
                         push               eax                                           // 0x0048fa60    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fa61    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fa66    8b88d0022500
                         push               0x009d1490                                    // 0x0048fa6c    6890149d00
                         push               ecx                                           // 0x0048fa71    51
                         call               _fprintf                                      // 0x0048fa72    e839733300
                         add                esp, 0x0c                                     // 0x0048fa77    83c40c
_jmp_addr_0x0048fa7a:    {disp32} mov       edx, dword ptr [esi + 0x00004854]             // 0x0048fa7a    8b9654480000
                         push               edx                                           // 0x0048fa80    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fa81    e89afdffff
                         add.s              edi, eax                                      // 0x0048fa86    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fa88    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fa8d    83c404
                         test               eax, eax                                      // 0x0048fa90    85c0
                         {disp8} je         _jmp_addr_0x0048fabe                          // 0x0048fa92    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004854]             // 0x0048fa94    8b8654480000
                         push               eax                                           // 0x0048fa9a    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fa9b    e880fdffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048faa0    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048faa6    8b91d0022500
                         add                esp, 0x04                                     // 0x0048faac    83c404
                         push               eax                                           // 0x0048faaf    50
                         push               0x009d147c                                    // 0x0048fab0    687c149d00
                         push               edx                                           // 0x0048fab5    52
                         call               _fprintf                                      // 0x0048fab6    e8f5723300
                         add                esp, 0x0c                                     // 0x0048fabb    83c40c
_jmp_addr_0x0048fabe:    {disp32} mov       eax, dword ptr [esi + 0x000048b4]             // 0x0048fabe    8b86b4480000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0048fac4    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0048faca    03f8
                         test               ecx, ecx                                      // 0x0048facc    85c9
                         {disp8} je         _jmp_addr_0x0048faea                          // 0x0048face    741a
                         push               eax                                           // 0x0048fad0    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fad1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fad6    8b88d0022500
                         push               0x009d146c                                    // 0x0048fadc    686c149d00
                         push               ecx                                           // 0x0048fae1    51
                         call               _fprintf                                      // 0x0048fae2    e8c9723300
                         add                esp, 0x0c                                     // 0x0048fae7    83c40c
_jmp_addr_0x0048faea:    {disp32} mov       edx, dword ptr [esi + 0x000048b8]             // 0x0048faea    8b96b8480000
                         push               edx                                           // 0x0048faf0    52
                         call               _jmp_addr_0x0048f820                          // 0x0048faf1    e82afdffff
                         add.s              edi, eax                                      // 0x0048faf6    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048faf8    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fafd    83c404
                         test               eax, eax                                      // 0x0048fb00    85c0
                         {disp8} je         _jmp_addr_0x0048fb2e                          // 0x0048fb02    742a
                         {disp32} mov       eax, dword ptr [esi + 0x000048b8]             // 0x0048fb04    8b86b8480000
                         push               eax                                           // 0x0048fb0a    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fb0b    e810fdffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048fb10    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048fb16    8b91d0022500
                         add                esp, 0x04                                     // 0x0048fb1c    83c404
                         push               eax                                           // 0x0048fb1f    50
                         push               0x009d1458                                    // 0x0048fb20    6858149d00
                         push               edx                                           // 0x0048fb25    52
                         call               _fprintf                                      // 0x0048fb26    e885723300
                         add                esp, 0x0c                                     // 0x0048fb2b    83c40c
_jmp_addr_0x0048fb2e:    {disp32} mov       eax, dword ptr [esi + 0x000048bc]             // 0x0048fb2e    8b86bc480000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0048fb34    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0048fb3a    03f8
                         test               ecx, ecx                                      // 0x0048fb3c    85c9
                         {disp8} je         _jmp_addr_0x0048fb5a                          // 0x0048fb3e    741a
                         push               eax                                           // 0x0048fb40    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fb41    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fb46    8b88d0022500
                         push               0x009d1444                                    // 0x0048fb4c    6844149d00
                         push               ecx                                           // 0x0048fb51    51
                         call               _fprintf                                      // 0x0048fb52    e859723300
                         add                esp, 0x0c                                     // 0x0048fb57    83c40c
_jmp_addr_0x0048fb5a:    {disp32} mov       eax, dword ptr [esi + 0x00004908]             // 0x0048fb5a    8b8608490000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0048fb60    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0048fb66    03f8
                         test               ecx, ecx                                      // 0x0048fb68    85c9
                         {disp8} je         _jmp_addr_0x0048fb87                          // 0x0048fb6a    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048fb6c    8b155c19d000
                         push               eax                                           // 0x0048fb72    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048fb73    8b82d0022500
                         push               0x009d1430                                    // 0x0048fb79    6830149d00
                         push               eax                                           // 0x0048fb7e    50
                         call               _fprintf                                      // 0x0048fb7f    e82c723300
                         add                esp, 0x0c                                     // 0x0048fb84    83c40c
_jmp_addr_0x0048fb87:    {disp32} mov       ecx, dword ptr [esi + 0x0000490c]             // 0x0048fb87    8b8e0c490000
                         push               ecx                                           // 0x0048fb8d    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fb8e    e88dfcffff
                         add.s              edi, eax                                      // 0x0048fb93    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fb95    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fb9a    83c404
                         test               eax, eax                                      // 0x0048fb9d    85c0
                         {disp8} je         _jmp_addr_0x0048fbca                          // 0x0048fb9f    7429
                         {disp32} mov       edx, dword ptr [esi + 0x0000490c]             // 0x0048fba1    8b960c490000
                         push               edx                                           // 0x0048fba7    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fba8    e873fcffff
                         add                esp, 0x04                                     // 0x0048fbad    83c404
                         push               eax                                           // 0x0048fbb0    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fbb1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fbb6    8b88d0022500
                         push               0x009d1418                                    // 0x0048fbbc    6818149d00
                         push               ecx                                           // 0x0048fbc1    51
                         call               _fprintf                                      // 0x0048fbc2    e8e9713300
                         add                esp, 0x0c                                     // 0x0048fbc7    83c40c
_jmp_addr_0x0048fbca:    {disp32} mov       edx, dword ptr [esi + 0x00004910]             // 0x0048fbca    8b9610490000
                         push               edx                                           // 0x0048fbd0    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fbd1    e84afcffff
                         add.s              edi, eax                                      // 0x0048fbd6    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fbd8    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fbdd    83c404
                         test               eax, eax                                      // 0x0048fbe0    85c0
                         {disp8} je         _jmp_addr_0x0048fc0e                          // 0x0048fbe2    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004910]             // 0x0048fbe4    8b8610490000
                         push               eax                                           // 0x0048fbea    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fbeb    e830fcffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048fbf0    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048fbf6    8b91d0022500
                         add                esp, 0x04                                     // 0x0048fbfc    83c404
                         push               eax                                           // 0x0048fbff    50
                         push               0x009d1400                                    // 0x0048fc00    6800149d00
                         push               edx                                           // 0x0048fc05    52
                         call               _fprintf                                      // 0x0048fc06    e8a5713300
                         add                esp, 0x0c                                     // 0x0048fc0b    83c40c
_jmp_addr_0x0048fc0e:    {disp32} mov       eax, dword ptr [esi + 0x00004914]             // 0x0048fc0e    8b8614490000
                         push               eax                                           // 0x0048fc14    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fc15    e806fcffff
                         add.s              edi, eax                                      // 0x0048fc1a    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fc1c    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fc21    83c404
                         test               eax, eax                                      // 0x0048fc24    85c0
                         {disp8} je         _jmp_addr_0x0048fc52                          // 0x0048fc26    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004914]             // 0x0048fc28    8b8e14490000
                         push               ecx                                           // 0x0048fc2e    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fc2f    e8ecfbffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048fc34    8b155c19d000
                         add                esp, 0x04                                     // 0x0048fc3a    83c404
                         push               eax                                           // 0x0048fc3d    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048fc3e    8b82d0022500
                         push               0x009d13e8                                    // 0x0048fc44    68e8139d00
                         push               eax                                           // 0x0048fc49    50
                         call               _fprintf                                      // 0x0048fc4a    e861713300
                         add                esp, 0x0c                                     // 0x0048fc4f    83c40c
_jmp_addr_0x0048fc52:    {disp32} mov       ecx, dword ptr [esi + 0x00004918]             // 0x0048fc52    8b8e18490000
                         push               ecx                                           // 0x0048fc58    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fc59    e8c2fbffff
                         add.s              edi, eax                                      // 0x0048fc5e    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fc60    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fc65    83c404
                         test               eax, eax                                      // 0x0048fc68    85c0
                         {disp8} je         _jmp_addr_0x0048fc95                          // 0x0048fc6a    7429
                         {disp32} mov       edx, dword ptr [esi + 0x00004918]             // 0x0048fc6c    8b9618490000
                         push               edx                                           // 0x0048fc72    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fc73    e8a8fbffff
                         add                esp, 0x04                                     // 0x0048fc78    83c404
                         push               eax                                           // 0x0048fc7b    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fc7c    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fc81    8b88d0022500
                         push               0x009d13d0                                    // 0x0048fc87    68d0139d00
                         push               ecx                                           // 0x0048fc8c    51
                         call               _fprintf                                      // 0x0048fc8d    e81e713300
                         add                esp, 0x0c                                     // 0x0048fc92    83c40c
_jmp_addr_0x0048fc95:    {disp32} mov       edx, dword ptr [esi + 0x0000491c]             // 0x0048fc95    8b961c490000
                         push               edx                                           // 0x0048fc9b    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fc9c    e87ffbffff
                         add.s              edi, eax                                      // 0x0048fca1    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fca3    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fca8    83c404
                         test               eax, eax                                      // 0x0048fcab    85c0
                         {disp8} je         _jmp_addr_0x0048fcd9                          // 0x0048fcad    742a
                         {disp32} mov       eax, dword ptr [esi + 0x0000491c]             // 0x0048fcaf    8b861c490000
                         push               eax                                           // 0x0048fcb5    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fcb6    e865fbffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048fcbb    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048fcc1    8b91d0022500
                         add                esp, 0x04                                     // 0x0048fcc7    83c404
                         push               eax                                           // 0x0048fcca    50
                         push               0x009d13b8                                    // 0x0048fccb    68b8139d00
                         push               edx                                           // 0x0048fcd0    52
                         call               _fprintf                                      // 0x0048fcd1    e8da703300
                         add                esp, 0x0c                                     // 0x0048fcd6    83c40c
_jmp_addr_0x0048fcd9:    {disp32} mov       eax, dword ptr [esi + 0x00004920]             // 0x0048fcd9    8b8620490000
                         push               eax                                           // 0x0048fcdf    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fce0    e83bfbffff
                         add.s              edi, eax                                      // 0x0048fce5    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fce7    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fcec    83c404
                         test               eax, eax                                      // 0x0048fcef    85c0
                         {disp8} je         _jmp_addr_0x0048fd1d                          // 0x0048fcf1    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004920]             // 0x0048fcf3    8b8e20490000
                         push               ecx                                           // 0x0048fcf9    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fcfa    e821fbffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048fcff    8b155c19d000
                         add                esp, 0x04                                     // 0x0048fd05    83c404
                         push               eax                                           // 0x0048fd08    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048fd09    8b82d0022500
                         push               0x009d13a0                                    // 0x0048fd0f    68a0139d00
                         push               eax                                           // 0x0048fd14    50
                         call               _fprintf                                      // 0x0048fd15    e896703300
                         add                esp, 0x0c                                     // 0x0048fd1a    83c40c
_jmp_addr_0x0048fd1d:    {disp32} mov       ecx, dword ptr [esi + 0x00004930]             // 0x0048fd1d    8b8e30490000
                         push               ecx                                           // 0x0048fd23    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fd24    e8f7faffff
                         add.s              edi, eax                                      // 0x0048fd29    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fd2b    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fd30    83c404
                         test               eax, eax                                      // 0x0048fd33    85c0
                         {disp8} je         _jmp_addr_0x0048fd60                          // 0x0048fd35    7429
                         {disp32} mov       edx, dword ptr [esi + 0x00004930]             // 0x0048fd37    8b9630490000
                         push               edx                                           // 0x0048fd3d    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fd3e    e8ddfaffff
                         add                esp, 0x04                                     // 0x0048fd43    83c404
                         push               eax                                           // 0x0048fd46    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fd47    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fd4c    8b88d0022500
                         push               0x009d138c                                    // 0x0048fd52    688c139d00
                         push               ecx                                           // 0x0048fd57    51
                         call               _fprintf                                      // 0x0048fd58    e853703300
                         add                esp, 0x0c                                     // 0x0048fd5d    83c40c
_jmp_addr_0x0048fd60:    {disp32} mov       edx, dword ptr [esi + 0x00004934]             // 0x0048fd60    8b9634490000
                         push               edx                                           // 0x0048fd66    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fd67    e8b4faffff
                         add.s              edi, eax                                      // 0x0048fd6c    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fd6e    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fd73    83c404
                         test               eax, eax                                      // 0x0048fd76    85c0
                         {disp8} je         _jmp_addr_0x0048fda4                          // 0x0048fd78    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004934]             // 0x0048fd7a    8b8634490000
                         push               eax                                           // 0x0048fd80    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fd81    e89afaffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048fd86    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048fd8c    8b91d0022500
                         add                esp, 0x04                                     // 0x0048fd92    83c404
                         push               eax                                           // 0x0048fd95    50
                         push               0x009d1378                                    // 0x0048fd96    6878139d00
                         push               edx                                           // 0x0048fd9b    52
                         call               _fprintf                                      // 0x0048fd9c    e80f703300
                         add                esp, 0x0c                                     // 0x0048fda1    83c40c
_jmp_addr_0x0048fda4:    {disp32} mov       eax, dword ptr [esi + 0x00004938]             // 0x0048fda4    8b8638490000
                         push               eax                                           // 0x0048fdaa    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fdab    e870faffff
                         add.s              edi, eax                                      // 0x0048fdb0    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fdb2    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fdb7    83c404
                         test               eax, eax                                      // 0x0048fdba    85c0
                         {disp8} je         _jmp_addr_0x0048fde8                          // 0x0048fdbc    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004938]             // 0x0048fdbe    8b8e38490000
                         push               ecx                                           // 0x0048fdc4    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fdc5    e856faffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048fdca    8b155c19d000
                         add                esp, 0x04                                     // 0x0048fdd0    83c404
                         push               eax                                           // 0x0048fdd3    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048fdd4    8b82d0022500
                         push               0x009d1364                                    // 0x0048fdda    6864139d00
                         push               eax                                           // 0x0048fddf    50
                         call               _fprintf                                      // 0x0048fde0    e8cb6f3300
                         add                esp, 0x0c                                     // 0x0048fde5    83c40c
_jmp_addr_0x0048fde8:    {disp32} mov       ecx, dword ptr [esi + 0x0000493c]             // 0x0048fde8    8b8e3c490000
                         push               ecx                                           // 0x0048fdee    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fdef    e82cfaffff
                         add.s              edi, eax                                      // 0x0048fdf4    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fdf6    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fdfb    83c404
                         test               eax, eax                                      // 0x0048fdfe    85c0
                         {disp8} je         _jmp_addr_0x0048fe2b                          // 0x0048fe00    7429
                         {disp32} mov       edx, dword ptr [esi + 0x0000493c]             // 0x0048fe02    8b963c490000
                         push               edx                                           // 0x0048fe08    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fe09    e812faffff
                         add                esp, 0x04                                     // 0x0048fe0e    83c404
                         push               eax                                           // 0x0048fe11    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fe12    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fe17    8b88d0022500
                         push               0x009d1350                                    // 0x0048fe1d    6850139d00
                         push               ecx                                           // 0x0048fe22    51
                         call               _fprintf                                      // 0x0048fe23    e8886f3300
                         add                esp, 0x0c                                     // 0x0048fe28    83c40c
_jmp_addr_0x0048fe2b:    {disp32} mov       edx, dword ptr [esi + 0x00004940]             // 0x0048fe2b    8b9640490000
                         push               edx                                           // 0x0048fe31    52
                         call               _jmp_addr_0x0048f820                          // 0x0048fe32    e8e9f9ffff
                         add.s              edi, eax                                      // 0x0048fe37    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fe39    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fe3e    83c404
                         test               eax, eax                                      // 0x0048fe41    85c0
                         {disp8} je         _jmp_addr_0x0048fe6f                          // 0x0048fe43    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004940]             // 0x0048fe45    8b8640490000
                         push               eax                                           // 0x0048fe4b    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fe4c    e8cff9ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048fe51    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048fe57    8b91d0022500
                         add                esp, 0x04                                     // 0x0048fe5d    83c404
                         push               eax                                           // 0x0048fe60    50
                         push               0x009d133c                                    // 0x0048fe61    683c139d00
                         push               edx                                           // 0x0048fe66    52
                         call               _fprintf                                      // 0x0048fe67    e8446f3300
                         add                esp, 0x0c                                     // 0x0048fe6c    83c40c
_jmp_addr_0x0048fe6f:    {disp32} mov       eax, dword ptr [esi + 0x00004944]             // 0x0048fe6f    8b8644490000
                         push               eax                                           // 0x0048fe75    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fe76    e8a5f9ffff
                         add.s              edi, eax                                      // 0x0048fe7b    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048fe7d    a1703ccd00
                         add                esp, 0x04                                     // 0x0048fe82    83c404
                         test               eax, eax                                      // 0x0048fe85    85c0
                         {disp8} je         _jmp_addr_0x0048feb3                          // 0x0048fe87    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004944]             // 0x0048fe89    8b8e44490000
                         push               ecx                                           // 0x0048fe8f    51
                         call               _jmp_addr_0x0048f820                          // 0x0048fe90    e88bf9ffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048fe95    8b155c19d000
                         add                esp, 0x04                                     // 0x0048fe9b    83c404
                         push               eax                                           // 0x0048fe9e    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048fe9f    8b82d0022500
                         push               0x009d1328                                    // 0x0048fea5    6828139d00
                         push               eax                                           // 0x0048feaa    50
                         call               _fprintf                                      // 0x0048feab    e8006f3300
                         add                esp, 0x0c                                     // 0x0048feb0    83c40c
_jmp_addr_0x0048feb3:    {disp32} mov       eax, dword ptr [esi + 0x00004960]             // 0x0048feb3    8b8660490000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0048feb9    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0048febf    03f8
                         test               ecx, ecx                                      // 0x0048fec1    85c9
                         {disp8} je         _jmp_addr_0x0048fee0                          // 0x0048fec3    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048fec5    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048fecb    8b91d0022500
                         push               eax                                           // 0x0048fed1    50
                         push               0x009d1318                                    // 0x0048fed2    6818139d00
                         push               edx                                           // 0x0048fed7    52
                         call               _fprintf                                      // 0x0048fed8    e8d36e3300
                         add                esp, 0x0c                                     // 0x0048fedd    83c40c
_jmp_addr_0x0048fee0:    {disp32} mov       eax, dword ptr [esi + 0x00004964]             // 0x0048fee0    8b8664490000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0048fee6    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0048feec    03f8
                         test               ecx, ecx                                      // 0x0048feee    85c9
                         {disp8} je         _jmp_addr_0x0048ff0c                          // 0x0048fef0    741a
                         push               eax                                           // 0x0048fef2    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048fef3    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048fef8    8b88d0022500
                         push               0x009d1308                                    // 0x0048fefe    6808139d00
                         push               ecx                                           // 0x0048ff03    51
                         call               _fprintf                                      // 0x0048ff04    e8a76e3300
                         add                esp, 0x0c                                     // 0x0048ff09    83c40c
_jmp_addr_0x0048ff0c:    {disp32} mov       edx, dword ptr [esi + 0x00004968]             // 0x0048ff0c    8b9668490000
                         push               edx                                           // 0x0048ff12    52
                         call               _jmp_addr_0x0048f820                          // 0x0048ff13    e808f9ffff
                         add.s              edi, eax                                      // 0x0048ff18    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048ff1a    a1703ccd00
                         add                esp, 0x04                                     // 0x0048ff1f    83c404
                         test               eax, eax                                      // 0x0048ff22    85c0
                         {disp8} je         _jmp_addr_0x0048ff50                          // 0x0048ff24    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004968]             // 0x0048ff26    8b8668490000
                         push               eax                                           // 0x0048ff2c    50
                         call               _jmp_addr_0x0048f820                          // 0x0048ff2d    e8eef8ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048ff32    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0048ff38    8b91d0022500
                         add                esp, 0x04                                     // 0x0048ff3e    83c404
                         push               eax                                           // 0x0048ff41    50
                         push               0x009d12f8                                    // 0x0048ff42    68f8129d00
                         push               edx                                           // 0x0048ff47    52
                         call               _fprintf                                      // 0x0048ff48    e8636e3300
                         add                esp, 0x0c                                     // 0x0048ff4d    83c40c
_jmp_addr_0x0048ff50:    {disp32} mov       eax, dword ptr [esi + 0x0000496c]             // 0x0048ff50    8b866c490000
                         push               eax                                           // 0x0048ff56    50
                         call               _jmp_addr_0x0048f820                          // 0x0048ff57    e8c4f8ffff
                         add.s              edi, eax                                      // 0x0048ff5c    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048ff5e    a1703ccd00
                         add                esp, 0x04                                     // 0x0048ff63    83c404
                         test               eax, eax                                      // 0x0048ff66    85c0
                         {disp8} je         _jmp_addr_0x0048ff94                          // 0x0048ff68    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x0000496c]             // 0x0048ff6a    8b8e6c490000
                         push               ecx                                           // 0x0048ff70    51
                         call               _jmp_addr_0x0048f820                          // 0x0048ff71    e8aaf8ffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0048ff76    8b155c19d000
                         add                esp, 0x04                                     // 0x0048ff7c    83c404
                         push               eax                                           // 0x0048ff7f    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0048ff80    8b82d0022500
                         push               0x009d12e8                                    // 0x0048ff86    68e8129d00
                         push               eax                                           // 0x0048ff8b    50
                         call               _fprintf                                      // 0x0048ff8c    e81f6e3300
                         add                esp, 0x0c                                     // 0x0048ff91    83c40c
_jmp_addr_0x0048ff94:    {disp32} mov       ecx, dword ptr [esi + 0x00004970]             // 0x0048ff94    8b8e70490000
                         push               ecx                                           // 0x0048ff9a    51
                         call               _jmp_addr_0x0048f820                          // 0x0048ff9b    e880f8ffff
                         add.s              edi, eax                                      // 0x0048ffa0    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048ffa2    a1703ccd00
                         add                esp, 0x04                                     // 0x0048ffa7    83c404
                         test               eax, eax                                      // 0x0048ffaa    85c0
                         {disp8} je         _jmp_addr_0x0048ffd7                          // 0x0048ffac    7429
                         {disp32} mov       edx, dword ptr [esi + 0x00004970]             // 0x0048ffae    8b9670490000
                         push               edx                                           // 0x0048ffb4    52
                         call               _jmp_addr_0x0048f820                          // 0x0048ffb5    e866f8ffff
                         add                esp, 0x04                                     // 0x0048ffba    83c404
                         push               eax                                           // 0x0048ffbd    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0048ffbe    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0048ffc3    8b88d0022500
                         push               0x009d12d8                                    // 0x0048ffc9    68d8129d00
                         push               ecx                                           // 0x0048ffce    51
                         call               _fprintf                                      // 0x0048ffcf    e8dc6d3300
                         add                esp, 0x0c                                     // 0x0048ffd4    83c40c
_jmp_addr_0x0048ffd7:    {disp32} mov       edx, dword ptr [esi + 0x00004974]             // 0x0048ffd7    8b9674490000
                         push               edx                                           // 0x0048ffdd    52
                         call               _jmp_addr_0x0048f820                          // 0x0048ffde    e83df8ffff
                         add.s              edi, eax                                      // 0x0048ffe3    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0048ffe5    a1703ccd00
                         add                esp, 0x04                                     // 0x0048ffea    83c404
                         test               eax, eax                                      // 0x0048ffed    85c0
                         {disp8} je         _jmp_addr_0x0049001b                          // 0x0048ffef    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004974]             // 0x0048fff1    8b8674490000
                         push               eax                                           // 0x0048fff7    50
                         call               _jmp_addr_0x0048f820                          // 0x0048fff8    e823f8ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048fffd    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x00490003    8b91d0022500
                         add                esp, 0x04                                     // 0x00490009    83c404
                         push               eax                                           // 0x0049000c    50
                         push               0x009d12c8                                    // 0x0049000d    68c8129d00
                         push               edx                                           // 0x00490012    52
                         call               _fprintf                                      // 0x00490013    e8986d3300
                         add                esp, 0x0c                                     // 0x00490018    83c40c
_jmp_addr_0x0049001b:    {disp32} mov       eax, dword ptr [esi + 0x00004978]             // 0x0049001b    8b8678490000
                         push               eax                                           // 0x00490021    50
                         call               _jmp_addr_0x0048f820                          // 0x00490022    e8f9f7ffff
                         add.s              edi, eax                                      // 0x00490027    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490029    a1703ccd00
                         add                esp, 0x04                                     // 0x0049002e    83c404
                         test               eax, eax                                      // 0x00490031    85c0
                         {disp8} je         _jmp_addr_0x0049005f                          // 0x00490033    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004978]             // 0x00490035    8b8e78490000
                         push               ecx                                           // 0x0049003b    51
                         call               _jmp_addr_0x0048f820                          // 0x0049003c    e8dff7ffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00490041    8b155c19d000
                         add                esp, 0x04                                     // 0x00490047    83c404
                         push               eax                                           // 0x0049004a    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0049004b    8b82d0022500
                         push               0x009d12b8                                    // 0x00490051    68b8129d00
                         push               eax                                           // 0x00490056    50
                         call               _fprintf                                      // 0x00490057    e8546d3300
                         add                esp, 0x0c                                     // 0x0049005c    83c40c
_jmp_addr_0x0049005f:    {disp32} mov       ecx, dword ptr [esi + 0x0000497c]             // 0x0049005f    8b8e7c490000
                         push               ecx                                           // 0x00490065    51
                         call               _jmp_addr_0x0048f820                          // 0x00490066    e8b5f7ffff
                         add.s              edi, eax                                      // 0x0049006b    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0049006d    a1703ccd00
                         add                esp, 0x04                                     // 0x00490072    83c404
                         test               eax, eax                                      // 0x00490075    85c0
                         {disp8} je         _jmp_addr_0x004900a2                          // 0x00490077    7429
                         {disp32} mov       edx, dword ptr [esi + 0x0000497c]             // 0x00490079    8b967c490000
                         push               edx                                           // 0x0049007f    52
                         call               _jmp_addr_0x0048f820                          // 0x00490080    e89bf7ffff
                         add                esp, 0x04                                     // 0x00490085    83c404
                         push               eax                                           // 0x00490088    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00490089    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0049008e    8b88d0022500
                         push               0x009d12a8                                    // 0x00490094    68a8129d00
                         push               ecx                                           // 0x00490099    51
                         call               _fprintf                                      // 0x0049009a    e8116d3300
                         add                esp, 0x0c                                     // 0x0049009f    83c40c
_jmp_addr_0x004900a2:    movsx              eax, word ptr [esi + 0x00004984]              // 0x004900a2    0fbf8684490000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004900a9    8b0d703ccd00
                         add.s              edi, eax                                      // 0x004900af    03f8
                         test               ecx, ecx                                      // 0x004900b1    85c9
                         {disp8} je         _jmp_addr_0x004900d0                          // 0x004900b3    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004900b5    8b155c19d000
                         push               eax                                           // 0x004900bb    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x004900bc    8b82d0022500
                         push               0x009d1290                                    // 0x004900c2    6890129d00
                         push               eax                                           // 0x004900c7    50
                         call               _fprintf                                      // 0x004900c8    e8e36c3300
                         add                esp, 0x0c                                     // 0x004900cd    83c40c
_jmp_addr_0x004900d0:    {disp32} mov       eax, dword ptr [esi + 0x00004998]             // 0x004900d0    8b8698490000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004900d6    8b0d703ccd00
                         add.s              edi, eax                                      // 0x004900dc    03f8
                         test               ecx, ecx                                      // 0x004900de    85c9
                         {disp8} je         _jmp_addr_0x004900fd                          // 0x004900e0    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004900e2    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x004900e8    8b91d0022500
                         push               eax                                           // 0x004900ee    50
                         push               0x009d1278                                    // 0x004900ef    6878129d00
                         push               edx                                           // 0x004900f4    52
                         call               _fprintf                                      // 0x004900f5    e8b66c3300
                         add                esp, 0x0c                                     // 0x004900fa    83c40c
_jmp_addr_0x004900fd:    {disp32} mov       eax, dword ptr [esi + 0x00004a34]             // 0x004900fd    8b86344a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x00490103    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490109    03f8
                         test               ecx, ecx                                      // 0x0049010b    85c9
                         {disp8} je         _jmp_addr_0x00490129                          // 0x0049010d    741a
                         push               eax                                           // 0x0049010f    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00490110    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x00490115    8b88d0022500
                         push               0x009d1268                                    // 0x0049011b    6868129d00
                         push               ecx                                           // 0x00490120    51
                         call               _fprintf                                      // 0x00490121    e88a6c3300
                         add                esp, 0x0c                                     // 0x00490126    83c40c
_jmp_addr_0x00490129:    {disp32} mov       eax, dword ptr [esi + 0x00004a40]             // 0x00490129    8b86404a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0049012f    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490135    03f8
                         test               ecx, ecx                                      // 0x00490137    85c9
                         {disp8} je         _jmp_addr_0x00490156                          // 0x00490139    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0049013b    8b155c19d000
                         push               eax                                           // 0x00490141    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x00490142    8b82d0022500
                         push               0x009d1254                                    // 0x00490148    6854129d00
                         push               eax                                           // 0x0049014d    50
                         call               _fprintf                                      // 0x0049014e    e85d6c3300
                         add                esp, 0x0c                                     // 0x00490153    83c40c
_jmp_addr_0x00490156:    {disp32} mov       eax, dword ptr [esi + 0x00004a84]             // 0x00490156    8b86844a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0049015c    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490162    03f8
                         test               ecx, ecx                                      // 0x00490164    85c9
                         {disp8} je         _jmp_addr_0x00490183                          // 0x00490166    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00490168    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0049016e    8b91d0022500
                         push               eax                                           // 0x00490174    50
                         push               0x009d1240                                    // 0x00490175    6840129d00
                         push               edx                                           // 0x0049017a    52
                         call               _fprintf                                      // 0x0049017b    e8306c3300
                         add                esp, 0x0c                                     // 0x00490180    83c40c
_jmp_addr_0x00490183:    {disp32} mov       eax, dword ptr [esi + 0x00005168]             // 0x00490183    8b8668510000
                         push               eax                                           // 0x00490189    50
                         call               _jmp_addr_0x0048f820                          // 0x0049018a    e891f6ffff
                         add.s              edi, eax                                      // 0x0049018f    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490191    a1703ccd00
                         add                esp, 0x04                                     // 0x00490196    83c404
                         test               eax, eax                                      // 0x00490199    85c0
                         {disp8} je         _jmp_addr_0x004901c7                          // 0x0049019b    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00005168]             // 0x0049019d    8b8e68510000
                         push               ecx                                           // 0x004901a3    51
                         call               _jmp_addr_0x0048f820                          // 0x004901a4    e877f6ffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004901a9    8b155c19d000
                         add                esp, 0x04                                     // 0x004901af    83c404
                         push               eax                                           // 0x004901b2    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x004901b3    8b82d0022500
                         push               0x009d1234                                    // 0x004901b9    6834129d00
                         push               eax                                           // 0x004901be    50
                         call               _fprintf                                      // 0x004901bf    e8ec6b3300
                         add                esp, 0x0c                                     // 0x004901c4    83c40c
_jmp_addr_0x004901c7:    {disp32} mov       ecx, dword ptr [esi + 0x0000516c]             // 0x004901c7    8b8e6c510000
                         push               ecx                                           // 0x004901cd    51
                         call               _jmp_addr_0x0048f820                          // 0x004901ce    e84df6ffff
                         add.s              edi, eax                                      // 0x004901d3    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x004901d5    a1703ccd00
                         add                esp, 0x04                                     // 0x004901da    83c404
                         test               eax, eax                                      // 0x004901dd    85c0
                         {disp8} je         _jmp_addr_0x0049020a                          // 0x004901df    7429
                         {disp32} mov       edx, dword ptr [esi + 0x0000516c]             // 0x004901e1    8b966c510000
                         push               edx                                           // 0x004901e7    52
                         call               _jmp_addr_0x0048f820                          // 0x004901e8    e833f6ffff
                         add                esp, 0x04                                     // 0x004901ed    83c404
                         push               eax                                           // 0x004901f0    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004901f1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x004901f6    8b88d0022500
                         push               0x009d1228                                    // 0x004901fc    6828129d00
                         push               ecx                                           // 0x00490201    51
                         call               _fprintf                                      // 0x00490202    e8a96b3300
                         add                esp, 0x0c                                     // 0x00490207    83c40c
_jmp_addr_0x0049020a:    {disp32} mov       edx, dword ptr [esi + 0x00005170]             // 0x0049020a    8b9670510000
                         push               edx                                           // 0x00490210    52
                         call               _jmp_addr_0x0048f820                          // 0x00490211    e80af6ffff
                         add.s              edi, eax                                      // 0x00490216    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490218    a1703ccd00
                         add                esp, 0x04                                     // 0x0049021d    83c404
                         test               eax, eax                                      // 0x00490220    85c0
                         {disp8} je         _jmp_addr_0x0049024e                          // 0x00490222    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00005170]             // 0x00490224    8b8670510000
                         push               eax                                           // 0x0049022a    50
                         call               _jmp_addr_0x0048f820                          // 0x0049022b    e8f0f5ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00490230    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x00490236    8b91d0022500
                         add                esp, 0x04                                     // 0x0049023c    83c404
                         push               eax                                           // 0x0049023f    50
                         push               0x009d121c                                    // 0x00490240    681c129d00
                         push               edx                                           // 0x00490245    52
                         call               _fprintf                                      // 0x00490246    e8656b3300
                         add                esp, 0x0c                                     // 0x0049024b    83c40c
_jmp_addr_0x0049024e:    {disp32} mov       eax, dword ptr [esi + 0x0000518c]             // 0x0049024e    8b868c510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x00490254    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0049025a    03f8
                         test               ecx, ecx                                      // 0x0049025c    85c9
                         {disp8} je         _jmp_addr_0x0049027a                          // 0x0049025e    741a
                         push               eax                                           // 0x00490260    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00490261    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x00490266    8b88d0022500
                         push               0x009d1204                                    // 0x0049026c    6804129d00
                         push               ecx                                           // 0x00490271    51
                         call               _fprintf                                      // 0x00490272    e8396b3300
                         add                esp, 0x0c                                     // 0x00490277    83c40c
_jmp_addr_0x0049027a:    {disp32} mov       eax, dword ptr [esi + 0x000051b8]             // 0x0049027a    8b86b8510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x00490280    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490286    03f8
                         test               ecx, ecx                                      // 0x00490288    85c9
                         {disp8} je         _jmp_addr_0x004902a7                          // 0x0049028a    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0049028c    8b155c19d000
                         push               eax                                           // 0x00490292    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x00490293    8b82d0022500
                         push               0x009d11f4                                    // 0x00490299    68f4119d00
                         push               eax                                           // 0x0049029e    50
                         call               _fprintf                                      // 0x0049029f    e80c6b3300
                         add                esp, 0x0c                                     // 0x004902a4    83c40c
_jmp_addr_0x004902a7:    {disp32} mov       eax, dword ptr [esi + 0x000051c0]             // 0x004902a7    8b86c0510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004902ad    8b0d703ccd00
                         add.s              edi, eax                                      // 0x004902b3    03f8
                         test               ecx, ecx                                      // 0x004902b5    85c9
                         {disp8} je         _jmp_addr_0x004902d4                          // 0x004902b7    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004902b9    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x004902bf    8b91d0022500
                         push               eax                                           // 0x004902c5    50
                         push               0x009d11e4                                    // 0x004902c6    68e4119d00
                         push               edx                                           // 0x004902cb    52
                         call               _fprintf                                      // 0x004902cc    e8df6a3300
                         add                esp, 0x0c                                     // 0x004902d1    83c40c
_jmp_addr_0x004902d4:    {disp32} mov       eax, dword ptr [esi + 0x000051c4]             // 0x004902d4    8b86c4510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004902da    8b0d703ccd00
                         add.s              edi, eax                                      // 0x004902e0    03f8
                         test               ecx, ecx                                      // 0x004902e2    85c9
                         {disp8} je         _jmp_addr_0x00490300                          // 0x004902e4    741a
                         push               eax                                           // 0x004902e6    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004902e7    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x004902ec    8b88d0022500
                         push               0x009d11d0                                    // 0x004902f2    68d0119d00
                         push               ecx                                           // 0x004902f7    51
                         call               _fprintf                                      // 0x004902f8    e8b36a3300
                         add                esp, 0x0c                                     // 0x004902fd    83c40c
_jmp_addr_0x00490300:    {disp32} mov       eax, dword ptr [esi + 0x000051c8]             // 0x00490300    8b86c8510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x00490306    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0049030c    03f8
                         test               ecx, ecx                                      // 0x0049030e    85c9
                         {disp8} je         _jmp_addr_0x0049032d                          // 0x00490310    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00490312    8b155c19d000
                         push               eax                                           // 0x00490318    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x00490319    8b82d0022500
                         push               0x009d11c0                                    // 0x0049031f    68c0119d00
                         push               eax                                           // 0x00490324    50
                         call               _fprintf                                      // 0x00490325    e8866a3300
                         add                esp, 0x0c                                     // 0x0049032a    83c40c
_jmp_addr_0x0049032d:    {disp32} mov       eax, dword ptr [esi + 0x000051cc]             // 0x0049032d    8b86cc510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x00490333    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490339    03f8
                         test               ecx, ecx                                      // 0x0049033b    85c9
                         {disp8} je         _jmp_addr_0x0049035a                          // 0x0049033d    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0049033f    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x00490345    8b91d0022500
                         push               eax                                           // 0x0049034b    50
                         push               0x009d11b0                                    // 0x0049034c    68b0119d00
                         push               edx                                           // 0x00490351    52
                         call               _fprintf                                      // 0x00490352    e8596a3300
                         add                esp, 0x0c                                     // 0x00490357    83c40c
_jmp_addr_0x0049035a:    {disp32} mov       eax, dword ptr [esi + 0x000051d8]             // 0x0049035a    8b86d8510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x00490360    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490366    03f8
                         test               ecx, ecx                                      // 0x00490368    85c9
                         {disp8} je         _jmp_addr_0x00490386                          // 0x0049036a    741a
                         push               eax                                           // 0x0049036c    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0049036d    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x00490372    8b88d0022500
                         push               0x009d11a4                                    // 0x00490378    68a4119d00
                         push               ecx                                           // 0x0049037d    51
                         call               _fprintf                                      // 0x0049037e    e82d6a3300
                         add                esp, 0x0c                                     // 0x00490383    83c40c
_jmp_addr_0x00490386:    {disp32} mov       eax, dword ptr [esi + 0x000051e0]             // 0x00490386    8b86e0510000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0049038c    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490392    03f8
                         test               ecx, ecx                                      // 0x00490394    85c9
                         {disp8} je         _jmp_addr_0x004903b3                          // 0x00490396    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00490398    8b155c19d000
                         push               eax                                           // 0x0049039e    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x0049039f    8b82d0022500
                         push               0x009d1194                                    // 0x004903a5    6894119d00
                         push               eax                                           // 0x004903aa    50
                         call               _fprintf                                      // 0x004903ab    e8006a3300
                         add                esp, 0x0c                                     // 0x004903b0    83c40c
_jmp_addr_0x004903b3:    {disp32} mov       ecx, dword ptr [esi + 0x0000528c]             // 0x004903b3    8b8e8c520000
                         xor.s              eax, eax                                      // 0x004903b9    33c0
                         test               ecx, ecx                                      // 0x004903bb    85c9
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004903bd    8b0d703ccd00
                         setne              al                                            // 0x004903c3    0f95c0
                         add.s              edi, eax                                      // 0x004903c6    03f8
                         test               ecx, ecx                                      // 0x004903c8    85c9
                         {disp8} je         _jmp_addr_0x004903e7                          // 0x004903ca    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004903cc    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x004903d2    8b91d0022500
                         push               eax                                           // 0x004903d8    50
                         push               0x009d1180                                    // 0x004903d9    6880119d00
                         push               edx                                           // 0x004903de    52
                         call               _fprintf                                      // 0x004903df    e8cc693300
                         add                esp, 0x0c                                     // 0x004903e4    83c40c
_jmp_addr_0x004903e7:    {disp32} mov       eax, dword ptr [esi + 0x000052a4]             // 0x004903e7    8b86a4520000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004903ed    8b0d703ccd00
                         add.s              edi, eax                                      // 0x004903f3    03f8
                         test               ecx, ecx                                      // 0x004903f5    85c9
                         {disp8} je         _jmp_addr_0x00490413                          // 0x004903f7    741a
                         push               eax                                           // 0x004903f9    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004903fa    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x004903ff    8b88d0022500
                         push               0x009d1170                                    // 0x00490405    6870119d00
                         push               ecx                                           // 0x0049040a    51
                         call               _fprintf                                      // 0x0049040b    e8a0693300
                         add                esp, 0x0c                                     // 0x00490410    83c40c
_jmp_addr_0x00490413:    {disp32} mov       edx, dword ptr [esi + 0x00000090]             // 0x00490413    8b9690000000
                         push               edx                                           // 0x00490419    52
                         call               _jmp_addr_0x0048f820                          // 0x0049041a    e801f4ffff
                         add.s              edi, eax                                      // 0x0049041f    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490421    a1703ccd00
                         add                esp, 0x04                                     // 0x00490426    83c404
                         test               eax, eax                                      // 0x00490429    85c0
                         {disp8} je         _jmp_addr_0x00490457                          // 0x0049042b    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00000090]             // 0x0049042d    8b8690000000
                         push               eax                                           // 0x00490433    50
                         call               _jmp_addr_0x0048f820                          // 0x00490434    e8e7f3ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00490439    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0049043f    8b91d0022500
                         add                esp, 0x04                                     // 0x00490445    83c404
                         push               eax                                           // 0x00490448    50
                         push               0x009d1160                                    // 0x00490449    6860119d00
                         push               edx                                           // 0x0049044e    52
                         call               _fprintf                                      // 0x0049044f    e85c693300
                         add                esp, 0x0c                                     // 0x00490454    83c40c
_jmp_addr_0x00490457:    mov.s              eax, edi                                      // 0x00490457    8bc7
                         pop                edi                                           // 0x00490459    5f
                         pop                esi                                           // 0x0049045a    5e
                         ret                                                              // 0x0049045b    c3
                         nop                                                              // 0x0049045c    90
                         nop                                                              // 0x0049045d    90
                         nop                                                              // 0x0049045e    90
                         nop                                                              // 0x0049045f    90
_jmp_addr_0x00490460:    {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490460    a1703ccd00
                         sub                esp, 0x10                                     // 0x00490465    83ec10
                         test               eax, eax                                      // 0x00490468    85c0
                         push               esi                                           // 0x0049046a    56
                         push               edi                                           // 0x0049046b    57
                         mov.s              esi, ecx                                      // 0x0049046c    8bf1
                         {disp8} je         _jmp_addr_0x00490490                          // 0x0049046e    7420
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00490470    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x00490475    8b88405a2000
                         {disp32} mov       edx, dword ptr [eax + 0x002502d0]             // 0x0049047b    8b90d0022500
                         push               ecx                                           // 0x00490481    51
                         push               0x009d1528                                    // 0x00490482    6828159d00
                         push               edx                                           // 0x00490487    52
                         call               _fprintf                                      // 0x00490488    e823693300
                         add                esp, 0x0c                                     // 0x0049048d    83c40c
_jmp_addr_0x00490490:    {disp32} mov       eax, dword ptr [esi + 0x00005230]             // 0x00490490    8b8630520000
                         test               eax, eax                                      // 0x00490496    85c0
                         {disp32} mov       eax, dword ptr [esi + 0x000051c8]             // 0x00490498    8b86c8510000
                         {disp8} je         _jmp_addr_0x004904a8                          // 0x0049049e    7408
                         push               eax                                           // 0x004904a0    50
                         mov.s              ecx, esi                                      // 0x004904a1    8bce
                         call               _jmp_addr_0x00481390                          // 0x004904a3    e8e80effff
_jmp_addr_0x004904a8:    {disp32} mov       edx, dword ptr [esi + 0x00000098]             // 0x004904a8    8b9698000000
                         push               eax                                           // 0x004904ae    50
                         {disp32} mov       eax, dword ptr [esi + edx * 0x4 + 0x000000b4] // 0x004904af    8b8496b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004904b6    8d4c2410
                         push               ecx                                           // 0x004904ba    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00005178]             // 0x004904bb    8b8e78510000
                         push               eax                                           // 0x004904c1    50
                         push               ecx                                           // 0x004904c2    51
                         call               _jmp_addr_0x0083a0e0                          // 0x004904c3    e8189c3a00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x004904c8    8b54241c
                         push               edx                                           // 0x004904cc    52
                         call               _jmp_addr_0x0048f820                          // 0x004904cd    e84ef3ffff
                         mov.s              edi, eax                                      // 0x004904d2    8bf8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x004904d4    a1703ccd00
                         add                esp, 0x14                                     // 0x004904d9    83c414
                         test               eax, eax                                      // 0x004904dc    85c0
                         {disp8} je         _jmp_addr_0x00490508                          // 0x004904de    7428
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x004904e0    8b44240c
                         push               eax                                           // 0x004904e4    50
                         call               _jmp_addr_0x0048f820                          // 0x004904e5    e836f3ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004904ea    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x004904f0    8b91d0022500
                         add                esp, 0x04                                     // 0x004904f6    83c404
                         push               eax                                           // 0x004904f9    50
                         push               0x009d165c                                    // 0x004904fa    685c169d00
                         push               edx                                           // 0x004904ff    52
                         call               _fprintf                                      // 0x00490500    e8ab683300
                         add                esp, 0x0c                                     // 0x00490505    83c40c
_jmp_addr_0x00490508:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00490508    8b442410
                         push               eax                                           // 0x0049050c    50
                         call               _jmp_addr_0x0048f820                          // 0x0049050d    e80ef3ffff
                         add.s              edi, eax                                      // 0x00490512    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490514    a1703ccd00
                         add                esp, 0x04                                     // 0x00490519    83c404
                         test               eax, eax                                      // 0x0049051c    85c0
                         {disp8} je         _jmp_addr_0x00490548                          // 0x0049051e    7428
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00490520    8b4c2410
                         push               ecx                                           // 0x00490524    51
                         call               _jmp_addr_0x0048f820                          // 0x00490525    e8f6f2ffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0049052a    8b155c19d000
                         add                esp, 0x04                                     // 0x00490530    83c404
                         push               eax                                           // 0x00490533    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x00490534    8b82d0022500
                         push               0x009d1644                                    // 0x0049053a    6844169d00
                         push               eax                                           // 0x0049053f    50
                         call               _fprintf                                      // 0x00490540    e86b683300
                         add                esp, 0x0c                                     // 0x00490545    83c40c
_jmp_addr_0x00490548:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00490548    8b4c2414
                         push               ecx                                           // 0x0049054c    51
                         call               _jmp_addr_0x0048f820                          // 0x0049054d    e8cef2ffff
                         add.s              edi, eax                                      // 0x00490552    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490554    a1703ccd00
                         add                esp, 0x04                                     // 0x00490559    83c404
                         test               eax, eax                                      // 0x0049055c    85c0
                         {disp8} je         _jmp_addr_0x00490587                          // 0x0049055e    7427
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00490560    8b542414
                         push               edx                                           // 0x00490564    52
                         call               _jmp_addr_0x0048f820                          // 0x00490565    e8b6f2ffff
                         add                esp, 0x04                                     // 0x0049056a    83c404
                         push               eax                                           // 0x0049056d    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0049056e    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x00490573    8b88d0022500
                         push               0x009d162c                                    // 0x00490579    682c169d00
                         push               ecx                                           // 0x0049057e    51
                         call               _fprintf                                      // 0x0049057f    e82c683300
                         add                esp, 0x0c                                     // 0x00490584    83c40c
_jmp_addr_0x00490587:    {disp32} mov       eax, dword ptr [esi + 0x00004994]             // 0x00490587    8b8694490000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0049058d    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490593    03f8
                         test               ecx, ecx                                      // 0x00490595    85c9
                         {disp8} je         _jmp_addr_0x004905b4                          // 0x00490597    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00490599    8b155c19d000
                         push               eax                                           // 0x0049059f    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x004905a0    8b82d0022500
                         push               0x009d161c                                    // 0x004905a6    681c169d00
                         push               eax                                           // 0x004905ab    50
                         call               _fprintf                                      // 0x004905ac    e8ff673300
                         add                esp, 0x0c                                     // 0x004905b1    83c40c
_jmp_addr_0x004905b4:    {disp32} mov       ecx, dword ptr [esi + 0x00004864]             // 0x004905b4    8b8e64480000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x004905ba    894c2408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x004905be    d9442408
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x004905c2    d80d28b28a00
                         call               _jmp_addr_0x007a1400                          // 0x004905c8    e8330e3100
                         add.s              edi, eax                                      // 0x004905cd    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x004905cf    a1703ccd00
                         test               eax, eax                                      // 0x004905d4    85c0
                         {disp8} je         _jmp_addr_0x004905ff                          // 0x004905d6    7427
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x004905d8    8b542408
                         push               edx                                           // 0x004905dc    52
                         call               _jmp_addr_0x0048f820                          // 0x004905dd    e83ef2ffff
                         add                esp, 0x04                                     // 0x004905e2    83c404
                         push               eax                                           // 0x004905e5    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004905e6    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x004905eb    8b88d0022500
                         push               0x009d1600                                    // 0x004905f1    6800169d00
                         push               ecx                                           // 0x004905f6    51
                         call               _fprintf                                      // 0x004905f7    e8b4673300
                         add                esp, 0x0c                                     // 0x004905fc    83c40c
_jmp_addr_0x004905ff:    {disp32} mov       edx, dword ptr [esi + 0x00004868]             // 0x004905ff    8b9668480000
                         push               edx                                           // 0x00490605    52
                         call               _jmp_addr_0x0048f820                          // 0x00490606    e815f2ffff
                         add.s              edi, eax                                      // 0x0049060b    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x0049060d    a1703ccd00
                         add                esp, 0x04                                     // 0x00490612    83c404
                         test               eax, eax                                      // 0x00490615    85c0
                         {disp8} je         _jmp_addr_0x00490643                          // 0x00490617    742a
                         {disp32} mov       eax, dword ptr [esi + 0x00004868]             // 0x00490619    8b8668480000
                         push               eax                                           // 0x0049061f    50
                         call               _jmp_addr_0x0048f820                          // 0x00490620    e8fbf1ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00490625    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0049062b    8b91d0022500
                         add                esp, 0x04                                     // 0x00490631    83c404
                         push               eax                                           // 0x00490634    50
                         push               0x009d15ec                                    // 0x00490635    68ec159d00
                         push               edx                                           // 0x0049063a    52
                         call               _fprintf                                      // 0x0049063b    e870673300
                         add                esp, 0x0c                                     // 0x00490640    83c40c
_jmp_addr_0x00490643:    {disp32} mov       eax, dword ptr [esi + 0x0000486c]             // 0x00490643    8b866c480000
                         push               eax                                           // 0x00490649    50
                         call               _jmp_addr_0x0048f820                          // 0x0049064a    e8d1f1ffff
                         add.s              edi, eax                                      // 0x0049064f    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490651    a1703ccd00
                         add                esp, 0x04                                     // 0x00490656    83c404
                         test               eax, eax                                      // 0x00490659    85c0
                         {disp8} je         _jmp_addr_0x00490687                          // 0x0049065b    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x0000486c]             // 0x0049065d    8b8e6c480000
                         push               ecx                                           // 0x00490663    51
                         call               _jmp_addr_0x0048f820                          // 0x00490664    e8b7f1ffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00490669    8b155c19d000
                         add                esp, 0x04                                     // 0x0049066f    83c404
                         push               eax                                           // 0x00490672    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x00490673    8b82d0022500
                         push               0x009d15d4                                    // 0x00490679    68d4159d00
                         push               eax                                           // 0x0049067e    50
                         call               _fprintf                                      // 0x0049067f    e82c673300
                         add                esp, 0x0c                                     // 0x00490684    83c40c
_jmp_addr_0x00490687:    {disp32} mov       ecx, dword ptr [esi + 0x00004860]             // 0x00490687    8b8e60480000
                         push               ecx                                           // 0x0049068d    51
                         call               _jmp_addr_0x0048f820                          // 0x0049068e    e88df1ffff
                         add.s              edi, eax                                      // 0x00490693    03f8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490695    a1703ccd00
                         add                esp, 0x04                                     // 0x0049069a    83c404
                         test               eax, eax                                      // 0x0049069d    85c0
                         {disp8} je         _jmp_addr_0x004906ca                          // 0x0049069f    7429
                         {disp32} mov       edx, dword ptr [esi + 0x00004860]             // 0x004906a1    8b9660480000
                         push               edx                                           // 0x004906a7    52
                         call               _jmp_addr_0x0048f820                          // 0x004906a8    e873f1ffff
                         add                esp, 0x04                                     // 0x004906ad    83c404
                         push               eax                                           // 0x004906b0    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004906b1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x004906b6    8b88d0022500
                         push               0x009d15bc                                    // 0x004906bc    68bc159d00
                         push               ecx                                           // 0x004906c1    51
                         call               _fprintf                                      // 0x004906c2    e8e9663300
                         add                esp, 0x0c                                     // 0x004906c7    83c40c
_jmp_addr_0x004906ca:    {disp32} mov       eax, dword ptr [esi + 0x0000522c]             // 0x004906ca    8b862c520000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004906d0    8b0d703ccd00
                         add.s              edi, eax                                      // 0x004906d6    03f8
                         test               ecx, ecx                                      // 0x004906d8    85c9
                         {disp8} je         _jmp_addr_0x004906f7                          // 0x004906da    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004906dc    8b155c19d000
                         push               eax                                           // 0x004906e2    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x004906e3    8b82d0022500
                         push               0x009d15a8                                    // 0x004906e9    68a8159d00
                         push               eax                                           // 0x004906ee    50
                         call               _fprintf                                      // 0x004906ef    e8bc663300
                         add                esp, 0x0c                                     // 0x004906f4    83c40c
_jmp_addr_0x004906f7:    {disp32} mov       eax, dword ptr [esi + 0x000047d0]             // 0x004906f7    8b86d0470000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x004906fd    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490703    03f8
                         test               ecx, ecx                                      // 0x00490705    85c9
                         {disp8} je         _jmp_addr_0x00490724                          // 0x00490707    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00490709    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x0049070f    8b91d0022500
                         push               eax                                           // 0x00490715    50
                         push               0x009d1594                                    // 0x00490716    6894159d00
                         push               edx                                           // 0x0049071b    52
                         call               _fprintf                                      // 0x0049071c    e88f663300
                         add                esp, 0x0c                                     // 0x00490721    83c40c
_jmp_addr_0x00490724:    {disp32} mov       eax, dword ptr [esi + 0x000047d4]             // 0x00490724    8b86d4470000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x0049072a    8b0d703ccd00
                         add.s              edi, eax                                      // 0x00490730    03f8
                         test               ecx, ecx                                      // 0x00490732    85c9
                         {disp8} je         _jmp_addr_0x00490750                          // 0x00490734    741a
                         push               eax                                           // 0x00490736    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00490737    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]             // 0x0049073c    8b88d0022500
                         push               0x009d1580                                    // 0x00490742    6880159d00
                         push               ecx                                           // 0x00490747    51
                         call               _fprintf                                      // 0x00490748    e863663300
                         add                esp, 0x0c                                     // 0x0049074d    83c40c
_jmp_addr_0x00490750:    {disp32} mov       eax, dword ptr [esi + 0x000047d8]             // 0x00490750    8b86d8470000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30dc70]        // 0x00490756    8b0d703ccd00
                         add.s              edi, eax                                      // 0x0049075c    03f8
                         test               ecx, ecx                                      // 0x0049075e    85c9
                         {disp8} je         _jmp_addr_0x0049077d                          // 0x00490760    741b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00490762    8b155c19d000
                         push               eax                                           // 0x00490768    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]             // 0x00490769    8b82d0022500
                         push               0x009d156c                                    // 0x0049076f    686c159d00
                         push               eax                                           // 0x00490774    50
                         call               _fprintf                                      // 0x00490775    e836663300
                         add                esp, 0x0c                                     // 0x0049077a    83c40c
_jmp_addr_0x0049077d:    {disp32} mov       esi, dword ptr [esi + 0x000047dc]             // 0x0049077d    8bb6dc470000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]        // 0x00490783    a1703ccd00
                         add.s              edi, esi                                      // 0x00490788    03fe
                         test               eax, eax                                      // 0x0049078a    85c0
                         {disp8} je         _jmp_addr_0x004907a9                          // 0x0049078c    741b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0049078e    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d0]             // 0x00490794    8b91d0022500
                         push               esi                                           // 0x0049079a    56
                         push               0x009d1558                                    // 0x0049079b    6858159d00
                         push               edx                                           // 0x004907a0    52
                         call               _fprintf                                      // 0x004907a1    e80a663300
                         add                esp, 0x0c                                     // 0x004907a6    83c40c
_jmp_addr_0x004907a9:    mov.s              eax, edi                                      // 0x004907a9    8bc7
                         pop                edi                                           // 0x004907ab    5f
                         pop                esi                                           // 0x004907ac    5e
                         add                esp, 0x10                                     // 0x004907ad    83c410
                         ret                                                              // 0x004907b0    c3
                         nop                                                              // 0x004907b1    90
                         nop                                                              // 0x004907b2    90
                         nop                                                              // 0x004907b3    90
                         nop                                                              // 0x004907b4    90
                         nop                                                              // 0x004907b5    90
                         nop                                                              // 0x004907b6    90
                         nop                                                              // 0x004907b7    90
                         nop                                                              // 0x004907b8    90
                         nop                                                              // 0x004907b9    90
                         nop                                                              // 0x004907ba    90
                         nop                                                              // 0x004907bb    90
                         nop                                                              // 0x004907bc    90
                         nop                                                              // 0x004907bd    90
                         nop                                                              // 0x004907be    90
                         nop                                                              // 0x004907bf    90
_jmp_addr_0x004907c0:    sub                esp, 0x08                                     // 0x004907c0    83ec08
                         push               esi                                           // 0x004907c3    56
                         mov.s              esi, ecx                                      // 0x004907c4    8bf1
                         {disp32} fld       dword ptr [esi + 0x00004990]                  // 0x004907c6    d98690490000
                         {disp32} fsub      dword ptr [esi + 0x0000498c]                  // 0x004907cc    d8a68c490000
                         {disp32} fld       dword ptr [esi + 0x00004990]                  // 0x004907d2    d98690490000
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x004907d8    d98690000000
                         fsqrt                                                            // 0x004907de    d9fa
                         fxch               st(1)                                         // 0x004907e0    d9c9
                         fxch               st(1)                                         // 0x004907e2    d9c9
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x004907e4    d83d90a38a00
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x26e4]              // 0x004907ea    d83de4b68a00
                         fcompp                                                           // 0x004907f0    ded9
                         fnstsw             ax                                            // 0x004907f2    dfe0
                         test               ah, 0x40                                      // 0x004907f4    f6c440
                         {disp8} je         _jmp_addr_0x00490801                          // 0x004907f7    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x2414]              // 0x004907f9    d90514b48a00
                         {disp8} jmp        _jmp_addr_0x00490807                          // 0x004907ff    eb06
_jmp_addr_0x00490801:    {disp32} fld       dword ptr [_rdata_float0p5]                   // 0x00490801    d905b4a38a00
_jmp_addr_0x00490807:    xor.s              edx, edx                                      // 0x00490807    33d2
                         mov                eax, 0x000003e8                               // 0x00490809    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x0049080e    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00490814    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0049081c    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00490820    df6c2404
                         fmul               st, st(1)                                     // 0x00490824    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x00490826    e8d50b3100
                         fstp               st(0)                                         // 0x0049082b    ddd8
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0049082d    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00490831    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00490839    df6c2404
                         fdivr              st, st(1)                                     // 0x0049083d    d8f9
                         {disp32} fadd      dword ptr [esi + 0x0000498c]                  // 0x0049083f    d8868c490000
                         {disp32} fstp      dword ptr [esi + 0x0000498c]                  // 0x00490845    d99e8c490000
                         pop                esi                                           // 0x0049084b    5e
                         fstp               st(0)                                         // 0x0049084c    ddd8
                         add                esp, 0x08                                     // 0x0049084e    83c408
                         ret                                                              // 0x00490851    c3
                         nop                                                              // 0x00490852    90
                         nop                                                              // 0x00490853    90
                         nop                                                              // 0x00490854    90
                         nop                                                              // 0x00490855    90
                         nop                                                              // 0x00490856    90
                         nop                                                              // 0x00490857    90
                         nop                                                              // 0x00490858    90
                         nop                                                              // 0x00490859    90
                         nop                                                              // 0x0049085a    90
                         nop                                                              // 0x0049085b    90
                         nop                                                              // 0x0049085c    90
                         nop                                                              // 0x0049085d    90
                         nop                                                              // 0x0049085e    90
                         nop                                                              // 0x0049085f    90
_jmp_addr_0x00490860:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00490860    8b442404
                         test               eax, eax                                      // 0x00490864    85c0
                         push               esi                                           // 0x00490866    56
                         mov.s              esi, ecx                                      // 0x00490867    8bf1
                         {disp8} je         _jmp_addr_0x00490893                          // 0x00490869    7428
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x0049086b    8b8e34480000
                         test               ecx, ecx                                      // 0x00490871    85c9
                         {disp8} je         _jmp_addr_0x0049088d                          // 0x00490873    7418
                         call               _jmp_addr_0x00490910                          // 0x00490875    e896000000
                         test               eax, eax                                      // 0x0049087a    85c0
                         {disp8} je         _jmp_addr_0x0049088d                          // 0x0049087c    740f
                         mov                eax, 0x00000001                               // 0x0049087e    b801000000
                         {disp32} mov       dword ptr [esi + 0x000051ec], eax             // 0x00490883    8986ec510000
                         pop                esi                                           // 0x00490889    5e
                         ret                0x0004                                        // 0x0049088a    c20400
_jmp_addr_0x0049088d:    xor.s              eax, eax                                      // 0x0049088d    33c0
                         pop                esi                                           // 0x0049088f    5e
                         ret                0x0004                                        // 0x00490890    c20400
_jmp_addr_0x00490893:    {disp32} mov       dword ptr [esi + 0x000051ec], 0x00000000      // 0x00490893    c786ec51000000000000
                         mov                eax, 0x00000001                               // 0x0049089d    b801000000
                         pop                esi                                           // 0x004908a2    5e
                         ret                0x0004                                        // 0x004908a3    c20400
                         nop                                                              // 0x004908a6    90
                         nop                                                              // 0x004908a7    90
                         nop                                                              // 0x004908a8    90
                         nop                                                              // 0x004908a9    90
                         nop                                                              // 0x004908aa    90
                         nop                                                              // 0x004908ab    90
                         nop                                                              // 0x004908ac    90
                         nop                                                              // 0x004908ad    90
                         nop                                                              // 0x004908ae    90
                         nop                                                              // 0x004908af    90
_jmp_addr_0x004908b0:    {disp32} mov       ecx, dword ptr [ecx + 0x00004994]             // 0x004908b0    8b8994490000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x004908b6    8d41ff
                         cmp                eax, 0x21                                     // 0x004908b9    83f821
                         {disp8} ja         _jmp_addr_0x004908d3                          // 0x004908bc    7715
                         xor.s              ecx, ecx                                      // 0x004908be    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x004908e0]               // 0x004908c0    8a88e0084900
                         jmp                dword ptr [ecx*4 + 0x4908d8]                  // 0x004908c6    ff248dd8084900
                         mov                eax, 0x00000001                               // 0x004908cd    b801000000
                         ret                                                              // 0x004908d2    c3
_jmp_addr_0x004908d3:    xor.s              eax, eax                                      // 0x004908d3    33c0
                         ret                                                              // 0x004908d5    c3

// Snippet: db, [0x004908d6, 0x004908d8)
.byte 0x8b, 0xff                  // 0x004908d6

// Snippet: jmptbl, [0x004908d8, 0x004908e0)
.byte 0xcd, 0x08, 0x49, 0x00      // 0x004908d8
.byte 0xd3, 0x08, 0x49, 0x00      // 0x004908dc

// Snippet: ijmptbl, [0x004908e0, 0x00490902)
.byte 0x00, 0x01, 0x01, 0x01      // 0x004908e0
.byte 0x01, 0x01, 0x01, 0x01      // 0x004908e4
.byte 0x01, 0x01, 0x01, 0x01      // 0x004908e8
.byte 0x01, 0x00, 0x00, 0x00      // 0x004908ec
.byte 0x00, 0x00, 0x00, 0x00      // 0x004908f0
.byte 0x00, 0x00, 0x00, 0x00      // 0x004908f4
.byte 0x00, 0x00, 0x00, 0x00      // 0x004908f8
.byte 0x00, 0x01, 0x01, 0x00      // 0x004908fc
.byte 0x00, 0x00                  // 0x00490900

// Snippet: db, [0x00490902, 0x00490910)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00490902
.byte 0x90, 0x90, 0x90, 0x90      // 0x00490906
.byte 0x90, 0x90, 0x90, 0x90      // 0x0049090a
.byte 0x90, 0x90                  // 0x0049090e

