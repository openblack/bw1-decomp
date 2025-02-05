.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

start_0x007c6390_0x007c63e0:
// Snippet: asm, [0x007c6390, 0x007c63ce)
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x18], eax // 0x007c6390    89448f18
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x14] // 0x007c6394    8b448e14
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x14], eax // 0x007c6398    89448f14
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x10] // 0x007c639c    8b448e10
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x10], eax // 0x007c63a0    89448f10
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x0c] // 0x007c63a4    8b448e0c
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x0c], eax // 0x007c63a8    89448f0c
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x08] // 0x007c63ac    8b448e08
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x08], eax // 0x007c63b0    89448f08
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + 0x04] // 0x007c63b4    8b448e04
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + 0x04], eax // 0x007c63b8    89448f04
                         {disp32} lea     eax, dword ptr [ecx * 0x4 + 0x00000000] // 0x007c63bc    8d048d00000000
                         add.s            esi, eax                                // 0x007c63c3    03f0
                         add.s            edi, eax                                // 0x007c63c5    03f8
                         jmp              dword ptr [edx*4 + 0x7c63d0]            // 0x007c63c7    ff2495d0637c00

// Snippet: db, [0x007c63ce, 0x007c63d0)
.byte 0x8b, 0xff                  // 0x007c63ce

// Snippet: jmptbl, [0x007c63d0, 0x007c63e0)
.byte 0xe0, 0x63, 0x7c, 0x00      // 0x007c63d0
.byte 0xe8, 0x63, 0x7c, 0x00      // 0x007c63d4
.byte 0xf8, 0x63, 0x7c, 0x00      // 0x007c63d8
.byte 0x0c, 0x64, 0x7c, 0x00      // 0x007c63dc

