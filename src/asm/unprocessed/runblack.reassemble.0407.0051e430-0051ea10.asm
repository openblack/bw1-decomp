.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0051dce0
.extern _jmp_addr_0x0051ea70
.extern _jmp_addr_0x0051eb90
.extern _jmp_addr_0x0051ebf0
.extern @GetAnim__9MorphableFll@16
.extern @GetSetAnim__9MorphableFlll@20
.extern  ??3@YAXPAX@Z
.extern @SetName__6LHFileFPCc@12
.extern @Open__6LHFileF12LH_FILE_MODE@12
.extern _jmp_addr_0x007bda20
.extern ?Close@LHFile@@QAEIXZ
.extern @OpenSegment__6LHFileFPc@12
.extern ?CloseSegment@LHFile@@QAEIXZ
.extern _jmp_addr_0x007bdfc0
.extern @GetSegmentData__6LHFileFPvUll@20
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern _jmp_addr_0x008421f0
.extern _jmp_addr_0x0085e490
.extern _jmp_addr_0x0085e650
.extern @ReadBinary__6CFrameFP6LHFilell@20
.extern _jmp_addr_0x00860d00

.globl _jmp_addr_0x0051e430
.globl _jmp_addr_0x0051e500

start_0x0051e430_0x0051ea10:
// Snippet: asm, [0x0051e430, 0x0051e9cd)
_jmp_addr_0x0051e430:    sub              esp, 0x24                                            // 0x0051e430    83ec24
                         push             esi                                                  // 0x0051e433    56
                         mov.s            esi, ecx                                             // 0x0051e434    8bf1
                         {disp32} mov     eax, dword ptr [esi + 0x00000230]                    // 0x0051e436    8b8630020000
                         test             eax, eax                                             // 0x0051e43c    85c0
                         {disp32} je      _jmp_addr_0x0051e4f1                                 // 0x0051e43e    0f84ad000000
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                          // 0x0051e444    8b4e10
                         {disp32} mov     eax, dword ptr [ecx + 0x00000098]                    // 0x0051e447    8b8198000000
                         push             0x0                                                  // 0x0051e44d    6a00
                         push             eax                                                  // 0x0051e44f    50
                         push             0x0                                                  // 0x0051e450    6a00
                         call             @GetSetAnim__9MorphableFlll@20                       // 0x0051e452    e839b20f00
                         test             eax, eax                                             // 0x0051e457    85c0
                         {disp32} je      _jmp_addr_0x0051e4f1                                 // 0x0051e459    0f8492000000
                         {disp8} mov      eax, dword ptr [eax + 0x34]                          // 0x0051e45f    8b4034
                         mov              ecx, dword ptr [eax]                                 // 0x0051e462    8b08
                         {disp8} mov      eax, dword ptr [ecx + 0x04]                          // 0x0051e464    8b4104
                         {disp8} mov      edx, dword ptr [eax + 0x04]                          // 0x0051e467    8b5004
                         fld              dword ptr [eax]                                      // 0x0051e46a    d900
                         {disp8} mov      eax, dword ptr [eax + 0x08]                          // 0x0051e46c    8b4008
                         {disp8} mov      dword ptr [esp + 0x18], eax                          // 0x0051e46f    89442418
                         {disp32} mov     eax, dword ptr [esi + 0x000006e4]                    // 0x0051e473    8b86e4060000
                         {disp8} mov      ecx, dword ptr [eax + 0x34]                          // 0x0051e479    8b4834
                         {disp8} mov      dword ptr [esp + 0x14], edx                          // 0x0051e47c    89542414
                         mov              edx, dword ptr [ecx]                                 // 0x0051e480    8b11
                         {disp8} mov      ecx, dword ptr [edx + 0x04]                          // 0x0051e482    8b4a04
                         fld              dword ptr [ecx]                                      // 0x0051e485    d901
                         {disp8} mov      edx, dword ptr [ecx + 0x04]                          // 0x0051e487    8b5104
                         {disp8} mov      ecx, dword ptr [ecx + 0x08]                          // 0x0051e48a    8b4908
                         fxch             st(1)                                                // 0x0051e48d    d9c9
                         fsub             st, st(1)                                            // 0x0051e48f    d8e1
                         {disp8} mov      dword ptr [esp + 0x20], edx                          // 0x0051e491    89542420
                         {disp8} mov      edx, dword ptr [eax + 0x1c]                          // 0x0051e495    8b501c
                         {disp8} mov      dword ptr [esp + 0x24], ecx                          // 0x0051e498    894c2424
                         {disp8} fstp     dword ptr [esp + 0x04]                               // 0x0051e49c    d95c2404
                         xor.s            ecx, ecx                                             // 0x0051e4a0    33c9
                         test             edx, edx                                             // 0x0051e4a2    85d2
                         fstp             st(0)                                                // 0x0051e4a4    ddd8
                         {disp8} fld      dword ptr [esp + 0x14]                               // 0x0051e4a6    d9442414
                         {disp8} fsub     dword ptr [esp + 0x20]                               // 0x0051e4aa    d8642420
                         {disp8} fstp     dword ptr [esp + 0x08]                               // 0x0051e4ae    d95c2408
                         {disp8} fld      dword ptr [esp + 0x18]                               // 0x0051e4b2    d9442418
                         {disp8} fsub     dword ptr [esp + 0x24]                               // 0x0051e4b6    d8642424
                         {disp8} fstp     dword ptr [esp + 0x0c]                               // 0x0051e4ba    d95c240c
                         {disp8} jle      _jmp_addr_0x0051e4f1                                 // 0x0051e4be    7e31
