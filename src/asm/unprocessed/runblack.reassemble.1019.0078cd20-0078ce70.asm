.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x0078cd20

start_0x0078cd20_0x0078ce70:
// Snippet: asm, [0x0078cd20, 0x0078ce5b)
_jmp_addr_0x0078cd20:    {disp8} mov      eax, dword ptr [esp + 0x08]             // 0x0078cd20    8b442408
                         cmp              eax, 0x04                               // 0x0078cd24    83f804
                         push             esi                                     // 0x0078cd27    56
                         {disp32} ja      _jmp_addr_0x0078ce59                    // 0x0078cd28    0f872b010000
                         jmp              dword ptr [eax*4 + 0x78ce5c]            // 0x0078cd2e    ff24855cce7800
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x43be6c]  // 0x0078cd35    8b0d6c1ee000
                         cmp              ecx, 0x30                               // 0x0078cd3b    83f930
                         {disp32} jae     _jmp_addr_0x0078ce59                    // 0x0078cd3e    0f8315010000
                         {disp8} mov      esi, dword ptr [esp + 0x08]             // 0x0078cd44    8b742408
                         xor.s            eax, eax                                // 0x0078cd48    33c0
                         test             ecx, ecx                                // 0x0078cd4a    85c9
                         {disp8} jbe      _jmp_addr_0x0078cd63                    // 0x0078cd4c    7615
                         mov              edx, 0x00df9d1c                         // 0x0078cd4e    ba1c9ddf00
_jmp_addr_0x0078cd53:    cmp              dword ptr [edx], esi                    // 0x0078cd53    3932
                         {disp32} je      _jmp_addr_0x0078ce59                    // 0x0078cd55    0f84fe000000
                         inc              eax                                     // 0x0078cd5b    40
                         add              edx, 0x04                               // 0x0078cd5c    83c204
                         cmp.s            eax, ecx                                // 0x0078cd5f    3bc1
                         .byte            0x72, 0xf0// {disp8} jb _jmp_addr_0x0078cd53 // 0x0078cd61    72f0
_jmp_addr_0x0078cd63:    {disp32} mov     dword ptr [ecx * 0x4 + 0x00df9d1c], esi // 0x0078cd63    89348d1c9ddf00
                         inc              ecx                                     // 0x0078cd6a    41
                         {disp32} mov     dword ptr [data_bytes + 0x43be6c], ecx  // 0x0078cd6b    890d6c1ee000
                         pop              esi                                     // 0x0078cd71    5e
                         ret                                                      // 0x0078cd72    c3
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x43be70]  // 0x0078cd73    8b0d701ee000
                         cmp              ecx, 0x30                               // 0x0078cd79    83f930
                         {disp32} jae     _jmp_addr_0x0078ce59                    // 0x0078cd7c    0f83d7000000
                         {disp8} mov      esi, dword ptr [esp + 0x08]             // 0x0078cd82    8b742408
                         xor.s            eax, eax                                // 0x0078cd86    33c0
                         test             ecx, ecx                                // 0x0078cd88    85c9
                         {disp8} jbe      _jmp_addr_0x0078cda1                    // 0x0078cd8a    7615
                         mov              edx, 0x00df5c58                         // 0x0078cd8c    ba585cdf00
_jmp_addr_0x0078cd91:    cmp              dword ptr [edx], esi                    // 0x0078cd91    3932
                         {disp32} je      _jmp_addr_0x0078ce59                    // 0x0078cd93    0f84c0000000
                         inc              eax                                     // 0x0078cd99    40
                         add              edx, 0x04                               // 0x0078cd9a    83c204
                         cmp.s            eax, ecx                                // 0x0078cd9d    3bc1
                         .byte            0x72, 0xf0// {disp8} jb _jmp_addr_0x0078cd91 // 0x0078cd9f    72f0
_jmp_addr_0x0078cda1:    {disp32} mov     dword ptr [ecx * 0x4 + 0x00df5c58], esi // 0x0078cda1    89348d585cdf00
                         inc              ecx                                     // 0x0078cda8    41
                         {disp32} mov     dword ptr [data_bytes + 0x43be70], ecx  // 0x0078cda9    890d701ee000
                         pop              esi                                     // 0x0078cdaf    5e
                         ret                                                      // 0x0078cdb0    c3
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x43be74]  // 0x0078cdb1    8b0d741ee000
                         cmp              ecx, 0x30                               // 0x0078cdb7    83f930
                         {disp32} jae     _jmp_addr_0x0078ce59                    // 0x0078cdba    0f8399000000
                         {disp8} mov      esi, dword ptr [esp + 0x08]             // 0x0078cdc0    8b742408
                         xor.s            eax, eax                                // 0x0078cdc4    33c0
                         test             ecx, ecx                                // 0x0078cdc6    85c9
                         {disp8} jbe      _jmp_addr_0x0078cddf                    // 0x0078cdc8    7615
                         mov              edx, 0x00df1b94                         // 0x0078cdca    ba941bdf00
