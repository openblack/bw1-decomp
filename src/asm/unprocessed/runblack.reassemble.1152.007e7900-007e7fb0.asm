.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern _strncpy
.extern ___nw__FUl
.extern _jmp_addr_0x007e6fc0
.extern _jmp_addr_0x007e6fe0
.extern _jmp_addr_0x007e7180
.extern _jmp_addr_0x007e71a0
.extern _jmp_addr_0x007e71c0
.extern _jmp_addr_0x007e7240
.extern _jmp_addr_0x007e8d50
.extern _jmp_addr_0x007e8e20
.extern _jmp_addr_0x007e95d0
.extern _jmp_addr_0x007e9870
.extern _jmp_addr_0x007e98d0

.globl _jmp_addr_0x007e7900
.globl _jmp_addr_0x007e7960
.globl _jmp_addr_0x007e79c0
.globl _jmp_addr_0x007e7a20
.globl _jmp_addr_0x007e7a70
.globl _jmp_addr_0x007e7aa0
.globl _jmp_addr_0x007e7b70
.globl _jmp_addr_0x007e7be0
.globl _jmp_addr_0x007e7bf0

start_0x007e7900_0x007e7fb0:
// Snippet: asm, [0x007e7900, 0x007e7f74)
_jmp_addr_0x007e7900:    sub              esp, 0x30                                 // 0x007e7900    83ec30
                         push             ebx                                       // 0x007e7903    53
                         push             esi                                       // 0x007e7904    56
                         push             edi                                       // 0x007e7905    57
                         mov.s            ebx, ecx                                  // 0x007e7906    8bd9
                         call             _jmp_addr_0x007e9870                      // 0x007e7908    e8631f0000
                         {disp8} mov      eax, dword ptr [esp + 0x44]               // 0x007e790d    8b442444
                         {disp8} mov      edx, dword ptr [esp + 0x4c]               // 0x007e7911    8b54244c
                         mov              ecx, 0x0000000c                           // 0x007e7915    b90c000000
                         mov.s            esi, ebx                                  // 0x007e791a    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]               // 0x007e791c    8d7c240c
                         push             edx                                       // 0x007e7920    52
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e7921    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]               // 0x007e7923    8b4c244c
                         {disp8} mov      dword ptr [ebx + 0x28], eax               // 0x007e7927    894328
                         {disp8} mov      eax, dword ptr [esp + 0x44]               // 0x007e792a    8b442444
                         {disp8} mov      dword ptr [ebx + 0x2c], ecx               // 0x007e792e    894b2c
                         push             eax                                       // 0x007e7931    50
                         mov.s            ecx, ebx                                  // 0x007e7932    8bcb
                         {disp8} mov      dword ptr [ebx + 0x20], 0x00000000        // 0x007e7934    c7432000000000
                         call             _jmp_addr_0x007e8d50                      // 0x007e793b    e810140000
                         mov              ecx, 0x0000000c                           // 0x007e7940    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]               // 0x007e7945    8d74240c
                         mov.s            edi, ebx                                  // 0x007e7949    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e794b    f3a5
                         pop              edi                                       // 0x007e794d    5f
                         pop              esi                                       // 0x007e794e    5e
                         pop              ebx                                       // 0x007e794f    5b
                         add              esp, 0x30                                 // 0x007e7950    83c430
                         ret              0x0010                                    // 0x007e7953    c21000
                         nop                                                        // 0x007e7956    90
                         nop                                                        // 0x007e7957    90
                         nop                                                        // 0x007e7958    90
                         nop                                                        // 0x007e7959    90
                         nop                                                        // 0x007e795a    90
                         nop                                                        // 0x007e795b    90
                         nop                                                        // 0x007e795c    90
                         nop                                                        // 0x007e795d    90
                         nop                                                        // 0x007e795e    90
                         nop                                                        // 0x007e795f    90
_jmp_addr_0x007e7960:    sub              esp, 0x30                                 // 0x007e7960    83ec30
                         push             ebx                                       // 0x007e7963    53
                         push             esi                                       // 0x007e7964    56
                         push             edi                                       // 0x007e7965    57
                         mov.s            ebx, ecx                                  // 0x007e7966    8bd9
                         call             _jmp_addr_0x007e9870                      // 0x007e7968    e8031f0000
                         {disp8} mov      eax, dword ptr [esp + 0x44]               // 0x007e796d    8b442444
                         {disp8} mov      edx, dword ptr [esp + 0x4c]               // 0x007e7971    8b54244c
                         mov              ecx, 0x0000000c                           // 0x007e7975    b90c000000
                         mov.s            esi, ebx                                  // 0x007e797a    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]               // 0x007e797c    8d7c240c
                         push             edx                                       // 0x007e7980    52
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e7981    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]               // 0x007e7983    8b4c244c
                         {disp8} mov      dword ptr [ebx + 0x20], eax               // 0x007e7987    894320
                         {disp8} mov      eax, dword ptr [esp + 0x44]               // 0x007e798a    8b442444
                         {disp8} mov      dword ptr [ebx + 0x24], ecx               // 0x007e798e    894b24
                         push             eax                                       // 0x007e7991    50
                         mov.s            ecx, ebx                                  // 0x007e7992    8bcb
                         {disp8} mov      dword ptr [ebx + 0x28], 0x00000000        // 0x007e7994    c7432800000000
                         call             _jmp_addr_0x007e8d50                      // 0x007e799b    e8b0130000
                         mov              ecx, 0x0000000c                           // 0x007e79a0    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]               // 0x007e79a5    8d74240c
                         mov.s            edi, ebx                                  // 0x007e79a9    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e79ab    f3a5
                         pop              edi                                       // 0x007e79ad    5f
                         pop              esi                                       // 0x007e79ae    5e
                         pop              ebx                                       // 0x007e79af    5b
                         add              esp, 0x30                                 // 0x007e79b0    83c430
                         ret              0x0010                                    // 0x007e79b3    c21000
                         nop                                                        // 0x007e79b6    90
                         nop                                                        // 0x007e79b7    90
                         nop                                                        // 0x007e79b8    90
                         nop                                                        // 0x007e79b9    90
                         nop                                                        // 0x007e79ba    90
                         nop                                                        // 0x007e79bb    90
                         nop                                                        // 0x007e79bc    90
                         nop                                                        // 0x007e79bd    90
                         nop                                                        // 0x007e79be    90
                         nop                                                        // 0x007e79bf    90
