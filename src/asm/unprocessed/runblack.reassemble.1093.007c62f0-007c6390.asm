.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007c62b0

start_0x007c62f0_0x007c6390:
// Snippet: asm, [0x007c62f0, 0x007c6361)
                         dec             esi                          // 0x007c62f0    4e
                         shr             ecx, 2                       // 0x007c62f1    c1e902
                         dec             edi                          // 0x007c62f4    4f
                         cmp             ecx, 0x08                    // 0x007c62f5    83f908
                         .byte           0x72, 0xb6// {disp8} jb _jmp_addr_0x007c62b0 // 0x007c62f8    72b6
                         std                                          // 0x007c62fa    fd
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007c62fb    f3a5
                         cld                                          // 0x007c62fd    fc
                         jmp             dword ptr [edx*4 + 0x7c63d0] // 0x007c62fe    ff2495d0637c00
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]  // 0x007c6305    8d4900
                         {disp8} mov     al, byte ptr [esi + 0x03]    // 0x007c6308    8a4603
                         and.s           edx, ecx                     // 0x007c630b    23d1
                         {disp8} mov     byte ptr [edi + 0x03], al    // 0x007c630d    884703
                         {disp8} mov     al, byte ptr [esi + 0x02]    // 0x007c6310    8a4602
                         shr             ecx, 2                       // 0x007c6313    c1e902
                         {disp8} mov     byte ptr [edi + 0x02], al    // 0x007c6316    884702
                         sub             esi, 0x02                    // 0x007c6319    83ee02
                         sub             edi, 0x02                    // 0x007c631c    83ef02
                         cmp             ecx, 0x08                    // 0x007c631f    83f908
                         .byte           0x72, 0x8c// {disp8} jb _jmp_addr_0x007c62b0 // 0x007c6322    728c
                         std                                          // 0x007c6324    fd
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007c6325    f3a5
                         cld                                          // 0x007c6327    fc
                         jmp             dword ptr [edx*4 + 0x7c63d0] // 0x007c6328    ff2495d0637c00
                         nop                                          // 0x007c632f    90
                         {disp8} mov     al, byte ptr [esi + 0x03]    // 0x007c6330    8a4603
                         and.s           edx, ecx                     // 0x007c6333    23d1
                         {disp8} mov     byte ptr [edi + 0x03], al    // 0x007c6335    884703
                         {disp8} mov     al, byte ptr [esi + 0x02]    // 0x007c6338    8a4602
                         {disp8} mov     byte ptr [edi + 0x02], al    // 0x007c633b    884702
                         {disp8} mov     al, byte ptr [esi + 0x01]    // 0x007c633e    8a4601
                         shr             ecx, 2                       // 0x007c6341    c1e902
                         {disp8} mov     byte ptr [edi + 0x01], al    // 0x007c6344    884701
                         sub             esi, 0x03                    // 0x007c6347    83ee03
                         sub             edi, 0x03                    // 0x007c634a    83ef03
                         cmp             ecx, 0x08                    // 0x007c634d    83f908
                         {disp32} jb     _jmp_addr_0x007c62b0         // 0x007c6350    0f825affffff
                         std                                          // 0x007c6356    fd
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007c6357    f3a5
                         cld                                          // 0x007c6359    fc
                         jmp             dword ptr [edx*4 + 0x7c63d0] // 0x007c635a    ff2495d0637c00

// Snippet: db, [0x007c6361, 0x007c6364)
.byte 0x8d, 0x49, 0x00            // 0x007c6361

// Snippet: jmptbl, [0x007c6364, 0x007c6384)
.byte 0x84, 0x63, 0x7c, 0x00      // 0x007c6364
.byte 0x8c, 0x63, 0x7c, 0x00      // 0x007c6368
.byte 0x94, 0x63, 0x7c, 0x00      // 0x007c636c
.byte 0x9c, 0x63, 0x7c, 0x00      // 0x007c6370
.byte 0xa4, 0x63, 0x7c, 0x00      // 0x007c6374
.byte 0xac, 0x63, 0x7c, 0x00      // 0x007c6378
.byte 0xb4, 0x63, 0x7c, 0x00      // 0x007c637c
.byte 0xc7, 0x63, 0x7c, 0x00      // 0x007c6380

// Snippet: db, [0x007c6384, 0x007c6390)
.byte 0x8b, 0x44, 0x8e, 0x1c      // 0x007c6384
.byte 0x89, 0x44, 0x8f, 0x1c      // 0x007c6388
.byte 0x8b, 0x44, 0x8e, 0x18      // 0x007c638c

