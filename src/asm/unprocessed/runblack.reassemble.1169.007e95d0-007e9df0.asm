.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern _toupper
.extern ___nw__FUl
.extern _jmp_addr_0x007e6d70
.extern _jmp_addr_0x007e6da0
.extern _jmp_addr_0x007e6dc0
.extern _jmp_addr_0x007e6f50
.extern _jmp_addr_0x007e6f80
.extern _jmp_addr_0x007e6fc0
.extern _jmp_addr_0x007e6fe0
.extern _jmp_addr_0x007e6ff0
.extern _jmp_addr_0x007e7170
.extern _jmp_addr_0x007e9df0
.extern _jmp_addr_0x007e9e00
.extern _jmp_addr_0x007e9eb0
.extern _jmp_addr_0x007ea000

.globl _jmp_addr_0x007e95d0
.globl _jmp_addr_0x007e9870
.globl _jmp_addr_0x007e98d0
.globl _jmp_addr_0x007e9910
.globl _jmp_addr_0x007e9a10
.globl _jmp_addr_0x007e9ad0
.globl _jmp_addr_0x007e9ae0
.globl _jmp_addr_0x007e9be0

start_0x007e95d0_0x007e9df0:
// Snippet: asm, [0x007e95d0, 0x007e9dd6)
_jmp_addr_0x007e95d0:    push             ebx                                     // 0x007e95d0    53
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]             // 0x007e95d1    8b5c240c
                         push             ebp                                     // 0x007e95d5    55
                         push             esi                                     // 0x007e95d6    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]             // 0x007e95d7    8b742410
                         mov              word ptr [ebx], 0x0000                  // 0x007e95db    66c7030000
                         mov.s            ebp, ecx                                // 0x007e95e0    8be9
                         push             edi                                     // 0x007e95e2    57
                         mov              eax, dword ptr [esi]                    // 0x007e95e3    8b06
                         mov.s            edi, ebx                                // 0x007e95e5    8bfb
                         mov              cx, word ptr [eax]                      // 0x007e95e7    668b08
                         push             ecx                                     // 0x007e95ea    51
                         call             _jmp_addr_0x007e7170                    // 0x007e95eb    e880dbffff
                         add              esp, 0x04                               // 0x007e95f0    83c404
                         test             eax, eax                                // 0x007e95f3    85c0
                         {disp8} je       _jmp_addr_0x007e9614                    // 0x007e95f5    741d
_jmp_addr_0x007e95f7:    mov              eax, dword ptr [esi]                    // 0x007e95f7    8b06
                         cmp              word ptr [eax], 0x00                    // 0x007e95f9    66833800
                         {disp8} je       _jmp_addr_0x007e9614                    // 0x007e95fd    7415
                         add              eax, 0x02                               // 0x007e95ff    83c002
                         mov              dword ptr [esi], eax                    // 0x007e9602    8906
                         mov              dx, word ptr [eax]                      // 0x007e9604    668b10
                         push             edx                                     // 0x007e9607    52
                         call             _jmp_addr_0x007e7170                    // 0x007e9608    e863dbffff
                         add              esp, 0x04                               // 0x007e960d    83c404
                         test             eax, eax                                // 0x007e9610    85c0
                         {disp8} jne      _jmp_addr_0x007e95f7                    // 0x007e9612    75e3
_jmp_addr_0x007e9614:    mov              eax, dword ptr [esi]                    // 0x007e9614    8b06
                         mov              ax, word ptr [eax]                      // 0x007e9616    668b00
                         cmp              ax, 0x000a                              // 0x007e9619    663d0a00
                         {disp8} je       _jmp_addr_0x007e9624                    // 0x007e961d    7405
                         test             ax, ax                                  // 0x007e961f    6685c0
                         {disp8} jne      _jmp_addr_0x007e962b                    // 0x007e9622    7507
