.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes


.globl _jmp_addr_0x007ca828
.globl _jmp_addr_0x007ca850
.globl _jmp_addr_0x007ca85c
.globl _jmp_addr_0x007ca874

start_0x007ca7f0_0x007ca890:
// Snippet: asm, [0x007ca7f0, 0x007ca87b)
                         mov             al, byte ptr [esi]                       // 0x007ca7f0    8a06
                         mov             byte ptr [edi], al                       // 0x007ca7f2    8807
                         {disp8} mov     eax, dword ptr [ebp + 0x08]              // 0x007ca7f4    8b4508
                         pop             esi                                      // 0x007ca7f7    5e
                         pop             edi                                      // 0x007ca7f8    5f
                         leave                                                    // 0x007ca7f9    c9
                         ret                                                      // 0x007ca7fa    c3
                         nop                                                      // 0x007ca7fb    90
                         mov             al, byte ptr [esi]                       // 0x007ca7fc    8a06
                         mov             byte ptr [edi], al                       // 0x007ca7fe    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]                // 0x007ca800    8a4601
                         {disp8} mov     byte ptr [edi + 0x01], al                // 0x007ca803    884701
                         {disp8} mov     eax, dword ptr [ebp + 0x08]              // 0x007ca806    8b4508
                         pop             esi                                      // 0x007ca809    5e
                         pop             edi                                      // 0x007ca80a    5f
                         leave                                                    // 0x007ca80b    c9
                         ret                                                      // 0x007ca80c    c3
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]              // 0x007ca80d    8d4900
                         mov             al, byte ptr [esi]                       // 0x007ca810    8a06
                         mov             byte ptr [edi], al                       // 0x007ca812    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]                // 0x007ca814    8a4601
                         {disp8} mov     byte ptr [edi + 0x01], al                // 0x007ca817    884701
                         {disp8} mov     al, byte ptr [esi + 0x02]                // 0x007ca81a    8a4602
                         {disp8} mov     byte ptr [edi + 0x02], al                // 0x007ca81d    884702
                         {disp8} mov     eax, dword ptr [ebp + 0x08]              // 0x007ca820    8b4508
                         pop             esi                                      // 0x007ca823    5e
                         pop             edi                                      // 0x007ca824    5f
                         leave                                                    // 0x007ca825    c9
                         ret                                                      // 0x007ca826    c3
                         nop                                                      // 0x007ca827    90
_jmp_addr_0x007ca828:    {disp8} lea     esi, dword ptr [ecx + esi * 0x1 + -0x04] // 0x007ca828    8d7431fc
                         {disp8} lea     edi, dword ptr [ecx + edi * 0x1 + -0x04] // 0x007ca82c    8d7c39fc
                         test            edi, 0x00000003                          // 0x007ca830    f7c703000000
                         {disp8} jne     _jmp_addr_0x007ca85c                     // 0x007ca836    7524
                         shr             ecx, 2                                   // 0x007ca838    c1e902
                         and             edx, 0x03                                // 0x007ca83b    83e203
                         cmp             ecx, 0x08                                // 0x007ca83e    83f908
                         .byte           0x72, 0xd// {disp8} jb _jmp_addr_0x007ca850 // 0x007ca841    720d
                         std                                                      // 0x007ca843    fd
                         rep movsd       es:[edi], dword ptr ds:[esi]             // 0x007ca844    f3a5
                         cld                                                      // 0x007ca846    fc
                         jmp             dword ptr [edx*4 + 0x7ca970]             // 0x007ca847    ff249570a97c00
                         mov.s           edi, edi                                 // 0x007ca84e    8bff
_jmp_addr_0x007ca850:    neg             ecx                                      // 0x007ca850    f7d9
                         jmp             dword ptr [ecx*4 + 0x7ca920]             // 0x007ca852    ff248d20a97c00
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]              // 0x007ca859    8d4900
_jmp_addr_0x007ca85c:    mov.s           eax, edi                                 // 0x007ca85c    8bc7
                         mov             edx, 0x00000003                          // 0x007ca85e    ba03000000
                         cmp             ecx, 0x04                                // 0x007ca863    83f904
                         .byte           0x72, 0xc// {disp8} jb _jmp_addr_0x007ca874 // 0x007ca866    720c
                         and             eax, 0x03                                // 0x007ca868    83e003
                         sub.s           ecx, eax                                 // 0x007ca86b    2bc8
                         jmp             dword ptr [eax*4 + 0x7ca878]             // 0x007ca86d    ff248578a87c00
_jmp_addr_0x007ca874:    jmp             dword ptr [ecx*4 + 0x7ca970]             // 0x007ca874    ff248d70a97c00

// Snippet: db, [0x007ca87b, 0x007ca87c)
.byte 0x90                        // 0x007ca87b

// Snippet: jmptbl, [0x007ca87c, 0x007ca888)
.byte 0x88, 0xa8, 0x7c, 0x00      // 0x007ca87c
.byte 0xa8, 0xa8, 0x7c, 0x00      // 0x007ca880
.byte 0xd0, 0xa8, 0x7c, 0x00      // 0x007ca884

// Snippet: db, [0x007ca888, 0x007ca890)
.byte 0x8a, 0x46, 0x03, 0x23      // 0x007ca888
.byte 0xd1, 0x88, 0x47, 0x03      // 0x007ca88c