_jmp_addr_0x0051e4c0:    {disp8} mov      edx, dword ptr [eax + 0x34]                          // 0x0051e4c0    8b5034
                         {disp8} fld      dword ptr [esp + 0x04]                               // 0x0051e4c3    d9442404
                         mov              eax, dword ptr [edx + ecx * 0x4]                     // 0x0051e4c7    8b048a
                         {disp8} mov      eax, dword ptr [eax + 0x04]                          // 0x0051e4ca    8b4004
                         fadd             dword ptr [eax]                                      // 0x0051e4cd    d800
                         inc              ecx                                                  // 0x0051e4cf    41
                         fstp             dword ptr [eax]                                      // 0x0051e4d0    d918
                         {disp8} fld      dword ptr [esp + 0x08]                               // 0x0051e4d2    d9442408
                         {disp8} fadd     dword ptr [eax + 0x04]                               // 0x0051e4d6    d84004
                         {disp8} fstp     dword ptr [eax + 0x04]                               // 0x0051e4d9    d95804
                         {disp8} fld      dword ptr [esp + 0x0c]                               // 0x0051e4dc    d944240c
                         {disp8} fadd     dword ptr [eax + 0x08]                               // 0x0051e4e0    d84008
                         {disp8} fstp     dword ptr [eax + 0x08]                               // 0x0051e4e3    d95808
                         {disp32} mov     eax, dword ptr [esi + 0x000006e4]                    // 0x0051e4e6    8b86e4060000
                         cmp              ecx, dword ptr [eax + 0x1c]                          // 0x0051e4ec    3b481c
                         {disp8} jl       _jmp_addr_0x0051e4c0                                 // 0x0051e4ef    7ccf
_jmp_addr_0x0051e4f1:    pop              esi                                                  // 0x0051e4f1    5e
                         add              esp, 0x24                                            // 0x0051e4f2    83c424
                         ret                                                                   // 0x0051e4f5    c3
                         nop                                                                   // 0x0051e4f6    90
                         nop                                                                   // 0x0051e4f7    90
                         nop                                                                   // 0x0051e4f8    90
                         nop                                                                   // 0x0051e4f9    90
                         nop                                                                   // 0x0051e4fa    90
                         nop                                                                   // 0x0051e4fb    90
                         nop                                                                   // 0x0051e4fc    90
                         nop                                                                   // 0x0051e4fd    90
                         nop                                                                   // 0x0051e4fe    90
                         nop                                                                   // 0x0051e4ff    90
_jmp_addr_0x0051e500:    sub              esp, 0x6c                                            // 0x0051e500    83ec6c
                         push             ebx                                                  // 0x0051e503    53
                         push             ebp                                                  // 0x0051e504    55
                         push             esi                                                  // 0x0051e505    56
                         push             edi                                                  // 0x0051e506    57
                         xor.s            ebp, ebp                                             // 0x0051e507    33ed
                         push             ebp                                                  // 0x0051e509    55
                         push             0x009d1078                                           // 0x0051e50a    6878109d00
                         mov.s            esi, ecx                                             // 0x0051e50f    8bf1
                         {disp8} mov      eax, dword ptr [esi + 0x10]                          // 0x0051e511    8b4610
                         push             0x009cecb0                                           // 0x0051e514    68b0ec9c00
                         push             ebp                                                  // 0x0051e519    55
                         push             eax                                                  // 0x0051e51a    50
                         call             ___RTDynamicCast                                     // 0x0051e51b    e8f9742a00
                         mov.s            ebx, eax                                             // 0x0051e520    8bd8
                         {disp32} mov     eax, dword ptr [esp + 0x00000098]                    // 0x0051e522    8b842498000000
                         add              esp, 0x14                                            // 0x0051e529    83c414
                         cmp              eax, 0x0d                                            // 0x0051e52c    83f80d
                         {disp32} ja      _jmp_addr_0x0051e9c3                                 // 0x0051e52f    0f878e040000
                         jmp              dword ptr [eax*4 + 0x51e9d0]                         // 0x0051e535    ff2485d0e95100
                         {disp32} mov     eax, dword ptr [esi + 0x0000023c]                    // 0x0051e53c    8b863c020000
                         pop              edi                                                  // 0x0051e542    5f
                         xor              eax, 0x01                                            // 0x0051e543    83f001
                         {disp32} mov     dword ptr [esi + 0x0000023c], eax                    // 0x0051e546    89863c020000
                         pop              esi                                                  // 0x0051e54c    5e
                         pop              ebp                                                  // 0x0051e54d    5d
                         pop              ebx                                                  // 0x0051e54e    5b
                         add              esp, 0x6c                                            // 0x0051e54f    83c46c
                         ret              0x0008                                               // 0x0051e552    c20800
                         xor.s            ebx, ebx                                             // 0x0051e555    33db
