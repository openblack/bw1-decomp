.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GameRand@GRand@@SAHJ@Z

start_0x004241b0_0x00424210:
// Snippet: asm, [0x004241b0, 0x004241f4)
                         push           0x0000033a                   // 0x004241b0    683a030000
                         push           0x009c95c0                   // 0x004241b5    68c0959c00
                         push           0x19                         // 0x004241ba    6a19
                         call           ?GameRand@GRand@@SAHJ@Z      // 0x004241bc    e84fa32b00
                         add            esp, 0x0c                    // 0x004241c1    83c40c
                         cmp            eax, 0x05                    // 0x004241c4    83f805
                         {disp8} ja     _jmp_addr_0x004241ee         // 0x004241c7    7725
                         jmp            dword ptr [eax*4 + 0x4241f4] // 0x004241c9    ff2485f4414200
                         mov            eax, 0x000000cc              // 0x004241d0    b8cc000000
                         ret                                         // 0x004241d5    c3
                         mov            eax, 0x000000cb              // 0x004241d6    b8cb000000
                         ret                                         // 0x004241db    c3
                         mov            eax, 0x000001a2              // 0x004241dc    b8a2010000
                         ret                                         // 0x004241e1    c3
                         mov            eax, 0x000000e3              // 0x004241e2    b8e3000000
                         ret                                         // 0x004241e7    c3
                         mov            eax, 0x000000ea              // 0x004241e8    b8ea000000
                         ret                                         // 0x004241ed    c3
_jmp_addr_0x004241ee:    mov            eax, 0x00000181              // 0x004241ee    b881010000
                         ret                                         // 0x004241f3    c3

// Snippet: jmptbl, [0x004241f4, 0x0042420c)
.byte 0xd0, 0x41, 0x42, 0x00      // 0x004241f4
.byte 0xd6, 0x41, 0x42, 0x00      // 0x004241f8
.byte 0xdc, 0x41, 0x42, 0x00      // 0x004241fc
.byte 0xe2, 0x41, 0x42, 0x00      // 0x00424200
.byte 0xe8, 0x41, 0x42, 0x00      // 0x00424204
.byte 0xe8, 0x41, 0x42, 0x00      // 0x00424208

// Snippet: db, [0x0042420c, 0x00424210)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0042420c

