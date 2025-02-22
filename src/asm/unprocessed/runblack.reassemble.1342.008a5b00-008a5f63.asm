.intel_syntax noprefix
.align 16


.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00581a30
.extern _jmp_addr_0x00587ef0
.extern ___dl__FPv
.extern _jmp_addr_0x007aef3f
.extern _jmp_addr_0x007af268
.extern _jmp_addr_0x007afc28
.extern _jmp_addr_0x007b0413
.extern _jmp_addr_0x007b0792
.extern _jmp_addr_0x007b16ad
.extern _jmp_addr_0x007b19e2
.extern _jmp_addr_0x007b2111
.extern _jmp_addr_0x007b2243
.extern _jmp_addr_0x007b38c7
.extern _jmp_addr_0x007b3aa1
.extern _jmp_addr_0x007b3aa8
.extern _jmp_addr_0x007b734a
.extern _jmp_addr_0x007b7421
.extern @__dt__8LHOSFileFv@4
.extern _jmp_addr_0x007bcad0
.extern _jmp_addr_0x007bda20
.extern _jmp_addr_0x007be280
.extern _wcscpy
.extern _wcslen
.extern _jmp_addr_0x007c664c
.extern _free
.extern _jmp_addr_0x007c82a6
.extern __global_unwind2
.extern __local_unwind2
.extern __NLG_Notify
.extern _jmp_addr_0x007c8c85
.extern _dosmaperr
.extern _jmp_addr_0x007c9081
.extern _jmp_addr_0x007c908a
.extern _jmp_addr_0x007c97d4
.extern __aulldiv
.extern __allmul
.extern __lock
.extern __unlock
.extern ___crtLCMapStringA
.extern ?terminate@@YAXXZ
.extern _jmp_addr_0x007d4dde
.extern _strcpy
.extern _jmp_addr_0x007d9a5d
.extern _jmp_addr_0x007d9abc
.extern _jmp_addr_0x007db7a0
.extern @__dt__8LHScreenFv@4
.extern _jmp_addr_0x007e1010
.extern _jmp_addr_0x007e10a0
.extern _jmp_addr_0x007e5320
.extern _jmp_addr_0x007f45f0
.extern _jmp_addr_0x007f48a0
.extern _jmp_addr_0x007f5600
.extern _jmp_addr_0x007f5fe0
.extern _jmp_addr_0x007f6010
.extern _jmp_addr_0x007fa180
.extern _jmp_addr_0x007fa220
.extern _jmp_addr_0x00804780
.extern _jmp_addr_0x00816680
.extern _jmp_addr_0x008371f0
.extern @__dt__5RPlanFv@4
.extern _jmp_addr_0x0087a5e0
.extern _jmp_addr_0x0087a5f0
.extern _jmp_addr_0x0087f060
.extern _jmp_addr_0x0087f080
.extern _jmp_addr_0x0087f350
.extern _jmp_addr_0x0087f3d0
.extern _jmp_addr_0x00881050
.extern _jmp_addr_0x008a0621
.extern _jmp_addr_0x008a12d2
.extern _jmp_addr_0x008a17ba
.extern _jmp_addr_0x008a1d52
.extern _jmp_addr_0x008a5480
.extern __rt_probe_read4@4

.globl _jmp_addr_0x008a5b00
.globl __wcsdup
.globl __wcsicmp
.globl __filelength
.globl _jmp_addr_0x008a5ca3
.globl __wcsnicmp
.globl _jmp_addr_0x008a5da3
.globl __strlwr
.globl _jmp_addr_0x008a5f5d

start_0x008a5b00_0x008a895d:
// Snippet: asm, [0x008a5b00, 0x008a895d)
_jmp_addr_0x008a5b00:    jmp              dword ptr [rdata_bytes + 0x34]          // 0x008a5b00    ff2534908a00
                         jmp              dword ptr [rdata_bytes + 0x6c4]         // 0x008a5b06    ff25c4968a00
__wcsdup:                push             esi                                     // 0x008a5b0c    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]             // 0x008a5b0d    8b742408
                         test             esi, esi                                // 0x008a5b11    85f6
                         {disp8} je       _jmp_addr_0x008a5b36                    // 0x008a5b13    7421
                         push             esi                                     // 0x008a5b15    56
                         call             _wcslen                                 // 0x008a5b16    e84709f2ff
                         {disp8} lea      eax, dword ptr [eax + eax * 0x1 + 0x02] // 0x008a5b1b    8d440002
                         push             eax                                     // 0x008a5b1f    50
                         call             _jmp_addr_0x007c664c                    // 0x008a5b20    e8270bf2ff
                         pop              ecx                                     // 0x008a5b25    59
                         test             eax, eax                                // 0x008a5b26    85c0
                         pop              ecx                                     // 0x008a5b28    59
                         {disp8} je       _jmp_addr_0x008a5b36                    // 0x008a5b29    740b
                         push             esi                                     // 0x008a5b2b    56
                         push             eax                                     // 0x008a5b2c    50
                         call             _wcscpy                                 // 0x008a5b2d    e88404f2ff
                         pop              ecx                                     // 0x008a5b32    59
                         pop              ecx                                     // 0x008a5b33    59
                         pop              esi                                     // 0x008a5b34    5e
                         ret                                                      // 0x008a5b35    c3
