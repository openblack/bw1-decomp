.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl ?ApplyThisToMapCoord@Mobile@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z
.globl ?Save@Mobile@@UAEIAAVGameOSFile@@@Z
.globl ?Load@Mobile@@UAEIAAVGameOSFile@@@Z

.globl _globl_ct_0x00606b00
.globl _globl_ct_0x00606b30
.globl ?GetBaseInfo@GSpeedThreshold@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGSpeedThreshold@@UAEPAXI@Z
.globl ?BlocksTownClearArea@Mobile@@UBE_NXZ

_globl_ct_0x00606b00:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00606b00    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00606b06    b001
                         test               al, cl                                        // 0x00606b08    84c8
                         {disp8} jne        .Lbl_addr_0x00606b14                          // 0x00606b0a    7508
                         or.s               cl, al                                        // 0x00606b0c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00606b0e    880d34c9fa00
.Lbl_addr_0x00606b14:    {disp32} jmp       .Lbl_addr_0x00606b20                          // 0x00606b14    e907000000
                         nop                                                              // 0x00606b19    90
                         nop                                                              // 0x00606b1a    90
                         nop                                                              // 0x00606b1b    90
                         nop                                                              // 0x00606b1c    90
                         nop                                                              // 0x00606b1d    90
                         nop                                                              // 0x00606b1e    90
                         nop                                                              // 0x00606b1f    90
.Lbl_addr_0x00606b20:    push               0x00407870                                    // 0x00606b20    6870784000
                         call               _atexit                                       // 0x00606b25    e867ec1b00
                         pop                ecx                                           // 0x00606b2a    59
                         ret                                                              // 0x00606b2b    c3
                         nop                                                              // 0x00606b2c    90
                         nop                                                              // 0x00606b2d    90
                         nop                                                              // 0x00606b2e    90
                         nop                                                              // 0x00606b2f    90
_globl_ct_0x00606b30:    call               .Lbl_addr_0x00606b40                          // 0x00606b30    e80b000000
                         {disp32} jmp       .Lbl_addr_0x00606b90                          // 0x00606b35    e956000000
                         nop                                                              // 0x00606b3a    90
                         nop                                                              // 0x00606b3b    90
                         nop                                                              // 0x00606b3c    90
                         nop                                                              // 0x00606b3d    90
                         nop                                                              // 0x00606b3e    90
                         nop                                                              // 0x00606b3f    90
.Lbl_addr_0x00606b40:    mov                eax, 0x00d38348                               // 0x00606b40    b84883d300
                         mov                ecx, 0x0000000a                               // 0x00606b45    b90a000000
                         xor.s              edx, edx                                      // 0x00606b4a    33d2
.att_syntax
.Lbl_addr_0x00606b4c:    movl               $??_7Base@@6B@, (%eax)                        // 0x00606b4c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00606b52    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00606b55    895008
                         mov                dword ptr [eax], 0x00930594                   // 0x00606b58    c70094059300
                         add                eax, 0x18                                     // 0x00606b5e    83c018
                         dec                ecx                                           // 0x00606b61    49
                         {disp8} jne        .Lbl_addr_0x00606b4c                          // 0x00606b62    75e8
                         ret                                                              // 0x00606b64    c3
                         nop                                                              // 0x00606b65    90
                         nop                                                              // 0x00606b66    90
                         nop                                                              // 0x00606b67    90
                         nop                                                              // 0x00606b68    90
                         nop                                                              // 0x00606b69    90
                         nop                                                              // 0x00606b6a    90
                         nop                                                              // 0x00606b6b    90
                         nop                                                              // 0x00606b6c    90
                         nop                                                              // 0x00606b6d    90
                         nop                                                              // 0x00606b6e    90
                         nop                                                              // 0x00606b6f    90
?GetBaseInfo@GSpeedThreshold@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00606b70    8b442404
                         mov                dword ptr [eax], 0x0000000a                   // 0x00606b74    c7000a000000
                         mov                eax, 0x00d38348                               // 0x00606b7a    b84883d300
                         ret                0x0004                                        // 0x00606b7f    c20400
                         nop                                                              // 0x00606b82    90
                         nop                                                              // 0x00606b83    90
                         nop                                                              // 0x00606b84    90
                         nop                                                              // 0x00606b85    90
                         nop                                                              // 0x00606b86    90
                         nop                                                              // 0x00606b87    90
                         nop                                                              // 0x00606b88    90
                         nop                                                              // 0x00606b89    90
                         nop                                                              // 0x00606b8a    90
                         nop                                                              // 0x00606b8b    90
                         nop                                                              // 0x00606b8c    90
                         nop                                                              // 0x00606b8d    90
                         nop                                                              // 0x00606b8e    90
                         nop                                                              // 0x00606b8f    90
