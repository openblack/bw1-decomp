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

.globl _jmp_addr_0x0078de70
.globl ?UpdateKeyboard@SubOptionEntryCheckBoxUnChecked@@UAEIW4LH_KEY@@G@Z
.globl ?GetSubMeshData@SubOptionEntryCheckBoxChecked@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntryCheckBoxChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z

start_0x0078de60_0x0078dff0:
// Snippet: asm, [0x0078de60, 0x0078dfd5)
?UpdateKeyboard@SubOptionEntryCheckBoxUnChecked@@UAEIW4LH_KEY@@G@Z:
                         xor.s            eax, eax                               // 0x0078de60    33c0
                         ret              0x0008                                 // 0x0078de62    c20800
                         nop                                                     // 0x0078de65    90
                         nop                                                     // 0x0078de66    90
                         nop                                                     // 0x0078de67    90
                         nop                                                     // 0x0078de68    90
                         nop                                                     // 0x0078de69    90
                         nop                                                     // 0x0078de6a    90
                         nop                                                     // 0x0078de6b    90
                         nop                                                     // 0x0078de6c    90
                         nop                                                     // 0x0078de6d    90
                         nop                                                     // 0x0078de6e    90
                         nop                                                     // 0x0078de6f    90
_jmp_addr_0x0078de70:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078de70    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x0078de74    8b542404
                         push             esi                                    // 0x0078de78    56
                         push             0x1                                    // 0x0078de79    6a01
                         push             0x1                                    // 0x0078de7b    6a01
                         mov.s            esi, ecx                               // 0x0078de7d    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x14]            // 0x0078de7f    8b4c2414
                         push             eax                                    // 0x0078de83    50
                         push             ecx                                    // 0x0078de84    51
                         push             edx                                    // 0x0078de85    52
                         mov.s            ecx, esi                               // 0x0078de86    8bce
                         call             _jmp_addr_0x0078da40                   // 0x0078de88    e8b3fbffff
                         mov              dword ptr [esi], 0x0099ed08            // 0x0078de8d    c70608ed9900
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000000     // 0x0078de93    c7461800000000
                         mov.s            eax, esi                               // 0x0078de9a    8bc6
                         pop              esi                                    // 0x0078de9c    5e
                         ret              0x000c                                 // 0x0078de9d    c20c00
                         mov              dword ptr [ecx], 0x0099ed08            // 0x0078dea0    c70108ed9900
                         {disp32} jmp     _jmp_addr_0x0078da70                   // 0x0078dea6    e9c5fbffff
                         nop                                                     // 0x0078deab    90
                         nop                                                     // 0x0078deac    90
                         nop                                                     // 0x0078dead    90
                         nop                                                     // 0x0078deae    90
                         nop                                                     // 0x0078deaf    90
?GetSubMeshData@SubOptionEntryCheckBoxChecked@@UAEXAAUSubMeshDrawData@@HH@Z:
                         sub              esp, 0x24                              // 0x0078deb0    83ec24
                         {disp8} mov      eax, dword ptr [esp + 0x30]            // 0x0078deb3    8b442430
                         push             esi                                    // 0x0078deb7    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]            // 0x0078deb8    8b74242c
                         push             edi                                    // 0x0078debc    57
                         push             eax                                    // 0x0078debd    50
                         {disp8} mov      dword ptr [esp + 0x14], eax            // 0x0078debe    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078dec2    8b442438
                         push             eax                                    // 0x0078dec6    50
                         mov.s            edi, ecx                               // 0x0078dec7    8bf9
                         push             esi                                    // 0x0078dec9    56
                         call             _jmp_addr_0x0078da80                   // 0x0078deca    e8b1fbffff
                         xor.s            ecx, ecx                               // 0x0078decf    33c9
                         {disp8} mov      cl, byte ptr [edi + 0x04]              // 0x0078ded1    8a4f04
                         xor.s            eax, eax                               // 0x0078ded4    33c0
                         mov              dword ptr [esi], ecx                   // 0x0078ded6    890e
                         mov              cl, -0x01                              // 0x0078ded8    b1ff
                         {disp8} mov      byte ptr [esp + 0x38], cl              // 0x0078deda    884c2438
                         {disp8} mov      byte ptr [esp + 0x39], cl              // 0x0078dede    884c2439
                         {disp8} mov      byte ptr [esp + 0x3a], cl              // 0x0078dee2    884c243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078dee6    884c243b
                         {disp8} mov      edx, dword ptr [esp + 0x38]            // 0x0078deea    8b542438
                         {disp8} mov      dword ptr [esi + 0x08], edx            // 0x0078deee    895608
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078def1    884c243b
                         {disp8} mov      byte ptr [esp + 0x38], al              // 0x0078def5    88442438
                         {disp8} mov      byte ptr [esp + 0x39], al              // 0x0078def9    88442439
                         {disp8} mov      byte ptr [esp + 0x3a], al              // 0x0078defd    8844243a
                         {disp8} mov      ecx, dword ptr [esp + 0x38]            // 0x0078df01    8b4c2438
                         {disp8} mov      dword ptr [esi + 0x54], ecx            // 0x0078df05    894e54
                         mov              ecx, 0x3f800000                        // 0x0078df08    b90000803f
                         {disp8} mov      dword ptr [esi + 0x3c], eax            // 0x0078df0d    89463c
                         {disp8} mov      dword ptr [esi + 0x38], eax            // 0x0078df10    894638
                         {disp8} mov      dword ptr [esi + 0x34], eax            // 0x0078df13    894634
                         {disp8} mov      dword ptr [esi + 0x2c], eax            // 0x0078df16    89462c
                         {disp8} mov      dword ptr [esi + 0x28], eax            // 0x0078df19    894628
                         {disp8} mov      dword ptr [esi + 0x24], eax            // 0x0078df1c    894624
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078df1f    89461c
                         {disp8} mov      dword ptr [esi + 0x18], eax            // 0x0078df22    894618
                         {disp8} mov      dword ptr [esi + 0x14], eax            // 0x0078df25    894614
                         {disp8} mov      dword ptr [esi + 0x30], ecx            // 0x0078df28    894e30
                         {disp8} mov      dword ptr [esi + 0x20], ecx            // 0x0078df2b    894e20
                         {disp8} mov      dword ptr [esi + 0x10], ecx            // 0x0078df2e    894e10
                         {disp8} lea      edx, dword ptr [esp + 0x08]            // 0x0078df31    8d542408
                         push             edx                                    // 0x0078df35    52
                         {disp8} mov      dword ptr [esi + 0x58], eax            // 0x0078df36    894658
                         {disp8} mov      dword ptr [esi + 0x5c], eax            // 0x0078df39    89465c
                         {disp8} mov      dword ptr [esi + 0x40], eax            // 0x0078df3c    894640
                         call             dword ptr [edi + 0x14]                 // 0x0078df3f    ff5714
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078df42    8b44240c
                         add              esp, 0x04                              // 0x0078df46    83c404
                         pop              edi                                    // 0x0078df49    5f
                         {disp8} mov      dword ptr [esi + 0x04], eax            // 0x0078df4a    894604
                         pop              esi                                    // 0x0078df4d    5e
                         add              esp, 0x24                              // 0x0078df4e    83c424
                         ret              0x000c                                 // 0x0078df51    c20c00
                         nop                                                     // 0x0078df54    90
                         nop                                                     // 0x0078df55    90
                         nop                                                     // 0x0078df56    90
                         nop                                                     // 0x0078df57    90
                         nop                                                     // 0x0078df58    90
                         nop                                                     // 0x0078df59    90
                         nop                                                     // 0x0078df5a    90
                         nop                                                     // 0x0078df5b    90
                         nop                                                     // 0x0078df5c    90
                         nop                                                     // 0x0078df5d    90
                         nop                                                     // 0x0078df5e    90
                         nop                                                     // 0x0078df5f    90
