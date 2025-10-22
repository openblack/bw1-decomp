.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00416eb0
.extern _jmp_addr_0x0041d0b0
.extern _jmp_addr_0x0041fd30
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x005e6540
.extern _jmp_addr_0x00608840
.extern @SetScale__6ObjectFf@12
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x006d9290
.extern _jmp_addr_0x006da350
.extern _jmp_addr_0x006dab00
.extern _jmp_addr_0x006dab60
.extern _jmp_addr_0x006daba0
.extern _jmp_addr_0x006dabe0
.extern _jmp_addr_0x006dac20
.extern _jmp_addr_0x007346e0
.extern ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z

.globl _jmp_addr_0x006dacd0
.globl _jmp_addr_0x006dad50
.globl _jmp_addr_0x006db020
.globl _jmp_addr_0x006db160
.globl _jmp_addr_0x006db520
.globl ?DecideWhatToDo@PuzzleSheep@@UAE_NXZ
.globl ?DecideWhatToDo@PuzzleHorse@@UAE_NXZ
.globl ?DecideWhatToDo@PuzzlePig@@UAE_NXZ

start_0x006dacd0_0x006db570:
// Snippet: asm, [0x006dacd0, 0x006db541)
_jmp_addr_0x006dacd0:    push              ebx                                            // 0x006dacd0    53
                         push              esi                                            // 0x006dacd1    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                    // 0x006dacd2    8b74240c
                         cmp               esi, 0x08                                      // 0x006dacd6    83fe08
                         push              edi                                            // 0x006dacd9    57
                         mov.s             edi, ecx                                       // 0x006dacda    8bf9
                         {disp8} jge       _jmp_addr_0x006dad45                           // 0x006dacdc    7d67
                         test              esi, esi                                       // 0x006dacde    85f6
                         {disp8} jl        _jmp_addr_0x006dad45                           // 0x006dace0    7c63
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                    // 0x006dace2    8b4c2414
                         cmp               ecx, 0x08                                      // 0x006dace6    83f908
                         {disp8} jge       _jmp_addr_0x006dad45                           // 0x006dace9    7d5a
                         test              ecx, ecx                                       // 0x006daceb    85c9
                         {disp8} jl        _jmp_addr_0x006dad45                           // 0x006daced    7c56
                         {disp8} mov       eax, dword ptr [esp + 0x18]                    // 0x006dacef    8b442418
                         test              eax, eax                                       // 0x006dacf3    85c0
                         {disp8} jne       _jmp_addr_0x006dad27                           // 0x006dacf5    7530
                         mov               eax, 0x00000007                                // 0x006dacf7    b807000000
                         sub.s             eax, ecx                                       // 0x006dacfc    2bc1
                         mov.s             ecx, edi                                       // 0x006dacfe    8bcf
                         lea               ebx, dword ptr [eax + eax * 0x8]               // 0x006dad00    8d1cc0
                         call              _jmp_addr_0x006dab00                           // 0x006dad03    e8f8fdffff
                         add.s             eax, ebx                                       // 0x006dad08    03c3
                         cmp               byte ptr [eax + esi * 0x1], -0x51              // 0x006dad0a    803c30af
_jmp_addr_0x006dad0e:    {disp8} je        _jmp_addr_0x006dad45                           // 0x006dad0e    7435
                         mov.s             ecx, edi                                       // 0x006dad10    8bcf
                         call              _jmp_addr_0x006dab00                           // 0x006dad12    e8e9fdffff
                         add.s             eax, ebx                                       // 0x006dad17    03c3
                         cmp               byte ptr [eax + esi * 0x1], -0x54              // 0x006dad19    803c30ac
                         {disp8} je        _jmp_addr_0x006dad45                           // 0x006dad1d    7426
                         pop               edi                                            // 0x006dad1f    5f
                         pop               esi                                            // 0x006dad20    5e
                         xor.s             eax, eax                                       // 0x006dad21    33c0
                         pop               ebx                                            // 0x006dad23    5b
                         ret               0x000c                                         // 0x006dad24    c20c00
_jmp_addr_0x006dad27:    cmp               eax, 0x01                                      // 0x006dad27    83f801
                         {disp8} jne       _jmp_addr_0x006dad45                           // 0x006dad2a    7519
                         mov               eax, 0x00000007                                // 0x006dad2c    b807000000
                         sub.s             eax, ecx                                       // 0x006dad31    2bc1
                         mov.s             ecx, edi                                       // 0x006dad33    8bcf
                         lea               ebx, dword ptr [eax + eax * 0x8]               // 0x006dad35    8d1cc0
                         call              _jmp_addr_0x006dab00                           // 0x006dad38    e8c3fdffff
                         add.s             eax, ebx                                       // 0x006dad3d    03c3
                         cmp               byte ptr [eax + esi * 0x1], 0x7c               // 0x006dad3f    803c307c
                         {disp8} jmp       _jmp_addr_0x006dad0e                           // 0x006dad43    ebc9
_jmp_addr_0x006dad45:    pop               edi                                            // 0x006dad45    5f
                         pop               esi                                            // 0x006dad46    5e
                         mov               eax, 0x00000001                                // 0x006dad47    b801000000
                         pop               ebx                                            // 0x006dad4c    5b
                         ret               0x000c                                         // 0x006dad4d    c20c00
_jmp_addr_0x006dad50:    sub               esp, 0x10                                      // 0x006dad50    83ec10
                         push              ebx                                            // 0x006dad53    53
                         push              ebp                                            // 0x006dad54    55
                         push              esi                                            // 0x006dad55    56
                         mov.s             esi, ecx                                       // 0x006dad56    8bf1
                         {disp32} mov      ecx, dword ptr [esi + 0x00000394]              // 0x006dad58    8b8e94030000
                         mov               eax, 0x66666667                                // 0x006dad5e    b867666666
                         imul              ecx                                            // 0x006dad63    f7e9
                         {disp32} mov      ecx, dword ptr [esi + 0x00000390]              // 0x006dad65    8b8e90030000
                         sar               edx, 1                                         // 0x006dad6b    d1fa
                         mov.s             eax, edx                                       // 0x006dad6d    8bc2
                         shr               eax, 0x1f                                      // 0x006dad6f    c1e81f
                         add.s             edx, eax                                       // 0x006dad72    03d0
                         {disp32} mov      dword ptr [esi + 0x00000394], edx              // 0x006dad74    899694030000
                         mov               eax, 0x66666667                                // 0x006dad7a    b867666666
                         imul              ecx                                            // 0x006dad7f    f7e9
                         sar               edx, 1                                         // 0x006dad81    d1fa
                         mov.s             ecx, edx                                       // 0x006dad83    8bca
                         shr               ecx, 0x1f                                      // 0x006dad85    c1e91f
                         add.s             edx, ecx                                       // 0x006dad88    03d1
                         xor.s             ebx, ebx                                       // 0x006dad8a    33db
                         push              edi                                            // 0x006dad8c    57
                         mov.s             ecx, esi                                       // 0x006dad8d    8bce
                         {disp32} mov      dword ptr [esi + 0x00000390], edx              // 0x006dad8f    899690030000
                         {disp8} mov       word ptr [esi + 0x46], bx                      // 0x006dad95    66895e46
                         {disp8} mov       word ptr [esi + 0x44], bx                      // 0x006dad99    66895e44
                         call              _jmp_addr_0x006db520                           // 0x006dad9d    e87e070000
                         inc               eax                                            // 0x006dada2    40
                         test              eax, eax                                       // 0x006dada3    85c0
                         {disp32} jle      _jmp_addr_0x006dae47                           // 0x006dada5    0f8e9c000000
                         mov               ebp, 0x00000090                                // 0x006dadab    bd90000000
