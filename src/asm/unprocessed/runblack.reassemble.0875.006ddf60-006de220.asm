.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z
.extern _jmp_addr_0x006de220

.globl _jmp_addr_0x006ddf60

start_0x006ddf60_0x006de220:
// Snippet: asm, [0x006ddf60, 0x006de205)
_jmp_addr_0x006ddf60:    {disp8} mov      eax, dword ptr [esp + 0x0c]             // 0x006ddf60    8b44240c
                         push             esi                                     // 0x006ddf64    56
                         and              eax, 0x000000ff                         // 0x006ddf65    25ff000000
                         cmp              eax, 0x05                               // 0x006ddf6a    83f805
                         push             edi                                     // 0x006ddf6d    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]             // 0x006ddf6e    8b7c240c
                         {disp32} ja      _jmp_addr_0x006de1a1                    // 0x006ddf72    0f8729020000
                         jmp              dword ptr [eax*4 + 0x6de208]            // 0x006ddf78    ff248508e26d00
                         push             0x0000107d                              // 0x006ddf7f    687d100000
                         push             0x00c09908                              // 0x006ddf84    680899c000
                         push             0x0000009c                              // 0x006ddf89    689c000000
                         call             ?__nw@Base@@SAPAXK@Z                    // 0x006ddf8e    e85d87d5ff
                         mov.s            esi, eax                                // 0x006ddf93    8bf0
                         add              esp, 0x0c                               // 0x006ddf95    83c40c
                         test             esi, esi                                // 0x006ddf98    85f6
                         {disp32} je      _jmp_addr_0x006de19d                    // 0x006ddf9a    0f84fd010000
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x006ddfa0    8b442410
                         push             0x0                                     // 0x006ddfa4    6a00
                         and              eax, 0x000000ff                         // 0x006ddfa6    25ff000000
                         push             0x3f800000                              // 0x006ddfab    680000803f
                         lea              eax, dword ptr [eax + eax * 0x2]        // 0x006ddfb0    8d0440
                         push             0x3f800000                              // 0x006ddfb3    680000803f
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006ddfb8    8d0480
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006ddfbb    8d0480
                         push             0x0                                     // 0x006ddfbe    6a00
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00c550b4] // 0x006ddfc0    8d0c85b450c500
                         push             ecx                                     // 0x006ddfc7    51
                         push             edi                                     // 0x006ddfc8    57
                         mov.s            ecx, esi                                // 0x006ddfc9    8bce
                         call             _jmp_addr_0x006de220                    // 0x006ddfcb    e850020000
                         mov              dword ptr [esi], 0x00940e28             // 0x006ddfd0    c706280e9400
                         {disp32} jmp     _jmp_addr_0x006de1a5                    // 0x006ddfd6    e9ca010000
                         push             0x00001080                              // 0x006ddfdb    6880100000
                         push             0x00c09908                              // 0x006ddfe0    680899c000
                         push             0x0000009c                              // 0x006ddfe5    689c000000
                         call             ?__nw@Base@@SAPAXK@Z                    // 0x006ddfea    e80187d5ff
                         mov.s            esi, eax                                // 0x006ddfef    8bf0
                         add              esp, 0x0c                               // 0x006ddff1    83c40c
                         test             esi, esi                                // 0x006ddff4    85f6
                         {disp32} je      _jmp_addr_0x006de19d                    // 0x006ddff6    0f84a1010000
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x006ddffc    8b442410
                         push             0x0                                     // 0x006de000    6a00
                         and              eax, 0x000000ff                         // 0x006de002    25ff000000
                         push             0x3f800000                              // 0x006de007    680000803f
                         lea              eax, dword ptr [eax + eax * 0x2]        // 0x006de00c    8d0440
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006de00f    8d0480
                         push             0x3f800000                              // 0x006de012    680000803f
                         lea              edx, dword ptr [eax + eax * 0x4]        // 0x006de017    8d1480
                         push             0x0                                     // 0x006de01a    6a00
                         {disp32} lea     eax, dword ptr [edx * 0x4 + 0x00c5530c] // 0x006de01c    8d04950c53c500
                         push             eax                                     // 0x006de023    50
                         push             edi                                     // 0x006de024    57
                         mov.s            ecx, esi                                // 0x006de025    8bce
                         call             _jmp_addr_0x006de220                    // 0x006de027    e8f4010000
                         mov              dword ptr [esi], 0x00940514             // 0x006de02c    c70614059400
                         {disp32} jmp     _jmp_addr_0x006de1a5                    // 0x006de032    e96e010000
                         push             0x00001083                              // 0x006de037    6883100000
                         push             0x00c09908                              // 0x006de03c    680899c000
                         push             0x0000009c                              // 0x006de041    689c000000
                         call             ?__nw@Base@@SAPAXK@Z                    // 0x006de046    e8a586d5ff
                         mov.s            esi, eax                                // 0x006de04b    8bf0
                         add              esp, 0x0c                               // 0x006de04d    83c40c
                         test             esi, esi                                // 0x006de050    85f6
                         {disp32} je      _jmp_addr_0x006de19d                    // 0x006de052    0f8445010000
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x006de058    8b442410
                         push             0x0                                     // 0x006de05c    6a00
                         and              eax, 0x000000ff                         // 0x006de05e    25ff000000
                         push             0x3f800000                              // 0x006de063    680000803f
                         lea              eax, dword ptr [eax + eax * 0x2]        // 0x006de068    8d0440
                         push             0x3f800000                              // 0x006de06b    680000803f
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006de070    8d0480
                         lea              ecx, dword ptr [eax + eax * 0x4]        // 0x006de073    8d0c80
                         push             0x0                                     // 0x006de076    6a00
                         {disp32} lea     edx, dword ptr [ecx * 0x4 + 0x00c55564] // 0x006de078    8d148d6455c500
                         push             edx                                     // 0x006de07f    52
                         push             edi                                     // 0x006de080    57
                         mov.s            ecx, esi                                // 0x006de081    8bce
                         call             _jmp_addr_0x006de220                    // 0x006de083    e898010000
                         mov              dword ptr [esi], 0x0093fc00             // 0x006de088    c70600fc9300
                         {disp32} jmp     _jmp_addr_0x006de1a5                    // 0x006de08e    e912010000
                         push             0x00001086                              // 0x006de093    6886100000
                         push             0x00c09908                              // 0x006de098    680899c000
                         push             0x0000009c                              // 0x006de09d    689c000000
                         call             ?__nw@Base@@SAPAXK@Z                    // 0x006de0a2    e84986d5ff
                         mov.s            esi, eax                                // 0x006de0a7    8bf0
                         add              esp, 0x0c                               // 0x006de0a9    83c40c
                         test             esi, esi                                // 0x006de0ac    85f6
                         {disp32} je      _jmp_addr_0x006de19d                    // 0x006de0ae    0f84e9000000
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x006de0b4    8b442410
                         push             0x0                                     // 0x006de0b8    6a00
                         and              eax, 0x000000ff                         // 0x006de0ba    25ff000000
                         push             0x3f800000                              // 0x006de0bf    680000803f
                         lea              eax, dword ptr [eax + eax * 0x2]        // 0x006de0c4    8d0440
                         push             0x3f800000                              // 0x006de0c7    680000803f
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006de0cc    8d0480
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006de0cf    8d0480
                         push             0x0                                     // 0x006de0d2    6a00
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00c557bc] // 0x006de0d4    8d0c85bc57c500
                         push             ecx                                     // 0x006de0db    51
                         push             edi                                     // 0x006de0dc    57
                         mov.s            ecx, esi                                // 0x006de0dd    8bce
                         call             _jmp_addr_0x006de220                    // 0x006de0df    e83c010000
                         mov              dword ptr [esi], 0x0093f2ec             // 0x006de0e4    c706ecf29300
                         {disp32} jmp     _jmp_addr_0x006de1a5                    // 0x006de0ea    e9b6000000
                         push             0x00001089                              // 0x006de0ef    6889100000
                         push             0x00c09908                              // 0x006de0f4    680899c000
                         push             0x0000009c                              // 0x006de0f9    689c000000
                         call             ?__nw@Base@@SAPAXK@Z                    // 0x006de0fe    e8ed85d5ff
                         mov.s            esi, eax                                // 0x006de103    8bf0
                         add              esp, 0x0c                               // 0x006de105    83c40c
                         test             esi, esi                                // 0x006de108    85f6
                         {disp32} je      _jmp_addr_0x006de19d                    // 0x006de10a    0f848d000000
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x006de110    8b442410
                         push             0x0                                     // 0x006de114    6a00
                         and              eax, 0x000000ff                         // 0x006de116    25ff000000
                         push             0x3f800000                              // 0x006de11b    680000803f
                         lea              eax, dword ptr [eax + eax * 0x2]        // 0x006de120    8d0440
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006de123    8d0480
                         push             0x3f800000                              // 0x006de126    680000803f
                         lea              edx, dword ptr [eax + eax * 0x4]        // 0x006de12b    8d1480
                         push             0x0                                     // 0x006de12e    6a00
                         {disp32} lea     eax, dword ptr [edx * 0x4 + 0x00c55a14] // 0x006de130    8d0495145ac500
                         push             eax                                     // 0x006de137    50
                         push             edi                                     // 0x006de138    57
                         mov.s            ecx, esi                                // 0x006de139    8bce
                         call             _jmp_addr_0x006de220                    // 0x006de13b    e8e0000000
                         mov              dword ptr [esi], 0x0093e9d8             // 0x006de140    c706d8e99300
                         {disp8} jmp      _jmp_addr_0x006de1a5                    // 0x006de146    eb5d
                         push             0x0000108c                              // 0x006de148    688c100000
                         push             0x00c09908                              // 0x006de14d    680899c000
                         push             0x0000009c                              // 0x006de152    689c000000
                         call             ?__nw@Base@@SAPAXK@Z                    // 0x006de157    e89485d5ff
                         mov.s            esi, eax                                // 0x006de15c    8bf0
                         add              esp, 0x0c                               // 0x006de15e    83c40c
                         test             esi, esi                                // 0x006de161    85f6
                         {disp8} je       _jmp_addr_0x006de19d                    // 0x006de163    7438
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x006de165    8b442410
                         push             0x0                                     // 0x006de169    6a00
                         and              eax, 0x000000ff                         // 0x006de16b    25ff000000
                         push             0x3f800000                              // 0x006de170    680000803f
                         lea              eax, dword ptr [eax + eax * 0x2]        // 0x006de175    8d0440
                         push             0x3f800000                              // 0x006de178    680000803f
                         lea              eax, dword ptr [eax + eax * 0x4]        // 0x006de17d    8d0480
                         lea              ecx, dword ptr [eax + eax * 0x4]        // 0x006de180    8d0c80
                         push             0x0                                     // 0x006de183    6a00
                         {disp32} lea     edx, dword ptr [ecx * 0x4 + 0x00c55c6c] // 0x006de185    8d148d6c5cc500
                         push             edx                                     // 0x006de18c    52
                         push             edi                                     // 0x006de18d    57
                         mov.s            ecx, esi                                // 0x006de18e    8bce
                         call             _jmp_addr_0x006de220                    // 0x006de190    e88b000000
                         mov              dword ptr [esi], 0x0093e0c4             // 0x006de195    c706c4e09300
                         {disp8} jmp      _jmp_addr_0x006de1a5                    // 0x006de19b    eb08
