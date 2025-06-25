.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x00426c40

start_0x00426c40_0x00426c80:
// Snippet: asm, [0x00426c40, 0x00426c68)
_jmp_addr_0x00426c40:    {disp32} mov     eax, dword ptr [_game]                 // 0x00426c40    a15c19d000
                         {disp32} mov     eax, dword ptr [eax + 0x00250080]      // 0x00426c45    8b8080002500
                         cmp              eax, 0x0c                              // 0x00426c4b    83f80c
                         {disp8} ja       _jmp_addr_0x00426c65                   // 0x00426c4e    7715
                         xor.s            ecx, ecx                               // 0x00426c50    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x00426c70]        // 0x00426c52    8a88706c4200
                         jmp              dword ptr [ecx*4 + 0x426c68]           // 0x00426c58    ff248d686c4200
                         mov              eax, 0x00000001                        // 0x00426c5f    b801000000
                         ret                                                     // 0x00426c64    c3
_jmp_addr_0x00426c65:    xor.s            eax, eax                               // 0x00426c65    33c0
                         ret                                                     // 0x00426c67    c3

// Snippet: jmptbl, [0x00426c68, 0x00426c70)
.byte 0x5f, 0x6c, 0x42, 0x00      // 0x00426c68
.byte 0x65, 0x6c, 0x42, 0x00      // 0x00426c6c

// Snippet: ijmptbl, [0x00426c70, 0x00426c7d)
.byte 0x00, 0x00, 0x00, 0x00      // 0x00426c70
.byte 0x00, 0x00, 0x00, 0x00      // 0x00426c74
.byte 0x01, 0x00, 0x01, 0x01      // 0x00426c78
.byte 0x00                        // 0x00426c7c

// Snippet: db, [0x00426c7d, 0x00426c80)
.byte 0x90, 0x90, 0x90            // 0x00426c7d

