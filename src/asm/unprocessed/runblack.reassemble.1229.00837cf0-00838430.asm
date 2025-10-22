.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007a1400
.extern _LHFileLength__FPcPUl
.extern _Report3D__FPCce
.extern _jmp_addr_0x00837300
.extern _jmp_addr_0x00837400
.extern _jmp_addr_0x00838580
.extern _jmp_addr_0x00839680
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x0085dac0
.extern _jmp_addr_0x0085dc00
.extern _jmp_addr_0x008704c0
.extern _jmp_addr_0x00870610
.extern _jmp_addr_0x00871170
.extern _jmp_addr_0x0087f880
.extern _jmp_addr_0x0087f980

.globl _jmp_addr_0x00837d00
.globl ?Release@LH3DTexture@@QAEXXZ
.globl _jmp_addr_0x00837df0

start_0x00837cf0_0x00838430:
// Snippet: asm, [0x00837cf0, 0x008383de)
                         mov               eax, 0x00000001                                // 0x00837cf0    b801000000
                         ret               0x0004                                         // 0x00837cf5    c20400
                         nop                                                              // 0x00837cf8    90
                         nop                                                              // 0x00837cf9    90
                         nop                                                              // 0x00837cfa    90
                         nop                                                              // 0x00837cfb    90
                         nop                                                              // 0x00837cfc    90
                         nop                                                              // 0x00837cfd    90
                         nop                                                              // 0x00837cfe    90
                         nop                                                              // 0x00837cff    90
_jmp_addr_0x00837d00:    {disp32} mov      eax, dword ptr [data_bytes + 0x51745c]         // 0x00837d00    a15cd4ed00
                         push              eax                                            // 0x00837d05    50
                         push              0x00c38f58                                     // 0x00837d06    68588fc300
                         call              _Report3D__FPCce                               // 0x00837d0b    e8c03efeff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517460]         // 0x00837d10    8b0d60d4ed00
                         add               esp, 0x08                                      // 0x00837d16    83c408
                         test              ecx, ecx                                       // 0x00837d19    85c9
                         {disp8} je        _jmp_addr_0x00837d2c                           // 0x00837d1b    740f
_jmp_addr_0x00837d1d:    call              ?Release@LH3DTexture@@QAEXXZ                   // 0x00837d1d    e81e000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517460]         // 0x00837d22    8b0d60d4ed00
                         test              ecx, ecx                                       // 0x00837d28    85c9
                         {disp8} jne       _jmp_addr_0x00837d1d                           // 0x00837d2a    75f1
_jmp_addr_0x00837d2c:    {disp32} mov      dword ptr [data_bytes + 0x517460], 0x00000000  // 0x00837d2c    c70560d4ed0000000000
                         ret                                                              // 0x00837d36    c3
                         nop                                                              // 0x00837d37    90
                         nop                                                              // 0x00837d38    90
                         nop                                                              // 0x00837d39    90
                         nop                                                              // 0x00837d3a    90
                         nop                                                              // 0x00837d3b    90
                         nop                                                              // 0x00837d3c    90
                         nop                                                              // 0x00837d3d    90
                         nop                                                              // 0x00837d3e    90
                         nop                                                              // 0x00837d3f    90
?Release@LH3DTexture@@QAEXXZ:
                                push              esi                                            // 0x00837d40    56
                         mov.s             esi, ecx                                       // 0x00837d41    8bf1
                         mov               eax, dword ptr [esi]                           // 0x00837d43    8b06
                         push              edi                                            // 0x00837d45    57
                         xor.s             edi, edi                                       // 0x00837d46    33ff
                         cmp.s             eax, edi                                       // 0x00837d48    3bc7
                         {disp8} je        _jmp_addr_0x00837d57                           // 0x00837d4a    740b
                         mov               dword ptr [eax], edi                           // 0x00837d4c    8938
                         mov               ecx, dword ptr [esi]                           // 0x00837d4e    8b0e
                         call              _jmp_addr_0x00870610                           // 0x00837d50    e8bb880300
                         mov               dword ptr [esi], edi                           // 0x00837d55    893e
_jmp_addr_0x00837d57:    {disp8} mov       eax, dword ptr [esi + 0x04]                    // 0x00837d57    8b4604
                         cmp.s             eax, edi                                       // 0x00837d5a    3bc7
                         {disp8} je        _jmp_addr_0x00837d64                           // 0x00837d5c    7406
                         {disp8} mov       dword ptr [eax + 0x04], edi                    // 0x00837d5e    897804
                         {disp8} mov       dword ptr [esi + 0x04], edi                    // 0x00837d61    897e04
_jmp_addr_0x00837d64:    {disp32} mov      eax, dword ptr [esi + 0x0000012c]              // 0x00837d64    8b862c010000
                         cmp.s             eax, edi                                       // 0x00837d6a    3bc7
                         {disp8} je        _jmp_addr_0x00837d7d                           // 0x00837d6c    740f
                         push              eax                                            // 0x00837d6e    50
                         call              ?Free@LH3DMem@@SAXPAX@Z                        // 0x00837d6f    e8ecaf0000
                         add               esp, 0x04                                      // 0x00837d74    83c404
                         {disp32} mov      dword ptr [esi + 0x0000012c], edi              // 0x00837d77    89be2c010000
_jmp_addr_0x00837d7d:    {disp32} mov      ecx, dword ptr [esi + 0x00000120]              // 0x00837d7d    8b8e20010000
                         cmp.s             ecx, edi                                       // 0x00837d83    3bcf
                         {disp8} je        _jmp_addr_0x00837d92                           // 0x00837d85    740b
                         call              _jmp_addr_0x0087f880                           // 0x00837d87    e8f47a0400
                         {disp32} mov      dword ptr [esi + 0x00000120], edi              // 0x00837d8c    89be20010000
_jmp_addr_0x00837d92:    {disp32} mov      eax, dword ptr [esi + 0x00000124]              // 0x00837d92    8b8624010000
                         cmp.s             eax, edi                                       // 0x00837d98    3bc7
                         {disp8} je        _jmp_addr_0x00837da8                           // 0x00837d9a    740c
                         mov               ecx, dword ptr [eax]                           // 0x00837d9c    8b08
                         push              eax                                            // 0x00837d9e    50
                         call              dword ptr [ecx + 8]                            // 0x00837d9f    ff5108
                         {disp32} mov      dword ptr [esi + 0x00000124], edi              // 0x00837da2    89be24010000
