.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0043a860
.extern _jmp_addr_0x0043a880
.extern _jmp_addr_0x004f4780
.extern _jmp_addr_0x004f5420
.extern _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ??2@YAPAXI@Z

.globl _jmp_addr_0x004f4b60
.globl _jmp_addr_0x004f4b90
.globl _jmp_addr_0x004f4c30
.globl _jmp_addr_0x004f4c50
.globl _jmp_addr_0x004f4cc0
.globl _jmp_addr_0x004f4d20
.globl _jmp_addr_0x004f4da0
.globl _jmp_addr_0x004f4dc0
.globl _jmp_addr_0x004f4e60
.globl _jmp_addr_0x004f51e0
.globl _jmp_addr_0x004f5200
.globl _jmp_addr_0x004f5230
.globl @__ct__20CreatureReceiveSpellFP8Creature@12
.globl _jmp_addr_0x004f5310
.globl _jmp_addr_0x004f5340
.globl _jmp_addr_0x004f5360

start_0x004f4b10_0x004f5420:
// Snippet: asm, [0x004f4b10, 0x004f5407)
_jmp_addr_0x004f4b10:    push               ebx                                      // 0x004f4b10    53
                         push               ebp                                      // 0x004f4b11    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]              // 0x004f4b12    8b6c240c
                         push               esi                                      // 0x004f4b16    56
                         push               edi                                      // 0x004f4b17    57
                         mov.s              ebx, ecx                                 // 0x004f4b18    8bd9
                         xor.s              edi, edi                                 // 0x004f4b1a    33ff
                         mov                esi, 0x00be0380                          // 0x004f4b1c    be8003be00
_jmp_addr_0x004f4b21:    cmp                dword ptr [esi], ebp                     // 0x004f4b21    392e
                         {disp8} jne        _jmp_addr_0x004f4b2d                     // 0x004f4b23    7508
                         push               edi                                      // 0x004f4b25    57
                         mov.s              ecx, ebx                                 // 0x004f4b26    8bcb
                         call               _jmp_addr_0x004f4b40                     // 0x004f4b28    e813000000
_jmp_addr_0x004f4b2d:    add                esi, 0x68                                // 0x004f4b2d    83c668
                         inc                edi                                      // 0x004f4b30    47
                         cmp                esi, 0x00be0a00                          // 0x004f4b31    81fe000abe00
                         {disp8} jl         _jmp_addr_0x004f4b21                     // 0x004f4b37    7ce8
                         pop                edi                                      // 0x004f4b39    5f
                         pop                esi                                      // 0x004f4b3a    5e
                         pop                ebp                                      // 0x004f4b3b    5d
                         pop                ebx                                      // 0x004f4b3c    5b
                         ret                0x0004                                   // 0x004f4b3d    c20400
_jmp_addr_0x004f4b40:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x004f4b40    8b442404
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x004f4b44    8d0440
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x8 + 0x08]  // 0x004f4b47    8b54c108
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x8 + 0x04]  // 0x004f4b4b    8d44c104
                         xor.s              ecx, ecx                                 // 0x004f4b4f    33c9
                         cmp                edx, 0x03                                // 0x004f4b51    83fa03
                         {disp8} mov        dword ptr [eax + 0x10], ecx              // 0x004f4b54    894810
                         {disp8} jne        _jmp_addr_0x004f4b5c                     // 0x004f4b57    7503
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x004f4b59    894808
_jmp_addr_0x004f4b5c:    ret                0x0004                                   // 0x004f4b5c    c20400
                         nop                                                         // 0x004f4b5f    90
_jmp_addr_0x004f4b60:    push               esi                                      // 0x004f4b60    56
                         push               edi                                      // 0x004f4b61    57
                         mov.s              edi, ecx                                 // 0x004f4b62    8bf9
                         xor.s              esi, esi                                 // 0x004f4b64    33f6
_jmp_addr_0x004f4b66:    push               esi                                      // 0x004f4b66    56
                         mov.s              ecx, edi                                 // 0x004f4b67    8bcf
                         call               _jmp_addr_0x004f4b40                     // 0x004f4b69    e8d2ffffff
                         inc                esi                                      // 0x004f4b6e    46
                         cmp                esi, 0x10                                // 0x004f4b6f    83fe10
                         {disp8} jl         _jmp_addr_0x004f4b66                     // 0x004f4b72    7cf2
                         mov.s              ecx, edi                                 // 0x004f4b74    8bcf
                         call               _jmp_addr_0x004f4da0                     // 0x004f4b76    e825020000
                         neg                al                                       // 0x004f4b7b    f6d8
                         pop                edi                                      // 0x004f4b7d    5f
                         pop                esi                                      // 0x004f4b7e    5e
                         sbb.s              eax, eax                                 // 0x004f4b7f    1bc0
                         inc                eax                                      // 0x004f4b81    40
                         ret                                                         // 0x004f4b82    c3
                         nop                                                         // 0x004f4b83    90
                         nop                                                         // 0x004f4b84    90
                         nop                                                         // 0x004f4b85    90
                         nop                                                         // 0x004f4b86    90
                         nop                                                         // 0x004f4b87    90
                         nop                                                         // 0x004f4b88    90
                         nop                                                         // 0x004f4b89    90
                         nop                                                         // 0x004f4b8a    90
                         nop                                                         // 0x004f4b8b    90
                         nop                                                         // 0x004f4b8c    90
                         nop                                                         // 0x004f4b8d    90
                         nop                                                         // 0x004f4b8e    90
                         nop                                                         // 0x004f4b8f    90
_jmp_addr_0x004f4b90:    sub                esp, 0x0c                                // 0x004f4b90    83ec0c
                         push               esi                                      // 0x004f4b93    56
                         mov.s              esi, ecx                                 // 0x004f4b94    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]        // 0x004f4b96    8b8e98010000
                         test               ecx, ecx                                 // 0x004f4b9c    85c9
                         {disp8} je         _jmp_addr_0x004f4bb1                     // 0x004f4b9e    7411
                         mov                eax, dword ptr [ecx]                     // 0x004f4ba0    8b01
                         push               0x1                                      // 0x004f4ba2    6a01
                         call               dword ptr [eax + 4]                      // 0x004f4ba4    ff5004
                         {disp32} mov       dword ptr [esi + 0x00000198], 0x00000000 // 0x004f4ba7    c7869801000000000000