_jmp_addr_0x0051e557:    {disp32} mov     edx, dword ptr [esi + 0x00000230]                    // 0x0051e557    8b9630020000
                         mov.s            ecx, ebx                                             // 0x0051e55d    8bcb
                         add.s            ecx, edx                                             // 0x0051e55f    03ca
                         {disp8} mov      edx, dword ptr [esi + 0x10]                          // 0x0051e561    8b5610
                         {disp32} mov     edi, dword ptr [edx + ecx * 0x4 + 0x000001d4]        // 0x0051e564    8bbc8ad4010000
                         cmp.s            edi, ebp                                             // 0x0051e56b    3bfd
                         {disp8} je       _jmp_addr_0x0051e5bf                                 // 0x0051e56d    7450
                         push             0x000002de                                           // 0x0051e56f    68de020000
                         push             0x00be8f80                                           // 0x0051e574    68808fbe00
                         push             0x38                                                 // 0x0051e579    6a38
                         call             ___nw__FUl                                           // 0x0051e57b    e810d22b00
                         add              esp, 0x0c                                            // 0x0051e580    83c40c
                         cmp.s            eax, ebp                                             // 0x0051e583    3bc5
                         {disp8} je       _jmp_addr_0x0051e599                                 // 0x0051e585    7412
                         {disp32} mov     ecx, dword ptr [esi + 0x00000234]                    // 0x0051e587    8b8e34020000
                         push             ebp                                                  // 0x0051e58d    55
                         push             ecx                                                  // 0x0051e58e    51
                         push             edi                                                  // 0x0051e58f    57
                         mov.s            ecx, eax                                             // 0x0051e590    8bc8
                         call             _jmp_addr_0x0085e650                                 // 0x0051e592    e8b9003400
                         {disp8} jmp      _jmp_addr_0x0051e59b                                 // 0x0051e597    eb02
_jmp_addr_0x0051e599:    xor.s            eax, eax                                             // 0x0051e599    33c0
_jmp_addr_0x0051e59b:    {disp32} mov     ecx, dword ptr [esi + 0x00000230]                    // 0x0051e59b    8b8e30020000
                         mov.s            edx, ebx                                             // 0x0051e5a1    8bd3
                         add.s            edx, ecx                                             // 0x0051e5a3    03d1
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                          // 0x0051e5a5    8b4e10
                         {disp32} mov     dword ptr [ecx + edx * 0x4 + 0x000001d4], eax        // 0x0051e5a8    898491d4010000
                         mov.s            ecx, edi                                             // 0x0051e5af    8bcf
                         call             _jmp_addr_0x0085e490                                 // 0x0051e5b1    e8dafe3300
                         push             edi                                                  // 0x0051e5b6    57
                         call             ??3@YAXPAX@Z                                         // 0x0051e5b7    e8dc082900
                         add              esp, 0x04                                            // 0x0051e5bc    83c404
_jmp_addr_0x0051e5bf:    add              ebx, 0x000002b8                                      // 0x0051e5bf    81c3b8020000
                         cmp              ebx, 0x00001050                                      // 0x0051e5c5    81fb50100000
                         {disp8} jl       _jmp_addr_0x0051e557                                 // 0x0051e5cb    7c8a
                         {disp32} mov     edx, dword ptr [esi + 0x00000230]                    // 0x0051e5cd    8b9630020000
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                          // 0x0051e5d3    8b4e10
                         push             ebp                                                  // 0x0051e5d6    55
                         push             edx                                                  // 0x0051e5d7    52
                         call             @GetAnim__9MorphableFll@16                           // 0x0051e5d8    e873b00f00
                         {disp32} mov     ecx, dword ptr [esi + 0x00000234]                    // 0x0051e5dd    8b8e34020000
                         {disp32} mov     dword ptr [esi + 0x000006e4], eax                    // 0x0051e5e3    8986e4060000
                         {disp8} mov      eax, dword ptr [eax + 0x1c]                          // 0x0051e5e9    8b401c
                         dec              eax                                                  // 0x0051e5ec    48
                         cmp.s            eax, ecx                                             // 0x0051e5ed    3bc1
                         {disp8} jl       _jmp_addr_0x0051e5f3                                 // 0x0051e5ef    7c02
                         mov.s            eax, ecx                                             // 0x0051e5f1    8bc1
