.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007ca6ec


start_0x007ca700_0x007ca790:
// Snippet: asm, [0x007ca700, 0x007ca769)
                         and.s           edx, ecx                     // 0x007ca700    23d1
                         mov             al, byte ptr [esi]           // 0x007ca702    8a06
                         mov             byte ptr [edi], al           // 0x007ca704    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]    // 0x007ca706    8a4601
                         {disp8} mov     byte ptr [edi + 0x01], al    // 0x007ca709    884701
                         {disp8} mov     al, byte ptr [esi + 0x02]    // 0x007ca70c    8a4602
                         shr             ecx, 2                       // 0x007ca70f    c1e902
                         {disp8} mov     byte ptr [edi + 0x02], al    // 0x007ca712    884702
                         add             esi, 0x03                    // 0x007ca715    83c603
                         add             edi, 0x03                    // 0x007ca718    83c703
                         cmp             ecx, 0x08                    // 0x007ca71b    83f908
                         .byte           0x72, 0xcc// {disp8} jb _jmp_addr_0x007ca6ec // 0x007ca71e    72cc
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007ca720    f3a5
                         jmp             dword ptr [edx*4 + 0x7ca7d8] // 0x007ca722    ff2495d8a77c00
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]  // 0x007ca729    8d4900
                         and.s           edx, ecx                     // 0x007ca72c    23d1
                         mov             al, byte ptr [esi]           // 0x007ca72e    8a06
                         mov             byte ptr [edi], al           // 0x007ca730    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]    // 0x007ca732    8a4601
                         shr             ecx, 2                       // 0x007ca735    c1e902
                         {disp8} mov     byte ptr [edi + 0x01], al    // 0x007ca738    884701
                         add             esi, 0x02                    // 0x007ca73b    83c602
                         add             edi, 0x02                    // 0x007ca73e    83c702
                         cmp             ecx, 0x08                    // 0x007ca741    83f908
                         .byte           0x72, 0xa6// {disp8} jb _jmp_addr_0x007ca6ec // 0x007ca744    72a6
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007ca746    f3a5
                         jmp             dword ptr [edx*4 + 0x7ca7d8] // 0x007ca748    ff2495d8a77c00
                         nop                                          // 0x007ca74f    90
                         and.s           edx, ecx                     // 0x007ca750    23d1
                         mov             al, byte ptr [esi]           // 0x007ca752    8a06
                         mov             byte ptr [edi], al           // 0x007ca754    8807
                         inc             esi                          // 0x007ca756    46
                         shr             ecx, 2                       // 0x007ca757    c1e902
                         inc             edi                          // 0x007ca75a    47
                         cmp             ecx, 0x08                    // 0x007ca75b    83f908
                         .byte           0x72, 0x8c// {disp8} jb _jmp_addr_0x007ca6ec // 0x007ca75e    728c
                         rep movsd       es:[edi], dword ptr ds:[esi] // 0x007ca760    f3a5
                         jmp             dword ptr [edx*4 + 0x7ca7d8] // 0x007ca762    ff2495d8a77c00

// Snippet: db, [0x007ca769, 0x007ca76c)
.byte 0x8d, 0x49, 0x00            // 0x007ca769

// Snippet: jmptbl, [0x007ca76c, 0x007ca78c)
.byte 0xcf, 0xa7, 0x7c, 0x00      // 0x007ca76c
.byte 0xbc, 0xa7, 0x7c, 0x00      // 0x007ca770
.byte 0xb4, 0xa7, 0x7c, 0x00      // 0x007ca774
.byte 0xac, 0xa7, 0x7c, 0x00      // 0x007ca778
.byte 0xa4, 0xa7, 0x7c, 0x00      // 0x007ca77c
.byte 0x9c, 0xa7, 0x7c, 0x00      // 0x007ca780
.byte 0x94, 0xa7, 0x7c, 0x00      // 0x007ca784
.byte 0x8c, 0xa7, 0x7c, 0x00      // 0x007ca788

// Snippet: db, [0x007ca78c, 0x007ca790)
.byte 0x8b, 0x44, 0x8e, 0xe4      // 0x007ca78c