_jmp_addr_0x007e79c0:    sub              esp, 0x30                                 // 0x007e79c0    83ec30
                         push             ebx                                       // 0x007e79c3    53
                         push             esi                                       // 0x007e79c4    56
                         push             edi                                       // 0x007e79c5    57
                         mov.s            ebx, ecx                                  // 0x007e79c6    8bd9
                         call             _jmp_addr_0x007e9870                      // 0x007e79c8    e8a31e0000
                         {disp8} mov      edx, dword ptr [esp + 0x4c]               // 0x007e79cd    8b54244c
                         {disp8} mov      eax, dword ptr [esp + 0x44]               // 0x007e79d1    8b442444
                         mov              ecx, 0x0000000c                           // 0x007e79d5    b90c000000
                         mov.s            esi, ebx                                  // 0x007e79da    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]               // 0x007e79dc    8d7c240c
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e79e0    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x48]               // 0x007e79e2    8b4c2448
                         {disp8} mov      dword ptr [ebx + 0x28], edx               // 0x007e79e6    895328
                         {disp8} mov      edx, dword ptr [esp + 0x40]               // 0x007e79e9    8b542440
                         {disp8} mov      dword ptr [ebx + 0x24], ecx               // 0x007e79ed    894b24
                         {disp8} mov      ecx, dword ptr [esp + 0x54]               // 0x007e79f0    8b4c2454
                         {disp8} mov      dword ptr [ebx + 0x20], eax               // 0x007e79f4    894320
                         {disp8} mov      eax, dword ptr [esp + 0x50]               // 0x007e79f7    8b442450
                         push             ecx                                       // 0x007e79fb    51
                         push             edx                                       // 0x007e79fc    52
                         mov.s            ecx, ebx                                  // 0x007e79fd    8bcb
                         {disp8} mov      dword ptr [ebx + 0x2c], eax               // 0x007e79ff    89432c
                         call             _jmp_addr_0x007e8d50                      // 0x007e7a02    e849130000
                         mov              ecx, 0x0000000c                           // 0x007e7a07    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]               // 0x007e7a0c    8d74240c
                         mov.s            edi, ebx                                  // 0x007e7a10    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e7a12    f3a5
                         pop              edi                                       // 0x007e7a14    5f
                         pop              esi                                       // 0x007e7a15    5e
                         pop              ebx                                       // 0x007e7a16    5b
                         add              esp, 0x30                                 // 0x007e7a17    83c430
                         ret              0x0018                                    // 0x007e7a1a    c21800
                         nop                                                        // 0x007e7a1d    90
                         nop                                                        // 0x007e7a1e    90
                         nop                                                        // 0x007e7a1f    90
_jmp_addr_0x007e7a20:    sub              esp, 0x30                                 // 0x007e7a20    83ec30
                         push             ebx                                       // 0x007e7a23    53
                         push             esi                                       // 0x007e7a24    56
                         push             edi                                       // 0x007e7a25    57
                         mov.s            ebx, ecx                                  // 0x007e7a26    8bd9
                         call             _jmp_addr_0x007e9870                      // 0x007e7a28    e8431e0000
                         mov              ecx, 0x0000000c                           // 0x007e7a2d    b90c000000
                         mov.s            esi, ebx                                  // 0x007e7a32    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]               // 0x007e7a34    8d7c240c
                         xor.s            eax, eax                                  // 0x007e7a38    33c0
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e7a3a    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x40]               // 0x007e7a3c    8b4c2440
                         {disp8} mov      dword ptr [ebx + 0x20], eax               // 0x007e7a40    894320
                         {disp8} mov      dword ptr [ebx + 0x28], eax               // 0x007e7a43    894328
                         {disp8} mov      eax, dword ptr [esp + 0x44]               // 0x007e7a46    8b442444
                         push             eax                                       // 0x007e7a4a    50
                         push             ecx                                       // 0x007e7a4b    51
                         mov.s            ecx, ebx                                  // 0x007e7a4c    8bcb
                         call             _jmp_addr_0x007e8d50                      // 0x007e7a4e    e8fd120000
                         mov              ecx, 0x0000000c                           // 0x007e7a53    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]               // 0x007e7a58    8d74240c
                         mov.s            edi, ebx                                  // 0x007e7a5c    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]              // 0x007e7a5e    f3a5
                         pop              edi                                       // 0x007e7a60    5f
                         pop              esi                                       // 0x007e7a61    5e
                         pop              ebx                                       // 0x007e7a62    5b
                         add              esp, 0x30                                 // 0x007e7a63    83c430
                         ret              0x0008                                    // 0x007e7a66    c20800
                         nop                                                        // 0x007e7a69    90
                         nop                                                        // 0x007e7a6a    90
                         nop                                                        // 0x007e7a6b    90
                         nop                                                        // 0x007e7a6c    90
                         nop                                                        // 0x007e7a6d    90
                         nop                                                        // 0x007e7a6e    90
                         nop                                                        // 0x007e7a6f    90
_jmp_addr_0x007e7a70:    push             esi                                       // 0x007e7a70    56
                         mov.s            esi, ecx                                  // 0x007e7a71    8bf1
                         call             _jmp_addr_0x007e9870                      // 0x007e7a73    e8f81d0000
                         {disp8} mov      eax, dword ptr [esp + 0x08]               // 0x007e7a78    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]               // 0x007e7a7c    8b4c240c
                         {disp8} mov      dword ptr [esi + 0x20], eax               // 0x007e7a80    894620
                         xor.s            eax, eax                                  // 0x007e7a83    33c0
                         {disp8} mov      dword ptr [esi + 0x24], ecx               // 0x007e7a85    894e24
                         {disp8} mov      dword ptr [esi + 0x28], eax               // 0x007e7a88    894628
                         mov              dword ptr [esi], 0xffffffff               // 0x007e7a8b    c706ffffffff
                         {disp8} mov      dword ptr [esi + 0x04], eax               // 0x007e7a91    894604
                         pop              esi                                       // 0x007e7a94    5e
                         ret              0x000c                                    // 0x007e7a95    c20c00
                         nop                                                        // 0x007e7a98    90
                         nop                                                        // 0x007e7a99    90
                         nop                                                        // 0x007e7a9a    90
                         nop                                                        // 0x007e7a9b    90
                         nop                                                        // 0x007e7a9c    90
                         nop                                                        // 0x007e7a9d    90
                         nop                                                        // 0x007e7a9e    90
                         nop                                                        // 0x007e7a9f    90
