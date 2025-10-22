.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0047a500
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x0047fa20
.extern _jmp_addr_0x004842e0
.extern _jmp_addr_0x00484300
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

start_0x00501950_0x00501a70:
// Snippet: asm, [0x00501950, 0x00501a4d)
                         {disp32} mov      eax, dword ptr [ecx + 0x00000160]       // 0x00501950    8b8160010000
                         {disp8} mov       ecx, dword ptr [eax + 0x58]             // 0x00501956    8b4858
                         call              _jmp_addr_0x00484300                    // 0x00501959    e8a229f8ff
                         neg               eax                                     // 0x0050195e    f7d8
                         sbb.s             eax, eax                                // 0x00501960    1bc0
                         and               eax, 0xfffffffe                         // 0x00501962    83e0fe
                         add               eax, 0x02                               // 0x00501965    83c002
                         ret                                                       // 0x00501968    c3
                         nop                                                       // 0x00501969    90
                         nop                                                       // 0x0050196a    90
                         nop                                                       // 0x0050196b    90
                         nop                                                       // 0x0050196c    90
                         nop                                                       // 0x0050196d    90
                         nop                                                       // 0x0050196e    90
                         nop                                                       // 0x0050196f    90
                         sub               esp, 0x1c                               // 0x00501970    83ec1c
                         push              esi                                     // 0x00501973    56
                         mov.s             esi, ecx                                // 0x00501974    8bf1
                         {disp32} mov      eax, dword ptr [esi + 0x00000164]       // 0x00501976    8b8664010000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000fb4]       // 0x0050197c    8b88b40f0000
                         add               eax, 0x00000fa8                         // 0x00501982    05a80f0000
                         lea               ecx, dword ptr [ecx + ecx * 0x2]        // 0x00501987    8d0c49
                         shl               ecx, 5                                  // 0x0050198a    c1e105
                         push              edi                                     // 0x0050198d    57
                         {disp8} mov       edi, dword ptr [ecx + eax * 0x1 + 0x34] // 0x0050198e    8b7c0134
                         {disp8} mov       edx, dword ptr [edi + 0x2c]             // 0x00501992    8b572c
                         add               edi, 0x24                               // 0x00501995    83c724
                         mov.s             ecx, edi                                // 0x00501998    8bcf
                         {disp8} mov       dword ptr [esp + 0x08], edx             // 0x0050199a    89542408
                         call              ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                  // 0x0050199e    e8ed163000
                         {disp8} fadd      dword ptr [esp + 0x08]                  // 0x005019a3    d8442408
                         {disp8} lea       eax, dword ptr [esp + 0x18]             // 0x005019a7    8d442418
                         push              eax                                     // 0x005019ab    50
                         {disp8} fstp      dword ptr [esp + 0x14]                  // 0x005019ac    d95c2414
                         {disp8} lea       ecx, dword ptr [esp + 0x10]             // 0x005019b0    8d4c2410
                         fild              dword ptr [edi]                         // 0x005019b4    db07
                         push              ecx                                     // 0x005019b6    51
                         mov.s             ecx, esi                                // 0x005019b7    8bce
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]               // 0x005019b9    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x14]                  // 0x005019bf    d95c2414
                         {disp8} fild      dword ptr [edi + 0x04]                  // 0x005019c3    db4704
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]               // 0x005019c6    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x1c]                  // 0x005019cc    d95c241c
                         call              _jmp_addr_0x0047a500                    // 0x005019d0    e82b8bf7ff
                         {disp32} mov      edx, dword ptr [esi + 0x00000160]       // 0x005019d5    8b9660010000
                         {disp8} mov       ecx, dword ptr [edx + 0x58]             // 0x005019db    8b4a58
                         call              _jmp_addr_0x004842e0                    // 0x005019de    e8fd28f8ff
                         test              eax, eax                                // 0x005019e3    85c0
                         {disp8} je        _jmp_addr_0x00501a45                    // 0x005019e5    745e
                         {disp8} mov       eax, dword ptr [esi + 0x28]             // 0x005019e7    8b4628
                         {disp32} mov      ecx, dword ptr [eax + 0x00000258]       // 0x005019ea    8b8858020000
                         {disp32} mov      edx, dword ptr [esi + 0x00000160]       // 0x005019f0    8b9660010000
                         push              ecx                                     // 0x005019f6    51
                         {disp8} mov       ecx, dword ptr [edx + 0x58]             // 0x005019f7    8b4a58
                         call              _jmp_addr_0x0047fa20                    // 0x005019fa    e821e0f7ff
                         mov               eax, dword ptr [esi]                    // 0x005019ff    8b06
                         push              0x0                                     // 0x00501a01    6a00
                         mov.s             ecx, esi                                // 0x00501a03    8bce
                         call              dword ptr [eax + 0x42c]                 // 0x00501a05    ff902c040000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x26e4]        // 0x00501a0b    d80de4b68a00
                         push              ecx                                     // 0x00501a11    51
                         {disp8} lea       ecx, dword ptr [esp + 0x20]             // 0x00501a12    8d4c2420
                         fstp              dword ptr [esp]                         // 0x00501a16    d91c24
                         push              ecx                                     // 0x00501a19    51
                         push              0x0                                     // 0x00501a1a    6a00
                         mov.s             ecx, esi                                // 0x00501a1c    8bce
                         call              _jmp_addr_0x0047a880                    // 0x00501a1e    e85d8ef7ff
                         cmp               eax, 0x04                               // 0x00501a23    83f804
                         {disp8} ja        _jmp_addr_0x00501a3a                    // 0x00501a26    7712
                         jmp               dword ptr [eax*4 + 0x501a50]            // 0x00501a28    ff2485501a5000
                         pop               edi                                     // 0x00501a2f    5f
                         mov               eax, 0x00000002                         // 0x00501a30    b802000000
                         pop               esi                                     // 0x00501a35    5e
                         add               esp, 0x1c                               // 0x00501a36    83c41c
                         ret                                                       // 0x00501a39    c3
_jmp_addr_0x00501a3a:    pop               edi                                     // 0x00501a3a    5f
                         mov               eax, 0x00000001                         // 0x00501a3b    b801000000
                         pop               esi                                     // 0x00501a40    5e
                         add               esp, 0x1c                               // 0x00501a41    83c41c
                         ret                                                       // 0x00501a44    c3
_jmp_addr_0x00501a45:    pop               edi                                     // 0x00501a45    5f
                         xor.s             eax, eax                                // 0x00501a46    33c0
                         pop               esi                                     // 0x00501a48    5e
                         add               esp, 0x1c                               // 0x00501a49    83c41c
                         ret                                                       // 0x00501a4c    c3

// Snippet: db, [0x00501a4d, 0x00501a50)
.byte 0x8d, 0x49, 0x00            // 0x00501a4d

// Snippet: jmptbl, [0x00501a50, 0x00501a64)
.byte 0x45, 0x1a, 0x50, 0x00      // 0x00501a50
.byte 0x45, 0x1a, 0x50, 0x00      // 0x00501a54
.byte 0x45, 0x1a, 0x50, 0x00      // 0x00501a58
.byte 0x2f, 0x1a, 0x50, 0x00      // 0x00501a5c
.byte 0x2f, 0x1a, 0x50, 0x00      // 0x00501a60

// Snippet: db, [0x00501a64, 0x00501a70)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00501a64
.byte 0x90, 0x90, 0x90, 0x90      // 0x00501a68
.byte 0x90, 0x90, 0x90, 0x90      // 0x00501a6c

