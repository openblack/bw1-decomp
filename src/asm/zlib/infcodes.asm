.intel_syntax noprefix
.align 16

.extern _inflate_flush
.extern _inflate_fast

.globl _inflate_codes_new
.globl _inflate_codes
.globl _inflate_codes_free

_inflate_codes_new:      {disp8} mov      eax, dword ptr [esp + 0x14]             // 0x007c3ce0    8b442414
                         push             0x1c                                    // 0x007c3ce4    6a1c
                         push             0x1                                     // 0x007c3ce6    6a01
                         {disp8} mov      ecx, dword ptr [eax + 0x28]             // 0x007c3ce8    8b4828
                         push             ecx                                     // 0x007c3ceb    51
                         call             dword ptr [eax + 0x20]                  // 0x007c3cec    ff5020
                         add              esp, 0x0c                               // 0x007c3cef    83c40c
                         test             eax, eax                                // 0x007c3cf2    85c0
                         {disp8} je       _jmp_addr_0x007c3d18                    // 0x007c3cf4    7422
                         {disp8} mov      dl, byte ptr [esp + 0x04]               // 0x007c3cf6    8a542404
                         {disp8} mov      cl, byte ptr [esp + 0x08]               // 0x007c3cfa    8a4c2408
                         {disp8} mov      byte ptr [eax + 0x10], dl               // 0x007c3cfe    885010
                         {disp8} mov      edx, dword ptr [esp + 0x0c]             // 0x007c3d01    8b54240c
                         {disp8} mov      byte ptr [eax + 0x11], cl               // 0x007c3d05    884811
                         {disp8} mov      ecx, dword ptr [esp + 0x10]             // 0x007c3d08    8b4c2410
                         mov              dword ptr [eax], 0x00000000             // 0x007c3d0c    c70000000000
                         {disp8} mov      dword ptr [eax + 0x14], edx             // 0x007c3d12    895014
                         {disp8} mov      dword ptr [eax + 0x18], ecx             // 0x007c3d15    894818
_jmp_addr_0x007c3d18:    ret                                                      // 0x007c3d18    c3
                         nop                                                      // 0x007c3d19    90
                         nop                                                      // 0x007c3d1a    90
                         nop                                                      // 0x007c3d1b    90
                         nop                                                      // 0x007c3d1c    90
                         nop                                                      // 0x007c3d1d    90
                         nop                                                      // 0x007c3d1e    90
                         nop                                                      // 0x007c3d1f    90
_inflate_codes:          sub              esp, 0x10                               // 0x007c3d20    83ec10
                         push             ebx                                     // 0x007c3d23    53
                         push             ebp                                     // 0x007c3d24    55
                         push             esi                                     // 0x007c3d25    56
                         {disp8} mov      esi, dword ptr [esp + 0x20]             // 0x007c3d26    8b742420
                         push             edi                                     // 0x007c3d2a    57
                         {disp8} mov      edi, dword ptr [esp + 0x28]             // 0x007c3d2b    8b7c2428
                         {disp8} mov      edx, dword ptr [esi + 0x20]             // 0x007c3d2f    8b5620
                         {disp8} mov      eax, dword ptr [esi + 0x04]             // 0x007c3d32    8b4604
                         {disp8} mov      ecx, dword ptr [edi + 0x04]             // 0x007c3d35    8b4f04
                         mov              ebp, dword ptr [edi]                    // 0x007c3d38    8b2f
                         {disp8} mov      ebx, dword ptr [esi + 0x1c]             // 0x007c3d3a    8b5e1c
                         {disp8} mov      dword ptr [esp + 0x28], ecx             // 0x007c3d3d    894c2428
                         {disp8} mov      ecx, dword ptr [esi + 0x30]             // 0x007c3d41    8b4e30
                         {disp8} mov      dword ptr [esp + 0x24], edx             // 0x007c3d44    89542424
                         {disp8} mov      edx, dword ptr [esi + 0x34]             // 0x007c3d48    8b5634
                         {disp8} mov      dword ptr [esp + 0x10], eax             // 0x007c3d4b    89442410
                         cmp.s            edx, ecx                                // 0x007c3d4f    3bd1
                         {disp8} jae      _jmp_addr_0x007c3d58                    // 0x007c3d51    7305
                         sub.s            ecx, edx                                // 0x007c3d53    2bca
                         dec              ecx                                     // 0x007c3d55    49
                         {disp8} jmp      _jmp_addr_0x007c3d5d                    // 0x007c3d56    eb05
_jmp_addr_0x007c3d58:    {disp8} mov      ecx, dword ptr [esi + 0x2c]             // 0x007c3d58    8b4e2c
                         sub.s            ecx, edx                                // 0x007c3d5b    2bca
_jmp_addr_0x007c3d5d:    {disp8} mov      dword ptr [esp + 0x14], ecx             // 0x007c3d5d    894c2414
_jmp_addr_0x007c3d61:    mov              ecx, dword ptr [eax]                    // 0x007c3d61    8b08
                         cmp              ecx, 0x09                               // 0x007c3d63    83f909
                         {disp32} ja      _jmp_addr_0x007c4467                    // 0x007c3d66    0f87fb060000
                         jmp              dword ptr [ecx*4 + 0x7c44a0]            // 0x007c3d6c    ff248da0447c00
                         cmp              dword ptr [esp + 0x14], 0x00000102      // 0x007c3d73    817c241402010000
                         {disp32} jb      _jmp_addr_0x007c3e1d                    // 0x007c3d7b    0f829c000000
                         cmp              dword ptr [esp + 0x28], 0x0a            // 0x007c3d81    837c24280a
                         {disp32} jb      _jmp_addr_0x007c3e1d                    // 0x007c3d86    0f8291000000
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c3d8c    8b442424
                         {disp8} mov      ecx, dword ptr [esp + 0x28]             // 0x007c3d90    8b4c2428
                         {disp8} mov      dword ptr [esi + 0x20], eax             // 0x007c3d94    894620
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c3d97    895e1c
                         mov              ebx, dword ptr [edi]                    // 0x007c3d9a    8b1f
                         mov.s            eax, ebp                                // 0x007c3d9c    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx             // 0x007c3d9e    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]             // 0x007c3da1    8b4f08
                         sub.s            eax, ebx                                // 0x007c3da4    2bc3
                         mov              dword ptr [edi], ebp                    // 0x007c3da6    892f
                         add.s            ecx, eax                                // 0x007c3da8    03c8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3daa    8b442410
                         {disp8} mov      dword ptr [edi + 0x08], ecx             // 0x007c3dae    894f08
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c3db1    895634
                         {disp8} mov      ecx, dword ptr [eax + 0x18]             // 0x007c3db4    8b4818
                         {disp8} mov      edx, dword ptr [eax + 0x14]             // 0x007c3db7    8b5014
                         push             edi                                     // 0x007c3dba    57
                         push             esi                                     // 0x007c3dbb    56
                         push             ecx                                     // 0x007c3dbc    51
                         push             edx                                     // 0x007c3dbd    52
                         xor.s            ecx, ecx                                // 0x007c3dbe    33c9
                         xor.s            edx, edx                                // 0x007c3dc0    33d2
                         {disp8} mov      cl, byte ptr [eax + 0x11]               // 0x007c3dc2    8a4811
                         {disp8} mov      dl, byte ptr [eax + 0x10]               // 0x007c3dc5    8a5010
                         push             ecx                                     // 0x007c3dc8    51
                         push             edx                                     // 0x007c3dc9    52
                         call             _inflate_fast                           // 0x007c3dca    e8a10f0000
                         {disp8} mov      ecx, dword ptr [edi + 0x04]             // 0x007c3dcf    8b4f04
                         {disp8} mov      edx, dword ptr [esi + 0x20]             // 0x007c3dd2    8b5620
                         mov              ebp, dword ptr [edi]                    // 0x007c3dd5    8b2f
                         {disp8} mov      ebx, dword ptr [esi + 0x1c]             // 0x007c3dd7    8b5e1c
                         {disp8} mov      dword ptr [esp + 0x40], ecx             // 0x007c3dda    894c2440
                         {disp8} mov      ecx, dword ptr [esi + 0x30]             // 0x007c3dde    8b4e30
                         {disp8} mov      dword ptr [esp + 0x3c], edx             // 0x007c3de1    8954243c
                         {disp8} mov      edx, dword ptr [esi + 0x34]             // 0x007c3de5    8b5634
                         add              esp, 0x18                               // 0x007c3de8    83c418
                         cmp.s            edx, ecx                                // 0x007c3deb    3bd1
                         {disp8} mov      dword ptr [esp + 0x2c], eax             // 0x007c3ded    8944242c
                         {disp8} jae      _jmp_addr_0x007c3df8                    // 0x007c3df1    7305
                         sub.s            ecx, edx                                // 0x007c3df3    2bca
                         dec              ecx                                     // 0x007c3df5    49
                         {disp8} jmp      _jmp_addr_0x007c3dfd                    // 0x007c3df6    eb05
