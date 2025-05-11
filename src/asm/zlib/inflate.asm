.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern _inflate_blocks_reset
.extern _inflate_blocks_new
.extern _inflate_blocks
.extern _inflate_blocks_free

.globl _inflateReset
.globl _inflateEnd
.globl _inflateInit_
.globl _inflate

.section .rdata

zlib_inflateSync_mark: .byte 0x00, 0x00, 0xff, 0xff                                      // [0xf6928] 0x008a9000 + 0xf6928 = 0x0099f928

.section .text

_inflateReset:           {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x007c08d0    8b442404
                         xor.s            edx, edx                                       // 0x007c08d4    33d2
                         cmp.s            eax, edx                                       // 0x007c08d6    3bc2
                         {disp8} je       _jmp_addr_0x007c090c                           // 0x007c08d8    7432
                         {disp8} mov      ecx, dword ptr [eax + 0x1c]                    // 0x007c08da    8b481c
                         cmp.s            ecx, edx                                       // 0x007c08dd    3bca
                         {disp8} je       _jmp_addr_0x007c090c                           // 0x007c08df    742b
                         push             esi                                            // 0x007c08e1    56
                         {disp8} mov      dword ptr [eax + 0x14], edx                    // 0x007c08e2    895014
                         {disp8} mov      dword ptr [eax + 0x08], edx                    // 0x007c08e5    895008
                         {disp8} mov      dword ptr [eax + 0x18], edx                    // 0x007c08e8    895018
                         {disp8} mov      esi, dword ptr [ecx + 0x0c]                    // 0x007c08eb    8b710c
                         push             edx                                            // 0x007c08ee    52
                         neg              esi                                            // 0x007c08ef    f7de
                         sbb.s            esi, esi                                       // 0x007c08f1    1bf6
                         push             eax                                            // 0x007c08f3    50
                         and              esi, 0x07                                      // 0x007c08f4    83e607
                         mov              dword ptr [ecx], esi                           // 0x007c08f7    8931
                         {disp8} mov      eax, dword ptr [eax + 0x1c]                    // 0x007c08f9    8b401c
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x007c08fc    8b4814
                         push             ecx                                            // 0x007c08ff    51
                         call             _inflate_blocks_reset                          // 0x007c0900    e82b250000
                         add              esp, 0x0c                                      // 0x007c0905    83c40c
                         xor.s            eax, eax                                       // 0x007c0908    33c0
                         pop              esi                                            // 0x007c090a    5e
                         ret                                                             // 0x007c090b    c3
_jmp_addr_0x007c090c:    mov              eax, 0xfffffffe                                // 0x007c090c    b8feffffff
                         ret                                                             // 0x007c0911    c3
                         nop                                                             // 0x007c0912    90
                         nop                                                             // 0x007c0913    90
                         nop                                                             // 0x007c0914    90
                         nop                                                             // 0x007c0915    90
                         nop                                                             // 0x007c0916    90
                         nop                                                             // 0x007c0917    90
                         nop                                                             // 0x007c0918    90
                         nop                                                             // 0x007c0919    90
                         nop                                                             // 0x007c091a    90
                         nop                                                             // 0x007c091b    90
                         nop                                                             // 0x007c091c    90
                         nop                                                             // 0x007c091d    90
                         nop                                                             // 0x007c091e    90
                         nop                                                             // 0x007c091f    90
_inflateEnd:             push             esi                                            // 0x007c0920    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x007c0921    8b742408
                         test             esi, esi                                       // 0x007c0925    85f6
                         {disp8} je       _jmp_addr_0x007c0961                           // 0x007c0927    7438
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0929    8b461c
                         test             eax, eax                                       // 0x007c092c    85c0
                         {disp8} je       _jmp_addr_0x007c0961                           // 0x007c092e    7431
                         {disp8} mov      ecx, dword ptr [esi + 0x24]                    // 0x007c0930    8b4e24
                         test             ecx, ecx                                       // 0x007c0933    85c9
                         {disp8} je       _jmp_addr_0x007c0961                           // 0x007c0935    742a
                         {disp8} mov      eax, dword ptr [eax + 0x14]                    // 0x007c0937    8b4014
                         test             eax, eax                                       // 0x007c093a    85c0
                         {disp8} je       _jmp_addr_0x007c0948                           // 0x007c093c    740a
                         push             esi                                            // 0x007c093e    56
                         push             eax                                            // 0x007c093f    50
                         call             _inflate_blocks_free                           // 0x007c0940    e80b330000
                         add              esp, 0x08                                      // 0x007c0945    83c408
_jmp_addr_0x007c0948:    {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0948    8b461c
                         {disp8} mov      ecx, dword ptr [esi + 0x28]                    // 0x007c094b    8b4e28
                         push             eax                                            // 0x007c094e    50
                         push             ecx                                            // 0x007c094f    51
                         call             dword ptr [esi + 0x24]                         // 0x007c0950    ff5624
                         add              esp, 0x08                                      // 0x007c0953    83c408
                         {disp8} mov      dword ptr [esi + 0x1c], 0x00000000             // 0x007c0956    c7461c00000000
                         xor.s            eax, eax                                       // 0x007c095d    33c0
                         pop              esi                                            // 0x007c095f    5e
                         ret                                                             // 0x007c0960    c3
_jmp_addr_0x007c0961:    mov              eax, 0xfffffffe                                // 0x007c0961    b8feffffff
                         pop              esi                                            // 0x007c0966    5e
                         ret                                                             // 0x007c0967    c3
                         nop                                                             // 0x007c0968    90
                         nop                                                             // 0x007c0969    90
                         nop                                                             // 0x007c096a    90
                         nop                                                             // 0x007c096b    90
                         nop                                                             // 0x007c096c    90
                         nop                                                             // 0x007c096d    90
                         nop                                                             // 0x007c096e    90
                         nop                                                             // 0x007c096f    90
_inflateInit2_:          {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x007c0970    8b44240c
                         push             esi                                            // 0x007c0974    56
                         push             edi                                            // 0x007c0975    57
                         xor.s            edi, edi                                       // 0x007c0976    33ff
                         cmp.s            eax, edi                                       // 0x007c0978    3bc7
                         {disp32} je      _jmp_addr_0x007c0a76                           // 0x007c097a    0f84f6000000
                         mov              al, byte ptr [eax]                             // 0x007c0980    8a00
                         {disp32} mov     cl, byte ptr [data_bytes + 0x265a74]           // 0x007c0982    8a0d74bac200
                         cmp.s            al, cl                                         // 0x007c0988    3ac1
                         {disp32} jne     _jmp_addr_0x007c0a76                           // 0x007c098a    0f85e6000000
                         cmp              dword ptr [esp + 0x18], 0x38                   // 0x007c0990    837c241838
                         {disp32} jne     _jmp_addr_0x007c0a76                           // 0x007c0995    0f85db000000
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x007c099b    8b74240c
                         cmp.s            esi, edi                                       // 0x007c099f    3bf7
                         {disp8} jne      _jmp_addr_0x007c09ab                           // 0x007c09a1    7508
                         pop              edi                                            // 0x007c09a3    5f
                         mov              eax, 0xfffffffe                                // 0x007c09a4    b8feffffff
                         pop              esi                                            // 0x007c09a9    5e
                         ret                                                             // 0x007c09aa    c3
_jmp_addr_0x007c09ab:    {disp8} mov      eax, dword ptr [esi + 0x20]                    // 0x007c09ab    8b4620
                         {disp8} mov      dword ptr [esi + 0x18], edi                    // 0x007c09ae    897e18
                         cmp.s            eax, edi                                       // 0x007c09b1    3bc7
                         {disp8} jne      _jmp_addr_0x007c09bf                           // 0x007c09b3    750a
                         {disp8} mov      dword ptr [esi + 0x20], 0x007c1090             // 0x007c09b5    c7462090107c00
                         {disp8} mov      dword ptr [esi + 0x28], edi                    // 0x007c09bc    897e28
_jmp_addr_0x007c09bf:    cmp              dword ptr [esi + 0x24], edi                    // 0x007c09bf    397e24
                         {disp8} jne      _jmp_addr_0x007c09cb                           // 0x007c09c2    7507
                         {disp8} mov      dword ptr [esi + 0x24], 0x007c10b0             // 0x007c09c4    c74624b0107c00
_jmp_addr_0x007c09cb:    {disp8} mov      ecx, dword ptr [esi + 0x28]                    // 0x007c09cb    8b4e28
                         push             0x18                                           // 0x007c09ce    6a18
                         push             0x1                                            // 0x007c09d0    6a01
                         push             ecx                                            // 0x007c09d2    51
                         call             dword ptr [esi + 0x20]                         // 0x007c09d3    ff5620
                         add              esp, 0x0c                                      // 0x007c09d6    83c40c
                         cmp.s            eax, edi                                       // 0x007c09d9    3bc7
                         {disp8} mov      dword ptr [esi + 0x1c], eax                    // 0x007c09db    89461c
                         {disp8} jne      _jmp_addr_0x007c09e8                           // 0x007c09de    7508
                         pop              edi                                            // 0x007c09e0    5f
                         mov              eax, 0xfffffffc                                // 0x007c09e1    b8fcffffff
                         pop              esi                                            // 0x007c09e6    5e
                         ret                                                             // 0x007c09e7    c3
_jmp_addr_0x007c09e8:    {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x007c09e8    8b4c2410
                         {disp8} mov      dword ptr [eax + 0x14], edi                    // 0x007c09ec    897814
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c09ef    8b561c
                         cmp.s            ecx, edi                                       // 0x007c09f2    3bcf
                         {disp8} mov      dword ptr [edx + 0x0c], edi                    // 0x007c09f4    897a0c
                         {disp8} jge      _jmp_addr_0x007c0a05                           // 0x007c09f7    7d0c
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c09f9    8b461c
                         neg              ecx                                            // 0x007c09fc    f7d9
                         {disp8} mov      dword ptr [eax + 0x0c], 0x00000001             // 0x007c09fe    c7400c01000000
_jmp_addr_0x007c0a05:    cmp              ecx, 0x08                                      // 0x007c0a05    83f908
                         {disp8} jl       _jmp_addr_0x007c0a65                           // 0x007c0a08    7c5b
                         cmp              ecx, 0x0f                                      // 0x007c0a0a    83f90f
                         {disp8} jg       _jmp_addr_0x007c0a65                           // 0x007c0a0d    7f56
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0a0f    8b561c
                         mov              eax, 0x00000001                                // 0x007c0a12    b801000000
                         shl              eax, cl                                        // 0x007c0a17    d3e0
                         {disp8} mov      dword ptr [edx + 0x10], ecx                    // 0x007c0a19    894a10
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]                    // 0x007c0a1c    8b4e1c
                         {disp8} mov      edx, dword ptr [ecx + 0x0c]                    // 0x007c0a1f    8b510c
                         neg              edx                                            // 0x007c0a22    f7da
                         sbb.s            edx, edx                                       // 0x007c0a24    1bd2
                         push             eax                                            // 0x007c0a26    50
                         not              edx                                            // 0x007c0a27    f7d2
                         and              edx, 0x007c10c0                                // 0x007c0a29    81e2c0107c00
                         push             edx                                            // 0x007c0a2f    52
                         push             esi                                            // 0x007c0a30    56
                         call             _inflate_blocks_new                            // 0x007c0a31    e87a240000
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]                    // 0x007c0a36    8b4e1c
                         add              esp, 0x0c                                      // 0x007c0a39    83c40c
                         {disp8} mov      dword ptr [ecx + 0x14], eax                    // 0x007c0a3c    894114
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0a3f    8b561c
                         push             esi                                            // 0x007c0a42    56
                         cmp              dword ptr [edx + 0x14], edi                    // 0x007c0a43    397a14
                         {disp8} jne      _jmp_addr_0x007c0a58                           // 0x007c0a46    7510
                         call             _inflateEnd                                    // 0x007c0a48    e8d3feffff
                         add              esp, 0x04                                      // 0x007c0a4d    83c404
                         mov              eax, 0xfffffffc                                // 0x007c0a50    b8fcffffff
                         pop              edi                                            // 0x007c0a55    5f
                         pop              esi                                            // 0x007c0a56    5e
                         ret                                                             // 0x007c0a57    c3
_jmp_addr_0x007c0a58:    call             _inflateReset                                  // 0x007c0a58    e873feffff
                         add              esp, 0x04                                      // 0x007c0a5d    83c404
                         xor.s            eax, eax                                       // 0x007c0a60    33c0
                         pop              edi                                            // 0x007c0a62    5f
                         pop              esi                                            // 0x007c0a63    5e
                         ret                                                             // 0x007c0a64    c3
_jmp_addr_0x007c0a65:    push             esi                                            // 0x007c0a65    56
                         call             _inflateEnd                                    // 0x007c0a66    e8b5feffff
                         add              esp, 0x04                                      // 0x007c0a6b    83c404
                         mov              eax, 0xfffffffe                                // 0x007c0a6e    b8feffffff
                         pop              edi                                            // 0x007c0a73    5f
                         pop              esi                                            // 0x007c0a74    5e
                         ret                                                             // 0x007c0a75    c3
_jmp_addr_0x007c0a76:    pop              edi                                            // 0x007c0a76    5f
                         mov              eax, 0xfffffffa                                // 0x007c0a77    b8faffffff
                         pop              esi                                            // 0x007c0a7c    5e
                         ret                                                             // 0x007c0a7d    c3
                         nop                                                             // 0x007c0a7e    90
                         nop                                                             // 0x007c0a7f    90
_inflateInit_:           {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x007c0a80    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x007c0a84    8b4c2408
                         {disp8} mov      edx, dword ptr [esp + 0x04]                    // 0x007c0a88    8b542404
                         push             eax                                            // 0x007c0a8c    50
                         push             ecx                                            // 0x007c0a8d    51
                         push             0xf                                            // 0x007c0a8e    6a0f
                         push             edx                                            // 0x007c0a90    52
                         call             _inflateInit2_                                 // 0x007c0a91    e8dafeffff
                         add              esp, 0x10                                      // 0x007c0a96    83c410
                         ret                                                             // 0x007c0a99    c3
                         nop                                                             // 0x007c0a9a    90
                         nop                                                             // 0x007c0a9b    90
                         nop                                                             // 0x007c0a9c    90
                         nop                                                             // 0x007c0a9d    90
                         nop                                                             // 0x007c0a9e    90
                         nop                                                             // 0x007c0a9f    90
_inflate:                push             ebx                                            // 0x007c0aa0    53
                         push             ebp                                            // 0x007c0aa1    55
                         push             esi                                            // 0x007c0aa2    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                    // 0x007c0aa3    8b742410
                         test             esi, esi                                       // 0x007c0aa7    85f6
                         push             edi                                            // 0x007c0aa9    57
                         {disp32} je      _jmp_addr_0x007c0e70                           // 0x007c0aaa    0f84c0030000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0ab0    8b461c
                         test             eax, eax                                       // 0x007c0ab3    85c0
                         {disp32} je      _jmp_addr_0x007c0e70                           // 0x007c0ab5    0f84b5030000
                         cmp              dword ptr [esi], 0x00                          // 0x007c0abb    833e00
                         {disp32} je      _jmp_addr_0x007c0e70                           // 0x007c0abe    0f84ac030000
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x007c0ac4    8b542418
                         xor.s            ebx, ebx                                       // 0x007c0ac8    33db
                         cmp              edx, 0x04                                      // 0x007c0aca    83fa04
                         mov              edi, 0xfffffffb                                // 0x007c0acd    bffbffffff
                         setne            bl                                             // 0x007c0ad2    0f95c3
                         dec              ebx                                            // 0x007c0ad5    4b
                         mov              ebp, 0x00000005                                // 0x007c0ad6    bd05000000
                         and              ebx, 0xfffffffb                                // 0x007c0adb    83e3fb
                         {disp8} mov      dword ptr [esp + 0x18], ebx                    // 0x007c0ade    895c2418
_jmp_addr_0x007c0ae2:    {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0ae2    8b461c
                         mov              ecx, dword ptr [eax]                           // 0x007c0ae5    8b08
                         cmp              ecx, 0x0d                                      // 0x007c0ae7    83f90d
                         {disp32} ja      _jmp_addr_0x007c0e70                           // 0x007c0aea    0f8780030000
                         jmp              dword ptr [ecx*4 + 0x7c0e98]                   // 0x007c0af0    ff248d980e7c00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                    // 0x007c0af7    8b4e04
                         test             ecx, ecx                                       // 0x007c0afa    85c9
                         {disp32} je      _jmp_addr_0x007c0d67                           // 0x007c0afc    0f8465020000
                         dec              ecx                                            // 0x007c0b02    49
                         xor.s            edx, edx                                       // 0x007c0b03    33d2
                         {disp8} mov      dword ptr [esi + 0x04], ecx                    // 0x007c0b05    894e04
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x007c0b08    8b4e08
                         inc              ecx                                            // 0x007c0b0b    41
                         mov.s            edi, ebx                                       // 0x007c0b0c    8bfb
                         {disp8} mov      dword ptr [esi + 0x08], ecx                    // 0x007c0b0e    894e08
                         mov              ecx, dword ptr [esi]                           // 0x007c0b11    8b0e
                         mov              dl, byte ptr [ecx]                             // 0x007c0b13    8a11
                         {disp8} mov      dword ptr [eax + 0x04], edx                    // 0x007c0b15    895004
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0b18    8b461c
                         mov              edx, dword ptr [esi]                           // 0x007c0b1b    8b16
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x007c0b1d    8b4804
                         and              ecx, 0x0f                                      // 0x007c0b20    83e10f
                         inc              edx                                            // 0x007c0b23    42
                         cmp              cl, 0x08                                       // 0x007c0b24    80f908
                         mov              dword ptr [esi], edx                           // 0x007c0b27    8916
                         {disp8} je       _jmp_addr_0x007c0b40                           // 0x007c0b29    7415
                         mov              dword ptr [eax], 0x0000000d                    // 0x007c0b2b    c7000d000000
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0b31    8b561c
                         {disp8} mov      dword ptr [esi + 0x18], 0x00c2bfb4             // 0x007c0b34    c74618b4bfc200
                         {disp8} mov      dword ptr [edx + 0x04], ebp                    // 0x007c0b3b    896a04
                         {disp8} jmp      _jmp_addr_0x007c0ae2                           // 0x007c0b3e    eba2
_jmp_addr_0x007c0b40:    {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x007c0b40    8b4804
                         {disp8} mov      edx, dword ptr [eax + 0x10]                    // 0x007c0b43    8b5010
                         shr              ecx, 4                                         // 0x007c0b46    c1e904
                         add              ecx, 0x8                                       // 0x007c0b49    83c108
                         cmp.s            ecx, edx                                       // 0x007c0b4c    3bca
                         {disp8} jbe      _jmp_addr_0x007c0b68                           // 0x007c0b4e    7618
                         mov              dword ptr [eax], 0x0000000d                    // 0x007c0b50    c7000d000000
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0b56    8b561c
                         {disp8} mov      dword ptr [esi + 0x18], 0x00c2bfa0             // 0x007c0b59    c74618a0bfc200
                         {disp8} mov      dword ptr [edx + 0x04], ebp                    // 0x007c0b60    896a04
                         {disp32} jmp     _jmp_addr_0x007c0ae2                           // 0x007c0b63    e97affffff
_jmp_addr_0x007c0b68:    mov              dword ptr [eax], 0x00000001                    // 0x007c0b68    c70001000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0b6e    8b4604
                         test             eax, eax                                       // 0x007c0b71    85c0
                         {disp32} je      _jmp_addr_0x007c0d67                           // 0x007c0b73    0f84ee010000
                         dec              eax                                            // 0x007c0b79    48
                         xor.s            ecx, ecx                                       // 0x007c0b7a    33c9
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0b7c    894604
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x007c0b7f    8b4608
                         inc              eax                                            // 0x007c0b82    40
                         mov.s            edi, ebx                                       // 0x007c0b83    8bfb
                         {disp8} mov      ebx, dword ptr [esi + 0x1c]                    // 0x007c0b85    8b5e1c
                         {disp8} mov      dword ptr [esi + 0x08], eax                    // 0x007c0b88    894608
                         mov              eax, dword ptr [esi]                           // 0x007c0b8b    8b06
                         xor.s            edx, edx                                       // 0x007c0b8d    33d2
                         mov              ebp, 0x0000001f                                // 0x007c0b8f    bd1f000000
                         mov              cl, byte ptr [eax]                             // 0x007c0b94    8a08
                         inc              eax                                            // 0x007c0b96    40
                         mov              dword ptr [esi], eax                           // 0x007c0b97    8906
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x007c0b99    8b4304
                         shl              eax, 8                                         // 0x007c0b9c    c1e008
                         add.s            eax, ecx                                       // 0x007c0b9f    03c1
                         div              ebp                                            // 0x007c0ba1    f7f5
                         test             edx, edx                                       // 0x007c0ba3    85d2
                         {disp8} je       _jmp_addr_0x007c0bc8                           // 0x007c0ba5    7421
                         mov              dword ptr [ebx], 0x0000000d                    // 0x007c0ba7    c7030d000000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0bad    8b461c
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x007c0bb0    8b5c2418
                         mov              ebp, 0x00000005                                // 0x007c0bb4    bd05000000
                         {disp8} mov      dword ptr [esi + 0x18], 0x00c2bf88             // 0x007c0bb9    c7461888bfc200
                         {disp8} mov      dword ptr [eax + 0x04], ebp                    // 0x007c0bc0    896804
                         {disp32} jmp     _jmp_addr_0x007c0ae2                           // 0x007c0bc3    e91affffff
_jmp_addr_0x007c0bc8:    test             cl, 0x20                                       // 0x007c0bc8    f6c120
                         {disp32} jne     _jmp_addr_0x007c0d4e                           // 0x007c0bcb    0f857d010000
                         mov              dword ptr [ebx], 0x00000007                    // 0x007c0bd1    c70307000000
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x007c0bd7    8b5c2418
                         mov              ebp, 0x00000005                                // 0x007c0bdb    bd05000000
                         {disp32} jmp     _jmp_addr_0x007c0ae2                           // 0x007c0be0    e9fdfeffff
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x007c0be5    8b4814
                         push             edi                                            // 0x007c0be8    57
                         push             esi                                            // 0x007c0be9    56
                         push             ecx                                            // 0x007c0bea    51
                         call             _inflate_blocks                                // 0x007c0beb    e860230000
                         mov.s            edi, eax                                       // 0x007c0bf0    8bf8
                         add              esp, 0x0c                                      // 0x007c0bf2    83c40c
                         cmp              edi, -0x03                                     // 0x007c0bf5    83fffd
                         {disp8} jne      _jmp_addr_0x007c0c12                           // 0x007c0bf8    7518
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0bfa    8b561c
                         mov              dword ptr [edx], 0x0000000d                    // 0x007c0bfd    c7020d000000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0c03    8b461c
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000             // 0x007c0c06    c7400400000000
                         {disp32} jmp     _jmp_addr_0x007c0ae2                           // 0x007c0c0d    e9d0feffff
_jmp_addr_0x007c0c12:    test             edi, edi                                       // 0x007c0c12    85ff
                         {disp8} jne      _jmp_addr_0x007c0c18                           // 0x007c0c14    7502
                         mov.s            edi, ebx                                       // 0x007c0c16    8bfb
_jmp_addr_0x007c0c18:    cmp              edi, 0x01                                      // 0x007c0c18    83ff01
                         {disp32} jne     _jmp_addr_0x007c0d67                           // 0x007c0c1b    0f8546010000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0c21    8b461c
                         mov.s            edi, ebx                                       // 0x007c0c24    8bfb
                         {disp8} mov      edx, dword ptr [eax + 0x14]                    // 0x007c0c26    8b5014
                         {disp8} lea      ecx, dword ptr [eax + 0x04]                    // 0x007c0c29    8d4804
                         push             ecx                                            // 0x007c0c2c    51
                         push             esi                                            // 0x007c0c2d    56
                         push             edx                                            // 0x007c0c2e    52
                         call             _inflate_blocks_reset                          // 0x007c0c2f    e8fc210000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0c34    8b461c
                         add              esp, 0x0c                                      // 0x007c0c37    83c40c
                         {disp8} mov      ecx, dword ptr [eax + 0x0c]                    // 0x007c0c3a    8b480c
                         test             ecx, ecx                                       // 0x007c0c3d    85c9
                         {disp8} je       _jmp_addr_0x007c0c4c                           // 0x007c0c3f    740b
                         mov              dword ptr [eax], 0x0000000c                    // 0x007c0c41    c7000c000000
                         {disp32} jmp     _jmp_addr_0x007c0ae2                           // 0x007c0c47    e996feffff
_jmp_addr_0x007c0c4c:    mov              dword ptr [eax], 0x00000008                    // 0x007c0c4c    c70008000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0c52    8b4604
                         test             eax, eax                                       // 0x007c0c55    85c0
                         {disp32} je      _jmp_addr_0x007c0d67                           // 0x007c0c57    0f840a010000
                         dec              eax                                            // 0x007c0c5d    48
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0c5e    8b561c
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0c61    894604
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x007c0c64    8b4608
                         inc              eax                                            // 0x007c0c67    40
                         xor.s            ecx, ecx                                       // 0x007c0c68    33c9
                         {disp8} mov      dword ptr [esi + 0x08], eax                    // 0x007c0c6a    894608
                         mov              eax, dword ptr [esi]                           // 0x007c0c6d    8b06
                         mov.s            edi, ebx                                       // 0x007c0c6f    8bfb
                         mov              cl, byte ptr [eax]                             // 0x007c0c71    8a08
                         shl              ecx, 0x18                                      // 0x007c0c73    c1e118
                         {disp8} mov      dword ptr [edx + 0x08], ecx                    // 0x007c0c76    894a08
                         mov              eax, dword ptr [esi]                           // 0x007c0c79    8b06
                         inc              eax                                            // 0x007c0c7b    40
                         mov              dword ptr [esi], eax                           // 0x007c0c7c    8906
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0c7e    8b461c
                         mov              dword ptr [eax], 0x00000009                    // 0x007c0c81    c70009000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0c87    8b4604
                         test             eax, eax                                       // 0x007c0c8a    85c0
                         {disp32} je      _jmp_addr_0x007c0d67                           // 0x007c0c8c    0f84d5000000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x007c0c92    8b5608
                         mov              ecx, dword ptr [esi]                           // 0x007c0c95    8b0e
                         dec              eax                                            // 0x007c0c97    48
                         inc              edx                                            // 0x007c0c98    42
                         {disp8} mov      dword ptr [esi + 0x08], edx                    // 0x007c0c99    895608
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0c9c    894604
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0c9f    8b461c
                         xor.s            edx, edx                                       // 0x007c0ca2    33d2
                         mov              dl, byte ptr [ecx]                             // 0x007c0ca4    8a11
                         mov.s            edi, ebx                                       // 0x007c0ca6    8bfb
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x007c0ca8    8b4808
                         shl              edx, 0x10                                      // 0x007c0cab    c1e210
                         add.s            ecx, edx                                       // 0x007c0cae    03ca
                         {disp8} mov      dword ptr [eax + 0x08], ecx                    // 0x007c0cb0    894808
                         mov              eax, dword ptr [esi]                           // 0x007c0cb3    8b06
                         inc              eax                                            // 0x007c0cb5    40
                         mov              dword ptr [esi], eax                           // 0x007c0cb6    8906
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0cb8    8b461c
                         mov              dword ptr [eax], 0x0000000a                    // 0x007c0cbb    c7000a000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0cc1    8b4604
                         test             eax, eax                                       // 0x007c0cc4    85c0
                         {disp32} je      _jmp_addr_0x007c0d67                           // 0x007c0cc6    0f849b000000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x007c0ccc    8b5608
                         mov              ecx, dword ptr [esi]                           // 0x007c0ccf    8b0e
                         dec              eax                                            // 0x007c0cd1    48
                         inc              edx                                            // 0x007c0cd2    42
                         {disp8} mov      dword ptr [esi + 0x08], edx                    // 0x007c0cd3    895608
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0cd6    894604
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0cd9    8b461c
                         xor.s            edx, edx                                       // 0x007c0cdc    33d2
                         mov              dl, byte ptr [ecx]                             // 0x007c0cde    8a11
                         mov.s            edi, ebx                                       // 0x007c0ce0    8bfb
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x007c0ce2    8b4808
                         shl              edx, 8                                         // 0x007c0ce5    c1e208
                         add.s            ecx, edx                                       // 0x007c0ce8    03ca
                         {disp8} mov      dword ptr [eax + 0x08], ecx                    // 0x007c0cea    894808
                         mov              eax, dword ptr [esi]                           // 0x007c0ced    8b06
                         inc              eax                                            // 0x007c0cef    40
                         mov              dword ptr [esi], eax                           // 0x007c0cf0    8906
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0cf2    8b461c
                         mov              dword ptr [eax], 0x0000000b                    // 0x007c0cf5    c7000b000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0cfb    8b4604
                         test             eax, eax                                       // 0x007c0cfe    85c0
                         {disp8} je       _jmp_addr_0x007c0d67                           // 0x007c0d00    7465
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x007c0d02    8b5608
                         mov              ecx, dword ptr [esi]                           // 0x007c0d05    8b0e
                         dec              eax                                            // 0x007c0d07    48
                         inc              edx                                            // 0x007c0d08    42
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0d09    894604
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0d0c    8b461c
                         {disp8} mov      dword ptr [esi + 0x08], edx                    // 0x007c0d0f    895608
                         xor.s            edx, edx                                       // 0x007c0d12    33d2
                         mov              dl, byte ptr [ecx]                             // 0x007c0d14    8a11
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x007c0d16    8b4808
                         add.s            ecx, edx                                       // 0x007c0d19    03ca
                         mov.s            edi, ebx                                       // 0x007c0d1b    8bfb
                         {disp8} mov      dword ptr [eax + 0x08], ecx                    // 0x007c0d1d    894808
                         mov              eax, dword ptr [esi]                           // 0x007c0d20    8b06
                         inc              eax                                            // 0x007c0d22    40
                         mov              dword ptr [esi], eax                           // 0x007c0d23    8906
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0d25    8b461c
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x007c0d28    8b4804
                         {disp8} mov      edx, dword ptr [eax + 0x08]                    // 0x007c0d2b    8b5008
                         cmp.s            ecx, edx                                       // 0x007c0d2e    3bca
                         {disp32} je      _jmp_addr_0x007c0e7a                           // 0x007c0d30    0f8444010000
                         mov              dword ptr [eax], 0x0000000d                    // 0x007c0d36    c7000d000000
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0d3c    8b561c
                         {disp8} mov      dword ptr [esi + 0x18], 0x00c2bf70             // 0x007c0d3f    c7461870bfc200
                         {disp8} mov      dword ptr [edx + 0x04], ebp                    // 0x007c0d46    896a04
                         {disp32} jmp     _jmp_addr_0x007c0ae2                           // 0x007c0d49    e994fdffff
_jmp_addr_0x007c0d4e:    {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0d4e    8b461c
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x007c0d51    8b5c2418
                         mov              ebp, 0x00000005                                // 0x007c0d55    bd05000000
                         mov              dword ptr [eax], 0x00000002                    // 0x007c0d5a    c70002000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0d60    8b4604
                         test             eax, eax                                       // 0x007c0d63    85c0
                         {disp8} jne      _jmp_addr_0x007c0d6e                           // 0x007c0d65    7507
_jmp_addr_0x007c0d67:    mov.s            eax, edi                                       // 0x007c0d67    8bc7
                         pop              edi                                            // 0x007c0d69    5f
                         pop              esi                                            // 0x007c0d6a    5e
                         pop              ebp                                            // 0x007c0d6b    5d
                         pop              ebx                                            // 0x007c0d6c    5b
                         ret                                                             // 0x007c0d6d    c3
_jmp_addr_0x007c0d6e:    {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x007c0d6e    8b5608
                         mov              ecx, dword ptr [esi]                           // 0x007c0d71    8b0e
                         dec              eax                                            // 0x007c0d73    48
                         inc              edx                                            // 0x007c0d74    42
                         {disp8} mov      dword ptr [esi + 0x08], edx                    // 0x007c0d75    895608
                         xor.s            edx, edx                                       // 0x007c0d78    33d2
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0d7a    894604
                         mov              dl, byte ptr [ecx]                             // 0x007c0d7d    8a11
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0d7f    8b461c
                         mov.s            edi, ebx                                       // 0x007c0d82    8bfb
                         shl              edx, 0x18                                      // 0x007c0d84    c1e218
                         {disp8} mov      dword ptr [eax + 0x08], edx                    // 0x007c0d87    895008
                         mov              eax, dword ptr [esi]                           // 0x007c0d8a    8b06
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]                    // 0x007c0d8c    8b4e1c
                         inc              eax                                            // 0x007c0d8f    40
                         mov              dword ptr [esi], eax                           // 0x007c0d90    8906
                         mov              dword ptr [ecx], 0x00000003                    // 0x007c0d92    c70103000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0d98    8b4604
                         test             eax, eax                                       // 0x007c0d9b    85c0
                         {disp8} jne      _jmp_addr_0x007c0da6                           // 0x007c0d9d    7507
                         mov.s            eax, edi                                       // 0x007c0d9f    8bc7
                         pop              edi                                            // 0x007c0da1    5f
                         pop              esi                                            // 0x007c0da2    5e
                         pop              ebp                                            // 0x007c0da3    5d
                         pop              ebx                                            // 0x007c0da4    5b
                         ret                                                             // 0x007c0da5    c3
_jmp_addr_0x007c0da6:    mov              edx, dword ptr [esi]                           // 0x007c0da6    8b16
                         dec              eax                                            // 0x007c0da8    48
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0da9    894604
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x007c0dac    8b4608
                         inc              eax                                            // 0x007c0daf    40
                         xor.s            ecx, ecx                                       // 0x007c0db0    33c9
                         {disp8} mov      dword ptr [esi + 0x08], eax                    // 0x007c0db2    894608
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0db5    8b461c
                         mov              cl, byte ptr [edx]                             // 0x007c0db8    8a0a
                         mov.s            edi, ebx                                       // 0x007c0dba    8bfb
                         {disp8} mov      edx, dword ptr [eax + 0x08]                    // 0x007c0dbc    8b5008
                         shl              ecx, 0x10                                      // 0x007c0dbf    c1e110
                         add.s            edx, ecx                                       // 0x007c0dc2    03d1
                         {disp8} mov      dword ptr [eax + 0x08], edx                    // 0x007c0dc4    895008
                         mov              eax, dword ptr [esi]                           // 0x007c0dc7    8b06
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0dc9    8b561c
                         inc              eax                                            // 0x007c0dcc    40
                         mov              dword ptr [esi], eax                           // 0x007c0dcd    8906
                         mov              dword ptr [edx], 0x00000004                    // 0x007c0dcf    c70204000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0dd5    8b4604
                         test             eax, eax                                       // 0x007c0dd8    85c0
                         {disp8} jne      _jmp_addr_0x007c0de3                           // 0x007c0dda    7507
                         mov.s            eax, edi                                       // 0x007c0ddc    8bc7
                         pop              edi                                            // 0x007c0dde    5f
                         pop              esi                                            // 0x007c0ddf    5e
                         pop              ebp                                            // 0x007c0de0    5d
                         pop              ebx                                            // 0x007c0de1    5b
                         ret                                                             // 0x007c0de2    c3
_jmp_addr_0x007c0de3:    mov              ecx, dword ptr [esi]                           // 0x007c0de3    8b0e
                         dec              eax                                            // 0x007c0de5    48
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0de6    894604
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x007c0de9    8b4608
                         inc              eax                                            // 0x007c0dec    40
                         xor.s            edx, edx                                       // 0x007c0ded    33d2
                         {disp8} mov      dword ptr [esi + 0x08], eax                    // 0x007c0def    894608
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0df2    8b461c
                         mov              dl, byte ptr [ecx]                             // 0x007c0df5    8a11
                         mov.s            edi, ebx                                       // 0x007c0df7    8bfb
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x007c0df9    8b4808
                         shl              edx, 8                                         // 0x007c0dfc    c1e208
                         add.s            ecx, edx                                       // 0x007c0dff    03ca
                         {disp8} mov      dword ptr [eax + 0x08], ecx                    // 0x007c0e01    894808
                         mov              eax, dword ptr [esi]                           // 0x007c0e04    8b06
                         inc              eax                                            // 0x007c0e06    40
                         mov              dword ptr [esi], eax                           // 0x007c0e07    8906
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0e09    8b461c
                         mov              dword ptr [eax], ebp                           // 0x007c0e0c    8928
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x007c0e0e    8b4604
                         test             eax, eax                                       // 0x007c0e11    85c0
                         {disp8} jne      _jmp_addr_0x007c0e1c                           // 0x007c0e13    7507
                         mov.s            eax, edi                                       // 0x007c0e15    8bc7
                         pop              edi                                            // 0x007c0e17    5f
                         pop              esi                                            // 0x007c0e18    5e
                         pop              ebp                                            // 0x007c0e19    5d
                         pop              ebx                                            // 0x007c0e1a    5b
                         ret                                                             // 0x007c0e1b    c3
_jmp_addr_0x007c0e1c:    {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x007c0e1c    8b5608
                         mov              ecx, dword ptr [esi]                           // 0x007c0e1f    8b0e
                         dec              eax                                            // 0x007c0e21    48
                         inc              edx                                            // 0x007c0e22    42
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x007c0e23    894604
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0e26    8b461c
                         {disp8} mov      dword ptr [esi + 0x08], edx                    // 0x007c0e29    895608
                         xor.s            edx, edx                                       // 0x007c0e2c    33d2
                         mov              dl, byte ptr [ecx]                             // 0x007c0e2e    8a11
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x007c0e30    8b4808
                         add.s            ecx, edx                                       // 0x007c0e33    03ca
                         pop              edi                                            // 0x007c0e35    5f
                         {disp8} mov      dword ptr [eax + 0x08], ecx                    // 0x007c0e36    894808
                         mov              eax, dword ptr [esi]                           // 0x007c0e39    8b06
                         inc              eax                                            // 0x007c0e3b    40
                         mov              dword ptr [esi], eax                           // 0x007c0e3c    8906
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0e3e    8b461c
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x007c0e41    8b4808
                         {disp8} mov      dword ptr [esi + 0x30], ecx                    // 0x007c0e44    894e30
                         pop              esi                                            // 0x007c0e47    5e
                         mov              dword ptr [eax], 0x00000006                    // 0x007c0e48    c70006000000
                         pop              ebp                                            // 0x007c0e4e    5d
                         mov              eax, 0x00000002                                // 0x007c0e4f    b802000000
                         pop              ebx                                            // 0x007c0e54    5b
                         ret                                                             // 0x007c0e55    c3
                         {disp8} mov      edx, dword ptr [esi + 0x1c]                    // 0x007c0e56    8b561c
                         mov              dword ptr [edx], 0x0000000d                    // 0x007c0e59    c7020d000000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x007c0e5f    8b461c
                         {disp8} mov      dword ptr [esi + 0x18], 0x00c2bf60             // 0x007c0e62    c7461860bfc200
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000             // 0x007c0e69    c7400400000000
_jmp_addr_0x007c0e70:    pop              edi                                            // 0x007c0e70    5f
                         pop              esi                                            // 0x007c0e71    5e
                         pop              ebp                                            // 0x007c0e72    5d
                         mov              eax, 0xfffffffe                                // 0x007c0e73    b8feffffff
                         pop              ebx                                            // 0x007c0e78    5b
                         ret                                                             // 0x007c0e79    c3
_jmp_addr_0x007c0e7a:    {disp8} mov      ecx, dword ptr [esi + 0x1c]                    // 0x007c0e7a    8b4e1c
                         mov              dword ptr [ecx], 0x0000000c                    // 0x007c0e7d    c7010c000000
                         pop              edi                                            // 0x007c0e83    5f
                         pop              esi                                            // 0x007c0e84    5e
                         pop              ebp                                            // 0x007c0e85    5d
                         mov              eax, 0x00000001                                // 0x007c0e86    b801000000
                         pop              ebx                                            // 0x007c0e8b    5b
                         ret                                                             // 0x007c0e8c    c3
                         pop              edi                                            // 0x007c0e8d    5f
                         pop              esi                                            // 0x007c0e8e    5e
                         pop              ebp                                            // 0x007c0e8f    5d
                         mov              eax, 0xfffffffd                                // 0x007c0e90    b8fdffffff
                         pop              ebx                                            // 0x007c0e95    5b
                         ret                                                             // 0x007c0e96    c3

// Snippet: db, [0x007c0e97, 0x007c0e98)
.byte 0x90                        // 0x007c0e97

// Snippet: jmptbl, [0x007c0e98, 0x007c0ed0)
.long 0x007c0af7                                                                         // 0x007c0e98
.long 0x007c0b6e                                                                         // 0x007c0e9c
.long 0x007c0d60                                                                         // 0x007c0ea0
.long 0x007c0d98                                                                         // 0x007c0ea4
.long 0x007c0dd5                                                                         // 0x007c0ea8
.long 0x007c0e0e                                                                         // 0x007c0eac
.long 0x007c0e56                                                                         // 0x007c0eb0
.long 0x007c0be5                                                                         // 0x007c0eb4
.long 0x007c0c52                                                                         // 0x007c0eb8
.long 0x007c0c87                                                                         // 0x007c0ebc
.long 0x007c0cc1                                                                         // 0x007c0ec0
.long 0x007c0cfb                                                                         // 0x007c0ec4
.long 0x007c0e83                                                                         // 0x007c0ec8
.long 0x007c0e8d                                                                         // 0x007c0ecc

.extern _adler32

_inflateSetDictionary:   push             ebx                                           // 0x007c0ed0    53
                         push             ebp                                           // 0x007c0ed1    55
                         push             esi                                           // 0x007c0ed2    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c0ed3    8b742418
                         push             edi                                           // 0x007c0ed7    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x007c0ed8    8b7c2414
                         test             edi, edi                                      // 0x007c0edc    85ff
                         mov.s            ebx, esi                                      // 0x007c0ede    8bde
                         {disp8} je       _jmp_addr_0x007c0f48                          // 0x007c0ee0    7466
                         {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x007c0ee2    8b471c
                         test             eax, eax                                      // 0x007c0ee5    85c0
                         {disp8} je       _jmp_addr_0x007c0f48                          // 0x007c0ee7    745f
                         cmp              dword ptr [eax], 0x06                         // 0x007c0ee9    833806
                         {disp8} jne      _jmp_addr_0x007c0f48                          // 0x007c0eec    755a
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007c0eee    8b6c2418
                         push             esi                                           // 0x007c0ef2    56
                         push             ebp                                           // 0x007c0ef3    55
                         push             0x1                                           // 0x007c0ef4    6a01
                         call             _adler32                                      // 0x007c0ef6    e8c5010000
                         {disp8} mov      ecx, dword ptr [edi + 0x30]                   // 0x007c0efb    8b4f30
                         add              esp, 0x0c                                     // 0x007c0efe    83c40c
                         cmp.s            eax, ecx                                      // 0x007c0f01    3bc1
                         {disp8} je       _jmp_addr_0x007c0f0f                          // 0x007c0f03    740a
                         pop              edi                                           // 0x007c0f05    5f
                         pop              esi                                           // 0x007c0f06    5e
                         pop              ebp                                           // 0x007c0f07    5d
                         mov              eax, 0xfffffffd                               // 0x007c0f08    b8fdffffff
                         pop              ebx                                           // 0x007c0f0d    5b
                         ret                                                            // 0x007c0f0e    c3
_jmp_addr_0x007c0f0f:    {disp8} mov      edx, dword ptr [edi + 0x1c]                   // 0x007c0f0f    8b571c
                         mov              eax, 0x00000001                               // 0x007c0f12    b801000000
                         {disp8} mov      dword ptr [edi + 0x30], eax                   // 0x007c0f17    894730
                         {disp8} mov      ecx, dword ptr [edx + 0x10]                   // 0x007c0f1a    8b4a10
                         shl              eax, cl                                       // 0x007c0f1d    d3e0
                         cmp.s            esi, eax                                      // 0x007c0f1f    3bf0
                         .byte            0x72, 0x7// {disp8} jb _jmp_addr_0x007c0f2a   // 0x007c0f21    7207
                         {disp8} lea      ebx, dword ptr [eax + -0x01]                  // 0x007c0f23    8d58ff
                         sub.s            esi, ebx                                      // 0x007c0f26    2bf3
                         add.s            ebp, esi                                      // 0x007c0f28    03ee
_jmp_addr_0x007c0f2a:    {disp8} mov      eax, dword ptr [edx + 0x14]                   // 0x007c0f2a    8b4214
                         push             ebx                                           // 0x007c0f2d    53
                         push             ebp                                           // 0x007c0f2e    55
                         push             eax                                           // 0x007c0f2f    50
                         call             _inflate_set_dictionary                       // 0x007c0f30    e85b2d0000
                         {disp8} mov      ecx, dword ptr [edi + 0x1c]                   // 0x007c0f35    8b4f1c
                         add              esp, 0x0c                                     // 0x007c0f38    83c40c
                         xor.s            eax, eax                                      // 0x007c0f3b    33c0
                         pop              edi                                           // 0x007c0f3d    5f
                         pop              esi                                           // 0x007c0f3e    5e
                         pop              ebp                                           // 0x007c0f3f    5d
                         mov              dword ptr [ecx], 0x00000007                   // 0x007c0f40    c70107000000
                         pop              ebx                                           // 0x007c0f46    5b
                         ret                                                            // 0x007c0f47    c3
_jmp_addr_0x007c0f48:    pop              edi                                           // 0x007c0f48    5f
                         pop              esi                                           // 0x007c0f49    5e
                         pop              ebp                                           // 0x007c0f4a    5d
                         mov              eax, 0xfffffffe                               // 0x007c0f4b    b8feffffff
                         pop              ebx                                           // 0x007c0f50    5b
                         ret                                                            // 0x007c0f51    c3
                         nop                                                            // 0x007c0f52    90
                         nop                                                            // 0x007c0f53    90
                         nop                                                            // 0x007c0f54    90
                         nop                                                            // 0x007c0f55    90
                         nop                                                            // 0x007c0f56    90
                         nop                                                            // 0x007c0f57    90
                         nop                                                            // 0x007c0f58    90
                         nop                                                            // 0x007c0f59    90
                         nop                                                            // 0x007c0f5a    90
                         nop                                                            // 0x007c0f5b    90
                         nop                                                            // 0x007c0f5c    90
                         nop                                                            // 0x007c0f5d    90
                         nop                                                            // 0x007c0f5e    90
                         nop                                                            // 0x007c0f5f    90
_inflateSync:            push             ebx                                           // 0x007c0f60    53
                         push             ebp                                           // 0x007c0f61    55
                         push             esi                                           // 0x007c0f62    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x007c0f63    8b742410
                         test             esi, esi                                      // 0x007c0f67    85f6
                         push             edi                                           // 0x007c0f69    57
                         {disp32} je      _jmp_addr_0x007c101a                          // 0x007c0f6a    0f84aa000000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                   // 0x007c0f70    8b461c
                         test             eax, eax                                      // 0x007c0f73    85c0
                         {disp32} je      _jmp_addr_0x007c101a                          // 0x007c0f75    0f849f000000
                         cmp              dword ptr [eax], 0x0d                         // 0x007c0f7b    83380d
                         {disp8} je       _jmp_addr_0x007c0f90                          // 0x007c0f7e    7410
                         mov              dword ptr [eax], 0x0000000d                   // 0x007c0f80    c7000d000000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                   // 0x007c0f86    8b461c
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000            // 0x007c0f89    c7400400000000
_jmp_addr_0x007c0f90:    {disp8} mov      ebp, dword ptr [esi + 0x04]                   // 0x007c0f90    8b6e04
                         test             ebp, ebp                                      // 0x007c0f93    85ed
                         {disp8} jne      _jmp_addr_0x007c0fa1                          // 0x007c0f95    750a
                         pop              edi                                           // 0x007c0f97    5f
                         pop              esi                                           // 0x007c0f98    5e
                         pop              ebp                                           // 0x007c0f99    5d
                         mov              eax, 0xfffffffb                               // 0x007c0f9a    b8fbffffff
                         pop              ebx                                           // 0x007c0f9f    5b
                         ret                                                            // 0x007c0fa0    c3
_jmp_addr_0x007c0fa1:    {disp8} mov      ebx, dword ptr [esi + 0x1c]                   // 0x007c0fa1    8b5e1c
                         mov              edi, dword ptr [esi]                          // 0x007c0fa4    8b3e
                         mov.s            ecx, edi                                      // 0x007c0fa6    8bcf
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                   // 0x007c0fa8    8b4304
_jmp_addr_0x007c0fab:    cmp              eax, 0x04                                     // 0x007c0fab    83f804
                         {disp8} jae      _jmp_addr_0x007c0fd2                          // 0x007c0fae    7322
                         mov              dl, byte ptr [ecx]                            // 0x007c0fb0    8a11
                         cmp              dl, byte ptr [eax + 0x0099f928]               // 0x007c0fb2    3a9028f99900
                         {disp8} jne      _jmp_addr_0x007c0fbd                          // 0x007c0fb8    7503
                         inc              eax                                           // 0x007c0fba    40
                         {disp8} jmp      _jmp_addr_0x007c0fce                          // 0x007c0fbb    eb11
_jmp_addr_0x007c0fbd:    test             dl, dl                                        // 0x007c0fbd    84d2
                         {disp8} je       _jmp_addr_0x007c0fc5                          // 0x007c0fbf    7404
                         xor.s            eax, eax                                      // 0x007c0fc1    33c0
                         {disp8} jmp      _jmp_addr_0x007c0fce                          // 0x007c0fc3    eb09
_jmp_addr_0x007c0fc5:    mov              edx, 0x00000004                               // 0x007c0fc5    ba04000000
                         sub.s            edx, eax                                      // 0x007c0fca    2bd0
                         mov.s            eax, edx                                      // 0x007c0fcc    8bc2
_jmp_addr_0x007c0fce:    inc              ecx                                           // 0x007c0fce    41
                         dec              ebp                                           // 0x007c0fcf    4d
                         {disp8} jne      _jmp_addr_0x007c0fab                          // 0x007c0fd0    75d9
_jmp_addr_0x007c0fd2:    mov.s            edx, ecx                                      // 0x007c0fd2    8bd1
                         mov              dword ptr [esi], ecx                          // 0x007c0fd4    890e
                         sub.s            edx, edi                                      // 0x007c0fd6    2bd7
                         {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c0fd8    8b7e08
                         add.s            edi, edx                                      // 0x007c0fdb    03fa
                         {disp8} mov      dword ptr [esi + 0x04], ebp                   // 0x007c0fdd    896e04
                         {disp8} mov      dword ptr [esi + 0x08], edi                   // 0x007c0fe0    897e08
                         cmp              eax, 0x04                                     // 0x007c0fe3    83f804
                         {disp8} mov      dword ptr [ebx + 0x04], eax                   // 0x007c0fe6    894304
                         {disp8} je       _jmp_addr_0x007c0ff5                          // 0x007c0fe9    740a
                         pop              edi                                           // 0x007c0feb    5f
                         pop              esi                                           // 0x007c0fec    5e
                         pop              ebp                                           // 0x007c0fed    5d
                         mov              eax, 0xfffffffd                               // 0x007c0fee    b8fdffffff
                         pop              ebx                                           // 0x007c0ff3    5b
                         ret                                                            // 0x007c0ff4    c3
_jmp_addr_0x007c0ff5:    {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c0ff5    8b7e08
                         {disp8} mov      ebx, dword ptr [esi + 0x14]                   // 0x007c0ff8    8b5e14
                         push             esi                                           // 0x007c0ffb    56
                         call             _inflateReset                                 // 0x007c0ffc    e8cff8ffff
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                   // 0x007c1001    8b461c
                         add              esp, 0x04                                     // 0x007c1004    83c404
                         {disp8} mov      dword ptr [esi + 0x08], edi                   // 0x007c1007    897e08
                         {disp8} mov      dword ptr [esi + 0x14], ebx                   // 0x007c100a    895e14
                         pop              edi                                           // 0x007c100d    5f
                         pop              esi                                           // 0x007c100e    5e
                         mov              dword ptr [eax], 0x00000007                   // 0x007c100f    c70007000000
                         pop              ebp                                           // 0x007c1015    5d
                         xor.s            eax, eax                                      // 0x007c1016    33c0
                         pop              ebx                                           // 0x007c1018    5b
                         ret                                                            // 0x007c1019    c3
_jmp_addr_0x007c101a:    pop              edi                                           // 0x007c101a    5f
                         pop              esi                                           // 0x007c101b    5e
                         pop              ebp                                           // 0x007c101c    5d
                         mov              eax, 0xfffffffe                               // 0x007c101d    b8feffffff
                         pop              ebx                                           // 0x007c1022    5b
                         ret                                                            // 0x007c1023    c3
                         nop                                                            // 0x007c1024    90
                         nop                                                            // 0x007c1025    90
                         nop                                                            // 0x007c1026    90
                         nop                                                            // 0x007c1027    90
                         nop                                                            // 0x007c1028    90
                         nop                                                            // 0x007c1029    90
                         nop                                                            // 0x007c102a    90
                         nop                                                            // 0x007c102b    90
                         nop                                                            // 0x007c102c    90
                         nop                                                            // 0x007c102d    90
                         nop                                                            // 0x007c102e    90
                         nop                                                            // 0x007c102f    90
_inflateSyncPoint:       {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c1030    8b442404
                         test             eax, eax                                      // 0x007c1034    85c0
                         {disp8} je       _jmp_addr_0x007c1050                          // 0x007c1036    7418
                         {disp8} mov      eax, dword ptr [eax + 0x1c]                   // 0x007c1038    8b401c
                         test             eax, eax                                      // 0x007c103b    85c0
                         {disp8} je       _jmp_addr_0x007c1050                          // 0x007c103d    7411
                         {disp8} mov      eax, dword ptr [eax + 0x14]                   // 0x007c103f    8b4014
                         test             eax, eax                                      // 0x007c1042    85c0
                         {disp8} je       _jmp_addr_0x007c1050                          // 0x007c1044    740a
                         push             eax                                           // 0x007c1046    50
                         call             _inflate_blocks_sync_point                    // 0x007c1047    e8842c0000
                         add              esp, 0x04                                     // 0x007c104c    83c404
                         ret                                                            // 0x007c104f    c3
_jmp_addr_0x007c1050:    mov              eax, 0xfffffffe                               // 0x007c1050    b8feffffff
                         ret                                                            // 0x007c1055    c3
                         nop                                                            // 0x007c1056    90
                         nop                                                            // 0x007c1057    90
                         nop                                                            // 0x007c1058    90
                         nop                                                            // 0x007c1059    90
                         nop                                                            // 0x007c105a    90
                         nop                                                            // 0x007c105b    90
                         nop                                                            // 0x007c105c    90
                         nop                                                            // 0x007c105d    90
                         nop                                                            // 0x007c105e    90
                         nop                                                            // 0x007c105f    90