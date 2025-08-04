.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern ??2@YAPAXI@Z
.extern _jmp_addr_0x007f4980
.extern _jmp_addr_0x007f4990
.extern _jmp_addr_0x007f4aa0
.extern _jmp_addr_0x007f4d00
.extern _jmp_addr_0x007f4d90
.extern _jmp_addr_0x007f4f40
.extern _jmp_addr_0x007f5ef0
.extern _jmp_addr_0x007f64c0
.extern _jmp_addr_0x007f64e0
.extern _jmp_addr_0x007f66f0
.extern _jmp_addr_0x007f6780
.extern _jmp_addr_0x007f6e00
.extern _jmp_IMM32_DLL__ImmGetProperty

.globl _jmp_addr_0x007f51e0

start_0x007f5040_0x007f5450:
// Snippet: asm, [0x007f5040, 0x007f5379)
_jmp_addr_0x007f5040:    push             -0x1                                    // 0x007f5040    6aff
                         push             0x008a7c28                              // 0x007f5042    68287c8a00
                         {disp32} mov     eax, fs:[0x0]                           // 0x007f5047    64a100000000
                         push             eax                                     // 0x007f504d    50
                         {disp32} mov     fs:[0x0], esp                           // 0x007f504e    64892500000000
                         sub              esp, 0x1c                               // 0x007f5055    83ec1c
                         push             ebx                                     // 0x007f5058    53
                         push             ebp                                     // 0x007f5059    55
                         {disp32} mov     ebp, dword ptr [rdata_bytes + 0x7e0]    // 0x007f505a    8b2de0978a00
                         push             esi                                     // 0x007f5060    56
                         xor.s            ebx, ebx                                // 0x007f5061    33db
                         push             edi                                     // 0x007f5063    57
                         xor.s            edi, edi                                // 0x007f5064    33ff
                         push             ebx                                     // 0x007f5066    53
                         push             ebx                                     // 0x007f5067    53
                         {disp8} mov      dword ptr [esp + 0x18], edi             // 0x007f5068    897c2418
                         call             ebp                                     // 0x007f506c    ffd5
                         mov.s            esi, eax                                // 0x007f506e    8bf0
                         cmp.s            esi, ebx                                // 0x007f5070    3bf3
                         {disp32} je      _jmp_addr_0x007f51cb                    // 0x007f5072    0f8453010000
                         {disp8} mov      al, byte ptr [esp + 0x3c]               // 0x007f5078    8a44243c
                         {disp8} mov      dword ptr [esp + 0x14], ebx             // 0x007f507c    895c2414
                         {disp8} mov      byte ptr [esp + 0x1c], al               // 0x007f5080    8844241c
                         mov.s            eax, esi                                // 0x007f5084    8bc6
                         {disp8} jge      _jmp_addr_0x007f508a                    // 0x007f5086    7d02
                         xor.s            eax, eax                                // 0x007f5088    33c0
_jmp_addr_0x007f508a:    {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000000] // 0x007f508a    8d0c8500000000
                         push             ecx                                     // 0x007f5091    51
                         call             ??2@YAPAXI@Z                            // 0x007f5092    e85714fdff
                         add              esp, 0x04                               // 0x007f5097    83c404
                         cmp.s            esi, ebx                                // 0x007f509a    3bf3
                         {disp8} mov      dword ptr [esp + 0x20], eax             // 0x007f509c    89442420
                         mov.s            edi, eax                                // 0x007f50a0    8bf8
                         {disp8} jbe      _jmp_addr_0x007f50c0                    // 0x007f50a2    761c
                         mov.s            ebx, esi                                // 0x007f50a4    8bde
_jmp_addr_0x007f50a6:    {disp8} lea      edx, dword ptr [esp + 0x14]             // 0x007f50a6    8d542414
                         push             edx                                     // 0x007f50aa    52
                         push             edi                                     // 0x007f50ab    57
                         call             _jmp_addr_0x007f6780                    // 0x007f50ac    e8cf160000
                         add              esp, 0x08                               // 0x007f50b1    83c408
                         add              edi, 0x04                               // 0x007f50b4    83c704
                         dec              ebx                                     // 0x007f50b7    4b
                         {disp8} jne      _jmp_addr_0x007f50a6                    // 0x007f50b8    75ec
                         {disp8} mov      eax, dword ptr [esp + 0x20]             // 0x007f50ba    8b442420
                         xor.s            ebx, ebx                                // 0x007f50be    33db
