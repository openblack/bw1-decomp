.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _atexit
.extern _fgets
.extern _strtok

.globl _jmp_addr_0x007bf0d0

.globl _globl_ct_0x007bf1c0

start_0x007bf030_0x007c0ed0:
// Snippet: asm, [0x007bf030, 0x007c0e97)
_jmp_addr_0x007bf030:    push             esi                                            // 0x007bf030    56
                         mov.s            esi, ecx                                       // 0x007bf031    8bf1
                         push             edi                                            // 0x007bf033    57
                         {disp32} mov     word ptr [esi + 0x000002b4], 0x0000            // 0x007bf034    66c786b40200000000
_jmp_addr_0x007bf03d:    {disp32} mov     eax, dword ptr [esi + 0x000002ac]              // 0x007bf03d    8b86ac020000
                         {disp32} mov     edx, dword ptr [esi + 0x0000029c]              // 0x007bf043    8b969c020000
                         push             eax                                            // 0x007bf049    50
                         inc              edx                                            // 0x007bf04a    42
                         push             0x00000100                                     // 0x007bf04b    6800010000
                         push             esi                                            // 0x007bf050    56
                         {disp32} mov     dword ptr [esi + 0x0000029c], edx              // 0x007bf051    89969c020000
                         call             _fgets                                         // 0x007bf057    e8aa950000
                         add              esp, 0x0c                                      // 0x007bf05c    83c40c
                         test             eax, eax                                       // 0x007bf05f    85c0
                         {disp8} je       _jmp_addr_0x007bf0be                           // 0x007bf061    745b
                         mov.s            edi, esi                                       // 0x007bf063    8bfe
                         or               ecx, 0xffffffff                                // 0x007bf065    83c9ff
                         xor.s            eax, eax                                       // 0x007bf068    33c0
                         repne scasb                                                     // 0x007bf06a    f2ae
                         not              ecx                                            // 0x007bf06c    f7d1
                         dec              ecx                                            // 0x007bf06e    49
                         cmp              ecx, 0x000000ff                                // 0x007bf06f    81f9ff000000
                         {disp8} jae      _jmp_addr_0x007bf0be                           // 0x007bf075    7347
                         mov.s            edi, esi                                       // 0x007bf077    8bfe
                         or               ecx, 0xffffffff                                // 0x007bf079    83c9ff
                         repne scasb                                                     // 0x007bf07c    f2ae
                         not              ecx                                            // 0x007bf07e    f7d1
                         dec              ecx                                            // 0x007bf080    49
                         cmp              byte ptr [ecx + esi * 0x1 + -0x01], 0x0a       // 0x007bf081    807c31ff0a
                         {disp8} jne      _jmp_addr_0x007bf098                           // 0x007bf086    7510
                         mov.s            edi, esi                                       // 0x007bf088    8bfe
                         or               ecx, 0xffffffff                                // 0x007bf08a    83c9ff
                         xor.s            eax, eax                                       // 0x007bf08d    33c0
                         repne scasb                                                     // 0x007bf08f    f2ae
                         not              ecx                                            // 0x007bf091    f7d1
                         dec              ecx                                            // 0x007bf093    49
                         {disp8} mov      byte ptr [ecx + esi * 0x1 + -0x01], al         // 0x007bf094    884431ff
_jmp_addr_0x007bf098:    mov.s            edi, esi                                       // 0x007bf098    8bfe
                         or               ecx, 0xffffffff                                // 0x007bf09a    83c9ff
                         xor.s            eax, eax                                       // 0x007bf09d    33c0
                         repne scasb                                                     // 0x007bf09f    f2ae
                         not              ecx                                            // 0x007bf0a1    f7d1
                         dec              ecx                                            // 0x007bf0a3    49
                         {disp32} mov     dword ptr [esi + 0x000002a0], esi              // 0x007bf0a4    89b6a0020000
                         test             cx, cx                                         // 0x007bf0aa    6685c9
                         {disp32} mov     word ptr [esi + 0x000002b4], cx                // 0x007bf0ad    66898eb4020000
                         {disp8} je       _jmp_addr_0x007bf03d                           // 0x007bf0b4    7487
                         pop              edi                                            // 0x007bf0b6    5f
                         mov              eax, 0x00000001                                // 0x007bf0b7    b801000000
                         pop              esi                                            // 0x007bf0bc    5e
                         ret                                                             // 0x007bf0bd    c3
