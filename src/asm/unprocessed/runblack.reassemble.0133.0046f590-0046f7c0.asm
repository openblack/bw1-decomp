.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??0BindableAction@@QAE@XZ
.extern _jmp_addr_0x0046f1e0

.globl _jmp_addr_0x0046f590
.globl _jmp_addr_0x0046f5f0
.globl _jmp_addr_0x0046f660
.globl ??0ControlMap@@QAE@XZ  
.globl _jmp_addr_0x0046f730
.globl _jmp_addr_0x0046f750

start_0x0046f590_0x0046f7c0:
// Snippet: asm, [0x0046f590, 0x0046f79a)
_jmp_addr_0x0046f590:    {disp32} mov     eax, dword ptr [ecx + 0x00000208]        // 0x0046f590    8b8108020000
                         dec              eax                                      // 0x0046f596    48
                         {disp8} je       _jmp_addr_0x0046f5cd                     // 0x0046f597    7434
                         dec              eax                                      // 0x0046f599    48
                         {disp8} je       _jmp_addr_0x0046f5b7                     // 0x0046f59a    741b
                         sub              eax, 0x03                                // 0x0046f59c    83e803
                         {disp8} jne      _jmp_addr_0x0046f5e6                     // 0x0046f59f    7545
                         {disp32} mov     al, byte ptr [data_bytes + 0x4bf350]     // 0x0046f5a1    a05053e800
                         test             al, 0x02                                 // 0x0046f5a6    a802
                         {disp8} je       _jmp_addr_0x0046f5e6                     // 0x0046f5a8    743c
                         and              al, -0x03                                // 0x0046f5aa    24fd
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], al     // 0x0046f5ac    a25053e800
                         mov              eax, 0x00000001                          // 0x0046f5b1    b801000000
                         ret                                                       // 0x0046f5b6    c3
_jmp_addr_0x0046f5b7:    {disp32} mov     al, byte ptr [data_bytes + 0x4bf350]     // 0x0046f5b7    a05053e800
                         test             al, 0x40                                 // 0x0046f5bc    a840
                         {disp8} je       _jmp_addr_0x0046f5e6                     // 0x0046f5be    7426
                         and              al, -0x41                                // 0x0046f5c0    24bf
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], al     // 0x0046f5c2    a25053e800
                         mov              eax, 0x00000001                          // 0x0046f5c7    b801000000
                         ret                                                       // 0x0046f5cc    c3
_jmp_addr_0x0046f5cd:    {disp32} mov     cl, byte ptr [data_bytes + 0x4bf350]     // 0x0046f5cd    8a0d5053e800
                         mov              eax, 0x00000001                          // 0x0046f5d3    b801000000
                         test             al, cl                                   // 0x0046f5d8    84c8
                         {disp8} je       _jmp_addr_0x0046f5e6                     // 0x0046f5da    740a
                         and              cl, -0x02                                // 0x0046f5dc    80e1fe
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], cl     // 0x0046f5df    880d5053e800
                         ret                                                       // 0x0046f5e5    c3
_jmp_addr_0x0046f5e6:    xor.s            eax, eax                                 // 0x0046f5e6    33c0
                         ret                                                       // 0x0046f5e8    c3
                         nop                                                       // 0x0046f5e9    90
                         nop                                                       // 0x0046f5ea    90
                         nop                                                       // 0x0046f5eb    90
                         nop                                                       // 0x0046f5ec    90
                         nop                                                       // 0x0046f5ed    90
                         nop                                                       // 0x0046f5ee    90
                         nop                                                       // 0x0046f5ef    90
