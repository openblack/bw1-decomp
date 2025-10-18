.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005d8a10
.extern _jmp_addr_0x0078da40
.extern _jmp_addr_0x0078da70
.extern _jmp_addr_0x0078da80
.extern _sprintf
.extern _jmp_addr_0x007dcad0

.globl _jmp_addr_0x0078e3d0
.globl _jmp_addr_0x0078e580
.globl ?UpdateKeyboard@SubOptionEntryScroll@@UAEIW4LH_KEY@@G@Z
.globl ?GetSubMeshData@SubOptionEntryText@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntryText@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z
.globl ?UpdateKeyboard@SubOptionEntryText@@UAEIW4LH_KEY@@G@Z
.globl ?GetSubMeshData@SubOptionEntryListBox@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntryListBox@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z

start_0x0078e3c0_0x0078e750:
// Snippet: asm, [0x0078e3c0, 0x0078e733)
?UpdateKeyboard@SubOptionEntryScroll@@UAEIW4LH_KEY@@G@Z:
                         xor.s            eax, eax                               // 0x0078e3c0    33c0
                         ret              0x0008                                 // 0x0078e3c2    c20800
                         nop                                                     // 0x0078e3c5    90
                         nop                                                     // 0x0078e3c6    90
                         nop                                                     // 0x0078e3c7    90
                         nop                                                     // 0x0078e3c8    90
                         nop                                                     // 0x0078e3c9    90
                         nop                                                     // 0x0078e3ca    90
                         nop                                                     // 0x0078e3cb    90
                         nop                                                     // 0x0078e3cc    90
                         nop                                                     // 0x0078e3cd    90
                         nop                                                     // 0x0078e3ce    90
                         nop                                                     // 0x0078e3cf    90
_jmp_addr_0x0078e3d0:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e3d0    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x0078e3d4    8b542404
                         push             esi                                    // 0x0078e3d8    56
                         push             0x1                                    // 0x0078e3d9    6a01
                         push             0x0                                    // 0x0078e3db    6a00
                         mov.s            esi, ecx                               // 0x0078e3dd    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x14]            // 0x0078e3df    8b4c2414
                         push             eax                                    // 0x0078e3e3    50
                         push             ecx                                    // 0x0078e3e4    51
                         push             edx                                    // 0x0078e3e5    52
                         mov.s            ecx, esi                               // 0x0078e3e6    8bce
                         call             _jmp_addr_0x0078da40                   // 0x0078e3e8    e853f6ffff
                         mov              dword ptr [esi], 0x0099ed48            // 0x0078e3ed    c70648ed9900
                         mov.s            eax, esi                               // 0x0078e3f3    8bc6
                         pop              esi                                    // 0x0078e3f5    5e
                         ret              0x000c                                 // 0x0078e3f6    c20c00
                         nop                                                     // 0x0078e3f9    90
                         nop                                                     // 0x0078e3fa    90
                         nop                                                     // 0x0078e3fb    90
                         nop                                                     // 0x0078e3fc    90
                         nop                                                     // 0x0078e3fd    90
                         nop                                                     // 0x0078e3fe    90
                         nop                                                     // 0x0078e3ff    90
                         mov              dword ptr [ecx], 0x0099ed48            // 0x0078e400    c70148ed9900
                         {disp32} jmp     _jmp_addr_0x0078da70                   // 0x0078e406    e965f6ffff
                         nop                                                     // 0x0078e40b    90
                         nop                                                     // 0x0078e40c    90
                         nop                                                     // 0x0078e40d    90
                         nop                                                     // 0x0078e40e    90
                         nop                                                     // 0x0078e40f    90
