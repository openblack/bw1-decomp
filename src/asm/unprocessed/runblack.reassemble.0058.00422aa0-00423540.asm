.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00422750
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x0052e280
.extern ?Save@MultiMapFixed@@UAEIPAVGameOSFile@@@Z
.extern @Load__13MultiMapFixedFR10GameOSFile@12
.extern ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _jmp_addr_0x0083b450

.globl _jmp_addr_0x00422cc0
.globl _jmp_addr_0x00422cd0
.globl _jmp_addr_0x00422d50
.globl _jmp_addr_0x00422df0
.globl _jmp_addr_0x00422e30
.globl _jmp_addr_0x004230d0
.globl ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z
.globl _jmp_addr_0x00423400

.globl _globl_ct_0x00423110
.globl _globl_ct_0x004233b0
.globl _globl_ct_0x004233e0
.globl ?Save@ChessPion@@UAEIAAVGameOSFile@@@Z
.globl ?Load@ChessPion@@UAEIAAVGameOSFile@@@Z
.globl ?GetSaveType@Feature@@UAEIXZ
.globl ?GetDebugText@Feature@@UAEPADXZ
.globl ??_GFeature@@UAEPAXI@Z
.globl ?CreatureMustAvoid@ChessPion@@UAE_NPAVCreature@@@Z
.globl ?AddToRoutePlan@ChessPion@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z

start_0x00422aa0_0x00423540:
// Snippet: asm, [0x00422aa0, 0x00423528)
?Save@ChessPion@@UAEIAAVGameOSFile@@@Z:
                         push               ecx                                           // 0x00422aa0    51
                         push               esi                                           // 0x00422aa1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00422aa2    8b74240c
                         push               edi                                           // 0x00422aa6    57
                         mov.s              edi, ecx                                      // 0x00422aa7    8bf9
                         push               esi                                           // 0x00422aa9    56
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x00422aaa    897c240c
                         call               ?Save@MultiMapFixed@@UAEIPAVGameOSFile@@@Z    // 0x00422aae    e89dc71000
                         test               eax, eax                                      // 0x00422ab3    85c0
                         {disp32} je        _jmp_addr_0x00422bae                          // 0x00422ab5    0f84f3000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00422abb    a190c9be00
                         push               ebx                                           // 0x00422ac0    53
                         push               ebp                                           // 0x00422ac1    55
                         xor.s              ebp, ebp                                      // 0x00422ac2    33ed
                         cmp.s              eax, ebp                                      // 0x00422ac4    3bc5
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000003            // 0x00422ac6    c744241803000000
                         {disp32} je        _jmp_addr_0x00422b9a                          // 0x00422ace    0f84c6000000
                         push               ebp                                           // 0x00422ad4    55
                         push               0x4                                           // 0x00422ad5    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x00422ad7    8d442420
                         push               eax                                           // 0x00422adb    50
                         mov.s              ecx, esi                                      // 0x00422adc    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00422ade    e83d9e3900
                         cmp                eax, 0x03                                     // 0x00422ae3    83f803
                         {disp8} jne        _jmp_addr_0x00422aee                          // 0x00422ae6    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00422ae8    892d90c9be00
_jmp_addr_0x00422aee:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00422aee    8b442418
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x00422af2    8b9614020000
                         mov.s              ecx, eax                                      // 0x00422af8    8bc8
                         and                ecx, 0x000000ff                               // 0x00422afa    81e1ff000000
                         add                ecx, 0x4                                      // 0x00422b00    83c104
                         add.s              edx, ecx                                      // 0x00422b03    03d1
                         xor.s              ebx, ebx                                      // 0x00422b05    33db
                         cmp.s              eax, ebp                                      // 0x00422b07    3bc5
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x00422b09    899614020000
                         {disp32} jbe       _jmp_addr_0x00422ba7                          // 0x00422b0f    0f8692000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00422b15    a190c9be00
                         add                edi, 0x0000008c                               // 0x00422b1a    81c78c000000
_jmp_addr_0x00422b20:    cmp.s              eax, ebp                                      // 0x00422b20    3bc5
                         {disp8} je         _jmp_addr_0x00422b9a                          // 0x00422b22    7476
                         push               ebp                                           // 0x00422b24    55
                         push               0x4                                           // 0x00422b25    6a04
                         push               edi                                           // 0x00422b27    57
                         mov.s              ecx, esi                                      // 0x00422b28    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00422b2a    e8f19d3900
                         cmp                eax, 0x03                                     // 0x00422b2f    83f803
                         {disp8} jne        _jmp_addr_0x00422b3a                          // 0x00422b32    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00422b34    892d90c9be00
_jmp_addr_0x00422b3a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00422b3a    8b8614020000
                         xor.s              edx, edx                                      // 0x00422b40    33d2
                         mov                dl, byte ptr [edi]                            // 0x00422b42    8a17
                         add                edx, 0x04                                     // 0x00422b44    83c204
                         add.s              eax, edx                                      // 0x00422b47    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00422b49    898614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00422b4f    a190c9be00
                         cmp.s              eax, ebp                                      // 0x00422b54    3bc5
                         {disp8} je         _jmp_addr_0x00422b9a                          // 0x00422b56    7442
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00422b58    8b4c2418
                         inc                ebx                                           // 0x00422b5c    43
                         add                edi, 0x04                                     // 0x00422b5d    83c704
                         cmp.s              ebx, ecx                                      // 0x00422b60    3bd9
                         .byte              0x72, 0xbc// {disp8} jb _jmp_addr_0x00422b20  // 0x00422b62    72bc
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00422b64    8b7c2410
_jmp_addr_0x00422b68:    cmp.s              eax, ebp                                      // 0x00422b68    3bc5
                         {disp8} je         _jmp_addr_0x00422b9a                          // 0x00422b6a    742e
                         push               ebp                                           // 0x00422b6c    55
                         push               0x4                                           // 0x00422b6d    6a04
                         add                edi, 0x7c                                     // 0x00422b6f    83c77c
                         push               edi                                           // 0x00422b72    57
                         mov.s              ecx, esi                                      // 0x00422b73    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00422b75    e8a69d3900
                         cmp                eax, 0x03                                     // 0x00422b7a    83f803
                         {disp8} jne        _jmp_addr_0x00422b85                          // 0x00422b7d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00422b7f    892d90c9be00
_jmp_addr_0x00422b85:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00422b85    8b8e14020000
                         xor.s              eax, eax                                      // 0x00422b8b    33c0
                         mov                al, byte ptr [edi]                            // 0x00422b8d    8a07
                         add                eax, 0x04                                     // 0x00422b8f    83c004
                         add.s              ecx, eax                                      // 0x00422b92    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00422b94    898e14020000
_jmp_addr_0x00422b9a:    pop                ebp                                           // 0x00422b9a    5d
                         pop                ebx                                           // 0x00422b9b    5b
                         pop                edi                                           // 0x00422b9c    5f
                         mov                eax, 0x00000001                               // 0x00422b9d    b801000000
                         pop                esi                                           // 0x00422ba2    5e
                         pop                ecx                                           // 0x00422ba3    59
                         ret                0x0004                                        // 0x00422ba4    c20400
_jmp_addr_0x00422ba7:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00422ba7    a190c9be00
                         {disp8} jmp        _jmp_addr_0x00422b68                          // 0x00422bac    ebba
_jmp_addr_0x00422bae:    pop                edi                                           // 0x00422bae    5f
                         xor.s              eax, eax                                      // 0x00422baf    33c0
                         pop                esi                                           // 0x00422bb1    5e
                         pop                ecx                                           // 0x00422bb2    59
                         ret                0x0004                                        // 0x00422bb3    c20400
                         nop                                                              // 0x00422bb6    90
                         nop                                                              // 0x00422bb7    90
                         nop                                                              // 0x00422bb8    90
                         nop                                                              // 0x00422bb9    90
                         nop                                                              // 0x00422bba    90
                         nop                                                              // 0x00422bbb    90
                         nop                                                              // 0x00422bbc    90
                         nop                                                              // 0x00422bbd    90
                         nop                                                              // 0x00422bbe    90
                         nop                                                              // 0x00422bbf    90
