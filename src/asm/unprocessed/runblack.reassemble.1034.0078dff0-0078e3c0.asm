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

.globl _jmp_addr_0x0078e000
.globl _jmp_addr_0x0078e080
.globl _jmp_addr_0x0078e200
.globl ?UpdateKeyboard@SubOptionEntryCheckBoxChecked@@UAEIW4LH_KEY@@G@Z
.globl ?GetSubMeshData@SubOptionEntrySlider@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntrySlider@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z
.globl ?UpdateKeyboard@SubOptionEntrySlider@@UAEIW4LH_KEY@@G@Z
.globl ?GetSubMeshData@SubOptionEntryPicture@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntryPicture@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z
.globl ?UpdateKeyboard@SubOptionEntryPicture@@UAEIW4LH_KEY@@G@Z
.globl ?GetSubMeshData@SubOptionEntryScroll@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntryScroll@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z

start_0x0078dff0_0x0078e3c0:
// Snippet: asm, [0x0078dff0, 0x0078e3ae)
?UpdateKeyboard@SubOptionEntryCheckBoxChecked@@UAEIW4LH_KEY@@G@Z:
                         xor.s            eax, eax                               // 0x0078dff0    33c0
                         ret              0x0008                                 // 0x0078dff2    c20800
                         nop                                                     // 0x0078dff5    90
                         nop                                                     // 0x0078dff6    90
                         nop                                                     // 0x0078dff7    90
                         nop                                                     // 0x0078dff8    90
                         nop                                                     // 0x0078dff9    90
                         nop                                                     // 0x0078dffa    90
                         nop                                                     // 0x0078dffb    90
                         nop                                                     // 0x0078dffc    90
                         nop                                                     // 0x0078dffd    90
                         nop                                                     // 0x0078dffe    90
                         nop                                                     // 0x0078dfff    90
_jmp_addr_0x0078e000:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e000    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x0078e004    8b542404
                         push             esi                                    // 0x0078e008    56
                         push             0x1                                    // 0x0078e009    6a01
                         push             0x1                                    // 0x0078e00b    6a01
                         mov.s            esi, ecx                               // 0x0078e00d    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x14]            // 0x0078e00f    8b4c2414
                         push             eax                                    // 0x0078e013    50
                         push             ecx                                    // 0x0078e014    51
                         push             edx                                    // 0x0078e015    52
                         mov.s            ecx, esi                               // 0x0078e016    8bce
                         call             _jmp_addr_0x0078da40                   // 0x0078e018    e823faffff
                         {disp8} mov      al, byte ptr [esp + 0x14]              // 0x0078e01d    8a442414
                         {disp8} mov      byte ptr [esi + 0x18], al              // 0x0078e021    884618
                         mov              dword ptr [esi], 0x0099ed18            // 0x0078e024    c70618ed9900
                         mov.s            eax, esi                               // 0x0078e02a    8bc6
                         pop              esi                                    // 0x0078e02c    5e
                         ret              0x0010                                 // 0x0078e02d    c21000
                         mov              dword ptr [ecx], 0x0099ed18            // 0x0078e030    c70118ed9900
                         {disp32} jmp     _jmp_addr_0x0078da70                   // 0x0078e036    e935faffff
                         nop                                                     // 0x0078e03b    90
                         nop                                                     // 0x0078e03c    90
                         nop                                                     // 0x0078e03d    90
                         nop                                                     // 0x0078e03e    90
                         nop                                                     // 0x0078e03f    90
?GetSubMeshData@SubOptionEntrySlider@@UAEXAAUSubMeshDrawData@@HH@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e040    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x08]            // 0x0078e044    8b542408
                         push             eax                                    // 0x0078e048    50
                         {disp8} mov      eax, dword ptr [esp + 0x08]            // 0x0078e049    8b442408
                         push             edx                                    // 0x0078e04d    52
                         push             eax                                    // 0x0078e04e    50
                         call             _jmp_addr_0x0078da80                   // 0x0078e04f    e82cfaffff
                         ret              0x000c                                 // 0x0078e054    c20c00
                         nop                                                     // 0x0078e057    90
                         nop                                                     // 0x0078e058    90
                         nop                                                     // 0x0078e059    90
                         nop                                                     // 0x0078e05a    90
                         nop                                                     // 0x0078e05b    90
                         nop                                                     // 0x0078e05c    90
                         nop                                                     // 0x0078e05d    90
                         nop                                                     // 0x0078e05e    90
                         nop                                                     // 0x0078e05f    90