_jmp_addr_0x007e7aa0:    sub              esp, 0x0c                                 // 0x007e7aa0    83ec0c
                         push             ebx                                       // 0x007e7aa3    53
                         {disp8} mov      ebx, dword ptr [esp + 0x14]               // 0x007e7aa4    8b5c2414
                         push             ebp                                       // 0x007e7aa8    55
                         {disp8} mov      ebp, dword ptr [esp + 0x1c]               // 0x007e7aa9    8b6c241c
                         push             esi                                       // 0x007e7aad    56
                         {disp8} lea      eax, dword ptr [esp + 0x0c]               // 0x007e7aae    8d44240c
                         push             edi                                       // 0x007e7ab2    57
                         mov.s            esi, ecx                                  // 0x007e7ab3    8bf1
                         push             eax                                       // 0x007e7ab5    50
                         xor.s            edi, edi                                  // 0x007e7ab6    33ff
                         push             0x2                                       // 0x007e7ab8    6a02
                         push             ebp                                       // 0x007e7aba    55
                         mov.s            ecx, ebx                                  // 0x007e7abb    8bcb
                         {disp8} mov      dword ptr [esp + 0x24], esi               // 0x007e7abd    89742424
                         {disp8} mov      dword ptr [esp + 0x20], edi               // 0x007e7ac1    897c2420
                         {disp8} mov      dword ptr [esp + 0x1c], edi               // 0x007e7ac5    897c241c
                         call             @Read__8LHOSFileFPvUlPUl@20               // 0x007e7ac9    e8124efdff
                         cmp              eax, 0x03                                 // 0x007e7ace    83f803
                         {disp8} je       _jmp_addr_0x007e7b07                      // 0x007e7ad1    7434
                         mov.s            esi, ebp                                  // 0x007e7ad3    8bf5
_jmp_addr_0x007e7ad5:    {disp8} mov      eax, dword ptr [esp + 0x10]               // 0x007e7ad5    8b442410
                         test             eax, eax                                  // 0x007e7ad9    85c0
                         {disp8} je       _jmp_addr_0x007e7b03                      // 0x007e7adb    7426
                         cmp              word ptr [esi], 0x0a                      // 0x007e7add    66833e0a
                         {disp8} je       _jmp_addr_0x007e7b11                      // 0x007e7ae1    742e
                         {disp8} lea      ecx, dword ptr [esp + 0x10]               // 0x007e7ae3    8d4c2410
                         add              esi, 0x02                                 // 0x007e7ae7    83c602
                         push             ecx                                       // 0x007e7aea    51
                         push             0x2                                       // 0x007e7aeb    6a02
                         push             esi                                       // 0x007e7aed    56
                         mov.s            ecx, ebx                                  // 0x007e7aee    8bcb
                         inc              edi                                       // 0x007e7af0    47
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000000        // 0x007e7af1    c744241c00000000
                         call             @Read__8LHOSFileFPvUlPUl@20               // 0x007e7af9    e8e24dfdff
                         cmp              eax, 0x03                                 // 0x007e7afe    83f803
                         {disp8} jne      _jmp_addr_0x007e7ad5                      // 0x007e7b01    75d2
_jmp_addr_0x007e7b03:    {disp8} mov      esi, dword ptr [esp + 0x18]               // 0x007e7b03    8b742418
_jmp_addr_0x007e7b07:    {disp8} mov      dword ptr [esp + 0x14], 0x00000002        // 0x007e7b07    c744241402000000
                         {disp8} jmp      _jmp_addr_0x007e7b15                      // 0x007e7b0f    eb04
_jmp_addr_0x007e7b11:    {disp8} mov      esi, dword ptr [esp + 0x18]               // 0x007e7b11    8b742418
_jmp_addr_0x007e7b15:    test             edi, edi                                  // 0x007e7b15    85ff
                         {disp8} je       _jmp_addr_0x007e7b4f                      // 0x007e7b17    7436
                         {disp8} mov      word ptr [ebp + edi * 0x2 + 0x00], 0x0000 // 0x007e7b19    66c7447d000000
                         {disp8} mov      edx, dword ptr [esi + 0x04]               // 0x007e7b20    8b5604
                         push             0x000001ff                                // 0x007e7b23    68ff010000
                         inc              edx                                       // 0x007e7b28    42
                         push             ebp                                       // 0x007e7b29    55
                         push             0x00c341c0                                // 0x007e7b2a    68c041c300
                         {disp8} mov      dword ptr [esi + 0x04], edx               // 0x007e7b2f    895604
                         call             _strncpy                                  // 0x007e7b32    e86915feff
                         add              esp, 0x0c                                 // 0x007e7b37    83c40c
                         mov.s            ecx, esi                                  // 0x007e7b3a    8bce
                         push             ebp                                       // 0x007e7b3c    55
                         call             _jmp_addr_0x007e7bf0                      // 0x007e7b3d    e8ae000000
                         cmp              eax, 0x03                                 // 0x007e7b42    83f803
                         {disp8} jne      _jmp_addr_0x007e7b4f                      // 0x007e7b45    7508
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000002        // 0x007e7b47    c744241402000000
_jmp_addr_0x007e7b4f:    {disp8} mov      ecx, dword ptr [esp + 0x14]               // 0x007e7b4f    8b4c2414
                         xor.s            eax, eax                                  // 0x007e7b53    33c0
                         pop              edi                                       // 0x007e7b55    5f
                         pop              esi                                       // 0x007e7b56    5e
                         test             ecx, ecx                                  // 0x007e7b57    85c9
                         pop              ebp                                       // 0x007e7b59    5d
                         pop              ebx                                       // 0x007e7b5a    5b
                         sete             al                                        // 0x007e7b5b    0f94c0
                         add              esp, 0x0c                                 // 0x007e7b5e    83c40c
                         ret              0x0008                                    // 0x007e7b61    c20800
                         nop                                                        // 0x007e7b64    90
                         nop                                                        // 0x007e7b65    90
                         nop                                                        // 0x007e7b66    90
                         nop                                                        // 0x007e7b67    90
                         nop                                                        // 0x007e7b68    90
                         nop                                                        // 0x007e7b69    90
                         nop                                                        // 0x007e7b6a    90
                         nop                                                        // 0x007e7b6b    90
                         nop                                                        // 0x007e7b6c    90
                         nop                                                        // 0x007e7b6d    90
                         nop                                                        // 0x007e7b6e    90
                         nop                                                        // 0x007e7b6f    90
