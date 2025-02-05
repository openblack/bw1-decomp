.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x006dab60

start_0x006dab60_0x006daba0:
// Snippet: asm, [0x006dab60, 0x006dab81)
_jmp_addr_0x006dab60:    {disp8} mov     ecx, dword ptr [ecx + 0x48]  // 0x006dab60    8b4948
                         {disp8} lea     eax, dword ptr [ecx + -0x0a] // 0x006dab63    8d41f6
                         cmp             eax, 0x03                    // 0x006dab66    83f803
                         {disp8} ja      _jmp_addr_0x006dab7e         // 0x006dab69    7713
                         jmp             dword ptr [eax*4 + 0x6dab84] // 0x006dab6b    ff248584ab6d00
                         mov             eax, 0x00000002              // 0x006dab72    b802000000
                         ret                                          // 0x006dab77    c3
                         mov             eax, 0x00000004              // 0x006dab78    b804000000
                         ret                                          // 0x006dab7d    c3
_jmp_addr_0x006dab7e:    xor.s           eax, eax                     // 0x006dab7e    33c0
                         ret                                          // 0x006dab80    c3

// Snippet: db, [0x006dab81, 0x006dab84)
.byte 0x8d, 0x49, 0x00            // 0x006dab81

// Snippet: jmptbl, [0x006dab84, 0x006dab94)
.byte 0x72, 0xab, 0x6d, 0x00      // 0x006dab84
.byte 0x72, 0xab, 0x6d, 0x00      // 0x006dab88
.byte 0x78, 0xab, 0x6d, 0x00      // 0x006dab8c
.byte 0x7e, 0xab, 0x6d, 0x00      // 0x006dab90

// Snippet: db, [0x006dab94, 0x006daba0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dab94
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dab98
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dab9c