?Load@ChessPion@@UAEIAAVGameOSFile@@@Z:
                         push               ecx                                           // 0x00422bc0    51
                         push               esi                                           // 0x00422bc1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00422bc2    8b74240c
                         push               esi                                           // 0x00422bc6    56
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x00422bc7    894c2408
                         call               @Load__13MultiMapFixedFR10GameOSFile@12       // 0x00422bcb    e840c71000
                         test               eax, eax                                      // 0x00422bd0    85c0
                         {disp32} je        _jmp_addr_0x00422cb7                          // 0x00422bd2    0f84df000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00422bd8    a194c9be00
                         push               ebx                                           // 0x00422bdd    53
                         push               ebp                                           // 0x00422bde    55
                         xor.s              ebp, ebp                                      // 0x00422bdf    33ed
                         cmp.s              eax, ebp                                      // 0x00422be1    3bc5
                         push               edi                                           // 0x00422be3    57
                         {disp32} je        _jmp_addr_0x00422c70                          // 0x00422be4    0f8486000000
                         push               ebp                                           // 0x00422bea    55
                         push               0x4                                           // 0x00422beb    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x00422bed    8d442420
                         push               eax                                           // 0x00422bf1    50
                         mov.s              ecx, esi                                      // 0x00422bf2    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00422bf4    e8e79c3900
                         cmp                eax, 0x03                                     // 0x00422bf9    83f803
                         {disp8} jne        _jmp_addr_0x00422c04                          // 0x00422bfc    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x00422bfe    892d94c9be00
_jmp_addr_0x00422c04:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00422c04    8b442418
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x00422c08    8b9614020000
                         mov.s              ecx, eax                                      // 0x00422c0e    8bc8
                         and                ecx, 0x000000ff                               // 0x00422c10    81e1ff000000
                         add                ecx, 0x4                                      // 0x00422c16    83c104
                         add.s              edx, ecx                                      // 0x00422c19    03d1
                         xor.s              ebx, ebx                                      // 0x00422c1b    33db
                         cmp.s              eax, ebp                                      // 0x00422c1d    3bc5
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x00422c1f    899614020000
                         {disp8} jbe        _jmp_addr_0x00422c70                          // 0x00422c25    7649
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00422c27    8b542410
                         {disp32} lea       edi, dword ptr [edx + 0x0000008c]             // 0x00422c2b    8dba8c000000
_jmp_addr_0x00422c31:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x00422c31    392d94c9be00
                         {disp8} je         _jmp_addr_0x00422c68                          // 0x00422c37    742f
                         push               ebp                                           // 0x00422c39    55
                         push               0x4                                           // 0x00422c3a    6a04
                         push               edi                                           // 0x00422c3c    57
                         mov.s              ecx, esi                                      // 0x00422c3d    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00422c3f    e89c9c3900
                         cmp                eax, 0x03                                     // 0x00422c44    83f803
                         {disp8} jne        _jmp_addr_0x00422c4f                          // 0x00422c47    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x00422c49    892d94c9be00
_jmp_addr_0x00422c4f:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00422c4f    8b8e14020000
                         xor.s              eax, eax                                      // 0x00422c55    33c0
                         mov                al, byte ptr [edi]                            // 0x00422c57    8a07
                         add                eax, 0x04                                     // 0x00422c59    83c004
                         add.s              ecx, eax                                      // 0x00422c5c    03c8
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00422c5e    8b442418
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00422c62    898e14020000
_jmp_addr_0x00422c68:    inc                ebx                                           // 0x00422c68    43
                         add                edi, 0x04                                     // 0x00422c69    83c704
                         cmp.s              ebx, eax                                      // 0x00422c6c    3bd8
                         .byte              0x72, 0xc1// {disp8} jb _jmp_addr_0x00422c31  // 0x00422c6e    72c1
_jmp_addr_0x00422c70:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x00422c70    392d94c9be00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00422c76    8b4c2410
                         {disp8} lea        edi, dword ptr [ecx + 0x7c]                   // 0x00422c7a    8d797c
                         {disp8} je         _jmp_addr_0x00422caa                          // 0x00422c7d    742b
                         push               ebp                                           // 0x00422c7f    55
                         push               0x4                                           // 0x00422c80    6a04
                         push               edi                                           // 0x00422c82    57
                         mov.s              ecx, esi                                      // 0x00422c83    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00422c85    e8569c3900
                         cmp                eax, 0x03                                     // 0x00422c8a    83f803
                         {disp8} jne        _jmp_addr_0x00422c95                          // 0x00422c8d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x00422c8f    892d94c9be00
_jmp_addr_0x00422c95:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00422c95    8b8614020000
                         xor.s              edx, edx                                      // 0x00422c9b    33d2
                         mov                dl, byte ptr [edi]                            // 0x00422c9d    8a17
                         add                edx, 0x04                                     // 0x00422c9f    83c204
                         add.s              eax, edx                                      // 0x00422ca2    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00422ca4    898614020000
_jmp_addr_0x00422caa:    pop                edi                                           // 0x00422caa    5f
                         pop                ebp                                           // 0x00422cab    5d
                         pop                ebx                                           // 0x00422cac    5b
                         mov                eax, 0x00000001                               // 0x00422cad    b801000000
                         pop                esi                                           // 0x00422cb2    5e
                         pop                ecx                                           // 0x00422cb3    59
                         ret                0x0004                                        // 0x00422cb4    c20400
_jmp_addr_0x00422cb7:    xor.s              eax, eax                                      // 0x00422cb7    33c0
                         pop                esi                                           // 0x00422cb9    5e
                         pop                ecx                                           // 0x00422cba    59
                         ret                0x0004                                        // 0x00422cbb    c20400
                         nop                                                              // 0x00422cbe    90
                         nop                                                              // 0x00422cbf    90
_jmp_addr_0x00422cc0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00422cc0    8b442404
                         {disp8} mov        dword ptr [ecx + 0x7c], eax                   // 0x00422cc4    89417c
                         ret                0x0004                                        // 0x00422cc7    c20400
                         call               dword ptr [__imp__TrackMouseEvent@4]          // 0x00422cca    ff151c908a00
_jmp_addr_0x00422cd0:    push               esi                                           // 0x00422cd0    56
                         mov.s              esi, ecx                                      // 0x00422cd1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00422cd3    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00422cd6    8b01
                         push               edi                                           // 0x00422cd8    57
                         call               dword ptr [eax + 0x18c]                       // 0x00422cd9    ff908c010000
                         mov.s              edi, eax                                      // 0x00422cdf    8bf8
                         {disp8} mov        eax, dword ptr [esi + 0x7c]                   // 0x00422ce1    8b467c
                         test               eax, eax                                      // 0x00422ce4    85c0
                         {disp8} jne        _jmp_addr_0x00422d08                          // 0x00422ce6    7520
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00422ce8    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x00422ceb    8b11
                         call               dword ptr [edx + 0x184]                       // 0x00422ced    ff9284010000
                         push               eax                                           // 0x00422cf3    50
                         call               _jmp_addr_0x00422750                          // 0x00422cf4    e857faffff
                         add                esp, 0x04                                     // 0x00422cf9    83c404
                         cmp.s              edi, eax                                      // 0x00422cfc    3bf8
                         {disp8} jne        _jmp_addr_0x00422d08                          // 0x00422cfe    7508
                         pop                edi                                           // 0x00422d00    5f
                         mov                eax, 0x00000001                               // 0x00422d01    b801000000
                         pop                esi                                           // 0x00422d06    5e
                         ret                                                              // 0x00422d07    c3
_jmp_addr_0x00422d08:    cmp                dword ptr [esi + 0x7c], 0x01                  // 0x00422d08    837e7c01
                         {disp8} jne        _jmp_addr_0x00422d1a                          // 0x00422d0c    750c
                         test               edi, edi                                      // 0x00422d0e    85ff
                         {disp8} jne        _jmp_addr_0x00422d1e                          // 0x00422d10    750c
                         pop                edi                                           // 0x00422d12    5f
                         mov                eax, 0x00000001                               // 0x00422d13    b801000000
                         pop                esi                                           // 0x00422d18    5e
                         ret                                                              // 0x00422d19    c3
_jmp_addr_0x00422d1a:    test               edi, edi                                      // 0x00422d1a    85ff
                         {disp8} je         _jmp_addr_0x00422d3e                          // 0x00422d1c    7420
_jmp_addr_0x00422d1e:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00422d1e    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00422d21    8b01
                         call               dword ptr [eax + 0x184]                       // 0x00422d23    ff9084010000
                         push               eax                                           // 0x00422d29    50
                         call               _jmp_addr_0x00422750                          // 0x00422d2a    e821faffff
                         add                esp, 0x04                                     // 0x00422d2f    83c404
                         cmp.s              edi, eax                                      // 0x00422d32    3bf8
                         {disp8} je         _jmp_addr_0x00422d3e                          // 0x00422d34    7408
                         pop                edi                                           // 0x00422d36    5f
                         mov                eax, 0x00000001                               // 0x00422d37    b801000000
                         pop                esi                                           // 0x00422d3c    5e
                         ret                                                              // 0x00422d3d    c3