?UpdateMouse@SubOptionEntrySlider@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         ret              0x0010                                 // 0x0078e060    c21000
                         nop                                                     // 0x0078e063    90
                         nop                                                     // 0x0078e064    90
                         nop                                                     // 0x0078e065    90
                         nop                                                     // 0x0078e066    90
                         nop                                                     // 0x0078e067    90
                         nop                                                     // 0x0078e068    90
                         nop                                                     // 0x0078e069    90
                         nop                                                     // 0x0078e06a    90
                         nop                                                     // 0x0078e06b    90
                         nop                                                     // 0x0078e06c    90
                         nop                                                     // 0x0078e06d    90
                         nop                                                     // 0x0078e06e    90
                         nop                                                     // 0x0078e06f    90
?UpdateKeyboard@SubOptionEntrySlider@@UAEIW4LH_KEY@@G@Z:
                         xor.s            eax, eax                               // 0x0078e070    33c0
                         ret              0x0008                                 // 0x0078e072    c20800
                         nop                                                     // 0x0078e075    90
                         nop                                                     // 0x0078e076    90
                         nop                                                     // 0x0078e077    90
                         nop                                                     // 0x0078e078    90
                         nop                                                     // 0x0078e079    90
                         nop                                                     // 0x0078e07a    90
                         nop                                                     // 0x0078e07b    90
                         nop                                                     // 0x0078e07c    90
                         nop                                                     // 0x0078e07d    90
                         nop                                                     // 0x0078e07e    90
                         nop                                                     // 0x0078e07f    90
_jmp_addr_0x0078e080:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e080    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x0078e084    8b542404
                         push             esi                                    // 0x0078e088    56
                         push             0x1                                    // 0x0078e089    6a01
                         push             0x1                                    // 0x0078e08b    6a01
                         mov.s            esi, ecx                               // 0x0078e08d    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x14]            // 0x0078e08f    8b4c2414
                         push             eax                                    // 0x0078e093    50
                         push             ecx                                    // 0x0078e094    51
                         push             edx                                    // 0x0078e095    52
                         mov.s            ecx, esi                               // 0x0078e096    8bce
                         call             _jmp_addr_0x0078da40                   // 0x0078e098    e8a3f9ffff
                         mov              dword ptr [esi], 0x0099ed28            // 0x0078e09d    c70628ed9900
                         mov.s            eax, esi                               // 0x0078e0a3    8bc6
                         pop              esi                                    // 0x0078e0a5    5e
                         ret              0x000c                                 // 0x0078e0a6    c20c00
                         nop                                                     // 0x0078e0a9    90
                         nop                                                     // 0x0078e0aa    90
                         nop                                                     // 0x0078e0ab    90
                         nop                                                     // 0x0078e0ac    90
                         nop                                                     // 0x0078e0ad    90
                         nop                                                     // 0x0078e0ae    90
                         nop                                                     // 0x0078e0af    90
                         mov              dword ptr [ecx], 0x0099ed28            // 0x0078e0b0    c70128ed9900
                         {disp32} jmp     _jmp_addr_0x0078da70                   // 0x0078e0b6    e9b5f9ffff
                         nop                                                     // 0x0078e0bb    90
                         nop                                                     // 0x0078e0bc    90
                         nop                                                     // 0x0078e0bd    90
                         nop                                                     // 0x0078e0be    90
                         nop                                                     // 0x0078e0bf    90