_jmp_addr_0x0051e5f3:    pop              edi                                                  // 0x0051e5f3    5f
                         {disp32} mov     dword ptr [esi + 0x00000234], eax                    // 0x0051e5f4    898634020000
                         pop              esi                                                  // 0x0051e5fa    5e
                         pop              ebp                                                  // 0x0051e5fb    5d
                         pop              ebx                                                  // 0x0051e5fc    5b
                         add              esp, 0x6c                                            // 0x0051e5fd    83c46c
                         ret              0x0008                                               // 0x0051e600    c20800
                         pop              edi                                                  // 0x0051e603    5f
                         pop              esi                                                  // 0x0051e604    5e
                         pop              ebp                                                  // 0x0051e605    5d
                         {disp32} mov     dword ptr [ebx + 0x000051e8], 0x00000003             // 0x0051e606    c783e851000003000000
                         pop              ebx                                                  // 0x0051e610    5b
                         add              esp, 0x6c                                            // 0x0051e611    83c46c
                         ret              0x0008                                               // 0x0051e614    c20800
                         pop              edi                                                  // 0x0051e617    5f
                         pop              esi                                                  // 0x0051e618    5e
                         pop              ebp                                                  // 0x0051e619    5d
                         {disp32} mov     dword ptr [ebx + 0x000051e8], 0x00000001             // 0x0051e61a    c783e851000001000000
                         pop              ebx                                                  // 0x0051e624    5b
                         add              esp, 0x6c                                            // 0x0051e625    83c46c
                         ret              0x0008                                               // 0x0051e628    c20800
                         pop              edi                                                  // 0x0051e62b    5f
                         {disp32} mov     dword ptr [esi + 0x00000240], ebp                    // 0x0051e62c    89ae40020000
                         pop              esi                                                  // 0x0051e632    5e
                         pop              ebp                                                  // 0x0051e633    5d
                         pop              ebx                                                  // 0x0051e634    5b
                         add              esp, 0x6c                                            // 0x0051e635    83c46c
                         ret              0x0008                                               // 0x0051e638    c20800
                         pop              edi                                                  // 0x0051e63b    5f
                         {disp32} mov     dword ptr [esi + 0x00000240], 0x00000001             // 0x0051e63c    c7864002000001000000
                         pop              esi                                                  // 0x0051e646    5e
                         pop              ebp                                                  // 0x0051e647    5d
                         pop              ebx                                                  // 0x0051e648    5b
                         add              esp, 0x6c                                            // 0x0051e649    83c46c
                         ret              0x0008                                               // 0x0051e64c    c20800
                         xor.s            ebx, ebx                                             // 0x0051e64f    33db
_jmp_addr_0x0051e651:    {disp32} mov     ecx, dword ptr [esi + 0x00000230]                    // 0x0051e651    8b8e30020000
                         mov.s            eax, ebx                                             // 0x0051e657    8bc3
                         add.s            eax, ecx                                             // 0x0051e659    03c1
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                          // 0x0051e65b    8b4e10
                         {disp32} mov     edi, dword ptr [ecx + eax * 0x4 + 0x000001d4]        // 0x0051e65e    8bbc81d4010000
                         cmp.s            edi, ebp                                             // 0x0051e665    3bfd
                         {disp8} je       _jmp_addr_0x0051e6ba                                 // 0x0051e667    7451
                         push             0x000002fa                                           // 0x0051e669    68fa020000
                         push             0x00be8f80                                           // 0x0051e66e    68808fbe00
                         push             0x38                                                 // 0x0051e673    6a38
                         call             ___nw__FUl                                           // 0x0051e675    e816d12b00
                         add              esp, 0x0c                                            // 0x0051e67a    83c40c
                         cmp.s            eax, ebp                                             // 0x0051e67d    3bc5
                         {disp8} je       _jmp_addr_0x0051e694                                 // 0x0051e67f    7413
                         {disp32} mov     edx, dword ptr [esi + 0x00000234]                    // 0x0051e681    8b9634020000
                         push             0x1                                                  // 0x0051e687    6a01
                         push             edx                                                  // 0x0051e689    52
                         push             edi                                                  // 0x0051e68a    57
                         mov.s            ecx, eax                                             // 0x0051e68b    8bc8
                         call             _jmp_addr_0x0085e650                                 // 0x0051e68d    e8beff3300
                         {disp8} jmp      _jmp_addr_0x0051e696                                 // 0x0051e692    eb02
_jmp_addr_0x0051e694:    xor.s            eax, eax                                             // 0x0051e694    33c0
_jmp_addr_0x0051e696:    {disp32} mov     edx, dword ptr [esi + 0x00000230]                    // 0x0051e696    8b9630020000
                         mov.s            ecx, ebx                                             // 0x0051e69c    8bcb
                         add.s            ecx, edx                                             // 0x0051e69e    03ca
                         {disp8} mov      edx, dword ptr [esi + 0x10]                          // 0x0051e6a0    8b5610
                         {disp32} mov     dword ptr [edx + ecx * 0x4 + 0x000001d4], eax        // 0x0051e6a3    89848ad4010000
                         mov.s            ecx, edi                                             // 0x0051e6aa    8bcf
                         call             _jmp_addr_0x0085e490                                 // 0x0051e6ac    e8dffd3300
                         push             edi                                                  // 0x0051e6b1    57
                         call             ??3@YAXPAX@Z                                         // 0x0051e6b2    e8e1072900
                         add              esp, 0x04                                            // 0x0051e6b7    83c404