_jmp_addr_0x006dadb0:    mov.s             ecx, esi                                       // 0x006dadb0    8bce
                         xor.s             edi, edi                                       // 0x006dadb2    33ff
                         call              _jmp_addr_0x006db520                           // 0x006dadb4    e867070000
                         inc               eax                                            // 0x006dadb9    40
                         test              eax, eax                                       // 0x006dadba    85c0
                         {disp8} jle       _jmp_addr_0x006dae33                           // 0x006dadbc    7e75
_jmp_addr_0x006dadbe:    mov.s             ecx, esi                                       // 0x006dadbe    8bce
                         call              _jmp_addr_0x006db520                           // 0x006dadc0    e85b070000
                         cmp.s             edi, eax                                       // 0x006dadc5    3bf8
                         {disp8} je        _jmp_addr_0x006dadf4                           // 0x006dadc7    742b
                         push              0x1                                            // 0x006dadc9    6a01
                         push              edi                                            // 0x006dadcb    57
                         {disp8} lea       edx, dword ptr [ebx + -0x01]                   // 0x006dadcc    8d53ff
                         push              edx                                            // 0x006dadcf    52
                         mov.s             ecx, esi                                       // 0x006dadd0    8bce
                         call              _jmp_addr_0x006dacd0                           // 0x006dadd2    e8f9feffff
                         test              eax, eax                                       // 0x006dadd7    85c0
                         {disp8} je        _jmp_addr_0x006dadf4                           // 0x006dadd9    7419
                         push              0x1                                            // 0x006daddb    6a01
                         push              edi                                            // 0x006daddd    57
                         push              ebx                                            // 0x006dadde    53
                         mov.s             ecx, esi                                       // 0x006daddf    8bce
                         call              _jmp_addr_0x006db020                           // 0x006dade1    e83a020000
                         lea               ecx, dword ptr [edi + ebp * 0x1]               // 0x006dade6    8d0c2f
                         {disp32} mov      dword ptr [esi + ecx * 0x4 + -0x00000144], eax // 0x006dade9    89848ebcfeffff
                         or                byte ptr [eax + 0x25], 0x20                    // 0x006dadf0    80482520
_jmp_addr_0x006dadf4:    mov.s             ecx, esi                                       // 0x006dadf4    8bce
                         call              _jmp_addr_0x006db520                           // 0x006dadf6    e825070000
                         cmp.s             ebx, eax                                       // 0x006dadfb    3bd8
                         {disp8} je        _jmp_addr_0x006dae26                           // 0x006dadfd    7427
                         push              0x0                                            // 0x006dadff    6a00
                         {disp8} lea       edx, dword ptr [edi + -0x01]                   // 0x006dae01    8d57ff
                         push              edx                                            // 0x006dae04    52
                         push              ebx                                            // 0x006dae05    53
                         mov.s             ecx, esi                                       // 0x006dae06    8bce
                         call              _jmp_addr_0x006dacd0                           // 0x006dae08    e8c3feffff
                         test              eax, eax                                       // 0x006dae0d    85c0
                         {disp8} je        _jmp_addr_0x006dae26                           // 0x006dae0f    7415
                         push              0x0                                            // 0x006dae11    6a00
                         push              edi                                            // 0x006dae13    57
                         push              ebx                                            // 0x006dae14    53
                         mov.s             ecx, esi                                       // 0x006dae15    8bce
                         call              _jmp_addr_0x006db020                           // 0x006dae17    e804020000
                         lea               ecx, dword ptr [edi + ebp * 0x1]               // 0x006dae1c    8d0c2f
                         mov               dword ptr [esi + ecx * 0x4], eax               // 0x006dae1f    89048e
                         or                byte ptr [eax + 0x25], 0x20                    // 0x006dae22    80482520
_jmp_addr_0x006dae26:    mov.s             ecx, esi                                       // 0x006dae26    8bce
                         inc               edi                                            // 0x006dae28    47
                         call              _jmp_addr_0x006db520                           // 0x006dae29    e8f2060000
                         inc               eax                                            // 0x006dae2e    40
                         cmp.s             edi, eax                                       // 0x006dae2f    3bf8
                         {disp8} jl        _jmp_addr_0x006dadbe                           // 0x006dae31    7c8b
_jmp_addr_0x006dae33:    mov.s             ecx, esi                                       // 0x006dae33    8bce
                         inc               ebx                                            // 0x006dae35    43
                         add               ebp, 0x09                                      // 0x006dae36    83c509
                         call              _jmp_addr_0x006db520                           // 0x006dae39    e8e2060000
                         inc               eax                                            // 0x006dae3e    40
                         cmp.s             ebx, eax                                       // 0x006dae3f    3bd8
                         {disp32} jl       _jmp_addr_0x006dadb0                           // 0x006dae41    0f8c69ffffff
