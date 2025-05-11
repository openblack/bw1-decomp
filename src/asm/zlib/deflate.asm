.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern _adler32
.extern __tr_init
.extern __tr_stored_block
.extern __tr_align
.extern __tr_flush_block    

.globl _deflateInit_
.globl _deflate
.globl _deflateEnd
.globl _deflateCopy
.globl _deflate_stored
.globl _deflate_fast
.globl _deflate_slow

.section .rdata

.macro ASCIZ_ALIGNED string alignment
    .asciz "\string"
    .align \alignment
.endm

_deflate_copyright: ASCIZ_ALIGNED " deflate 1.1.3 Copyright 1995-1998 Jean-loup Gailly " 8                         // [0xf6878] 0x008a9000 + 0xf6878 = 0x0099f878

.macro ZLIB_CONFIG good_len, max_lazy, nice_len, max_chain, func_ptr
    .short \good_len, \max_lazy, \nice_len, \max_chain
    .long \func_ptr
.endm

_configuration_table:                                                                                              // [0xf68b0] 0x008a9000 + 0xf68b0 = 0x0099f8b0
ZLIB_CONFIG 0 0 0 0 _deflate_stored
ZLIB_CONFIG 4 4 8 4 _deflate_fast
ZLIB_CONFIG 4 5 16 8 _deflate_fast
ZLIB_CONFIG 4 6 32 32 _deflate_fast

ZLIB_CONFIG 4 4 16 16 _deflate_slow
ZLIB_CONFIG 8 16 32 32 _deflate_slow
ZLIB_CONFIG 8 16 128 128 _deflate_slow
ZLIB_CONFIG 8 32 128 256 _deflate_slow
ZLIB_CONFIG 32 128 258 1024 _deflate_slow
ZLIB_CONFIG 32 258 258 4096 _deflate_slow

.section .text

