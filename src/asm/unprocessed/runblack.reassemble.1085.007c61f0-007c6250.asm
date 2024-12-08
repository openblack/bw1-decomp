.intel_syntax noprefix

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes



start_0x007c61f0_0x007c6250:
// Snippet: asm, [0x007c61f0, 0x007c6236)
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x1c], eax // 0x007c61f0    89448fe4
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x18] // 0x007c61f4    8b448ee8
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x18], eax // 0x007c61f8    89448fe8
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x14] // 0x007c61fc    8b448eec
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x14], eax // 0x007c6200    89448fec
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x10] // 0x007c6204    8b448ef0
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x10], eax // 0x007c6208    89448ff0
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x0c] // 0x007c620c    8b448ef4
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x0c], eax // 0x007c6210    89448ff4
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x08] // 0x007c6214    8b448ef8
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x08], eax // 0x007c6218    89448ff8
                         {disp8} mov      eax, dword ptr [esi + ecx * 0x4 + -0x04] // 0x007c621c    8b448efc
                         {disp8} mov      dword ptr [edi + ecx * 0x4 + -0x04], eax // 0x007c6220    89448ffc
                         {disp32} lea     eax, dword ptr [ecx * 0x4 + 0x00000000]  // 0x007c6224    8d048d00000000
                         add.s            esi, eax                                 // 0x007c622b    03f0
                         add.s            edi, eax                                 // 0x007c622d    03f8
                         jmp              dword ptr [edx*4 + 0x7c6238]             // 0x007c622f    ff249538627c00

// Snippet: db, [0x007c6236, 0x007c6238)
.byte 0x8b, 0xff                  // 0x007c6236

// Snippet: jmptbl, [0x007c6238, 0x007c6248)
.byte 0x48, 0x62, 0x7c, 0x00      // 0x007c6238
.byte 0x50, 0x62, 0x7c, 0x00      // 0x007c623c
.byte 0x5c, 0x62, 0x7c, 0x00      // 0x007c6240
.byte 0x70, 0x62, 0x7c, 0x00      // 0x007c6244

// Snippet: db, [0x007c6248, 0x007c6250)
.byte 0x8b, 0x45, 0x08, 0x5e      // 0x007c6248
.byte 0x5f, 0xc9, 0xc3, 0x90      // 0x007c624c