_jmp_addr_0x0051e6ba:    add              ebx, 0x000002b8                                      // 0x0051e6ba    81c3b8020000
                         cmp              ebx, 0x00001050                                      // 0x0051e6c0    81fb50100000
                         {disp8} jl       _jmp_addr_0x0051e651                                 // 0x0051e6c6    7c89
                         {disp32} mov     eax, dword ptr [esi + 0x00000230]                    // 0x0051e6c8    8b8630020000
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                          // 0x0051e6ce    8b4e10
                         push             ebp                                                  // 0x0051e6d1    55
                         push             eax                                                  // 0x0051e6d2    50
                         call             @GetAnim__9MorphableFll@16                           // 0x0051e6d3    e878af0f00
                         {disp32} mov     dword ptr [esi + 0x000006e4], eax                    // 0x0051e6d8    8986e4060000
                         {disp32} mov     eax, dword ptr [esi + 0x00000234]                    // 0x0051e6de    8b8634020000
                         pop              edi                                                  // 0x0051e6e4    5f
                         inc              eax                                                  // 0x0051e6e5    40
                         {disp32} mov     dword ptr [esi + 0x00000234], eax                    // 0x0051e6e6    898634020000
                         pop              esi                                                  // 0x0051e6ec    5e
                         pop              ebp                                                  // 0x0051e6ed    5d
                         pop              ebx                                                  // 0x0051e6ee    5b
                         add              esp, 0x6c                                            // 0x0051e6ef    83c46c
                         ret              0x0008                                               // 0x0051e6f2    c20800
                         mov.s            ecx, esi                                             // 0x0051e6f5    8bce
                         call             _jmp_addr_0x0051ebf0                                 // 0x0051e6f7    e8f4040000
                         pop              edi                                                  // 0x0051e6fc    5f
                         pop              esi                                                  // 0x0051e6fd    5e
                         pop              ebp                                                  // 0x0051e6fe    5d
                         pop              ebx                                                  // 0x0051e6ff    5b
                         add              esp, 0x6c                                            // 0x0051e700    83c46c
                         ret              0x0008                                               // 0x0051e703    c20800
                         pop              edi                                                  // 0x0051e706    5f
                         pop              esi                                                  // 0x0051e707    5e
                         pop              ebp                                                  // 0x0051e708    5d
                         {disp32} mov     dword ptr [ebx + 0x000051e8], 0x00000002             // 0x0051e709    c783e851000002000000
                         pop              ebx                                                  // 0x0051e713    5b
                         add              esp, 0x6c                                            // 0x0051e714    83c46c
                         ret              0x0008                                               // 0x0051e717    c20800
                         mov.s            ecx, esi                                             // 0x0051e71a    8bce
                         call             _jmp_addr_0x0051eb90                                 // 0x0051e71c    e86f040000
                         pop              edi                                                  // 0x0051e721    5f
                         pop              esi                                                  // 0x0051e722    5e
                         pop              ebp                                                  // 0x0051e723    5d
                         pop              ebx                                                  // 0x0051e724    5b
                         add              esp, 0x6c                                            // 0x0051e725    83c46c
                         ret              0x0008                                               // 0x0051e728    c20800
                         mov.s            ecx, esi                                             // 0x0051e72b    8bce
                         call             _jmp_addr_0x0051ea70                                 // 0x0051e72d    e83e030000
                         pop              edi                                                  // 0x0051e732    5f
                         pop              esi                                                  // 0x0051e733    5e
                         pop              ebp                                                  // 0x0051e734    5d
                         pop              ebx                                                  // 0x0051e735    5b
                         add              esp, 0x6c                                            // 0x0051e736    83c46c
                         ret              0x0008                                               // 0x0051e739    c20800
                         {disp32} mov     esi, dword ptr [esi + 0x000006e4]                    // 0x0051e73c    8bb6e4060000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                          // 0x0051e742    8b4604
                         pop              edi                                                  // 0x0051e745    5f
                         xor              eax, 0x01                                            // 0x0051e746    83f001
                         {disp8} mov      dword ptr [esi + 0x04], eax                          // 0x0051e749    894604
                         pop              esi                                                  // 0x0051e74c    5e
                         pop              ebp                                                  // 0x0051e74d    5d
                         pop              ebx                                                  // 0x0051e74e    5b
                         add              esp, 0x6c                                            // 0x0051e74f    83c46c
                         ret              0x0008                                               // 0x0051e752    c20800
                         {disp8} mov      dword ptr [esp + 0x18], ebp                          // 0x0051e755    896c2418
                         {disp8} mov      dword ptr [esp + 0x14], ebp                          // 0x0051e759    896c2414
                         {disp8} mov      dword ptr [esp + 0x48], ebp                          // 0x0051e75d    896c2448
                         {disp8} mov      dword ptr [esp + 0x4c], ebp                          // 0x0051e761    896c244c
                         xor.s            eax, eax                                             // 0x0051e765    33c0
                         mov              ecx, 0x00000008                                      // 0x0051e767    b908000000
                         {disp8} lea      edi, dword ptr [esp + 0x24]                          // 0x0051e76c    8d7c2424
                         rep stosd                                                             // 0x0051e770    f3ab
                         stosb                                                                 // 0x0051e772    aa
                         push             0x00be911c                                           // 0x0051e773    681c91be00
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                          // 0x0051e778    8d4c2414
                         {disp8} mov      dword ptr [esp + 0x14], 0x008c4d14                   // 0x0051e77c    c7442414144d8c00
                         {disp8} mov      dword ptr [esp + 0x7c], ebp                          // 0x0051e784    896c247c
                         {disp8} mov      dword ptr [esp + 0x20], ebp                          // 0x0051e788    896c2420
                         {disp8} mov      dword ptr [esp + 0x24], ebp                          // 0x0051e78c    896c2424
                         {disp8} mov      dword ptr [esp + 0x54], ebp                          // 0x0051e790    896c2454
                         {disp8} mov      dword ptr [esp + 0x58], ebp                          // 0x0051e794    896c2458
                         {disp8} mov      dword ptr [esp + 0x5c], ebp                          // 0x0051e798    896c245c
                         {disp8} mov      dword ptr [esp + 0x68], ebp                          // 0x0051e79c    896c2468
                         {disp8} mov      dword ptr [esp + 0x6c], ebp                          // 0x0051e7a0    896c246c
                         {disp8} mov      dword ptr [esp + 0x70], ebp                          // 0x0051e7a4    896c2470
                         {disp8} mov      dword ptr [esp + 0x74], ebp                          // 0x0051e7a8    896c2474
                         call             @SetName__6LHFileFPCc@12                             // 0x0051e7ac    e8dfeb2900
                         push             ebp                                                  // 0x0051e7b1    55
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                          // 0x0051e7b2    8d4c2414
                         call             @Open__6LHFileF12LH_FILE_MODE@12                     // 0x0051e7b6    e845ed2900
                         test             eax, eax                                             // 0x0051e7bb    85c0
                         {disp8} je       _jmp_addr_0x0051e7e0                                 // 0x0051e7bd    7421
                         push             0x00be9104                                           // 0x0051e7bf    680491be00
                         push             esi                                                  // 0x0051e7c4    56
                         call             _jmp_addr_0x008421f0                                 // 0x0051e7c5    e8263a3200
                         add              esp, 0x08                                            // 0x0051e7ca    83c408
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e7cd    8d4c2410
                         call             _jmp_addr_0x007bda20                                 // 0x0051e7d1    e84af22900
                         pop              edi                                                  // 0x0051e7d6    5f
                         pop              esi                                                  // 0x0051e7d7    5e
                         pop              ebp                                                  // 0x0051e7d8    5d
                         pop              ebx                                                  // 0x0051e7d9    5b
                         add              esp, 0x6c                                            // 0x0051e7da    83c46c
                         ret              0x0008                                               // 0x0051e7dd    c20800
