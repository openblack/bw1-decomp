.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?LocalRand@GRand@@SAIJ@Z

.globl ?GetSampleForAttack@Rock@@UAEIXZ


start_0x0071bcd0_0x0071bd50:
// Snippet: asm, [0x0071bcd0, 0x0071bd25)
?GetSampleForAttack@Rock@@UAEIXZ:
                         push           0xa                          // 0x0071bcd0    6a0a
                         call           ?LocalRand@GRand@@SAIJ@Z     // 0x0071bcd2    e89928fcff
                         add            esp, 0x04                    // 0x0071bcd7    83c404
                         cmp            eax, 0x09                    // 0x0071bcda    83f809
                         {disp8} ja     _jmp_addr_0x0071bd22         // 0x0071bcdd    7743
                         jmp            dword ptr [eax*4 + 0x71bd28] // 0x0071bcdf    ff248528bd7100
                         mov            eax, 0x00001342              // 0x0071bce6    b842130000
                         ret                                         // 0x0071bceb    c3
                         mov            eax, 0x00001343              // 0x0071bcec    b843130000
                         ret                                         // 0x0071bcf1    c3
                         mov            eax, 0x00001344              // 0x0071bcf2    b844130000
                         ret                                         // 0x0071bcf7    c3
                         mov            eax, 0x00001345              // 0x0071bcf8    b845130000
                         ret                                         // 0x0071bcfd    c3
                         mov            eax, 0x00001346              // 0x0071bcfe    b846130000
                         ret                                         // 0x0071bd03    c3
                         mov            eax, 0x00001347              // 0x0071bd04    b847130000
                         ret                                         // 0x0071bd09    c3
                         mov            eax, 0x00001348              // 0x0071bd0a    b848130000
                         ret                                         // 0x0071bd0f    c3
                         mov            eax, 0x00001349              // 0x0071bd10    b849130000
                         ret                                         // 0x0071bd15    c3
                         mov            eax, 0x0000134a              // 0x0071bd16    b84a130000
                         ret                                         // 0x0071bd1b    c3
                         mov            eax, 0x0000134b              // 0x0071bd1c    b84b130000
                         ret                                         // 0x0071bd21    c3
_jmp_addr_0x0071bd22:    xor.s          eax, eax                     // 0x0071bd22    33c0
                         ret                                         // 0x0071bd24    c3

// Snippet: db, [0x0071bd25, 0x0071bd28)
.byte 0x8d, 0x49, 0x00            // 0x0071bd25

// Snippet: jmptbl, [0x0071bd28, 0x0071bd50)
.byte 0xe6, 0xbc, 0x71, 0x00      // 0x0071bd28
.byte 0xec, 0xbc, 0x71, 0x00      // 0x0071bd2c
.byte 0xf2, 0xbc, 0x71, 0x00      // 0x0071bd30
.byte 0xf8, 0xbc, 0x71, 0x00      // 0x0071bd34
.byte 0xfe, 0xbc, 0x71, 0x00      // 0x0071bd38
.byte 0x04, 0xbd, 0x71, 0x00      // 0x0071bd3c
.byte 0x0a, 0xbd, 0x71, 0x00      // 0x0071bd40
.byte 0x10, 0xbd, 0x71, 0x00      // 0x0071bd44
.byte 0x16, 0xbd, 0x71, 0x00      // 0x0071bd48
.byte 0x1c, 0xbd, 0x71, 0x00      // 0x0071bd4c