?GetSubMeshData@SubOptionEntryText@@UAEXAAUSubMeshDrawData@@HH@Z:
                         sub              esp, 0x24                              // 0x0078e410    83ec24
                         {disp8} mov      eax, dword ptr [esp + 0x30]            // 0x0078e413    8b442430
                         push             esi                                    // 0x0078e417    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]            // 0x0078e418    8b74242c
                         push             edi                                    // 0x0078e41c    57
                         push             eax                                    // 0x0078e41d    50
                         {disp8} mov      dword ptr [esp + 0x14], eax            // 0x0078e41e    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078e422    8b442438
                         push             eax                                    // 0x0078e426    50
                         mov.s            edi, ecx                               // 0x0078e427    8bf9
                         push             esi                                    // 0x0078e429    56
                         call             _jmp_addr_0x0078da80                   // 0x0078e42a    e851f6ffff
                         xor.s            ecx, ecx                               // 0x0078e42f    33c9
                         {disp8} mov      cl, byte ptr [edi + 0x04]              // 0x0078e431    8a4f04
                         xor.s            eax, eax                               // 0x0078e434    33c0
                         mov              dword ptr [esi], ecx                   // 0x0078e436    890e
                         mov              cl, -0x01                              // 0x0078e438    b1ff
                         {disp8} mov      byte ptr [esp + 0x38], cl              // 0x0078e43a    884c2438
                         {disp8} mov      byte ptr [esp + 0x39], cl              // 0x0078e43e    884c2439
                         {disp8} mov      byte ptr [esp + 0x3a], cl              // 0x0078e442    884c243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e446    884c243b
                         {disp8} mov      edx, dword ptr [esp + 0x38]            // 0x0078e44a    8b542438
                         {disp8} mov      dword ptr [esi + 0x08], edx            // 0x0078e44e    895608
                         mov              edx, 0x3f800000                        // 0x0078e451    ba0000803f
                         {disp8} mov      dword ptr [esi + 0x30], edx            // 0x0078e456    895630
                         {disp8} mov      dword ptr [esi + 0x20], edx            // 0x0078e459    895620
                         {disp8} mov      dword ptr [esi + 0x10], edx            // 0x0078e45c    895610
                         {disp8} mov      dword ptr [esi + 0x3c], eax            // 0x0078e45f    89463c
                         {disp8} mov      dword ptr [esi + 0x38], eax            // 0x0078e462    894638
                         {disp8} mov      dword ptr [esi + 0x34], eax            // 0x0078e465    894634
                         {disp8} mov      dword ptr [esi + 0x2c], eax            // 0x0078e468    89462c
                         {disp8} mov      dword ptr [esi + 0x28], eax            // 0x0078e46b    894628
                         {disp8} mov      dword ptr [esi + 0x24], eax            // 0x0078e46e    894624
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078e471    89461c
                         {disp8} mov      dword ptr [esi + 0x18], eax            // 0x0078e474    894618
                         {disp8} mov      dword ptr [esi + 0x14], eax            // 0x0078e477    894614
                         {disp8} mov      byte ptr [esp + 0x38], al              // 0x0078e47a    88442438
                         {disp8} mov      byte ptr [esp + 0x39], al              // 0x0078e47e    88442439
                         {disp8} mov      byte ptr [esp + 0x3a], al              // 0x0078e482    8844243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e486    884c243b
                         {disp8} mov      ecx, dword ptr [esp + 0x38]            // 0x0078e48a    8b4c2438
                         {disp8} lea      edx, dword ptr [esp + 0x08]            // 0x0078e48e    8d542408
                         push             edx                                    // 0x0078e492    52
                         {disp8} mov      dword ptr [esi + 0x54], ecx            // 0x0078e493    894e54
                         {disp8} mov      dword ptr [esi + 0x58], eax            // 0x0078e496    894658
                         {disp8} mov      dword ptr [esi + 0x5c], eax            // 0x0078e499    89465c
                         call             dword ptr [edi + 0x14]                 // 0x0078e49c    ff5714
                         {disp8} mov      eax, dword ptr [esp + 0x28]            // 0x0078e49f    8b442428
                         {disp8} mov      ecx, dword ptr [esp + 0x18]            // 0x0078e4a3    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x1c]            // 0x0078e4a7    8b54241c
                         add              esp, 0x04                              // 0x0078e4ab    83c404
                         {disp8} mov      dword ptr [esi + 0x40], eax            // 0x0078e4ae    894640
                         {disp8} mov      eax, dword ptr [esp + 0x1c]            // 0x0078e4b1    8b44241c
                         {disp8} mov      dword ptr [esi + 0x44], ecx            // 0x0078e4b5    894e44
                         {disp8} mov      ecx, dword ptr [esp + 0x20]            // 0x0078e4b8    8b4c2420
                         {disp8} mov      dword ptr [esi + 0x48], edx            // 0x0078e4bc    895648
                         {disp8} mov      edx, dword ptr [esp + 0x08]            // 0x0078e4bf    8b542408
                         pop              edi                                    // 0x0078e4c3    5f
                         {disp8} mov      dword ptr [esi + 0x4c], eax            // 0x0078e4c4    89464c
                         {disp8} mov      dword ptr [esi + 0x50], ecx            // 0x0078e4c7    894e50
                         {disp8} mov      dword ptr [esi + 0x04], edx            // 0x0078e4ca    895604
                         pop              esi                                    // 0x0078e4cd    5e
                         add              esp, 0x24                              // 0x0078e4ce    83c424
                         ret              0x000c                                 // 0x0078e4d1    c20c00
                         nop                                                     // 0x0078e4d4    90
                         nop                                                     // 0x0078e4d5    90
                         nop                                                     // 0x0078e4d6    90
                         nop                                                     // 0x0078e4d7    90
                         nop                                                     // 0x0078e4d8    90
                         nop                                                     // 0x0078e4d9    90
                         nop                                                     // 0x0078e4da    90
                         nop                                                     // 0x0078e4db    90
                         nop                                                     // 0x0078e4dc    90
                         nop                                                     // 0x0078e4dd    90
                         nop                                                     // 0x0078e4de    90
                         nop                                                     // 0x0078e4df    90