_jmp_addr_0x007bf0be:    pop              edi                                            // 0x007bf0be    5f
                         xor.s            eax, eax                                       // 0x007bf0bf    33c0
                         pop              esi                                            // 0x007bf0c1    5e
                         ret                                                             // 0x007bf0c2    c3
                         nop                                                             // 0x007bf0c3    90
                         nop                                                             // 0x007bf0c4    90
                         nop                                                             // 0x007bf0c5    90
                         nop                                                             // 0x007bf0c6    90
                         nop                                                             // 0x007bf0c7    90
                         nop                                                             // 0x007bf0c8    90
                         nop                                                             // 0x007bf0c9    90
                         nop                                                             // 0x007bf0ca    90
                         nop                                                             // 0x007bf0cb    90
                         nop                                                             // 0x007bf0cc    90
                         nop                                                             // 0x007bf0cd    90
                         nop                                                             // 0x007bf0ce    90
                         nop                                                             // 0x007bf0cf    90
_jmp_addr_0x007bf0d0:    push             esi                                            // 0x007bf0d0    56
                         mov.s            esi, ecx                                       // 0x007bf0d1    8bf1
                         {disp32} mov     eax, dword ptr [esi + 0x000002ac]              // 0x007bf0d3    8b86ac020000
                         test             eax, eax                                       // 0x007bf0d9    85c0
                         {disp8} jne      _jmp_addr_0x007bf0e1                           // 0x007bf0db    7504
                         xor.s            eax, eax                                       // 0x007bf0dd    33c0
                         pop              esi                                            // 0x007bf0df    5e
                         ret                                                             // 0x007bf0e0    c3
_jmp_addr_0x007bf0e1:    {disp32} mov     ax, word ptr [esi + 0x000002b4]                // 0x007bf0e1    668b86b4020000
                         test             ax, ax                                         // 0x007bf0e8    6685c0
                         {disp8} je       _jmp_addr_0x007bf0fe                           // 0x007bf0eb    7411
                         {disp32} mov     ecx, dword ptr [esi + 0x000002a0]              // 0x007bf0ed    8b8ea0020000
                         and              eax, 0x0000ffff                                // 0x007bf0f3    25ffff0000
                         sub.s            ecx, esi                                       // 0x007bf0f8    2bce
                         cmp.s            ecx, eax                                       // 0x007bf0fa    3bc8
                         {disp8} jl       _jmp_addr_0x007bf10d                           // 0x007bf0fc    7c0f
_jmp_addr_0x007bf0fe:    mov.s            ecx, esi                                       // 0x007bf0fe    8bce
                         call             _jmp_addr_0x007bf030                           // 0x007bf100    e82bffffff
                         test             eax, eax                                       // 0x007bf105    85c0
                         {disp8} jne      _jmp_addr_0x007bf10d                           // 0x007bf107    7504
_jmp_addr_0x007bf109:    xor.s            eax, eax                                       // 0x007bf109    33c0
                         pop              esi                                            // 0x007bf10b    5e
                         ret                                                             // 0x007bf10c    c3