_jmp_addr_0x006de19d:    xor.s            esi, esi                                // 0x006de19d    33f6
                         {disp8} jmp      _jmp_addr_0x006de1a5                    // 0x006de19f    eb04
_jmp_addr_0x006de1a1:    {disp8} mov      esi, dword ptr [esp + 0x10]             // 0x006de1a1    8b742410
_jmp_addr_0x006de1a5:    mov              eax, dword ptr [esi]                    // 0x006de1a5    8b06
                         push             edi                                     // 0x006de1a7    57
                         mov.s            ecx, esi                                // 0x006de1a8    8bce
                         call             dword ptr [eax + 0x658]                 // 0x006de1aa    ff9058060000
                         push             0x1                                     // 0x006de1b0    6a01
                         call             ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z                    // 0x006de1b2    e8f9c9f5ff
                         {disp8} mov      dword ptr [esi + 0x40], eax             // 0x006de1b7    894640
                         mov              edi, dword ptr [eax]                    // 0x006de1ba    8b38
                         add              esp, 0x04                               // 0x006de1bc    83c404
                         mov              edx, 0x00000001                         // 0x006de1bf    ba01000000
                         mov.s            ecx, eax                                // 0x006de1c4    8bc8
                         call             dword ptr [edi + 0x78]                  // 0x006de1c6    ff5778
                         {disp8} mov      ecx, dword ptr [esi + 0x40]             // 0x006de1c9    8b4e40
                         {disp8} mov      dword ptr [ecx + 0x10], 0x00000000      // 0x006de1cc    c7411000000000
                         mov              edx, dword ptr [esi]                    // 0x006de1d3    8b16
                         mov.s            ecx, esi                                // 0x006de1d5    8bce
                         call             dword ptr [edx + 0x608]                 // 0x006de1d7    ff9208060000
                         test             eax, eax                                // 0x006de1dd    85c0
                         {disp32} mov     edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]  // 0x006de1df    8b1534fee900
                         {disp8} jl       _jmp_addr_0x006de1eb                    // 0x006de1e5    7c04
                         cmp              eax, dword ptr [edx]                    // 0x006de1e7    3b02
                         {disp8} jl       _jmp_addr_0x006de1ed                    // 0x006de1e9    7c02