_jmp_addr_0x0046f5f0:    {disp32} mov     eax, dword ptr [ecx + 0x00000208]        // 0x0046f5f0    8b8108020000
                         dec              eax                                      // 0x0046f5f6    48
                         {disp8} je       _jmp_addr_0x0046f62b                     // 0x0046f5f7    7432
                         dec              eax                                      // 0x0046f5f9    48
                         {disp8} je       _jmp_addr_0x0046f64f                     // 0x0046f5fa    7453
                         sub              eax, 0x03                                // 0x0046f5fc    83e803
                         {disp8} jne      _jmp_addr_0x0046f64f                     // 0x0046f5ff    754e
                         test             byte ptr [data_bytes + 0x4bf350], 0x20   // 0x0046f601    f6055053e80020
                         {disp8} je       _jmp_addr_0x0046f64f                     // 0x0046f608    7445
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x286d10]   // 0x0046f60a    8b0d10cdc400
                         mov              eax, 0x00000001                          // 0x0046f610    b801000000
                         or.s             ecx, eax                                 // 0x0046f615    0bc8
                         {disp32} mov     dword ptr [data_bytes + 0x286d10], ecx   // 0x0046f617    890d10cdc400
                         or               dword ptr [0xc4cd18], eax                // 0x0046f61d    090518cdc400
                         and              byte ptr [data_bytes + 0x4bf350], -0x21  // 0x0046f623    80255053e800df
                         ret                                                       // 0x0046f62a    c3
_jmp_addr_0x0046f62b:    test             byte ptr [data_bytes + 0x4bf350], 0x10   // 0x0046f62b    f6055053e80010
                         {disp8} je       _jmp_addr_0x0046f64f                     // 0x0046f632    741b
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x286d10]   // 0x0046f634    8b0d10cdc400
                         mov              eax, 0x00000001                          // 0x0046f63a    b801000000
                         or.s             ecx, eax                                 // 0x0046f63f    0bc8
                         {disp32} mov     dword ptr [data_bytes + 0x286d10], ecx   // 0x0046f641    890d10cdc400
                         and              byte ptr [data_bytes + 0x4bf350], -0x11  // 0x0046f647    80255053e800ef
                         ret                                                       // 0x0046f64e    c3
_jmp_addr_0x0046f64f:    xor.s            eax, eax                                 // 0x0046f64f    33c0
                         ret                                                       // 0x0046f651    c3
                         nop                                                       // 0x0046f652    90
                         nop                                                       // 0x0046f653    90
                         nop                                                       // 0x0046f654    90
                         nop                                                       // 0x0046f655    90
                         nop                                                       // 0x0046f656    90
                         nop                                                       // 0x0046f657    90
                         nop                                                       // 0x0046f658    90
                         nop                                                       // 0x0046f659    90
                         nop                                                       // 0x0046f65a    90
                         nop                                                       // 0x0046f65b    90
                         nop                                                       // 0x0046f65c    90
                         nop                                                       // 0x0046f65d    90
                         nop                                                       // 0x0046f65e    90
                         nop                                                       // 0x0046f65f    90
_jmp_addr_0x0046f660:    {disp32} mov     eax, dword ptr [ecx + 0x00000208]        // 0x0046f660    8b8108020000
                         dec              eax                                      // 0x0046f666    48
                         {disp8} je       _jmp_addr_0x0046f69d                     // 0x0046f667    7434
                         dec              eax                                      // 0x0046f669    48
                         {disp8} je       _jmp_addr_0x0046f687                     // 0x0046f66a    741b
                         sub              eax, 0x03                                // 0x0046f66c    83e803
                         {disp8} jne      _jmp_addr_0x0046f6b3                     // 0x0046f66f    7542
                         {disp32} mov     al, byte ptr [data_bytes + 0x4bf350]     // 0x0046f671    a05053e800
                         test             al, 0x08                                 // 0x0046f676    a808
                         {disp8} je       _jmp_addr_0x0046f6b3                     // 0x0046f678    7439
                         and              al, -0x09                                // 0x0046f67a    24f7
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], al     // 0x0046f67c    a25053e800
                         mov              eax, 0x00000001                          // 0x0046f681    b801000000
                         ret                                                       // 0x0046f686    c3
_jmp_addr_0x0046f687:    {disp32} mov     al, byte ptr [data_bytes + 0x4bf350]     // 0x0046f687    a05053e800
                         test             al, -0x80                                // 0x0046f68c    a880
                         {disp8} je       _jmp_addr_0x0046f6b3                     // 0x0046f68e    7423
                         and              al, 0x7f                                 // 0x0046f690    247f
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], al     // 0x0046f692    a25053e800
                         mov              eax, 0x00000001                          // 0x0046f697    b801000000
                         ret                                                       // 0x0046f69c    c3
