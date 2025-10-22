.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00609ca0
.extern ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ
.extern ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z
.extern ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z
.extern _jmp_addr_0x007a1400

.globl _jmp_addr_0x0060a010
.globl _jmp_addr_0x0060a020
.globl _jmp_addr_0x0060a030
.globl _jmp_addr_0x0060a0b0

start_0x0060a010_0x0060a400:
// Snippet: asm, [0x0060a010, 0x0060a3e5)
_jmp_addr_0x0060a010:    mov              edx, dword ptr [ecx]             // 0x0060a010    8b11
                         {disp8} mov      eax, dword ptr [esp + 0x04]      // 0x0060a012    8b442404
                         add.s            edx, eax                         // 0x0060a016    03d0
                         mov              dword ptr [ecx], edx             // 0x0060a018    8911
                         ret              0x0004                           // 0x0060a01a    c20400
                         nop                                               // 0x0060a01d    90
                         nop                                               // 0x0060a01e    90
                         nop                                               // 0x0060a01f    90
_jmp_addr_0x0060a020:    {disp8} mov      edx, dword ptr [ecx + 0x04]      // 0x0060a020    8b5104
                         {disp8} mov      eax, dword ptr [esp + 0x04]      // 0x0060a023    8b442404
                         add.s            edx, eax                         // 0x0060a027    03d0
                         {disp8} mov      dword ptr [ecx + 0x04], edx      // 0x0060a029    895104
                         ret              0x0004                           // 0x0060a02c    c20400
                         nop                                               // 0x0060a02f    90
_jmp_addr_0x0060a030:    sub              esp, 0x0c                        // 0x0060a030    83ec0c
                         push             esi                              // 0x0060a033    56
                         {disp8} mov      esi, dword ptr [esp + 0x14]      // 0x0060a034    8b742414
                         {disp8} lea      eax, dword ptr [esi + 0x14]      // 0x0060a038    8d4614
                         mov              ecx, dword ptr [eax]             // 0x0060a03b    8b08
                         {disp8} mov      edx, dword ptr [eax + 0x04]      // 0x0060a03d    8b5004
                         {disp8} mov      eax, dword ptr [eax + 0x08]      // 0x0060a040    8b4008
                         {disp8} mov      dword ptr [esp + 0x0c], eax      // 0x0060a043    8944240c
                         {disp8} mov      eax, dword ptr [esi + 0x64]      // 0x0060a047    8b4664
                         add.s            ecx, eax                         // 0x0060a04a    03c8
                         lea              eax, dword ptr [ecx + eax * 0x2] // 0x0060a04c    8d0441
                         {disp8} mov      dword ptr [esp + 0x04], eax      // 0x0060a04f    89442404
                         {disp8} mov      eax, dword ptr [esi + 0x6c]      // 0x0060a053    8b466c
                         lea              ecx, dword ptr [eax + edx * 0x1] // 0x0060a056    8d0c10
                         lea              edx, dword ptr [ecx + eax * 0x2] // 0x0060a059    8d1441
                         mov              eax, dword ptr [esi]             // 0x0060a05c    8b06
                         {disp8} lea      ecx, dword ptr [esp + 0x04]      // 0x0060a05e    8d4c2404
                         push             ecx                              // 0x0060a062    51
                         mov.s            ecx, esi                         // 0x0060a063    8bce
                         {disp8} mov      dword ptr [esp + 0x0c], edx      // 0x0060a065    8954240c
                         call             dword ptr [eax + 0x55c]          // 0x0060a069    ff905c050000
                         {disp8} mov      edx, dword ptr [esi + 0x6c]      // 0x0060a06f    8b566c
                         neg              edx                              // 0x0060a072    f7da
                         {disp8} mov      dword ptr [esp + 0x14], edx      // 0x0060a074    89542414
                         {disp8} fild     dword ptr [esp + 0x14]           // 0x0060a078    db442414
                         {disp8} fld      dword ptr [esi + 0x68]           // 0x0060a07c    d94668
                         fchs                                              // 0x0060a07f    d9e0
                         call             _jmp_addr_0x007a1400             // 0x0060a081    e87a731900
                         {disp8} mov      ecx, dword ptr [esi + 0x64]      // 0x0060a086    8b4e64
                         {disp8} fstp     dword ptr [esi + 0x68]           // 0x0060a089    d95e68
                         neg              ecx                              // 0x0060a08c    f7d9
                         {disp8} mov      dword ptr [esi + 0x64], ecx      // 0x0060a08e    894e64
                         {disp8} mov      dword ptr [esi + 0x6c], eax      // 0x0060a091    89466c
                         xor.s            edx, edx                         // 0x0060a094    33d2
                         {disp8} mov      dx, word ptr [esi + 0x5c]        // 0x0060a096    668b565c
                         sub              dx, 0x0400                       // 0x0060a09a    6681ea0004
                         and              edx, 0x000007ff                  // 0x0060a09f    81e2ff070000
                         {disp8} mov      word ptr [esi + 0x5c], dx        // 0x0060a0a5    6689565c
                         pop              esi                              // 0x0060a0a9    5e
                         add              esp, 0x0c                        // 0x0060a0aa    83c40c
                         ret              0x0004                           // 0x0060a0ad    c20400