_jmp_addr_0x00837da8:    {disp32} mov      eax, dword ptr [data_bytes + 0x517460]         // 0x00837da8    a160d4ed00
                         cmp.s             eax, esi                                       // 0x00837dad    3bc6
                         {disp8} je        _jmp_addr_0x00837dc6                           // 0x00837daf    7415
_jmp_addr_0x00837db1:    mov.s             ecx, eax                                       // 0x00837db1    8bc8
                         {disp8} mov       eax, dword ptr [eax + 0x0c]                    // 0x00837db3    8b400c
                         cmp.s             eax, esi                                       // 0x00837db6    3bc6
                         {disp8} jne       _jmp_addr_0x00837db1                           // 0x00837db8    75f7
                         cmp.s             ecx, edi                                       // 0x00837dba    3bcf
                         {disp8} je        _jmp_addr_0x00837dc6                           // 0x00837dbc    7408
                         {disp8} mov       edx, dword ptr [esi + 0x0c]                    // 0x00837dbe    8b560c
                         {disp8} mov       dword ptr [ecx + 0x0c], edx                    // 0x00837dc1    89510c
                         {disp8} jmp       _jmp_addr_0x00837dce                           // 0x00837dc4    eb08
_jmp_addr_0x00837dc6:    {disp8} mov       eax, dword ptr [esi + 0x0c]                    // 0x00837dc6    8b460c
                         {disp32} mov      dword ptr [data_bytes + 0x517460], eax         // 0x00837dc9    a360d4ed00
_jmp_addr_0x00837dce:    dec               dword ptr [data_bytes + 0x51745c]              // 0x00837dce    ff0d5cd4ed00
                         push              esi                                            // 0x00837dd4    56
                         {disp8} mov       dword ptr [esi + 0x0c], edi                    // 0x00837dd5    897e0c
                         call              ?Free@LH3DMem@@SAXPAX@Z                        // 0x00837dd8    e883af0000
                         add               esp, 0x04                                      // 0x00837ddd    83c404
                         pop               edi                                            // 0x00837de0    5f
                         pop               esi                                            // 0x00837de1    5e
                         ret                                                              // 0x00837de2    c3
                         nop                                                              // 0x00837de3    90
                         nop                                                              // 0x00837de4    90
                         nop                                                              // 0x00837de5    90
                         nop                                                              // 0x00837de6    90
                         nop                                                              // 0x00837de7    90
                         nop                                                              // 0x00837de8    90
                         nop                                                              // 0x00837de9    90
                         nop                                                              // 0x00837dea    90
                         nop                                                              // 0x00837deb    90
                         nop                                                              // 0x00837dec    90
                         nop                                                              // 0x00837ded    90
                         nop                                                              // 0x00837dee    90
                         nop                                                              // 0x00837def    90
_jmp_addr_0x00837df0:    sub               esp, 0x00000098                                // 0x00837df0    81ec98000000
                         push              ebx                                            // 0x00837df6    53
                         push              ebp                                            // 0x00837df7    55
                         push              esi                                            // 0x00837df8    56
                         mov.s             esi, ecx                                       // 0x00837df9    8bf1
                         {disp8} mov       eax, dword ptr [esi + 0x14]                    // 0x00837dfb    8b4614
                         xor.s             edx, edx                                       // 0x00837dfe    33d2
                         xor.s             ebp, ebp                                       // 0x00837e00    33ed
                         cmp               eax, 0x04                                      // 0x00837e02    83f804
                         push              edi                                            // 0x00837e05    57
                         {disp8} mov       dword ptr [esp + 0x10], edx                    // 0x00837e06    89542410
                         {disp8} ja        _jmp_addr_0x00837e42                           // 0x00837e0a    7736
                         jmp               dword ptr [eax*4 + 0x8383e0]                   // 0x00837e0c    ff2485e0838300
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517474]         // 0x00837e13    a174d4ed00
                         {disp8} jmp       _jmp_addr_0x00837e3e                           // 0x00837e18    eb24
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517478]         // 0x00837e1a    8b0d78d4ed00
                         {disp8} mov       dword ptr [esp + 0x10], ecx                    // 0x00837e20    894c2410
                         {disp8} jmp       _jmp_addr_0x00837e42                           // 0x00837e24    eb1c
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517480]         // 0x00837e26    a180d4ed00
                         {disp8} jmp       _jmp_addr_0x00837e3e                           // 0x00837e2b    eb11
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x51747c]         // 0x00837e2d    8b0d7cd4ed00
                         {disp8} mov       dword ptr [esp + 0x10], ecx                    // 0x00837e33    894c2410
                         {disp8} jmp       _jmp_addr_0x00837e42                           // 0x00837e37    eb09
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517484]         // 0x00837e39    a184d4ed00
_jmp_addr_0x00837e3e:    {disp8} mov       dword ptr [esp + 0x10], eax                    // 0x00837e3e    89442410
_jmp_addr_0x00837e42:    {disp8} mov       ecx, dword ptr [esi + 0x10]                    // 0x00837e42    8b4e10
                         and               ecx, 0x3f                                      // 0x00837e45    83e13f
                         {disp8} lea       eax, dword ptr [ecx + -0x01]                   // 0x00837e48    8d41ff
                         cmp               eax, 0x1f                                      // 0x00837e4b    83f81f
                         {disp32} ja       _jmp_addr_0x00838282                           // 0x00837e4e    0f872e040000
                         xor.s             ecx, ecx                                       // 0x00837e54    33c9
                         {disp32} mov      cl, byte ptr [eax + 0x00838410]                // 0x00837e56    8a8810848300
                         jmp               dword ptr [ecx*4 + 0x8383f4]                   // 0x00837e5c    ff248df4838300
                         cmp               dword ptr [esi + 0x04], edx                    // 0x00837e63    395604
                         {disp32} jne      _jmp_addr_0x00838282                           // 0x00837e66    0f8516040000
                         cmp               dword ptr [esi + 0x00000120], edx              // 0x00837e6c    399620010000
                         {disp32} je       _jmp_addr_0x008383d1                           // 0x00837e72    0f8459050000
                         push              edx                                            // 0x00837e78    52
                         push              esi                                            // 0x00837e79    56
                         call              _jmp_addr_0x0085dac0                           // 0x00837e7a    e8415c0200
                         {disp8} mov       dword ptr [esi + 0x04], eax                    // 0x00837e7f    894604
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517450]         // 0x00837e82    8b0d50d4ed00
                         add               esp, 0x08                                      // 0x00837e88    83c408
                         test              ecx, ecx                                       // 0x00837e8b    85c9
                         {disp32} je       _jmp_addr_0x008381d4                           // 0x00837e8d    0f8441030000
                         {disp32} jmp      _jmp_addr_0x008381a5                           // 0x00837e93    e90d030000
                         mov               ecx, dword ptr [esi]                           // 0x00837e98    8b0e
                         cmp.s             ecx, edx                                       // 0x00837e9a    3bca
                         {disp32} je       _jmp_addr_0x008383d1                           // 0x00837e9c    0f842f050000
                         cmp               dword ptr [esi + 0x04], edx                    // 0x00837ea2    395604
                         {disp8} je        _jmp_addr_0x00837eb3                           // 0x00837ea5    740c
                         cmp               dword ptr [esi + 0x00000138], edx              // 0x00837ea7    399638010000
                         {disp32} je       _jmp_addr_0x00838282                           // 0x00837ead    0f84cf030000