?GetSubMeshData@SubOptionEntryPicture@@UAEXAAUSubMeshDrawData@@HH@Z:
                         sub              esp, 0x24                              // 0x0078e0c0    83ec24
                         {disp8} mov      eax, dword ptr [esp + 0x30]            // 0x0078e0c3    8b442430
                         push             esi                                    // 0x0078e0c7    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]            // 0x0078e0c8    8b74242c
                         push             edi                                    // 0x0078e0cc    57
                         push             eax                                    // 0x0078e0cd    50
                         {disp8} mov      dword ptr [esp + 0x14], eax            // 0x0078e0ce    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078e0d2    8b442438
                         push             eax                                    // 0x0078e0d6    50
                         mov.s            edi, ecx                               // 0x0078e0d7    8bf9
                         push             esi                                    // 0x0078e0d9    56
                         call             _jmp_addr_0x0078da80                   // 0x0078e0da    e8a1f9ffff
                         xor.s            ecx, ecx                               // 0x0078e0df    33c9
                         {disp8} mov      cl, byte ptr [edi + 0x04]              // 0x0078e0e1    8a4f04
                         xor.s            eax, eax                               // 0x0078e0e4    33c0
                         mov              dword ptr [esi], ecx                   // 0x0078e0e6    890e
                         mov              cl, -0x01                              // 0x0078e0e8    b1ff
                         {disp8} mov      byte ptr [esp + 0x38], cl              // 0x0078e0ea    884c2438
                         {disp8} mov      byte ptr [esp + 0x39], cl              // 0x0078e0ee    884c2439
                         {disp8} mov      byte ptr [esp + 0x3a], cl              // 0x0078e0f2    884c243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e0f6    884c243b
                         {disp8} mov      edx, dword ptr [esp + 0x38]            // 0x0078e0fa    8b542438
                         {disp8} mov      dword ptr [esi + 0x08], edx            // 0x0078e0fe    895608
                         mov              edx, 0x3f800000                        // 0x0078e101    ba0000803f
                         {disp8} mov      dword ptr [esi + 0x30], edx            // 0x0078e106    895630
                         {disp8} mov      dword ptr [esi + 0x20], edx            // 0x0078e109    895620
                         {disp8} mov      dword ptr [esi + 0x10], edx            // 0x0078e10c    895610
                         {disp8} mov      dword ptr [esi + 0x3c], eax            // 0x0078e10f    89463c
                         {disp8} mov      dword ptr [esi + 0x38], eax            // 0x0078e112    894638
                         {disp8} mov      dword ptr [esi + 0x34], eax            // 0x0078e115    894634
                         {disp8} mov      dword ptr [esi + 0x2c], eax            // 0x0078e118    89462c
                         {disp8} mov      dword ptr [esi + 0x28], eax            // 0x0078e11b    894628
                         {disp8} mov      dword ptr [esi + 0x24], eax            // 0x0078e11e    894624
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078e121    89461c
                         {disp8} mov      dword ptr [esi + 0x18], eax            // 0x0078e124    894618
                         {disp8} mov      dword ptr [esi + 0x14], eax            // 0x0078e127    894614
                         {disp8} mov      byte ptr [esp + 0x38], al              // 0x0078e12a    88442438
                         {disp8} mov      byte ptr [esp + 0x39], al              // 0x0078e12e    88442439
                         {disp8} mov      byte ptr [esp + 0x3a], al              // 0x0078e132    8844243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e136    884c243b
                         {disp8} mov      ecx, dword ptr [esp + 0x38]            // 0x0078e13a    8b4c2438
                         {disp8} lea      edx, dword ptr [esp + 0x08]            // 0x0078e13e    8d542408
                         push             edx                                    // 0x0078e142    52
                         {disp8} mov      dword ptr [esi + 0x54], ecx            // 0x0078e143    894e54
                         {disp8} mov      dword ptr [esi + 0x58], eax            // 0x0078e146    894658
                         {disp8} mov      dword ptr [esi + 0x5c], eax            // 0x0078e149    89465c
                         call             dword ptr [edi + 0x14]                 // 0x0078e14c    ff5714
                         {disp8} mov      eax, dword ptr [esp + 0x28]            // 0x0078e14f    8b442428
                         {disp8} mov      ecx, dword ptr [esp + 0x18]            // 0x0078e153    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x1c]            // 0x0078e157    8b54241c
                         add              esp, 0x04                              // 0x0078e15b    83c404
                         {disp8} mov      dword ptr [esi + 0x40], eax            // 0x0078e15e    894640
                         {disp8} mov      eax, dword ptr [esp + 0x1c]            // 0x0078e161    8b44241c
                         {disp8} mov      dword ptr [esi + 0x44], ecx            // 0x0078e165    894e44
                         {disp8} mov      ecx, dword ptr [esp + 0x20]            // 0x0078e168    8b4c2420
                         {disp8} mov      dword ptr [esi + 0x48], edx            // 0x0078e16c    895648
                         {disp8} mov      edx, dword ptr [esp + 0x08]            // 0x0078e16f    8b542408
                         pop              edi                                    // 0x0078e173    5f
                         {disp8} mov      dword ptr [esi + 0x4c], eax            // 0x0078e174    89464c
                         {disp8} mov      dword ptr [esi + 0x50], ecx            // 0x0078e177    894e50
                         {disp8} mov      dword ptr [esi + 0x04], edx            // 0x0078e17a    895604
                         pop              esi                                    // 0x0078e17d    5e
                         add              esp, 0x24                              // 0x0078e17e    83c424
                         ret              0x000c                                 // 0x0078e181    c20c00
                         nop                                                     // 0x0078e184    90
                         nop                                                     // 0x0078e185    90
                         nop                                                     // 0x0078e186    90
                         nop                                                     // 0x0078e187    90
                         nop                                                     // 0x0078e188    90
                         nop                                                     // 0x0078e189    90
                         nop                                                     // 0x0078e18a    90
                         nop                                                     // 0x0078e18b    90
                         nop                                                     // 0x0078e18c    90
                         nop                                                     // 0x0078e18d    90
                         nop                                                     // 0x0078e18e    90
                         nop                                                     // 0x0078e18f    90
