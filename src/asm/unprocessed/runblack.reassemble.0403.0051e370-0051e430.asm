.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0051dce0
.extern _jmp_addr_0x0051dd60
.extern _jmp_addr_0x0051e430
.extern _jmp_addr_0x0051e500
.extern _jmp_addr_0x0051ea10

.globl ?ClickFunction@AnimEdit@@UAEXHHH@Z


start_0x0051e370_0x0051e430:
// Snippet: asm, [0x0051e370, 0x0051e40f)
?ClickFunction@AnimEdit@@UAEXHHH@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x0051e370    8b442404
                         dec              eax                                      // 0x0051e374    48
                         cmp              eax, 0x06                                // 0x0051e375    83f806
                         push             esi                                      // 0x0051e378    56
                         mov.s            esi, ecx                                 // 0x0051e379    8bf1
                         {disp32} ja      _jmp_addr_0x0051e40b                     // 0x0051e37b    0f878a000000
                         jmp              dword ptr [eax*4 + 0x51e410]             // 0x0051e381    ff248510e45100
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x0051e388    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]              // 0x0051e38c    8b54240c
                         push             ecx                                      // 0x0051e390    51
                         push             edx                                      // 0x0051e391    52
                         mov.s            ecx, esi                                 // 0x0051e392    8bce
                         call             _jmp_addr_0x0051e500                     // 0x0051e394    e867010000
                         pop              esi                                      // 0x0051e399    5e
                         ret              0x000c                                   // 0x0051e39a    c20c00
                         cmp              dword ptr [esp + 0x0c], 0x01             // 0x0051e39d    837c240c01
                         {disp8} jne      _jmp_addr_0x0051e40b                     // 0x0051e3a2    7567
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x0051e3a4    8b442410
                         mov.s            ecx, esi                                 // 0x0051e3a8    8bce
                         {disp8} mov      dword ptr [esi + 0x14], eax              // 0x0051e3aa    894614
                         call             _jmp_addr_0x0051dce0                     // 0x0051e3ad    e82ef9ffff
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf2c0]   // 0x0051e3b2    a1c052e800
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf2c4]   // 0x0051e3b7    8b0dc452e800
                         {disp8} mov      dword ptr [esi + 0x18], eax              // 0x0051e3bd    894618
                         {disp8} mov      dword ptr [esi + 0x1c], ecx              // 0x0051e3c0    894e1c
                         pop              esi                                      // 0x0051e3c3    5e
                         ret              0x000c                                   // 0x0051e3c4    c20c00
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x0051e3c7    8b442410
                         xor              dword ptr [esi + eax * 0x4 + 0x30], 0x01 // 0x0051e3cb    8374863001
                         {disp8} je       _jmp_addr_0x0051e40b                     // 0x0051e3d0    7439
                         {disp32} mov     ecx, dword ptr [esi + 0x00000240]        // 0x0051e3d2    8b8e40020000
                         push             ecx                                      // 0x0051e3d8    51
                         push             eax                                      // 0x0051e3d9    50
                         mov.s            ecx, esi                                 // 0x0051e3da    8bce
                         call             _jmp_addr_0x0051ea10                     // 0x0051e3dc    e82f060000
                         {disp32} mov     dword ptr [esi + 0x00000238], eax        // 0x0051e3e1    898638020000
                         pop              esi                                      // 0x0051e3e7    5e
                         ret              0x000c                                   // 0x0051e3e8    c20c00
                         mov.s            ecx, esi                                 // 0x0051e3eb    8bce
                         call             _jmp_addr_0x0051dd60                     // 0x0051e3ed    e86ef9ffff
                         pop              esi                                      // 0x0051e3f2    5e
                         ret              0x000c                                   // 0x0051e3f3    c20c00
                         {disp8} mov      edx, dword ptr [esp + 0x10]              // 0x0051e3f6    8b542410
                         {disp32} mov     dword ptr [esi + 0x00000234], edx        // 0x0051e3fa    899634020000
                         pop              esi                                      // 0x0051e400    5e
                         ret              0x000c                                   // 0x0051e401    c20c00
                         mov.s            ecx, esi                                 // 0x0051e404    8bce
                         call             _jmp_addr_0x0051e430                     // 0x0051e406    e825000000
_jmp_addr_0x0051e40b:    pop              esi                                      // 0x0051e40b    5e
                         ret              0x000c                                   // 0x0051e40c    c20c00

// Snippet: db, [0x0051e40f, 0x0051e410)
.byte 0x90                        // 0x0051e40f

// Snippet: jmptbl, [0x0051e410, 0x0051e42c)
.byte 0x88, 0xe3, 0x51, 0x00      // 0x0051e410
.byte 0xc7, 0xe3, 0x51, 0x00      // 0x0051e414
.byte 0x0b, 0xe4, 0x51, 0x00      // 0x0051e418
.byte 0xf6, 0xe3, 0x51, 0x00      // 0x0051e41c
.byte 0x04, 0xe4, 0x51, 0x00      // 0x0051e420
.byte 0xeb, 0xe3, 0x51, 0x00      // 0x0051e424
.byte 0x9d, 0xe3, 0x51, 0x00      // 0x0051e428

// Snippet: db, [0x0051e42c, 0x0051e430)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0051e42c

