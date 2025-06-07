.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x006d9290
.extern _jmp_addr_0x006db8a0

.globl _jmp_addr_0x006db570

start_0x006db570_0x006db8a0:
// Snippet: asm, [0x006db570, 0x006db842)
_jmp_addr_0x006db570:    sub              esp, 0x18                                     // 0x006db570    83ec18
                         push             ebx                                           // 0x006db573    53
                         push             ebp                                           // 0x006db574    55
                         push             esi                                           // 0x006db575    56
                         mov.s            esi, ecx                                      // 0x006db576    8bf1
                         {disp32} mov     eax, dword ptr [esi + 0x00000394]             // 0x006db578    8b8694030000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000390]             // 0x006db57e    8b8e90030000
                         shl              eax, 1                                        // 0x006db584    d1e0
                         shl              ecx, 1                                        // 0x006db586    d1e1
                         {disp32} lea     ebp, dword ptr [esi + 0x000003b0]             // 0x006db588    8daeb0030000
                         push             edi                                           // 0x006db58e    57
                         {disp32} mov     dword ptr [esi + 0x00000394], eax             // 0x006db58f    898694030000
                         {disp32} mov     dword ptr [esi + 0x00000390], ecx             // 0x006db595    898e90030000
                         xor.s            edi, edi                                      // 0x006db59b    33ff
                         mov.s            ebx, ebp                                      // 0x006db59d    8bdd
_jmp_addr_0x006db59f:    push             0x3f800000                                    // 0x006db59f    680000803f
                         push             0x0                                           // 0x006db5a4    6a00
                         push             0x0                                           // 0x006db5a6    6a00
                         push             0x00d3a050                                    // 0x006db5a8    6850a0d300
                         push             edi                                           // 0x006db5ad    57
                         push             0x0                                           // 0x006db5ae    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x34]                   // 0x006db5b0    8d542434
                         push             edx                                           // 0x006db5b4    52
                         mov.s            ecx, esi                                      // 0x006db5b5    8bce
                         call             _jmp_addr_0x006d9290                          // 0x006db5b7    e8d4dcffff
                         push             eax                                           // 0x006db5bc    50
                         push             esi                                           // 0x006db5bd    56
                         call             _jmp_addr_0x006db8a0                          // 0x006db5be    e8dd020000
                         add              esp, 0x18                                     // 0x006db5c3    83c418
                         mov              dword ptr [ebx], eax                          // 0x006db5c6    8903
                         inc              edi                                           // 0x006db5c8    47
                         add              ebx, 0x04                                     // 0x006db5c9    83c304
                         cmp              edi, 0x03                                     // 0x006db5cc    83ff03
                         {disp8} jl       _jmp_addr_0x006db59f                          // 0x006db5cf    7cce
                         push             0x0                                           // 0x006db5d1    6a00
                         push             0x0                                           // 0x006db5d3    6a00
                         {disp8} lea      eax, dword ptr [esp + 0x18]                   // 0x006db5d5    8d442418
                         push             eax                                           // 0x006db5d9    50
                         mov.s            ecx, esi                                      // 0x006db5da    8bce
                         call             _jmp_addr_0x006d9290                          // 0x006db5dc    e8afdcffff
                         {disp8} mov      ecx, dword ptr [ebp + 0x00]                   // 0x006db5e1    8b4d00
                         {disp8} mov      edx, dword ptr [ecx + 0x28]                   // 0x006db5e4    8b5128
                         {disp32} mov     eax, dword ptr [edx + 0x00000104]             // 0x006db5e7    8b8204010000
                         add              eax, -0x1a                                    // 0x006db5ed    83c0e6
                         cmp              eax, 0x04                                     // 0x006db5f0    83f804
                         {disp8} ja       _jmp_addr_0x006db61c                          // 0x006db5f3    7727
                         jmp              dword ptr [eax*4 + 0x6db844]                  // 0x006db5f5    ff248544b86d00
                         {disp32} fld     dword ptr [rdata_bytes + 0x2418]              // 0x006db5fc    d90518b48a00
                         {disp8} jmp      _jmp_addr_0x006db622                          // 0x006db602    eb1e
                         {disp32} fld     dword ptr [rdata_bytes + 0x19c50]             // 0x006db604    d905502c8c00
                         {disp8} jmp      _jmp_addr_0x006db622                          // 0x006db60a    eb16
                         {disp32} fld     dword ptr [rdata_bytes + 0x2478]              // 0x006db60c    d90578b48a00
                         {disp8} jmp      _jmp_addr_0x006db622                          // 0x006db612    eb0e
                         {disp32} fld     dword ptr [_rdata_float1p0]                   // 0x006db614    d90590a38a00
                         {disp8} jmp      _jmp_addr_0x006db622                          // 0x006db61a    eb06