?UpdateMouse@SubOptionEntryText@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         ret              0x0010                                 // 0x0078e4e0    c21000
                         nop                                                     // 0x0078e4e3    90
                         nop                                                     // 0x0078e4e4    90
                         nop                                                     // 0x0078e4e5    90
                         nop                                                     // 0x0078e4e6    90
                         nop                                                     // 0x0078e4e7    90
                         nop                                                     // 0x0078e4e8    90
                         nop                                                     // 0x0078e4e9    90
                         nop                                                     // 0x0078e4ea    90
                         nop                                                     // 0x0078e4eb    90
                         nop                                                     // 0x0078e4ec    90
                         nop                                                     // 0x0078e4ed    90
                         nop                                                     // 0x0078e4ee    90
                         nop                                                     // 0x0078e4ef    90
?UpdateKeyboard@SubOptionEntryText@@UAEIW4LH_KEY@@G@Z:
                         sub              esp, 0x24                              // 0x0078e4f0    83ec24
                         push             esi                                    // 0x0078e4f3    56
                         {disp8} lea      eax, dword ptr [esp + 0x04]            // 0x0078e4f4    8d442404
                         push             edi                                    // 0x0078e4f8    57
                         mov.s            esi, ecx                               // 0x0078e4f9    8bf1
                         push             eax                                    // 0x0078e4fb    50
                         call             dword ptr [esi + 0x14]                 // 0x0078e4fc    ff5614
                         {disp8} mov      eax, dword ptr [esp + 0x34]            // 0x0078e4ff    8b442434
                         add              esp, 0x04                              // 0x0078e503    83c404
                         cmp              eax, 0x0e                              // 0x0078e506    83f80e
                         {disp8} jne      _jmp_addr_0x0078e523                   // 0x0078e509    7518
                         {disp8} mov      edx, dword ptr [esp + 0x14]            // 0x0078e50b    8b542414
                         or               ecx, 0xffffffff                        // 0x0078e50f    83c9ff
                         xor.s            eax, eax                               // 0x0078e512    33c0
                         mov.s            edi, edx                               // 0x0078e514    8bfa
                         repne scasb                                             // 0x0078e516    f2ae
                         not              ecx                                    // 0x0078e518    f7d1
                         dec              ecx                                    // 0x0078e51a    49
                         {disp8} je       _jmp_addr_0x0078e564                   // 0x0078e51b    7447
                         {disp8} mov      byte ptr [edx + ecx * 0x1 + -0x01], al // 0x0078e51d    88440aff
                         {disp8} jmp      _jmp_addr_0x0078e564                   // 0x0078e521    eb41
