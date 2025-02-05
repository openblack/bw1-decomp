.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007e6ff0
.extern _jmp_addr_0x007e7160
.extern _jmp_addr_0x007e71a0
.extern _jmp_addr_0x007e9df0

.globl _jmp_addr_0x007e9eb0

start_0x007e9eb0_0x007ea000:
// Snippet: asm, [0x007e9eb0, 0x007e9fe8)
_jmp_addr_0x007e9eb0:    push             ebx                                    // 0x007e9eb0    53
                         push             ebp                                    // 0x007e9eb1    55
                         {disp8} mov      ebp, dword ptr [esp + 0x0c]            // 0x007e9eb2    8b6c240c
                         push             esi                                    // 0x007e9eb6    56
                         push             edi                                    // 0x007e9eb7    57
                         mov.s            ebx, ecx                               // 0x007e9eb8    8bd9
                         {disp8} mov      ax, word ptr [ebp + 0x00]              // 0x007e9eba    668b4500
                         push             eax                                    // 0x007e9ebe    50
                         call             _jmp_addr_0x007e7160                   // 0x007e9ebf    e89cd2ffff
                         add              esp, 0x04                              // 0x007e9ec4    83c404
                         test             eax, eax                               // 0x007e9ec7    85c0
                         {disp32} jne     _jmp_addr_0x007e9fd0                   // 0x007e9ec9    0f8501010000
                         cmp              word ptr [ebp + 0x00], 0x2d            // 0x007e9ecf    66837d002d
                         {disp32} je      _jmp_addr_0x007e9fd0                   // 0x007e9ed4    0f84f6000000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x26e7b8] // 0x007e9eda    a1b847c300
                         xor.s            edi, edi                               // 0x007e9edf    33ff
                         test             eax, eax                               // 0x007e9ee1    85c0
                         {disp8} je       _jmp_addr_0x007e9f09                   // 0x007e9ee3    7424
                         mov              eax, 0x00c347b8                        // 0x007e9ee5    b8b847c300
                         mov.s            esi, eax                               // 0x007e9eea    8bf0
_jmp_addr_0x007e9eec:    mov              ecx, dword ptr [eax]                   // 0x007e9eec    8b08
                         push             ebp                                    // 0x007e9eee    55
                         push             ecx                                    // 0x007e9eef    51
                         call             _jmp_addr_0x007e6ff0                   // 0x007e9ef0    e8fbd0ffff
                         add              esp, 0x08                              // 0x007e9ef5    83c408
                         test             eax, eax                               // 0x007e9ef8    85c0
                         {disp8} je       _jmp_addr_0x007e9f43                   // 0x007e9efa    7447
                         {disp8} mov      ecx, dword ptr [esi + 0x04]            // 0x007e9efc    8b4e04
                         add              esi, 0x04                              // 0x007e9eff    83c604
                         inc              edi                                    // 0x007e9f02    47
                         mov.s            eax, esi                               // 0x007e9f03    8bc6
                         test             ecx, ecx                               // 0x007e9f05    85c9
                         {disp8} jne      _jmp_addr_0x007e9eec                   // 0x007e9f07    75e3
_jmp_addr_0x007e9f09:    {disp8} mov      eax, dword ptr [ebx + 0x28]            // 0x007e9f09    8b4328
                         test             eax, eax                               // 0x007e9f0c    85c0
                         {disp8} je       _jmp_addr_0x007e9f37                   // 0x007e9f0e    7427
                         mov              ecx, dword ptr [eax]                   // 0x007e9f10    8b08
                         xor.s            esi, esi                               // 0x007e9f12    33f6
                         test             ecx, ecx                               // 0x007e9f14    85c9
                         {disp8} je       _jmp_addr_0x007e9f37                   // 0x007e9f16    741f
_jmp_addr_0x007e9f18:    mov              ecx, dword ptr [eax + esi * 0x4]       // 0x007e9f18    8b0cb0
                         push             ebp                                    // 0x007e9f1b    55
                         push             ecx                                    // 0x007e9f1c    51
                         call             _jmp_addr_0x007e6ff0                   // 0x007e9f1d    e8ced0ffff
                         add              esp, 0x08                              // 0x007e9f22    83c408
                         test             eax, eax                               // 0x007e9f25    85c0
                         {disp32} je      _jmp_addr_0x007e9fbd                   // 0x007e9f27    0f8490000000
                         {disp8} mov      eax, dword ptr [ebx + 0x28]            // 0x007e9f2d    8b4328
                         inc              esi                                    // 0x007e9f30    46
                         cmp              dword ptr [eax + esi * 0x4], 0x00      // 0x007e9f31    833cb000
                         {disp8} jne      _jmp_addr_0x007e9f18                   // 0x007e9f35    75e1
_jmp_addr_0x007e9f37:    pop              edi                                    // 0x007e9f37    5f
                         pop              esi                                    // 0x007e9f38    5e
                         pop              ebp                                    // 0x007e9f39    5d
                         mov              eax, 0x00000003                        // 0x007e9f3a    b803000000
                         pop              ebx                                    // 0x007e9f3f    5b
                         ret              0x0008                                 // 0x007e9f40    c20800
