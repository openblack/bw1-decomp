.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??$WriteIt@I@GameOSFile@@QAEXAAI@Z
.extern ??$ReadIt@H@GameOSFile@@QAEXAAI@Z
.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern ?SetCursorOn@FrontEnd@@SAXXZ
.extern _jmp_addr_0x0053c470
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005c9a70
.extern _jmp_addr_0x005d8a10
.extern @__ct__15PictureRoomBaseFPCc@12
.extern _jmp_addr_0x0078f1e0
.extern _jmp_addr_0x0078f1f0
.extern _jmp_addr_0x0078f320
.extern _jmp_addr_0x0078f5e0
.extern _jmp_addr_0x0078f600
.extern _jmp_addr_0x00793d90
.extern _jmp_addr_0x007a1400
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit

.globl _jmp_addr_0x0078ce70
.globl _jmp_addr_0x0078d150
.globl _jmp_addr_0x0078d420
.globl _jmp_addr_0x0078d680
.globl _jmp_addr_0x0078da40
.globl _jmp_addr_0x0078da70
.globl _jmp_addr_0x0078da80
.globl _jmp_addr_0x0078db20

.globl _globl_ct_0x0078d5d0
.globl _globl_ct_0x0078d600
.globl _globl_ct_0x0078d630
.globl _globl_ct_0x0078d650
.globl _globl_ct_0x0078d940
.globl _globl_ct_0x0078d970
.globl _globl_ct_0x0078da10
.globl ?Draw@GameOptionsRoom@@UAEXXZ
.globl ?UpdateMouse@GameOptionsRoom@@UAEXULHCoord@@W4INTERFACE_MESSAGE_TYPES@@@Z
.globl ?UpdateKeyboard@GameOptionsRoom@@UAEXW4LH_KEY@@G@Z
.globl ?Update@GameOptionsRoom@@UAEXXZ
.globl ?IsAvailable@GameOptionsRoom@@UAE_NXZ
.globl ?GetSubMeshData@SubOptionEntryButton@@UAEXAAUSubMeshDrawData@@HH@Z
.globl ?UpdateMouse@SubOptionEntryButton@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z

start_0x0078ce70_0x0078dcd0:
// Snippet: asm, [0x0078ce70, 0x0078dcb5)
_jmp_addr_0x0078ce70:    push              ecx                                           // 0x0078ce70    51
                         {disp32} mov      eax, dword ptr [data_bytes + 0x43be6c]        // 0x0078ce71    a16c1ee000
                         push              ebx                                           // 0x0078ce76    53
                         push              ebp                                           // 0x0078ce77    55
                         {disp8} mov       dword ptr [esp + 0x08], eax                   // 0x0078ce78    89442408
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x0078ce7c    a190c9be00
                         push              esi                                           // 0x0078ce81    56
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x0078ce82    8b742414
                         xor.s             ebp, ebp                                      // 0x0078ce86    33ed
                         cmp.s             eax, ebp                                      // 0x0078ce88    3bc5
                         push              edi                                           // 0x0078ce8a    57
                         {disp32} je       _jmp_addr_0x0078cf2c                          // 0x0078ce8b    0f849b000000
                         push              ebp                                           // 0x0078ce91    55
                         push              0x4                                           // 0x0078ce92    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x0078ce94    8d4c2418
                         push              ecx                                           // 0x0078ce98    51
                         mov.s             ecx, esi                                      // 0x0078ce99    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0078ce9b    e880fa0200
                         cmp               eax, 0x03                                     // 0x0078cea0    83f803
                         {disp8} jne       _jmp_addr_0x0078ceab                          // 0x0078cea3    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0078cea5    892d90c9be00
_jmp_addr_0x0078ceab:    {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x0078ceab    8b442410
                         {disp32} mov      edi, dword ptr [esi + 0x00000214]             // 0x0078ceaf    8bbe14020000
                         mov.s             edx, eax                                      // 0x0078ceb5    8bd0
                         and               edx, 0x000000ff                               // 0x0078ceb7    81e2ff000000
                         add               edx, 0x04                                     // 0x0078cebd    83c204
                         add.s             edi, edx                                      // 0x0078cec0    03fa
                         xor.s             ebx, ebx                                      // 0x0078cec2    33db
                         cmp.s             eax, ebp                                      // 0x0078cec4    3bc5
                         {disp32} mov      dword ptr [esi + 0x00000214], edi             // 0x0078cec6    89be14020000
                         {disp8} jbe       _jmp_addr_0x0078ceef                          // 0x0078cecc    7621
                         mov               edi, 0x00df9d1c                               // 0x0078cece    bf1c9ddf00
_jmp_addr_0x0078ced3:    push              edi                                           // 0x0078ced3    57
                         mov.s             ecx, esi                                      // 0x0078ced4    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078ced6    e825a8c7ff
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078cedb    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078cf2c                          // 0x0078cee1    7449
                         {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x0078cee3    8b442410
                         inc               ebx                                           // 0x0078cee7    43
                         add               edi, 0x04                                     // 0x0078cee8    83c704
                         cmp.s             ebx, eax                                      // 0x0078ceeb    3bd8
                         .byte             0x72, 0xe4// {disp8} jb _jmp_addr_0x0078ced3  // 0x0078ceed    72e4
_jmp_addr_0x0078ceef:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078ceef    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078cf2c                          // 0x0078cef5    7435
                         push              ebp                                           // 0x0078cef7    55
                         push              0x4                                           // 0x0078cef8    6a04
                         push              0x00e01e6c                                    // 0x0078cefa    686c1ee000
                         mov.s             ecx, esi                                      // 0x0078ceff    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0078cf01    e81afa0200
                         cmp               eax, 0x03                                     // 0x0078cf06    83f803
                         {disp8} jne       _jmp_addr_0x0078cf11                          // 0x0078cf09    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0078cf0b    892d90c9be00
_jmp_addr_0x0078cf11:    {disp32} mov      eax, dword ptr [data_bytes + 0x43be6c]        // 0x0078cf11    a16c1ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078cf16    8b8e14020000
                         and               eax, 0x000000ff                               // 0x0078cf1c    25ff000000
                         add               eax, 0x04                                     // 0x0078cf21    83c004
                         add.s             ecx, eax                                      // 0x0078cf24    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078cf26    898e14020000
_jmp_addr_0x0078cf2c:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078cf2c    392d90c9be00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x43be70]        // 0x0078cf32    8b0d701ee000
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x0078cf38    894c2418
                         {disp8} je        _jmp_addr_0x0078cfb2                          // 0x0078cf3c    7474
                         {disp8} lea       edx, dword ptr [esp + 0x18]                   // 0x0078cf3e    8d542418
                         push              edx                                           // 0x0078cf42    52
                         mov.s             ecx, esi                                      // 0x0078cf43    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078cf45    e8b6a7c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078cf4a    8b442418
                         xor.s             ebx, ebx                                      // 0x0078cf4e    33db
                         cmp.s             eax, ebp                                      // 0x0078cf50    3bc5
                         {disp8} jbe       _jmp_addr_0x0078cf75                          // 0x0078cf52    7621
                         mov               edi, 0x00df5c58                               // 0x0078cf54    bf585cdf00
_jmp_addr_0x0078cf59:    push              edi                                           // 0x0078cf59    57
                         mov.s             ecx, esi                                      // 0x0078cf5a    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078cf5c    e89fa7c7ff
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078cf61    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078cfb2                          // 0x0078cf67    7449
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078cf69    8b442418
                         inc               ebx                                           // 0x0078cf6d    43
                         add               edi, 0x04                                     // 0x0078cf6e    83c704
                         cmp.s             ebx, eax                                      // 0x0078cf71    3bd8
                         .byte             0x72, 0xe4// {disp8} jb _jmp_addr_0x0078cf59  // 0x0078cf73    72e4
_jmp_addr_0x0078cf75:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078cf75    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078cfb2                          // 0x0078cf7b    7435
                         push              ebp                                           // 0x0078cf7d    55
                         push              0x4                                           // 0x0078cf7e    6a04
                         push              0x00e01e70                                    // 0x0078cf80    68701ee000
                         mov.s             ecx, esi                                      // 0x0078cf85    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0078cf87    e894f90200
                         cmp               eax, 0x03                                     // 0x0078cf8c    83f803
                         {disp8} jne       _jmp_addr_0x0078cf97                          // 0x0078cf8f    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0078cf91    892d90c9be00
_jmp_addr_0x0078cf97:    {disp32} mov      eax, dword ptr [data_bytes + 0x43be70]        // 0x0078cf97    a1701ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078cf9c    8b8e14020000
                         and               eax, 0x000000ff                               // 0x0078cfa2    25ff000000
                         add               eax, 0x04                                     // 0x0078cfa7    83c004
                         add.s             ecx, eax                                      // 0x0078cfaa    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078cfac    898e14020000
_jmp_addr_0x0078cfb2:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078cfb2    392d90c9be00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x43be74]        // 0x0078cfb8    8b0d741ee000
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x0078cfbe    894c2418
                         {disp8} je        _jmp_addr_0x0078d038                          // 0x0078cfc2    7474
                         {disp8} lea       edx, dword ptr [esp + 0x18]                   // 0x0078cfc4    8d542418
                         push              edx                                           // 0x0078cfc8    52
                         mov.s             ecx, esi                                      // 0x0078cfc9    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078cfcb    e830a7c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078cfd0    8b442418
                         xor.s             ebx, ebx                                      // 0x0078cfd4    33db
                         cmp.s             eax, ebp                                      // 0x0078cfd6    3bc5
                         {disp8} jbe       _jmp_addr_0x0078cffb                          // 0x0078cfd8    7621
                         mov               edi, 0x00df1b94                               // 0x0078cfda    bf941bdf00
_jmp_addr_0x0078cfdf:    push              edi                                           // 0x0078cfdf    57
                         mov.s             ecx, esi                                      // 0x0078cfe0    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078cfe2    e819a7c7ff
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078cfe7    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078d038                          // 0x0078cfed    7449
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078cfef    8b442418
                         inc               ebx                                           // 0x0078cff3    43
                         add               edi, 0x04                                     // 0x0078cff4    83c704
                         cmp.s             ebx, eax                                      // 0x0078cff7    3bd8
                         .byte             0x72, 0xe4// {disp8} jb _jmp_addr_0x0078cfdf  // 0x0078cff9    72e4
_jmp_addr_0x0078cffb:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078cffb    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078d038                          // 0x0078d001    7435
                         push              ebp                                           // 0x0078d003    55
                         push              0x4                                           // 0x0078d004    6a04
                         push              0x00e01e74                                    // 0x0078d006    68741ee000
                         mov.s             ecx, esi                                      // 0x0078d00b    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0078d00d    e80ef90200
                         cmp               eax, 0x03                                     // 0x0078d012    83f803
                         {disp8} jne       _jmp_addr_0x0078d01d                          // 0x0078d015    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0078d017    892d90c9be00
