.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ

.globl _jmp_addr_0x0047d470
.globl ?CreatureMustAvoid@Creature@@UAE_NPAVCreature@@@Z

start_0x0047d470_0x0047d500:
// Snippet: asm, [0x0047d470, 0x0047d4e6)
_jmp_addr_0x0047d470:    call             ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ     // 0x0047d470    e8dba3ffff
                         mov.s            ecx, eax                          // 0x0047d475    8bc8
                         {disp32} mov     edx, dword ptr [ecx + 0x00004ac0] // 0x0047d477    8b91c04a0000
                         xor.s            eax, eax                          // 0x0047d47d    33c0
                         test             edx, edx                          // 0x0047d47f    85d2
                         {disp8} jle      _jmp_addr_0x0047d4a2              // 0x0047d481    7e1f
                         push             esi                               // 0x0047d483    56
                         {disp32} lea     esi, dword ptr [ecx + 0x00004ac4] // 0x0047d484    8db1c44a0000
_jmp_addr_0x0047d48a:    mov              ecx, dword ptr [esi]              // 0x0047d48a    8b0e
                         test             ecx, ecx                          // 0x0047d48c    85c9
                         {disp8} je       _jmp_addr_0x0047d49a              // 0x0047d48e    740a
                         cmp              ecx, 0x01                         // 0x0047d490    83f901
                         {disp8} je       _jmp_addr_0x0047d49a              // 0x0047d493    7405
                         cmp              ecx, 0x02                         // 0x0047d495    83f902
                         {disp8} jne      _jmp_addr_0x0047d49b              // 0x0047d498    7501
_jmp_addr_0x0047d49a:    inc              eax                               // 0x0047d49a    40
_jmp_addr_0x0047d49b:    add              esi, 0x04                         // 0x0047d49b    83c604
                         dec              edx                               // 0x0047d49e    4a
                         {disp8} jne      _jmp_addr_0x0047d48a              // 0x0047d49f    75e9
                         pop              esi                               // 0x0047d4a1    5e
_jmp_addr_0x0047d4a2:    ret                                                // 0x0047d4a2    c3
                         nop                                                // 0x0047d4a3    90
                         nop                                                // 0x0047d4a4    90
                         nop                                                // 0x0047d4a5    90
                         nop                                                // 0x0047d4a6    90
                         nop                                                // 0x0047d4a7    90
                         nop                                                // 0x0047d4a8    90
                         nop                                                // 0x0047d4a9    90
                         nop                                                // 0x0047d4aa    90
                         nop                                                // 0x0047d4ab    90
                         nop                                                // 0x0047d4ac    90
                         nop                                                // 0x0047d4ad    90
                         nop                                                // 0x0047d4ae    90
                         nop                                                // 0x0047d4af    90
?CreatureMustAvoid@Creature@@UAE_NPAVCreature@@@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x04]       // 0x0047d4b0    8b442404
                         test             eax, eax                          // 0x0047d4b4    85c0
                         {disp8} je       _jmp_addr_0x0047d4e1              // 0x0047d4b6    7429
                         cmp.s            eax, ecx                          // 0x0047d4b8    3bc1
                         {disp8} je       _jmp_addr_0x0047d4e1              // 0x0047d4ba    7425
                         call             ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ     // 0x0047d4bc    e88fa3ffff
                         {disp32} mov     eax, dword ptr [eax + 0x00005198] // 0x0047d4c1    8b8098510000
                         {disp32} mov     eax, dword ptr [eax + 0x00064054] // 0x0047d4c7    8b8054400600
                         cmp              eax, 0x04                         // 0x0047d4cd    83f804
                         {disp8} ja       _jmp_addr_0x0047d4e1              // 0x0047d4d0    770f
                         jmp              dword ptr [eax*4 + 0x47d4e8]      // 0x0047d4d2    ff2485e8d44700
                         mov              eax, 0x00000001                   // 0x0047d4d9    b801000000
                         ret              0x0004                            // 0x0047d4de    c20400
_jmp_addr_0x0047d4e1:    xor.s            eax, eax                          // 0x0047d4e1    33c0
                         ret              0x0004                            // 0x0047d4e3    c20400

// Snippet: db, [0x0047d4e6, 0x0047d4e8)
.byte 0x8b, 0xff                  // 0x0047d4e6

// Snippet: jmptbl, [0x0047d4e8, 0x0047d4fc)
.byte 0xd9, 0xd4, 0x47, 0x00      // 0x0047d4e8
.byte 0xd9, 0xd4, 0x47, 0x00      // 0x0047d4ec
.byte 0xd9, 0xd4, 0x47, 0x00      // 0x0047d4f0
.byte 0xe1, 0xd4, 0x47, 0x00      // 0x0047d4f4
.byte 0xe1, 0xd4, 0x47, 0x00      // 0x0047d4f8

// Snippet: db, [0x0047d4fc, 0x0047d500)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0047d4fc