_jmp_addr_0x007bf10d:    {disp32} mov     edx, dword ptr [esi + 0x000002b0]              // 0x007bf10d    8b96b0020000
                         {disp32} mov     eax, dword ptr [esi + 0x000002a0]              // 0x007bf113    8b86a0020000
                         push             edx                                            // 0x007bf119    52
                         push             eax                                            // 0x007bf11a    50
                         call             _strtok                                        // 0x007bf11b    e80aa30000
                         mov.s            edx, eax                                       // 0x007bf120    8bd0
                         add              esp, 0x08                                      // 0x007bf122    83c408
                         test             edx, edx                                       // 0x007bf125    85d2
                         {disp32} mov     dword ptr [esi + 0x000002a0], eax              // 0x007bf127    8986a0020000
                         {disp8} jne      _jmp_addr_0x007bf15c                           // 0x007bf12d    752d
_jmp_addr_0x007bf12f:    mov.s            ecx, esi                                       // 0x007bf12f    8bce
                         call             _jmp_addr_0x007bf030                           // 0x007bf131    e8fafeffff
                         test             eax, eax                                       // 0x007bf136    85c0
                         {disp8} je       _jmp_addr_0x007bf109                           // 0x007bf138    74cf
                         {disp32} mov     ecx, dword ptr [esi + 0x000002b0]              // 0x007bf13a    8b8eb0020000
                         {disp32} mov     edx, dword ptr [esi + 0x000002a0]              // 0x007bf140    8b96a0020000
                         push             ecx                                            // 0x007bf146    51
                         push             edx                                            // 0x007bf147    52
                         call             _strtok                                        // 0x007bf148    e8dda20000
                         mov.s            edx, eax                                       // 0x007bf14d    8bd0
                         add              esp, 0x08                                      // 0x007bf14f    83c408
                         test             edx, edx                                       // 0x007bf152    85d2
                         {disp32} mov     dword ptr [esi + 0x000002a0], eax              // 0x007bf154    8986a0020000
                         {disp8} je       _jmp_addr_0x007bf12f                           // 0x007bf15a    74d3
_jmp_addr_0x007bf15c:    push             ebx                                            // 0x007bf15c    53
                         {disp32} mov     ebx, dword ptr [esi + 0x000002a0]              // 0x007bf15d    8b9ea0020000
                         push             edi                                            // 0x007bf163    57
                         mov.s            edi, ebx                                       // 0x007bf164    8bfb
                         or               ecx, 0xffffffff                                // 0x007bf166    83c9ff
                         xor.s            eax, eax                                       // 0x007bf169    33c0
                         repne scasb                                                     // 0x007bf16b    f2ae
                         not              ecx                                            // 0x007bf16d    f7d1
                         dec              ecx                                            // 0x007bf16f    49
                         {disp8} lea      eax, dword ptr [ecx + ebx * 0x1 + 0x01]        // 0x007bf170    8d441901
                         xor.s            ecx, ecx                                       // 0x007bf174    33c9
                         {disp32} mov     dword ptr [esi + 0x000002a0], eax              // 0x007bf176    8986a0020000
                         sub.s            ax, dx                                         // 0x007bf17c    662bc2
                         test             ax, ax                                         // 0x007bf17f    6685c0
                         {disp8} jbe      _jmp_addr_0x007bf19e                           // 0x007bf182    761a
                         and              eax, 0x0000ffff                                // 0x007bf184    25ffff0000
                         push             ebp                                            // 0x007bf189    55
                         {disp32} lea     edi, dword ptr [esi + 0x00000100]              // 0x007bf18a    8dbe00010000
                         mov.s            ebp, eax                                       // 0x007bf190    8be8
                         mov.s            ecx, eax                                       // 0x007bf192    8bc8
_jmp_addr_0x007bf194:    mov              al, byte ptr [edx]                             // 0x007bf194    8a02
                         inc              edx                                            // 0x007bf196    42
                         mov              byte ptr [edi], al                             // 0x007bf197    8807
                         inc              edi                                            // 0x007bf199    47
                         dec              ebp                                            // 0x007bf19a    4d
                         {disp8} jne      _jmp_addr_0x007bf194                           // 0x007bf19b    75f7
                         pop              ebp                                            // 0x007bf19d    5d