_deflateInit_:           {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x007bf210    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x007bf214    8b4c240c
                         {disp8} mov      edx, dword ptr [esp + 0x08]                    // 0x007bf218    8b542408
                         push             eax                                            // 0x007bf21c    50
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x007bf21d    8b442408
                         push             ecx                                            // 0x007bf221    51
                         push             0x0                                            // 0x007bf222    6a00
                         push             0x8                                            // 0x007bf224    6a08
                         push             0xf                                            // 0x007bf226    6a0f
                         push             0x8                                            // 0x007bf228    6a08
                         push             edx                                            // 0x007bf22a    52
                         push             eax                                            // 0x007bf22b    50
                         call             _deflateInit2_                                 // 0x007bf22c    e80f000000
                         add              esp, 0x20                                      // 0x007bf231    83c420
                         ret                                                             // 0x007bf234    c3
                         nop                                                             // 0x007bf235    90
                         nop                                                             // 0x007bf236    90
                         nop                                                             // 0x007bf237    90
                         nop                                                             // 0x007bf238    90
                         nop                                                             // 0x007bf239    90
                         nop                                                             // 0x007bf23a    90
                         nop                                                             // 0x007bf23b    90
                         nop                                                             // 0x007bf23c    90
                         nop                                                             // 0x007bf23d    90
                         nop                                                             // 0x007bf23e    90
                         nop                                                             // 0x007bf23f    90
_deflateInit2_:          {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x007bf240    8b44241c
                         push             ebx                                            // 0x007bf244    53
                         push             ebp                                            // 0x007bf245    55
                         xor.s            edx, edx                                       // 0x007bf246    33d2
                         xor.s            ebp, ebp                                       // 0x007bf248    33ed
                         push             esi                                            // 0x007bf24a    56
                         cmp.s            eax, edx                                       // 0x007bf24b    3bc2
                         push             edi                                            // 0x007bf24d    57
                         {disp32} je      _jmp_addr_0x007bf42f                           // 0x007bf24e    0f84db010000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x265f5c]         // 0x007bf254    8b0d5cbfc200
                         mov              al, byte ptr [eax]                             // 0x007bf25a    8a00
                         cmp              al, byte ptr [ecx]                             // 0x007bf25c    3a01
                         {disp32} jne     _jmp_addr_0x007bf42f                           // 0x007bf25e    0f85cb010000
                         cmp              dword ptr [esp + 0x30], 0x38                   // 0x007bf264    837c243038
                         {disp32} jne     _jmp_addr_0x007bf42f                           // 0x007bf269    0f85c0010000
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x007bf26f    8b7c2414
                         cmp.s            edi, edx                                       // 0x007bf273    3bfa
                         {disp8} jne      _jmp_addr_0x007bf281                           // 0x007bf275    750a
_jmp_addr_0x007bf277:    pop              edi                                            // 0x007bf277    5f
                         pop              esi                                            // 0x007bf278    5e
                         pop              ebp                                            // 0x007bf279    5d
                         mov              eax, 0xfffffffe                                // 0x007bf27a    b8feffffff
                         pop              ebx                                            // 0x007bf27f    5b
                         ret                                                             // 0x007bf280    c3
_jmp_addr_0x007bf281:    {disp8} mov      eax, dword ptr [edi + 0x20]                    // 0x007bf281    8b4720
                         {disp8} mov      dword ptr [edi + 0x18], edx                    // 0x007bf284    895718
                         cmp.s            eax, edx                                       // 0x007bf287    3bc2
                         {disp8} jne      _jmp_addr_0x007bf295                           // 0x007bf289    750a
                         {disp8} mov      dword ptr [edi + 0x20], 0x007c1090             // 0x007bf28b    c7472090107c00
                         {disp8} mov      dword ptr [edi + 0x28], edx                    // 0x007bf292    895728
_jmp_addr_0x007bf295:    cmp              dword ptr [edi + 0x24], edx                    // 0x007bf295    395724
                         {disp8} jne      _jmp_addr_0x007bf2a1                           // 0x007bf298    7507
                         {disp8} mov      dword ptr [edi + 0x24], 0x007c10b0             // 0x007bf29a    c74724b0107c00
_jmp_addr_0x007bf2a1:    {disp8} mov      ecx, dword ptr [esp + 0x18]                    // 0x007bf2a1    8b4c2418
                         cmp              ecx, -0x01                                     // 0x007bf2a5    83f9ff
                         {disp8} jne      _jmp_addr_0x007bf2b6                           // 0x007bf2a8    750c
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000006             // 0x007bf2aa    c744241806000000
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                    // 0x007bf2b2    8b4c2418
_jmp_addr_0x007bf2b6:    {disp8} mov      ebx, dword ptr [esp + 0x20]                    // 0x007bf2b6    8b5c2420
                         cmp.s            ebx, edx                                       // 0x007bf2ba    3bda
                         {disp8} jge      _jmp_addr_0x007bf2c5                           // 0x007bf2bc    7d07
                         mov              ebp, 0x00000001                                // 0x007bf2be    bd01000000
                         neg              ebx                                            // 0x007bf2c3    f7db
_jmp_addr_0x007bf2c5:    {disp8} mov      eax, dword ptr [esp + 0x24]                    // 0x007bf2c5    8b442424
                         cmp              eax, 0x01                                      // 0x007bf2c9    83f801
                         {disp8} jl       _jmp_addr_0x007bf277                           // 0x007bf2cc    7ca9
                         cmp              eax, 0x09                                      // 0x007bf2ce    83f809
                         {disp8} jg       _jmp_addr_0x007bf277                           // 0x007bf2d1    7fa4
                         cmp              dword ptr [esp + 0x1c], 0x08                   // 0x007bf2d3    837c241c08
                         {disp8} jne      _jmp_addr_0x007bf277                           // 0x007bf2d8    759d
                         cmp              ebx, 0x08                                      // 0x007bf2da    83fb08
                         {disp8} jl       _jmp_addr_0x007bf277                           // 0x007bf2dd    7c98
                         cmp              ebx, 0x0f                                      // 0x007bf2df    83fb0f
                         {disp8} jg       _jmp_addr_0x007bf277                           // 0x007bf2e2    7f93
                         cmp.s            ecx, edx                                       // 0x007bf2e4    3bca
                         {disp8} jl       _jmp_addr_0x007bf277                           // 0x007bf2e6    7c8f
                         cmp              ecx, 0x09                                      // 0x007bf2e8    83f909
                         {disp8} jg       _jmp_addr_0x007bf277                           // 0x007bf2eb    7f8a
                         {disp8} mov      eax, dword ptr [esp + 0x28]                    // 0x007bf2ed    8b442428
                         cmp.s            eax, edx                                       // 0x007bf2f1    3bc2
                         {disp8} jl       _jmp_addr_0x007bf277                           // 0x007bf2f3    7c82
                         cmp              eax, 0x02                                      // 0x007bf2f5    83f802
                         {disp32} jg      _jmp_addr_0x007bf277                           // 0x007bf2f8    0f8f79ffffff
                         {disp8} mov      edx, dword ptr [edi + 0x28]                    // 0x007bf2fe    8b5728
                         push             0x000016b8                                     // 0x007bf301    68b8160000
                         push             0x1                                            // 0x007bf306    6a01
                         push             edx                                            // 0x007bf308    52
                         call             dword ptr [edi + 0x20]                         // 0x007bf309    ff5720
                         mov.s            esi, eax                                       // 0x007bf30c    8bf0
                         add              esp, 0x0c                                      // 0x007bf30e    83c40c
                         test             esi, esi                                       // 0x007bf311    85f6
                         {disp8} jne      _jmp_addr_0x007bf31f                           // 0x007bf313    750a
                         pop              edi                                            // 0x007bf315    5f
                         pop              esi                                            // 0x007bf316    5e
                         pop              ebp                                            // 0x007bf317    5d
                         mov              eax, 0xfffffffc                                // 0x007bf318    b8fcffffff
                         pop              ebx                                            // 0x007bf31d    5b
                         ret                                                             // 0x007bf31e    c3
_jmp_addr_0x007bf31f:    {disp8} mov      dword ptr [edi + 0x1c], esi                    // 0x007bf31f    89771c
                         {disp8} mov      dword ptr [esi + 0x18], ebp                    // 0x007bf322    896e18
                         mov              ebp, 0x00000001                                // 0x007bf325    bd01000000
                         mov.s            ecx, ebx                                       // 0x007bf32a    8bcb
                         shl              ebp, cl                                        // 0x007bf32c    d3e5
                         {disp8} mov      dword ptr [esi + 0x28], ebx                    // 0x007bf32e    895e28
                         {disp8} mov      ebx, dword ptr [esp + 0x24]                    // 0x007bf331    8b5c2424
                         mov              dword ptr [esi], edi                           // 0x007bf335    893e
                         push             0x2                                            // 0x007bf337    6a02
                         {disp8} lea      ecx, dword ptr [ebx + 0x07]                    // 0x007bf339    8d4b07
                         {disp8} mov      dword ptr [esi + 0x48], ecx                    // 0x007bf33c    894e48
                         {disp8} mov      dword ptr [esi + 0x24], ebp                    // 0x007bf33f    896e24
                         {disp8} lea      eax, dword ptr [ebp + -0x01]                   // 0x007bf342    8d45ff
                         push             ebp                                            // 0x007bf345    55
                         {disp8} mov      dword ptr [esi + 0x2c], eax                    // 0x007bf346    89462c
                         mov              eax, 0x00000001                                // 0x007bf349    b801000000
                         shl              eax, cl                                        // 0x007bf34e    d3e0
                         add              ecx, 0x2                                       // 0x007bf350    83c102
                         {disp8} mov      dword ptr [esi + 0x44], eax                    // 0x007bf353    894644
                         dec              eax                                            // 0x007bf356    48
                         {disp8} mov      dword ptr [esi + 0x4c], eax                    // 0x007bf357    89464c
                         mov              eax, 0xaaaaaaab                                // 0x007bf35a    b8abaaaaaa
                         mul              ecx                                            // 0x007bf35f    f7e1
                         shr              edx, 1                                         // 0x007bf361    d1ea
                         {disp8} mov      dword ptr [esi + 0x50], edx                    // 0x007bf363    895650
                         {disp8} mov      ecx, dword ptr [edi + 0x28]                    // 0x007bf366    8b4f28
                         push             ecx                                            // 0x007bf369    51
                         call             dword ptr [edi + 0x20]                         // 0x007bf36a    ff5720
                         {disp8} mov      edx, dword ptr [esi + 0x24]                    // 0x007bf36d    8b5624
                         {disp8} mov      dword ptr [esi + 0x30], eax                    // 0x007bf370    894630
                         {disp8} mov      eax, dword ptr [edi + 0x28]                    // 0x007bf373    8b4728
                         push             0x2                                            // 0x007bf376    6a02
                         push             edx                                            // 0x007bf378    52
                         push             eax                                            // 0x007bf379    50
                         call             dword ptr [edi + 0x20]                         // 0x007bf37a    ff5720
                         {disp8} mov      ecx, dword ptr [esi + 0x44]                    // 0x007bf37d    8b4e44
                         {disp8} mov      dword ptr [esi + 0x38], eax                    // 0x007bf380    894638
                         {disp8} mov      edx, dword ptr [edi + 0x28]                    // 0x007bf383    8b5728
                         push             0x2                                            // 0x007bf386    6a02
                         push             ecx                                            // 0x007bf388    51
                         push             edx                                            // 0x007bf389    52
                         call             dword ptr [edi + 0x20]                         // 0x007bf38a    ff5720
                         {disp8} mov      dword ptr [esi + 0x3c], eax                    // 0x007bf38d    89463c
                         {disp8} lea      ecx, dword ptr [ebx + 0x06]                    // 0x007bf390    8d4b06
                         mov              eax, 0x00000001                                // 0x007bf393    b801000000
                         push             0x4                                            // 0x007bf398    6a04
                         shl              eax, cl                                        // 0x007bf39a    d3e0
                         {disp32} mov     dword ptr [esi + 0x00001694], eax              // 0x007bf39c    898694160000
                         push             eax                                            // 0x007bf3a2    50
                         {disp8} mov      eax, dword ptr [edi + 0x28]                    // 0x007bf3a3    8b4728
                         push             eax                                            // 0x007bf3a6    50
                         call             dword ptr [edi + 0x20]                         // 0x007bf3a7    ff5720
                         {disp32} mov     ecx, dword ptr [esi + 0x00001694]              // 0x007bf3aa    8b8e94160000
                         add              esp, 0x30                                      // 0x007bf3b0    83c430
                         {disp8} mov      dword ptr [esi + 0x08], eax                    // 0x007bf3b3    894608
                         {disp32} lea     edx, dword ptr [ecx * 0x4 + 0x00000000]        // 0x007bf3b6    8d148d00000000
                         {disp8} mov      dword ptr [esi + 0x0c], edx                    // 0x007bf3bd    89560c
                         {disp8} mov      edx, dword ptr [esi + 0x30]                    // 0x007bf3c0    8b5630
                         test             edx, edx                                       // 0x007bf3c3    85d2
                         {disp8} je       _jmp_addr_0x007bf414                           // 0x007bf3c5    744d
                         {disp8} mov      edx, dword ptr [esi + 0x38]                    // 0x007bf3c7    8b5638
                         test             edx, edx                                       // 0x007bf3ca    85d2
                         {disp8} je       _jmp_addr_0x007bf414                           // 0x007bf3cc    7446
                         {disp8} mov      edx, dword ptr [esi + 0x3c]                    // 0x007bf3ce    8b563c
                         test             edx, edx                                       // 0x007bf3d1    85d2
                         {disp8} je       _jmp_addr_0x007bf414                           // 0x007bf3d3    743f
                         test             eax, eax                                       // 0x007bf3d5    85c0
                         {disp8} je       _jmp_addr_0x007bf414                           // 0x007bf3d7    743b
                         mov.s            edx, ecx                                       // 0x007bf3d9    8bd1
                         push             edi                                            // 0x007bf3db    57
                         shr              edx, 1                                         // 0x007bf3dc    d1ea
                         {disp8} mov      byte ptr [esi + 0x1d], 0x08                    // 0x007bf3de    c6461d08
                         lea              edx, dword ptr [eax + edx * 0x2]               // 0x007bf3e2    8d1450
                         lea              eax, dword ptr [eax + ecx * 0x2]               // 0x007bf3e5    8d0448
                         add.s            ecx, eax                                       // 0x007bf3e8    03c8
                         {disp32} mov     dword ptr [esi + 0x0000169c], edx              // 0x007bf3ea    89969c160000
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                    // 0x007bf3f0    8b54242c
                         {disp32} mov     dword ptr [esi + 0x00001690], ecx              // 0x007bf3f4    898e90160000
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                    // 0x007bf3fa    8b4c241c
                         {disp32} mov     dword ptr [esi + 0x00000080], edx              // 0x007bf3fe    899680000000
                         {disp8} mov      dword ptr [esi + 0x7c], ecx                    // 0x007bf404    894e7c
                         call             _deflateReset                                  // 0x007bf407    e834010000
                         add              esp, 0x04                                      // 0x007bf40c    83c404
                         pop              edi                                            // 0x007bf40f    5f
                         pop              esi                                            // 0x007bf410    5e
                         pop              ebp                                            // 0x007bf411    5d
                         pop              ebx                                            // 0x007bf412    5b
                         ret                                                             // 0x007bf413    c3
_jmp_addr_0x007bf414:    {disp32} mov     eax, dword ptr [data_bytes + 0x265fe8]         // 0x007bf414    a1e8bfc200
                         push             edi                                            // 0x007bf419    57
                         {disp8} mov      dword ptr [edi + 0x18], eax                    // 0x007bf41a    894718
                         call             _deflateEnd                                    // 0x007bf41d    e8ce050000
                         add              esp, 0x04                                      // 0x007bf422    83c404
                         mov              eax, 0xfffffffc                                // 0x007bf425    b8fcffffff
                         pop              edi                                            // 0x007bf42a    5f
                         pop              esi                                            // 0x007bf42b    5e
                         pop              ebp                                            // 0x007bf42c    5d
                         pop              ebx                                            // 0x007bf42d    5b
                         ret                                                             // 0x007bf42e    c3
_jmp_addr_0x007bf42f:    pop              edi                                            // 0x007bf42f    5f
                         pop              esi                                            // 0x007bf430    5e
                         pop              ebp                                            // 0x007bf431    5d
                         mov              eax, 0xfffffffa                                // 0x007bf432    b8faffffff
                         pop              ebx                                            // 0x007bf437    5b
                         ret                                                             // 0x007bf438    c3
                         nop                                                             // 0x007bf439    90
                         nop                                                             // 0x007bf43a    90
                         nop                                                             // 0x007bf43b    90
                         nop                                                             // 0x007bf43c    90
                         nop                                                             // 0x007bf43d    90
                         nop                                                             // 0x007bf43e    90
                         nop                                                             // 0x007bf43f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x007bf440    8b442404
                         push             ebx                                            // 0x007bf444    53
                         push             ebp                                            // 0x007bf445    55
                         push             esi                                            // 0x007bf446    56
                         push             edi                                            // 0x007bf447    57
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x007bf448    8b7c241c
                         test             eax, eax                                       // 0x007bf44c    85c0
                         mov.s            ebp, edi                                       // 0x007bf44e    8bef
                         {disp32} je      _jmp_addr_0x007bf530                           // 0x007bf450    0f84da000000
                         {disp8} mov      ebx, dword ptr [eax + 0x1c]                    // 0x007bf456    8b581c
                         test             ebx, ebx                                       // 0x007bf459    85db
                         {disp32} je      _jmp_addr_0x007bf530                           // 0x007bf45b    0f84cf000000
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x007bf461    8b742418
                         test             esi, esi                                       // 0x007bf465    85f6
                         {disp32} je      _jmp_addr_0x007bf530                           // 0x007bf467    0f84c3000000
                         cmp              dword ptr [ebx + 0x04], 0x2a                   // 0x007bf46d    837b042a
                         {disp32} jne     _jmp_addr_0x007bf530                           // 0x007bf471    0f85b9000000
                         {disp8} mov      eax, dword ptr [eax + 0x30]                    // 0x007bf477    8b4030
                         push             edi                                            // 0x007bf47a    57
                         push             esi                                            // 0x007bf47b    56
                         push             eax                                            // 0x007bf47c    50
                         call             _adler32                                       // 0x007bf47d    e83e1c0000
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                    // 0x007bf482    8b4c2420
                         add              esp, 0x0c                                      // 0x007bf486    83c40c
                         cmp              edi, 0x03                                      // 0x007bf489    83ff03
                         {disp8} mov      dword ptr [ecx + 0x30], eax                    // 0x007bf48c    894130
                         {disp8} jae      _jmp_addr_0x007bf498                           // 0x007bf48f    7307
                         pop              edi                                            // 0x007bf491    5f
                         pop              esi                                            // 0x007bf492    5e
                         pop              ebp                                            // 0x007bf493    5d
                         xor.s            eax, eax                                       // 0x007bf494    33c0
                         pop              ebx                                            // 0x007bf496    5b
                         ret                                                             // 0x007bf497    c3
_jmp_addr_0x007bf498:    {disp8} mov      eax, dword ptr [ebx + 0x24]                    // 0x007bf498    8b4324
                         add              eax, 0xfffffefa                                // 0x007bf49b    05fafeffff
                         cmp.s            edi, eax                                       // 0x007bf4a0    3bf8
                         {disp8} jbe      _jmp_addr_0x007bf4aa                           // 0x007bf4a2    7606
                         mov.s            ebp, eax                                       // 0x007bf4a4    8be8
                         sub.s            edi, ebp                                       // 0x007bf4a6    2bfd
                         add.s            esi, edi                                       // 0x007bf4a8    03f7
_jmp_addr_0x007bf4aa:    {disp8} mov      edi, dword ptr [ebx + 0x30]                    // 0x007bf4aa    8b7b30
                         mov.s            ecx, ebp                                       // 0x007bf4ad    8bcd
                         mov.s            edx, ecx                                       // 0x007bf4af    8bd1
                         xor.s            eax, eax                                       // 0x007bf4b1    33c0
                         shr              ecx, 2                                         // 0x007bf4b3    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bf4b6    f3a5
                         mov.s            ecx, edx                                       // 0x007bf4b8    8bca
                         and              ecx, 0x03                                      // 0x007bf4ba    83e103
                         rep movsb                                                       // 0x007bf4bd    f3a4
                         {disp8} mov      esi, dword ptr [ebx + 0x30]                    // 0x007bf4bf    8b7330
                         {disp8} mov      ecx, dword ptr [ebx + 0x50]                    // 0x007bf4c2    8b4b50
                         {disp8} mov      dword ptr [ebx + 0x64], ebp                    // 0x007bf4c5    896b64
                         {disp8} mov      dword ptr [ebx + 0x54], ebp                    // 0x007bf4c8    896b54
                         mov              al, byte ptr [esi]                             // 0x007bf4cb    8a06
                         {disp8} mov      dword ptr [ebx + 0x40], eax                    // 0x007bf4cd    894340
                         shl              eax, cl                                        // 0x007bf4d0    d3e0
                         xor.s            ecx, ecx                                       // 0x007bf4d2    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                      // 0x007bf4d4    8a4e01
                         {disp8} lea      esi, dword ptr [ebp + -0x03]                   // 0x007bf4d7    8d75fd
                         xor.s            eax, ecx                                       // 0x007bf4da    33c1
                         {disp8} mov      ecx, dword ptr [ebx + 0x4c]                    // 0x007bf4dc    8b4b4c
                         and.s            eax, ecx                                       // 0x007bf4df    23c1
                         xor.s            edx, edx                                       // 0x007bf4e1    33d2
                         {disp8} mov      dword ptr [ebx + 0x40], eax                    // 0x007bf4e3    894340
_jmp_addr_0x007bf4e6:    {disp8} mov      eax, dword ptr [ebx + 0x30]                    // 0x007bf4e6    8b4330
                         {disp8} mov      edi, dword ptr [ebx + 0x40]                    // 0x007bf4e9    8b7b40
                         xor.s            ecx, ecx                                       // 0x007bf4ec    33c9
                         {disp8} mov      ebp, dword ptr [ebx + 0x4c]                    // 0x007bf4ee    8b6b4c
                         {disp8} mov      cl, byte ptr [eax + edx * 0x1 + 0x02]          // 0x007bf4f1    8a4c1002
                         mov.s            eax, ecx                                       // 0x007bf4f5    8bc1
                         {disp8} mov      ecx, dword ptr [ebx + 0x50]                    // 0x007bf4f7    8b4b50
                         shl              edi, cl                                        // 0x007bf4fa    d3e7
                         xor.s            ecx, ecx                                       // 0x007bf4fc    33c9
                         xor.s            eax, edi                                       // 0x007bf4fe    33c7
                         {disp8} mov      edi, dword ptr [ebx + 0x3c]                    // 0x007bf500    8b7b3c
                         and.s            eax, ebp                                       // 0x007bf503    23c5
                         {disp8} mov      dword ptr [ebx + 0x40], eax                    // 0x007bf505    894340
                         mov              cx, word ptr [edi + eax * 0x2]                 // 0x007bf508    668b0c47
                         {disp8} mov      edi, dword ptr [ebx + 0x2c]                    // 0x007bf50c    8b7b2c
                         mov.s            eax, edx                                       // 0x007bf50f    8bc2
                         and.s            eax, edi                                       // 0x007bf511    23c7
                         {disp8} mov      edi, dword ptr [ebx + 0x38]                    // 0x007bf513    8b7b38
                         mov              word ptr [edi + eax * 0x2], cx                 // 0x007bf516    66890c47
                         {disp8} mov      ecx, dword ptr [ebx + 0x40]                    // 0x007bf51a    8b4b40
                         {disp8} mov      eax, dword ptr [ebx + 0x3c]                    // 0x007bf51d    8b433c
                         mov              word ptr [eax + ecx * 0x2], dx                 // 0x007bf520    66891448
                         inc              edx                                            // 0x007bf524    42
                         cmp.s            edx, esi                                       // 0x007bf525    3bd6
                         {disp8} jbe      _jmp_addr_0x007bf4e6                           // 0x007bf527    76bd
                         pop              edi                                            // 0x007bf529    5f
                         pop              esi                                            // 0x007bf52a    5e
                         pop              ebp                                            // 0x007bf52b    5d
                         xor.s            eax, eax                                       // 0x007bf52c    33c0
                         pop              ebx                                            // 0x007bf52e    5b
                         ret                                                             // 0x007bf52f    c3
_jmp_addr_0x007bf530:    pop              edi                                            // 0x007bf530    5f
                         pop              esi                                            // 0x007bf531    5e
                         pop              ebp                                            // 0x007bf532    5d
                         mov              eax, 0xfffffffe                                // 0x007bf533    b8feffffff
                         pop              ebx                                            // 0x007bf538    5b
                         ret                                                             // 0x007bf539    c3
                         nop                                                             // 0x007bf53a    90
                         nop                                                             // 0x007bf53b    90
                         nop                                                             // 0x007bf53c    90
                         nop                                                             // 0x007bf53d    90
                         nop                                                             // 0x007bf53e    90
                         nop                                                             // 0x007bf53f    90
_deflateReset:           {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x007bf540    8b442404
                         xor.s            ecx, ecx                                       // 0x007bf544    33c9
                         cmp.s            eax, ecx                                       // 0x007bf546    3bc1
                         push             esi                                            // 0x007bf548    56
                         {disp8} je       _jmp_addr_0x007bf5ac                           // 0x007bf549    7461
                         {disp8} mov      esi, dword ptr [eax + 0x1c]                    // 0x007bf54b    8b701c
                         cmp.s            esi, ecx                                       // 0x007bf54e    3bf1
                         {disp8} je       _jmp_addr_0x007bf5ac                           // 0x007bf550    745a
                         cmp              dword ptr [eax + 0x20], ecx                    // 0x007bf552    394820
                         {disp8} je       _jmp_addr_0x007bf5ac                           // 0x007bf555    7455
                         cmp              dword ptr [eax + 0x24], ecx                    // 0x007bf557    394824
                         {disp8} je       _jmp_addr_0x007bf5ac                           // 0x007bf55a    7450
                         {disp8} mov      dword ptr [eax + 0x14], ecx                    // 0x007bf55c    894814
                         {disp8} mov      dword ptr [eax + 0x08], ecx                    // 0x007bf55f    894808
                         {disp8} mov      dword ptr [eax + 0x18], ecx                    // 0x007bf562    894818
                         {disp8} mov      dword ptr [eax + 0x2c], 0x00000002             // 0x007bf565    c7402c02000000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x007bf56c    8b5608
                         {disp8} mov      dword ptr [esi + 0x14], ecx                    // 0x007bf56f    894e14
                         {disp8} mov      dword ptr [esi + 0x10], edx                    // 0x007bf572    895610
                         {disp8} mov      edx, dword ptr [esi + 0x18]                    // 0x007bf575    8b5618
                         cmp.s            edx, ecx                                       // 0x007bf578    3bd1
                         {disp8} jge      _jmp_addr_0x007bf57f                           // 0x007bf57a    7d03
                         {disp8} mov      dword ptr [esi + 0x18], ecx                    // 0x007bf57c    894e18
_jmp_addr_0x007bf57f:    {disp8} mov      edx, dword ptr [esi + 0x18]                    // 0x007bf57f    8b5618
                         push             esi                                            // 0x007bf582    56
                         neg              edx                                            // 0x007bf583    f7da
                         sbb.s            edx, edx                                       // 0x007bf585    1bd2
                         and              edx, 0x47                                      // 0x007bf587    83e247
                         add              edx, 0x2a                                      // 0x007bf58a    83c22a
                         {disp8} mov      dword ptr [esi + 0x04], edx                    // 0x007bf58d    895604
                         {disp8} mov      dword ptr [eax + 0x30], 0x00000001             // 0x007bf590    c7403001000000
                         {disp8} mov      dword ptr [esi + 0x20], ecx                    // 0x007bf597    894e20
                         call             __tr_init                                      // 0x007bf59a    e8511c0000
                         push             esi                                            // 0x007bf59f    56
                         call             _lm_init                                       // 0x007bf5a0    e8ab060000
                         add              esp, 0x08                                      // 0x007bf5a5    83c408
                         xor.s            eax, eax                                       // 0x007bf5a8    33c0
                         pop              esi                                            // 0x007bf5aa    5e
                         ret                                                             // 0x007bf5ab    c3
_jmp_addr_0x007bf5ac:    mov              eax, 0xfffffffe                                // 0x007bf5ac    b8feffffff
                         pop              esi                                            // 0x007bf5b1    5e
                         ret                                                             // 0x007bf5b2    c3
                         nop                                                             // 0x007bf5b3    90
                         nop                                                             // 0x007bf5b4    90
                         nop                                                             // 0x007bf5b5    90
                         nop                                                             // 0x007bf5b6    90
                         nop                                                             // 0x007bf5b7    90
                         nop                                                             // 0x007bf5b8    90
                         nop                                                             // 0x007bf5b9    90
                         nop                                                             // 0x007bf5ba    90
                         nop                                                             // 0x007bf5bb    90
                         nop                                                             // 0x007bf5bc    90
                         nop                                                             // 0x007bf5bd    90
                         nop                                                             // 0x007bf5be    90
                         nop                                                             // 0x007bf5bf    90
_deflateParams:          {disp8} mov      edx, dword ptr [esp + 0x04]                    // 0x007bf5c0    8b542404
                         push             ebx                                            // 0x007bf5c4    53
                         xor.s            eax, eax                                       // 0x007bf5c5    33c0
                         push             ebp                                            // 0x007bf5c7    55
                         test             edx, edx                                       // 0x007bf5c8    85d2
                         push             edi                                            // 0x007bf5ca    57
                         {disp32} je      _jmp_addr_0x007bf681                           // 0x007bf5cb    0f84b0000000
                         {disp8} mov      edi, dword ptr [edx + 0x1c]                    // 0x007bf5d1    8b7a1c
                         test             edi, edi                                       // 0x007bf5d4    85ff
                         {disp32} je      _jmp_addr_0x007bf681                           // 0x007bf5d6    0f84a5000000
                         {disp8} mov      ebx, dword ptr [esp + 0x14]                    // 0x007bf5dc    8b5c2414
                         cmp              ebx, -0x01                                     // 0x007bf5e0    83fbff
                         {disp8} jne      _jmp_addr_0x007bf5ec                           // 0x007bf5e3    7507
                         mov              ebx, 0x00000006                                // 0x007bf5e5    bb06000000
                         {disp8} jmp      _jmp_addr_0x007bf5fd                           // 0x007bf5ea    eb11
_jmp_addr_0x007bf5ec:    test             ebx, ebx                                       // 0x007bf5ec    85db
                         {disp32} jl      _jmp_addr_0x007bf681                           // 0x007bf5ee    0f8c8d000000
                         cmp              ebx, 0x09                                      // 0x007bf5f4    83fb09
                         {disp32} jg      _jmp_addr_0x007bf681                           // 0x007bf5f7    0f8f84000000
_jmp_addr_0x007bf5fd:    {disp8} mov      ebp, dword ptr [esp + 0x18]                    // 0x007bf5fd    8b6c2418
                         test             ebp, ebp                                       // 0x007bf601    85ed
                         {disp8} jl       _jmp_addr_0x007bf681                           // 0x007bf603    7c7c
                         cmp              ebp, 0x02                                      // 0x007bf605    83fd02
                         {disp8} jg       _jmp_addr_0x007bf681                           // 0x007bf608    7f77
                         {disp8} mov      ecx, dword ptr [edi + 0x7c]                    // 0x007bf60a    8b4f7c
                         push             esi                                            // 0x007bf60d    56
                         lea              esi, dword ptr [ebx + ebx * 0x2]               // 0x007bf60e    8d345b
                         lea              ecx, dword ptr [ecx + ecx * 0x2]               // 0x007bf611    8d0c49
                         shl              esi, 2                                         // 0x007bf614    c1e602
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x0099f8b8]        // 0x007bf617    8b0c8db8f89900
                         cmp              ecx, dword ptr [esi + 0x0099f8b8]              // 0x007bf61e    3b8eb8f89900
                         {disp8} je       _jmp_addr_0x007bf638                           // 0x007bf624    7412
                         {disp8} mov      ecx, dword ptr [edx + 0x08]                    // 0x007bf626    8b4a08
                         test             ecx, ecx                                       // 0x007bf629    85c9
                         {disp8} je       _jmp_addr_0x007bf638                           // 0x007bf62b    740b
                         push             0x1                                            // 0x007bf62d    6a01
                         push             edx                                            // 0x007bf62f    52
                         call             _deflate                                       // 0x007bf630    e85b000000
                         add              esp, 0x08                                      // 0x007bf635    83c408
_jmp_addr_0x007bf638:    cmp              dword ptr [edi + 0x7c], ebx                    // 0x007bf638    395f7c
                         {disp8} je       _jmp_addr_0x007bf676                           // 0x007bf63b    7439
                         xor.s            edx, edx                                       // 0x007bf63d    33d2
                         {disp8} mov      dword ptr [edi + 0x7c], ebx                    // 0x007bf63f    895f7c
                         {disp32} mov     dx, word ptr [esi + 0x0099f8b2]                // 0x007bf642    668b96b2f89900
                         xor.s            ecx, ecx                                       // 0x007bf649    33c9
                         {disp8} mov      dword ptr [edi + 0x78], edx                    // 0x007bf64b    895778
                         {disp32} mov     cx, word ptr [esi + 0x0099f8b0]                // 0x007bf64e    668b8eb0f89900
                         xor.s            edx, edx                                       // 0x007bf655    33d2
                         {disp32} mov     dword ptr [edi + 0x00000084], ecx              // 0x007bf657    898f84000000
                         {disp32} mov     dx, word ptr [esi + 0x0099f8b4]                // 0x007bf65d    668b96b4f89900
                         xor.s            ecx, ecx                                       // 0x007bf664    33c9
                         {disp32} mov     dword ptr [edi + 0x00000088], edx              // 0x007bf666    899788000000
                         {disp32} mov     cx, word ptr [esi + 0x0099f8b6]                // 0x007bf66c    668b8eb6f89900
                         {disp8} mov      dword ptr [edi + 0x74], ecx                    // 0x007bf673    894f74
_jmp_addr_0x007bf676:    {disp32} mov     dword ptr [edi + 0x00000080], ebp              // 0x007bf676    89af80000000
                         pop              esi                                            // 0x007bf67c    5e
                         pop              edi                                            // 0x007bf67d    5f
                         pop              ebp                                            // 0x007bf67e    5d
                         pop              ebx                                            // 0x007bf67f    5b
                         ret                                                             // 0x007bf680    c3
_jmp_addr_0x007bf681:    pop              edi                                            // 0x007bf681    5f
                         pop              ebp                                            // 0x007bf682    5d
                         mov              eax, 0xfffffffe                                // 0x007bf683    b8feffffff
                         pop              ebx                                            // 0x007bf688    5b
                         ret                                                             // 0x007bf689    c3
                         nop                                                             // 0x007bf68a    90
                         nop                                                             // 0x007bf68b    90
                         nop                                                             // 0x007bf68c    90
                         nop                                                             // 0x007bf68d    90
                         nop                                                             // 0x007bf68e    90
                         nop                                                             // 0x007bf68f    90
_deflate:                push             ebx                                            // 0x007bf690    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]                    // 0x007bf691    8b5c2408
                         push             ebp                                            // 0x007bf695    55
                         push             esi                                            // 0x007bf696    56
                         test             ebx, ebx                                       // 0x007bf697    85db
                         push             edi                                            // 0x007bf699    57
                         {disp32} je      _jmp_addr_0x007bf933                           // 0x007bf69a    0f8493020000
                         {disp8} mov      esi, dword ptr [ebx + 0x1c]                    // 0x007bf6a0    8b731c
                         test             esi, esi                                       // 0x007bf6a3    85f6
                         {disp32} je      _jmp_addr_0x007bf933                           // 0x007bf6a5    0f8488020000
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                    // 0x007bf6ab    8b6c2418
                         cmp              ebp, 0x04                                      // 0x007bf6af    83fd04
                         {disp32} jg      _jmp_addr_0x007bf933                           // 0x007bf6b2    0f8f7b020000
                         test             ebp, ebp                                       // 0x007bf6b8    85ed
                         {disp32} jl      _jmp_addr_0x007bf933                           // 0x007bf6ba    0f8c73020000
                         {disp8} mov      eax, dword ptr [ebx + 0x0c]                    // 0x007bf6c0    8b430c
                         test             eax, eax                                       // 0x007bf6c3    85c0
                         {disp32} je      _jmp_addr_0x007bf92a                           // 0x007bf6c5    0f845f020000
                         cmp              dword ptr [ebx], 0x00                          // 0x007bf6cb    833b00
                         {disp8} jne      _jmp_addr_0x007bf6db                           // 0x007bf6ce    750b
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x007bf6d0    8b4304
                         test             eax, eax                                       // 0x007bf6d3    85c0
                         {disp32} jne     _jmp_addr_0x007bf92a                           // 0x007bf6d5    0f854f020000
_jmp_addr_0x007bf6db:    {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007bf6db    8b4604
                         cmp              eax, 0x0000029a                                // 0x007bf6de    3d9a020000
                         {disp8} jne      _jmp_addr_0x007bf6ee                           // 0x007bf6e3    7509
                         cmp              ebp, 0x04                                      // 0x007bf6e5    83fd04
                         {disp32} jne     _jmp_addr_0x007bf92a                           // 0x007bf6e8    0f853c020000
_jmp_addr_0x007bf6ee:    {disp8} mov      ecx, dword ptr [ebx + 0x10]                    // 0x007bf6ee    8b4b10
                         test             ecx, ecx                                       // 0x007bf6f1    85c9
                         {disp8} jne      _jmp_addr_0x007bf707                           // 0x007bf6f3    7512
                         {disp32} mov     eax, dword ptr [data_bytes + 0x265fec]         // 0x007bf6f5    a1ecbfc200
                         pop              edi                                            // 0x007bf6fa    5f
                         pop              esi                                            // 0x007bf6fb    5e
                         {disp8} mov      dword ptr [ebx + 0x18], eax                    // 0x007bf6fc    894318
                         pop              ebp                                            // 0x007bf6ff    5d
                         mov              eax, 0xfffffffb                                // 0x007bf700    b8fbffffff
                         pop              ebx                                            // 0x007bf705    5b
                         ret                                                             // 0x007bf706    c3
_jmp_addr_0x007bf707:    {disp8} mov      ecx, dword ptr [esi + 0x20]                    // 0x007bf707    8b4e20
                         cmp              eax, 0x2a                                      // 0x007bf70a    83f82a
                         mov              dword ptr [esi], ebx                           // 0x007bf70d    891e
                         {disp8} mov      dword ptr [esp + 0x14], ecx                    // 0x007bf70f    894c2414
                         {disp8} mov      dword ptr [esi + 0x20], ebp                    // 0x007bf713    896e20
                         {disp8} jne      _jmp_addr_0x007bf790                           // 0x007bf716    7578
                         {disp8} mov      ecx, dword ptr [esi + 0x28]                    // 0x007bf718    8b4e28
                         {disp8} mov      eax, dword ptr [esi + 0x7c]                    // 0x007bf71b    8b467c
                         shl              ecx, 0xc                                       // 0x007bf71e    c1e10c
                         sub              ecx, 0x00007800                                // 0x007bf721    81e900780000
                         dec              eax                                            // 0x007bf727    48
                         sar              eax, 1                                         // 0x007bf728    d1f8
                         cmp              eax, 0x03                                      // 0x007bf72a    83f803
                         {disp8} jbe      _jmp_addr_0x007bf734                           // 0x007bf72d    7605
                         mov              eax, 0x00000003                                // 0x007bf72f    b803000000
_jmp_addr_0x007bf734:    shl              eax, 6                                         // 0x007bf734    c1e006
                         or.s             ecx, eax                                       // 0x007bf737    0bc8
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007bf739    8b4664
                         test             eax, eax                                       // 0x007bf73c    85c0
                         {disp8} je       _jmp_addr_0x007bf743                           // 0x007bf73e    7403
                         or               ecx, 0x20                                      // 0x007bf740    83c920
_jmp_addr_0x007bf743:    mov.s            eax, ecx                                       // 0x007bf743    8bc1
                         xor.s            edx, edx                                       // 0x007bf745    33d2
                         mov              edi, 0x0000001f                                // 0x007bf747    bf1f000000
                         {disp8} mov      dword ptr [esi + 0x04], 0x00000071             // 0x007bf74c    c7460471000000
                         div              edi                                            // 0x007bf753    f7f7
                         sub.s            ecx, edx                                       // 0x007bf755    2bca
                         add.s            ecx, edi                                       // 0x007bf757    03cf
                         push             ecx                                            // 0x007bf759    51
                         push             esi                                            // 0x007bf75a    56
                         call             _putShortMSB                                   // 0x007bf75b    e8e0010000
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007bf760    8b4664
                         add              esp, 0x08                                      // 0x007bf763    83c408
                         test             eax, eax                                       // 0x007bf766    85c0
                         {disp8} je       _jmp_addr_0x007bf789                           // 0x007bf768    741f
                         {disp8} mov      edx, dword ptr [ebx + 0x30]                    // 0x007bf76a    8b5330
                         shr              edx, 0x10                                      // 0x007bf76d    c1ea10
                         push             edx                                            // 0x007bf770    52
                         push             esi                                            // 0x007bf771    56
                         call             _putShortMSB                                   // 0x007bf772    e8c9010000
                         {disp8} mov      eax, dword ptr [ebx + 0x30]                    // 0x007bf777    8b4330
                         and              eax, 0x0000ffff                                // 0x007bf77a    25ffff0000
                         push             eax                                            // 0x007bf77f    50
                         push             esi                                            // 0x007bf780    56
                         call             _putShortMSB                                   // 0x007bf781    e8ba010000
                         add              esp, 0x10                                      // 0x007bf786    83c410
_jmp_addr_0x007bf789:    {disp8} mov      dword ptr [ebx + 0x30], 0x00000001             // 0x007bf789    c7433001000000
_jmp_addr_0x007bf790:    {disp8} mov      eax, dword ptr [esi + 0x14]                    // 0x007bf790    8b4614
                         test             eax, eax                                       // 0x007bf793    85c0
                         {disp8} je       _jmp_addr_0x007bf7b5                           // 0x007bf795    741e
                         push             ebx                                            // 0x007bf797    53
                         call             _flush_pending                                 // 0x007bf798    e8d3010000
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                    // 0x007bf79d    8b4310
                         add              esp, 0x04                                      // 0x007bf7a0    83c404
                         test             eax, eax                                       // 0x007bf7a3    85c0
                         {disp8} jne      _jmp_addr_0x007bf7da                           // 0x007bf7a5    7533
                         {disp8} mov      dword ptr [esi + 0x20], 0xffffffff             // 0x007bf7a7    c74620ffffffff
                         pop              edi                                            // 0x007bf7ae    5f
                         pop              esi                                            // 0x007bf7af    5e
                         pop              ebp                                            // 0x007bf7b0    5d
                         xor.s            eax, eax                                       // 0x007bf7b1    33c0
                         pop              ebx                                            // 0x007bf7b3    5b
                         ret                                                             // 0x007bf7b4    c3
_jmp_addr_0x007bf7b5:    {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x007bf7b5    8b4304
                         test             eax, eax                                       // 0x007bf7b8    85c0
                         {disp8} jne      _jmp_addr_0x007bf7da                           // 0x007bf7ba    751e
                         cmp              ebp, dword ptr [esp + 0x14]                    // 0x007bf7bc    3b6c2414
                         {disp8} jg       _jmp_addr_0x007bf7da                           // 0x007bf7c0    7f18
                         cmp              ebp, 0x04                                      // 0x007bf7c2    83fd04
                         {disp8} je       _jmp_addr_0x007bf7da                           // 0x007bf7c5    7413
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x265fec]         // 0x007bf7c7    8b0decbfc200
                         pop              edi                                            // 0x007bf7cd    5f
                         pop              esi                                            // 0x007bf7ce    5e
                         {disp8} mov      dword ptr [ebx + 0x18], ecx                    // 0x007bf7cf    894b18
                         pop              ebp                                            // 0x007bf7d2    5d
                         mov              eax, 0xfffffffb                                // 0x007bf7d3    b8fbffffff
                         pop              ebx                                            // 0x007bf7d8    5b
                         ret                                                             // 0x007bf7d9    c3
_jmp_addr_0x007bf7da:    {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007bf7da    8b4604
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                    // 0x007bf7dd    8b4b04
                         cmp              eax, 0x0000029a                                // 0x007bf7e0    3d9a020000
                         {disp8} jne      _jmp_addr_0x007bf7fe                           // 0x007bf7e5    7517
                         test             ecx, ecx                                       // 0x007bf7e7    85c9
                         {disp8} je       _jmp_addr_0x007bf802                           // 0x007bf7e9    7417
                         {disp32} mov     edx, dword ptr [data_bytes + 0x265fec]         // 0x007bf7eb    8b15ecbfc200
                         pop              edi                                            // 0x007bf7f1    5f
                         pop              esi                                            // 0x007bf7f2    5e
                         {disp8} mov      dword ptr [ebx + 0x18], edx                    // 0x007bf7f3    895318
                         pop              ebp                                            // 0x007bf7f6    5d
                         mov              eax, 0xfffffffb                                // 0x007bf7f7    b8fbffffff
                         pop              ebx                                            // 0x007bf7fc    5b
                         ret                                                             // 0x007bf7fd    c3
_jmp_addr_0x007bf7fe:    test             ecx, ecx                                       // 0x007bf7fe    85c9
                         {disp8} jne      _jmp_addr_0x007bf81c                           // 0x007bf800    751a
_jmp_addr_0x007bf802:    {disp8} mov      ecx, dword ptr [esi + 0x6c]                    // 0x007bf802    8b4e6c
                         test             ecx, ecx                                       // 0x007bf805    85c9
                         {disp8} jne      _jmp_addr_0x007bf81c                           // 0x007bf807    7513
                         test             ebp, ebp                                       // 0x007bf809    85ed
                         {disp32} je      _jmp_addr_0x007bf8bc                           // 0x007bf80b    0f84ab000000
                         cmp              eax, 0x0000029a                                // 0x007bf811    3d9a020000
                         {disp32} je      _jmp_addr_0x007bf8bc                           // 0x007bf816    0f84a0000000
_jmp_addr_0x007bf81c:    {disp8} mov      eax, dword ptr [esi + 0x7c]                    // 0x007bf81c    8b467c
                         push             ebp                                            // 0x007bf81f    55
                         push             esi                                            // 0x007bf820    56
                         lea              eax, dword ptr [eax + eax * 0x2]               // 0x007bf821    8d0440
                         call             dword ptr [eax*4 + rdata_bytes + 0xf68b8]      // 0x007bf824    ff1485b8f89900
                         add              esp, 0x08                                      // 0x007bf82b    83c408
                         cmp              eax, 0x02                                      // 0x007bf82e    83f802
                         {disp8} je       _jmp_addr_0x007bf838                           // 0x007bf831    7405
                         cmp              eax, 0x03                                      // 0x007bf833    83f803
                         {disp8} jne      _jmp_addr_0x007bf83f                           // 0x007bf836    7507
_jmp_addr_0x007bf838:    {disp8} mov      dword ptr [esi + 0x04], 0x0000029a             // 0x007bf838    c746049a020000
_jmp_addr_0x007bf83f:    test             eax, eax                                       // 0x007bf83f    85c0
                         {disp32} je      _jmp_addr_0x007bf915                           // 0x007bf841    0f84ce000000
                         cmp              eax, 0x02                                      // 0x007bf847    83f802
                         {disp32} je      _jmp_addr_0x007bf915                           // 0x007bf84a    0f84c5000000
                         cmp              eax, 0x01                                      // 0x007bf850    83f801
                         {disp8} jne      _jmp_addr_0x007bf8bc                           // 0x007bf853    7567
                         cmp.s            ebp, eax                                       // 0x007bf855    3be8
                         {disp8} jne      _jmp_addr_0x007bf864                           // 0x007bf857    750b
                         push             esi                                            // 0x007bf859    56
                         call             __tr_align                                     // 0x007bf85a    e8211b0000
                         add              esp, 0x04                                      // 0x007bf85f    83c404
                         {disp8} jmp      _jmp_addr_0x007bf89e                           // 0x007bf862    eb3a
_jmp_addr_0x007bf864:    push             0x0                                            // 0x007bf864    6a00
                         push             0x0                                            // 0x007bf866    6a00
                         push             0x0                                            // 0x007bf868    6a00
                         push             esi                                            // 0x007bf86a    56
                         call             __tr_stored_block                              // 0x007bf86b    e8701a0000
                         add              esp, 0x10                                      // 0x007bf870    83c410
                         cmp              ebp, 0x03                                      // 0x007bf873    83fd03
                         {disp8} jne      _jmp_addr_0x007bf89e                           // 0x007bf876    7526
                         {disp8} mov      ecx, dword ptr [esi + 0x44]                    // 0x007bf878    8b4e44
                         {disp8} mov      edx, dword ptr [esi + 0x3c]                    // 0x007bf87b    8b563c
                         {disp8} mov      word ptr [edx + ecx * 0x2 + -0x02], 0x0000     // 0x007bf87e    66c7444afe0000
                         {disp8} mov      eax, dword ptr [esi + 0x44]                    // 0x007bf885    8b4644
                         {disp8} mov      edi, dword ptr [esi + 0x3c]                    // 0x007bf888    8b7e3c
                         {disp8} lea      ecx, dword ptr [eax + eax * 0x1 + -0x02]       // 0x007bf88b    8d4c00fe
                         xor.s            eax, eax                                       // 0x007bf88f    33c0
                         mov.s            edx, ecx                                       // 0x007bf891    8bd1
                         shr              ecx, 2                                         // 0x007bf893    c1e902
                         rep stosd                                                       // 0x007bf896    f3ab
                         mov.s            ecx, edx                                       // 0x007bf898    8bca
                         and.s            ecx, ebp                                       // 0x007bf89a    23cd
                         rep stosb                                                       // 0x007bf89c    f3aa
_jmp_addr_0x007bf89e:    push             ebx                                            // 0x007bf89e    53
                         call             _flush_pending                                 // 0x007bf89f    e8cc000000
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                    // 0x007bf8a4    8b4310
                         add              esp, 0x04                                      // 0x007bf8a7    83c404
                         test             eax, eax                                       // 0x007bf8aa    85c0
                         {disp8} jne      _jmp_addr_0x007bf8bc                           // 0x007bf8ac    750e
                         {disp8} mov      dword ptr [esi + 0x20], 0xffffffff             // 0x007bf8ae    c74620ffffffff
                         pop              edi                                            // 0x007bf8b5    5f
                         pop              esi                                            // 0x007bf8b6    5e
                         pop              ebp                                            // 0x007bf8b7    5d
                         xor.s            eax, eax                                       // 0x007bf8b8    33c0
                         pop              ebx                                            // 0x007bf8ba    5b
                         ret                                                             // 0x007bf8bb    c3
_jmp_addr_0x007bf8bc:    cmp              ebp, 0x04                                      // 0x007bf8bc    83fd04
                         {disp8} je       _jmp_addr_0x007bf8c8                           // 0x007bf8bf    7407
                         pop              edi                                            // 0x007bf8c1    5f
                         pop              esi                                            // 0x007bf8c2    5e
                         pop              ebp                                            // 0x007bf8c3    5d
                         xor.s            eax, eax                                       // 0x007bf8c4    33c0
                         pop              ebx                                            // 0x007bf8c6    5b
                         ret                                                             // 0x007bf8c7    c3
_jmp_addr_0x007bf8c8:    {disp8} mov      eax, dword ptr [esi + 0x18]                    // 0x007bf8c8    8b4618
                         test             eax, eax                                       // 0x007bf8cb    85c0
                         {disp8} je       _jmp_addr_0x007bf8d9                           // 0x007bf8cd    740a
                         pop              edi                                            // 0x007bf8cf    5f
                         pop              esi                                            // 0x007bf8d0    5e
                         pop              ebp                                            // 0x007bf8d1    5d
                         mov              eax, 0x00000001                                // 0x007bf8d2    b801000000
                         pop              ebx                                            // 0x007bf8d7    5b
                         ret                                                             // 0x007bf8d8    c3
_jmp_addr_0x007bf8d9:    {disp8} mov      eax, dword ptr [ebx + 0x30]                    // 0x007bf8d9    8b4330
                         shr              eax, 0x10                                      // 0x007bf8dc    c1e810
                         push             eax                                            // 0x007bf8df    50
                         push             esi                                            // 0x007bf8e0    56
                         call             _putShortMSB                                   // 0x007bf8e1    e85a000000
                         {disp8} mov      ecx, dword ptr [ebx + 0x30]                    // 0x007bf8e6    8b4b30
                         and              ecx, 0x0000ffff                                // 0x007bf8e9    81e1ffff0000
                         push             ecx                                            // 0x007bf8ef    51
                         push             esi                                            // 0x007bf8f0    56
                         call             _putShortMSB                                   // 0x007bf8f1    e84a000000
                         push             ebx                                            // 0x007bf8f6    53
                         call             _flush_pending                                 // 0x007bf8f7    e874000000
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                    // 0x007bf8fc    8b4e14
                         add              esp, 0x14                                      // 0x007bf8ff    83c414
                         {disp8} mov      dword ptr [esi + 0x18], 0xffffffff             // 0x007bf902    c74618ffffffff
                         xor.s            eax, eax                                       // 0x007bf909    33c0
                         pop              edi                                            // 0x007bf90b    5f
                         pop              esi                                            // 0x007bf90c    5e
                         test             ecx, ecx                                       // 0x007bf90d    85c9
                         pop              ebp                                            // 0x007bf90f    5d
                         pop              ebx                                            // 0x007bf910    5b
                         sete             al                                             // 0x007bf911    0f94c0
                         ret                                                             // 0x007bf914    c3
_jmp_addr_0x007bf915:    {disp8} mov      eax, dword ptr [ebx + 0x10]                    // 0x007bf915    8b4310
                         test             eax, eax                                       // 0x007bf918    85c0
                         {disp8} jne      _jmp_addr_0x007bf923                           // 0x007bf91a    7507
                         {disp8} mov      dword ptr [esi + 0x20], 0xffffffff             // 0x007bf91c    c74620ffffffff
_jmp_addr_0x007bf923:    pop              edi                                            // 0x007bf923    5f
                         pop              esi                                            // 0x007bf924    5e
                         pop              ebp                                            // 0x007bf925    5d
                         xor.s            eax, eax                                       // 0x007bf926    33c0
                         pop              ebx                                            // 0x007bf928    5b
                         ret                                                             // 0x007bf929    c3
_jmp_addr_0x007bf92a:    {disp32} mov     edx, dword ptr [data_bytes + 0x265fe0]         // 0x007bf92a    8b15e0bfc200
                         {disp8} mov      dword ptr [ebx + 0x18], edx                    // 0x007bf930    895318
_jmp_addr_0x007bf933:    pop              edi                                            // 0x007bf933    5f
                         pop              esi                                            // 0x007bf934    5e
                         pop              ebp                                            // 0x007bf935    5d
                         mov              eax, 0xfffffffe                                // 0x007bf936    b8feffffff
                         pop              ebx                                            // 0x007bf93b    5b
                         ret                                                             // 0x007bf93c    c3
                         nop                                                             // 0x007bf93d    90
                         nop                                                             // 0x007bf93e    90
                         nop                                                             // 0x007bf93f    90
_putShortMSB:            {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x007bf940    8b442404
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x007bf944    8b4c2408
                         push             esi                                            // 0x007bf948    56
                         push             edi                                            // 0x007bf949    57
                         {disp8} mov      esi, dword ptr [eax + 0x08]                    // 0x007bf94a    8b7008
                         {disp8} mov      edi, dword ptr [eax + 0x14]                    // 0x007bf94d    8b7814
                         mov.s            edx, ecx                                       // 0x007bf950    8bd1
                         shr              edx, 8                                         // 0x007bf952    c1ea08
                         mov              byte ptr [esi + edi * 0x1], dl                 // 0x007bf955    88143e
                         {disp8} mov      edx, dword ptr [eax + 0x14]                    // 0x007bf958    8b5014
                         {disp8} mov      esi, dword ptr [eax + 0x08]                    // 0x007bf95b    8b7008
                         inc              edx                                            // 0x007bf95e    42
                         {disp8} mov      dword ptr [eax + 0x14], edx                    // 0x007bf95f    895014
                         pop              edi                                            // 0x007bf962    5f
                         mov              byte ptr [esi + edx * 0x1], cl                 // 0x007bf963    880c16
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x007bf966    8b4814
                         inc              ecx                                            // 0x007bf969    41
                         pop              esi                                            // 0x007bf96a    5e
                         {disp8} mov      dword ptr [eax + 0x14], ecx                    // 0x007bf96b    894814
                         ret                                                             // 0x007bf96e    c3
                         nop                                                             // 0x007bf96f    90
_flush_pending:          {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x007bf970    8b442404
                         push             esi                                            // 0x007bf974    56
                         {disp8} mov      esi, dword ptr [eax + 0x1c]                    // 0x007bf975    8b701c
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                    // 0x007bf978    8b4810
                         {disp8} mov      edx, dword ptr [esi + 0x14]                    // 0x007bf97b    8b5614
                         cmp.s            edx, ecx                                       // 0x007bf97e    3bd1
                         {disp8} jbe      _jmp_addr_0x007bf984                           // 0x007bf980    7602
                         mov.s            edx, ecx                                       // 0x007bf982    8bd1
_jmp_addr_0x007bf984:    test             edx, edx                                       // 0x007bf984    85d2
                         {disp8} je       _jmp_addr_0x007bf9e0                           // 0x007bf986    7458
                         {disp8} mov      esi, dword ptr [esi + 0x10]                    // 0x007bf988    8b7610
                         mov.s            ecx, edx                                       // 0x007bf98b    8bca
                         push             ebx                                            // 0x007bf98d    53
                         mov.s            ebx, ecx                                       // 0x007bf98e    8bd9
                         push             edi                                            // 0x007bf990    57
                         {disp8} mov      edi, dword ptr [eax + 0x0c]                    // 0x007bf991    8b780c
                         shr              ecx, 2                                         // 0x007bf994    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bf997    f3a5
                         mov.s            ecx, ebx                                       // 0x007bf999    8bcb
                         and              ecx, 0x03                                      // 0x007bf99b    83e103
                         rep movsb                                                       // 0x007bf99e    f3a4
                         {disp8} mov      edi, dword ptr [eax + 0x0c]                    // 0x007bf9a0    8b780c
                         {disp8} mov      ecx, dword ptr [eax + 0x1c]                    // 0x007bf9a3    8b481c
                         add.s            edi, edx                                       // 0x007bf9a6    03fa
                         {disp8} mov      dword ptr [eax + 0x0c], edi                    // 0x007bf9a8    89780c
                         {disp8} mov      esi, dword ptr [ecx + 0x10]                    // 0x007bf9ab    8b7110
                         add.s            esi, edx                                       // 0x007bf9ae    03f2
                         {disp8} mov      dword ptr [ecx + 0x10], esi                    // 0x007bf9b0    897110
                         {disp8} mov      ebx, dword ptr [eax + 0x14]                    // 0x007bf9b3    8b5814
                         {disp8} mov      edi, dword ptr [eax + 0x10]                    // 0x007bf9b6    8b7810
                         {disp8} mov      ecx, dword ptr [eax + 0x1c]                    // 0x007bf9b9    8b481c
                         add.s            ebx, edx                                       // 0x007bf9bc    03da
                         sub.s            edi, edx                                       // 0x007bf9be    2bfa
                         {disp8} mov      dword ptr [eax + 0x14], ebx                    // 0x007bf9c0    895814
                         {disp8} mov      dword ptr [eax + 0x10], edi                    // 0x007bf9c3    897810
                         {disp8} mov      esi, dword ptr [ecx + 0x14]                    // 0x007bf9c6    8b7114
                         pop              edi                                            // 0x007bf9c9    5f
                         sub.s            esi, edx                                       // 0x007bf9ca    2bf2
                         pop              ebx                                            // 0x007bf9cc    5b
                         {disp8} mov      dword ptr [ecx + 0x14], esi                    // 0x007bf9cd    897114
                         {disp8} mov      eax, dword ptr [eax + 0x1c]                    // 0x007bf9d0    8b401c
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x007bf9d3    8b4814
                         test             ecx, ecx                                       // 0x007bf9d6    85c9
                         {disp8} jne      _jmp_addr_0x007bf9e0                           // 0x007bf9d8    7506
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x007bf9da    8b4808
                         {disp8} mov      dword ptr [eax + 0x10], ecx                    // 0x007bf9dd    894810
_jmp_addr_0x007bf9e0:    pop              esi                                            // 0x007bf9e0    5e
                         ret                                                             // 0x007bf9e1    c3
                         nop                                                             // 0x007bf9e2    90
                         nop                                                             // 0x007bf9e3    90
                         nop                                                             // 0x007bf9e4    90
                         nop                                                             // 0x007bf9e5    90
                         nop                                                             // 0x007bf9e6    90
                         nop                                                             // 0x007bf9e7    90
                         nop                                                             // 0x007bf9e8    90
                         nop                                                             // 0x007bf9e9    90
                         nop                                                             // 0x007bf9ea    90
                         nop                                                             // 0x007bf9eb    90
                         nop                                                             // 0x007bf9ec    90
                         nop                                                             // 0x007bf9ed    90
                         nop                                                             // 0x007bf9ee    90
                         nop                                                             // 0x007bf9ef    90
_deflateEnd:             push             esi                                            // 0x007bf9f0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x007bf9f1    8b742408
                         test             esi, esi                                       // 0x007bf9f5    85f6
                         push             edi                                            // 0x007bf9f7    57
                         {disp32} je      _jmp_addr_0x007bfa92                           // 0x007bf9f8    0f8494000000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007bf9fe    8b461c
                         test             eax, eax                                       // 0x007bfa01    85c0
                         {disp32} je      _jmp_addr_0x007bfa92                           // 0x007bfa03    0f8489000000
                         {disp8} mov      edi, dword ptr [eax + 0x04]                    // 0x007bfa09    8b7804
                         cmp              edi, 0x2a                                      // 0x007bfa0c    83ff2a
                         {disp8} je       _jmp_addr_0x007bfa1e                           // 0x007bfa0f    740d
                         cmp              edi, 0x71                                      // 0x007bfa11    83ff71
                         {disp8} je       _jmp_addr_0x007bfa1e                           // 0x007bfa14    7408
                         cmp              edi, 0x0000029a                                // 0x007bfa16    81ff9a020000
                         {disp8} jne      _jmp_addr_0x007bfa92                           // 0x007bfa1c    7574
_jmp_addr_0x007bfa1e:    {disp8} mov      eax, dword ptr [eax + 0x08]                    // 0x007bfa1e    8b4008
                         test             eax, eax                                       // 0x007bfa21    85c0
                         {disp8} je       _jmp_addr_0x007bfa30                           // 0x007bfa23    740b
                         push             eax                                            // 0x007bfa25    50
                         {disp8} mov      eax, dword ptr [esi + 0x28]                    // 0x007bfa26    8b4628
                         push             eax                                            // 0x007bfa29    50
                         call             dword ptr [esi + 0x24]                         // 0x007bfa2a    ff5624
                         add              esp, 0x08                                      // 0x007bfa2d    83c408
_jmp_addr_0x007bfa30:    {disp8} mov      ecx, dword ptr [esi + 0x1c]                    // 0x007bfa30    8b4e1c
                         {disp8} mov      eax, dword ptr [ecx + 0x3c]                    // 0x007bfa33    8b413c
                         test             eax, eax                                       // 0x007bfa36    85c0
                         {disp8} je       _jmp_addr_0x007bfa45                           // 0x007bfa38    740b
                         {disp8} mov      edx, dword ptr [esi + 0x28]                    // 0x007bfa3a    8b5628
                         push             eax                                            // 0x007bfa3d    50
                         push             edx                                            // 0x007bfa3e    52
                         call             dword ptr [esi + 0x24]                         // 0x007bfa3f    ff5624
                         add              esp, 0x08                                      // 0x007bfa42    83c408
_jmp_addr_0x007bfa45:    {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007bfa45    8b461c
                         {disp8} mov      eax, dword ptr [eax + 0x38]                    // 0x007bfa48    8b4038
                         test             eax, eax                                       // 0x007bfa4b    85c0
                         {disp8} je       _jmp_addr_0x007bfa5a                           // 0x007bfa4d    740b
                         {disp8} mov      ecx, dword ptr [esi + 0x28]                    // 0x007bfa4f    8b4e28
                         push             eax                                            // 0x007bfa52    50
                         push             ecx                                            // 0x007bfa53    51
                         call             dword ptr [esi + 0x24]                         // 0x007bfa54    ff5624
                         add              esp, 0x08                                      // 0x007bfa57    83c408
_jmp_addr_0x007bfa5a:    {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007bfa5a    8b561c
                         {disp8} mov      eax, dword ptr [edx + 0x30]                    // 0x007bfa5d    8b4230
                         test             eax, eax                                       // 0x007bfa60    85c0
                         {disp8} je       _jmp_addr_0x007bfa6f                           // 0x007bfa62    740b
                         push             eax                                            // 0x007bfa64    50
                         {disp8} mov      eax, dword ptr [esi + 0x28]                    // 0x007bfa65    8b4628
                         push             eax                                            // 0x007bfa68    50
                         call             dword ptr [esi + 0x24]                         // 0x007bfa69    ff5624
                         add              esp, 0x08                                      // 0x007bfa6c    83c408
_jmp_addr_0x007bfa6f:    {disp8} mov      ecx, dword ptr [esi + 0x1c]                    // 0x007bfa6f    8b4e1c
                         {disp8} mov      edx, dword ptr [esi + 0x28]                    // 0x007bfa72    8b5628
                         push             ecx                                            // 0x007bfa75    51
                         push             edx                                            // 0x007bfa76    52
                         call             dword ptr [esi + 0x24]                         // 0x007bfa77    ff5624
                         add              esp, 0x08                                      // 0x007bfa7a    83c408
                         xor.s            eax, eax                                       // 0x007bfa7d    33c0
                         cmp              edi, 0x71                                      // 0x007bfa7f    83ff71
                         {disp8} mov      dword ptr [esi + 0x1c], 0x00000000             // 0x007bfa82    c7461c00000000
                         setne            al                                             // 0x007bfa89    0f95c0
                         dec              eax                                            // 0x007bfa8c    48
                         pop              edi                                            // 0x007bfa8d    5f
                         and              al, -0x03                                      // 0x007bfa8e    24fd
                         pop              esi                                            // 0x007bfa90    5e
                         ret                                                             // 0x007bfa91    c3
_jmp_addr_0x007bfa92:    pop              edi                                            // 0x007bfa92    5f
                         mov              eax, 0xfffffffe                                // 0x007bfa93    b8feffffff
                         pop              esi                                            // 0x007bfa98    5e
                         ret                                                             // 0x007bfa99    c3
                         nop                                                             // 0x007bfa9a    90
                         nop                                                             // 0x007bfa9b    90
                         nop                                                             // 0x007bfa9c    90
                         nop                                                             // 0x007bfa9d    90
                         nop                                                             // 0x007bfa9e    90
                         nop                                                             // 0x007bfa9f    90
_deflateCopy:            push             ebx                                            // 0x007bfaa0    53
                         push             ebp                                            // 0x007bfaa1    55
                         push             esi                                            // 0x007bfaa2    56
                         {disp8} mov      esi, dword ptr [esp + 0x14]                    // 0x007bfaa3    8b742414
                         test             esi, esi                                       // 0x007bfaa7    85f6
                         push             edi                                            // 0x007bfaa9    57
                         {disp32} je      _jmp_addr_0x007bfc45                           // 0x007bfaaa    0f8495010000
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                    // 0x007bfab0    8b6c2414
                         test             ebp, ebp                                       // 0x007bfab4    85ed
                         {disp32} je      _jmp_addr_0x007bfc45                           // 0x007bfab6    0f8489010000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007bfabc    8b461c
                         test             eax, eax                                       // 0x007bfabf    85c0
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x007bfac1    89442418
                         {disp32} je      _jmp_addr_0x007bfc45                           // 0x007bfac5    0f847a010000
                         mov              ecx, 0x0000000e                                // 0x007bfacb    b90e000000
                         mov.s            edi, ebp                                       // 0x007bfad0    8bfd
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bfad2    f3a5
                         {disp8} mov      eax, dword ptr [ebp + 0x28]                    // 0x007bfad4    8b4528
                         push             0x000016b8                                     // 0x007bfad7    68b8160000
                         push             0x1                                            // 0x007bfadc    6a01
                         push             eax                                            // 0x007bfade    50
                         call             dword ptr [ebp + 0x20]                         // 0x007bfadf    ff5520
                         mov.s            ebx, eax                                       // 0x007bfae2    8bd8
                         add              esp, 0x0c                                      // 0x007bfae4    83c40c
                         test             ebx, ebx                                       // 0x007bfae7    85db
                         {disp8} jne      _jmp_addr_0x007bfaf5                           // 0x007bfae9    750a
                         pop              edi                                            // 0x007bfaeb    5f
                         pop              esi                                            // 0x007bfaec    5e
                         pop              ebp                                            // 0x007bfaed    5d
                         mov              eax, 0xfffffffc                                // 0x007bfaee    b8fcffffff
                         pop              ebx                                            // 0x007bfaf3    5b
                         ret                                                             // 0x007bfaf4    c3
_jmp_addr_0x007bfaf5:    {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x007bfaf5    8b742418
                         mov              ecx, 0x000005ae                                // 0x007bfaf9    b9ae050000
                         mov.s            edi, ebx                                       // 0x007bfafe    8bfb
                         {disp8} mov      dword ptr [ebp + 0x1c], ebx                    // 0x007bfb00    895d1c
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bfb03    f3a5
                         {disp8} mov      ecx, dword ptr [ebx + 0x24]                    // 0x007bfb05    8b4b24
                         mov              dword ptr [ebx], ebp                           // 0x007bfb08    892b
                         {disp8} mov      edx, dword ptr [ebp + 0x28]                    // 0x007bfb0a    8b5528
                         push             0x2                                            // 0x007bfb0d    6a02
                         push             ecx                                            // 0x007bfb0f    51
                         push             edx                                            // 0x007bfb10    52
                         call             dword ptr [ebp + 0x20]                         // 0x007bfb11    ff5520
                         {disp8} mov      dword ptr [ebx + 0x30], eax                    // 0x007bfb14    894330
                         {disp8} mov      eax, dword ptr [ebx + 0x24]                    // 0x007bfb17    8b4324
                         {disp8} mov      ecx, dword ptr [ebp + 0x28]                    // 0x007bfb1a    8b4d28
                         push             0x2                                            // 0x007bfb1d    6a02
                         push             eax                                            // 0x007bfb1f    50
                         push             ecx                                            // 0x007bfb20    51
                         call             dword ptr [ebp + 0x20]                         // 0x007bfb21    ff5520
                         {disp8} mov      edx, dword ptr [ebx + 0x44]                    // 0x007bfb24    8b5344
                         {disp8} mov      dword ptr [ebx + 0x38], eax                    // 0x007bfb27    894338
                         {disp8} mov      eax, dword ptr [ebp + 0x28]                    // 0x007bfb2a    8b4528
                         push             0x2                                            // 0x007bfb2d    6a02
                         push             edx                                            // 0x007bfb2f    52
                         push             eax                                            // 0x007bfb30    50
                         call             dword ptr [ebp + 0x20]                         // 0x007bfb31    ff5520
                         {disp32} mov     ecx, dword ptr [ebx + 0x00001694]              // 0x007bfb34    8b8b94160000
                         {disp8} mov      dword ptr [ebx + 0x3c], eax                    // 0x007bfb3a    89433c
                         {disp8} mov      edx, dword ptr [ebp + 0x28]                    // 0x007bfb3d    8b5528
                         push             0x4                                            // 0x007bfb40    6a04
                         push             ecx                                            // 0x007bfb42    51
                         push             edx                                            // 0x007bfb43    52
                         call             dword ptr [ebp + 0x20]                         // 0x007bfb44    ff5520
                         {disp8} mov      edi, dword ptr [ebx + 0x30]                    // 0x007bfb47    8b7b30
                         add              esp, 0x30                                      // 0x007bfb4a    83c430
                         test             edi, edi                                       // 0x007bfb4d    85ff
                         {disp8} mov      dword ptr [ebx + 0x08], eax                    // 0x007bfb4f    894308
                         {disp32} je      _jmp_addr_0x007bfc32                           // 0x007bfb52    0f84da000000
                         {disp8} mov      ecx, dword ptr [ebx + 0x38]                    // 0x007bfb58    8b4b38
                         test             ecx, ecx                                       // 0x007bfb5b    85c9
                         {disp32} je      _jmp_addr_0x007bfc32                           // 0x007bfb5d    0f84cf000000
                         {disp8} mov      ecx, dword ptr [ebx + 0x3c]                    // 0x007bfb63    8b4b3c
                         test             ecx, ecx                                       // 0x007bfb66    85c9
                         {disp32} je      _jmp_addr_0x007bfc32                           // 0x007bfb68    0f84c4000000
                         test             eax, eax                                       // 0x007bfb6e    85c0
                         {disp32} je      _jmp_addr_0x007bfc32                           // 0x007bfb70    0f84bc000000
                         {disp8} mov      ecx, dword ptr [ebx + 0x24]                    // 0x007bfb76    8b4b24
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x007bfb79    8b542418
                         shl              ecx, 1                                         // 0x007bfb7d    d1e1
                         {disp8} mov      esi, dword ptr [edx + 0x30]                    // 0x007bfb7f    8b7230
                         mov.s            ebp, ecx                                       // 0x007bfb82    8be9
                         shr              ecx, 2                                         // 0x007bfb84    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bfb87    f3a5
                         mov.s            ecx, ebp                                       // 0x007bfb89    8bcd
                         and              ecx, 0x03                                      // 0x007bfb8b    83e103
                         rep movsb                                                       // 0x007bfb8e    f3a4
                         {disp8} mov      ecx, dword ptr [ebx + 0x24]                    // 0x007bfb90    8b4b24
                         {disp8} mov      esi, dword ptr [edx + 0x38]                    // 0x007bfb93    8b7238
                         {disp8} mov      edi, dword ptr [ebx + 0x38]                    // 0x007bfb96    8b7b38
                         shl              ecx, 1                                         // 0x007bfb99    d1e1
                         mov.s            ebp, ecx                                       // 0x007bfb9b    8be9
                         shr              ecx, 2                                         // 0x007bfb9d    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bfba0    f3a5
                         mov.s            ecx, ebp                                       // 0x007bfba2    8bcd
                         and              ecx, 0x03                                      // 0x007bfba4    83e103
                         rep movsb                                                       // 0x007bfba7    f3a4
                         {disp8} mov      ecx, dword ptr [ebx + 0x44]                    // 0x007bfba9    8b4b44
                         {disp8} mov      esi, dword ptr [edx + 0x3c]                    // 0x007bfbac    8b723c
                         {disp8} mov      edi, dword ptr [ebx + 0x3c]                    // 0x007bfbaf    8b7b3c
                         shl              ecx, 1                                         // 0x007bfbb2    d1e1
                         mov.s            ebp, ecx                                       // 0x007bfbb4    8be9
                         shr              ecx, 2                                         // 0x007bfbb6    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bfbb9    f3a5
                         mov.s            ecx, ebp                                       // 0x007bfbbb    8bcd
                         and              ecx, 0x03                                      // 0x007bfbbd    83e103
                         rep movsb                                                       // 0x007bfbc0    f3a4
                         {disp8} mov      ecx, dword ptr [ebx + 0x0c]                    // 0x007bfbc2    8b4b0c
                         {disp8} mov      esi, dword ptr [edx + 0x08]                    // 0x007bfbc5    8b7208
                         {disp8} mov      edi, dword ptr [ebx + 0x08]                    // 0x007bfbc8    8b7b08
                         mov.s            ebp, ecx                                       // 0x007bfbcb    8be9
                         shr              ecx, 2                                         // 0x007bfbcd    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bfbd0    f3a5
                         mov.s            ecx, ebp                                       // 0x007bfbd2    8bcd
                         and              ecx, 0x03                                      // 0x007bfbd4    83e103
                         rep movsb                                                       // 0x007bfbd7    f3a4
                         {disp8} mov      ecx, dword ptr [edx + 0x10]                    // 0x007bfbd9    8b4a10
                         {disp8} mov      edi, dword ptr [edx + 0x08]                    // 0x007bfbdc    8b7a08
                         {disp8} mov      esi, dword ptr [ebx + 0x08]                    // 0x007bfbdf    8b7308
                         sub.s            ecx, edi                                       // 0x007bfbe2    2bcf
                         add.s            ecx, esi                                       // 0x007bfbe4    03ce
                         pop              edi                                            // 0x007bfbe6    5f
                         {disp8} mov      dword ptr [ebx + 0x10], ecx                    // 0x007bfbe7    894b10
                         {disp32} mov     ecx, dword ptr [ebx + 0x00001694]              // 0x007bfbea    8b8b94160000
                         mov.s            edx, ecx                                       // 0x007bfbf0    8bd1
                         shr              edx, 1                                         // 0x007bfbf2    d1ea
                         lea              eax, dword ptr [eax + edx * 0x2]               // 0x007bfbf4    8d0450
                         lea              edx, dword ptr [esi + ecx * 0x2]               // 0x007bfbf7    8d144e
                         add.s            ecx, edx                                       // 0x007bfbfa    03ca
                         {disp32} mov     dword ptr [ebx + 0x0000169c], eax              // 0x007bfbfc    89839c160000
                         {disp32} mov     dword ptr [ebx + 0x00001690], ecx              // 0x007bfc02    898b90160000
                         {disp32} lea     eax, dword ptr [ebx + 0x0000008c]              // 0x007bfc08    8d838c000000
                         {disp32} lea     ecx, dword ptr [ebx + 0x00000980]              // 0x007bfc0e    8d8b80090000
                         {disp32} lea     edx, dword ptr [ebx + 0x00000a74]              // 0x007bfc14    8d93740a0000
                         pop              esi                                            // 0x007bfc1a    5e
                         {disp32} mov     dword ptr [ebx + 0x00000b10], eax              // 0x007bfc1b    8983100b0000
                         {disp32} mov     dword ptr [ebx + 0x00000b1c], ecx              // 0x007bfc21    898b1c0b0000
                         {disp32} mov     dword ptr [ebx + 0x00000b28], edx              // 0x007bfc27    8993280b0000
                         pop              ebp                                            // 0x007bfc2d    5d
                         xor.s            eax, eax                                       // 0x007bfc2e    33c0
                         pop              ebx                                            // 0x007bfc30    5b
                         ret                                                             // 0x007bfc31    c3
_jmp_addr_0x007bfc32:    push             ebp                                            // 0x007bfc32    55
                         call             _deflateEnd                                    // 0x007bfc33    e8b8fdffff
                         add              esp, 0x04                                      // 0x007bfc38    83c404
                         mov              eax, 0xfffffffc                                // 0x007bfc3b    b8fcffffff
                         pop              edi                                            // 0x007bfc40    5f
                         pop              esi                                            // 0x007bfc41    5e
                         pop              ebp                                            // 0x007bfc42    5d
                         pop              ebx                                            // 0x007bfc43    5b
                         ret                                                             // 0x007bfc44    c3
_jmp_addr_0x007bfc45:    pop              edi                                            // 0x007bfc45    5f
                         pop              esi                                            // 0x007bfc46    5e
                         pop              ebp                                            // 0x007bfc47    5d
                         mov              eax, 0xfffffffe                                // 0x007bfc48    b8feffffff
                         pop              ebx                                            // 0x007bfc4d    5b
                         ret                                                             // 0x007bfc4e    c3
                         nop                                                             // 0x007bfc4f    90
_lm_init:                {disp8} mov      edx, dword ptr [esp + 0x04]                    // 0x007bfc50    8b542404
                         push             ebx                                            // 0x007bfc54    53
                         push             esi                                            // 0x007bfc55    56
                         xor.s            esi, esi                                       // 0x007bfc56    33f6
                         {disp8} mov      eax, dword ptr [edx + 0x24]                    // 0x007bfc58    8b4224
                         {disp8} mov      ecx, dword ptr [edx + 0x44]                    // 0x007bfc5b    8b4a44
                         shl              eax, 1                                         // 0x007bfc5e    d1e0
                         {disp8} mov      dword ptr [edx + 0x34], eax                    // 0x007bfc60    894234
                         {disp8} mov      eax, dword ptr [edx + 0x3c]                    // 0x007bfc63    8b423c
                         push             edi                                            // 0x007bfc66    57
                         {disp8} mov      word ptr [eax + ecx * 0x2 + -0x02], si         // 0x007bfc67    66897448fe
                         {disp8} mov      ecx, dword ptr [edx + 0x44]                    // 0x007bfc6c    8b4a44
                         {disp8} mov      edi, dword ptr [edx + 0x3c]                    // 0x007bfc6f    8b7a3c
                         xor.s            eax, eax                                       // 0x007bfc72    33c0
                         {disp8} lea      ecx, dword ptr [ecx + ecx * 0x1 + -0x02]       // 0x007bfc74    8d4c09fe
                         mov.s            ebx, ecx                                       // 0x007bfc78    8bd9
                         shr              ecx, 2                                         // 0x007bfc7a    c1e902
                         rep stosd                                                       // 0x007bfc7d    f3ab
                         mov.s            ecx, ebx                                       // 0x007bfc7f    8bcb
                         and              ecx, 0x03                                      // 0x007bfc81    83e103
                         rep stosb                                                       // 0x007bfc84    f3aa
                         {disp8} mov      eax, dword ptr [edx + 0x7c]                    // 0x007bfc86    8b427c
                         xor.s            ecx, ecx                                       // 0x007bfc89    33c9
                         pop              edi                                            // 0x007bfc8b    5f
                         lea              eax, dword ptr [eax + eax * 0x2]               // 0x007bfc8c    8d0440
                         shl              eax, 2                                         // 0x007bfc8f    c1e002
                         {disp32} mov     cx, word ptr [eax + 0x0099f8b2]                // 0x007bfc92    668b88b2f89900
                         {disp8} mov      dword ptr [edx + 0x78], ecx                    // 0x007bfc99    894a78
                         xor.s            ecx, ecx                                       // 0x007bfc9c    33c9
                         {disp32} mov     cx, word ptr [eax + 0x0099f8b0]                // 0x007bfc9e    668b88b0f89900
                         {disp32} mov     dword ptr [edx + 0x00000084], ecx              // 0x007bfca5    898a84000000
                         xor.s            ecx, ecx                                       // 0x007bfcab    33c9
                         {disp32} mov     cx, word ptr [eax + 0x0099f8b4]                // 0x007bfcad    668b88b4f89900
                         {disp32} mov     dword ptr [edx + 0x00000088], ecx              // 0x007bfcb4    898a88000000
                         xor.s            ecx, ecx                                       // 0x007bfcba    33c9
                         {disp32} mov     cx, word ptr [eax + 0x0099f8b6]                // 0x007bfcbc    668b88b6f89900
                         {disp8} mov      dword ptr [edx + 0x64], esi                    // 0x007bfcc3    897264
                         {disp8} mov      dword ptr [edx + 0x54], esi                    // 0x007bfcc6    897254
                         {disp8} mov      dword ptr [edx + 0x6c], esi                    // 0x007bfcc9    89726c
                         mov              eax, 0x00000002                                // 0x007bfccc    b802000000
                         {disp8} mov      dword ptr [edx + 0x60], esi                    // 0x007bfcd1    897260
                         {disp8} mov      dword ptr [edx + 0x40], esi                    // 0x007bfcd4    897240
                         pop              esi                                            // 0x007bfcd7    5e
                         {disp8} mov      dword ptr [edx + 0x74], ecx                    // 0x007bfcd8    894a74
                         {disp8} mov      dword ptr [edx + 0x70], eax                    // 0x007bfcdb    894270
                         {disp8} mov      dword ptr [edx + 0x58], eax                    // 0x007bfcde    894258
                         pop              ebx                                            // 0x007bfce1    5b
                         ret                                                             // 0x007bfce2    c3
                         nop                                                             // 0x007bfce3    90
                         nop                                                             // 0x007bfce4    90
                         nop                                                             // 0x007bfce5    90
                         nop                                                             // 0x007bfce6    90
                         nop                                                             // 0x007bfce7    90
                         nop                                                             // 0x007bfce8    90
                         nop                                                             // 0x007bfce9    90
                         nop                                                             // 0x007bfcea    90
                         nop                                                             // 0x007bfceb    90
                         nop                                                             // 0x007bfcec    90
                         nop                                                             // 0x007bfced    90
                         nop                                                             // 0x007bfcee    90
                         nop                                                             // 0x007bfcef    90
_deflate_stored:         push             ebx                                            // 0x007bfcf0    53
                         push             ebp                                            // 0x007bfcf1    55
                         push             esi                                            // 0x007bfcf2    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                    // 0x007bfcf3    8b742410
                         mov              ebx, 0x0000ffff                                // 0x007bfcf7    bbffff0000
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                    // 0x007bfcfc    8b460c
                         add              eax, -0x05                                     // 0x007bfcff    83c0fb
                         cmp.s            eax, ebx                                       // 0x007bfd02    3bc3
                         {disp8} jae      _jmp_addr_0x007bfd08                           // 0x007bfd04    7302
                         mov.s            ebx, eax                                       // 0x007bfd06    8bd8
_jmp_addr_0x007bfd08:    {disp8} mov      ebp, dword ptr [esp + 0x14]                    // 0x007bfd08    8b6c2414
_jmp_addr_0x007bfd0c:    {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007bfd0c    8b466c
                         cmp              eax, 0x01                                      // 0x007bfd0f    83f801
                         {disp8} ja       _jmp_addr_0x007bfd34                           // 0x007bfd12    7720
                         push             esi                                            // 0x007bfd14    56
                         call             _fill_window                                   // 0x007bfd15    e836010000
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007bfd1a    8b466c
                         add              esp, 0x04                                      // 0x007bfd1d    83c404
                         test             eax, eax                                       // 0x007bfd20    85c0
                         {disp8} jne      _jmp_addr_0x007bfd34                           // 0x007bfd22    7510
                         test             ebp, ebp                                       // 0x007bfd24    85ed
                         {disp32} je      _jmp_addr_0x007bfe41                           // 0x007bfd26    0f8415010000
                         test             eax, eax                                       // 0x007bfd2c    85c0
                         {disp32} je      _jmp_addr_0x007bfddf                           // 0x007bfd2e    0f84ab000000
_jmp_addr_0x007bfd34:    {disp8} mov      ecx, dword ptr [esi + 0x64]                    // 0x007bfd34    8b4e64
                         {disp8} mov      dword ptr [esi + 0x6c], 0x00000000             // 0x007bfd37    c7466c00000000
                         add.s            ecx, eax                                       // 0x007bfd3e    03c8
                         {disp8} mov      dword ptr [esi + 0x64], ecx                    // 0x007bfd40    894e64
                         {disp8} mov      ecx, dword ptr [esi + 0x54]                    // 0x007bfd43    8b4e54
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007bfd46    8b5664
                         lea              eax, dword ptr [ecx + ebx * 0x1]               // 0x007bfd49    8d0419
                         {disp8} je       _jmp_addr_0x007bfd52                           // 0x007bfd4c    7404
                         cmp.s            edx, eax                                       // 0x007bfd4e    3bd0
                         .byte            0x72, 0x3f// {disp8} jb _jmp_addr_0x007bfd91   // 0x007bfd50    723f
_jmp_addr_0x007bfd52:    sub.s            edx, eax                                       // 0x007bfd52    2bd0
                         {disp8} mov      dword ptr [esi + 0x64], eax                    // 0x007bfd54    894664
                         test             ecx, ecx                                       // 0x007bfd57    85c9
                         {disp8} mov      dword ptr [esi + 0x6c], edx                    // 0x007bfd59    89566c
                         {disp8} jl       _jmp_addr_0x007bfd65                           // 0x007bfd5c    7c07
                         {disp8} mov      edx, dword ptr [esi + 0x30]                    // 0x007bfd5e    8b5630
                         add.s            edx, ecx                                       // 0x007bfd61    03d1
                         {disp8} jmp      _jmp_addr_0x007bfd67                           // 0x007bfd63    eb02
_jmp_addr_0x007bfd65:    xor.s            edx, edx                                       // 0x007bfd65    33d2
_jmp_addr_0x007bfd67:    sub.s            eax, ecx                                       // 0x007bfd67    2bc1
                         push             0x0                                            // 0x007bfd69    6a00
                         push             eax                                            // 0x007bfd6b    50
                         push             edx                                            // 0x007bfd6c    52
                         push             esi                                            // 0x007bfd6d    56
                         call             __tr_flush_block                               // 0x007bfd6e    e86d180000
                         mov              ecx, dword ptr [esi]                           // 0x007bfd73    8b0e
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007bfd75    8b4664
                         push             ecx                                            // 0x007bfd78    51
                         {disp8} mov      dword ptr [esi + 0x54], eax                    // 0x007bfd79    894654
                         call             _flush_pending                                 // 0x007bfd7c    e8effbffff
                         mov              edx, dword ptr [esi]                           // 0x007bfd81    8b16
                         add              esp, 0x14                                      // 0x007bfd83    83c414
                         {disp8} mov      eax, dword ptr [edx + 0x10]                    // 0x007bfd86    8b4210
                         test             eax, eax                                       // 0x007bfd89    85c0
                         {disp32} je      _jmp_addr_0x007bfe41                           // 0x007bfd8b    0f84b0000000
_jmp_addr_0x007bfd91:    {disp8} mov      ecx, dword ptr [esi + 0x54]                    // 0x007bfd91    8b4e54
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007bfd94    8b5664
                         {disp8} mov      eax, dword ptr [esi + 0x24]                    // 0x007bfd97    8b4624
                         sub.s            edx, ecx                                       // 0x007bfd9a    2bd1
                         sub              eax, 0x00000106                                // 0x007bfd9c    2d06010000
                         cmp.s            edx, eax                                       // 0x007bfda1    3bd0
                         {disp32} jb      _jmp_addr_0x007bfd0c                           // 0x007bfda3    0f8263ffffff
                         test             ecx, ecx                                       // 0x007bfda9    85c9
                         {disp8} jl       _jmp_addr_0x007bfdb4                           // 0x007bfdab    7c07
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007bfdad    8b4630
                         add.s            eax, ecx                                       // 0x007bfdb0    03c1
                         {disp8} jmp      _jmp_addr_0x007bfdb6                           // 0x007bfdb2    eb02
_jmp_addr_0x007bfdb4:    xor.s            eax, eax                                       // 0x007bfdb4    33c0
_jmp_addr_0x007bfdb6:    push             0x0                                            // 0x007bfdb6    6a00
                         push             edx                                            // 0x007bfdb8    52
                         push             eax                                            // 0x007bfdb9    50
                         push             esi                                            // 0x007bfdba    56
                         call             __tr_flush_block                               // 0x007bfdbb    e820180000
                         mov              edx, dword ptr [esi]                           // 0x007bfdc0    8b16
                         {disp8} mov      ecx, dword ptr [esi + 0x64]                    // 0x007bfdc2    8b4e64
                         push             edx                                            // 0x007bfdc5    52
                         {disp8} mov      dword ptr [esi + 0x54], ecx                    // 0x007bfdc6    894e54
                         call             _flush_pending                                 // 0x007bfdc9    e8a2fbffff
                         mov              eax, dword ptr [esi]                           // 0x007bfdce    8b06
                         add              esp, 0x14                                      // 0x007bfdd0    83c414
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                    // 0x007bfdd3    8b4810
                         test             ecx, ecx                                       // 0x007bfdd6    85c9
                         {disp8} je       _jmp_addr_0x007bfe41                           // 0x007bfdd8    7467
                         {disp32} jmp     _jmp_addr_0x007bfd0c                           // 0x007bfdda    e92dffffff
_jmp_addr_0x007bfddf:    {disp8} mov      ecx, dword ptr [esi + 0x54]                    // 0x007bfddf    8b4e54
                         test             ecx, ecx                                       // 0x007bfde2    85c9
                         {disp8} jl       _jmp_addr_0x007bfded                           // 0x007bfde4    7c07
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007bfde6    8b4630
                         add.s            eax, ecx                                       // 0x007bfde9    03c1
                         {disp8} jmp      _jmp_addr_0x007bfdef                           // 0x007bfdeb    eb02
_jmp_addr_0x007bfded:    xor.s            eax, eax                                       // 0x007bfded    33c0
_jmp_addr_0x007bfdef:    xor.s            edx, edx                                       // 0x007bfdef    33d2
                         cmp              ebp, 0x04                                      // 0x007bfdf1    83fd04
                         sete             dl                                             // 0x007bfdf4    0f94c2
                         push             edx                                            // 0x007bfdf7    52
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007bfdf8    8b5664
                         sub.s            edx, ecx                                       // 0x007bfdfb    2bd1
                         push             edx                                            // 0x007bfdfd    52
                         push             eax                                            // 0x007bfdfe    50
                         push             esi                                            // 0x007bfdff    56
                         call             __tr_flush_block                               // 0x007bfe00    e8db170000
                         mov              ecx, dword ptr [esi]                           // 0x007bfe05    8b0e
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007bfe07    8b4664
                         push             ecx                                            // 0x007bfe0a    51
                         {disp8} mov      dword ptr [esi + 0x54], eax                    // 0x007bfe0b    894654
                         call             _flush_pending                                 // 0x007bfe0e    e85dfbffff
                         mov              edx, dword ptr [esi]                           // 0x007bfe13    8b16
                         add              esp, 0x14                                      // 0x007bfe15    83c414
                         {disp8} mov      eax, dword ptr [edx + 0x10]                    // 0x007bfe18    8b4210
                         test             eax, eax                                       // 0x007bfe1b    85c0
                         {disp8} jne      _jmp_addr_0x007bfe2f                           // 0x007bfe1d    7510
                         xor.s            eax, eax                                       // 0x007bfe1f    33c0
                         cmp              ebp, 0x04                                      // 0x007bfe21    83fd04
                         setne            al                                             // 0x007bfe24    0f95c0
                         dec              eax                                            // 0x007bfe27    48
                         pop              esi                                            // 0x007bfe28    5e
                         pop              ebp                                            // 0x007bfe29    5d
                         and              eax, 0x02                                      // 0x007bfe2a    83e002
                         pop              ebx                                            // 0x007bfe2d    5b
                         ret                                                             // 0x007bfe2e    c3
_jmp_addr_0x007bfe2f:    mov.s            eax, ebp                                       // 0x007bfe2f    8bc5
                         pop              esi                                            // 0x007bfe31    5e
                         sub              eax, 0x04                                      // 0x007bfe32    83e804
                         pop              ebp                                            // 0x007bfe35    5d
                         neg              eax                                            // 0x007bfe36    f7d8
                         sbb.s            eax, eax                                       // 0x007bfe38    1bc0
                         pop              ebx                                            // 0x007bfe3a    5b
                         and              al, -0x02                                      // 0x007bfe3b    24fe
                         add              eax, 0x03                                      // 0x007bfe3d    83c003
                         ret                                                             // 0x007bfe40    c3
_jmp_addr_0x007bfe41:    pop              esi                                            // 0x007bfe41    5e
                         pop              ebp                                            // 0x007bfe42    5d
                         xor.s            eax, eax                                       // 0x007bfe43    33c0
                         pop              ebx                                            // 0x007bfe45    5b
                         ret                                                             // 0x007bfe46    c3
                         nop                                                             // 0x007bfe47    90
                         nop                                                             // 0x007bfe48    90
                         nop                                                             // 0x007bfe49    90
                         nop                                                             // 0x007bfe4a    90
                         nop                                                             // 0x007bfe4b    90
                         nop                                                             // 0x007bfe4c    90
                         nop                                                             // 0x007bfe4d    90
                         nop                                                             // 0x007bfe4e    90
                         nop                                                             // 0x007bfe4f    90
_fill_window:            push             ebx                                            // 0x007bfe50    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]                    // 0x007bfe51    8b5c2408
                         push             ebp                                            // 0x007bfe55    55
                         push             esi                                            // 0x007bfe56    56
                         {disp8} mov      ebp, dword ptr [ebx + 0x24]                    // 0x007bfe57    8b6b24
                         push             edi                                            // 0x007bfe5a    57
_jmp_addr_0x007bfe5b:    {disp8} mov      eax, dword ptr [ebx + 0x64]                    // 0x007bfe5b    8b4364
                         {disp8} mov      edx, dword ptr [ebx + 0x34]                    // 0x007bfe5e    8b5334
                         {disp8} mov      ecx, dword ptr [ebx + 0x6c]                    // 0x007bfe61    8b4b6c
                         sub.s            edx, eax                                       // 0x007bfe64    2bd0
                         sub.s            edx, ecx                                       // 0x007bfe66    2bd1
                         {disp8} jne      _jmp_addr_0x007bfe79                           // 0x007bfe68    750f
                         test             eax, eax                                       // 0x007bfe6a    85c0
                         {disp8} jne      _jmp_addr_0x007bfe85                           // 0x007bfe6c    7517
                         test             ecx, ecx                                       // 0x007bfe6e    85c9
                         {disp8} jne      _jmp_addr_0x007bfe85                           // 0x007bfe70    7513
                         mov.s            edx, ebp                                       // 0x007bfe72    8bd5
                         {disp32} jmp     _jmp_addr_0x007bff04                           // 0x007bfe74    e98b000000
_jmp_addr_0x007bfe79:    cmp              edx, -0x01                                     // 0x007bfe79    83faff
                         {disp8} jne      _jmp_addr_0x007bfe85                           // 0x007bfe7c    7507
                         mov              edx, 0xfffffffe                                // 0x007bfe7e    bafeffffff
                         {disp8} jmp      _jmp_addr_0x007bff04                           // 0x007bfe83    eb7f
_jmp_addr_0x007bfe85:    {disp8} mov      ecx, dword ptr [ebx + 0x24]                    // 0x007bfe85    8b4b24
                         {disp32} lea     ecx, dword ptr [ecx + ebp * 0x1 + -0x00000106] // 0x007bfe88    8d8c29fafeffff
                         cmp.s            eax, ecx                                       // 0x007bfe8f    3bc1
                         .byte            0x72, 0x71// {disp8} jb _jmp_addr_0x007bff04   // 0x007bfe91    7271
                         {disp8} mov      edi, dword ptr [ebx + 0x30]                    // 0x007bfe93    8b7b30
                         mov.s            ecx, ebp                                       // 0x007bfe96    8bcd
                         mov.s            eax, ecx                                       // 0x007bfe98    8bc1
                         lea              esi, dword ptr [edi + ebp * 0x1]               // 0x007bfe9a    8d342f
                         shr              ecx, 2                                         // 0x007bfe9d    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bfea0    f3a5
                         mov.s            ecx, eax                                       // 0x007bfea2    8bc8
                         and              ecx, 0x03                                      // 0x007bfea4    83e103
                         rep movsb                                                       // 0x007bfea7    f3a4
                         {disp8} mov      esi, dword ptr [ebx + 0x68]                    // 0x007bfea9    8b7368
                         {disp8} mov      ecx, dword ptr [ebx + 0x64]                    // 0x007bfeac    8b4b64
                         {disp8} mov      eax, dword ptr [ebx + 0x54]                    // 0x007bfeaf    8b4354
                         sub.s            esi, ebp                                       // 0x007bfeb2    2bf5
                         sub.s            ecx, ebp                                       // 0x007bfeb4    2bcd
                         {disp8} mov      dword ptr [ebx + 0x68], esi                    // 0x007bfeb6    897368
                         {disp8} mov      esi, dword ptr [ebx + 0x44]                    // 0x007bfeb9    8b7344
                         {disp8} mov      dword ptr [ebx + 0x64], ecx                    // 0x007bfebc    894b64
                         {disp8} mov      ecx, dword ptr [ebx + 0x3c]                    // 0x007bfebf    8b4b3c
                         sub.s            eax, ebp                                       // 0x007bfec2    2bc5
                         {disp8} mov      dword ptr [ebx + 0x54], eax                    // 0x007bfec4    894354
                         lea              ecx, dword ptr [ecx + esi * 0x2]               // 0x007bfec7    8d0c71
_jmp_addr_0x007bfeca:    sub              ecx, 0x02                                      // 0x007bfeca    83e902
                         xor.s            eax, eax                                       // 0x007bfecd    33c0
                         mov              ax, word ptr [ecx]                             // 0x007bfecf    668b01
                         cmp.s            eax, ebp                                       // 0x007bfed2    3bc5
                         .byte            0x72, 0x4// {disp8} jb _jmp_addr_0x007bfeda    // 0x007bfed4    7204
                         sub.s            eax, ebp                                       // 0x007bfed6    2bc5
                         {disp8} jmp      _jmp_addr_0x007bfedc                           // 0x007bfed8    eb02
_jmp_addr_0x007bfeda:    xor.s            eax, eax                                       // 0x007bfeda    33c0
_jmp_addr_0x007bfedc:    dec              esi                                            // 0x007bfedc    4e
                         mov              word ptr [ecx], ax                             // 0x007bfedd    668901
                         {disp8} jne      _jmp_addr_0x007bfeca                           // 0x007bfee0    75e8
                         {disp8} mov      eax, dword ptr [ebx + 0x38]                    // 0x007bfee2    8b4338
                         mov.s            esi, ebp                                       // 0x007bfee5    8bf5
                         lea              ecx, dword ptr [eax + ebp * 0x2]               // 0x007bfee7    8d0c68
_jmp_addr_0x007bfeea:    sub              ecx, 0x02                                      // 0x007bfeea    83e902
                         xor.s            eax, eax                                       // 0x007bfeed    33c0
                         mov              ax, word ptr [ecx]                             // 0x007bfeef    668b01
                         cmp.s            eax, ebp                                       // 0x007bfef2    3bc5
                         .byte            0x72, 0x4// {disp8} jb _jmp_addr_0x007bfefa    // 0x007bfef4    7204
                         sub.s            eax, ebp                                       // 0x007bfef6    2bc5
                         {disp8} jmp      _jmp_addr_0x007bfefc                           // 0x007bfef8    eb02
_jmp_addr_0x007bfefa:    xor.s            eax, eax                                       // 0x007bfefa    33c0
_jmp_addr_0x007bfefc:    dec              esi                                            // 0x007bfefc    4e
                         mov              word ptr [ecx], ax                             // 0x007bfefd    668901
                         {disp8} jne      _jmp_addr_0x007bfeea                           // 0x007bff00    75e8
                         add.s            edx, ebp                                       // 0x007bff02    03d5
_jmp_addr_0x007bff04:    mov              eax, dword ptr [ebx]                           // 0x007bff04    8b03
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x007bff06    8b4804
                         test             ecx, ecx                                       // 0x007bff09    85c9
                         {disp8} je       _jmp_addr_0x007bff6d                           // 0x007bff0b    7460
                         {disp8} mov      ecx, dword ptr [ebx + 0x6c]                    // 0x007bff0d    8b4b6c
                         {disp8} mov      esi, dword ptr [ebx + 0x64]                    // 0x007bff10    8b7364
                         push             edx                                            // 0x007bff13    52
                         {disp8} mov      edx, dword ptr [ebx + 0x30]                    // 0x007bff14    8b5330
                         add.s            ecx, esi                                       // 0x007bff17    03ce
                         add.s            ecx, edx                                       // 0x007bff19    03ca
                         push             ecx                                            // 0x007bff1b    51
                         push             eax                                            // 0x007bff1c    50
                         call             _read_buf                                      // 0x007bff1d    e85e000000
                         {disp8} mov      ecx, dword ptr [ebx + 0x6c]                    // 0x007bff22    8b4b6c
                         add              esp, 0x0c                                      // 0x007bff25    83c40c
                         add.s            ecx, eax                                       // 0x007bff28    03c8
                         mov.s            esi, ecx                                       // 0x007bff2a    8bf1
                         {disp8} mov      dword ptr [ebx + 0x6c], ecx                    // 0x007bff2c    894b6c
                         cmp              esi, 0x03                                      // 0x007bff2f    83fe03
                         .byte            0x72, 0x24// {disp8} jb _jmp_addr_0x007bff58   // 0x007bff32    7224
                         {disp8} mov      edx, dword ptr [ebx + 0x64]                    // 0x007bff34    8b5364
                         {disp8} mov      eax, dword ptr [ebx + 0x30]                    // 0x007bff37    8b4330
                         {disp8} mov      ecx, dword ptr [ebx + 0x50]                    // 0x007bff3a    8b4b50
                         lea              edi, dword ptr [edx + eax * 0x1]               // 0x007bff3d    8d3c02
                         xor.s            eax, eax                                       // 0x007bff40    33c0
                         mov              al, byte ptr [edi]                             // 0x007bff42    8a07
                         {disp8} mov      dword ptr [ebx + 0x40], eax                    // 0x007bff44    894340
                         shl              eax, cl                                        // 0x007bff47    d3e0
                         xor.s            ecx, ecx                                       // 0x007bff49    33c9
                         {disp8} mov      cl, byte ptr [edi + 0x01]                      // 0x007bff4b    8a4f01
                         xor.s            eax, ecx                                       // 0x007bff4e    33c1
                         {disp8} mov      ecx, dword ptr [ebx + 0x4c]                    // 0x007bff50    8b4b4c
                         and.s            eax, ecx                                       // 0x007bff53    23c1
                         {disp8} mov      dword ptr [ebx + 0x40], eax                    // 0x007bff55    894340
_jmp_addr_0x007bff58:    cmp              esi, 0x00000106                                // 0x007bff58    81fe06010000
                         {disp8} jae      _jmp_addr_0x007bff6d                           // 0x007bff5e    730d
                         mov              edx, dword ptr [ebx]                           // 0x007bff60    8b13
                         {disp8} mov      eax, dword ptr [edx + 0x04]                    // 0x007bff62    8b4204
                         test             eax, eax                                       // 0x007bff65    85c0
                         {disp32} jne     _jmp_addr_0x007bfe5b                           // 0x007bff67    0f85eefeffff
_jmp_addr_0x007bff6d:    pop              edi                                            // 0x007bff6d    5f
                         pop              esi                                            // 0x007bff6e    5e
                         pop              ebp                                            // 0x007bff6f    5d
                         pop              ebx                                            // 0x007bff70    5b
                         ret                                                             // 0x007bff71    c3
                         nop                                                             // 0x007bff72    90
                         nop                                                             // 0x007bff73    90
                         nop                                                             // 0x007bff74    90
                         nop                                                             // 0x007bff75    90
                         nop                                                             // 0x007bff76    90
                         nop                                                             // 0x007bff77    90
                         nop                                                             // 0x007bff78    90
                         nop                                                             // 0x007bff79    90
                         nop                                                             // 0x007bff7a    90
                         nop                                                             // 0x007bff7b    90
                         nop                                                             // 0x007bff7c    90
                         nop                                                             // 0x007bff7d    90
                         nop                                                             // 0x007bff7e    90
                         nop                                                             // 0x007bff7f    90
_read_buf           :    {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x007bff80    8b4c240c
                         push             ebx                                            // 0x007bff84    53
                         push             ebp                                            // 0x007bff85    55
                         {disp8} mov      ebp, dword ptr [esp + 0x0c]                    // 0x007bff86    8b6c240c
                         {disp8} mov      eax, dword ptr [ebp + 0x04]                    // 0x007bff8a    8b4504
                         mov.s            ebx, eax                                       // 0x007bff8d    8bd8
                         cmp.s            ebx, ecx                                       // 0x007bff8f    3bd9
                         {disp8} jbe      _jmp_addr_0x007bff95                           // 0x007bff91    7602
                         mov.s            ebx, ecx                                       // 0x007bff93    8bd9
_jmp_addr_0x007bff95:    test             ebx, ebx                                       // 0x007bff95    85db
                         {disp8} jne      _jmp_addr_0x007bff9e                           // 0x007bff97    7505
                         pop              ebp                                            // 0x007bff99    5d
                         xor.s            eax, eax                                       // 0x007bff9a    33c0
                         pop              ebx                                            // 0x007bff9c    5b
                         ret                                                             // 0x007bff9d    c3
_jmp_addr_0x007bff9e:    sub.s            eax, ebx                                       // 0x007bff9e    2bc3
                         {disp8} mov      dword ptr [ebp + 0x04], eax                    // 0x007bffa0    894504
                         {disp8} mov      eax, dword ptr [ebp + 0x1c]                    // 0x007bffa3    8b451c
                         {disp8} mov      ecx, dword ptr [eax + 0x18]                    // 0x007bffa6    8b4818
                         test             ecx, ecx                                       // 0x007bffa9    85c9
                         {disp8} jne      _jmp_addr_0x007bffc1                           // 0x007bffab    7514
                         {disp8} mov      ecx, dword ptr [ebp + 0x00]                    // 0x007bffad    8b4d00
                         {disp8} mov      edx, dword ptr [ebp + 0x30]                    // 0x007bffb0    8b5530
                         push             ebx                                            // 0x007bffb3    53
                         push             ecx                                            // 0x007bffb4    51
                         push             edx                                            // 0x007bffb5    52
                         call             _adler32                                       // 0x007bffb6    e805110000
                         add              esp, 0x0c                                      // 0x007bffbb    83c40c
                         {disp8} mov      dword ptr [ebp + 0x30], eax                    // 0x007bffbe    894530
_jmp_addr_0x007bffc1:    mov.s            ecx, ebx                                       // 0x007bffc1    8bcb
                         push             esi                                            // 0x007bffc3    56
                         {disp8} mov      esi, dword ptr [ebp + 0x00]                    // 0x007bffc4    8b7500
                         mov.s            eax, ecx                                       // 0x007bffc7    8bc1
                         push             edi                                            // 0x007bffc9    57
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x007bffca    8b7c2418
                         shr              ecx, 2                                         // 0x007bffce    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x007bffd1    f3a5
                         mov.s            ecx, eax                                       // 0x007bffd3    8bc8
                         and              ecx, 0x03                                      // 0x007bffd5    83e103
                         rep movsb                                                       // 0x007bffd8    f3a4
                         {disp8} mov      ecx, dword ptr [ebp + 0x00]                    // 0x007bffda    8b4d00
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                    // 0x007bffdd    8b4508
                         add.s            ecx, ebx                                       // 0x007bffe0    03cb
                         add.s            eax, ebx                                       // 0x007bffe2    03c3
                         pop              edi                                            // 0x007bffe4    5f
                         {disp8} mov      dword ptr [ebp + 0x00], ecx                    // 0x007bffe5    894d00
                         {disp8} mov      dword ptr [ebp + 0x08], eax                    // 0x007bffe8    894508
                         pop              esi                                            // 0x007bffeb    5e
                         mov.s            eax, ebx                                       // 0x007bffec    8bc3
                         pop              ebp                                            // 0x007bffee    5d
                         pop              ebx                                            // 0x007bffef    5b
                         ret                                                             // 0x007bfff0    c3
                         nop                                                             // 0x007bfff1    90
                         nop                                                             // 0x007bfff2    90
                         nop                                                             // 0x007bfff3    90
                         nop                                                             // 0x007bfff4    90
                         nop                                                             // 0x007bfff5    90
                         nop                                                             // 0x007bfff6    90
                         nop                                                             // 0x007bfff7    90
                         nop                                                             // 0x007bfff8    90
                         nop                                                             // 0x007bfff9    90
                         nop                                                             // 0x007bfffa    90
                         nop                                                             // 0x007bfffb    90
                         nop                                                             // 0x007bfffc    90
                         nop                                                             // 0x007bfffd    90
                         nop                                                             // 0x007bfffe    90
                         nop                                                             // 0x007bffff    90
_deflate_fast:           push             ecx                                            // 0x007c0000    51
                         push             ebp                                            // 0x007c0001    55
                         push             esi                                            // 0x007c0002    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                    // 0x007c0003    8b742410
                         push             edi                                            // 0x007c0007    57
                         xor.s            edi, edi                                       // 0x007c0008    33ff
_jmp_addr_0x007c000a:    {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007c000a    8b466c
                         cmp              eax, 0x00000106                                // 0x007c000d    3d06010000
                         {disp8} jae      _jmp_addr_0x007c003b                           // 0x007c0012    7327
                         push             esi                                            // 0x007c0014    56
                         call             _fill_window                                   // 0x007c0015    e836feffff
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007c001a    8b466c
                         add              esp, 0x04                                      // 0x007c001d    83c404
                         cmp              eax, 0x00000106                                // 0x007c0020    3d06010000
                         {disp8} jae      _jmp_addr_0x007c0033                           // 0x007c0025    730c
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                    // 0x007c0027    8b4c2418
                         test             ecx, ecx                                       // 0x007c002b    85c9
                         {disp32} je      _jmp_addr_0x007c0326                           // 0x007c002d    0f84f3020000
_jmp_addr_0x007c0033:    test             eax, eax                                       // 0x007c0033    85c0
                         {disp32} je      _jmp_addr_0x007c02ba                           // 0x007c0035    0f847f020000
_jmp_addr_0x007c003b:    cmp              eax, 0x03                                      // 0x007c003b    83f803
                         .byte            0x72, 0x41// {disp8} jb _jmp_addr_0x007c0081   // 0x007c003e    7241
                         {disp8} mov      eax, dword ptr [esi + 0x40]                    // 0x007c0040    8b4640
                         {disp8} mov      ecx, dword ptr [esi + 0x50]                    // 0x007c0043    8b4e50
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c0046    8b5664
                         {disp8} mov      edi, dword ptr [esi + 0x30]                    // 0x007c0049    8b7e30
                         shl              eax, cl                                        // 0x007c004c    d3e0
                         xor.s            ecx, ecx                                       // 0x007c004e    33c9
                         {disp8} mov      cl, byte ptr [edi + edx * 0x1 + 0x02]          // 0x007c0050    8a4c1702
                         {disp8} mov      edi, dword ptr [esi + 0x4c]                    // 0x007c0054    8b7e4c
                         xor.s            eax, ecx                                       // 0x007c0057    33c1
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]                    // 0x007c0059    8b4e3c
                         and.s            eax, edi                                       // 0x007c005c    23c7
                         xor.s            edi, edi                                       // 0x007c005e    33ff
                         {disp8} mov      dword ptr [esi + 0x40], eax                    // 0x007c0060    894640
                         mov              di, word ptr [ecx + eax * 0x2]                 // 0x007c0063    668b3c41
                         {disp8} mov      eax, dword ptr [esi + 0x2c]                    // 0x007c0067    8b462c
                         {disp8} mov      ecx, dword ptr [esi + 0x38]                    // 0x007c006a    8b4e38
                         and.s            eax, edx                                       // 0x007c006d    23c2
                         mov              word ptr [ecx + eax * 0x2], di                 // 0x007c006f    66893c41
                         {disp8} mov      edx, dword ptr [esi + 0x40]                    // 0x007c0073    8b5640
                         {disp8} mov      eax, dword ptr [esi + 0x3c]                    // 0x007c0076    8b463c
                         {disp8} mov      cx, word ptr [esi + 0x64]                      // 0x007c0079    668b4e64
                         mov              word ptr [eax + edx * 0x2], cx                 // 0x007c007d    66890c50
_jmp_addr_0x007c0081:    test             edi, edi                                       // 0x007c0081    85ff
                         {disp8} je       _jmp_addr_0x007c00ac                           // 0x007c0083    7427
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c0085    8b5664
                         {disp8} mov      eax, dword ptr [esi + 0x24]                    // 0x007c0088    8b4624
                         sub.s            edx, edi                                       // 0x007c008b    2bd7
                         sub              eax, 0x00000106                                // 0x007c008d    2d06010000
                         cmp.s            edx, eax                                       // 0x007c0092    3bd0
                         {disp8} ja       _jmp_addr_0x007c00ac                           // 0x007c0094    7716
                         cmp              dword ptr [esi + 0x00000080], 0x02             // 0x007c0096    83be8000000002
                         {disp8} je       _jmp_addr_0x007c00ac                           // 0x007c009d    740d
                         push             edi                                            // 0x007c009f    57
                         push             esi                                            // 0x007c00a0    56
                         call             _longest_match                                 // 0x007c00a1    e88a020000
                         add              esp, 0x08                                      // 0x007c00a6    83c408
                         {disp8} mov      dword ptr [esi + 0x58], eax                    // 0x007c00a9    894658
_jmp_addr_0x007c00ac:    {disp8} mov      eax, dword ptr [esi + 0x58]                    // 0x007c00ac    8b4658
                         cmp              eax, 0x03                                      // 0x007c00af    83f803
                         {disp32} jb      _jmp_addr_0x007c0204                           // 0x007c00b2    0f824c010000
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c00b8    8b9698160000
                         {disp32} mov     ebp, dword ptr [esi + 0x0000169c]              // 0x007c00be    8bae9c160000
                         mov.s            cl, al                                         // 0x007c00c4    8ac8
                         {disp8} mov      ax, word ptr [esi + 0x64]                      // 0x007c00c6    668b4664
                         sub              ax, word ptr [esi + 0x68]                      // 0x007c00ca    662b4668
                         sub              cl, 0x03                                       // 0x007c00ce    80e903
                         {disp8} mov      byte ptr [esp + 0x14], cl                      // 0x007c00d1    884c2414
                         {disp8} mov      word ptr [ebp + edx * 0x2 + 0x00], ax          // 0x007c00d5    6689445500
                         {disp32} mov     edx, dword ptr [esi + 0x00001690]              // 0x007c00da    8b9690160000
                         {disp32} mov     ebp, dword ptr [esi + 0x00001698]              // 0x007c00e0    8bae98160000
                         add              eax, 0x0000ffff                                // 0x007c00e6    05ffff0000
                         mov              byte ptr [edx + ebp * 0x1], cl                 // 0x007c00eb    880c2a
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c00ee    8b9698160000
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x007c00f4    8b4c2414
                         inc              edx                                            // 0x007c00f8    42
                         {disp32} mov     dword ptr [esi + 0x00001698], edx              // 0x007c00f9    899698160000
                         and              ecx, 0x000000ff                                // 0x007c00ff    81e1ff000000
                         xor.s            edx, edx                                       // 0x007c0105    33d2
                         {disp32} mov     dl, byte ptr [ecx + 0x009a0170]                // 0x007c0107    8a9170019a00
                         {disp32} inc     word ptr [esi + edx * 0x4 + 0x00000490]        // 0x007c010d    66ff849690040000
                         cmp              ax, 0x0100                                     // 0x007c0115    663d0001
                         {disp32} lea     ecx, dword ptr [esi + edx * 0x4 + 0x00000490]  // 0x007c0119    8d8c9690040000
                         {disp8} jae      _jmp_addr_0x007c0133                           // 0x007c0120    7311
                         and              eax, 0x0000ffff                                // 0x007c0122    25ffff0000
                         xor.s            ecx, ecx                                       // 0x007c0127    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x0099ff70]                // 0x007c0129    8a8870ff9900
                         mov.s            eax, ecx                                       // 0x007c012f    8bc1
                         {disp8} jmp      _jmp_addr_0x007c0145                           // 0x007c0131    eb12
_jmp_addr_0x007c0133:    and              eax, 0x0000ffff                                // 0x007c0133    25ffff0000
                         shr              eax, 7                                         // 0x007c0138    c1e807
                         xor.s            edx, edx                                       // 0x007c013b    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x009a0070]                // 0x007c013d    8a9070009a00
                         mov.s            eax, edx                                       // 0x007c0143    8bc2
_jmp_addr_0x007c0145:    {disp32} inc     word ptr [esi + eax * 0x4 + 0x00000980]        // 0x007c0145    66ff848680090000
                         {disp32} mov     eax, dword ptr [esi + 0x00001694]              // 0x007c014d    8b8694160000
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c0153    8b9698160000
                         dec              eax                                            // 0x007c0159    48
                         xor.s            ecx, ecx                                       // 0x007c015a    33c9
                         cmp.s            edx, eax                                       // 0x007c015c    3bd0
                         {disp8} mov      eax, dword ptr [esi + 0x58]                    // 0x007c015e    8b4658
                         {disp8} mov      edx, dword ptr [esi + 0x78]                    // 0x007c0161    8b5678
                         sete             cl                                             // 0x007c0164    0f94c1
                         mov.s            ebp, ecx                                       // 0x007c0167    8be9
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]                    // 0x007c0169    8b4e6c
                         sub.s            ecx, eax                                       // 0x007c016c    2bc8
                         cmp.s            eax, edx                                       // 0x007c016e    3bc2
                         {disp8} mov      dword ptr [esi + 0x6c], ecx                    // 0x007c0170    894e6c
                         {disp8} ja       _jmp_addr_0x007c01d3                           // 0x007c0173    775e
                         cmp              ecx, 0x03                                      // 0x007c0175    83f903
                         .byte            0x72, 0x59// {disp8} jb _jmp_addr_0x007c01d3   // 0x007c0178    7259
                         dec              eax                                            // 0x007c017a    48
                         {disp8} mov      dword ptr [esi + 0x58], eax                    // 0x007c017b    894658
_jmp_addr_0x007c017e:    {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c017e    8b5664
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007c0181    8b4630
                         {disp8} mov      edi, dword ptr [esi + 0x40]                    // 0x007c0184    8b7e40
                         inc              edx                                            // 0x007c0187    42
                         xor.s            ecx, ecx                                       // 0x007c0188    33c9
                         {disp8} mov      dword ptr [esi + 0x64], edx                    // 0x007c018a    895664
                         {disp8} mov      cl, byte ptr [edx + eax * 0x1 + 0x02]          // 0x007c018d    8a4c0202
                         mov.s            eax, ecx                                       // 0x007c0191    8bc1
                         {disp8} mov      ecx, dword ptr [esi + 0x50]                    // 0x007c0193    8b4e50
                         shl              edi, cl                                        // 0x007c0196    d3e7
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]                    // 0x007c0198    8b4e3c
                         xor.s            eax, edi                                       // 0x007c019b    33c7
                         {disp8} mov      edi, dword ptr [esi + 0x4c]                    // 0x007c019d    8b7e4c
                         and.s            eax, edi                                       // 0x007c01a0    23c7
                         xor.s            edi, edi                                       // 0x007c01a2    33ff
                         {disp8} mov      dword ptr [esi + 0x40], eax                    // 0x007c01a4    894640
                         mov              di, word ptr [ecx + eax * 0x2]                 // 0x007c01a7    668b3c41
                         {disp8} mov      ecx, dword ptr [esi + 0x2c]                    // 0x007c01ab    8b4e2c
                         {disp8} mov      eax, dword ptr [esi + 0x38]                    // 0x007c01ae    8b4638
                         and.s            edx, ecx                                       // 0x007c01b1    23d1
                         mov              word ptr [eax + edx * 0x2], di                 // 0x007c01b3    66893c50
                         {disp8} mov      ecx, dword ptr [esi + 0x40]                    // 0x007c01b7    8b4e40
                         {disp8} mov      edx, dword ptr [esi + 0x3c]                    // 0x007c01ba    8b563c
                         {disp8} mov      ax, word ptr [esi + 0x64]                      // 0x007c01bd    668b4664
                         mov              word ptr [edx + ecx * 0x2], ax                 // 0x007c01c1    6689044a
                         {disp8} mov      eax, dword ptr [esi + 0x58]                    // 0x007c01c5    8b4658
                         dec              eax                                            // 0x007c01c8    48
                         {disp8} mov      dword ptr [esi + 0x58], eax                    // 0x007c01c9    894658
                         {disp8} jne      _jmp_addr_0x007c017e                           // 0x007c01cc    75b0
                         {disp32} jmp     _jmp_addr_0x007c026f                           // 0x007c01ce    e99c000000
_jmp_addr_0x007c01d3:    {disp8} mov      ecx, dword ptr [esi + 0x64]                    // 0x007c01d3    8b4e64
                         {disp8} mov      edx, dword ptr [esi + 0x30]                    // 0x007c01d6    8b5630
                         add.s            ecx, eax                                       // 0x007c01d9    03c8
                         xor.s            eax, eax                                       // 0x007c01db    33c0
                         add.s            edx, ecx                                       // 0x007c01dd    03d1
                         {disp8} mov      dword ptr [esi + 0x64], ecx                    // 0x007c01df    894e64
                         {disp8} mov      ecx, dword ptr [esi + 0x50]                    // 0x007c01e2    8b4e50
                         {disp8} mov      dword ptr [esi + 0x58], 0x00000000             // 0x007c01e5    c7465800000000
                         mov              al, byte ptr [edx]                             // 0x007c01ec    8a02
                         {disp8} mov      dword ptr [esi + 0x40], eax                    // 0x007c01ee    894640
                         shl              eax, cl                                        // 0x007c01f1    d3e0
                         xor.s            ecx, ecx                                       // 0x007c01f3    33c9
                         {disp8} mov      cl, byte ptr [edx + 0x01]                      // 0x007c01f5    8a4a01
                         xor.s            eax, ecx                                       // 0x007c01f8    33c1
                         {disp8} mov      ecx, dword ptr [esi + 0x4c]                    // 0x007c01fa    8b4e4c
                         and.s            eax, ecx                                       // 0x007c01fd    23c1
                         {disp8} mov      dword ptr [esi + 0x40], eax                    // 0x007c01ff    894640
                         {disp8} jmp      _jmp_addr_0x007c0272                           // 0x007c0202    eb6e
_jmp_addr_0x007c0204:    {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c0204    8b5664
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007c0207    8b4630
                         {disp32} mov     ecx, dword ptr [esi + 0x00001698]              // 0x007c020a    8b8e98160000
                         mov              al, byte ptr [edx + eax * 0x1]                 // 0x007c0210    8a0402
                         {disp32} mov     edx, dword ptr [esi + 0x0000169c]              // 0x007c0213    8b969c160000
                         {disp8} mov      byte ptr [esp + 0x0c], al                      // 0x007c0219    8844240c
                         mov              word ptr [edx + ecx * 0x2], 0x0000             // 0x007c021d    66c7044a0000
                         {disp32} mov     ecx, dword ptr [esi + 0x00001690]              // 0x007c0223    8b8e90160000
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c0229    8b9698160000
                         mov              byte ptr [ecx + edx * 0x1], al                 // 0x007c022f    880411
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x007c0232    8b44240c
                         {disp32} mov     ebp, dword ptr [esi + 0x00001698]              // 0x007c0236    8bae98160000
                         and              eax, 0x000000ff                                // 0x007c023c    25ff000000
                         inc              ebp                                            // 0x007c0241    45
                         xor.s            edx, edx                                       // 0x007c0242    33d2
                         {disp32} lea     eax, dword ptr [esi + eax * 0x4 + 0x0000008c]  // 0x007c0244    8d84868c000000
                         {disp32} mov     dword ptr [esi + 0x00001698], ebp              // 0x007c024b    89ae98160000
                         inc              word ptr [eax]                                 // 0x007c0251    66ff00
                         {disp32} mov     ecx, dword ptr [esi + 0x00001694]              // 0x007c0254    8b8e94160000
                         {disp32} mov     ebp, dword ptr [esi + 0x00001698]              // 0x007c025a    8bae98160000
                         dec              ecx                                            // 0x007c0260    49
                         cmp.s            ebp, ecx                                       // 0x007c0261    3be9
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]                    // 0x007c0263    8b4e6c
                         sete             dl                                             // 0x007c0266    0f94c2
                         dec              ecx                                            // 0x007c0269    49
                         mov.s            ebp, edx                                       // 0x007c026a    8bea
                         {disp8} mov      dword ptr [esi + 0x6c], ecx                    // 0x007c026c    894e6c
_jmp_addr_0x007c026f:    {disp8} inc      dword ptr [esi + 0x64]                         // 0x007c026f    ff4664
_jmp_addr_0x007c0272:    test             ebp, ebp                                       // 0x007c0272    85ed
                         {disp32} je      _jmp_addr_0x007c000a                           // 0x007c0274    0f8490fdffff
                         {disp8} mov      ecx, dword ptr [esi + 0x54]                    // 0x007c027a    8b4e54
                         test             ecx, ecx                                       // 0x007c027d    85c9
                         {disp8} jl       _jmp_addr_0x007c028a                           // 0x007c027f    7c09
                         {disp8} mov      edx, dword ptr [esi + 0x30]                    // 0x007c0281    8b5630
                         mov.s            eax, ecx                                       // 0x007c0284    8bc1
                         add.s            eax, edx                                       // 0x007c0286    03c2
                         {disp8} jmp      _jmp_addr_0x007c028c                           // 0x007c0288    eb02
_jmp_addr_0x007c028a:    xor.s            eax, eax                                       // 0x007c028a    33c0
_jmp_addr_0x007c028c:    {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c028c    8b5664
                         push             0x0                                            // 0x007c028f    6a00
                         sub.s            edx, ecx                                       // 0x007c0291    2bd1
                         push             edx                                            // 0x007c0293    52
                         push             eax                                            // 0x007c0294    50
                         push             esi                                            // 0x007c0295    56
                         call             __tr_flush_block                               // 0x007c0296    e845130000
                         mov              ecx, dword ptr [esi]                           // 0x007c029b    8b0e
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007c029d    8b4664
                         push             ecx                                            // 0x007c02a0    51
                         {disp8} mov      dword ptr [esi + 0x54], eax                    // 0x007c02a1    894654
                         call             _flush_pending                                 // 0x007c02a4    e8c7f6ffff
                         mov              edx, dword ptr [esi]                           // 0x007c02a9    8b16
                         add              esp, 0x14                                      // 0x007c02ab    83c414
                         {disp8} mov      eax, dword ptr [edx + 0x10]                    // 0x007c02ae    8b4210
                         test             eax, eax                                       // 0x007c02b1    85c0
                         {disp8} je       _jmp_addr_0x007c0326                           // 0x007c02b3    7471
                         {disp32} jmp     _jmp_addr_0x007c000a                           // 0x007c02b5    e950fdffff
_jmp_addr_0x007c02ba:    {disp8} mov      ecx, dword ptr [esi + 0x54]                    // 0x007c02ba    8b4e54
                         test             ecx, ecx                                       // 0x007c02bd    85c9
                         {disp8} jl       _jmp_addr_0x007c02c8                           // 0x007c02bf    7c07
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007c02c1    8b4630
                         add.s            eax, ecx                                       // 0x007c02c4    03c1
                         {disp8} jmp      _jmp_addr_0x007c02ca                           // 0x007c02c6    eb02
_jmp_addr_0x007c02c8:    xor.s            eax, eax                                       // 0x007c02c8    33c0
_jmp_addr_0x007c02ca:    {disp8} mov      ebp, dword ptr [esp + 0x18]                    // 0x007c02ca    8b6c2418
                         xor.s            edx, edx                                       // 0x007c02ce    33d2
                         cmp              ebp, 0x04                                      // 0x007c02d0    83fd04
                         sete             dl                                             // 0x007c02d3    0f94c2
                         push             edx                                            // 0x007c02d6    52
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c02d7    8b5664
                         sub.s            edx, ecx                                       // 0x007c02da    2bd1
                         push             edx                                            // 0x007c02dc    52
                         push             eax                                            // 0x007c02dd    50
                         push             esi                                            // 0x007c02de    56
                         call             __tr_flush_block                               // 0x007c02df    e8fc120000
                         mov              ecx, dword ptr [esi]                           // 0x007c02e4    8b0e
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007c02e6    8b4664
                         push             ecx                                            // 0x007c02e9    51
                         {disp8} mov      dword ptr [esi + 0x54], eax                    // 0x007c02ea    894654
                         call             _flush_pending                                 // 0x007c02ed    e87ef6ffff
                         mov              edx, dword ptr [esi]                           // 0x007c02f2    8b16
                         add              esp, 0x14                                      // 0x007c02f4    83c414
                         {disp8} mov      eax, dword ptr [edx + 0x10]                    // 0x007c02f7    8b4210
                         test             eax, eax                                       // 0x007c02fa    85c0
                         {disp8} jne      _jmp_addr_0x007c0311                           // 0x007c02fc    7513
                         mov.s            esi, ebp                                       // 0x007c02fe    8bf5
                         xor.s            eax, eax                                       // 0x007c0300    33c0
                         cmp              esi, 0x04                                      // 0x007c0302    83fe04
                         pop              edi                                            // 0x007c0305    5f
                         setne            al                                             // 0x007c0306    0f95c0
                         dec              eax                                            // 0x007c0309    48
                         pop              esi                                            // 0x007c030a    5e
                         and              eax, 0x02                                      // 0x007c030b    83e002
                         pop              ebp                                            // 0x007c030e    5d
                         pop              ecx                                            // 0x007c030f    59
                         ret                                                             // 0x007c0310    c3
_jmp_addr_0x007c0311:    {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x007c0311    8b442418
                         pop              edi                                            // 0x007c0315    5f
                         sub              eax, 0x04                                      // 0x007c0316    83e804
                         pop              esi                                            // 0x007c0319    5e
                         neg              eax                                            // 0x007c031a    f7d8
                         sbb.s            eax, eax                                       // 0x007c031c    1bc0
                         pop              ebp                                            // 0x007c031e    5d
                         and              al, -0x02                                      // 0x007c031f    24fe
                         add              eax, 0x03                                      // 0x007c0321    83c003
                         pop              ecx                                            // 0x007c0324    59
                         ret                                                             // 0x007c0325    c3
_jmp_addr_0x007c0326:    pop              edi                                            // 0x007c0326    5f
                         pop              esi                                            // 0x007c0327    5e
                         xor.s            eax, eax                                       // 0x007c0328    33c0
                         pop              ebp                                            // 0x007c032a    5d
                         pop              ecx                                            // 0x007c032b    59
                         ret                                                             // 0x007c032c    c3
                         nop                                                             // 0x007c032d    90
                         nop                                                             // 0x007c032e    90
                         nop                                                             // 0x007c032f    90
_longest_match:          sub              esp, 0x14                                      // 0x007c0330    83ec14
                         push             ebx                                            // 0x007c0333    53
                         push             ebp                                            // 0x007c0334    55
                         push             esi                                            // 0x007c0335    56
                         push             edi                                            // 0x007c0336    57
                         {disp8} mov      edi, dword ptr [esp + 0x28]                    // 0x007c0337    8b7c2428
                         {disp8} mov      esi, dword ptr [edi + 0x24]                    // 0x007c033b    8b7724
                         {disp8} mov      eax, dword ptr [edi + 0x74]                    // 0x007c033e    8b4774
                         {disp8} mov      edx, dword ptr [edi + 0x64]                    // 0x007c0341    8b5764
                         {disp8} mov      ecx, dword ptr [edi + 0x30]                    // 0x007c0344    8b4f30
                         {disp8} mov      ebp, dword ptr [edi + 0x70]                    // 0x007c0347    8b6f70
                         {disp8} mov      dword ptr [esp + 0x14], eax                    // 0x007c034a    89442414
                         {disp32} mov     eax, dword ptr [edi + 0x00000088]              // 0x007c034e    8b8788000000
                         {disp32} lea     ebx, dword ptr [esi + -0x00000106]             // 0x007c0354    8d9efafeffff
                         add.s            ecx, edx                                       // 0x007c035a    03ca
                         cmp.s            edx, ebx                                       // 0x007c035c    3bd3
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x007c035e    89442418
                         {disp8} jbe      _jmp_addr_0x007c0372                           // 0x007c0362    760e
                         sub.s            edx, esi                                       // 0x007c0364    2bd6
                         add              edx, 0x00000106                                // 0x007c0366    81c206010000
                         {disp8} mov      dword ptr [esp + 0x1c], edx                    // 0x007c036c    8954241c
                         {disp8} jmp      _jmp_addr_0x007c037a                           // 0x007c0370    eb08
_jmp_addr_0x007c0372:    {disp8} mov      dword ptr [esp + 0x1c], 0x00000000             // 0x007c0372    c744241c00000000
_jmp_addr_0x007c037a:    {disp8} mov      dl, byte ptr [ecx + ebp * 0x1 + -0x01]         // 0x007c037a    8a5429ff
                         {disp32} lea     ebx, dword ptr [ecx + 0x00000102]              // 0x007c037e    8d9902010000
                         {disp8} mov      byte ptr [esp + 0x28], dl                      // 0x007c0384    88542428
                         mov              dl, byte ptr [ecx + ebp * 0x1]                 // 0x007c0388    8a1429
                         {disp8} mov      byte ptr [esp + 0x13], dl                      // 0x007c038b    88542413
                         {disp32} mov     edx, dword ptr [edi + 0x00000084]              // 0x007c038f    8b9784000000
                         cmp.s            ebp, edx                                       // 0x007c0395    3bea
                         .byte            0x72, 0x5// {disp8} jb _jmp_addr_0x007c039e    // 0x007c0397    7205
                         shr              dword ptr [esp + 0x14], 2                      // 0x007c0399    c16c241402
_jmp_addr_0x007c039e:    {disp8} mov      edx, dword ptr [edi + 0x6c]                    // 0x007c039e    8b576c
                         cmp.s            eax, edx                                       // 0x007c03a1    3bc2
                         {disp8} mov      dword ptr [esp + 0x20], edx                    // 0x007c03a3    89542420
                         {disp8} jbe      _jmp_addr_0x007c03ad                           // 0x007c03a7    7604
                         {disp8} mov      dword ptr [esp + 0x18], edx                    // 0x007c03a9    89542418
_jmp_addr_0x007c03ad:    {disp8} mov      esi, dword ptr [esp + 0x2c]                    // 0x007c03ad    8b74242c
_jmp_addr_0x007c03b1:    {disp8} mov      edx, dword ptr [edi + 0x30]                    // 0x007c03b1    8b5730
                         {disp8} mov      al, byte ptr [esp + 0x13]                      // 0x007c03b4    8a442413
                         add.s            edx, esi                                       // 0x007c03b8    03d6
                         cmp              byte ptr [edx + ebp * 0x1], al                 // 0x007c03ba    38042a
                         {disp32} jne     _jmp_addr_0x007c0468                           // 0x007c03bd    0f85a5000000
                         {disp8} mov      al, byte ptr [esp + 0x28]                      // 0x007c03c3    8a442428
                         cmp              byte ptr [edx + ebp * 0x1 + -0x01], al         // 0x007c03c7    38442aff
                         {disp32} jne     _jmp_addr_0x007c0468                           // 0x007c03cb    0f8597000000
                         mov              al, byte ptr [edx]                             // 0x007c03d1    8a02
                         cmp              al, byte ptr [ecx]                             // 0x007c03d3    3a01
                         {disp32} jne     _jmp_addr_0x007c0468                           // 0x007c03d5    0f858d000000
                         {disp8} mov      al, byte ptr [edx + 0x01]                      // 0x007c03db    8a4201
                         inc              edx                                            // 0x007c03de    42
                         cmp              al, byte ptr [ecx + 0x01]                      // 0x007c03df    3a4101
                         {disp32} jne     _jmp_addr_0x007c0468                           // 0x007c03e2    0f8580000000
                         add              ecx, 0x2                                       // 0x007c03e8    83c102
                         inc              edx                                            // 0x007c03eb    42
_jmp_addr_0x007c03ec:    {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c03ec    8a4101
                         inc              ecx                                            // 0x007c03ef    41
                         inc              edx                                            // 0x007c03f0    42
                         cmp              al, byte ptr [edx]                             // 0x007c03f1    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c03f3    7543
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c03f5    8a4101
                         inc              ecx                                            // 0x007c03f8    41
                         inc              edx                                            // 0x007c03f9    42
                         cmp              al, byte ptr [edx]                             // 0x007c03fa    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c03fc    753a
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c03fe    8a4101
                         inc              ecx                                            // 0x007c0401    41
                         inc              edx                                            // 0x007c0402    42
                         cmp              al, byte ptr [edx]                             // 0x007c0403    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c0405    7531
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c0407    8a4101
                         inc              ecx                                            // 0x007c040a    41
                         inc              edx                                            // 0x007c040b    42
                         cmp              al, byte ptr [edx]                             // 0x007c040c    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c040e    7528
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c0410    8a4101
                         inc              ecx                                            // 0x007c0413    41
                         inc              edx                                            // 0x007c0414    42
                         cmp              al, byte ptr [edx]                             // 0x007c0415    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c0417    751f
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c0419    8a4101
                         inc              ecx                                            // 0x007c041c    41
                         inc              edx                                            // 0x007c041d    42
                         cmp              al, byte ptr [edx]                             // 0x007c041e    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c0420    7516
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c0422    8a4101
                         inc              ecx                                            // 0x007c0425    41
                         inc              edx                                            // 0x007c0426    42
                         cmp              al, byte ptr [edx]                             // 0x007c0427    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c0429    750d
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x007c042b    8a4101
                         inc              ecx                                            // 0x007c042e    41
                         inc              edx                                            // 0x007c042f    42
                         cmp              al, byte ptr [edx]                             // 0x007c0430    3a02
                         {disp8} jne      _jmp_addr_0x007c0438                           // 0x007c0432    7504
                         cmp.s            ecx, ebx                                       // 0x007c0434    3bcb
                         .byte            0x72, 0xb4// {disp8} jb _jmp_addr_0x007c03ec   // 0x007c0436    72b4
_jmp_addr_0x007c0438:    mov.s            edx, ecx                                       // 0x007c0438    8bd1
                         {disp32} lea     ecx, dword ptr [ebx + -0x00000102]             // 0x007c043a    8d8bfefeffff
                         sub.s            edx, ebx                                       // 0x007c0440    2bd3
                         add              edx, 0x00000102                                // 0x007c0442    81c202010000
                         cmp.s            edx, ebp                                       // 0x007c0448    3bd5
                         {disp8} jle      _jmp_addr_0x007c0468                           // 0x007c044a    7e1c
                         {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x007c044c    8b442418
                         {disp8} mov      dword ptr [edi + 0x68], esi                    // 0x007c0450    897768
                         cmp.s            edx, eax                                       // 0x007c0453    3bd0
                         mov.s            ebp, edx                                       // 0x007c0455    8bea
                         {disp8} jge      _jmp_addr_0x007c048d                           // 0x007c0457    7d34
                         {disp8} mov      al, byte ptr [edx + ecx * 0x1 + -0x01]         // 0x007c0459    8a440aff
                         mov              dl, byte ptr [edx + ecx * 0x1]                 // 0x007c045d    8a140a
                         {disp8} mov      byte ptr [esp + 0x28], al                      // 0x007c0460    88442428
                         {disp8} mov      byte ptr [esp + 0x13], dl                      // 0x007c0464    88542413
_jmp_addr_0x007c0468:    {disp8} mov      edx, dword ptr [edi + 0x2c]                    // 0x007c0468    8b572c
                         {disp8} mov      eax, dword ptr [edi + 0x38]                    // 0x007c046b    8b4738
                         and.s            edx, esi                                       // 0x007c046e    23d6
                         xor.s            esi, esi                                       // 0x007c0470    33f6
                         mov              si, word ptr [eax + edx * 0x2]                 // 0x007c0472    668b3450
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x007c0476    8b44241c
                         cmp.s            esi, eax                                       // 0x007c047a    3bf0
                         {disp8} jbe      _jmp_addr_0x007c048d                           // 0x007c047c    760f
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x007c047e    8b442414
                         dec              eax                                            // 0x007c0482    48
                         {disp8} mov      dword ptr [esp + 0x14], eax                    // 0x007c0483    89442414
                         {disp32} jne     _jmp_addr_0x007c03b1                           // 0x007c0487    0f8524ffffff
_jmp_addr_0x007c048d:    {disp8} mov      eax, dword ptr [esp + 0x20]                    // 0x007c048d    8b442420
                         cmp.s            ebp, eax                                       // 0x007c0491    3be8
                         {disp8} ja       _jmp_addr_0x007c0497                           // 0x007c0493    7702
                         mov.s            eax, ebp                                       // 0x007c0495    8bc5
_jmp_addr_0x007c0497:    pop              edi                                            // 0x007c0497    5f
                         pop              esi                                            // 0x007c0498    5e
                         pop              ebp                                            // 0x007c0499    5d
                         pop              ebx                                            // 0x007c049a    5b
                         add              esp, 0x14                                      // 0x007c049b    83c414
                         ret                                                             // 0x007c049e    c3
                         nop                                                             // 0x007c049f    90
_deflate_slow:           push             ecx                                            // 0x007c04a0    51
                         push             ebx                                            // 0x007c04a1    53
                         push             ebp                                            // 0x007c04a2    55
                         push             esi                                            // 0x007c04a3    56
                         {disp8} mov      esi, dword ptr [esp + 0x14]                    // 0x007c04a4    8b742414
                         push             edi                                            // 0x007c04a8    57
                         xor.s            edi, edi                                       // 0x007c04a9    33ff
                         mov              ebp, 0x00000002                                // 0x007c04ab    bd02000000
_jmp_addr_0x007c04b0:    {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007c04b0    8b466c
                         cmp              eax, 0x00000106                                // 0x007c04b3    3d06010000
                         {disp8} jae      _jmp_addr_0x007c04e1                           // 0x007c04b8    7327
                         push             esi                                            // 0x007c04ba    56
                         call             _fill_window                                   // 0x007c04bb    e890f9ffff
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007c04c0    8b466c
                         {disp8} mov      ebx, dword ptr [esp + 0x20]                    // 0x007c04c3    8b5c2420
                         add              esp, 0x04                                      // 0x007c04c7    83c404
                         cmp              eax, 0x00000106                                // 0x007c04ca    3d06010000
                         {disp8} jae      _jmp_addr_0x007c04d9                           // 0x007c04cf    7308
                         test             ebx, ebx                                       // 0x007c04d1    85db
                         {disp32} je      _jmp_addr_0x007c08c2                           // 0x007c04d3    0f84e9030000
_jmp_addr_0x007c04d9:    test             eax, eax                                       // 0x007c04d9    85c0
                         {disp32} je      _jmp_addr_0x007c07fa                           // 0x007c04db    0f8419030000
_jmp_addr_0x007c04e1:    cmp              eax, 0x03                                      // 0x007c04e1    83f803
                         .byte            0x72, 0x41// {disp8} jb _jmp_addr_0x007c0527   // 0x007c04e4    7241
                         {disp8} mov      eax, dword ptr [esi + 0x40]                    // 0x007c04e6    8b4640
                         {disp8} mov      ecx, dword ptr [esi + 0x50]                    // 0x007c04e9    8b4e50
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c04ec    8b5664
                         {disp8} mov      edi, dword ptr [esi + 0x4c]                    // 0x007c04ef    8b7e4c
                         shl              eax, cl                                        // 0x007c04f2    d3e0
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                    // 0x007c04f4    8b4e30
                         xor.s            ebx, ebx                                       // 0x007c04f7    33db
                         {disp8} mov      bl, byte ptr [ecx + edx * 0x1 + 0x02]          // 0x007c04f9    8a5c1102
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]                    // 0x007c04fd    8b4e3c
                         xor.s            eax, ebx                                       // 0x007c0500    33c3
                         and.s            eax, edi                                       // 0x007c0502    23c7
                         xor.s            edi, edi                                       // 0x007c0504    33ff
                         {disp8} mov      dword ptr [esi + 0x40], eax                    // 0x007c0506    894640
                         mov              di, word ptr [ecx + eax * 0x2]                 // 0x007c0509    668b3c41
                         {disp8} mov      eax, dword ptr [esi + 0x2c]                    // 0x007c050d    8b462c
                         {disp8} mov      ecx, dword ptr [esi + 0x38]                    // 0x007c0510    8b4e38
                         and.s            eax, edx                                       // 0x007c0513    23c2
                         mov              word ptr [ecx + eax * 0x2], di                 // 0x007c0515    66893c41
                         {disp8} mov      edx, dword ptr [esi + 0x40]                    // 0x007c0519    8b5640
                         {disp8} mov      eax, dword ptr [esi + 0x3c]                    // 0x007c051c    8b463c
                         {disp8} mov      cx, word ptr [esi + 0x64]                      // 0x007c051f    668b4e64
                         mov              word ptr [eax + edx * 0x2], cx                 // 0x007c0523    66890c50
_jmp_addr_0x007c0527:    {disp8} mov      edx, dword ptr [esi + 0x58]                    // 0x007c0527    8b5658
                         {disp8} mov      eax, dword ptr [esi + 0x68]                    // 0x007c052a    8b4668
                         test             edi, edi                                       // 0x007c052d    85ff
                         {disp8} mov      dword ptr [esi + 0x70], edx                    // 0x007c052f    895670
                         {disp8} mov      dword ptr [esi + 0x5c], eax                    // 0x007c0532    89465c
                         {disp8} mov      dword ptr [esi + 0x58], ebp                    // 0x007c0535    896e58
                         {disp8} je       _jmp_addr_0x007c0592                           // 0x007c0538    7458
                         {disp8} mov      eax, dword ptr [esi + 0x78]                    // 0x007c053a    8b4678
                         mov.s            ecx, edx                                       // 0x007c053d    8bca
                         cmp.s            ecx, eax                                       // 0x007c053f    3bc8
                         {disp8} jae      _jmp_addr_0x007c0592                           // 0x007c0541    734f
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c0543    8b5664
                         {disp8} mov      eax, dword ptr [esi + 0x24]                    // 0x007c0546    8b4624
                         sub.s            edx, edi                                       // 0x007c0549    2bd7
                         sub              eax, 0x00000106                                // 0x007c054b    2d06010000
                         cmp.s            edx, eax                                       // 0x007c0550    3bd0
                         {disp8} ja       _jmp_addr_0x007c0592                           // 0x007c0552    773e
                         cmp              dword ptr [esi + 0x00000080], ebp              // 0x007c0554    39ae80000000
                         {disp8} je       _jmp_addr_0x007c0569                           // 0x007c055a    740d
                         push             edi                                            // 0x007c055c    57
                         push             esi                                            // 0x007c055d    56
                         call             _longest_match                                 // 0x007c055e    e8cdfdffff
                         add              esp, 0x08                                      // 0x007c0563    83c408
                         {disp8} mov      dword ptr [esi + 0x58], eax                    // 0x007c0566    894658
_jmp_addr_0x007c0569:    {disp8} mov      eax, dword ptr [esi + 0x58]                    // 0x007c0569    8b4658
                         cmp              eax, 0x05                                      // 0x007c056c    83f805
                         {disp8} ja       _jmp_addr_0x007c0592                           // 0x007c056f    7721
                         cmp              dword ptr [esi + 0x00000080], 0x01             // 0x007c0571    83be8000000001
                         {disp8} je       _jmp_addr_0x007c058f                           // 0x007c0578    7415
                         cmp              eax, 0x03                                      // 0x007c057a    83f803
                         {disp8} jne      _jmp_addr_0x007c0592                           // 0x007c057d    7513
                         {disp8} mov      ecx, dword ptr [esi + 0x64]                    // 0x007c057f    8b4e64
                         {disp8} mov      edx, dword ptr [esi + 0x68]                    // 0x007c0582    8b5668
                         sub.s            ecx, edx                                       // 0x007c0585    2bca
                         cmp              ecx, 0x00001000                                // 0x007c0587    81f900100000
                         {disp8} jbe      _jmp_addr_0x007c0592                           // 0x007c058d    7603
_jmp_addr_0x007c058f:    {disp8} mov      dword ptr [esi + 0x58], ebp                    // 0x007c058f    896e58
_jmp_addr_0x007c0592:    {disp8} mov      eax, dword ptr [esi + 0x70]                    // 0x007c0592    8b4670
                         cmp              eax, 0x03                                      // 0x007c0595    83f803
                         {disp32} jb      _jmp_addr_0x007c0723                           // 0x007c0598    0f8285010000
                         cmp              dword ptr [esi + 0x58], eax                    // 0x007c059e    394658
                         {disp32} ja      _jmp_addr_0x007c0723                           // 0x007c05a1    0f877c010000
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c05a7    8b5664
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007c05aa    8b466c
                         {disp8} mov      cl, byte ptr [esi + 0x70]                      // 0x007c05ad    8a4e70
                         {disp32} mov     ebx, dword ptr [esi + 0x0000169c]              // 0x007c05b0    8b9e9c160000
                         {disp8} lea      ebp, dword ptr [edx + eax * 0x1 + -0x03]       // 0x007c05b6    8d6c02fd
                         mov.s            ax, dx                                         // 0x007c05ba    668bc2
                         sub              ax, word ptr [esi + 0x5c]                      // 0x007c05bd    662b465c
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c05c1    8b9698160000
                         sub              cl, 0x03                                       // 0x007c05c7    80e903
                         dec              eax                                            // 0x007c05ca    48
                         {disp8} mov      byte ptr [esp + 0x18], cl                      // 0x007c05cb    884c2418
                         mov              word ptr [ebx + edx * 0x2], ax                 // 0x007c05cf    66890453
                         {disp32} mov     edx, dword ptr [esi + 0x00001690]              // 0x007c05d3    8b9690160000
                         {disp32} mov     ebx, dword ptr [esi + 0x00001698]              // 0x007c05d9    8b9e98160000
                         add              eax, 0x0000ffff                                // 0x007c05df    05ffff0000
                         mov              byte ptr [edx + ebx * 0x1], cl                 // 0x007c05e4    880c1a
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c05e7    8b9698160000
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                    // 0x007c05ed    8b4c2418
                         inc              edx                                            // 0x007c05f1    42
                         {disp32} mov     dword ptr [esi + 0x00001698], edx              // 0x007c05f2    899698160000
                         and              ecx, 0x000000ff                                // 0x007c05f8    81e1ff000000
                         xor.s            edx, edx                                       // 0x007c05fe    33d2
                         {disp32} mov     dl, byte ptr [ecx + 0x009a0170]                // 0x007c0600    8a9170019a00
                         {disp32} inc     word ptr [esi + edx * 0x4 + 0x00000490]        // 0x007c0606    66ff849690040000
                         cmp              ax, 0x0100                                     // 0x007c060e    663d0001
                         {disp32} lea     ecx, dword ptr [esi + edx * 0x4 + 0x00000490]  // 0x007c0612    8d8c9690040000
                         {disp8} jae      _jmp_addr_0x007c062c                           // 0x007c0619    7311
                         and              eax, 0x0000ffff                                // 0x007c061b    25ffff0000
                         xor.s            ecx, ecx                                       // 0x007c0620    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x0099ff70]                // 0x007c0622    8a8870ff9900
                         mov.s            eax, ecx                                       // 0x007c0628    8bc1
                         {disp8} jmp      _jmp_addr_0x007c063e                           // 0x007c062a    eb12
_jmp_addr_0x007c062c:    and              eax, 0x0000ffff                                // 0x007c062c    25ffff0000
                         shr              eax, 7                                         // 0x007c0631    c1e807
                         xor.s            edx, edx                                       // 0x007c0634    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x009a0070]                // 0x007c0636    8a9070009a00
                         mov.s            eax, edx                                       // 0x007c063c    8bc2
_jmp_addr_0x007c063e:    {disp32} inc     word ptr [esi + eax * 0x4 + 0x00000980]        // 0x007c063e    66ff848680090000
                         {disp32} mov     eax, dword ptr [esi + 0x00001694]              // 0x007c0646    8b8694160000
                         {disp32} mov     ecx, dword ptr [esi + 0x00001698]              // 0x007c064c    8b8e98160000
                         {disp8} mov      edx, dword ptr [esi + 0x6c]                    // 0x007c0652    8b566c
                         dec              eax                                            // 0x007c0655    48
                         xor.s            ebx, ebx                                       // 0x007c0656    33db
                         cmp.s            ecx, eax                                       // 0x007c0658    3bc8
                         {disp8} mov      eax, dword ptr [esi + 0x70]                    // 0x007c065a    8b4670
                         mov              ecx, 0x00000001                                // 0x007c065d    b901000000
                         sete             bl                                             // 0x007c0662    0f94c3
                         sub.s            ecx, eax                                       // 0x007c0665    2bc8
                         add.s            edx, ecx                                       // 0x007c0667    03d1
                         add              eax, -0x02                                     // 0x007c0669    83c0fe
                         {disp8} mov      dword ptr [esi + 0x6c], edx                    // 0x007c066c    89566c
                         {disp8} mov      dword ptr [esi + 0x70], eax                    // 0x007c066f    894670
_jmp_addr_0x007c0672:    {disp8} mov      ecx, dword ptr [esi + 0x64]                    // 0x007c0672    8b4e64
                         inc              ecx                                            // 0x007c0675    41
                         mov.s            edx, ecx                                       // 0x007c0676    8bd1
                         {disp8} mov      dword ptr [esi + 0x64], ecx                    // 0x007c0678    894e64
                         cmp.s            edx, ebp                                       // 0x007c067b    3bd5
                         {disp8} ja       _jmp_addr_0x007c06bd                           // 0x007c067d    773e
                         {disp8} mov      eax, dword ptr [esi + 0x40]                    // 0x007c067f    8b4640
                         {disp8} mov      ecx, dword ptr [esi + 0x50]                    // 0x007c0682    8b4e50
                         {disp8} mov      edi, dword ptr [esi + 0x30]                    // 0x007c0685    8b7e30
                         shl              eax, cl                                        // 0x007c0688    d3e0
                         xor.s            ecx, ecx                                       // 0x007c068a    33c9
                         {disp8} mov      cl, byte ptr [edi + edx * 0x1 + 0x02]          // 0x007c068c    8a4c1702
                         {disp8} mov      edi, dword ptr [esi + 0x4c]                    // 0x007c0690    8b7e4c
                         xor.s            eax, ecx                                       // 0x007c0693    33c1
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]                    // 0x007c0695    8b4e3c
                         and.s            eax, edi                                       // 0x007c0698    23c7
                         xor.s            edi, edi                                       // 0x007c069a    33ff
                         {disp8} mov      dword ptr [esi + 0x40], eax                    // 0x007c069c    894640
                         mov              di, word ptr [ecx + eax * 0x2]                 // 0x007c069f    668b3c41
                         {disp8} mov      eax, dword ptr [esi + 0x2c]                    // 0x007c06a3    8b462c
                         {disp8} mov      ecx, dword ptr [esi + 0x38]                    // 0x007c06a6    8b4e38
                         and.s            eax, edx                                       // 0x007c06a9    23c2
                         mov              word ptr [ecx + eax * 0x2], di                 // 0x007c06ab    66893c41
                         {disp8} mov      edx, dword ptr [esi + 0x40]                    // 0x007c06af    8b5640
                         {disp8} mov      eax, dword ptr [esi + 0x3c]                    // 0x007c06b2    8b463c
                         {disp8} mov      cx, word ptr [esi + 0x64]                      // 0x007c06b5    668b4e64
                         mov              word ptr [eax + edx * 0x2], cx                 // 0x007c06b9    66890c50
_jmp_addr_0x007c06bd:    {disp8} mov      eax, dword ptr [esi + 0x70]                    // 0x007c06bd    8b4670
                         dec              eax                                            // 0x007c06c0    48
                         {disp8} mov      dword ptr [esi + 0x70], eax                    // 0x007c06c1    894670
                         {disp8} jne      _jmp_addr_0x007c0672                           // 0x007c06c4    75ac
                         {disp8} mov      ecx, dword ptr [esi + 0x64]                    // 0x007c06c6    8b4e64
                         mov              ebp, 0x00000002                                // 0x007c06c9    bd02000000
                         inc              ecx                                            // 0x007c06ce    41
                         {disp8} mov      dword ptr [esi + 0x60], 0x00000000             // 0x007c06cf    c7466000000000
                         test             ebx, ebx                                       // 0x007c06d6    85db
                         {disp8} mov      dword ptr [esi + 0x58], ebp                    // 0x007c06d8    896e58
                         {disp8} mov      dword ptr [esi + 0x64], ecx                    // 0x007c06db    894e64
                         {disp32} je      _jmp_addr_0x007c04b0                           // 0x007c06de    0f84ccfdffff
                         {disp8} mov      edx, dword ptr [esi + 0x54]                    // 0x007c06e4    8b5654
                         test             edx, edx                                       // 0x007c06e7    85d2
                         {disp8} jl       _jmp_addr_0x007c06f2                           // 0x007c06e9    7c07
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007c06eb    8b4630
                         add.s            eax, edx                                       // 0x007c06ee    03c2
                         {disp8} jmp      _jmp_addr_0x007c06f4                           // 0x007c06f0    eb02
_jmp_addr_0x007c06f2:    xor.s            eax, eax                                       // 0x007c06f2    33c0
_jmp_addr_0x007c06f4:    sub.s            ecx, edx                                       // 0x007c06f4    2bca
                         push             0x0                                            // 0x007c06f6    6a00
                         push             ecx                                            // 0x007c06f8    51
                         push             eax                                            // 0x007c06f9    50
                         push             esi                                            // 0x007c06fa    56
                         call             __tr_flush_block                               // 0x007c06fb    e8e00e0000
                         mov              eax, dword ptr [esi]                           // 0x007c0700    8b06
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c0702    8b5664
                         push             eax                                            // 0x007c0705    50
                         {disp8} mov      dword ptr [esi + 0x54], edx                    // 0x007c0706    895654
                         call             _flush_pending                                 // 0x007c0709    e862f2ffff
                         mov              ecx, dword ptr [esi]                           // 0x007c070e    8b0e
                         add              esp, 0x14                                      // 0x007c0710    83c414
                         {disp8} mov      eax, dword ptr [ecx + 0x10]                    // 0x007c0713    8b4110
                         test             eax, eax                                       // 0x007c0716    85c0
                         {disp32} je      _jmp_addr_0x007c08c2                           // 0x007c0718    0f84a4010000
                         {disp32} jmp     _jmp_addr_0x007c04b0                           // 0x007c071e    e98dfdffff
_jmp_addr_0x007c0723:    {disp8} mov      eax, dword ptr [esi + 0x60]                    // 0x007c0723    8b4660
                         test             eax, eax                                       // 0x007c0726    85c0
                         {disp32} je      _jmp_addr_0x007c07e0                           // 0x007c0728    0f84b2000000
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c072e    8b5664
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007c0731    8b4630
                         {disp32} mov     ecx, dword ptr [esi + 0x00001698]              // 0x007c0734    8b8e98160000
                         {disp8} mov      al, byte ptr [edx + eax * 0x1 + -0x01]         // 0x007c073a    8a4402ff
                         {disp32} mov     edx, dword ptr [esi + 0x0000169c]              // 0x007c073e    8b969c160000
                         {disp8} mov      byte ptr [esp + 0x10], al                      // 0x007c0744    88442410
                         mov              word ptr [edx + ecx * 0x2], 0x0000             // 0x007c0748    66c7044a0000
                         {disp32} mov     ecx, dword ptr [esi + 0x00001690]              // 0x007c074e    8b8e90160000
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c0754    8b9698160000
                         mov              byte ptr [ecx + edx * 0x1], al                 // 0x007c075a    880411
                         {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x007c075d    8b442410
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c0761    8b9698160000
                         and              eax, 0x000000ff                                // 0x007c0767    25ff000000
                         inc              edx                                            // 0x007c076c    42
                         {disp32} lea     eax, dword ptr [esi + eax * 0x4 + 0x0000008c]  // 0x007c076d    8d84868c000000
                         {disp32} mov     dword ptr [esi + 0x00001698], edx              // 0x007c0774    899698160000
                         inc              word ptr [eax]                                 // 0x007c077a    66ff00
                         {disp32} mov     ecx, dword ptr [esi + 0x00001694]              // 0x007c077d    8b8e94160000
                         {disp32} mov     eax, dword ptr [esi + 0x00001698]              // 0x007c0783    8b8698160000
                         dec              ecx                                            // 0x007c0789    49
                         cmp.s            eax, ecx                                       // 0x007c078a    3bc1
                         {disp8} jne      _jmp_addr_0x007c07c0                           // 0x007c078c    7532
                         {disp8} mov      ecx, dword ptr [esi + 0x54]                    // 0x007c078e    8b4e54
                         test             ecx, ecx                                       // 0x007c0791    85c9
                         {disp8} jl       _jmp_addr_0x007c079e                           // 0x007c0793    7c09
                         {disp8} mov      edx, dword ptr [esi + 0x30]                    // 0x007c0795    8b5630
                         mov.s            eax, ecx                                       // 0x007c0798    8bc1
                         add.s            eax, edx                                       // 0x007c079a    03c2
                         {disp8} jmp      _jmp_addr_0x007c07a0                           // 0x007c079c    eb02
_jmp_addr_0x007c079e:    xor.s            eax, eax                                       // 0x007c079e    33c0
_jmp_addr_0x007c07a0:    {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c07a0    8b5664
                         push             0x0                                            // 0x007c07a3    6a00
                         sub.s            edx, ecx                                       // 0x007c07a5    2bd1
                         push             edx                                            // 0x007c07a7    52
                         push             eax                                            // 0x007c07a8    50
                         push             esi                                            // 0x007c07a9    56
                         call             __tr_flush_block                               // 0x007c07aa    e8310e0000
                         mov              ecx, dword ptr [esi]                           // 0x007c07af    8b0e
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007c07b1    8b4664
                         push             ecx                                            // 0x007c07b4    51
                         {disp8} mov      dword ptr [esi + 0x54], eax                    // 0x007c07b5    894654
                         call             _flush_pending                                 // 0x007c07b8    e8b3f1ffff
                         add              esp, 0x14                                      // 0x007c07bd    83c414
_jmp_addr_0x007c07c0:    {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c07c0    8b5664
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]                    // 0x007c07c3    8b4e6c
                         inc              edx                                            // 0x007c07c6    42
                         dec              ecx                                            // 0x007c07c7    49
                         {disp8} mov      dword ptr [esi + 0x64], edx                    // 0x007c07c8    895664
                         mov              edx, dword ptr [esi]                           // 0x007c07cb    8b16
                         {disp8} mov      dword ptr [esi + 0x6c], ecx                    // 0x007c07cd    894e6c
                         {disp8} mov      eax, dword ptr [edx + 0x10]                    // 0x007c07d0    8b4210
                         test             eax, eax                                       // 0x007c07d3    85c0
                         {disp32} je      _jmp_addr_0x007c08c2                           // 0x007c07d5    0f84e7000000
                         {disp32} jmp     _jmp_addr_0x007c04b0                           // 0x007c07db    e9d0fcffff
_jmp_addr_0x007c07e0:    {disp8} mov      ecx, dword ptr [esi + 0x64]                    // 0x007c07e0    8b4e64
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x007c07e3    8b466c
                         inc              ecx                                            // 0x007c07e6    41
                         dec              eax                                            // 0x007c07e7    48
                         {disp8} mov      dword ptr [esi + 0x60], 0x00000001             // 0x007c07e8    c7466001000000
                         {disp8} mov      dword ptr [esi + 0x64], ecx                    // 0x007c07ef    894e64
                         {disp8} mov      dword ptr [esi + 0x6c], eax                    // 0x007c07f2    89466c
                         {disp32} jmp     _jmp_addr_0x007c04b0                           // 0x007c07f5    e9b6fcffff
_jmp_addr_0x007c07fa:    {disp8} mov      eax, dword ptr [esi + 0x60]                    // 0x007c07fa    8b4660
                         test             eax, eax                                       // 0x007c07fd    85c0
                         {disp8} je       _jmp_addr_0x007c085d                           // 0x007c07ff    745c
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007c0801    8b4664
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                    // 0x007c0804    8b4e30
                         {disp32} mov     edx, dword ptr [esi + 0x00001698]              // 0x007c0807    8b9698160000
                         {disp8} mov      al, byte ptr [eax + ecx * 0x1 + -0x01]         // 0x007c080d    8a4408ff
                         {disp32} mov     ecx, dword ptr [esi + 0x0000169c]              // 0x007c0811    8b8e9c160000
                         {disp8} mov      byte ptr [esp + 0x1c], al                      // 0x007c0817    8844241c
                         mov              word ptr [ecx + edx * 0x2], 0x0000             // 0x007c081b    66c704510000
                         {disp32} mov     edx, dword ptr [esi + 0x00001690]              // 0x007c0821    8b9690160000
                         {disp32} mov     ecx, dword ptr [esi + 0x00001698]              // 0x007c0827    8b8e98160000
                         mov              byte ptr [edx + ecx * 0x1], al                 // 0x007c082d    88040a
                         {disp32} mov     eax, dword ptr [esi + 0x00001698]              // 0x007c0830    8b8698160000
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                    // 0x007c0836    8b54241c
                         inc              eax                                            // 0x007c083a    40
                         and              edx, 0x000000ff                                // 0x007c083b    81e2ff000000
                         {disp32} mov     dword ptr [esi + 0x00001698], eax              // 0x007c0841    898698160000
                         {disp32} inc     word ptr [esi + edx * 0x4 + 0x0000008c]        // 0x007c0847    66ff84968c000000
                         {disp8} mov      dword ptr [esi + 0x60], 0x00000000             // 0x007c084f    c7466000000000
                         {disp32} lea     eax, dword ptr [esi + edx * 0x4 + 0x0000008c]  // 0x007c0856    8d84968c000000
_jmp_addr_0x007c085d:    {disp8} mov      ecx, dword ptr [esi + 0x54]                    // 0x007c085d    8b4e54
                         test             ecx, ecx                                       // 0x007c0860    85c9
                         {disp8} jl       _jmp_addr_0x007c086b                           // 0x007c0862    7c07
                         {disp8} mov      eax, dword ptr [esi + 0x30]                    // 0x007c0864    8b4630
                         add.s            eax, ecx                                       // 0x007c0867    03c1
                         {disp8} jmp      _jmp_addr_0x007c086d                           // 0x007c0869    eb02
_jmp_addr_0x007c086b:    xor.s            eax, eax                                       // 0x007c086b    33c0
_jmp_addr_0x007c086d:    xor.s            edx, edx                                       // 0x007c086d    33d2
                         cmp              ebx, 0x04                                      // 0x007c086f    83fb04
                         sete             dl                                             // 0x007c0872    0f94c2
                         push             edx                                            // 0x007c0875    52
                         {disp8} mov      edx, dword ptr [esi + 0x64]                    // 0x007c0876    8b5664
                         sub.s            edx, ecx                                       // 0x007c0879    2bd1
                         push             edx                                            // 0x007c087b    52
                         push             eax                                            // 0x007c087c    50
                         push             esi                                            // 0x007c087d    56
                         call             __tr_flush_block                               // 0x007c087e    e85d0d0000
                         mov              ecx, dword ptr [esi]                           // 0x007c0883    8b0e
                         {disp8} mov      eax, dword ptr [esi + 0x64]                    // 0x007c0885    8b4664
                         push             ecx                                            // 0x007c0888    51
                         {disp8} mov      dword ptr [esi + 0x54], eax                    // 0x007c0889    894654
                         call             _flush_pending                                 // 0x007c088c    e8dff0ffff
                         mov              edx, dword ptr [esi]                           // 0x007c0891    8b16
                         add              esp, 0x14                                      // 0x007c0893    83c414
                         {disp8} mov      eax, dword ptr [edx + 0x10]                    // 0x007c0896    8b4210
                         test             eax, eax                                       // 0x007c0899    85c0
                         {disp8} jne      _jmp_addr_0x007c08ae                           // 0x007c089b    7511
                         xor.s            eax, eax                                       // 0x007c089d    33c0
                         cmp              ebx, 0x04                                      // 0x007c089f    83fb04
                         setne            al                                             // 0x007c08a2    0f95c0
                         dec              eax                                            // 0x007c08a5    48
                         pop              edi                                            // 0x007c08a6    5f
                         and.s            eax, ebp                                       // 0x007c08a7    23c5
                         pop              esi                                            // 0x007c08a9    5e
                         pop              ebp                                            // 0x007c08aa    5d
                         pop              ebx                                            // 0x007c08ab    5b
                         pop              ecx                                            // 0x007c08ac    59
                         ret                                                             // 0x007c08ad    c3
_jmp_addr_0x007c08ae:    mov.s            eax, ebx                                       // 0x007c08ae    8bc3
                         pop              edi                                            // 0x007c08b0    5f
                         sub              eax, 0x04                                      // 0x007c08b1    83e804
                         pop              esi                                            // 0x007c08b4    5e
                         neg              eax                                            // 0x007c08b5    f7d8
                         sbb.s            eax, eax                                       // 0x007c08b7    1bc0
                         pop              ebp                                            // 0x007c08b9    5d
                         and              al, -0x02                                      // 0x007c08ba    24fe
                         pop              ebx                                            // 0x007c08bc    5b
                         add              eax, 0x03                                      // 0x007c08bd    83c003
                         pop              ecx                                            // 0x007c08c0    59
                         ret                                                             // 0x007c08c1    c3
_jmp_addr_0x007c08c2:    pop              edi                                            // 0x007c08c2    5f
                         pop              esi                                            // 0x007c08c3    5e
                         pop              ebp                                            // 0x007c08c4    5d
                         xor.s            eax, eax                                       // 0x007c08c5    33c0
                         pop              ebx                                            // 0x007c08c7    5b
                         pop              ecx                                            // 0x007c08c8    59
                         ret                                                             // 0x007c08c9    c3
                         nop                                                             // 0x007c08ca    90
                         nop                                                             // 0x007c08cb    90
                         nop                                                             // 0x007c08cc    90
                         nop                                                             // 0x007c08cd    90
                         nop                                                             // 0x007c08ce    90
                         nop                                                             // 0x007c08cf    90