_jmp_addr_0x008a5b36:    xor.s            eax, eax                                // 0x008a5b36    33c0
                         pop              esi                                     // 0x008a5b38    5e
                         ret                                                      // 0x008a5b39    c3
__wcsicmp:               push             ebp                                     // 0x008a5b3a    55
                         mov.s            ebp, esp                                // 0x008a5b3b    8bec
                         push             ecx                                     // 0x008a5b3d    51
                         push             ebx                                     // 0x008a5b3e    53
                         push             esi                                     // 0x008a5b3f    56
                         xor.s            esi, esi                                // 0x008a5b40    33f6
                         cmp              dword ptr [data_bytes + 0x4be2a0], esi  // 0x008a5b42    3935a042e800
                         {disp8} jne      _jmp_addr_0x008a5b92                    // 0x008a5b48    7548
                         {disp8} mov      edx, dword ptr [ebp + 0x0c]             // 0x008a5b4a    8b550c
                         {disp8} mov      ecx, dword ptr [ebp + 0x08]             // 0x008a5b4d    8b4d08
_jmp_addr_0x008a5b50:    mov              ax, word ptr [ecx]                      // 0x008a5b50    668b01
                         cmp              ax, 0x005a                              // 0x008a5b53    663d5a00
                         {disp8} ja       _jmp_addr_0x008a5b62                    // 0x008a5b57    7709
                         cmp              ax, 0x0041                              // 0x008a5b59    663d4100
                         .byte            0x72, 0x3// {disp8} jb _jmp_addr_0x008a5b62 // 0x008a5b5d    7203
                         add              eax, 0x20                               // 0x008a5b5f    83c020
_jmp_addr_0x008a5b62:    {disp8} mov      dword ptr [ebp + 0x0c], eax             // 0x008a5b62    89450c
                         mov              ax, word ptr [edx]                      // 0x008a5b65    668b02
                         cmp              ax, 0x005a                              // 0x008a5b68    663d5a00
                         {disp8} ja       _jmp_addr_0x008a5b77                    // 0x008a5b6c    7709
                         cmp              ax, 0x0041                              // 0x008a5b6e    663d4100
                         .byte            0x72, 0x3// {disp8} jb _jmp_addr_0x008a5b77 // 0x008a5b72    7203
                         add              eax, 0x20                               // 0x008a5b74    83c020
_jmp_addr_0x008a5b77:    inc              ecx                                     // 0x008a5b77    41
                         {disp8} mov      dword ptr [ebp + 0x08], eax             // 0x008a5b78    894508
                         {disp8} mov      eax, dword ptr [ebp + 0x0c]             // 0x008a5b7b    8b450c
                         inc              ecx                                     // 0x008a5b7e    41
                         inc              edx                                     // 0x008a5b7f    42
                         inc              edx                                     // 0x008a5b80    42
                         cmp.s            ax, si                                  // 0x008a5b81    663bc6
                         {disp32} je      _jmp_addr_0x008a5c0b                    // 0x008a5b84    0f8481000000
                         cmp              ax, word ptr [ebp + 0x08]               // 0x008a5b8a    663b4508
                         {disp8} je       _jmp_addr_0x008a5b50                    // 0x008a5b8e    74c0
                         {disp8} jmp      _jmp_addr_0x008a5c0b                    // 0x008a5b90    eb79
_jmp_addr_0x008a5b92:    mov              ebx, 0x00fadcc8                         // 0x008a5b92    bbc8dcfa00
                         push             ebx                                     // 0x008a5b97    53
                         call             dword ptr [rdata_bytes + 0x310]         // 0x008a5b98    ff1510938a00
                         cmp              dword ptr [data_bytes + 0x5e7cc4], esi  // 0x008a5b9e    3935c4dcfa00
                         {disp8} je       _jmp_addr_0x008a5bbe                    // 0x008a5ba4    7418
                         push             ebx                                     // 0x008a5ba6    53
                         call             dword ptr [rdata_bytes + 0x314]         // 0x008a5ba7    ff1514938a00
                         push             0x13                                    // 0x008a5bad    6a13
                         call             __lock                                   // 0x008a5baf    e8025bf2ff
                         pop              ecx                                     // 0x008a5bb4    59
                         {disp8} mov      dword ptr [ebp + -0x04], 0x00000001     // 0x008a5bb5    c745fc01000000
                         {disp8} jmp      _jmp_addr_0x008a5bc1                    // 0x008a5bbc    eb03
_jmp_addr_0x008a5bbe:    {disp8} mov      dword ptr [ebp + -0x04], esi            // 0x008a5bbe    8975fc
_jmp_addr_0x008a5bc1:    {disp8} mov      esi, dword ptr [ebp + 0x08]             // 0x008a5bc1    8b7508
                         push             edi                                     // 0x008a5bc4    57
                         {disp8} mov      edi, dword ptr [ebp + 0x0c]             // 0x008a5bc5    8b7d0c