_jmp_addr_0x006dae47:    push              0x3f800000                                     // 0x006dae47    680000803f
                         push              0x0                                            // 0x006dae4c    6a00
                         push              0x3f800000                                     // 0x006dae4e    680000803f
                         push              0x0                                            // 0x006dae53    6a00
                         push              0x00da44d8                                     // 0x006dae55    68d844da00
                         push              0x0                                            // 0x006dae5a    6a00
                         push              0x0                                            // 0x006dae5c    6a00
                         {disp8} lea       edx, dword ptr [esp + 0x30]                    // 0x006dae5e    8d542430
                         push              edx                                            // 0x006dae62    52
                         mov.s             ecx, esi                                       // 0x006dae63    8bce
                         {disp32} lea      edi, dword ptr [esi + 0x000000c4]              // 0x006dae65    8dbec4000000
                         call              _jmp_addr_0x006d9290                           // 0x006dae6b    e820e4ffff
                         push              eax                                            // 0x006dae70    50
                         call              ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z            // 0x006dae71    e86af00600
                         add               esp, 0x18                                      // 0x006dae76    83c418
                         push              0x3f800000                                     // 0x006dae79    680000803f
                         push              0x0                                            // 0x006dae7e    6a00
                         push              0x3f800000                                     // 0x006dae80    680000803f
                         push              0x0                                            // 0x006dae85    6a00
                         push              0x00da44d8                                     // 0x006dae87    68d844da00
                         mov.s             ecx, esi                                       // 0x006dae8c    8bce
                         mov               dword ptr [edi], eax                           // 0x006dae8e    8907
                         call              _jmp_addr_0x006db520                           // 0x006dae90    e88b060000
                         shl               eax, 1                                         // 0x006dae95    d1e0
                         push              eax                                            // 0x006dae97    50
                         mov.s             ecx, esi                                       // 0x006dae98    8bce
                         call              _jmp_addr_0x006db520                           // 0x006dae9a    e881060000
                         shl               eax, 1                                         // 0x006dae9f    d1e0
                         push              eax                                            // 0x006daea1    50
                         {disp8} lea       eax, dword ptr [esp + 0x30]                    // 0x006daea2    8d442430
                         push              eax                                            // 0x006daea6    50
                         mov.s             ecx, esi                                       // 0x006daea7    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006daea9    e8e2e3ffff
                         push              eax                                            // 0x006daeae    50
                         call              ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z            // 0x006daeaf    e82cf00600
                         add               esp, 0x18                                      // 0x006daeb4    83c418
                         push              0x3f800000                                     // 0x006daeb7    680000803f
                         push              0x0                                            // 0x006daebc    6a00
                         push              0x3f800000                                     // 0x006daebe    680000803f
                         push              0x0                                            // 0x006daec3    6a00
                         push              0x00da44d8                                     // 0x006daec5    68d844da00
                         push              0x0                                            // 0x006daeca    6a00
                         mov.s             ecx, esi                                       // 0x006daecc    8bce
                         {disp32} mov      dword ptr [esi + 0x000000c8], eax              // 0x006daece    8986c8000000
                         call              _jmp_addr_0x006db520                           // 0x006daed4    e847060000
                         shl               eax, 1                                         // 0x006daed9    d1e0
                         push              eax                                            // 0x006daedb    50
                         {disp8} lea       ecx, dword ptr [esp + 0x30]                    // 0x006daedc    8d4c2430
                         push              ecx                                            // 0x006daee0    51
                         mov.s             ecx, esi                                       // 0x006daee1    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006daee3    e8a8e3ffff
                         push              eax                                            // 0x006daee8    50
                         call              ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z            // 0x006daee9    e8f2ef0600
                         add               esp, 0x18                                      // 0x006daeee    83c418
                         push              0x3f800000                                     // 0x006daef1    680000803f
                         push              0x0                                            // 0x006daef6    6a00
                         push              0x3f800000                                     // 0x006daef8    680000803f
                         push              0x0                                            // 0x006daefd    6a00
                         push              0x00da44d8                                     // 0x006daeff    68d844da00
                         mov.s             ecx, esi                                       // 0x006daf04    8bce
                         {disp32} mov      dword ptr [esi + 0x000000cc], eax              // 0x006daf06    8986cc000000
                         call              _jmp_addr_0x006db520                           // 0x006daf0c    e80f060000
                         shl               eax, 1                                         // 0x006daf11    d1e0
                         push              eax                                            // 0x006daf13    50
                         push              0x0                                            // 0x006daf14    6a00
                         {disp8} lea       edx, dword ptr [esp + 0x30]                    // 0x006daf16    8d542430
                         push              edx                                            // 0x006daf1a    52
                         mov.s             ecx, esi                                       // 0x006daf1b    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006daf1d    e86ee3ffff
                         push              eax                                            // 0x006daf22    50
                         call              ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z            // 0x006daf23    e8b8ef0600
                         add               esp, 0x18                                      // 0x006daf28    83c418
                         {disp32} mov      dword ptr [esi + 0x000000d0], eax              // 0x006daf2b    8986d0000000
                         mov               ebx, 0x00000004                                // 0x006daf31    bb04000000
_jmp_addr_0x006daf36:    mov               ecx, dword ptr [edi]                           // 0x006daf36    8b0f
                         test              ecx, ecx                                       // 0x006daf38    85c9
                         {disp8} je        _jmp_addr_0x006daf46                           // 0x006daf3a    740a
                         mov               eax, dword ptr [ecx]                           // 0x006daf3c    8b01
                         push              0x1                                            // 0x006daf3e    6a01
                         call              dword ptr [eax + 0x440]                        // 0x006daf40    ff9040040000
_jmp_addr_0x006daf46:    add               edi, 0x04                                      // 0x006daf46    83c704
                         dec               ebx                                            // 0x006daf49    4b
                         {disp8} jne       _jmp_addr_0x006daf36                           // 0x006daf4a    75ea
                         mov.s             ecx, esi                                       // 0x006daf4c    8bce
                         call              _jmp_addr_0x006db520                           // 0x006daf4e    e8cd050000
                         mov.s             ecx, esi                                       // 0x006daf53    8bce
                         {disp8} lea       edi, dword ptr [eax + eax * 0x1 + 0x02]        // 0x006daf55    8d7c0002
                         call              _jmp_addr_0x006db520                           // 0x006daf59    e8c2050000
                         {disp8} lea       ebx, dword ptr [eax + eax * 0x1 + 0x02]        // 0x006daf5e    8d5c0002
                         mov.s             eax, edi                                       // 0x006daf62    8bc7
                         cdq                                                              // 0x006daf64    99
                         sub.s             eax, edx                                       // 0x006daf65    2bc2
                         push              0x00d3af0c                                     // 0x006daf67    680cafd300
                         sar               eax, 1                                         // 0x006daf6c    d1f8
                         push              0x0                                            // 0x006daf6e    6a00
                         {disp8} lea       ebp, dword ptr [eax + -0x02]                   // 0x006daf70    8d68fe
                         push              ebp                                            // 0x006daf73    55
                         {disp8} lea       ecx, dword ptr [esp + 0x20]                    // 0x006daf74    8d4c2420
                         push              ecx                                            // 0x006daf78    51
                         mov.s             ecx, esi                                       // 0x006daf79    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006daf7b    e810e3ffff
                         push              eax                                            // 0x006daf80    50
                         call              _jmp_addr_0x007346e0                           // 0x006daf81    e85a970500
                         {disp32} mov      dword ptr [esi + 0x000000d4], eax              // 0x006daf86    8986d4000000
                         mov.s             eax, ebx                                       // 0x006daf8c    8bc3
                         cdq                                                              // 0x006daf8e    99
                         sub.s             eax, edx                                       // 0x006daf8f    2bc2
                         add               esp, 0x08                                      // 0x006daf91    83c408
                         sar               eax, 1                                         // 0x006daf94    d1f8
                         push              0x00d3af0c                                     // 0x006daf96    680cafd300
                         add               eax, -0x02                                     // 0x006daf9b    83c0fe
                         push              eax                                            // 0x006daf9e    50
                         add               edi, -0x02                                     // 0x006daf9f    83c7fe
                         push              edi                                            // 0x006dafa2    57
                         {disp8} lea       edx, dword ptr [esp + 0x20]                    // 0x006dafa3    8d542420
                         push              edx                                            // 0x006dafa7    52
                         mov.s             ecx, esi                                       // 0x006dafa8    8bce
                         {disp8} mov       dword ptr [esp + 0x20], eax                    // 0x006dafaa    89442420
                         call              _jmp_addr_0x006d9290                           // 0x006dafae    e8dde2ffff
                         push              eax                                            // 0x006dafb3    50
                         call              _jmp_addr_0x007346e0                           // 0x006dafb4    e827970500
                         add               esp, 0x08                                      // 0x006dafb9    83c408
                         push              0x00d3af0c                                     // 0x006dafbc    680cafd300
                         add               ebx, -0x02                                     // 0x006dafc1    83c3fe
                         push              ebx                                            // 0x006dafc4    53
                         {disp32} mov      dword ptr [esi + 0x000000d8], eax              // 0x006dafc5    8986d8000000
                         push              ebp                                            // 0x006dafcb    55
                         {disp8} lea       eax, dword ptr [esp + 0x20]                    // 0x006dafcc    8d442420
                         push              eax                                            // 0x006dafd0    50
                         mov.s             ecx, esi                                       // 0x006dafd1    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006dafd3    e8b8e2ffff
                         push              eax                                            // 0x006dafd8    50
                         call              _jmp_addr_0x007346e0                           // 0x006dafd9    e802970500
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                    // 0x006dafde    8b4c2418
                         add               esp, 0x08                                      // 0x006dafe2    83c408
                         push              0x00d3af0c                                     // 0x006dafe5    680cafd300
                         push              ecx                                            // 0x006dafea    51
                         push              0x0                                            // 0x006dafeb    6a00
                         {disp8} lea       edx, dword ptr [esp + 0x20]                    // 0x006dafed    8d542420
                         push              edx                                            // 0x006daff1    52
                         mov.s             ecx, esi                                       // 0x006daff2    8bce
                         {disp32} mov      dword ptr [esi + 0x000000dc], eax              // 0x006daff4    8986dc000000
                         call              _jmp_addr_0x006d9290                           // 0x006daffa    e891e2ffff
                         push              eax                                            // 0x006dafff    50
                         call              _jmp_addr_0x007346e0                           // 0x006db000    e8db960500
                         add               esp, 0x08                                      // 0x006db005    83c408
                         mov.s             ecx, esi                                       // 0x006db008    8bce
                         {disp32} mov      dword ptr [esi + 0x000000e0], eax              // 0x006db00a    8986e0000000
                         call              _jmp_addr_0x006db160                           // 0x006db010    e84b010000
                         pop               edi                                            // 0x006db015    5f
                         pop               esi                                            // 0x006db016    5e
                         pop               ebp                                            // 0x006db017    5d
                         pop               ebx                                            // 0x006db018    5b
                         add               esp, 0x10                                      // 0x006db019    83c410
                         ret                                                              // 0x006db01c    c3
                         nop                                                              // 0x006db01d    90
                         nop                                                              // 0x006db01e    90
                         nop                                                              // 0x006db01f    90