_jmp_addr_0x004f4bb1:    {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x004f4bb1    8b4c2418
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x004f4bb5    8b442414
                         push               0x0                                      // 0x004f4bb9    6a00
                         push               ecx                                      // 0x004f4bbb    51
                         {disp8} lea        edx, dword ptr [esp + 0x0c]              // 0x004f4bbc    8d54240c
                         push               edx                                      // 0x004f4bc0    52
                         push               eax                                      // 0x004f4bc1    50
                         push               0x1f                                     // 0x004f4bc2    6a1f
                         push               0x0                                      // 0x004f4bc4    6a00
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000       // 0x004f4bc6    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000       // 0x004f4bce    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000       // 0x004f4bd6    c744242400000000
                         call               _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE                     // 0x004f4bde    e82d9d1900
                         add                esp, 0x18                                // 0x004f4be3    83c418
                         test               eax, eax                                 // 0x004f4be6    85c0
                         {disp32} mov       dword ptr [esi + 0x00000198], eax        // 0x004f4be8    898698010000
                         {disp8} je         _jmp_addr_0x004f4c13                     // 0x004f4bee    7423
                         mov                ecx, dword ptr [esi]                     // 0x004f4bf0    8b0e
                         mov                edx, dword ptr [ecx]                     // 0x004f4bf2    8b11
                         push               edi                                      // 0x004f4bf4    57
                         mov                edi, dword ptr [eax]                     // 0x004f4bf5    8b38
                         call               dword ptr [edx + 0x1c]                   // 0x004f4bf7    ff521c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]        // 0x004f4bfa    8b8e98010000
                         push               eax                                      // 0x004f4c00    50
                         call               dword ptr [edi + 0x20]                   // 0x004f4c01    ff5720
                         pop                edi                                      // 0x004f4c04    5f
                         {disp32} mov       byte ptr [esi + 0x000001d4], 0x00        // 0x004f4c05    c686d401000000
                         pop                esi                                      // 0x004f4c0c    5e
                         add                esp, 0x0c                                // 0x004f4c0d    83c40c
                         ret                0x0008                                   // 0x004f4c10    c20800
_jmp_addr_0x004f4c13:    {disp32} mov       byte ptr [esi + 0x000001d4], 0x00        // 0x004f4c13    c686d401000000
                         pop                esi                                      // 0x004f4c1a    5e
                         add                esp, 0x0c                                // 0x004f4c1b    83c40c
                         ret                0x0008                                   // 0x004f4c1e    c20800
                         nop                                                         // 0x004f4c21    90
                         nop                                                         // 0x004f4c22    90
                         nop                                                         // 0x004f4c23    90
                         nop                                                         // 0x004f4c24    90
                         nop                                                         // 0x004f4c25    90
                         nop                                                         // 0x004f4c26    90
                         nop                                                         // 0x004f4c27    90
                         nop                                                         // 0x004f4c28    90
                         nop                                                         // 0x004f4c29    90
                         nop                                                         // 0x004f4c2a    90
                         nop                                                         // 0x004f4c2b    90
                         nop                                                         // 0x004f4c2c    90
                         nop                                                         // 0x004f4c2d    90
                         nop                                                         // 0x004f4c2e    90
                         nop                                                         // 0x004f4c2f    90
_jmp_addr_0x004f4c30:    {disp32} mov       byte ptr [ecx + 0x000001d4], 0x00        // 0x004f4c30    c681d401000000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000198]        // 0x004f4c37    8b8998010000
                         test               ecx, ecx                                 // 0x004f4c3d    85c9
                         {disp8} je         _jmp_addr_0x004f4c49                     // 0x004f4c3f    7408
                         mov                eax, dword ptr [ecx]                     // 0x004f4c41    8b01
                         jmp                dword ptr [eax + 0x118]                  // 0x004f4c43    ffa018010000
_jmp_addr_0x004f4c49:    ret                                                         // 0x004f4c49    c3
                         call               dword ptr [__imp__DirectXSetupGetVersion]// 0x004f4c4a    ff153c908a00
_jmp_addr_0x004f4c50:    push               esi                                      // 0x004f4c50    56
                         mov.s              esi, ecx                                 // 0x004f4c51    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]        // 0x004f4c53    8b8e98010000
                         test               ecx, ecx                                 // 0x004f4c59    85c9
                         {disp8} je         _jmp_addr_0x004f4cbe                     // 0x004f4c5b    7461
                         mov                edx, dword ptr [esi]                     // 0x004f4c5d    8b16
                         {disp32} mov       edx, dword ptr [edx + 0x00000160]        // 0x004f4c5f    8b9260010000
                         {disp8} mov        edx, dword ptr [edx + 0x6c]              // 0x004f4c65    8b526c
                         mov                eax, dword ptr [ecx]                     // 0x004f4c68    8b01
                         push               edx                                      // 0x004f4c6a    52
                         call               dword ptr [eax + 0x11c]                  // 0x004f4c6b    ff901c010000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ec0]   // 0x004f4c71    8b15c09eea00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]        // 0x004f4c77    8b8e98010000
                         mov                eax, dword ptr [ecx]                     // 0x004f4c7d    8b01
                         push               edx                                      // 0x004f4c7f    52
                         {disp32} lea       edx, dword ptr [esi + 0x0000019c]        // 0x004f4c80    8d969c010000
                         push               edx                                      // 0x004f4c86    52
                         call               dword ptr [eax + 0xfc]                   // 0x004f4c87    ff90fc000000
                         cmp                eax, 0x05                                // 0x004f4c8d    83f805
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]        // 0x004f4c90    8b8e98010000
                         {disp8} jne        _jmp_addr_0x004f4caf                     // 0x004f4c96    7517
                         test               ecx, ecx                                 // 0x004f4c98    85c9
                         {disp8} je         _jmp_addr_0x004f4ca3                     // 0x004f4c9a    7407
                         mov                eax, dword ptr [ecx]                     // 0x004f4c9c    8b01
                         push               0x1                                      // 0x004f4c9e    6a01
                         call               dword ptr [eax + 4]                      // 0x004f4ca0    ff5004
_jmp_addr_0x004f4ca3:    {disp32} mov       dword ptr [esi + 0x00000198], 0x00000000 // 0x004f4ca3    c7869801000000000000
                         pop                esi                                      // 0x004f4cad    5e
                         ret                                                         // 0x004f4cae    c3
_jmp_addr_0x004f4caf:    mov                edx, dword ptr [ecx]                     // 0x004f4caf    8b11
                         push               0x1                                      // 0x004f4cb1    6a01
                         push               0x3f800000                               // 0x004f4cb3    680000803f
                         call               dword ptr [edx + 0x104]                  // 0x004f4cb8    ff9204010000
_jmp_addr_0x004f4cbe:    pop                esi                                      // 0x004f4cbe    5e
                         ret                                                         // 0x004f4cbf    c3
_jmp_addr_0x004f4cc0:    sub                esp, 0x0c                                // 0x004f4cc0    83ec0c
                         push               esi                                      // 0x004f4cc3    56
                         mov.s              esi, ecx                                 // 0x004f4cc4    8bf1
                         mov                eax, dword ptr [esi]                     // 0x004f4cc6    8b06
                         {disp32} mov       cl, byte ptr [eax + 0x000011f0]          // 0x004f4cc8    8a88f0110000
                         test               cl, cl                                   // 0x004f4cce    84c9
                         {disp8} je         _jmp_addr_0x004f4d19                     // 0x004f4cd0    7447
                         {disp32} mov       ecx, dword ptr [eax + 0x000011ec]        // 0x004f4cd2    8b88ec110000
                         test               ecx, ecx                                 // 0x004f4cd8    85c9
                         {disp8} je         _jmp_addr_0x004f4d19                     // 0x004f4cda    743d
                         {disp32} mov       edx, dword ptr [eax + 0x000011e8]        // 0x004f4cdc    8b90e8110000
                         test               edx, edx                                 // 0x004f4ce2    85d2
                         {disp8} je         _jmp_addr_0x004f4d01                     // 0x004f4ce4    741b
                         mov.s              eax, edx                                 // 0x004f4ce6    8bc2
                         push               eax                                      // 0x004f4ce8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x004f4ce9    8d4c2408
                         push               ecx                                      // 0x004f4ced    51
                         call               _jmp_addr_0x004f4780                     // 0x004f4cee    e88dfaffff
                         mov                edx, dword ptr [esi]                     // 0x004f4cf3    8b16
                         {disp32} mov       ecx, dword ptr [edx + 0x000011ec]        // 0x004f4cf5    8b8aec110000
                         add                esp, 0x08                                // 0x004f4cfb    83c408
                         push               eax                                      // 0x004f4cfe    50
                         {disp8} jmp        _jmp_addr_0x004f4d07                     // 0x004f4cff    eb06
_jmp_addr_0x004f4d01:    add                eax, 0x000011d8                          // 0x004f4d01    05d8110000
                         push               eax                                      // 0x004f4d06    50
_jmp_addr_0x004f4d07:    call               _jmp_addr_0x0043a860                     // 0x004f4d07    e8545bf4ff
                         mov                eax, dword ptr [esi]                     // 0x004f4d0c    8b06
                         {disp32} mov       ecx, dword ptr [eax + 0x000011ec]        // 0x004f4d0e    8b88ec110000
                         call               _jmp_addr_0x0043a880                     // 0x004f4d14    e8675bf4ff