_jmp_addr_0x008a5bc8:    mov              ax, word ptr [esi]                      // 0x008a5bc8    668b06
                         inc              esi                                     // 0x008a5bcb    46
                         push             eax                                     // 0x008a5bcc    50
                         inc              esi                                     // 0x008a5bcd    46
                         call             _jmp_addr_0x007c97d4                    // 0x008a5bce    e8013cf2ff
                         {disp8} mov      dword ptr [ebp + 0x0c], eax             // 0x008a5bd3    89450c
                         mov              ax, word ptr [edi]                      // 0x008a5bd6    668b07
                         inc              edi                                     // 0x008a5bd9    47
                         push             eax                                     // 0x008a5bda    50
                         inc              edi                                     // 0x008a5bdb    47
                         call             _jmp_addr_0x007c97d4                    // 0x008a5bdc    e8f33bf2ff
                         cmp              word ptr [ebp + 0x0c], 0x00             // 0x008a5be1    66837d0c00
                         pop              ecx                                     // 0x008a5be6    59
                         pop              ecx                                     // 0x008a5be7    59
                         {disp8} mov      dword ptr [ebp + 0x08], eax             // 0x008a5be8    894508
                         {disp8} je       _jmp_addr_0x008a5bf3                    // 0x008a5beb    7406
                         cmp              word ptr [ebp + 0x0c], ax               // 0x008a5bed    6639450c
                         {disp8} je       _jmp_addr_0x008a5bc8                    // 0x008a5bf1    74d5
_jmp_addr_0x008a5bf3:    cmp              dword ptr [ebp + -0x04], 0x00           // 0x008a5bf3    837dfc00
                         pop              edi                                     // 0x008a5bf7    5f
                         {disp8} je       _jmp_addr_0x008a5c04                    // 0x008a5bf8    740a
                         push             0x13                                    // 0x008a5bfa    6a13
                         call             __unlock                                // 0x008a5bfc    e8165bf2ff
                         pop              ecx                                     // 0x008a5c01    59
                         {disp8} jmp      _jmp_addr_0x008a5c0b                    // 0x008a5c02    eb07
_jmp_addr_0x008a5c04:    push             ebx                                     // 0x008a5c04    53
                         call             dword ptr [rdata_bytes + 0x314]         // 0x008a5c05    ff1514938a00
_jmp_addr_0x008a5c0b:    movzx            ecx, word ptr [ebp + 0x08]              // 0x008a5c0b    0fb74d08
                         movzx            eax, word ptr [ebp + 0x0c]              // 0x008a5c0f    0fb7450c
                         pop              esi                                     // 0x008a5c13    5e
                         sub.s            eax, ecx                                // 0x008a5c14    2bc1
                         pop              ebx                                     // 0x008a5c16    5b
                         leave                                                    // 0x008a5c17    c9
                         ret                                                      // 0x008a5c18    c3
__filelength:            push             esi                                     // 0x008a5c19    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]             // 0x008a5c1a    8b742408
                         cmp              esi, dword ptr [data_bytes + 0x5e6a60]  // 0x008a5c1e    3b3560cafa00
                         {disp8} jae      _jmp_addr_0x008a5c8b                    // 0x008a5c24    7365
                         mov.s            ecx, esi                                // 0x008a5c26    8bce
                         mov.s            eax, esi                                // 0x008a5c28    8bc6
                         sar              ecx, 5                                  // 0x008a5c2a    c1f905
                         and              eax, 0x1f                               // 0x008a5c2d    83e01f
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00fac960] // 0x008a5c30    8b0c8d60c9fa00
                         lea              eax, dword ptr [eax + eax * 0x8]        // 0x008a5c37    8d04c0
                         test             byte ptr [ecx + eax * 0x4 + 0x04], 0x01 // 0x008a5c3a    f644810401
                         {disp8} je       _jmp_addr_0x008a5c8b                    // 0x008a5c3f    744a
                         push             ebx                                     // 0x008a5c41    53
                         push             edi                                     // 0x008a5c42    57
                         push             esi                                     // 0x008a5c43    56
                         call             _jmp_addr_0x007d9a5d                    // 0x008a5c44    e8143ef3ff
                         push             0x1                                     // 0x008a5c49    6a01
                         push             0x0                                     // 0x008a5c4b    6a00
                         push             esi                                     // 0x008a5c4d    56
                         call             _jmp_addr_0x007d4dde                    // 0x008a5c4e    e88bf1f2ff
                         mov.s            edi, eax                                // 0x008a5c53    8bf8
                         or               ebx, 0xffffffff                         // 0x008a5c55    83cbff
                         add              esp, 0x10                               // 0x008a5c58    83c410
                         cmp.s            edi, ebx                                // 0x008a5c5b    3bfb
                         {disp8} je       _jmp_addr_0x008a5c7e                    // 0x008a5c5d    741f
                         push             0x2                                     // 0x008a5c5f    6a02
                         push             0x0                                     // 0x008a5c61    6a00
                         push             esi                                     // 0x008a5c63    56
                         call             _jmp_addr_0x007d4dde                    // 0x008a5c64    e875f1f2ff
                         mov.s            ebx, eax                                // 0x008a5c69    8bd8
                         add              esp, 0x0c                               // 0x008a5c6b    83c40c
                         cmp.s            edi, ebx                                // 0x008a5c6e    3bfb
                         {disp8} je       _jmp_addr_0x008a5c7e                    // 0x008a5c70    740c
                         push             0x0                                     // 0x008a5c72    6a00
                         push             edi                                     // 0x008a5c74    57
                         push             esi                                     // 0x008a5c75    56
                         call             _jmp_addr_0x007d4dde                    // 0x008a5c76    e863f1f2ff
                         add              esp, 0x0c                               // 0x008a5c7b    83c40c