_jmp_addr_0x006db020:    {disp8} mov       eax, dword ptr [esp + 0x0c]                    // 0x006db020    8b44240c
                         sub               esp, 0x18                                      // 0x006db024    83ec18
                         test              eax, eax                                       // 0x006db027    85c0
                         {disp8} je        _jmp_addr_0x006db07e                           // 0x006db029    7453
                         {disp32} mov      eax, dword ptr [ecx + 0x00000388]              // 0x006db02b    8b8188030000
                         xor.s             edx, edx                                       // 0x006db031    33d2
                         {disp32} mov      dx, word ptr [ecx + 0x0000038c]                // 0x006db033    668b918c030000
                         push              eax                                            // 0x006db03a    50
                         {disp8} mov       eax, dword ptr [esp + 0x24]                    // 0x006db03b    8b442424
                         push              0x0                                            // 0x006db03f    6a00
                         push              ecx                                            // 0x006db041    51
                         {disp8} mov       dword ptr [esp + 0x30], edx                    // 0x006db042    89542430
                         {disp8} fild      dword ptr [esp + 0x30]                         // 0x006db046    db442430
                         {disp8} lea       edx, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006db04a    8d540001
                         {disp8} mov       eax, dword ptr [esp + 0x28]                    // 0x006db04e    8b442428
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1a6a0]              // 0x006db052    d80da0368c00
                         {disp32} fmul     qword ptr [rdata_bytes + 0x91af0]              // 0x006db058    dc0df0aa9300
                         {disp32} fadd     qword ptr [rdata_bytes + 0x1eb48]              // 0x006db05e    dc05487b8c00
                         fstp              dword ptr [esp]                                // 0x006db064    d91c24
                         push              0x0                                            // 0x006db067    6a00
                         push              0x0                                            // 0x006db069    6a00
                         push              0x0                                            // 0x006db06b    6a00
                         push              0x00d3a6d8                                     // 0x006db06d    68d8a6d300
                         push              edx                                            // 0x006db072    52
                         lea               edx, dword ptr [eax + eax * 0x1]               // 0x006db073    8d1400
                         push              edx                                            // 0x006db076    52
                         {disp8} lea       eax, dword ptr [esp + 0x24]                    // 0x006db077    8d442424
                         push              eax                                            // 0x006db07b    50
                         {disp8} jmp       _jmp_addr_0x006db0c9                           // 0x006db07c    eb4b
_jmp_addr_0x006db07e:    {disp32} mov      edx, dword ptr [ecx + 0x00000388]              // 0x006db07e    8b9188030000
                         xor.s             eax, eax                                       // 0x006db084    33c0
                         {disp32} mov      ax, word ptr [ecx + 0x0000038c]                // 0x006db086    668b818c030000
                         push              edx                                            // 0x006db08d    52
                         {disp8} mov       edx, dword ptr [esp + 0x24]                    // 0x006db08e    8b542424
                         push              0x0                                            // 0x006db092    6a00
                         push              ecx                                            // 0x006db094    51
                         {disp8} mov       dword ptr [esp + 0x30], eax                    // 0x006db095    89442430
                         {disp8} fild      dword ptr [esp + 0x30]                         // 0x006db099    db442430
                         lea               eax, dword ptr [edx + edx * 0x1]               // 0x006db09d    8d0412
                         {disp8} mov       edx, dword ptr [esp + 0x28]                    // 0x006db0a0    8b542428
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1a6a0]              // 0x006db0a4    d80da0368c00
                         {disp32} fmul     qword ptr [rdata_bytes + 0x91af0]              // 0x006db0aa    dc0df0aa9300
                         fstp              dword ptr [esp]                                // 0x006db0b0    d91c24
                         push              0x0                                            // 0x006db0b3    6a00
                         push              0x0                                            // 0x006db0b5    6a00
                         push              0x0                                            // 0x006db0b7    6a00
                         push              0x00d3a6d8                                     // 0x006db0b9    68d8a6d300
                         push              eax                                            // 0x006db0be    50
                         {disp8} lea       eax, dword ptr [edx + edx * 0x1 + 0x01]        // 0x006db0bf    8d441201
                         push              eax                                            // 0x006db0c3    50
                         {disp8} lea       edx, dword ptr [esp + 0x30]                    // 0x006db0c4    8d542430
                         push              edx                                            // 0x006db0c8    52
