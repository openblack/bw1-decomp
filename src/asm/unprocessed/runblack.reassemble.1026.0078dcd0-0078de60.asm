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

.globl _jmp_addr_0x0078dce0
.globl ?UpdateKeyboard@SubOptionEntryButton@@UAEIW4LH_KEY@@G@Z
.globl ?GetSubMeshData@SubOptionEntryCheckBoxUnChecked@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntryCheckBoxUnChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z

start_0x0078dcd0_0x0078de60:
// Snippet: asm, [0x0078dcd0, 0x0078de45)
?UpdateKeyboard@SubOptionEntryButton@@UAEIW4LH_KEY@@G@Z:
                         xor.s            eax, eax                               // 0x0078dcd0    33c0
                         ret              0x0008                                 // 0x0078dcd2    c20800
                         nop                                                     // 0x0078dcd5    90
                         nop                                                     // 0x0078dcd6    90
                         nop                                                     // 0x0078dcd7    90
                         nop                                                     // 0x0078dcd8    90
                         nop                                                     // 0x0078dcd9    90
                         nop                                                     // 0x0078dcda    90
                         nop                                                     // 0x0078dcdb    90
                         nop                                                     // 0x0078dcdc    90
                         nop                                                     // 0x0078dcdd    90
                         nop                                                     // 0x0078dcde    90
                         nop                                                     // 0x0078dcdf    90
_jmp_addr_0x0078dce0:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078dce0    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x0078dce4    8b542404
                         push             esi                                    // 0x0078dce8    56
                         push             0x1                                    // 0x0078dce9    6a01
                         push             0x1                                    // 0x0078dceb    6a01
                         mov.s            esi, ecx                               // 0x0078dced    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x14]            // 0x0078dcef    8b4c2414
                         push             eax                                    // 0x0078dcf3    50
                         push             ecx                                    // 0x0078dcf4    51
                         push             edx                                    // 0x0078dcf5    52
                         mov.s            ecx, esi                               // 0x0078dcf6    8bce
                         call             _jmp_addr_0x0078da40                   // 0x0078dcf8    e843fdffff
                         mov              dword ptr [esi], 0x0099ecf8            // 0x0078dcfd    c706f8ec9900
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000000     // 0x0078dd03    c7461800000000
                         mov.s            eax, esi                               // 0x0078dd0a    8bc6
                         pop              esi                                    // 0x0078dd0c    5e
                         ret              0x000c                                 // 0x0078dd0d    c20c00
                         mov              dword ptr [ecx], 0x0099ecf8            // 0x0078dd10    c701f8ec9900
                         {disp32} jmp     _jmp_addr_0x0078da70                   // 0x0078dd16    e955fdffff
                         nop                                                     // 0x0078dd1b    90
                         nop                                                     // 0x0078dd1c    90
                         nop                                                     // 0x0078dd1d    90
                         nop                                                     // 0x0078dd1e    90
                         nop                                                     // 0x0078dd1f    90
?GetSubMeshData@SubOptionEntryCheckBoxUnChecked@@UAEXAAUSubMeshDrawData@@HH@Z:
                         sub              esp, 0x24                              // 0x0078dd20    83ec24
                         {disp8} mov      eax, dword ptr [esp + 0x30]            // 0x0078dd23    8b442430
                         push             esi                                    // 0x0078dd27    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]            // 0x0078dd28    8b74242c
                         push             edi                                    // 0x0078dd2c    57
                         push             eax                                    // 0x0078dd2d    50
                         {disp8} mov      dword ptr [esp + 0x14], eax            // 0x0078dd2e    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078dd32    8b442438
                         push             eax                                    // 0x0078dd36    50
                         mov.s            edi, ecx                               // 0x0078dd37    8bf9
                         push             esi                                    // 0x0078dd39    56
                         call             _jmp_addr_0x0078da80                   // 0x0078dd3a    e841fdffff
                         xor.s            ecx, ecx                               // 0x0078dd3f    33c9
                         {disp8} mov      cl, byte ptr [edi + 0x04]              // 0x0078dd41    8a4f04
                         xor.s            eax, eax                               // 0x0078dd44    33c0
                         mov              dword ptr [esi], ecx                   // 0x0078dd46    890e
                         mov              cl, -0x01                              // 0x0078dd48    b1ff
                         {disp8} mov      byte ptr [esp + 0x38], cl              // 0x0078dd4a    884c2438
                         {disp8} mov      byte ptr [esp + 0x39], cl              // 0x0078dd4e    884c2439
                         {disp8} mov      byte ptr [esp + 0x3a], cl              // 0x0078dd52    884c243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078dd56    884c243b
                         {disp8} mov      edx, dword ptr [esp + 0x38]            // 0x0078dd5a    8b542438
                         {disp8} mov      dword ptr [esi + 0x08], edx            // 0x0078dd5e    895608
                         mov              edx, 0x3f800000                        // 0x0078dd61    ba0000803f
                         {disp8} mov      dword ptr [esi + 0x30], edx            // 0x0078dd66    895630
                         {disp8} mov      dword ptr [esi + 0x20], edx            // 0x0078dd69    895620
                         {disp8} mov      dword ptr [esi + 0x10], edx            // 0x0078dd6c    895610
                         {disp8} mov      dword ptr [esi + 0x3c], eax            // 0x0078dd6f    89463c
                         {disp8} mov      dword ptr [esi + 0x38], eax            // 0x0078dd72    894638
                         {disp8} mov      dword ptr [esi + 0x34], eax            // 0x0078dd75    894634
                         {disp8} mov      dword ptr [esi + 0x2c], eax            // 0x0078dd78    89462c
                         {disp8} mov      dword ptr [esi + 0x28], eax            // 0x0078dd7b    894628
                         {disp8} mov      dword ptr [esi + 0x24], eax            // 0x0078dd7e    894624
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078dd81    89461c
                         {disp8} mov      dword ptr [esi + 0x18], eax            // 0x0078dd84    894618
                         {disp8} mov      dword ptr [esi + 0x14], eax            // 0x0078dd87    894614
                         {disp8} mov      byte ptr [esp + 0x38], al              // 0x0078dd8a    88442438
                         {disp8} mov      byte ptr [esp + 0x39], al              // 0x0078dd8e    88442439
                         {disp8} mov      byte ptr [esp + 0x3a], al              // 0x0078dd92    8844243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078dd96    884c243b
                         {disp8} mov      ecx, dword ptr [esp + 0x38]            // 0x0078dd9a    8b4c2438
                         {disp8} lea      edx, dword ptr [esp + 0x08]            // 0x0078dd9e    8d542408
                         push             edx                                    // 0x0078dda2    52
                         {disp8} mov      dword ptr [esi + 0x54], ecx            // 0x0078dda3    894e54
                         {disp8} mov      dword ptr [esi + 0x58], eax            // 0x0078dda6    894658
                         {disp8} mov      dword ptr [esi + 0x5c], eax            // 0x0078dda9    89465c
                         {disp8} mov      dword ptr [esi + 0x40], eax            // 0x0078ddac    894640
                         call             dword ptr [edi + 0x14]                 // 0x0078ddaf    ff5714
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078ddb2    8b44240c
                         add              esp, 0x04                              // 0x0078ddb6    83c404
                         pop              edi                                    // 0x0078ddb9    5f
                         {disp8} mov      dword ptr [esi + 0x04], eax            // 0x0078ddba    894604
                         pop              esi                                    // 0x0078ddbd    5e
                         add              esp, 0x24                              // 0x0078ddbe    83c424
                         ret              0x000c                                 // 0x0078ddc1    c20c00
                         nop                                                     // 0x0078ddc4    90
                         nop                                                     // 0x0078ddc5    90
                         nop                                                     // 0x0078ddc6    90
                         nop                                                     // 0x0078ddc7    90
                         nop                                                     // 0x0078ddc8    90
                         nop                                                     // 0x0078ddc9    90
                         nop                                                     // 0x0078ddca    90
                         nop                                                     // 0x0078ddcb    90
                         nop                                                     // 0x0078ddcc    90
                         nop                                                     // 0x0078ddcd    90
                         nop                                                     // 0x0078ddce    90
                         nop                                                     // 0x0078ddcf    90