_jmp_addr_0x008a5c7e:    push             esi                                     // 0x008a5c7e    56
                         call             _jmp_addr_0x007d9abc                    // 0x008a5c7f    e8383ef3ff
                         pop              ecx                                     // 0x008a5c84    59
                         mov.s            eax, ebx                                // 0x008a5c85    8bc3
                         pop              edi                                     // 0x008a5c87    5f
                         pop              ebx                                     // 0x008a5c88    5b
                         pop              esi                                     // 0x008a5c89    5e
                         ret                                                      // 0x008a5c8a    c3
_jmp_addr_0x008a5c8b:    call             _jmp_addr_0x007c9081                    // 0x008a5c8b    e8f133f2ff
                         mov              dword ptr [eax], 0x00000009             // 0x008a5c90    c70009000000
                         call             _jmp_addr_0x007c908a                    // 0x008a5c96    e8ef33f2ff
                         and              dword ptr [eax], 0x00                   // 0x008a5c9b    832000
                         or               eax, -0x1                               // 0x008a5c9e    83c8ff
                         pop              esi                                     // 0x008a5ca1    5e
                         ret                                                      // 0x008a5ca2    c3
_jmp_addr_0x008a5ca3:    {disp8} mov      eax, dword ptr [esp + 0x04]             // 0x008a5ca3    8b442404
                         {disp8} mov      eax, dword ptr [eax + 0x10]             // 0x008a5ca7    8b4010
                         ret                                                      // 0x008a5caa    c3
__wcsnicmp:              push             ebp                                     // 0x008a5cab    55
                         mov.s            ebp, esp                                // 0x008a5cac    8bec
                         push             ecx                                     // 0x008a5cae    51
                         push             esi                                     // 0x008a5caf    56
                         xor.s            esi, esi                                // 0x008a5cb0    33f6
                         xor.s            eax, eax                                // 0x008a5cb2    33c0
                         cmp              dword ptr [ebp + 0x10], esi             // 0x008a5cb4    397510
                         {disp32} je      _jmp_addr_0x008a5da0                    // 0x008a5cb7    0f84e3000000
                         cmp              dword ptr [data_bytes + 0x4be2a0], esi  // 0x008a5cbd    3935a042e800
                         push             ebx                                     // 0x008a5cc3    53
                         {disp8} jne      _jmp_addr_0x008a5d17                    // 0x008a5cc4    7551
                         {disp8} mov      edx, dword ptr [ebp + 0x0c]             // 0x008a5cc6    8b550c
                         {disp8} mov      ecx, dword ptr [ebp + 0x08]             // 0x008a5cc9    8b4d08
_jmp_addr_0x008a5ccc:    mov              ax, word ptr [ecx]                      // 0x008a5ccc    668b01
                         cmp              ax, 0x005a                              // 0x008a5ccf    663d5a00
                         {disp8} ja       _jmp_addr_0x008a5cde                    // 0x008a5cd3    7709
                         cmp              ax, 0x0041                              // 0x008a5cd5    663d4100
                         .byte            0x72, 0x3// {disp8} jb _jmp_addr_0x008a5cde // 0x008a5cd9    7203
                         add              eax, 0x20                               // 0x008a5cdb    83c020
_jmp_addr_0x008a5cde:    {disp8} mov      dword ptr [ebp + 0x0c], eax             // 0x008a5cde    89450c
                         mov              ax, word ptr [edx]                      // 0x008a5ce1    668b02
                         cmp              ax, 0x005a                              // 0x008a5ce4    663d5a00
                         {disp8} ja       _jmp_addr_0x008a5cf3                    // 0x008a5ce8    7709
                         cmp              ax, 0x0041                              // 0x008a5cea    663d4100
                         .byte            0x72, 0x3// {disp8} jb _jmp_addr_0x008a5cf3 // 0x008a5cee    7203
                         add              eax, 0x20                               // 0x008a5cf0    83c020