_jmp_addr_0x0078e523:    cmp              eax, 0x1c                              // 0x0078e523    83f81c
                         {disp8} je       _jmp_addr_0x0078e564                   // 0x0078e526    743c
                         {disp8} mov      edi, dword ptr [esp + 0x34]            // 0x0078e528    8b7c2434
                         xor.s            ecx, ecx                               // 0x0078e52c    33c9
                         {disp32} mov     cx, word ptr [rdata_bytes + 0xf861c]   // 0x0078e52e    668b0d1c169a00
                         and.s            ecx, edi                               // 0x0078e535    23cf
                         test             cx, cx                                 // 0x0078e537    6685c9
                         {disp8} je       _jmp_addr_0x0078e540                   // 0x0078e53a    7404
                         push             0x1                                    // 0x0078e53c    6a01
                         {disp8} jmp      _jmp_addr_0x0078e542                   // 0x0078e53e    eb02
_jmp_addr_0x0078e540:    push             0x0                                    // 0x0078e540    6a00
_jmp_addr_0x0078e542:    push             eax                                    // 0x0078e542    50
                         mov              ecx, 0x00e8536c                        // 0x0078e543    b96c53e800
                         call             _jmp_addr_0x007dcad0                   // 0x0078e548    e883e50400
                         movsx            edx, al                                // 0x0078e54d    0fbed0
                         {disp8} mov      eax, dword ptr [esp + 0x14]            // 0x0078e550    8b442414
                         push             edx                                    // 0x0078e554    52
                         push             eax                                    // 0x0078e555    50
                         push             0x009cb5d4                             // 0x0078e556    68d4b59c00
                         push             eax                                    // 0x0078e55b    50
                         call             _sprintf                               // 0x0078e55c    e871720300
                         add              esp, 0x10                              // 0x0078e561    83c410
_jmp_addr_0x0078e564:    {disp8} lea      eax, dword ptr [esp + 0x08]            // 0x0078e564    8d442408
                         push             eax                                    // 0x0078e568    50
                         call             dword ptr [esi + 0x10]                 // 0x0078e569    ff5610
                         add              esp, 0x04                              // 0x0078e56c    83c404
                         pop              edi                                    // 0x0078e56f    5f
                         xor.s            eax, eax                               // 0x0078e570    33c0
                         pop              esi                                    // 0x0078e572    5e
                         add              esp, 0x24                              // 0x0078e573    83c424
                         ret              0x0008                                 // 0x0078e576    c20800
                         nop                                                     // 0x0078e579    90
                         nop                                                     // 0x0078e57a    90
                         nop                                                     // 0x0078e57b    90
                         nop                                                     // 0x0078e57c    90
                         nop                                                     // 0x0078e57d    90
                         nop                                                     // 0x0078e57e    90
                         nop                                                     // 0x0078e57f    90
