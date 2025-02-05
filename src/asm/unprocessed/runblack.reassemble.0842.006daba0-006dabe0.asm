.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x006daba0

start_0x006daba0_0x006dabe0:
// Snippet: asm, [0x006daba0, 0x006dabc7)
_jmp_addr_0x006daba0:    {disp8} mov     ecx, dword ptr [ecx + 0x48]  // 0x006daba0    8b4948
                         {disp8} lea     eax, dword ptr [ecx + -0x0a] // 0x006daba3    8d41f6
                         cmp             eax, 0x03                    // 0x006daba6    83f803
                         {disp8} ja      _jmp_addr_0x006dabc4         // 0x006daba9    7719
                         jmp             dword ptr [eax*4 + 0x6dabc8] // 0x006dabab    ff2485c8ab6d00
                         mov             eax, 0x00000003              // 0x006dabb2    b803000000
                         ret                                          // 0x006dabb7    c3
                         mov             eax, 0x00000007              // 0x006dabb8    b807000000
                         ret                                          // 0x006dabbd    c3
                         mov             eax, 0x00000004              // 0x006dabbe    b804000000
                         ret                                          // 0x006dabc3    c3
_jmp_addr_0x006dabc4:    xor.s           eax, eax                     // 0x006dabc4    33c0
                         ret                                          // 0x006dabc6    c3

// Snippet: db, [0x006dabc7, 0x006dabc8)
.byte 0x90                        // 0x006dabc7

// Snippet: jmptbl, [0x006dabc8, 0x006dabd8)
.byte 0xb2, 0xab, 0x6d, 0x00      // 0x006dabc8
.byte 0xb8, 0xab, 0x6d, 0x00      // 0x006dabcc
.byte 0xbe, 0xab, 0x6d, 0x00      // 0x006dabd0
.byte 0xbe, 0xab, 0x6d, 0x00      // 0x006dabd4

// Snippet: db, [0x006dabd8, 0x006dabe0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dabd8
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dabdc