_jmp_addr_0x007e7b70:    push             ecx                                       // 0x007e7b70    51
                         {disp8} mov      eax, dword ptr [esp + 0x10]               // 0x007e7b71    8b442410
                         push             ebx                                       // 0x007e7b75    53
                         push             ebp                                       // 0x007e7b76    55
                         xor.s            ebp, ebp                                  // 0x007e7b77    33ed
                         xor.s            ebx, ebx                                  // 0x007e7b79    33db
                         push             esi                                       // 0x007e7b7b    56
                         cmp.s            eax, ebp                                  // 0x007e7b7c    3bc5
                         push             edi                                       // 0x007e7b7e    57
                         {disp8} mov      dword ptr [esp + 0x10], ebp               // 0x007e7b7f    896c2410
                         {disp8} jbe      _jmp_addr_0x007e7bd0                      // 0x007e7b83    764b
                         {disp8} mov      edi, dword ptr [esp + 0x18]               // 0x007e7b85    8b7c2418
_jmp_addr_0x007e7b89:    cmp.s            ebx, ebp                                  // 0x007e7b89    3bdd
                         {disp8} jne      _jmp_addr_0x007e7bd0                      // 0x007e7b8b    7543
                         {disp8} mov      esi, dword ptr [esp + 0x1c]               // 0x007e7b8d    8b74241c
_jmp_addr_0x007e7b91:    {disp8} lea      eax, dword ptr [esp + 0x18]               // 0x007e7b91    8d442418
                         mov.s            ecx, edi                                  // 0x007e7b95    8bcf
                         push             eax                                       // 0x007e7b97    50
                         push             0x2                                       // 0x007e7b98    6a02
                         push             esi                                       // 0x007e7b9a    56
                         {disp8} mov      dword ptr [esp + 0x24], ebp               // 0x007e7b9b    896c2424
                         call             @Read__8LHOSFileFPvUlPUl@20               // 0x007e7b9f    e83c4dfdff
                         cmp              eax, 0x03                                 // 0x007e7ba4    83f803
                         {disp8} je       _jmp_addr_0x007e7baf                      // 0x007e7ba7    7406
                         cmp              dword ptr [esp + 0x18], ebp               // 0x007e7ba9    396c2418
                         {disp8} jne      _jmp_addr_0x007e7bb4                      // 0x007e7bad    7505
_jmp_addr_0x007e7baf:    mov              ebx, 0x00000002                           // 0x007e7baf    bb02000000
_jmp_addr_0x007e7bb4:    cmp              word ptr [esi], 0x0a                      // 0x007e7bb4    66833e0a
                         {disp8} je       _jmp_addr_0x007e7bbf                      // 0x007e7bb8    7405
                         add              esi, 0x02                                 // 0x007e7bba    83c602
                         {disp8} jmp      _jmp_addr_0x007e7b91                      // 0x007e7bbd    ebd2
_jmp_addr_0x007e7bbf:    {disp8} mov      eax, dword ptr [esp + 0x10]               // 0x007e7bbf    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x20]               // 0x007e7bc3    8b4c2420
                         inc              eax                                       // 0x007e7bc7    40
                         cmp.s            eax, ecx                                  // 0x007e7bc8    3bc1
                         {disp8} mov      dword ptr [esp + 0x10], eax               // 0x007e7bca    89442410
                         .byte            0x72, 0xb9// {disp8} jb _jmp_addr_0x007e7b89 // 0x007e7bce    72b9
_jmp_addr_0x007e7bd0:    xor.s            eax, eax                                  // 0x007e7bd0    33c0
                         pop              edi                                       // 0x007e7bd2    5f
                         cmp.s            ebx, ebp                                  // 0x007e7bd3    3bdd
                         pop              esi                                       // 0x007e7bd5    5e
                         pop              ebp                                       // 0x007e7bd6    5d
                         pop              ebx                                       // 0x007e7bd7    5b
                         sete             al                                        // 0x007e7bd8    0f94c0
                         pop              ecx                                       // 0x007e7bdb    59
                         ret              0x000c                                    // 0x007e7bdc    c20c00
                         nop                                                        // 0x007e7bdf    90
_jmp_addr_0x007e7be0:    mov              dword ptr [ecx], 0xffffffff               // 0x007e7be0    c701ffffffff
                         ret                                                        // 0x007e7be6    c3
                         nop                                                        // 0x007e7be7    90
                         nop                                                        // 0x007e7be8    90
                         nop                                                        // 0x007e7be9    90
                         nop                                                        // 0x007e7bea    90
                         nop                                                        // 0x007e7beb    90
                         nop                                                        // 0x007e7bec    90
                         nop                                                        // 0x007e7bed    90
                         nop                                                        // 0x007e7bee    90
                         nop                                                        // 0x007e7bef    90
_jmp_addr_0x007e7bf0:    sub              esp, 0x000007e4                           // 0x007e7bf0    81ece4070000
                         push             ebx                                       // 0x007e7bf6    53
                         push             ebp                                       // 0x007e7bf7    55
                         mov.s            ebp, ecx                                  // 0x007e7bf8    8be9
                         push             esi                                       // 0x007e7bfa    56
                         push             edi                                       // 0x007e7bfb    57
                         {disp8} mov      dword ptr [esp + 0x18], ebp               // 0x007e7bfc    896c2418
                         {disp8} mov      byte ptr [esp + 0x13], 0x00               // 0x007e7c00    c644241300