?UpdateMouse@SubOptionEntryCheckBoxUnChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078ddd0    8b44240c
                         sub              esp, 0x24                              // 0x0078ddd4    83ec24
                         dec              eax                                    // 0x0078ddd7    48
                         cmp              eax, 0x03                              // 0x0078ddd8    83f803
                         push             esi                                    // 0x0078dddb    56
                         mov.s            esi, ecx                               // 0x0078dddc    8bf1
                         {disp8} ja       _jmp_addr_0x0078de3e                   // 0x0078ddde    775e
                         jmp              dword ptr [eax*4 + 0x78de48]           // 0x0078dde0    ff248548de7800
                         {disp8} mov      eax, dword ptr [esi + 0x18]            // 0x0078dde7    8b4618
                         test             eax, eax                               // 0x0078ddea    85c0
                         {disp8} jne      _jmp_addr_0x0078de16                   // 0x0078ddec    7528
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078ddee    8b0d5c19d000
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078ddf4    e8577adcff
                         test             eax, eax                               // 0x0078ddf9    85c0
                         {disp8} je       _jmp_addr_0x0078de16                   // 0x0078ddfb    7419
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078ddfd    8b0d5c19d000
                         push             0x80000000                             // 0x0078de03    6800000080
                         push             0x2c                                   // 0x0078de08    6a2c
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078de0a    e8417adcff
                         mov.s            ecx, eax                               // 0x0078de0f    8bc8
                         call             _jmp_addr_0x005d8a10                   // 0x0078de11    e8faabe4ff
_jmp_addr_0x0078de16:    {disp8} mov      dword ptr [esi + 0x18], 0x00000001     // 0x0078de16    c7461801000000
                         pop              esi                                    // 0x0078de1d    5e
                         add              esp, 0x24                              // 0x0078de1e    83c424
                         ret              0x0010                                 // 0x0078de21    c21000
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078de24    8b442438
                         test             eax, eax                               // 0x0078de28    85c0
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000000     // 0x0078de2a    c7461800000000
                         {disp8} je       _jmp_addr_0x0078de3e                   // 0x0078de31    740b
                         {disp8} lea      ecx, dword ptr [esp + 0x04]            // 0x0078de33    8d4c2404
                         push             ecx                                    // 0x0078de37    51
                         call             dword ptr [esi + 0x10]                 // 0x0078de38    ff5610
                         add              esp, 0x04                              // 0x0078de3b    83c404
_jmp_addr_0x0078de3e:    pop              esi                                    // 0x0078de3e    5e
                         add              esp, 0x24                              // 0x0078de3f    83c424
                         ret              0x0010                                 // 0x0078de42    c21000

// Snippet: db, [0x0078de45, 0x0078de48)
.byte 0x8d, 0x49, 0x00            // 0x0078de45

// Snippet: jmptbl, [0x0078de48, 0x0078de58)
.byte 0xe7, 0xdd, 0x78, 0x00      // 0x0078de48
.byte 0x24, 0xde, 0x78, 0x00      // 0x0078de4c
.byte 0xe7, 0xdd, 0x78, 0x00      // 0x0078de50
.byte 0x24, 0xde, 0x78, 0x00      // 0x0078de54

// Snippet: db, [0x0078de58, 0x0078de60)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078de58
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078de5c

