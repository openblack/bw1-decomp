.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl _jmp_addr_0x00756e20

?InteractDecideWhatToDoForOtherVillager@Villager@@QAEXXZ:
                         sub                esp, 0x14                                     // 0x00756d30    83ec14
                         push               ebp                                           // 0x00756d33    55
                         push               esi                                           // 0x00756d34    56
                         push               edi                                           // 0x00756d35    57
                         mov.s              edi, ecx                                      // 0x00756d36    8bf9
                         {disp8} lea        eax, dword ptr [edi + 0x14]                   // 0x00756d38    8d4714
                         mov                ecx, dword ptr [eax]                          // 0x00756d3b    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00756d3d    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00756d40    8b4008
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00756d43    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00756d47    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00756d4b    8944241c
                         mov                ebp, 0x00000009                               // 0x00756d4f    bd09000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000001            // 0x00756d54    c744241001000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000001            // 0x00756d5c    c744240c01000000
_jmp_addr_0x00756d64:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00756d64    8d4c2414
                         call               ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ         // 0x00756d68    e843c7eaff
                         mov.s              esi, eax                                      // 0x00756d6d    8bf0
                         test               esi, esi                                      // 0x00756d6f    85f6
                         {disp8} je         _jmp_addr_0x00756dc6                          // 0x00756d71    7453
_jmp_addr_0x00756d73:    cmp.s              esi, edi                                      // 0x00756d73    3bf7
                         {disp8} je         _jmp_addr_0x00756db4                          // 0x00756d75    743d
                         mov                edx, dword ptr [esi]                          // 0x00756d77    8b16
                         mov.s              ecx, esi                                      // 0x00756d79    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x00756d7b    ff522c
                         test               eax, eax                                      // 0x00756d7e    85c0
                         {disp8} je         _jmp_addr_0x00756db4                          // 0x00756d80    7432
                         mov                eax, dword ptr [esi]                          // 0x00756d82    8b06
                         mov.s              ecx, esi                                      // 0x00756d84    8bce
                         call               dword ptr [eax + 0x208]                       // 0x00756d86    ff9008020000
                         test               eax, eax                                      // 0x00756d8c    85c0
                         {disp8} je         _jmp_addr_0x00756db4                          // 0x00756d8e    7424
                         push               0x0                                           // 0x00756d90    6a00
                         push               0x009c7fa0                                    // 0x00756d92    68a07f9c00
                         push               0x009c7f50                                    // 0x00756d97    68507f9c00
                         push               0x0                                           // 0x00756d9c    6a00
                         push               esi                                           // 0x00756d9e    56
                         call               ___RTDynamicCast                              // 0x00756d9f    e875ec0600
                         add                esp, 0x14                                     // 0x00756da4    83c414
                         push               eax                                           // 0x00756da7    50
                         mov.s              ecx, edi                                      // 0x00756da8    8bcf
                         call               _jmp_addr_0x00757180                          // 0x00756daa    e8d1030000
                         cmp                eax, 0x01                                     // 0x00756daf    83f801
                         {disp8} je         _jmp_addr_0x00756dfc                          // 0x00756db2    7448
_jmp_addr_0x00756db4:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00756db4    8d4c2414
                         push               ecx                                           // 0x00756db8    51
                         mov.s              ecx, esi                                      // 0x00756db9    8bce
                         call               @GetMapChild__6ObjectFRC9MapCoords@12         // 0x00756dbb    e8a017eeff
                         mov.s              esi, eax                                      // 0x00756dc0    8bf0
                         test               esi, esi                                      // 0x00756dc2    85f6
                         {disp8} jne        _jmp_addr_0x00756d73                          // 0x00756dc4    75ad
