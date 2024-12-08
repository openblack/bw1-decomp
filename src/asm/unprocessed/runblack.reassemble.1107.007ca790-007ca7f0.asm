.intel_syntax noprefix

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes



start_0x007ca790_0x007ca7f0:
// Snippet: asm, [0x007ca790, 0x007ca7d6)
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x1c], eax // 0x007ca790    89448fe4
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x18] // 0x007ca794    8b448ee8
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x18], eax // 0x007ca798    89448fe8
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x14] // 0x007ca79c    8b448eec
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x14], eax // 0x007ca7a0    89448fec
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x10] // 0x007ca7a4    8b448ef0
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x10], eax // 0x007ca7a8    89448ff0
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x0c] // 0x007ca7ac    8b448ef4
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x0c], eax // 0x007ca7b0    89448ff4
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x08] // 0x007ca7b4    8b448ef8
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x08], eax // 0x007ca7b8    89448ff8
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x04] // 0x007ca7bc    8b448efc
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x04], eax // 0x007ca7c0    89448ffc
                         {disp32} lea     eax, dword ptr [ecx * 0x4 + 0x00000000]  // 0x007ca7c4    8d048d00000000
                         add.s            esi, eax                                 // 0x007ca7cb    03f0
                         add.s            edi, eax                                 // 0x007ca7cd    03f8
                         jmp              dword ptr [edx*4 + 0x7ca7d8]             // 0x007ca7cf    ff2495d8a77c00

// Snippet: db, [0x007ca7d6, 0x007ca7d8)
.byte 0x8b, 0xff                  // 0x007ca7d6

// Snippet: jmptbl, [0x007ca7d8, 0x007ca7e8)
.byte 0xe8, 0xa7, 0x7c, 0x00      // 0x007ca7d8
.byte 0xf0, 0xa7, 0x7c, 0x00      // 0x007ca7dc
.byte 0xfc, 0xa7, 0x7c, 0x00      // 0x007ca7e0
.byte 0x10, 0xa8, 0x7c, 0x00      // 0x007ca7e4

// Snippet: db, [0x007ca7e8, 0x007ca7f0)
.byte 0x8b, 0x45, 0x08, 0x5e      // 0x007ca7e8
.byte 0x5f, 0xc9, 0xc3, 0x90      // 0x007ca7ec