_jmp_addr_0x007c3df8:    {disp8} mov      ecx, dword ptr [esi + 0x2c]             // 0x007c3df8    8b4e2c
                         sub.s            ecx, edx                                // 0x007c3dfb    2bca
_jmp_addr_0x007c3dfd:    test             eax, eax                                // 0x007c3dfd    85c0
                         {disp8} mov      dword ptr [esp + 0x14], ecx             // 0x007c3dff    894c2414
                         {disp8} je       _jmp_addr_0x007c3e1d                    // 0x007c3e03    7418
                         {disp8} mov      ecx, dword ptr [esp + 0x10]             // 0x007c3e05    8b4c2410
                         dec              eax                                     // 0x007c3e09    48
                         neg              eax                                     // 0x007c3e0a    f7d8
                         sbb.s            eax, eax                                // 0x007c3e0c    1bc0
                         and              eax, 0x02                               // 0x007c3e0e    83e002
                         add              eax, 0x07                               // 0x007c3e11    83c007
                         mov              dword ptr [ecx], eax                    // 0x007c3e14    8901
                         mov.s            eax, ecx                                // 0x007c3e16    8bc1
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c3e18    e944ffffff
_jmp_addr_0x007c3e1d:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3e1d    8b442410
                         xor.s            ecx, ecx                                // 0x007c3e21    33c9
                         {disp8} mov      cl, byte ptr [eax + 0x10]               // 0x007c3e23    8a4810
                         mov              dword ptr [eax], 0x00000001             // 0x007c3e26    c70001000000
                         {disp8} mov      dword ptr [eax + 0x0c], ecx             // 0x007c3e2c    89480c
                         {disp8} mov      ecx, dword ptr [eax + 0x14]             // 0x007c3e2f    8b4814
                         {disp8} mov      dword ptr [eax + 0x08], ecx             // 0x007c3e32    894808
                         {disp8} mov      eax, dword ptr [eax + 0x0c]             // 0x007c3e35    8b400c
                         cmp.s            ebx, eax                                // 0x007c3e38    3bd8
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c3e3a    89442418
                         {disp8} jae      _jmp_addr_0x007c3e78                    // 0x007c3e3e    7338
