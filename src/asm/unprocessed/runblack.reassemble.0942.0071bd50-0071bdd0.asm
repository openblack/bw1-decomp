.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?LocalRand@GRand@@SAIJ@Z

.globl ?GetSampleForAttack@Creature@@UAEIXZ


start_0x0071bd50_0x0071bdd0:
// Snippet: asm, [0x0071bd50, 0x0071bda5)
?GetSampleForAttack@Creature@@UAEIXZ:
                         push           0xa                          // 0x0071bd50    6a0a
                         call           ?LocalRand@GRand@@SAIJ@Z     // 0x0071bd52    e81928fcff
                         add            esp, 0x04                    // 0x0071bd57    83c404
                         cmp            eax, 0x09                    // 0x0071bd5a    83f809
                         {disp8} ja     _jmp_addr_0x0071bda2         // 0x0071bd5d    7743
                         jmp            dword ptr [eax*4 + 0x71bda8] // 0x0071bd5f    ff2485a8bd7100
                         mov            eax, 0x00001338              // 0x0071bd66    b838130000
                         ret                                         // 0x0071bd6b    c3
                         mov            eax, 0x00001339              // 0x0071bd6c    b839130000
                         ret                                         // 0x0071bd71    c3
                         mov            eax, 0x0000133a              // 0x0071bd72    b83a130000
                         ret                                         // 0x0071bd77    c3
                         mov            eax, 0x0000133b              // 0x0071bd78    b83b130000
                         ret                                         // 0x0071bd7d    c3
                         mov            eax, 0x0000133c              // 0x0071bd7e    b83c130000
                         ret                                         // 0x0071bd83    c3
                         mov            eax, 0x0000133d              // 0x0071bd84    b83d130000
                         ret                                         // 0x0071bd89    c3
                         mov            eax, 0x0000133e              // 0x0071bd8a    b83e130000
                         ret                                         // 0x0071bd8f    c3
                         mov            eax, 0x0000133f              // 0x0071bd90    b83f130000
                         ret                                         // 0x0071bd95    c3
                         mov            eax, 0x00001340              // 0x0071bd96    b840130000
                         ret                                         // 0x0071bd9b    c3
                         mov            eax, 0x00001341              // 0x0071bd9c    b841130000
                         ret                                         // 0x0071bda1    c3
_jmp_addr_0x0071bda2:    xor.s          eax, eax                     // 0x0071bda2    33c0
                         ret                                         // 0x0071bda4    c3

// Snippet: db, [0x0071bda5, 0x0071bda8)
.byte 0x8d, 0x49, 0x00            // 0x0071bda5

// Snippet: jmptbl, [0x0071bda8, 0x0071bdd0)
.byte 0x66, 0xbd, 0x71, 0x00      // 0x0071bda8
.byte 0x6c, 0xbd, 0x71, 0x00      // 0x0071bdac
.byte 0x72, 0xbd, 0x71, 0x00      // 0x0071bdb0
.byte 0x78, 0xbd, 0x71, 0x00      // 0x0071bdb4
.byte 0x7e, 0xbd, 0x71, 0x00      // 0x0071bdb8
.byte 0x84, 0xbd, 0x71, 0x00      // 0x0071bdbc
.byte 0x8a, 0xbd, 0x71, 0x00      // 0x0071bdc0
.byte 0x90, 0xbd, 0x71, 0x00      // 0x0071bdc4
.byte 0x96, 0xbd, 0x71, 0x00      // 0x0071bdc8
.byte 0x9c, 0xbd, 0x71, 0x00      // 0x0071bdcc