_jmp_addr_0x00837eb3:    mov               ebp, 0x00000001                                // 0x00837eb3    bd01000000
_jmp_addr_0x00837eb8:    {disp8} mov       edx, dword ptr [esp + 0x10]                    // 0x00837eb8    8b542410
                         call              _jmp_addr_0x008704c0                           // 0x00837ebc    e8ff850300
                         {disp32} jmp      _jmp_addr_0x00838282                           // 0x00837ec1    e9bc030000
                         cmp               dword ptr [esi + 0x00000138], edx              // 0x00837ec6    399638010000
                         {disp32} je       _jmp_addr_0x00837fd8                           // 0x00837ecc    0f8406010000
                         {disp8} mov       ebx, dword ptr [esp + 0x10]                    // 0x00837ed2    8b5c2410
                         push              edx                                            // 0x00837ed6    52
                         xor.s             eax, eax                                       // 0x00837ed7    33c0
                         mov               ecx, 0x0000001f                                // 0x00837ed9    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x20]                    // 0x00837ede    8d7c2420
                         rep stosd                                                        // 0x00837ee2    f3ab
                         mov               eax, dword ptr [ebx]                           // 0x00837ee4    8b03
                         push              0x00000821                                     // 0x00837ee6    6821080000
                         {disp8} lea       ecx, dword ptr [esp + 0x24]                    // 0x00837eeb    8d4c2424
                         push              ecx                                            // 0x00837eef    51
                         push              edx                                            // 0x00837ef0    52
                         push              ebx                                            // 0x00837ef1    53
                         mov               ebp, 0x00000001                                // 0x00837ef2    bd01000000
                         {disp8} mov       dword ptr [esp + 0x30], 0x0000007c             // 0x00837ef7    c74424307c000000
                         call              dword ptr [eax + 0x64]                         // 0x00837eff    ff5064
                         {disp8} mov       ecx, dword ptr [esp + 0x40]                    // 0x00837f02    8b4c2440
                         test              ecx, ecx                                       // 0x00837f06    85c9
                         {disp8} je        _jmp_addr_0x00837f23                           // 0x00837f08    7419
                         {disp8} mov       eax, dword ptr [esi + 0x18]                    // 0x00837f0a    8b4618
                         push              eax                                            // 0x00837f0d    50
                         {disp8} mov       eax, dword ptr [esp + 0x30]                    // 0x00837f0e    8b442430
                         cdq                                                              // 0x00837f12    99
                         sub.s             eax, edx                                       // 0x00837f13    2bc2
                         mov.s             edx, eax                                       // 0x00837f15    8bd0
                         sar               edx, 1                                         // 0x00837f17    d1fa
                         call              dword ptr [esi + 0x134]                        // 0x00837f19    ff9634010000
                         mov.s             edi, eax                                       // 0x00837f1f    8bf8
                         {disp8} jmp       _jmp_addr_0x00837f29                           // 0x00837f21    eb06
_jmp_addr_0x00837f23:    {disp8} mov       edi, dword ptr [esp + 0x14]                    // 0x00837f23    8b7c2414
                         xor.s             ebp, ebp                                       // 0x00837f27    33ed
_jmp_addr_0x00837f29:    mov               edx, dword ptr [ebx]                           // 0x00837f29    8b13
                         push              0x0                                            // 0x00837f2b    6a00
                         push              ebx                                            // 0x00837f2d    53
                         call              dword ptr [edx + 0x80]                         // 0x00837f2e    ff9280000000
                         test              edi, edi                                       // 0x00837f34    85ff
                         {disp32} jne      _jmp_addr_0x00837fce                           // 0x00837f36    0f8592000000
                         {disp8} mov       eax, dword ptr [esi + 0x04]                    // 0x00837f3c    8b4604
                         test              eax, eax                                       // 0x00837f3f    85c0
                         {disp8} je        _jmp_addr_0x00837f86                           // 0x00837f41    7443
                         mov               edi, dword ptr [eax]                           // 0x00837f43    8b38
                         {disp32} mov      ebx, dword ptr [esp + 0x000000ac]              // 0x00837f45    8b9c24ac000000
                         cmp               dword ptr [ebx * 0x4 + 0x00ec81d0], edi        // 0x00837f4c    393c9dd081ec00
                         {disp8} je        _jmp_addr_0x00837fb4                           // 0x00837f53    745f
                         {disp32} mov      eax, dword ptr [_Direct3DDevice7]              // 0x00837f55    a138a6ec00
                         mov               ecx, dword ptr [eax]                           // 0x00837f5a    8b08
                         push              edi                                            // 0x00837f5c    57
                         push              ebx                                            // 0x00837f5d    53
                         push              eax                                            // 0x00837f5e    50
                         call              dword ptr [ecx + 0x8c]                         // 0x00837f5f    ff918c000000
                         xor.s             eax, eax                                       // 0x00837f65    33c0
                         test              ebp, ebp                                       // 0x00837f67    85ed
                         sete              al                                             // 0x00837f69    0f94c0
                         {disp32} mov      dword ptr [ebx * 0x4 + 0x00ec81d0], edi        // 0x00837f6c    893c9dd081ec00
                         pop               edi                                            // 0x00837f73    5f
                         {disp32} mov      dword ptr [esi + 0x00000138], eax              // 0x00837f74    898638010000
                         pop               esi                                            // 0x00837f7a    5e
                         pop               ebp                                            // 0x00837f7b    5d
                         pop               ebx                                            // 0x00837f7c    5b
                         add               esp, 0x00000098                                // 0x00837f7d    81c498000000
                         ret               0x0004                                         // 0x00837f83    c20400