_jmp_addr_0x0078e580:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e580    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x0078e584    8b542404
                         push             esi                                    // 0x0078e588    56
                         push             0x1                                    // 0x0078e589    6a01
                         push             0x0                                    // 0x0078e58b    6a00
                         mov.s            esi, ecx                               // 0x0078e58d    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x14]            // 0x0078e58f    8b4c2414
                         push             eax                                    // 0x0078e593    50
                         push             ecx                                    // 0x0078e594    51
                         push             edx                                    // 0x0078e595    52
                         mov.s            ecx, esi                               // 0x0078e596    8bce
                         call             _jmp_addr_0x0078da40                   // 0x0078e598    e8a3f4ffff
                         mov              dword ptr [esi], 0x0099ed58            // 0x0078e59d    c70658ed9900
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000000     // 0x0078e5a3    c7461800000000
                         {disp8} mov      dword ptr [esi + 0x1c], 0x00000000     // 0x0078e5aa    c7461c00000000
                         mov.s            eax, esi                               // 0x0078e5b1    8bc6
                         pop              esi                                    // 0x0078e5b3    5e
                         ret              0x000c                                 // 0x0078e5b4    c20c00
                         nop                                                     // 0x0078e5b7    90
                         nop                                                     // 0x0078e5b8    90
                         nop                                                     // 0x0078e5b9    90
                         nop                                                     // 0x0078e5ba    90
                         nop                                                     // 0x0078e5bb    90
                         nop                                                     // 0x0078e5bc    90
                         nop                                                     // 0x0078e5bd    90
                         nop                                                     // 0x0078e5be    90
                         nop                                                     // 0x0078e5bf    90
                         mov              dword ptr [ecx], 0x0099ed58            // 0x0078e5c0    c70158ed9900
                         {disp32} jmp     _jmp_addr_0x0078da70                   // 0x0078e5c6    e9a5f4ffff
                         nop                                                     // 0x0078e5cb    90
                         nop                                                     // 0x0078e5cc    90
                         nop                                                     // 0x0078e5cd    90
                         nop                                                     // 0x0078e5ce    90
                         nop                                                     // 0x0078e5cf    90