_jmp_addr_0x007e7c05:    {disp8} lea      eax, dword ptr [esp + 0x13]               // 0x007e7c05    8d442413
                         {disp8} lea      ecx, dword ptr [esp + 0x24]               // 0x007e7c09    8d4c2424
                         push             eax                                       // 0x007e7c0d    50
                         {disp32} lea     edx, dword ptr [esp + 0x000007fc]         // 0x007e7c0e    8d9424fc070000
                         mov              esi, 0x00000001                           // 0x007e7c15    be01000000
                         push             ecx                                       // 0x007e7c1a    51
                         push             edx                                       // 0x007e7c1b    52
                         mov.s            ecx, ebp                                  // 0x007e7c1c    8bcd
                         {disp8} mov      dword ptr [esp + 0x28], esi               // 0x007e7c1e    89742428
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000        // 0x007e7c22    c744242c00000000
                         call             _jmp_addr_0x007e95d0                      // 0x007e7c2a    e8a1190000
                         cmp              eax, 0x1e                                 // 0x007e7c2f    83f81e
                         {disp8} mov      dword ptr [esp + 0x14], eax               // 0x007e7c32    89442414
                         {disp32} ja      _jmp_addr_0x007e7d8f                      // 0x007e7c36    0f8753010000
                         xor.s            ecx, ecx                                  // 0x007e7c3c    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x007e7f8c]           // 0x007e7c3e    8a888c7f7e00
                         jmp              dword ptr [ecx*4 + 0x7e7f74]              // 0x007e7c44    ff248d747f7e00
                         {disp8} mov      eax, dword ptr [ebp + 0x00]               // 0x007e7c4b    8b4500
                         cmp              eax, -0x01                                // 0x007e7c4e    83f8ff
                         {disp8} lea      edx, dword ptr [eax + -0x01]              // 0x007e7c51    8d50ff
                         {disp8} mov      dword ptr [ebp + 0x00], edx               // 0x007e7c54    895500
                         {disp32} jle     _jmp_addr_0x007e7f62                      // 0x007e7c57    0f8e05030000
                         {disp32} jmp     _jmp_addr_0x007e7f47                      // 0x007e7c5d    e9e5020000
                         {disp8} lea      eax, dword ptr [esp + 0x24]               // 0x007e7c62    8d442424
                         mov.s            ecx, ebp                                  // 0x007e7c66    8bcd
                         push             eax                                       // 0x007e7c68    50
                         call             _jmp_addr_0x007e98d0                      // 0x007e7c69    e8621c0000
                         mov.s            esi, eax                                  // 0x007e7c6e    8bf0
                         test             esi, esi                                  // 0x007e7c70    85f6
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7c72    0f84ea020000
                         {disp8} lea      ecx, dword ptr [esp + 0x13]               // 0x007e7c78    8d4c2413
                         {disp8} lea      edx, dword ptr [esp + 0x24]               // 0x007e7c7c    8d542424
                         push             ecx                                       // 0x007e7c80    51
                         {disp32} lea     eax, dword ptr [esp + 0x000007fc]         // 0x007e7c81    8d8424fc070000
                         push             edx                                       // 0x007e7c88    52
                         push             eax                                       // 0x007e7c89    50
                         mov.s            ecx, ebp                                  // 0x007e7c8a    8bcd
                         call             _jmp_addr_0x007e95d0                      // 0x007e7c8c    e83f190000
                         {disp8} mov      al, byte ptr [esp + 0x13]                 // 0x007e7c91    8a442413
                         test             al, al                                    // 0x007e7c95    84c0
                         {disp32} jne     _jmp_addr_0x007e7f62                      // 0x007e7c97    0f85c5020000
                         cmp              word ptr [esp + 0x24], 0x3d               // 0x007e7c9d    66837c24243d
                         {disp32} jne     _jmp_addr_0x007e7f62                      // 0x007e7ca3    0f85b9020000
                         {disp8} lea      ecx, dword ptr [esp + 0x13]               // 0x007e7ca9    8d4c2413
                         {disp8} lea      edx, dword ptr [esp + 0x24]               // 0x007e7cad    8d542424
                         push             ecx                                       // 0x007e7cb1    51
                         {disp32} lea     eax, dword ptr [esp + 0x000007fc]         // 0x007e7cb2    8d8424fc070000
                         push             edx                                       // 0x007e7cb9    52
                         push             eax                                       // 0x007e7cba    50
                         mov.s            ecx, ebp                                  // 0x007e7cbb    8bcd
                         call             _jmp_addr_0x007e95d0                      // 0x007e7cbd    e80e190000
                         mov              eax, dword ptr [esi]                      // 0x007e7cc2    8b06
                         sub              eax, 0x00                                 // 0x007e7cc4    83e800
                         {disp8} je       _jmp_addr_0x007e7d37                      // 0x007e7cc7    746e
                         dec              eax                                       // 0x007e7cc9    48
                         {disp8} je       _jmp_addr_0x007e7ce8                      // 0x007e7cca    741c
                         dec              eax                                       // 0x007e7ccc    48
                         {disp32} jne     _jmp_addr_0x007e7f47                      // 0x007e7ccd    0f8574020000
                         {disp8} lea      ecx, dword ptr [esp + 0x24]               // 0x007e7cd3    8d4c2424
                         push             ecx                                       // 0x007e7cd7    51
                         call             _jmp_addr_0x007e7180                      // 0x007e7cd8    e8a3f4ffff
                         {disp8} fstp     dword ptr [esi + 0x08]                    // 0x007e7cdd    d95e08
                         add              esp, 0x04                                 // 0x007e7ce0    83c404
                         {disp32} jmp     _jmp_addr_0x007e7f47                      // 0x007e7ce3    e95f020000
_jmp_addr_0x007e7ce8:    {disp8} mov      eax, dword ptr [esi + 0x08]               // 0x007e7ce8    8b4608
                         test             eax, eax                                  // 0x007e7ceb    85c0
                         {disp8} je       _jmp_addr_0x007e7cf8                      // 0x007e7ced    7409
                         push             eax                                       // 0x007e7cef    50
                         call             ??3@YAXPAX@Z                              // 0x007e7cf0    e8a371fcff
                         add              esp, 0x04                                 // 0x007e7cf5    83c404