_jmp_addr_0x00837f86:    {disp32} mov      edi, dword ptr [esp + 0x000000ac]              // 0x00837f86    8bbc24ac000000
                         {disp32} mov      eax, dword ptr [edi * 0x4 + 0x00ec81d0]        // 0x00837f8d    8b04bdd081ec00
                         test              eax, eax                                       // 0x00837f94    85c0
                         {disp8} je        _jmp_addr_0x00837fb4                           // 0x00837f96    741c
                         {disp32} mov      eax, dword ptr [_Direct3DDevice7]              // 0x00837f98    a138a6ec00
                         mov               edx, dword ptr [eax]                           // 0x00837f9d    8b10
                         push              0x0                                            // 0x00837f9f    6a00
                         push              edi                                            // 0x00837fa1    57
                         push              eax                                            // 0x00837fa2    50
                         call              dword ptr [edx + 0x8c]                         // 0x00837fa3    ff928c000000
                         {disp32} mov      dword ptr [edi * 0x4 + 0x00ec81d0], 0x00000000 // 0x00837fa9    c704bdd081ec0000000000
_jmp_addr_0x00837fb4:    xor.s             eax, eax                                       // 0x00837fb4    33c0
                         test              ebp, ebp                                       // 0x00837fb6    85ed
                         sete              al                                             // 0x00837fb8    0f94c0
                         pop               edi                                            // 0x00837fbb    5f
                         {disp32} mov      dword ptr [esi + 0x00000138], eax              // 0x00837fbc    898638010000
                         pop               esi                                            // 0x00837fc2    5e
                         pop               ebp                                            // 0x00837fc3    5d
                         pop               ebx                                            // 0x00837fc4    5b
                         add               esp, 0x00000098                                // 0x00837fc5    81c498000000
                         ret               0x0004                                         // 0x00837fcb    c20400
_jmp_addr_0x00837fce:    mov               ebp, 0x00000001                                // 0x00837fce    bd01000000
                         {disp32} jmp      _jmp_addr_0x00838282                           // 0x00837fd3    e9aa020000
_jmp_addr_0x00837fd8:    cmp               dword ptr [esi + 0x04], edx                    // 0x00837fd8    395604
                         {disp32} je       _jmp_addr_0x008383d1                           // 0x00837fdb    0f84f0030000
                         {disp32} jmp      _jmp_addr_0x00838282                           // 0x00837fe1    e99c020000
                         cmp               dword ptr [esi + 0x04], edx                    // 0x00837fe6    395604
                         {disp32} jne      _jmp_addr_0x00838282                           // 0x00837fe9    0f8593020000
                         mov               ecx, dword ptr [esi]                           // 0x00837fef    8b0e
                         cmp.s             ecx, edx                                       // 0x00837ff1    3bca
                         mov               ebp, 0x00000001                                // 0x00837ff3    bd01000000
                         {disp32} jne      _jmp_addr_0x00837eb8                           // 0x00837ff8    0f85bafeffff
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                    // 0x00837ffe    8d4c2414
                         push              ecx                                            // 0x00838002    51
                         {disp8} lea       ebx, dword ptr [esi + 0x1c]                    // 0x00838003    8d5e1c
                         push              ebx                                            // 0x00838006    53
                         {disp8} mov       dword ptr [esp + 0x1c], edx                    // 0x00838007    8954241c
                         call              _LHFileLength__FPcPUl                          // 0x0083800b    e85049f8ff
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                    // 0x00838010    8b44241c
                         add               esp, 0x08                                      // 0x00838014    83c408
                         test              eax, eax                                       // 0x00838017    85c0
                         {disp32} je       _jmp_addr_0x008380ec                           // 0x00838019    0f84cd000000
                         push              ebx                                            // 0x0083801f    53
                         call              _jmp_addr_0x00837300                           // 0x00838020    e8dbf2ffff
                         add               esp, 0x04                                      // 0x00838025    83c404
                         test              eax, eax                                       // 0x00838028    85c0
                         {disp8} je        _jmp_addr_0x0083809f                           // 0x0083802a    7473
                         xor.s             eax, eax                                       // 0x0083802c    33c0
                         push              eax                                            // 0x0083802e    50
                         push              0x00000821                                     // 0x0083802f    6821080000
                         {disp8} lea       edx, dword ptr [esp + 0x24]                    // 0x00838034    8d542424
                         push              edx                                            // 0x00838038    52
                         mov               ecx, 0x0000001f                                // 0x00838039    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x28]                    // 0x0083803e    8d7c2428
                         rep stosd                                                        // 0x00838042    f3ab
                         {disp8} mov       edi, dword ptr [esp + 0x1c]                    // 0x00838044    8b7c241c
                         push              eax                                            // 0x00838048    50
                         push              edi                                            // 0x00838049    57
                         {disp8} mov       dword ptr [esp + 0x30], 0x0000007c             // 0x0083804a    c74424307c000000
                         call              _jmp_addr_0x00871170                           // 0x00838052    e819910300
                         {disp8} mov       eax, dword ptr [esp + 0x54]                    // 0x00838057    8b442454
                         add               esp, 0x14                                      // 0x0083805b    83c414
                         test              eax, eax                                       // 0x0083805e    85c0
                         {disp8} je        _jmp_addr_0x0083808f                           // 0x00838060    742d
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                    // 0x00838062    8d44241c
                         push              eax                                            // 0x00838066    50
                         {disp32} lea      ecx, dword ptr [esp + 0x0000009c]              // 0x00838067    8d8c249c000000
                         call              _jmp_addr_0x00839680                           // 0x0083806e    e80d160000
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                    // 0x00838073    8b4e10
                         {disp8} mov       eax, dword ptr [esi + 0x14]                    // 0x00838076    8b4614
                         and               ecx, 0x40                                      // 0x00838079    83e140
                         push              ecx                                            // 0x0083807c    51
                         push              eax                                            // 0x0083807d    50
                         {disp32} lea      edx, dword ptr [esp + 0x000000a0]              // 0x0083807e    8d9424a0000000
                         push              ebx                                            // 0x00838085    53
                         push              edx                                            // 0x00838086    52
                         call              _jmp_addr_0x00837400                           // 0x00838087    e874f3ffff
                         add               esp, 0x10                                      // 0x0083808c    83c410