_jmp_addr_0x0046f69d:    {disp32} mov     al, byte ptr [data_bytes + 0x4bf350]     // 0x0046f69d    a05053e800
                         test             al, 0x04                                 // 0x0046f6a2    a804
                         {disp8} je       _jmp_addr_0x0046f6b3                     // 0x0046f6a4    740d
                         and              al, -0x05                                // 0x0046f6a6    24fb
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], al     // 0x0046f6a8    a25053e800
                         mov              eax, 0x00000001                          // 0x0046f6ad    b801000000
                         ret                                                       // 0x0046f6b2    c3
_jmp_addr_0x0046f6b3:    xor.s            eax, eax                                 // 0x0046f6b3    33c0
                         ret                                                       // 0x0046f6b5    c3
                         nop                                                       // 0x0046f6b6    90
                         nop                                                       // 0x0046f6b7    90
                         nop                                                       // 0x0046f6b8    90
                         nop                                                       // 0x0046f6b9    90
                         nop                                                       // 0x0046f6ba    90
                         nop                                                       // 0x0046f6bb    90
                         nop                                                       // 0x0046f6bc    90
                         nop                                                       // 0x0046f6bd    90
                         nop                                                       // 0x0046f6be    90
                         nop                                                       // 0x0046f6bf    90
??0ControlMap@@QAE@XZ:
                         push             ebx                                      // 0x0046f6c0    53
                         push             esi                                      // 0x0046f6c1    56
                         mov.s            esi, ecx                                 // 0x0046f6c2    8bf1
                         push             edi                                      // 0x0046f6c4    57
                         mov.s            edi, esi                                 // 0x0046f6c5    8bfe
                         mov              ebx, 0x00000021                          // 0x0046f6c7    bb21000000
_jmp_addr_0x0046f6cc:    mov.s            ecx, edi                                 // 0x0046f6cc    8bcf
                         call             ??0BindableAction@@QAE@XZ                // 0x0046f6ce    e8cdfaffff
                         add              edi, 0x0000030c                          // 0x0046f6d3    81c70c030000
                         dec              ebx                                      // 0x0046f6d9    4b
                         {disp8} jne      _jmp_addr_0x0046f6cc                     // 0x0046f6da    75f0
                         xor.s            eax, eax                                 // 0x0046f6dc    33c0
                         {disp32} lea     edi, dword ptr [esi + 0x0000648c]        // 0x0046f6de    8dbe8c640000
                         {disp32} mov     dword ptr [esi + 0x00006528], 0x000000fa // 0x0046f6e4    c78628650000fa000000
                         mov              ecx, 0x00000021                          // 0x0046f6ee    b921000000
                         rep stosd                                                 // 0x0046f6f3    f3ab
                         {disp32} mov     dword ptr [esi + 0x00006518], eax        // 0x0046f6f5    898618650000
                         {disp32} mov     dword ptr [esi + 0x0000651c], eax        // 0x0046f6fb    89861c650000
                         {disp32} mov     dword ptr [esi + 0x00006510], eax        // 0x0046f701    898610650000
                         {disp32} mov     dword ptr [esi + 0x00006514], eax        // 0x0046f707    898614650000
                         {disp32} mov     dword ptr [esi + 0x00006524], eax        // 0x0046f70d    898624650000
                         {disp32} mov     dword ptr [esi + 0x00006520], eax        // 0x0046f713    898620650000
                         mov              eax, 0x00000001                          // 0x0046f719    b801000000
                         {disp32} mov     dword ptr [esi + 0x0000652c], eax        // 0x0046f71e    89862c650000
                         {disp32} mov     dword ptr [esi + 0x00006530], eax        // 0x0046f724    898630650000
                         pop              edi                                      // 0x0046f72a    5f
                         mov.s            eax, esi                                 // 0x0046f72b    8bc6
                         pop              esi                                      // 0x0046f72d    5e
                         pop              ebx                                      // 0x0046f72e    5b
                         ret                                                       // 0x0046f72f    c3
