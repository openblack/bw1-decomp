.intel_syntax noprefix
.align 16

.macro STATIC_TREE_DESC static_tree extra_bits extra_base elems max_length
    .long \static_tree
    .long \extra_bits
    .long \extra_base
    .long \elems
    .long \max_length
.endm

.macro ASCIZ_ALIGNED string alignment
    .asciz "\string"
    .align \alignment
.endm

.extern _inflate_codes_new
.extern _inflate_codes
.extern _inflate_codes_free
.extern _inflate_trees_bits
.extern _inflate_trees_dynamic
.extern _inflate_trees_fixed
.extern _inflate_flush

.globl _inflate_blocks_reset
.globl _inflate_blocks_new
.globl _inflate_blocks
.globl _inflate_blocks_free
.globl _inflate_set_dictionary
.globl _inflate_blocks_sync_point

.section .rdata

_border: .long 16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15         // [0xf735c] 0x008a9000 + 0xf735c = 0x009a035c

.section .data

_static_l_desc:
STATIC_TREE_DESC _static_ltree _extra_lbits  257 286 15                                                            // [0x266068] 0x009c6000 + 0x266068 = 0x00c2c068
    .align 8
STATIC_TREE_DESC _static_dtree _extra_dbits    0  30 15                                                            // [0x266080] 0x009c6000 + 0x266080 = 0x00c2c080
    .align 8
STATIC_TREE_DESC 0             _extra_blbits   0  19  7

ASCIZ_ALIGNED "invalid bit length repeat" 4                                                                        // [0x2660ac] 0x009c6000 + 0x2660ac = 0x00c2c0ac
ASCIZ_ALIGNED "too many length or distance symbols" 4                                                              // [0x2660e0] 0x009c6000 + 0x2660e0 = 0x00c2c0e0
ASCIZ_ALIGNED "invalid stored block lengths" 4                                                                     // [0x2660ec] 0x009c6000 + 0x2660ec = 0x00c2c0ec
ASCIZ_ALIGNED "invalid block type" 4                                                                               // [0x26610c] 0x009c6000 + 0x26610c = 0x00c2c10c

.section .text

_inflate_blocks_reset:   {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x007c2e30    8b44240c
                         push             esi                                           // 0x007c2e34    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x007c2e35    8b742408
                         push             edi                                           // 0x007c2e39    57
                         test             eax, eax                                      // 0x007c2e3a    85c0
                         {disp8} je       _jmp_addr_0x007c2e43                          // 0x007c2e3c    7405
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]                   // 0x007c2e3e    8b4e3c
                         mov              dword ptr [eax], ecx                          // 0x007c2e41    8908
_jmp_addr_0x007c2e43:    mov              eax, dword ptr [esi]                          // 0x007c2e43    8b06
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c2e45    8b7c2410
                         cmp              eax, 0x04                                     // 0x007c2e49    83f804
                         {disp8} je       _jmp_addr_0x007c2e53                          // 0x007c2e4c    7405
                         cmp              eax, 0x05                                     // 0x007c2e4e    83f805
                         {disp8} jne      _jmp_addr_0x007c2e61                          // 0x007c2e51    750e
_jmp_addr_0x007c2e53:    {disp8} mov      edx, dword ptr [esi + 0x0c]                   // 0x007c2e53    8b560c
                         {disp8} mov      eax, dword ptr [edi + 0x28]                   // 0x007c2e56    8b4728
                         push             edx                                           // 0x007c2e59    52
                         push             eax                                           // 0x007c2e5a    50
                         call             dword ptr [edi + 0x24]                        // 0x007c2e5b    ff5724
                         add              esp, 0x08                                     // 0x007c2e5e    83c408
_jmp_addr_0x007c2e61:    cmp              dword ptr [esi], 0x06                         // 0x007c2e61    833e06
                         {disp8} jne      _jmp_addr_0x007c2e73                          // 0x007c2e64    750d
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x007c2e66    8b4e04
                         push             edi                                           // 0x007c2e69    57
                         push             ecx                                           // 0x007c2e6a    51
                         call             _inflate_codes_free                           // 0x007c2e6b    e860160000
                         add              esp, 0x08                                     // 0x007c2e70    83c408
_jmp_addr_0x007c2e73:    {disp8} mov      eax, dword ptr [esi + 0x28]                   // 0x007c2e73    8b4628
                         mov              dword ptr [esi], 0x00000000                   // 0x007c2e76    c70600000000
                         {disp8} mov      dword ptr [esi + 0x34], eax                   // 0x007c2e7c    894634
                         {disp8} mov      dword ptr [esi + 0x30], eax                   // 0x007c2e7f    894630
                         {disp8} mov      eax, dword ptr [esi + 0x38]                   // 0x007c2e82    8b4638
                         {disp8} mov      dword ptr [esi + 0x1c], 0x00000000            // 0x007c2e85    c7461c00000000
                         test             eax, eax                                      // 0x007c2e8c    85c0
                         {disp8} mov      dword ptr [esi + 0x20], 0x00000000            // 0x007c2e8e    c7462000000000
                         {disp8} je       _jmp_addr_0x007c2ea8                          // 0x007c2e95    7411
                         push             0x0                                           // 0x007c2e97    6a00
                         push             0x0                                           // 0x007c2e99    6a00
                         push             0x0                                           // 0x007c2e9b    6a00
                         call             eax                                           // 0x007c2e9d    ffd0
                         {disp8} mov      dword ptr [esi + 0x3c], eax                   // 0x007c2e9f    89463c
                         add              esp, 0x0c                                     // 0x007c2ea2    83c40c
                         {disp8} mov      dword ptr [edi + 0x30], eax                   // 0x007c2ea5    894730
_jmp_addr_0x007c2ea8:    pop              edi                                           // 0x007c2ea8    5f
                         pop              esi                                           // 0x007c2ea9    5e
                         ret                                                            // 0x007c2eaa    c3
                         nop                                                            // 0x007c2eab    90
                         nop                                                            // 0x007c2eac    90
                         nop                                                            // 0x007c2ead    90
                         nop                                                            // 0x007c2eae    90
                         nop                                                            // 0x007c2eaf    90
_inflate_blocks_new:     push             ebx                                           // 0x007c2eb0    53
                         push             esi                                           // 0x007c2eb1    56
                         push             edi                                           // 0x007c2eb2    57
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c2eb3    8b7c2410
                         push             0x40                                          // 0x007c2eb7    6a40
                         push             0x1                                           // 0x007c2eb9    6a01
                         {disp8} mov      eax, dword ptr [edi + 0x28]                   // 0x007c2ebb    8b4728
                         push             eax                                           // 0x007c2ebe    50
                         call             dword ptr [edi + 0x20]                        // 0x007c2ebf    ff5720
                         mov.s            esi, eax                                      // 0x007c2ec2    8bf0
                         add              esp, 0x0c                                     // 0x007c2ec4    83c40c
                         test             esi, esi                                      // 0x007c2ec7    85f6
                         {disp8} jne      _jmp_addr_0x007c2ecf                          // 0x007c2ec9    7504
                         pop              edi                                           // 0x007c2ecb    5f
                         pop              esi                                           // 0x007c2ecc    5e
                         pop              ebx                                           // 0x007c2ecd    5b
                         ret                                                            // 0x007c2ece    c3
_jmp_addr_0x007c2ecf:    {disp8} mov      ecx, dword ptr [edi + 0x28]                   // 0x007c2ecf    8b4f28
                         push             0x000005a0                                    // 0x007c2ed2    68a0050000
                         push             0x8                                           // 0x007c2ed7    6a08
                         push             ecx                                           // 0x007c2ed9    51
                         call             dword ptr [edi + 0x20]                        // 0x007c2eda    ff5720
                         add              esp, 0x0c                                     // 0x007c2edd    83c40c
                         {disp8} mov      dword ptr [esi + 0x24], eax                   // 0x007c2ee0    894624
                         test             eax, eax                                      // 0x007c2ee3    85c0
                         {disp8} jne      _jmp_addr_0x007c2ef8                          // 0x007c2ee5    7511
                         {disp8} mov      edx, dword ptr [edi + 0x28]                   // 0x007c2ee7    8b5728
                         push             esi                                           // 0x007c2eea    56
                         push             edx                                           // 0x007c2eeb    52
                         call             dword ptr [edi + 0x24]                        // 0x007c2eec    ff5724
                         add              esp, 0x08                                     // 0x007c2eef    83c408
                         xor.s            eax, eax                                      // 0x007c2ef2    33c0
                         pop              edi                                           // 0x007c2ef4    5f
                         pop              esi                                           // 0x007c2ef5    5e
                         pop              ebx                                           // 0x007c2ef6    5b
                         ret                                                            // 0x007c2ef7    c3
_jmp_addr_0x007c2ef8:    {disp8} mov      ebx, dword ptr [esp + 0x18]                   // 0x007c2ef8    8b5c2418
                         {disp8} mov      eax, dword ptr [edi + 0x28]                   // 0x007c2efc    8b4728
                         push             ebx                                           // 0x007c2eff    53
                         push             0x1                                           // 0x007c2f00    6a01
                         push             eax                                           // 0x007c2f02    50
                         call             dword ptr [edi + 0x20]                        // 0x007c2f03    ff5720
                         add              esp, 0x0c                                     // 0x007c2f06    83c40c
                         {disp8} mov      dword ptr [esi + 0x28], eax                   // 0x007c2f09    894628
                         test             eax, eax                                      // 0x007c2f0c    85c0
                         {disp8} jne      _jmp_addr_0x007c2f2c                          // 0x007c2f0e    751c
                         {disp8} mov      ecx, dword ptr [esi + 0x24]                   // 0x007c2f10    8b4e24
                         {disp8} mov      edx, dword ptr [edi + 0x28]                   // 0x007c2f13    8b5728
                         push             ecx                                           // 0x007c2f16    51
                         push             edx                                           // 0x007c2f17    52
                         call             dword ptr [edi + 0x24]                        // 0x007c2f18    ff5724
                         {disp8} mov      eax, dword ptr [edi + 0x28]                   // 0x007c2f1b    8b4728
                         push             esi                                           // 0x007c2f1e    56
                         push             eax                                           // 0x007c2f1f    50
                         call             dword ptr [edi + 0x24]                        // 0x007c2f20    ff5724
                         add              esp, 0x10                                     // 0x007c2f23    83c410
                         xor.s            eax, eax                                      // 0x007c2f26    33c0
                         pop              edi                                           // 0x007c2f28    5f
                         pop              esi                                           // 0x007c2f29    5e
                         pop              ebx                                           // 0x007c2f2a    5b
                         ret                                                            // 0x007c2f2b    c3
_jmp_addr_0x007c2f2c:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c2f2c    8b4c2414
                         push             0x0                                           // 0x007c2f30    6a00
                         add.s            eax, ebx                                      // 0x007c2f32    03c3
                         push             edi                                           // 0x007c2f34    57
                         push             esi                                           // 0x007c2f35    56
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x007c2f36    89462c
                         {disp8} mov      dword ptr [esi + 0x38], ecx                   // 0x007c2f39    894e38
                         mov              dword ptr [esi], 0x00000000                   // 0x007c2f3c    c70600000000
                         call             _inflate_blocks_reset                         // 0x007c2f42    e8e9feffff
                         add              esp, 0x0c                                     // 0x007c2f47    83c40c
                         mov.s            eax, esi                                      // 0x007c2f4a    8bc6
                         pop              edi                                           // 0x007c2f4c    5f
                         pop              esi                                           // 0x007c2f4d    5e
                         pop              ebx                                           // 0x007c2f4e    5b
                         ret                                                            // 0x007c2f4f    c3
_inflate_blocks:         sub              esp, 0x30                                     // 0x007c2f50    83ec30
                         {disp8} mov      eax, dword ptr [esp + 0x38]                   // 0x007c2f53    8b442438
                         push             ebx                                           // 0x007c2f57    53
                         {disp8} mov      ebx, dword ptr [esp + 0x38]                   // 0x007c2f58    8b5c2438
                         push             ebp                                           // 0x007c2f5c    55
                         mov              ecx, dword ptr [eax]                          // 0x007c2f5d    8b08
                         {disp8} mov      edx, dword ptr [eax + 0x04]                   // 0x007c2f5f    8b5004
                         {disp8} mov      eax, dword ptr [ebx + 0x20]                   // 0x007c2f62    8b4320
                         {disp8} mov      ebp, dword ptr [ebx + 0x1c]                   // 0x007c2f65    8b6b1c
                         {disp8} mov      dword ptr [esp + 0x08], ecx                   // 0x007c2f68    894c2408
                         {disp8} mov      ecx, dword ptr [ebx + 0x34]                   // 0x007c2f6c    8b4b34
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c2f6f    89442410
                         {disp8} mov      eax, dword ptr [ebx + 0x30]                   // 0x007c2f73    8b4330
                         push             esi                                           // 0x007c2f76    56
                         cmp.s            ecx, eax                                      // 0x007c2f77    3bc8
                         push             edi                                           // 0x007c2f79    57
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x007c2f7a    89542414
                         {disp8} mov      dword ptr [esp + 0x44], ecx                   // 0x007c2f7e    894c2444
                         {disp8} jae      _jmp_addr_0x007c2f89                          // 0x007c2f82    7305
                         sub.s            eax, ecx                                      // 0x007c2f84    2bc1
                         dec              eax                                           // 0x007c2f86    48
                         {disp8} jmp      _jmp_addr_0x007c2f8e                          // 0x007c2f87    eb05