_jmp_addr_0x007f50c0:    lea              edx, dword ptr [eax + esi * 0x4]        // 0x007f50c0    8d14b0
                         {disp8} mov      dword ptr [esp + 0x24], edx             // 0x007f50c3    89542424
                         {disp8} mov      dword ptr [esp + 0x28], edx             // 0x007f50c7    89542428
                         cmp.s            eax, ebx                                // 0x007f50cb    3bc3
                         {disp8} mov      dword ptr [esp + 0x34], ebx             // 0x007f50cd    895c2434
                         {disp8} mov      dword ptr [esp + 0x18], ebx             // 0x007f50d1    895c2418
                         {disp8} jne      _jmp_addr_0x007f50db                    // 0x007f50d5    7504
                         xor.s            ecx, ecx                                // 0x007f50d7    33c9
                         {disp8} jmp      _jmp_addr_0x007f50e2                    // 0x007f50d9    eb07
_jmp_addr_0x007f50db:    mov.s            ecx, edx                                // 0x007f50db    8bca
                         sub.s            ecx, eax                                // 0x007f50dd    2bc8
                         sar              ecx, 2                                  // 0x007f50df    c1f902
_jmp_addr_0x007f50e2:    cmp.s            ecx, esi                                // 0x007f50e2    3bce
                         {disp8} jae      _jmp_addr_0x007f5107                    // 0x007f50e4    7321
                         {disp8} lea      eax, dword ptr [esp + 0x18]             // 0x007f50e6    8d442418
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]             // 0x007f50ea    8d4c241c
                         push             eax                                     // 0x007f50ee    50
                         mov.s            edi, edx                                // 0x007f50ef    8bfa
                         call             _jmp_addr_0x007f64c0                    // 0x007f50f1    e8ca130000
                         mov.s            ecx, esi                                // 0x007f50f6    8bce
                         sub.s            ecx, eax                                // 0x007f50f8    2bc8
                         push             ecx                                     // 0x007f50fa    51
                         push             edi                                     // 0x007f50fb    57
                         {disp8} lea      ecx, dword ptr [esp + 0x28]             // 0x007f50fc    8d4c2428
                         call             _jmp_addr_0x007f64e0                    // 0x007f5100    e8db130000
                         {disp8} jmp      _jmp_addr_0x007f512a                    // 0x007f5105    eb23
_jmp_addr_0x007f5107:    {disp8} lea      ecx, dword ptr [esp + 0x1c]             // 0x007f5107    8d4c241c
                         call             _jmp_addr_0x007f64c0                    // 0x007f510b    e8b0130000
                         cmp.s            esi, eax                                // 0x007f5110    3bf0
                         {disp8} jae      _jmp_addr_0x007f512a                    // 0x007f5112    7316
                         {disp8} mov      eax, dword ptr [esp + 0x20]             // 0x007f5114    8b442420
                         {disp8} mov      edx, dword ptr [esp + 0x24]             // 0x007f5118    8b542424
                         push             edx                                     // 0x007f511c    52
                         lea              ecx, dword ptr [eax + esi * 0x4]        // 0x007f511d    8d0cb0
                         push             ecx                                     // 0x007f5120    51
                         {disp8} lea      ecx, dword ptr [esp + 0x24]             // 0x007f5121    8d4c2424
                         call             _jmp_addr_0x007f66f0                    // 0x007f5125    e8c6150000
_jmp_addr_0x007f512a:    {disp8} mov      edx, dword ptr [esp + 0x20]             // 0x007f512a    8b542420
                         push             edx                                     // 0x007f512e    52
                         push             esi                                     // 0x007f512f    56
                         call             ebp                                     // 0x007f5130    ffd5
                         {disp8} mov      edx, dword ptr [esp + 0x20]             // 0x007f5132    8b542420
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007f5136    8b4c2424
                         mov.s            eax, edx                                // 0x007f513a    8bc2
                         cmp.s            eax, ecx                                // 0x007f513c    3bc1
                         {disp8} je       _jmp_addr_0x007f51ab                    // 0x007f513e    746b
                         {disp8} mov      esi, dword ptr [esp + 0x3c]             // 0x007f5140    8b74243c
_jmp_addr_0x007f5144:    cmp              dword ptr [eax], esi                    // 0x007f5144    3930
                         {disp8} je       _jmp_addr_0x007f514f                    // 0x007f5146    7407
                         add              eax, 0x04                               // 0x007f5148    83c004
                         cmp.s            eax, ecx                                // 0x007f514b    3bc1
                         {disp8} jne      _jmp_addr_0x007f5144                    // 0x007f514d    75f5
