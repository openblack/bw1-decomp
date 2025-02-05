.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x006dabe0

start_0x006dabe0_0x006dac20:
// Snippet: asm, [0x006dabe0, 0x006dac07)
_jmp_addr_0x006dabe0:    {disp8} mov     ecx, dword ptr [ecx + 0x48]  // 0x006dabe0    8b4948
                         {disp8} lea     eax, dword ptr [ecx + -0x0a] // 0x006dabe3    8d41f6
                         cmp             eax, 0x03                    // 0x006dabe6    83f803
                         {disp8} ja      _jmp_addr_0x006dac04         // 0x006dabe9    7719
                         jmp             dword ptr [eax*4 + 0x6dac08] // 0x006dabeb    ff248508ac6d00
                         mov             eax, 0x00000002              // 0x006dabf2    b802000000
                         ret                                          // 0x006dabf7    c3
                         mov             eax, 0x00000001              // 0x006dabf8    b801000000
                         ret                                          // 0x006dabfd    c3
                         mov             eax, 0x00000006              // 0x006dabfe    b806000000
                         ret                                          // 0x006dac03    c3
_jmp_addr_0x006dac04:    xor.s           eax, eax                     // 0x006dac04    33c0
                         ret                                          // 0x006dac06    c3

// Snippet: db, [0x006dac07, 0x006dac08)
.byte 0x90                        // 0x006dac07

// Snippet: jmptbl, [0x006dac08, 0x006dac18)
.byte 0xf2, 0xab, 0x6d, 0x00      // 0x006dac08
.byte 0xf8, 0xab, 0x6d, 0x00      // 0x006dac0c
.byte 0xf8, 0xab, 0x6d, 0x00      // 0x006dac10
.byte 0xfe, 0xab, 0x6d, 0x00      // 0x006dac14

// Snippet: db, [0x006dac18, 0x006dac20)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dac18
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dac1c