_jmp_addr_0x006db0c9:    call              _jmp_addr_0x006d9290                           // 0x006db0c9    e8c2e1ffff
                         push              eax                                            // 0x006db0ce    50
                         call              _jmp_addr_0x00608840                           // 0x006db0cf    e86cd7f2ff
                         add               esp, 0x20                                      // 0x006db0d4    83c420
                         or                byte ptr [eax + 0x25], 0x40                    // 0x006db0d7    80482540
                         add               esp, 0x18                                      // 0x006db0db    83c418
                         ret               0x000c                                         // 0x006db0de    c20c00
                         nop                                                              // 0x006db0e1    90
                         nop                                                              // 0x006db0e2    90
                         nop                                                              // 0x006db0e3    90
                         nop                                                              // 0x006db0e4    90
                         nop                                                              // 0x006db0e5    90
                         nop                                                              // 0x006db0e6    90
                         nop                                                              // 0x006db0e7    90
                         nop                                                              // 0x006db0e8    90
                         nop                                                              // 0x006db0e9    90
                         nop                                                              // 0x006db0ea    90
                         nop                                                              // 0x006db0eb    90
                         nop                                                              // 0x006db0ec    90
                         nop                                                              // 0x006db0ed    90
                         nop                                                              // 0x006db0ee    90
                         nop                                                              // 0x006db0ef    90
                         mov               eax, 0x00000001                                // 0x006db0f0    b801000000
                         ret                                                              // 0x006db0f5    c3
                         nop                                                              // 0x006db0f6    90
                         nop                                                              // 0x006db0f7    90
                         nop                                                              // 0x006db0f8    90
                         nop                                                              // 0x006db0f9    90
                         nop                                                              // 0x006db0fa    90
                         nop                                                              // 0x006db0fb    90
                         nop                                                              // 0x006db0fc    90
                         nop                                                              // 0x006db0fd    90
                         nop                                                              // 0x006db0fe    90
                         nop                                                              // 0x006db0ff    90
                         mov               eax, 0x00000001                                // 0x006db100    b801000000
                         ret                                                              // 0x006db105    c3
                         nop                                                              // 0x006db106    90
                         nop                                                              // 0x006db107    90
                         nop                                                              // 0x006db108    90
                         nop                                                              // 0x006db109    90
                         nop                                                              // 0x006db10a    90
                         nop                                                              // 0x006db10b    90
                         nop                                                              // 0x006db10c    90
                         nop                                                              // 0x006db10d    90
                         nop                                                              // 0x006db10e    90
                         nop                                                              // 0x006db10f    90
?DecideWhatToDo@PuzzleSheep@@UAE_NXZ:
                         mov               eax, 0x00000001                                // 0x006db110    b801000000
                         ret                                                              // 0x006db115    c3
                         nop                                                              // 0x006db116    90
                         nop                                                              // 0x006db117    90
                         nop                                                              // 0x006db118    90
                         nop                                                              // 0x006db119    90
                         nop                                                              // 0x006db11a    90
                         nop                                                              // 0x006db11b    90
                         nop                                                              // 0x006db11c    90
                         nop                                                              // 0x006db11d    90
                         nop                                                              // 0x006db11e    90
                         nop                                                              // 0x006db11f    90
?DecideWhatToDo@PuzzleHorse@@UAE_NXZ:
                         mov               eax, 0x00000001                                // 0x006db120    b801000000
                         ret                                                              // 0x006db125    c3
                         nop                                                              // 0x006db126    90
                         nop                                                              // 0x006db127    90
                         nop                                                              // 0x006db128    90
                         nop                                                              // 0x006db129    90
                         nop                                                              // 0x006db12a    90
                         nop                                                              // 0x006db12b    90
                         nop                                                              // 0x006db12c    90
                         nop                                                              // 0x006db12d    90
                         nop                                                              // 0x006db12e    90
                         nop                                                              // 0x006db12f    90
?DecideWhatToDo@PuzzlePig@@UAE_NXZ:
                         mov               eax, 0x00000001                                // 0x006db130    b801000000
                         ret                                                              // 0x006db135    c3
                         nop                                                              // 0x006db136    90
                         nop                                                              // 0x006db137    90
                         nop                                                              // 0x006db138    90
                         nop                                                              // 0x006db139    90
                         nop                                                              // 0x006db13a    90
                         nop                                                              // 0x006db13b    90
                         nop                                                              // 0x006db13c    90
                         nop                                                              // 0x006db13d    90
                         nop                                                              // 0x006db13e    90
                         nop                                                              // 0x006db13f    90
                         mov               eax, 0x00000001                                // 0x006db140    b801000000
                         ret                                                              // 0x006db145    c3
                         nop                                                              // 0x006db146    90
                         nop                                                              // 0x006db147    90
                         nop                                                              // 0x006db148    90
                         nop                                                              // 0x006db149    90
                         nop                                                              // 0x006db14a    90
                         nop                                                              // 0x006db14b    90
                         nop                                                              // 0x006db14c    90
                         nop                                                              // 0x006db14d    90
                         nop                                                              // 0x006db14e    90
                         nop                                                              // 0x006db14f    90
                         mov               eax, 0x00000001                                // 0x006db150    b801000000
                         ret                                                              // 0x006db155    c3
                         nop                                                              // 0x006db156    90
                         nop                                                              // 0x006db157    90
                         nop                                                              // 0x006db158    90
                         nop                                                              // 0x006db159    90
                         nop                                                              // 0x006db15a    90
                         nop                                                              // 0x006db15b    90
                         nop                                                              // 0x006db15c    90
                         nop                                                              // 0x006db15d    90
                         nop                                                              // 0x006db15e    90
                         nop                                                              // 0x006db15f    90
_jmp_addr_0x006db160:    sub               esp, 0x0c                                      // 0x006db160    83ec0c
                         push              esi                                            // 0x006db163    56
                         mov.s             esi, ecx                                       // 0x006db164    8bf1
                         {disp8} mov       eax, dword ptr [esi + 0x48]                    // 0x006db166    8b4648
                         cmp               eax, 0x06                                      // 0x006db169    83f806
                         {disp32} je       _jmp_addr_0x006db508                           // 0x006db16c    0f8496030000
                         cmp               eax, 0x07                                      // 0x006db172    83f807
                         {disp32} je       _jmp_addr_0x006db508                           // 0x006db175    0f848d030000
                         cmp               eax, 0x08                                      // 0x006db17b    83f808
                         {disp32} je       _jmp_addr_0x006db508                           // 0x006db17e    0f8484030000
                         cmp               eax, 0x09                                      // 0x006db184    83f809
                         {disp32} je       _jmp_addr_0x006db508                           // 0x006db187    0f847b030000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f8]              // 0x006db18d    8b8ef8030000
                         test              ecx, ecx                                       // 0x006db193    85c9
                         {disp8} je        _jmp_addr_0x006db1bc                           // 0x006db195    7425
                         mov               eax, dword ptr [ecx]                           // 0x006db197    8b01
                         call              dword ptr [eax + 0x2c]                         // 0x006db199    ff502c
                         test              eax, eax                                       // 0x006db19c    85c0
                         {disp8} je        _jmp_addr_0x006db1bc                           // 0x006db19e    741c
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f8]              // 0x006db1a0    8b8ef8030000
                         push              ecx                                            // 0x006db1a6    51
                         call              _jmp_addr_0x005e6540                           // 0x006db1a7    e894b3f0ff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f8]              // 0x006db1ac    8b8ef8030000
                         mov               edx, dword ptr [ecx]                           // 0x006db1b2    8b11
                         add               esp, 0x04                                      // 0x006db1b4    83c404
                         push              0x0                                            // 0x006db1b7    6a00
                         call              dword ptr [edx + 0xc]                          // 0x006db1b9    ff520c