.Lbl_addr_0x00606b90:    push               0x00606ba0                                    // 0x00606b90    68a06b6000
                         call               _atexit                                       // 0x00606b95    e8f7eb1b00
                         pop                ecx                                           // 0x00606b9a    59
                         ret                                                              // 0x00606b9b    c3
                         nop                                                              // 0x00606b9c    90
                         nop                                                              // 0x00606b9d    90
                         nop                                                              // 0x00606b9e    90
                         nop                                                              // 0x00606b9f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x372340]          // 0x00606ba0    8a0d4083d300
                         mov                al, 0x01                                      // 0x00606ba6    b001
                         test               al, cl                                        // 0x00606ba8    84c8
                         {disp8} jne        .Lbl_addr_0x00606bcf                          // 0x00606baa    7523
                         push               esi                                           // 0x00606bac    56
                         or.s               cl, al                                        // 0x00606bad    0ac8
                         push               edi                                           // 0x00606baf    57
                         {disp32} mov       byte ptr [data_bytes + 0x372340], cl          // 0x00606bb0    880d4083d300
                         mov                esi, 0x00d38438                               // 0x00606bb6    be3884d300
                         mov                edi, 0x0000000a                               // 0x00606bbb    bf0a000000
.Lbl_addr_0x00606bc0:    sub                esi, 0x18                                     // 0x00606bc0    83ee18
                         mov.s              ecx, esi                                      // 0x00606bc3    8bce
                         call               ??1Base@@UAE@XZ                               // 0x00606bc5    e896fde2ff
                         dec                edi                                           // 0x00606bca    4f
                         {disp8} jne        .Lbl_addr_0x00606bc0                          // 0x00606bcb    75f3
                         pop                edi                                           // 0x00606bcd    5f
                         pop                esi                                           // 0x00606bce    5e
.Lbl_addr_0x00606bcf:    ret                                                              // 0x00606bcf    c3
??_GGSpeedThreshold@@UAEPAXI@Z:
                         push               esi                                           // 0x00606bd0    56
                         mov.s              esi, ecx                                      // 0x00606bd1    8bf1
                         call               ??1Base@@UAE@XZ                               // 0x00606bd3    e888fde2ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00606bd8    f644240801
                         {disp8} je         .Lbl_addr_0x00606bea                          // 0x00606bdd    740b
                         push               0x18                                          // 0x00606bdf    6a18
                         push               esi                                           // 0x00606be1    56
                         call               ??3Base@@SAXPAXI@Z                          // 0x00606be2    e889fde2ff
                         add                esp, 0x08                                     // 0x00606be7    83c408
.Lbl_addr_0x00606bea:    mov.s              eax, esi                                      // 0x00606bea    8bc6
                         pop                esi                                           // 0x00606bec    5e
                         ret                0x0004                                        // 0x00606bed    c20400
?ApplyThisToMapCoord@Mobile@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00606bf0    8b542404
                         mov                eax, dword ptr [ecx]                          // 0x00606bf4    8b01
                         push               0x0                                           // 0x00606bf6    6a00
                         push               edx                                           // 0x00606bf8    52
                         call               dword ptr [eax + 0x758]                       // 0x00606bf9    ff9058070000
                         mov                eax, 0x00000016                               // 0x00606bff    b816000000
                         ret                0x000c                                        // 0x00606c04    c20c00
                         nop                                                              // 0x00606c07    90
                         nop                                                              // 0x00606c08    90
                         nop                                                              // 0x00606c09    90
                         nop                                                              // 0x00606c0a    90
                         nop                                                              // 0x00606c0b    90
                         nop                                                              // 0x00606c0c    90
                         nop                                                              // 0x00606c0d    90
                         nop                                                              // 0x00606c0e    90
                         nop                                                              // 0x00606c0f    90
?Save@Mobile@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00606c10    56
                         push               edi                                           // 0x00606c11    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00606c12    8b7c240c
                         mov.s              esi, ecx                                      // 0x00606c16    8bf1
                         push               edi                                           // 0x00606c18    57
                         call               ?Save@Object@@UAEIAAVGameOSFile@@@Z           // 0x00606c19    e8722f0300
                         test               eax, eax                                      // 0x00606c1e    85c0
                         {disp8} je         .Lbl_addr_0x00606c68                          // 0x00606c20    7446
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x00606c22    a190c9be00
                         test               eax, eax                                      // 0x00606c27    85c0
                         {disp8} je         .Lbl_addr_0x00606c5e                          // 0x00606c29    7433
                         push               0x0                                           // 0x00606c2b    6a00
                         push               0x2                                           // 0x00606c2d    6a02
                         add                esi, 0x54                                     // 0x00606c2f    83c654
                         push               esi                                           // 0x00606c32    56
                         mov.s              ecx, edi                                      // 0x00606c33    8bcf
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x00606c35    e8e65c1b00
                         cmp                eax, 0x03                                     // 0x00606c3a    83f803
                         {disp8} jne        .Lbl_addr_0x00606c49                          // 0x00606c3d    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x00606c3f    c70590c9be0000000000