_jmp_addr_0x0078cdcf:    cmp              dword ptr [edx], esi                    // 0x0078cdcf    3932
                         {disp32} je      _jmp_addr_0x0078ce59                    // 0x0078cdd1    0f8482000000
                         inc              eax                                     // 0x0078cdd7    40
                         add              edx, 0x04                               // 0x0078cdd8    83c204
                         cmp.s            eax, ecx                                // 0x0078cddb    3bc1
                         .byte            0x72, 0xf0// {disp8} jb _jmp_addr_0x0078cdcf // 0x0078cddd    72f0
_jmp_addr_0x0078cddf:    {disp32} mov     dword ptr [ecx * 0x4 + 0x00df1b94], esi // 0x0078cddf    89348d941bdf00
                         inc              ecx                                     // 0x0078cde6    41
                         {disp32} mov     dword ptr [data_bytes + 0x43be74], ecx  // 0x0078cde7    890d741ee000
                         pop              esi                                     // 0x0078cded    5e
                         ret                                                      // 0x0078cdee    c3
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x43be78]  // 0x0078cdef    8b0d781ee000
                         cmp              ecx, 0x30                               // 0x0078cdf5    83f930
                         {disp8} jae      _jmp_addr_0x0078ce59                    // 0x0078cdf8    735f
                         {disp8} mov      esi, dword ptr [esp + 0x08]             // 0x0078cdfa    8b742408
                         xor.s            eax, eax                                // 0x0078cdfe    33c0
                         test             ecx, ecx                                // 0x0078ce00    85c9
                         {disp8} jbe      _jmp_addr_0x0078ce15                    // 0x0078ce02    7611
                         mov              edx, 0x00dedad0                         // 0x0078ce04    bad0dade00
_jmp_addr_0x0078ce09:    cmp              dword ptr [edx], esi                    // 0x0078ce09    3932
                         {disp8} je       _jmp_addr_0x0078ce59                    // 0x0078ce0b    744c
                         inc              eax                                     // 0x0078ce0d    40
                         add              edx, 0x04                               // 0x0078ce0e    83c204
                         cmp.s            eax, ecx                                // 0x0078ce11    3bc1
                         .byte            0x72, 0xf4// {disp8} jb _jmp_addr_0x0078ce09 // 0x0078ce13    72f4
_jmp_addr_0x0078ce15:    {disp32} mov     dword ptr [ecx * 0x4 + 0x00dedad0], esi // 0x0078ce15    89348dd0dade00
                         inc              ecx                                     // 0x0078ce1c    41
                         {disp32} mov     dword ptr [data_bytes + 0x43be78], ecx  // 0x0078ce1d    890d781ee000
                         pop              esi                                     // 0x0078ce23    5e
                         ret                                                      // 0x0078ce24    c3
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x43be7c]  // 0x0078ce25    8b0d7c1ee000
                         cmp              ecx, 0x30                               // 0x0078ce2b    83f930
                         {disp8} jae      _jmp_addr_0x0078ce59                    // 0x0078ce2e    7329
                         {disp8} mov      esi, dword ptr [esp + 0x08]             // 0x0078ce30    8b742408
                         xor.s            eax, eax                                // 0x0078ce34    33c0
                         test             ecx, ecx                                // 0x0078ce36    85c9
                         {disp8} jbe      _jmp_addr_0x0078ce4b                    // 0x0078ce38    7611
                         mov              edx, 0x00de9a0c                         // 0x0078ce3a    ba0c9ade00
_jmp_addr_0x0078ce3f:    cmp              dword ptr [edx], esi                    // 0x0078ce3f    3932
                         {disp8} je       _jmp_addr_0x0078ce59                    // 0x0078ce41    7416
                         inc              eax                                     // 0x0078ce43    40
                         add              edx, 0x04                               // 0x0078ce44    83c204
                         cmp.s            eax, ecx                                // 0x0078ce47    3bc1
                         .byte            0x72, 0xf4// {disp8} jb _jmp_addr_0x0078ce3f // 0x0078ce49    72f4
_jmp_addr_0x0078ce4b:    {disp32} mov     dword ptr [ecx * 0x4 + 0x00de9a0c], esi // 0x0078ce4b    89348d0c9ade00
                         inc              ecx                                     // 0x0078ce52    41
                         {disp32} mov     dword ptr [data_bytes + 0x43be7c], ecx  // 0x0078ce53    890d7c1ee000
_jmp_addr_0x0078ce59:    pop              esi                                     // 0x0078ce59    5e
                         ret                                                      // 0x0078ce5a    c3

// Snippet: db, [0x0078ce5b, 0x0078ce5c)
.byte 0x90                        // 0x0078ce5b

// Snippet: jmptbl, [0x0078ce5c, 0x0078ce70)
.byte 0x35, 0xcd, 0x78, 0x00      // 0x0078ce5c
.byte 0x73, 0xcd, 0x78, 0x00      // 0x0078ce60
.byte 0xb1, 0xcd, 0x78, 0x00      // 0x0078ce64
.byte 0xef, 0xcd, 0x78, 0x00      // 0x0078ce68
.byte 0x25, 0xce, 0x78, 0x00      // 0x0078ce6c