_jmp_addr_0x007f514f:    cmp.s            eax, ecx                                // 0x007f514f    3bc1
                         {disp8} je       _jmp_addr_0x007f51ab                    // 0x007f5151    7458
                         cmp.s            edx, eax                                // 0x007f5153    3bd0
                         {disp8} je       _jmp_addr_0x007f5170                    // 0x007f5155    7419
                         cmp.s            eax, ecx                                // 0x007f5157    3bc1
                         {disp8} je       _jmp_addr_0x007f5170                    // 0x007f5159    7415
                         push             ebx                                     // 0x007f515b    53
                         push             ebx                                     // 0x007f515c    53
                         push             ecx                                     // 0x007f515d    51
                         push             eax                                     // 0x007f515e    50
                         push             edx                                     // 0x007f515f    52
                         call             _jmp_addr_0x007f6e00                    // 0x007f5160    e89b1c0000
                         {disp8} mov      ecx, dword ptr [esp + 0x38]             // 0x007f5165    8b4c2438
                         {disp8} mov      edx, dword ptr [esp + 0x34]             // 0x007f5169    8b542434
                         add              esp, 0x14                               // 0x007f516d    83c414
_jmp_addr_0x007f5170:    cmp.s            edx, ecx                                // 0x007f5170    3bd1
                         mov.s            esi, edx                                // 0x007f5172    8bf2
                         {disp8} je       _jmp_addr_0x007f51a1                    // 0x007f5174    742b