_jmp_addr_0x007c2f89:    {disp8} mov      eax, dword ptr [ebx + 0x2c]                   // 0x007c2f89    8b432c
                         sub.s            eax, ecx                                      // 0x007c2f8c    2bc1
_jmp_addr_0x007c2f8e:    {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x007c2f8e    8944241c
_jmp_addr_0x007c2f92:    mov              eax, dword ptr [ebx]                          // 0x007c2f92    8b03
                         cmp              eax, 0x09                                     // 0x007c2f94    83f809
                         {disp32} ja      _jmp_addr_0x007c3bcb                          // 0x007c2f97    0f872e0c0000
                         jmp              dword ptr [eax*4 + 0x7c3c10]                  // 0x007c2f9d    ff2485103c7c00
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c2fa4    8b742418
                         cmp              ebp, 0x03                                     // 0x007c2fa8    83fd03
                         {disp8} jae      _jmp_addr_0x007c2fe9                          // 0x007c2fab    733c
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c2fad    8b442414
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c2fb1    8b7c2410
_jmp_addr_0x007c2fb5:    test             eax, eax                                      // 0x007c2fb5    85c0
                         {disp32} je      _jmp_addr_0x007c36c4                          // 0x007c2fb7    0f8407070000
                         xor.s            ecx, ecx                                      // 0x007c2fbd    33c9
                         dec              eax                                           // 0x007c2fbf    48
                         mov              cl, byte ptr [edi]                            // 0x007c2fc0    8a0f
                         {disp8} mov      dword ptr [esp + 0x4c], 0x00000000            // 0x007c2fc2    c744244c00000000
                         mov.s            edx, ecx                                      // 0x007c2fca    8bd1
                         mov.s            ecx, ebp                                      // 0x007c2fcc    8bcd
                         shl              edx, cl                                       // 0x007c2fce    d3e2
                         add              ebp, 0x08                                     // 0x007c2fd0    83c508
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007c2fd3    89442414
                         or.s             esi, edx                                      // 0x007c2fd7    0bf2
                         inc              edi                                           // 0x007c2fd9    47
                         cmp              ebp, 0x03                                     // 0x007c2fda    83fd03
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c2fdd    89742418
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007c2fe1    897c2410
                         .byte            0x72, 0xce// {disp8} jb _jmp_addr_0x007c2fb5  // 0x007c2fe5    72ce
                         {disp8} jmp      _jmp_addr_0x007c2fed                          // 0x007c2fe7    eb04
_jmp_addr_0x007c2fe9:    {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c2fe9    8b7c2410
_jmp_addr_0x007c2fed:    mov.s            eax, esi                                      // 0x007c2fed    8bc6
                         and              eax, 0x07                                     // 0x007c2fef    83e007
                         mov.s            ecx, eax                                      // 0x007c2ff2    8bc8
                         shr              eax, 1                                        // 0x007c2ff4    d1e8
                         and              ecx, 0x01                                     // 0x007c2ff6    83e101
                         cmp              eax, 0x03                                     // 0x007c2ff9    83f803
                         {disp8} mov      dword ptr [ebx + 0x18], ecx                   // 0x007c2ffc    894b18
                         {disp8} ja       _jmp_addr_0x007c2f92                          // 0x007c2fff    7791
                         jmp              dword ptr [eax*4 + 0x7c3c38]                  // 0x007c3001    ff2485383c7c00
                         sub              ebp, 0x03                                     // 0x007c3008    83ed03
                         mov              dword ptr [ebx], 0x00000001                   // 0x007c300b    c70301000000
                         mov.s            ecx, ebp                                      // 0x007c3011    8bcd
                         and              ecx, 0x07                                     // 0x007c3013    83e107
                         shr              esi, 3                                        // 0x007c3016    c1ee03
                         shr              esi, cl                                       // 0x007c3019    d3ee
                         sub.s            ebp, ecx                                      // 0x007c301b    2be9
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c301d    89742418
                         {disp32} jmp     _jmp_addr_0x007c2f92                          // 0x007c3021    e96cffffff
                         {disp8} mov      edx, dword ptr [esp + 0x48]                   // 0x007c3026    8b542448
                         {disp8} lea      eax, dword ptr [esp + 0x24]                   // 0x007c302a    8d442424
                         push             edx                                           // 0x007c302e    52
                         {disp8} lea      ecx, dword ptr [esp + 0x2c]                   // 0x007c302f    8d4c242c
                         push             eax                                           // 0x007c3033    50
                         {disp8} lea      edx, dword ptr [esp + 0x34]                   // 0x007c3034    8d542434
                         push             ecx                                           // 0x007c3038    51
                         {disp8} lea      eax, dword ptr [esp + 0x3c]                   // 0x007c3039    8d44243c
                         push             edx                                           // 0x007c303d    52
                         push             eax                                           // 0x007c303e    50
                         call             _inflate_trees_fixed                          // 0x007c303f    e8bc1b0000
                         {disp8} mov      ecx, dword ptr [esp + 0x5c]                   // 0x007c3044    8b4c245c
                         {disp8} mov      edx, dword ptr [esp + 0x38]                   // 0x007c3048    8b542438
                         {disp8} mov      eax, dword ptr [esp + 0x3c]                   // 0x007c304c    8b44243c
                         push             ecx                                           // 0x007c3050    51
                         {disp8} mov      ecx, dword ptr [esp + 0x44]                   // 0x007c3051    8b4c2444
                         push             edx                                           // 0x007c3055    52
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c3056    8b54244c
                         push             eax                                           // 0x007c305a    50
                         push             ecx                                           // 0x007c305b    51
                         push             edx                                           // 0x007c305c    52
                         call             _inflate_codes_new                            // 0x007c305d    e87e0c0000
                         add              esp, 0x28                                     // 0x007c3062    83c428
                         {disp8} mov      dword ptr [ebx + 0x04], eax                   // 0x007c3065    894304
                         test             eax, eax                                      // 0x007c3068    85c0
                         {disp32} je      _jmp_addr_0x007c3703                          // 0x007c306a    0f8493060000
                         shr              esi, 3                                        // 0x007c3070    c1ee03
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c3073    89742418
                         sub              ebp, 0x03                                     // 0x007c3077    83ed03
                         mov              dword ptr [ebx], 0x00000006                   // 0x007c307a    c70306000000
                         {disp32} jmp     _jmp_addr_0x007c2f92                          // 0x007c3080    e90dffffff
                         shr              esi, 3                                        // 0x007c3085    c1ee03
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c3088    89742418
                         sub              ebp, 0x03                                     // 0x007c308c    83ed03
                         mov              dword ptr [ebx], 0x00000003                   // 0x007c308f    c70303000000
                         {disp32} jmp     _jmp_addr_0x007c2f92                          // 0x007c3095    e9f8feffff
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c309a    8b742418
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x007c309e    8b7c2414
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c30a2    8b442410
                         cmp              ebp, 0x20                                     // 0x007c30a6    83fd20
                         {disp8} jae      _jmp_addr_0x007c30d7                          // 0x007c30a9    732c
_jmp_addr_0x007c30ab:    xor.s            edx, edx                                      // 0x007c30ab    33d2
                         cmp.s            edi, edx                                      // 0x007c30ad    3bfa
                         {disp32} je      _jmp_addr_0x007c378e                          // 0x007c30af    0f84d9060000
                         xor.s            ecx, ecx                                      // 0x007c30b5    33c9
                         {disp8} mov      dword ptr [esp + 0x4c], edx                   // 0x007c30b7    8954244c
                         mov              cl, byte ptr [eax]                            // 0x007c30bb    8a08
                         dec              edi                                           // 0x007c30bd    4f
                         mov.s            edx, ecx                                      // 0x007c30be    8bd1
                         mov.s            ecx, ebp                                      // 0x007c30c0    8bcd
                         shl              edx, cl                                       // 0x007c30c2    d3e2
                         add              ebp, 0x08                                     // 0x007c30c4    83c508
                         {disp8} mov      dword ptr [esp + 0x14], edi                   // 0x007c30c7    897c2414
                         or.s             esi, edx                                      // 0x007c30cb    0bf2
                         inc              eax                                           // 0x007c30cd    40
                         cmp              ebp, 0x20                                     // 0x007c30ce    83fd20
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c30d1    89442410
                         .byte            0x72, 0xd4// {disp8} jb _jmp_addr_0x007c30ab  // 0x007c30d5    72d4
_jmp_addr_0x007c30d7:    mov.s            edx, esi                                      // 0x007c30d7    8bd6
                         mov.s            ecx, esi                                      // 0x007c30d9    8bce
                         not              edx                                           // 0x007c30db    f7d2
                         and              ecx, 0x0000ffff                               // 0x007c30dd    81e1ffff0000
                         shr              edx, 0x10                                     // 0x007c30e3    c1ea10
                         xor.s            edx, ecx                                      // 0x007c30e6    33d1
                         {disp32} jne     _jmp_addr_0x007c37c9                          // 0x007c30e8    0f85db060000
                         xor.s            ebp, ebp                                      // 0x007c30ee    33ed
                         mov.s            eax, ecx                                      // 0x007c30f0    8bc1
                         cmp.s            eax, ebp                                      // 0x007c30f2    3bc5
                         {disp8} mov      dword ptr [ebx + 0x04], ecx                   // 0x007c30f4    894b04
                         {disp8} mov      dword ptr [esp + 0x18], ebp                   // 0x007c30f7    896c2418
                         {disp32} je      _jmp_addr_0x007c322b                          // 0x007c30fb    0f842a010000
                         mov              eax, 0x00000002                               // 0x007c3101    b802000000
                         mov              dword ptr [ebx], eax                          // 0x007c3106    8903
                         {disp32} jmp     _jmp_addr_0x007c2f92                          // 0x007c3108    e985feffff
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x007c310d    8b7c2414
                         test             edi, edi                                      // 0x007c3111    85ff
                         {disp32} je      _jmp_addr_0x007c380e                          // 0x007c3113    0f84f5060000
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c3119    8b4c241c
                         test             ecx, ecx                                      // 0x007c311d    85c9
                         {disp32} jne     _jmp_addr_0x007c31c6                          // 0x007c311f    0f85a1000000
                         {disp8} mov      ecx, dword ptr [ebx + 0x2c]                   // 0x007c3125    8b4b2c
                         {disp8} mov      edx, dword ptr [esp + 0x44]                   // 0x007c3128    8b542444
                         cmp.s            edx, ecx                                      // 0x007c312c    3bd1
                         {disp8} jne      _jmp_addr_0x007c3155                          // 0x007c312e    7525
                         {disp8} mov      eax, dword ptr [ebx + 0x30]                   // 0x007c3130    8b4330
                         {disp8} mov      esi, dword ptr [ebx + 0x28]                   // 0x007c3133    8b7328
                         cmp.s            eax, esi                                      // 0x007c3136    3bc6
                         {disp8} je       _jmp_addr_0x007c3155                          // 0x007c3138    741b
                         mov.s            edx, esi                                      // 0x007c313a    8bd6
                         cmp.s            edx, eax                                      // 0x007c313c    3bd0
                         {disp8} mov      dword ptr [esp + 0x44], edx                   // 0x007c313e    89542444
                         {disp8} jae      _jmp_addr_0x007c314b                          // 0x007c3142    7307
                         sub.s            eax, edx                                      // 0x007c3144    2bc2
                         dec              eax                                           // 0x007c3146    48
                         mov.s            ecx, eax                                      // 0x007c3147    8bc8
                         {disp8} jmp      _jmp_addr_0x007c314d                          // 0x007c3149    eb02
_jmp_addr_0x007c314b:    sub.s            ecx, edx                                      // 0x007c314b    2bca
_jmp_addr_0x007c314d:    test             ecx, ecx                                      // 0x007c314d    85c9
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c314f    894c241c
                         {disp8} jne      _jmp_addr_0x007c31c6                          // 0x007c3153    7571
_jmp_addr_0x007c3155:    {disp8} mov      eax, dword ptr [esp + 0x4c]                   // 0x007c3155    8b44244c
                         {disp8} mov      edi, dword ptr [esp + 0x48]                   // 0x007c3159    8b7c2448
                         push             eax                                           // 0x007c315d    50
                         push             edi                                           // 0x007c315e    57
                         push             ebx                                           // 0x007c315f    53
                         {disp8} mov      dword ptr [ebx + 0x34], edx                   // 0x007c3160    895334
                         call             _inflate_flush                                // 0x007c3163    e8c81a0000
                         {disp8} mov      edx, dword ptr [ebx + 0x34]                   // 0x007c3168    8b5334
                         {disp8} mov      esi, dword ptr [ebx + 0x30]                   // 0x007c316b    8b7330
                         add              esp, 0x0c                                     // 0x007c316e    83c40c
                         cmp.s            edx, esi                                      // 0x007c3171    3bd6
                         {disp8} mov      dword ptr [esp + 0x4c], eax                   // 0x007c3173    8944244c
                         {disp8} mov      dword ptr [esp + 0x44], edx                   // 0x007c3177    89542444
                         {disp8} jae      _jmp_addr_0x007c3184                          // 0x007c317b    7307
                         mov.s            ecx, esi                                      // 0x007c317d    8bce
                         sub.s            ecx, edx                                      // 0x007c317f    2bca
                         dec              ecx                                           // 0x007c3181    49
                         {disp8} jmp      _jmp_addr_0x007c3189                          // 0x007c3182    eb05
_jmp_addr_0x007c3184:    {disp8} mov      ecx, dword ptr [ebx + 0x2c]                   // 0x007c3184    8b4b2c
                         sub.s            ecx, edx                                      // 0x007c3187    2bca
_jmp_addr_0x007c3189:    {disp8} mov      eax, dword ptr [ebx + 0x2c]                   // 0x007c3189    8b432c
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c318c    894c241c
                         cmp.s            edx, eax                                      // 0x007c3190    3bd0
                         {disp8} mov      dword ptr [esp + 0x20], eax                   // 0x007c3192    89442420
                         {disp8} jne      _jmp_addr_0x007c31ba                          // 0x007c3196    7522
                         {disp8} mov      eax, dword ptr [ebx + 0x28]                   // 0x007c3198    8b4328
                         cmp.s            esi, eax                                      // 0x007c319b    3bf0
                         {disp8} je       _jmp_addr_0x007c31ba                          // 0x007c319d    741b
                         mov.s            edx, eax                                      // 0x007c319f    8bd0
                         cmp.s            edx, esi                                      // 0x007c31a1    3bd6
                         {disp8} mov      dword ptr [esp + 0x44], edx                   // 0x007c31a3    89542444
                         {disp8} jae      _jmp_addr_0x007c31b0                          // 0x007c31a7    7307
                         sub.s            esi, edx                                      // 0x007c31a9    2bf2
                         dec              esi                                           // 0x007c31ab    4e
                         mov.s            ecx, esi                                      // 0x007c31ac    8bce
                         {disp8} jmp      _jmp_addr_0x007c31b6                          // 0x007c31ae    eb06
_jmp_addr_0x007c31b0:    {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c31b0    8b4c2420
                         sub.s            ecx, edx                                      // 0x007c31b4    2bca
_jmp_addr_0x007c31b6:    {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c31b6    894c241c
_jmp_addr_0x007c31ba:    test             ecx, ecx                                      // 0x007c31ba    85c9
                         {disp32} je      _jmp_addr_0x007c3855                          // 0x007c31bc    0f8493060000
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x007c31c2    8b7c2414
_jmp_addr_0x007c31c6:    {disp8} mov      eax, dword ptr [ebx + 0x04]                   // 0x007c31c6    8b4304
                         {disp8} mov      dword ptr [esp + 0x4c], 0x00000000            // 0x007c31c9    c744244c00000000
                         cmp.s            eax, edi                                      // 0x007c31d1    3bc7
                         {disp8} jbe      _jmp_addr_0x007c31d7                          // 0x007c31d3    7602
                         mov.s            eax, edi                                      // 0x007c31d5    8bc7
_jmp_addr_0x007c31d7:    cmp.s            eax, ecx                                      // 0x007c31d7    3bc1
                         {disp8} jbe      _jmp_addr_0x007c31dd                          // 0x007c31d9    7602
                         mov.s            eax, ecx                                      // 0x007c31db    8bc1
_jmp_addr_0x007c31dd:    {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x007c31dd    8b742410
                         {disp8} mov      edi, dword ptr [esp + 0x44]                   // 0x007c31e1    8b7c2444
                         mov.s            ecx, eax                                      // 0x007c31e5    8bc8
                         mov.s            edx, ecx                                      // 0x007c31e7    8bd1
                         shr              ecx, 2                                        // 0x007c31e9    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007c31ec    f3a5
                         mov.s            ecx, edx                                      // 0x007c31ee    8bca
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c31f0    8b54241c
                         and              ecx, 0x03                                     // 0x007c31f4    83e103
                         sub.s            edx, eax                                      // 0x007c31f7    2bd0
                         rep movsb                                                      // 0x007c31f9    f3a4
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c31fb    8b4c2410
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x007c31ff    8b7c2414
                         {disp8} mov      esi, dword ptr [esp + 0x44]                   // 0x007c3203    8b742444
                         add.s            ecx, eax                                      // 0x007c3207    03c8
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c3209    894c2410
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                   // 0x007c320d    8b4b04
                         sub.s            edi, eax                                      // 0x007c3210    2bf8
                         add.s            esi, eax                                      // 0x007c3212    03f0
                         sub.s            ecx, eax                                      // 0x007c3214    2bc8
                         {disp8} mov      dword ptr [esp + 0x14], edi                   // 0x007c3216    897c2414
                         {disp8} mov      dword ptr [esp + 0x44], esi                   // 0x007c321a    89742444
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x007c321e    8954241c
                         {disp8} mov      dword ptr [ebx + 0x04], ecx                   // 0x007c3222    894b04
                         {disp32} jne     _jmp_addr_0x007c2f92                          // 0x007c3225    0f8567fdffff
_jmp_addr_0x007c322b:    {disp8} mov      eax, dword ptr [ebx + 0x18]                   // 0x007c322b    8b4318
                         neg              eax                                           // 0x007c322e    f7d8
                         sbb.s            eax, eax                                      // 0x007c3230    1bc0
                         and              eax, 0x07                                     // 0x007c3232    83e007
                         mov              dword ptr [ebx], eax                          // 0x007c3235    8903
                         {disp32} jmp     _jmp_addr_0x007c2f92                          // 0x007c3237    e956fdffff
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007c323c    8b7c2418
                         cmp              ebp, 0x0e                                     // 0x007c3240    83fd0e
                         {disp8} jae      _jmp_addr_0x007c327b                          // 0x007c3243    7336
                         {disp8} mov      esi, dword ptr [esp + 0x14]                   // 0x007c3245    8b742414
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c3249    8b442410
_jmp_addr_0x007c324d:    test             esi, esi                                      // 0x007c324d    85f6
                         {disp32} je      _jmp_addr_0x007c3894                          // 0x007c324f    0f843f060000
                         xor.s            ecx, ecx                                      // 0x007c3255    33c9
                         dec              esi                                           // 0x007c3257    4e
                         mov              cl, byte ptr [eax]                            // 0x007c3258    8a08
                         {disp8} mov      dword ptr [esp + 0x4c], 0x00000000            // 0x007c325a    c744244c00000000
                         mov.s            edx, ecx                                      // 0x007c3262    8bd1
                         mov.s            ecx, ebp                                      // 0x007c3264    8bcd
                         shl              edx, cl                                       // 0x007c3266    d3e2
                         add              ebp, 0x08                                     // 0x007c3268    83c508
                         {disp8} mov      dword ptr [esp + 0x14], esi                   // 0x007c326b    89742414
                         or.s             edi, edx                                      // 0x007c326f    0bfa
                         inc              eax                                           // 0x007c3271    40
                         cmp              ebp, 0x0e                                     // 0x007c3272    83fd0e
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c3275    89442410
                         .byte            0x72, 0xd2// {disp8} jb _jmp_addr_0x007c324d  // 0x007c3279    72d2
_jmp_addr_0x007c327b:    mov.s            eax, edi                                      // 0x007c327b    8bc7
                         and              eax, 0x00003fff                               // 0x007c327d    25ff3f0000
                         mov.s            ecx, eax                                      // 0x007c3282    8bc8
                         {disp8} mov      dword ptr [ebx + 0x04], eax                   // 0x007c3284    894304
                         and              ecx, 0x1f                                     // 0x007c3287    83e11f
                         cmp              ecx, 0x1d                                     // 0x007c328a    83f91d
                         {disp32} ja      _jmp_addr_0x007c3913                          // 0x007c328d    0f8780060000
                         mov.s            edx, eax                                      // 0x007c3293    8bd0
                         and              edx, 0x000003e0                               // 0x007c3295    81e2e0030000
                         cmp              edx, 0x000003a0                               // 0x007c329b    81faa0030000
                         {disp32} ja      _jmp_addr_0x007c3913                          // 0x007c32a1    0f876c060000
                         {disp8} mov      esi, dword ptr [esp + 0x48]                   // 0x007c32a7    8b742448
                         push             0x4                                           // 0x007c32ab    6a04
                         shr              eax, 5                                        // 0x007c32ad    c1e805
                         and              eax, 0x1f                                     // 0x007c32b0    83e01f
                         {disp32} lea     eax, dword ptr [eax + ecx * 0x1 + 0x00000102] // 0x007c32b3    8d840802010000
                         {disp8} mov      ecx, dword ptr [esi + 0x28]                   // 0x007c32ba    8b4e28
                         push             eax                                           // 0x007c32bd    50
                         push             ecx                                           // 0x007c32be    51
                         call             dword ptr [esi + 0x20]                        // 0x007c32bf    ff5620
                         add              esp, 0x0c                                     // 0x007c32c2    83c40c
                         {disp8} mov      dword ptr [ebx + 0x0c], eax                   // 0x007c32c5    89430c
                         test             eax, eax                                      // 0x007c32c8    85c0
                         {disp32} je      _jmp_addr_0x007c38d7                          // 0x007c32ca    0f8407060000
                         shr              edi, 0xe                                      // 0x007c32d0    c1ef0e
                         sub              ebp, 0x0e                                     // 0x007c32d3    83ed0e
                         {disp8} mov      dword ptr [ebx + 0x08], 0x00000000            // 0x007c32d6    c7430800000000
                         mov              dword ptr [ebx], 0x00000004                   // 0x007c32dd    c70304000000
                         {disp8} jmp      _jmp_addr_0x007c32ed                          // 0x007c32e3    eb08
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007c32e5    8b7c2418
                         {disp8} mov      esi, dword ptr [esp + 0x48]                   // 0x007c32e9    8b742448
_jmp_addr_0x007c32ed:    {disp8} mov      edx, dword ptr [ebx + 0x04]                   // 0x007c32ed    8b5304
                         {disp8} mov      eax, dword ptr [ebx + 0x08]                   // 0x007c32f0    8b4308
                         shr              edx, 0xa                                      // 0x007c32f3    c1ea0a
                         add              edx, 0x04                                     // 0x007c32f6    83c204
                         cmp.s            eax, edx                                      // 0x007c32f9    3bc2
                         {disp8} jae      _jmp_addr_0x007c336b                          // 0x007c32fb    736e
_jmp_addr_0x007c32fd:    cmp              ebp, 0x03                                     // 0x007c32fd    83fd03
                         {disp8} jae      _jmp_addr_0x007c333a                          // 0x007c3300    7338
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c3302    8b442410
_jmp_addr_0x007c3306:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c3306    8b4c2414
                         test             ecx, ecx                                      // 0x007c330a    85c9
                         {disp32} je      _jmp_addr_0x007c3960                          // 0x007c330c    0f844e060000
                         mov.s            edx, ecx                                      // 0x007c3312    8bd1
                         xor.s            ecx, ecx                                      // 0x007c3314    33c9
                         mov              cl, byte ptr [eax]                            // 0x007c3316    8a08
                         dec              edx                                           // 0x007c3318    4a
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x007c3319    89542414
                         mov.s            edx, ecx                                      // 0x007c331d    8bd1
                         mov.s            ecx, ebp                                      // 0x007c331f    8bcd
                         add              ebp, 0x08                                     // 0x007c3321    83c508
                         shl              edx, cl                                       // 0x007c3324    d3e2
                         {disp8} mov      dword ptr [esp + 0x4c], 0x00000000            // 0x007c3326    c744244c00000000
                         or.s             edi, edx                                      // 0x007c332e    0bfa
                         inc              eax                                           // 0x007c3330    40
                         cmp              ebp, 0x03                                     // 0x007c3331    83fd03
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c3334    89442410
                         .byte            0x72, 0xcc// {disp8} jb _jmp_addr_0x007c3306  // 0x007c3338    72cc
_jmp_addr_0x007c333a:    {disp8} mov      ecx, dword ptr [ebx + 0x08]                   // 0x007c333a    8b4b08
                         mov.s            eax, edi                                      // 0x007c333d    8bc7
                         and              eax, 0x07                                     // 0x007c333f    83e007
                         sub              ebp, 0x03                                     // 0x007c3342    83ed03
                         {disp32} mov     edx, dword ptr [ecx * 0x4 + 0x009a035c]       // 0x007c3345    8b148d5c039a00
                         {disp8} mov      ecx, dword ptr [ebx + 0x0c]                   // 0x007c334c    8b4b0c
                         shr              edi, 3                                        // 0x007c334f    c1ef03
                         mov              dword ptr [ecx + edx * 0x4], eax              // 0x007c3352    890491
                         {disp8} mov      edx, dword ptr [ebx + 0x08]                   // 0x007c3355    8b5308
                         inc              edx                                           // 0x007c3358    42
                         {disp8} mov      dword ptr [ebx + 0x08], edx                   // 0x007c3359    895308
                         mov.s            eax, edx                                      // 0x007c335c    8bc2
                         {disp8} mov      edx, dword ptr [ebx + 0x04]                   // 0x007c335e    8b5304
                         shr              edx, 0xa                                      // 0x007c3361    c1ea0a
                         add              edx, 0x04                                     // 0x007c3364    83c204
                         cmp.s            eax, edx                                      // 0x007c3367    3bc2
                         .byte            0x72, 0x92// {disp8} jb _jmp_addr_0x007c32fd  // 0x007c3369    7292
_jmp_addr_0x007c336b:    {disp8} mov      ecx, dword ptr [ebx + 0x08]                   // 0x007c336b    8b4b08
                         mov              eax, 0x00000013                               // 0x007c336e    b813000000
                         cmp.s            ecx, eax                                      // 0x007c3373    3bc8
                         {disp8} jae      _jmp_addr_0x007c3398                          // 0x007c3375    7321
_jmp_addr_0x007c3377:    {disp8} mov      ecx, dword ptr [ebx + 0x08]                   // 0x007c3377    8b4b08
                         {disp32} mov     edx, dword ptr [ecx * 0x4 + 0x009a035c]       // 0x007c337a    8b148d5c039a00
                         {disp8} mov      ecx, dword ptr [ebx + 0x0c]                   // 0x007c3381    8b4b0c
                         mov              dword ptr [ecx + edx * 0x4], 0x00000000       // 0x007c3384    c7049100000000
                         {disp8} mov      edx, dword ptr [ebx + 0x08]                   // 0x007c338b    8b5308
                         inc              edx                                           // 0x007c338e    42
                         mov.s            ecx, edx                                      // 0x007c338f    8bca
                         {disp8} mov      dword ptr [ebx + 0x08], edx                   // 0x007c3391    895308
                         cmp.s            ecx, eax                                      // 0x007c3394    3bc8
                         .byte            0x72, 0xdf// {disp8} jb _jmp_addr_0x007c3377  // 0x007c3396    72df
_jmp_addr_0x007c3398:    {disp8} mov      edx, dword ptr [ebx + 0x24]                   // 0x007c3398    8b5324
                         push             esi                                           // 0x007c339b    56
                         {disp8} lea      ecx, dword ptr [ebx + 0x14]                   // 0x007c339c    8d4b14
                         {disp8} lea      eax, dword ptr [ebx + 0x10]                   // 0x007c339f    8d4310
                         push             edx                                           // 0x007c33a2    52
                         {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x007c33a3    8b530c
                         push             ecx                                           // 0x007c33a6    51
                         push             eax                                           // 0x007c33a7    50
                         push             edx                                           // 0x007c33a8    52
                         mov              dword ptr [eax], 0x00000007                   // 0x007c33a9    c70007000000
                         call             _inflate_trees_bits                           // 0x007c33af    e83c110000
                         add              esp, 0x14                                     // 0x007c33b4    83c414
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007c33b7    89442418
                         test             eax, eax                                      // 0x007c33bb    85c0
                         {disp32} jne     _jmp_addr_0x007c399f                          // 0x007c33bd    0f85dc050000
                         {disp8} mov      dword ptr [ebx + 0x08], eax                   // 0x007c33c3    894308
                         mov              dword ptr [ebx], 0x00000005                   // 0x007c33c6    c70305000000
                         {disp8} jmp      _jmp_addr_0x007c33d6                          // 0x007c33cc    eb08
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007c33ce    8b7c2418
                         {disp8} mov      esi, dword ptr [esp + 0x48]                   // 0x007c33d2    8b742448
_jmp_addr_0x007c33d6:    {disp8} mov      eax, dword ptr [ebx + 0x04]                   // 0x007c33d6    8b4304
                         {disp8} mov      ecx, dword ptr [ebx + 0x08]                   // 0x007c33d9    8b4b08
                         mov.s            edx, eax                                      // 0x007c33dc    8bd0
                         and              eax, 0x1f                                     // 0x007c33de    83e01f
                         shr              edx, 5                                        // 0x007c33e1    c1ea05
                         and              edx, 0x1f                                     // 0x007c33e4    83e21f
                         {disp32} lea     eax, dword ptr [edx + eax * 0x1 + 0x00000102] // 0x007c33e7    8d840202010000
                         cmp.s            ecx, eax                                      // 0x007c33ee    3bc8
                         {disp32} jae     _jmp_addr_0x007c3581                          // 0x007c33f0    0f838b010000
_jmp_addr_0x007c33f6:    {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c33f6    8b4310
                         cmp.s            ebp, eax                                      // 0x007c33f9    3be8
                         {disp8} jae      _jmp_addr_0x007c3438                          // 0x007c33fb    733b
_jmp_addr_0x007c33fd:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c33fd    8b4c2414
                         test             ecx, ecx                                      // 0x007c3401    85c9
                         {disp32} je      _jmp_addr_0x007c39b9                          // 0x007c3403    0f84b0050000
                         mov.s            edx, ecx                                      // 0x007c3409    8bd1
                         xor.s            ecx, ecx                                      // 0x007c340b    33c9
                         dec              edx                                           // 0x007c340d    4a
                         {disp8} mov      dword ptr [esp + 0x4c], 0x00000000            // 0x007c340e    c744244c00000000
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x007c3416    89542414
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c341a    8b542410
                         mov              cl, byte ptr [edx]                            // 0x007c341e    8a0a
                         mov.s            edx, ecx                                      // 0x007c3420    8bd1
                         mov.s            ecx, ebp                                      // 0x007c3422    8bcd
                         shl              edx, cl                                       // 0x007c3424    d3e2
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c3426    8b4c2410
                         add              ebp, 0x08                                     // 0x007c342a    83c508
                         or.s             edi, edx                                      // 0x007c342d    0bfa
                         inc              ecx                                           // 0x007c342f    41
                         cmp.s            ebp, eax                                      // 0x007c3430    3be8
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c3432    894c2410
                         .byte            0x72, 0xc5// {disp8} jb _jmp_addr_0x007c33fd  // 0x007c3436    72c5
_jmp_addr_0x007c3438:    {disp32} mov     eax, dword ptr [eax * 0x4 + 0x00c2d350]       // 0x007c3438    8b048550d3c200
                         {disp8} mov      ecx, dword ptr [ebx + 0x14]                   // 0x007c343f    8b4b14
                         and.s            eax, edi                                      // 0x007c3442    23c7
                         xor.s            edx, edx                                      // 0x007c3444    33d2
                         {disp8} mov      dl, byte ptr [ecx + eax * 0x8 + 0x01]         // 0x007c3446    8a54c101
                         lea              eax, dword ptr [ecx + eax * 0x8]              // 0x007c344a    8d04c1
                         {disp8} mov      dword ptr [esp + 0x18], edx                   // 0x007c344d    89542418
                         {disp8} mov      eax, dword ptr [eax + 0x04]                   // 0x007c3451    8b4004
                         cmp              eax, 0x10                                     // 0x007c3454    83f810
                         {disp8} mov      dword ptr [esp + 0x34], eax                   // 0x007c3457    89442434
                         {disp8} jae      _jmp_addr_0x007c3475                          // 0x007c345b    7318
                         mov.s            ecx, edx                                      // 0x007c345d    8bca
                         sub.s            ebp, edx                                      // 0x007c345f    2bea
                         {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x007c3461    8b530c
                         shr              edi, cl                                       // 0x007c3464    d3ef
                         {disp8} mov      ecx, dword ptr [ebx + 0x08]                   // 0x007c3466    8b4b08
                         mov              dword ptr [edx + ecx * 0x4], eax              // 0x007c3469    89048a
                         {disp8} mov      eax, dword ptr [ebx + 0x08]                   // 0x007c346c    8b4308
                         inc              eax                                           // 0x007c346f    40
                         {disp32} jmp     _jmp_addr_0x007c355e                          // 0x007c3470    e9e9000000
_jmp_addr_0x007c3475:    cmp              eax, 0x12                                     // 0x007c3475    83f812
                         mov              ecx, 0x00000007                               // 0x007c3478    b907000000
                         {disp8} je       _jmp_addr_0x007c3482                          // 0x007c347d    7403
                         {disp8} lea      ecx, dword ptr [eax + -0x0e]                  // 0x007c347f    8d48f2
_jmp_addr_0x007c3482:    sub              eax, 0x12                                     // 0x007c3482    83e812
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c3485    894c241c
                         neg              eax                                           // 0x007c3489    f7d8
                         sbb.s            eax, eax                                      // 0x007c348b    1bc0
                         add.s            ecx, edx                                      // 0x007c348d    03ca
                         and              al, -0x08                                     // 0x007c348f    24f8
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x007c3491    894c2420
                         add              eax, 0x0b                                     // 0x007c3495    83c00b
                         cmp.s            ebp, ecx                                      // 0x007c3498    3be9
                         {disp8} jae      _jmp_addr_0x007c34df                          // 0x007c349a    7343
_jmp_addr_0x007c349c:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c349c    8b4c2414
                         test             ecx, ecx                                      // 0x007c34a0    85c9
                         {disp32} je      _jmp_addr_0x007c39b9                          // 0x007c34a2    0f8411050000
                         mov.s            edx, ecx                                      // 0x007c34a8    8bd1
                         xor.s            ecx, ecx                                      // 0x007c34aa    33c9
                         dec              edx                                           // 0x007c34ac    4a
                         {disp8} mov      dword ptr [esp + 0x4c], 0x00000000            // 0x007c34ad    c744244c00000000
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x007c34b5    89542414
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c34b9    8b542410
                         mov              cl, byte ptr [edx]                            // 0x007c34bd    8a0a
                         mov.s            edx, ecx                                      // 0x007c34bf    8bd1
                         mov.s            ecx, ebp                                      // 0x007c34c1    8bcd
                         shl              edx, cl                                       // 0x007c34c3    d3e2
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c34c5    8b4c2410
                         add              ebp, 0x08                                     // 0x007c34c9    83c508
                         or.s             edi, edx                                      // 0x007c34cc    0bfa
                         inc              ecx                                           // 0x007c34ce    41
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c34cf    894c2410
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c34d3    8b4c2420
                         cmp.s            ebp, ecx                                      // 0x007c34d7    3be9
                         .byte            0x72, 0xc1// {disp8} jb _jmp_addr_0x007c349c  // 0x007c34d9    72c1
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c34db    8b542418
_jmp_addr_0x007c34df:    mov.s            ecx, edx                                      // 0x007c34df    8bca
                         shr              edi, cl                                       // 0x007c34e1    d3ef
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c34e3    8b4c241c
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00c2d350]       // 0x007c34e7    8b0c8d50d3c200
                         and.s            ecx, edi                                      // 0x007c34ee    23cf
                         add.s            eax, ecx                                      // 0x007c34f0    03c1
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c34f2    8b4c241c
                         shr              edi, cl                                       // 0x007c34f6    d3ef
                         add.s            ecx, edx                                      // 0x007c34f8    03ca
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007c34fa    89442418
                         sub.s            ebp, ecx                                      // 0x007c34fe    2be9
                         {disp8} mov      ecx, dword ptr [ebx + 0x08]                   // 0x007c3500    8b4b08
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c3503    894c241c
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                   // 0x007c3507    8b4b04
                         mov.s            edx, ecx                                      // 0x007c350a    8bd1
                         and              ecx, 0x1f                                     // 0x007c350c    83e11f
                         shr              edx, 5                                        // 0x007c350f    c1ea05
                         and              edx, 0x1f                                     // 0x007c3512    83e21f
                         {disp32} lea     ecx, dword ptr [edx + ecx * 0x1 + 0x00000102] // 0x007c3515    8d8c0a02010000
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c351c    8b54241c
                         add.s            eax, edx                                      // 0x007c3520    03c2
                         cmp.s            eax, ecx                                      // 0x007c3522    3bc1
                         {disp32} ja      _jmp_addr_0x007c39f8                          // 0x007c3524    0f87ce040000
                         cmp              dword ptr [esp + 0x34], 0x10                  // 0x007c352a    837c243410
                         {disp8} jne      _jmp_addr_0x007c3545                          // 0x007c352f    7514
                         mov.s            eax, edx                                      // 0x007c3531    8bc2
                         cmp              eax, 0x01                                     // 0x007c3533    83f801
                         {disp32} jb      _jmp_addr_0x007c39f8                          // 0x007c3536    0f82bc040000
                         {disp8} mov      ecx, dword ptr [ebx + 0x0c]                   // 0x007c353c    8b4b0c
                         {disp8} mov      ecx, dword ptr [ecx + eax * 0x4 + -0x04]      // 0x007c353f    8b4c81fc
                         {disp8} jmp      _jmp_addr_0x007c354b                          // 0x007c3543    eb06
_jmp_addr_0x007c3545:    {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007c3545    8b44241c
                         xor.s            ecx, ecx                                      // 0x007c3549    33c9
_jmp_addr_0x007c354b:    {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x007c354b    8b530c
                         inc              eax                                           // 0x007c354e    40
                         {disp8} mov      dword ptr [edx + eax * 0x4 + -0x04], ecx      // 0x007c354f    894c82fc
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c3553    8b542418
                         dec              edx                                           // 0x007c3557    4a
                         {disp8} mov      dword ptr [esp + 0x18], edx                   // 0x007c3558    89542418
                         {disp8} jne      _jmp_addr_0x007c354b                          // 0x007c355c    75ed
_jmp_addr_0x007c355e:    {disp8} mov      dword ptr [ebx + 0x08], eax                   // 0x007c355e    894308
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                   // 0x007c3561    8b4304
                         {disp8} mov      ecx, dword ptr [ebx + 0x08]                   // 0x007c3564    8b4b08
                         mov.s            edx, eax                                      // 0x007c3567    8bd0
                         shr              edx, 5                                        // 0x007c3569    c1ea05
                         and              edx, 0x1f                                     // 0x007c356c    83e21f
                         and              eax, 0x1f                                     // 0x007c356f    83e01f
                         {disp32} lea     eax, dword ptr [edx + eax * 0x1 + 0x00000102] // 0x007c3572    8d840202010000
                         cmp.s            ecx, eax                                      // 0x007c3579    3bc8
                         {disp32} jb      _jmp_addr_0x007c33f6                          // 0x007c357b    0f8275feffff
_jmp_addr_0x007c3581:    {disp8} mov      ecx, dword ptr [ebx + 0x24]                   // 0x007c3581    8b4b24
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                   // 0x007c3584    8b4304
                         push             esi                                           // 0x007c3587    56
                         push             ecx                                           // 0x007c3588    51
                         {disp8} lea      edx, dword ptr [esp + 0x40]                   // 0x007c3589    8d542440
                         {disp8} lea      ecx, dword ptr [esp + 0x44]                   // 0x007c358d    8d4c2444
                         push             edx                                           // 0x007c3591    52
                         push             ecx                                           // 0x007c3592    51
                         {disp8} lea      edx, dword ptr [esp + 0x2c]                   // 0x007c3593    8d54242c
                         {disp8} lea      ecx, dword ptr [esp + 0x30]                   // 0x007c3597    8d4c2430
                         push             edx                                           // 0x007c359b    52
                         {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x007c359c    8b530c
                         push             ecx                                           // 0x007c359f    51
                         mov.s            ecx, eax                                      // 0x007c35a0    8bc8
                         shr              ecx, 5                                        // 0x007c35a2    c1e905
                         and              ecx, 0x1f                                     // 0x007c35a5    83e11f
                         and              eax, 0x1f                                     // 0x007c35a8    83e01f
                         inc              ecx                                           // 0x007c35ab    41
                         push             edx                                           // 0x007c35ac    52
                         add              eax, 0x00000101                               // 0x007c35ad    0501010000
                         push             ecx                                           // 0x007c35b2    51
                         push             eax                                           // 0x007c35b3    50
                         {disp8} mov      dword ptr [ebx + 0x14], 0x00000000            // 0x007c35b4    c7431400000000
                         {disp8} mov      dword ptr [esp + 0x44], 0x00000009            // 0x007c35bb    c744244409000000
                         {disp8} mov      dword ptr [esp + 0x40], 0x00000006            // 0x007c35c3    c744244006000000
                         call             _inflate_trees_dynamic                        // 0x007c35cb    e8a0140000
                         {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x007c35d0    8b530c
                         {disp8} mov      dword ptr [esp + 0x3c], eax                   // 0x007c35d3    8944243c
                         {disp8} mov      eax, dword ptr [esi + 0x28]                   // 0x007c35d7    8b4628
                         push             edx                                           // 0x007c35da    52
                         push             eax                                           // 0x007c35db    50
                         call             dword ptr [esi + 0x24]                        // 0x007c35dc    ff5624
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007c35df    8b442444
                         add              esp, 0x2c                                     // 0x007c35e3    83c42c
                         test             eax, eax                                      // 0x007c35e6    85c0
                         {disp32} jne     _jmp_addr_0x007c3a4c                          // 0x007c35e8    0f855e040000
                         {disp8} mov      ecx, dword ptr [esp + 0x38]                   // 0x007c35ee    8b4c2438
                         {disp8} mov      edx, dword ptr [esp + 0x3c]                   // 0x007c35f2    8b54243c
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007c35f6    8b44241c
                         push             esi                                           // 0x007c35fa    56
                         push             ecx                                           // 0x007c35fb    51
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c35fc    8b4c2428
                         push             edx                                           // 0x007c3600    52
                         push             eax                                           // 0x007c3601    50
                         push             ecx                                           // 0x007c3602    51
                         call             _inflate_codes_new                            // 0x007c3603    e8d8060000
                         add              esp, 0x14                                     // 0x007c3608    83c414
                         test             eax, eax                                      // 0x007c360b    85c0
                         {disp32} je      _jmp_addr_0x007c3a98                          // 0x007c360d    0f8485040000
                         {disp8} mov      dword ptr [ebx + 0x04], eax                   // 0x007c3613    894304
                         mov              dword ptr [ebx], 0x00000006                   // 0x007c3616    c70306000000
                         {disp8} jmp      _jmp_addr_0x007c3626                          // 0x007c361c    eb08
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007c361e    8b7c2418
                         {disp8} mov      esi, dword ptr [esp + 0x48]                   // 0x007c3622    8b742448
_jmp_addr_0x007c3626:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c3626    8b442410
                         {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x007c362a    8b542414
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c362e    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3631    896b1c
                         mov              edi, dword ptr [esi]                          // 0x007c3634    8b3e
                         mov.s            ecx, eax                                      // 0x007c3636    8bc8
                         {disp8} mov      dword ptr [esi + 0x04], edx                   // 0x007c3638    895604
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c363b    8b5608
                         sub.s            ecx, edi                                      // 0x007c363e    2bcf
                         mov              dword ptr [esi], eax                          // 0x007c3640    8906
                         {disp8} mov      eax, dword ptr [esp + 0x4c]                   // 0x007c3642    8b44244c
                         add.s            edx, ecx                                      // 0x007c3646    03d1
                         {disp8} mov      dword ptr [esi + 0x08], edx                   // 0x007c3648    895608
                         {disp8} mov      edx, dword ptr [esp + 0x44]                   // 0x007c364b    8b542444
                         push             eax                                           // 0x007c364f    50
                         push             esi                                           // 0x007c3650    56
                         push             ebx                                           // 0x007c3651    53
                         {disp8} mov      dword ptr [ebx + 0x34], edx                   // 0x007c3652    895334
                         call             _inflate_codes                                // 0x007c3655    e8c6060000
                         add              esp, 0x0c                                     // 0x007c365a    83c40c
                         cmp              eax, 0x01                                     // 0x007c365d    83f801
                         {disp32} jne     _jmp_addr_0x007c3b28                          // 0x007c3660    0f85c2040000
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                   // 0x007c3666    8b4b04
                         push             esi                                           // 0x007c3669    56
                         push             ecx                                           // 0x007c366a    51
                         {disp8} mov      dword ptr [esp + 0x54], 0x00000000            // 0x007c366b    c744245400000000
                         call             _inflate_codes_free                           // 0x007c3673    e8580e0000
                         {disp8} mov      eax, dword ptr [ebx + 0x20]                   // 0x007c3678    8b4320
                         {disp8} mov      ecx, dword ptr [ebx + 0x34]                   // 0x007c367b    8b4b34
                         mov              edi, dword ptr [esi]                          // 0x007c367e    8b3e
                         {disp8} mov      edx, dword ptr [esi + 0x04]                   // 0x007c3680    8b5604
                         {disp8} mov      ebp, dword ptr [ebx + 0x1c]                   // 0x007c3683    8b6b1c
                         {disp8} mov      dword ptr [esp + 0x20], eax                   // 0x007c3686    89442420
                         {disp8} mov      eax, dword ptr [ebx + 0x30]                   // 0x007c368a    8b4330
                         add              esp, 0x08                                     // 0x007c368d    83c408
                         cmp.s            ecx, eax                                      // 0x007c3690    3bc8
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007c3692    897c2410
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x007c3696    89542414
                         {disp8} mov      dword ptr [esp + 0x44], ecx                   // 0x007c369a    894c2444
                         {disp8} jae      _jmp_addr_0x007c36a5                          // 0x007c369e    7305
                         sub.s            eax, ecx                                      // 0x007c36a0    2bc1
                         dec              eax                                           // 0x007c36a2    48
                         {disp8} jmp      _jmp_addr_0x007c36aa                          // 0x007c36a3    eb05
_jmp_addr_0x007c36a5:    {disp8} mov      eax, dword ptr [ebx + 0x2c]                   // 0x007c36a5    8b432c
                         sub.s            eax, ecx                                      // 0x007c36a8    2bc1
_jmp_addr_0x007c36aa:    {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x007c36aa    8944241c
                         {disp8} mov      eax, dword ptr [ebx + 0x18]                   // 0x007c36ae    8b4318
                         test             eax, eax                                      // 0x007c36b1    85c0
                         {disp32} jne     _jmp_addr_0x007c3ad4                          // 0x007c36b3    0f851b040000
                         mov              dword ptr [ebx], 0x00000000                   // 0x007c36b9    c70300000000
                         {disp32} jmp     _jmp_addr_0x007c2f92                          // 0x007c36bf    e9cef8ffff
_jmp_addr_0x007c36c4:    {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c36c4    8b442448
                         {disp8} mov      dword ptr [ebx + 0x20], esi                   // 0x007c36c8    897320
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c36cb    896b1c
                         mov.s            ecx, edi                                      // 0x007c36ce    8bcf
                         mov              edx, dword ptr [eax]                          // 0x007c36d0    8b10
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c36d2    8b6808
                         sub.s            ecx, edx                                      // 0x007c36d5    2bca
                         {disp8} mov      edx, dword ptr [esp + 0x44]                   // 0x007c36d7    8b542444
                         add.s            ebp, ecx                                      // 0x007c36db    03e9
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                   // 0x007c36dd    8b4c244c
                         push             ecx                                           // 0x007c36e1    51
                         push             eax                                           // 0x007c36e2    50
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000            // 0x007c36e3    c7400400000000
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c36ea    896808
                         mov              dword ptr [eax], edi                          // 0x007c36ed    8938
                         push             ebx                                           // 0x007c36ef    53
                         {disp8} mov      dword ptr [ebx + 0x34], edx                   // 0x007c36f0    895334
                         call             _inflate_flush                                // 0x007c36f3    e838150000
                         add              esp, 0x0c                                     // 0x007c36f8    83c40c
                         pop              edi                                           // 0x007c36fb    5f
                         pop              esi                                           // 0x007c36fc    5e
                         pop              ebp                                           // 0x007c36fd    5d
                         pop              ebx                                           // 0x007c36fe    5b
                         add              esp, 0x30                                     // 0x007c36ff    83c430
                         ret                                                            // 0x007c3702    c3
_jmp_addr_0x007c3703:    {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c3703    8b442448
                         {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x007c3707    8b542414
                         {disp8} mov      dword ptr [ebx + 0x20], esi                   // 0x007c370b    897320
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c370e    896b1c
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c3711    8b6808
                         {disp8} mov      dword ptr [eax + 0x04], edx                   // 0x007c3714    895004
                         mov              edx, dword ptr [eax]                          // 0x007c3717    8b10
                         mov.s            ecx, edi                                      // 0x007c3719    8bcf
                         sub.s            ecx, edx                                      // 0x007c371b    2bca
                         {disp8} mov      edx, dword ptr [esp + 0x44]                   // 0x007c371d    8b542444
                         add.s            ebp, ecx                                      // 0x007c3721    03e9
                         push             -0x4                                          // 0x007c3723    6afc
                         push             eax                                           // 0x007c3725    50
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c3726    896808
                         mov              dword ptr [eax], edi                          // 0x007c3729    8938
                         push             ebx                                           // 0x007c372b    53
                         {disp8} mov      dword ptr [ebx + 0x34], edx                   // 0x007c372c    895334
                         call             _inflate_flush                                // 0x007c372f    e8fc140000
                         add              esp, 0x0c                                     // 0x007c3734    83c40c
                         pop              edi                                           // 0x007c3737    5f
                         pop              esi                                           // 0x007c3738    5e
                         pop              ebp                                           // 0x007c3739    5d
                         pop              ebx                                           // 0x007c373a    5b
                         add              esp, 0x30                                     // 0x007c373b    83c430
                         ret                                                            // 0x007c373e    c3
                         {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c373f    8b442448
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c3743    8b4c2414
                         mov              dword ptr [ebx], 0x00000009                   // 0x007c3747    c70309000000
                         add              ebp, -0x03                                    // 0x007c374d    83c5fd
                         shr              esi, 3                                        // 0x007c3750    c1ee03
                         {disp8} mov      dword ptr [eax + 0x18], 0x00c2c10c            // 0x007c3753    c740180cc1c200
                         {disp8} mov      dword ptr [ebx + 0x20], esi                   // 0x007c375a    897320
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c375d    896b1c
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c3760    8b6808
                         {disp8} mov      dword ptr [eax + 0x04], ecx                   // 0x007c3763    894804
                         mov              ecx, dword ptr [eax]                          // 0x007c3766    8b08
                         mov.s            edx, edi                                      // 0x007c3768    8bd7
                         push             -0x3                                          // 0x007c376a    6afd
                         sub.s            edx, ecx                                      // 0x007c376c    2bd1
                         {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007c376e    8b4c2448
                         add.s            ebp, edx                                      // 0x007c3772    03ea
                         push             eax                                           // 0x007c3774    50
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c3775    896808
                         mov              dword ptr [eax], edi                          // 0x007c3778    8938
                         push             ebx                                           // 0x007c377a    53
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c377b    894b34
                         call             _inflate_flush                                // 0x007c377e    e8ad140000
                         add              esp, 0x0c                                     // 0x007c3783    83c40c
                         pop              edi                                           // 0x007c3786    5f
                         pop              esi                                           // 0x007c3787    5e
                         pop              ebp                                           // 0x007c3788    5d
                         pop              ebx                                           // 0x007c3789    5b
                         add              esp, 0x30                                     // 0x007c378a    83c430
                         ret                                                            // 0x007c378d    c3
_jmp_addr_0x007c378e:    {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007c378e    8b4c2448
                         {disp8} mov      dword ptr [ebx + 0x20], esi                   // 0x007c3792    897320
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3795    896b1c
                         mov              esi, dword ptr [ecx]                          // 0x007c3798    8b31
                         {disp8} mov      ebp, dword ptr [ecx + 0x08]                   // 0x007c379a    8b6908
                         {disp8} mov      dword ptr [ecx + 0x04], edx                   // 0x007c379d    895104
                         mov.s            edx, eax                                      // 0x007c37a0    8bd0
                         sub.s            edx, esi                                      // 0x007c37a2    2bd6
                         mov              dword ptr [ecx], eax                          // 0x007c37a4    8901
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007c37a6    8b442444
                         add.s            ebp, edx                                      // 0x007c37aa    03ea
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c37ac    8b54244c
                         {disp8} mov      dword ptr [ecx + 0x08], ebp                   // 0x007c37b0    896908
                         push             edx                                           // 0x007c37b3    52
                         push             ecx                                           // 0x007c37b4    51
                         push             ebx                                           // 0x007c37b5    53
                         {disp8} mov      dword ptr [ebx + 0x34], eax                   // 0x007c37b6    894334
                         call             _inflate_flush                                // 0x007c37b9    e872140000
                         add              esp, 0x0c                                     // 0x007c37be    83c40c
                         pop              edi                                           // 0x007c37c1    5f
                         pop              esi                                           // 0x007c37c2    5e
                         pop              ebp                                           // 0x007c37c3    5d
                         pop              ebx                                           // 0x007c37c4    5b
                         add              esp, 0x30                                     // 0x007c37c5    83c430
                         ret                                                            // 0x007c37c8    c3
_jmp_addr_0x007c37c9:    {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007c37c9    8b4c2448
                         mov              dword ptr [ebx], 0x00000009                   // 0x007c37cd    c70309000000
                         mov.s            edx, eax                                      // 0x007c37d3    8bd0
                         push             -0x3                                          // 0x007c37d5    6afd
                         {disp8} mov      dword ptr [ecx + 0x18], 0x00c2c0ec            // 0x007c37d7    c74118ecc0c200
                         {disp8} mov      dword ptr [ebx + 0x20], esi                   // 0x007c37de    897320
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c37e1    896b1c
                         mov              esi, dword ptr [ecx]                          // 0x007c37e4    8b31
                         {disp8} mov      ebp, dword ptr [ecx + 0x08]                   // 0x007c37e6    8b6908
                         sub.s            edx, esi                                      // 0x007c37e9    2bd6
                         add.s            ebp, edx                                      // 0x007c37eb    03ea
                         mov              dword ptr [ecx], eax                          // 0x007c37ed    8901
                         {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c37ef    8b442448
                         push             ecx                                           // 0x007c37f3    51
                         {disp8} mov      dword ptr [ecx + 0x04], edi                   // 0x007c37f4    897904
                         {disp8} mov      dword ptr [ecx + 0x08], ebp                   // 0x007c37f7    896908
                         push             ebx                                           // 0x007c37fa    53
                         {disp8} mov      dword ptr [ebx + 0x34], eax                   // 0x007c37fb    894334
                         call             _inflate_flush                                // 0x007c37fe    e82d140000
                         add              esp, 0x0c                                     // 0x007c3803    83c40c
                         pop              edi                                           // 0x007c3806    5f
                         pop              esi                                           // 0x007c3807    5e
                         pop              ebp                                           // 0x007c3808    5d
                         pop              ebx                                           // 0x007c3809    5b
                         add              esp, 0x30                                     // 0x007c380a    83c430
                         ret                                                            // 0x007c380d    c3
_jmp_addr_0x007c380e:    {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007c380e    8b4c2418
                         {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c3812    8b442448
                         {disp8} mov      dword ptr [ebx + 0x20], ecx                   // 0x007c3816    894b20
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c3819    8b4c2410
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c381d    896b1c
                         mov              esi, dword ptr [eax]                          // 0x007c3820    8b30
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c3822    8b6808
                         mov.s            edx, ecx                                      // 0x007c3825    8bd1
                         sub.s            edx, esi                                      // 0x007c3827    2bd6
                         mov              dword ptr [eax], ecx                          // 0x007c3829    8908
                         {disp8} mov      ecx, dword ptr [esp + 0x44]                   // 0x007c382b    8b4c2444
                         add.s            ebp, edx                                      // 0x007c382f    03ea
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c3831    8b54244c
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000            // 0x007c3835    c7400400000000
                         push             edx                                           // 0x007c383c    52
                         push             eax                                           // 0x007c383d    50
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c383e    896808
                         push             ebx                                           // 0x007c3841    53
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c3842    894b34
                         call             _inflate_flush                                // 0x007c3845    e8e6130000
                         add              esp, 0x0c                                     // 0x007c384a    83c40c
                         pop              edi                                           // 0x007c384d    5f
                         pop              esi                                           // 0x007c384e    5e
                         pop              ebp                                           // 0x007c384f    5d
                         pop              ebx                                           // 0x007c3850    5b
                         add              esp, 0x30                                     // 0x007c3851    83c430
                         ret                                                            // 0x007c3854    c3
_jmp_addr_0x007c3855:    {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c3855    8b442418
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c3859    8b4c2414
                         {disp8} mov      dword ptr [ebx + 0x20], eax                   // 0x007c385d    894320
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c3860    8b442410
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3864    896b1c
                         mov              ebp, dword ptr [edi]                          // 0x007c3867    8b2f
                         {disp8} mov      esi, dword ptr [edi + 0x08]                   // 0x007c3869    8b7708
                         {disp8} mov      dword ptr [edi + 0x04], ecx                   // 0x007c386c    894f04
                         mov.s            ecx, eax                                      // 0x007c386f    8bc8
                         mov              dword ptr [edi], eax                          // 0x007c3871    8907
                         sub.s            ecx, ebp                                      // 0x007c3873    2bcd
                         add.s            esi, ecx                                      // 0x007c3875    03f1
                         {disp8} mov      dword ptr [edi + 0x08], esi                   // 0x007c3877    897708
                         {disp8} mov      dword ptr [ebx + 0x34], edx                   // 0x007c387a    895334
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c387d    8b54244c
                         push             edx                                           // 0x007c3881    52
                         push             edi                                           // 0x007c3882    57
                         push             ebx                                           // 0x007c3883    53
                         call             _inflate_flush                                // 0x007c3884    e8a7130000
                         add              esp, 0x0c                                     // 0x007c3889    83c40c
                         pop              edi                                           // 0x007c388c    5f
                         pop              esi                                           // 0x007c388d    5e
                         pop              ebp                                           // 0x007c388e    5d
                         pop              ebx                                           // 0x007c388f    5b
                         add              esp, 0x30                                     // 0x007c3890    83c430
                         ret                                                            // 0x007c3893    c3
_jmp_addr_0x007c3894:    {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c3894    8b442448
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c3898    8b4c2410
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c389c    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c389f    896b1c
                         mov              esi, dword ptr [eax]                          // 0x007c38a2    8b30
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c38a4    8b6808
                         mov.s            edx, ecx                                      // 0x007c38a7    8bd1
                         mov              dword ptr [eax], ecx                          // 0x007c38a9    8908
                         {disp8} mov      ecx, dword ptr [esp + 0x44]                   // 0x007c38ab    8b4c2444
                         sub.s            edx, esi                                      // 0x007c38af    2bd6
                         add.s            ebp, edx                                      // 0x007c38b1    03ea
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c38b3    8b54244c
                         push             edx                                           // 0x007c38b7    52
                         push             eax                                           // 0x007c38b8    50
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000            // 0x007c38b9    c7400400000000
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c38c0    896808
                         push             ebx                                           // 0x007c38c3    53
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c38c4    894b34
                         call             _inflate_flush                                // 0x007c38c7    e864130000
                         add              esp, 0x0c                                     // 0x007c38cc    83c40c
                         pop              edi                                           // 0x007c38cf    5f
                         pop              esi                                           // 0x007c38d0    5e
                         pop              ebp                                           // 0x007c38d1    5d
                         pop              ebx                                           // 0x007c38d2    5b
                         add              esp, 0x30                                     // 0x007c38d3    83c430
                         ret                                                            // 0x007c38d6    c3
_jmp_addr_0x007c38d7:    {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c38d7    8b442414
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c38db    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c38de    896b1c
                         mov              edi, dword ptr [esi]                          // 0x007c38e1    8b3e
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c38e3    8b5608
                         {disp8} mov      dword ptr [esi + 0x04], eax                   // 0x007c38e6    894604
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c38e9    8b442410
                         push             -0x4                                          // 0x007c38ed    6afc
                         mov.s            ecx, eax                                      // 0x007c38ef    8bc8
                         push             esi                                           // 0x007c38f1    56
                         sub.s            ecx, edi                                      // 0x007c38f2    2bcf
                         mov              dword ptr [esi], eax                          // 0x007c38f4    8906
                         add.s            edx, ecx                                      // 0x007c38f6    03d1
                         push             ebx                                           // 0x007c38f8    53
                         {disp8} mov      dword ptr [esi + 0x08], edx                   // 0x007c38f9    895608
                         {disp8} mov      edx, dword ptr [esp + 0x50]                   // 0x007c38fc    8b542450
                         {disp8} mov      dword ptr [ebx + 0x34], edx                   // 0x007c3900    895334
                         call             _inflate_flush                                // 0x007c3903    e828130000
                         add              esp, 0x0c                                     // 0x007c3908    83c40c
                         pop              edi                                           // 0x007c390b    5f
                         pop              esi                                           // 0x007c390c    5e
                         pop              ebp                                           // 0x007c390d    5d
                         pop              ebx                                           // 0x007c390e    5b
                         add              esp, 0x30                                     // 0x007c390f    83c430
                         ret                                                            // 0x007c3912    c3
_jmp_addr_0x007c3913:    {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c3913    8b442448
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c3917    8b4c2414
                         mov              dword ptr [ebx], 0x00000009                   // 0x007c391b    c70309000000
                         push             -0x3                                          // 0x007c3921    6afd
                         {disp8} mov      dword ptr [eax + 0x18], 0x00c2c0c8            // 0x007c3923    c74018c8c0c200
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c392a    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c392d    896b1c
                         mov              esi, dword ptr [eax]                          // 0x007c3930    8b30
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c3932    8b6808
                         {disp8} mov      dword ptr [eax + 0x04], ecx                   // 0x007c3935    894804
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c3938    8b4c2414
                         push             eax                                           // 0x007c393c    50
                         mov.s            edx, ecx                                      // 0x007c393d    8bd1
                         mov              dword ptr [eax], ecx                          // 0x007c393f    8908
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                   // 0x007c3941    8b4c244c
                         sub.s            edx, esi                                      // 0x007c3945    2bd6
                         add.s            ebp, edx                                      // 0x007c3947    03ea
                         push             ebx                                           // 0x007c3949    53
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c394a    896808
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c394d    894b34
                         call             _inflate_flush                                // 0x007c3950    e8db120000
                         add              esp, 0x0c                                     // 0x007c3955    83c40c
                         pop              edi                                           // 0x007c3958    5f
                         pop              esi                                           // 0x007c3959    5e
                         pop              ebp                                           // 0x007c395a    5d
                         pop              ebx                                           // 0x007c395b    5b
                         add              esp, 0x30                                     // 0x007c395c    83c430
                         ret                                                            // 0x007c395f    c3
_jmp_addr_0x007c3960:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c3960    8b442410
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c3964    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3967    896b1c
                         mov              edi, dword ptr [esi]                          // 0x007c396a    8b3e
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c396c    8b4e08
                         mov.s            edx, eax                                      // 0x007c396f    8bd0
                         sub.s            edx, edi                                      // 0x007c3971    2bd7
                         mov              dword ptr [esi], eax                          // 0x007c3973    8906
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007c3975    8b442444
                         add.s            ecx, edx                                      // 0x007c3979    03ca
                         {disp8} mov      dword ptr [esi + 0x08], ecx                   // 0x007c397b    894e08
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                   // 0x007c397e    8b4c244c
                         push             ecx                                           // 0x007c3982    51
                         push             esi                                           // 0x007c3983    56
                         {disp8} mov      dword ptr [esi + 0x04], 0x00000000            // 0x007c3984    c7460400000000
                         push             ebx                                           // 0x007c398b    53
                         {disp8} mov      dword ptr [ebx + 0x34], eax                   // 0x007c398c    894334
                         call             _inflate_flush                                // 0x007c398f    e89c120000
                         add              esp, 0x0c                                     // 0x007c3994    83c40c
                         pop              edi                                           // 0x007c3997    5f
                         pop              esi                                           // 0x007c3998    5e
                         pop              ebp                                           // 0x007c3999    5d
                         pop              ebx                                           // 0x007c399a    5b
                         add              esp, 0x30                                     // 0x007c399b    83c430
                         ret                                                            // 0x007c399e    c3
_jmp_addr_0x007c399f:    {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x007c399f    8b530c
                         {disp8} mov      eax, dword ptr [esi + 0x28]                   // 0x007c39a2    8b4628
                         push             edx                                           // 0x007c39a5    52
                         push             eax                                           // 0x007c39a6    50
                         call             dword ptr [esi + 0x24]                        // 0x007c39a7    ff5624
                         {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x007c39aa    8b442420
                         add              esp, 0x08                                     // 0x007c39ae    83c408
                         cmp              eax, -0x03                                    // 0x007c39b1    83f8fd
                         {disp32} jmp     _jmp_addr_0x007c3a51                          // 0x007c39b4    e998000000
_jmp_addr_0x007c39b9:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c39b9    8b442410
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c39bd    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c39c0    896b1c
                         mov              edi, dword ptr [esi]                          // 0x007c39c3    8b3e
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c39c5    8b4e08
                         mov.s            edx, eax                                      // 0x007c39c8    8bd0
                         sub.s            edx, edi                                      // 0x007c39ca    2bd7
                         mov              dword ptr [esi], eax                          // 0x007c39cc    8906
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007c39ce    8b442444
                         add.s            ecx, edx                                      // 0x007c39d2    03ca
                         {disp8} mov      dword ptr [esi + 0x08], ecx                   // 0x007c39d4    894e08
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                   // 0x007c39d7    8b4c244c
                         push             ecx                                           // 0x007c39db    51
                         push             esi                                           // 0x007c39dc    56
                         {disp8} mov      dword ptr [esi + 0x04], 0x00000000            // 0x007c39dd    c7460400000000
                         push             ebx                                           // 0x007c39e4    53
                         {disp8} mov      dword ptr [ebx + 0x34], eax                   // 0x007c39e5    894334
                         call             _inflate_flush                                // 0x007c39e8    e843120000
                         add              esp, 0x0c                                     // 0x007c39ed    83c40c
                         pop              edi                                           // 0x007c39f0    5f
                         pop              esi                                           // 0x007c39f1    5e
                         pop              ebp                                           // 0x007c39f2    5d
                         pop              ebx                                           // 0x007c39f3    5b
                         add              esp, 0x30                                     // 0x007c39f4    83c430
                         ret                                                            // 0x007c39f7    c3
_jmp_addr_0x007c39f8:    {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x007c39f8    8b530c
                         {disp8} mov      eax, dword ptr [esi + 0x28]                   // 0x007c39fb    8b4628
                         push             edx                                           // 0x007c39fe    52
                         push             eax                                           // 0x007c39ff    50
                         call             dword ptr [esi + 0x24]                        // 0x007c3a00    ff5624
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c3a03    8b442418
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c3a07    8b4c241c
                         mov              dword ptr [ebx], 0x00000009                   // 0x007c3a0b    c70309000000
                         {disp8} mov      dword ptr [esi + 0x18], 0x00c2c0ac            // 0x007c3a11    c74618acc0c200
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c3a18    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3a1b    896b1c
                         mov              edi, dword ptr [esi]                          // 0x007c3a1e    8b3e
                         mov.s            edx, eax                                      // 0x007c3a20    8bd0
                         {disp8} mov      dword ptr [esi + 0x04], ecx                   // 0x007c3a22    894e04
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c3a25    8b4e08
                         sub.s            edx, edi                                      // 0x007c3a28    2bd7
                         mov              dword ptr [esi], eax                          // 0x007c3a2a    8906
                         {disp8} mov      eax, dword ptr [esp + 0x4c]                   // 0x007c3a2c    8b44244c
                         add.s            ecx, edx                                      // 0x007c3a30    03ca
                         push             -0x3                                          // 0x007c3a32    6afd
                         push             esi                                           // 0x007c3a34    56
                         {disp8} mov      dword ptr [esi + 0x08], ecx                   // 0x007c3a35    894e08
                         push             ebx                                           // 0x007c3a38    53
                         {disp8} mov      dword ptr [ebx + 0x34], eax                   // 0x007c3a39    894334
                         call             _inflate_flush                                // 0x007c3a3c    e8ef110000
                         add              esp, 0x14                                     // 0x007c3a41    83c414
                         pop              edi                                           // 0x007c3a44    5f
                         pop              esi                                           // 0x007c3a45    5e
                         pop              ebp                                           // 0x007c3a46    5d
                         pop              ebx                                           // 0x007c3a47    5b
                         add              esp, 0x30                                     // 0x007c3a48    83c430
                         ret                                                            // 0x007c3a4b    c3
_jmp_addr_0x007c3a4c:    cmp              dword ptr [esp + 0x18], -0x03                 // 0x007c3a4c    837c2418fd
_jmp_addr_0x007c3a51:    {disp8} jne      _jmp_addr_0x007c3a59                          // 0x007c3a51    7506
                         mov              dword ptr [ebx], 0x00000009                   // 0x007c3a53    c70309000000
_jmp_addr_0x007c3a59:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c3a59    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c3a5d    8b4c2414
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c3a61    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3a64    896b1c
                         mov              edi, dword ptr [esi]                          // 0x007c3a67    8b3e
                         mov.s            edx, eax                                      // 0x007c3a69    8bd0
                         {disp8} mov      dword ptr [esi + 0x04], ecx                   // 0x007c3a6b    894e04
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c3a6e    8b4e08
                         sub.s            edx, edi                                      // 0x007c3a71    2bd7
                         mov              dword ptr [esi], eax                          // 0x007c3a73    8906
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007c3a75    8b442444
                         add.s            ecx, edx                                      // 0x007c3a79    03ca
                         {disp8} mov      dword ptr [esi + 0x08], ecx                   // 0x007c3a7b    894e08
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007c3a7e    8b4c2418
                         push             ecx                                           // 0x007c3a82    51
                         push             esi                                           // 0x007c3a83    56
                         push             ebx                                           // 0x007c3a84    53
                         {disp8} mov      dword ptr [ebx + 0x34], eax                   // 0x007c3a85    894334
                         call             _inflate_flush                                // 0x007c3a88    e8a3110000
                         add              esp, 0x0c                                     // 0x007c3a8d    83c40c
                         pop              edi                                           // 0x007c3a90    5f
                         pop              esi                                           // 0x007c3a91    5e
                         pop              ebp                                           // 0x007c3a92    5d
                         pop              ebx                                           // 0x007c3a93    5b
                         add              esp, 0x30                                     // 0x007c3a94    83c430
                         ret                                                            // 0x007c3a97    c3
_jmp_addr_0x007c3a98:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c3a98    8b442410
                         {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x007c3a9c    8b542414
                         {disp8} mov      dword ptr [ebx + 0x20], edi                   // 0x007c3aa0    897b20
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3aa3    896b1c
                         mov              edi, dword ptr [esi]                          // 0x007c3aa6    8b3e
                         mov.s            ecx, eax                                      // 0x007c3aa8    8bc8
                         {disp8} mov      dword ptr [esi + 0x04], edx                   // 0x007c3aaa    895604
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c3aad    8b5608
                         sub.s            ecx, edi                                      // 0x007c3ab0    2bcf
                         push             -0x4                                          // 0x007c3ab2    6afc
                         add.s            edx, ecx                                      // 0x007c3ab4    03d1
                         push             esi                                           // 0x007c3ab6    56
                         {disp8} mov      dword ptr [esi + 0x08], edx                   // 0x007c3ab7    895608
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c3aba    8b54244c
                         mov              dword ptr [esi], eax                          // 0x007c3abe    8906
                         push             ebx                                           // 0x007c3ac0    53
                         {disp8} mov      dword ptr [ebx + 0x34], edx                   // 0x007c3ac1    895334
                         call             _inflate_flush                                // 0x007c3ac4    e867110000
                         add              esp, 0x0c                                     // 0x007c3ac9    83c40c
                         pop              edi                                           // 0x007c3acc    5f
                         pop              esi                                           // 0x007c3acd    5e
                         pop              ebp                                           // 0x007c3ace    5d
                         pop              ebx                                           // 0x007c3acf    5b
                         add              esp, 0x30                                     // 0x007c3ad0    83c430
                         ret                                                            // 0x007c3ad3    c3
_jmp_addr_0x007c3ad4:    mov              dword ptr [ebx], 0x00000007                   // 0x007c3ad4    c70307000000
                         {disp8} jmp      _jmp_addr_0x007c3ae8                          // 0x007c3ada    eb0c
                         {disp8} mov      ecx, dword ptr [esp + 0x44]                   // 0x007c3adc    8b4c2444
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c3ae0    8b7c2410
                         {disp8} mov      esi, dword ptr [esp + 0x48]                   // 0x007c3ae4    8b742448
_jmp_addr_0x007c3ae8:    {disp8} mov      eax, dword ptr [esp + 0x4c]                   // 0x007c3ae8    8b44244c
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c3aec    894b34
                         push             eax                                           // 0x007c3aef    50
                         push             esi                                           // 0x007c3af0    56
                         push             ebx                                           // 0x007c3af1    53
                         call             _inflate_flush                                // 0x007c3af2    e839110000
                         {disp8} mov      ecx, dword ptr [ebx + 0x34]                   // 0x007c3af7    8b4b34
                         {disp8} mov      edx, dword ptr [ebx + 0x30]                   // 0x007c3afa    8b5330
                         add              esp, 0x0c                                     // 0x007c3afd    83c40c
                         cmp.s            edx, ecx                                      // 0x007c3b00    3bd1
                         {disp8} je       _jmp_addr_0x007c3b3b                          // 0x007c3b02    7437
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c3b04    8b542418
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3b08    896b1c
                         {disp8} mov      dword ptr [ebx + 0x20], edx                   // 0x007c3b0b    895320
                         {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x007c3b0e    8b542414
                         mov              ebp, dword ptr [esi]                          // 0x007c3b12    8b2e
                         {disp8} mov      dword ptr [esi + 0x04], edx                   // 0x007c3b14    895604
                         mov.s            edx, edi                                      // 0x007c3b17    8bd7
                         mov              dword ptr [esi], edi                          // 0x007c3b19    893e
                         sub.s            edx, ebp                                      // 0x007c3b1b    2bd5
                         {disp8} mov      ebp, dword ptr [esi + 0x08]                   // 0x007c3b1d    8b6e08
                         add.s            ebp, edx                                      // 0x007c3b20    03ea
                         {disp8} mov      dword ptr [esi + 0x08], ebp                   // 0x007c3b22    896e08
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c3b25    894b34
_jmp_addr_0x007c3b28:    push             eax                                           // 0x007c3b28    50
                         push             esi                                           // 0x007c3b29    56
                         push             ebx                                           // 0x007c3b2a    53
                         call             _inflate_flush                                // 0x007c3b2b    e800110000
                         add              esp, 0x0c                                     // 0x007c3b30    83c40c
                         pop              edi                                           // 0x007c3b33    5f
                         pop              esi                                           // 0x007c3b34    5e
                         pop              ebp                                           // 0x007c3b35    5d
                         pop              ebx                                           // 0x007c3b36    5b
                         add              esp, 0x30                                     // 0x007c3b37    83c430
                         ret                                                            // 0x007c3b3a    c3
_jmp_addr_0x007c3b3b:    mov              dword ptr [ebx], 0x00000008                   // 0x007c3b3b    c70308000000
                         {disp8} jmp      _jmp_addr_0x007c3b4f                          // 0x007c3b41    eb0c
                         {disp8} mov      ecx, dword ptr [esp + 0x44]                   // 0x007c3b43    8b4c2444
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c3b47    8b7c2410
                         {disp8} mov      esi, dword ptr [esp + 0x48]                   // 0x007c3b4b    8b742448
_jmp_addr_0x007c3b4f:    {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c3b4f    8b442418
                         {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x007c3b53    8b542414
                         {disp8} mov      dword ptr [ebx + 0x20], eax                   // 0x007c3b57    894320
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3b5a    896b1c
                         mov              ebp, dword ptr [esi]                          // 0x007c3b5d    8b2e
                         mov.s            eax, edi                                      // 0x007c3b5f    8bc7
                         {disp8} mov      dword ptr [esi + 0x04], edx                   // 0x007c3b61    895604
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c3b64    8b5608
                         sub.s            eax, ebp                                      // 0x007c3b67    2bc5
                         push             0x1                                           // 0x007c3b69    6a01
                         add.s            edx, eax                                      // 0x007c3b6b    03d0
                         push             esi                                           // 0x007c3b6d    56
                         {disp8} mov      dword ptr [esi + 0x08], edx                   // 0x007c3b6e    895608
                         mov              dword ptr [esi], edi                          // 0x007c3b71    893e
                         push             ebx                                           // 0x007c3b73    53
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c3b74    894b34
                         call             _inflate_flush                                // 0x007c3b77    e8b4100000
                         add              esp, 0x0c                                     // 0x007c3b7c    83c40c
                         pop              edi                                           // 0x007c3b7f    5f
                         pop              esi                                           // 0x007c3b80    5e
                         pop              ebp                                           // 0x007c3b81    5d
                         pop              ebx                                           // 0x007c3b82    5b
                         add              esp, 0x30                                     // 0x007c3b83    83c430
                         ret                                                            // 0x007c3b86    c3
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007c3b87    8b4c2418
                         {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c3b8b    8b442448
                         {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x007c3b8f    8b542414
                         {disp8} mov      dword ptr [ebx + 0x20], ecx                   // 0x007c3b93    894b20
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c3b96    8b4c2410
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3b9a    896b1c
                         mov              esi, dword ptr [eax]                          // 0x007c3b9d    8b30
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c3b9f    8b6808
                         {disp8} mov      dword ptr [eax + 0x04], edx                   // 0x007c3ba2    895004
                         mov.s            edx, ecx                                      // 0x007c3ba5    8bd1
                         sub.s            edx, esi                                      // 0x007c3ba7    2bd6
                         mov              dword ptr [eax], ecx                          // 0x007c3ba9    8908
                         {disp8} mov      ecx, dword ptr [esp + 0x44]                   // 0x007c3bab    8b4c2444
                         add.s            ebp, edx                                      // 0x007c3baf    03ea
                         push             -0x3                                          // 0x007c3bb1    6afd
                         push             eax                                           // 0x007c3bb3    50
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c3bb4    896808
                         push             ebx                                           // 0x007c3bb7    53
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c3bb8    894b34
                         call             _inflate_flush                                // 0x007c3bbb    e870100000
                         add              esp, 0x0c                                     // 0x007c3bc0    83c40c
                         pop              edi                                           // 0x007c3bc3    5f
                         pop              esi                                           // 0x007c3bc4    5e
                         pop              ebp                                           // 0x007c3bc5    5d
                         pop              ebx                                           // 0x007c3bc6    5b
                         add              esp, 0x30                                     // 0x007c3bc7    83c430
                         ret                                                            // 0x007c3bca    c3
_jmp_addr_0x007c3bcb:    {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c3bcb    8b542418
                         {disp8} mov      eax, dword ptr [esp + 0x48]                   // 0x007c3bcf    8b442448
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c3bd3    8b4c2414
                         {disp8} mov      dword ptr [ebx + 0x20], edx                   // 0x007c3bd7    895320
                         {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x007c3bda    896b1c
                         mov              esi, dword ptr [eax]                          // 0x007c3bdd    8b30
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c3bdf    8b6808
                         {disp8} mov      dword ptr [eax + 0x04], ecx                   // 0x007c3be2    894804
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c3be5    8b4c2410
                         push             -0x2                                          // 0x007c3be9    6afe
                         mov.s            edx, ecx                                      // 0x007c3beb    8bd1
                         mov              dword ptr [eax], ecx                          // 0x007c3bed    8908
                         {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007c3bef    8b4c2448
                         sub.s            edx, esi                                      // 0x007c3bf3    2bd6
                         add.s            ebp, edx                                      // 0x007c3bf5    03ea
                         push             eax                                           // 0x007c3bf7    50
                         {disp8} mov      dword ptr [eax + 0x08], ebp                   // 0x007c3bf8    896808
                         push             ebx                                           // 0x007c3bfb    53
                         {disp8} mov      dword ptr [ebx + 0x34], ecx                   // 0x007c3bfc    894b34
                         call             _inflate_flush                                // 0x007c3bff    e82c100000
                         add              esp, 0x0c                                     // 0x007c3c04    83c40c
                         pop              edi                                           // 0x007c3c07    5f
                         pop              esi                                           // 0x007c3c08    5e
                         pop              ebp                                           // 0x007c3c09    5d
                         pop              ebx                                           // 0x007c3c0a    5b
                         add              esp, 0x30                                     // 0x007c3c0b    83c430
                         ret                                                            // 0x007c3c0e    c3

.byte 0x90                        // 0x007c3c0f

// Snippet: jmptbl, [0x007c3c10, 0x007c3c48)
.long 0x007c2fa4                                                                        // 0x007c3c10
.long 0x007c309a                                                                        // 0x007c3c14
.long 0x007c310d                                                                        // 0x007c3c18
.long 0x007c323c                                                                        // 0x007c3c1c
.long 0x007c32e5                                                                        // 0x007c3c20
.long 0x007c33ce                                                                        // 0x007c3c24
.long 0x007c361e                                                                        // 0x007c3c28
.long 0x007c3adc                                                                        // 0x007c3c2c
.long 0x007c3b43                                                                        // 0x007c3c30
.long 0x007c3b87                                                                        // 0x007c3c34
.long 0x007c3008                                                                        // 0x007c3c38
.long 0x007c3026                                                                        // 0x007c3c3c
.long 0x007c3085                                                                        // 0x007c3c40
.long 0x007c373f                                                                        // 0x007c3c44

.byte 0x90, 0x90, 0x90, 0x90      // 0x007c3c48
.byte 0x90, 0x90, 0x90, 0x90      // 0x007c3c4c

_inflate_blocks_free:    push             esi                                     // 0x007c3c50    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]             // 0x007c3c51    8b74240c
                         push             edi                                     // 0x007c3c55    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]             // 0x007c3c56    8b7c240c
                         push             0x0                                     // 0x007c3c5a    6a00
                         push             esi                                     // 0x007c3c5c    56
                         push             edi                                     // 0x007c3c5d    57
                         call             _inflate_blocks_reset                   // 0x007c3c5e    e8cdf1ffff
                         {disp8} mov      eax, dword ptr [edi + 0x28]             // 0x007c3c63    8b4728
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c3c66    8b4e28
                         push             eax                                     // 0x007c3c69    50
                         push             ecx                                     // 0x007c3c6a    51
                         call             dword ptr [esi + 0x24]                  // 0x007c3c6b    ff5624
                         {disp8} mov      edx, dword ptr [edi + 0x24]             // 0x007c3c6e    8b5724
                         {disp8} mov      eax, dword ptr [esi + 0x28]             // 0x007c3c71    8b4628
                         push             edx                                     // 0x007c3c74    52
                         push             eax                                     // 0x007c3c75    50
                         call             dword ptr [esi + 0x24]                  // 0x007c3c76    ff5624
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c3c79    8b4e28
                         push             edi                                     // 0x007c3c7c    57
                         push             ecx                                     // 0x007c3c7d    51
                         call             dword ptr [esi + 0x24]                  // 0x007c3c7e    ff5624
                         add              esp, 0x24                               // 0x007c3c81    83c424
                         xor.s            eax, eax                                // 0x007c3c84    33c0
                         pop              edi                                     // 0x007c3c86    5f
                         pop              esi                                     // 0x007c3c87    5e
                         ret                                                      // 0x007c3c88    c3
                         nop                                                      // 0x007c3c89    90
                         nop                                                      // 0x007c3c8a    90
                         nop                                                      // 0x007c3c8b    90
                         nop                                                      // 0x007c3c8c    90
                         nop                                                      // 0x007c3c8d    90
                         nop                                                      // 0x007c3c8e    90
                         nop                                                      // 0x007c3c8f    90
_inflate_set_dictionary: {disp8} mov      edx, dword ptr [esp + 0x0c]             // 0x007c3c90    8b54240c
                         {disp8} mov      eax, dword ptr [esp + 0x04]             // 0x007c3c94    8b442404
                         mov.s            ecx, edx                                // 0x007c3c98    8bca
                         push             ebx                                     // 0x007c3c9a    53
                         push             esi                                     // 0x007c3c9b    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]             // 0x007c3c9c    8b742410
                         mov.s            ebx, ecx                                // 0x007c3ca0    8bd9
                         push             edi                                     // 0x007c3ca2    57
                         {disp8} mov      edi, dword ptr [eax + 0x28]             // 0x007c3ca3    8b7828
                         shr              ecx, 2                                  // 0x007c3ca6    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]            // 0x007c3ca9    f3a5
                         mov.s            ecx, ebx                                // 0x007c3cab    8bcb
                         and              ecx, 0x03                               // 0x007c3cad    83e103
                         rep movsb                                                // 0x007c3cb0    f3a4
                         {disp8} mov      ecx, dword ptr [eax + 0x28]             // 0x007c3cb2    8b4828
                         pop              edi                                     // 0x007c3cb5    5f
                         add.s            ecx, edx                                // 0x007c3cb6    03ca
                         pop              esi                                     // 0x007c3cb8    5e
                         {disp8} mov      dword ptr [eax + 0x34], ecx             // 0x007c3cb9    894834
                         {disp8} mov      dword ptr [eax + 0x30], ecx             // 0x007c3cbc    894830
                         pop              ebx                                     // 0x007c3cbf    5b
                         ret                                                      // 0x007c3cc0    c3
                         nop                                                      // 0x007c3cc1    90
                         nop                                                      // 0x007c3cc2    90
                         nop                                                      // 0x007c3cc3    90
                         nop                                                      // 0x007c3cc4    90
                         nop                                                      // 0x007c3cc5    90
                         nop                                                      // 0x007c3cc6    90
                         nop                                                      // 0x007c3cc7    90
                         nop                                                      // 0x007c3cc8    90
                         nop                                                      // 0x007c3cc9    90
                         nop                                                      // 0x007c3cca    90
                         nop                                                      // 0x007c3ccb    90
                         nop                                                      // 0x007c3ccc    90
                         nop                                                      // 0x007c3ccd    90
                         nop                                                      // 0x007c3cce    90
                         nop                                                      // 0x007c3ccf    90
_inflate_blocks_sync_point:    {disp8} mov      ecx, dword ptr [esp + 0x04]             // 0x007c3cd0    8b4c2404
                         xor.s            eax, eax                                // 0x007c3cd4    33c0
                         cmp              dword ptr [ecx], 0x01                   // 0x007c3cd6    833901
                         sete             al                                      // 0x007c3cd9    0f94c0
                         ret                                                      // 0x007c3cdc    c3
                         nop                                                      // 0x007c3cdd    90
                         nop                                                      // 0x007c3cde    90
                         nop                                                      // 0x007c3cdf    90
