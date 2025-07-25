.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ

.globl ?IsCivic@PlannedAbode@@QAE_NXZ

?IsCivic@PlannedAbode@@QAE_NXZ:
                         call             ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ              // 0x004060c0    e80bf6ffff
                         {disp32} mov     eax, dword ptr [eax + 0x00000120] // 0x004060c5    8b8020010000
                         cmp              eax, 0x00000100                   // 0x004060cb    3d00010000
                         {disp8} jg       _jmp_addr_0x004060eb              // 0x004060d0    7f19
                         {disp8} je       _jmp_addr_0x0040610f              // 0x004060d2    743b
                         add              eax, -0x14                        // 0x004060d4    83c0ec
                         cmp              eax, 0x70                         // 0x004060d7    83f870
                         {disp8} ja       _jmp_addr_0x0040610c              // 0x004060da    7730
                         xor.s            ecx, ecx                          // 0x004060dc    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x00406120]   // 0x004060de    8a8820614000
                         jmp              dword ptr [ecx*4 + 0x406118]      // 0x004060e4    ff248d18614000
_jmp_addr_0x004060eb:    cmp              eax, 0x00001004                   // 0x004060eb    3d04100000
                         {disp8} jg       _jmp_addr_0x00406105              // 0x004060f0    7f13
                         {disp8} je       _jmp_addr_0x0040610f              // 0x004060f2    741b
                         cmp              eax, 0x00000204                   // 0x004060f4    3d04020000
                         {disp8} je       _jmp_addr_0x0040610f              // 0x004060f9    7414
                         cmp              eax, 0x00000404                   // 0x004060fb    3d04040000
                         {disp8} je       _jmp_addr_0x0040610f              // 0x00406100    740d
                         xor.s            eax, eax                          // 0x00406102    33c0
                         ret                                                // 0x00406104    c3
_jmp_addr_0x00406105:    cmp              eax, 0x00002004                   // 0x00406105    3d04200000
                         {disp8} je       _jmp_addr_0x0040610f              // 0x0040610a    7403
_jmp_addr_0x0040610c:    xor.s            eax, eax                          // 0x0040610c    33c0
                         ret                                                // 0x0040610e    c3
_jmp_addr_0x0040610f:    mov              eax, 0x00000001                   // 0x0040610f    b801000000
                         ret                                                // 0x00406114    c3

// Snippet: db, [0x00406115, 0x00406118)
.byte 0x8d, 0x49, 0x00            // 0x00406115

// Snippet: jmptbl, [0x00406118, 0x00406120)
.byte 0x0f, 0x61, 0x40, 0x00      // 0x00406118
.byte 0x0c, 0x61, 0x40, 0x00      // 0x0040611c

// Snippet: ijmptbl, [0x00406120, 0x00406191)
.byte 0x00, 0x01, 0x01, 0x01      // 0x00406120
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406124
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406128
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040612c
.byte 0x00, 0x01, 0x01, 0x01      // 0x00406130
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406134
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406138
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040613c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406140
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406144
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406148
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040614c
.byte 0x00, 0x01, 0x01, 0x01      // 0x00406150
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406154
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406158
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040615c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406160
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406164
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406168
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040616c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406170
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406174
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406178
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040617c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406180
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406184
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406188
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040618c
.byte 0x00                        // 0x00406190

// Snippet: db, [0x00406191, 0x004061a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00406191
.byte 0x90, 0x90, 0x90, 0x90      // 0x00406195
.byte 0x90, 0x90, 0x90, 0x90      // 0x00406199
.byte 0x90, 0x90, 0x90            // 0x0040619d