?UpdateMouse@SubOptionEntryCheckBoxChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078df60    8b44240c
                         sub              esp, 0x24                              // 0x0078df64    83ec24
                         dec              eax                                    // 0x0078df67    48
                         cmp              eax, 0x03                              // 0x0078df68    83f803
                         push             esi                                    // 0x0078df6b    56
                         mov.s            esi, ecx                               // 0x0078df6c    8bf1
                         {disp8} ja       _jmp_addr_0x0078dfce                   // 0x0078df6e    775e
                         jmp              dword ptr [eax*4 + 0x78dfd8]           // 0x0078df70    ff2485d8df7800
                         {disp8} mov      eax, dword ptr [esi + 0x18]            // 0x0078df77    8b4618
                         test             eax, eax                               // 0x0078df7a    85c0
                         {disp8} jne      _jmp_addr_0x0078dfa6                   // 0x0078df7c    7528
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078df7e    8b0d5c19d000
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078df84    e8c778dcff
                         test             eax, eax                               // 0x0078df89    85c0
                         {disp8} je       _jmp_addr_0x0078dfa6                   // 0x0078df8b    7419
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078df8d    8b0d5c19d000
                         push             0x80000000                             // 0x0078df93    6800000080
                         push             0x2c                                   // 0x0078df98    6a2c
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078df9a    e8b178dcff
                         mov.s            ecx, eax                               // 0x0078df9f    8bc8
                         call             _jmp_addr_0x005d8a10                   // 0x0078dfa1    e86aaae4ff
_jmp_addr_0x0078dfa6:    {disp8} mov      dword ptr [esi + 0x18], 0x00000001     // 0x0078dfa6    c7461801000000
                         pop              esi                                    // 0x0078dfad    5e
                         add              esp, 0x24                              // 0x0078dfae    83c424
                         ret              0x0010                                 // 0x0078dfb1    c21000
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078dfb4    8b442438
                         test             eax, eax                               // 0x0078dfb8    85c0
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000000     // 0x0078dfba    c7461800000000
                         {disp8} je       _jmp_addr_0x0078dfce                   // 0x0078dfc1    740b
                         {disp8} lea      ecx, dword ptr [esp + 0x04]            // 0x0078dfc3    8d4c2404
                         push             ecx                                    // 0x0078dfc7    51
                         call             dword ptr [esi + 0x10]                 // 0x0078dfc8    ff5610
                         add              esp, 0x04                              // 0x0078dfcb    83c404
_jmp_addr_0x0078dfce:    pop              esi                                    // 0x0078dfce    5e
                         add              esp, 0x24                              // 0x0078dfcf    83c424
                         ret              0x0010                                 // 0x0078dfd2    c21000

// Snippet: db, [0x0078dfd5, 0x0078dfd8)
.byte 0x8d, 0x49, 0x00            // 0x0078dfd5

// Snippet: jmptbl, [0x0078dfd8, 0x0078dfe8)
.byte 0x77, 0xdf, 0x78, 0x00      // 0x0078dfd8
.byte 0xb4, 0xdf, 0x78, 0x00      // 0x0078dfdc
.byte 0x77, 0xdf, 0x78, 0x00      // 0x0078dfe0
.byte 0xb4, 0xdf, 0x78, 0x00      // 0x0078dfe4

// Snippet: db, [0x0078dfe8, 0x0078dff0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078dfe8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078dfec