_jmp_addr_0x008a5cf3:    inc              ecx                                     // 0x008a5cf3    41
                         {disp8} mov      dword ptr [ebp + 0x08], eax             // 0x008a5cf4    894508
                         inc              ecx                                     // 0x008a5cf7    41
                         inc              edx                                     // 0x008a5cf8    42
                         inc              edx                                     // 0x008a5cf9    42
                         dec              dword ptr [ebp + 0x10]                  // 0x008a5cfa    ff4d10
                         {disp32} je      _jmp_addr_0x008a5d95                    // 0x008a5cfd    0f8492000000
                         {disp8} mov      eax, dword ptr [ebp + 0x0c]             // 0x008a5d03    8b450c
                         cmp.s            ax, si                                  // 0x008a5d06    663bc6
                         {disp32} je      _jmp_addr_0x008a5d95                    // 0x008a5d09    0f8486000000
                         cmp              ax, word ptr [ebp + 0x08]               // 0x008a5d0f    663b4508
                         {disp8} je       _jmp_addr_0x008a5ccc                    // 0x008a5d13    74b7
                         {disp8} jmp      _jmp_addr_0x008a5d95                    // 0x008a5d15    eb7e
_jmp_addr_0x008a5d17:    mov              ebx, 0x00fadcc8                         // 0x008a5d17    bbc8dcfa00
                         push             ebx                                     // 0x008a5d1c    53
                         call             dword ptr [rdata_bytes + 0x310]         // 0x008a5d1d    ff1510938a00
                         cmp              dword ptr [data_bytes + 0x5e7cc4], esi  // 0x008a5d23    3935c4dcfa00
                         {disp8} je       _jmp_addr_0x008a5d43                    // 0x008a5d29    7418
                         push             ebx                                     // 0x008a5d2b    53
                         call             dword ptr [rdata_bytes + 0x314]         // 0x008a5d2c    ff1514938a00
                         push             0x13                                    // 0x008a5d32    6a13
                         call             __lock                                   // 0x008a5d34    e87d59f2ff
                         pop              ecx                                     // 0x008a5d39    59
                         {disp8} mov      dword ptr [ebp + -0x04], 0x00000001     // 0x008a5d3a    c745fc01000000
                         {disp8} jmp      _jmp_addr_0x008a5d46                    // 0x008a5d41    eb03
_jmp_addr_0x008a5d43:    {disp8} mov      dword ptr [ebp + -0x04], esi            // 0x008a5d43    8975fc
_jmp_addr_0x008a5d46:    {disp8} mov      esi, dword ptr [ebp + 0x08]             // 0x008a5d46    8b7508
                         push             edi                                     // 0x008a5d49    57
                         {disp8} mov      edi, dword ptr [ebp + 0x0c]             // 0x008a5d4a    8b7d0c
_jmp_addr_0x008a5d4d:    mov              ax, word ptr [esi]                      // 0x008a5d4d    668b06
                         inc              esi                                     // 0x008a5d50    46
                         push             eax                                     // 0x008a5d51    50
                         inc              esi                                     // 0x008a5d52    46
                         call             _jmp_addr_0x007c97d4                    // 0x008a5d53    e87c3af2ff
                         {disp8} mov      dword ptr [ebp + 0x0c], eax             // 0x008a5d58    89450c
                         mov              ax, word ptr [edi]                      // 0x008a5d5b    668b07
                         inc              edi                                     // 0x008a5d5e    47
                         push             eax                                     // 0x008a5d5f    50
                         inc              edi                                     // 0x008a5d60    47
                         call             _jmp_addr_0x007c97d4                    // 0x008a5d61    e86e3af2ff
                         dec              dword ptr [ebp + 0x10]                  // 0x008a5d66    ff4d10
                         pop              ecx                                     // 0x008a5d69    59
                         pop              ecx                                     // 0x008a5d6a    59
                         {disp8} mov      dword ptr [ebp + 0x08], eax             // 0x008a5d6b    894508
                         {disp8} je       _jmp_addr_0x008a5d7d                    // 0x008a5d6e    740d
                         cmp              word ptr [ebp + 0x0c], 0x00             // 0x008a5d70    66837d0c00
                         {disp8} je       _jmp_addr_0x008a5d7d                    // 0x008a5d75    7406
                         cmp              word ptr [ebp + 0x0c], ax               // 0x008a5d77    6639450c
                         {disp8} je       _jmp_addr_0x008a5d4d                    // 0x008a5d7b    74d0
_jmp_addr_0x008a5d7d:    cmp              dword ptr [ebp + -0x04], 0x00           // 0x008a5d7d    837dfc00
                         pop              edi                                     // 0x008a5d81    5f
                         {disp8} je       _jmp_addr_0x008a5d8e                    // 0x008a5d82    740a
                         push             0x13                                    // 0x008a5d84    6a13
                         call             __unlock                                // 0x008a5d86    e88c59f2ff
                         pop              ecx                                     // 0x008a5d8b    59
                         {disp8} jmp      _jmp_addr_0x008a5d95                    // 0x008a5d8c    eb07