_jmp_addr_0x006de1eb:    xor.s            eax, eax                                // 0x006de1eb    33c0
_jmp_addr_0x006de1ed:    {disp8} mov      ecx, dword ptr [esi + 0x40]             // 0x006de1ed    8b4e40
                         mov              edi, dword ptr [ecx]                    // 0x006de1f0    8b39
                         {disp8} mov      edx, dword ptr [edx + eax * 0x4 + 0x04] // 0x006de1f2    8b548204
                         push             0x0                                     // 0x006de1f6    6a00
                         push             0x0                                     // 0x006de1f8    6a00
                         call             dword ptr [edi + 0xf4]                  // 0x006de1fa    ff97f4000000
                         pop              edi                                     // 0x006de200    5f
                         mov.s            eax, esi                                // 0x006de201    8bc6
                         pop              esi                                     // 0x006de203    5e
                         ret                                                      // 0x006de204    c3

// Snippet: db, [0x006de205, 0x006de208)
.byte 0x8d, 0x49, 0x00            // 0x006de205

// Snippet: jmptbl, [0x006de208, 0x006de220)
.byte 0x7f, 0xdf, 0x6d, 0x00      // 0x006de208
.byte 0xdb, 0xdf, 0x6d, 0x00      // 0x006de20c
.byte 0x37, 0xe0, 0x6d, 0x00      // 0x006de210
.byte 0x93, 0xe0, 0x6d, 0x00      // 0x006de214
.byte 0xef, 0xe0, 0x6d, 0x00      // 0x006de218
.byte 0x48, 0xe1, 0x6d, 0x00      // 0x006de21c