_jmp_addr_0x006db61c:    {disp32} fld     dword ptr [_rdata_float0p0]                   // 0x006db61c    d90598a38a00
_jmp_addr_0x006db622:    {disp8} fld      dword ptr [esp + 0x18]                        // 0x006db622    d9442418
                         push             0x3f800000                                    // 0x006db626    680000803f
                         push             0x0                                           // 0x006db62b    6a00
                         fadd             st, st(1)                                     // 0x006db62d    d8c1
                         push             0x0                                           // 0x006db62f    6a00
                         push             0x00d3a164                                    // 0x006db631    6864a1d300
                         {disp8} lea      eax, dword ptr [esp + 0x20]                   // 0x006db636    8d442420
                         {disp8} fstp     dword ptr [esp + 0x28]                        // 0x006db63a    d95c2428
                         push             eax                                           // 0x006db63e    50
                         push             esi                                           // 0x006db63f    56
                         fstp             st(0)                                         // 0x006db640    ddd8
                         call             _jmp_addr_0x006db8a0                          // 0x006db642    e859020000
                         {disp32} mov     dword ptr [esi + 0x000003bc], eax             // 0x006db647    8986bc030000
                         {disp8} mov      ecx, dword ptr [eax + 0x28]                   // 0x006db64d    8b4828
                         {disp32} mov     eax, dword ptr [ecx + 0x00000104]             // 0x006db650    8b8104010000
                         add              eax, -0x1a                                    // 0x006db656    83c0e6
                         add              esp, 0x18                                     // 0x006db659    83c418
                         cmp              eax, 0x04                                     // 0x006db65c    83f804
                         {disp8} ja       _jmp_addr_0x006db688                          // 0x006db65f    7727
                         jmp              dword ptr [eax*4 + 0x6db858]                  // 0x006db661    ff248558b86d00
                         {disp32} fld     dword ptr [rdata_bytes + 0x2418]              // 0x006db668    d90518b48a00
                         {disp8} jmp      _jmp_addr_0x006db68e                          // 0x006db66e    eb1e
                         {disp32} fld     dword ptr [rdata_bytes + 0x19c50]             // 0x006db670    d905502c8c00
                         {disp8} jmp      _jmp_addr_0x006db68e                          // 0x006db676    eb16
                         {disp32} fld     dword ptr [rdata_bytes + 0x2478]              // 0x006db678    d90578b48a00
                         {disp8} jmp      _jmp_addr_0x006db68e                          // 0x006db67e    eb0e
                         {disp32} fld     dword ptr [_rdata_float1p0]                   // 0x006db680    d90590a38a00
                         {disp8} jmp      _jmp_addr_0x006db68e                          // 0x006db686    eb06