_jmp_addr_0x008a5d8e:    push             ebx                                     // 0x008a5d8e    53
                         call             dword ptr [rdata_bytes + 0x314]         // 0x008a5d8f    ff1514938a00
_jmp_addr_0x008a5d95:    movzx            ecx, word ptr [ebp + 0x08]              // 0x008a5d95    0fb74d08
                         movzx            eax, word ptr [ebp + 0x0c]              // 0x008a5d99    0fb7450c
                         sub.s            eax, ecx                                // 0x008a5d9d    2bc1
                         pop              ebx                                     // 0x008a5d9f    5b
_jmp_addr_0x008a5da0:    pop              esi                                     // 0x008a5da0    5e
                         leave                                                    // 0x008a5da1    c9
                         ret                                                      // 0x008a5da2    c3
_jmp_addr_0x008a5da3:    push             ebp                                     // 0x008a5da3    55
                         mov.s            ebp, esp                                // 0x008a5da4    8bec
                         sub              esp, 0x00000108                         // 0x008a5da6    81ec08010000
                         push             dword ptr [ebp + 0x08]                  // 0x008a5dac    ff7508
                         call             dword ptr [rdata_bytes + 0x188]         // 0x008a5daf    ff1588918a00
                         test             eax, eax                                // 0x008a5db5    85c0
                         {disp8} je       _jmp_addr_0x008a5e17                    // 0x008a5db7    745e
                         {disp32} lea     eax, dword ptr [ebp + -0x00000108]      // 0x008a5db9    8d85f8feffff
                         push             eax                                     // 0x008a5dbf    50
                         push             0x00000105                              // 0x008a5dc0    6805010000
                         call             dword ptr [rdata_bytes + 0x18c]         // 0x008a5dc5    ff158c918a00
                         test             eax, eax                                // 0x008a5dcb    85c0
                         {disp8} je       _jmp_addr_0x008a5e17                    // 0x008a5dcd    7448
                         {disp32} mov     al, byte ptr [ebp + -0x00000108]        // 0x008a5dcf    8a85f8feffff
                         cmp              al, 0x5c                                // 0x008a5dd5    3c5c
                         {disp8} je       _jmp_addr_0x008a5ddd                    // 0x008a5dd7    7404
                         cmp              al, 0x2f                                // 0x008a5dd9    3c2f
                         {disp8} jne      _jmp_addr_0x008a5de5                    // 0x008a5ddb    7508
_jmp_addr_0x008a5ddd:    cmp              al, byte ptr [ebp + -0x00000107]        // 0x008a5ddd    3a85f9feffff
                         {disp8} je       _jmp_addr_0x008a5e13                    // 0x008a5de3    742e
_jmp_addr_0x008a5de5:    movzx            eax, al                                 // 0x008a5de5    0fb6c0
                         push             eax                                     // 0x008a5de8    50
                         {disp8} mov      byte ptr [ebp + 0x08], 0x3d             // 0x008a5de9    c645083d
                         call             __mbctoupper                            // 0x008a5ded    e889050000
                         and              byte ptr [ebp + 0x0b], 0x00             // 0x008a5df2    80650b00
                         {disp8} mov      byte ptr [ebp + 0x09], al               // 0x008a5df6    884509
                         pop              ecx                                     // 0x008a5df9    59
                         {disp32} lea     eax, dword ptr [ebp + -0x00000108]      // 0x008a5dfa    8d85f8feffff
                         push             eax                                     // 0x008a5e00    50
                         {disp8} lea      eax, dword ptr [ebp + 0x08]             // 0x008a5e01    8d4508
                         push             eax                                     // 0x008a5e04    50
                         {disp8} mov      byte ptr [ebp + 0x0a], 0x3a             // 0x008a5e05    c6450a3a
                         call             dword ptr [rdata_bytes + 0x1b4]         // 0x008a5e09    ff15b4918a00
                         test             eax, eax                                // 0x008a5e0f    85c0
                         {disp8} je       _jmp_addr_0x008a5e17                    // 0x008a5e11    7404
_jmp_addr_0x008a5e13:    xor.s            eax, eax                                // 0x008a5e13    33c0
                         leave                                                    // 0x008a5e15    c9
                         ret                                                      // 0x008a5e16    c3
_jmp_addr_0x008a5e17:    call             dword ptr [rdata_bytes + 0x1fc]         // 0x008a5e17    ff15fc918a00
                         push             eax                                     // 0x008a5e1d    50
                         call             _dosmaperr                              // 0x008a5e1e    e8eb31f2ff
                         pop              ecx                                     // 0x008a5e23    59
                         or               eax, -0x1                               // 0x008a5e24    83c8ff
                         leave                                                    // 0x008a5e27    c9
                         ret                                                      // 0x008a5e28    c3