_jmp_addr_0x0078d01d:    {disp32} mov      eax, dword ptr [data_bytes + 0x43be74]        // 0x0078d01d    a1741ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078d022    8b8e14020000
                         and               eax, 0x000000ff                               // 0x0078d028    25ff000000
                         add               eax, 0x04                                     // 0x0078d02d    83c004
                         add.s             ecx, eax                                      // 0x0078d030    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078d032    898e14020000
_jmp_addr_0x0078d038:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078d038    392d90c9be00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x43be78]        // 0x0078d03e    8b0d781ee000
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x0078d044    894c2418
                         {disp8} je        _jmp_addr_0x0078d0be                          // 0x0078d048    7474
                         {disp8} lea       edx, dword ptr [esp + 0x18]                   // 0x0078d04a    8d542418
                         push              edx                                           // 0x0078d04e    52
                         mov.s             ecx, esi                                      // 0x0078d04f    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078d051    e8aaa6c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078d056    8b442418
                         xor.s             ebx, ebx                                      // 0x0078d05a    33db
                         cmp.s             eax, ebp                                      // 0x0078d05c    3bc5
                         {disp8} jbe       _jmp_addr_0x0078d081                          // 0x0078d05e    7621
                         mov               edi, 0x00dedad0                               // 0x0078d060    bfd0dade00
_jmp_addr_0x0078d065:    push              edi                                           // 0x0078d065    57
                         mov.s             ecx, esi                                      // 0x0078d066    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078d068    e893a6c7ff
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078d06d    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078d0be                          // 0x0078d073    7449
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078d075    8b442418
                         inc               ebx                                           // 0x0078d079    43
                         add               edi, 0x04                                     // 0x0078d07a    83c704
                         cmp.s             ebx, eax                                      // 0x0078d07d    3bd8
                         .byte             0x72, 0xe4// {disp8} jb _jmp_addr_0x0078d065  // 0x0078d07f    72e4
_jmp_addr_0x0078d081:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078d081    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078d0be                          // 0x0078d087    7435
                         push              ebp                                           // 0x0078d089    55
                         push              0x4                                           // 0x0078d08a    6a04
                         push              0x00e01e78                                    // 0x0078d08c    68781ee000
                         mov.s             ecx, esi                                      // 0x0078d091    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0078d093    e888f80200
                         cmp               eax, 0x03                                     // 0x0078d098    83f803
                         {disp8} jne       _jmp_addr_0x0078d0a3                          // 0x0078d09b    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0078d09d    892d90c9be00
_jmp_addr_0x0078d0a3:    {disp32} mov      eax, dword ptr [data_bytes + 0x43be78]        // 0x0078d0a3    a1781ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078d0a8    8b8e14020000
                         and               eax, 0x000000ff                               // 0x0078d0ae    25ff000000
                         add               eax, 0x04                                     // 0x0078d0b3    83c004
                         add.s             ecx, eax                                      // 0x0078d0b6    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078d0b8    898e14020000
_jmp_addr_0x0078d0be:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078d0be    392d90c9be00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x43be7c]        // 0x0078d0c4    8b0d7c1ee000
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x0078d0ca    894c2418
                         {disp8} je        _jmp_addr_0x0078d144                          // 0x0078d0ce    7474
                         {disp8} lea       edx, dword ptr [esp + 0x18]                   // 0x0078d0d0    8d542418
                         push              edx                                           // 0x0078d0d4    52
                         mov.s             ecx, esi                                      // 0x0078d0d5    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078d0d7    e824a6c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078d0dc    8b442418
                         xor.s             ebx, ebx                                      // 0x0078d0e0    33db
                         cmp.s             eax, ebp                                      // 0x0078d0e2    3bc5
                         {disp8} jbe       _jmp_addr_0x0078d107                          // 0x0078d0e4    7621
                         mov               edi, 0x00de9a0c                               // 0x0078d0e6    bf0c9ade00
_jmp_addr_0x0078d0eb:    push              edi                                           // 0x0078d0eb    57
                         mov.s             ecx, esi                                      // 0x0078d0ec    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0078d0ee    e80da6c7ff
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078d0f3    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078d144                          // 0x0078d0f9    7449
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0078d0fb    8b442418
                         inc               ebx                                           // 0x0078d0ff    43
                         add               edi, 0x04                                     // 0x0078d100    83c704
                         cmp.s             ebx, eax                                      // 0x0078d103    3bd8
                         .byte             0x72, 0xe4// {disp8} jb _jmp_addr_0x0078d0eb  // 0x0078d105    72e4
_jmp_addr_0x0078d107:    cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0078d107    392d90c9be00
                         {disp8} je        _jmp_addr_0x0078d144                          // 0x0078d10d    7435
                         push              ebp                                           // 0x0078d10f    55
                         push              0x4                                           // 0x0078d110    6a04
                         push              0x00e01e7c                                    // 0x0078d112    687c1ee000
                         mov.s             ecx, esi                                      // 0x0078d117    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0078d119    e802f80200
                         cmp               eax, 0x03                                     // 0x0078d11e    83f803
                         {disp8} jne       _jmp_addr_0x0078d129                          // 0x0078d121    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0078d123    892d90c9be00
_jmp_addr_0x0078d129:    {disp32} mov      eax, dword ptr [data_bytes + 0x43be7c]        // 0x0078d129    a17c1ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078d12e    8b8e14020000
                         and               eax, 0x000000ff                               // 0x0078d134    25ff000000
                         add               eax, 0x04                                     // 0x0078d139    83c004
                         add.s             ecx, eax                                      // 0x0078d13c    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078d13e    898e14020000
_jmp_addr_0x0078d144:    pop               edi                                           // 0x0078d144    5f
                         pop               esi                                           // 0x0078d145    5e
                         pop               ebp                                           // 0x0078d146    5d
                         pop               ebx                                           // 0x0078d147    5b
                         pop               ecx                                           // 0x0078d148    59
                         ret                                                             // 0x0078d149    c3
                         nop                                                             // 0x0078d14a    90
                         nop                                                             // 0x0078d14b    90
                         nop                                                             // 0x0078d14c    90
                         nop                                                             // 0x0078d14d    90
                         nop                                                             // 0x0078d14e    90
                         nop                                                             // 0x0078d14f    90
_jmp_addr_0x0078d150:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x0078d150    a194c9be00
                         push              ebx                                           // 0x0078d155    53
                         push              ebp                                           // 0x0078d156    55
                         xor.s             ebp, ebp                                      // 0x0078d157    33ed
                         cmp.s             eax, ebp                                      // 0x0078d159    3bc5
                         push              esi                                           // 0x0078d15b    56
                         push              edi                                           // 0x0078d15c    57
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d15d    0f84b2020000
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x0078d163    8b742414
                         push              ebp                                           // 0x0078d167    55
                         push              0x4                                           // 0x0078d168    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x0078d16a    8d44241c
                         push              eax                                           // 0x0078d16e    50
                         mov.s             ecx, esi                                      // 0x0078d16f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0078d171    e86af70200
                         cmp               eax, 0x03                                     // 0x0078d176    83f803
                         {disp8} jne       _jmp_addr_0x0078d181                          // 0x0078d179    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0078d17b    892d94c9be00