_jmp_addr_0x007e9624:    {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007e9624    8b4c241c
                         mov              byte ptr [ecx], 0x01                    // 0x007e9628    c60101
_jmp_addr_0x007e962b:    mov              ecx, dword ptr [esi]                    // 0x007e962b    8b0e
                         mov              ax, word ptr [ecx]                      // 0x007e962d    668b01
                         cmp              ax, 0x0022                              // 0x007e9630    663d2200
                         {disp32} jne     _jmp_addr_0x007e96ec                    // 0x007e9634    0f85b2000000
                         {disp8} lea      eax, dword ptr [ecx + 0x02]             // 0x007e963a    8d4102
                         mov              dword ptr [esi], eax                    // 0x007e963d    8906
                         mov              ax, word ptr [eax]                      // 0x007e963f    668b00
                         cmp              ax, 0x0022                              // 0x007e9642    663d2200
                         {disp8} je       _jmp_addr_0x007e966b                    // 0x007e9646    7423
_jmp_addr_0x007e9648:    test             ax, ax                                  // 0x007e9648    6685c0
                         {disp8} je       _jmp_addr_0x007e966b                    // 0x007e964b    741e
                         cmp              ax, 0x000a                              // 0x007e964d    663d0a00
                         {disp8} je       _jmp_addr_0x007e966b                    // 0x007e9651    7418
                         mov              word ptr [edi], ax                      // 0x007e9653    668907
                         mov              edx, dword ptr [esi]                    // 0x007e9656    8b16
                         add              edx, 0x02                               // 0x007e9658    83c202
                         add              edi, 0x02                               // 0x007e965b    83c702
                         mov.s            eax, edx                                // 0x007e965e    8bc2
                         mov              dword ptr [esi], edx                    // 0x007e9660    8916
                         mov              ax, word ptr [eax]                      // 0x007e9662    668b00
                         cmp              ax, 0x0022                              // 0x007e9665    663d2200
                         {disp8} jne      _jmp_addr_0x007e9648                    // 0x007e9669    75dd
_jmp_addr_0x007e966b:    mov              word ptr [edi], 0x0000                  // 0x007e966b    66c7070000
                         mov              eax, dword ptr [esi]                    // 0x007e9670    8b06
                         cmp              word ptr [eax], 0x22                    // 0x007e9672    66833822
                         {disp8} jne      _jmp_addr_0x007e96cc                    // 0x007e9676    7554
                         add              eax, 0x02                               // 0x007e9678    83c002
                         mov              dword ptr [esi], eax                    // 0x007e967b    8906
                         mov              dx, word ptr [eax]                      // 0x007e967d    668b10
                         push             edx                                     // 0x007e9680    52
                         call             _jmp_addr_0x007e7170                    // 0x007e9681    e8eadaffff
                         add              esp, 0x04                               // 0x007e9686    83c404
                         test             eax, eax                                // 0x007e9689    85c0
                         {disp8} je       _jmp_addr_0x007e96aa                    // 0x007e968b    741d
_jmp_addr_0x007e968d:    mov              eax, dword ptr [esi]                    // 0x007e968d    8b06
                         cmp              word ptr [eax], 0x00                    // 0x007e968f    66833800
                         {disp8} je       _jmp_addr_0x007e96aa                    // 0x007e9693    7415
                         add              eax, 0x02                               // 0x007e9695    83c002
                         mov              dword ptr [esi], eax                    // 0x007e9698    8906
                         mov              ax, word ptr [eax]                      // 0x007e969a    668b00
                         push             eax                                     // 0x007e969d    50
                         call             _jmp_addr_0x007e7170                    // 0x007e969e    e8cddaffff
                         add              esp, 0x04                               // 0x007e96a3    83c404
                         test             eax, eax                                // 0x007e96a6    85c0
                         {disp8} jne      _jmp_addr_0x007e968d                    // 0x007e96a8    75e3
_jmp_addr_0x007e96aa:    mov              ecx, dword ptr [esi]                    // 0x007e96aa    8b0e
                         mov              ax, word ptr [ecx]                      // 0x007e96ac    668b01
                         cmp              ax, 0x002c                              // 0x007e96af    663d2c00
                         {disp8} je       _jmp_addr_0x007e96c7                    // 0x007e96b3    7412
                         cmp              ax, 0x0028                              // 0x007e96b5    663d2800
                         {disp8} je       _jmp_addr_0x007e96c7                    // 0x007e96b9    740c
                         cmp              ax, 0x0029                              // 0x007e96bb    663d2900
                         {disp8} je       _jmp_addr_0x007e96c7                    // 0x007e96bf    7406
                         cmp              ax, 0x003a                              // 0x007e96c1    663d3a00
                         {disp8} jne      _jmp_addr_0x007e96cc                    // 0x007e96c5    7505
_jmp_addr_0x007e96c7:    add              ecx, 0x2                                // 0x007e96c7    83c102
                         mov              dword ptr [esi], ecx                    // 0x007e96ca    890e
_jmp_addr_0x007e96cc:    mov              ecx, dword ptr [esi]                    // 0x007e96cc    8b0e
                         mov              ax, word ptr [ecx]                      // 0x007e96ce    668b01
                         cmp              ax, 0x000a                              // 0x007e96d1    663d0a00
                         {disp8} je       _jmp_addr_0x007e96dc                    // 0x007e96d5    7405
                         test             ax, ax                                  // 0x007e96d7    6685c0
                         {disp8} jne      _jmp_addr_0x007e96e3                    // 0x007e96da    7507
_jmp_addr_0x007e96dc:    {disp8} mov      edx, dword ptr [esp + 0x1c]             // 0x007e96dc    8b54241c
                         mov              byte ptr [edx], 0x01                    // 0x007e96e0    c60201
_jmp_addr_0x007e96e3:    pop              edi                                     // 0x007e96e3    5f
                         pop              esi                                     // 0x007e96e4    5e
                         pop              ebp                                     // 0x007e96e5    5d
                         xor.s            eax, eax                                // 0x007e96e6    33c0
                         pop              ebx                                     // 0x007e96e8    5b
                         ret              0x000c                                  // 0x007e96e9    c20c00
_jmp_addr_0x007e96ec:    cmp              ax, 0x003d                              // 0x007e96ec    663d3d00
                         {disp32} je      _jmp_addr_0x007e9785                    // 0x007e96f0    0f848f000000
                         cmp              ax, 0x0021                              // 0x007e96f6    663d2100
                         {disp32} je      _jmp_addr_0x007e9785                    // 0x007e96fa    0f8485000000
                         cmp              ax, 0x003e                              // 0x007e9700    663d3e00
                         {disp8} je       _jmp_addr_0x007e9785                    // 0x007e9704    747f
                         cmp              ax, 0x003c                              // 0x007e9706    663d3c00
                         {disp8} je       _jmp_addr_0x007e9785                    // 0x007e970a    7479
                         push             eax                                     // 0x007e970c    50
                         call             _jmp_addr_0x007e7170                    // 0x007e970d    e85edaffff
                         add              esp, 0x04                               // 0x007e9712    83c404
                         test             eax, eax                                // 0x007e9715    85c0
                         {disp32} jne     _jmp_addr_0x007e97ac                    // 0x007e9717    0f858f000000
_jmp_addr_0x007e971d:    mov              ecx, dword ptr [esi]                    // 0x007e971d    8b0e
                         mov              ax, word ptr [ecx]                      // 0x007e971f    668b01
                         test             ax, ax                                  // 0x007e9722    6685c0
                         {disp32} je      _jmp_addr_0x007e97ac                    // 0x007e9725    0f8481000000
                         cmp              ax, 0x002c                              // 0x007e972b    663d2c00
                         {disp8} je       _jmp_addr_0x007e97a9                    // 0x007e972f    7478
                         cmp              ax, 0x0028                              // 0x007e9731    663d2800
                         {disp8} je       _jmp_addr_0x007e97a9                    // 0x007e9735    7472
                         cmp              ax, 0x0029                              // 0x007e9737    663d2900
                         {disp8} je       _jmp_addr_0x007e97a9                    // 0x007e973b    746c
                         cmp              ax, 0x003a                              // 0x007e973d    663d3a00
                         {disp8} je       _jmp_addr_0x007e97a9                    // 0x007e9741    7466
                         cmp              ax, 0x003d                              // 0x007e9743    663d3d00
                         {disp8} je       _jmp_addr_0x007e97ac                    // 0x007e9747    7463
                         cmp              ax, 0x0021                              // 0x007e9749    663d2100
                         {disp8} je       _jmp_addr_0x007e97ac                    // 0x007e974d    745d
                         cmp              ax, 0x003e                              // 0x007e974f    663d3e00
                         {disp8} je       _jmp_addr_0x007e97ac                    // 0x007e9753    7457
                         cmp              ax, 0x003c                              // 0x007e9755    663d3c00
                         {disp8} je       _jmp_addr_0x007e97ac                    // 0x007e9759    7451
                         and              eax, 0x0000ffff                         // 0x007e975b    25ffff0000
                         add              ecx, 0x2                                // 0x007e9760    83c102
                         push             eax                                     // 0x007e9763    50
                         mov              dword ptr [esi], ecx                    // 0x007e9764    890e
                         call             _toupper                                // 0x007e9766    e8e6c6fdff
                         mov              word ptr [edi], ax                      // 0x007e976b    668907
                         mov              eax, dword ptr [esi]                    // 0x007e976e    8b06
                         add              edi, 0x02                               // 0x007e9770    83c702
                         mov              cx, word ptr [eax]                      // 0x007e9773    668b08
                         push             ecx                                     // 0x007e9776    51
                         call             _jmp_addr_0x007e7170                    // 0x007e9777    e8f4d9ffff
                         add              esp, 0x08                               // 0x007e977c    83c408
                         test             eax, eax                                // 0x007e977f    85c0
                         {disp8} je       _jmp_addr_0x007e971d                    // 0x007e9781    749a
                         {disp8} jmp      _jmp_addr_0x007e97ac                    // 0x007e9783    eb27
_jmp_addr_0x007e9785:    mov              word ptr [ebx], ax                      // 0x007e9785    668903
                         mov              edx, dword ptr [esi]                    // 0x007e9788    8b16
                         add              edx, 0x02                               // 0x007e978a    83c202
                         {disp8} lea      edi, dword ptr [ebx + 0x02]             // 0x007e978d    8d7b02
                         mov.s            eax, edx                                // 0x007e9790    8bc2
                         mov              dword ptr [esi], edx                    // 0x007e9792    8916
                         mov              ax, word ptr [eax]                      // 0x007e9794    668b00
                         cmp              ax, 0x003d                              // 0x007e9797    663d3d00
                         {disp8} je       _jmp_addr_0x007e97a3                    // 0x007e979b    7406
                         cmp              ax, 0x003e                              // 0x007e979d    663d3e00
                         {disp8} jne      _jmp_addr_0x007e97ac                    // 0x007e97a1    7509
_jmp_addr_0x007e97a3:    mov              word ptr [edi], ax                      // 0x007e97a3    668907
                         add              edi, 0x02                               // 0x007e97a6    83c702
_jmp_addr_0x007e97a9:    add              dword ptr [esi], 0x02                   // 0x007e97a9    830602
_jmp_addr_0x007e97ac:    mov              word ptr [edi], 0x0000                  // 0x007e97ac    66c7070000
                         mov              edx, dword ptr [esi]                    // 0x007e97b1    8b16
                         mov              ax, word ptr [edx]                      // 0x007e97b3    668b02
                         cmp              ax, 0x000a                              // 0x007e97b6    663d0a00
                         {disp8} je       _jmp_addr_0x007e97c1                    // 0x007e97ba    7405
                         test             ax, ax                                  // 0x007e97bc    6685c0
                         {disp8} jne      _jmp_addr_0x007e97c8                    // 0x007e97bf    7507
_jmp_addr_0x007e97c1:    {disp8} mov      eax, dword ptr [esp + 0x1c]             // 0x007e97c1    8b44241c
                         mov              byte ptr [eax], 0x01                    // 0x007e97c5    c60001
_jmp_addr_0x007e97c8:    {disp32} mov     eax, dword ptr [data_bytes + 0x26e5b0]  // 0x007e97c8    a1b045c300
                         xor.s            esi, esi                                // 0x007e97cd    33f6
                         test             eax, eax                                // 0x007e97cf    85c0
                         {disp8} je       _jmp_addr_0x007e97ff                    // 0x007e97d1    742c
                         mov              eax, 0x00c345b0                         // 0x007e97d3    b8b045c300
_jmp_addr_0x007e97d8:    mov              ecx, dword ptr [eax]                    // 0x007e97d8    8b08
                         push             ecx                                     // 0x007e97da    51
                         push             ebx                                     // 0x007e97db    53
                         call             _jmp_addr_0x007e6ff0                    // 0x007e97dc    e80fd8ffff
                         add              esp, 0x08                               // 0x007e97e1    83c408
                         test             eax, eax                                // 0x007e97e4    85c0
                         {disp8} je       _jmp_addr_0x007e9833                    // 0x007e97e6    744b
                         inc              esi                                     // 0x007e97e8    46
                         movsx            edx, si                                 // 0x007e97e9    0fbfd6
                         shl              edx, 4                                  // 0x007e97ec    c1e204
                         {disp32} mov     ecx, dword ptr [edx + 0x00c345b0]       // 0x007e97ef    8b8ab045c300
                         {disp32} lea     eax, dword ptr [edx + 0x00c345b0]       // 0x007e97f5    8d82b045c300
                         test             ecx, ecx                                // 0x007e97fb    85c9
                         {disp8} jne      _jmp_addr_0x007e97d8                    // 0x007e97fd    75d9
_jmp_addr_0x007e97ff:    {disp8} mov      ecx, dword ptr [ebp + 0x20]             // 0x007e97ff    8b4d20
                         test             ecx, ecx                                // 0x007e9802    85c9
                         {disp8} je       _jmp_addr_0x007e984d                    // 0x007e9804    7447
                         mov              eax, dword ptr [ecx]                    // 0x007e9806    8b01
                         xor.s            esi, esi                                // 0x007e9808    33f6
                         test             eax, eax                                // 0x007e980a    85c0
                         {disp8} je       _jmp_addr_0x007e984d                    // 0x007e980c    743f
                         xor.s            eax, eax                                // 0x007e980e    33c0
_jmp_addr_0x007e9810:    mov              eax, dword ptr [ecx + eax * 0x1]        // 0x007e9810    8b0401
                         push             eax                                     // 0x007e9813    50
                         push             ebx                                     // 0x007e9814    53
                         call             _jmp_addr_0x007e6ff0                    // 0x007e9815    e8d6d7ffff
                         add              esp, 0x08                               // 0x007e981a    83c408
                         test             eax, eax                                // 0x007e981d    85c0
                         {disp8} je       _jmp_addr_0x007e983e                    // 0x007e981f    741d
                         {disp8} mov      ecx, dword ptr [ebp + 0x20]             // 0x007e9821    8b4d20
                         inc              esi                                     // 0x007e9824    46
                         movsx            eax, si                                 // 0x007e9825    0fbfc6
                         shl              eax, 4                                  // 0x007e9828    c1e004
                         cmp              dword ptr [ecx + eax * 0x1], 0x00       // 0x007e982b    833c0100
                         {disp8} jne      _jmp_addr_0x007e9810                    // 0x007e982f    75df
                         {disp8} jmp      _jmp_addr_0x007e984d                    // 0x007e9831    eb1a
_jmp_addr_0x007e9833:    movsx            eax, si                                 // 0x007e9833    0fbfc6
                         pop              edi                                     // 0x007e9836    5f
                         pop              esi                                     // 0x007e9837    5e
                         pop              ebp                                     // 0x007e9838    5d
                         inc              eax                                     // 0x007e9839    40
                         pop              ebx                                     // 0x007e983a    5b
                         ret              0x000c                                  // 0x007e983b    c20c00
_jmp_addr_0x007e983e:    movsx            ecx, si                                 // 0x007e983e    0fbfce
                         pop              edi                                     // 0x007e9841    5f
                         or               eax, -0x1                               // 0x007e9842    83c8ff
                         pop              esi                                     // 0x007e9845    5e
                         pop              ebp                                     // 0x007e9846    5d
                         sub.s            eax, ecx                                // 0x007e9847    2bc1
                         pop              ebx                                     // 0x007e9849    5b
                         ret              0x000c                                  // 0x007e984a    c20c00
_jmp_addr_0x007e984d:    push             ebx                                     // 0x007e984d    53
                         mov.s            ecx, ebp                                // 0x007e984e    8bcd
                         call             _jmp_addr_0x007e98d0                    // 0x007e9850    e87b000000
                         test             eax, eax                                // 0x007e9855    85c0
                         {disp32} je      _jmp_addr_0x007e96e3                    // 0x007e9857    0f8486feffff
                         pop              edi                                     // 0x007e985d    5f
                         pop              esi                                     // 0x007e985e    5e
                         pop              ebp                                     // 0x007e985f    5d
                         mov              eax, 0x0000001e                         // 0x007e9860    b81e000000
                         pop              ebx                                     // 0x007e9865    5b
                         ret              0x000c                                  // 0x007e9866    c20c00
                         nop                                                      // 0x007e9869    90
                         nop                                                      // 0x007e986a    90
                         nop                                                      // 0x007e986b    90
                         nop                                                      // 0x007e986c    90
                         nop                                                      // 0x007e986d    90
                         nop                                                      // 0x007e986e    90
                         nop                                                      // 0x007e986f    90
_jmp_addr_0x007e9870:    push             ebx                                     // 0x007e9870    53
                         mov.s            ebx, ecx                                // 0x007e9871    8bd9
                         push             esi                                     // 0x007e9873    56
                         {disp8} mov      esi, dword ptr [ebx + 0x1c]             // 0x007e9874    8b731c
                         test             esi, esi                                // 0x007e9877    85f6
                         {disp8} je       _jmp_addr_0x007e98ba                    // 0x007e9879    743f
                         push             edi                                     // 0x007e987b    57
_jmp_addr_0x007e987c:    {disp8} mov      eax, dword ptr [esi + 0x04]             // 0x007e987c    8b4604
                         test             eax, eax                                // 0x007e987f    85c0
                         {disp8} je       _jmp_addr_0x007e988c                    // 0x007e9881    7409
                         push             eax                                     // 0x007e9883    50
                         call             ??3@YAXPAX@Z                            // 0x007e9884    e80f56fcff
                         add              esp, 0x04                               // 0x007e9889    83c404
_jmp_addr_0x007e988c:    mov              eax, dword ptr [esi]                    // 0x007e988c    8b06
                         dec              eax                                     // 0x007e988e    48
                         {disp8} jne      _jmp_addr_0x007e98a1                    // 0x007e988f    7510
                         {disp8} mov      eax, dword ptr [esi + 0x08]             // 0x007e9891    8b4608
                         test             eax, eax                                // 0x007e9894    85c0
                         {disp8} je       _jmp_addr_0x007e98a1                    // 0x007e9896    7409
                         push             eax                                     // 0x007e9898    50
                         call             ??3@YAXPAX@Z                            // 0x007e9899    e8fa55fcff
                         add              esp, 0x04                               // 0x007e989e    83c404
_jmp_addr_0x007e98a1:    {disp8} mov      edi, dword ptr [esi + 0x0c]             // 0x007e98a1    8b7e0c
                         push             esi                                     // 0x007e98a4    56
                         call             ??3@YAXPAX@Z                            // 0x007e98a5    e8ee55fcff
                         add              esp, 0x04                               // 0x007e98aa    83c404
                         mov.s            esi, edi                                // 0x007e98ad    8bf7
                         test             edi, edi                                // 0x007e98af    85ff
                         {disp8} jne      _jmp_addr_0x007e987c                    // 0x007e98b1    75c9
                         {disp8} mov      dword ptr [ebx + 0x1c], edi             // 0x007e98b3    897b1c
                         pop              edi                                     // 0x007e98b6    5f
                         pop              esi                                     // 0x007e98b7    5e
                         pop              ebx                                     // 0x007e98b8    5b
                         ret                                                      // 0x007e98b9    c3
_jmp_addr_0x007e98ba:    {disp8} mov      dword ptr [ebx + 0x1c], 0x00000000      // 0x007e98ba    c7431c00000000
                         pop              esi                                     // 0x007e98c1    5e
                         pop              ebx                                     // 0x007e98c2    5b
                         ret                                                      // 0x007e98c3    c3
                         nop                                                      // 0x007e98c4    90
                         nop                                                      // 0x007e98c5    90
                         nop                                                      // 0x007e98c6    90
                         nop                                                      // 0x007e98c7    90
                         nop                                                      // 0x007e98c8    90
                         nop                                                      // 0x007e98c9    90
                         nop                                                      // 0x007e98ca    90
                         nop                                                      // 0x007e98cb    90
                         nop                                                      // 0x007e98cc    90
                         nop                                                      // 0x007e98cd    90
                         nop                                                      // 0x007e98ce    90
                         nop                                                      // 0x007e98cf    90
_jmp_addr_0x007e98d0:    push             esi                                     // 0x007e98d0    56
                         push             edi                                     // 0x007e98d1    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]             // 0x007e98d2    8b7c240c
                         cmp              word ptr [edi], 0x00                    // 0x007e98d6    66833f00
                         {disp8} je       _jmp_addr_0x007e98fb                    // 0x007e98da    741f
                         {disp8} mov      esi, dword ptr [ecx + 0x1c]             // 0x007e98dc    8b711c
                         test             esi, esi                                // 0x007e98df    85f6
                         {disp8} je       _jmp_addr_0x007e98fb                    // 0x007e98e1    7418
_jmp_addr_0x007e98e3:    {disp8} mov      eax, dword ptr [esi + 0x04]             // 0x007e98e3    8b4604
                         push             eax                                     // 0x007e98e6    50
                         push             edi                                     // 0x007e98e7    57
                         call             _jmp_addr_0x007e6ff0                    // 0x007e98e8    e803d7ffff
                         add              esp, 0x08                               // 0x007e98ed    83c408
                         test             eax, eax                                // 0x007e98f0    85c0
                         {disp8} je       _jmp_addr_0x007e9902                    // 0x007e98f2    740e
                         {disp8} mov      esi, dword ptr [esi + 0x0c]             // 0x007e98f4    8b760c
                         test             esi, esi                                // 0x007e98f7    85f6
                         {disp8} jne      _jmp_addr_0x007e98e3                    // 0x007e98f9    75e8
_jmp_addr_0x007e98fb:    pop              edi                                     // 0x007e98fb    5f
                         xor.s            eax, eax                                // 0x007e98fc    33c0
                         pop              esi                                     // 0x007e98fe    5e
                         ret              0x0004                                  // 0x007e98ff    c20400
_jmp_addr_0x007e9902:    mov.s            eax, esi                                // 0x007e9902    8bc6
                         pop              edi                                     // 0x007e9904    5f
                         pop              esi                                     // 0x007e9905    5e
                         ret              0x0004                                  // 0x007e9906    c20400
                         nop                                                      // 0x007e9909    90
                         nop                                                      // 0x007e990a    90
                         nop                                                      // 0x007e990b    90
                         nop                                                      // 0x007e990c    90
                         nop                                                      // 0x007e990d    90
                         nop                                                      // 0x007e990e    90
                         nop                                                      // 0x007e990f    90
_jmp_addr_0x007e9910:    sub              esp, 0x08                               // 0x007e9910    83ec08
                         {disp32} mov     eax, dword ptr [data_bytes + 0x26e7d0]  // 0x007e9913    a1d047c300
                         push             esi                                     // 0x007e9918    56
                         test             eax, eax                                // 0x007e9919    85c0
                         push             edi                                     // 0x007e991b    57
                         mov.s            esi, ecx                                // 0x007e991c    8bf1
                         {disp8} mov      byte ptr [esp + 0x08], 0x00             // 0x007e991e    c644240800
                         {disp8} je       _jmp_addr_0x007e995e                    // 0x007e9923    7439
                         {disp8} mov      edi, dword ptr [esp + 0x18]             // 0x007e9925    8b7c2418
                         mov              eax, 0x00c347d0                         // 0x007e9929    b8d047c300
_jmp_addr_0x007e992e:    mov              eax, dword ptr [eax]                    // 0x007e992e    8b00
                         push             edi                                     // 0x007e9930    57
                         push             eax                                     // 0x007e9931    50
                         call             _jmp_addr_0x007e6dc0                    // 0x007e9932    e889d4ffff
                         add              esp, 0x08                               // 0x007e9937    83c408
                         test             eax, eax                                // 0x007e993a    85c0
                         {disp8} je       _jmp_addr_0x007e995e                    // 0x007e993c    7420
                         {disp8} inc      byte ptr [esp + 0x08]                   // 0x007e993e    fe442408
                         {disp8} mov      ecx, dword ptr [esp + 0x08]             // 0x007e9942    8b4c2408
                         and              ecx, 0x000000ff                         // 0x007e9946    81e1ff000000
                         {disp32} lea     eax, dword ptr [ecx * 0x4 + 0x00c347d0] // 0x007e994c    8d048dd047c300
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00c347d0] // 0x007e9953    8b0c8dd047c300
                         test             ecx, ecx                                // 0x007e995a    85c9
                         {disp8} jne      _jmp_addr_0x007e992e                    // 0x007e995c    75d0