_jmp_addr_0x00756dc6:    {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00756dc6    8d54240c
                         push               edx                                           // 0x00756dca    52
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00756dcb    8d442414
                         push               eax                                           // 0x00756dcf    50
                         dec                ebp                                           // 0x00756dd0    4d
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x00756dd1    e80a6affff
                         add                esp, 0x08                                     // 0x00756dd6    83c408
                         push               eax                                           // 0x00756dd9    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00756dda    8d4c2418
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12            // 0x00756dde    e88de6eaff
                         test               ebp, ebp                                      // 0x00756de3    85ed
                         {disp32} jne       _jmp_addr_0x00756d64                          // 0x00756de5    0f8579ffffff
                         mov                edx, dword ptr [edi]                          // 0x00756deb    8b17
                         mov.s              ecx, edi                                      // 0x00756ded    8bcf
                         call               dword ptr [edx + 0x8c8]                       // 0x00756def    ff92c8080000
                         pop                edi                                           // 0x00756df5    5f
                         pop                esi                                           // 0x00756df6    5e
                         pop                ebp                                           // 0x00756df7    5d
                         add                esp, 0x14                                     // 0x00756df8    83c414
                         ret                                                              // 0x00756dfb    c3
_jmp_addr_0x00756dfc:    pop                edi                                           // 0x00756dfc    5f
                         pop                esi                                           // 0x00756dfd    5e
                         mov                eax, 0x00000001                               // 0x00756dfe    b801000000
                         pop                ebp                                           // 0x00756e03    5d
                         add                esp, 0x14                                     // 0x00756e04    83c414
                         ret                                                              // 0x00756e07    c3
                         nop                                                              // 0x00756e08    90
                         nop                                                              // 0x00756e09    90
                         nop                                                              // 0x00756e0a    90
                         nop                                                              // 0x00756e0b    90
                         nop                                                              // 0x00756e0c    90
                         nop                                                              // 0x00756e0d    90
                         nop                                                              // 0x00756e0e    90
                         nop                                                              // 0x00756e0f    90

?InteractDecideWhatToDo@Villager@@QAEXXZ:
                         mov                eax, dword ptr [ecx]                          // 0x00756e10    8b01
                         jmp                dword ptr [eax + 0x8c8]                       // 0x00756e12    ffa0c8080000
                         nop                                                              // 0x00756e18    90
                         nop                                                              // 0x00756e19    90
                         nop                                                              // 0x00756e1a    90
                         nop                                                              // 0x00756e1b    90
                         nop                                                              // 0x00756e1c    90
                         nop                                                              // 0x00756e1d    90
                         nop                                                              // 0x00756e1e    90
                         nop                                                              // 0x00756e1f    90

_jmp_addr_0x00756e20:
                         xor.s              eax, eax                                      // 0x00756e20    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x000000f2]               // 0x00756e22    8a81f2000000
                         dec                eax                                           // 0x00756e28    48
                         cmp                eax, 0x09                                     // 0x00756e29    83f809
                         {disp8} ja         _jmp_addr_0x00756e53                          // 0x00756e2c    7725
                         jmp                dword ptr [eax*4 + 0x756e58]                  // 0x00756e2e    ff2485586e7500
                         mov                eax, 0x000000ad                               // 0x00756e35    b8ad000000
                         ret                                                              // 0x00756e3a    c3
                         mov                eax, 0x000000af                               // 0x00756e3b    b8af000000
                         ret                                                              // 0x00756e40    c3
                         mov                eax, 0x000000ae                               // 0x00756e41    b8ae000000
                         ret                                                              // 0x00756e46    c3
                         mov                eax, 0x000000b3                               // 0x00756e47    b8b3000000
                         ret                                                              // 0x00756e4c    c3
                         mov                eax, 0x000000ac                               // 0x00756e4d    b8ac000000
                         ret                                                              // 0x00756e52    c3
_jmp_addr_0x00756e53:    xor.s              eax, eax                                      // 0x00756e53    33c0
                         ret                                                              // 0x00756e55    c3

// Snippet: db, [0x00756e56, 0x00756e58)
.byte 0x8b, 0xff                  // 0x00756e56

// Snippet: jmptbl, [0x00756e58, 0x00756e80)
.byte 0x35, 0x6e, 0x75, 0x00      // 0x00756e58
.byte 0x3b, 0x6e, 0x75, 0x00      // 0x00756e5c
.byte 0x41, 0x6e, 0x75, 0x00      // 0x00756e60
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e64
.byte 0x47, 0x6e, 0x75, 0x00      // 0x00756e68
.byte 0x53, 0x6e, 0x75, 0x00      // 0x00756e6c
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e70
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e74
.byte 0x53, 0x6e, 0x75, 0x00      // 0x00756e78
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e7c