_jmp_addr_0x00422d3e:    pop                edi                                           // 0x00422d3e    5f
                         xor.s              eax, eax                                      // 0x00422d3f    33c0
                         pop                esi                                           // 0x00422d41    5e
                         ret                                                              // 0x00422d42    c3
                         nop                                                              // 0x00422d43    90
                         nop                                                              // 0x00422d44    90
                         nop                                                              // 0x00422d45    90
                         nop                                                              // 0x00422d46    90
                         nop                                                              // 0x00422d47    90
                         nop                                                              // 0x00422d48    90
                         nop                                                              // 0x00422d49    90
                         nop                                                              // 0x00422d4a    90
                         nop                                                              // 0x00422d4b    90
                         nop                                                              // 0x00422d4c    90
                         nop                                                              // 0x00422d4d    90
                         nop                                                              // 0x00422d4e    90
                         nop                                                              // 0x00422d4f    90
_jmp_addr_0x00422d50:    push               esi                                           // 0x00422d50    56
                         push               edi                                           // 0x00422d51    57
                         mov.s              edi, ecx                                      // 0x00422d52    8bf9
                         xor.s              esi, esi                                      // 0x00422d54    33f6
                         {disp32} lea       eax, dword ptr [edi + 0x00000080]             // 0x00422d56    8d8780000000
_jmp_addr_0x00422d5c:    cmp                dword ptr [eax], 0x00                         // 0x00422d5c    833800
                         {disp8} je         _jmp_addr_0x00422d71                          // 0x00422d5f    7410
                         inc                esi                                           // 0x00422d61    46
                         add                eax, 0x04                                     // 0x00422d62    83c004
                         cmp                esi, 0x03                                     // 0x00422d65    83fe03
                         {disp8} jl         _jmp_addr_0x00422d5c                          // 0x00422d68    7cf2
                         pop                edi                                           // 0x00422d6a    5f
                         xor.s              eax, eax                                      // 0x00422d6b    33c0
                         pop                esi                                           // 0x00422d6d    5e
                         ret                0x0004                                        // 0x00422d6e    c20400
_jmp_addr_0x00422d71:    push               ebx                                           // 0x00422d71    53
                         push               ebp                                           // 0x00422d72    55
                         push               0x0                                           // 0x00422d73    6a00
                         call               ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z                          // 0x00422d75    e8367e2100
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00422d7a    8b5c2418
                         add                esp, 0x04                                     // 0x00422d7e    83c404
                         test               ebx, ebx                                      // 0x00422d81    85db
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x00000080], eax // 0x00422d83    8984b780000000
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00422d8a    8b1534fee900
                         mov.s              ecx, ebx                                      // 0x00422d90    8bcb
                         {disp8} jl         _jmp_addr_0x00422d98                          // 0x00422d92    7c04
                         cmp                ebx, dword ptr [edx]                          // 0x00422d94    3b1a
                         {disp8} jl         _jmp_addr_0x00422d9a                          // 0x00422d96    7c02
_jmp_addr_0x00422d98:    xor.s              ecx, ecx                                      // 0x00422d98    33c9
_jmp_addr_0x00422d9a:    {disp8} mov        edx, dword ptr [edx + ecx * 0x4 + 0x04]       // 0x00422d9a    8b548a04
                         mov                ebp, dword ptr [eax]                          // 0x00422d9e    8b28
                         push               0x0                                           // 0x00422da0    6a00
                         push               0x0                                           // 0x00422da2    6a00
                         mov.s              ecx, eax                                      // 0x00422da4    8bc8
                         call               dword ptr [ebp + 0xf4]                        // 0x00422da6    ff95f4000000
                         {disp32} mov       ecx, dword ptr [edi + esi * 0x4 + 0x00000080] // 0x00422dac    8b8cb780000000
                         mov                eax, dword ptr [ecx]                          // 0x00422db3    8b01
                         mov                edx, 0x00000001                               // 0x00422db5    ba01000000
                         call               dword ptr [eax + 0x58]                        // 0x00422dba    ff5058
                         {disp32} mov       ecx, dword ptr [edi + esi * 0x4 + 0x00000080] // 0x00422dbd    8b8cb780000000
                         mov                eax, dword ptr [ecx]                          // 0x00422dc4    8b01
                         mov                edx, 0x00000001                               // 0x00422dc6    ba01000000
                         call               dword ptr [eax + 0x40]                        // 0x00422dcb    ff5040
                         pop                ebp                                           // 0x00422dce    5d
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x0000008c], ebx // 0x00422dcf    899cb78c000000
                         pop                ebx                                           // 0x00422dd6    5b
                         pop                edi                                           // 0x00422dd7    5f
                         mov                eax, 0x00000001                               // 0x00422dd8    b801000000
                         pop                esi                                           // 0x00422ddd    5e
                         ret                0x0004                                        // 0x00422dde    c20400
                         nop                                                              // 0x00422de1    90
                         nop                                                              // 0x00422de2    90
                         nop                                                              // 0x00422de3    90
                         nop                                                              // 0x00422de4    90
                         nop                                                              // 0x00422de5    90
                         nop                                                              // 0x00422de6    90
                         nop                                                              // 0x00422de7    90
                         nop                                                              // 0x00422de8    90
                         nop                                                              // 0x00422de9    90
                         nop                                                              // 0x00422dea    90
                         nop                                                              // 0x00422deb    90
                         nop                                                              // 0x00422dec    90
                         nop                                                              // 0x00422ded    90
                         nop                                                              // 0x00422dee    90
                         nop                                                              // 0x00422def    90
_jmp_addr_0x00422df0:    push               esi                                           // 0x00422df0    56
                         xor.s              eax, eax                                      // 0x00422df1    33c0
                         {disp32} lea       edx, dword ptr [ecx + 0x0000008c]             // 0x00422df3    8d918c000000
                         mov                esi, 0x00000003                               // 0x00422df9    be03000000
_jmp_addr_0x00422dfe:    mov                ecx, dword ptr [edx]                          // 0x00422dfe    8b0a
                         sub                ecx, 0x0000016a                               // 0x00422e00    81e96a010000
                         {disp8} je         _jmp_addr_0x00422e1c                          // 0x00422e06    7414
                         sub                ecx, 0x02                                     // 0x00422e08    83e902
                         {disp8} je         _jmp_addr_0x00422e17                          // 0x00422e0b    740a
                         sub                ecx, 0x02                                     // 0x00422e0d    83e902
                         {disp8} jne        _jmp_addr_0x00422e1d                          // 0x00422e10    750b
                         add                eax, 0x02                                     // 0x00422e12    83c002
                         {disp8} jmp        _jmp_addr_0x00422e1d                          // 0x00422e15    eb06
_jmp_addr_0x00422e17:    add                eax, 0x04                                     // 0x00422e17    83c004
                         {disp8} jmp        _jmp_addr_0x00422e1d                          // 0x00422e1a    eb01
_jmp_addr_0x00422e1c:    inc                eax                                           // 0x00422e1c    40
_jmp_addr_0x00422e1d:    add                edx, 0x04                                     // 0x00422e1d    83c204
                         dec                esi                                           // 0x00422e20    4e
                         {disp8} jne        _jmp_addr_0x00422dfe                          // 0x00422e21    75db
                         pop                esi                                           // 0x00422e23    5e
                         ret                                                              // 0x00422e24    c3
                         nop                                                              // 0x00422e25    90
                         nop                                                              // 0x00422e26    90
                         nop                                                              // 0x00422e27    90
                         nop                                                              // 0x00422e28    90
                         nop                                                              // 0x00422e29    90
                         nop                                                              // 0x00422e2a    90
                         nop                                                              // 0x00422e2b    90
                         nop                                                              // 0x00422e2c    90
                         nop                                                              // 0x00422e2d    90
                         nop                                                              // 0x00422e2e    90
                         nop                                                              // 0x00422e2f    90
_jmp_addr_0x00422e30:    push               ebx                                           // 0x00422e30    53
                         push               esi                                           // 0x00422e31    56
                         mov.s              ebx, ecx                                      // 0x00422e32    8bd9
                         push               edi                                           // 0x00422e34    57
                         mov                dword ptr [ebx], 0x008c1a10                   // 0x00422e35    c703101a8c00
                         {disp32} lea       esi, dword ptr [ebx + 0x00000080]             // 0x00422e3b    8db380000000
                         mov                edi, 0x00000003                               // 0x00422e41    bf03000000
