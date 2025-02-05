.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00737180

start_0x00735bf0_0x00735c30:
// Snippet: asm, [0x00735bf0, 0x00735c14)
                         {disp8} mov     eax, dword ptr [esp + 0x0c]  // 0x00735bf0    8b44240c
                         {disp8} mov     ecx, dword ptr [esp + 0x04]  // 0x00735bf4    8b4c2404
                         push            eax                          // 0x00735bf8    50
                         call            _jmp_addr_0x00737180         // 0x00735bf9    e882150000
                         cmp             eax, 0x04                    // 0x00735bfe    83f804
                         {disp8} ja      _jmp_addr_0x00735c0f         // 0x00735c01    770c
                         jmp             dword ptr [eax*4 + 0x735c14] // 0x00735c03    ff2485145c7300
                         mov             al, 0x01                     // 0x00735c0a    b001
                         ret             0x000c                       // 0x00735c0c    c20c00
_jmp_addr_0x00735c0f:    xor.s           al, al                       // 0x00735c0f    32c0
                         ret             0x000c                       // 0x00735c11    c20c00

// Snippet: jmptbl, [0x00735c14, 0x00735c28)
.byte 0x0f, 0x5c, 0x73, 0x00      // 0x00735c14
.byte 0x0a, 0x5c, 0x73, 0x00      // 0x00735c18
.byte 0x0f, 0x5c, 0x73, 0x00      // 0x00735c1c
.byte 0x0f, 0x5c, 0x73, 0x00      // 0x00735c20
.byte 0x0f, 0x5c, 0x73, 0x00      // 0x00735c24

// Snippet: db, [0x00735c28, 0x00735c30)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00735c28
.byte 0x90, 0x90, 0x90, 0x90      // 0x00735c2c