_jmp_addr_0x0051e7e0:    push             0x00be90fc                                           // 0x0051e7e0    68fc90be00
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                          // 0x0051e7e5    8d4c2414
                         call             @OpenSegment__6LHFileFPc@12                          // 0x0051e7e9    e8d2f62900
                         test             eax, eax                                             // 0x0051e7ee    85c0
                         {disp8} je       _jmp_addr_0x0051e802                                 // 0x0051e7f0    7410
                         push             0x00be90e0                                           // 0x0051e7f2    68e090be00
                         push             esi                                                  // 0x0051e7f7    56
                         call             _jmp_addr_0x008421f0                                 // 0x0051e7f8    e8f3393200
                         add              esp, 0x08                                            // 0x0051e7fd    83c408
                         {disp8} jmp      _jmp_addr_0x0051e849                                 // 0x0051e800    eb47
_jmp_addr_0x0051e802:    {disp32} mov     edi, dword ptr [ebx + 0x000047b8]                    // 0x0051e802    8bbbb8470000
                         push             0x4                                                  // 0x0051e808    6a04
                         {disp32} lea     ecx, dword ptr [esp + 0x00000088]                    // 0x0051e80a    8d8c2488000000
                         push             ecx                                                  // 0x0051e811    51
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                          // 0x0051e812    8d4c2418
                         {disp32} mov     dword ptr [esp + 0x0000008c], edi                    // 0x0051e816    89bc248c000000
                         call             _jmp_addr_0x007bdfc0                                 // 0x0051e81d    e89ef72900
                         {disp32} mov     eax, dword ptr [esi + 0x000006e4]                    // 0x0051e822    8b86e4060000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000234]                    // 0x0051e828    8b8e34020000
                         push             edi                                                  // 0x0051e82e    57
                         push             edi                                                  // 0x0051e82f    57
                         {disp8} lea      edx, dword ptr [esp + 0x18]                          // 0x0051e830    8d542418
                         push             edx                                                  // 0x0051e834    52
                         {disp8} mov      edx, dword ptr [eax + 0x34]                          // 0x0051e835    8b5034
                         mov              ecx, dword ptr [edx + ecx * 0x4]                     // 0x0051e838    8b0c8a
                         call             _jmp_addr_0x00860d00                                 // 0x0051e83b    e8c0243400
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e840    8d4c2410
                         call             ?CloseSegment@LHFile@@QAEIXZ                         // 0x0051e844    e807f72900