_jmp_addr_0x004f4d19:    pop                esi                                      // 0x004f4d19    5e
                         add                esp, 0x0c                                // 0x004f4d1a    83c40c
                         ret                                                         // 0x004f4d1d    c3
                         nop                                                         // 0x004f4d1e    90
                         nop                                                         // 0x004f4d1f    90
_jmp_addr_0x004f4d20:    push               ebx                                      // 0x004f4d20    53
                         push               ebp                                      // 0x004f4d21    55
                         push               esi                                      // 0x004f4d22    56
                         mov.s              ebx, ecx                                 // 0x004f4d23    8bd9
                         push               edi                                      // 0x004f4d25    57
                         xor.s              edi, edi                                 // 0x004f4d26    33ff
                         {disp8} lea        esi, dword ptr [ebx + 0x18]              // 0x004f4d28    8d7318
_jmp_addr_0x004f4d2b:    mov                ecx, dword ptr [esi]                     // 0x004f4d2b    8b0e
                         test               ecx, ecx                                 // 0x004f4d2d    85c9
                         {disp8} je         _jmp_addr_0x004f4d49                     // 0x004f4d2f    7418
                         mov                eax, dword ptr [ecx]                     // 0x004f4d31    8b01
                         call               dword ptr [eax + 0x2c]                   // 0x004f4d33    ff502c
                         cmp                eax, 0x01                                // 0x004f4d36    83f801
                         {disp8} je         _jmp_addr_0x004f4d49                     // 0x004f4d39    740e
                         push               edi                                      // 0x004f4d3b    57
                         mov.s              ecx, ebx                                 // 0x004f4d3c    8bcb
                         mov                dword ptr [esi], 0x00000000              // 0x004f4d3e    c70600000000
                         call               _jmp_addr_0x004f4b40                     // 0x004f4d44    e8f7fdffff
_jmp_addr_0x004f4d49:    inc                edi                                      // 0x004f4d49    47
                         add                esi, 0x18                                // 0x004f4d4a    83c618
                         cmp                edi, 0x10                                // 0x004f4d4d    83ff10
                         {disp8} jl         _jmp_addr_0x004f4d2b                     // 0x004f4d50    7cd9
                         {disp32} mov       eax, dword ptr [ebx + 0x0000018c]        // 0x004f4d52    8b838c010000
                         xor.s              ebp, ebp                                 // 0x004f4d58    33ed
                         test               eax, eax                                 // 0x004f4d5a    85c0
                         {disp8} jle        _jmp_addr_0x004f4d90                     // 0x004f4d5c    7e32
                         xor.s              edi, edi                                 // 0x004f4d5e    33ff
_jmp_addr_0x004f4d60:    {disp32} mov       ecx, dword ptr [ebx + 0x00000184]        // 0x004f4d60    8b8b84010000
                         mov.s              esi, edi                                 // 0x004f4d66    8bf7
                         add.s              esi, ecx                                 // 0x004f4d68    03f1
                         {disp8} mov        ecx, dword ptr [esi + 0x08]              // 0x004f4d6a    8b4e08
                         test               ecx, ecx                                 // 0x004f4d6d    85c9
                         {disp8} je         _jmp_addr_0x004f4d82                     // 0x004f4d6f    7411
                         mov                edx, dword ptr [ecx]                     // 0x004f4d71    8b11
                         call               dword ptr [edx + 0x2c]                   // 0x004f4d73    ff522c
                         cmp                eax, 0x01                                // 0x004f4d76    83f801
                         {disp8} je         _jmp_addr_0x004f4d82                     // 0x004f4d79    7407
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000       // 0x004f4d7b    c7460800000000
_jmp_addr_0x004f4d82:    {disp32} mov       eax, dword ptr [ebx + 0x0000018c]        // 0x004f4d82    8b838c010000
                         inc                ebp                                      // 0x004f4d88    45
                         add                edi, 0x0c                                // 0x004f4d89    83c70c
                         cmp.s              ebp, eax                                 // 0x004f4d8c    3be8
                         {disp8} jl         _jmp_addr_0x004f4d60                     // 0x004f4d8e    7cd0
_jmp_addr_0x004f4d90:    pop                edi                                      // 0x004f4d90    5f
                         pop                esi                                      // 0x004f4d91    5e
                         pop                ebp                                      // 0x004f4d92    5d
                         pop                ebx                                      // 0x004f4d93    5b
                         ret                                                         // 0x004f4d94    c3
                         nop                                                         // 0x004f4d95    90
                         nop                                                         // 0x004f4d96    90
                         nop                                                         // 0x004f4d97    90
                         nop                                                         // 0x004f4d98    90
                         nop                                                         // 0x004f4d99    90
                         nop                                                         // 0x004f4d9a    90
                         nop                                                         // 0x004f4d9b    90
                         nop                                                         // 0x004f4d9c    90
                         nop                                                         // 0x004f4d9d    90
                         nop                                                         // 0x004f4d9e    90
                         nop                                                         // 0x004f4d9f    90
_jmp_addr_0x004f4da0:    xor.s              eax, eax                                 // 0x004f4da0    33c0
                         add                ecx, 0x8                                 // 0x004f4da2    83c108
_jmp_addr_0x004f4da5:    cmp                dword ptr [ecx], 0x00                    // 0x004f4da5    833900
                         {disp8} jne        _jmp_addr_0x004f4db6                     // 0x004f4da8    750c
                         inc                eax                                      // 0x004f4daa    40
                         add                ecx, 0x18                                // 0x004f4dab    83c118
                         cmp                eax, 0x10                                // 0x004f4dae    83f810
                         .byte              0x72, 0xf2// {disp8} jb _jmp_addr_0x004f4da5 // 0x004f4db1    72f2
                         xor.s              al, al                                   // 0x004f4db3    32c0
                         ret                                                         // 0x004f4db5    c3
_jmp_addr_0x004f4db6:    mov                al, 0x01                                 // 0x004f4db6    b001
                         ret                                                         // 0x004f4db8    c3
                         nop                                                         // 0x004f4db9    90
                         nop                                                         // 0x004f4dba    90
                         nop                                                         // 0x004f4dbb    90
                         nop                                                         // 0x004f4dbc    90
                         nop                                                         // 0x004f4dbd    90
                         nop                                                         // 0x004f4dbe    90
                         nop                                                         // 0x004f4dbf    90
_jmp_addr_0x004f4dc0:    push               ebx                                      // 0x004f4dc0    53
                         push               esi                                      // 0x004f4dc1    56
                         push               edi                                      // 0x004f4dc2    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]              // 0x004f4dc3    8b7c2410
                         mov.s              esi, ecx                                 // 0x004f4dc7    8bf1
                         lea                eax, dword ptr [edi + edi * 0x2]         // 0x004f4dc9    8d047f
                         lea                ecx, dword ptr [edi + eax * 0x4]         // 0x004f4dcc    8d0c87
                         {disp32} mov       ebx, dword ptr [ecx * 0x8 + 0x00be0380]  // 0x004f4dcf    8b1ccd8003be00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x004f4dd6    8b8e70030000
                         push               edi                                      // 0x004f4ddc    57
                         call               _jmp_addr_0x004f51e0                     // 0x004f4ddd    e8fe030000
                         test               eax, eax                                 // 0x004f4de2    85c0
                         {disp8} je         _jmp_addr_0x004f4e02                     // 0x004f4de4    741c
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x004f4de6    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x004f4dea    8b442414
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x004f4dee    8b8e70030000
                         push               edx                                      // 0x004f4df4    52
                         push               eax                                      // 0x004f4df5    50
                         push               edi                                      // 0x004f4df6    57
                         call               _jmp_addr_0x004f4f30                     // 0x004f4df7    e834010000
                         pop                edi                                      // 0x004f4dfc    5f
                         pop                esi                                      // 0x004f4dfd    5e
                         pop                ebx                                      // 0x004f4dfe    5b
                         ret                0x000c                                   // 0x004f4dff    c20c00