_jmp_addr_0x0078d181:    {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d181    8b442414
                         {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x0078d185    8b9614020000
                         mov.s             ecx, eax                                      // 0x0078d18b    8bc8
                         and               ecx, 0x000000ff                               // 0x0078d18d    81e1ff000000
                         add               ecx, 0x4                                      // 0x0078d193    83c104
                         add.s             edx, ecx                                      // 0x0078d196    03d1
                         xor.s             edi, edi                                      // 0x0078d198    33ff
                         cmp.s             eax, ebp                                      // 0x0078d19a    3bc5
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x0078d19c    899614020000
                         {disp8} jbe       _jmp_addr_0x0078d1bd                          // 0x0078d1a2    7619
                         mov               ebx, 0x00df9d1c                               // 0x0078d1a4    bb1c9ddf00
_jmp_addr_0x0078d1a9:    push              ebx                                           // 0x0078d1a9    53
                         mov.s             ecx, esi                                      // 0x0078d1aa    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d1ac    e8efa5c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d1b1    8b442414
                         inc               edi                                           // 0x0078d1b5    47
                         add               ebx, 0x04                                     // 0x0078d1b6    83c304
                         cmp.s             edi, eax                                      // 0x0078d1b9    3bf8
                         .byte             0x72, 0xec// {disp8} jb _jmp_addr_0x0078d1a9  // 0x0078d1bb    72ec
_jmp_addr_0x0078d1bd:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d1bd    392d94c9be00
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d1c3    0f844c020000
                         push              ebp                                           // 0x0078d1c9    55
                         push              0x4                                           // 0x0078d1ca    6a04
                         push              0x00e01e6c                                    // 0x0078d1cc    686c1ee000
                         mov.s             ecx, esi                                      // 0x0078d1d1    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0078d1d3    e808f70200
                         cmp               eax, 0x03                                     // 0x0078d1d8    83f803
                         {disp8} jne       _jmp_addr_0x0078d1e3                          // 0x0078d1db    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0078d1dd    892d94c9be00
_jmp_addr_0x0078d1e3:    {disp32} mov      edx, dword ptr [data_bytes + 0x43be6c]        // 0x0078d1e3    8b156c1ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078d1e9    8b8e14020000
                         and               edx, 0x000000ff                               // 0x0078d1ef    81e2ff000000
                         add               edx, 0x04                                     // 0x0078d1f5    83c204
                         add.s             ecx, edx                                      // 0x0078d1f8    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078d1fa    898e14020000
                         cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d200    392d94c9be00
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d206    0f8409020000
                         push              ebp                                           // 0x0078d20c    55
                         push              0x4                                           // 0x0078d20d    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x0078d20f    8d44241c
                         push              eax                                           // 0x0078d213    50
                         mov.s             ecx, esi                                      // 0x0078d214    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0078d216    e8c5f60200
                         cmp               eax, 0x03                                     // 0x0078d21b    83f803
                         {disp8} jne       _jmp_addr_0x0078d226                          // 0x0078d21e    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0078d220    892d94c9be00
_jmp_addr_0x0078d226:    {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d226    8b442414
                         {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x0078d22a    8b9614020000
                         mov.s             ecx, eax                                      // 0x0078d230    8bc8
                         and               ecx, 0x000000ff                               // 0x0078d232    81e1ff000000
                         add               ecx, 0x4                                      // 0x0078d238    83c104
                         add.s             edx, ecx                                      // 0x0078d23b    03d1
                         xor.s             edi, edi                                      // 0x0078d23d    33ff
                         cmp.s             eax, ebp                                      // 0x0078d23f    3bc5
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x0078d241    899614020000
                         {disp8} jbe       _jmp_addr_0x0078d262                          // 0x0078d247    7619
                         mov               ebx, 0x00df5c58                               // 0x0078d249    bb585cdf00
_jmp_addr_0x0078d24e:    push              ebx                                           // 0x0078d24e    53
                         mov.s             ecx, esi                                      // 0x0078d24f    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d251    e84aa5c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d256    8b442414
                         inc               edi                                           // 0x0078d25a    47
                         add               ebx, 0x04                                     // 0x0078d25b    83c304
                         cmp.s             edi, eax                                      // 0x0078d25e    3bf8
                         .byte             0x72, 0xec// {disp8} jb _jmp_addr_0x0078d24e  // 0x0078d260    72ec
_jmp_addr_0x0078d262:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d262    392d94c9be00
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d268    0f84a7010000
                         push              ebp                                           // 0x0078d26e    55
                         push              0x4                                           // 0x0078d26f    6a04
                         push              0x00e01e70                                    // 0x0078d271    68701ee000
                         mov.s             ecx, esi                                      // 0x0078d276    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0078d278    e863f60200
                         cmp               eax, 0x03                                     // 0x0078d27d    83f803
                         {disp8} jne       _jmp_addr_0x0078d288                          // 0x0078d280    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0078d282    892d94c9be00
_jmp_addr_0x0078d288:    {disp32} mov      edx, dword ptr [data_bytes + 0x43be70]        // 0x0078d288    8b15701ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078d28e    8b8e14020000
                         and               edx, 0x000000ff                               // 0x0078d294    81e2ff000000
                         add               edx, 0x04                                     // 0x0078d29a    83c204
                         add.s             ecx, edx                                      // 0x0078d29d    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078d29f    898e14020000
                         cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d2a5    392d94c9be00
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d2ab    0f8464010000
                         {disp8} lea       eax, dword ptr [esp + 0x14]                   // 0x0078d2b1    8d442414
                         push              eax                                           // 0x0078d2b5    50
                         mov.s             ecx, esi                                      // 0x0078d2b6    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d2b8    e8e3a4c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d2bd    8b442414
                         xor.s             edi, edi                                      // 0x0078d2c1    33ff
                         cmp.s             eax, ebp                                      // 0x0078d2c3    3bc5
                         {disp8} jbe       _jmp_addr_0x0078d2e0                          // 0x0078d2c5    7619
                         mov               ebx, 0x00df1b94                               // 0x0078d2c7    bb941bdf00
_jmp_addr_0x0078d2cc:    push              ebx                                           // 0x0078d2cc    53
                         mov.s             ecx, esi                                      // 0x0078d2cd    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d2cf    e8cca4c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d2d4    8b442414
                         inc               edi                                           // 0x0078d2d8    47
                         add               ebx, 0x04                                     // 0x0078d2d9    83c304
                         cmp.s             edi, eax                                      // 0x0078d2dc    3bf8
                         .byte             0x72, 0xec// {disp8} jb _jmp_addr_0x0078d2cc  // 0x0078d2de    72ec
_jmp_addr_0x0078d2e0:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d2e0    392d94c9be00
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d2e6    0f8429010000
                         push              ebp                                           // 0x0078d2ec    55
                         push              0x4                                           // 0x0078d2ed    6a04
                         push              0x00e01e74                                    // 0x0078d2ef    68741ee000
                         mov.s             ecx, esi                                      // 0x0078d2f4    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0078d2f6    e8e5f50200
                         cmp               eax, 0x03                                     // 0x0078d2fb    83f803
                         {disp8} jne       _jmp_addr_0x0078d306                          // 0x0078d2fe    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0078d300    892d94c9be00
_jmp_addr_0x0078d306:    {disp32} mov      ecx, dword ptr [data_bytes + 0x43be74]        // 0x0078d306    8b0d741ee000
                         {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x0078d30c    8b9614020000
                         and               ecx, 0x000000ff                               // 0x0078d312    81e1ff000000
                         add               ecx, 0x4                                      // 0x0078d318    83c104
                         add.s             edx, ecx                                      // 0x0078d31b    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x0078d31d    899614020000
                         cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d323    392d94c9be00
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d329    0f84e6000000
                         {disp8} lea       edx, dword ptr [esp + 0x14]                   // 0x0078d32f    8d542414
                         push              edx                                           // 0x0078d333    52
                         mov.s             ecx, esi                                      // 0x0078d334    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d336    e865a4c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d33b    8b442414
                         xor.s             edi, edi                                      // 0x0078d33f    33ff
                         cmp.s             eax, ebp                                      // 0x0078d341    3bc5
                         {disp8} jbe       _jmp_addr_0x0078d35e                          // 0x0078d343    7619
                         mov               ebx, 0x00dedad0                               // 0x0078d345    bbd0dade00
_jmp_addr_0x0078d34a:    push              ebx                                           // 0x0078d34a    53
                         mov.s             ecx, esi                                      // 0x0078d34b    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d34d    e84ea4c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d352    8b442414
                         inc               edi                                           // 0x0078d356    47
                         add               ebx, 0x04                                     // 0x0078d357    83c304
                         cmp.s             edi, eax                                      // 0x0078d35a    3bf8
                         .byte             0x72, 0xec// {disp8} jb _jmp_addr_0x0078d34a  // 0x0078d35c    72ec
_jmp_addr_0x0078d35e:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d35e    392d94c9be00
                         {disp32} je       _jmp_addr_0x0078d415                          // 0x0078d364    0f84ab000000
                         push              ebp                                           // 0x0078d36a    55
                         push              0x4                                           // 0x0078d36b    6a04
                         push              0x00e01e78                                    // 0x0078d36d    68781ee000
                         mov.s             ecx, esi                                      // 0x0078d372    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0078d374    e867f50200
                         cmp               eax, 0x03                                     // 0x0078d379    83f803
                         {disp8} jne       _jmp_addr_0x0078d384                          // 0x0078d37c    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0078d37e    892d94c9be00
_jmp_addr_0x0078d384:    {disp32} mov      eax, dword ptr [data_bytes + 0x43be78]        // 0x0078d384    a1781ee000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0078d389    8b8e14020000
                         and               eax, 0x000000ff                               // 0x0078d38f    25ff000000
                         add               eax, 0x04                                     // 0x0078d394    83c004
                         add.s             ecx, eax                                      // 0x0078d397    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0078d399    898e14020000
                         cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d39f    392d94c9be00
                         {disp8} je        _jmp_addr_0x0078d415                          // 0x0078d3a5    746e
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                   // 0x0078d3a7    8d4c2414
                         push              ecx                                           // 0x0078d3ab    51
                         mov.s             ecx, esi                                      // 0x0078d3ac    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d3ae    e8eda3c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d3b3    8b442414
                         xor.s             edi, edi                                      // 0x0078d3b7    33ff
                         cmp.s             eax, ebp                                      // 0x0078d3b9    3bc5
                         {disp8} jbe       _jmp_addr_0x0078d3d6                          // 0x0078d3bb    7619
                         mov               ebx, 0x00de9a0c                               // 0x0078d3bd    bb0c9ade00
_jmp_addr_0x0078d3c2:    push              ebx                                           // 0x0078d3c2    53
                         mov.s             ecx, esi                                      // 0x0078d3c3    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0078d3c5    e8d6a3c7ff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0078d3ca    8b442414
                         inc               edi                                           // 0x0078d3ce    47
                         add               ebx, 0x04                                     // 0x0078d3cf    83c304
                         cmp.s             edi, eax                                      // 0x0078d3d2    3bf8
                         .byte             0x72, 0xec// {disp8} jb _jmp_addr_0x0078d3c2  // 0x0078d3d4    72ec
_jmp_addr_0x0078d3d6:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0078d3d6    392d94c9be00
                         {disp8} je        _jmp_addr_0x0078d415                          // 0x0078d3dc    7437
                         push              ebp                                           // 0x0078d3de    55
                         push              0x4                                           // 0x0078d3df    6a04
                         push              0x00e01e7c                                    // 0x0078d3e1    687c1ee000
                         mov.s             ecx, esi                                      // 0x0078d3e6    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0078d3e8    e8f3f40200
                         cmp               eax, 0x03                                     // 0x0078d3ed    83f803
                         {disp8} jne       _jmp_addr_0x0078d3f8                          // 0x0078d3f0    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0078d3f2    892d94c9be00
_jmp_addr_0x0078d3f8:    {disp32} mov      edx, dword ptr [data_bytes + 0x43be7c]        // 0x0078d3f8    8b157c1ee000
                         {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x0078d3fe    8b8614020000
                         and               edx, 0x000000ff                               // 0x0078d404    81e2ff000000
                         add               edx, 0x04                                     // 0x0078d40a    83c204
                         add.s             eax, edx                                      // 0x0078d40d    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x0078d40f    898614020000
_jmp_addr_0x0078d415:    pop               edi                                           // 0x0078d415    5f
                         pop               esi                                           // 0x0078d416    5e
                         pop               ebp                                           // 0x0078d417    5d
                         pop               ebx                                           // 0x0078d418    5b
                         ret                                                             // 0x0078d419    c3
                         nop                                                             // 0x0078d41a    90
                         nop                                                             // 0x0078d41b    90
                         nop                                                             // 0x0078d41c    90
                         nop                                                             // 0x0078d41d    90
                         nop                                                             // 0x0078d41e    90
                         nop                                                             // 0x0078d41f    90
_jmp_addr_0x0078d420:    xor.s             edx, edx                                      // 0x0078d420    33d2
                         push              edi                                           // 0x0078d422    57
                         xor.s             eax, eax                                      // 0x0078d423    33c0
                         mov               ecx, 0x00001000                               // 0x0078d425    b900100000
                         mov               edi, 0x00de1a04                               // 0x0078d42a    bf041ade00
                         rep stosd                                                       // 0x0078d42f    f3ab
                         mov               ecx, 0x00000030                               // 0x0078d431    b930000000
                         mov               edi, 0x00df9d1c                               // 0x0078d436    bf1c9ddf00
                         rep stosd                                                       // 0x0078d43b    f3ab
                         mov               ecx, 0x00000030                               // 0x0078d43d    b930000000
                         mov               edi, 0x00df5c58                               // 0x0078d442    bf585cdf00
                         rep stosd                                                       // 0x0078d447    f3ab
                         mov               ecx, 0x00000030                               // 0x0078d449    b930000000
                         mov               edi, 0x00df1b94                               // 0x0078d44e    bf941bdf00
                         rep stosd                                                       // 0x0078d453    f3ab
                         mov               ecx, 0x00000030                               // 0x0078d455    b930000000
                         mov               edi, 0x00dedad0                               // 0x0078d45a    bfd0dade00
                         rep stosd                                                       // 0x0078d45f    f3ab
                         mov               ecx, 0x00000030                               // 0x0078d461    b930000000
                         mov               edi, 0x00de9a0c                               // 0x0078d466    bf0c9ade00
                         rep stosd                                                       // 0x0078d46b    f3ab
                         mov               ecx, 0x00001000                               // 0x0078d46d    b900100000
                         mov               edi, 0x00dfdde0                               // 0x0078d472    bfe0dddf00
                         rep stosd                                                       // 0x0078d477    f3ab
                         mov               ecx, 0x00001000                               // 0x0078d479    b900100000
                         mov               edi, 0x00df9ddc                               // 0x0078d47e    bfdc9ddf00
                         rep stosd                                                       // 0x0078d483    f3ab
                         mov               ecx, 0x00001000                               // 0x0078d485    b900100000
                         mov               edi, 0x00dedb90                               // 0x0078d48a    bf90dbde00
                         rep stosd                                                       // 0x0078d48f    f3ab
                         mov               ecx, 0x00001000                               // 0x0078d491    b900100000
                         mov               edi, 0x00df5d18                               // 0x0078d496    bf185ddf00
                         rep stosd                                                       // 0x0078d49b    f3ab
                         mov               ecx, 0x00001000                               // 0x0078d49d    b900100000
                         mov               edi, 0x00df1c54                               // 0x0078d4a2    bf541cdf00
                         rep stosd                                                       // 0x0078d4a7    f3ab
                         mov               ecx, 0x00001000                               // 0x0078d4a9    b900100000
                         mov               edi, 0x00de9acc                               // 0x0078d4ae    bfcc9ade00
                         rep stosd                                                       // 0x0078d4b3    f3ab
                         {disp32} mov      dword ptr [data_bytes + 0x437ddc], edx        // 0x0078d4b5    8915dcdddf00
                         {disp32} mov      dword ptr [data_bytes + 0x433d18], edx        // 0x0078d4bb    8915189ddf00
                         {disp32} mov      dword ptr [data_bytes + 0x42fc54], edx        // 0x0078d4c1    8915545cdf00
                         {disp32} mov      dword ptr [data_bytes + 0x41fa04], edx        // 0x0078d4c7    8915045ade00
                         {disp32} mov      dword ptr [data_bytes + 0x42bb90], edx        // 0x0078d4cd    8915901bdf00
                         {disp32} mov      dword ptr [data_bytes + 0x427acc], edx        // 0x0078d4d3    8915ccdade00
                         {disp32} mov      dword ptr [data_bytes + 0x423a08], edx        // 0x0078d4d9    8915089ade00
                         {disp32} mov      dword ptr [data_bytes + 0x43bdf4], edx        // 0x0078d4df    8915f41de000
                         {disp32} mov      dword ptr [data_bytes + 0x43bdf8], edx        // 0x0078d4e5    8915f81de000
                         {disp32} mov      dword ptr [data_bytes + 0x43bdf0], edx        // 0x0078d4eb    8915f01de000
                         {disp32} mov      dword ptr [data_bytes + 0x43bdec], edx        // 0x0078d4f1    8915ec1de000
                         {disp32} mov      dword ptr [data_bytes + 0x43bde8], edx        // 0x0078d4f7    8915e81de000
                         {disp32} mov      dword ptr [data_bytes + 0x43bde4], edx        // 0x0078d4fd    8915e41de000
                         {disp32} mov      dword ptr [data_bytes + 0x43bde0], edx        // 0x0078d503    8915e01de000
                         {disp32} mov      dword ptr [data_bytes + 0x43be48], edx        // 0x0078d509    8915481ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be4c], edx        // 0x0078d50f    89154c1ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be50], edx        // 0x0078d515    8915501ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be54], edx        // 0x0078d51b    8915541ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be58], edx        // 0x0078d521    8915581ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be5c], edx        // 0x0078d527    89155c1ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be60], edx        // 0x0078d52d    8915601ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be64], edx        // 0x0078d533    8915641ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be68], edx        // 0x0078d539    8915681ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be6c], edx        // 0x0078d53f    89156c1ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be70], edx        // 0x0078d545    8915701ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be74], edx        // 0x0078d54b    8915741ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be78], edx        // 0x0078d551    8915781ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be7c], edx        // 0x0078d557    89157c1ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be80], edx        // 0x0078d55d    8915801ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be84], edx        // 0x0078d563    8915841ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be88], edx        // 0x0078d569    8915881ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be8c], edx        // 0x0078d56f    89158c1ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be90], edx        // 0x0078d575    8915901ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be94], edx        // 0x0078d57b    8915941ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be98], edx        // 0x0078d581    8915981ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be9c], edx        // 0x0078d587    89159c1ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43bea0], edx        // 0x0078d58d    8915a01ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43bea4], edx        // 0x0078d593    8915a41ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43bea8], edx        // 0x0078d599    8915a81ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43beac], edx        // 0x0078d59f    8915ac1ee000
                         mov               ecx, 0x00001000                               // 0x0078d5a5    b900100000
                         mov               edi, 0x00de5a08                               // 0x0078d5aa    bf085ade00
                         rep stosd                                                       // 0x0078d5af    f3ab
                         {disp32} mov      dword ptr [data_bytes + 0x43beb0], edx        // 0x0078d5b1    8915b01ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43beb4], edx        // 0x0078d5b7    8915b41ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43be44], edx        // 0x0078d5bd    8915441ee000
                         {disp32} mov      dword ptr [data_bytes + 0x43beb8], edx        // 0x0078d5c3    8915b81ee000
                         pop               edi                                           // 0x0078d5c9    5f
                         ret                                                             // 0x0078d5ca    c3
                         nop                                                             // 0x0078d5cb    90
                         nop                                                             // 0x0078d5cc    90
                         nop                                                             // 0x0078d5cd    90
                         nop                                                             // 0x0078d5ce    90
                         nop                                                             // 0x0078d5cf    90
_globl_ct_0x0078d5d0:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0078d5d0    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0078d5d6    b001
                         test              al, cl                                        // 0x0078d5d8    84c8
                         {disp8} jne       _jmp_addr_0x0078d5e4                          // 0x0078d5da    7508
                         or.s              cl, al                                        // 0x0078d5dc    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0078d5de    880d34c9fa00
_jmp_addr_0x0078d5e4:    {disp32} jmp      _jmp_addr_0x0078d5f0                          // 0x0078d5e4    e907000000
                         nop                                                             // 0x0078d5e9    90
                         nop                                                             // 0x0078d5ea    90
                         nop                                                             // 0x0078d5eb    90
                         nop                                                             // 0x0078d5ec    90
                         nop                                                             // 0x0078d5ed    90
                         nop                                                             // 0x0078d5ee    90
                         nop                                                             // 0x0078d5ef    90
_jmp_addr_0x0078d5f0:    push              0x00407870                                    // 0x0078d5f0    6870784000
                         call              _atexit                                       // 0x0078d5f5    e897810300
                         pop               ecx                                           // 0x0078d5fa    59
                         ret                                                             // 0x0078d5fb    c3
                         nop                                                             // 0x0078d5fc    90
                         nop                                                             // 0x0078d5fd    90
                         nop                                                             // 0x0078d5fe    90
                         nop                                                             // 0x0078d5ff    90
_globl_ct_0x0078d600:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0078d600    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0078d606    b001
                         test              al, cl                                        // 0x0078d608    84c8
                         {disp8} jne       _jmp_addr_0x0078d614                          // 0x0078d60a    7508
                         or.s              cl, al                                        // 0x0078d60c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0078d60e    880d34c9fa00
_jmp_addr_0x0078d614:    {disp32} jmp      _jmp_addr_0x0078d620                          // 0x0078d614    e907000000
                         nop                                                             // 0x0078d619    90
                         nop                                                             // 0x0078d61a    90
                         nop                                                             // 0x0078d61b    90
                         nop                                                             // 0x0078d61c    90
                         nop                                                             // 0x0078d61d    90
                         nop                                                             // 0x0078d61e    90
                         nop                                                             // 0x0078d61f    90
_jmp_addr_0x0078d620:    push              0x00407870                                    // 0x0078d620    6870784000
                         call              _atexit                                       // 0x0078d625    e867810300
                         pop               ecx                                           // 0x0078d62a    59
                         ret                                                             // 0x0078d62b    c3
                         nop                                                             // 0x0078d62c    90
                         nop                                                             // 0x0078d62d    90
                         nop                                                             // 0x0078d62e    90
                         nop                                                             // 0x0078d62f    90
_globl_ct_0x0078d630:    {disp32} jmp      _jmp_addr_0x0078d640                          // 0x0078d630    e90b000000
                         nop                                                             // 0x0078d635    90
                         nop                                                             // 0x0078d636    90
                         nop                                                             // 0x0078d637    90
                         nop                                                             // 0x0078d638    90
                         nop                                                             // 0x0078d639    90
                         nop                                                             // 0x0078d63a    90
                         nop                                                             // 0x0078d63b    90
                         nop                                                             // 0x0078d63c    90
                         nop                                                             // 0x0078d63d    90
                         nop                                                             // 0x0078d63e    90
                         nop                                                             // 0x0078d63f    90
_jmp_addr_0x0078d640:    {disp32} mov      dword ptr [data_bytes + 0x43bec0], 0xffffffff // 0x0078d640    c705c01ee000ffffffff
                         ret                                                             // 0x0078d64a    c3
                         nop                                                             // 0x0078d64b    90
                         nop                                                             // 0x0078d64c    90
                         nop                                                             // 0x0078d64d    90
                         nop                                                             // 0x0078d64e    90
                         nop                                                             // 0x0078d64f    90
_globl_ct_0x0078d650:    {disp32} jmp      _jmp_addr_0x0078d660                          // 0x0078d650    e90b000000
                         nop                                                             // 0x0078d655    90
                         nop                                                             // 0x0078d656    90
                         nop                                                             // 0x0078d657    90
                         nop                                                             // 0x0078d658    90
                         nop                                                             // 0x0078d659    90
                         nop                                                             // 0x0078d65a    90
                         nop                                                             // 0x0078d65b    90
                         nop                                                             // 0x0078d65c    90
                         nop                                                             // 0x0078d65d    90
                         nop                                                             // 0x0078d65e    90
                         nop                                                             // 0x0078d65f    90
_jmp_addr_0x0078d660:    {disp32} fld      dword ptr [rdata_bytes + 0xf5c88]             // 0x0078d660    d90588ec9900
                         {disp32} fmul     dword ptr [rdata_bytes + 0xf5c84]             // 0x0078d666    d80d84ec9900
                         {disp32} fstp     dword ptr [data_bytes + 0x43bebc]             // 0x0078d66c    d91dbc1ee000
                         ret                                                             // 0x0078d672    c3
                         nop                                                             // 0x0078d673    90
                         nop                                                             // 0x0078d674    90
                         nop                                                             // 0x0078d675    90
                         nop                                                             // 0x0078d676    90
                         nop                                                             // 0x0078d677    90
                         nop                                                             // 0x0078d678    90
                         nop                                                             // 0x0078d679    90
                         nop                                                             // 0x0078d67a    90
                         nop                                                             // 0x0078d67b    90
                         nop                                                             // 0x0078d67c    90
                         nop                                                             // 0x0078d67d    90
                         nop                                                             // 0x0078d67e    90
                         nop                                                             // 0x0078d67f    90
_jmp_addr_0x0078d680:    sub               esp, 0x0c                                     // 0x0078d680    83ec0c
                         push              ebx                                           // 0x0078d683    53
                         push              ebp                                           // 0x0078d684    55
                         push              esi                                           // 0x0078d685    56
                         push              edi                                           // 0x0078d686    57
                         mov.s             ebx, ecx                                      // 0x0078d687    8bd9
                         push              0x00c283f0                                    // 0x0078d689    68f083c200
                         call              @__ct__15PictureRoomBaseFPCc@12               // 0x0078d68e    e87d1a0000
                         {disp8} mov       dword ptr [esp + 0x10], 0x42ae0000            // 0x0078d693    c74424100000ae42
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x0078d69b    8b4c2410
                         {disp32} lea      eax, dword ptr [ebx + 0x00000104]             // 0x0078d69f    8d8304010000
                         mov               dword ptr [eax], ecx                          // 0x0078d6a5    8908
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000            // 0x0078d6a7    c744241400000000
                         {disp8} mov       edx, dword ptr [esp + 0x14]                   // 0x0078d6af    8b542414
                         {disp8} mov       dword ptr [eax + 0x04], edx                   // 0x0078d6b3    895004
                         {disp8} mov       dword ptr [esp + 0x18], 0x42ae0000            // 0x0078d6b6    c74424180000ae42
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                   // 0x0078d6be    8b4c2418
                         {disp8} mov       dword ptr [eax + 0x08], ecx                   // 0x0078d6c2    894808
                         mov               dword ptr [ebx], 0x0099ec90                   // 0x0078d6c5    c70390ec9900
                         {disp32} mov      al, byte ptr [data_bytes + 0x2721e4]          // 0x0078d6cb    a0e481c300
                         xor.s             edx, edx                                      // 0x0078d6d0    33d2
                         cmp.s             al, dl                                        // 0x0078d6d2    3ac2
                         mov               eax, 0x00c283cc                               // 0x0078d6d4    b8cc83c200
                         {disp8} je        _jmp_addr_0x0078d6e0                          // 0x0078d6d9    7405
                         mov               eax, 0x00c283ac                               // 0x0078d6db    b8ac83c200
_jmp_addr_0x0078d6e0:    {disp32} mov      dword ptr [ebx + 0x00000114], eax             // 0x0078d6e0    898314010000
                         {disp32} mov      dword ptr [ebx + 0x00000120], 0x00c2838c      // 0x0078d6e6    c783200100008c83c200
                         {disp32} mov      dword ptr [ebx + 0x00000110], 0x00c2836c      // 0x0078d6f0    c783100100006c83c200
                         {disp32} mov      dword ptr [ebx + 0x00000118], 0x00c28348      // 0x0078d6fa    c783180100004883c200
                         cmp               byte ptr [data_bytes + 0x2721e4], dl          // 0x0078d704    3815e481c300
                         mov               eax, 0x00c28320                               // 0x0078d70a    b82083c200
                         {disp8} je        _jmp_addr_0x0078d716                          // 0x0078d70f    7405
                         mov               eax, 0x00c282f8                               // 0x0078d711    b8f882c200
_jmp_addr_0x0078d716:    {disp32} mov      dword ptr [ebx + 0x00000124], eax             // 0x0078d716    898324010000
                         {disp32} mov      dword ptr [ebx + 0x0000011c], edx             // 0x0078d71c    89931c010000
                         {disp32} mov      dword ptr [ebx + 0x00000128], 0x00000001      // 0x0078d722    c7832801000001000000
                         {disp32} mov      dword ptr [ebx + 0x00000100], 0x41f00000      // 0x0078d72c    c783000100000000f041
                         or                ecx, 0xffffffff                               // 0x0078d736    83c9ff
                         xor.s             eax, eax                                      // 0x0078d739    33c0
                         mov               edi, 0x00c282e0                               // 0x0078d73b    bfe082c200
                         repne scasb                                                     // 0x0078d740    f2ae
                         not               ecx                                           // 0x0078d742    f7d1
                         sub.s             edi, ecx                                      // 0x0078d744    2bf9
                         mov.s             eax, ecx                                      // 0x0078d746    8bc1
                         {disp8} lea       ebp, dword ptr [ebx + 0x3c]                   // 0x0078d748    8d6b3c
                         mov.s             esi, edi                                      // 0x0078d74b    8bf7
                         shr               ecx, 2                                        // 0x0078d74d    c1e902
                         mov.s             edi, ebp                                      // 0x0078d750    8bfd
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x0078d752    f3a5
                         mov.s             ecx, eax                                      // 0x0078d754    8bc8
                         and               ecx, 0x03                                     // 0x0078d756    83e103
                         rep movsb                                                       // 0x0078d759    f3a4
                         {disp32} mov      dword ptr [ebx + 0x00000130], edx             // 0x0078d75b    899330010000
                         {disp32} mov      dword ptr [ebx + 0x00000134], 0xc0e00000      // 0x0078d761    c783340100000000e0c0
                         mov               ecx, 0x41a00000                               // 0x0078d76b    b90000a041
                         {disp32} mov      dword ptr [ebx + 0x00000138], ecx             // 0x0078d770    898b38010000
                         {disp32} mov      dword ptr [ebx + 0x00000148], edx             // 0x0078d776    899348010000
                         {disp32} mov      dword ptr [ebx + 0x0000014c], 0x40c00000      // 0x0078d77c    c7834c0100000000c040
                         mov               eax, 0xc0800000                               // 0x0078d786    b8000080c0
                         {disp32} mov      dword ptr [ebx + 0x00000150], eax             // 0x0078d78b    898350010000
                         pop               edi                                           // 0x0078d791    5f
                         {disp32} mov      dword ptr [ebx + 0x0000013c], edx             // 0x0078d792    89933c010000
                         {disp32} mov      dword ptr [ebx + 0x00000140], 0x40e00000      // 0x0078d798    c783400100000000e040
                         {disp32} mov      dword ptr [ebx + 0x00000144], ecx             // 0x0078d7a2    898b44010000
                         pop               esi                                           // 0x0078d7a8    5e
                         {disp32} mov      dword ptr [ebx + 0x0000015c], eax             // 0x0078d7a9    89835c010000
                         {disp32} mov      dword ptr [ebx + 0x00000154], edx             // 0x0078d7af    899354010000
                         {disp32} mov      dword ptr [ebx + 0x00000158], 0xc0c00000      // 0x0078d7b5    c783580100000000c0c0
                         pop               ebp                                           // 0x0078d7bf    5d
                         {disp32} mov      dword ptr [ebx + 0x00000160], edx             // 0x0078d7c0    899360010000
                         mov.s             eax, ebx                                      // 0x0078d7c6    8bc3
                         pop               ebx                                           // 0x0078d7c8    5b
                         add               esp, 0x0c                                     // 0x0078d7c9    83c40c
                         ret                                                             // 0x0078d7cc    c3
                         nop                                                             // 0x0078d7cd    90
                         nop                                                             // 0x0078d7ce    90
                         nop                                                             // 0x0078d7cf    90
                         ret               0x0004                                        // 0x0078d7d0    c20400
                         nop                                                             // 0x0078d7d3    90
                         nop                                                             // 0x0078d7d4    90
                         nop                                                             // 0x0078d7d5    90
                         nop                                                             // 0x0078d7d6    90
                         nop                                                             // 0x0078d7d7    90
                         nop                                                             // 0x0078d7d8    90
                         nop                                                             // 0x0078d7d9    90
                         nop                                                             // 0x0078d7da    90
                         nop                                                             // 0x0078d7db    90
                         nop                                                             // 0x0078d7dc    90
                         nop                                                             // 0x0078d7dd    90
                         nop                                                             // 0x0078d7de    90
                         nop                                                             // 0x0078d7df    90
                         push              esi                                           // 0x0078d7e0    56
                         mov.s             esi, ecx                                      // 0x0078d7e1    8bf1
                         call              _jmp_addr_0x0078f320                          // 0x0078d7e3    e8381b0000
                         {disp32} mov      dword ptr [esi + 0x00000160], 0x00000000      // 0x0078d7e8    c7866001000000000000
                         pop               esi                                           // 0x0078d7f2    5e
                         ret                                                             // 0x0078d7f3    c3
                         nop                                                             // 0x0078d7f4    90
                         nop                                                             // 0x0078d7f5    90
                         nop                                                             // 0x0078d7f6    90
                         nop                                                             // 0x0078d7f7    90
                         nop                                                             // 0x0078d7f8    90
                         nop                                                             // 0x0078d7f9    90
                         nop                                                             // 0x0078d7fa    90
                         nop                                                             // 0x0078d7fb    90
                         nop                                                             // 0x0078d7fc    90
                         nop                                                             // 0x0078d7fd    90
                         nop                                                             // 0x0078d7fe    90
                         nop                                                             // 0x0078d7ff    90
                         mov               dword ptr [ecx], 0x0099ec90                   // 0x0078d800    c70190ec9900
                         {disp32} jmp      _jmp_addr_0x0078f1e0                          // 0x0078d806    e9d5190000
                         nop                                                             // 0x0078d80b    90
                         nop                                                             // 0x0078d80c    90
                         nop                                                             // 0x0078d80d    90
                         nop                                                             // 0x0078d80e    90
                         nop                                                             // 0x0078d80f    90
?Draw@GameOptionsRoom@@UAEXXZ:
                         {disp32} jmp      _jmp_addr_0x0078f1f0                          // 0x0078d810    e9db190000
                         nop                                                             // 0x0078d815    90
                         nop                                                             // 0x0078d816    90
                         nop                                                             // 0x0078d817    90
                         nop                                                             // 0x0078d818    90
                         nop                                                             // 0x0078d819    90
                         nop                                                             // 0x0078d81a    90
                         nop                                                             // 0x0078d81b    90
                         nop                                                             // 0x0078d81c    90
                         nop                                                             // 0x0078d81d    90
                         nop                                                             // 0x0078d81e    90
                         nop                                                             // 0x0078d81f    90
?UpdateMouse@GameOptionsRoom@@UAEXULHCoord@@W4INTERFACE_MESSAGE_TYPES@@@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0078d820    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x08]                   // 0x0078d824    8b542408
                         push              eax                                           // 0x0078d828    50
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0078d829    8b442408
                         push              edx                                           // 0x0078d82d    52
                         push              eax                                           // 0x0078d82e    50
                         call              _jmp_addr_0x0078f5e0                          // 0x0078d82f    e8ac1d0000
                         ret               0x000c                                        // 0x0078d834    c20c00
                         nop                                                             // 0x0078d837    90
                         nop                                                             // 0x0078d838    90
                         nop                                                             // 0x0078d839    90
                         nop                                                             // 0x0078d83a    90
                         nop                                                             // 0x0078d83b    90
                         nop                                                             // 0x0078d83c    90
                         nop                                                             // 0x0078d83d    90
                         nop                                                             // 0x0078d83e    90
                         nop                                                             // 0x0078d83f    90
?UpdateKeyboard@GameOptionsRoom@@UAEXW4LH_KEY@@G@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0078d840    8b442408
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0078d844    8b542404
                         push              eax                                           // 0x0078d848    50
                         push              edx                                           // 0x0078d849    52
                         call              _jmp_addr_0x0078f600                          // 0x0078d84a    e8b11d0000
                         ret               0x0008                                        // 0x0078d84f    c20800
                         nop                                                             // 0x0078d852    90
                         nop                                                             // 0x0078d853    90
                         nop                                                             // 0x0078d854    90
                         nop                                                             // 0x0078d855    90
                         nop                                                             // 0x0078d856    90
                         nop                                                             // 0x0078d857    90
                         nop                                                             // 0x0078d858    90
                         nop                                                             // 0x0078d859    90
                         nop                                                             // 0x0078d85a    90
                         nop                                                             // 0x0078d85b    90
                         nop                                                             // 0x0078d85c    90
                         nop                                                             // 0x0078d85d    90
                         nop                                                             // 0x0078d85e    90
                         nop                                                             // 0x0078d85f    90
?Update@GameOptionsRoom@@UAEXXZ:
                         push              esi                                           // 0x0078d860    56
                         mov.s             esi, ecx                                      // 0x0078d861    8bf1
                         call              ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0078d863    e868a6c7ff
                         test              eax, eax                                      // 0x0078d868    85c0
                         {disp8} jne       _jmp_addr_0x0078d8e4                          // 0x0078d86a    7578
                         {disp32} mov      eax, dword ptr [esi + 0x000000c4]             // 0x0078d86c    8b86c4000000
                         cmp               dword ptr [eax + 0x00000124], 0x01            // 0x0078d872    83b82401000001
                         {disp8} jne       _jmp_addr_0x0078d8e4                          // 0x0078d879    7569
                         {disp32} mov      eax, dword ptr [esi + 0x00000160]             // 0x0078d87b    8b8660010000
                         test              eax, eax                                      // 0x0078d881    85c0
                         {disp8} jne       _jmp_addr_0x0078d8ba                          // 0x0078d883    7535
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0078d885    8b0d5c19d000
                         {disp32} mov      edx, dword ptr [ecx + 0x000059b4]             // 0x0078d88b    8b91b4590000
                         cmp               dword ptr [edx + 0x1c], esi                   // 0x0078d891    39721c
                         {disp8} jne       _jmp_addr_0x0078d8ba                          // 0x0078d894    7524
                         call              ?SetCursorOn@FrontEnd@@SAXXZ                  // 0x0078d896    e8b5ebdaff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x0078d89b    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x0078d8a0    8b8804032500
                         {disp8} mov       ecx, dword ptr [ecx + 0x60]                   // 0x0078d8a6    8b4960
                         mov               edx, dword ptr [ecx]                          // 0x0078d8a9    8b11
                         call              dword ptr [edx + 0xc]                         // 0x0078d8ab    ff520c
                         {disp32} mov      dword ptr [esi + 0x00000160], 0x00000001      // 0x0078d8ae    c7866001000001000000
                         pop               esi                                           // 0x0078d8b8    5e
                         ret                                                             // 0x0078d8b9    c3
_jmp_addr_0x0078d8ba:    {disp32} mov      al, byte ptr [data_bytes + 0x30ab04]          // 0x0078d8ba    a0040bcd00
                         test              al, al                                        // 0x0078d8bf    84c0
                         {disp8} jne       _jmp_addr_0x0078d8e4                          // 0x0078d8c1    7521
                         call              _jmp_addr_0x0053c470                          // 0x0078d8c3    e8a8ebdaff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x0078d8c8    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]             // 0x0078d8cd    8b88b4590000
                         push              0x0                                           // 0x0078d8d3    6a00
                         call              _jmp_addr_0x00793d90                          // 0x0078d8d5    e8b6640000
                         {disp32} mov      dword ptr [esi + 0x00000160], 0x00000000      // 0x0078d8da    c7866001000000000000
_jmp_addr_0x0078d8e4:    pop               esi                                           // 0x0078d8e4    5e
                         ret                                                             // 0x0078d8e5    c3
                         nop                                                             // 0x0078d8e6    90
                         nop                                                             // 0x0078d8e7    90
                         nop                                                             // 0x0078d8e8    90
                         nop                                                             // 0x0078d8e9    90
                         nop                                                             // 0x0078d8ea    90
                         nop                                                             // 0x0078d8eb    90
                         nop                                                             // 0x0078d8ec    90
                         nop                                                             // 0x0078d8ed    90
                         nop                                                             // 0x0078d8ee    90
                         nop                                                             // 0x0078d8ef    90
?IsAvailable@GameOptionsRoom@@UAE_NXZ:
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0078d8f0    8b0d5c19d000
                         call              ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0078d8f6    e88556dcff
                         test              eax, eax                                      // 0x0078d8fb    85c0
                         {disp8} jne       _jmp_addr_0x0078d930                          // 0x0078d8fd    7531
                         {disp32} mov      eax, dword ptr [_game]                        // 0x0078d8ff    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00205a0c]             // 0x0078d904    8b880c5a2000
                         test              ecx, ecx                                      // 0x0078d90a    85c9
                         {disp8} jne       _jmp_addr_0x0078d930                          // 0x0078d90c    7522
                         {disp32} mov      ecx, dword ptr [eax + 0x00205b80]             // 0x0078d90e    8b88805b2000
                         {disp32} mov      edx, dword ptr [ecx + 0x00000094]             // 0x0078d914    8b9194000000
                         mov               eax, 0x00000001                               // 0x0078d91a    b801000000
                         cmp.s             edx, eax                                      // 0x0078d91f    3bd0
                         {disp8} jne       _jmp_addr_0x0078d92d                          // 0x0078d921    750a
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4741b0]        // 0x0078d923    8b0db0a1e300
                         test              ecx, ecx                                      // 0x0078d929    85c9
                         {disp8} jne       _jmp_addr_0x0078d935                          // 0x0078d92b    7508
_jmp_addr_0x0078d92d:    xor.s             eax, eax                                      // 0x0078d92d    33c0
                         ret                                                             // 0x0078d92f    c3
_jmp_addr_0x0078d930:    mov               eax, 0x00000001                               // 0x0078d930    b801000000
_jmp_addr_0x0078d935:    ret                                                             // 0x0078d935    c3
                         nop                                                             // 0x0078d936    90
                         nop                                                             // 0x0078d937    90
                         nop                                                             // 0x0078d938    90
                         nop                                                             // 0x0078d939    90
                         nop                                                             // 0x0078d93a    90
                         nop                                                             // 0x0078d93b    90
                         nop                                                             // 0x0078d93c    90
                         nop                                                             // 0x0078d93d    90
                         nop                                                             // 0x0078d93e    90
                         nop                                                             // 0x0078d93f    90
_globl_ct_0x0078d940:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0078d940    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0078d946    b001
                         test              al, cl                                        // 0x0078d948    84c8
                         {disp8} jne       _jmp_addr_0x0078d954                          // 0x0078d94a    7508
                         or.s              cl, al                                        // 0x0078d94c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0078d94e    880d34c9fa00
_jmp_addr_0x0078d954:    {disp32} jmp      _jmp_addr_0x0078d960                          // 0x0078d954    e907000000
                         nop                                                             // 0x0078d959    90
                         nop                                                             // 0x0078d95a    90
                         nop                                                             // 0x0078d95b    90
                         nop                                                             // 0x0078d95c    90
                         nop                                                             // 0x0078d95d    90
                         nop                                                             // 0x0078d95e    90
                         nop                                                             // 0x0078d95f    90
_jmp_addr_0x0078d960:    push              0x00407870                                    // 0x0078d960    6870784000
                         call              _atexit                                       // 0x0078d965    e8277e0300
                         pop               ecx                                           // 0x0078d96a    59
                         ret                                                             // 0x0078d96b    c3
                         nop                                                             // 0x0078d96c    90
                         nop                                                             // 0x0078d96d    90
                         nop                                                             // 0x0078d96e    90
                         nop                                                             // 0x0078d96f    90
_globl_ct_0x0078d970:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0078d970    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0078d976    b001
                         test              al, cl                                        // 0x0078d978    84c8
                         {disp8} jne       _jmp_addr_0x0078d984                          // 0x0078d97a    7508
                         or.s              cl, al                                        // 0x0078d97c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0078d97e    880d34c9fa00
_jmp_addr_0x0078d984:    {disp32} jmp      _jmp_addr_0x0078d990                          // 0x0078d984    e907000000
                         nop                                                             // 0x0078d989    90
                         nop                                                             // 0x0078d98a    90
                         nop                                                             // 0x0078d98b    90
                         nop                                                             // 0x0078d98c    90
                         nop                                                             // 0x0078d98d    90
                         nop                                                             // 0x0078d98e    90
                         nop                                                             // 0x0078d98f    90
_jmp_addr_0x0078d990:    push              0x00407870                                    // 0x0078d990    6870784000
                         call              _atexit                                       // 0x0078d995    e8f77d0300
                         pop               ecx                                           // 0x0078d99a    59
                         ret                                                             // 0x0078d99b    c3
                         nop                                                             // 0x0078d99c    90
                         nop                                                             // 0x0078d99d    90
                         nop                                                             // 0x0078d99e    90
                         nop                                                             // 0x0078d99f    90
                         call              ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0078d9a0    e82ba5c7ff
                         test              eax, eax                                      // 0x0078d9a5    85c0
                         {disp8} jne       _jmp_addr_0x0078d9d1                          // 0x0078d9a7    7528
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x2641c0]        // 0x0078d9a9    8b0dc0a1c200
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0078d9af    8b442404
                         mov               dword ptr [eax], ecx                          // 0x0078d9b3    8908
                         {disp32} mov      edx, dword ptr [data_bytes + 0x2641c4]        // 0x0078d9b5    8b15c4a1c200
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x0078d9bb    8b4c2408
                         mov               dword ptr [ecx], edx                          // 0x0078d9bf    8911
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x0078d9c1    8b54240c
                         push              esi                                           // 0x0078d9c5    56
                         {disp32} mov      esi, dword ptr [data_bytes + 0x470140]        // 0x0078d9c6    8b354061e300
                         mov               dword ptr [edx], esi                          // 0x0078d9cc    8932
                         pop               esi                                           // 0x0078d9ce    5e
                         {disp8} jmp       _jmp_addr_0x0078d9ef                          // 0x0078d9cf    eb1e
_jmp_addr_0x0078d9d1:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0078d9d1    8b442404
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x0078d9d5    8b4c2408
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x0078d9d9    8b54240c
                         mov               dword ptr [eax], 0xffffffff                   // 0x0078d9dd    c700ffffffff
                         mov               dword ptr [ecx], 0x00000000                   // 0x0078d9e3    c70100000000
                         mov               dword ptr [edx], 0x00000000                   // 0x0078d9e9    c70200000000
_jmp_addr_0x0078d9ef:    mov               edx, dword ptr [edx]                          // 0x0078d9ef    8b12
                         mov               eax, dword ptr [eax]                          // 0x0078d9f1    8b00
                         mov               ecx, dword ptr [ecx]                          // 0x0078d9f3    8b09
                         push              0x0                                           // 0x0078d9f5    6a00
                         push              0x0                                           // 0x0078d9f7    6a00
                         push              edx                                           // 0x0078d9f9    52
                         push              eax                                           // 0x0078d9fa    50
                         push              ecx                                           // 0x0078d9fb    51
                         call              _jmp_addr_0x005c9a70                          // 0x0078d9fc    e86fc0e3ff
                         add               esp, 0x14                                     // 0x0078da01    83c414
                         ret               0x000c                                        // 0x0078da04    c20c00
                         nop                                                             // 0x0078da07    90
                         nop                                                             // 0x0078da08    90
                         nop                                                             // 0x0078da09    90
                         nop                                                             // 0x0078da0a    90
                         nop                                                             // 0x0078da0b    90
                         nop                                                             // 0x0078da0c    90
                         nop                                                             // 0x0078da0d    90
                         nop                                                             // 0x0078da0e    90
                         nop                                                             // 0x0078da0f    90
_globl_ct_0x0078da10:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0078da10    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0078da16    b001
                         test              al, cl                                        // 0x0078da18    84c8
                         {disp8} jne       _jmp_addr_0x0078da24                          // 0x0078da1a    7508
                         or.s              cl, al                                        // 0x0078da1c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0078da1e    880d34c9fa00
_jmp_addr_0x0078da24:    {disp32} jmp      _jmp_addr_0x0078da30                          // 0x0078da24    e907000000
                         nop                                                             // 0x0078da29    90
                         nop                                                             // 0x0078da2a    90
                         nop                                                             // 0x0078da2b    90
                         nop                                                             // 0x0078da2c    90
                         nop                                                             // 0x0078da2d    90
                         nop                                                             // 0x0078da2e    90
                         nop                                                             // 0x0078da2f    90
_jmp_addr_0x0078da30:    push              0x00407870                                    // 0x0078da30    6870784000
                         call              _atexit                                       // 0x0078da35    e8577d0300
                         pop               ecx                                           // 0x0078da3a    59
                         ret                                                             // 0x0078da3b    c3
                         nop                                                             // 0x0078da3c    90
                         nop                                                             // 0x0078da3d    90
                         nop                                                             // 0x0078da3e    90
                         nop                                                             // 0x0078da3f    90
_jmp_addr_0x0078da40:    {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x0078da40    8b542410
                         mov.s             eax, ecx                                      // 0x0078da44    8bc1
                         {disp8} mov       cl, byte ptr [esp + 0x0c]                     // 0x0078da46    8a4c240c
                         {disp8} mov       byte ptr [eax + 0x04], cl                     // 0x0078da4a    884804
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x0078da4d    8b4c2414
                         {disp8} mov       dword ptr [eax + 0x08], edx                   // 0x0078da51    895008
                         {disp8} mov       edx, dword ptr [esp + 0x08]                   // 0x0078da54    8b542408
                         {disp8} mov       dword ptr [eax + 0x0c], ecx                   // 0x0078da58    89480c
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x0078da5b    8b4c2404
                         mov               dword ptr [eax], 0x0099ecd8                   // 0x0078da5f    c700d8ec9900
                         {disp8} mov       dword ptr [eax + 0x14], edx                   // 0x0078da65    895014
                         {disp8} mov       dword ptr [eax + 0x10], ecx                   // 0x0078da68    894810
                         ret               0x0014                                        // 0x0078da6b    c21400
                         nop                                                             // 0x0078da6e    90
                         nop                                                             // 0x0078da6f    90
_jmp_addr_0x0078da70:    mov               dword ptr [ecx], 0x0099ecd8                   // 0x0078da70    c701d8ec9900
                         ret                                                             // 0x0078da76    c3
                         nop                                                             // 0x0078da77    90
                         nop                                                             // 0x0078da78    90
                         nop                                                             // 0x0078da79    90
                         nop                                                             // 0x0078da7a    90
                         nop                                                             // 0x0078da7b    90
                         nop                                                             // 0x0078da7c    90
                         nop                                                             // 0x0078da7d    90
                         nop                                                             // 0x0078da7e    90
                         nop                                                             // 0x0078da7f    90
_jmp_addr_0x0078da80:    {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0078da80    8b44240c
                         test              eax, eax                                      // 0x0078da84    85c0
                         push              esi                                           // 0x0078da86    56
                         mov.s             esi, ecx                                      // 0x0078da87    8bf1
                         {disp8} je        _jmp_addr_0x0078daeb                          // 0x0078da89    7460
                         {disp32} fld      dword ptr [data_bytes + 0x470134]             // 0x0078da8b    d9053461e300
                         push              ebx                                           // 0x0078da91    53
                         {disp32} fmul     dword ptr [rdata_bytes + 0x261c0]             // 0x0078da92    d80dc0f18c00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1e8e8]             // 0x0078da98    d80de8788c00
                         call              _jmp_addr_0x007a1400                          // 0x0078da9e    e85d390100
                         {disp32} fld      dword ptr [data_bytes + 0x470134]             // 0x0078daa3    d9053461e300
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1e658]             // 0x0078daa9    d80d58768c00
                         mov.s             bl, al                                        // 0x0078daaf    8ad8
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1e8e8]             // 0x0078dab1    d80de8788c00
                         call              _jmp_addr_0x007a1400                          // 0x0078dab7    e844390100
                         {disp8} mov       byte ptr [esp + 0x14], al                     // 0x0078dabc    88442414
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0078dac0    8b44240c
                         {disp8} mov       byte ptr [esp + 0x15], bl                     // 0x0078dac4    885c2415
                         {disp8} mov       byte ptr [esp + 0x16], bl                     // 0x0078dac8    885c2416
                         {disp8} mov       byte ptr [esp + 0x17], -0x01                  // 0x0078dacc    c6442417ff
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x0078dad1    8b4c2414
                         {disp8} mov       dword ptr [eax + 0x0c], ecx                   // 0x0078dad5    89480c
                         xor.s             ecx, ecx                                      // 0x0078dad8    33c9
                         {disp8} mov       dword ptr [eax + 0x40], 0x00000000            // 0x0078dada    c7404000000000
                         {disp8} mov       cl, byte ptr [esi + 0x04]                     // 0x0078dae1    8a4e04
                         pop               ebx                                           // 0x0078dae4    5b
                         pop               esi                                           // 0x0078dae5    5e
                         mov               dword ptr [eax], ecx                          // 0x0078dae6    8908
                         ret               0x000c                                        // 0x0078dae8    c20c00
_jmp_addr_0x0078daeb:    {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0078daeb    8b442408
                         {disp8} mov       byte ptr [esp + 0x10], 0x00                   // 0x0078daef    c644241000
                         {disp8} mov       byte ptr [esp + 0x11], 0x00                   // 0x0078daf4    c644241100
                         {disp8} mov       byte ptr [esp + 0x12], 0x00                   // 0x0078daf9    c644241200
                         {disp8} mov       byte ptr [esp + 0x13], -0x01                  // 0x0078dafe    c6442413ff
                         {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x0078db03    8b542410
                         xor.s             ecx, ecx                                      // 0x0078db07    33c9
                         {disp8} mov       dword ptr [eax + 0x0c], edx                   // 0x0078db09    89500c
                         {disp8} mov       dword ptr [eax + 0x40], 0x00000000            // 0x0078db0c    c7404000000000
                         {disp8} mov       cl, byte ptr [esi + 0x04]                     // 0x0078db13    8a4e04
                         pop               esi                                           // 0x0078db16    5e
                         mov               dword ptr [eax], ecx                          // 0x0078db17    8908
                         ret               0x000c                                        // 0x0078db19    c20c00
                         nop                                                             // 0x0078db1c    90
                         nop                                                             // 0x0078db1d    90
                         nop                                                             // 0x0078db1e    90
                         nop                                                             // 0x0078db1f    90
_jmp_addr_0x0078db20:    {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0078db20    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0078db24    8b542404
                         push              esi                                           // 0x0078db28    56
                         push              0x1                                           // 0x0078db29    6a01
                         push              0x0                                           // 0x0078db2b    6a00
                         mov.s             esi, ecx                                      // 0x0078db2d    8bf1
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x0078db2f    8b4c2414
                         push              eax                                           // 0x0078db33    50
                         push              ecx                                           // 0x0078db34    51
                         push              edx                                           // 0x0078db35    52
                         mov.s             ecx, esi                                      // 0x0078db36    8bce
                         call              _jmp_addr_0x0078da40                          // 0x0078db38    e803ffffff
                         mov               dword ptr [esi], 0x0099ece8                   // 0x0078db3d    c706e8ec9900
                         {disp8} mov       dword ptr [esi + 0x18], 0x00000000            // 0x0078db43    c7461800000000
                         mov.s             eax, esi                                      // 0x0078db4a    8bc6
                         pop               esi                                           // 0x0078db4c    5e
                         ret               0x000c                                        // 0x0078db4d    c20c00
                         mov               dword ptr [ecx], 0x0099ece8                   // 0x0078db50    c701e8ec9900
                         {disp32} jmp      _jmp_addr_0x0078da70                          // 0x0078db56    e915ffffff
                         nop                                                             // 0x0078db5b    90
                         nop                                                             // 0x0078db5c    90
                         nop                                                             // 0x0078db5d    90
                         nop                                                             // 0x0078db5e    90
                         nop                                                             // 0x0078db5f    90
?GetSubMeshData@SubOptionEntryButton@@UAEXAAUSubMeshDrawData@@HH@Z:
                         sub               esp, 0x24                                     // 0x0078db60    83ec24
                         {disp8} mov       eax, dword ptr [esp + 0x30]                   // 0x0078db63    8b442430
                         push              esi                                           // 0x0078db67    56
                         {disp8} mov       esi, dword ptr [esp + 0x2c]                   // 0x0078db68    8b74242c
                         push              edi                                           // 0x0078db6c    57
                         push              eax                                           // 0x0078db6d    50
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x0078db6e    89442414
                         {disp8} mov       eax, dword ptr [esp + 0x38]                   // 0x0078db72    8b442438
                         push              eax                                           // 0x0078db76    50
                         mov.s             edi, ecx                                      // 0x0078db77    8bf9
                         push              esi                                           // 0x0078db79    56
                         call              _jmp_addr_0x0078da80                          // 0x0078db7a    e801ffffff
                         xor.s             ecx, ecx                                      // 0x0078db7f    33c9
                         {disp8} mov       cl, byte ptr [edi + 0x04]                     // 0x0078db81    8a4f04
                         mov               dl, -0x01                                     // 0x0078db84    b2ff
                         {disp8} mov       byte ptr [esp + 0x38], dl                     // 0x0078db86    88542438
                         {disp8} mov       byte ptr [esp + 0x39], dl                     // 0x0078db8a    88542439
                         {disp8} mov       byte ptr [esp + 0x3a], dl                     // 0x0078db8e    8854243a
                         {disp8} mov       byte ptr [esp + 0x3b], dl                     // 0x0078db92    8854243b
                         {disp8} mov       eax, dword ptr [esp + 0x38]                   // 0x0078db96    8b442438
                         {disp8} mov       dword ptr [esi + 0x08], eax                   // 0x0078db9a    894608
                         mov               dword ptr [esi], ecx                          // 0x0078db9d    890e
                         {disp8} mov       ecx, dword ptr [edi + 0x18]                   // 0x0078db9f    8b4f18
                         xor.s             eax, eax                                      // 0x0078dba2    33c0
                         cmp.s             ecx, eax                                      // 0x0078dba4    3bc8
                         {disp8} je        _jmp_addr_0x0078dbd7                          // 0x0078dba6    742f
                         mov               ecx, 0x3f800000                               // 0x0078dba8    b90000803f
                         {disp8} mov       dword ptr [esi + 0x2c], eax                   // 0x0078dbad    89462c
                         {disp8} mov       dword ptr [esi + 0x28], eax                   // 0x0078dbb0    894628
                         {disp8} mov       dword ptr [esi + 0x24], eax                   // 0x0078dbb3    894624
                         {disp8} mov       dword ptr [esi + 0x1c], eax                   // 0x0078dbb6    89461c
                         {disp8} mov       dword ptr [esi + 0x18], eax                   // 0x0078dbb9    894618
                         {disp8} mov       dword ptr [esi + 0x14], eax                   // 0x0078dbbc    894614
                         {disp8} mov       dword ptr [esi + 0x30], ecx                   // 0x0078dbbf    894e30
                         {disp8} mov       dword ptr [esi + 0x20], ecx                   // 0x0078dbc2    894e20
                         {disp8} mov       dword ptr [esi + 0x10], ecx                   // 0x0078dbc5    894e10
                         {disp8} mov       dword ptr [esi + 0x34], eax                   // 0x0078dbc8    894634
                         {disp8} mov       dword ptr [esi + 0x38], eax                   // 0x0078dbcb    894638
                         {disp8} mov       dword ptr [esi + 0x3c], 0xbe99999a            // 0x0078dbce    c7463c9a9999be
                         {disp8} jmp       _jmp_addr_0x0078dc00                          // 0x0078dbd5    eb29
_jmp_addr_0x0078dbd7:    mov               ecx, 0x3f800000                               // 0x0078dbd7    b90000803f
                         {disp8} mov       dword ptr [esi + 0x3c], eax                   // 0x0078dbdc    89463c
                         {disp8} mov       dword ptr [esi + 0x38], eax                   // 0x0078dbdf    894638
                         {disp8} mov       dword ptr [esi + 0x34], eax                   // 0x0078dbe2    894634
                         {disp8} mov       dword ptr [esi + 0x2c], eax                   // 0x0078dbe5    89462c
                         {disp8} mov       dword ptr [esi + 0x28], eax                   // 0x0078dbe8    894628
                         {disp8} mov       dword ptr [esi + 0x24], eax                   // 0x0078dbeb    894624
                         {disp8} mov       dword ptr [esi + 0x1c], eax                   // 0x0078dbee    89461c
                         {disp8} mov       dword ptr [esi + 0x18], eax                   // 0x0078dbf1    894618
                         {disp8} mov       dword ptr [esi + 0x14], eax                   // 0x0078dbf4    894614
                         {disp8} mov       dword ptr [esi + 0x30], ecx                   // 0x0078dbf7    894e30
                         {disp8} mov       dword ptr [esi + 0x20], ecx                   // 0x0078dbfa    894e20
                         {disp8} mov       dword ptr [esi + 0x10], ecx                   // 0x0078dbfd    894e10
_jmp_addr_0x0078dc00:    {disp8} mov       byte ptr [esp + 0x3b], dl                     // 0x0078dc00    8854243b
                         {disp8} mov       byte ptr [esp + 0x38], al                     // 0x0078dc04    88442438
                         {disp8} mov       byte ptr [esp + 0x39], al                     // 0x0078dc08    88442439
                         {disp8} mov       byte ptr [esp + 0x3a], al                     // 0x0078dc0c    8844243a
                         {disp8} mov       ecx, dword ptr [esp + 0x38]                   // 0x0078dc10    8b4c2438
                         {disp8} lea       edx, dword ptr [esp + 0x08]                   // 0x0078dc14    8d542408
                         push              edx                                           // 0x0078dc18    52
                         {disp8} mov       dword ptr [esi + 0x54], ecx                   // 0x0078dc19    894e54
                         {disp8} mov       dword ptr [esi + 0x58], eax                   // 0x0078dc1c    894658
                         {disp8} mov       dword ptr [esi + 0x5c], eax                   // 0x0078dc1f    89465c
                         {disp8} mov       dword ptr [esi + 0x40], eax                   // 0x0078dc22    894640
                         call              dword ptr [edi + 0x14]                        // 0x0078dc25    ff5714
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0078dc28    8b44240c
                         add               esp, 0x04                                     // 0x0078dc2c    83c404
                         pop               edi                                           // 0x0078dc2f    5f
                         {disp8} mov       dword ptr [esi + 0x04], eax                   // 0x0078dc30    894604
                         pop               esi                                           // 0x0078dc33    5e
                         add               esp, 0x24                                     // 0x0078dc34    83c424
                         ret               0x000c                                        // 0x0078dc37    c20c00
                         nop                                                             // 0x0078dc3a    90
                         nop                                                             // 0x0078dc3b    90
                         nop                                                             // 0x0078dc3c    90
                         nop                                                             // 0x0078dc3d    90
                         nop                                                             // 0x0078dc3e    90
                         nop                                                             // 0x0078dc3f    90
?UpdateMouse@SubOptionEntryButton@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0078dc40    8b44240c
                         sub               esp, 0x24                                     // 0x0078dc44    83ec24
                         dec               eax                                           // 0x0078dc47    48
                         cmp               eax, 0x03                                     // 0x0078dc48    83f803
                         push              esi                                           // 0x0078dc4b    56
                         mov.s             esi, ecx                                      // 0x0078dc4c    8bf1
                         {disp8} ja        _jmp_addr_0x0078dcae                          // 0x0078dc4e    775e
                         jmp               dword ptr [eax*4 + 0x78dcb8]                  // 0x0078dc50    ff2485b8dc7800
                         {disp8} mov       eax, dword ptr [esi + 0x18]                   // 0x0078dc57    8b4618
                         test              eax, eax                                      // 0x0078dc5a    85c0
                         {disp8} jne       _jmp_addr_0x0078dc86                          // 0x0078dc5c    7528
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0078dc5e    8b0d5c19d000
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0078dc64    e8e77bdcff
                         test              eax, eax                                      // 0x0078dc69    85c0
                         {disp8} je        _jmp_addr_0x0078dc86                          // 0x0078dc6b    7419
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0078dc6d    8b0d5c19d000
                         push              0x80000000                                    // 0x0078dc73    6800000080
                         push              0x2c                                          // 0x0078dc78    6a2c
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0078dc7a    e8d17bdcff
                         mov.s             ecx, eax                                      // 0x0078dc7f    8bc8
                         call              _jmp_addr_0x005d8a10                          // 0x0078dc81    e88aade4ff
_jmp_addr_0x0078dc86:    {disp8} mov       dword ptr [esi + 0x18], 0x00000001            // 0x0078dc86    c7461801000000
                         pop               esi                                           // 0x0078dc8d    5e
                         add               esp, 0x24                                     // 0x0078dc8e    83c424
                         ret               0x0010                                        // 0x0078dc91    c21000
                         {disp8} mov       eax, dword ptr [esp + 0x38]                   // 0x0078dc94    8b442438
                         test              eax, eax                                      // 0x0078dc98    85c0
                         {disp8} mov       dword ptr [esi + 0x18], 0x00000000            // 0x0078dc9a    c7461800000000
                         {disp8} je        _jmp_addr_0x0078dcae                          // 0x0078dca1    740b
                         {disp8} lea       ecx, dword ptr [esp + 0x04]                   // 0x0078dca3    8d4c2404
                         push              ecx                                           // 0x0078dca7    51
                         call              dword ptr [esi + 0x10]                        // 0x0078dca8    ff5610
                         add               esp, 0x04                                     // 0x0078dcab    83c404
_jmp_addr_0x0078dcae:    pop               esi                                           // 0x0078dcae    5e
                         add               esp, 0x24                                     // 0x0078dcaf    83c424
                         ret               0x0010                                        // 0x0078dcb2    c21000

// Snippet: db, [0x0078dcb5, 0x0078dcb8)
.byte 0x8d, 0x49, 0x00            // 0x0078dcb5

// Snippet: jmptbl, [0x0078dcb8, 0x0078dcc8)
.byte 0x57, 0xdc, 0x78, 0x00      // 0x0078dcb8
.byte 0x94, 0xdc, 0x78, 0x00      // 0x0078dcbc
.byte 0x57, 0xdc, 0x78, 0x00      // 0x0078dcc0
.byte 0x94, 0xdc, 0x78, 0x00      // 0x0078dcc4

// Snippet: db, [0x0078dcc8, 0x0078dcd0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078dcc8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0078dccc