_jmp_addr_0x007e9f43:    cmp              edi, 0x04                              // 0x007e9f43    83ff04
                         {disp32} ja      _jmp_addr_0x007e9fdf                   // 0x007e9f46    0f8793000000
                         jmp              dword ptr [edi*4 + 0x7e9fe8]           // 0x007e9f4c    ff24bde89f7e00
                         mov              ecx, 0x00e85050                        // 0x007e9f53    b95050e800
                         call             _jmp_addr_0x007e9df0                   // 0x007e9f58    e893feffff
                         {disp8} mov      edx, dword ptr [esp + 0x18]            // 0x007e9f5d    8b542418
                         and              eax, 0x000000ff                        // 0x007e9f61    25ff000000
                         pop              edi                                    // 0x007e9f66    5f
                         pop              esi                                    // 0x007e9f67    5e
                         mov              dword ptr [edx], eax                   // 0x007e9f68    8902
                         pop              ebp                                    // 0x007e9f6a    5d
                         xor.s            eax, eax                               // 0x007e9f6b    33c0
                         pop              ebx                                    // 0x007e9f6d    5b
                         ret              0x0008                                 // 0x007e9f6e    c20800
                         {disp8} mov      eax, dword ptr [esp + 0x18]            // 0x007e9f71    8b442418
                         pop              edi                                    // 0x007e9f75    5f
                         pop              esi                                    // 0x007e9f76    5e
                         pop              ebp                                    // 0x007e9f77    5d
                         mov              dword ptr [eax], 0x00000000            // 0x007e9f78    c70000000000
                         xor.s            eax, eax                               // 0x007e9f7e    33c0
                         pop              ebx                                    // 0x007e9f80    5b
                         ret              0x0008                                 // 0x007e9f81    c20800
                         {disp8} mov      ecx, dword ptr [esp + 0x18]            // 0x007e9f84    8b4c2418
                         pop              edi                                    // 0x007e9f88    5f
                         pop              esi                                    // 0x007e9f89    5e
                         pop              ebp                                    // 0x007e9f8a    5d
                         mov              dword ptr [ecx], 0x00000002            // 0x007e9f8b    c70102000000
                         xor.s            eax, eax                               // 0x007e9f91    33c0
                         pop              ebx                                    // 0x007e9f93    5b
                         ret              0x0008                                 // 0x007e9f94    c20800
                         {disp8} mov      edx, dword ptr [esp + 0x18]            // 0x007e9f97    8b542418
                         pop              edi                                    // 0x007e9f9b    5f
                         pop              esi                                    // 0x007e9f9c    5e
                         pop              ebp                                    // 0x007e9f9d    5d
                         mov              dword ptr [edx], 0x00000003            // 0x007e9f9e    c70203000000
                         xor.s            eax, eax                               // 0x007e9fa4    33c0
                         pop              ebx                                    // 0x007e9fa6    5b
                         ret              0x0008                                 // 0x007e9fa7    c20800
                         {disp8} mov      eax, dword ptr [esp + 0x18]            // 0x007e9faa    8b442418
                         pop              edi                                    // 0x007e9fae    5f
                         pop              esi                                    // 0x007e9faf    5e
                         pop              ebp                                    // 0x007e9fb0    5d
                         mov              dword ptr [eax], 0x00000004            // 0x007e9fb1    c70004000000
                         xor.s            eax, eax                               // 0x007e9fb7    33c0
                         pop              ebx                                    // 0x007e9fb9    5b
                         ret              0x0008                                 // 0x007e9fba    c20800
_jmp_addr_0x007e9fbd:    {disp8} mov      edx, dword ptr [esp + 0x18]            // 0x007e9fbd    8b542418
                         push             edx                                    // 0x007e9fc1    52
                         push             esi                                    // 0x007e9fc2    56
                         call             dword ptr [ebx + 0x2c]                 // 0x007e9fc3    ff532c
                         add              esp, 0x08                              // 0x007e9fc6    83c408
                         pop              edi                                    // 0x007e9fc9    5f
                         pop              esi                                    // 0x007e9fca    5e
                         pop              ebp                                    // 0x007e9fcb    5d
                         pop              ebx                                    // 0x007e9fcc    5b
                         ret              0x0008                                 // 0x007e9fcd    c20800
_jmp_addr_0x007e9fd0:    push             ebp                                    // 0x007e9fd0    55
                         call             _jmp_addr_0x007e71a0                   // 0x007e9fd1    e8cad1ffff
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]            // 0x007e9fd6    8b4c241c
                         add              esp, 0x04                              // 0x007e9fda    83c404
                         mov              dword ptr [ecx], eax                   // 0x007e9fdd    8901
_jmp_addr_0x007e9fdf:    pop              edi                                    // 0x007e9fdf    5f
                         pop              esi                                    // 0x007e9fe0    5e
                         pop              ebp                                    // 0x007e9fe1    5d
                         xor.s            eax, eax                               // 0x007e9fe2    33c0
                         pop              ebx                                    // 0x007e9fe4    5b
                         ret              0x0008                                 // 0x007e9fe5    c20800

// Snippet: jmptbl, [0x007e9fe8, 0x007e9ffc)
.byte 0x53, 0x9f, 0x7e, 0x00      // 0x007e9fe8
.byte 0x71, 0x9f, 0x7e, 0x00      // 0x007e9fec
.byte 0x84, 0x9f, 0x7e, 0x00      // 0x007e9ff0
.byte 0x97, 0x9f, 0x7e, 0x00      // 0x007e9ff4
.byte 0xaa, 0x9f, 0x7e, 0x00      // 0x007e9ff8

// Snippet: db, [0x007e9ffc, 0x007ea000)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e9ffc

