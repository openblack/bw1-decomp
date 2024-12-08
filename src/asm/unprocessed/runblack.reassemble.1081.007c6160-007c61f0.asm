.intel_syntax noprefix

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007c614c


start_0x007c6160_0x007c61f0:
// Snippet: asm, [0x007c6160, 0x007c61c9)
                         and.s           edx, ecx                     // 0x007c6160    23d1
                         mov             al, byte ptr [esi]           // 0x007c6162    8a06
                         mov             byte ptr [edi], al           // 0x007c6164    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]    // 0x007c6166    8a4601
                         {disp8} mov     byte ptr [edi + 0x01], al    // 0x007c6169    884701
                         {disp8} mov     al, byte ptr [esi + 0x02]    // 0x007c616c    8a4602
                         shr             ecx, 2                       // 0x007c616f    c1e902
                         {disp8} mov     byte ptr [edi + 0x02], al    // 0x007c6172    884702
                         add             esi, 0x03                    // 0x007c6175    83c603
                         add             edi, 0x03                    // 0x007c6178    83c703
                         cmp             ecx, 0x08                    // 0x007c617b    83f908
                         .byte           0x72, 0xcc// {disp8} jb _jmp_addr_0x007c614c // 0x007c617e    72cc
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007c6180    f3a5
                         jmp             dword ptr [edx*4 + 0x7c6238] // 0x007c6182    ff249538627c00
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]  // 0x007c6189    8d4900
                         and.s           edx, ecx                     // 0x007c618c    23d1
                         mov             al, byte ptr [esi]           // 0x007c618e    8a06
                         mov             byte ptr [edi], al           // 0x007c6190    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]    // 0x007c6192    8a4601
                         shr             ecx, 2                       // 0x007c6195    c1e902
                         {disp8} mov     byte ptr [edi + 0x01], al    // 0x007c6198    884701
                         add             esi, 0x02                    // 0x007c619b    83c602
                         add             edi, 0x02                    // 0x007c619e    83c702
                         cmp             ecx, 0x08                    // 0x007c61a1    83f908
                         .byte           0x72, 0xa6// {disp8} jb _jmp_addr_0x007c614c // 0x007c61a4    72a6
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007c61a6    f3a5
                         jmp             dword ptr [edx*4 + 0x7c6238] // 0x007c61a8    ff249538627c00
                         nop                                          // 0x007c61af    90
                         and.s           edx, ecx                     // 0x007c61b0    23d1
                         mov             al, byte ptr [esi]           // 0x007c61b2    8a06
                         mov             byte ptr [edi], al           // 0x007c61b4    8807
                         inc             esi                          // 0x007c61b6    46
                         shr             ecx, 2                       // 0x007c61b7    c1e902
                         inc             edi                          // 0x007c61ba    47
                         cmp             ecx, 0x08                    // 0x007c61bb    83f908
                         .byte           0x72, 0x8c// {disp8} jb _jmp_addr_0x007c614c // 0x007c61be    728c
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007c61c0    f3a5
                         jmp             dword ptr [edx*4 + 0x7c6238] // 0x007c61c2    ff249538627c00

// Snippet: db, [0x007c61c9, 0x007c61cc)
.byte 0x8d, 0x49, 0x00            // 0x007c61c9

// Snippet: jmptbl, [0x007c61cc, 0x007c61ec)
.byte 0x2f, 0x62, 0x7c, 0x00      // 0x007c61cc
.byte 0x1c, 0x62, 0x7c, 0x00      // 0x007c61d0
.byte 0x14, 0x62, 0x7c, 0x00      // 0x007c61d4
.byte 0x0c, 0x62, 0x7c, 0x00      // 0x007c61d8
.byte 0x04, 0x62, 0x7c, 0x00      // 0x007c61dc
.byte 0xfc, 0x61, 0x7c, 0x00      // 0x007c61e0
.byte 0xf4, 0x61, 0x7c, 0x00      // 0x007c61e4
.byte 0xec, 0x61, 0x7c, 0x00      // 0x007c61e8

// Snippet: db, [0x007c61ec, 0x007c61f0)
.byte 0x8b, 0x44, 0x8e, 0xe4      // 0x007c61ec