_jmp_addr_0x007e7cf8:    {disp8} lea      edx, dword ptr [esp + 0x24]               // 0x007e7cf8    8d542424
                         push             edx                                       // 0x007e7cfc    52
                         call             _jmp_addr_0x007e6fe0                      // 0x007e7cfd    e8def2ffff
                         push             0x000002e1                                // 0x007e7d02    68e1020000
                         {disp8} lea      eax, dword ptr [eax + eax * 0x1 + 0x02]   // 0x007e7d07    8d440002
                         push             0x00c34da4                                // 0x007e7d0b    68a44dc300
                         push             eax                                       // 0x007e7d10    50
                         call             ___nw__FUl                                // 0x007e7d11    e87a3affff
                         add              esp, 0x10                                 // 0x007e7d16    83c410
                         {disp8} mov      dword ptr [esi + 0x08], eax               // 0x007e7d19    894608
                         test             eax, eax                                  // 0x007e7d1c    85c0
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7d1e    0f843e020000
                         {disp8} lea      ecx, dword ptr [esp + 0x24]               // 0x007e7d24    8d4c2424
                         push             ecx                                       // 0x007e7d28    51
                         push             eax                                       // 0x007e7d29    50
                         call             _jmp_addr_0x007e6fc0                      // 0x007e7d2a    e891f2ffff
                         add              esp, 0x08                                 // 0x007e7d2f    83c408
                         {disp32} jmp     _jmp_addr_0x007e7f47                      // 0x007e7d32    e910020000
_jmp_addr_0x007e7d37:    {disp8} lea      edx, dword ptr [esp + 0x24]               // 0x007e7d37    8d542424
                         push             edx                                       // 0x007e7d3b    52
                         call             _jmp_addr_0x007e71a0                      // 0x007e7d3c    e85ff4ffff
                         add              esp, 0x04                                 // 0x007e7d41    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax               // 0x007e7d44    894608
                         {disp32} jmp     _jmp_addr_0x007e7f47                      // 0x007e7d47    e9fb010000
                         {disp8} mov      eax, dword ptr [ebp + 0x00]               // 0x007e7d4c    8b4500
                         cmp              eax, -0x01                                // 0x007e7d4f    83f8ff
                         {disp8} je       _jmp_addr_0x007e7d60                      // 0x007e7d52    740c
                         {disp8} mov      cl, byte ptr [eax + ebp * 0x1 + 0x08]     // 0x007e7d54    8a4c2808
                         test             cl, cl                                    // 0x007e7d58    84c9
                         {disp32} je      _jmp_addr_0x007e7f53                      // 0x007e7d5a    0f84f3010000
_jmp_addr_0x007e7d60:    {disp8} lea      eax, dword ptr [esp + 0x13]               // 0x007e7d60    8d442413
                         {disp8} lea      ecx, dword ptr [esp + 0x24]               // 0x007e7d64    8d4c2424
                         push             eax                                       // 0x007e7d68    50
                         {disp32} lea     edx, dword ptr [esp + 0x000007fc]         // 0x007e7d69    8d9424fc070000
                         push             ecx                                       // 0x007e7d70    51
                         push             edx                                       // 0x007e7d71    52
                         mov.s            ecx, ebp                                  // 0x007e7d72    8bcd
                         call             _jmp_addr_0x007e95d0                      // 0x007e7d74    e857180000
                         test             eax, eax                                  // 0x007e7d79    85c0
                         {disp8} mov      dword ptr [esp + 0x14], eax               // 0x007e7d7b    89442414
                         {disp8} je       _jmp_addr_0x007e7d8b                      // 0x007e7d7f    740a
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000002        // 0x007e7d81    c744241c02000000
                         {disp8} jmp      _jmp_addr_0x007e7d8f                      // 0x007e7d89    eb04
_jmp_addr_0x007e7d8b:    {disp8} mov      dword ptr [esp + 0x20], esi               // 0x007e7d8b    89742420
_jmp_addr_0x007e7d8f:    {disp8} mov      eax, dword ptr [ebp + 0x00]               // 0x007e7d8f    8b4500
                         cmp              eax, -0x01                                // 0x007e7d92    83f8ff
                         {disp8} je       _jmp_addr_0x007e7da3                      // 0x007e7d95    740c
                         {disp8} mov      cl, byte ptr [eax + ebp * 0x1 + 0x08]     // 0x007e7d97    8a4c2808
                         test             cl, cl                                    // 0x007e7d9b    84c9
                         {disp32} je      _jmp_addr_0x007e7f53                      // 0x007e7d9d    0f84b0010000
_jmp_addr_0x007e7da3:    {disp8} mov      eax, dword ptr [esp + 0x14]               // 0x007e7da3    8b442414
                         test             eax, eax                                  // 0x007e7da7    85c0
                         {disp8} jle      _jmp_addr_0x007e7db6                      // 0x007e7da9    7e0b
                         shl              eax, 4                                    // 0x007e7dab    c1e004
                         {disp32} lea     ebx, dword ptr [eax + 0x00c345a0]         // 0x007e7dae    8d98a045c300
                         {disp8} jmp      _jmp_addr_0x007e7dbf                      // 0x007e7db4    eb09
_jmp_addr_0x007e7db6:    {disp8} mov      ebx, dword ptr [ebp + 0x20]               // 0x007e7db6    8b5d20
                         inc              eax                                       // 0x007e7db9    40
                         shl              eax, 4                                    // 0x007e7dba    c1e004
                         sub.s            ebx, eax                                  // 0x007e7dbd    2bd8
_jmp_addr_0x007e7dbf:    cmp              dword ptr [esp + 0x1c], esi               // 0x007e7dbf    3974241c
                         {disp32} jl      _jmp_addr_0x007e7f47                      // 0x007e7dc3    0f8c7e010000