_jmp_addr_0x00422e46:    mov                ecx, dword ptr [esi]                          // 0x00422e46    8b0e
                         test               ecx, ecx                                      // 0x00422e48    85c9
                         {disp8} je         _jmp_addr_0x00422e57                          // 0x00422e4a    740b
                         mov                eax, dword ptr [ecx]                          // 0x00422e4c    8b01
                         call               dword ptr [eax + 4]                           // 0x00422e4e    ff5004
                         mov                dword ptr [esi], 0x00000000                   // 0x00422e51    c70600000000
_jmp_addr_0x00422e57:    add                esi, 0x04                                     // 0x00422e57    83c604
                         dec                edi                                           // 0x00422e5a    4f
                         {disp8} jne        _jmp_addr_0x00422e46                          // 0x00422e5b    75e9
                         mov.s              ecx, ebx                                      // 0x00422e5d    8bcb
                         mov                dword ptr [ebx], 0x008c2320                   // 0x00422e5f    c70320238c00
                         call               _jmp_addr_0x0052e280                          // 0x00422e65    e816b41000
                         pop                edi                                           // 0x00422e6a    5f
                         pop                esi                                           // 0x00422e6b    5e
                         pop                ebx                                           // 0x00422e6c    5b
                         ret                                                              // 0x00422e6d    c3
                         nop                                                              // 0x00422e6e    90
                         nop                                                              // 0x00422e6f    90
?GetSaveType@Feature@@UAEIXZ:
                         mov                eax, 0x00000074                               // 0x00422e70    b874000000
                         ret                                                              // 0x00422e75    c3
                         nop                                                              // 0x00422e76    90
                         nop                                                              // 0x00422e77    90
                         nop                                                              // 0x00422e78    90
                         nop                                                              // 0x00422e79    90
                         nop                                                              // 0x00422e7a    90
                         nop                                                              // 0x00422e7b    90
                         nop                                                              // 0x00422e7c    90
                         nop                                                              // 0x00422e7d    90
                         nop                                                              // 0x00422e7e    90
                         nop                                                              // 0x00422e7f    90
?GetDebugText@Feature@@UAEPADXZ:
                         mov                eax, 0x009c95b4                               // 0x00422e80    b8b4959c00
                         ret                                                              // 0x00422e85    c3
                         nop                                                              // 0x00422e86    90
                         nop                                                              // 0x00422e87    90
                         nop                                                              // 0x00422e88    90
                         nop                                                              // 0x00422e89    90
                         nop                                                              // 0x00422e8a    90
                         nop                                                              // 0x00422e8b    90
                         nop                                                              // 0x00422e8c    90
                         nop                                                              // 0x00422e8d    90
                         nop                                                              // 0x00422e8e    90
                         nop                                                              // 0x00422e8f    90
??_GFeature@@UAEPAXI@Z:
                         push               esi                                           // 0x00422e90    56
                         mov.s              esi, ecx                                      // 0x00422e91    8bf1
                         mov                dword ptr [esi], 0x008c2320                   // 0x00422e93    c70620238c00
                         call               _jmp_addr_0x0052e280                          // 0x00422e99    e8e2b31000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00422e9e    f644240801
                         {disp8} je         _jmp_addr_0x00422eb0                          // 0x00422ea3    740b
                         push               0x7c                                          // 0x00422ea5    6a7c
                         push               esi                                           // 0x00422ea7    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00422ea8    e8c33a0100
                         add                esp, 0x08                                     // 0x00422ead    83c408
_jmp_addr_0x00422eb0:    mov.s              eax, esi                                      // 0x00422eb0    8bc6
                         pop                esi                                           // 0x00422eb2    5e
                         ret                0x0004                                        // 0x00422eb3    c20400
                         nop                                                              // 0x00422eb6    90
                         nop                                                              // 0x00422eb7    90
                         nop                                                              // 0x00422eb8    90
                         nop                                                              // 0x00422eb9    90
                         nop                                                              // 0x00422eba    90
                         nop                                                              // 0x00422ebb    90
                         nop                                                              // 0x00422ebc    90
                         nop                                                              // 0x00422ebd    90
                         nop                                                              // 0x00422ebe    90
                         nop                                                              // 0x00422ebf    90
?CreatureMustAvoid@ChessPion@@UAE_NPAVCreature@@@Z:
                         mov                eax, 0x00000001                               // 0x00422ec0    b801000000
                         ret                0x0004                                        // 0x00422ec5    c20400
                         nop                                                              // 0x00422ec8    90
                         nop                                                              // 0x00422ec9    90
                         nop                                                              // 0x00422eca    90
                         nop                                                              // 0x00422ecb    90
                         nop                                                              // 0x00422ecc    90
                         nop                                                              // 0x00422ecd    90
                         nop                                                              // 0x00422ece    90
                         nop                                                              // 0x00422ecf    90
?AddToRoutePlan@ChessPion@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z:
                         sub                esp, 0x58                                     // 0x00422ed0    83ec58
                         push               ebx                                           // 0x00422ed3    53
                         push               ebp                                           // 0x00422ed4    55
                         push               esi                                           // 0x00422ed5    56
                         mov.s              esi, ecx                                      // 0x00422ed6    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00422ed8    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00422edb    8b01
                         push               edi                                           // 0x00422edd    57
                         call               dword ptr [eax + 0xf8]                        // 0x00422ede    ff90f8000000
                         mov.s              edi, eax                                      // 0x00422ee4    8bf8
                         mov.s              ecx, esi                                      // 0x00422ee6    8bce
                         add                edi, 0x14                                     // 0x00422ee8    83c714
                         call               _jmp_addr_0x004230d0                          // 0x00422eeb    e8e0010000
                         test               eax, eax                                      // 0x00422ef0    85c0
                         {disp32} je        _jmp_addr_0x0042303e                          // 0x00422ef2    0f8446010000
                         mov                edx, dword ptr [esi]                          // 0x00422ef8    8b16
                         mov.s              ecx, esi                                      // 0x00422efa    8bce
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00422efc    c744241400000000
                         call               dword ptr [edx + 0x120]                       // 0x00422f04    ff9220010000
                         {disp8} fmul       dword ptr [edi + 0x10]                        // 0x00422f0a    d84f10
                         mov                eax, dword ptr [esi]                          // 0x00422f0d    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00422f0f    8d4c2438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c2c]             // 0x00422f13    d80d2c2c8c00
                         push               ecx                                           // 0x00422f19    51
                         mov.s              ecx, esi                                      // 0x00422f1a    8bce
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00422f1c    d95c241c
                         call               dword ptr [eax + 0x63c]                       // 0x00422f20    ff903c060000
                         {disp8} mov        ebp, dword ptr [esp + 0x78]                   // 0x00422f26    8b6c2478
                         {disp8} mov        edi, dword ptr [esp + 0x74]                   // 0x00422f2a    8b7c2474
                         {disp8} mov        ebx, dword ptr [esp + 0x6c]                   // 0x00422f2e    8b5c246c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00422f32    c744241000000000
_jmp_addr_0x00422f3a:    test               byte ptr [esp + 0x10], 0x01                   // 0x00422f3a    f644241001
                         {disp8} je         _jmp_addr_0x00422f4f                          // 0x00422f3f    740e
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00422f41    d9442418
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x00422f45    d8442414
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x00422f49    d9542414
                         {disp8} jmp        _jmp_addr_0x00422f55                          // 0x00422f4d    eb06
_jmp_addr_0x00422f4f:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x00422f4f    d9442414
                         fchs                                                             // 0x00422f53    d9e0