_jmp_addr_0x006db688:    {disp32} fld     dword ptr [_rdata_float0p0]                   // 0x006db688    d90598a38a00
_jmp_addr_0x006db68e:    {disp8} fadd     dword ptr [esp + 0x18]                        // 0x006db68e    d8442418
                         push             0x3f800000                                    // 0x006db692    680000803f
                         push             0x0                                           // 0x006db697    6a00
                         push             0x0                                           // 0x006db699    6a00
                         push             0x00d3a278                                    // 0x006db69b    6878a2d300
                         {disp8} fstp     dword ptr [esp + 0x28]                        // 0x006db6a0    d95c2428
                         {disp8} lea      edx, dword ptr [esp + 0x20]                   // 0x006db6a4    8d542420
                         push             edx                                           // 0x006db6a8    52
                         push             esi                                           // 0x006db6a9    56
                         call             _jmp_addr_0x006db8a0                          // 0x006db6aa    e8f1010000
                         {disp32} mov     dword ptr [esi + 0x000003c0], eax             // 0x006db6af    8986c0030000
                         {disp8} mov      eax, dword ptr [eax + 0x28]                   // 0x006db6b5    8b4028
                         {disp32} mov     eax, dword ptr [eax + 0x00000104]             // 0x006db6b8    8b8004010000
                         add              eax, -0x1a                                    // 0x006db6be    83c0e6
                         add              esp, 0x18                                     // 0x006db6c1    83c418
                         cmp              eax, 0x04                                     // 0x006db6c4    83f804
                         {disp8} ja       _jmp_addr_0x006db6f0                          // 0x006db6c7    7727
                         jmp              dword ptr [eax*4 + 0x6db86c]                  // 0x006db6c9    ff24856cb86d00
                         {disp32} fld     dword ptr [rdata_bytes + 0x2418]              // 0x006db6d0    d90518b48a00
                         {disp8} jmp      _jmp_addr_0x006db6f6                          // 0x006db6d6    eb1e
                         {disp32} fld     dword ptr [rdata_bytes + 0x19c50]             // 0x006db6d8    d905502c8c00
                         {disp8} jmp      _jmp_addr_0x006db6f6                          // 0x006db6de    eb16
                         {disp32} fld     dword ptr [rdata_bytes + 0x2478]              // 0x006db6e0    d90578b48a00
                         {disp8} jmp      _jmp_addr_0x006db6f6                          // 0x006db6e6    eb0e
                         {disp32} fld     dword ptr [_rdata_float1p0]                   // 0x006db6e8    d90590a38a00
                         {disp8} jmp      _jmp_addr_0x006db6f6                          // 0x006db6ee    eb06
_jmp_addr_0x006db6f0:    {disp32} fld     dword ptr [_rdata_float0p0]                   // 0x006db6f0    d90598a38a00
_jmp_addr_0x006db6f6:    {disp8} fadd     dword ptr [esp + 0x18]                        // 0x006db6f6    d8442418
                         push             0x3f800000                                    // 0x006db6fa    680000803f
                         push             0x0                                           // 0x006db6ff    6a00
                         push             0x0                                           // 0x006db701    6a00
                         push             0x00d3a38c                                    // 0x006db703    688ca3d300
                         {disp8} fstp     dword ptr [esp + 0x28]                        // 0x006db708    d95c2428
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x006db70c    8d4c2420
                         push             ecx                                           // 0x006db710    51
                         push             esi                                           // 0x006db711    56
                         call             _jmp_addr_0x006db8a0                          // 0x006db712    e889010000
                         {disp32} mov     dword ptr [esi + 0x000003c4], eax             // 0x006db717    8986c4030000
                         {disp8} mov      edx, dword ptr [eax + 0x28]                   // 0x006db71d    8b5028
                         {disp32} mov     eax, dword ptr [edx + 0x00000104]             // 0x006db720    8b8204010000
                         add              eax, -0x1a                                    // 0x006db726    83c0e6
                         add              esp, 0x18                                     // 0x006db729    83c418
                         cmp              eax, 0x04                                     // 0x006db72c    83f804
                         {disp8} ja       _jmp_addr_0x006db758                          // 0x006db72f    7727
                         jmp              dword ptr [eax*4 + 0x6db880]                  // 0x006db731    ff248580b86d00
                         {disp32} fld     dword ptr [rdata_bytes + 0x2418]              // 0x006db738    d90518b48a00
                         {disp8} jmp      _jmp_addr_0x006db75e                          // 0x006db73e    eb1e
                         {disp32} fld     dword ptr [rdata_bytes + 0x19c50]             // 0x006db740    d905502c8c00
                         {disp8} jmp      _jmp_addr_0x006db75e                          // 0x006db746    eb16
                         {disp32} fld     dword ptr [rdata_bytes + 0x2478]              // 0x006db748    d90578b48a00
                         {disp8} jmp      _jmp_addr_0x006db75e                          // 0x006db74e    eb0e
                         {disp32} fld     dword ptr [_rdata_float1p0]                   // 0x006db750    d90590a38a00
                         {disp8} jmp      _jmp_addr_0x006db75e                          // 0x006db756    eb06