_jmp_addr_0x0051e849:    {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e849    8d4c2410
                         call             ?Close@LHFile@@QAEIXZ                                // 0x0051e84d    e86ef32900
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e852    8d4c2410
                         call             _jmp_addr_0x007bda20                                 // 0x0051e856    e8c5f12900
                         pop              edi                                                  // 0x0051e85b    5f
                         pop              esi                                                  // 0x0051e85c    5e
                         pop              ebp                                                  // 0x0051e85d    5d
                         pop              ebx                                                  // 0x0051e85e    5b
                         add              esp, 0x6c                                            // 0x0051e85f    83c46c
                         ret              0x0008                                               // 0x0051e862    c20800
                         mov.s            ecx, esi                                             // 0x0051e865    8bce
                         call             _jmp_addr_0x0051dce0                                 // 0x0051e867    e874f4ffff
                         {disp8} mov      dword ptr [esp + 0x18], ebp                          // 0x0051e86c    896c2418
                         {disp8} mov      dword ptr [esp + 0x14], ebp                          // 0x0051e870    896c2414
                         {disp8} mov      dword ptr [esp + 0x48], ebp                          // 0x0051e874    896c2448
                         {disp8} mov      dword ptr [esp + 0x4c], ebp                          // 0x0051e878    896c244c
                         xor.s            eax, eax                                             // 0x0051e87c    33c0
                         mov              ecx, 0x00000008                                      // 0x0051e87e    b908000000
                         {disp8} lea      edi, dword ptr [esp + 0x24]                          // 0x0051e883    8d7c2424
                         rep stosd                                                             // 0x0051e887    f3ab
                         stosb                                                                 // 0x0051e889    aa
                         push             0x00be911c                                           // 0x0051e88a    681c91be00
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                          // 0x0051e88f    8d4c2414
                         {disp8} mov      dword ptr [esp + 0x14], 0x008c4d14                   // 0x0051e893    c7442414144d8c00
                         {disp8} mov      dword ptr [esp + 0x7c], ebp                          // 0x0051e89b    896c247c
                         {disp8} mov      dword ptr [esp + 0x20], ebp                          // 0x0051e89f    896c2420
                         {disp8} mov      dword ptr [esp + 0x24], ebp                          // 0x0051e8a3    896c2424
                         {disp8} mov      dword ptr [esp + 0x54], ebp                          // 0x0051e8a7    896c2454
                         {disp8} mov      dword ptr [esp + 0x58], ebp                          // 0x0051e8ab    896c2458
                         {disp8} mov      dword ptr [esp + 0x5c], ebp                          // 0x0051e8af    896c245c
                         {disp8} mov      dword ptr [esp + 0x68], ebp                          // 0x0051e8b3    896c2468
                         {disp8} mov      dword ptr [esp + 0x6c], ebp                          // 0x0051e8b7    896c246c
                         {disp8} mov      dword ptr [esp + 0x70], ebp                          // 0x0051e8bb    896c2470
                         {disp8} mov      dword ptr [esp + 0x74], ebp                          // 0x0051e8bf    896c2474
                         call             @SetName__6LHFileFPCc@12                             // 0x0051e8c3    e8c8ea2900
                         push             0x2                                                  // 0x0051e8c8    6a02
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                          // 0x0051e8ca    8d4c2414
                         call             @Open__6LHFileF12LH_FILE_MODE@12                     // 0x0051e8ce    e82dec2900
                         test             eax, eax                                             // 0x0051e8d3    85c0
                         {disp8} je       _jmp_addr_0x0051e8ea                                 // 0x0051e8d5    7413
                         push             0x00be9104                                           // 0x0051e8d7    680491be00
                         push             esi                                                  // 0x0051e8dc    56
                         call             _jmp_addr_0x008421f0                                 // 0x0051e8dd    e80e393200
                         add              esp, 0x08                                            // 0x0051e8e2    83c408
                         {disp32} jmp     _jmp_addr_0x0051e9ba                                 // 0x0051e8e5    e9d0000000
_jmp_addr_0x0051e8ea:    push             0x00be90fc                                           // 0x0051e8ea    68fc90be00
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                          // 0x0051e8ef    8d4c2414
                         call             @OpenSegment__6LHFileFPc@12                          // 0x0051e8f3    e8c8f52900
                         test             eax, eax                                             // 0x0051e8f8    85c0
                         {disp8} je       _jmp_addr_0x0051e918                                 // 0x0051e8fa    741c
                         push             0x00be90e0                                           // 0x0051e8fc    68e090be00
                         push             esi                                                  // 0x0051e901    56
                         call             _jmp_addr_0x008421f0                                 // 0x0051e902    e8e9383200
                         add              esp, 0x08                                            // 0x0051e907    83c408
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e90a    8d4c2410
                         call             ?Close@LHFile@@QAEIXZ                                // 0x0051e90e    e8adf22900
                         {disp32} jmp     _jmp_addr_0x0051e9ba                                 // 0x0051e913    e9a2000000
_jmp_addr_0x0051e918:    {disp32} mov     edi, dword ptr [ebx + 0x000047b8]                    // 0x0051e918    8bbbb8470000
                         push             -0x1                                                 // 0x0051e91e    6aff
                         push             0x4                                                  // 0x0051e920    6a04
                         {disp32} lea     eax, dword ptr [esp + 0x0000008c]                    // 0x0051e922    8d84248c000000
                         push             eax                                                  // 0x0051e929    50
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                          // 0x0051e92a    8d4c241c
                         call             @GetSegmentData__6LHFileFPvUll@20                    // 0x0051e92e    e80df72900
                         cmp              dword ptr [esp + 0x00000084], edi                    // 0x0051e933    39bc2484000000
                         {disp8} je       _jmp_addr_0x0051e95e                                 // 0x0051e93a    7422
                         push             0x00be90a0                                           // 0x0051e93c    68a090be00
                         push             esi                                                  // 0x0051e941    56
                         call             _jmp_addr_0x008421f0                                 // 0x0051e942    e8a9383200
                         add              esp, 0x08                                            // 0x0051e947    83c408
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e94a    8d4c2410
                         call             ?CloseSegment@LHFile@@QAEIXZ                         // 0x0051e94e    e8fdf52900
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e953    8d4c2410
                         call             ?Close@LHFile@@QAEIXZ                                // 0x0051e957    e864f22900
                         {disp8} jmp      _jmp_addr_0x0051e9ba                                 // 0x0051e95c    eb5c
_jmp_addr_0x0051e95e:    {disp32} mov     edx, dword ptr [esi + 0x000006e4]                    // 0x0051e95e    8b96e4060000
                         {disp32} mov     eax, dword ptr [esi + 0x00000234]                    // 0x0051e964    8b8634020000
                         push             edi                                                  // 0x0051e96a    57
                         push             edi                                                  // 0x0051e96b    57
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                          // 0x0051e96c    8d4c2418
                         push             ecx                                                  // 0x0051e970    51
                         {disp8} mov      ecx, dword ptr [edx + 0x34]                          // 0x0051e971    8b4a34
                         mov              ecx, dword ptr [ecx + eax * 0x4]                     // 0x0051e974    8b0c81
                         call             @ReadBinary__6CFrameFP6LHFilell@20                   // 0x0051e977    e8b4223400
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e97c    8d4c2410
                         call             ?CloseSegment@LHFile@@QAEIXZ                         // 0x0051e980    e8cbf52900
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e985    8d4c2410
                         call             ?Close@LHFile@@QAEIXZ                                // 0x0051e989    e832f22900
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                          // 0x0051e98e    8b4e10
                         {disp32} mov     eax, dword ptr [ecx + 0x00000098]                    // 0x0051e991    8b8198000000
                         {disp32} lea     edx, dword ptr [eax * 0x8 + 0x00000000]              // 0x0051e997    8d14c500000000
                         sub.s            edx, eax                                             // 0x0051e99e    2bd0
                         lea              eax, dword ptr [eax + edx * 0x4]                     // 0x0051e9a0    8d0490
                         {disp32} mov     edx, dword ptr [esi + 0x00000230]                    // 0x0051e9a3    8b9630020000
                         lea              eax, dword ptr [eax + eax * 0x2]                     // 0x0051e9a9    8d0440
                         lea              eax, dword ptr [edx + eax * 0x8]                     // 0x0051e9ac    8d04c2
                         {disp32} mov     dword ptr [ecx + eax * 0x4 + 0x00000574], 0x00000002 // 0x0051e9af    c784817405000002000000
_jmp_addr_0x0051e9ba:    {disp8} lea      ecx, dword ptr [esp + 0x10]                          // 0x0051e9ba    8d4c2410
                         call             _jmp_addr_0x007bda20                                 // 0x0051e9be    e85df02900
_jmp_addr_0x0051e9c3:    pop              edi                                                  // 0x0051e9c3    5f
                         pop              esi                                                  // 0x0051e9c4    5e
                         pop              ebp                                                  // 0x0051e9c5    5d
                         pop              ebx                                                  // 0x0051e9c6    5b
                         add              esp, 0x6c                                            // 0x0051e9c7    83c46c
                         ret              0x0008                                               // 0x0051e9ca    c20800

// Snippet: db, [0x0051e9cd, 0x0051e9d0)
.byte 0x8d, 0x49, 0x00            // 0x0051e9cd

// Snippet: jmptbl, [0x0051e9d0, 0x0051ea08)
.byte 0x3c, 0xe5, 0x51, 0x00      // 0x0051e9d0
.byte 0x55, 0xe5, 0x51, 0x00      // 0x0051e9d4
.byte 0x03, 0xe6, 0x51, 0x00      // 0x0051e9d8
.byte 0x17, 0xe6, 0x51, 0x00      // 0x0051e9dc
.byte 0x2b, 0xe6, 0x51, 0x00      // 0x0051e9e0
.byte 0x3b, 0xe6, 0x51, 0x00      // 0x0051e9e4
.byte 0x4f, 0xe6, 0x51, 0x00      // 0x0051e9e8
.byte 0xf5, 0xe6, 0x51, 0x00      // 0x0051e9ec
.byte 0x06, 0xe7, 0x51, 0x00      // 0x0051e9f0
.byte 0x1a, 0xe7, 0x51, 0x00      // 0x0051e9f4
.byte 0x2b, 0xe7, 0x51, 0x00      // 0x0051e9f8
.byte 0x3c, 0xe7, 0x51, 0x00      // 0x0051e9fc
.byte 0x55, 0xe7, 0x51, 0x00      // 0x0051ea00
.byte 0x65, 0xe8, 0x51, 0x00      // 0x0051ea04

// Snippet: db, [0x0051ea08, 0x0051ea10)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0051ea08
.byte 0x90, 0x90, 0x90, 0x90      // 0x0051ea0c