?UpdateMouse@SubOptionEntryPicture@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e190    8b44240c
                         sub              esp, 0x24                              // 0x0078e194    83ec24
                         sub              eax, 0x02                              // 0x0078e197    83e802
                         push             esi                                    // 0x0078e19a    56
                         mov.s            esi, ecx                               // 0x0078e19b    8bf1
                         {disp8} je       _jmp_addr_0x0078e1a4                   // 0x0078e19d    7405
                         sub              eax, 0x02                              // 0x0078e19f    83e802
                         {disp8} jne      _jmp_addr_0x0078e1e8                   // 0x0078e1a2    7544
_jmp_addr_0x0078e1a4:    {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078e1a4    8b442438
                         test             eax, eax                               // 0x0078e1a8    85c0
                         {disp8} je       _jmp_addr_0x0078e1e8                   // 0x0078e1aa    743c
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078e1ac    8b0d5c19d000
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078e1b2    e89976dcff
                         test             eax, eax                               // 0x0078e1b7    85c0
                         {disp8} je       _jmp_addr_0x0078e1d4                   // 0x0078e1b9    7419
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078e1bb    8b0d5c19d000
                         push             0x80000000                             // 0x0078e1c1    6800000080
                         push             0x2c                                   // 0x0078e1c6    6a2c
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078e1c8    e88376dcff
                         mov.s            ecx, eax                               // 0x0078e1cd    8bc8
                         call             _jmp_addr_0x005d8a10                   // 0x0078e1cf    e83ca8e4ff
_jmp_addr_0x0078e1d4:    xor.s            eax, eax                               // 0x0078e1d4    33c0
                         {disp8} mov      al, byte ptr [esi + 0x04]              // 0x0078e1d6    8a4604
                         {disp8} lea      ecx, dword ptr [esp + 0x04]            // 0x0078e1d9    8d4c2404
                         push             ecx                                    // 0x0078e1dd    51
                         {disp8} mov      dword ptr [esp + 0x0c], eax            // 0x0078e1de    8944240c
                         call             dword ptr [esi + 0x10]                 // 0x0078e1e2    ff5610
                         add              esp, 0x04                              // 0x0078e1e5    83c404
_jmp_addr_0x0078e1e8:    pop              esi                                    // 0x0078e1e8    5e
                         add              esp, 0x24                              // 0x0078e1e9    83c424
                         ret              0x0010                                 // 0x0078e1ec    c21000
                         nop                                                     // 0x0078e1ef    90
?UpdateKeyboard@SubOptionEntryPicture@@UAEIW4LH_KEY@@G@Z:
                         xor.s            eax, eax                               // 0x0078e1f0    33c0
                         ret              0x0008                                 // 0x0078e1f2    c20800
                         nop                                                     // 0x0078e1f5    90
                         nop                                                     // 0x0078e1f6    90
                         nop                                                     // 0x0078e1f7    90
                         nop                                                     // 0x0078e1f8    90
                         nop                                                     // 0x0078e1f9    90
                         nop                                                     // 0x0078e1fa    90
                         nop                                                     // 0x0078e1fb    90
                         nop                                                     // 0x0078e1fc    90
                         nop                                                     // 0x0078e1fd    90
                         nop                                                     // 0x0078e1fe    90
                         nop                                                     // 0x0078e1ff    90
_jmp_addr_0x0078e200:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e200    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x0078e204    8b542404
                         push             esi                                    // 0x0078e208    56
                         push             0x1                                    // 0x0078e209    6a01
                         push             0x0                                    // 0x0078e20b    6a00
                         mov.s            esi, ecx                               // 0x0078e20d    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x14]            // 0x0078e20f    8b4c2414
                         push             eax                                    // 0x0078e213    50
                         push             ecx                                    // 0x0078e214    51
                         push             edx                                    // 0x0078e215    52
                         mov.s            ecx, esi                               // 0x0078e216    8bce
                         call             _jmp_addr_0x0078da40                   // 0x0078e218    e823f8ffff
                         mov              dword ptr [esi], 0x0099ed38            // 0x0078e21d    c70638ed9900
                         {disp8} mov      dword ptr [esi + 0x1c], 0x00000000     // 0x0078e223    c7461c00000000
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000000     // 0x0078e22a    c7461800000000
                         mov.s            eax, esi                               // 0x0078e231    8bc6
                         pop              esi                                    // 0x0078e233    5e
                         ret              0x000c                                 // 0x0078e234    c20c00
                         nop                                                     // 0x0078e237    90
                         nop                                                     // 0x0078e238    90
                         nop                                                     // 0x0078e239    90
                         nop                                                     // 0x0078e23a    90
                         nop                                                     // 0x0078e23b    90
                         nop                                                     // 0x0078e23c    90
                         nop                                                     // 0x0078e23d    90
                         nop                                                     // 0x0078e23e    90
                         nop                                                     // 0x0078e23f    90
                         mov              dword ptr [ecx], 0x0099ed38            // 0x0078e240    c70138ed9900
                         {disp32} jmp     _jmp_addr_0x0078da70                   // 0x0078e246    e925f8ffff
                         nop                                                     // 0x0078e24b    90
                         nop                                                     // 0x0078e24c    90
                         nop                                                     // 0x0078e24d    90
                         nop                                                     // 0x0078e24e    90
                         nop                                                     // 0x0078e24f    90
?GetSubMeshData@SubOptionEntryScroll@@UAEXAAUSubMeshDrawData@@HH@Z:
                         sub              esp, 0x24                              // 0x0078e250    83ec24
                         {disp8} mov      eax, dword ptr [esp + 0x30]            // 0x0078e253    8b442430
                         push             esi                                    // 0x0078e257    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]            // 0x0078e258    8b74242c
                         push             edi                                    // 0x0078e25c    57
                         push             eax                                    // 0x0078e25d    50
                         {disp8} mov      dword ptr [esp + 0x14], eax            // 0x0078e25e    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x38]            // 0x0078e262    8b442438
                         push             eax                                    // 0x0078e266    50
                         mov.s            edi, ecx                               // 0x0078e267    8bf9
                         push             esi                                    // 0x0078e269    56
                         call             _jmp_addr_0x0078da80                   // 0x0078e26a    e811f8ffff
                         xor.s            ecx, ecx                               // 0x0078e26f    33c9
                         {disp8} mov      cl, byte ptr [edi + 0x04]              // 0x0078e271    8a4f04
                         xor.s            eax, eax                               // 0x0078e274    33c0
                         mov              dword ptr [esi], ecx                   // 0x0078e276    890e
                         mov              cl, -0x01                              // 0x0078e278    b1ff
                         {disp8} mov      byte ptr [esp + 0x38], cl              // 0x0078e27a    884c2438
                         {disp8} mov      byte ptr [esp + 0x39], cl              // 0x0078e27e    884c2439
                         {disp8} mov      byte ptr [esp + 0x3a], cl              // 0x0078e282    884c243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e286    884c243b
                         {disp8} mov      edx, dword ptr [esp + 0x38]            // 0x0078e28a    8b542438
                         {disp8} mov      dword ptr [esi + 0x08], edx            // 0x0078e28e    895608
                         {disp8} mov      dword ptr [esi + 0x3c], eax            // 0x0078e291    89463c
                         {disp8} mov      dword ptr [esi + 0x38], eax            // 0x0078e294    894638
                         {disp8} mov      dword ptr [esi + 0x34], eax            // 0x0078e297    894634
                         {disp8} mov      dword ptr [esi + 0x2c], eax            // 0x0078e29a    89462c
                         {disp8} mov      dword ptr [esi + 0x28], eax            // 0x0078e29d    894628
                         {disp8} mov      dword ptr [esi + 0x24], eax            // 0x0078e2a0    894624
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078e2a3    89461c
                         {disp8} mov      dword ptr [esi + 0x18], eax            // 0x0078e2a6    894618
                         {disp8} mov      dword ptr [esi + 0x14], eax            // 0x0078e2a9    894614
                         mov              edx, 0x3f800000                        // 0x0078e2ac    ba0000803f
                         {disp8} mov      dword ptr [esi + 0x30], edx            // 0x0078e2b1    895630
                         {disp8} mov      dword ptr [esi + 0x20], edx            // 0x0078e2b4    895620
                         {disp8} mov      dword ptr [esi + 0x10], edx            // 0x0078e2b7    895610
                         {disp8} mov      byte ptr [esp + 0x38], al              // 0x0078e2ba    88442438
                         {disp8} mov      byte ptr [esp + 0x39], al              // 0x0078e2be    88442439
                         {disp8} mov      byte ptr [esp + 0x3a], al              // 0x0078e2c2    8844243a
                         {disp8} mov      byte ptr [esp + 0x3b], cl              // 0x0078e2c6    884c243b
                         {disp8} mov      ecx, dword ptr [esp + 0x38]            // 0x0078e2ca    8b4c2438
                         {disp8} mov      dword ptr [esi + 0x58], eax            // 0x0078e2ce    894658
                         {disp8} mov      dword ptr [esi + 0x5c], eax            // 0x0078e2d1    89465c
                         {disp8} mov      dword ptr [esi + 0x54], ecx            // 0x0078e2d4    894e54
                         {disp8} mov      edx, dword ptr [edi + 0x1c]            // 0x0078e2d7    8b571c
                         {disp8} lea      eax, dword ptr [esp + 0x08]            // 0x0078e2da    8d442408
                         push             eax                                    // 0x0078e2de    50
                         {disp8} mov      dword ptr [esp + 0x2c], edx            // 0x0078e2df    8954242c
                         call             dword ptr [edi + 0x14]                 // 0x0078e2e3    ff5714
                         {disp8} mov      ecx, dword ptr [esp + 0x28]            // 0x0078e2e6    8b4c2428
                         {disp8} mov      edx, dword ptr [esp + 0x18]            // 0x0078e2ea    8b542418
                         {disp8} mov      eax, dword ptr [esp + 0x1c]            // 0x0078e2ee    8b44241c
                         add              esp, 0x04                              // 0x0078e2f2    83c404
                         {disp8} mov      dword ptr [esi + 0x40], ecx            // 0x0078e2f5    894e40
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]            // 0x0078e2f8    8b4c241c
                         {disp8} mov      dword ptr [esi + 0x44], edx            // 0x0078e2fc    895644
                         {disp8} mov      edx, dword ptr [esp + 0x20]            // 0x0078e2ff    8b542420
                         {disp8} mov      dword ptr [esi + 0x48], eax            // 0x0078e303    894648
                         {disp8} mov      eax, dword ptr [esp + 0x08]            // 0x0078e306    8b442408
                         pop              edi                                    // 0x0078e30a    5f
                         {disp8} mov      dword ptr [esi + 0x4c], ecx            // 0x0078e30b    894e4c
                         {disp8} mov      dword ptr [esi + 0x50], edx            // 0x0078e30e    895650
                         {disp8} mov      dword ptr [esi + 0x04], eax            // 0x0078e311    894604
                         pop              esi                                    // 0x0078e314    5e
                         add              esp, 0x24                              // 0x0078e315    83c424
                         ret              0x000c                                 // 0x0078e318    c20c00
                         nop                                                     // 0x0078e31b    90
                         nop                                                     // 0x0078e31c    90
                         nop                                                     // 0x0078e31d    90
                         nop                                                     // 0x0078e31e    90
                         nop                                                     // 0x0078e31f    90