_jmp_addr_0x006db1bc:    {disp32} mov      ecx, dword ptr [esi + 0x000003fc]              // 0x006db1bc    8b8efc030000
                         test              ecx, ecx                                       // 0x006db1c2    85c9
                         {disp8} je        _jmp_addr_0x006db1eb                           // 0x006db1c4    7425
                         mov               eax, dword ptr [ecx]                           // 0x006db1c6    8b01
                         call              dword ptr [eax + 0x2c]                         // 0x006db1c8    ff502c
                         test              eax, eax                                       // 0x006db1cb    85c0
                         {disp8} je        _jmp_addr_0x006db1eb                           // 0x006db1cd    741c
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]              // 0x006db1cf    8b8efc030000
                         push              ecx                                            // 0x006db1d5    51
                         call              _jmp_addr_0x005e6540                           // 0x006db1d6    e865b3f0ff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]              // 0x006db1db    8b8efc030000
                         mov               edx, dword ptr [ecx]                           // 0x006db1e1    8b11
                         add               esp, 0x04                                      // 0x006db1e3    83c404
                         push              0x0                                            // 0x006db1e6    6a00
                         call              dword ptr [edx + 0xc]                          // 0x006db1e8    ff520c
_jmp_addr_0x006db1eb:    {disp32} mov      ecx, dword ptr [esi + 0x000003f4]              // 0x006db1eb    8b8ef4030000
                         test              ecx, ecx                                       // 0x006db1f1    85c9
                         {disp8} je        _jmp_addr_0x006db21a                           // 0x006db1f3    7425
                         mov               eax, dword ptr [ecx]                           // 0x006db1f5    8b01
                         call              dword ptr [eax + 0x2c]                         // 0x006db1f7    ff502c
                         test              eax, eax                                       // 0x006db1fa    85c0
                         {disp8} je        _jmp_addr_0x006db21a                           // 0x006db1fc    741c
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]              // 0x006db1fe    8b8ef4030000
                         push              ecx                                            // 0x006db204    51
                         call              _jmp_addr_0x005e6540                           // 0x006db205    e836b3f0ff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]              // 0x006db20a    8b8ef4030000
                         mov               edx, dword ptr [ecx]                           // 0x006db210    8b11
                         add               esp, 0x04                                      // 0x006db212    83c404
                         push              0x0                                            // 0x006db215    6a00
                         call              dword ptr [edx + 0xc]                          // 0x006db217    ff520c
_jmp_addr_0x006db21a:    push              ebx                                            // 0x006db21a    53
                         push              edi                                            // 0x006db21b    57
                         mov.s             ecx, esi                                       // 0x006db21c    8bce
                         {disp32} mov      dword ptr [esi + 0x000003f4], 0x00000000       // 0x006db21e    c786f403000000000000
                         {disp32} mov      dword ptr [esi + 0x000003f8], 0x00000000       // 0x006db228    c786f803000000000000
                         {disp32} mov      dword ptr [esi + 0x000003fc], 0x00000000       // 0x006db232    c786fc03000000000000
                         call              _jmp_addr_0x006dab60                           // 0x006db23c    e81ff9ffff
                         mov.s             ecx, esi                                       // 0x006db241    8bce
                         {disp32} mov      dword ptr [esi + 0x000003e4], eax              // 0x006db243    8986e4030000
                         call              _jmp_addr_0x006daba0                           // 0x006db249    e852f9ffff
                         mov.s             ecx, esi                                       // 0x006db24e    8bce
                         {disp32} mov      dword ptr [esi + 0x000003e8], eax              // 0x006db250    8986e8030000
                         call              _jmp_addr_0x006dabe0                           // 0x006db256    e885f9ffff
                         mov.s             ecx, esi                                       // 0x006db25b    8bce
                         {disp32} mov      dword ptr [esi + 0x000003ec], eax              // 0x006db25d    8986ec030000
                         call              _jmp_addr_0x006dac20                           // 0x006db263    e8b8f9ffff
                         {disp32} mov      dword ptr [esi + 0x000003f0], eax              // 0x006db268    8986f0030000
                         {disp8} mov       eax, dword ptr [esi + 0x48]                    // 0x006db26e    8b4648
                         cmp               eax, 0x0a                                      // 0x006db271    83f80a
                         {disp32} je       _jmp_addr_0x006db2fa                           // 0x006db274    0f8480000000
                         cmp               eax, 0x0b                                      // 0x006db27a    83f80b
                         {disp8} je        _jmp_addr_0x006db2fa                           // 0x006db27d    747b
                         push              0x00000aa0                                     // 0x006db27f    68a00a0000
                         push              0x00c09908                                     // 0x006db284    680899c000
                         push              0x00000154                                     // 0x006db289    6854010000
                         call              ?__nw@Base@@SAPAXK@Z                           // 0x006db28e    e85db4d5ff
                         mov.s             edi, eax                                       // 0x006db293    8bf8
                         add               esp, 0x0c                                      // 0x006db295    83c40c
                         test              edi, edi                                       // 0x006db298    85ff
                         mov               ebx, 0x00002000                                // 0x006db29a    bb00200000
                         {disp8} je        _jmp_addr_0x006db2f0                           // 0x006db29f    744f
                         {disp32} mov      eax, dword ptr [esi + 0x000003e8]              // 0x006db2a1    8b86e8030000
                         {disp32} mov      edx, dword ptr [esi + 0x000003e4]              // 0x006db2a7    8b96e4030000
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006db2ad    8d4c0001
                         push              ecx                                            // 0x006db2b1    51
                         {disp8} lea       eax, dword ptr [edx + edx * 0x1 + 0x01]        // 0x006db2b2    8d441201
                         push              eax                                            // 0x006db2b6    50
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                    // 0x006db2b7    8d4c2414
                         push              ecx                                            // 0x006db2bb    51
                         mov.s             ecx, esi                                       // 0x006db2bc    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006db2be    e8cddfffff
                         push              0x14                                           // 0x006db2c3    6a14
                         push              0x00c51350                                     // 0x006db2c5    685013c500
                         push              eax                                            // 0x006db2ca    50
                         mov.s             ecx, edi                                       // 0x006db2cb    8bcf
                         call              _jmp_addr_0x0041d0b0                           // 0x006db2cd    e8de1dd4ff
                         push              0x40000000                                     // 0x006db2d2    6800000040
                         mov.s             ecx, edi                                       // 0x006db2d7    8bcf
                         mov               dword ptr [edi], 0x008f170c                    // 0x006db2d9    c7070c178f00
                         call              @SetScale__6ObjectFf@12                        // 0x006db2df    e81cdff5ff
                         or                word ptr [edi + 0x24], bx                      // 0x006db2e4    66095f24
                         {disp32} mov      dword ptr [esi + 0x000003f8], edi              // 0x006db2e8    89bef8030000
                         {disp8} jmp       _jmp_addr_0x006db361                           // 0x006db2ee    eb71
_jmp_addr_0x006db2f0:    xor.s             edi, edi                                       // 0x006db2f0    33ff
                         {disp32} mov      dword ptr [esi + 0x000003f8], edi              // 0x006db2f2    89bef8030000
                         {disp8} jmp       _jmp_addr_0x006db361                           // 0x006db2f8    eb67