_jmp_addr_0x0083808f:    mov               eax, dword ptr [edi]                           // 0x0083808f    8b07
                         push              0x0                                            // 0x00838091    6a00
                         push              edi                                            // 0x00838093    57
                         call              dword ptr [eax + 0x80]                         // 0x00838094    ff9080000000
                         {disp32} jmp      _jmp_addr_0x00838282                           // 0x0083809a    e9e3010000
_jmp_addr_0x0083809f:    push              ebx                                            // 0x0083809f    53
                         call              _jmp_addr_0x0087f980                           // 0x008380a0    e8db780400
                         mov.s             edi, eax                                       // 0x008380a5    8bf8
                         add               esp, 0x04                                      // 0x008380a7    83c404
                         test              edi, edi                                       // 0x008380aa    85ff
                         {disp32} je       _jmp_addr_0x00838282                           // 0x008380ac    0f84d0010000
                         {disp8} mov       eax, dword ptr [esp + 0x10]                    // 0x008380b2    8b442410
                         test              eax, eax                                       // 0x008380b6    85c0
                         {disp8} je        _jmp_addr_0x008380e0                           // 0x008380b8    7426
                         {disp8} mov       edx, dword ptr [edi + 0x04]                    // 0x008380ba    8b5704
                         mov               ecx, dword ptr [eax]                           // 0x008380bd    8b08
                         push              0x0                                            // 0x008380bf    6a00
                         push              0x01000000                                     // 0x008380c1    6800000001
                         push              0x0                                            // 0x008380c6    6a00
                         push              edx                                            // 0x008380c8    52
                         push              0x0                                            // 0x008380c9    6a00
                         push              eax                                            // 0x008380cb    50
                         call              dword ptr [ecx + 0x14]                         // 0x008380cc    ff5114
                         test              eax, eax                                       // 0x008380cf    85c0
                         {disp8} je        _jmp_addr_0x008380e0                           // 0x008380d1    740d
                         push              0x00c38f94                                     // 0x008380d3    68948fc300
                         call              _Report3D__FPCce                               // 0x008380d8    e8f33afeff
                         add               esp, 0x04                                      // 0x008380dd    83c404
_jmp_addr_0x008380e0:    mov.s             ecx, edi                                       // 0x008380e0    8bcf
                         call              _jmp_addr_0x0087f880                           // 0x008380e2    e899770400
                         {disp32} jmp      _jmp_addr_0x00838282                           // 0x008380e7    e996010000
_jmp_addr_0x008380ec:    {disp8} mov       ebx, dword ptr [esp + 0x10]                    // 0x008380ec    8b5c2410
                         xor.s             eax, eax                                       // 0x008380f0    33c0
                         push              eax                                            // 0x008380f2    50
                         mov               ecx, 0x0000001f                                // 0x008380f3    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x20]                    // 0x008380f8    8d7c2420
                         rep stosd                                                        // 0x008380fc    f3ab
                         push              0x00000821                                     // 0x008380fe    6821080000
                         {disp8} lea       eax, dword ptr [esp + 0x24]                    // 0x00838103    8d442424
                         push              eax                                            // 0x00838107    50
                         push              0x0                                            // 0x00838108    6a00
                         push              ebx                                            // 0x0083810a    53
                         {disp8} mov       dword ptr [esp + 0x30], 0x0000007c             // 0x0083810b    c74424307c000000
                         call              _jmp_addr_0x00871170                           // 0x00838113    e858900300
                         {disp8} mov       edi, dword ptr [esp + 0x54]                    // 0x00838118    8b7c2454
                         add               esp, 0x14                                      // 0x0083811c    83c414
                         test              edi, edi                                       // 0x0083811f    85ff
                         {disp8} je        _jmp_addr_0x0083815a                           // 0x00838121    7437
                         {disp8} mov       eax, dword ptr [esp + 0x24]                    // 0x00838123    8b442424
                         xor.s             ecx, ecx                                       // 0x00838127    33c9
                         test              eax, eax                                       // 0x00838129    85c0
                         {disp8} jbe       _jmp_addr_0x0083815a                           // 0x0083812b    762d
                         {disp8} mov       edx, dword ptr [esp + 0x28]                    // 0x0083812d    8b542428
_jmp_addr_0x00838131:    xor.s             eax, eax                                       // 0x00838131    33c0
                         test              edx, edx                                       // 0x00838133    85d2
                         {disp8} jbe       _jmp_addr_0x00838151                           // 0x00838135    761a
_jmp_addr_0x00838137:    {disp8} mov       edx, dword ptr [esp + 0x2c]                    // 0x00838137    8b54242c
                         imul              edx, ecx                                       // 0x0083813b    0fafd1
                         shr               edx, 1                                         // 0x0083813e    d1ea
                         add.s             edx, eax                                       // 0x00838140    03d0
                         mov               word ptr [edi + edx * 0x2], 0x0000             // 0x00838142    66c704570000
                         {disp8} mov       edx, dword ptr [esp + 0x28]                    // 0x00838148    8b542428
                         inc               eax                                            // 0x0083814c    40
                         cmp.s             eax, edx                                       // 0x0083814d    3bc2
                         .byte             0x72, 0xe6// {disp8} jb _jmp_addr_0x00838137   // 0x0083814f    72e6