_jmp_addr_0x00422f55:    {disp8} mov        eax, dword ptr [esi + 0x7c]                   // 0x00422f55    8b467c
                         {disp8} fst        dword ptr [esp + 0x74]                        // 0x00422f58    d9542474
                         cmp                eax, 0x01                                     // 0x00422f5c    83f801
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00422f5f    d9442438
                         fmul               st, st(1)                                     // 0x00422f63    d8c9
                         {disp8} fadd       dword ptr [esp + 0x5c]                        // 0x00422f65    d844245c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00422f69    d95c242c
                         fstp               st(0)                                         // 0x00422f6d    ddd8
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00422f6f    d9442440
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x00422f73    d84c2474
                         {disp8} fadd       dword ptr [esp + 0x64]                        // 0x00422f77    d8442464
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00422f7b    d95c2434
                         {disp8} jne        _jmp_addr_0x00422fd9                          // 0x00422f7f    7558
                         mov.s              ecx, esi                                      // 0x00422f81    8bce
                         call               _jmp_addr_0x00422cd0                          // 0x00422f83    e848fdffff
                         test               eax, eax                                      // 0x00422f88    85c0
                         {disp8} jne        _jmp_addr_0x00422fd9                          // 0x00422f8a    754d
                         cmp                dword ptr [esp + 0x10], 0x04                  // 0x00422f8c    837c241004
                         {disp32} jle       _jmp_addr_0x00423022                          // 0x00422f91    0f8e8b000000
                         test               ebp, ebp                                      // 0x00422f97    85ed
                         {disp8} je         _jmp_addr_0x00422fbd                          // 0x00422f99    7422
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00422f9b    8b542434
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00422f9f    8b44242c
                         push               edi                                           // 0x00422fa3    57
                         push               0x40200000                                    // 0x00422fa4    6800002040
                         sub                esp, 0x08                                     // 0x00422fa9    83ec08
                         mov.s              ecx, esp                                      // 0x00422fac    8bcc
                         push               edx                                           // 0x00422fae    52
                         push               eax                                           // 0x00422faf    50
                         call               _jmp_addr_0x00423390                          // 0x00422fb0    e8db030000
                         push               esi                                           // 0x00422fb5    56
                         call               ebp                                           // 0x00422fb6    ffd5
                         add                esp, 0x14                                     // 0x00422fb8    83c414
                         {disp8} jmp        _jmp_addr_0x00423022                          // 0x00422fbb    eb65
