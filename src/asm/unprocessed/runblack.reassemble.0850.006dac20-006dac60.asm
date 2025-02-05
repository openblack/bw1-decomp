.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x006dac20

start_0x006dac20_0x006dac60:
// Snippet: asm, [0x006dac20, 0x006dac4d)
_jmp_addr_0x006dac20:    {disp8} mov     ecx, dword ptr [ecx + 0x48]  // 0x006dac20    8b4948
                         {disp8} lea     eax, dword ptr [ecx + -0x0a] // 0x006dac23    8d41f6
                         cmp             eax, 0x03                    // 0x006dac26    83f803
                         {disp8} ja      _jmp_addr_0x006dac4a         // 0x006dac29    771f
                         jmp             dword ptr [eax*4 + 0x6dac50] // 0x006dac2b    ff248550ac6d00
                         mov             eax, 0x00000005              // 0x006dac32    b805000000
                         ret                                          // 0x006dac37    c3
                         mov             eax, 0x00000006              // 0x006dac38    b806000000
                         ret                                          // 0x006dac3d    c3
                         mov             eax, 0x00000003              // 0x006dac3e    b803000000
                         ret                                          // 0x006dac43    c3
                         mov             eax, 0x00000004              // 0x006dac44    b804000000
                         ret                                          // 0x006dac49    c3
_jmp_addr_0x006dac4a:    xor.s           eax, eax                     // 0x006dac4a    33c0
                         ret                                          // 0x006dac4c    c3

// Snippet: db, [0x006dac4d, 0x006dac50)
.byte 0x8d, 0x49, 0x00            // 0x006dac4d

// Snippet: jmptbl, [0x006dac50, 0x006dac60)
.byte 0x32, 0xac, 0x6d, 0x00      // 0x006dac50
.byte 0x38, 0xac, 0x6d, 0x00      // 0x006dac54
.byte 0x3e, 0xac, 0x6d, 0x00      // 0x006dac58
.byte 0x44, 0xac, 0x6d, 0x00      // 0x006dac5c