?GetSubMeshData@SubOptionEntryListBox@@UAEXAAUSubMeshDrawData@@HH@Z:
                         sub              esp, 0x24                              // 0x0078e5d0    83ec24
                         {disp8} mov      eax, dword ptr [esp + 0x30]            // 0x0078e5d3    8b442430
                         push             esi                                    // 0x0078e5d7    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]            // 0x0078e5d8    8b74242c
                         push             edi                                    // 0x0078e5dc    57
                         push             eax                                    // 0x0078e5dd    50
                         {disp8} mov      dword ptr [esp + 0x14], eax            // 0x0078e5de    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078e5e2    8b442438
                         push             eax                                    // 0x0078e5e6    50
                         mov.s            edi, ecx                               // 0x0078e5e7    8bf9
                         push             esi                                    // 0x0078e5e9    56
                         call             _jmp_addr_0x0078da80                   // 0x0078e5ea    e891f4ffff
                         xor.s            ecx, ecx                               // 0x0078e5ef    33c9
                         {disp8} mov      cl, byte ptr [edi + 0x04]              // 0x0078e5f1    8a4f04
                         xor.s            eax, eax                               // 0x0078e5f4    33c0
                         mov              dword ptr [esi], ecx                   // 0x0078e5f6    890e
                         mov              cl, -0x01                              // 0x0078e5f8    b1ff
                         {disp8} mov      byte ptr [esp + 0x38], cl              // 0x0078e5fa    884c2438
                         {disp8} mov      byte ptr [esp + 0x39], cl              // 0x0078e5fe    884c2439
                         {disp8} mov      byte ptr [esp + 0x3a], cl              // 0x0078e602    884c243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e606    884c243b
                         {disp8} mov      edx, dword ptr [esp + 0x38]            // 0x0078e60a    8b542438
                         {disp8} mov      dword ptr [esi + 0x08], edx            // 0x0078e60e    895608
                         {disp8} mov      dword ptr [esi + 0x3c], eax            // 0x0078e611    89463c
                         {disp8} mov      dword ptr [esi + 0x38], eax            // 0x0078e614    894638
                         {disp8} mov      dword ptr [esi + 0x34], eax            // 0x0078e617    894634
                         {disp8} mov      dword ptr [esi + 0x2c], eax            // 0x0078e61a    89462c
                         {disp8} mov      dword ptr [esi + 0x28], eax            // 0x0078e61d    894628
                         {disp8} mov      dword ptr [esi + 0x24], eax            // 0x0078e620    894624
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078e623    89461c
                         {disp8} mov      dword ptr [esi + 0x18], eax            // 0x0078e626    894618
                         {disp8} mov      dword ptr [esi + 0x14], eax            // 0x0078e629    894614
                         mov              edx, 0x3f800000                        // 0x0078e62c    ba0000803f
                         {disp8} mov      dword ptr [esi + 0x30], edx            // 0x0078e631    895630
                         {disp8} mov      dword ptr [esi + 0x20], edx            // 0x0078e634    895620
                         {disp8} mov      dword ptr [esi + 0x10], edx            // 0x0078e637    895610
                         {disp8} mov      byte ptr [esp + 0x38], al              // 0x0078e63a    88442438
                         {disp8} mov      byte ptr [esp + 0x39], al              // 0x0078e63e    88442439
                         {disp8} mov      byte ptr [esp + 0x3a], al              // 0x0078e642    8844243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e646    884c243b
                         {disp8} mov      ecx, dword ptr [esp + 0x38]            // 0x0078e64a    8b4c2438
                         {disp8} mov      dword ptr [esi + 0x58], eax            // 0x0078e64e    894658
                         {disp8} mov      dword ptr [esi + 0x5c], eax            // 0x0078e651    89465c
                         {disp8} mov      dword ptr [esi + 0x54], ecx            // 0x0078e654    894e54
                         {disp8} mov      edx, dword ptr [edi + 0x1c]            // 0x0078e657    8b571c
                         {disp8} lea      eax, dword ptr [esp + 0x08]            // 0x0078e65a    8d442408
                         push             eax                                    // 0x0078e65e    50
                         {disp8} mov      dword ptr [esp + 0x2c], edx            // 0x0078e65f    8954242c
                         call             dword ptr [edi + 0x14]                 // 0x0078e663    ff5714
                         {disp8} mov      ecx, dword ptr [esp + 0x28]            // 0x0078e666    8b4c2428
                         {disp8} mov      edx, dword ptr [esp + 0x18]            // 0x0078e66a    8b542418
                         {disp8} mov      eax, dword ptr [esp + 0x1c]            // 0x0078e66e    8b44241c
                         add              esp, 0x04                              // 0x0078e672    83c404
                         {disp8} mov      dword ptr [esi + 0x40], ecx            // 0x0078e675    894e40
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]            // 0x0078e678    8b4c241c
                         {disp8} mov      dword ptr [esi + 0x44], edx            // 0x0078e67c    895644
                         {disp8} mov      edx, dword ptr [esp + 0x20]            // 0x0078e67f    8b542420
                         {disp8} mov      dword ptr [esi + 0x48], eax            // 0x0078e683    894648
                         {disp8} mov      eax, dword ptr [esp + 0x08]            // 0x0078e686    8b442408
                         pop              edi                                    // 0x0078e68a    5f
                         {disp8} mov      dword ptr [esi + 0x4c], ecx            // 0x0078e68b    894e4c
                         {disp8} mov      dword ptr [esi + 0x50], edx            // 0x0078e68e    895650
                         {disp8} mov      dword ptr [esi + 0x04], eax            // 0x0078e691    894604
                         pop              esi                                    // 0x0078e694    5e
                         add              esp, 0x24                              // 0x0078e695    83c424
                         ret              0x000c                                 // 0x0078e698    c20c00
                         nop                                                     // 0x0078e69b    90
                         nop                                                     // 0x0078e69c    90
                         nop                                                     // 0x0078e69d    90
                         nop                                                     // 0x0078e69e    90
                         nop                                                     // 0x0078e69f    90