_jmp_addr_0x006db2fa:    push              0x00000a9d                                     // 0x006db2fa    689d0a0000
                         push              0x00c09908                                     // 0x006db2ff    680899c000
                         push              0x00000154                                     // 0x006db304    6854010000
                         call              ?__nw@Base@@SAPAXK@Z                           // 0x006db309    e8e2b3d5ff
                         mov.s             edi, eax                                       // 0x006db30e    8bf8
                         add               esp, 0x0c                                      // 0x006db310    83c40c
                         test              edi, edi                                       // 0x006db313    85ff
                         mov               ebx, 0x00002000                                // 0x006db315    bb00200000
                         {disp8} je        _jmp_addr_0x006db359                           // 0x006db31a    743d
                         {disp32} mov      edx, dword ptr [esi + 0x000003e8]              // 0x006db31c    8b96e8030000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003e4]              // 0x006db322    8b8ee4030000
                         {disp8} lea       eax, dword ptr [edx + edx * 0x1 + 0x01]        // 0x006db328    8d441201
                         push              eax                                            // 0x006db32c    50
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]        // 0x006db32d    8d540901
                         push              edx                                            // 0x006db331    52
                         {disp8} lea       eax, dword ptr [esp + 0x14]                    // 0x006db332    8d442414
                         push              eax                                            // 0x006db336    50
                         mov.s             ecx, esi                                       // 0x006db337    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006db339    e852dfffff
                         push              0x14                                           // 0x006db33e    6a14
                         push              0x00c518e8                                     // 0x006db340    68e818c500
                         push              eax                                            // 0x006db345    50
                         mov.s             ecx, edi                                       // 0x006db346    8bcf
                         call              _jmp_addr_0x00416eb0                           // 0x006db348    e863bbd3ff
                         or                word ptr [edi + 0x24], bx                      // 0x006db34d    66095f24
                         mov               dword ptr [edi], 0x008f0ae0                    // 0x006db351    c707e00a8f00
                         {disp8} jmp       _jmp_addr_0x006db35b                           // 0x006db357    eb02
_jmp_addr_0x006db359:    xor.s             edi, edi                                       // 0x006db359    33ff
_jmp_addr_0x006db35b:    {disp32} mov      dword ptr [esi + 0x000003fc], edi              // 0x006db35b    89befc030000
_jmp_addr_0x006db361:    push              0x00000aa2                                     // 0x006db361    68a20a0000
                         push              0x00c09908                                     // 0x006db366    680899c000
                         push              0x00000154                                     // 0x006db36b    6854010000
                         call              ?__nw@Base@@SAPAXK@Z                           // 0x006db370    e87bb3d5ff
                         mov.s             edi, eax                                       // 0x006db375    8bf8
                         add               esp, 0x0c                                      // 0x006db377    83c40c
                         test              edi, edi                                       // 0x006db37a    85ff
                         {disp8} je        _jmp_addr_0x006db3c7                           // 0x006db37c    7449
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f0]              // 0x006db37e    8b8ef0030000
                         {disp32} mov      eax, dword ptr [esi + 0x000003ec]              // 0x006db384    8b86ec030000
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]        // 0x006db38a    8d540901
                         push              edx                                            // 0x006db38e    52
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006db38f    8d4c0001
                         push              ecx                                            // 0x006db393    51
                         {disp8} lea       edx, dword ptr [esp + 0x14]                    // 0x006db394    8d542414
                         push              edx                                            // 0x006db398    52
                         mov.s             ecx, esi                                       // 0x006db399    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006db39b    e8f0deffff
                         push              0x14                                           // 0x006db3a0    6a14
                         push              0x00c5161c                                     // 0x006db3a2    681c16c500
                         push              eax                                            // 0x006db3a7    50
                         mov.s             ecx, edi                                       // 0x006db3a8    8bcf
                         call              _jmp_addr_0x0041fd30                           // 0x006db3aa    e88149d4ff
                         push              0x40000000                                     // 0x006db3af    6800000040
                         mov.s             ecx, edi                                       // 0x006db3b4    8bcf
                         mov               dword ptr [edi], 0x008efeb4                    // 0x006db3b6    c707b4fe8e00
                         call              @SetScale__6ObjectFf@12                        // 0x006db3bc    e83fdef5ff
                         or                word ptr [edi + 0x24], bx                      // 0x006db3c1    66095f24
                         {disp8} jmp       _jmp_addr_0x006db3c9                           // 0x006db3c5    eb02
_jmp_addr_0x006db3c7:    xor.s             edi, edi                                       // 0x006db3c7    33ff
_jmp_addr_0x006db3c9:    {disp32} mov      eax, dword ptr [esi + 0x000003fc]              // 0x006db3c9    8b86fc030000
                         test              eax, eax                                       // 0x006db3cf    85c0
                         {disp32} mov      dword ptr [esi + 0x000003f4], edi              // 0x006db3d1    89bef4030000
                         mov               edi, 0x00004000                                // 0x006db3d7    bf00400000
                         {disp8} je        _jmp_addr_0x006db419                           // 0x006db3dc    743b
                         mov               ebx, dword ptr [eax]                           // 0x006db3de    8b18
                         {disp32} mov      eax, dword ptr [esi + 0x000003f0]              // 0x006db3e0    8b86f0030000
                         {disp32} mov      edx, dword ptr [esi + 0x000003ec]              // 0x006db3e6    8b96ec030000
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006db3ec    8d4c0001
                         push              ecx                                            // 0x006db3f0    51
                         {disp8} lea       eax, dword ptr [edx + edx * 0x1 + 0x01]        // 0x006db3f1    8d441201
                         push              eax                                            // 0x006db3f5    50
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                    // 0x006db3f6    8d4c2414
                         push              ecx                                            // 0x006db3fa    51
                         mov.s             ecx, esi                                       // 0x006db3fb    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006db3fd    e88edeffff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]              // 0x006db402    8b8efc030000
                         push              eax                                            // 0x006db408    50
                         call              dword ptr [ebx + 0x658]                        // 0x006db409    ff9358060000
                         {disp32} mov      eax, dword ptr [esi + 0x000003fc]              // 0x006db40f    8b86fc030000
                         or                word ptr [eax + 0x24], di                      // 0x006db415    66097824
_jmp_addr_0x006db419:    {disp32} mov      eax, dword ptr [esi + 0x000003f4]              // 0x006db419    8b86f4030000
                         test              eax, eax                                       // 0x006db41f    85c0
                         {disp8} je        _jmp_addr_0x006db45e                           // 0x006db421    743b
                         {disp32} mov      edx, dword ptr [esi + 0x000003f0]              // 0x006db423    8b96f0030000
                         mov               ebx, dword ptr [eax]                           // 0x006db429    8b18
                         {disp32} mov      ecx, dword ptr [esi + 0x000003ec]              // 0x006db42b    8b8eec030000
                         {disp8} lea       eax, dword ptr [edx + edx * 0x1 + 0x01]        // 0x006db431    8d441201
                         push              eax                                            // 0x006db435    50
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]        // 0x006db436    8d540901
                         push              edx                                            // 0x006db43a    52
                         {disp8} lea       eax, dword ptr [esp + 0x14]                    // 0x006db43b    8d442414
                         push              eax                                            // 0x006db43f    50
                         mov.s             ecx, esi                                       // 0x006db440    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006db442    e849deffff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]              // 0x006db447    8b8ef4030000
                         push              eax                                            // 0x006db44d    50
                         call              dword ptr [ebx + 0x658]                        // 0x006db44e    ff9358060000
                         {disp32} mov      eax, dword ptr [esi + 0x000003f4]              // 0x006db454    8b86f4030000
                         or                word ptr [eax + 0x24], di                      // 0x006db45a    66097824