?UpdateMouse@SubOptionEntryScroll@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x0078e320    8b44240c
                         sub              esp, 0x24                              // 0x0078e324    83ec24
                         push             esi                                    // 0x0078e327    56
                         dec              eax                                    // 0x0078e328    48
                         cmp              eax, 0x03                              // 0x0078e329    83f803
                         push             edi                                    // 0x0078e32c    57
                         {disp8} mov      edi, dword ptr [esp + 0x34]            // 0x0078e32d    8b7c2434
                         mov.s            esi, ecx                               // 0x0078e331    8bf1
                         {disp8} ja       _jmp_addr_0x0078e393                   // 0x0078e333    775e
                         jmp              dword ptr [eax*4 + 0x78e3b0]           // 0x0078e335    ff2485b0e37800
                         {disp8} mov      eax, dword ptr [esi + 0x18]            // 0x0078e33c    8b4618
                         test             eax, eax                               // 0x0078e33f    85c0
                         {disp8} jne      _jmp_addr_0x0078e36b                   // 0x0078e341    7528
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078e343    8b0d5c19d000
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078e349    e80275dcff
                         test             eax, eax                               // 0x0078e34e    85c0
                         {disp8} je       _jmp_addr_0x0078e36b                   // 0x0078e350    7419
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078e352    8b0d5c19d000
                         push             0x80000000                             // 0x0078e358    6800000080
                         push             0x2c                                   // 0x0078e35d    6a2c
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ               // 0x0078e35f    e8ec74dcff
                         mov.s            ecx, eax                               // 0x0078e364    8bc8
                         call             _jmp_addr_0x005d8a10                   // 0x0078e366    e8a5a6e4ff