_jmp_addr_0x0060a0b0:    sub              esp, 0x24                        // 0x0060a0b0    83ec24
                         push             esi                              // 0x0060a0b3    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]      // 0x0060a0b4    8b74242c
                         xor.s            eax, eax                         // 0x0060a0b8    33c0
                         {disp8} mov      al, byte ptr [esi + 0x5e]        // 0x0060a0ba    8a465e
                         push             edi                              // 0x0060a0bd    57
                         add              eax, -0x0d                       // 0x0060a0be    83c0f3
                         cmp              eax, 0x05                        // 0x0060a0c1    83f805
                         {disp32} ja      _jmp_addr_0x0060a3dd             // 0x0060a0c4    0f8713030000
                         jmp              dword ptr [eax*4 + 0x60a3e8]     // 0x0060a0ca    ff2485e8a36000
                         {disp8} lea      eax, dword ptr [esi + 0x14]      // 0x0060a0d1    8d4614
                         mov              ecx, dword ptr [eax]             // 0x0060a0d4    8b08
                         {disp8} mov      edx, dword ptr [eax + 0x04]      // 0x0060a0d6    8b5004
                         {disp8} mov      eax, dword ptr [eax + 0x08]      // 0x0060a0d9    8b4008
                         {disp8} mov      dword ptr [esp + 0x10], eax      // 0x0060a0dc    89442410
                         {disp8} mov      eax, dword ptr [esi + 0x64]      // 0x0060a0e0    8b4664
                         {disp8} lea      edi, dword ptr [esi + 0x64]      // 0x0060a0e3    8d7e64
                         add.s            ecx, eax                         // 0x0060a0e6    03c8
                         {disp8} mov      dword ptr [esp + 0x0c], edx      // 0x0060a0e8    8954240c
                         lea              edx, dword ptr [ecx + eax * 0x2] // 0x0060a0ec    8d1441
                         {disp8} mov      eax, dword ptr [esi + 0x6c]      // 0x0060a0ef    8b466c
                         lea              eax, dword ptr [eax + eax * 0x2] // 0x0060a0f2    8d0440
                         push             eax                              // 0x0060a0f5    50
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]      // 0x0060a0f6    8d4c240c
                         {disp8} mov      byte ptr [esi + 0x5e], 0x0d      // 0x0060a0fa    c6465e0d
                         {disp8} mov      dword ptr [esp + 0x0c], edx      // 0x0060a0fe    8954240c
                         call             _jmp_addr_0x0060a020             // 0x0060a102    e819ffffff
                         mov              edx, dword ptr [esi]             // 0x0060a107    8b16
                         {disp8} lea      eax, dword ptr [esp + 0x08]      // 0x0060a109    8d442408
                         push             eax                              // 0x0060a10d    50
                         mov.s            ecx, esi                         // 0x0060a10e    8bce
                         call             dword ptr [edx + 0x55c]          // 0x0060a110    ff925c050000
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]      // 0x0060a116    8b4e6c
                         neg              ecx                              // 0x0060a119    f7d9
                         {disp8} mov      dword ptr [esp + 0x30], ecx      // 0x0060a11b    894c2430
                         {disp8} fild     dword ptr [esp + 0x30]           // 0x0060a11f    db442430
                         push             ecx                              // 0x0060a123    51
                         fstp             dword ptr [esp]                  // 0x0060a124    d91c24
                         {disp8} fld      dword ptr [esi + 0x68]           // 0x0060a127    d94668
                         fchs                                              // 0x0060a12a    d9e0
                         call             _jmp_addr_0x007a1400             // 0x0060a12c    e8cf721900
                         mov              edx, dword ptr [edi]             // 0x0060a131    8b17
                         push             eax                              // 0x0060a133    50
                         neg              edx                              // 0x0060a134    f7da
                         push             edx                              // 0x0060a136    52
                         mov.s            ecx, edi                         // 0x0060a137    8bcf
                         call             _jmp_addr_0x00609ca0             // 0x0060a139    e862fbffff
                         xor.s            eax, eax                         // 0x0060a13e    33c0
                         {disp8} mov      ax, word ptr [esi + 0x5c]        // 0x0060a140    668b465c
                         sub              ax, 0x0400                       // 0x0060a144    662d0004
                         pop              edi                              // 0x0060a148    5f
                         and              eax, 0x000007ff                  // 0x0060a149    25ff070000
                         {disp8} mov      word ptr [esi + 0x5c], ax        // 0x0060a14e    6689465c
                         pop              esi                              // 0x0060a152    5e
                         add              esp, 0x24                        // 0x0060a153    83c424
                         ret              0x0004                           // 0x0060a156    c20400
                         {disp8} lea      ecx, dword ptr [esi + 0x14]      // 0x0060a159    8d4e14
                         mov.s            edx, ecx                         // 0x0060a15c    8bd1
                         mov              ecx, dword ptr [edx]             // 0x0060a15e    8b0a
                         {disp8} mov      eax, dword ptr [edx + 0x04]      // 0x0060a160    8b4204
                         {disp8} mov      edx, dword ptr [edx + 0x08]      // 0x0060a163    8b5208
                         {disp8} mov      dword ptr [esp + 0x0c], eax      // 0x0060a166    8944240c
                         {disp8} mov      eax, dword ptr [esi + 0x64]      // 0x0060a16a    8b4664
                         {disp8} lea      edi, dword ptr [esi + 0x64]      // 0x0060a16d    8d7e64
                         add.s            ecx, eax                         // 0x0060a170    03c8
                         {disp8} mov      dword ptr [esp + 0x10], edx      // 0x0060a172    89542410
                         lea              edx, dword ptr [ecx + eax * 0x2] // 0x0060a176    8d1441
                         {disp8} mov      eax, dword ptr [esi + 0x6c]      // 0x0060a179    8b466c
                         lea              eax, dword ptr [eax + eax * 0x2] // 0x0060a17c    8d0440
                         push             eax                              // 0x0060a17f    50
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]      // 0x0060a180    8d4c240c
                         {disp8} mov      byte ptr [esi + 0x5e], 0x0e      // 0x0060a184    c6465e0e
                         {disp8} mov      dword ptr [esp + 0x0c], edx      // 0x0060a188    8954240c
                         call             _jmp_addr_0x0060a020             // 0x0060a18c    e88ffeffff
                         mov              edx, dword ptr [esi]             // 0x0060a191    8b16
                         {disp8} lea      eax, dword ptr [esp + 0x08]      // 0x0060a193    8d442408
                         push             eax                              // 0x0060a197    50
                         mov.s            ecx, esi                         // 0x0060a198    8bce
                         call             dword ptr [edx + 0x55c]          // 0x0060a19a    ff925c050000
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]      // 0x0060a1a0    8b4e6c
                         neg              ecx                              // 0x0060a1a3    f7d9
                         {disp8} mov      dword ptr [esp + 0x30], ecx      // 0x0060a1a5    894c2430
                         {disp8} fild     dword ptr [esp + 0x30]           // 0x0060a1a9    db442430
                         push             ecx                              // 0x0060a1ad    51
                         fstp             dword ptr [esp]                  // 0x0060a1ae    d91c24
                         {disp8} fld      dword ptr [esi + 0x68]           // 0x0060a1b1    d94668
                         fchs                                              // 0x0060a1b4    d9e0
                         call             _jmp_addr_0x007a1400             // 0x0060a1b6    e845721900
                         mov              edx, dword ptr [edi]             // 0x0060a1bb    8b17
                         push             eax                              // 0x0060a1bd    50
                         neg              edx                              // 0x0060a1be    f7da
                         push             edx                              // 0x0060a1c0    52
                         mov.s            ecx, edi                         // 0x0060a1c1    8bcf
                         call             _jmp_addr_0x00609ca0             // 0x0060a1c3    e8d8faffff
                         xor.s            eax, eax                         // 0x0060a1c8    33c0
                         {disp8} mov      ax, word ptr [esi + 0x5c]        // 0x0060a1ca    668b465c
                         sub              ax, 0x0400                       // 0x0060a1ce    662d0004
                         pop              edi                              // 0x0060a1d2    5f
                         and              eax, 0x000007ff                  // 0x0060a1d3    25ff070000
                         {disp8} mov      word ptr [esi + 0x5c], ax        // 0x0060a1d8    6689465c
                         pop              esi                              // 0x0060a1dc    5e
                         add              esp, 0x24                        // 0x0060a1dd    83c424
                         ret              0x0004                           // 0x0060a1e0    c20400
                         {disp8} lea      ecx, dword ptr [esi + 0x14]      // 0x0060a1e3    8d4e14
                         mov.s            edx, ecx                         // 0x0060a1e6    8bd1
                         mov              ecx, dword ptr [edx]             // 0x0060a1e8    8b0a
                         {disp8} mov      eax, dword ptr [edx + 0x04]      // 0x0060a1ea    8b4204
                         {disp8} mov      edx, dword ptr [edx + 0x08]      // 0x0060a1ed    8b5208
                         {disp8} mov      dword ptr [esp + 0x0c], eax      // 0x0060a1f0    8944240c
                         {disp8} mov      eax, dword ptr [esi + 0x64]      // 0x0060a1f4    8b4664
                         {disp8} lea      edi, dword ptr [esi + 0x64]      // 0x0060a1f7    8d7e64
                         add.s            ecx, eax                         // 0x0060a1fa    03c8
                         {disp8} mov      dword ptr [esp + 0x10], edx      // 0x0060a1fc    89542410
                         lea              edx, dword ptr [ecx + eax * 0x2] // 0x0060a200    8d1441
                         {disp8} mov      eax, dword ptr [esi + 0x6c]      // 0x0060a203    8b466c
                         lea              eax, dword ptr [eax + eax * 0x2] // 0x0060a206    8d0440
                         push             eax                              // 0x0060a209    50
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]      // 0x0060a20a    8d4c240c
                         {disp8} mov      byte ptr [esi + 0x5e], 0x10      // 0x0060a20e    c6465e10
                         {disp8} mov      dword ptr [esp + 0x0c], edx      // 0x0060a212    8954240c
                         call             _jmp_addr_0x0060a020             // 0x0060a216    e805feffff
                         mov              edx, dword ptr [esi]             // 0x0060a21b    8b16
                         {disp8} lea      eax, dword ptr [esp + 0x08]      // 0x0060a21d    8d442408
                         push             eax                              // 0x0060a221    50
                         mov.s            ecx, esi                         // 0x0060a222    8bce
                         call             dword ptr [edx + 0x55c]          // 0x0060a224    ff925c050000
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]      // 0x0060a22a    8b4e6c
                         neg              ecx                              // 0x0060a22d    f7d9
                         {disp8} mov      dword ptr [esp + 0x30], ecx      // 0x0060a22f    894c2430
                         {disp8} fild     dword ptr [esp + 0x30]           // 0x0060a233    db442430
                         push             ecx                              // 0x0060a237    51
                         fstp             dword ptr [esp]                  // 0x0060a238    d91c24
                         {disp8} fld      dword ptr [esi + 0x68]           // 0x0060a23b    d94668
                         fchs                                              // 0x0060a23e    d9e0
                         call             _jmp_addr_0x007a1400             // 0x0060a240    e8bb711900
                         mov              edx, dword ptr [edi]             // 0x0060a245    8b17
                         push             eax                              // 0x0060a247    50
                         neg              edx                              // 0x0060a248    f7da
                         push             edx                              // 0x0060a24a    52
                         mov.s            ecx, edi                         // 0x0060a24b    8bcf
                         call             _jmp_addr_0x00609ca0             // 0x0060a24d    e84efaffff
                         xor.s            eax, eax                         // 0x0060a252    33c0
                         {disp8} mov      ax, word ptr [esi + 0x5c]        // 0x0060a254    668b465c
                         sub              ax, 0x0400                       // 0x0060a258    662d0004
                         {disp8} lea      ecx, dword ptr [esi + 0x70]      // 0x0060a25c    8d4e70
                         and              eax, 0x000007ff                  // 0x0060a25f    25ff070000
                         {disp8} mov      word ptr [esi + 0x5c], ax        // 0x0060a264    6689465c
                         call             ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ             // 0x0060a268    e8f3030000
                         test             eax, eax                         // 0x0060a26d    85c0
                         {disp32} je      _jmp_addr_0x0060a3dd             // 0x0060a26f    0f8468010000
                         mov              edx, dword ptr [esi]             // 0x0060a275    8b16
                         {disp8} lea      eax, dword ptr [esp + 0x14]      // 0x0060a277    8d442414
                         push             eax                              // 0x0060a27b    50
                         mov.s            ecx, esi                         // 0x0060a27c    8bce
                         call             dword ptr [edx + 0x100]          // 0x0060a27e    ff9200010000
                         push             eax                              // 0x0060a284    50
                         push             esi                              // 0x0060a285    56
                         call             ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z      // 0x0060a286    e8b5a90000
                         add              esp, 0x08                        // 0x0060a28b    83c408
                         pop              edi                              // 0x0060a28e    5f
                         pop              esi                              // 0x0060a28f    5e
                         add              esp, 0x24                        // 0x0060a290    83c424
                         ret              0x0004                           // 0x0060a293    c20400
                         {disp8} lea      ecx, dword ptr [esi + 0x14]      // 0x0060a296    8d4e14
                         mov.s            edx, ecx                         // 0x0060a299    8bd1
                         mov              ecx, dword ptr [edx]             // 0x0060a29b    8b0a
                         {disp8} mov      eax, dword ptr [edx + 0x04]      // 0x0060a29d    8b4204
                         {disp8} mov      edx, dword ptr [edx + 0x08]      // 0x0060a2a0    8b5208
                         {disp8} mov      dword ptr [esp + 0x0c], eax      // 0x0060a2a3    8944240c
                         {disp8} mov      eax, dword ptr [esi + 0x64]      // 0x0060a2a7    8b4664
                         {disp8} lea      edi, dword ptr [esi + 0x64]      // 0x0060a2aa    8d7e64
                         add.s            ecx, eax                         // 0x0060a2ad    03c8
                         {disp8} mov      dword ptr [esp + 0x10], edx      // 0x0060a2af    89542410
                         lea              edx, dword ptr [ecx + eax * 0x2] // 0x0060a2b3    8d1441
                         {disp8} mov      eax, dword ptr [esi + 0x6c]      // 0x0060a2b6    8b466c
                         lea              eax, dword ptr [eax + eax * 0x2] // 0x0060a2b9    8d0440
                         push             eax                              // 0x0060a2bc    50
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]      // 0x0060a2bd    8d4c240c
                         {disp8} mov      byte ptr [esi + 0x5e], 0x0f      // 0x0060a2c1    c6465e0f
                         {disp8} mov      dword ptr [esp + 0x0c], edx      // 0x0060a2c5    8954240c
                         call             _jmp_addr_0x0060a020             // 0x0060a2c9    e852fdffff
                         mov              edx, dword ptr [esi]             // 0x0060a2ce    8b16
                         {disp8} lea      eax, dword ptr [esp + 0x08]      // 0x0060a2d0    8d442408
                         push             eax                              // 0x0060a2d4    50
                         mov.s            ecx, esi                         // 0x0060a2d5    8bce
                         call             dword ptr [edx + 0x55c]          // 0x0060a2d7    ff925c050000
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]      // 0x0060a2dd    8b4e6c
                         neg              ecx                              // 0x0060a2e0    f7d9
                         {disp8} mov      dword ptr [esp + 0x30], ecx      // 0x0060a2e2    894c2430
                         {disp8} fild     dword ptr [esp + 0x30]           // 0x0060a2e6    db442430
                         push             ecx                              // 0x0060a2ea    51
                         fstp             dword ptr [esp]                  // 0x0060a2eb    d91c24
                         {disp8} fld      dword ptr [esi + 0x68]           // 0x0060a2ee    d94668
                         fchs                                              // 0x0060a2f1    d9e0
                         call             _jmp_addr_0x007a1400             // 0x0060a2f3    e808711900
                         mov              edx, dword ptr [edi]             // 0x0060a2f8    8b17
                         push             eax                              // 0x0060a2fa    50
                         neg              edx                              // 0x0060a2fb    f7da
                         push             edx                              // 0x0060a2fd    52
                         mov.s            ecx, edi                         // 0x0060a2fe    8bcf
                         call             _jmp_addr_0x00609ca0             // 0x0060a300    e89bf9ffff
                         xor.s            eax, eax                         // 0x0060a305    33c0
                         {disp8} mov      ax, word ptr [esi + 0x5c]        // 0x0060a307    668b465c
                         sub              ax, 0x0400                       // 0x0060a30b    662d0004
                         {disp8} lea      ecx, dword ptr [esi + 0x70]      // 0x0060a30f    8d4e70
                         and              eax, 0x000007ff                  // 0x0060a312    25ff070000
                         {disp8} mov      word ptr [esi + 0x5c], ax        // 0x0060a317    6689465c
                         call             ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ             // 0x0060a31b    e840030000
                         test             eax, eax                         // 0x0060a320    85c0
                         {disp32} je      _jmp_addr_0x0060a3dd             // 0x0060a322    0f84b5000000
                         mov              edx, dword ptr [esi]             // 0x0060a328    8b16
                         {disp8} lea      eax, dword ptr [esp + 0x20]      // 0x0060a32a    8d442420
                         push             eax                              // 0x0060a32e    50
                         mov.s            ecx, esi                         // 0x0060a32f    8bce
                         call             dword ptr [edx + 0x100]          // 0x0060a331    ff9200010000
                         push             eax                              // 0x0060a337    50
                         push             esi                              // 0x0060a338    56
                         call             ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z      // 0x0060a339    e8b2b60000
                         add              esp, 0x08                        // 0x0060a33e    83c408
                         pop              edi                              // 0x0060a341    5f
                         pop              esi                              // 0x0060a342    5e
                         add              esp, 0x24                        // 0x0060a343    83c424
                         ret              0x0004                           // 0x0060a346    c20400
                         {disp8} lea      ecx, dword ptr [esi + 0x14]      // 0x0060a349    8d4e14
                         mov.s            edx, ecx                         // 0x0060a34c    8bd1
                         mov              ecx, dword ptr [edx]             // 0x0060a34e    8b0a
                         {disp8} mov      eax, dword ptr [edx + 0x04]      // 0x0060a350    8b4204
                         {disp8} mov      edx, dword ptr [edx + 0x08]      // 0x0060a353    8b5208
                         {disp8} mov      dword ptr [esp + 0x0c], eax      // 0x0060a356    8944240c
                         {disp8} mov      eax, dword ptr [esi + 0x64]      // 0x0060a35a    8b4664
                         {disp8} lea      edi, dword ptr [esi + 0x64]      // 0x0060a35d    8d7e64
                         add.s            ecx, eax                         // 0x0060a360    03c8
                         {disp8} mov      dword ptr [esp + 0x10], edx      // 0x0060a362    89542410
                         lea              edx, dword ptr [ecx + eax * 0x2] // 0x0060a366    8d1441
                         {disp8} mov      eax, dword ptr [esi + 0x6c]      // 0x0060a369    8b466c
                         lea              eax, dword ptr [eax + eax * 0x2] // 0x0060a36c    8d0440
                         push             eax                              // 0x0060a36f    50
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]      // 0x0060a370    8d4c240c
                         {disp8} mov      byte ptr [esi + 0x5e], 0x11      // 0x0060a374    c6465e11
                         {disp8} mov      dword ptr [esp + 0x0c], edx      // 0x0060a378    8954240c
                         call             _jmp_addr_0x0060a020             // 0x0060a37c    e89ffcffff
                         mov              edx, dword ptr [esi]             // 0x0060a381    8b16
                         {disp8} lea      eax, dword ptr [esp + 0x08]      // 0x0060a383    8d442408
                         push             eax                              // 0x0060a387    50
                         mov.s            ecx, esi                         // 0x0060a388    8bce
                         call             dword ptr [edx + 0x55c]          // 0x0060a38a    ff925c050000
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]      // 0x0060a390    8b4e6c
                         neg              ecx                              // 0x0060a393    f7d9
                         {disp8} mov      dword ptr [esp + 0x30], ecx      // 0x0060a395    894c2430
                         {disp8} fild     dword ptr [esp + 0x30]           // 0x0060a399    db442430
                         push             ecx                              // 0x0060a39d    51
                         fstp             dword ptr [esp]                  // 0x0060a39e    d91c24
                         {disp8} fld      dword ptr [esi + 0x68]           // 0x0060a3a1    d94668
                         fchs                                              // 0x0060a3a4    d9e0
                         call             _jmp_addr_0x007a1400             // 0x0060a3a6    e855701900
                         mov              edx, dword ptr [edi]             // 0x0060a3ab    8b17
                         push             eax                              // 0x0060a3ad    50
                         neg              edx                              // 0x0060a3ae    f7da
                         push             edx                              // 0x0060a3b0    52
                         mov.s            ecx, edi                         // 0x0060a3b1    8bcf
                         call             _jmp_addr_0x00609ca0             // 0x0060a3b3    e8e8f8ffff
                         xor.s            eax, eax                         // 0x0060a3b8    33c0
                         {disp8} mov      ax, word ptr [esi + 0x5c]        // 0x0060a3ba    668b465c
                         sub              ax, 0x0400                       // 0x0060a3be    662d0004
                         pop              edi                              // 0x0060a3c2    5f
                         and              eax, 0x000007ff                  // 0x0060a3c3    25ff070000
                         {disp8} mov      word ptr [esi + 0x5c], ax        // 0x0060a3c8    6689465c
                         pop              esi                              // 0x0060a3cc    5e
                         add              esp, 0x24                        // 0x0060a3cd    83c424
                         ret              0x0004                           // 0x0060a3d0    c20400
                         push             esi                              // 0x0060a3d3    56
                         {disp8} mov      byte ptr [esi + 0x5e], 0x12      // 0x0060a3d4    c6465e12
                         call             _jmp_addr_0x0060a030             // 0x0060a3d8    e853fcffff
_jmp_addr_0x0060a3dd:    pop              edi                              // 0x0060a3dd    5f
                         pop              esi                              // 0x0060a3de    5e
                         add              esp, 0x24                        // 0x0060a3df    83c424
                         ret              0x0004                           // 0x0060a3e2    c20400

// Snippet: db, [0x0060a3e5, 0x0060a3e8)
.byte 0x8d, 0x49, 0x00            // 0x0060a3e5

// Snippet: jmptbl, [0x0060a3e8, 0x0060a400)
.byte 0x59, 0xa1, 0x60, 0x00      // 0x0060a3e8
.byte 0xd1, 0xa0, 0x60, 0x00      // 0x0060a3ec
.byte 0xe3, 0xa1, 0x60, 0x00      // 0x0060a3f0
.byte 0x96, 0xa2, 0x60, 0x00      // 0x0060a3f4
.byte 0xd3, 0xa3, 0x60, 0x00      // 0x0060a3f8
.byte 0x49, 0xa3, 0x60, 0x00      // 0x0060a3fc

