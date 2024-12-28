.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x006e4700
.extern _jmp_addr_0x007436f0
.extern _jmp_addr_0x0074cd50
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007c5a19

.globl _jmp_addr_0x007677b8
.globl _jmp_addr_0x0076786f
.globl _jmp_addr_0x0076787d

start_0x007676e0_0x007678a0:
// Snippet: asm, [0x007676e0, 0x00767888)
                         sub                esp, 0x08                                // 0x007676e0    83ec08
                         push               ebx                                      // 0x007676e3    53
                         push               esi                                      // 0x007676e4    56
                         push               edi                                      // 0x007676e5    57
                         mov.s              edi, ecx                                 // 0x007676e6    8bf9
                         mov                eax, dword ptr [edi]                     // 0x007676e8    8b07
                         call               dword ptr [eax + 0x978]                  // 0x007676ea    ff9078090000
                         test               eax, eax                                 // 0x007676f0    85c0
                         {disp32} jne       _jmp_addr_0x0076787d                     // 0x007676f2    0f8585010000
                         {disp8} mov        ebx, dword ptr [esp + 0x18]              // 0x007676f8    8b5c2418
                         {disp8} mov        eax, dword ptr [ebx + 0x14]              // 0x007676fc    8b4314
                         push               0x0                                      // 0x007676ff    6a00
                         push               0x009c8060                               // 0x00767701    6860809c00
                         push               0x009c7f30                               // 0x00767706    68307f9c00
                         push               0x0                                      // 0x0076770b    6a00
                         push               eax                                      // 0x0076770d    50
                         call               _jmp_addr_0x007c5a19                     // 0x0076770e    e806e30500
                         mov.s              esi, eax                                 // 0x00767713    8bf0
                         add                esp, 0x14                                // 0x00767715    83c414
                         test               esi, esi                                 // 0x00767718    85f6
                         {disp32} je        _jmp_addr_0x0076787d                     // 0x0076771a    0f845d010000
                         {disp32} mov       eax, dword ptr [esi + 0x000012c0]        // 0x00767720    8b86c0120000
                         test               eax, eax                                 // 0x00767726    85c0
                         {disp32} jne       _jmp_addr_0x0076787d                     // 0x00767728    0f854f010000
                         {disp32} mov       eax, dword ptr [esi + 0x0000106c]        // 0x0076772e    8b866c100000
                         test               eax, eax                                 // 0x00767734    85c0
                         {disp32} jne       _jmp_addr_0x0076787d                     // 0x00767736    0f8541010000
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x0076773c    8d4e14
                         push               ecx                                      // 0x0076773f    51
                         {disp8} lea        edx, dword ptr [edi + 0x14]              // 0x00767740    8d5714
                         push               edx                                      // 0x00767743    52
                         call               _jmp_addr_0x0074cd50                     // 0x00767744    e80756feff
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x00767749    d95c2420
                         add                esp, 0x08                                // 0x0076774d    83c408
                         mov.s              ecx, ebx                                 // 0x00767750    8bcb
                         call               _jmp_addr_0x006e4700                     // 0x00767752    e8a9cff7ff
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x00767757    d9442418
                         {disp8} fcomp      dword ptr [eax + 0x44]                   // 0x0076775b    d85844
                         fnstsw             ax                                       // 0x0076775e    dfe0
                         test               ah, 0x41                                 // 0x00767760    f6c441
                         {disp32} je        _jmp_addr_0x0076787d                     // 0x00767763    0f8414010000
                         mov                eax, dword ptr [edi]                     // 0x00767769    8b07
                         mov.s              ecx, edi                                 // 0x0076776b    8bcf
                         call               dword ptr [eax + 0x48]                   // 0x0076776d    ff5048
                         mov.s              ebx, eax                                 // 0x00767770    8bd8
                         test               ebx, ebx                                 // 0x00767772    85db
                         {disp8} je         _jmp_addr_0x007677b8                     // 0x00767774    7442
                         push               esi                                      // 0x00767776    56
                         mov.s              ecx, ebx                                 // 0x00767777    8bcb
                         call               _jmp_addr_0x007436f0                     // 0x00767779    e872bffdff
                         cmp                eax, 0x04                                // 0x0076777e    83f804
                         {disp32} ja        _jmp_addr_0x0076787d                     // 0x00767781    0f87f6000000
                         jmp                dword ptr [eax*4 + 0x767888]             // 0x00767787    ff248588787600
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x389918]   // 0x0076778e    8b0d18f9d400
                         {disp8} mov        dword ptr [esp + 0x0c], ecx              // 0x00767794    894c240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00767798    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                   // 0x007677a0    df6c240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x224c]         // 0x007677a4    d80d4cb28a00
                         call               _jmp_addr_0x007a1400                     // 0x007677aa    e8519c0300
                         pop                edi                                      // 0x007677af    5f
                         pop                esi                                      // 0x007677b0    5e
                         pop                ebx                                      // 0x007677b1    5b
                         add                esp, 0x08                                // 0x007677b2    83c408
                         ret                0x0008                                   // 0x007677b5    c20800