_jmp_addr_0x007e995e:    {disp8} mov      edi, dword ptr [esp + 0x08]             // 0x007e995e    8b7c2408
                         mov.s            edx, edi                                // 0x007e9962    8bd7
                         and              edx, 0x000000ff                         // 0x007e9964    81e2ff000000
                         {disp32} mov     eax, dword ptr [edx * 0x4 + 0x00c347d0] // 0x007e996a    8b0495d047c300
                         test             eax, eax                                // 0x007e9971    85c0
                         {disp8} jne      _jmp_addr_0x007e9982                    // 0x007e9973    750d
                         pop              edi                                     // 0x007e9975    5f
                         mov              eax, 0x00000003                         // 0x007e9976    b803000000
                         pop              esi                                     // 0x007e997b    5e
                         add              esp, 0x08                               // 0x007e997c    83c408
                         ret              0x000c                                  // 0x007e997f    c20c00
_jmp_addr_0x007e9982:    {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007e9982    8b4c2414
                         {disp8} lea      eax, dword ptr [esp + 0x0c]             // 0x007e9986    8d44240c
                         push             eax                                     // 0x007e998a    50
                         push             ecx                                     // 0x007e998b    51
                         mov.s            ecx, esi                                // 0x007e998c    8bce
                         call             _jmp_addr_0x007e9ca0                    // 0x007e998e    e80d030000
                         test             eax, eax                                // 0x007e9993    85c0
                         {disp8} je       _jmp_addr_0x007e99a4                    // 0x007e9995    740d
                         pop              edi                                     // 0x007e9997    5f
                         mov              eax, 0x00000003                         // 0x007e9998    b803000000
                         pop              esi                                     // 0x007e999d    5e
                         add              esp, 0x08                               // 0x007e999e    83c408
                         ret              0x000c                                  // 0x007e99a1    c20c00
_jmp_addr_0x007e99a4:    {disp8} mov      eax, dword ptr [esp + 0x1c]             // 0x007e99a4    8b44241c
                         {disp8} lea      edx, dword ptr [esp + 0x18]             // 0x007e99a8    8d542418
                         push             edx                                     // 0x007e99ac    52
                         push             eax                                     // 0x007e99ad    50
                         mov.s            ecx, esi                                // 0x007e99ae    8bce
                         call             _jmp_addr_0x007e9ca0                    // 0x007e99b0    e8eb020000
                         test             eax, eax                                // 0x007e99b5    85c0
                         {disp8} je       _jmp_addr_0x007e99c6                    // 0x007e99b7    740d
                         pop              edi                                     // 0x007e99b9    5f
                         mov              eax, 0x00000003                         // 0x007e99ba    b803000000
                         pop              esi                                     // 0x007e99bf    5e
                         add              esp, 0x08                               // 0x007e99c0    83c408
                         ret              0x000c                                  // 0x007e99c3    c20c00
_jmp_addr_0x007e99c6:    mov              ecx, dword ptr [esi]                    // 0x007e99c6    8b0e
                         inc              ecx                                     // 0x007e99c8    41
                         mov.s            eax, ecx                                // 0x007e99c9    8bc1
                         mov              dword ptr [esi], ecx                    // 0x007e99cb    890e
                         cmp              eax, 0x14                               // 0x007e99cd    83f814
                         .byte            0x72, 0xd// {disp8} jb _jmp_addr_0x007e99df // 0x007e99d0    720d
                         pop              edi                                     // 0x007e99d2    5f
                         mov              eax, 0x00000003                         // 0x007e99d3    b803000000
                         pop              esi                                     // 0x007e99d8    5e
                         add              esp, 0x08                               // 0x007e99d9    83c408
                         ret              0x000c                                  // 0x007e99dc    c20c00
_jmp_addr_0x007e99df:    {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007e99df    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x0c]             // 0x007e99e3    8b54240c
                         push             ecx                                     // 0x007e99e7    51
                         push             edi                                     // 0x007e99e8    57
                         push             edx                                     // 0x007e99e9    52
                         mov.s            ecx, esi                                // 0x007e99ea    8bce
                         call             _jmp_addr_0x007e9e00                    // 0x007e99ec    e80f040000
                         mov              ecx, dword ptr [esi]                    // 0x007e99f1    8b0e
                         pop              edi                                     // 0x007e99f3    5f
                         {disp8} mov      byte ptr [ecx + esi * 0x1 + 0x08], al   // 0x007e99f4    88443108
                         xor.s            eax, eax                                // 0x007e99f8    33c0
                         pop              esi                                     // 0x007e99fa    5e
                         add              esp, 0x08                               // 0x007e99fb    83c408
                         ret              0x000c                                  // 0x007e99fe    c20c00
                         nop                                                      // 0x007e9a01    90
                         nop                                                      // 0x007e9a02    90
                         nop                                                      // 0x007e9a03    90
                         nop                                                      // 0x007e9a04    90
                         nop                                                      // 0x007e9a05    90
                         nop                                                      // 0x007e9a06    90
                         nop                                                      // 0x007e9a07    90
                         nop                                                      // 0x007e9a08    90
                         nop                                                      // 0x007e9a09    90
                         nop                                                      // 0x007e9a0a    90
                         nop                                                      // 0x007e9a0b    90
                         nop                                                      // 0x007e9a0c    90
                         nop                                                      // 0x007e9a0d    90
                         nop                                                      // 0x007e9a0e    90
                         nop                                                      // 0x007e9a0f    90
_jmp_addr_0x007e9a10:    push             ebx                                     // 0x007e9a10    53
                         push             esi                                     // 0x007e9a11    56
                         push             edi                                     // 0x007e9a12    57
                         push             0x00000408                              // 0x007e9a13    6808040000
                         push             0x00c34da4                              // 0x007e9a18    68a44dc300
                         mov.s            ebx, ecx                                // 0x007e9a1d    8bd9
                         push             0x10                                    // 0x007e9a1f    6a10
                         call             ___nw__FUl                              // 0x007e9a21    e86a1dffff
                         mov.s            esi, eax                                // 0x007e9a26    8bf0
                         add              esp, 0x0c                               // 0x007e9a28    83c40c
                         test             esi, esi                                // 0x007e9a2b    85f6
                         {disp32} je      _jmp_addr_0x007e9ab7                    // 0x007e9a2d    0f8484000000
                         mov.s            ecx, esi                                // 0x007e9a33    8bce
                         xor.s            eax, eax                                // 0x007e9a35    33c0
                         {disp8} mov      edi, dword ptr [esp + 0x14]             // 0x007e9a37    8b7c2414
                         push             0x0000040b                              // 0x007e9a3b    680b040000
                         mov              dword ptr [ecx], eax                    // 0x007e9a40    8901
                         push             0x00c34da4                              // 0x007e9a42    68a44dc300
                         push             edi                                     // 0x007e9a47    57
                         {disp8} mov      dword ptr [ecx + 0x04], eax             // 0x007e9a48    894104
                         {disp8} mov      dword ptr [ecx + 0x08], eax             // 0x007e9a4b    894108
                         {disp8} mov      dword ptr [ecx + 0x0c], eax             // 0x007e9a4e    89410c
                         call             _jmp_addr_0x007e6da0                    // 0x007e9a51    e84ad3ffff
                         add              esp, 0x04                               // 0x007e9a56    83c404
                         inc              eax                                     // 0x007e9a59    40
                         push             eax                                     // 0x007e9a5a    50
                         call             ___nw__FUl                              // 0x007e9a5b    e8301dffff
                         add              esp, 0x0c                               // 0x007e9a60    83c40c
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x007e9a63    894604
                         test             eax, eax                                // 0x007e9a66    85c0
                         {disp8} je       _jmp_addr_0x007e9aae                    // 0x007e9a68    7444
                         push             edi                                     // 0x007e9a6a    57
                         push             eax                                     // 0x007e9a6b    50
                         call             _jmp_addr_0x007e6d70                    // 0x007e9a6c    e8ffd2ffff
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007e9a71    8b442418
                         add              esp, 0x08                               // 0x007e9a75    83c408
                         sub              eax, 0x17                               // 0x007e9a78    83e817
                         {disp8} je       _jmp_addr_0x007e9a93                    // 0x007e9a7b    7416
                         dec              eax                                     // 0x007e9a7d    48
                         {disp8} je       _jmp_addr_0x007e9a8b                    // 0x007e9a7e    740b
                         dec              eax                                     // 0x007e9a80    48
                         {disp8} jne      _jmp_addr_0x007e9a99                    // 0x007e9a81    7516
                         mov              dword ptr [esi], 0x00000001             // 0x007e9a83    c70601000000
                         {disp8} jmp      _jmp_addr_0x007e9a99                    // 0x007e9a89    eb0e
_jmp_addr_0x007e9a8b:    mov              dword ptr [esi], 0x00000002             // 0x007e9a8b    c70602000000
                         {disp8} jmp      _jmp_addr_0x007e9a99                    // 0x007e9a91    eb06
_jmp_addr_0x007e9a93:    mov              dword ptr [esi], 0x00000000             // 0x007e9a93    c70600000000
_jmp_addr_0x007e9a99:    {disp8} mov      eax, dword ptr [ebx + 0x1c]             // 0x007e9a99    8b431c
                         test             eax, eax                                // 0x007e9a9c    85c0
                         {disp8} je       _jmp_addr_0x007e9aa3                    // 0x007e9a9e    7403
                         {disp8} mov      dword ptr [esi + 0x0c], eax             // 0x007e9aa0    89460c
_jmp_addr_0x007e9aa3:    {disp8} mov      dword ptr [ebx + 0x1c], esi             // 0x007e9aa3    89731c
                         pop              edi                                     // 0x007e9aa6    5f
                         pop              esi                                     // 0x007e9aa7    5e
                         xor.s            eax, eax                                // 0x007e9aa8    33c0
                         pop              ebx                                     // 0x007e9aaa    5b
                         ret              0x0008                                  // 0x007e9aab    c20800
_jmp_addr_0x007e9aae:    push             esi                                     // 0x007e9aae    56
                         call             ??3@YAXPAX@Z                            // 0x007e9aaf    e8e453fcff
                         add              esp, 0x04                               // 0x007e9ab4    83c404
_jmp_addr_0x007e9ab7:    pop              edi                                     // 0x007e9ab7    5f
                         pop              esi                                     // 0x007e9ab8    5e
                         mov              eax, 0x00000003                         // 0x007e9ab9    b803000000
                         pop              ebx                                     // 0x007e9abe    5b
                         ret              0x0008                                  // 0x007e9abf    c20800
                         nop                                                      // 0x007e9ac2    90
                         nop                                                      // 0x007e9ac3    90
                         nop                                                      // 0x007e9ac4    90
                         nop                                                      // 0x007e9ac5    90
                         nop                                                      // 0x007e9ac6    90
                         nop                                                      // 0x007e9ac7    90
                         nop                                                      // 0x007e9ac8    90
                         nop                                                      // 0x007e9ac9    90
                         nop                                                      // 0x007e9aca    90
                         nop                                                      // 0x007e9acb    90
                         nop                                                      // 0x007e9acc    90
                         nop                                                      // 0x007e9acd    90
                         nop                                                      // 0x007e9ace    90
                         nop                                                      // 0x007e9acf    90
_jmp_addr_0x007e9ad0:    ret              0x0004                                  // 0x007e9ad0    c20400
                         nop                                                      // 0x007e9ad3    90
                         nop                                                      // 0x007e9ad4    90
                         nop                                                      // 0x007e9ad5    90
                         nop                                                      // 0x007e9ad6    90
                         nop                                                      // 0x007e9ad7    90
                         nop                                                      // 0x007e9ad8    90
                         nop                                                      // 0x007e9ad9    90
                         nop                                                      // 0x007e9ada    90
                         nop                                                      // 0x007e9adb    90
                         nop                                                      // 0x007e9adc    90
                         nop                                                      // 0x007e9add    90
                         nop                                                      // 0x007e9ade    90
                         nop                                                      // 0x007e9adf    90
_jmp_addr_0x007e9ae0:    sub              esp, 0x08                               // 0x007e9ae0    83ec08
                         {disp32} mov     eax, dword ptr [data_bytes + 0x26e7f4]  // 0x007e9ae3    a1f447c300
                         push             esi                                     // 0x007e9ae8    56
                         test             eax, eax                                // 0x007e9ae9    85c0
                         push             edi                                     // 0x007e9aeb    57
                         mov.s            esi, ecx                                // 0x007e9aec    8bf1
                         {disp8} mov      byte ptr [esp + 0x08], 0x00             // 0x007e9aee    c644240800
                         {disp8} je       _jmp_addr_0x007e9b2e                    // 0x007e9af3    7439
                         {disp8} mov      edi, dword ptr [esp + 0x18]             // 0x007e9af5    8b7c2418
                         mov              eax, 0x00c347f4                         // 0x007e9af9    b8f447c300
_jmp_addr_0x007e9afe:    mov              eax, dword ptr [eax]                    // 0x007e9afe    8b00
                         push             edi                                     // 0x007e9b00    57
                         push             eax                                     // 0x007e9b01    50
                         call             _jmp_addr_0x007e6ff0                    // 0x007e9b02    e8e9d4ffff
                         add              esp, 0x08                               // 0x007e9b07    83c408
                         test             eax, eax                                // 0x007e9b0a    85c0
                         {disp8} je       _jmp_addr_0x007e9b2e                    // 0x007e9b0c    7420
                         {disp8} inc      byte ptr [esp + 0x08]                   // 0x007e9b0e    fe442408
                         {disp8} mov      ecx, dword ptr [esp + 0x08]             // 0x007e9b12    8b4c2408
                         and              ecx, 0x000000ff                         // 0x007e9b16    81e1ff000000
                         {disp32} lea     eax, dword ptr [ecx * 0x4 + 0x00c347f4] // 0x007e9b1c    8d048df447c300
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00c347f4] // 0x007e9b23    8b0c8df447c300
                         test             ecx, ecx                                // 0x007e9b2a    85c9
                         {disp8} jne      _jmp_addr_0x007e9afe                    // 0x007e9b2c    75d0