?UpdateMouse@SubOptionEntryListBox@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e6a0    8b44240c
                         sub              esp, 0x24                              // 0x0078e6a4    83ec24
                         push             esi                                    // 0x0078e6a7    56
                         dec              eax                                    // 0x0078e6a8    48
                         cmp              eax, 0x03                              // 0x0078e6a9    83f803
                         push             edi                                    // 0x0078e6ac    57
                         {disp8} mov      edi, dword ptr [esp + 0x34]            // 0x0078e6ad    8b7c2434
                         mov.s            esi, ecx                               // 0x0078e6b1    8bf1
                         {disp8} ja       _jmp_addr_0x0078e718                   // 0x0078e6b3    7763
                         jmp              dword ptr [eax*4 + 0x78e734]           // 0x0078e6b5    ff248534e77800
                         {disp8} mov      eax, dword ptr [esi + 0x18]            // 0x0078e6bc    8b4618
                         test             eax, eax                               // 0x0078e6bf    85c0
                         {disp8} jne      _jmp_addr_0x0078e6eb                   // 0x0078e6c1    7528
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078e6c3    8b0d5c19d000
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078e6c9    e88271dcff
                         test             eax, eax                               // 0x0078e6ce    85c0
                         {disp8} je       _jmp_addr_0x0078e6eb                   // 0x0078e6d0    7419
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078e6d2    8b0d5c19d000
                         push             0x80000000                             // 0x0078e6d8    6800000080
                         push             0x2c                                   // 0x0078e6dd    6a2c
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078e6df    e86c71dcff
                         mov.s            ecx, eax                               // 0x0078e6e4    8bc8
                         call             _jmp_addr_0x005d8a10                   // 0x0078e6e6    e825a3e4ff
_jmp_addr_0x0078e6eb:    {disp8} mov      dword ptr [esi + 0x18], 0x00000001     // 0x0078e6eb    c7461801000000
                         {disp8} mov      dword ptr [esi + 0x20], edi            // 0x0078e6f2    897e20
                         {disp8} jmp      _jmp_addr_0x0078e718                   // 0x0078e6f5    eb21
                         {disp8} mov      eax, dword ptr [esp + 0x3c]            // 0x0078e6f7    8b44243c
                         test             eax, eax                               // 0x0078e6fb    85c0
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000000     // 0x0078e6fd    c7461800000000
                         {disp8} je       _jmp_addr_0x0078e711                   // 0x0078e704    740b
                         {disp8} lea      ecx, dword ptr [esp + 0x08]            // 0x0078e706    8d4c2408
                         push             ecx                                    // 0x0078e70a    51
                         call             dword ptr [esi + 0x10]                 // 0x0078e70b    ff5610
                         add              esp, 0x04                              // 0x0078e70e    83c404
_jmp_addr_0x0078e711:    {disp8} mov      dword ptr [esi + 0x1c], 0x00000000     // 0x0078e711    c7461c00000000
_jmp_addr_0x0078e718:    cmp              dword ptr [esi + 0x18], 0x01           // 0x0078e718    837e1801
                         {disp8} jne      _jmp_addr_0x0078e72b                   // 0x0078e71c    750d
                         {disp8} mov      eax, dword ptr [esi + 0x20]            // 0x0078e71e    8b4620
                         mov.s            edx, edi                               // 0x0078e721    8bd7
                         sub.s            edx, eax                               // 0x0078e723    2bd0
                         {disp8} mov      dword ptr [esi + 0x1c], edx            // 0x0078e725    89561c
                         {disp8} mov      dword ptr [esi + 0x20], edi            // 0x0078e728    897e20
_jmp_addr_0x0078e72b:    pop              edi                                    // 0x0078e72b    5f
                         pop              esi                                    // 0x0078e72c    5e
                         add              esp, 0x24                              // 0x0078e72d    83c424
                         ret              0x0010                                 // 0x0078e730    c21000

// Snippet: db, [0x0078e733, 0x0078e734)
.byte 0x90                        // 0x0078e733

// Snippet: jmptbl, [0x0078e734, 0x0078e744)
.byte 0xbc, 0xe6, 0x78, 0x00      // 0x0078e734
.byte 0xf7, 0xe6, 0x78, 0x00      // 0x0078e738
.byte 0xbc, 0xe6, 0x78, 0x00      // 0x0078e73c
.byte 0xf7, 0xe6, 0x78, 0x00      // 0x0078e740

// Snippet: db, [0x0078e744, 0x0078e750)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078e744
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078e748
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078e74c