__strlwr:                push             ebp                                     // 0x008a5e29    55
                         mov.s            ebp, esp                                // 0x008a5e2a    8bec
                         push             ecx                                     // 0x008a5e2c    51
                         push             ecx                                     // 0x008a5e2d    51
                         push             esi                                     // 0x008a5e2e    56
                         xor.s            esi, esi                                // 0x008a5e2f    33f6
                         cmp              dword ptr [data_bytes + 0x4be2a0], esi  // 0x008a5e31    3935a042e800
                         push             edi                                     // 0x008a5e37    57
                         {disp8} mov      dword ptr [ebp + -0x08], esi            // 0x008a5e38    8975f8
                         {disp8} jne      _jmp_addr_0x008a5e67                    // 0x008a5e3b    752a
                         {disp8} mov      eax, dword ptr [ebp + 0x08]             // 0x008a5e3d    8b4508
                         mov.s            edx, eax                                // 0x008a5e40    8bd0
                         cmp              byte ptr [eax], 0x00                    // 0x008a5e42    803800
                         {disp32} je      _jmp_addr_0x008a5f59                    // 0x008a5e45    0f840e010000
_jmp_addr_0x008a5e4b:    mov              cl, byte ptr [edx]                      // 0x008a5e4b    8a0a
                         cmp              cl, 0x41                                // 0x008a5e4d    80f941
                         {disp8} jl       _jmp_addr_0x008a5e5c                    // 0x008a5e50    7c0a
                         cmp              cl, 0x5a                                // 0x008a5e52    80f95a
                         {disp8} jg       _jmp_addr_0x008a5e5c                    // 0x008a5e55    7f05
                         add              cl, 0x20                                // 0x008a5e57    80c120
                         mov              byte ptr [edx], cl                      // 0x008a5e5a    880a
_jmp_addr_0x008a5e5c:    inc              edx                                     // 0x008a5e5c    42
                         cmp              byte ptr [edx], 0x00                    // 0x008a5e5d    803a00
                         {disp8} jne      _jmp_addr_0x008a5e4b                    // 0x008a5e60    75e9
                         {disp32} jmp     _jmp_addr_0x008a5f59                    // 0x008a5e62    e9f2000000
_jmp_addr_0x008a5e67:    mov              edi, 0x00fadcc8                         // 0x008a5e67    bfc8dcfa00
                         push             edi                                     // 0x008a5e6c    57
                         call             dword ptr [rdata_bytes + 0x310]         // 0x008a5e6d    ff1510938a00
                         cmp              dword ptr [data_bytes + 0x5e7cc4], esi  // 0x008a5e73    3935c4dcfa00
                         {disp8} je       _jmp_addr_0x008a5e93                    // 0x008a5e79    7418
                         push             edi                                     // 0x008a5e7b    57
                         call             dword ptr [rdata_bytes + 0x314]         // 0x008a5e7c    ff1514938a00
                         push             0x13                                    // 0x008a5e82    6a13
                         call             __lock                                   // 0x008a5e84    e82d58f2ff
                         pop              ecx                                     // 0x008a5e89    59
                         {disp8} mov      dword ptr [ebp + -0x04], 0x00000001     // 0x008a5e8a    c745fc01000000
                         {disp8} jmp      _jmp_addr_0x008a5e96                    // 0x008a5e91    eb03
_jmp_addr_0x008a5e93:    {disp8} mov      dword ptr [ebp + -0x04], esi            // 0x008a5e93    8975fc
_jmp_addr_0x008a5e96:    {disp32} mov     eax, dword ptr [data_bytes + 0x4be2a0]  // 0x008a5e96    a1a042e800
                         cmp.s            eax, esi                                // 0x008a5e9b    3bc6
                         {disp8} jne      _jmp_addr_0x008a5edc                    // 0x008a5e9d    753d
                         cmp              dword ptr [ebp + -0x04], esi            // 0x008a5e9f    3975fc
                         {disp8} je       _jmp_addr_0x008a5eae                    // 0x008a5ea2    740a
                         push             0x13                                    // 0x008a5ea4    6a13
                         call             __unlock                                // 0x008a5ea6    e86c58f2ff
                         pop              ecx                                     // 0x008a5eab    59
                         {disp8} jmp      _jmp_addr_0x008a5eb5                    // 0x008a5eac    eb07
_jmp_addr_0x008a5eae:    push             edi                                     // 0x008a5eae    57
                         call             dword ptr [rdata_bytes + 0x314]         // 0x008a5eaf    ff1514938a00
_jmp_addr_0x008a5eb5:    {disp8} mov      eax, dword ptr [ebp + 0x08]             // 0x008a5eb5    8b4508
                         mov.s            edx, eax                                // 0x008a5eb8    8bd0
                         cmp              byte ptr [eax], 0x00                    // 0x008a5eba    803800
                         {disp32} je      _jmp_addr_0x008a5f59                    // 0x008a5ebd    0f8496000000
_jmp_addr_0x008a5ec3:    mov              cl, byte ptr [edx]                      // 0x008a5ec3    8a0a
                         cmp              cl, 0x41                                // 0x008a5ec5    80f941
                         {disp8} jl       _jmp_addr_0x008a5ed4                    // 0x008a5ec8    7c0a
                         cmp              cl, 0x5a                                // 0x008a5eca    80f95a
                         {disp8} jg       _jmp_addr_0x008a5ed4                    // 0x008a5ecd    7f05
                         add              cl, 0x20                                // 0x008a5ecf    80c120
                         mov              byte ptr [edx], cl                      // 0x008a5ed2    880a
