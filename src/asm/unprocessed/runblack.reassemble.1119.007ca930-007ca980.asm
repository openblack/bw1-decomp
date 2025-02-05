.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

start_0x007ca930_0x007ca980:
// Snippet: asm, [0x007ca930, 0x007ca96e)
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x18], eax // 0x007ca930    89448f18
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x14] // 0x007ca934    8b448e14
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x14], eax // 0x007ca938    89448f14
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x10] // 0x007ca93c    8b448e10
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x10], eax // 0x007ca940    89448f10
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x0c] // 0x007ca944    8b448e0c
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x0c], eax // 0x007ca948    89448f0c
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x08] // 0x007ca94c    8b448e08
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x08], eax // 0x007ca950    89448f08
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x04] // 0x007ca954    8b448e04
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x04], eax // 0x007ca958    89448f04
                         {disp32} lea     eax, dword ptr [ecx * 0x4 + 0x00000000] // 0x007ca95c    8d048d00000000
                         add.s            esi, eax                                // 0x007ca963    03f0
                         add.s            edi, eax                                // 0x007ca965    03f8
                         jmp              dword ptr [edx*4 + 0x7ca970]            // 0x007ca967    ff249570a97c00

// Snippet: db, [0x007ca96e, 0x007ca970)
.byte 0x8b, 0xff                  // 0x007ca96e

// Snippet: jmptbl, [0x007ca970, 0x007ca980)
.byte 0x80, 0xa9, 0x7c, 0x00      // 0x007ca970
.byte 0x88, 0xa9, 0x7c, 0x00      // 0x007ca974
.byte 0x98, 0xa9, 0x7c, 0x00      // 0x007ca978
.byte 0xac, 0xa9, 0x7c, 0x00      // 0x007ca97c