_jmp_addr_0x007c3e40:    {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x007c3e40    8b442428
                         test             eax, eax                                // 0x007c3e44    85c0
                         {disp32} je      _jmp_addr_0x007c42c9                    // 0x007c3e46    0f847d040000
                         dec              eax                                     // 0x007c3e4c    48
                         mov.s            ecx, ebx                                // 0x007c3e4d    8bcb
                         {disp8} mov      dword ptr [esp + 0x28], eax             // 0x007c3e4f    89442428
                         xor.s            eax, eax                                // 0x007c3e53    33c0
                         {disp8} mov      al, byte ptr [ebp + 0x00]               // 0x007c3e55    8a4500
                         add              ebx, 0x08                               // 0x007c3e58    83c308
                         shl              eax, cl                                 // 0x007c3e5b    d3e0
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c3e5d    8b4c2424
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000      // 0x007c3e61    c744242c00000000
                         or.s             ecx, eax                                // 0x007c3e69    0bc8
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c3e6b    8b442418
                         inc              ebp                                     // 0x007c3e6f    45
                         cmp.s            ebx, eax                                // 0x007c3e70    3bd8
                         {disp8} mov      dword ptr [esp + 0x24], ecx             // 0x007c3e72    894c2424
                         .byte            0x72, 0xc8// {disp8} jb _jmp_addr_0x007c3e40 // 0x007c3e76    72c8
_jmp_addr_0x007c3e78:    {disp32} mov     ecx, dword ptr [eax * 0x4 + 0x00c2d350] // 0x007c3e78    8b0c8550d3c200
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c3e7f    8b442424
                         and.s            ecx, eax                                // 0x007c3e83    23c8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3e85    8b442410
                         {disp8} mov      eax, dword ptr [eax + 0x08]             // 0x007c3e89    8b4008
                         lea              eax, dword ptr [eax + ecx * 0x8]        // 0x007c3e8c    8d04c8
                         xor.s            ecx, ecx                                // 0x007c3e8f    33c9
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c3e91    89442418
                         {disp8} mov      cl, byte ptr [eax + 0x01]               // 0x007c3e95    8a4801
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c3e98    8b442424
                         shr              eax, cl                                 // 0x007c3e9c    d3e8
                         {disp8} mov      dword ptr [esp + 0x1c], ecx             // 0x007c3e9e    894c241c
                         {disp8} mov      dword ptr [esp + 0x24], eax             // 0x007c3ea2    89442424
                         mov.s            eax, ecx                                // 0x007c3ea6    8bc1
                         sub.s            ebx, eax                                // 0x007c3ea8    2bd8
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c3eaa    8b442418
                         xor.s            ecx, ecx                                // 0x007c3eae    33c9
                         mov              cl, byte ptr [eax]                      // 0x007c3eb0    8a08
                         test             ecx, ecx                                // 0x007c3eb2    85c9
                         {disp8} jne      _jmp_addr_0x007c3ecb                    // 0x007c3eb4    7515
                         {disp8} mov      ecx, dword ptr [eax + 0x04]             // 0x007c3eb6    8b4804
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3eb9    8b442410
                         {disp8} mov      dword ptr [eax + 0x08], ecx             // 0x007c3ebd    894808
                         mov              dword ptr [eax], 0x00000006             // 0x007c3ec0    c70006000000
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c3ec6    e996feffff
_jmp_addr_0x007c3ecb:    test             cl, 0x10                                // 0x007c3ecb    f6c110
                         {disp8} je       _jmp_addr_0x007c3eef                    // 0x007c3ece    741f
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3ed0    8b442410
                         and              ecx, 0x0f                               // 0x007c3ed4    83e10f
                         {disp8} mov      dword ptr [eax + 0x08], ecx             // 0x007c3ed7    894808
                         {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007c3eda    8b4c2418
                         {disp8} mov      ecx, dword ptr [ecx + 0x04]             // 0x007c3ede    8b4904
                         mov              dword ptr [eax], 0x00000002             // 0x007c3ee1    c70002000000
                         {disp8} mov      dword ptr [eax + 0x04], ecx             // 0x007c3ee7    894804
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c3eea    e972feffff
_jmp_addr_0x007c3eef:    test             cl, 0x40                                // 0x007c3eef    f6c140
                         {disp8} jne      _jmp_addr_0x007c3f11                    // 0x007c3ef2    751d
_jmp_addr_0x007c3ef4:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3ef4    8b442410
                         {disp8} mov      dword ptr [eax + 0x0c], ecx             // 0x007c3ef8    89480c
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c3efb    8b442418
                         {disp8} mov      ecx, dword ptr [eax + 0x04]             // 0x007c3eff    8b4804
                         lea              ecx, dword ptr [eax + ecx * 0x8]        // 0x007c3f02    8d0cc8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3f05    8b442410
                         {disp8} mov      dword ptr [eax + 0x08], ecx             // 0x007c3f09    894808
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c3f0c    e950feffff
_jmp_addr_0x007c3f11:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3f11    8b442410
                         test             cl, 0x20                                // 0x007c3f15    f6c120
                         {disp32} je      _jmp_addr_0x007c42ba                    // 0x007c3f18    0f849c030000
                         mov              dword ptr [eax], 0x00000007             // 0x007c3f1e    c70007000000
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c3f24    e938feffff
                         {disp8} mov      eax, dword ptr [eax + 0x08]             // 0x007c3f29    8b4008
                         cmp.s            ebx, eax                                // 0x007c3f2c    3bd8
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c3f2e    89442418
                         {disp8} jae      _jmp_addr_0x007c3f6c                    // 0x007c3f32    7338
_jmp_addr_0x007c3f34:    {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x007c3f34    8b442428
                         test             eax, eax                                // 0x007c3f38    85c0
                         {disp32} je      _jmp_addr_0x007c42c9                    // 0x007c3f3a    0f8489030000
                         dec              eax                                     // 0x007c3f40    48
                         mov.s            ecx, ebx                                // 0x007c3f41    8bcb
                         {disp8} mov      dword ptr [esp + 0x28], eax             // 0x007c3f43    89442428
                         xor.s            eax, eax                                // 0x007c3f47    33c0
                         {disp8} mov      al, byte ptr [ebp + 0x00]               // 0x007c3f49    8a4500
                         add              ebx, 0x08                               // 0x007c3f4c    83c308
                         shl              eax, cl                                 // 0x007c3f4f    d3e0
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c3f51    8b4c2424
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000      // 0x007c3f55    c744242c00000000
                         or.s             ecx, eax                                // 0x007c3f5d    0bc8
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c3f5f    8b442418
                         inc              ebp                                     // 0x007c3f63    45
                         cmp.s            ebx, eax                                // 0x007c3f64    3bd8
                         {disp8} mov      dword ptr [esp + 0x24], ecx             // 0x007c3f66    894c2424
                         .byte            0x72, 0xc8// {disp8} jb _jmp_addr_0x007c3f34 // 0x007c3f6a    72c8
_jmp_addr_0x007c3f6c:    {disp32} mov     ecx, dword ptr [eax * 0x4 + 0x00c2d350] // 0x007c3f6c    8b0c8550d3c200
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c3f73    8b442424
                         and.s            ecx, eax                                // 0x007c3f77    23c8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3f79    8b442410
                         add              dword ptr [eax + 0x04], ecx             // 0x007c3f7d    014804
                         {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007c3f80    8b4c2418
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c3f84    8b442424
                         shr              eax, cl                                 // 0x007c3f88    d3e8
                         {disp8} mov      dword ptr [esp + 0x24], eax             // 0x007c3f8a    89442424
                         mov.s            eax, ecx                                // 0x007c3f8e    8bc1
                         sub.s            ebx, eax                                // 0x007c3f90    2bd8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3f92    8b442410
                         xor.s            ecx, ecx                                // 0x007c3f96    33c9
                         {disp8} mov      cl, byte ptr [eax + 0x11]               // 0x007c3f98    8a4811
                         mov              dword ptr [eax], 0x00000003             // 0x007c3f9b    c70003000000
                         {disp8} mov      dword ptr [eax + 0x0c], ecx             // 0x007c3fa1    89480c
                         {disp8} mov      ecx, dword ptr [eax + 0x18]             // 0x007c3fa4    8b4818
                         {disp8} mov      dword ptr [eax + 0x08], ecx             // 0x007c3fa7    894808
                         {disp8} mov      eax, dword ptr [eax + 0x0c]             // 0x007c3faa    8b400c
                         cmp.s            ebx, eax                                // 0x007c3fad    3bd8
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c3faf    89442418
                         {disp8} jae      _jmp_addr_0x007c3fed                    // 0x007c3fb3    7338
_jmp_addr_0x007c3fb5:    {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x007c3fb5    8b442428
                         test             eax, eax                                // 0x007c3fb9    85c0
                         {disp32} je      _jmp_addr_0x007c42c9                    // 0x007c3fbb    0f8408030000
                         dec              eax                                     // 0x007c3fc1    48
                         mov.s            ecx, ebx                                // 0x007c3fc2    8bcb
                         {disp8} mov      dword ptr [esp + 0x28], eax             // 0x007c3fc4    89442428
                         xor.s            eax, eax                                // 0x007c3fc8    33c0
                         {disp8} mov      al, byte ptr [ebp + 0x00]               // 0x007c3fca    8a4500
                         add              ebx, 0x08                               // 0x007c3fcd    83c308
                         shl              eax, cl                                 // 0x007c3fd0    d3e0
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c3fd2    8b4c2424
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000      // 0x007c3fd6    c744242c00000000
                         or.s             ecx, eax                                // 0x007c3fde    0bc8
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c3fe0    8b442418
                         inc              ebp                                     // 0x007c3fe4    45
                         cmp.s            ebx, eax                                // 0x007c3fe5    3bd8
                         {disp8} mov      dword ptr [esp + 0x24], ecx             // 0x007c3fe7    894c2424
                         .byte            0x72, 0xc8// {disp8} jb _jmp_addr_0x007c3fb5 // 0x007c3feb    72c8
_jmp_addr_0x007c3fed:    {disp32} mov     ecx, dword ptr [eax * 0x4 + 0x00c2d350] // 0x007c3fed    8b0c8550d3c200
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c3ff4    8b442424
                         and.s            ecx, eax                                // 0x007c3ff8    23c8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c3ffa    8b442410
                         {disp8} mov      eax, dword ptr [eax + 0x08]             // 0x007c3ffe    8b4008
                         lea              eax, dword ptr [eax + ecx * 0x8]        // 0x007c4001    8d04c8
                         xor.s            ecx, ecx                                // 0x007c4004    33c9
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c4006    89442418
                         {disp8} mov      cl, byte ptr [eax + 0x01]               // 0x007c400a    8a4801
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c400d    8b442424
                         shr              eax, cl                                 // 0x007c4011    d3e8
                         {disp8} mov      dword ptr [esp + 0x1c], ecx             // 0x007c4013    894c241c
                         sub.s            ebx, ecx                                // 0x007c4017    2bd9
                         xor.s            ecx, ecx                                // 0x007c4019    33c9
                         {disp8} mov      dword ptr [esp + 0x24], eax             // 0x007c401b    89442424
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c401f    8b442418
                         mov              cl, byte ptr [eax]                      // 0x007c4023    8a08
                         test             cl, 0x10                                // 0x007c4025    f6c110
                         {disp8} je       _jmp_addr_0x007c4049                    // 0x007c4028    741f
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c402a    8b442410
                         and              ecx, 0x0f                               // 0x007c402e    83e10f
                         {disp8} mov      dword ptr [eax + 0x08], ecx             // 0x007c4031    894808
                         {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007c4034    8b4c2418
                         {disp8} mov      ecx, dword ptr [ecx + 0x04]             // 0x007c4038    8b4904
                         mov              dword ptr [eax], 0x00000004             // 0x007c403b    c70004000000
                         {disp8} mov      dword ptr [eax + 0x0c], ecx             // 0x007c4041    89480c
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c4044    e918fdffff
_jmp_addr_0x007c4049:    test             cl, 0x40                                // 0x007c4049    f6c140
                         {disp32} jne     _jmp_addr_0x007c4304                    // 0x007c404c    0f85b2020000
                         {disp32} jmp     _jmp_addr_0x007c3ef4                    // 0x007c4052    e99dfeffff
                         {disp8} mov      eax, dword ptr [eax + 0x08]             // 0x007c4057    8b4008
                         cmp.s            ebx, eax                                // 0x007c405a    3bd8
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c405c    89442418
                         {disp8} jae      _jmp_addr_0x007c409a                    // 0x007c4060    7338
_jmp_addr_0x007c4062:    {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x007c4062    8b442428
                         test             eax, eax                                // 0x007c4066    85c0
                         {disp32} je      _jmp_addr_0x007c42c9                    // 0x007c4068    0f845b020000
                         dec              eax                                     // 0x007c406e    48
                         mov.s            ecx, ebx                                // 0x007c406f    8bcb
                         {disp8} mov      dword ptr [esp + 0x28], eax             // 0x007c4071    89442428
                         xor.s            eax, eax                                // 0x007c4075    33c0
                         {disp8} mov      al, byte ptr [ebp + 0x00]               // 0x007c4077    8a4500
                         add              ebx, 0x08                               // 0x007c407a    83c308
                         shl              eax, cl                                 // 0x007c407d    d3e0
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c407f    8b4c2424
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000      // 0x007c4083    c744242c00000000
                         or.s             ecx, eax                                // 0x007c408b    0bc8
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c408d    8b442418
                         inc              ebp                                     // 0x007c4091    45
                         cmp.s            ebx, eax                                // 0x007c4092    3bd8
                         {disp8} mov      dword ptr [esp + 0x24], ecx             // 0x007c4094    894c2424
                         .byte            0x72, 0xc8// {disp8} jb _jmp_addr_0x007c4062 // 0x007c4098    72c8
_jmp_addr_0x007c409a:    {disp32} mov     ecx, dword ptr [eax * 0x4 + 0x00c2d350] // 0x007c409a    8b0c8550d3c200
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c40a1    8b442424
                         and.s            ecx, eax                                // 0x007c40a5    23c8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c40a7    8b442410
                         add              dword ptr [eax + 0x0c], ecx             // 0x007c40ab    01480c
                         {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007c40ae    8b4c2418
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c40b2    8b442424
                         shr              eax, cl                                 // 0x007c40b6    d3e8
                         {disp8} mov      dword ptr [esp + 0x24], eax             // 0x007c40b8    89442424
                         mov.s            eax, ecx                                // 0x007c40bc    8bc1
                         sub.s            ebx, eax                                // 0x007c40be    2bd8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c40c0    8b442410
                         mov              dword ptr [eax], 0x00000005             // 0x007c40c4    c70005000000
                         {disp8} mov      eax, dword ptr [esi + 0x28]             // 0x007c40ca    8b4628
                         mov.s            ecx, edx                                // 0x007c40cd    8bca
                         sub.s            ecx, eax                                // 0x007c40cf    2bc8
                         {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c40d1    8b442410
                         {disp8} mov      eax, dword ptr [eax + 0x0c]             // 0x007c40d5    8b400c
                         cmp.s            ecx, eax                                // 0x007c40d8    3bc8
                         {disp8} jae      _jmp_addr_0x007c40f3                    // 0x007c40da    7317
                         {disp8} mov      eax, dword ptr [esi + 0x2c]             // 0x007c40dc    8b462c
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c40df    8b4e28
                         sub.s            eax, ecx                                // 0x007c40e2    2bc1
                         {disp8} mov      ecx, dword ptr [esp + 0x10]             // 0x007c40e4    8b4c2410
                         sub              eax, dword ptr [ecx + 0x0c]             // 0x007c40e8    2b410c
                         add.s            eax, edx                                // 0x007c40eb    03c2
                         {disp8} mov      dword ptr [esp + 0x1c], eax             // 0x007c40ed    8944241c
                         {disp8} jmp      _jmp_addr_0x007c40fb                    // 0x007c40f1    eb08
_jmp_addr_0x007c40f3:    mov.s            ecx, edx                                // 0x007c40f3    8bca
                         sub.s            ecx, eax                                // 0x007c40f5    2bc8
                         {disp8} mov      dword ptr [esp + 0x1c], ecx             // 0x007c40f7    894c241c
_jmp_addr_0x007c40fb:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c40fb    8b442410
                         {disp8} mov      ecx, dword ptr [eax + 0x04]             // 0x007c40ff    8b4804
                         test             ecx, ecx                                // 0x007c4102    85c9
                         {disp32} je      _jmp_addr_0x007c41ec                    // 0x007c4104    0f84e2000000
_jmp_addr_0x007c410a:    {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007c410a    8b4c2414
                         test             ecx, ecx                                // 0x007c410e    85c9
                         {disp32} jne     _jmp_addr_0x007c41ab                    // 0x007c4110    0f8595000000
                         {disp8} mov      eax, dword ptr [esi + 0x2c]             // 0x007c4116    8b462c
                         cmp.s            edx, eax                                // 0x007c4119    3bd0
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c411b    89442418
                         {disp8} jne      _jmp_addr_0x007c4144                    // 0x007c411f    7523
                         {disp8} mov      eax, dword ptr [esi + 0x30]             // 0x007c4121    8b4630
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c4124    8b4e28
                         cmp.s            eax, ecx                                // 0x007c4127    3bc1
                         {disp8} je       _jmp_addr_0x007c4144                    // 0x007c4129    7419
                         mov.s            edx, ecx                                // 0x007c412b    8bd1
                         cmp.s            edx, eax                                // 0x007c412d    3bd0
                         {disp8} jae      _jmp_addr_0x007c4136                    // 0x007c412f    7305
                         sub.s            eax, edx                                // 0x007c4131    2bc2
                         dec              eax                                     // 0x007c4133    48
                         {disp8} jmp      _jmp_addr_0x007c413c                    // 0x007c4134    eb06
_jmp_addr_0x007c4136:    {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c4136    8b442418
                         sub.s            eax, edx                                // 0x007c413a    2bc2
_jmp_addr_0x007c413c:    test             eax, eax                                // 0x007c413c    85c0
                         {disp8} mov      dword ptr [esp + 0x14], eax             // 0x007c413e    89442414
                         {disp8} jne      _jmp_addr_0x007c41a7                    // 0x007c4142    7563
_jmp_addr_0x007c4144:    {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c4144    895634
                         {disp8} mov      edx, dword ptr [esp + 0x2c]             // 0x007c4147    8b54242c
                         push             edx                                     // 0x007c414b    52
                         push             edi                                     // 0x007c414c    57
                         push             esi                                     // 0x007c414d    56
                         call             _inflate_flush                          // 0x007c414e    e8dd0a0000
                         {disp8} mov      edx, dword ptr [esi + 0x34]             // 0x007c4153    8b5634
                         {disp8} mov      dword ptr [esp + 0x38], eax             // 0x007c4156    89442438
                         {disp8} mov      eax, dword ptr [esi + 0x30]             // 0x007c415a    8b4630
                         add              esp, 0x0c                               // 0x007c415d    83c40c
                         cmp.s            edx, eax                                // 0x007c4160    3bd0
                         {disp8} jae      _jmp_addr_0x007c416b                    // 0x007c4162    7307
                         mov.s            ecx, eax                                // 0x007c4164    8bc8
                         sub.s            ecx, edx                                // 0x007c4166    2bca
                         dec              ecx                                     // 0x007c4168    49
                         {disp8} jmp      _jmp_addr_0x007c4170                    // 0x007c4169    eb05
_jmp_addr_0x007c416b:    {disp8} mov      ecx, dword ptr [esi + 0x2c]             // 0x007c416b    8b4e2c
                         sub.s            ecx, edx                                // 0x007c416e    2bca
_jmp_addr_0x007c4170:    {disp8} mov      dword ptr [esp + 0x14], ecx             // 0x007c4170    894c2414
                         {disp8} mov      ecx, dword ptr [esi + 0x2c]             // 0x007c4174    8b4e2c
                         cmp.s            edx, ecx                                // 0x007c4177    3bd1
                         {disp8} mov      dword ptr [esp + 0x18], ecx             // 0x007c4179    894c2418
                         {disp8} jne      _jmp_addr_0x007c419b                    // 0x007c417d    751c
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c417f    8b4e28
                         cmp.s            eax, ecx                                // 0x007c4182    3bc1
                         {disp8} je       _jmp_addr_0x007c419b                    // 0x007c4184    7415
                         mov.s            edx, ecx                                // 0x007c4186    8bd1
                         cmp.s            edx, eax                                // 0x007c4188    3bd0
                         {disp8} jae      _jmp_addr_0x007c4191                    // 0x007c418a    7305
                         sub.s            eax, edx                                // 0x007c418c    2bc2
                         dec              eax                                     // 0x007c418e    48
                         {disp8} jmp      _jmp_addr_0x007c4197                    // 0x007c418f    eb06
_jmp_addr_0x007c4191:    {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c4191    8b442418
                         sub.s            eax, edx                                // 0x007c4195    2bc2
_jmp_addr_0x007c4197:    {disp8} mov      dword ptr [esp + 0x14], eax             // 0x007c4197    89442414
_jmp_addr_0x007c419b:    {disp8} mov      eax, dword ptr [esp + 0x14]             // 0x007c419b    8b442414
                         test             eax, eax                                // 0x007c419f    85c0
                         {disp32} je      _jmp_addr_0x007c434d                    // 0x007c41a1    0f84a6010000
_jmp_addr_0x007c41a7:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c41a7    8b442410
_jmp_addr_0x007c41ab:    {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007c41ab    8b4c241c
                         inc              edx                                     // 0x007c41af    42
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000      // 0x007c41b0    c744242c00000000
                         mov              cl, byte ptr [ecx]                      // 0x007c41b8    8a09
                         {disp8} mov      byte ptr [edx + -0x01], cl              // 0x007c41ba    884aff
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007c41bd    8b4c241c
                         inc              ecx                                     // 0x007c41c1    41
                         {disp8} mov      dword ptr [esp + 0x1c], ecx             // 0x007c41c2    894c241c
                         {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007c41c6    8b4c2414
                         dec              ecx                                     // 0x007c41ca    49
                         {disp8} mov      dword ptr [esp + 0x14], ecx             // 0x007c41cb    894c2414
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007c41cf    8b4c241c
                         cmp              ecx, dword ptr [esi + 0x2c]             // 0x007c41d3    3b4e2c
                         {disp8} jne      _jmp_addr_0x007c41df                    // 0x007c41d6    7507
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c41d8    8b4e28
                         {disp8} mov      dword ptr [esp + 0x1c], ecx             // 0x007c41db    894c241c
_jmp_addr_0x007c41df:    {disp8} mov      ecx, dword ptr [eax + 0x04]             // 0x007c41df    8b4804
                         dec              ecx                                     // 0x007c41e2    49
                         {disp8} mov      dword ptr [eax + 0x04], ecx             // 0x007c41e3    894804
                         {disp32} jne     _jmp_addr_0x007c410a                    // 0x007c41e6    0f851effffff
_jmp_addr_0x007c41ec:    mov              dword ptr [eax], 0x00000000             // 0x007c41ec    c70000000000
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c41f2    e96afbffff
                         {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007c41f7    8b4c2414
                         test             ecx, ecx                                // 0x007c41fb    85c9
                         {disp32} jne     _jmp_addr_0x007c4298                    // 0x007c41fd    0f8595000000
                         {disp8} mov      eax, dword ptr [esi + 0x2c]             // 0x007c4203    8b462c
                         cmp.s            edx, eax                                // 0x007c4206    3bd0
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x007c4208    89442418
                         {disp8} jne      _jmp_addr_0x007c4231                    // 0x007c420c    7523
                         {disp8} mov      eax, dword ptr [esi + 0x30]             // 0x007c420e    8b4630
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c4211    8b4e28
                         cmp.s            eax, ecx                                // 0x007c4214    3bc1
                         {disp8} je       _jmp_addr_0x007c4231                    // 0x007c4216    7419
                         mov.s            edx, ecx                                // 0x007c4218    8bd1
                         cmp.s            edx, eax                                // 0x007c421a    3bd0
                         {disp8} jae      _jmp_addr_0x007c4223                    // 0x007c421c    7305
                         sub.s            eax, edx                                // 0x007c421e    2bc2
                         dec              eax                                     // 0x007c4220    48
                         {disp8} jmp      _jmp_addr_0x007c4229                    // 0x007c4221    eb06
_jmp_addr_0x007c4223:    {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c4223    8b442418
                         sub.s            eax, edx                                // 0x007c4227    2bc2
_jmp_addr_0x007c4229:    test             eax, eax                                // 0x007c4229    85c0
                         {disp8} mov      dword ptr [esp + 0x14], eax             // 0x007c422b    89442414
                         {disp8} jne      _jmp_addr_0x007c4294                    // 0x007c422f    7563
_jmp_addr_0x007c4231:    {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c4231    895634
                         {disp8} mov      edx, dword ptr [esp + 0x2c]             // 0x007c4234    8b54242c
                         push             edx                                     // 0x007c4238    52
                         push             edi                                     // 0x007c4239    57
                         push             esi                                     // 0x007c423a    56
                         call             _inflate_flush                          // 0x007c423b    e8f0090000
                         {disp8} mov      edx, dword ptr [esi + 0x34]             // 0x007c4240    8b5634
                         {disp8} mov      dword ptr [esp + 0x38], eax             // 0x007c4243    89442438
                         {disp8} mov      eax, dword ptr [esi + 0x30]             // 0x007c4247    8b4630
                         add              esp, 0x0c                               // 0x007c424a    83c40c
                         cmp.s            edx, eax                                // 0x007c424d    3bd0
                         {disp8} jae      _jmp_addr_0x007c4258                    // 0x007c424f    7307
                         mov.s            ecx, eax                                // 0x007c4251    8bc8
                         sub.s            ecx, edx                                // 0x007c4253    2bca
                         dec              ecx                                     // 0x007c4255    49
                         {disp8} jmp      _jmp_addr_0x007c425d                    // 0x007c4256    eb05
_jmp_addr_0x007c4258:    {disp8} mov      ecx, dword ptr [esi + 0x2c]             // 0x007c4258    8b4e2c
                         sub.s            ecx, edx                                // 0x007c425b    2bca
_jmp_addr_0x007c425d:    {disp8} mov      dword ptr [esp + 0x14], ecx             // 0x007c425d    894c2414
                         {disp8} mov      ecx, dword ptr [esi + 0x2c]             // 0x007c4261    8b4e2c
                         cmp.s            edx, ecx                                // 0x007c4264    3bd1
                         {disp8} mov      dword ptr [esp + 0x18], ecx             // 0x007c4266    894c2418
                         {disp8} jne      _jmp_addr_0x007c4288                    // 0x007c426a    751c
                         {disp8} mov      ecx, dword ptr [esi + 0x28]             // 0x007c426c    8b4e28
                         cmp.s            eax, ecx                                // 0x007c426f    3bc1
                         {disp8} je       _jmp_addr_0x007c4288                    // 0x007c4271    7415
                         mov.s            edx, ecx                                // 0x007c4273    8bd1
                         cmp.s            edx, eax                                // 0x007c4275    3bd0
                         {disp8} jae      _jmp_addr_0x007c427e                    // 0x007c4277    7305
                         sub.s            eax, edx                                // 0x007c4279    2bc2
                         dec              eax                                     // 0x007c427b    48
                         {disp8} jmp      _jmp_addr_0x007c4284                    // 0x007c427c    eb06
_jmp_addr_0x007c427e:    {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007c427e    8b442418
                         sub.s            eax, edx                                // 0x007c4282    2bc2
_jmp_addr_0x007c4284:    {disp8} mov      dword ptr [esp + 0x14], eax             // 0x007c4284    89442414
_jmp_addr_0x007c4288:    {disp8} mov      eax, dword ptr [esp + 0x14]             // 0x007c4288    8b442414
                         test             eax, eax                                // 0x007c428c    85c0
                         {disp32} je      _jmp_addr_0x007c434d                    // 0x007c428e    0f84b9000000
_jmp_addr_0x007c4294:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c4294    8b442410
_jmp_addr_0x007c4298:    {disp8} mov      cl, byte ptr [eax + 0x08]               // 0x007c4298    8a4808
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000      // 0x007c429b    c744242c00000000
                         mov              byte ptr [edx], cl                      // 0x007c42a3    880a
                         {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007c42a5    8b4c2414
                         inc              edx                                     // 0x007c42a9    42
                         dec              ecx                                     // 0x007c42aa    49
                         {disp8} mov      dword ptr [esp + 0x14], ecx             // 0x007c42ab    894c2414
                         mov              dword ptr [eax], 0x00000000             // 0x007c42af    c70000000000
                         {disp32} jmp     _jmp_addr_0x007c3d61                    // 0x007c42b5    e9a7faffff
_jmp_addr_0x007c42ba:    mov              dword ptr [eax], 0x00000009             // 0x007c42ba    c70009000000
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2c138      // 0x007c42c0    c7471838c1c200
                         {disp8} jmp      _jmp_addr_0x007c4315                    // 0x007c42c7    eb4c
_jmp_addr_0x007c42c9:    {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c42c9    8b442424
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c42cd    895e1c
                         {disp8} mov      dword ptr [esi + 0x20], eax             // 0x007c42d0    894620
                         mov              ebx, dword ptr [edi]                    // 0x007c42d3    8b1f
                         {disp8} mov      eax, dword ptr [edi + 0x08]             // 0x007c42d5    8b4708
                         mov.s            ecx, ebp                                // 0x007c42d8    8bcd
                         sub.s            ecx, ebx                                // 0x007c42da    2bcb
                         {disp8} mov      dword ptr [edi + 0x04], 0x00000000      // 0x007c42dc    c7470400000000
                         add.s            eax, ecx                                // 0x007c42e3    03c1
                         mov              dword ptr [edi], ebp                    // 0x007c42e5    892f
                         {disp8} mov      dword ptr [edi + 0x08], eax             // 0x007c42e7    894708
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c42ea    895634
                         {disp8} mov      edx, dword ptr [esp + 0x2c]             // 0x007c42ed    8b54242c
                         push             edx                                     // 0x007c42f1    52
                         push             edi                                     // 0x007c42f2    57
                         push             esi                                     // 0x007c42f3    56
                         call             _inflate_flush                          // 0x007c42f4    e837090000
                         add              esp, 0x0c                               // 0x007c42f9    83c40c
                         pop              edi                                     // 0x007c42fc    5f
                         pop              esi                                     // 0x007c42fd    5e
                         pop              ebp                                     // 0x007c42fe    5d
                         pop              ebx                                     // 0x007c42ff    5b
                         add              esp, 0x10                               // 0x007c4300    83c410
                         ret                                                      // 0x007c4303    c3
_jmp_addr_0x007c4304:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c4304    8b442410
                         mov              dword ptr [eax], 0x00000009             // 0x007c4308    c70009000000
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2c120      // 0x007c430e    c7471820c1c200
_jmp_addr_0x007c4315:    {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c4315    8b4c2424
                         {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x007c4319    8b442428
                         {disp8} mov      dword ptr [esi + 0x20], ecx             // 0x007c431d    894e20
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c4320    895e1c
                         mov              ebx, dword ptr [edi]                    // 0x007c4323    8b1f
                         mov.s            ecx, ebp                                // 0x007c4325    8bcd
                         {disp8} mov      dword ptr [edi + 0x04], eax             // 0x007c4327    894704
                         {disp8} mov      eax, dword ptr [edi + 0x08]             // 0x007c432a    8b4708
                         sub.s            ecx, ebx                                // 0x007c432d    2bcb
                         push             -0x3                                    // 0x007c432f    6afd
                         add.s            eax, ecx                                // 0x007c4331    03c1
                         push             edi                                     // 0x007c4333    57
                         {disp8} mov      dword ptr [edi + 0x08], eax             // 0x007c4334    894708
                         mov              dword ptr [edi], ebp                    // 0x007c4337    892f
                         push             esi                                     // 0x007c4339    56
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c433a    895634
                         call             _inflate_flush                          // 0x007c433d    e8ee080000
                         add              esp, 0x0c                               // 0x007c4342    83c40c
                         pop              edi                                     // 0x007c4345    5f
                         pop              esi                                     // 0x007c4346    5e
                         pop              ebp                                     // 0x007c4347    5d
                         pop              ebx                                     // 0x007c4348    5b
                         add              esp, 0x10                               // 0x007c4349    83c410
                         ret                                                      // 0x007c434c    c3
_jmp_addr_0x007c434d:    {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c434d    8b442424
                         {disp8} mov      ecx, dword ptr [esp + 0x28]             // 0x007c4351    8b4c2428
                         {disp8} mov      dword ptr [esi + 0x20], eax             // 0x007c4355    894620
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c4358    895e1c
                         mov              ebx, dword ptr [edi]                    // 0x007c435b    8b1f
                         mov.s            eax, ebp                                // 0x007c435d    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx             // 0x007c435f    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]             // 0x007c4362    8b4f08
                         sub.s            eax, ebx                                // 0x007c4365    2bc3
                         mov              dword ptr [edi], ebp                    // 0x007c4367    892f
                         add.s            ecx, eax                                // 0x007c4369    03c8
                         {disp8} mov      dword ptr [edi + 0x08], ecx             // 0x007c436b    894f08
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]             // 0x007c436e    8b4c242c
                         push             ecx                                     // 0x007c4372    51
                         push             edi                                     // 0x007c4373    57
                         push             esi                                     // 0x007c4374    56
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c4375    895634
                         call             _inflate_flush                          // 0x007c4378    e8b3080000
                         add              esp, 0x0c                               // 0x007c437d    83c40c
                         pop              edi                                     // 0x007c4380    5f
                         pop              esi                                     // 0x007c4381    5e
                         pop              ebp                                     // 0x007c4382    5d
                         pop              ebx                                     // 0x007c4383    5b
                         add              esp, 0x10                               // 0x007c4384    83c410
                         ret                                                      // 0x007c4387    c3
                         cmp              ebx, 0x07                               // 0x007c4388    83fb07
                         {disp8} jbe      _jmp_addr_0x007c439a                    // 0x007c438b    760d
                         {disp8} mov      ecx, dword ptr [esp + 0x28]             // 0x007c438d    8b4c2428
                         sub              ebx, 0x08                               // 0x007c4391    83eb08
                         inc              ecx                                     // 0x007c4394    41
                         dec              ebp                                     // 0x007c4395    4d
                         {disp8} mov      dword ptr [esp + 0x28], ecx             // 0x007c4396    894c2428
_jmp_addr_0x007c439a:    {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c439a    895634
                         {disp8} mov      edx, dword ptr [esp + 0x2c]             // 0x007c439d    8b54242c
                         push             edx                                     // 0x007c43a1    52
                         push             edi                                     // 0x007c43a2    57
                         push             esi                                     // 0x007c43a3    56
                         call             _inflate_flush                          // 0x007c43a4    e887080000
                         {disp8} mov      edx, dword ptr [esi + 0x34]             // 0x007c43a9    8b5634
                         {disp8} mov      ecx, dword ptr [esi + 0x30]             // 0x007c43ac    8b4e30
                         add              esp, 0x0c                               // 0x007c43af    83c40c
                         cmp.s            ecx, edx                                // 0x007c43b2    3bca
                         {disp8} je       _jmp_addr_0x007c43ed                    // 0x007c43b4    7437
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c43b6    8b4c2424
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c43ba    895e1c
                         {disp8} mov      dword ptr [esi + 0x20], ecx             // 0x007c43bd    894e20
                         {disp8} mov      ecx, dword ptr [esp + 0x28]             // 0x007c43c0    8b4c2428
                         mov              ebx, dword ptr [edi]                    // 0x007c43c4    8b1f
                         {disp8} mov      dword ptr [edi + 0x04], ecx             // 0x007c43c6    894f04
                         mov.s            ecx, ebp                                // 0x007c43c9    8bcd
                         push             eax                                     // 0x007c43cb    50
                         sub.s            ecx, ebx                                // 0x007c43cc    2bcb
                         {disp8} mov      ebx, dword ptr [edi + 0x08]             // 0x007c43ce    8b5f08
                         add.s            ebx, ecx                                // 0x007c43d1    03d9
                         push             edi                                     // 0x007c43d3    57
                         {disp8} mov      dword ptr [edi + 0x08], ebx             // 0x007c43d4    895f08
                         mov              dword ptr [edi], ebp                    // 0x007c43d7    892f
                         push             esi                                     // 0x007c43d9    56
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c43da    895634
                         call             _inflate_flush                          // 0x007c43dd    e84e080000
                         add              esp, 0x0c                               // 0x007c43e2    83c40c
                         pop              edi                                     // 0x007c43e5    5f
                         pop              esi                                     // 0x007c43e6    5e
                         pop              ebp                                     // 0x007c43e7    5d
                         pop              ebx                                     // 0x007c43e8    5b
                         add              esp, 0x10                               // 0x007c43e9    83c410
                         ret                                                      // 0x007c43ec    c3
_jmp_addr_0x007c43ed:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x007c43ed    8b442410
                         mov              dword ptr [eax], 0x00000008             // 0x007c43f1    c70008000000
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c43f7    8b4c2424
                         {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x007c43fb    8b442428
                         {disp8} mov      dword ptr [esi + 0x20], ecx             // 0x007c43ff    894e20
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c4402    895e1c
                         mov              ebx, dword ptr [edi]                    // 0x007c4405    8b1f
                         mov.s            ecx, ebp                                // 0x007c4407    8bcd
                         {disp8} mov      dword ptr [edi + 0x04], eax             // 0x007c4409    894704
                         {disp8} mov      eax, dword ptr [edi + 0x08]             // 0x007c440c    8b4708
                         sub.s            ecx, ebx                                // 0x007c440f    2bcb
                         push             0x1                                     // 0x007c4411    6a01
                         add.s            eax, ecx                                // 0x007c4413    03c1
                         push             edi                                     // 0x007c4415    57
                         {disp8} mov      dword ptr [edi + 0x08], eax             // 0x007c4416    894708
                         mov              dword ptr [edi], ebp                    // 0x007c4419    892f
                         push             esi                                     // 0x007c441b    56
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c441c    895634
                         call             _inflate_flush                          // 0x007c441f    e80c080000
                         add              esp, 0x0c                               // 0x007c4424    83c40c
                         pop              edi                                     // 0x007c4427    5f
                         pop              esi                                     // 0x007c4428    5e
                         pop              ebp                                     // 0x007c4429    5d
                         pop              ebx                                     // 0x007c442a    5b
                         add              esp, 0x10                               // 0x007c442b    83c410
                         ret                                                      // 0x007c442e    c3
                         {disp8} mov      eax, dword ptr [esp + 0x24]             // 0x007c442f    8b442424
                         {disp8} mov      ecx, dword ptr [esp + 0x28]             // 0x007c4433    8b4c2428
                         {disp8} mov      dword ptr [esi + 0x20], eax             // 0x007c4437    894620
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c443a    895e1c
                         mov              ebx, dword ptr [edi]                    // 0x007c443d    8b1f
                         mov.s            eax, ebp                                // 0x007c443f    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx             // 0x007c4441    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]             // 0x007c4444    8b4f08
                         sub.s            eax, ebx                                // 0x007c4447    2bc3
                         push             -0x3                                    // 0x007c4449    6afd
                         add.s            ecx, eax                                // 0x007c444b    03c8
                         push             edi                                     // 0x007c444d    57
                         {disp8} mov      dword ptr [edi + 0x08], ecx             // 0x007c444e    894f08
                         mov              dword ptr [edi], ebp                    // 0x007c4451    892f
                         push             esi                                     // 0x007c4453    56
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c4454    895634
                         call             _inflate_flush                          // 0x007c4457    e8d4070000
                         add              esp, 0x0c                               // 0x007c445c    83c40c
                         pop              edi                                     // 0x007c445f    5f
                         pop              esi                                     // 0x007c4460    5e
                         pop              ebp                                     // 0x007c4461    5d
                         pop              ebx                                     // 0x007c4462    5b
                         add              esp, 0x10                               // 0x007c4463    83c410
                         ret                                                      // 0x007c4466    c3
_jmp_addr_0x007c4467:    {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007c4467    8b4c2424
                         {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x007c446b    8b442428
                         {disp8} mov      dword ptr [esi + 0x20], ecx             // 0x007c446f    894e20
                         {disp8} mov      dword ptr [esi + 0x1c], ebx             // 0x007c4472    895e1c
                         mov              ebx, dword ptr [edi]                    // 0x007c4475    8b1f
                         mov.s            ecx, ebp                                // 0x007c4477    8bcd
                         {disp8} mov      dword ptr [edi + 0x04], eax             // 0x007c4479    894704
                         {disp8} mov      eax, dword ptr [edi + 0x08]             // 0x007c447c    8b4708
                         sub.s            ecx, ebx                                // 0x007c447f    2bcb
                         push             -0x2                                    // 0x007c4481    6afe
                         add.s            eax, ecx                                // 0x007c4483    03c1
                         push             edi                                     // 0x007c4485    57
                         {disp8} mov      dword ptr [edi + 0x08], eax             // 0x007c4486    894708
                         mov              dword ptr [edi], ebp                    // 0x007c4489    892f
                         push             esi                                     // 0x007c448b    56
                         {disp8} mov      dword ptr [esi + 0x34], edx             // 0x007c448c    895634
                         call             _inflate_flush                          // 0x007c448f    e89c070000
                         add              esp, 0x0c                               // 0x007c4494    83c40c
                         pop              edi                                     // 0x007c4497    5f
                         pop              esi                                     // 0x007c4498    5e
                         pop              ebp                                     // 0x007c4499    5d
                         pop              ebx                                     // 0x007c449a    5b
                         add              esp, 0x10                               // 0x007c449b    83c410
                         ret                                                      // 0x007c449e    c3

.byte 0x90                        // 0x007c449f

.long 0x007c3d73                                                                  // 0x007c44a0
.long 0x007c3e35                                                                  // 0x007c44a4
.long 0x007c3f29                                                                  // 0x007c44a8
.long 0x007c3faa                                                                  // 0x007c44ac
.long 0x007c4057                                                                  // 0x007c44b0
.long 0x007c40ca                                                                  // 0x007c44b4
.long 0x007c41f7                                                                  // 0x007c44b8
.long 0x007c4388                                                                  // 0x007c44bc
.long 0x007c43f7                                                                  // 0x007c44c0
.long 0x007c442f                                                                  // 0x007c44c4

.byte 0x90, 0x90, 0x90, 0x90      // 0x007c44c8
.byte 0x90, 0x90, 0x90, 0x90      // 0x007c44cc

_inflate_codes_free:     {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c44d0    8b442404
                         push             eax                                           // 0x007c44d4    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x007c44d5    8b44240c
                         {disp8} mov      ecx, dword ptr [eax + 0x28]                   // 0x007c44d9    8b4828
                         push             ecx                                           // 0x007c44dc    51
                         call             dword ptr [eax + 0x24]                        // 0x007c44dd    ff5024
                         add              esp, 0x08                                     // 0x007c44e0    83c408
                         ret                                                            // 0x007c44e3    c3
                         nop                                                            // 0x007c44e4    90
                         nop                                                            // 0x007c44e5    90
                         nop                                                            // 0x007c44e6    90
                         nop                                                            // 0x007c44e7    90
                         nop                                                            // 0x007c44e8    90
                         nop                                                            // 0x007c44e9    90
                         nop                                                            // 0x007c44ea    90
                         nop                                                            // 0x007c44eb    90
                         nop                                                            // 0x007c44ec    90
                         nop                                                            // 0x007c44ed    90
                         nop                                                            // 0x007c44ee    90
                         nop                                                            // 0x007c44ef    90