_jmp_addr_0x006db758:    {disp32} fld     dword ptr [_rdata_float0p0]                   // 0x006db758    d90598a38a00
_jmp_addr_0x006db75e:    {disp8} fadd     dword ptr [esp + 0x18]                        // 0x006db75e    d8442418
                         push             0x3f800000                                    // 0x006db762    680000803f
                         push             0x0                                           // 0x006db767    6a00
                         push             0x0                                           // 0x006db769    6a00
                         push             0x00d3a4a0                                    // 0x006db76b    68a0a4d300
                         {disp8} fstp     dword ptr [esp + 0x28]                        // 0x006db770    d95c2428
                         {disp8} lea      eax, dword ptr [esp + 0x20]                   // 0x006db774    8d442420
                         push             eax                                           // 0x006db778    50
                         push             esi                                           // 0x006db779    56
                         call             _jmp_addr_0x006db8a0                          // 0x006db77a    e821010000
                         add              esp, 0x18                                     // 0x006db77f    83c418
                         {disp32} mov     dword ptr [esi + 0x000003c8], eax             // 0x006db782    8986c8030000
                         xor.s            edi, edi                                      // 0x006db788    33ff
                         mov              ebx, 0x00000100                               // 0x006db78a    bb00010000
_jmp_addr_0x006db78f:    test             edi, edi                                      // 0x006db78f    85ff
                         {disp8} je       _jmp_addr_0x006db7a9                          // 0x006db791    7416
                         {disp32} mov     ecx, dword ptr [esi + edi * 0x4 + 0x000003bc] // 0x006db793    8b8cbebc030000
                         {disp8} mov      ecx, dword ptr [ecx + 0x40]                   // 0x006db79a    8b4940
                         mov              eax, dword ptr [ecx]                          // 0x006db79d    8b01
                         xor.s            edx, edx                                      // 0x006db79f    33d2
                         call             dword ptr [eax + 0x80]                        // 0x006db7a1    ff9080000000
                         {disp8} jmp      _jmp_addr_0x006db7b5                          // 0x006db7a7    eb0c
_jmp_addr_0x006db7a9:    {disp32} mov     ecx, dword ptr [esi + 0x000003bc]             // 0x006db7a9    8b8ebc030000
                         {disp8} mov      eax, dword ptr [ecx + 0x40]                   // 0x006db7af    8b4140
                         or               dword ptr [eax + 8], ebx                      // 0x006db7b2    095808