_jmp_addr_0x0046f730:    push             esi                                      // 0x0046f730    56
                         push             edi                                      // 0x0046f731    57
                         {disp32} lea     esi, dword ptr [ecx + 0x0000648c]        // 0x0046f732    8db18c640000
                         mov              edi, 0x00000021                          // 0x0046f738    bf21000000
_jmp_addr_0x0046f73d:    sub              esi, 0x0000030c                          // 0x0046f73d    81ee0c030000
                         mov.s            ecx, esi                                 // 0x0046f743    8bce
                         call             _jmp_addr_0x0046f1e0                     // 0x0046f745    e896faffff
                         dec              edi                                      // 0x0046f74a    4f
                         {disp8} jne      _jmp_addr_0x0046f73d                     // 0x0046f74b    75f0
                         pop              edi                                      // 0x0046f74d    5f
                         pop              esi                                      // 0x0046f74e    5e
                         ret                                                       // 0x0046f74f    c3
_jmp_addr_0x0046f750:    {disp32} mov     eax, dword ptr [ecx + 0x0000652c]        // 0x0046f750    8b812c650000
                         test             eax, eax                                 // 0x0046f756    85c0
                         {disp8} jne      _jmp_addr_0x0046f775                     // 0x0046f758    751b
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x0046f75a    8b442404
                         add              eax, -0x03                               // 0x0046f75e    83c0fd
                         cmp              eax, 0x10                                // 0x0046f761    83f810
                         {disp8} ja       _jmp_addr_0x0046f795                     // 0x0046f764    772f
                         xor.s            ecx, ecx                                 // 0x0046f766    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x0046f7a4]          // 0x0046f768    8a88a4f74600
                         jmp              dword ptr [ecx*4 + 0x46f79c]             // 0x0046f76e    ff248d9cf74600
_jmp_addr_0x0046f775:    {disp32} mov     eax, dword ptr [ecx + 0x00006530]        // 0x0046f775    8b8130650000
                         test             eax, eax                                 // 0x0046f77b    85c0
                         {disp8} jne      _jmp_addr_0x0046f795                     // 0x0046f77d    7516
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x0046f77f    8b442404
                         cmp              eax, 0x11                                // 0x0046f783    83f811
                         {disp8} jl       _jmp_addr_0x0046f795                     // 0x0046f786    7c0d
                         cmp              eax, 0x13                                // 0x0046f788    83f813
                         {disp8} jg       _jmp_addr_0x0046f795                     // 0x0046f78b    7f08
                         mov              eax, 0x00000001                          // 0x0046f78d    b801000000
                         ret              0x0004                                   // 0x0046f792    c20400
_jmp_addr_0x0046f795:    xor.s            eax, eax                                 // 0x0046f795    33c0
                         ret              0x0004                                   // 0x0046f797    c20400

// Snippet: db, [0x0046f79a, 0x0046f79c)
.byte 0x8b, 0xff                  // 0x0046f79a

// Snippet: jmptbl, [0x0046f79c, 0x0046f7a4)
.byte 0x8d, 0xf7, 0x46, 0x00      // 0x0046f79c
.byte 0x95, 0xf7, 0x46, 0x00      // 0x0046f7a0

// Snippet: ijmptbl, [0x0046f7a4, 0x0046f7b5)
.byte 0x00, 0x00, 0x01, 0x00      // 0x0046f7a4
.byte 0x00, 0x00, 0x00, 0x00      // 0x0046f7a8
.byte 0x00, 0x00, 0x00, 0x00      // 0x0046f7ac
.byte 0x00, 0x00, 0x00, 0x00      // 0x0046f7b0
.byte 0x00                        // 0x0046f7b4

// Snippet: db, [0x0046f7b5, 0x0046f7c0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0046f7b5
.byte 0x90, 0x90, 0x90, 0x90      // 0x0046f7b9
.byte 0x90, 0x90, 0x90            // 0x0046f7bd