.Lbl_addr_0x00606c49:    {disp32} mov       ecx, dword ptr [edi + 0x00000214]             // 0x00606c49    8b8f14020000
                         xor.s              eax, eax                                      // 0x00606c4f    33c0
                         mov                al, byte ptr [esi]                            // 0x00606c51    8a06
                         add                eax, 0x02                                     // 0x00606c53    83c002
                         add.s              ecx, eax                                      // 0x00606c56    03c8
                         {disp32} mov       dword ptr [edi + 0x00000214], ecx             // 0x00606c58    898f14020000
.Lbl_addr_0x00606c5e:    pop                edi                                           // 0x00606c5e    5f
                         mov                eax, 0x00000001                               // 0x00606c5f    b801000000
                         pop                esi                                           // 0x00606c64    5e
                         ret                0x0004                                        // 0x00606c65    c20400
.Lbl_addr_0x00606c68:    pop                edi                                           // 0x00606c68    5f
                         xor.s              eax, eax                                      // 0x00606c69    33c0
                         pop                esi                                           // 0x00606c6b    5e
                         ret                0x0004                                        // 0x00606c6c    c20400
                         nop                                                              // 0x00606c6f    90
?Load@Mobile@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00606c70    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00606c71    8b742408
                         push               edi                                           // 0x00606c75    57
                         mov.s              edi, ecx                                      // 0x00606c76    8bf9
                         push               esi                                           // 0x00606c78    56
                         call               @Load__6ObjectFR10GameOSFile@12               // 0x00606c79    e832320300
                         test               eax, eax                                      // 0x00606c7e    85c0
                         {disp8} je         .Lbl_addr_0x00606cc8                          // 0x00606c80    7446
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00606c82    a194c9be00
                         add                edi, 0x54                                     // 0x00606c87    83c754
                         test               eax, eax                                      // 0x00606c8a    85c0
                         {disp8} je         .Lbl_addr_0x00606cbe                          // 0x00606c8c    7430
                         push               0x0                                           // 0x00606c8e    6a00
                         push               0x2                                           // 0x00606c90    6a02
                         push               edi                                           // 0x00606c92    57
                         mov.s              ecx, esi                                      // 0x00606c93    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x00606c95    e8465c1b00
                         cmp                eax, 0x03                                     // 0x00606c9a    83f803
                         {disp8} jne        .Lbl_addr_0x00606ca9                          // 0x00606c9d    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00606c9f    c70594c9be0000000000
.Lbl_addr_0x00606ca9:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00606ca9    8b8e14020000
                         xor.s              eax, eax                                      // 0x00606caf    33c0
                         mov                al, byte ptr [edi]                            // 0x00606cb1    8a07
                         add                eax, 0x02                                     // 0x00606cb3    83c002
                         add.s              ecx, eax                                      // 0x00606cb6    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00606cb8    898e14020000
.Lbl_addr_0x00606cbe:    pop                edi                                           // 0x00606cbe    5f
                         mov                eax, 0x00000001                               // 0x00606cbf    b801000000
                         pop                esi                                           // 0x00606cc4    5e
                         ret                0x0004                                        // 0x00606cc5    c20400
.Lbl_addr_0x00606cc8:    pop                edi                                           // 0x00606cc8    5f
                         xor.s              eax, eax                                      // 0x00606cc9    33c0
                         pop                esi                                           // 0x00606ccb    5e
                         ret                0x0004                                        // 0x00606ccc    c20400
                         nop                                                              // 0x00606ccf    90
?BlocksTownClearArea@Mobile@@UBE_NXZ:
                         xor.s              eax, eax                                      // 0x00606cd0    33c0
                         ret                                                              // 0x00606cd2    c3
                         nop                                                              // 0x00606cd3    90
                         nop                                                              // 0x00606cd4    90
                         nop                                                              // 0x00606cd5    90
                         nop                                                              // 0x00606cd6    90
                         nop                                                              // 0x00606cd7    90
                         nop                                                              // 0x00606cd8    90
                         nop                                                              // 0x00606cd9    90
                         nop                                                              // 0x00606cda    90
                         nop                                                              // 0x00606cdb    90
                         nop                                                              // 0x00606cdc    90
                         nop                                                              // 0x00606cdd    90
                         nop                                                              // 0x00606cde    90
                         nop                                                              // 0x00606cdf    90