_jmp_addr_0x007e9b2e:    {disp8} mov      edi, dword ptr [esp + 0x08]             // 0x007e9b2e    8b7c2408
                         mov.s            edx, edi                                // 0x007e9b32    8bd7
                         and              edx, 0x000000ff                         // 0x007e9b34    81e2ff000000
                         {disp32} mov     eax, dword ptr [edx * 0x4 + 0x00c347f4] // 0x007e9b3a    8b0495f447c300
                         test             eax, eax                                // 0x007e9b41    85c0
                         {disp8} jne      _jmp_addr_0x007e9b52                    // 0x007e9b43    750d
                         pop              edi                                     // 0x007e9b45    5f
                         mov              eax, 0x00000003                         // 0x007e9b46    b803000000
                         pop              esi                                     // 0x007e9b4b    5e
                         add              esp, 0x08                               // 0x007e9b4c    83c408
                         ret              0x000c                                  // 0x007e9b4f    c20c00
_jmp_addr_0x007e9b52:    {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007e9b52    8b4c2414
                         {disp8} lea      eax, dword ptr [esp + 0x0c]             // 0x007e9b56    8d44240c
                         push             eax                                     // 0x007e9b5a    50
                         push             ecx                                     // 0x007e9b5b    51
                         mov.s            ecx, esi                                // 0x007e9b5c    8bce
                         call             _jmp_addr_0x007e9eb0                    // 0x007e9b5e    e84d030000
                         test             eax, eax                                // 0x007e9b63    85c0
                         {disp8} je       _jmp_addr_0x007e9b74                    // 0x007e9b65    740d
                         pop              edi                                     // 0x007e9b67    5f
                         mov              eax, 0x00000003                         // 0x007e9b68    b803000000
                         pop              esi                                     // 0x007e9b6d    5e
                         add              esp, 0x08                               // 0x007e9b6e    83c408
                         ret              0x000c                                  // 0x007e9b71    c20c00
_jmp_addr_0x007e9b74:    {disp8} mov      eax, dword ptr [esp + 0x1c]             // 0x007e9b74    8b44241c
                         {disp8} lea      edx, dword ptr [esp + 0x18]             // 0x007e9b78    8d542418
                         push             edx                                     // 0x007e9b7c    52
                         push             eax                                     // 0x007e9b7d    50
                         mov.s            ecx, esi                                // 0x007e9b7e    8bce
                         call             _jmp_addr_0x007e9eb0                    // 0x007e9b80    e82b030000
                         test             eax, eax                                // 0x007e9b85    85c0
                         {disp8} je       _jmp_addr_0x007e9b96                    // 0x007e9b87    740d
                         pop              edi                                     // 0x007e9b89    5f
                         mov              eax, 0x00000003                         // 0x007e9b8a    b803000000
                         pop              esi                                     // 0x007e9b8f    5e
                         add              esp, 0x08                               // 0x007e9b90    83c408
                         ret              0x000c                                  // 0x007e9b93    c20c00
_jmp_addr_0x007e9b96:    mov              ecx, dword ptr [esi]                    // 0x007e9b96    8b0e
                         inc              ecx                                     // 0x007e9b98    41
                         mov.s            eax, ecx                                // 0x007e9b99    8bc1
                         mov              dword ptr [esi], ecx                    // 0x007e9b9b    890e
                         cmp              eax, 0x14                               // 0x007e9b9d    83f814
                         .byte            0x72, 0xd// {disp8} jb _jmp_addr_0x007e9baf // 0x007e9ba0    720d
                         pop              edi                                     // 0x007e9ba2    5f
                         mov              eax, 0x00000003                         // 0x007e9ba3    b803000000
                         pop              esi                                     // 0x007e9ba8    5e
                         add              esp, 0x08                               // 0x007e9ba9    83c408
                         ret              0x000c                                  // 0x007e9bac    c20c00
_jmp_addr_0x007e9baf:    {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007e9baf    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x0c]             // 0x007e9bb3    8b54240c
                         push             ecx                                     // 0x007e9bb7    51
                         push             edi                                     // 0x007e9bb8    57
                         push             edx                                     // 0x007e9bb9    52
                         mov.s            ecx, esi                                // 0x007e9bba    8bce
                         call             _jmp_addr_0x007ea000                    // 0x007e9bbc    e83f040000
                         mov              ecx, dword ptr [esi]                    // 0x007e9bc1    8b0e
                         pop              edi                                     // 0x007e9bc3    5f
                         {disp8} mov      byte ptr [ecx + esi * 0x1 + 0x08], al   // 0x007e9bc4    88443108
                         xor.s            eax, eax                                // 0x007e9bc8    33c0
                         pop              esi                                     // 0x007e9bca    5e
                         add              esp, 0x08                               // 0x007e9bcb    83c408
                         ret              0x000c                                  // 0x007e9bce    c20c00
                         nop                                                      // 0x007e9bd1    90
                         nop                                                      // 0x007e9bd2    90
                         nop                                                      // 0x007e9bd3    90
                         nop                                                      // 0x007e9bd4    90
                         nop                                                      // 0x007e9bd5    90
                         nop                                                      // 0x007e9bd6    90
                         nop                                                      // 0x007e9bd7    90
                         nop                                                      // 0x007e9bd8    90
                         nop                                                      // 0x007e9bd9    90
                         nop                                                      // 0x007e9bda    90
                         nop                                                      // 0x007e9bdb    90
                         nop                                                      // 0x007e9bdc    90
                         nop                                                      // 0x007e9bdd    90
                         nop                                                      // 0x007e9bde    90
                         nop                                                      // 0x007e9bdf    90
_jmp_addr_0x007e9be0:    push             ebx                                     // 0x007e9be0    53
                         push             esi                                     // 0x007e9be1    56
                         push             edi                                     // 0x007e9be2    57
                         push             0x00000408                              // 0x007e9be3    6808040000
                         push             0x00c34da4                              // 0x007e9be8    68a44dc300
                         mov.s            ebx, ecx                                // 0x007e9bed    8bd9
                         push             0x10                                    // 0x007e9bef    6a10
                         call             ___nw__FUl                              // 0x007e9bf1    e89a1bffff
                         mov.s            esi, eax                                // 0x007e9bf6    8bf0
                         add              esp, 0x0c                               // 0x007e9bf8    83c40c
                         test             esi, esi                                // 0x007e9bfb    85f6
                         {disp32} je      _jmp_addr_0x007e9c8a                    // 0x007e9bfd    0f8487000000
                         mov.s            ecx, esi                                // 0x007e9c03    8bce
                         xor.s            eax, eax                                // 0x007e9c05    33c0
                         {disp8} mov      edi, dword ptr [esp + 0x14]             // 0x007e9c07    8b7c2414
                         push             0x0000040b                              // 0x007e9c0b    680b040000
                         mov              dword ptr [ecx], eax                    // 0x007e9c10    8901
                         push             0x00c34da4                              // 0x007e9c12    68a44dc300
                         push             edi                                     // 0x007e9c17    57
                         {disp8} mov      dword ptr [ecx + 0x04], eax             // 0x007e9c18    894104
                         {disp8} mov      dword ptr [ecx + 0x08], eax             // 0x007e9c1b    894108
                         {disp8} mov      dword ptr [ecx + 0x0c], eax             // 0x007e9c1e    89410c
                         call             _jmp_addr_0x007e6fe0                    // 0x007e9c21    e8bad3ffff
                         add              esp, 0x04                               // 0x007e9c26    83c404
                         {disp8} lea      edx, dword ptr [eax + eax * 0x1 + 0x02] // 0x007e9c29    8d540002
                         push             edx                                     // 0x007e9c2d    52
                         call             ___nw__FUl                              // 0x007e9c2e    e85d1bffff
                         add              esp, 0x0c                               // 0x007e9c33    83c40c
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x007e9c36    894604
                         test             eax, eax                                // 0x007e9c39    85c0
                         {disp8} je       _jmp_addr_0x007e9c81                    // 0x007e9c3b    7444
                         push             edi                                     // 0x007e9c3d    57
                         push             eax                                     // 0x007e9c3e    50
                         call             _jmp_addr_0x007e6fc0                    // 0x007e9c3f    e87cd3ffff
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007e9c44    8b442418
                         add              esp, 0x08                               // 0x007e9c48    83c408
                         sub              eax, 0x17                               // 0x007e9c4b    83e817
                         {disp8} je       _jmp_addr_0x007e9c66                    // 0x007e9c4e    7416
                         dec              eax                                     // 0x007e9c50    48
                         {disp8} je       _jmp_addr_0x007e9c5e                    // 0x007e9c51    740b
                         dec              eax                                     // 0x007e9c53    48
                         {disp8} jne      _jmp_addr_0x007e9c6c                    // 0x007e9c54    7516
                         mov              dword ptr [esi], 0x00000001             // 0x007e9c56    c70601000000
                         {disp8} jmp      _jmp_addr_0x007e9c6c                    // 0x007e9c5c    eb0e
_jmp_addr_0x007e9c5e:    mov              dword ptr [esi], 0x00000002             // 0x007e9c5e    c70602000000
                         {disp8} jmp      _jmp_addr_0x007e9c6c                    // 0x007e9c64    eb06
_jmp_addr_0x007e9c66:    mov              dword ptr [esi], 0x00000000             // 0x007e9c66    c70600000000
_jmp_addr_0x007e9c6c:    {disp8} mov      eax, dword ptr [ebx + 0x1c]             // 0x007e9c6c    8b431c
                         test             eax, eax                                // 0x007e9c6f    85c0
                         {disp8} je       _jmp_addr_0x007e9c76                    // 0x007e9c71    7403
                         {disp8} mov      dword ptr [esi + 0x0c], eax             // 0x007e9c73    89460c
_jmp_addr_0x007e9c76:    {disp8} mov      dword ptr [ebx + 0x1c], esi             // 0x007e9c76    89731c
                         pop              edi                                     // 0x007e9c79    5f
                         pop              esi                                     // 0x007e9c7a    5e
                         xor.s            eax, eax                                // 0x007e9c7b    33c0
                         pop              ebx                                     // 0x007e9c7d    5b
                         ret              0x0008                                  // 0x007e9c7e    c20800
_jmp_addr_0x007e9c81:    push             esi                                     // 0x007e9c81    56
                         call             ??3@YAXPAX@Z                            // 0x007e9c82    e81152fcff
                         add              esp, 0x04                               // 0x007e9c87    83c404
_jmp_addr_0x007e9c8a:    pop              edi                                     // 0x007e9c8a    5f
                         pop              esi                                     // 0x007e9c8b    5e
                         mov              eax, 0x00000003                         // 0x007e9c8c    b803000000
                         pop              ebx                                     // 0x007e9c91    5b
                         ret              0x0008                                  // 0x007e9c92    c20800
                         nop                                                      // 0x007e9c95    90
                         nop                                                      // 0x007e9c96    90
                         nop                                                      // 0x007e9c97    90
                         nop                                                      // 0x007e9c98    90
                         nop                                                      // 0x007e9c99    90
                         nop                                                      // 0x007e9c9a    90
                         nop                                                      // 0x007e9c9b    90
                         nop                                                      // 0x007e9c9c    90
                         nop                                                      // 0x007e9c9d    90
                         nop                                                      // 0x007e9c9e    90
                         nop                                                      // 0x007e9c9f    90
_jmp_addr_0x007e9ca0:    push             ebx                                     // 0x007e9ca0    53
                         push             ebp                                     // 0x007e9ca1    55
                         {disp8} mov      ebp, dword ptr [esp + 0x0c]             // 0x007e9ca2    8b6c240c
                         push             esi                                     // 0x007e9ca6    56
                         push             edi                                     // 0x007e9ca7    57
                         mov.s            ebx, ecx                                // 0x007e9ca8    8bd9
                         {disp8} mov      al, byte ptr [ebp + 0x00]               // 0x007e9caa    8a4500
                         push             eax                                     // 0x007e9cad    50
                         call             _jmp_addr_0x007e6f50                    // 0x007e9cae    e89dd2ffff
                         add              esp, 0x04                               // 0x007e9cb3    83c404
                         test             eax, eax                                // 0x007e9cb6    85c0
                         {disp32} jne     _jmp_addr_0x007e9dbe                    // 0x007e9cb8    0f8500010000
                         cmp              byte ptr [ebp + 0x00], 0x2d             // 0x007e9cbe    807d002d
                         {disp32} je      _jmp_addr_0x007e9dbe                    // 0x007e9cc2    0f84f6000000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x26e7a0]  // 0x007e9cc8    a1a047c300
                         xor.s            edi, edi                                // 0x007e9ccd    33ff
                         test             eax, eax                                // 0x007e9ccf    85c0
                         {disp8} je       _jmp_addr_0x007e9cf7                    // 0x007e9cd1    7424
                         mov              eax, 0x00c347a0                         // 0x007e9cd3    b8a047c300
                         mov.s            esi, eax                                // 0x007e9cd8    8bf0
_jmp_addr_0x007e9cda:    mov              ecx, dword ptr [eax]                    // 0x007e9cda    8b08
                         push             ebp                                     // 0x007e9cdc    55
                         push             ecx                                     // 0x007e9cdd    51
                         call             _jmp_addr_0x007e6dc0                    // 0x007e9cde    e8ddd0ffff
                         add              esp, 0x08                               // 0x007e9ce3    83c408
                         test             eax, eax                                // 0x007e9ce6    85c0
                         {disp8} je       _jmp_addr_0x007e9d31                    // 0x007e9ce8    7447
                         {disp8} mov      ecx, dword ptr [esi + 0x04]             // 0x007e9cea    8b4e04
                         add              esi, 0x04                               // 0x007e9ced    83c604
                         inc              edi                                     // 0x007e9cf0    47
                         mov.s            eax, esi                                // 0x007e9cf1    8bc6
                         test             ecx, ecx                                // 0x007e9cf3    85c9
                         {disp8} jne      _jmp_addr_0x007e9cda                    // 0x007e9cf5    75e3
_jmp_addr_0x007e9cf7:    {disp8} mov      eax, dword ptr [ebx + 0x28]             // 0x007e9cf7    8b4328
                         test             eax, eax                                // 0x007e9cfa    85c0
                         {disp8} je       _jmp_addr_0x007e9d25                    // 0x007e9cfc    7427
                         mov              ecx, dword ptr [eax]                    // 0x007e9cfe    8b08
                         xor.s            esi, esi                                // 0x007e9d00    33f6
                         test             ecx, ecx                                // 0x007e9d02    85c9
                         {disp8} je       _jmp_addr_0x007e9d25                    // 0x007e9d04    741f
_jmp_addr_0x007e9d06:    mov              ecx, dword ptr [eax + esi * 0x4]        // 0x007e9d06    8b0cb0
                         push             ebp                                     // 0x007e9d09    55
                         push             ecx                                     // 0x007e9d0a    51
                         call             _jmp_addr_0x007e6dc0                    // 0x007e9d0b    e8b0d0ffff
                         add              esp, 0x08                               // 0x007e9d10    83c408
                         test             eax, eax                                // 0x007e9d13    85c0
                         {disp32} je      _jmp_addr_0x007e9dab                    // 0x007e9d15    0f8490000000
                         {disp8} mov      eax, dword ptr [ebx + 0x28]             // 0x007e9d1b    8b4328
                         inc              esi                                     // 0x007e9d1e    46
                         cmp              dword ptr [eax + esi * 0x4], 0x00       // 0x007e9d1f    833cb000
                         {disp8} jne      _jmp_addr_0x007e9d06                    // 0x007e9d23    75e1
_jmp_addr_0x007e9d25:    pop              edi                                     // 0x007e9d25    5f
                         pop              esi                                     // 0x007e9d26    5e
                         pop              ebp                                     // 0x007e9d27    5d
                         mov              eax, 0x00000003                         // 0x007e9d28    b803000000
                         pop              ebx                                     // 0x007e9d2d    5b
                         ret              0x0008                                  // 0x007e9d2e    c20800
_jmp_addr_0x007e9d31:    cmp              edi, 0x04                               // 0x007e9d31    83ff04
                         {disp32} ja      _jmp_addr_0x007e9dcd                    // 0x007e9d34    0f8793000000
                         jmp              dword ptr [edi*4 + 0x7e9dd8]            // 0x007e9d3a    ff24bdd89d7e00
                         mov              ecx, 0x00e85050                         // 0x007e9d41    b95050e800
                         call             _jmp_addr_0x007e9df0                    // 0x007e9d46    e8a5000000
                         {disp8} mov      edx, dword ptr [esp + 0x18]             // 0x007e9d4b    8b542418
                         and              eax, 0x000000ff                         // 0x007e9d4f    25ff000000
                         pop              edi                                     // 0x007e9d54    5f
                         pop              esi                                     // 0x007e9d55    5e
                         mov              dword ptr [edx], eax                    // 0x007e9d56    8902
                         pop              ebp                                     // 0x007e9d58    5d
                         xor.s            eax, eax                                // 0x007e9d59    33c0
                         pop              ebx                                     // 0x007e9d5b    5b
                         ret              0x0008                                  // 0x007e9d5c    c20800
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007e9d5f    8b442418
                         pop              edi                                     // 0x007e9d63    5f
                         pop              esi                                     // 0x007e9d64    5e
                         pop              ebp                                     // 0x007e9d65    5d
                         mov              dword ptr [eax], 0x00000000             // 0x007e9d66    c70000000000
                         xor.s            eax, eax                                // 0x007e9d6c    33c0
                         pop              ebx                                     // 0x007e9d6e    5b
                         ret              0x0008                                  // 0x007e9d6f    c20800
                         {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007e9d72    8b4c2418
                         pop              edi                                     // 0x007e9d76    5f
                         pop              esi                                     // 0x007e9d77    5e
                         pop              ebp                                     // 0x007e9d78    5d
                         mov              dword ptr [ecx], 0x00000002             // 0x007e9d79    c70102000000
                         xor.s            eax, eax                                // 0x007e9d7f    33c0
                         pop              ebx                                     // 0x007e9d81    5b
                         ret              0x0008                                  // 0x007e9d82    c20800
                         {disp8} mov      edx, dword ptr [esp + 0x18]             // 0x007e9d85    8b542418
                         pop              edi                                     // 0x007e9d89    5f
                         pop              esi                                     // 0x007e9d8a    5e
                         pop              ebp                                     // 0x007e9d8b    5d
                         mov              dword ptr [edx], 0x00000003             // 0x007e9d8c    c70203000000
                         xor.s            eax, eax                                // 0x007e9d92    33c0
                         pop              ebx                                     // 0x007e9d94    5b
                         ret              0x0008                                  // 0x007e9d95    c20800
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007e9d98    8b442418
                         pop              edi                                     // 0x007e9d9c    5f
                         pop              esi                                     // 0x007e9d9d    5e
                         pop              ebp                                     // 0x007e9d9e    5d
                         mov              dword ptr [eax], 0x00000004             // 0x007e9d9f    c70004000000
                         xor.s            eax, eax                                // 0x007e9da5    33c0
                         pop              ebx                                     // 0x007e9da7    5b
                         ret              0x0008                                  // 0x007e9da8    c20800
_jmp_addr_0x007e9dab:    {disp8} mov      edx, dword ptr [esp + 0x18]             // 0x007e9dab    8b542418
                         push             edx                                     // 0x007e9daf    52
                         push             esi                                     // 0x007e9db0    56
                         call             dword ptr [ebx + 0x2c]                  // 0x007e9db1    ff532c
                         add              esp, 0x08                               // 0x007e9db4    83c408
                         pop              edi                                     // 0x007e9db7    5f
                         pop              esi                                     // 0x007e9db8    5e
                         pop              ebp                                     // 0x007e9db9    5d
                         pop              ebx                                     // 0x007e9dba    5b
                         ret              0x0008                                  // 0x007e9dbb    c20800
_jmp_addr_0x007e9dbe:    push             ebp                                     // 0x007e9dbe    55
                         call             _jmp_addr_0x007e6f80                    // 0x007e9dbf    e8bcd1ffff
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007e9dc4    8b4c241c
                         add              esp, 0x04                               // 0x007e9dc8    83c404
                         mov              dword ptr [ecx], eax                    // 0x007e9dcb    8901
_jmp_addr_0x007e9dcd:    pop              edi                                     // 0x007e9dcd    5f
                         pop              esi                                     // 0x007e9dce    5e
                         pop              ebp                                     // 0x007e9dcf    5d
                         xor.s            eax, eax                                // 0x007e9dd0    33c0
                         pop              ebx                                     // 0x007e9dd2    5b
                         ret              0x0008                                  // 0x007e9dd3    c20800

// Snippet: db, [0x007e9dd6, 0x007e9dd8)
.byte 0x8b, 0xff                  // 0x007e9dd6

// Snippet: jmptbl, [0x007e9dd8, 0x007e9dec)
.byte 0x41, 0x9d, 0x7e, 0x00      // 0x007e9dd8
.byte 0x5f, 0x9d, 0x7e, 0x00      // 0x007e9ddc
.byte 0x72, 0x9d, 0x7e, 0x00      // 0x007e9de0
.byte 0x85, 0x9d, 0x7e, 0x00      // 0x007e9de4
.byte 0x98, 0x9d, 0x7e, 0x00      // 0x007e9de8

// Snippet: db, [0x007e9dec, 0x007e9df0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e9dec