_jmp_addr_0x00838151:    {disp8} mov       eax, dword ptr [esp + 0x24]                    // 0x00838151    8b442424
                         inc               ecx                                            // 0x00838155    41
                         cmp.s             ecx, eax                                       // 0x00838156    3bc8
                         .byte             0x72, 0xd7// {disp8} jb _jmp_addr_0x00838131   // 0x00838158    72d7
_jmp_addr_0x0083815a:    mov               eax, dword ptr [ebx]                           // 0x0083815a    8b03
                         push              0x0                                            // 0x0083815c    6a00
                         push              ebx                                            // 0x0083815e    53
                         call              dword ptr [eax + 0x80]                         // 0x0083815f    ff9080000000
                         {disp32} jmp      _jmp_addr_0x00838282                           // 0x00838165    e918010000
                         cmp               dword ptr [esi + 0x04], edx                    // 0x0083816a    395604
                         {disp32} jne      _jmp_addr_0x00838282                           // 0x0083816d    0f850f010000
                         cmp               dword ptr [esi + 0x00000120], edx              // 0x00838173    399620010000
                         {disp8} jne       _jmp_addr_0x0083818d                           // 0x00838179    7512
                         {disp8} lea       ecx, dword ptr [esi + 0x1c]                    // 0x0083817b    8d4e1c
                         push              ecx                                            // 0x0083817e    51
                         call              _jmp_addr_0x0087f980                           // 0x0083817f    e8fc770400
                         add               esp, 0x04                                      // 0x00838184    83c404
                         {disp32} mov      dword ptr [esi + 0x00000120], eax              // 0x00838187    898620010000
_jmp_addr_0x0083818d:    push              0x0                                            // 0x0083818d    6a00
                         push              esi                                            // 0x0083818f    56
                         call              _jmp_addr_0x0085dac0                           // 0x00838190    e82b590200
                         {disp8} mov       dword ptr [esi + 0x04], eax                    // 0x00838195    894604
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517450]         // 0x00838198    8b0d50d4ed00
                         add               esp, 0x08                                      // 0x0083819e    83c408
                         test              ecx, ecx                                       // 0x008381a1    85c9
                         {disp8} je        _jmp_addr_0x008381d4                           // 0x008381a3    742f
_jmp_addr_0x008381a5:    test              eax, eax                                       // 0x008381a5    85c0
                         {disp32} je       _jmp_addr_0x00838282                           // 0x008381a7    0f84d5000000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000120]              // 0x008381ad    8b8e20010000
                         {disp8} mov       ecx, dword ptr [ecx + 0x04]                    // 0x008381b3    8b4904
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517474]         // 0x008381b6    a174d4ed00
                         mov               edx, dword ptr [eax]                           // 0x008381bb    8b10
                         push              0x0                                            // 0x008381bd    6a00
                         push              0x01000000                                     // 0x008381bf    6800000001
                         push              0x0                                            // 0x008381c4    6a00
                         push              ecx                                            // 0x008381c6    51
                         push              0x0                                            // 0x008381c7    6a00
                         push              eax                                            // 0x008381c9    50
                         call              dword ptr [edx + 0x14]                         // 0x008381ca    ff5214
                         {disp8} mov       edx, dword ptr [esi + 0x04]                    // 0x008381cd    8b5604
                         mov               eax, dword ptr [edx]                           // 0x008381d0    8b02
                         {disp8} jmp       _jmp_addr_0x0083824e                           // 0x008381d2    eb7a
_jmp_addr_0x008381d4:    test              eax, eax                                       // 0x008381d4    85c0
                         {disp32} je       _jmp_addr_0x00838282                           // 0x008381d6    0f84a6000000
                         {disp32} jmp      _jmp_addr_0x00838265                           // 0x008381dc    e984000000
                         cmp               dword ptr [esi + 0x04], edx                    // 0x008381e1    395604
                         {disp32} jne      _jmp_addr_0x00838282                           // 0x008381e4    0f8598000000
                         cmp               dword ptr [esi + 0x00000120], edx              // 0x008381ea    399620010000
                         {disp8} jne       _jmp_addr_0x0083820d                           // 0x008381f0    751b
                         {disp32} mov      eax, dword ptr [esi + 0x0000011c]              // 0x008381f2    8b861c010000
                         push              eax                                            // 0x008381f8    50
                         push              0x00c38f84                                     // 0x008381f9    68848fc300
                         call              _Report3D__FPCce                               // 0x008381fe    e8cd39feff
                         add               esp, 0x08                                      // 0x00838203    83c408
                         mov.s             ecx, esi                                       // 0x00838206    8bce
                         call              _jmp_addr_0x00838580                           // 0x00838208    e873030000
_jmp_addr_0x0083820d:    push              0x0                                            // 0x0083820d    6a00
                         push              esi                                            // 0x0083820f    56
                         call              _jmp_addr_0x0085dac0                           // 0x00838210    e8ab580200
                         {disp8} mov       dword ptr [esi + 0x04], eax                    // 0x00838215    894604
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517450]         // 0x00838218    8b0d50d4ed00
                         add               esp, 0x08                                      // 0x0083821e    83c408
                         test              ecx, ecx                                       // 0x00838221    85c9
                         {disp8} je        _jmp_addr_0x00838261                           // 0x00838223    743c
                         test              eax, eax                                       // 0x00838225    85c0
                         {disp8} je        _jmp_addr_0x00838282                           // 0x00838227    7459
                         {disp32} mov      edx, dword ptr [esi + 0x00000120]              // 0x00838229    8b9620010000
                         {disp8} mov       edx, dword ptr [edx + 0x04]                    // 0x0083822f    8b5204
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517474]         // 0x00838232    a174d4ed00
                         mov               ecx, dword ptr [eax]                           // 0x00838237    8b08
                         push              0x0                                            // 0x00838239    6a00
                         push              0x01000000                                     // 0x0083823b    6800000001
                         push              0x0                                            // 0x00838240    6a00
                         push              edx                                            // 0x00838242    52
                         push              0x0                                            // 0x00838243    6a00
                         push              eax                                            // 0x00838245    50
                         call              dword ptr [ecx + 0x14]                         // 0x00838246    ff5114
                         {disp8} mov       eax, dword ptr [esi + 0x04]                    // 0x00838249    8b4604
                         mov               eax, dword ptr [eax]                           // 0x0083824c    8b00