_jmp_addr_0x006db7b5:    inc              edi                                           // 0x006db7b5    47
                         cmp              edi, 0x04                                     // 0x006db7b6    83ff04
                         {disp8} jl       _jmp_addr_0x006db78f                          // 0x006db7b9    7cd4
                         {disp8} mov      edx, dword ptr [ebp + 0x00]                   // 0x006db7bb    8b5500
                         {disp32} mov     eax, dword ptr [esi + 0x000003bc]             // 0x006db7be    8b86bc030000
                         {disp8} mov      dword ptr [edx + 0x74], eax                   // 0x006db7c4    894274
                         {disp32} mov     ecx, dword ptr [esi + 0x000003bc]             // 0x006db7c7    8b8ebc030000
                         {disp32} mov     edx, dword ptr [esi + 0x000003c0]             // 0x006db7cd    8b96c0030000
                         {disp8} mov      dword ptr [ecx + 0x74], edx                   // 0x006db7d3    895174
                         {disp32} mov     eax, dword ptr [esi + 0x000003c0]             // 0x006db7d6    8b86c0030000
                         {disp32} mov     ecx, dword ptr [esi + 0x000003c4]             // 0x006db7dc    8b8ec4030000
                         {disp8} mov      dword ptr [eax + 0x74], ecx                   // 0x006db7e2    894874
                         {disp32} mov     edx, dword ptr [esi + 0x000003c4]             // 0x006db7e5    8b96c4030000
                         {disp32} mov     eax, dword ptr [esi + 0x000003c8]             // 0x006db7eb    8b86c8030000
                         {disp8} mov      dword ptr [edx + 0x74], eax                   // 0x006db7f1    894274
                         {disp32} mov     ecx, dword ptr [esi + 0x000003c8]             // 0x006db7f4    8b8ec8030000
                         {disp8} mov      dword ptr [ecx + 0x74], 0x00000000            // 0x006db7fa    c7417400000000
                         {disp32} mov     edx, dword ptr [esi + 0x000003bc]             // 0x006db801    8b96bc030000
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                   // 0x006db807    8b4500
                         {disp8} mov      dword ptr [edx + 0x78], eax                   // 0x006db80a    894278
                         {disp32} mov     ecx, dword ptr [esi + 0x000003c0]             // 0x006db80d    8b8ec0030000
                         {disp32} mov     edx, dword ptr [esi + 0x000003bc]             // 0x006db813    8b96bc030000
                         {disp8} mov      dword ptr [ecx + 0x78], edx                   // 0x006db819    895178
                         {disp32} mov     eax, dword ptr [esi + 0x000003c4]             // 0x006db81c    8b86c4030000
                         {disp32} mov     ecx, dword ptr [esi + 0x000003c0]             // 0x006db822    8b8ec0030000
                         {disp8} mov      dword ptr [eax + 0x78], ecx                   // 0x006db828    894878
                         {disp32} mov     edx, dword ptr [esi + 0x000003c8]             // 0x006db82b    8b96c8030000
                         {disp32} mov     eax, dword ptr [esi + 0x000003c4]             // 0x006db831    8b86c4030000
                         pop              edi                                           // 0x006db837    5f
                         pop              esi                                           // 0x006db838    5e
                         pop              ebp                                           // 0x006db839    5d
                         {disp8} mov      dword ptr [edx + 0x78], eax                   // 0x006db83a    894278
                         pop              ebx                                           // 0x006db83d    5b
                         add              esp, 0x18                                     // 0x006db83e    83c418
                         ret                                                            // 0x006db841    c3

// Snippet: db, [0x006db842, 0x006db844)
.byte 0x8b, 0xff                  // 0x006db842

// Snippet: jmptbl, [0x006db844, 0x006db894)
.byte 0x1c, 0xb6, 0x6d, 0x00      // 0x006db844
.byte 0xfc, 0xb5, 0x6d, 0x00      // 0x006db848
.byte 0x04, 0xb6, 0x6d, 0x00      // 0x006db84c
.byte 0x0c, 0xb6, 0x6d, 0x00      // 0x006db850
.byte 0x14, 0xb6, 0x6d, 0x00      // 0x006db854
.byte 0x88, 0xb6, 0x6d, 0x00      // 0x006db858
.byte 0x68, 0xb6, 0x6d, 0x00      // 0x006db85c
.byte 0x70, 0xb6, 0x6d, 0x00      // 0x006db860
.byte 0x78, 0xb6, 0x6d, 0x00      // 0x006db864
.byte 0x80, 0xb6, 0x6d, 0x00      // 0x006db868
.byte 0xf0, 0xb6, 0x6d, 0x00      // 0x006db86c
.byte 0xd0, 0xb6, 0x6d, 0x00      // 0x006db870
.byte 0xd8, 0xb6, 0x6d, 0x00      // 0x006db874
.byte 0xe0, 0xb6, 0x6d, 0x00      // 0x006db878
.byte 0xe8, 0xb6, 0x6d, 0x00      // 0x006db87c
.byte 0x58, 0xb7, 0x6d, 0x00      // 0x006db880
.byte 0x38, 0xb7, 0x6d, 0x00      // 0x006db884
.byte 0x40, 0xb7, 0x6d, 0x00      // 0x006db888
.byte 0x48, 0xb7, 0x6d, 0x00      // 0x006db88c
.byte 0x50, 0xb7, 0x6d, 0x00      // 0x006db890

// Snippet: db, [0x006db894, 0x006db8a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006db894
.byte 0x90, 0x90, 0x90, 0x90      // 0x006db898
.byte 0x90, 0x90, 0x90, 0x90      // 0x006db89c