_jmp_addr_0x00422fbd:    {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00422fbd    d944242c
                         push               edi                                           // 0x00422fc1    57
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00422fc2    d95c2420
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00422fc6    d9442438
                         push               0x40200000                                    // 0x00422fca    6800002040
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00422fcf    d95c2428
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00422fd3    8d4c2424
                         {disp8} jmp        _jmp_addr_0x00423019                          // 0x00422fd7    eb40
_jmp_addr_0x00422fd9:    test               ebp, ebp                                      // 0x00422fd9    85ed
                         {disp8} je         _jmp_addr_0x00422fff                          // 0x00422fdb    7422
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00422fdd    8b542434
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00422fe1    8b44242c
                         push               edi                                           // 0x00422fe5    57
                         push               0x40200000                                    // 0x00422fe6    6800002040
                         sub                esp, 0x08                                     // 0x00422feb    83ec08
                         mov.s              ecx, esp                                      // 0x00422fee    8bcc
                         push               edx                                           // 0x00422ff0    52
                         push               eax                                           // 0x00422ff1    50
                         call               _jmp_addr_0x00423390                          // 0x00422ff2    e899030000
                         push               esi                                           // 0x00422ff7    56
                         call               ebp                                           // 0x00422ff8    ffd5
                         add                esp, 0x14                                     // 0x00422ffa    83c414
                         {disp8} jmp        _jmp_addr_0x00423022                          // 0x00422ffd    eb23
_jmp_addr_0x00422fff:    {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00422fff    d944242c
                         push               edi                                           // 0x00423003    57
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00423004    d95c2428
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00423008    d9442438
                         push               0x40200000                                    // 0x0042300c    6800002040
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00423011    d95c2430
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00423015    8d4c242c
_jmp_addr_0x00423019:    push               ecx                                           // 0x00423019    51
                         push               esi                                           // 0x0042301a    56
                         mov.s              ecx, ebx                                      // 0x0042301b    8bcb
                         call               _jmp_addr_0x0083b450                          // 0x0042301d    e82e844100
_jmp_addr_0x00423022:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00423022    8b442410
                         inc                eax                                           // 0x00423026    40
                         cmp                eax, 0x0f                                     // 0x00423027    83f80f
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0042302a    89442410
                         {disp32} jl        _jmp_addr_0x00422f3a                          // 0x0042302e    0f8c06ffffff
                         pop                edi                                           // 0x00423034    5f
                         pop                esi                                           // 0x00423035    5e
                         pop                ebp                                           // 0x00423036    5d
                         pop                ebx                                           // 0x00423037    5b
                         add                esp, 0x58                                     // 0x00423038    83c458
                         ret                0x0010                                        // 0x0042303b    c21000
_jmp_addr_0x0042303e:    mov                edx, dword ptr [esi]                          // 0x0042303e    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x00423040    8d442438
                         push               eax                                           // 0x00423044    50
                         mov.s              ecx, esi                                      // 0x00423045    8bce
                         call               dword ptr [edx + 0x63c]                       // 0x00423047    ff923c060000
                         {disp8} fld        dword ptr [edi + 0x1c]                        // 0x0042304d    d9471c
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x00423050    d80d38b28a00
                         {disp8} mov        edi, dword ptr [esp + 0x78]                   // 0x00423056    8b7c2478
                         test               edi, edi                                      // 0x0042305a    85ff
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0042305c    d95c2414
                         {disp8} je         _jmp_addr_0x00423090                          // 0x00423060    742e
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                   // 0x00423062    8b4c2474
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00423066    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x0042306a    8b442464
                         push               ecx                                           // 0x0042306e    51
                         push               edx                                           // 0x0042306f    52
                         {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x00423070    8b542464
                         sub                esp, 0x08                                     // 0x00423074    83ec08
                         mov.s              ecx, esp                                      // 0x00423077    8bcc
                         push               eax                                           // 0x00423079    50
                         push               edx                                           // 0x0042307a    52
                         call               _jmp_addr_0x00423390                          // 0x0042307b    e810030000
                         push               esi                                           // 0x00423080    56
                         call               edi                                           // 0x00423081    ffd7
                         add                esp, 0x14                                     // 0x00423083    83c414
                         pop                edi                                           // 0x00423086    5f
                         pop                esi                                           // 0x00423087    5e
                         pop                ebp                                           // 0x00423088    5d
                         pop                ebx                                           // 0x00423089    5b
                         add                esp, 0x58                                     // 0x0042308a    83c458
                         ret                0x0010                                        // 0x0042308d    c21000
_jmp_addr_0x00423090:    {disp8} fld        dword ptr [esp + 0x5c]                        // 0x00423090    d944245c
                         {disp8} mov        eax, dword ptr [esp + 0x74]                   // 0x00423094    8b442474
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00423098    8b4c2414
                         push               eax                                           // 0x0042309c    50
                         push               ecx                                           // 0x0042309d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                   // 0x0042309e    8b4c2474
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x004230a2    8d54242c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x004230a6    d95c242c
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x004230aa    d944246c
                         push               edx                                           // 0x004230ae    52
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x004230af    d95c2434
                         push               esi                                           // 0x004230b3    56
                         call               _jmp_addr_0x0083b450                          // 0x004230b4    e897834100
                         pop                edi                                           // 0x004230b9    5f
                         pop                esi                                           // 0x004230ba    5e
                         pop                ebp                                           // 0x004230bb    5d
                         pop                ebx                                           // 0x004230bc    5b
                         add                esp, 0x58                                     // 0x004230bd    83c458
                         ret                0x0010                                        // 0x004230c0    c21000
                         nop                                                              // 0x004230c3    90
                         nop                                                              // 0x004230c4    90
                         nop                                                              // 0x004230c5    90
                         nop                                                              // 0x004230c6    90
                         nop                                                              // 0x004230c7    90
                         nop                                                              // 0x004230c8    90
                         nop                                                              // 0x004230c9    90
                         nop                                                              // 0x004230ca    90
                         nop                                                              // 0x004230cb    90
                         nop                                                              // 0x004230cc    90
                         nop                                                              // 0x004230cd    90
                         nop                                                              // 0x004230ce    90
                         nop                                                              // 0x004230cf    90
_jmp_addr_0x004230d0:    {disp8} mov        ecx, dword ptr [ecx + 0x40]                   // 0x004230d0    8b4940
                         test               ecx, ecx                                      // 0x004230d3    85c9
                         {disp8} je         _jmp_addr_0x00423102                          // 0x004230d5    742b
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x004230d7    8b1534fee900
                         push               esi                                           // 0x004230dd    56
                         mov                esi, dword ptr [edx]                          // 0x004230de    8b32
                         mov                eax, 0x000000d4                               // 0x004230e0    b8d4000000
                         cmp.s              esi, eax                                      // 0x004230e5    3bf0
                         {disp8} jg         _jmp_addr_0x004230eb                          // 0x004230e7    7f02
                         xor.s              eax, eax                                      // 0x004230e9    33c0
_jmp_addr_0x004230eb:    {disp8} mov        esi, dword ptr [edx + eax * 0x4 + 0x04]       // 0x004230eb    8b748204
                         mov                eax, dword ptr [ecx]                          // 0x004230ef    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x004230f1    ff90f8000000
                         cmp.s              eax, esi                                      // 0x004230f7    3bc6
                         pop                esi                                           // 0x004230f9    5e
                         {disp8} jne        _jmp_addr_0x00423102                          // 0x004230fa    7506
                         mov                eax, 0x00000001                               // 0x004230fc    b801000000
                         ret                                                              // 0x00423101    c3
_jmp_addr_0x00423102:    xor.s              eax, eax                                      // 0x00423102    33c0
                         ret                                                              // 0x00423104    c3
                         nop                                                              // 0x00423105    90
                         nop                                                              // 0x00423106    90
                         nop                                                              // 0x00423107    90
                         nop                                                              // 0x00423108    90
                         nop                                                              // 0x00423109    90
                         nop                                                              // 0x0042310a    90
                         nop                                                              // 0x0042310b    90
                         nop                                                              // 0x0042310c    90
                         nop                                                              // 0x0042310d    90
                         nop                                                              // 0x0042310e    90
                         nop                                                              // 0x0042310f    90
_globl_ct_0x00423110:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00423110    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00423116    b001
                         test               al, cl                                        // 0x00423118    84c8
                         {disp8} jne        _jmp_addr_0x00423124                          // 0x0042311a    7508
                         or.s               cl, al                                        // 0x0042311c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0042311e    880d34c9fa00
_jmp_addr_0x00423124:    {disp32} jmp       _jmp_addr_0x00423130                          // 0x00423124    e907000000
                         nop                                                              // 0x00423129    90
                         nop                                                              // 0x0042312a    90
                         nop                                                              // 0x0042312b    90
                         nop                                                              // 0x0042312c    90
                         nop                                                              // 0x0042312d    90
                         nop                                                              // 0x0042312e    90
                         nop                                                              // 0x0042312f    90
_jmp_addr_0x00423130:    push               0x00407870                                    // 0x00423130    6870784000
                         call               _atexit                                       // 0x00423135    e857263a00
                         pop                ecx                                           // 0x0042313a    59
                         ret                                                              // 0x0042313b    c3
                         nop                                                              // 0x0042313c    90
                         nop                                                              // 0x0042313d    90
                         nop                                                              // 0x0042313e    90
                         nop                                                              // 0x0042313f    90
?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z:
                                               push               ecx                                           // 0x00423140    51
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00423141    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00423145    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0042314b    d944240c
                         fnstsw             ax                                            // 0x0042314f    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00423151    d81d90a38a00
                         test               ah, 0x40                                      // 0x00423157    f6c440
                         fnstsw             ax                                            // 0x0042315a    dfe0
                         {disp32} jne       _jmp_addr_0x004232e3                          // 0x0042315c    0f8581010000
                         test               ah, 0x40                                      // 0x00423162    f6c440
                         {disp32} jne       _jmp_addr_0x00423229                          // 0x00423165    0f85be000000
                         xor.s              eax, eax                                      // 0x0042316b    33c0
                         {disp8} mov        dword ptr [ecx + 0x40], eax                   // 0x0042316d    894140
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x00423170    89413c
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x00423173    894138
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x00423176    894130
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x00423179    89412c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x0042317c    894128
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x0042317f    894120
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x00423182    89411c
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x00423185    894118
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00423188    8b44240c
                         {disp8} mov        dword ptr [ecx + 0x34], eax                   // 0x0042318c    894134
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0042318f    894124
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x00423192    894114
                         {disp8} fld        dword ptr [ecx + 0x38]                        // 0x00423195    d94138
                         fadd               dword ptr [edx]                               // 0x00423198    d802
                         {disp8} fstp       dword ptr [ecx + 0x38]                        // 0x0042319a    d95938
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0042319d    d94204
                         {disp8} fadd       dword ptr [ecx + 0x3c]                        // 0x004231a0    d8413c
                         {disp8} fstp       dword ptr [ecx + 0x3c]                        // 0x004231a3    d9593c
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x004231a6    d94208
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x004231a9    8b542408
                         {disp8} fadd       dword ptr [ecx + 0x40]                        // 0x004231ad    d84140
                         {disp8} fstp       dword ptr [ecx + 0x40]                        // 0x004231b0    d95940
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x004231b3    d9442408
                         fcos                                                             // 0x004231b7    d9ff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x004231b9    d9442408
                         fsin                                                             // 0x004231bd    d9fe
                         fld                st(0)                                         // 0x004231bf    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x004231c1    d84914
                         fld                st(2)                                         // 0x004231c4    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x004231c6    d84914
                         fld                st(2)                                         // 0x004231c9    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x004231cb    d8492c
                         faddp              st(1), st                                     // 0x004231ce    dec1
                         {disp8} fstp       dword ptr [ecx + 0x14]                        // 0x004231d0    d95914
                         fld                st(2)                                         // 0x004231d3    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x004231d5    d8492c
                         fsub               st, st(1)                                     // 0x004231d8    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x2c]                        // 0x004231da    d9592c
                         fstp               st(0)                                         // 0x004231dd    ddd8
                         fld                st(0)                                         // 0x004231df    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x004231e1    d84918
                         fld                st(1)                                         // 0x004231e4    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x004231e6    d84930
                         fld                st(3)                                         // 0x004231e9    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x004231eb    d84918
                         faddp              st(1), st                                     // 0x004231ee    dec1
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x004231f0    d95918
                         fld                st(2)                                         // 0x004231f3    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x004231f5    d84930
                         fsub               st, st(1)                                     // 0x004231f8    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x30]                        // 0x004231fa    d95930
                         fstp               st(0)                                         // 0x004231fd    ddd8
                         fld                st(0)                                         // 0x004231ff    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00423201    d8491c
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00423204    d95c2400
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x00423208    d84934
                         fld                st(1)                                         // 0x0042320b    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x0042320d    d8491c
                         faddp              st(1), st                                     // 0x00423210    dec1
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x00423212    d9591c
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x00423215    d84934
                         {disp8} fsub       dword ptr [esp + 0x00]                        // 0x00423218    d8642400
                         {disp8} fstp       dword ptr [ecx + 0x34]                        // 0x0042321c    d95934
                         {disp8} mov        dword ptr [ecx + 0x44], eax                   // 0x0042321f    894144
                         {disp8} mov        dword ptr [ecx + 0x48], edx                   // 0x00423222    895148
                         pop                ecx                                           // 0x00423225    59
                         ret                0x0008                                        // 0x00423226    c20800
_jmp_addr_0x00423229:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x00423229    d9442408
                         xor.s              eax, eax                                      // 0x0042322d    33c0
                         fcos                                                             // 0x0042322f    d9ff
                         {disp8} mov        dword ptr [ecx + 0x40], eax                   // 0x00423231    894140
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x00423234    89413c
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x00423237    894138
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x0042323a    894130
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x0042323d    89412c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x00423240    894128
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x00423243    894120
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x00423246    89411c
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x00423249    894118
                         mov                eax, 0x3f800000                               // 0x0042324c    b80000803f
                         {disp8} mov        dword ptr [ecx + 0x34], eax                   // 0x00423251    894134
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x00423254    894124
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x00423257    894114
                         mov                eax, dword ptr [edx]                          // 0x0042325a    8b02
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x0042325c    894138
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0042325f    8b4204
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x00423262    89413c
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00423265    8b5208
                         {disp8} mov        dword ptr [ecx + 0x40], edx                   // 0x00423268    895140
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0042326b    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0042326f    8b542408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00423273    d9442408
                         fsin                                                             // 0x00423277    d9fe
                         fld                st(0)                                         // 0x00423279    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x0042327b    d84914
                         fld                st(2)                                         // 0x0042327e    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00423280    d84914
                         fld                st(2)                                         // 0x00423283    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x00423285    d8492c
                         faddp              st(1), st                                     // 0x00423288    dec1
                         {disp8} fstp       dword ptr [ecx + 0x14]                        // 0x0042328a    d95914
                         fld                st(2)                                         // 0x0042328d    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x0042328f    d8492c
                         fsub               st, st(1)                                     // 0x00423292    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x2c]                        // 0x00423294    d9592c
                         fstp               st(0)                                         // 0x00423297    ddd8
                         fld                st(0)                                         // 0x00423299    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x0042329b    d84918
                         fld                st(1)                                         // 0x0042329e    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x004232a0    d84930
                         fld                st(3)                                         // 0x004232a3    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x004232a5    d84918
                         faddp              st(1), st                                     // 0x004232a8    dec1
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x004232aa    d95918
                         fld                st(2)                                         // 0x004232ad    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x004232af    d84930
                         fsub               st, st(1)                                     // 0x004232b2    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x30]                        // 0x004232b4    d95930
                         fstp               st(0)                                         // 0x004232b7    ddd8
                         fld                st(0)                                         // 0x004232b9    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x004232bb    d8491c
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x004232be    d95c2400
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x004232c2    d84934
                         fld                st(1)                                         // 0x004232c5    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x004232c7    d8491c
                         faddp              st(1), st                                     // 0x004232ca    dec1
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x004232cc    d9591c
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x004232cf    d84934
                         {disp8} fsub       dword ptr [esp + 0x00]                        // 0x004232d2    d8642400
                         {disp8} fstp       dword ptr [ecx + 0x34]                        // 0x004232d6    d95934
                         {disp8} mov        dword ptr [ecx + 0x44], eax                   // 0x004232d9    894144
                         {disp8} mov        dword ptr [ecx + 0x48], edx                   // 0x004232dc    895148
                         pop                ecx                                           // 0x004232df    59
                         ret                0x0008                                        // 0x004232e0    c20800
_jmp_addr_0x004232e3:    test               ah, 0x40                                      // 0x004232e3    f6c440
                         {disp8} jne        _jmp_addr_0x0042333a                          // 0x004232e6    7552
                         xor.s              eax, eax                                      // 0x004232e8    33c0
                         {disp8} mov        dword ptr [ecx + 0x40], eax                   // 0x004232ea    894140
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x004232ed    89413c
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x004232f0    894138
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x004232f3    894130
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x004232f6    89412c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x004232f9    894128
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x004232fc    894120
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x004232ff    89411c
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x00423302    894118
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00423305    8b44240c
                         {disp8} mov        dword ptr [ecx + 0x34], eax                   // 0x00423309    894134
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0042330c    894124
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x0042330f    894114
                         {disp8} fld        dword ptr [ecx + 0x38]                        // 0x00423312    d94138
                         fadd               dword ptr [edx]                               // 0x00423315    d802
                         {disp8} fstp       dword ptr [ecx + 0x38]                        // 0x00423317    d95938
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0042331a    d94204
                         {disp8} fadd       dword ptr [ecx + 0x3c]                        // 0x0042331d    d8413c
                         {disp8} fstp       dword ptr [ecx + 0x3c]                        // 0x00423320    d9593c
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x00423323    d94208
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00423326    8b542408
                         {disp8} fadd       dword ptr [ecx + 0x40]                        // 0x0042332a    d84140
                         {disp8} fstp       dword ptr [ecx + 0x40]                        // 0x0042332d    d95940
                         {disp8} mov        dword ptr [ecx + 0x44], eax                   // 0x00423330    894144
                         {disp8} mov        dword ptr [ecx + 0x48], edx                   // 0x00423333    895148
                         pop                ecx                                           // 0x00423336    59
                         ret                0x0008                                        // 0x00423337    c20800
_jmp_addr_0x0042333a:    xor.s              eax, eax                                      // 0x0042333a    33c0
                         {disp8} mov        dword ptr [ecx + 0x40], eax                   // 0x0042333c    894140
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x0042333f    89413c
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x00423342    894138
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x00423345    894130
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x00423348    89412c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x0042334b    894128
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x0042334e    894120
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x00423351    89411c
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x00423354    894118
                         mov                eax, 0x3f800000                               // 0x00423357    b80000803f
                         {disp8} mov        dword ptr [ecx + 0x34], eax                   // 0x0042335c    894134
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0042335f    894124
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x00423362    894114
                         mov                eax, dword ptr [edx]                          // 0x00423365    8b02
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x00423367    894138
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0042336a    8b4204
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x0042336d    89413c
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00423370    8b5208
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00423373    8b44240c
                         {disp8} mov        dword ptr [ecx + 0x40], edx                   // 0x00423377    895140
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0042337a    8b542408
                         {disp8} mov        dword ptr [ecx + 0x44], eax                   // 0x0042337e    894144
                         {disp8} mov        dword ptr [ecx + 0x48], edx                   // 0x00423381    895148
                         pop                ecx                                           // 0x00423384    59
                         ret                0x0008                                        // 0x00423385    c20800
                         nop                                                              // 0x00423388    90
                         nop                                                              // 0x00423389    90
                         nop                                                              // 0x0042338a    90
                         nop                                                              // 0x0042338b    90
                         nop                                                              // 0x0042338c    90
                         nop                                                              // 0x0042338d    90
                         nop                                                              // 0x0042338e    90
                         nop                                                              // 0x0042338f    90
_jmp_addr_0x00423390:    {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00423390    8b542408
                         mov.s              eax, ecx                                      // 0x00423394    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00423396    8b4c2404
                         mov                dword ptr [eax], ecx                          // 0x0042339a    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0042339c    895004
                         ret                0x0008                                        // 0x0042339f    c20800
                         nop                                                              // 0x004233a2    90
                         nop                                                              // 0x004233a3    90
                         nop                                                              // 0x004233a4    90
                         nop                                                              // 0x004233a5    90
                         nop                                                              // 0x004233a6    90
                         nop                                                              // 0x004233a7    90
                         nop                                                              // 0x004233a8    90
                         nop                                                              // 0x004233a9    90
                         nop                                                              // 0x004233aa    90
                         nop                                                              // 0x004233ab    90
                         nop                                                              // 0x004233ac    90
                         nop                                                              // 0x004233ad    90
                         nop                                                              // 0x004233ae    90
                         nop                                                              // 0x004233af    90
_globl_ct_0x004233b0:    {disp32} jmp       _jmp_addr_0x004233c0                          // 0x004233b0    e90b000000
                         nop                                                              // 0x004233b5    90
                         nop                                                              // 0x004233b6    90
                         nop                                                              // 0x004233b7    90
                         nop                                                              // 0x004233b8    90
                         nop                                                              // 0x004233b9    90
                         nop                                                              // 0x004233ba    90
                         nop                                                              // 0x004233bb    90
                         nop                                                              // 0x004233bc    90
                         nop                                                              // 0x004233bd    90
                         nop                                                              // 0x004233be    90
                         nop                                                              // 0x004233bf    90
_jmp_addr_0x004233c0:    {disp32} fld       dword ptr [rdata_bytes + 0x19c38]             // 0x004233c0    d905382c8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c34]             // 0x004233c6    d80d342c8c00
                         {disp32} fstp      dword ptr [data_bytes + 0x28fff8]             // 0x004233cc    d91df85fc500
                         ret                                                              // 0x004233d2    c3
                         nop                                                              // 0x004233d3    90
                         nop                                                              // 0x004233d4    90
                         nop                                                              // 0x004233d5    90
                         nop                                                              // 0x004233d6    90
                         nop                                                              // 0x004233d7    90
                         nop                                                              // 0x004233d8    90
                         nop                                                              // 0x004233d9    90
                         nop                                                              // 0x004233da    90
                         nop                                                              // 0x004233db    90
                         nop                                                              // 0x004233dc    90
                         nop                                                              // 0x004233dd    90
                         nop                                                              // 0x004233de    90
                         nop                                                              // 0x004233df    90
_globl_ct_0x004233e0:    {disp32} jmp       _jmp_addr_0x004233f0                          // 0x004233e0    e90b000000
                         nop                                                              // 0x004233e5    90
                         nop                                                              // 0x004233e6    90
                         nop                                                              // 0x004233e7    90
                         nop                                                              // 0x004233e8    90
                         nop                                                              // 0x004233e9    90
                         nop                                                              // 0x004233ea    90
                         nop                                                              // 0x004233eb    90
                         nop                                                              // 0x004233ec    90
                         nop                                                              // 0x004233ed    90
                         nop                                                              // 0x004233ee    90
                         nop                                                              // 0x004233ef    90
_jmp_addr_0x004233f0:    {disp32} mov       dword ptr [data_bytes + 0x28fff4], 0xffffffff // 0x004233f0    c705f45fc500ffffffff
                         ret                                                              // 0x004233fa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004233fb    e879e4fdff
_jmp_addr_0x00423400:    push               ebx                                           // 0x00423400    53
                         push               esi                                           // 0x00423401    56
                         xor.s              eax, eax                                      // 0x00423402    33c0
                         mov.s              esi, ecx                                      // 0x00423404    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x000000f1]               // 0x00423406    8a86f1000000
                         push               edi                                           // 0x0042340c    57
                         xor.s              edi, edi                                      // 0x0042340d    33ff
                         add                eax, -0x02                                    // 0x0042340f    83c0fe
                         cmp                eax, 0x0d                                     // 0x00423412    83f80d
                         {disp8} ja         _jmp_addr_0x0042342b                          // 0x00423415    7714
                         xor.s              ecx, ecx                                      // 0x00423417    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00423530]               // 0x00423419    8a8830354200
                         jmp                dword ptr [ecx*4 + 0x423528]                  // 0x0042341f    ff248d28354200
                         mov                edi, 0x00000001                               // 0x00423426    bf01000000
_jmp_addr_0x0042342b:    test               byte ptr [esi + 0x25], 0x04                   // 0x0042342b    f6462504
                         {disp8} jne        _jmp_addr_0x00423477                          // 0x0042342f    7546
                         mov                edx, dword ptr [esi]                          // 0x00423431    8b16
                         {disp8} mov        ebx, dword ptr [esi + 0x28]                   // 0x00423433    8b5e28
                         mov.s              ecx, esi                                      // 0x00423436    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x00423438    ff921c010000
                         {disp32} fcomp     dword ptr [ebx + 0x00000380]                  // 0x0042343e    d89b80030000
                         fnstsw             ax                                            // 0x00423444    dfe0
                         test               ah, 0x41                                      // 0x00423446    f6c441
                         {disp8} je         _jmp_addr_0x00423454                          // 0x00423449    7409
                         pop                edi                                           // 0x0042344b    5f
                         pop                esi                                           // 0x0042344c    5e
                         mov                eax, 0x000000e1                               // 0x0042344d    b8e1000000
                         pop                ebx                                           // 0x00423452    5b
                         ret                                                              // 0x00423453    c3
_jmp_addr_0x00423454:    mov                eax, dword ptr [esi]                          // 0x00423454    8b06
                         {disp8} mov        ebx, dword ptr [esi + 0x28]                   // 0x00423456    8b5e28
                         mov.s              ecx, esi                                      // 0x00423459    8bce
                         call               dword ptr [eax + 0x11c]                       // 0x0042345b    ff901c010000
                         {disp32} fcomp     dword ptr [ebx + 0x0000037c]                  // 0x00423461    d89b7c030000
                         fnstsw             ax                                            // 0x00423467    dfe0
                         test               ah, 0x41                                      // 0x00423469    f6c441
                         {disp8} je         _jmp_addr_0x00423477                          // 0x0042346c    7409
                         pop                edi                                           // 0x0042346e    5f
                         pop                esi                                           // 0x0042346f    5e
                         mov                eax, 0x000001aa                               // 0x00423470    b8aa010000
                         pop                ebx                                           // 0x00423475    5b
                         ret                                                              // 0x00423476    c3
_jmp_addr_0x00423477:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00423477    8b4e28
                         {disp32} mov       eax, dword ptr [ecx + 0x000001f8]             // 0x0042347a    8b81f8010000
                         test               eax, eax                                      // 0x00423480    85c0
                         {disp8} jne        _jmp_addr_0x004234d6                          // 0x00423482    7552
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x372370]        // 0x00423484    8b0d7083d300
                         xor.s              eax, eax                                      // 0x0042348a    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]                     // 0x0042348c    668b465a
                         cmp.s              eax, ecx                                      // 0x00423490    3bc1
                         {disp8} jg         _jmp_addr_0x004234a8                          // 0x00423492    7f14
                         mov.s              eax, edi                                      // 0x00423494    8bc7
                         neg                eax                                           // 0x00423496    f7d8
                         sbb.s              eax, eax                                      // 0x00423498    1bc0
                         pop                edi                                           // 0x0042349a    5f
                         and                eax, 0xffffff2c                               // 0x0042349b    252cffffff
                         pop                esi                                           // 0x004234a0    5e
                         add                eax, 0x000001ab                               // 0x004234a1    05ab010000
                         pop                ebx                                           // 0x004234a6    5b
                         ret                                                              // 0x004234a7    c3
_jmp_addr_0x004234a8:    cmp                eax, dword ptr [data_bytes + 0x372374]        // 0x004234a8    3b057483d300
                         mov.s              eax, edi                                      // 0x004234ae    8bc7
                         {disp8} jg         _jmp_addr_0x004234c4                          // 0x004234b0    7f12
                         neg                eax                                           // 0x004234b2    f7d8
                         sbb.s              eax, eax                                      // 0x004234b4    1bc0
                         pop                edi                                           // 0x004234b6    5f
                         and                eax, 0xffffff79                               // 0x004234b7    2579ffffff
                         pop                esi                                           // 0x004234bc    5e
                         add                eax, 0x0000015f                               // 0x004234bd    055f010000
                         pop                ebx                                           // 0x004234c2    5b
                         ret                                                              // 0x004234c3    c3
_jmp_addr_0x004234c4:    neg                eax                                           // 0x004234c4    f7d8
                         sbb.s              eax, eax                                      // 0x004234c6    1bc0
                         pop                edi                                           // 0x004234c8    5f
                         and                eax, 0xffffff59                               // 0x004234c9    2559ffffff
                         pop                esi                                           // 0x004234ce    5e
                         add                eax, 0x0000017f                               // 0x004234cf    057f010000
                         pop                ebx                                           // 0x004234d4    5b
                         ret                                                              // 0x004234d5    c3
_jmp_addr_0x004234d6:    {disp32} mov       ecx, dword ptr [data_bytes + 0x372358]        // 0x004234d6    8b0d5883d300
                         xor.s              eax, eax                                      // 0x004234dc    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]                     // 0x004234de    668b465a
                         cmp.s              eax, ecx                                      // 0x004234e2    3bc1
                         {disp8} jg         _jmp_addr_0x004234fa                          // 0x004234e4    7f14
                         mov.s              eax, edi                                      // 0x004234e6    8bc7
                         neg                eax                                           // 0x004234e8    f7d8
                         sbb.s              eax, eax                                      // 0x004234ea    1bc0
                         pop                edi                                           // 0x004234ec    5f
                         and                eax, 0xffffff28                               // 0x004234ed    2528ffffff
                         pop                esi                                           // 0x004234f2    5e
                         add                eax, 0x000001af                               // 0x004234f3    05af010000
                         pop                ebx                                           // 0x004234f8    5b
                         ret                                                              // 0x004234f9    c3
_jmp_addr_0x004234fa:    cmp                eax, dword ptr [data_bytes + 0x37235c]        // 0x004234fa    3b055c83d300
                         mov.s              eax, edi                                      // 0x00423500    8bc7
                         {disp8} jg         _jmp_addr_0x00423516                          // 0x00423502    7f12
                         neg                eax                                           // 0x00423504    f7d8
                         sbb.s              eax, eax                                      // 0x00423506    1bc0
                         pop                edi                                           // 0x00423508    5f
                         and                eax, 0xffffff77                               // 0x00423509    2577ffffff
                         pop                esi                                           // 0x0042350e    5e
                         add                eax, 0x00000161                               // 0x0042350f    0561010000
                         pop                ebx                                           // 0x00423514    5b
                         ret                                                              // 0x00423515    c3
_jmp_addr_0x00423516:    neg                eax                                           // 0x00423516    f7d8
                         sbb.s              eax, eax                                      // 0x00423518    1bc0
                         pop                edi                                           // 0x0042351a    5f
                         and                eax, 0xffffff58                               // 0x0042351b    2558ffffff
                         pop                esi                                           // 0x00423520    5e
                         add                eax, 0x00000180                               // 0x00423521    0580010000
                         pop                ebx                                           // 0x00423526    5b
                         ret                                                              // 0x00423527    c3

// Snippet: jmptbl, [0x00423528, 0x00423530)
.byte 0x26, 0x34, 0x42, 0x00      // 0x00423528
.byte 0x2b, 0x34, 0x42, 0x00      // 0x0042352c

// Snippet: ijmptbl, [0x00423530, 0x0042353e)
.byte 0x00, 0x00, 0x00, 0x01      // 0x00423530
.byte 0x00, 0x01, 0x01, 0x00      // 0x00423534
.byte 0x00, 0x00, 0x00, 0x00      // 0x00423538
.byte 0x00, 0x00                  // 0x0042353c

// Snippet: db, [0x0042353e, 0x00423540)
.byte 0x90, 0x90                  // 0x0042353e