_jmp_addr_0x007677b8:    {disp32} mov       al, byte ptr [data_bytes + 0x389918]     // 0x007677b8    a018f9d400
                         pop                edi                                      // 0x007677bd    5f
                         pop                esi                                      // 0x007677be    5e
                         pop                ebx                                      // 0x007677bf    5b
                         add                esp, 0x08                                // 0x007677c0    83c408
                         ret                0x0008                                   // 0x007677c3    c20800
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3896c0]   // 0x007677c6    8b15c0f6d400
                         {disp8} mov        dword ptr [esp + 0x0c], edx              // 0x007677cc    8954240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x007677d0    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                   // 0x007677d8    df6c240c
                         fadd.s             st(0), st(0)                             // 0x007677dc    dcc0
                         call               _jmp_addr_0x007a1400                     // 0x007677de    e81d9c0300
                         pop                edi                                      // 0x007677e3    5f
                         pop                esi                                      // 0x007677e4    5e
                         pop                ebx                                      // 0x007677e5    5b
                         add                esp, 0x08                                // 0x007677e6    83c408
                         ret                0x0008                                   // 0x007677e9    c20800
                         mov                eax, dword ptr [ebx]                     // 0x007677ec    8b03
                         mov.s              ecx, ebx                                 // 0x007677ee    8bcb
                         call               dword ptr [eax + 0x1c]                   // 0x007677f0    ff501c
                         mov.s              edx, eax                                 // 0x007677f3    8bd0
                         mov                eax, dword ptr [esi]                     // 0x007677f5    8b06
                         mov.s              ecx, esi                                 // 0x007677f7    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx              // 0x007677f9    89542418
                         call               dword ptr [eax + 0x1c]                   // 0x007677fd    ff501c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x00767800    8b4c2418
                         cmp.s              ecx, eax                                 // 0x00767804    3bc8
                         {disp8} jne        _jmp_addr_0x0076786f                     // 0x00767806    7567
                         xor.s              edx, edx                                 // 0x00767808    33d2
                         {disp32} mov       dx, word ptr [edi + 0x000000e0]          // 0x0076780a    668b97e0000000
                         shr                edx, 9                                   // 0x00767811    c1ea09
                         test               dl, 0x01                                 // 0x00767814    f6c201
                         {disp8} jne        _jmp_addr_0x0076787d                     // 0x00767817    7564
                         mov                eax, dword ptr [edi]                     // 0x00767819    8b07
                         mov.s              ecx, edi                                 // 0x0076781b    8bcf
                         call               dword ptr [eax + 0xb04]                  // 0x0076781d    ff90040b0000
                         and                eax, 0x000000ff                          // 0x00767823    25ff000000
                         mov.s              ecx, eax                                 // 0x00767828    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]         // 0x0076782a    8d0449
                         shl                eax, 3                                   // 0x0076782d    c1e003
                         sub.s              eax, ecx                                 // 0x00767830    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x00767832    8d0440
                         shl                eax, 2                                   // 0x00767835    c1e002
                         {disp32} mov       ecx, dword ptr [eax + 0x00db9e7c]        // 0x00767838    8b887c9edb00
                         test               ecx, ecx                                 // 0x0076783e    85c9
                         {disp8} jl         _jmp_addr_0x0076786f                     // 0x00767840    7c2d
                         cmp                ecx, 0x11                                // 0x00767842    83f911
                         {disp8} jge        _jmp_addr_0x0076786f                     // 0x00767845    7d28
                         {disp32} fld       dword ptr [ebx + ecx * 0x4 + 0x0000019c] // 0x00767847    d9848b9c010000
                         {disp32} fadd      dword ptr [ebx + ecx * 0x4 + 0x00000108] // 0x0076784e    d8848b08010000
                         {disp32} fadd      dword ptr [ebx + ecx * 0x4 + 0x000000c4] // 0x00767855    d8848bc4000000
                         {disp32} fmul      dword ptr [eax + 0x00db9e80]             // 0x0076785c    d888809edb00
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1398]         // 0x00767862    d81d98a38a00
                         fnstsw             ax                                       // 0x00767868    dfe0
                         test               ah, 0x41                                 // 0x0076786a    f6c441
                         {disp8} je         _jmp_addr_0x0076787d                     // 0x0076786d    740e
_jmp_addr_0x0076786f:    {disp32} mov       al, byte ptr [data_bytes + 0x389788]     // 0x0076786f    a088f7d400
                         pop                edi                                      // 0x00767874    5f
                         pop                esi                                      // 0x00767875    5e
                         pop                ebx                                      // 0x00767876    5b
                         add                esp, 0x08                                // 0x00767877    83c408
                         ret                0x0008                                   // 0x0076787a    c20800
_jmp_addr_0x0076787d:    pop                edi                                      // 0x0076787d    5f
                         pop                esi                                      // 0x0076787e    5e
                         xor.s              al, al                                   // 0x0076787f    32c0
                         pop                ebx                                      // 0x00767881    5b
                         add                esp, 0x08                                // 0x00767882    83c408
                         ret                0x0008                                   // 0x00767885    c20800

// Snippet: jmptbl, [0x00767888, 0x0076789c)
.byte 0x8e, 0x77, 0x76, 0x00      // 0x00767888
.byte 0x7d, 0x78, 0x76, 0x00      // 0x0076788c
.byte 0xb8, 0x77, 0x76, 0x00      // 0x00767890
.byte 0xc6, 0x77, 0x76, 0x00      // 0x00767894
.byte 0xec, 0x77, 0x76, 0x00      // 0x00767898

// Snippet: db, [0x0076789c, 0x007678a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0076789c