_jmp_addr_0x007bf19e:    and              ecx, 0x0000ffff                                // 0x007bf19e    81e1ffff0000
                         pop              edi                                            // 0x007bf1a4    5f
                         pop              ebx                                            // 0x007bf1a5    5b
                         mov              eax, 0x00000001                                // 0x007bf1a6    b801000000
                         {disp32} mov     byte ptr [ecx + esi * 0x1 + 0x00000100], 0x00  // 0x007bf1ab    c684310001000000
                         pop              esi                                            // 0x007bf1b3    5e
                         ret                                                             // 0x007bf1b4    c3
                         nop                                                             // 0x007bf1b5    90
                         nop                                                             // 0x007bf1b6    90
                         nop                                                             // 0x007bf1b7    90
                         nop                                                             // 0x007bf1b8    90
                         nop                                                             // 0x007bf1b9    90
                         nop                                                             // 0x007bf1ba    90
                         nop                                                             // 0x007bf1bb    90
                         nop                                                             // 0x007bf1bc    90
                         nop                                                             // 0x007bf1bd    90
                         nop                                                             // 0x007bf1be    90
                         nop                                                             // 0x007bf1bf    90
_globl_ct_0x007bf1c0:    call             _jmp_addr_0x007bf1d0                           // 0x007bf1c0    e80b000000
                         {disp32} jmp     _jmp_addr_0x007bf1f0                           // 0x007bf1c5    e926000000
                         nop                                                             // 0x007bf1ca    90
                         nop                                                             // 0x007bf1cb    90
                         nop                                                             // 0x007bf1cc    90
                         nop                                                             // 0x007bf1cd    90
                         nop                                                             // 0x007bf1ce    90
                         nop                                                             // 0x007bf1cf    90
_jmp_addr_0x007bf1d0:    push             0x00c2bdc8                                     // 0x007bf1d0    68c8bdc200
                         mov              ecx, 0x00e83fe8                                // 0x007bf1d5    b9e83fe800
                         call             dword ptr [rdata_bytes + 0x3cc]                // 0x007bf1da    ff15cc938a00
                         ret                                                             // 0x007bf1e0    c3
                         nop                                                             // 0x007bf1e1    90
                         nop                                                             // 0x007bf1e2    90
                         nop                                                             // 0x007bf1e3    90
                         nop                                                             // 0x007bf1e4    90
                         nop                                                             // 0x007bf1e5    90
                         nop                                                             // 0x007bf1e6    90
                         nop                                                             // 0x007bf1e7    90
                         nop                                                             // 0x007bf1e8    90
                         nop                                                             // 0x007bf1e9    90
                         nop                                                             // 0x007bf1ea    90
                         nop                                                             // 0x007bf1eb    90
                         nop                                                             // 0x007bf1ec    90
                         nop                                                             // 0x007bf1ed    90
                         nop                                                             // 0x007bf1ee    90
                         nop                                                             // 0x007bf1ef    90
_jmp_addr_0x007bf1f0:    push             0x007bf200                                     // 0x007bf1f0    6800f27b00
                         call             _atexit                                        // 0x007bf1f5    e897650000
                         pop              ecx                                            // 0x007bf1fa    59
                         ret                                                             // 0x007bf1fb    c3
                         nop                                                             // 0x007bf1fc    90
                         nop                                                             // 0x007bf1fd    90
                         nop                                                             // 0x007bf1fe    90
                         nop                                                             // 0x007bf1ff    90
                         mov              ecx, 0x00e83fe8                                // 0x007bf200    b9e83fe800
                         jmp              dword ptr [__imp___1LHVersion__QAE_XZ@4]       // 0x007bf205    ff2578938a00
                         nop                                                             // 0x007bf20b    90
                         nop                                                             // 0x007bf20c    90
                         nop                                                             // 0x007bf20d    90
                         nop                                                             // 0x007bf20e    90
                         nop                                                             // 0x007bf20f    90