_jmp_addr_0x007e7dc9:    {disp8} mov      esi, dword ptr [esp + 0x20]               // 0x007e7dc9    8b742420
                         cmp              esi, 0x0c                                 // 0x007e7dcd    83fe0c
                         mov.s            edi, esi                                  // 0x007e7dd0    8bfe
                         {disp32} jae     _jmp_addr_0x007e7eb7                      // 0x007e7dd2    0f83df000000
                         {disp32} lea     ebp, dword ptr [esi * 0x4 + 0x00fb9d10]   // 0x007e7dd8    8d2cb5109dfb00
                         shl              esi, 0xc                                  // 0x007e7ddf    c1e60c
                         add              esi, 0x00fadce0                           // 0x007e7de2    81c6e0dcfa00
_jmp_addr_0x007e7de8:    cmp              byte ptr [ebx + edi * 0x1 + 0x04], 0x20   // 0x007e7de8    807c3b0420
                         {disp32} je      _jmp_addr_0x007e7eb3                      // 0x007e7ded    0f84c0000000
                         {disp8} mov      al, byte ptr [esp + 0x13]                 // 0x007e7df3    8a442413
                         test             al, al                                    // 0x007e7df7    84c0
                         {disp32} jne     _jmp_addr_0x007e7eb3                      // 0x007e7df9    0f85b4000000
                         {disp8} lea      eax, dword ptr [esp + 0x13]               // 0x007e7dff    8d442413
                         {disp32} lea     ecx, dword ptr [esp + 0x000007f8]         // 0x007e7e03    8d8c24f8070000
                         push             eax                                       // 0x007e7e0a    50
                         push             esi                                       // 0x007e7e0b    56
                         push             ecx                                       // 0x007e7e0c    51
                         {disp8} mov      ecx, dword ptr [esp + 0x24]               // 0x007e7e0d    8b4c2424
                         call             _jmp_addr_0x007e95d0                      // 0x007e7e11    e8ba170000
                         cmp              eax, 0x1e                                 // 0x007e7e16    83f81e
                         {disp8} jne      _jmp_addr_0x007e7e77                      // 0x007e7e19    755c
                         {disp8} mov      ecx, dword ptr [esp + 0x18]               // 0x007e7e1b    8b4c2418
                         push             esi                                       // 0x007e7e1f    56
                         call             _jmp_addr_0x007e98d0                      // 0x007e7e20    e8ab1a0000
                         test             eax, eax                                  // 0x007e7e25    85c0
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7e27    0f8435010000
                         mov              ecx, dword ptr [eax]                      // 0x007e7e2d    8b08
                         sub              ecx, 0x00                                 // 0x007e7e2f    83e900
                         {disp8} je       _jmp_addr_0x007e7e64                      // 0x007e7e32    7430
                         dec              ecx                                       // 0x007e7e34    49
                         {disp8} je       _jmp_addr_0x007e7e4d                      // 0x007e7e35    7416
                         dec              ecx                                       // 0x007e7e37    49
                         {disp8} jne      _jmp_addr_0x007e7e9d                      // 0x007e7e38    7563
                         cmp              byte ptr [ebx + edi * 0x1 + 0x04], 0x46   // 0x007e7e3a    807c3b0446
                         {disp32} jne     _jmp_addr_0x007e7f62                      // 0x007e7e3f    0f851d010000
                         {disp8} mov      edx, dword ptr [eax + 0x08]               // 0x007e7e45    8b5008
                         {disp8} mov      dword ptr [ebp + 0x00], edx               // 0x007e7e48    895500
                         {disp8} jmp      _jmp_addr_0x007e7e9d                      // 0x007e7e4b    eb50
_jmp_addr_0x007e7e4d:    {disp8} mov      eax, dword ptr [eax + 0x08]               // 0x007e7e4d    8b4008
                         test             eax, eax                                  // 0x007e7e50    85c0
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7e52    0f840a010000
                         push             eax                                       // 0x007e7e58    50
                         push             esi                                       // 0x007e7e59    56
                         call             _jmp_addr_0x007e6fc0                      // 0x007e7e5a    e861f1ffff
                         add              esp, 0x08                                 // 0x007e7e5f    83c408
                         {disp8} jmp      _jmp_addr_0x007e7e9d                      // 0x007e7e62    eb39
_jmp_addr_0x007e7e64:    cmp              byte ptr [ebx + edi * 0x1 + 0x04], 0x4e   // 0x007e7e64    807c3b044e
                         {disp32} jne     _jmp_addr_0x007e7f62                      // 0x007e7e69    0f85f3000000
                         {disp8} mov      eax, dword ptr [eax + 0x08]               // 0x007e7e6f    8b4008
                         {disp8} mov      dword ptr [ebp + -0x30], eax              // 0x007e7e72    8945d0
                         {disp8} jmp      _jmp_addr_0x007e7e9d                      // 0x007e7e75    eb26
_jmp_addr_0x007e7e77:    {disp8} mov      al, byte ptr [ebx + edi * 0x1 + 0x04]     // 0x007e7e77    8a443b04
                         cmp              al, 0x4e                                  // 0x007e7e7b    3c4e
                         {disp8} jne      _jmp_addr_0x007e7e8d                      // 0x007e7e7d    750e
                         push             esi                                       // 0x007e7e7f    56
                         call             _jmp_addr_0x007e71c0                      // 0x007e7e80    e83bf3ffff
                         add              esp, 0x04                                 // 0x007e7e85    83c404
                         {disp8} mov      dword ptr [ebp + -0x30], eax              // 0x007e7e88    8945d0
                         {disp8} jmp      _jmp_addr_0x007e7e9d                      // 0x007e7e8b    eb10
_jmp_addr_0x007e7e8d:    cmp              al, 0x46                                  // 0x007e7e8d    3c46
                         {disp8} jne      _jmp_addr_0x007e7e9d                      // 0x007e7e8f    750c
                         push             esi                                       // 0x007e7e91    56
                         call             _jmp_addr_0x007e7180                      // 0x007e7e92    e8e9f2ffff
                         {disp8} fstp     dword ptr [ebp + 0x00]                    // 0x007e7e97    d95d00
                         add              esp, 0x04                                 // 0x007e7e9a    83c404
_jmp_addr_0x007e7e9d:    add              esi, 0x00001000                           // 0x007e7e9d    81c600100000
                         inc              edi                                       // 0x007e7ea3    47
                         add              ebp, 0x04                                 // 0x007e7ea4    83c504
                         cmp              esi, 0x00fb9ce0                           // 0x007e7ea7    81fee09cfb00
                         {disp32} jb      _jmp_addr_0x007e7de8                      // 0x007e7ead    0f8235ffffff
