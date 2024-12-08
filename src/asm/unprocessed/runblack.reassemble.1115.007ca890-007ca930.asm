.intel_syntax noprefix

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007ca850


start_0x007ca890_0x007ca930:
// Snippet: asm, [0x007ca890, 0x007ca901)
                         dec             esi                          // 0x007ca890    4e
                         shr             ecx, 2                       // 0x007ca891    c1e902
                         dec             edi                          // 0x007ca894    4f
                         cmp             ecx, 0x08                    // 0x007ca895    83f908
                         .byte           0x72, 0xb6// {disp8} jb _jmp_addr_0x007ca850 // 0x007ca898    72b6
                         std                                          // 0x007ca89a    fd
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007ca89b    f3a5
                         cld                                          // 0x007ca89d    fc
                         jmp             dword ptr [edx*4 + 0x7ca970] // 0x007ca89e    ff249570a97c00
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]  // 0x007ca8a5    8d4900
                         {disp8} mov     al, byte ptr [esi + 0x03]    // 0x007ca8a8    8a4603
                         and.s           edx, ecx                     // 0x007ca8ab    23d1
                         {disp8} mov     byte ptr [edi + 0x03], al    // 0x007ca8ad    884703
                         {disp8} mov     al, byte ptr [esi + 0x02]    // 0x007ca8b0    8a4602
                         shr             ecx, 2                       // 0x007ca8b3    c1e902
                         {disp8} mov     byte ptr [edi + 0x02], al    // 0x007ca8b6    884702
                         sub             esi, 0x02                    // 0x007ca8b9    83ee02
                         sub             edi, 0x02                    // 0x007ca8bc    83ef02
                         cmp             ecx, 0x08                    // 0x007ca8bf    83f908
                         .byte           0x72, 0x8c// {disp8} jb _jmp_addr_0x007ca850 // 0x007ca8c2    728c
                         std                                          // 0x007ca8c4    fd
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007ca8c5    f3a5
                         cld                                          // 0x007ca8c7    fc
                         jmp             dword ptr [edx*4 + 0x7ca970] // 0x007ca8c8    ff249570a97c00
                         nop                                          // 0x007ca8cf    90
                         {disp8} mov     al, byte ptr [esi + 0x03]    // 0x007ca8d0    8a4603
                         and.s           edx, ecx                     // 0x007ca8d3    23d1
                         {disp8} mov     byte ptr [edi + 0x03], al    // 0x007ca8d5    884703
                         {disp8} mov     al, byte ptr [esi + 0x02]    // 0x007ca8d8    8a4602
                         {disp8} mov     byte ptr [edi + 0x02], al    // 0x007ca8db    884702
                         {disp8} mov     al, byte ptr [esi + 0x01]    // 0x007ca8de    8a4601
                         shr             ecx, 2                       // 0x007ca8e1    c1e902
                         {disp8} mov     byte ptr [edi + 0x01], al    // 0x007ca8e4    884701
                         sub             esi, 0x03                    // 0x007ca8e7    83ee03
                         sub             edi, 0x03                    // 0x007ca8ea    83ef03
                         cmp             ecx, 0x08                    // 0x007ca8ed    83f908
                         {disp32} jb     _jmp_addr_0x007ca850         // 0x007ca8f0    0f825affffff
                         std                                          // 0x007ca8f6    fd
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007ca8f7    f3a5
                         cld                                          // 0x007ca8f9    fc
                         jmp             dword ptr [edx*4 + 0x7ca970] // 0x007ca8fa    ff249570a97c00

// Snippet: db, [0x007ca901, 0x007ca904)
.byte 0x8d, 0x49, 0x00            // 0x007ca901

// Snippet: jmptbl, [0x007ca904, 0x007ca924)
.byte 0x24, 0xa9, 0x7c, 0x00      // 0x007ca904
.byte 0x2c, 0xa9, 0x7c, 0x00      // 0x007ca908
.byte 0x34, 0xa9, 0x7c, 0x00      // 0x007ca90c
.byte 0x3c, 0xa9, 0x7c, 0x00      // 0x007ca910
.byte 0x44, 0xa9, 0x7c, 0x00      // 0x007ca914
.byte 0x4c, 0xa9, 0x7c, 0x00      // 0x007ca918
.byte 0x54, 0xa9, 0x7c, 0x00      // 0x007ca91c
.byte 0x67, 0xa9, 0x7c, 0x00      // 0x007ca920

// Snippet: db, [0x007ca924, 0x007ca930)
.byte 0x8b, 0x44, 0x8e, 0x1c      // 0x007ca924
.byte 0x89, 0x44, 0x8f, 0x1c      // 0x007ca928
.byte 0x8b, 0x44, 0x8e, 0x18      // 0x007ca92c