_jmp_addr_0x007f5176:    mov              eax, dword ptr [esi]                    // 0x007f5176    8b06
                         push             0x4                                     // 0x007f5178    6a04
                         push             eax                                     // 0x007f517a    50
                         call             _jmp_IMM32_DLL__ImmGetProperty          // 0x007f517b    e8d2d50a00
                         and              eax, 0x00030000                         // 0x007f5180    2500000300
                         cmp              eax, 0x00030000                         // 0x007f5185    3d00000300
                         {disp8} jne      _jmp_addr_0x007f5199                    // 0x007f518a    750d
                         {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007f518c    8b4c2424
                         add              esi, 0x04                               // 0x007f5190    83c604
                         cmp.s            esi, ecx                                // 0x007f5193    3bf1
                         {disp8} jne      _jmp_addr_0x007f5176                    // 0x007f5195    75df
                         {disp8} jmp      _jmp_addr_0x007f519d                    // 0x007f5197    eb04
_jmp_addr_0x007f5199:    {disp8} mov      ecx, dword ptr [esp + 0x24]             // 0x007f5199    8b4c2424
_jmp_addr_0x007f519d:    {disp8} mov      edx, dword ptr [esp + 0x20]             // 0x007f519d    8b542420
_jmp_addr_0x007f51a1:    cmp.s            esi, ecx                                // 0x007f51a1    3bf1
                         {disp8} je       _jmp_addr_0x007f51ab                    // 0x007f51a3    7406
                         mov              ecx, dword ptr [esi]                    // 0x007f51a5    8b0e
                         {disp8} mov      dword ptr [esp + 0x10], ecx             // 0x007f51a7    894c2410
_jmp_addr_0x007f51ab:    push             edx                                     // 0x007f51ab    52
                         call             ??3@YAXPAX@Z                            // 0x007f51ac    e8e79cfbff
                         {disp8} mov      eax, dword ptr [esp + 0x14]             // 0x007f51b1    8b442414
                         add              esp, 0x04                               // 0x007f51b5    83c404
                         pop              edi                                     // 0x007f51b8    5f
                         pop              esi                                     // 0x007f51b9    5e
                         pop              ebp                                     // 0x007f51ba    5d
                         pop              ebx                                     // 0x007f51bb    5b
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007f51bc    8b4c241c
                         {disp32} mov     fs:[0x0], ecx                           // 0x007f51c0    64890d00000000
                         add              esp, 0x28                               // 0x007f51c7    83c428
                         ret                                                      // 0x007f51ca    c3
_jmp_addr_0x007f51cb:    {disp8} mov      ecx, dword ptr [esp + 0x2c]             // 0x007f51cb    8b4c242c
                         mov.s            eax, edi                                // 0x007f51cf    8bc7
                         pop              edi                                     // 0x007f51d1    5f
                         pop              esi                                     // 0x007f51d2    5e
                         pop              ebp                                     // 0x007f51d3    5d
                         pop              ebx                                     // 0x007f51d4    5b
                         {disp32} mov     fs:[0x0], ecx                           // 0x007f51d5    64890d00000000
                         add              esp, 0x28                               // 0x007f51dc    83c428
                         ret                                                      // 0x007f51df    c3
_jmp_addr_0x007f51e0:    {disp8} mov      eax, dword ptr [esp + 0x08]             // 0x007f51e0    8b442408
                         push             ebx                                     // 0x007f51e4    53
                         push             esi                                     // 0x007f51e5    56
                         push             edi                                     // 0x007f51e6    57
                         mov              eax, dword ptr [eax]                    // 0x007f51e7    8b00
                         {disp8} mov      edi, dword ptr [esp + 0x1c]             // 0x007f51e9    8b7c241c
                         cmp              eax, 0x0000010e                         // 0x007f51ed    3d0e010000
                         mov.s            esi, ecx                                // 0x007f51f2    8bf1
                         mov              bl, 0x01                                // 0x007f51f4    b301
                         {disp32} ja      _jmp_addr_0x007f52db                    // 0x007f51f6    0f87df000000
                         cmp              eax, 0x0000010e                         // 0x007f51fc    3d0e010000
                         {disp32} je      _jmp_addr_0x007f52cc                    // 0x007f5201    0f84c5000000
                         add              eax, -0x50                              // 0x007f5207    83c0b0
                         cmp              eax, 0x000000bd                         // 0x007f520a    3dbd000000
                         {disp32} ja      _jmp_addr_0x007f5371                    // 0x007f520f    0f875c010000
                         xor.s            ecx, ecx                                // 0x007f5215    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x007f5390]         // 0x007f5217    8a8890537f00
                         jmp              dword ptr [ecx*4 + 0x7f537c]            // 0x007f521d    ff248d7c537f00
                         {disp8} mov      esi, dword ptr [esp + 0x1c]             // 0x007f5224    8b74241c
                         mov              edx, dword ptr [esi]                    // 0x007f5228    8b16
                         push             edx                                     // 0x007f522a    52
                         call             _jmp_addr_0x007f5040                    // 0x007f522b    e810feffff
                         add              esp, 0x04                               // 0x007f5230    83c404
                         test             eax, eax                                // 0x007f5233    85c0
                         {disp32} je      _jmp_addr_0x007f536f                    // 0x007f5235    0f8434010000
                         mov              dword ptr [esi], eax                    // 0x007f523b    8906
                         pop              edi                                     // 0x007f523d    5f
                         mov.s            al, bl                                  // 0x007f523e    8ac3
                         pop              esi                                     // 0x007f5240    5e
                         pop              ebx                                     // 0x007f5241    5b
                         ret              0x0014                                  // 0x007f5242    c21400
                         mov              eax, dword ptr [edi]                    // 0x007f5245    8b07
                         mov.s            ecx, esi                                // 0x007f5247    8bce
                         push             eax                                     // 0x007f5249    50
                         call             _jmp_addr_0x007f5ef0                    // 0x007f524a    e8a10c0000
_jmp_addr_0x007f524f:    {disp8} mov      edx, dword ptr [esp + 0x18]             // 0x007f524f    8b542418
                         mov              ecx, dword ptr [edi]                    // 0x007f5253    8b0f
                         push             ecx                                     // 0x007f5255    51
                         {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007f5256    8b4c2414
                         mov              eax, dword ptr [edx]                    // 0x007f525a    8b02
                         push             eax                                     // 0x007f525c    50
                         push             ecx                                     // 0x007f525d    51
                         mov.s            ecx, esi                                // 0x007f525e    8bce
                         call             _jmp_addr_0x007f4aa0                    // 0x007f5260    e83bf8ffff
                         mov              eax, dword ptr [edi]                    // 0x007f5265    8b07
                         test             ah, 0x08                                // 0x007f5267    f6c408
                         {disp32} jne     _jmp_addr_0x007f5371                    // 0x007f526a    0f8501010000
                         {disp8} mov      edx, dword ptr [esp + 0x20]             // 0x007f5270    8b542420
                         xor.s            bl, bl                                  // 0x007f5274    32db
                         pop              edi                                     // 0x007f5276    5f
                         mov.s            al, bl                                  // 0x007f5277    8ac3
                         pop              esi                                     // 0x007f5279    5e
                         mov              dword ptr [edx], 0x00000001             // 0x007f527a    c70201000000
                         pop              ebx                                     // 0x007f5280    5b
                         ret              0x0014                                  // 0x007f5281    c21400
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007f5284    8b4c241c
                         xor.s            eax, eax                                // 0x007f5288    33c0
                         mov              edx, dword ptr [ecx]                    // 0x007f528a    8b11
                         {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x007f528c    8b4c2418
                         push             edx                                     // 0x007f5290    52
                         {disp8} mov      edx, dword ptr [esp + 0x14]             // 0x007f5291    8b542414
                         mov              ax, word ptr [ecx]                      // 0x007f5295    668b01
                         mov.s            ecx, esi                                // 0x007f5298    8bce
                         push             eax                                     // 0x007f529a    50
                         push             edx                                     // 0x007f529b    52
                         call             _jmp_addr_0x007f4d90                    // 0x007f529c    e8effaffff
                         test             eax, eax                                // 0x007f52a1    85c0
                         {disp32} je      _jmp_addr_0x007f5371                    // 0x007f52a3    0f84c8000000
                         {disp8} mov      eax, dword ptr [esp + 0x20]             // 0x007f52a9    8b442420
                         xor.s            bl, bl                                  // 0x007f52ad    32db
                         pop              edi                                     // 0x007f52af    5f
                         pop              esi                                     // 0x007f52b0    5e
                         mov              dword ptr [eax], 0x00000001             // 0x007f52b1    c70001000000
                         mov.s            al, bl                                  // 0x007f52b7    8ac3
                         pop              ebx                                     // 0x007f52b9    5b
                         ret              0x0014                                  // 0x007f52ba    c21400
                         mov.s            ecx, esi                                // 0x007f52bd    8bce
                         call             _jmp_addr_0x007f4980                    // 0x007f52bf    e8bcf6ffff
                         pop              edi                                     // 0x007f52c4    5f
                         mov.s            al, bl                                  // 0x007f52c5    8ac3
                         pop              esi                                     // 0x007f52c7    5e
                         pop              ebx                                     // 0x007f52c8    5b
                         ret              0x0014                                  // 0x007f52c9    c21400
_jmp_addr_0x007f52cc:    mov.s            ecx, esi                                // 0x007f52cc    8bce
                         call             _jmp_addr_0x007f4990                    // 0x007f52ce    e8bdf6ffff
                         pop              edi                                     // 0x007f52d3    5f
                         mov.s            al, bl                                  // 0x007f52d4    8ac3
                         pop              esi                                     // 0x007f52d6    5e
                         pop              ebx                                     // 0x007f52d7    5b
                         ret              0x0014                                  // 0x007f52d8    c21400
_jmp_addr_0x007f52db:    cmp              eax, 0x00000282                         // 0x007f52db    3d82020000
                         {disp8} ja       _jmp_addr_0x007f533d                    // 0x007f52e0    775b
                         {disp8} je       _jmp_addr_0x007f530c                    // 0x007f52e2    7428
                         cmp              eax, 0x0000010f                         // 0x007f52e4    3d0f010000
                         {disp32} je      _jmp_addr_0x007f524f                    // 0x007f52e9    0f8460ffffff
                         cmp              eax, 0x00000281                         // 0x007f52ef    3d81020000
                         {disp8} jne      _jmp_addr_0x007f5371                    // 0x007f52f4    757b
                         {disp8} mov      eax, dword ptr [esp + 0x1c]             // 0x007f52f6    8b44241c
                         pop              edi                                     // 0x007f52fa    5f
                         pop              esi                                     // 0x007f52fb    5e
                         mov              ecx, dword ptr [eax]                    // 0x007f52fc    8b08
                         and              ecx, 0x3ffffff0                         // 0x007f52fe    81e1f0ffff3f
                         mov              dword ptr [eax], ecx                    // 0x007f5304    8908
                         mov.s            al, bl                                  // 0x007f5306    8ac3
                         pop              ebx                                     // 0x007f5308    5b
                         ret              0x0014                                  // 0x007f5309    c21400
_jmp_addr_0x007f530c:    {disp8} mov      eax, dword ptr [esp + 0x20]             // 0x007f530c    8b442420
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]             // 0x007f5310    8b4c241c
                         mov              dword ptr [eax], 0x00000001             // 0x007f5314    c70001000000
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007f531a    8b442418
                         mov              edx, dword ptr [ecx]                    // 0x007f531e    8b11
                         mov              ecx, dword ptr [eax]                    // 0x007f5320    8b08
                         push             edx                                     // 0x007f5322    52
                         {disp8} mov      edx, dword ptr [esp + 0x14]             // 0x007f5323    8b542414
                         push             ecx                                     // 0x007f5327    51
                         push             edx                                     // 0x007f5328    52
                         mov.s            ecx, esi                                // 0x007f5329    8bce
                         call             _jmp_addr_0x007f4f40                    // 0x007f532b    e810fcffff
                         test             al, al                                  // 0x007f5330    84c0
                         sete             bl                                      // 0x007f5332    0f94c3
                         pop              edi                                     // 0x007f5335    5f
                         mov.s            al, bl                                  // 0x007f5336    8ac3
                         pop              esi                                     // 0x007f5338    5e
                         pop              ebx                                     // 0x007f5339    5b
                         ret              0x0014                                  // 0x007f533a    c21400
_jmp_addr_0x007f533d:    cmp              eax, 0x00000286                         // 0x007f533d    3d86020000
                         {disp8} jne      _jmp_addr_0x007f5371                    // 0x007f5342    752d
                         {disp8} mov      eax, dword ptr [esp + 0x1c]             // 0x007f5344    8b44241c
                         xor.s            edx, edx                                // 0x007f5348    33d2
                         mov              ecx, dword ptr [eax]                    // 0x007f534a    8b08
                         {disp8} mov      eax, dword ptr [esp + 0x18]             // 0x007f534c    8b442418
                         push             ecx                                     // 0x007f5350    51
                         {disp8} mov      ecx, dword ptr [esp + 0x14]             // 0x007f5351    8b4c2414
                         mov              dx, word ptr [eax]                      // 0x007f5355    668b10
                         push             edx                                     // 0x007f5358    52
                         push             ecx                                     // 0x007f5359    51
                         mov.s            ecx, esi                                // 0x007f535a    8bce
                         call             _jmp_addr_0x007f4d00                    // 0x007f535c    e89ff9ffff
                         test             eax, eax                                // 0x007f5361    85c0
                         {disp8} je       _jmp_addr_0x007f5371                    // 0x007f5363    740c
                         {disp8} mov      edx, dword ptr [esp + 0x20]             // 0x007f5365    8b542420
                         mov              dword ptr [edx], 0x00000001             // 0x007f5369    c70201000000
_jmp_addr_0x007f536f:    xor.s            bl, bl                                  // 0x007f536f    32db
_jmp_addr_0x007f5371:    pop              edi                                     // 0x007f5371    5f
                         mov.s            al, bl                                  // 0x007f5372    8ac3
                         pop              esi                                     // 0x007f5374    5e
                         pop              ebx                                     // 0x007f5375    5b
                         ret              0x0014                                  // 0x007f5376    c21400

// Snippet: db, [0x007f5379, 0x007f537c)
.byte 0x8d, 0x49, 0x00            // 0x007f5379

// Snippet: jmptbl, [0x007f537c, 0x007f5390)
.byte 0x24, 0x52, 0x7f, 0x00      // 0x007f537c
.byte 0x45, 0x52, 0x7f, 0x00      // 0x007f5380
.byte 0x84, 0x52, 0x7f, 0x00      // 0x007f5384
.byte 0xbd, 0x52, 0x7f, 0x00      // 0x007f5388
.byte 0x71, 0x53, 0x7f, 0x00      // 0x007f538c

// Snippet: ijmptbl, [0x007f5390, 0x007f544e)
.byte 0x00, 0x01, 0x04, 0x04      // 0x007f5390
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5394
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5398
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f539c
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53a0
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53a4
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53a8
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53ac
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53b0
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53b4
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53b8
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53bc
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53c0
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53c4
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53c8
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53cc
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53d0
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53d4
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53d8
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53dc
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53e0
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53e4
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53e8
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53ec
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53f0
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53f4
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53f8
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f53fc
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5400
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5404
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5408
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f540c
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5410
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5414
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5418
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f541c
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5420
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5424
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5428
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f542c
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5430
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5434
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5438
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f543c
.byte 0x04, 0x04, 0x02, 0x04      // 0x007f5440
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5444
.byte 0x04, 0x04, 0x04, 0x04      // 0x007f5448
.byte 0x04, 0x03                  // 0x007f544c

// Snippet: db, [0x007f544e, 0x007f5450)
.byte 0x90, 0x90                  // 0x007f544e