_jmp_addr_0x0083824e:    mov               ecx, dword ptr [eax]                           // 0x0083824e    8b08
                         {disp32} mov      edx, dword ptr [data_bytes + 0x517474]         // 0x00838250    8b1574d4ed00
                         push              0x0                                            // 0x00838256    6a00
                         push              0x01000000                                     // 0x00838258    6800000001
                         push              0x0                                            // 0x0083825d    6a00
                         {disp8} jmp       _jmp_addr_0x0083827b                           // 0x0083825f    eb1a
_jmp_addr_0x00838261:    test              eax, eax                                       // 0x00838261    85c0
                         {disp8} je        _jmp_addr_0x00838282                           // 0x00838263    741d
_jmp_addr_0x00838265:    mov               eax, dword ptr [eax]                           // 0x00838265    8b00
                         {disp32} mov      edx, dword ptr [esi + 0x00000120]              // 0x00838267    8b9620010000
                         mov               ecx, dword ptr [eax]                           // 0x0083826d    8b08
                         {disp8} mov       edx, dword ptr [edx + 0x04]                    // 0x0083826f    8b5204
                         push              0x0                                            // 0x00838272    6a00
                         push              0x01000000                                     // 0x00838274    6800000001
                         push              0x0                                            // 0x00838279    6a00
_jmp_addr_0x0083827b:    push              edx                                            // 0x0083827b    52
                         push              0x0                                            // 0x0083827c    6a00
                         push              eax                                            // 0x0083827e    50
                         call              dword ptr [ecx + 0x14]                         // 0x0083827f    ff5114
_jmp_addr_0x00838282:    {disp32} mov      eax, dword ptr [data_bytes + 0x4d6d94]         // 0x00838282    a194cde900
                         test              eax, eax                                       // 0x00838287    85c0
                         {disp32} jne      _jmp_addr_0x008383d1                           // 0x00838289    0f8542010000
                         {disp8} mov       eax, dword ptr [esi + 0x04]                    // 0x0083828f    8b4604
                         test              eax, eax                                       // 0x00838292    85c0
                         {disp8} jne       _jmp_addr_0x008382e7                           // 0x00838294    7551
                         push              0x0                                            // 0x00838296    6a00
                         push              esi                                            // 0x00838298    56
                         call              _jmp_addr_0x0085dac0                           // 0x00838299    e822580200
                         add               esp, 0x08                                      // 0x0083829e    83c408
                         test              eax, eax                                       // 0x008382a1    85c0
                         {disp8} mov       dword ptr [esi + 0x04], eax                    // 0x008382a3    894604
                         {disp8} jne       _jmp_addr_0x008382eb                           // 0x008382a6    7543
                         {disp32} mov      esi, dword ptr [esp + 0x000000ac]              // 0x008382a8    8bb424ac000000
                         {disp32} mov      eax, dword ptr [esi * 0x4 + 0x00ec81d0]        // 0x008382af    8b04b5d081ec00
                         test              eax, eax                                       // 0x008382b6    85c0
                         {disp32} je       _jmp_addr_0x008383d1                           // 0x008382b8    0f8413010000
                         {disp32} mov      eax, dword ptr [_Direct3DDevice7]              // 0x008382be    a138a6ec00
                         mov               ecx, dword ptr [eax]                           // 0x008382c3    8b08
                         push              0x0                                            // 0x008382c5    6a00
                         push              esi                                            // 0x008382c7    56
                         push              eax                                            // 0x008382c8    50
                         call              dword ptr [ecx + 0x8c]                         // 0x008382c9    ff918c000000
                         pop               edi                                            // 0x008382cf    5f
                         {disp32} mov      dword ptr [esi * 0x4 + 0x00ec81d0], 0x00000000 // 0x008382d0    c704b5d081ec0000000000
                         pop               esi                                            // 0x008382db    5e
                         pop               ebp                                            // 0x008382dc    5d
                         pop               ebx                                            // 0x008382dd    5b
                         add               esp, 0x00000098                                // 0x008382de    81c498000000
                         ret               0x0004                                         // 0x008382e4    c20400
_jmp_addr_0x008382e7:    test              ebp, ebp                                       // 0x008382e7    85ed
                         {disp8} je        _jmp_addr_0x00838302                           // 0x008382e9    7417
_jmp_addr_0x008382eb:    {disp8} mov       ecx, dword ptr [esi + 0x04]                    // 0x008382eb    8b4e04
                         test              ecx, ecx                                       // 0x008382ee    85c9
                         {disp8} je        _jmp_addr_0x008382fc                           // 0x008382f0    740a
                         {disp8} mov       edx, dword ptr [esp + 0x10]                    // 0x008382f2    8b542410
                         push              edx                                            // 0x008382f6    52
                         call              _jmp_addr_0x0085dc00                           // 0x008382f7    e804590200
_jmp_addr_0x008382fc:    {disp32} inc      dword ptr [data_bytes + 0x517454]              // 0x008382fc    ff0554d4ed00
_jmp_addr_0x00838302:    call              dword ptr [__imp__GetTickCount@4]              // 0x00838302    ff15c4918a00
                         sub               eax, dword ptr [data_bytes + 0x4dbc78]         // 0x00838308    2b05781cea00
                         {disp8} mov       dword ptr [esp + 0x14], eax                    // 0x0083830e    89442414
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4dbc7c]         // 0x00838312    a17c1cea00
                         xor.s             ebx, ebx                                       // 0x00838317    33db
                         {disp8} mov       dword ptr [esp + 0x18], ebx                    // 0x00838319    895c2418
                         {disp8} fild      qword ptr [esp + 0x14]                         // 0x0083831d    df6c2414
                         {disp8} mov       dword ptr [esp + 0x14], eax                    // 0x00838321    89442414
                         {disp8} mov       dword ptr [esp + 0x18], ebx                    // 0x00838325    895c2418
                         {disp32} fmul     dword ptr [data_bytes + 0x4dbc80]              // 0x00838329    d80d801cea00
                         {disp8} fiadd     dword ptr [esp + 0x14]                         // 0x0083832f    da442414
                         call              _jmp_addr_0x007a1400                           // 0x00838333    e8c890f6ff
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                    // 0x00838338    8b4e10
                         and               ecx, 0x3f                                      // 0x0083833b    83e13f
                         cmp               cl, 0x08                                       // 0x0083833e    80f908
                         {disp8} mov       dword ptr [esi + 0x08], eax                    // 0x00838341    894608
                         {disp8} jne       _jmp_addr_0x0083834e                           // 0x00838344    7508
                         add               eax, 0x000007d0                                // 0x00838346    05d0070000
                         {disp8} mov       dword ptr [esi + 0x08], eax                    // 0x0083834b    894608
