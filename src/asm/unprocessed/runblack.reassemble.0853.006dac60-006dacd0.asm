.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x006dacd0

.globl _jmp_addr_0x006dac60

start_0x006dac60_0x006dacd0:
// Snippet: asm, [0x006dac60, 0x006dacb5)
_jmp_addr_0x006dac60:    {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x006dac60    8b54240c
                         {disp8} lea     eax, dword ptr [edx + 0x01]  // 0x006dac64    8d4201
                         cmp             eax, 0x04                    // 0x006dac67    83f804
                         {disp8} ja      _jmp_addr_0x006dacb0         // 0x006dac6a    7744
                         jmp             dword ptr [eax*4 + 0x6dacb8] // 0x006dac6c    ff2485b8ac6d00
                         {disp8} mov     eax, dword ptr [esp + 0x08]  // 0x006dac73    8b442408
                         push            edx                          // 0x006dac77    52
                         {disp8} mov     edx, dword ptr [esp + 0x08]  // 0x006dac78    8b542408
                         push            eax                          // 0x006dac7c    50
                         push            edx                          // 0x006dac7d    52
                         call            _jmp_addr_0x006dacd0         // 0x006dac7e    e84d000000
                         ret             0x000c                       // 0x006dac83    c20c00
                         {disp8} mov     eax, dword ptr [esp + 0x08]  // 0x006dac86    8b442408
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x006dac8a    8b542404
                         push            0x0                          // 0x006dac8e    6a00
                         dec             eax                          // 0x006dac90    48
                         push            eax                          // 0x006dac91    50
                         push            edx                          // 0x006dac92    52
                         call            _jmp_addr_0x006dacd0         // 0x006dac93    e838000000
                         ret             0x000c                       // 0x006dac98    c20c00
                         {disp8} mov     eax, dword ptr [esp + 0x08]  // 0x006dac9b    8b442408
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x006dac9f    8b542404
                         push            0x1                          // 0x006daca3    6a01
                         push            eax                          // 0x006daca5    50
                         dec             edx                          // 0x006daca6    4a
                         push            edx                          // 0x006daca7    52
                         call            _jmp_addr_0x006dacd0         // 0x006daca8    e823000000
                         ret             0x000c                       // 0x006dacad    c20c00
_jmp_addr_0x006dacb0:    xor.s           eax, eax                     // 0x006dacb0    33c0
                         ret             0x000c                       // 0x006dacb2    c20c00

// Snippet: db, [0x006dacb5, 0x006dacb8)
.byte 0x8d, 0x49, 0x00            // 0x006dacb5

// Snippet: jmptbl, [0x006dacb8, 0x006daccc)
.byte 0xb0, 0xac, 0x6d, 0x00      // 0x006dacb8
.byte 0x73, 0xac, 0x6d, 0x00      // 0x006dacbc
.byte 0x73, 0xac, 0x6d, 0x00      // 0x006dacc0
.byte 0x86, 0xac, 0x6d, 0x00      // 0x006dacc4
.byte 0x9b, 0xac, 0x6d, 0x00      // 0x006dacc8

// Snippet: db, [0x006daccc, 0x006dacd0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006daccc

