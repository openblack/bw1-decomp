.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x007c6288
.globl _jmp_addr_0x007c62b0

start_0x007c6250_0x007c62f0:
// Snippet: asm, [0x007c6250, 0x007c62db)
                         mov             al, byte ptr [esi]                       // 0x007c6250    8a06
                         mov             byte ptr [edi], al                       // 0x007c6252    8807
                         {disp8} mov     eax, dword ptr [ebp + 0x08]              // 0x007c6254    8b4508
                         pop             esi                                      // 0x007c6257    5e
                         pop             edi                                      // 0x007c6258    5f
                         leave                                                    // 0x007c6259    c9
                         ret                                                      // 0x007c625a    c3
                         nop                                                      // 0x007c625b    90
                         mov             al, byte ptr [esi]                       // 0x007c625c    8a06
                         mov             byte ptr [edi], al                       // 0x007c625e    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]                // 0x007c6260    8a4601
                         {disp8} mov     byte ptr [edi + 0x01], al                // 0x007c6263    884701
                         {disp8} mov     eax, dword ptr [ebp + 0x08]              // 0x007c6266    8b4508
                         pop             esi                                      // 0x007c6269    5e
                         pop             edi                                      // 0x007c626a    5f
                         leave                                                    // 0x007c626b    c9
                         ret                                                      // 0x007c626c    c3
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]              // 0x007c626d    8d4900
                         mov             al, byte ptr [esi]                       // 0x007c6270    8a06
                         mov             byte ptr [edi], al                       // 0x007c6272    8807
                         {disp8} mov     al, byte ptr [esi + 0x01]                // 0x007c6274    8a4601
                         {disp8} mov     byte ptr [edi + 0x01], al                // 0x007c6277    884701
                         {disp8} mov     al, byte ptr [esi + 0x02]                // 0x007c627a    8a4602
                         {disp8} mov     byte ptr [edi + 0x02], al                // 0x007c627d    884702
                         {disp8} mov     eax, dword ptr [ebp + 0x08]              // 0x007c6280    8b4508
                         pop             esi                                      // 0x007c6283    5e
                         pop             edi                                      // 0x007c6284    5f
                         leave                                                    // 0x007c6285    c9
                         ret                                                      // 0x007c6286    c3
                         nop                                                      // 0x007c6287    90
_jmp_addr_0x007c6288:    {disp8} lea     esi, dword ptr [ecx + esi * 0x1 + -0x04] // 0x007c6288    8d7431fc
                         {disp8} lea     edi, dword ptr [ecx + edi * 0x1 + -0x04] // 0x007c628c    8d7c39fc
                         test            edi, 0x00000003                          // 0x007c6290    f7c703000000
                         {disp8} jne     _jmp_addr_0x007c62bc                     // 0x007c6296    7524
                         shr             ecx, 2                                   // 0x007c6298    c1e902
                         and             edx, 0x03                                // 0x007c629b    83e203
                         cmp             ecx, 0x08                                // 0x007c629e    83f908
                         .byte           0x72, 0xd// {disp8} jb _jmp_addr_0x007c62b0 // 0x007c62a1    720d
                         std                                                      // 0x007c62a3    fd
                         rep movsd       es:[edi], dword ptr ds:[esi]             // 0x007c62a4    f3a5
                         cld                                                      // 0x007c62a6    fc
                         jmp             dword ptr [edx*4 + 0x7c63d0]             // 0x007c62a7    ff2495d0637c00
                         mov.s           edi, edi                                 // 0x007c62ae    8bff
_jmp_addr_0x007c62b0:    neg             ecx                                      // 0x007c62b0    f7d9
                         jmp             dword ptr [ecx*4 + 0x7c6380]             // 0x007c62b2    ff248d80637c00
                         {disp8} lea     ecx, dword ptr [ecx + 0x00]              // 0x007c62b9    8d4900
_jmp_addr_0x007c62bc:    mov.s           eax, edi                                 // 0x007c62bc    8bc7
                         mov             edx, 0x00000003                          // 0x007c62be    ba03000000
                         cmp             ecx, 0x04                                // 0x007c62c3    83f904
                         .byte           0x72, 0xc// {disp8} jb _jmp_addr_0x007c62d4 // 0x007c62c6    720c
                         and             eax, 0x03                                // 0x007c62c8    83e003
                         sub.s           ecx, eax                                 // 0x007c62cb    2bc8
                         jmp             dword ptr [eax*4 + 0x7c62d8]             // 0x007c62cd    ff2485d8627c00
_jmp_addr_0x007c62d4:    jmp             dword ptr [ecx*4 + 0x7c63d0]             // 0x007c62d4    ff248dd0637c00

// Snippet: db, [0x007c62db, 0x007c62dc)
.byte 0x90                        // 0x007c62db

// Snippet: jmptbl, [0x007c62dc, 0x007c62e8)
.byte 0xe8, 0x62, 0x7c, 0x00      // 0x007c62dc
.byte 0x08, 0x63, 0x7c, 0x00      // 0x007c62e0
.byte 0x30, 0x63, 0x7c, 0x00      // 0x007c62e4

// Snippet: db, [0x007c62e8, 0x007c62f0)
.byte 0x8a, 0x46, 0x03, 0x23      // 0x007c62e8
.byte 0xd1, 0x88, 0x47, 0x03      // 0x007c62ec