_jmp_addr_0x008a5ed4:    inc              edx                                     // 0x008a5ed4    42
                         cmp              byte ptr [edx], 0x00                    // 0x008a5ed5    803a00
                         {disp8} jne      _jmp_addr_0x008a5ec3                    // 0x008a5ed8    75e9
                         {disp8} jmp      _jmp_addr_0x008a5f59                    // 0x008a5eda    eb7d
_jmp_addr_0x008a5edc:    push             ebx                                     // 0x008a5edc    53
                         push             0x1                                     // 0x008a5edd    6a01
                         push             esi                                     // 0x008a5edf    56
                         push             esi                                     // 0x008a5ee0    56
                         push             esi                                     // 0x008a5ee1    56
                         push             -0x1                                    // 0x008a5ee2    6aff
                         push             dword ptr [ebp + 0x08]                  // 0x008a5ee4    ff7508
                         mov              esi, 0x00000100                         // 0x008a5ee7    be00010000
                         push             esi                                     // 0x008a5eec    56
                         push             eax                                     // 0x008a5eed    50
                         call             ___crtLCMapStringA                      // 0x008a5eee    e85158f2ff
                         mov.s            ebx, eax                                // 0x008a5ef3    8bd8
                         add              esp, 0x20                               // 0x008a5ef5    83c420
                         test             ebx, ebx                                // 0x008a5ef8    85db
                         {disp8} je       _jmp_addr_0x008a5f35                    // 0x008a5efa    7439
                         push             ebx                                     // 0x008a5efc    53
                         call             _jmp_addr_0x007c664c                    // 0x008a5efd    e84a07f2ff
                         test             eax, eax                                // 0x008a5f02    85c0
                         pop              ecx                                     // 0x008a5f04    59
                         {disp8} mov      dword ptr [ebp + -0x08], eax            // 0x008a5f05    8945f8
                         {disp8} je       _jmp_addr_0x008a5f35                    // 0x008a5f08    742b
                         push             0x1                                     // 0x008a5f0a    6a01
                         push             0x0                                     // 0x008a5f0c    6a00
                         push             ebx                                     // 0x008a5f0e    53
                         push             eax                                     // 0x008a5f0f    50
                         push             -0x1                                    // 0x008a5f10    6aff
                         push             dword ptr [ebp + 0x08]                  // 0x008a5f12    ff7508
                         push             esi                                     // 0x008a5f15    56
                         push             dword ptr [data_bytes + 0x4be2a0]       // 0x008a5f16    ff35a042e800
                         call             ___crtLCMapStringA                      // 0x008a5f1c    e82358f2ff
                         add              esp, 0x20                               // 0x008a5f21    83c420
                         test             eax, eax                                // 0x008a5f24    85c0
                         {disp8} je       _jmp_addr_0x008a5f35                    // 0x008a5f26    740d
                         push             dword ptr [ebp + -0x08]                 // 0x008a5f28    ff75f8
                         push             dword ptr [ebp + 0x08]                  // 0x008a5f2b    ff7508
                         call             _strcpy                                 // 0x008a5f2e    e83df1f2ff
                         pop              ecx                                     // 0x008a5f33    59
                         pop              ecx                                     // 0x008a5f34    59
_jmp_addr_0x008a5f35:    cmp              dword ptr [ebp + -0x04], 0x00           // 0x008a5f35    837dfc00
                         pop              ebx                                     // 0x008a5f39    5b
                         {disp8} je       _jmp_addr_0x008a5f46                    // 0x008a5f3a    740a
                         push             0x13                                    // 0x008a5f3c    6a13
                         call             __unlock                                // 0x008a5f3e    e8d457f2ff
                         pop              ecx                                     // 0x008a5f43    59
                         {disp8} jmp      _jmp_addr_0x008a5f4d                    // 0x008a5f44    eb07
_jmp_addr_0x008a5f46:    push             edi                                     // 0x008a5f46    57
                         call             dword ptr [rdata_bytes + 0x314]         // 0x008a5f47    ff1514938a00
_jmp_addr_0x008a5f4d:    push             dword ptr [ebp + -0x08]                 // 0x008a5f4d    ff75f8
                         call             _free                                   // 0x008a5f50    e83108f2ff
                         {disp8} mov      eax, dword ptr [ebp + 0x08]             // 0x008a5f55    8b4508
                         pop              ecx                                     // 0x008a5f58    59
_jmp_addr_0x008a5f59:    pop              edi                                     // 0x008a5f59    5f
                         pop              esi                                     // 0x008a5f5a    5e
                         leave                                                    // 0x008a5f5b    c9
                         ret                                                      // 0x008a5f5c    c3
_jmp_addr_0x008a5f5d:    jmp              dword ptr [rdata_bytes + 0x31c]         // 0x008a5f5d    ff251c938a00