_jmp_addr_0x0078e36b:    xor.s            ecx, ecx                               // 0x0078e36b    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x04]              // 0x0078e36d    8a4e04
                         {disp8} lea      edx, dword ptr [esp + 0x08]            // 0x0078e370    8d542408
                         push             edx                                    // 0x0078e374    52
                         {disp8} mov      dword ptr [esi + 0x18], 0x00000001     // 0x0078e375    c7461801000000
                         {disp8} mov      dword ptr [esp + 0x10], ecx            // 0x0078e37c    894c2410
                         call             dword ptr [esi + 0x10]                 // 0x0078e380    ff5610
                         add              esp, 0x04                              // 0x0078e383    83c404
                         {disp8} mov      dword ptr [esi + 0x20], edi            // 0x0078e386    897e20
                         {disp8} jmp      _jmp_addr_0x0078e393                   // 0x0078e389    eb08
                         xor.s            eax, eax                               // 0x0078e38b    33c0
                         {disp8} mov      dword ptr [esi + 0x18], eax            // 0x0078e38d    894618
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078e390    89461c
_jmp_addr_0x0078e393:    cmp              dword ptr [esi + 0x18], 0x01           // 0x0078e393    837e1801
                         {disp8} jne      _jmp_addr_0x0078e3a6                   // 0x0078e397    750d
                         {disp8} mov      ecx, dword ptr [esi + 0x20]            // 0x0078e399    8b4e20
                         mov.s            eax, edi                               // 0x0078e39c    8bc7
                         sub.s            eax, ecx                               // 0x0078e39e    2bc1
                         {disp8} mov      dword ptr [esi + 0x1c], eax            // 0x0078e3a0    89461c
                         {disp8} mov      dword ptr [esi + 0x20], edi            // 0x0078e3a3    897e20
_jmp_addr_0x0078e3a6:    pop              edi                                    // 0x0078e3a6    5f
                         pop              esi                                    // 0x0078e3a7    5e
                         add              esp, 0x24                              // 0x0078e3a8    83c424
                         ret              0x0010                                 // 0x0078e3ab    c21000

// Snippet: db, [0x0078e3ae, 0x0078e3b0)
.byte 0x8b, 0xff                  // 0x0078e3ae

// Snippet: jmptbl, [0x0078e3b0, 0x0078e3c0)
.byte 0x3c, 0xe3, 0x78, 0x00      // 0x0078e3b0
.byte 0x8b, 0xe3, 0x78, 0x00      // 0x0078e3b4
.byte 0x3c, 0xe3, 0x78, 0x00      // 0x0078e3b8
.byte 0x8b, 0xe3, 0x78, 0x00      // 0x0078e3bc