_jmp_addr_0x007e7eb3:    {disp8} mov      ebp, dword ptr [esp + 0x18]               // 0x007e7eb3    8b6c2418
_jmp_addr_0x007e7eb7:    cmp              edi, 0x0c                                 // 0x007e7eb7    83ff0c
                         {disp8} je       _jmp_addr_0x007e7ee0                      // 0x007e7eba    7424
                         {disp8} mov      al, byte ptr [ebx + edi * 0x1 + 0x04]     // 0x007e7ebc    8a443b04
                         cmp              al, 0x4c                                  // 0x007e7ec0    3c4c
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7ec2    0f849a000000
                         cmp              al, 0x41                                  // 0x007e7ec8    3c41
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7eca    0f8492000000
                         cmp              al, 0x4e                                  // 0x007e7ed0    3c4e
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7ed2    0f848a000000
                         cmp              al, 0x46                                  // 0x007e7ed8    3c46
                         {disp32} je      _jmp_addr_0x007e7f62                      // 0x007e7eda    0f8482000000
_jmp_addr_0x007e7ee0:    {disp8} mov      esi, dword ptr [esp + 0x1c]               // 0x007e7ee0    8b74241c
                         cmp              esi, 0x02                                 // 0x007e7ee4    83fe02
                         {disp8} jne      _jmp_addr_0x007e7f28                      // 0x007e7ee7    753f
                         cmp              byte ptr [esp + 0x13], 0x01               // 0x007e7ee9    807c241301
                         {disp8} je       _jmp_addr_0x007e7f62                      // 0x007e7eee    7472
                         {disp8} mov      ecx, dword ptr [esp + 0x14]               // 0x007e7ef0    8b4c2414
                         push             0xa                                       // 0x007e7ef4    6a0a
                         push             0x00fadce0                                // 0x007e7ef6    68e0dcfa00
                         push             0x00fadce0                                // 0x007e7efb    68e0dcfa00
                         push             ecx                                       // 0x007e7f00    51
                         mov.s            ecx, ebp                                  // 0x007e7f01    8bcd
                         call             _jmp_addr_0x007e8e20                      // 0x007e7f03    e8180f0000
                         push             eax                                       // 0x007e7f08    50
                         call             _jmp_addr_0x007e7240                      // 0x007e7f09    e832f3ffff
                         add              esp, 0x0c                                 // 0x007e7f0e    83c40c
                         mov              ebx, 0x00c34750                           // 0x007e7f11    bb5047c300
                         {disp8} mov      dword ptr [esp + 0x14], 0x0000001b        // 0x007e7f16    c74424141b000000
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000001        // 0x007e7f1e    c744242001000000
                         {disp8} jmp      _jmp_addr_0x007e7f39                      // 0x007e7f26    eb11
_jmp_addr_0x007e7f28:    {disp8} mov      edx, dword ptr [esp + 0x14]               // 0x007e7f28    8b542414
                         push             0x00fadce0                                // 0x007e7f2c    68e0dcfa00
                         push             edx                                       // 0x007e7f31    52
                         mov.s            ecx, ebp                                  // 0x007e7f32    8bcd
                         call             _jmp_addr_0x007e8e20                      // 0x007e7f34    e8e70e0000
_jmp_addr_0x007e7f39:    dec              esi                                       // 0x007e7f39    4e
                         cmp              esi, 0x01                                 // 0x007e7f3a    83fe01
                         {disp8} mov      dword ptr [esp + 0x1c], esi               // 0x007e7f3d    8974241c
                         {disp32} jge     _jmp_addr_0x007e7dc9                      // 0x007e7f41    0f8d82feffff
_jmp_addr_0x007e7f47:    {disp8} mov      al, byte ptr [esp + 0x13]                 // 0x007e7f47    8a442413
                         test             al, al                                    // 0x007e7f4b    84c0
                         {disp32} je      _jmp_addr_0x007e7c05                      // 0x007e7f4d    0f84b2fcffff
_jmp_addr_0x007e7f53:    pop              edi                                       // 0x007e7f53    5f
                         pop              esi                                       // 0x007e7f54    5e
                         pop              ebp                                       // 0x007e7f55    5d
                         xor.s            eax, eax                                  // 0x007e7f56    33c0
                         pop              ebx                                       // 0x007e7f58    5b
                         add              esp, 0x000007e4                           // 0x007e7f59    81c4e4070000
                         ret              0x0004                                    // 0x007e7f5f    c20400
_jmp_addr_0x007e7f62:    pop              edi                                       // 0x007e7f62    5f
                         pop              esi                                       // 0x007e7f63    5e
                         pop              ebp                                       // 0x007e7f64    5d
                         mov              eax, 0x00000003                           // 0x007e7f65    b803000000
                         pop              ebx                                       // 0x007e7f6a    5b
                         add              esp, 0x000007e4                           // 0x007e7f6b    81c4e4070000
                         ret              0x0004                                    // 0x007e7f71    c20400

// Snippet: jmptbl, [0x007e7f74, 0x007e7f8c)
.byte 0x47, 0x7f, 0x7e, 0x00      // 0x007e7f74
.byte 0x4c, 0x7d, 0x7e, 0x00      // 0x007e7f78
.byte 0x4b, 0x7c, 0x7e, 0x00      // 0x007e7f7c
.byte 0x53, 0x7f, 0x7e, 0x00      // 0x007e7f80
.byte 0x62, 0x7c, 0x7e, 0x00      // 0x007e7f84
.byte 0x8f, 0x7d, 0x7e, 0x00      // 0x007e7f88

// Snippet: ijmptbl, [0x007e7f8c, 0x007e7fab)
.byte 0x00, 0x05, 0x05, 0x05      // 0x007e7f8c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e7f90
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e7f94
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e7f98
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e7f9c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e7fa0
.byte 0x05, 0x05, 0x05, 0x01      // 0x007e7fa4
.byte 0x02, 0x03, 0x04            // 0x007e7fa8

// Snippet: db, [0x007e7fab, 0x007e7fb0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e7fab
.byte 0x90                        // 0x007e7faf