_jmp_addr_0x004f4e02:    {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x004f4e02    8b8e70030000
                         push               ebx                                      // 0x004f4e08    53
                         call               _jmp_addr_0x004f5200                     // 0x004f4e09    e8f2030000
                         test               eax, eax                                 // 0x004f4e0e    85c0
                         {disp8} je         _jmp_addr_0x004f4e3a                     // 0x004f4e10    7428
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x004f4e12    8b8e70030000
                         push               ebx                                      // 0x004f4e18    53
                         call               _jmp_addr_0x004f4b10                     // 0x004f4e19    e8f2fcffff
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x004f4e1e    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x004f4e22    8b542414
                         push               ecx                                      // 0x004f4e26    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x004f4e27    8b8e70030000
                         push               edx                                      // 0x004f4e2d    52
                         push               edi                                      // 0x004f4e2e    57
                         call               _jmp_addr_0x004f50e0                     // 0x004f4e2f    e8ac020000
                         pop                edi                                      // 0x004f4e34    5f
                         pop                esi                                      // 0x004f4e35    5e
                         pop                ebx                                      // 0x004f4e36    5b
                         ret                0x000c                                   // 0x004f4e37    c20c00
_jmp_addr_0x004f4e3a:    {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x004f4e3a    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x004f4e3e    8b4c2414
                         push               eax                                      // 0x004f4e42    50
                         push               ecx                                      // 0x004f4e43    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x004f4e44    8b8e70030000
                         push               edi                                      // 0x004f4e4a    57
                         call               _jmp_addr_0x004f5060                     // 0x004f4e4b    e810020000
                         pop                edi                                      // 0x004f4e50    5f
                         pop                esi                                      // 0x004f4e51    5e
                         pop                ebx                                      // 0x004f4e52    5b
                         ret                0x000c                                   // 0x004f4e53    c20c00
                         nop                                                         // 0x004f4e56    90
                         nop                                                         // 0x004f4e57    90
                         nop                                                         // 0x004f4e58    90
                         nop                                                         // 0x004f4e59    90
                         nop                                                         // 0x004f4e5a    90
                         nop                                                         // 0x004f4e5b    90
                         nop                                                         // 0x004f4e5c    90
                         nop                                                         // 0x004f4e5d    90
                         nop                                                         // 0x004f4e5e    90
                         nop                                                         // 0x004f4e5f    90
_jmp_addr_0x004f4e60:    push               ecx                                      // 0x004f4e60    51
                         push               ebx                                      // 0x004f4e61    53
                         mov.s              ebx, ecx                                 // 0x004f4e62    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x0000018c]        // 0x004f4e64    8b838c010000
                         push               ebp                                      // 0x004f4e6a    55
                         xor.s              ebp, ebp                                 // 0x004f4e6b    33ed
                         cmp.s              eax, ebp                                 // 0x004f4e6d    3bc5
                         {disp8} mov        dword ptr [esp + 0x08], ebp              // 0x004f4e6f    896c2408
                         {disp32} jle       _jmp_addr_0x004f4f21                     // 0x004f4e73    0f8ea8000000
                         push               esi                                      // 0x004f4e79    56
                         push               edi                                      // 0x004f4e7a    57
_jmp_addr_0x004f4e7b:    {disp32} mov       edi, dword ptr [ebx + 0x00000184]        // 0x004f4e7b    8bbb84010000
                         mov.s              esi, ebp                                 // 0x004f4e81    8bf5
                         mov                eax, dword ptr [esi + edi * 0x1]         // 0x004f4e83    8b043e
                         add.s              esi, edi                                 // 0x004f4e86    03f7
                         lea                ecx, dword ptr [eax + eax * 0x2]         // 0x004f4e88    8d0c40
                         lea                edx, dword ptr [eax + ecx * 0x4]         // 0x004f4e8b    8d1488
                         {disp32} mov       eax, dword ptr [edx * 0x8 + 0x00be0380]  // 0x004f4e8e    8b04d58003be00
                         push               eax                                      // 0x004f4e95    50
                         mov.s              ecx, ebx                                 // 0x004f4e96    8bcb
                         call               _jmp_addr_0x004f5200                     // 0x004f4e98    e863030000
                         test               eax, eax                                 // 0x004f4e9d    85c0
                         {disp8} jne        _jmp_addr_0x004f4f05                     // 0x004f4e9f    7564
                         {disp8} mov        eax, dword ptr [esi + 0x04]              // 0x004f4ea1    8b4604
                         {disp8} mov        ecx, dword ptr [esi + 0x08]              // 0x004f4ea4    8b4e08
                         mov                edx, dword ptr [esi]                     // 0x004f4ea7    8b16
                         push               eax                                      // 0x004f4ea9    50
                         push               ecx                                      // 0x004f4eaa    51
                         push               edx                                      // 0x004f4eab    52
                         mov.s              ecx, ebx                                 // 0x004f4eac    8bcb
                         call               _jmp_addr_0x004f5060                     // 0x004f4eae    e8ad010000
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000018c]        // 0x004f4eb3    8b8b8c010000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000184]        // 0x004f4eb9    8b8384010000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]         // 0x004f4ebf    8d0c49
                         lea                ecx, dword ptr [eax + ecx * 0x4]         // 0x004f4ec2    8d0c88
                         lea                edi, dword ptr [eax + ebp * 0x1]         // 0x004f4ec5    8d3c28
                         add                ecx, -0xc                                // 0x004f4ec8    83c1f4
                         cmp.s              edi, ecx                                 // 0x004f4ecb    3bf9
                         {disp8} jae        _jmp_addr_0x004f4eec                     // 0x004f4ecd    731d
                         sub.s              ecx, edi                                 // 0x004f4ecf    2bcf
                         add                ecx, 0xb                                 // 0x004f4ed1    83c10b
                         mov                eax, 0xaaaaaaab                          // 0x004f4ed4    b8abaaaaaa
                         mul                ecx                                      // 0x004f4ed9    f7e1
                         shr                edx, 3                                   // 0x004f4edb    c1ea03
                         lea                ecx, dword ptr [edx + edx * 0x2]         // 0x004f4ede    8d0c52
                         shl                ecx, 2                                   // 0x004f4ee1    c1e102
                         {disp8} lea        esi, dword ptr [edi + 0x0c]              // 0x004f4ee4    8d770c
                         shr                ecx, 2                                   // 0x004f4ee7    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]             // 0x004f4eea    f3a5
_jmp_addr_0x004f4eec:    {disp32} mov       edx, dword ptr [ebx + 0x0000018c]        // 0x004f4eec    8b938c010000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]              // 0x004f4ef2    8b4c2410
                         dec                edx                                      // 0x004f4ef6    4a
                         dec                ecx                                      // 0x004f4ef7    49
                         {disp32} mov       dword ptr [ebx + 0x0000018c], edx        // 0x004f4ef8    89938c010000
                         {disp8} mov        dword ptr [esp + 0x10], ecx              // 0x004f4efe    894c2410
                         sub                ebp, 0x0c                                // 0x004f4f02    83ed0c
_jmp_addr_0x004f4f05:    {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x004f4f05    8b442410
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000018c]        // 0x004f4f09    8b8b8c010000
                         inc                eax                                      // 0x004f4f0f    40
                         add                ebp, 0x0c                                // 0x004f4f10    83c50c
                         cmp.s              eax, ecx                                 // 0x004f4f13    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax              // 0x004f4f15    89442410
                         {disp32} jl        _jmp_addr_0x004f4e7b                     // 0x004f4f19    0f8c5cffffff
                         pop                edi                                      // 0x004f4f1f    5f
                         pop                esi                                      // 0x004f4f20    5e
_jmp_addr_0x004f4f21:    pop                ebp                                      // 0x004f4f21    5d
                         pop                ebx                                      // 0x004f4f22    5b
                         pop                ecx                                      // 0x004f4f23    59
                         ret                                                         // 0x004f4f24    c3
                         nop                                                         // 0x004f4f25    90
                         nop                                                         // 0x004f4f26    90
                         nop                                                         // 0x004f4f27    90
                         nop                                                         // 0x004f4f28    90
                         nop                                                         // 0x004f4f29    90
                         nop                                                         // 0x004f4f2a    90
                         nop                                                         // 0x004f4f2b    90
                         nop                                                         // 0x004f4f2c    90
                         nop                                                         // 0x004f4f2d    90
                         nop                                                         // 0x004f4f2e    90
                         nop                                                         // 0x004f4f2f    90
_jmp_addr_0x004f4f30:    {disp8} mov        edx, dword ptr [esp + 0x04]              // 0x004f4f30    8b542404
                         sub                esp, 0x08                                // 0x004f4f34    83ec08
                         push               ebx                                      // 0x004f4f37    53
                         lea                eax, dword ptr [edx + edx * 0x2]         // 0x004f4f38    8d0452
                         push               esi                                      // 0x004f4f3b    56
                         {disp8} lea        esi, dword ptr [ecx + eax * 0x8 + 0x04]  // 0x004f4f3c    8d74c104
                         {disp8} mov        eax, dword ptr [esi + 0x04]              // 0x004f4f40    8b4604
                         cmp                eax, 0x01                                // 0x004f4f43    83f801
                         push               edi                                      // 0x004f4f46    57
                         {disp32} je        _jmp_addr_0x004f4fea                     // 0x004f4f47    0f849d000000
                         cmp                eax, 0x02                                // 0x004f4f4d    83f802
                         {disp32} je        _jmp_addr_0x004f4fea                     // 0x004f4f50    0f8494000000
                         cmp                eax, 0x03                                // 0x004f4f56    83f803
                         {disp8} jne        _jmp_addr_0x004f4fcc                     // 0x004f4f59    7571
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x004f4f5b    d9442420
                         {disp8} mov        ebx, dword ptr [esi + 0x14]              // 0x004f4f5f    8b5e14
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x004f4f62    d81d98a38a00
                         fnstsw             ax                                       // 0x004f4f68    dfe0
                         test               ah, 0x01                                 // 0x004f4f6a    f6c401
                         {disp8} jne        _jmp_addr_0x004f4fa3                     // 0x004f4f6d    7534
                         {disp8} mov        edi, dword ptr [esi + 0x08]              // 0x004f4f6f    8b7e08
                         test               edi, edi                                 // 0x004f4f72    85ff
                         {disp8} jl         _jmp_addr_0x004f4fa3                     // 0x004f4f74    7c2d
                         xor.s              edx, edx                                 // 0x004f4f76    33d2
                         mov                eax, 0x000003e8                          // 0x004f4f78    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]        // 0x004f4f7d    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x004f4f83    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax              // 0x004f4f8b    8944240c
                         {disp8} fild       qword ptr [esp + 0x0c]                   // 0x004f4f8f    df6c240c
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x004f4f93    d84c2420
                         call               _jmp_addr_0x007a1400                     // 0x004f4f97    e864c42a00
                         add.s              eax, edi                                 // 0x004f4f9c    03c7
                         {disp8} mov        dword ptr [esi + 0x08], eax              // 0x004f4f9e    894608
                         {disp8} jmp        _jmp_addr_0x004f4faa                     // 0x004f4fa1    eb07
_jmp_addr_0x004f4fa3:    {disp8} mov        dword ptr [esi + 0x08], 0xffffffff       // 0x004f4fa3    c74608ffffffff
_jmp_addr_0x004f4faa:    test               ebx, ebx                                 // 0x004f4faa    85db
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x004f4fac    8b4c241c
                         {disp8} mov        dword ptr [esi + 0x14], ecx              // 0x004f4fb0    894e14
                         {disp32} je        _jmp_addr_0x004f504e                     // 0x004f4fb3    0f8495000000
                         mov                edx, dword ptr [ebx]                     // 0x004f4fb9    8b13
                         mov.s              ecx, ebx                                 // 0x004f4fbb    8bcb
                         call               dword ptr [edx + 0x530]                  // 0x004f4fbd    ff9230050000
                         pop                edi                                      // 0x004f4fc3    5f
                         pop                esi                                      // 0x004f4fc4    5e
                         pop                ebx                                      // 0x004f4fc5    5b
                         add                esp, 0x08                                // 0x004f4fc6    83c408
                         ret                0x000c                                   // 0x004f4fc9    c20c00
_jmp_addr_0x004f4fcc:    cmp                eax, 0x04                                // 0x004f4fcc    83f804
                         {disp8} jne        _jmp_addr_0x004f504e                     // 0x004f4fcf    757d
                         {disp8} mov        eax, dword ptr [esp + 0x20]              // 0x004f4fd1    8b442420
                         push               eax                                      // 0x004f4fd5    50
                         {disp8} mov        eax, dword ptr [esp + 0x20]              // 0x004f4fd6    8b442420
                         push               eax                                      // 0x004f4fda    50
                         push               edx                                      // 0x004f4fdb    52
                         call               _jmp_addr_0x004f50e0                     // 0x004f4fdc    e8ff000000
                         pop                edi                                      // 0x004f4fe1    5f
                         pop                esi                                      // 0x004f4fe2    5e
                         pop                ebx                                      // 0x004f4fe3    5b
                         add                esp, 0x08                                // 0x004f4fe4    83c408
                         ret                0x000c                                   // 0x004f4fe7    c20c00
_jmp_addr_0x004f4fea:    {disp8} fld        dword ptr [esp + 0x20]                   // 0x004f4fea    d9442420
                         {disp8} mov        ebx, dword ptr [esi + 0x14]              // 0x004f4fee    8b5e14
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x004f4ff1    d81d98a38a00
                         fnstsw             ax                                       // 0x004f4ff7    dfe0
                         test               ah, 0x01                                 // 0x004f4ff9    f6c401
                         {disp8} jne        _jmp_addr_0x004f5032                     // 0x004f4ffc    7534
                         {disp8} mov        edi, dword ptr [esi + 0x10]              // 0x004f4ffe    8b7e10
                         test               edi, edi                                 // 0x004f5001    85ff
                         {disp8} jl         _jmp_addr_0x004f5032                     // 0x004f5003    7c2d
                         xor.s              edx, edx                                 // 0x004f5005    33d2
                         mov                eax, 0x000003e8                          // 0x004f5007    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]        // 0x004f500c    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x004f5012    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax              // 0x004f501a    8944240c
                         {disp8} fild       qword ptr [esp + 0x0c]                   // 0x004f501e    df6c240c
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x004f5022    d84c2420
                         call               _jmp_addr_0x007a1400                     // 0x004f5026    e8d5c32a00
                         add.s              eax, edi                                 // 0x004f502b    03c7
                         {disp8} mov        dword ptr [esi + 0x10], eax              // 0x004f502d    894610
                         {disp8} jmp        _jmp_addr_0x004f5039                     // 0x004f5030    eb07
_jmp_addr_0x004f5032:    {disp8} mov        dword ptr [esi + 0x10], 0xffffffff       // 0x004f5032    c74610ffffffff
_jmp_addr_0x004f5039:    test               ebx, ebx                                 // 0x004f5039    85db
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x004f503b    8b4c241c
                         {disp8} mov        dword ptr [esi + 0x14], ecx              // 0x004f503f    894e14
                         {disp8} je         _jmp_addr_0x004f504e                     // 0x004f5042    740a
                         mov                edx, dword ptr [ebx]                     // 0x004f5044    8b13
                         mov.s              ecx, ebx                                 // 0x004f5046    8bcb
                         call               dword ptr [edx + 0x530]                  // 0x004f5048    ff9230050000
_jmp_addr_0x004f504e:    pop                edi                                      // 0x004f504e    5f
                         pop                esi                                      // 0x004f504f    5e
                         pop                ebx                                      // 0x004f5050    5b
                         add                esp, 0x08                                // 0x004f5051    83c408
                         ret                0x000c                                   // 0x004f5054    c20c00
                         nop                                                         // 0x004f5057    90
                         nop                                                         // 0x004f5058    90
                         nop                                                         // 0x004f5059    90
                         nop                                                         // 0x004f505a    90
                         nop                                                         // 0x004f505b    90
                         nop                                                         // 0x004f505c    90
                         nop                                                         // 0x004f505d    90
                         nop                                                         // 0x004f505e    90
                         nop                                                         // 0x004f505f    90
_jmp_addr_0x004f5060:    sub                esp, 0x08                                // 0x004f5060    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x004f5063    8b44240c
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x004f5067    8d0440
                         push               esi                                      // 0x004f506a    56
                         {disp8} lea        esi, dword ptr [ecx + eax * 0x8 + 0x04]  // 0x004f506b    8d74c104
                         xor.s              edx, edx                                 // 0x004f506f    33d2
                         mov                eax, 0x000003e8                          // 0x004f5071    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]        // 0x004f5076    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x004f507c    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x004f5084    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                   // 0x004f5088    df6c2404
                         {disp8} fmul       dword ptr [esp + 0x18]                   // 0x004f508c    d84c2418
                         call               _jmp_addr_0x007a1400                     // 0x004f5090    e86bc32a00
                         {disp8} mov        dword ptr [esi + 0x10], eax              // 0x004f5095    894610
                         xor.s              edx, edx                                 // 0x004f5098    33d2
                         mov                eax, 0x000003e8                          // 0x004f509a    b8e8030000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000001       // 0x004f509f    c7460401000000
                         div                dword ptr [data_bytes + 0x33ba38]        // 0x004f50a6    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x004f50ac    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x004f50b4    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                   // 0x004f50b8    df6c2404
                         fadd.s             st(0), st(0)                             // 0x004f50bc    dcc0
                         call               _jmp_addr_0x007a1400                     // 0x004f50be    e83dc32a00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x004f50c3    8b4c2414
                         {disp8} mov        dword ptr [esi + 0x08], eax              // 0x004f50c7    894608
                         {disp8} mov        dword ptr [esi + 0x14], ecx              // 0x004f50ca    894e14
                         pop                esi                                      // 0x004f50cd    5e
                         add                esp, 0x08                                // 0x004f50ce    83c408
                         ret                0x000c                                   // 0x004f50d1    c20c00
                         nop                                                         // 0x004f50d4    90
                         nop                                                         // 0x004f50d5    90
                         nop                                                         // 0x004f50d6    90
                         nop                                                         // 0x004f50d7    90
                         nop                                                         // 0x004f50d8    90
                         nop                                                         // 0x004f50d9    90
                         nop                                                         // 0x004f50da    90
                         nop                                                         // 0x004f50db    90
                         nop                                                         // 0x004f50dc    90
                         nop                                                         // 0x004f50dd    90
                         nop                                                         // 0x004f50de    90
                         nop                                                         // 0x004f50df    90
_jmp_addr_0x004f50e0:    sub                esp, 0x0c                                // 0x004f50e0    83ec0c
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x004f50e3    8b442418
                         push               esi                                      // 0x004f50e7    56
                         mov.s              esi, ecx                                 // 0x004f50e8    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000018c]        // 0x004f50ea    8b8e8c010000
                         {disp8} mov        dword ptr [esp + 0x08], eax              // 0x004f50f0    89442408
                         {disp32} mov       eax, dword ptr [esi + 0x00000188]        // 0x004f50f4    8b8688010000
                         cmp.s              eax, ecx                                 // 0x004f50fa    3bc1
                         push               edi                                      // 0x004f50fc    57
                         {disp32} jne       _jmp_addr_0x004f519f                     // 0x004f50fd    0f859c000000
                         {disp32} mov       edi, dword ptr [esi + 0x00000190]        // 0x004f5103    8bbe90010000
                         add.s              edi, ecx                                 // 0x004f5109    03f9
                         cmp.s              edi, eax                                 // 0x004f510b    3bf8
                         {disp32} jle       _jmp_addr_0x004f519f                     // 0x004f510d    0f8e8c000000
                         test               edi, edi                                 // 0x004f5113    85ff
                         push               ebx                                      // 0x004f5115    53
                         {disp8} je         _jmp_addr_0x004f512b                     // 0x004f5116    7413
                         lea                ecx, dword ptr [edi + edi * 0x2]         // 0x004f5118    8d0c7f
                         shl                ecx, 2                                   // 0x004f511b    c1e102
                         push               ecx                                      // 0x004f511e    51
                         call               ??2@YAPAXI@Z                             // 0x004f511f    e8ca132d00
                         add                esp, 0x04                                // 0x004f5124    83c404
                         mov.s              ebx, eax                                 // 0x004f5127    8bd8
                         {disp8} jmp        _jmp_addr_0x004f512d                     // 0x004f5129    eb02
_jmp_addr_0x004f512b:    xor.s              ebx, ebx                                 // 0x004f512b    33db
_jmp_addr_0x004f512d:    {disp32} mov       ecx, dword ptr [esi + 0x0000018c]        // 0x004f512d    8b8e8c010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000184]        // 0x004f5133    8b8684010000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]         // 0x004f5139    8d0c49
                         lea                ecx, dword ptr [eax + ecx * 0x4]         // 0x004f513c    8d0c88
                         cmp.s              eax, ecx                                 // 0x004f513f    3bc1
                         {disp8} mov        dword ptr [esp + 0x24], ebx              // 0x004f5141    895c2424
                         mov.s              edx, ebx                                 // 0x004f5145    8bd3
                         {disp8} jae        _jmp_addr_0x004f5183                     // 0x004f5147    733a
                         push               ebp                                      // 0x004f5149    55
_jmp_addr_0x004f514a:    mov.s              ecx, edx                                 // 0x004f514a    8bca
                         add                edx, 0x0c                                // 0x004f514c    83c20c
                         test               ecx, ecx                                 // 0x004f514f    85c9
                         {disp8} je         _jmp_addr_0x004f5165                     // 0x004f5151    7412
                         mov.s              ebx, eax                                 // 0x004f5153    8bd8
                         mov                ebp, dword ptr [ebx]                     // 0x004f5155    8b2b
                         mov                dword ptr [ecx], ebp                     // 0x004f5157    8929
                         {disp8} mov        ebp, dword ptr [ebx + 0x04]              // 0x004f5159    8b6b04
                         {disp8} mov        dword ptr [ecx + 0x04], ebp              // 0x004f515c    896904
                         {disp8} mov        ebx, dword ptr [ebx + 0x08]              // 0x004f515f    8b5b08
                         {disp8} mov        dword ptr [ecx + 0x08], ebx              // 0x004f5162    895908
_jmp_addr_0x004f5165:    {disp32} mov       ecx, dword ptr [esi + 0x0000018c]        // 0x004f5165    8b8e8c010000
                         {disp32} mov       ebx, dword ptr [esi + 0x00000184]        // 0x004f516b    8b9e84010000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]         // 0x004f5171    8d0c49
                         add                eax, 0x0c                                // 0x004f5174    83c00c
                         lea                ecx, dword ptr [ebx + ecx * 0x4]         // 0x004f5177    8d0c8b
                         cmp.s              eax, ecx                                 // 0x004f517a    3bc1
                         .byte              0x72, 0xcc// {disp8} jb _jmp_addr_0x004f514a // 0x004f517c    72cc
                         {disp8} mov        ebx, dword ptr [esp + 0x28]              // 0x004f517e    8b5c2428
                         pop                ebp                                      // 0x004f5182    5d
_jmp_addr_0x004f5183:    {disp32} mov       edx, dword ptr [esi + 0x00000184]        // 0x004f5183    8b9684010000
                         push               edx                                      // 0x004f5189    52
                         call               ??3@YAXPAX@Z                             // 0x004f518a    e8099d2b00
                         add                esp, 0x04                                // 0x004f518f    83c404
                         {disp32} mov       dword ptr [esi + 0x00000184], ebx        // 0x004f5192    899e84010000
                         {disp32} mov       dword ptr [esi + 0x00000188], edi        // 0x004f5198    89be88010000
                         pop                ebx                                      // 0x004f519e    5b
_jmp_addr_0x004f519f:    {disp32} mov       eax, dword ptr [esi + 0x0000018c]        // 0x004f519f    8b868c010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000184]        // 0x004f51a5    8b8e84010000
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x004f51ab    8d0440
                         lea                eax, dword ptr [ecx + eax * 0x4]         // 0x004f51ae    8d0481
                         test               eax, eax                                 // 0x004f51b1    85c0
                         {disp8} je         _jmp_addr_0x004f51c9                     // 0x004f51b3    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x004f51b5    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x004f51b9    8b54240c
                         mov                dword ptr [eax], ecx                     // 0x004f51bd    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x004f51bf    8b4c241c
                         {disp8} mov        dword ptr [eax + 0x04], edx              // 0x004f51c3    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x004f51c6    894808
_jmp_addr_0x004f51c9:    {disp32} mov       eax, dword ptr [esi + 0x0000018c]        // 0x004f51c9    8b868c010000
                         inc                eax                                      // 0x004f51cf    40
                         pop                edi                                      // 0x004f51d0    5f
                         {disp32} mov       dword ptr [esi + 0x0000018c], eax        // 0x004f51d1    89868c010000
                         pop                esi                                      // 0x004f51d7    5e
                         add                esp, 0x0c                                // 0x004f51d8    83c40c
                         ret                0x000c                                   // 0x004f51db    c20c00
                         nop                                                         // 0x004f51de    90
                         nop                                                         // 0x004f51df    90
_jmp_addr_0x004f51e0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x004f51e0    8b442404
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x004f51e4    8d0440
                         push               esi                                      // 0x004f51e7    56
                         {disp8} mov        esi, dword ptr [ecx + eax * 0x8 + 0x08]  // 0x004f51e8    8b74c108
                         xor.s              edx, edx                                 // 0x004f51ec    33d2
                         test               esi, esi                                 // 0x004f51ee    85f6
                         setne              dl                                       // 0x004f51f0    0f95c2
                         pop                esi                                      // 0x004f51f3    5e
                         mov.s              eax, edx                                 // 0x004f51f4    8bc2
                         ret                0x0004                                   // 0x004f51f6    c20400
                         nop                                                         // 0x004f51f9    90
                         nop                                                         // 0x004f51fa    90
                         nop                                                         // 0x004f51fb    90
                         nop                                                         // 0x004f51fc    90
                         nop                                                         // 0x004f51fd    90
                         nop                                                         // 0x004f51fe    90
                         nop                                                         // 0x004f51ff    90
_jmp_addr_0x004f5200:    {disp8} mov        edx, dword ptr [esp + 0x04]              // 0x004f5200    8b542404
                         mov                eax, 0x00be0380                          // 0x004f5204    b88003be00
                         add                ecx, 0x8                                 // 0x004f5209    83c108
_jmp_addr_0x004f520c:    cmp                dword ptr [ecx], 0x00                    // 0x004f520c    833900
                         {disp8} je         _jmp_addr_0x004f5215                     // 0x004f520f    7404
                         cmp                dword ptr [eax], edx                     // 0x004f5211    3910
                         {disp8} je         _jmp_addr_0x004f5227                     // 0x004f5213    7412
_jmp_addr_0x004f5215:    add                eax, 0x68                                // 0x004f5215    83c068
                         add                ecx, 0x18                                // 0x004f5218    83c118
                         cmp                eax, 0x00be0a00                          // 0x004f521b    3d000abe00
                         {disp8} jl         _jmp_addr_0x004f520c                     // 0x004f5220    7cea
                         xor.s              eax, eax                                 // 0x004f5222    33c0
                         ret                0x0004                                   // 0x004f5224    c20400
_jmp_addr_0x004f5227:    mov                eax, 0x00000001                          // 0x004f5227    b801000000
                         ret                0x0004                                   // 0x004f522c    c20400
                         nop                                                         // 0x004f522f    90
_jmp_addr_0x004f5230:    {disp32} mov       edx, dword ptr [ecx + 0x0000018c]        // 0x004f5230    8b918c010000
                         xor.s              eax, eax                                 // 0x004f5236    33c0
                         cmp                edx, 0x05                                // 0x004f5238    83fa05
                         setg               al                                       // 0x004f523b    0f9fc0
                         ret                                                         // 0x004f523e    c3
                         nop                                                         // 0x004f523f    90
@__ct__20CreatureReceiveSpellFP8Creature@12:    mov.s              eax, ecx                                 // 0x004f5240    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]              // 0x004f5242    8b4c2404
                         push               esi                                      // 0x004f5246    56
                         push               edi                                      // 0x004f5247    57
                         {disp8} lea        edi, dword ptr [eax + 0x04]              // 0x004f5248    8d7804
                         mov                dword ptr [eax], ecx                     // 0x004f524b    8908
                         mov.s              ecx, edi                                 // 0x004f524d    8bcf
                         mov                esi, 0x00000010                          // 0x004f524f    be10000000
                         xor.s              edx, edx                                 // 0x004f5254    33d2
_jmp_addr_0x004f5256:    mov                dword ptr [ecx], 0x00000010              // 0x004f5256    c70110000000
                         {disp8} mov        dword ptr [ecx + 0x04], edx              // 0x004f525c    895104
                         {disp8} mov        dword ptr [ecx + 0x08], edx              // 0x004f525f    895108
                         {disp8} mov        dword ptr [ecx + 0x0c], edx              // 0x004f5262    89510c
                         {disp8} mov        dword ptr [ecx + 0x10], edx              // 0x004f5265    895110
                         {disp8} mov        dword ptr [ecx + 0x14], edx              // 0x004f5268    895114
                         add                ecx, 0x18                                // 0x004f526b    83c118
                         dec                esi                                      // 0x004f526e    4e
                         {disp8} jne        _jmp_addr_0x004f5256                     // 0x004f526f    75e5
                         {disp32} mov       dword ptr [eax + 0x00000184], edx        // 0x004f5271    899084010000
                         {disp32} mov       dword ptr [eax + 0x00000188], edx        // 0x004f5277    899088010000
                         {disp32} mov       dword ptr [eax + 0x0000018c], edx        // 0x004f527d    89908c010000
                         {disp32} mov       dword ptr [eax + 0x00000190], 0x0000000a // 0x004f5283    c780900100000a000000
                         {disp32} mov       dword ptr [eax + 0x0000019c], edx        // 0x004f528d    89909c010000
                         {disp32} mov       dword ptr [eax + 0x000001a0], edx        // 0x004f5293    8990a0010000
                         {disp32} mov       dword ptr [eax + 0x000001a4], edx        // 0x004f5299    8990a4010000
                         {disp32} mov       dword ptr [eax + 0x000001a8], edx        // 0x004f529f    8990a8010000
                         {disp32} mov       dword ptr [eax + 0x000001ac], edx        // 0x004f52a5    8990ac010000
                         {disp32} mov       dword ptr [eax + 0x000001b0], edx        // 0x004f52ab    8990b0010000
                         {disp32} mov       dword ptr [eax + 0x000001b4], edx        // 0x004f52b1    8990b4010000
                         {disp32} mov       dword ptr [eax + 0x000001b8], edx        // 0x004f52b7    8990b8010000
                         {disp32} mov       dword ptr [eax + 0x000001bc], edx        // 0x004f52bd    8990bc010000
                         {disp32} mov       dword ptr [eax + 0x000001c0], edx        // 0x004f52c3    8990c0010000
                         {disp32} mov       dword ptr [eax + 0x000001c4], edx        // 0x004f52c9    8990c4010000
                         {disp32} mov       dword ptr [eax + 0x000001c8], edx        // 0x004f52cf    8990c8010000
                         mov.s              ecx, edi                                 // 0x004f52d5    8bcf
                         pop                edi                                      // 0x004f52d7    5f
                         {disp32} mov       dword ptr [eax + 0x000001cc], 0x3f800000 // 0x004f52d8    c780cc0100000000803f
                         {disp32} mov       dword ptr [eax + 0x000001d0], edx        // 0x004f52e2    8990d0010000
                         {disp32} mov       byte ptr [eax + 0x000001d4], 0x01        // 0x004f52e8    c680d401000001
                         {disp32} mov       dword ptr [eax + 0x00000198], edx        // 0x004f52ef    899098010000
                         pop                esi                                      // 0x004f52f5    5e
_jmp_addr_0x004f52f6:    mov                dword ptr [ecx], edx                     // 0x004f52f6    8911
                         inc                edx                                      // 0x004f52f8    42
                         add                ecx, 0x18                                // 0x004f52f9    83c118
                         cmp                edx, 0x10                                // 0x004f52fc    83fa10
                         {disp8} jl         _jmp_addr_0x004f52f6                     // 0x004f52ff    7cf5
                         ret                0x0004                                   // 0x004f5301    c20400
                         nop                                                         // 0x004f5304    90
                         nop                                                         // 0x004f5305    90
                         nop                                                         // 0x004f5306    90
                         nop                                                         // 0x004f5307    90
                         nop                                                         // 0x004f5308    90
                         nop                                                         // 0x004f5309    90
                         nop                                                         // 0x004f530a    90
                         nop                                                         // 0x004f530b    90
                         nop                                                         // 0x004f530c    90
                         nop                                                         // 0x004f530d    90
                         nop                                                         // 0x004f530e    90
                         nop                                                         // 0x004f530f    90
_jmp_addr_0x004f5310:    push               ecx                                      // 0x004f5310    51
                         push               esi                                      // 0x004f5311    56
                         mov.s              esi, ecx                                 // 0x004f5312    8bf1
                         call               _jmp_addr_0x004f5340                     // 0x004f5314    e827000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000184]        // 0x004f5319    8b8684010000
                         {disp32} mov       esi, dword ptr [esi + 0x0000018c]        // 0x004f531f    8bb68c010000
                         lea                ecx, dword ptr [esi + esi * 0x2]         // 0x004f5325    8d0c76
                         lea                edx, dword ptr [eax + ecx * 0x4]         // 0x004f5328    8d1488
                         {disp8} mov        dword ptr [esp + 0x04], edx              // 0x004f532b    89542404
                         push               eax                                      // 0x004f532f    50
                         {disp8} mov        dword ptr [esp + 0x08], eax              // 0x004f5330    89442408
                         call               ??3@YAXPAX@Z                             // 0x004f5334    e85f9b2b00
                         add                esp, 0x04                                // 0x004f5339    83c404
                         pop                esi                                      // 0x004f533c    5e
                         pop                ecx                                      // 0x004f533d    59
                         ret                                                         // 0x004f533e    c3
                         nop                                                         // 0x004f533f    90
_jmp_addr_0x004f5340:    push               esi                                      // 0x004f5340    56
                         mov.s              esi, ecx                                 // 0x004f5341    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]        // 0x004f5343    8b8e98010000
                         test               ecx, ecx                                 // 0x004f5349    85c9
                         {disp8} je         _jmp_addr_0x004f535e                     // 0x004f534b    7411
                         mov                eax, dword ptr [ecx]                     // 0x004f534d    8b01
                         push               0x1                                      // 0x004f534f    6a01
                         call               dword ptr [eax + 4]                      // 0x004f5351    ff5004
                         {disp32} mov       dword ptr [esi + 0x00000198], 0x00000000 // 0x004f5354    c7869801000000000000
_jmp_addr_0x004f535e:    pop                esi                                      // 0x004f535e    5e
                         ret                                                         // 0x004f535f    c3
_jmp_addr_0x004f5360:    {disp8} mov        eax, dword ptr [ecx + 0x04]              // 0x004f5360    8b4104
                         sub                esp, 0x0c                                // 0x004f5363    83ec0c
                         cmp                eax, 0x04                                // 0x004f5366    83f804
                         push               esi                                      // 0x004f5369    56
                         {disp32} ja        _jmp_addr_0x004f53fc                     // 0x004f536a    0f878c000000
                         jmp                dword ptr [eax*4 + 0x4f5408]             // 0x004f5370    ff248508544f00
                         xor.s              edx, edx                                 // 0x004f5377    33d2
                         {disp8} fild       dword ptr [ecx + 0x08]                   // 0x004f5379    db4108
                         mov                eax, 0x000003e8                          // 0x004f537c    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]        // 0x004f5381    f735381ad000
                         {disp8} fstp       dword ptr [esp + 0x04]                   // 0x004f5387    d95c2404
                         mov.s              esi, eax                                 // 0x004f538b    8bf0
                         call               _jmp_addr_0x004f5420                     // 0x004f538d    e88e000000
                         {disp8} mov        dword ptr [esp + 0x08], esi              // 0x004f5392    89742408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x004f5396    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                   // 0x004f539e    df6c2408
                         pop                esi                                      // 0x004f53a2    5e
                         {disp32} fmul      dword ptr [eax + 0x0000008c]             // 0x004f53a3    d8888c000000
                         {disp8} fdivr      dword ptr [esp + 0x00]                   // 0x004f53a9    d87c2400
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1390]         // 0x004f53ad    d82d90a38a00
                         add                esp, 0x0c                                // 0x004f53b3    83c40c
                         ret                                                         // 0x004f53b6    c3
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x004f53b7    d90590a38a00
                         pop                esi                                      // 0x004f53bd    5e
                         add                esp, 0x0c                                // 0x004f53be    83c40c
                         ret                                                         // 0x004f53c1    c3
                         xor.s              edx, edx                                 // 0x004f53c2    33d2
                         {disp8} fild       dword ptr [ecx + 0x08]                   // 0x004f53c4    db4108
                         mov                eax, 0x000003e8                          // 0x004f53c7    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]        // 0x004f53cc    f735381ad000
                         {disp8} fstp       dword ptr [esp + 0x04]                   // 0x004f53d2    d95c2404
                         mov.s              esi, eax                                 // 0x004f53d6    8bf0
                         call               _jmp_addr_0x004f5420                     // 0x004f53d8    e843000000
                         {disp8} mov        dword ptr [esp + 0x08], esi              // 0x004f53dd    89742408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x004f53e1    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                   // 0x004f53e9    df6c2408
                         pop                esi                                      // 0x004f53ed    5e
                         {disp32} fmul      dword ptr [eax + 0x00000090]             // 0x004f53ee    d88890000000
                         {disp8} fdivr      dword ptr [esp + 0x00]                   // 0x004f53f4    d87c2400
                         add                esp, 0x0c                                // 0x004f53f8    83c40c
                         ret                                                         // 0x004f53fb    c3
_jmp_addr_0x004f53fc:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x004f53fc    d90598a38a00
                         pop                esi                                      // 0x004f5402    5e
                         add                esp, 0x0c                                // 0x004f5403    83c40c
                         ret                                                         // 0x004f5406    c3

// Snippet: db, [0x004f5407, 0x004f5408)
.byte 0x90                        // 0x004f5407

// Snippet: jmptbl, [0x004f5408, 0x004f541c)
.byte 0xfc, 0x53, 0x4f, 0x00      // 0x004f5408
.byte 0xfc, 0x53, 0x4f, 0x00      // 0x004f540c
.byte 0x77, 0x53, 0x4f, 0x00      // 0x004f5410
.byte 0xb7, 0x53, 0x4f, 0x00      // 0x004f5414
.byte 0xc2, 0x53, 0x4f, 0x00      // 0x004f5418

// Snippet: db, [0x004f541c, 0x004f5420)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004f541c