_jmp_addr_0x0083834e:    {disp8} mov       eax, dword ptr [esi + 0x04]                    // 0x0083834e    8b4604
                         cmp.s             eax, ebx                                       // 0x00838351    3bc3
                         {disp8} je        _jmp_addr_0x00838388                           // 0x00838353    7433
                         mov               edi, dword ptr [eax]                           // 0x00838355    8b38
                         {disp32} mov      ebx, dword ptr [esp + 0x000000ac]              // 0x00838357    8b9c24ac000000
                         cmp               dword ptr [ebx * 0x4 + 0x00ec81d0], edi        // 0x0083835e    393c9dd081ec00
                         {disp8} je        _jmp_addr_0x0083837e                           // 0x00838365    7417
                         {disp32} mov      eax, dword ptr [_Direct3DDevice7]              // 0x00838367    a138a6ec00
                         mov               edx, dword ptr [eax]                           // 0x0083836c    8b10
                         push              edi                                            // 0x0083836e    57
                         push              ebx                                            // 0x0083836f    53
                         push              eax                                            // 0x00838370    50
                         call              dword ptr [edx + 0x8c]                         // 0x00838371    ff928c000000
                         {disp32} mov      dword ptr [ebx * 0x4 + 0x00ec81d0], edi        // 0x00838377    893c9dd081ec00
_jmp_addr_0x0083837e:    {disp8} mov       eax, dword ptr [esi + 0x04]                    // 0x0083837e    8b4604
                         {disp8} inc       dword ptr [eax + 0x18]                         // 0x00838381    ff4018
                         xor.s             ebx, ebx                                       // 0x00838384    33db
                         {disp8} jmp       _jmp_addr_0x008383af                           // 0x00838386    eb27
_jmp_addr_0x00838388:    {disp32} mov      edi, dword ptr [esp + 0x000000ac]              // 0x00838388    8bbc24ac000000
                         cmp               dword ptr [edi * 0x4 + 0x00ec81d0], ebx        // 0x0083838f    391cbdd081ec00
                         {disp8} je        _jmp_addr_0x008383af                           // 0x00838396    7417
                         {disp32} mov      eax, dword ptr [_Direct3DDevice7]              // 0x00838398    a138a6ec00
                         mov               ecx, dword ptr [eax]                           // 0x0083839d    8b08
                         push              ebx                                            // 0x0083839f    53
                         push              edi                                            // 0x008383a0    57
                         push              eax                                            // 0x008383a1    50
                         call              dword ptr [ecx + 0x8c]                         // 0x008383a2    ff918c000000
                         {disp32} mov      dword ptr [edi * 0x4 + 0x00ec81d0], ebx        // 0x008383a8    891cbdd081ec00
_jmp_addr_0x008383af:    cmp               dword ptr [esi + 0x04], ebx                    // 0x008383af    395e04
                         {disp8} jne       _jmp_addr_0x008383cb                           // 0x008383b2    7517
                         pop               edi                                            // 0x008383b4    5f
                         {disp32} mov      dword ptr [esi + 0x00000138], 0x00000001       // 0x008383b5    c7863801000001000000
                         pop               esi                                            // 0x008383bf    5e
                         pop               ebp                                            // 0x008383c0    5d
                         pop               ebx                                            // 0x008383c1    5b
                         add               esp, 0x00000098                                // 0x008383c2    81c498000000
                         ret               0x0004                                         // 0x008383c8    c20400
_jmp_addr_0x008383cb:    {disp32} mov      dword ptr [esi + 0x00000138], ebx              // 0x008383cb    899e38010000
_jmp_addr_0x008383d1:    pop               edi                                            // 0x008383d1    5f
                         pop               esi                                            // 0x008383d2    5e
                         pop               ebp                                            // 0x008383d3    5d
                         pop               ebx                                            // 0x008383d4    5b
                         add               esp, 0x00000098                                // 0x008383d5    81c498000000
                         ret               0x0004                                         // 0x008383db    c20400

// Snippet: db, [0x008383de, 0x008383e0)
.byte 0x8b, 0xff                  // 0x008383de

// Snippet: jmptbl, [0x008383e0, 0x00838410)
.byte 0x13, 0x7e, 0x83, 0x00      // 0x008383e0
.byte 0x1a, 0x7e, 0x83, 0x00      // 0x008383e4
.byte 0x26, 0x7e, 0x83, 0x00      // 0x008383e8
.byte 0x2d, 0x7e, 0x83, 0x00      // 0x008383ec
.byte 0x39, 0x7e, 0x83, 0x00      // 0x008383f0
.byte 0xe6, 0x7f, 0x83, 0x00      // 0x008383f4
.byte 0xe1, 0x81, 0x83, 0x00      // 0x008383f8
.byte 0x98, 0x7e, 0x83, 0x00      // 0x008383fc
.byte 0xc6, 0x7e, 0x83, 0x00      // 0x00838400
.byte 0x6a, 0x81, 0x83, 0x00      // 0x00838404
.byte 0x63, 0x7e, 0x83, 0x00      // 0x00838408
.byte 0x82, 0x82, 0x83, 0x00      // 0x0083840c

// Snippet: ijmptbl, [0x00838410, 0x00838430)
.byte 0x00, 0x01, 0x06, 0x02      // 0x00838410
.byte 0x06, 0x06, 0x06, 0x03      // 0x00838414
.byte 0x06, 0x06, 0x06, 0x06      // 0x00838418
.byte 0x06, 0x06, 0x06, 0x04      // 0x0083841c
.byte 0x06, 0x06, 0x06, 0x06      // 0x00838420
.byte 0x06, 0x06, 0x06, 0x06      // 0x00838424
.byte 0x06, 0x06, 0x06, 0x06      // 0x00838428
.byte 0x06, 0x06, 0x06, 0x05      // 0x0083842c