_jmp_addr_0x006db45e:    {disp32} mov      eax, dword ptr [esi + 0x000003f8]              // 0x006db45e    8b86f8030000
                         test              eax, eax                                       // 0x006db464    85c0
                         {disp8} je        _jmp_addr_0x006db4a3                           // 0x006db466    743b
                         {disp32} mov      ecx, dword ptr [esi + 0x000003e8]              // 0x006db468    8b8ee8030000
                         mov               ebx, dword ptr [eax]                           // 0x006db46e    8b18
                         {disp32} mov      eax, dword ptr [esi + 0x000003e4]              // 0x006db470    8b86e4030000
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]        // 0x006db476    8d540901
                         push              edx                                            // 0x006db47a    52
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006db47b    8d4c0001
                         push              ecx                                            // 0x006db47f    51
                         {disp8} lea       edx, dword ptr [esp + 0x14]                    // 0x006db480    8d542414
                         push              edx                                            // 0x006db484    52
                         mov.s             ecx, esi                                       // 0x006db485    8bce
                         call              _jmp_addr_0x006d9290                           // 0x006db487    e804deffff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f8]              // 0x006db48c    8b8ef8030000
                         push              eax                                            // 0x006db492    50
                         call              dword ptr [ebx + 0x658]                        // 0x006db493    ff9358060000
                         {disp32} mov      eax, dword ptr [esi + 0x000003f8]              // 0x006db499    8b86f8030000
                         or                word ptr [eax + 0x24], di                      // 0x006db49f    66097824
_jmp_addr_0x006db4a3:    {disp8} mov       eax, dword ptr [esi + 0x48]                    // 0x006db4a3    8b4648
                         cmp               eax, 0x0a                                      // 0x006db4a6    83f80a
                         pop               edi                                            // 0x006db4a9    5f
                         pop               ebx                                            // 0x006db4aa    5b
                         {disp8} je        _jmp_addr_0x006db4c9                           // 0x006db4ab    741c
                         cmp               eax, 0x0b                                      // 0x006db4ad    83f80b
                         {disp8} je        _jmp_addr_0x006db4c9                           // 0x006db4b0    7417
                         {disp32} mov      eax, dword ptr [esi + 0x000003f8]              // 0x006db4b2    8b86f8030000
                         push              0x0                                            // 0x006db4b8    6a00
                         push              0xa                                            // 0x006db4ba    6a0a
                         push              0x40000000                                     // 0x006db4bc    6800000040
                         push              0xc                                            // 0x006db4c1    6a0c
                         add               eax, 0x14                                      // 0x006db4c3    83c014
                         push              eax                                            // 0x006db4c6    50
                         {disp8} jmp       _jmp_addr_0x006db4de                           // 0x006db4c7    eb15
_jmp_addr_0x006db4c9:    {disp32} mov      ecx, dword ptr [esi + 0x000003fc]              // 0x006db4c9    8b8efc030000
                         push              0x0                                            // 0x006db4cf    6a00
                         push              0xa                                            // 0x006db4d1    6a0a
                         push              0x40000000                                     // 0x006db4d3    6800000040
                         push              0xc                                            // 0x006db4d8    6a0c
                         add               ecx, 0x14                                      // 0x006db4da    83c114
                         push              ecx                                            // 0x006db4dd    51
_jmp_addr_0x006db4de:    call              _jmp_addr_0x0063e580                           // 0x006db4de    e89d30f6ff
                         {disp32} mov      edx, dword ptr [esi + 0x000003f4]              // 0x006db4e3    8b96f4030000
                         add               esp, 0x14                                      // 0x006db4e9    83c414
                         push              0x0                                            // 0x006db4ec    6a00
                         push              0xa                                            // 0x006db4ee    6a0a
                         push              0x40000000                                     // 0x006db4f0    6800000040
                         add               edx, 0x14                                      // 0x006db4f5    83c214
                         push              0xc                                            // 0x006db4f8    6a0c
                         push              edx                                            // 0x006db4fa    52
                         call              _jmp_addr_0x0063e580                           // 0x006db4fb    e88030f6ff
                         add               esp, 0x14                                      // 0x006db500    83c414
                         pop               esi                                            // 0x006db503    5e
                         add               esp, 0x0c                                      // 0x006db504    83c40c
                         ret                                                              // 0x006db507    c3
_jmp_addr_0x006db508:    mov.s             ecx, esi                                       // 0x006db508    8bce
                         call              _jmp_addr_0x006da350                           // 0x006db50a    e841eeffff
                         pop               esi                                            // 0x006db50f    5e
                         add               esp, 0x0c                                      // 0x006db510    83c40c
                         ret                                                              // 0x006db513    c3
                         nop                                                              // 0x006db514    90
                         nop                                                              // 0x006db515    90
                         nop                                                              // 0x006db516    90
                         nop                                                              // 0x006db517    90
                         nop                                                              // 0x006db518    90
                         nop                                                              // 0x006db519    90
                         nop                                                              // 0x006db51a    90
                         nop                                                              // 0x006db51b    90
                         nop                                                              // 0x006db51c    90
                         nop                                                              // 0x006db51d    90
                         nop                                                              // 0x006db51e    90
                         nop                                                              // 0x006db51f    90
_jmp_addr_0x006db520:    {disp8} mov       ecx, dword ptr [ecx + 0x48]                    // 0x006db520    8b4948
                         {disp8} lea       eax, dword ptr [ecx + -0x0a]                   // 0x006db523    8d41f6
                         cmp               eax, 0x08                                      // 0x006db526    83f808
                         {disp8} ja        _jmp_addr_0x006db53e                           // 0x006db529    7713
                         jmp               dword ptr [eax*4 + 0x6db544]                   // 0x006db52b    ff248544b56d00
                         mov               eax, 0x00000007                                // 0x006db532    b807000000
                         ret                                                              // 0x006db537    c3
                         mov               eax, 0x00000008                                // 0x006db538    b808000000
                         ret                                                              // 0x006db53d    c3
_jmp_addr_0x006db53e:    xor.s             eax, eax                                       // 0x006db53e    33c0
                         ret                                                              // 0x006db540    c3

// Snippet: db, [0x006db541, 0x006db544)
.byte 0x8d, 0x49, 0x00            // 0x006db541

// Snippet: jmptbl, [0x006db544, 0x006db568)
.byte 0x32, 0xb5, 0x6d, 0x00      // 0x006db544
.byte 0x38, 0xb5, 0x6d, 0x00      // 0x006db548
.byte 0x32, 0xb5, 0x6d, 0x00      // 0x006db54c
.byte 0x38, 0xb5, 0x6d, 0x00      // 0x006db550
.byte 0x3e, 0xb5, 0x6d, 0x00      // 0x006db554
.byte 0x3e, 0xb5, 0x6d, 0x00      // 0x006db558
.byte 0x3e, 0xb5, 0x6d, 0x00      // 0x006db55c
.byte 0x3e, 0xb5, 0x6d, 0x00      // 0x006db560
.byte 0x32, 0xb5, 0x6d, 0x00      // 0x006db564

// Snippet: db, [0x006db568, 0x006db570)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006db568
.byte 0x90, 0x90, 0x90, 0x90      // 0x006db56c

