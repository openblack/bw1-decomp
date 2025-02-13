.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ___dl__FPv
.extern _jmp_addr_0x007c6288
.extern _malloc
.extern _free
.extern _jmp_addr_0x007c8bdf
.extern _jmp_addr_0x007c8c1c
.extern _jmp_addr_0x007c8c85
.extern _jmp_addr_0x007c8ca8
.extern _jmp_addr_0x007c989f
.extern _jmp_addr_0x007c9fc6
.extern _jmp_addr_0x007c9fcf
.extern __amsg_exit
.extern __lock
.extern __unlock
.extern ___crtLCMapStringA
.extern _jmp_addr_0x007cb993
.extern _jmp_addr_0x007cc962
.extern _jmp_addr_0x007cc9b2
.extern _jmp_addr_0x007cce10
.extern _jmp_addr_0x007cce94
.extern _jmp_addr_0x007ccf82
.extern _jmp_addr_0x007cd09a
.extern _jmp_addr_0x007cd984
.extern _jmp_addr_0x007cda0d
.extern _jmp_addr_0x007cda37
.extern _jmp_addr_0x007cda52
.extern _jmp_addr_0x007cdb09

.globl _jmp_addr_0x007c44d0
.globl _jmp_addr_0x007c44f0
.globl _jmp_addr_0x007c4a70
.globl _jmp_addr_0x007c4c00
.globl _jmp_addr_0x007c4c30
.globl _jmp_addr_0x007c4d70
.globl _jmp_addr_0x007c5394
.globl _jmp_addr_0x007c56e0
.globl _jmp_addr_0x007c5791
.globl _jmp_addr_0x007c57d2
.globl _jmp_addr_0x007c593a
.globl _jmp_addr_0x007c5a19
.globl _jmp_addr_0x007c5e51
.globl _jmp_addr_0x007c5f8c
.globl _wcscpy
.globl _jmp_addr_0x007c5fdb
.globl _jmp_addr_0x007c60f0
.globl _jmp_addr_0x007c614c

start_0x007c44d0_0x007c6160:
// Snippet: asm, [0x007c44d0, 0x007c6153)
_jmp_addr_0x007c44d0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c44d0    8b442404
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
_jmp_addr_0x007c44f0:    push             ecx                                           // 0x007c44f0    51
                         push             ebx                                           // 0x007c44f1    53
                         push             edi                                           // 0x007c44f2    57
                         {disp8} mov      edi, dword ptr [esp + 0x20]                   // 0x007c44f3    8b7c2420
                         push             0x4                                           // 0x007c44f7    6a04
                         push             0x13                                          // 0x007c44f9    6a13
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000000            // 0x007c44fb    c744241000000000
                         {disp8} mov      eax, dword ptr [edi + 0x28]                   // 0x007c4503    8b4728
                         push             eax                                           // 0x007c4506    50
                         call             dword ptr [edi + 0x20]                        // 0x007c4507    ff5720
                         mov.s            ebx, eax                                      // 0x007c450a    8bd8
                         add              esp, 0x0c                                     // 0x007c450c    83c40c
                         test             ebx, ebx                                      // 0x007c450f    85db
                         {disp8} jne      _jmp_addr_0x007c451c                          // 0x007c4511    7509
                         pop              edi                                           // 0x007c4513    5f
                         mov              eax, 0xfffffffc                               // 0x007c4514    b8fcffffff
                         pop              ebx                                           // 0x007c4519    5b
                         pop              ecx                                           // 0x007c451a    59
                         ret                                                            // 0x007c451b    c3
_jmp_addr_0x007c451c:    {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c451c    8b54241c
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4520    8b442418
                         push             ebp                                           // 0x007c4524    55
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007c4525    8b6c2418
                         push             esi                                           // 0x007c4529    56
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007c452a    8d4c2410
                         push             ebx                                           // 0x007c452e    53
                         push             ecx                                           // 0x007c452f    51
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c4530    8b4c2420
                         push             edx                                           // 0x007c4534    52
                         push             ebp                                           // 0x007c4535    55
                         push             eax                                           // 0x007c4536    50
                         push             0x0                                           // 0x007c4537    6a00
                         push             0x0                                           // 0x007c4539    6a00
                         push             0x13                                          // 0x007c453b    6a13
                         push             0x13                                          // 0x007c453d    6a13
                         push             ecx                                           // 0x007c453f    51
                         call             _jmp_addr_0x007c45a0                          // 0x007c4540    e85b000000
                         mov.s            esi, eax                                      // 0x007c4545    8bf0
                         add              esp, 0x28                                     // 0x007c4547    83c428
                         cmp              esi, -0x03                                    // 0x007c454a    83fefd
                         {disp8} jne      _jmp_addr_0x007c4569                          // 0x007c454d    751a
                         {disp8} mov      edx, dword ptr [edi + 0x28]                   // 0x007c454f    8b5728
                         push             ebx                                           // 0x007c4552    53
                         push             edx                                           // 0x007c4553    52
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2d284            // 0x007c4554    c7471884d2c200
                         call             dword ptr [edi + 0x24]                        // 0x007c455b    ff5724
                         add              esp, 0x08                                     // 0x007c455e    83c408
                         mov.s            eax, esi                                      // 0x007c4561    8bc6
                         pop              esi                                           // 0x007c4563    5e
                         pop              ebp                                           // 0x007c4564    5d
                         pop              edi                                           // 0x007c4565    5f
                         pop              ebx                                           // 0x007c4566    5b
                         pop              ecx                                           // 0x007c4567    59
                         ret                                                            // 0x007c4568    c3
_jmp_addr_0x007c4569:    cmp              esi, -0x05                                    // 0x007c4569    83fefb
                         {disp8} je       _jmp_addr_0x007c4574                          // 0x007c456c    7406
                         cmp              dword ptr [ebp + 0x00], 0x00                  // 0x007c456e    837d0000
                         {disp8} jne      _jmp_addr_0x007c4580                          // 0x007c4572    750c
_jmp_addr_0x007c4574:    {disp8} mov      dword ptr [edi + 0x18], 0x00c2d260            // 0x007c4574    c7471860d2c200
                         mov              esi, 0xfffffffd                               // 0x007c457b    befdffffff
_jmp_addr_0x007c4580:    {disp8} mov      edx, dword ptr [edi + 0x28]                   // 0x007c4580    8b5728
                         push             ebx                                           // 0x007c4583    53
                         push             edx                                           // 0x007c4584    52
                         call             dword ptr [edi + 0x24]                        // 0x007c4585    ff5724
                         add              esp, 0x08                                     // 0x007c4588    83c408
                         mov.s            eax, esi                                      // 0x007c458b    8bc6
                         pop              esi                                           // 0x007c458d    5e
                         pop              ebp                                           // 0x007c458e    5d
                         pop              edi                                           // 0x007c458f    5f
                         pop              ebx                                           // 0x007c4590    5b
                         pop              ecx                                           // 0x007c4591    59
                         ret                                                            // 0x007c4592    c3
                         nop                                                            // 0x007c4593    90
                         nop                                                            // 0x007c4594    90
                         nop                                                            // 0x007c4595    90
                         nop                                                            // 0x007c4596    90
                         nop                                                            // 0x007c4597    90
                         nop                                                            // 0x007c4598    90
                         nop                                                            // 0x007c4599    90
                         nop                                                            // 0x007c459a    90
                         nop                                                            // 0x007c459b    90
                         nop                                                            // 0x007c459c    90
                         nop                                                            // 0x007c459d    90
                         nop                                                            // 0x007c459e    90
                         nop                                                            // 0x007c459f    90
_jmp_addr_0x007c45a0:    sub              esp, 0x00000100                               // 0x007c45a0    81ec00010000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000104]             // 0x007c45a6    8b8c2404010000
                         push             ebx                                           // 0x007c45ad    53
                         push             ebp                                           // 0x007c45ae    55
                         push             esi                                           // 0x007c45af    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000114]             // 0x007c45b0    8bb42414010000
                         push             edi                                           // 0x007c45b7    57
                         xor.s            edi, edi                                      // 0x007c45b8    33ff
                         mov.s            edx, esi                                      // 0x007c45ba    8bd6
                         {disp8} mov      dword ptr [esp + 0x54], edi                   // 0x007c45bc    897c2454
                         {disp8} mov      dword ptr [esp + 0x58], edi                   // 0x007c45c0    897c2458
                         {disp8} mov      dword ptr [esp + 0x5c], edi                   // 0x007c45c4    897c245c
                         {disp8} mov      dword ptr [esp + 0x60], edi                   // 0x007c45c8    897c2460
                         {disp8} mov      dword ptr [esp + 0x64], edi                   // 0x007c45cc    897c2464
                         {disp8} mov      dword ptr [esp + 0x68], edi                   // 0x007c45d0    897c2468
                         {disp8} mov      dword ptr [esp + 0x6c], edi                   // 0x007c45d4    897c246c
                         {disp8} mov      dword ptr [esp + 0x70], edi                   // 0x007c45d8    897c2470
                         {disp8} mov      dword ptr [esp + 0x74], edi                   // 0x007c45dc    897c2474
                         {disp8} mov      dword ptr [esp + 0x78], edi                   // 0x007c45e0    897c2478
                         {disp8} mov      dword ptr [esp + 0x7c], edi                   // 0x007c45e4    897c247c
                         {disp32} mov     dword ptr [esp + 0x00000080], edi             // 0x007c45e8    89bc2480000000
                         {disp32} mov     dword ptr [esp + 0x00000084], edi             // 0x007c45ef    89bc2484000000
                         {disp32} mov     dword ptr [esp + 0x00000088], edi             // 0x007c45f6    89bc2488000000
                         {disp32} mov     dword ptr [esp + 0x0000008c], edi             // 0x007c45fd    89bc248c000000
                         {disp32} mov     dword ptr [esp + 0x00000090], edi             // 0x007c4604    89bc2490000000
_jmp_addr_0x007c460b:    mov              eax, dword ptr [ecx]                          // 0x007c460b    8b01
                         add              ecx, 0x4                                      // 0x007c460d    83c104
                         {disp8} mov      ebp, dword ptr [esp + eax * 0x4 + 0x54]       // 0x007c4610    8b6c8454
                         {disp8} lea      eax, dword ptr [esp + eax * 0x4 + 0x54]       // 0x007c4614    8d448454
                         inc              ebp                                           // 0x007c4618    45
                         dec              edx                                           // 0x007c4619    4a
                         mov              dword ptr [eax], ebp                          // 0x007c461a    8928
                         {disp8} jne      _jmp_addr_0x007c460b                          // 0x007c461c    75ed
                         cmp              dword ptr [esp + 0x54], esi                   // 0x007c461e    39742454
                         {disp8} jne      _jmp_addr_0x007c4643                          // 0x007c4622    751f
                         {disp32} mov     ecx, dword ptr [esp + 0x00000128]             // 0x007c4624    8b8c2428010000
                         {disp32} mov     edx, dword ptr [esp + 0x0000012c]             // 0x007c462b    8b94242c010000
                         mov              dword ptr [ecx], edi                          // 0x007c4632    8939
                         mov              dword ptr [edx], edi                          // 0x007c4634    893a
_jmp_addr_0x007c4636:    pop              edi                                           // 0x007c4636    5f
                         pop              esi                                           // 0x007c4637    5e
                         pop              ebp                                           // 0x007c4638    5d
                         xor.s            eax, eax                                      // 0x007c4639    33c0
                         pop              ebx                                           // 0x007c463b    5b
                         add              esp, 0x00000100                               // 0x007c463c    81c400010000
                         ret                                                            // 0x007c4642    c3
_jmp_addr_0x007c4643:    {disp32} mov     ebx, dword ptr [esp + 0x0000012c]             // 0x007c4643    8b9c242c010000
                         mov              ecx, 0x00000001                               // 0x007c464a    b901000000
                         {disp8} lea      eax, dword ptr [esp + 0x58]                   // 0x007c464f    8d442458
                         mov              ebp, dword ptr [ebx]                          // 0x007c4653    8b2b
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x007c4655    896c2410
_jmp_addr_0x007c4659:    cmp              dword ptr [eax], edi                          // 0x007c4659    3938
                         {disp8} jne      _jmp_addr_0x007c4666                          // 0x007c465b    7509
                         inc              ecx                                           // 0x007c465d    41
                         add              eax, 0x04                                     // 0x007c465e    83c004
                         cmp              ecx, 0x0f                                     // 0x007c4661    83f90f
                         {disp8} jbe      _jmp_addr_0x007c4659                          // 0x007c4664    76f3
_jmp_addr_0x007c4666:    mov.s            eax, ecx                                      // 0x007c4666    8bc1
                         cmp.s            ebp, ecx                                      // 0x007c4668    3be9
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007c466a    89442414
                         {disp8} jae      _jmp_addr_0x007c4676                          // 0x007c466e    7306
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c4670    894c2410
                         mov.s            ebp, ecx                                      // 0x007c4674    8be9
_jmp_addr_0x007c4676:    mov              edx, 0x0000000f                               // 0x007c4676    ba0f000000
                         {disp32} lea     esi, dword ptr [esp + 0x00000090]             // 0x007c467b    8db42490000000
_jmp_addr_0x007c4682:    cmp              dword ptr [esi], edi                          // 0x007c4682    393e
                         {disp8} jne      _jmp_addr_0x007c468e                          // 0x007c4684    7508
                         dec              edx                                           // 0x007c4686    4a
                         sub              esi, 0x04                                     // 0x007c4687    83ee04
                         cmp.s            edx, edi                                      // 0x007c468a    3bd7
                         {disp8} jne      _jmp_addr_0x007c4682                          // 0x007c468c    75f4
_jmp_addr_0x007c468e:    cmp.s            ebp, edx                                      // 0x007c468e    3bea
                         {disp8} mov      dword ptr [esp + 0x2c], edx                   // 0x007c4690    8954242c
                         {disp8} jbe      _jmp_addr_0x007c469c                          // 0x007c4694    7606
                         {disp8} mov      dword ptr [esp + 0x10], edx                   // 0x007c4696    89542410
                         mov.s            ebp, edx                                      // 0x007c469a    8bea
_jmp_addr_0x007c469c:    mov              esi, 0x00000001                               // 0x007c469c    be01000000
                         mov              dword ptr [ebx], ebp                          // 0x007c46a1    892b
                         shl              esi, cl                                       // 0x007c46a3    d3e6
                         cmp.s            ecx, edx                                      // 0x007c46a5    3bca
                         {disp8} jae      _jmp_addr_0x007c46bb                          // 0x007c46a7    7312
                         {disp8} lea      ebx, dword ptr [esp + ecx * 0x4 + 0x54]       // 0x007c46a9    8d5c8c54
_jmp_addr_0x007c46ad:    sub              esi, dword ptr [ebx]                          // 0x007c46ad    2b33
                         {disp8} js       _jmp_addr_0x007c46d6                          // 0x007c46af    7825
                         inc              ecx                                           // 0x007c46b1    41
                         add              ebx, 0x04                                     // 0x007c46b2    83c304
                         shl              esi, 1                                        // 0x007c46b5    d1e6
                         cmp.s            ecx, edx                                      // 0x007c46b7    3bca
                         .byte            0x72, 0xf2// {disp8} jb _jmp_addr_0x007c46ad  // 0x007c46b9    72f2
_jmp_addr_0x007c46bb:    {disp32} lea     ecx, dword ptr [edx * 0x4 + 0x00000000]       // 0x007c46bb    8d0c9500000000
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x007c46c2    894c2420
                         {disp8} mov      ebx, dword ptr [esp + ecx * 0x1 + 0x54]       // 0x007c46c6    8b5c0c54
                         {disp8} lea      ecx, dword ptr [esp + ecx * 0x1 + 0x54]       // 0x007c46ca    8d4c0c54
                         sub.s            esi, ebx                                      // 0x007c46ce    2bf3
                         {disp8} mov      dword ptr [esp + 0x44], esi                   // 0x007c46d0    89742444
                         {disp8} jns      _jmp_addr_0x007c46e6                          // 0x007c46d4    7910
_jmp_addr_0x007c46d6:    pop              edi                                           // 0x007c46d6    5f
                         pop              esi                                           // 0x007c46d7    5e
                         pop              ebp                                           // 0x007c46d8    5d
                         mov              eax, 0xfffffffd                               // 0x007c46d9    b8fdffffff
                         pop              ebx                                           // 0x007c46de    5b
                         add              esp, 0x00000100                               // 0x007c46df    81c400010000
                         ret                                                            // 0x007c46e5    c3
_jmp_addr_0x007c46e6:    add.s            ebx, esi                                      // 0x007c46e6    03de
                         {disp32} mov     dword ptr [esp + 0x00000098], edi             // 0x007c46e8    89bc2498000000
                         mov              dword ptr [ecx], ebx                          // 0x007c46ef    8919
                         xor.s            ecx, ecx                                      // 0x007c46f1    33c9
                         dec              edx                                           // 0x007c46f3    4a
                         {disp8} je       _jmp_addr_0x007c4709                          // 0x007c46f4    7413
                         xor.s            ebx, ebx                                      // 0x007c46f6    33db
_jmp_addr_0x007c46f8:    add              ecx, dword ptr [esp + ebx * 0x1 + 0x58]       // 0x007c46f8    034c1c58
                         add              ebx, 0x04                                     // 0x007c46fc    83c304
                         dec              edx                                           // 0x007c46ff    4a
                         {disp32} mov     dword ptr [esp + ebx * 0x1 + 0x00000098], ecx // 0x007c4700    898c1c98000000
                         {disp8} jne      _jmp_addr_0x007c46f8                          // 0x007c4707    75ef
_jmp_addr_0x007c4709:    {disp32} mov     edx, dword ptr [esp + 0x00000114]             // 0x007c4709    8b942414010000
                         xor.s            ebx, ebx                                      // 0x007c4710    33db
_jmp_addr_0x007c4712:    mov              ecx, dword ptr [edx]                          // 0x007c4712    8b0a
                         add              edx, 0x04                                     // 0x007c4714    83c204
                         cmp.s            ecx, edi                                      // 0x007c4717    3bcf
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x007c4719    8954241c
                         {disp8} je       _jmp_addr_0x007c4742                          // 0x007c471d    7423
                         {disp32} mov     edx, dword ptr [esp + ecx * 0x4 + 0x00000094] // 0x007c471f    8b948c94000000
                         {disp32} mov     esi, dword ptr [esp + 0x00000138]             // 0x007c4726    8bb42438010000
                         {disp32} lea     ecx, dword ptr [esp + ecx * 0x4 + 0x00000094] // 0x007c472d    8d8c8c94000000
                         mov              dword ptr [esi + edx * 0x4], ebx              // 0x007c4734    891c96
                         {disp8} mov      esi, dword ptr [esp + 0x44]                   // 0x007c4737    8b742444
                         inc              edx                                           // 0x007c473b    42
                         mov              dword ptr [ecx], edx                          // 0x007c473c    8911
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c473e    8b54241c
_jmp_addr_0x007c4742:    {disp32} mov     ecx, dword ptr [esp + 0x00000118]             // 0x007c4742    8b8c2418010000
                         inc              ebx                                           // 0x007c4749    43
                         cmp.s            ebx, ecx                                      // 0x007c474a    3bd9
                         .byte            0x72, 0xc4// {disp8} jb _jmp_addr_0x007c4712  // 0x007c474c    72c4
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c474e    8b4c2420
                         mov.s            ebx, ebp                                      // 0x007c4752    8bdd
                         neg              ebx                                           // 0x007c4754    f7db
                         {disp32} mov     edx, dword ptr [esp + ecx * 0x1 + 0x00000094] // 0x007c4756    8b940c94000000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000138]             // 0x007c475d    8b8c2438010000
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c4764    894c241c
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007c4768    8b4c242c
                         cmp.s            eax, ecx                                      // 0x007c476c    3bc1
                         {disp32} mov     dword ptr [esp + 0x00000118], edx             // 0x007c476e    89942418010000
                         {disp8} mov      dword ptr [esp + 0x38], edi                   // 0x007c4775    897c2438
                         {disp32} mov     dword ptr [esp + 0x00000094], edi             // 0x007c4779    89bc2494000000
                         {disp8} mov      dword ptr [esp + 0x18], 0xffffffff            // 0x007c4780    c7442418ffffffff
                         {disp32} mov     dword ptr [esp + 0x000000d4], edi             // 0x007c4788    89bc24d4000000
                         {disp8} mov      dword ptr [esp + 0x40], edi                   // 0x007c478f    897c2440
                         {disp8} mov      dword ptr [esp + 0x3c], edi                   // 0x007c4793    897c243c
                         {disp32} jg      _jmp_addr_0x007c4a36                          // 0x007c4797    0f8f99020000
                         {disp8} mov      esi, dword ptr [esp + 0x34]                   // 0x007c479d    8b742434
                         {disp8} lea      edx, dword ptr [eax + -0x01]                  // 0x007c47a1    8d50ff
                         {disp8} lea      ecx, dword ptr [esp + eax * 0x4 + 0x54]       // 0x007c47a4    8d4c8454
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c47a8    89542420
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007c47ac    894c2428
_jmp_addr_0x007c47b0:    {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007c47b0    8b542428
                         mov              edx, dword ptr [edx]                          // 0x007c47b4    8b12
                         mov.s            ecx, edx                                      // 0x007c47b6    8bca
                         dec              edx                                           // 0x007c47b8    4a
                         test             ecx, ecx                                      // 0x007c47b9    85c9
                         {disp8} mov      dword ptr [esp + 0x24], edx                   // 0x007c47bb    89542424
                         {disp32} je      _jmp_addr_0x007c4a0b                          // 0x007c47bf    0f8446020000
                         {disp8} jmp      _jmp_addr_0x007c47cb                          // 0x007c47c5    eb04
_jmp_addr_0x007c47c7:    {disp8} mov      edx, dword ptr [esp + 0x24]                   // 0x007c47c7    8b542424
_jmp_addr_0x007c47cb:    lea              ecx, dword ptr [ebx + ebp * 0x1]              // 0x007c47cb    8d0c2b
                         cmp.s            eax, ecx                                      // 0x007c47ce    3bc1
                         {disp32} jle     _jmp_addr_0x007c48e8                          // 0x007c47d0    0f8e12010000
                         inc              edx                                           // 0x007c47d6    42
                         {disp8} mov      dword ptr [esp + 0x50], edx                   // 0x007c47d7    89542450
                         {disp8} jmp      _jmp_addr_0x007c47e5                          // 0x007c47db    eb08
_jmp_addr_0x007c47dd:    {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x007c47dd    8b6c2410
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c47e1    8b442414
_jmp_addr_0x007c47e5:    {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c47e5    8b542418
                         add.s            ebx, ebp                                      // 0x007c47e9    03dd
                         inc              edx                                           // 0x007c47eb    42
                         add.s            ecx, ebp                                      // 0x007c47ec    03cd
                         {disp8} mov      dword ptr [esp + 0x18], edx                   // 0x007c47ee    89542418
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                   // 0x007c47f2    8b54242c
                         sub.s            edx, ebx                                      // 0x007c47f6    2bd3
                         {disp8} mov      dword ptr [esp + 0x48], ecx                   // 0x007c47f8    894c2448
                         cmp.s            edx, ebp                                      // 0x007c47fc    3bd5
                         {disp8} jbe      _jmp_addr_0x007c4802                          // 0x007c47fe    7602
                         mov.s            edx, ebp                                      // 0x007c4800    8bd5
_jmp_addr_0x007c4802:    {disp8} mov      edi, dword ptr [esp + 0x50]                   // 0x007c4802    8b7c2450
                         mov.s            ecx, eax                                      // 0x007c4806    8bc8
                         sub.s            ecx, ebx                                      // 0x007c4808    2bcb
                         mov              eax, 0x00000001                               // 0x007c480a    b801000000
                         shl              eax, cl                                       // 0x007c480f    d3e0
                         cmp.s            eax, edi                                      // 0x007c4811    3bc7
                         {disp8} jbe      _jmp_addr_0x007c4840                          // 0x007c4813    762b
                         {disp8} mov      ebp, dword ptr [esp + 0x24]                   // 0x007c4815    8b6c2424
                         or               edi, 0xffffffff                               // 0x007c4819    83cfff
                         sub.s            edi, ebp                                      // 0x007c481c    2bfd
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                   // 0x007c481e    8b6c2428
                         add.s            eax, edi                                      // 0x007c4822    03c7
                         cmp.s            ecx, edx                                      // 0x007c4824    3bca
                         {disp8} jae      _jmp_addr_0x007c4840                          // 0x007c4826    7318
                         inc              ecx                                           // 0x007c4828    41
                         cmp.s            ecx, edx                                      // 0x007c4829    3bca
                         {disp8} jae      _jmp_addr_0x007c4840                          // 0x007c482b    7313
_jmp_addr_0x007c482d:    {disp8} mov      edi, dword ptr [ebp + 0x04]                   // 0x007c482d    8b7d04
                         add              ebp, 0x04                                     // 0x007c4830    83c504
                         shl              eax, 1                                        // 0x007c4833    d1e0
                         cmp.s            eax, edi                                      // 0x007c4835    3bc7
                         {disp8} jbe      _jmp_addr_0x007c4840                          // 0x007c4837    7607
                         sub.s            eax, edi                                      // 0x007c4839    2bc7
                         inc              ecx                                           // 0x007c483b    41
                         cmp.s            ecx, edx                                      // 0x007c483c    3bca
                         .byte            0x72, 0xed// {disp8} jb _jmp_addr_0x007c482d  // 0x007c483e    72ed
_jmp_addr_0x007c4840:    {disp32} mov     ebp, dword ptr [esp + 0x00000134]             // 0x007c4840    8bac2434010000
                         mov              edx, 0x00000001                               // 0x007c4847    ba01000000
                         shl              edx, cl                                       // 0x007c484c    d3e2
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                   // 0x007c484e    8b4500
                         {disp8} mov      dword ptr [esp + 0x3c], edx                   // 0x007c4851    8954243c
                         add.s            edx, eax                                      // 0x007c4855    03d0
                         cmp              edx, 0x000005a0                               // 0x007c4857    81faa0050000
                         {disp32} ja      _jmp_addr_0x007c4a59                          // 0x007c485d    0f87f6010000
                         {disp32} mov     edi, dword ptr [esp + 0x00000130]             // 0x007c4863    8bbc2430010000
                         {disp8} mov      dword ptr [ebp + 0x00], edx                   // 0x007c486a    895500
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c486d    8b542418
                         lea              eax, dword ptr [edi + eax * 0x8]              // 0x007c4871    8d04c7
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007c4874    8b7c2418
                         test             edx, edx                                      // 0x007c4878    85d2
                         {disp32} lea     edi, dword ptr [esp + edi * 0x4 + 0x000000d4] // 0x007c487a    8dbcbcd4000000
                         {disp8} mov      dword ptr [esp + 0x40], eax                   // 0x007c4881    89442440
                         {disp8} mov      dword ptr [esp + 0x4c], edi                   // 0x007c4885    897c244c
                         mov              dword ptr [edi], eax                          // 0x007c4889    8907
                         {disp8} je       _jmp_addr_0x007c48cb                          // 0x007c488b    743e
                         {disp8} mov      edi, dword ptr [esp + 0x38]                   // 0x007c488d    8b7c2438
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c4891    8b442410
                         {disp8} mov      esi, dword ptr [esp + 0x40]                   // 0x007c4895    8b742440
                         {disp8} mov      byte ptr [esp + 0x30], cl                     // 0x007c4899    884c2430
                         mov.s            ecx, ebx                                      // 0x007c489d    8bcb
                         {disp32} mov     dword ptr [esp + edx * 0x4 + 0x00000094], edi // 0x007c489f    89bc9494000000
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c48a6    8b54244c
                         {disp8} mov      byte ptr [esp + 0x31], al                     // 0x007c48aa    88442431
                         sub.s            ecx, eax                                      // 0x007c48ae    2bc8
                         mov.s            eax, edi                                      // 0x007c48b0    8bc7
                         shr              eax, cl                                       // 0x007c48b2    d3e8
                         {disp8} mov      ecx, dword ptr [edx + -0x04]                  // 0x007c48b4    8b4afc
                         {disp8} mov      edx, dword ptr [esp + 0x30]                   // 0x007c48b7    8b542430
                         sub.s            esi, ecx                                      // 0x007c48bb    2bf1
                         sar              esi, 3                                        // 0x007c48bd    c1fe03
                         sub.s            esi, eax                                      // 0x007c48c0    2bf0
                         mov              dword ptr [ecx + eax * 0x8], edx              // 0x007c48c2    8914c1
                         {disp8} mov      dword ptr [ecx + eax * 0x8 + 0x04], esi       // 0x007c48c5    8974c104
                         {disp8} jmp      _jmp_addr_0x007c48d8                          // 0x007c48c9    eb0d
_jmp_addr_0x007c48cb:    {disp32} mov     ecx, dword ptr [esp + 0x00000128]             // 0x007c48cb    8b8c2428010000
                         {disp8} mov      edi, dword ptr [esp + 0x38]                   // 0x007c48d2    8b7c2438
                         mov              dword ptr [ecx], eax                          // 0x007c48d6    8901
_jmp_addr_0x007c48d8:    {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007c48d8    8b4c2448
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c48dc    8b442414
                         cmp.s            eax, ecx                                      // 0x007c48e0    3bc1
                         {disp32} jg      _jmp_addr_0x007c47dd                          // 0x007c48e2    0f8ff5feffff
_jmp_addr_0x007c48e8:    {disp32} mov     ecx, dword ptr [esp + 0x00000138]             // 0x007c48e8    8b8c2438010000
                         mov.s            dl, al                                        // 0x007c48ef    8ad0
                         {disp8} mov      ebp, dword ptr [esp + 0x1c]                   // 0x007c48f1    8b6c241c
                         sub.s            dl, bl                                        // 0x007c48f5    2ad3
                         {disp8} mov      byte ptr [esp + 0x31], dl                     // 0x007c48f7    88542431
                         {disp32} mov     edx, dword ptr [esp + 0x00000118]             // 0x007c48fb    8b942418010000
                         lea              ecx, dword ptr [ecx + edx * 0x4]              // 0x007c4902    8d0c91
                         cmp.s            ebp, ecx                                      // 0x007c4905    3be9
                         .byte            0x72, 0x7// {disp8} jb _jmp_addr_0x007c4910   // 0x007c4907    7207
                         {disp8} mov      byte ptr [esp + 0x30], -0x40                  // 0x007c4909    c6442430c0
                         {disp8} jmp      _jmp_addr_0x007c4959                          // 0x007c490e    eb49
_jmp_addr_0x007c4910:    {disp8} mov      esi, dword ptr [ebp + 0x00]                   // 0x007c4910    8b7500
                         {disp32} mov     ecx, dword ptr [esp + 0x0000011c]             // 0x007c4913    8b8c241c010000
                         cmp.s            esi, ecx                                      // 0x007c491a    3bf1
                         {disp8} jae      _jmp_addr_0x007c4932                          // 0x007c491c    7314
                         cmp              esi, 0x00000100                               // 0x007c491e    81fe00010000
                         sbb.s            dl, dl                                        // 0x007c4924    1ad2
                         and              dl, -0x60                                     // 0x007c4926    80e2a0
                         add              dl, 0x60                                      // 0x007c4929    80c260
                         {disp8} mov      byte ptr [esp + 0x30], dl                     // 0x007c492c    88542430
                         {disp8} jmp      _jmp_addr_0x007c4952                          // 0x007c4930    eb20
_jmp_addr_0x007c4932:    sub.s            esi, ecx                                      // 0x007c4932    2bf1
                         {disp32} mov     ecx, dword ptr [esp + 0x00000124]             // 0x007c4934    8b8c2424010000
                         shl              esi, 2                                        // 0x007c493b    c1e602
                         mov              dl, byte ptr [esi + ecx * 0x1]                // 0x007c493e    8a140e
                         {disp32} mov     ecx, dword ptr [esp + 0x00000120]             // 0x007c4941    8b8c2420010000
                         add              dl, 0x50                                      // 0x007c4948    80c250
                         mov              esi, dword ptr [esi + ecx * 0x1]              // 0x007c494b    8b340e
                         {disp8} mov      byte ptr [esp + 0x30], dl                     // 0x007c494e    88542430
_jmp_addr_0x007c4952:    add              ebp, 0x04                                     // 0x007c4952    83c504
                         {disp8} mov      dword ptr [esp + 0x1c], ebp                   // 0x007c4955    896c241c
_jmp_addr_0x007c4959:    mov.s            ecx, eax                                      // 0x007c4959    8bc8
                         mov              edx, 0x00000001                               // 0x007c495b    ba01000000
                         sub.s            ecx, ebx                                      // 0x007c4960    2bcb
                         mov.s            eax, edi                                      // 0x007c4962    8bc7
                         shl              edx, cl                                       // 0x007c4964    d3e2
                         mov.s            ecx, ebx                                      // 0x007c4966    8bcb
                         shr              eax, cl                                       // 0x007c4968    d3e8
                         cmp              eax, dword ptr [esp + 0x3c]                   // 0x007c496a    3b44243c
                         {disp8} jae      _jmp_addr_0x007c4991                          // 0x007c496e    7321
                         {disp8} mov      ecx, dword ptr [esp + 0x40]                   // 0x007c4970    8b4c2440
                         lea              ecx, dword ptr [ecx + eax * 0x8]              // 0x007c4974    8d0cc1
_jmp_addr_0x007c4977:    {disp8} mov      ebp, dword ptr [esp + 0x30]                   // 0x007c4977    8b6c2430
                         add.s            eax, edx                                      // 0x007c497b    03c2
                         mov              dword ptr [ecx], ebp                          // 0x007c497d    8929
                         {disp32} lea     ebp, dword ptr [edx * 0x8 + 0x00000000]       // 0x007c497f    8d2cd500000000
                         {disp8} mov      dword ptr [ecx + 0x04], esi                   // 0x007c4986    897104
                         add.s            ecx, ebp                                      // 0x007c4989    03cd
                         cmp              eax, dword ptr [esp + 0x3c]                   // 0x007c498b    3b44243c
                         .byte            0x72, 0xe6// {disp8} jb _jmp_addr_0x007c4977  // 0x007c498f    72e6
_jmp_addr_0x007c4991:    {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c4991    8b4c2420
                         mov              eax, 0x00000001                               // 0x007c4995    b801000000
                         shl              eax, cl                                       // 0x007c499a    d3e0
                         test             edi, eax                                      // 0x007c499c    85c7
                         {disp8} je       _jmp_addr_0x007c49a8                          // 0x007c499e    7408
_jmp_addr_0x007c49a0:    xor.s            edi, eax                                      // 0x007c49a0    33f8
                         shr              eax, 1                                        // 0x007c49a2    d1e8
                         test             edi, eax                                      // 0x007c49a4    85c7
                         {disp8} jne      _jmp_addr_0x007c49a0                          // 0x007c49a6    75f8
_jmp_addr_0x007c49a8:    {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c49a8    8b542418
                         mov              ebp, 0x00000001                               // 0x007c49ac    bd01000000
                         mov.s            ecx, ebx                                      // 0x007c49b1    8bcb
                         xor.s            edi, eax                                      // 0x007c49b3    33f8
                         shl              ebp, cl                                       // 0x007c49b5    d3e5
                         {disp32} mov     ecx, dword ptr [esp + edx * 0x4 + 0x00000094] // 0x007c49b7    8b8c9494000000
                         {disp32} lea     eax, dword ptr [esp + edx * 0x4 + 0x00000094] // 0x007c49be    8d849494000000
                         {disp8} mov      dword ptr [esp + 0x38], edi                   // 0x007c49c5    897c2438
                         dec              ebp                                           // 0x007c49c9    4d
                         and.s            ebp, edi                                      // 0x007c49ca    23ef
                         cmp.s            ebp, ecx                                      // 0x007c49cc    3be9
                         {disp8} je       _jmp_addr_0x007c49f0                          // 0x007c49ce    7420
_jmp_addr_0x007c49d0:    {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x007c49d0    8b6c2410
                         dec              edx                                           // 0x007c49d4    4a
                         sub.s            ebx, ebp                                      // 0x007c49d5    2bdd
                         mov              ebp, 0x00000001                               // 0x007c49d7    bd01000000
                         mov.s            ecx, ebx                                      // 0x007c49dc    8bcb
                         sub              eax, 0x04                                     // 0x007c49de    83e804
                         shl              ebp, cl                                       // 0x007c49e1    d3e5
                         mov              ecx, dword ptr [eax]                          // 0x007c49e3    8b08
                         dec              ebp                                           // 0x007c49e5    4d
                         and.s            ebp, edi                                      // 0x007c49e6    23ef
                         cmp.s            ebp, ecx                                      // 0x007c49e8    3be9
                         {disp8} jne      _jmp_addr_0x007c49d0                          // 0x007c49ea    75e4
                         {disp8} mov      dword ptr [esp + 0x18], edx                   // 0x007c49ec    89542418
_jmp_addr_0x007c49f0:    {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c49f0    8b442424
                         {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x007c49f4    8b6c2410
                         mov.s            edx, eax                                      // 0x007c49f8    8bd0
                         dec              eax                                           // 0x007c49fa    48
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x007c49fb    89442424
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c49ff    8b442414
                         test             edx, edx                                      // 0x007c4a03    85d2
                         {disp32} jne     _jmp_addr_0x007c47c7                          // 0x007c4a05    0f85bcfdffff
_jmp_addr_0x007c4a0b:    {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4a0b    8b4c2428
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c4a0f    8b542420
                         add              ecx, 0x4                                      // 0x007c4a13    83c104
                         inc              eax                                           // 0x007c4a16    40
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007c4a17    894c2428
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007c4a1b    8b4c242c
                         inc              edx                                           // 0x007c4a1f    42
                         cmp.s            eax, ecx                                      // 0x007c4a20    3bc1
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007c4a22    89442414
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c4a26    89542420
                         {disp32} jle     _jmp_addr_0x007c47b0                          // 0x007c4a2a    0f8e80fdffff
                         {disp8} mov      esi, dword ptr [esp + 0x44]                   // 0x007c4a30    8b742444
                         xor.s            edi, edi                                      // 0x007c4a34    33ff
_jmp_addr_0x007c4a36:    cmp.s            esi, edi                                      // 0x007c4a36    3bf7
                         {disp32} je      _jmp_addr_0x007c4636                          // 0x007c4a38    0f84f8fbffff
                         cmp              dword ptr [esp + 0x2c], 0x01                  // 0x007c4a3e    837c242c01
                         {disp32} je      _jmp_addr_0x007c4636                          // 0x007c4a43    0f84edfbffff
                         pop              edi                                           // 0x007c4a49    5f
                         pop              esi                                           // 0x007c4a4a    5e
                         pop              ebp                                           // 0x007c4a4b    5d
                         mov              eax, 0xfffffffb                               // 0x007c4a4c    b8fbffffff
                         pop              ebx                                           // 0x007c4a51    5b
                         add              esp, 0x00000100                               // 0x007c4a52    81c400010000
                         ret                                                            // 0x007c4a58    c3
_jmp_addr_0x007c4a59:    pop              edi                                           // 0x007c4a59    5f
                         pop              esi                                           // 0x007c4a5a    5e
                         pop              ebp                                           // 0x007c4a5b    5d
                         mov              eax, 0xfffffffc                               // 0x007c4a5c    b8fcffffff
                         pop              ebx                                           // 0x007c4a61    5b
                         add              esp, 0x00000100                               // 0x007c4a62    81c400010000
                         ret                                                            // 0x007c4a68    c3
                         nop                                                            // 0x007c4a69    90
                         nop                                                            // 0x007c4a6a    90
                         nop                                                            // 0x007c4a6b    90
                         nop                                                            // 0x007c4a6c    90
                         nop                                                            // 0x007c4a6d    90
                         nop                                                            // 0x007c4a6e    90
                         nop                                                            // 0x007c4a6f    90
_jmp_addr_0x007c4a70:    push             ecx                                           // 0x007c4a70    51
                         push             ebx                                           // 0x007c4a71    53
                         {disp8} mov      ebx, dword ptr [esp + 0x2c]                   // 0x007c4a72    8b5c242c
                         push             ebp                                           // 0x007c4a76    55
                         push             esi                                           // 0x007c4a77    56
                         {disp8} mov      eax, dword ptr [ebx + 0x28]                   // 0x007c4a78    8b4328
                         push             edi                                           // 0x007c4a7b    57
                         push             0x4                                           // 0x007c4a7c    6a04
                         push             0x00000120                                    // 0x007c4a7e    6820010000
                         push             eax                                           // 0x007c4a83    50
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000000            // 0x007c4a84    c744241c00000000
                         call             dword ptr [ebx + 0x20]                        // 0x007c4a8c    ff5320
                         mov.s            edi, eax                                      // 0x007c4a8f    8bf8
                         add              esp, 0x0c                                     // 0x007c4a91    83c40c
                         test             edi, edi                                      // 0x007c4a94    85ff
                         {disp8} jne      _jmp_addr_0x007c4aa3                          // 0x007c4a96    750b
                         pop              edi                                           // 0x007c4a98    5f
                         pop              esi                                           // 0x007c4a99    5e
                         pop              ebp                                           // 0x007c4a9a    5d
                         mov              eax, 0xfffffffc                               // 0x007c4a9b    b8fcffffff
                         pop              ebx                                           // 0x007c4aa0    5b
                         pop              ecx                                           // 0x007c4aa1    59
                         ret                                                            // 0x007c4aa2    c3
_jmp_addr_0x007c4aa3:    {disp8} mov      edx, dword ptr [esp + 0x34]                   // 0x007c4aa3    8b542434
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c4aa7    8b442424
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007c4aab    8b6c2418
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007c4aaf    8d4c2410
                         push             edi                                           // 0x007c4ab3    57
                         push             ecx                                           // 0x007c4ab4    51
                         {disp8} mov      ecx, dword ptr [esp + 0x34]                   // 0x007c4ab5    8b4c2434
                         push             edx                                           // 0x007c4ab9    52
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                   // 0x007c4aba    8b54242c
                         push             eax                                           // 0x007c4abe    50
                         push             ecx                                           // 0x007c4abf    51
                         push             0x009a0454                                    // 0x007c4ac0    6854049a00
                         push             0x009a03d8                                    // 0x007c4ac5    68d8039a00
                         push             0x00000101                                    // 0x007c4aca    6801010000
                         push             ebp                                           // 0x007c4acf    55
                         push             edx                                           // 0x007c4ad0    52
                         call             _jmp_addr_0x007c45a0                          // 0x007c4ad1    e8cafaffff
                         mov.s            esi, eax                                      // 0x007c4ad6    8bf0
                         add              esp, 0x28                                     // 0x007c4ad8    83c428
                         test             esi, esi                                      // 0x007c4adb    85f6
                         {disp32} jne     _jmp_addr_0x007c4bb6                          // 0x007c4add    0f85d3000000
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c4ae3    8b442424
                         cmp              dword ptr [eax], 0x00                         // 0x007c4ae7    833800
                         {disp32} je      _jmp_addr_0x007c4bda                          // 0x007c4aea    0f84ea000000
                         {disp8} mov      edx, dword ptr [esp + 0x34]                   // 0x007c4af0    8b542434
                         {disp8} mov      eax, dword ptr [esp + 0x28]                   // 0x007c4af4    8b442428
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007c4af8    8d4c2410
                         push             edi                                           // 0x007c4afc    57
                         push             ecx                                           // 0x007c4afd    51
                         {disp8} mov      ecx, dword ptr [esp + 0x38]                   // 0x007c4afe    8b4c2438
                         push             edx                                           // 0x007c4b02    52
                         {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007c4b03    8b542428
                         push             eax                                           // 0x007c4b07    50
                         {disp8} mov      eax, dword ptr [esp + 0x30]                   // 0x007c4b08    8b442430
                         push             ecx                                           // 0x007c4b0c    51
                         push             0x009a0548                                    // 0x007c4b0d    6848059a00
                         push             0x009a04d0                                    // 0x007c4b12    68d0049a00
                         push             esi                                           // 0x007c4b17    56
                         lea              ecx, dword ptr [eax + ebp * 0x4]              // 0x007c4b18    8d0ca8
                         push             edx                                           // 0x007c4b1b    52
                         push             ecx                                           // 0x007c4b1c    51
                         call             _jmp_addr_0x007c45a0                          // 0x007c4b1d    e87efaffff
                         mov.s            esi, eax                                      // 0x007c4b22    8bf0
                         add              esp, 0x28                                     // 0x007c4b24    83c428
                         test             esi, esi                                      // 0x007c4b27    85f6
                         {disp8} jne      _jmp_addr_0x007c4b4f                          // 0x007c4b29    7524
                         {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007c4b2b    8b542428
                         cmp              dword ptr [edx], 0x00                         // 0x007c4b2f    833a00
                         {disp8} jne      _jmp_addr_0x007c4b3c                          // 0x007c4b32    7508
                         cmp              ebp, 0x00000101                               // 0x007c4b34    81fd01010000
                         {disp8} ja       _jmp_addr_0x007c4b97                          // 0x007c4b3a    775b
_jmp_addr_0x007c4b3c:    {disp8} mov      eax, dword ptr [ebx + 0x28]                   // 0x007c4b3c    8b4328
                         push             edi                                           // 0x007c4b3f    57
                         push             eax                                           // 0x007c4b40    50
                         call             dword ptr [ebx + 0x24]                        // 0x007c4b41    ff5324
                         add              esp, 0x08                                     // 0x007c4b44    83c408
                         xor.s            eax, eax                                      // 0x007c4b47    33c0
                         pop              edi                                           // 0x007c4b49    5f
                         pop              esi                                           // 0x007c4b4a    5e
                         pop              ebp                                           // 0x007c4b4b    5d
                         pop              ebx                                           // 0x007c4b4c    5b
                         pop              ecx                                           // 0x007c4b4d    59
                         ret                                                            // 0x007c4b4e    c3
_jmp_addr_0x007c4b4f:    cmp              esi, -0x03                                    // 0x007c4b4f    83fefd
                         {disp8} jne      _jmp_addr_0x007c4b6e                          // 0x007c4b52    751a
                         {disp8} mov      ecx, dword ptr [ebx + 0x28]                   // 0x007c4b54    8b4b28
                         push             edi                                           // 0x007c4b57    57
                         push             ecx                                           // 0x007c4b58    51
                         {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d330            // 0x007c4b59    c7431830d3c200
                         call             dword ptr [ebx + 0x24]                        // 0x007c4b60    ff5324
                         add              esp, 0x08                                     // 0x007c4b63    83c408
                         mov.s            eax, esi                                      // 0x007c4b66    8bc6
                         pop              edi                                           // 0x007c4b68    5f
                         pop              esi                                           // 0x007c4b69    5e
                         pop              ebp                                           // 0x007c4b6a    5d
                         pop              ebx                                           // 0x007c4b6b    5b
                         pop              ecx                                           // 0x007c4b6c    59
                         ret                                                            // 0x007c4b6d    c3
_jmp_addr_0x007c4b6e:    cmp              esi, -0x05                                    // 0x007c4b6e    83fefb
                         {disp8} jne      _jmp_addr_0x007c4b92                          // 0x007c4b71    751f
                         {disp8} mov      ecx, dword ptr [ebx + 0x28]                   // 0x007c4b73    8b4b28
                         push             edi                                           // 0x007c4b76    57
                         push             ecx                                           // 0x007c4b77    51
                         {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d314            // 0x007c4b78    c7431814d3c200
                         mov              esi, 0xfffffffd                               // 0x007c4b7f    befdffffff
                         call             dword ptr [ebx + 0x24]                        // 0x007c4b84    ff5324
                         add              esp, 0x08                                     // 0x007c4b87    83c408
                         mov.s            eax, esi                                      // 0x007c4b8a    8bc6
                         pop              edi                                           // 0x007c4b8c    5f
                         pop              esi                                           // 0x007c4b8d    5e
                         pop              ebp                                           // 0x007c4b8e    5d
                         pop              ebx                                           // 0x007c4b8f    5b
                         pop              ecx                                           // 0x007c4b90    59
                         ret                                                            // 0x007c4b91    c3
_jmp_addr_0x007c4b92:    cmp              esi, -0x04                                    // 0x007c4b92    83fefc
                         {disp8} je       _jmp_addr_0x007c4ba3                          // 0x007c4b95    740c
_jmp_addr_0x007c4b97:    {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d2f0            // 0x007c4b97    c74318f0d2c200
                         mov              esi, 0xfffffffd                               // 0x007c4b9e    befdffffff
_jmp_addr_0x007c4ba3:    {disp8} mov      ecx, dword ptr [ebx + 0x28]                   // 0x007c4ba3    8b4b28
                         push             edi                                           // 0x007c4ba6    57
                         push             ecx                                           // 0x007c4ba7    51
                         call             dword ptr [ebx + 0x24]                        // 0x007c4ba8    ff5324
                         add              esp, 0x08                                     // 0x007c4bab    83c408
                         mov.s            eax, esi                                      // 0x007c4bae    8bc6
                         pop              edi                                           // 0x007c4bb0    5f
                         pop              esi                                           // 0x007c4bb1    5e
                         pop              ebp                                           // 0x007c4bb2    5d
                         pop              ebx                                           // 0x007c4bb3    5b
                         pop              ecx                                           // 0x007c4bb4    59
                         ret                                                            // 0x007c4bb5    c3
_jmp_addr_0x007c4bb6:    cmp              esi, -0x03                                    // 0x007c4bb6    83fefd
                         {disp8} jne      _jmp_addr_0x007c4bd5                          // 0x007c4bb9    751a
                         {disp8} mov      edx, dword ptr [ebx + 0x28]                   // 0x007c4bbb    8b5328
                         push             edi                                           // 0x007c4bbe    57
                         push             edx                                           // 0x007c4bbf    52
                         {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d2cc            // 0x007c4bc0    c74318ccd2c200
                         call             dword ptr [ebx + 0x24]                        // 0x007c4bc7    ff5324
                         add              esp, 0x08                                     // 0x007c4bca    83c408
                         mov.s            eax, esi                                      // 0x007c4bcd    8bc6
                         pop              edi                                           // 0x007c4bcf    5f
                         pop              esi                                           // 0x007c4bd0    5e
                         pop              ebp                                           // 0x007c4bd1    5d
                         pop              ebx                                           // 0x007c4bd2    5b
                         pop              ecx                                           // 0x007c4bd3    59
                         ret                                                            // 0x007c4bd4    c3
_jmp_addr_0x007c4bd5:    cmp              esi, -0x04                                    // 0x007c4bd5    83fefc
                         {disp8} je       _jmp_addr_0x007c4be6                          // 0x007c4bd8    740c
_jmp_addr_0x007c4bda:    {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d2ac            // 0x007c4bda    c74318acd2c200
                         mov              esi, 0xfffffffd                               // 0x007c4be1    befdffffff
_jmp_addr_0x007c4be6:    {disp8} mov      edx, dword ptr [ebx + 0x28]                   // 0x007c4be6    8b5328
                         push             edi                                           // 0x007c4be9    57
                         push             edx                                           // 0x007c4bea    52
                         call             dword ptr [ebx + 0x24]                        // 0x007c4beb    ff5324
                         add              esp, 0x08                                     // 0x007c4bee    83c408
                         mov.s            eax, esi                                      // 0x007c4bf1    8bc6
                         pop              edi                                           // 0x007c4bf3    5f
                         pop              esi                                           // 0x007c4bf4    5e
                         pop              ebp                                           // 0x007c4bf5    5d
                         pop              ebx                                           // 0x007c4bf6    5b
                         pop              ecx                                           // 0x007c4bf7    59
                         ret                                                            // 0x007c4bf8    c3
                         nop                                                            // 0x007c4bf9    90
                         nop                                                            // 0x007c4bfa    90
                         nop                                                            // 0x007c4bfb    90
                         nop                                                            // 0x007c4bfc    90
                         nop                                                            // 0x007c4bfd    90
                         nop                                                            // 0x007c4bfe    90
                         nop                                                            // 0x007c4bff    90
_jmp_addr_0x007c4c00:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c4c00    8b442404
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x266158]        // 0x007c4c04    8b0d58c1c200
                         {disp8} mov      edx, dword ptr [esp + 0x08]                   // 0x007c4c0a    8b542408
                         mov              dword ptr [eax], ecx                          // 0x007c4c0e    8908
                         {disp32} mov     eax, dword ptr [data_bytes + 0x26615c]        // 0x007c4c10    a15cc1c200
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x007c4c15    8b4c240c
                         mov              dword ptr [edx], eax                          // 0x007c4c19    8902
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c4c1b    8b542410
                         xor.s            eax, eax                                      // 0x007c4c1f    33c0
                         mov              dword ptr [ecx], 0x00c2c160                   // 0x007c4c21    c70160c1c200
                         mov              dword ptr [edx], 0x00c2d160                   // 0x007c4c27    c70260d1c200
                         ret                                                            // 0x007c4c2d    c3
                         nop                                                            // 0x007c4c2e    90
                         nop                                                            // 0x007c4c2f    90
_jmp_addr_0x007c4c30:    push             ecx                                           // 0x007c4c30    51
                         push             ebx                                           // 0x007c4c31    53
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]                   // 0x007c4c32    8b5c240c
                         push             ebp                                           // 0x007c4c36    55
                         push             esi                                           // 0x007c4c37    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c4c38    8b742418
                         {disp8} mov      ebp, dword ptr [ebx + 0x34]                   // 0x007c4c3c    8b6b34
                         push             edi                                           // 0x007c4c3f    57
                         {disp8} mov      edi, dword ptr [ebx + 0x30]                   // 0x007c4c40    8b7b30
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                   // 0x007c4c43    8b460c
                         cmp.s            edi, ebp                                      // 0x007c4c46    3bfd
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c4c48    89442410
                         {disp8} mov      dword ptr [esp + 0x18], edi                   // 0x007c4c4c    897c2418
                         {disp8} jbe      _jmp_addr_0x007c4c55                          // 0x007c4c50    7603
                         {disp8} mov      ebp, dword ptr [ebx + 0x2c]                   // 0x007c4c52    8b6b2c
_jmp_addr_0x007c4c55:    {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x007c4c55    8b4610
                         sub.s            ebp, edi                                      // 0x007c4c58    2bef
                         cmp.s            ebp, eax                                      // 0x007c4c5a    3be8
                         {disp8} jbe      _jmp_addr_0x007c4c60                          // 0x007c4c5c    7602
                         mov.s            ebp, eax                                      // 0x007c4c5e    8be8
_jmp_addr_0x007c4c60:    test             ebp, ebp                                      // 0x007c4c60    85ed
                         {disp8} je       _jmp_addr_0x007c4c73                          // 0x007c4c62    740f
                         cmp              dword ptr [esp + 0x20], -0x05                 // 0x007c4c64    837c2420fb
                         {disp8} jne      _jmp_addr_0x007c4c73                          // 0x007c4c69    7508
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000000            // 0x007c4c6b    c744242000000000
_jmp_addr_0x007c4c73:    {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c4c73    8b5614
                         sub.s            eax, ebp                                      // 0x007c4c76    2bc5
                         add.s            edx, ebp                                      // 0x007c4c78    03d5
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x007c4c7a    894610
                         {disp8} mov      dword ptr [esi + 0x14], edx                   // 0x007c4c7d    895614
                         {disp8} mov      eax, dword ptr [ebx + 0x38]                   // 0x007c4c80    8b4338
                         test             eax, eax                                      // 0x007c4c83    85c0
                         {disp8} je       _jmp_addr_0x007c4c98                          // 0x007c4c85    7411
                         {disp8} mov      ecx, dword ptr [ebx + 0x3c]                   // 0x007c4c87    8b4b3c
                         push             ebp                                           // 0x007c4c8a    55
                         push             edi                                           // 0x007c4c8b    57
                         push             ecx                                           // 0x007c4c8c    51
                         call             eax                                           // 0x007c4c8d    ffd0
                         {disp8} mov      dword ptr [ebx + 0x3c], eax                   // 0x007c4c8f    89433c
                         add              esp, 0x0c                                     // 0x007c4c92    83c40c
                         {disp8} mov      dword ptr [esi + 0x30], eax                   // 0x007c4c95    894630
_jmp_addr_0x007c4c98:    mov.s            ecx, ebp                                      // 0x007c4c98    8bcd
                         mov.s            esi, edi                                      // 0x007c4c9a    8bf7
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c4c9c    8b7c2410
                         mov.s            edx, ecx                                      // 0x007c4ca0    8bd1
                         shr              ecx, 2                                        // 0x007c4ca2    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007c4ca5    f3a5
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4ca7    8b442418
                         mov.s            ecx, edx                                      // 0x007c4cab    8bca
                         and              ecx, 0x03                                     // 0x007c4cad    83e103
                         add.s            eax, ebp                                      // 0x007c4cb0    03c5
                         rep movsb                                                      // 0x007c4cb2    f3a4
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c4cb4    8b7c2410
                         {disp8} mov      ecx, dword ptr [ebx + 0x2c]                   // 0x007c4cb8    8b4b2c
                         add.s            edi, ebp                                      // 0x007c4cbb    03fd
                         cmp.s            eax, ecx                                      // 0x007c4cbd    3bc1
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007c4cbf    897c2410
                         {disp32} jne     _jmp_addr_0x007c4d4a                          // 0x007c4cc3    0f8581000000
                         {disp8} mov      eax, dword ptr [ebx + 0x34]                   // 0x007c4cc9    8b4334
                         {disp8} mov      esi, dword ptr [ebx + 0x28]                   // 0x007c4ccc    8b7328
                         cmp.s            eax, ecx                                      // 0x007c4ccf    3bc1
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c4cd1    89742418
                         {disp8} jne      _jmp_addr_0x007c4cda                          // 0x007c4cd5    7503
                         {disp8} mov      dword ptr [ebx + 0x34], esi                   // 0x007c4cd7    897334
_jmp_addr_0x007c4cda:    {disp8} mov      edi, dword ptr [esp + 0x1c]                   // 0x007c4cda    8b7c241c
                         {disp8} mov      ebp, dword ptr [ebx + 0x34]                   // 0x007c4cde    8b6b34
                         sub.s            ebp, esi                                      // 0x007c4ce1    2bee
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c4ce3    8b4710
                         cmp.s            ebp, eax                                      // 0x007c4ce6    3be8
                         {disp8} jbe      _jmp_addr_0x007c4cec                          // 0x007c4ce8    7602
                         mov.s            ebp, eax                                      // 0x007c4cea    8be8
_jmp_addr_0x007c4cec:    test             ebp, ebp                                      // 0x007c4cec    85ed
                         {disp8} je       _jmp_addr_0x007c4cff                          // 0x007c4cee    740f
                         cmp              dword ptr [esp + 0x20], -0x05                 // 0x007c4cf0    837c2420fb
                         {disp8} jne      _jmp_addr_0x007c4cff                          // 0x007c4cf5    7508
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000000            // 0x007c4cf7    c744242000000000
_jmp_addr_0x007c4cff:    {disp8} mov      edx, dword ptr [edi + 0x14]                   // 0x007c4cff    8b5714
                         sub.s            eax, ebp                                      // 0x007c4d02    2bc5
                         add.s            edx, ebp                                      // 0x007c4d04    03d5
                         {disp8} mov      dword ptr [edi + 0x10], eax                   // 0x007c4d06    894710
                         {disp8} mov      dword ptr [edi + 0x14], edx                   // 0x007c4d09    895714
                         {disp8} mov      eax, dword ptr [ebx + 0x38]                   // 0x007c4d0c    8b4338
                         test             eax, eax                                      // 0x007c4d0f    85c0
                         {disp8} je       _jmp_addr_0x007c4d24                          // 0x007c4d11    7411
                         {disp8} mov      ecx, dword ptr [ebx + 0x3c]                   // 0x007c4d13    8b4b3c
                         push             ebp                                           // 0x007c4d16    55
                         push             esi                                           // 0x007c4d17    56
                         push             ecx                                           // 0x007c4d18    51
                         call             eax                                           // 0x007c4d19    ffd0
                         {disp8} mov      dword ptr [ebx + 0x3c], eax                   // 0x007c4d1b    89433c
                         add              esp, 0x0c                                     // 0x007c4d1e    83c40c
                         {disp8} mov      dword ptr [edi + 0x30], eax                   // 0x007c4d21    894730
_jmp_addr_0x007c4d24:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c4d24    8b442410
                         mov.s            ecx, ebp                                      // 0x007c4d28    8bcd
                         mov.s            edx, ecx                                      // 0x007c4d2a    8bd1
                         mov.s            edi, eax                                      // 0x007c4d2c    8bf8
                         shr              ecx, 2                                        // 0x007c4d2e    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007c4d31    f3a5
                         add.s            eax, ebp                                      // 0x007c4d33    03c5
                         mov.s            ecx, edx                                      // 0x007c4d35    8bca
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c4d37    89442410
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4d3b    8b442418
                         and              ecx, 0x03                                     // 0x007c4d3f    83e103
                         add.s            eax, ebp                                      // 0x007c4d42    03c5
                         rep movsb                                                      // 0x007c4d44    f3a4
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007c4d46    89442418
_jmp_addr_0x007c4d4a:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c4d4a    8b4c241c
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c4d4e    8b542410
                         pop              edi                                           // 0x007c4d52    5f
                         pop              esi                                           // 0x007c4d53    5e
                         {disp8} mov      dword ptr [ecx + 0x0c], edx                   // 0x007c4d54    89510c
                         {disp8} mov      dword ptr [ebx + 0x30], eax                   // 0x007c4d57    894330
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4d5a    8b442418
                         pop              ebp                                           // 0x007c4d5e    5d
                         pop              ebx                                           // 0x007c4d5f    5b
                         pop              ecx                                           // 0x007c4d60    59
                         ret                                                            // 0x007c4d61    c3
                         nop                                                            // 0x007c4d62    90
                         nop                                                            // 0x007c4d63    90
                         nop                                                            // 0x007c4d64    90
                         nop                                                            // 0x007c4d65    90
                         nop                                                            // 0x007c4d66    90
                         nop                                                            // 0x007c4d67    90
                         nop                                                            // 0x007c4d68    90
                         nop                                                            // 0x007c4d69    90
                         nop                                                            // 0x007c4d6a    90
                         nop                                                            // 0x007c4d6b    90
                         nop                                                            // 0x007c4d6c    90
                         nop                                                            // 0x007c4d6d    90
                         nop                                                            // 0x007c4d6e    90
                         nop                                                            // 0x007c4d6f    90
_jmp_addr_0x007c4d70:    sub              esp, 0x14                                     // 0x007c4d70    83ec14
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4d73    8b4c2428
                         push             ebx                                           // 0x007c4d77    53
                         push             ebp                                           // 0x007c4d78    55
                         push             esi                                           // 0x007c4d79    56
                         {disp8} mov      ebx, dword ptr [ecx + 0x34]                   // 0x007c4d7a    8b5934
                         {disp8} mov      esi, dword ptr [ecx + 0x30]                   // 0x007c4d7d    8b7130
                         {disp8} mov      edx, dword ptr [ecx + 0x20]                   // 0x007c4d80    8b5120
                         push             edi                                           // 0x007c4d83    57
                         {disp8} mov      edi, dword ptr [esp + 0x3c]                   // 0x007c4d84    8b7c243c
                         cmp.s            ebx, esi                                      // 0x007c4d88    3bde
                         {disp8} mov      dword ptr [esp + 0x14], ebx                   // 0x007c4d8a    895c2414
                         {disp8} mov      eax, dword ptr [edi + 0x04]                   // 0x007c4d8e    8b4704
                         mov              ebp, dword ptr [edi]                          // 0x007c4d91    8b2f
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c4d93    89442410
                         {disp8} mov      eax, dword ptr [ecx + 0x1c]                   // 0x007c4d97    8b411c
                         {disp8} jae      _jmp_addr_0x007c4da5                          // 0x007c4d9a    7309
                         sub.s            esi, ebx                                      // 0x007c4d9c    2bf3
                         dec              esi                                           // 0x007c4d9e    4e
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c4d9f    89742418
                         {disp8} jmp      _jmp_addr_0x007c4dae                          // 0x007c4da3    eb09
_jmp_addr_0x007c4da5:    {disp8} mov      ecx, dword ptr [ecx + 0x2c]                   // 0x007c4da5    8b492c
                         sub.s            ecx, ebx                                      // 0x007c4da8    2bcb
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007c4daa    894c2418
_jmp_addr_0x007c4dae:    {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4dae    8b4c2428
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00c2d350]       // 0x007c4db2    8b0c8d50d3c200
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c4db9    894c241c
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007c4dbd    8b4c242c
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00c2d350]       // 0x007c4dc1    8b0c8d50d3c200
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x007c4dc8    894c2420
_jmp_addr_0x007c4dcc:    cmp              eax, 0x14                                     // 0x007c4dcc    83f814
                         {disp8} jae      _jmp_addr_0x007c4df0                          // 0x007c4dcf    731f
_jmp_addr_0x007c4dd1:    {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c4dd1    8b4c2410
                         dec              ecx                                           // 0x007c4dd5    49
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c4dd6    894c2410
                         xor.s            ecx, ecx                                      // 0x007c4dda    33c9
                         {disp8} mov      cl, byte ptr [ebp + 0x00]                     // 0x007c4ddc    8a4d00
                         mov.s            esi, ecx                                      // 0x007c4ddf    8bf1
                         mov.s            ecx, eax                                      // 0x007c4de1    8bc8
                         shl              esi, cl                                       // 0x007c4de3    d3e6
                         add              eax, 0x08                                     // 0x007c4de5    83c008
                         or.s             edx, esi                                      // 0x007c4de8    0bd6
                         inc              ebp                                           // 0x007c4dea    45
                         cmp              eax, 0x14                                     // 0x007c4deb    83f814
                         .byte            0x72, 0xe1// {disp8} jb _jmp_addr_0x007c4dd1  // 0x007c4dee    72e1
_jmp_addr_0x007c4df0:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c4df0    8b4c241c
                         {disp8} mov      esi, dword ptr [esp + 0x30]                   // 0x007c4df4    8b742430
                         and.s            ecx, edx                                      // 0x007c4df8    23ca
                         xor.s            ebx, ebx                                      // 0x007c4dfa    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4dfc    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4dff    8d34ce
                         test             ebx, ebx                                      // 0x007c4e02    85db
                         {disp32} je      _jmp_addr_0x007c4fa8                          // 0x007c4e04    0f849e010000
                         xor.s            ecx, ecx                                      // 0x007c4e0a    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4e0c    8a4e01
                         shr              edx, cl                                       // 0x007c4e0f    d3ea
                         sub.s            eax, ecx                                      // 0x007c4e11    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4e13    894c242c
                         test             bl, 0x10                                      // 0x007c4e17    f6c310
                         {disp8} jne      _jmp_addr_0x007c4e55                          // 0x007c4e1a    7539
_jmp_addr_0x007c4e1c:    test             bl, 0x40                                      // 0x007c4e1c    f6c340
                         {disp32} jne     _jmp_addr_0x007c504f                          // 0x007c4e1f    0f852a020000
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4e25    8b0c9d50d3c200
                         {disp8} mov      ebx, dword ptr [esi + 0x04]                   // 0x007c4e2c    8b5e04
                         and.s            ecx, edx                                      // 0x007c4e2f    23ca
                         add.s            ecx, ebx                                      // 0x007c4e31    03cb
                         xor.s            ebx, ebx                                      // 0x007c4e33    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4e35    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4e38    8d34ce
                         test             ebx, ebx                                      // 0x007c4e3b    85db
                         {disp32} je      _jmp_addr_0x007c4fa8                          // 0x007c4e3d    0f8465010000
                         xor.s            ecx, ecx                                      // 0x007c4e43    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4e45    8a4e01
                         shr              edx, cl                                       // 0x007c4e48    d3ea
                         sub.s            eax, ecx                                      // 0x007c4e4a    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4e4c    894c242c
                         test             bl, 0x10                                      // 0x007c4e50    f6c310
                         {disp8} je       _jmp_addr_0x007c4e1c                          // 0x007c4e53    74c7
_jmp_addr_0x007c4e55:    and              ebx, 0x0f                                     // 0x007c4e55    83e30f
                         sub.s            eax, ebx                                      // 0x007c4e58    2bc3
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4e5a    8b0c9d50d3c200
                         and.s            ecx, edx                                      // 0x007c4e61    23ca
                         add              ecx, dword ptr [esi + 0x04]                   // 0x007c4e63    034e04
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007c4e66    894c2428
                         mov.s            ecx, ebx                                      // 0x007c4e6a    8bcb
                         shr              edx, cl                                       // 0x007c4e6c    d3ea
                         cmp              eax, 0x0f                                     // 0x007c4e6e    83f80f
                         {disp8} jae      _jmp_addr_0x007c4e92                          // 0x007c4e71    731f
_jmp_addr_0x007c4e73:    {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c4e73    8b4c2410
                         dec              ecx                                           // 0x007c4e77    49
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c4e78    894c2410
                         xor.s            ecx, ecx                                      // 0x007c4e7c    33c9
                         {disp8} mov      cl, byte ptr [ebp + 0x00]                     // 0x007c4e7e    8a4d00
                         mov.s            esi, ecx                                      // 0x007c4e81    8bf1
                         mov.s            ecx, eax                                      // 0x007c4e83    8bc8
                         shl              esi, cl                                       // 0x007c4e85    d3e6
                         add              eax, 0x08                                     // 0x007c4e87    83c008
                         or.s             edx, esi                                      // 0x007c4e8a    0bd6
                         inc              ebp                                           // 0x007c4e8c    45
                         cmp              eax, 0x0f                                     // 0x007c4e8d    83f80f
                         .byte            0x72, 0xe1// {disp8} jb _jmp_addr_0x007c4e73  // 0x007c4e90    72e1
_jmp_addr_0x007c4e92:    {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c4e92    8b4c2420
                         {disp8} mov      esi, dword ptr [esp + 0x34]                   // 0x007c4e96    8b742434
                         and.s            ecx, edx                                      // 0x007c4e9a    23ca
                         xor.s            ebx, ebx                                      // 0x007c4e9c    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4e9e    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4ea1    8d34ce
                         xor.s            ecx, ecx                                      // 0x007c4ea4    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4ea6    8a4e01
                         shr              edx, cl                                       // 0x007c4ea9    d3ea
                         sub.s            eax, ecx                                      // 0x007c4eab    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4ead    894c242c
                         test             bl, 0x10                                      // 0x007c4eb1    f6c310
                         {disp8} jne      _jmp_addr_0x007c4ee7                          // 0x007c4eb4    7531
_jmp_addr_0x007c4eb6:    test             bl, 0x40                                      // 0x007c4eb6    f6c340
                         {disp32} jne     _jmp_addr_0x007c4fe2                          // 0x007c4eb9    0f8523010000
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4ebf    8b0c9d50d3c200
                         {disp8} mov      ebx, dword ptr [esi + 0x04]                   // 0x007c4ec6    8b5e04
                         and.s            ecx, edx                                      // 0x007c4ec9    23ca
                         add.s            ecx, ebx                                      // 0x007c4ecb    03cb
                         xor.s            ebx, ebx                                      // 0x007c4ecd    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4ecf    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4ed2    8d34ce
                         xor.s            ecx, ecx                                      // 0x007c4ed5    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4ed7    8a4e01
                         shr              edx, cl                                       // 0x007c4eda    d3ea
                         sub.s            eax, ecx                                      // 0x007c4edc    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4ede    894c242c
                         test             bl, 0x10                                      // 0x007c4ee2    f6c310
                         {disp8} je       _jmp_addr_0x007c4eb6                          // 0x007c4ee5    74cf
_jmp_addr_0x007c4ee7:    and              ebx, 0x0f                                     // 0x007c4ee7    83e30f
                         cmp.s            eax, ebx                                      // 0x007c4eea    3bc3
                         {disp8} jae      _jmp_addr_0x007c4f0c                          // 0x007c4eec    731e
_jmp_addr_0x007c4eee:    {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c4eee    8b7c2410
                         xor.s            ecx, ecx                                      // 0x007c4ef2    33c9
                         {disp8} mov      cl, byte ptr [ebp + 0x00]                     // 0x007c4ef4    8a4d00
                         dec              edi                                           // 0x007c4ef7    4f
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007c4ef8    897c2410
                         mov.s            edi, ecx                                      // 0x007c4efc    8bf9
                         mov.s            ecx, eax                                      // 0x007c4efe    8bc8
                         add              eax, 0x08                                     // 0x007c4f00    83c008
                         shl              edi, cl                                       // 0x007c4f03    d3e7
                         or.s             edx, edi                                      // 0x007c4f05    0bd7
                         inc              ebp                                           // 0x007c4f07    45
                         cmp.s            eax, ebx                                      // 0x007c4f08    3bc3
                         .byte            0x72, 0xe2// {disp8} jb _jmp_addr_0x007c4eee  // 0x007c4f0a    72e2
_jmp_addr_0x007c4f0c:    {disp32} mov     edi, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4f0c    8b3c9d50d3c200
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x007c4f13    8b4e04
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c4f16    8b742418
                         and.s            edi, edx                                      // 0x007c4f1a    23fa
                         add.s            edi, ecx                                      // 0x007c4f1c    03f9
                         mov.s            ecx, ebx                                      // 0x007c4f1e    8bcb
                         shr              edx, cl                                       // 0x007c4f20    d3ea
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4f22    8b4c2428
                         sub.s            eax, ebx                                      // 0x007c4f26    2bc3
                         sub.s            esi, ecx                                      // 0x007c4f28    2bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x38]                   // 0x007c4f2a    8b4c2438
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c4f2e    89742418
                         {disp8} mov      esi, dword ptr [ecx + 0x28]                   // 0x007c4f32    8b7128
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c4f35    8b4c2414
                         mov.s            ebx, ecx                                      // 0x007c4f39    8bd9
                         sub.s            ebx, esi                                      // 0x007c4f3b    2bde
                         cmp.s            ebx, edi                                      // 0x007c4f3d    3bdf
                         .byte            0x72, 0x1f// {disp8} jb _jmp_addr_0x007c4f60  // 0x007c4f3f    721f
                         mov.s            esi, ecx                                      // 0x007c4f41    8bf1
                         sub.s            esi, edi                                      // 0x007c4f43    2bf7
                         {disp8} mov      edi, dword ptr [esp + 0x28]                   // 0x007c4f45    8b7c2428
                         inc              ecx                                           // 0x007c4f49    41
                         mov              bl, byte ptr [esi]                            // 0x007c4f4a    8a1e
                         inc              esi                                           // 0x007c4f4c    46
                         {disp8} mov      byte ptr [ecx + -0x01], bl                    // 0x007c4f4d    8859ff
                         inc              ecx                                           // 0x007c4f50    41
                         mov              bl, byte ptr [esi]                            // 0x007c4f51    8a1e
                         inc              esi                                           // 0x007c4f53    46
                         {disp8} mov      byte ptr [ecx + -0x01], bl                    // 0x007c4f54    8859ff
                         sub              edi, 0x02                                     // 0x007c4f57    83ef02
                         {disp8} mov      dword ptr [esp + 0x28], edi                   // 0x007c4f5a    897c2428
                         {disp8} jmp      _jmp_addr_0x007c4f8d                          // 0x007c4f5e    eb2d
_jmp_addr_0x007c4f60:    sub.s            esi, ecx                                      // 0x007c4f60    2bf1
                         {disp8} mov      ebx, dword ptr [esp + 0x28]                   // 0x007c4f62    8b5c2428
                         add.s            esi, edi                                      // 0x007c4f66    03f7
                         mov.s            edi, esi                                      // 0x007c4f68    8bfe
                         {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c4f6a    8b742438
                         {disp8} mov      esi, dword ptr [esi + 0x2c]                   // 0x007c4f6e    8b762c
                         sub.s            esi, edi                                      // 0x007c4f71    2bf7
                         cmp.s            ebx, edi                                      // 0x007c4f73    3bdf
                         {disp8} jbe      _jmp_addr_0x007c4f8d                          // 0x007c4f75    7616
                         sub.s            ebx, edi                                      // 0x007c4f77    2bdf
                         {disp8} mov      dword ptr [esp + 0x28], ebx                   // 0x007c4f79    895c2428
_jmp_addr_0x007c4f7d:    mov              bl, byte ptr [esi]                            // 0x007c4f7d    8a1e
                         mov              byte ptr [ecx], bl                            // 0x007c4f7f    8819
                         inc              ecx                                           // 0x007c4f81    41
                         inc              esi                                           // 0x007c4f82    46
                         dec              edi                                           // 0x007c4f83    4f
                         {disp8} jne      _jmp_addr_0x007c4f7d                          // 0x007c4f84    75f7
                         {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c4f86    8b742438
                         {disp8} mov      esi, dword ptr [esi + 0x28]                   // 0x007c4f8a    8b7628
_jmp_addr_0x007c4f8d:    mov              bl, byte ptr [esi]                            // 0x007c4f8d    8a1e
                         {disp8} mov      edi, dword ptr [esp + 0x28]                   // 0x007c4f8f    8b7c2428
                         mov              byte ptr [ecx], bl                            // 0x007c4f93    8819
                         inc              ecx                                           // 0x007c4f95    41
                         inc              esi                                           // 0x007c4f96    46
                         dec              edi                                           // 0x007c4f97    4f
                         {disp8} mov      dword ptr [esp + 0x28], edi                   // 0x007c4f98    897c2428
                         {disp8} jne      _jmp_addr_0x007c4f8d                          // 0x007c4f9c    75ef
                         {disp8} mov      edi, dword ptr [esp + 0x3c]                   // 0x007c4f9e    8b7c243c
                         {disp8} mov      dword ptr [esp + 0x14], ecx                   // 0x007c4fa2    894c2414
                         {disp8} jmp      _jmp_addr_0x007c4fc8                          // 0x007c4fa6    eb20
_jmp_addr_0x007c4fa8:    xor.s            ecx, ecx                                      // 0x007c4fa8    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4faa    8a4e01
                         shr              edx, cl                                       // 0x007c4fad    d3ea
                         sub.s            eax, ecx                                      // 0x007c4faf    2bc1
                         {disp8} mov      cl, byte ptr [esi + 0x04]                     // 0x007c4fb1    8a4e04
                         {disp8} mov      esi, dword ptr [esp + 0x14]                   // 0x007c4fb4    8b742414
                         mov              byte ptr [esi], cl                            // 0x007c4fb8    880e
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007c4fba    8b4c2418
                         inc              esi                                           // 0x007c4fbe    46
                         dec              ecx                                           // 0x007c4fbf    49
                         {disp8} mov      dword ptr [esp + 0x14], esi                   // 0x007c4fc0    89742414
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007c4fc4    894c2418
_jmp_addr_0x007c4fc8:    {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007c4fc8    8b4c2418
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c4fcc    8b5c2410
                         cmp              ecx, 0x00000102                               // 0x007c4fd0    81f902010000
                         .byte            0x72, 0x2c// {disp8} jb _jmp_addr_0x007c5004  // 0x007c4fd6    722c
                         cmp              ebx, 0x0a                                     // 0x007c4fd8    83fb0a
                         .byte            0x72, 0x27// {disp8} jb _jmp_addr_0x007c5004  // 0x007c4fdb    7227
                         {disp32} jmp     _jmp_addr_0x007c4dcc                          // 0x007c4fdd    e9eafdffff
_jmp_addr_0x007c4fe2:    {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c4fe2    8b4f04
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c4fe5    8b5c2410
                         mov.s            esi, eax                                      // 0x007c4fe9    8bf0
                         sub.s            ecx, ebx                                      // 0x007c4feb    2bcb
                         shr              esi, 3                                        // 0x007c4fed    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c4ff0    3bf1
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2c120            // 0x007c4ff2    c7471820c1c200
                         {disp32} jae     _jmp_addr_0x007c50c1                          // 0x007c4ff9    0f83c2000000
                         {disp32} jmp     _jmp_addr_0x007c50bf                          // 0x007c4fff    e9bb000000
_jmp_addr_0x007c5004:    {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c5004    8b4f04
                         mov.s            esi, eax                                      // 0x007c5007    8bf0
                         sub.s            ecx, ebx                                      // 0x007c5009    2bcb
                         shr              esi, 3                                        // 0x007c500b    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c500e    3bf1
                         {disp8} jae      _jmp_addr_0x007c5014                          // 0x007c5010    7302
                         mov.s            ecx, esi                                      // 0x007c5012    8bce
_jmp_addr_0x007c5014:    {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c5014    8b742438
                         sub.s            ebp, ecx                                      // 0x007c5018    2be9
                         {disp8} mov      dword ptr [esi + 0x20], edx                   // 0x007c501a    895620
                         {disp32} lea     edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x007c501d    8d14cd00000000
                         sub.s            eax, edx                                      // 0x007c5024    2bc2
                         add.s            ecx, ebx                                      // 0x007c5026    03cb
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x007c5028    89461c
                         mov              edx, dword ptr [edi]                          // 0x007c502b    8b17
                         mov.s            eax, ebp                                      // 0x007c502d    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx                   // 0x007c502f    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x007c5032    8b4f08
                         sub.s            eax, edx                                      // 0x007c5035    2bc2
                         add.s            ecx, eax                                      // 0x007c5037    03c8
                         mov              dword ptr [edi], ebp                          // 0x007c5039    892f
                         {disp8} mov      dword ptr [edi + 0x08], ecx                   // 0x007c503b    894f08
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c503e    8b4c2414
                         {disp8} mov      dword ptr [esi + 0x34], ecx                   // 0x007c5042    894e34
                         pop              edi                                           // 0x007c5045    5f
                         pop              esi                                           // 0x007c5046    5e
                         pop              ebp                                           // 0x007c5047    5d
                         xor.s            eax, eax                                      // 0x007c5048    33c0
                         pop              ebx                                           // 0x007c504a    5b
                         add              esp, 0x14                                     // 0x007c504b    83c414
                         ret                                                            // 0x007c504e    c3
_jmp_addr_0x007c504f:    test             bl, 0x20                                      // 0x007c504f    f6c320
                         {disp8} je       _jmp_addr_0x007c50a6                          // 0x007c5052    7452
                         {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c5054    8b4f04
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c5057    8b5c2410
                         mov.s            esi, eax                                      // 0x007c505b    8bf0
                         sub.s            ecx, ebx                                      // 0x007c505d    2bcb
                         shr              esi, 3                                        // 0x007c505f    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c5062    3bf1
                         {disp8} jae      _jmp_addr_0x007c5068                          // 0x007c5064    7302
                         mov.s            ecx, esi                                      // 0x007c5066    8bce
_jmp_addr_0x007c5068:    {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c5068    8b742438
                         sub.s            ebp, ecx                                      // 0x007c506c    2be9
                         {disp8} mov      dword ptr [esi + 0x20], edx                   // 0x007c506e    895620
                         {disp32} lea     edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x007c5071    8d14cd00000000
                         sub.s            eax, edx                                      // 0x007c5078    2bc2
                         add.s            ecx, ebx                                      // 0x007c507a    03cb
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x007c507c    89461c
                         mov              edx, dword ptr [edi]                          // 0x007c507f    8b17
                         mov.s            eax, ebp                                      // 0x007c5081    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx                   // 0x007c5083    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x007c5086    8b4f08
                         sub.s            eax, edx                                      // 0x007c5089    2bc2
                         add.s            ecx, eax                                      // 0x007c508b    03c8
                         mov              dword ptr [edi], ebp                          // 0x007c508d    892f
                         {disp8} mov      dword ptr [edi + 0x08], ecx                   // 0x007c508f    894f08
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c5092    8b4c2414
                         {disp8} mov      dword ptr [esi + 0x34], ecx                   // 0x007c5096    894e34
                         pop              edi                                           // 0x007c5099    5f
                         pop              esi                                           // 0x007c509a    5e
                         pop              ebp                                           // 0x007c509b    5d
                         mov              eax, 0x00000001                               // 0x007c509c    b801000000
                         pop              ebx                                           // 0x007c50a1    5b
                         add              esp, 0x14                                     // 0x007c50a2    83c414
                         ret                                                            // 0x007c50a5    c3
_jmp_addr_0x007c50a6:    {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c50a6    8b4f04
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c50a9    8b5c2410
                         mov.s            esi, eax                                      // 0x007c50ad    8bf0
                         sub.s            ecx, ebx                                      // 0x007c50af    2bcb
                         shr              esi, 3                                        // 0x007c50b1    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c50b4    3bf1
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2c138            // 0x007c50b6    c7471838c1c200
                         {disp8} jae      _jmp_addr_0x007c50c1                          // 0x007c50bd    7302
_jmp_addr_0x007c50bf:    mov.s            ecx, esi                                      // 0x007c50bf    8bce
_jmp_addr_0x007c50c1:    {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c50c1    8b742438
                         sub.s            ebp, ecx                                      // 0x007c50c5    2be9
                         {disp8} mov      dword ptr [esi + 0x20], edx                   // 0x007c50c7    895620
                         {disp32} lea     edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x007c50ca    8d14cd00000000
                         sub.s            eax, edx                                      // 0x007c50d1    2bc2
                         add.s            ecx, ebx                                      // 0x007c50d3    03cb
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x007c50d5    89461c
                         mov              edx, dword ptr [edi]                          // 0x007c50d8    8b17
                         mov.s            eax, ebp                                      // 0x007c50da    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx                   // 0x007c50dc    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x007c50df    8b4f08
                         sub.s            eax, edx                                      // 0x007c50e2    2bc2
                         add.s            ecx, eax                                      // 0x007c50e4    03c8
                         mov              dword ptr [edi], ebp                          // 0x007c50e6    892f
                         {disp8} mov      dword ptr [edi + 0x08], ecx                   // 0x007c50e8    894f08
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c50eb    8b4c2414
                         {disp8} mov      dword ptr [esi + 0x34], ecx                   // 0x007c50ef    894e34
                         pop              edi                                           // 0x007c50f2    5f
                         pop              esi                                           // 0x007c50f3    5e
                         pop              ebp                                           // 0x007c50f4    5d
                         mov              eax, 0xfffffffd                               // 0x007c50f5    b8fdffffff
                         pop              ebx                                           // 0x007c50fa    5b
                         add              esp, 0x14                                     // 0x007c50fb    83c414
                         ret                                                            // 0x007c50fe    c3
                         nop                                                            // 0x007c50ff    90
                         jmp              dword ptr [rdata_bytes + 0x758]               // 0x007c5100    ff2558978a00
                         jmp              dword ptr [rdata_bytes + 0x75c]               // 0x007c5106    ff255c978a00
                         jmp              dword ptr [rdata_bytes + 0x760]               // 0x007c510c    ff2560978a00
                         jmp              dword ptr [rdata_bytes + 0x764]               // 0x007c5112    ff2564978a00
                         jmp              dword ptr [rdata_bytes + 0x768]               // 0x007c5118    ff2568978a00
                         jmp              dword ptr [rdata_bytes + 0x774]               // 0x007c511e    ff2574978a00
                         jmp              dword ptr [rdata_bytes + 0x7a0]               // 0x007c5124    ff25a0978a00
                         jmp              dword ptr [rdata_bytes + 0x6f4]               // 0x007c512a    ff25f4968a00
                         jmp              dword ptr [rdata_bytes + 0x6f8]               // 0x007c5130    ff25f8968a00
                         jmp              dword ptr [rdata_bytes + 0x6fc]               // 0x007c5136    ff25fc968a00
                         jmp              dword ptr [rdata_bytes + 0x700]               // 0x007c513c    ff2500978a00
                         jmp              dword ptr [rdata_bytes + 0x704]               // 0x007c5142    ff2504978a00
                         jmp              dword ptr [rdata_bytes + 0x708]               // 0x007c5148    ff2508978a00
                         jmp              dword ptr [rdata_bytes + 0x70c]               // 0x007c514e    ff250c978a00
                         jmp              dword ptr [rdata_bytes + 0x710]               // 0x007c5154    ff2510978a00
                         jmp              dword ptr [rdata_bytes + 0x714]               // 0x007c515a    ff2514978a00
                         jmp              dword ptr [rdata_bytes + 0x718]               // 0x007c5160    ff2518978a00
                         jmp              dword ptr [rdata_bytes + 0x71c]               // 0x007c5166    ff251c978a00
                         jmp              dword ptr [rdata_bytes + 0x720]               // 0x007c516c    ff2520978a00
                         jmp              dword ptr [rdata_bytes + 0x724]               // 0x007c5172    ff2524978a00
                         jmp              dword ptr [rdata_bytes + 0x728]               // 0x007c5178    ff2528978a00
                         jmp              dword ptr [rdata_bytes + 0x72c]               // 0x007c517e    ff252c978a00
                         jmp              dword ptr [rdata_bytes + 0x730]               // 0x007c5184    ff2530978a00
                         jmp              dword ptr [rdata_bytes + 0x734]               // 0x007c518a    ff2534978a00
                         jmp              dword ptr [rdata_bytes + 0x6cc]               // 0x007c5190    ff25cc968a00
                         jmp              dword ptr [rdata_bytes + 0x73c]               // 0x007c5196    ff253c978a00
                         jmp              dword ptr [rdata_bytes + 0x740]               // 0x007c519c    ff2540978a00
                         jmp              dword ptr [rdata_bytes + 0x744]               // 0x007c51a2    ff2544978a00
                         jmp              dword ptr [rdata_bytes + 0x748]               // 0x007c51a8    ff2548978a00
                         jmp              dword ptr [rdata_bytes + 0x76c]               // 0x007c51ae    ff256c978a00
                         jmp              dword ptr [rdata_bytes + 0x770]               // 0x007c51b4    ff2570978a00
                         jmp              dword ptr [rdata_bytes + 0x6b8]               // 0x007c51ba    ff25b8968a00
                         jmp              dword ptr [rdata_bytes + 0x6bc]               // 0x007c51c0    ff25bc968a00
                         jmp              dword ptr [rdata_bytes + 0x778]               // 0x007c51c6    ff2578978a00
                         jmp              dword ptr [rdata_bytes + 0x77c]               // 0x007c51cc    ff257c978a00
                         jmp              dword ptr [rdata_bytes + 0x754]               // 0x007c51d2    ff2554978a00
                         jmp              dword ptr [rdata_bytes + 0x784]               // 0x007c51d8    ff2584978a00
                         jmp              dword ptr [rdata_bytes + 0x788]               // 0x007c51de    ff2588978a00
                         jmp              dword ptr [rdata_bytes + 0x78c]               // 0x007c51e4    ff258c978a00
                         jmp              dword ptr [rdata_bytes + 0x790]               // 0x007c51ea    ff2590978a00
                         jmp              dword ptr [rdata_bytes + 0x780]               // 0x007c51f0    ff2580978a00
                         jmp              dword ptr [rdata_bytes + 0x794]               // 0x007c51f6    ff2594978a00
                         jmp              dword ptr [rdata_bytes + 0x798]               // 0x007c51fc    ff2598978a00
                         jmp              dword ptr [rdata_bytes + 0x79c]               // 0x007c5202    ff259c978a00
                         jmp              dword ptr [rdata_bytes + 0x6c8]               // 0x007c5208    ff25c8968a00
                         jmp              dword ptr [rdata_bytes + 0x6c0]               // 0x007c520e    ff25c0968a00
                         jmp              dword ptr [rdata_bytes + 0x7a4]               // 0x007c5214    ff25a4978a00
                         jmp              dword ptr [rdata_bytes + 0x738]               // 0x007c521a    ff2538978a00
                         jmp              dword ptr [rdata_bytes + 0x74c]               // 0x007c5220    ff254c978a00
                         jmp              dword ptr [rdata_bytes + 0x6f0]               // 0x007c5226    ff25f0968a00
                         jmp              dword ptr [rdata_bytes + 0x6ec]               // 0x007c522c    ff25ec968a00
                         jmp              dword ptr [rdata_bytes + 0x750]               // 0x007c5232    ff2550978a00
                         jmp              dword ptr [rdata_bytes + 0x6d0]               // 0x007c5238    ff25d0968a00
                         jmp              dword ptr [rdata_bytes + 0x6d4]               // 0x007c523e    ff25d4968a00
                         jmp              dword ptr [rdata_bytes + 0x6d8]               // 0x007c5244    ff25d8968a00
                         jmp              dword ptr [rdata_bytes + 0x6dc]               // 0x007c524a    ff25dc968a00
                         jmp              dword ptr [rdata_bytes + 0x6e0]               // 0x007c5250    ff25e0968a00
                         jmp              dword ptr [rdata_bytes + 0x6e4]               // 0x007c5256    ff25e4968a00
                         jmp              dword ptr [rdata_bytes + 0x6e8]               // 0x007c525c    ff25e8968a00
                         jmp              dword ptr [rdata_bytes + 0x6a4]               // 0x007c5262    ff25a4968a00
                         jmp              dword ptr [rdata_bytes + 0x6a0]               // 0x007c5268    ff25a0968a00
                         jmp              dword ptr [rdata_bytes + 0x69c]               // 0x007c526e    ff259c968a00
                         jmp              dword ptr [rdata_bytes + 0x698]               // 0x007c5274    ff2598968a00
                         jmp              dword ptr [rdata_bytes + 0x694]               // 0x007c527a    ff2594968a00
                         jmp              dword ptr [rdata_bytes + 0x690]               // 0x007c5280    ff2590968a00
                         jmp              dword ptr [rdata_bytes + 0x68c]               // 0x007c5286    ff258c968a00
                         jmp              dword ptr [rdata_bytes + 0x688]               // 0x007c528c    ff2588968a00
                         jmp              dword ptr [rdata_bytes + 0x684]               // 0x007c5292    ff2584968a00
                         jmp              dword ptr [rdata_bytes + 0x680]               // 0x007c5298    ff2580968a00
                         jmp              dword ptr [rdata_bytes + 0x67c]               // 0x007c529e    ff257c968a00
                         jmp              dword ptr [rdata_bytes + 0x674]               // 0x007c52a4    ff2574968a00
                         jmp              dword ptr [rdata_bytes + 0x66c]               // 0x007c52aa    ff256c968a00
                         jmp              dword ptr [rdata_bytes + 0x668]               // 0x007c52b0    ff2568968a00
                         jmp              dword ptr [rdata_bytes + 0x6ac]               // 0x007c52b6    ff25ac968a00
                         jmp              dword ptr [rdata_bytes + 0x664]               // 0x007c52bc    ff2564968a00
                         jmp              dword ptr [rdata_bytes + 0x660]               // 0x007c52c2    ff2560968a00
                         jmp              dword ptr [rdata_bytes + 0x65c]               // 0x007c52c8    ff255c968a00
                         jmp              dword ptr [rdata_bytes + 0x658]               // 0x007c52ce    ff2558968a00
                         jmp              dword ptr [rdata_bytes + 0x654]               // 0x007c52d4    ff2554968a00
                         jmp              dword ptr [rdata_bytes + 0x650]               // 0x007c52da    ff2550968a00
                         jmp              dword ptr [rdata_bytes + 0x64c]               // 0x007c52e0    ff254c968a00
                         jmp              dword ptr [rdata_bytes + 0x648]               // 0x007c52e6    ff2548968a00
                         jmp              dword ptr [rdata_bytes + 0x644]               // 0x007c52ec    ff2544968a00
                         jmp              dword ptr [rdata_bytes + 0x640]               // 0x007c52f2    ff2540968a00
                         jmp              dword ptr [rdata_bytes + 0x63c]               // 0x007c52f8    ff253c968a00
                         jmp              dword ptr [rdata_bytes + 0x638]               // 0x007c52fe    ff2538968a00
                         jmp              dword ptr [rdata_bytes + 0x634]               // 0x007c5304    ff2534968a00
                         jmp              dword ptr [rdata_bytes + 0x630]               // 0x007c530a    ff2530968a00
                         jmp              dword ptr [rdata_bytes + 0x62c]               // 0x007c5310    ff252c968a00
                         jmp              dword ptr [rdata_bytes + 0x628]               // 0x007c5316    ff2528968a00
                         jmp              dword ptr [rdata_bytes + 0x618]               // 0x007c531c    ff2518968a00
                         jmp              dword ptr [rdata_bytes + 0x614]               // 0x007c5322    ff2514968a00
                         jmp              dword ptr [rdata_bytes + 0x60c]               // 0x007c5328    ff250c968a00
                         jmp              dword ptr [rdata_bytes + 0x608]               // 0x007c532e    ff2508968a00
                         jmp              dword ptr [rdata_bytes + 0x604]               // 0x007c5334    ff2504968a00
                         jmp              dword ptr [rdata_bytes + 0x600]               // 0x007c533a    ff2500968a00
                         jmp              dword ptr [rdata_bytes + 0x5fc]               // 0x007c5340    ff25fc958a00
                         jmp              dword ptr [rdata_bytes + 0x5f8]               // 0x007c5346    ff25f8958a00
                         jmp              dword ptr [rdata_bytes + 0x5f4]               // 0x007c534c    ff25f4958a00
                         jmp              dword ptr [rdata_bytes + 0x5f0]               // 0x007c5352    ff25f0958a00
                         jmp              dword ptr [rdata_bytes + 0x5ec]               // 0x007c5358    ff25ec958a00
                         jmp              dword ptr [rdata_bytes + 0x5e8]               // 0x007c535e    ff25e8958a00
                         jmp              dword ptr [rdata_bytes + 0x4d4]               // 0x007c5364    ff25d4948a00
                         jmp              dword ptr [rdata_bytes + 0x548]               // 0x007c536a    ff2548958a00
                         jmp              dword ptr [rdata_bytes + 0x3ec]               // 0x007c5370    ff25ec938a00
                         jmp              dword ptr [rdata_bytes + 0x3f0]               // 0x007c5376    ff25f0938a00
                         jmp              dword ptr [rdata_bytes + 0x404]               // 0x007c537c    ff2504948a00
                         jmp              dword ptr [rdata_bytes + 0x408]               // 0x007c5382    ff2508948a00
                         jmp              dword ptr [rdata_bytes + 0x40c]               // 0x007c5388    ff250c948a00
                         jmp              dword ptr [rdata_bytes + 0x410]               // 0x007c538e    ff2510948a00
_jmp_addr_0x007c5394:    jmp              dword ptr [rdata_bytes + 0x418]               // 0x007c5394    ff2518948a00
                         jmp              dword ptr [rdata_bytes + 0x41c]               // 0x007c539a    ff251c948a00
                         jmp              dword ptr [rdata_bytes + 0x420]               // 0x007c53a0    ff2520948a00
                         jmp              dword ptr [rdata_bytes + 0x424]               // 0x007c53a6    ff2524948a00
                         jmp              dword ptr [rdata_bytes + 0x428]               // 0x007c53ac    ff2528948a00
                         jmp              dword ptr [rdata_bytes + 0x42c]               // 0x007c53b2    ff252c948a00
                         jmp              dword ptr [rdata_bytes + 0x430]               // 0x007c53b8    ff2530948a00
                         jmp              dword ptr [rdata_bytes + 0x438]               // 0x007c53be    ff2538948a00
                         jmp              dword ptr [rdata_bytes + 0x43c]               // 0x007c53c4    ff253c948a00
                         jmp              dword ptr [rdata_bytes + 0x440]               // 0x007c53ca    ff2540948a00
                         jmp              dword ptr [rdata_bytes + 0x444]               // 0x007c53d0    ff2544948a00
                         jmp              dword ptr [rdata_bytes + 0x448]               // 0x007c53d6    ff2548948a00
                         jmp              dword ptr [rdata_bytes + 0x44c]               // 0x007c53dc    ff254c948a00
                         jmp              dword ptr [rdata_bytes + 0x450]               // 0x007c53e2    ff2550948a00
                         jmp              dword ptr [rdata_bytes + 0x454]               // 0x007c53e8    ff2554948a00
                         jmp              dword ptr [rdata_bytes + 0x45c]               // 0x007c53ee    ff255c948a00
                         jmp              dword ptr [rdata_bytes + 0x460]               // 0x007c53f4    ff2560948a00
                         jmp              dword ptr [rdata_bytes + 0x464]               // 0x007c53fa    ff2564948a00
                         jmp              dword ptr [rdata_bytes + 0x468]               // 0x007c5400    ff2568948a00
                         jmp              dword ptr [rdata_bytes + 0x46c]               // 0x007c5406    ff256c948a00
                         jmp              dword ptr [rdata_bytes + 0x470]               // 0x007c540c    ff2570948a00
                         jmp              dword ptr [rdata_bytes + 0x474]               // 0x007c5412    ff2574948a00
                         jmp              dword ptr [rdata_bytes + 0x478]               // 0x007c5418    ff2578948a00
                         jmp              dword ptr [rdata_bytes + 0x47c]               // 0x007c541e    ff257c948a00
                         jmp              dword ptr [rdata_bytes + 0x480]               // 0x007c5424    ff2580948a00
                         jmp              dword ptr [rdata_bytes + 0x484]               // 0x007c542a    ff2584948a00
                         jmp              dword ptr [rdata_bytes + 0x488]               // 0x007c5430    ff2588948a00
                         jmp              dword ptr [rdata_bytes + 0x48c]               // 0x007c5436    ff258c948a00
                         jmp              dword ptr [rdata_bytes + 0x490]               // 0x007c543c    ff2590948a00
                         jmp              dword ptr [rdata_bytes + 0x49c]               // 0x007c5442    ff259c948a00
                         jmp              dword ptr [rdata_bytes + 0x4a0]               // 0x007c5448    ff25a0948a00
                         jmp              dword ptr [rdata_bytes + 0x4a4]               // 0x007c544e    ff25a4948a00
                         jmp              dword ptr [rdata_bytes + 0x4a8]               // 0x007c5454    ff25a8948a00
                         jmp              dword ptr [rdata_bytes + 0x4b0]               // 0x007c545a    ff25b0948a00
                         jmp              dword ptr [rdata_bytes + 0x4b4]               // 0x007c5460    ff25b4948a00
                         jmp              dword ptr [rdata_bytes + 0x4b8]               // 0x007c5466    ff25b8948a00
                         jmp              dword ptr [rdata_bytes + 0x4bc]               // 0x007c546c    ff25bc948a00
                         jmp              dword ptr [rdata_bytes + 0x4c0]               // 0x007c5472    ff25c0948a00
                         jmp              dword ptr [rdata_bytes + 0x4c4]               // 0x007c5478    ff25c4948a00
                         jmp              dword ptr [rdata_bytes + 0x4c8]               // 0x007c547e    ff25c8948a00
                         jmp              dword ptr [rdata_bytes + 0x4cc]               // 0x007c5484    ff25cc948a00
                         jmp              dword ptr [rdata_bytes + 0x4d0]               // 0x007c548a    ff25d0948a00
                         jmp              dword ptr [rdata_bytes + 0x6b0]               // 0x007c5490    ff25b0968a00
                         jmp              dword ptr [rdata_bytes + 0x4d8]               // 0x007c5496    ff25d8948a00
                         jmp              dword ptr [rdata_bytes + 0x4dc]               // 0x007c549c    ff25dc948a00
                         jmp              dword ptr [rdata_bytes + 0x4e0]               // 0x007c54a2    ff25e0948a00
                         jmp              dword ptr [rdata_bytes + 0x4e8]               // 0x007c54a8    ff25e8948a00
                         jmp              dword ptr [rdata_bytes + 0x4ec]               // 0x007c54ae    ff25ec948a00
                         jmp              dword ptr [rdata_bytes + 0x4f0]               // 0x007c54b4    ff25f0948a00
                         jmp              dword ptr [rdata_bytes + 0x4f4]               // 0x007c54ba    ff25f4948a00
                         jmp              dword ptr [rdata_bytes + 0x4f8]               // 0x007c54c0    ff25f8948a00
                         jmp              dword ptr [rdata_bytes + 0x4fc]               // 0x007c54c6    ff25fc948a00
                         jmp              dword ptr [rdata_bytes + 0x504]               // 0x007c54cc    ff2504958a00
                         jmp              dword ptr [rdata_bytes + 0x508]               // 0x007c54d2    ff2508958a00
                         jmp              dword ptr [rdata_bytes + 0x50c]               // 0x007c54d8    ff250c958a00
                         jmp              dword ptr [rdata_bytes + 0x510]               // 0x007c54de    ff2510958a00
                         jmp              dword ptr [rdata_bytes + 0x514]               // 0x007c54e4    ff2514958a00
                         jmp              dword ptr [rdata_bytes + 0x518]               // 0x007c54ea    ff2518958a00
                         jmp              dword ptr [rdata_bytes + 0x51c]               // 0x007c54f0    ff251c958a00
                         jmp              dword ptr [rdata_bytes + 0x520]               // 0x007c54f6    ff2520958a00
                         jmp              dword ptr [rdata_bytes + 0x524]               // 0x007c54fc    ff2524958a00
                         jmp              dword ptr [rdata_bytes + 0x528]               // 0x007c5502    ff2528958a00
                         jmp              dword ptr [rdata_bytes + 0x52c]               // 0x007c5508    ff252c958a00
                         jmp              dword ptr [rdata_bytes + 0x530]               // 0x007c550e    ff2530958a00
                         jmp              dword ptr [rdata_bytes + 0x534]               // 0x007c5514    ff2534958a00
                         jmp              dword ptr [rdata_bytes + 0x53c]               // 0x007c551a    ff253c958a00
                         jmp              dword ptr [rdata_bytes + 0x544]               // 0x007c5520    ff2544958a00
                         jmp              dword ptr [rdata_bytes + 0x3e4]               // 0x007c5526    ff25e4938a00
                         jmp              dword ptr [rdata_bytes + 0x54c]               // 0x007c552c    ff254c958a00
                         jmp              dword ptr [rdata_bytes + 0x550]               // 0x007c5532    ff2550958a00
                         jmp              dword ptr [rdata_bytes + 0x554]               // 0x007c5538    ff2554958a00
                         jmp              dword ptr [rdata_bytes + 0x558]               // 0x007c553e    ff2558958a00
                         jmp              dword ptr [rdata_bytes + 0x560]               // 0x007c5544    ff2560958a00
                         jmp              dword ptr [rdata_bytes + 0x564]               // 0x007c554a    ff2564958a00
                         jmp              dword ptr [rdata_bytes + 0x568]               // 0x007c5550    ff2568958a00
                         jmp              dword ptr [rdata_bytes + 0x56c]               // 0x007c5556    ff256c958a00
                         jmp              dword ptr [rdata_bytes + 0x570]               // 0x007c555c    ff2570958a00
                         jmp              dword ptr [rdata_bytes + 0x574]               // 0x007c5562    ff2574958a00
                         jmp              dword ptr [rdata_bytes + 0x578]               // 0x007c5568    ff2578958a00
                         jmp              dword ptr [rdata_bytes + 0x57c]               // 0x007c556e    ff257c958a00
                         jmp              dword ptr [rdata_bytes + 0x580]               // 0x007c5574    ff2580958a00
                         jmp              dword ptr [rdata_bytes + 0x584]               // 0x007c557a    ff2584958a00
                         jmp              dword ptr [rdata_bytes + 0x588]               // 0x007c5580    ff2588958a00
                         jmp              dword ptr [rdata_bytes + 0x58c]               // 0x007c5586    ff258c958a00
                         jmp              dword ptr [rdata_bytes + 0x594]               // 0x007c558c    ff2594958a00
                         jmp              dword ptr [rdata_bytes + 0x598]               // 0x007c5592    ff2598958a00
                         jmp              dword ptr [rdata_bytes + 0x59c]               // 0x007c5598    ff259c958a00
                         jmp              dword ptr [rdata_bytes + 0x5a0]               // 0x007c559e    ff25a0958a00
                         jmp              dword ptr [rdata_bytes + 0x5a4]               // 0x007c55a4    ff25a4958a00
                         jmp              dword ptr [rdata_bytes + 0x5a8]               // 0x007c55aa    ff25a8958a00
                         jmp              dword ptr [rdata_bytes + 0x5ac]               // 0x007c55b0    ff25ac958a00
                         jmp              dword ptr [rdata_bytes + 0x5b0]               // 0x007c55b6    ff25b0958a00
                         jmp              dword ptr [rdata_bytes + 0x5b4]               // 0x007c55bc    ff25b4958a00
                         jmp              dword ptr [rdata_bytes + 0x5b8]               // 0x007c55c2    ff25b8958a00
                         jmp              dword ptr [rdata_bytes + 0x5c0]               // 0x007c55c8    ff25c0958a00
                         jmp              dword ptr [rdata_bytes + 0x5c4]               // 0x007c55ce    ff25c4958a00
                         jmp              dword ptr [rdata_bytes + 0x5c8]               // 0x007c55d4    ff25c8958a00
                         jmp              dword ptr [rdata_bytes + 0x5cc]               // 0x007c55da    ff25cc958a00
                         jmp              dword ptr [rdata_bytes + 0x5d0]               // 0x007c55e0    ff25d0958a00
                         jmp              dword ptr [rdata_bytes + 0x5d4]               // 0x007c55e6    ff25d4958a00
                         jmp              dword ptr [rdata_bytes + 0x5d8]               // 0x007c55ec    ff25d8958a00
                         jmp              dword ptr [rdata_bytes + 0x5dc]               // 0x007c55f2    ff25dc958a00
                         jmp              dword ptr [rdata_bytes + 0x5e0]               // 0x007c55f8    ff25e0958a00
                         jmp              dword ptr [rdata_bytes + 0x5e4]               // 0x007c55fe    ff25e4958a00
                         call             _jmp_addr_0x007c561c                          // 0x007c5604    e813000000
                         call             _jmp_addr_0x007cc9b2                          // 0x007c5609    e8a4730000
                         {disp32} mov     dword ptr [data_bytes + 0x4be194], eax        // 0x007c560e    a39441e800
                         call             _jmp_addr_0x007cc962                          // 0x007c5613    e84a730000
                         fnclex                                                         // 0x007c5618    dbe2
                         ret                                                            // 0x007c561a    c3
                         ret                                                            // 0x007c561b    c3
_jmp_addr_0x007c561c:    mov              eax, 0x007ccd8b                               // 0x007c561c    b88bcd7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267df0], 0x007cca35 // 0x007c5621    c705f0ddc20035ca7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267dec], eax        // 0x007c562b    a3ecddc200
                         {disp32} mov     dword ptr [data_bytes + 0x267df4], 0x007cca9b // 0x007c5630    c705f4ddc2009bca7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267df8], 0x007cc9db // 0x007c563a    c705f8ddc200dbc97c00
                         {disp32} mov     dword ptr [data_bytes + 0x267dfc], 0x007cca83 // 0x007c5644    c705fcddc20083ca7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267e00], eax        // 0x007c564e    a300dec200
                         ret                                                            // 0x007c5653    c3
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007c5654    8b4c2404
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4be190]        // 0x007c5658    a19041e800
                         {disp32} mov     dword ptr [data_bytes + 0x4be190], ecx        // 0x007c565d    890d9041e800
                         ret                                                            // 0x007c5663    c3
_jmp_addr_0x007c5664:    push             esi                                           // 0x007c5664    56
                         mov.s            esi, ecx                                      // 0x007c5665    8bf1
                         push             0x1b                                          // 0x007c5667    6a1b
                         mov              dword ptr [esi], 0x009a05c4                   // 0x007c5669    c706c4059a00
                         call             __lock                                         // 0x007c566f    e842600000
                         {disp8} mov      esi, dword ptr [esi + 0x04]                   // 0x007c5674    8b7604
                         pop              ecx                                           // 0x007c5677    59
                         test             esi, esi                                      // 0x007c5678    85f6
                         {disp8} je       _jmp_addr_0x007c5683                          // 0x007c567a    7407
                         push             esi                                           // 0x007c567c    56
                         call             _free                                         // 0x007c567d    e804110000
                         pop              ecx                                           // 0x007c5682    59
_jmp_addr_0x007c5683:    push             0x1b                                          // 0x007c5683    6a1b
                         call             __unlock                                      // 0x007c5685    e88d600000
                         pop              ecx                                           // 0x007c568a    59
                         pop              esi                                           // 0x007c568b    5e
                         ret                                                            // 0x007c568c    c3
                         push             esi                                           // 0x007c568d    56
                         mov.s            esi, ecx                                      // 0x007c568e    8bf1
                         call             _jmp_addr_0x007c5664                          // 0x007c5690    e8cfffffff
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c5695    f644240801
                         {disp8} je       _jmp_addr_0x007c56a3                          // 0x007c569a    7407
                         push             esi                                           // 0x007c569c    56
                         call             ___dl__FPv                                    // 0x007c569d    e8f697feff
                         pop              ecx                                           // 0x007c56a2    59
_jmp_addr_0x007c56a3:    mov.s            eax, esi                                      // 0x007c56a3    8bc6
                         pop              esi                                           // 0x007c56a5    5e
                         ret              0x0004                                        // 0x007c56a6    c20400
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c56a9    8b442404
                         add              ecx, 0x9                                      // 0x007c56ad    83c109
                         add              eax, 0x09                                     // 0x007c56b0    83c009
                         push             ecx                                           // 0x007c56b3    51
                         push             eax                                           // 0x007c56b4    50
                         call             _jmp_addr_0x007cce10                          // 0x007c56b5    e856770000
                         neg              eax                                           // 0x007c56ba    f7d8
                         pop              ecx                                           // 0x007c56bc    59
                         sbb.s            eax, eax                                      // 0x007c56bd    1bc0
                         pop              ecx                                           // 0x007c56bf    59
                         inc              eax                                           // 0x007c56c0    40
                         ret              0x0004                                        // 0x007c56c1    c20400
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c56c4    8b442404
                         add              ecx, 0x9                                      // 0x007c56c8    83c109
                         add              eax, 0x09                                     // 0x007c56cb    83c009
                         push             ecx                                           // 0x007c56ce    51
                         push             eax                                           // 0x007c56cf    50
                         call             _jmp_addr_0x007cce10                          // 0x007c56d0    e83b770000
                         neg              eax                                           // 0x007c56d5    f7d8
                         pop              ecx                                           // 0x007c56d7    59
                         sbb.s            eax, eax                                      // 0x007c56d8    1bc0
                         pop              ecx                                           // 0x007c56da    59
                         neg              eax                                           // 0x007c56db    f7d8
                         ret              0x0004                                        // 0x007c56dd    c20400
_jmp_addr_0x007c56e0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c56e0    8b442404
                         add              ecx, 0x9                                      // 0x007c56e4    83c109
                         add              eax, 0x09                                     // 0x007c56e7    83c009
                         push             ecx                                           // 0x007c56ea    51
                         push             eax                                           // 0x007c56eb    50
                         call             _jmp_addr_0x007cce10                          // 0x007c56ec    e81f770000
                         pop              ecx                                           // 0x007c56f1    59
                         pop              ecx                                           // 0x007c56f2    59
                         xor.s            ecx, ecx                                      // 0x007c56f3    33c9
                         test             eax, eax                                      // 0x007c56f5    85c0
                         setg             cl                                            // 0x007c56f7    0f9fc1
                         mov.s            eax, ecx                                      // 0x007c56fa    8bc1
                         ret              0x0004                                        // 0x007c56fc    c20400
                         {disp8} lea      eax, dword ptr [ecx + 0x08]                   // 0x007c56ff    8d4108
                         ret                                                            // 0x007c5702    c3
                         mov.s            eax, ecx                                      // 0x007c5703    8bc1
                         mov              dword ptr [eax], 0x009a05c4                   // 0x007c5705    c700c4059a00
                         ret              0x0004                                        // 0x007c570b    c20400
                         mov.s            eax, ecx                                      // 0x007c570e    8bc1
                         ret              0x0004                                        // 0x007c5710    c20400
_jmp_addr_0x007c5713:    push             esi                                           // 0x007c5713    56
                         call             _jmp_addr_0x007c9fc6                          // 0x007c5714    e8ad480000
                         push             dword ptr [data_bytes + 0x5e7cdc]             // 0x007c5719    ff35dcdcfa00
                         call             _jmp_addr_0x007cce94                          // 0x007c571f    e870770000
                         {disp32} mov     edx, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c5724    8b15dcdcfa00
                         pop              ecx                                           // 0x007c572a    59
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5e7cd8]        // 0x007c572b    8b0dd8dcfa00
                         mov.s            esi, ecx                                      // 0x007c5731    8bf1
                         sub.s            esi, edx                                      // 0x007c5733    2bf2
                         add              esi, 0x04                                     // 0x007c5735    83c604
                         cmp.s            eax, esi                                      // 0x007c5738    3bc6
                         {disp8} jae      _jmp_addr_0x007c5779                          // 0x007c573a    733d
                         push             edx                                           // 0x007c573c    52
                         call             _jmp_addr_0x007cce94                          // 0x007c573d    e852770000
                         add              eax, 0x10                                     // 0x007c5742    83c010
                         push             eax                                           // 0x007c5745    50
                         push             dword ptr [data_bytes + 0x5e7cdc]             // 0x007c5746    ff35dcdcfa00
                         call             _jmp_addr_0x007c989f                          // 0x007c574c    e84e410000
                         add              esp, 0x0c                                     // 0x007c5751    83c40c
                         test             eax, eax                                      // 0x007c5754    85c0
                         {disp8} jne      _jmp_addr_0x007c575c                          // 0x007c5756    7504
                         xor.s            esi, esi                                      // 0x007c5758    33f6
                         {disp8} jmp      _jmp_addr_0x007c5788                          // 0x007c575a    eb2c
_jmp_addr_0x007c575c:    {disp32} mov     ecx, dword ptr [data_bytes + 0x5e7cd8]        // 0x007c575c    8b0dd8dcfa00
                         sub              ecx, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c5762    2b0ddcdcfa00
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cdc], eax        // 0x007c5768    a3dcdcfa00
                         sar              ecx, 2                                        // 0x007c576d    c1f902
                         lea              ecx, dword ptr [eax + ecx * 0x4]              // 0x007c5770    8d0c88
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cd8], ecx        // 0x007c5773    890dd8dcfa00
_jmp_addr_0x007c5779:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007c5779    8b442408
                         mov              dword ptr [ecx], eax                          // 0x007c577d    8901
                         add              dword ptr [data_bytes + 0x5e7cd8], 0x04       // 0x007c577f    8305d8dcfa0004
                         mov.s            esi, eax                                      // 0x007c5786    8bf0
_jmp_addr_0x007c5788:    call             _jmp_addr_0x007c9fcf                          // 0x007c5788    e842480000
                         mov.s            eax, esi                                      // 0x007c578d    8bc6
                         pop              esi                                           // 0x007c578f    5e
                         ret                                                            // 0x007c5790    c3
_jmp_addr_0x007c5791:    push             dword ptr [esp + 0x04]                        // 0x007c5791    ff742404
                         call             _jmp_addr_0x007c5713                          // 0x007c5795    e879ffffff
                         neg              eax                                           // 0x007c579a    f7d8
                         sbb.s            eax, eax                                      // 0x007c579c    1bc0
                         pop              ecx                                           // 0x007c579e    59
                         neg              eax                                           // 0x007c579f    f7d8
                         dec              eax                                           // 0x007c57a1    48
                         ret                                                            // 0x007c57a2    c3
                         push             0x00000080                                    // 0x007c57a3    6880000000
                         call             _malloc                                       // 0x007c57a8    e89f0e0000
                         test             eax, eax                                      // 0x007c57ad    85c0
                         pop              ecx                                           // 0x007c57af    59
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cdc], eax        // 0x007c57b0    a3dcdcfa00
                         {disp8} jne      _jmp_addr_0x007c57c4                          // 0x007c57b5    750d
                         push             0x18                                          // 0x007c57b7    6a18
                         call             __amsg_exit                                   // 0x007c57b9    e8e94d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c57be    a1dcdcfa00
                         pop              ecx                                           // 0x007c57c3    59
_jmp_addr_0x007c57c4:    and              dword ptr [eax], 0x00                         // 0x007c57c4    832000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c57c7    a1dcdcfa00
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cd8], eax        // 0x007c57cc    a3d8dcfa00
                         ret                                                            // 0x007c57d1    c3
_jmp_addr_0x007c57d2:    push             ebp                                           // 0x007c57d2    55
                         mov.s            ebp, esp                                      // 0x007c57d3    8bec
                         sub              esp, 0x20                                     // 0x007c57d5    83ec20
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007c57d8    8b4508
                         push             esi                                           // 0x007c57db    56
                         {disp8} mov      dword ptr [ebp + -0x18], eax                  // 0x007c57dc    8945e8
                         {disp8} mov      dword ptr [ebp + -0x20], eax                  // 0x007c57df    8945e0
                         {disp8} lea      eax, dword ptr [ebp + 0x10]                   // 0x007c57e2    8d4510
                         {disp8} mov      dword ptr [ebp + -0x14], 0x00000042           // 0x007c57e5    c745ec42000000
                         push             eax                                           // 0x007c57ec    50
                         {disp8} lea      eax, dword ptr [ebp + -0x20]                  // 0x007c57ed    8d45e0
                         push             dword ptr [ebp + 0x0c]                        // 0x007c57f0    ff750c
                         {disp8} mov      dword ptr [ebp + -0x1c], 0x7fffffff           // 0x007c57f3    c745e4ffffff7f
                         push             eax                                           // 0x007c57fa    50
                         call             _jmp_addr_0x007cd09a                          // 0x007c57fb    e89a780000
                         add              esp, 0x0c                                     // 0x007c5800    83c40c
                         dec              dword ptr [ebp + -0x1c]                       // 0x007c5803    ff4de4
                         mov.s            esi, eax                                      // 0x007c5806    8bf0
                         {disp8} js       _jmp_addr_0x007c5812                          // 0x007c5808    7808
                         {disp8} mov      eax, dword ptr [ebp + -0x20]                  // 0x007c580a    8b45e0
                         and              byte ptr [eax], 0x00                          // 0x007c580d    802000
                         {disp8} jmp      _jmp_addr_0x007c581f                          // 0x007c5810    eb0d
_jmp_addr_0x007c5812:    {disp8} lea      eax, dword ptr [ebp + -0x20]                  // 0x007c5812    8d45e0
                         push             eax                                           // 0x007c5815    50
                         push             0x0                                           // 0x007c5816    6a00
                         call             _jmp_addr_0x007ccf82                          // 0x007c5818    e865770000
                         pop              ecx                                           // 0x007c581d    59
                         pop              ecx                                           // 0x007c581e    59
_jmp_addr_0x007c581f:    mov.s            eax, esi                                      // 0x007c581f    8bc6
                         pop              esi                                           // 0x007c5821    5e
                         leave                                                          // 0x007c5822    c9
                         ret                                                            // 0x007c5823    c3
                         push             ebp                                           // 0x007c5824    55
                         mov.s            ebp, esp                                      // 0x007c5825    8bec
                         push             -0x1                                          // 0x007c5827    6aff
                         push             0x009a05f0                                    // 0x007c5829    68f0059a00
                         push             0x007cd8ac /*__except_handler3*/              // 0x007c582e    68acd87c00
                         {disp32} mov     eax, fs:[0x0]                                 // 0x007c5833    64a100000000
                         push             eax                                           // 0x007c5839    50
                         {disp32} mov     fs:[0x0], esp                                 // 0x007c583a    64892500000000
                         sub              esp, 0x18                                     // 0x007c5841    83ec18
                         push             ebx                                           // 0x007c5844    53
                         push             esi                                           // 0x007c5845    56
                         push             edi                                           // 0x007c5846    57
                         {disp8} mov      dword ptr [ebp + -0x18], esp                  // 0x007c5847    8965e8
                         cmp              dword ptr [ebp + 0x08], 0x00                  // 0x007c584a    837d0800
                         {disp8} jne      _jmp_addr_0x007c5861                          // 0x007c584e    7511
                         xor.s            eax, eax                                      // 0x007c5850    33c0
_jmp_addr_0x007c5852:    {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c5852    8b4df0
                         {disp32} mov     fs:[0x0], ecx                                 // 0x007c5855    64890d00000000
                         pop              edi                                           // 0x007c585c    5f
                         pop              esi                                           // 0x007c585d    5e
                         pop              ebx                                           // 0x007c585e    5b
                         leave                                                          // 0x007c585f    c9
                         ret                                                            // 0x007c5860    c3
_jmp_addr_0x007c5861:    and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5861    8365fc00
                         push             dword ptr [ebp + 0x08]                        // 0x007c5865    ff7508
                         call             _jmp_addr_0x007c5b81                          // 0x007c5868    e814030000
                         pop              ecx                                           // 0x007c586d    59
                         or               dword ptr [ebp - 4], 0xffffffff               // 0x007c586e    834dfcff
                         {disp8} jmp      _jmp_addr_0x007c5852                          // 0x007c5872    ebde
                         {disp8} mov      eax, dword ptr [ebp + -0x14]                  // 0x007c5874    8b45ec
                         mov              eax, dword ptr [eax]                          // 0x007c5877    8b00
                         mov              eax, dword ptr [eax]                          // 0x007c5879    8b00
                         xor.s            ecx, ecx                                      // 0x007c587b    33c9
                         cmp              eax, 0xc0000005                               // 0x007c587d    3d050000c0
                         sete             cl                                            // 0x007c5882    0f94c1
                         mov.s            eax, ecx                                      // 0x007c5885    8bc1
                         ret                                                            // 0x007c5887    c3
                         {disp8} mov      esp, dword ptr [ebp + -0x18]                  // 0x007c5888    8b65e8
                         push             0x009a05c8                                    // 0x007c588b    68c8059a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x24]                  // 0x007c5890    8d4ddc
                         call             _jmp_addr_0x007c58a6                          // 0x007c5893    e80e000000
                         push             0x009be480                                    // 0x007c5898    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x24]                  // 0x007c589d    8d45dc
                         push             eax                                           // 0x007c58a0    50
                         call             _jmp_addr_0x007c8ca8                          // 0x007c58a1    e802340000
_jmp_addr_0x007c58a6:    push             ebp                                           // 0x007c58a6    55
                         mov.s            ebp, esp                                      // 0x007c58a7    8bec
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007c58a9    8b4508
                         push             esi                                           // 0x007c58ac    56
                         {disp8} mov      dword ptr [ebp + 0x08], eax                   // 0x007c58ad    894508
                         {disp8} lea      eax, dword ptr [ebp + 0x08]                   // 0x007c58b0    8d4508
                         mov.s            esi, ecx                                      // 0x007c58b3    8bf1
                         push             eax                                           // 0x007c58b5    50
                         call             _jmp_addr_0x007c8bdf                          // 0x007c58b6    e824330000
                         mov              dword ptr [esi], 0x009a0600                   // 0x007c58bb    c70600069a00
                         mov.s            eax, esi                                      // 0x007c58c1    8bc6
                         pop              esi                                           // 0x007c58c3    5e
                         pop              ebp                                           // 0x007c58c4    5d
                         ret              0x0004                                        // 0x007c58c5    c20400
                         push             esi                                           // 0x007c58c8    56
                         mov.s            esi, ecx                                      // 0x007c58c9    8bf1
                         call             _jmp_addr_0x007c58e4                          // 0x007c58cb    e814000000
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c58d0    f644240801
                         {disp8} je       _jmp_addr_0x007c58de                          // 0x007c58d5    7407
                         push             esi                                           // 0x007c58d7    56
                         call             ___dl__FPv                                    // 0x007c58d8    e8bb95feff
                         pop              ecx                                           // 0x007c58dd    59
_jmp_addr_0x007c58de:    mov.s            eax, esi                                      // 0x007c58de    8bc6
                         pop              esi                                           // 0x007c58e0    5e
                         ret              0x0004                                        // 0x007c58e1    c20400
_jmp_addr_0x007c58e4:    {disp32} jmp     _jmp_addr_0x007c8c85                          // 0x007c58e4    e99c330000
                         push             esi                                           // 0x007c58e9    56
                         mov.s            esi, ecx                                      // 0x007c58ea    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c58ec    ff742408
                         call             _jmp_addr_0x007c8c1c                          // 0x007c58f0    e827330000
                         mov              dword ptr [esi], 0x009a0600                   // 0x007c58f5    c70600069a00
                         mov.s            eax, esi                                      // 0x007c58fb    8bc6
                         pop              esi                                           // 0x007c58fd    5e
                         ret              0x0004                                        // 0x007c58fe    c20400
                         push             esi                                           // 0x007c5901    56
                         mov.s            esi, ecx                                      // 0x007c5902    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c5904    ff742408
                         call             _jmp_addr_0x007c8c1c                          // 0x007c5908    e80f330000
                         mov              dword ptr [esi], 0x009a060c                   // 0x007c590d    c7060c069a00
                         mov.s            eax, esi                                      // 0x007c5913    8bc6
                         pop              esi                                           // 0x007c5915    5e
                         ret              0x0004                                        // 0x007c5916    c20400
                         push             esi                                           // 0x007c5919    56
                         mov.s            esi, ecx                                      // 0x007c591a    8bf1
                         call             _jmp_addr_0x007c5935                          // 0x007c591c    e814000000
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c5921    f644240801
                         {disp8} je       _jmp_addr_0x007c592f                          // 0x007c5926    7407
                         push             esi                                           // 0x007c5928    56
                         call             ___dl__FPv                                    // 0x007c5929    e86a95feff
                         pop              ecx                                           // 0x007c592e    59
_jmp_addr_0x007c592f:    mov.s            eax, esi                                      // 0x007c592f    8bc6
                         pop              esi                                           // 0x007c5931    5e
                         ret              0x0004                                        // 0x007c5932    c20400
_jmp_addr_0x007c5935:    {disp32} jmp     _jmp_addr_0x007c8c85                          // 0x007c5935    e94b330000
_jmp_addr_0x007c593a:    push             ebp                                           // 0x007c593a    55
                         mov.s            ebp, esp                                      // 0x007c593b    8bec
                         push             -0x1                                          // 0x007c593d    6aff
                         push             0x009a0660                                    // 0x007c593f    6860069a00
                         push             0x007cd8ac /*__except_handler3*/              // 0x007c5944    68acd87c00
                         {disp32} mov     eax, fs:[0x0]                                 // 0x007c5949    64a100000000
                         push             eax                                           // 0x007c594f    50
                         {disp32} mov     fs:[0x0], esp                                 // 0x007c5950    64892500000000
                         sub              esp, 0x34                                     // 0x007c5957    83ec34
                         push             ebx                                           // 0x007c595a    53
                         push             esi                                           // 0x007c595b    56
                         push             edi                                           // 0x007c595c    57
                         {disp8} mov      dword ptr [ebp + -0x18], esp                  // 0x007c595d    8965e8
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007c5960    8b4508
                         test             eax, eax                                      // 0x007c5963    85c0
                         {disp8} jne      _jmp_addr_0x007c5982                          // 0x007c5965    751b
                         push             0x009a0638                                    // 0x007c5967    6838069a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x28]                  // 0x007c596c    8d4dd8
                         call             _jmp_addr_0x007c5a00                          // 0x007c596f    e88c000000
                         push             0x009be4a0                                    // 0x007c5974    68a0e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x28]                  // 0x007c5979    8d45d8
                         push             eax                                           // 0x007c597c    50
                         call             _jmp_addr_0x007c8ca8                          // 0x007c597d    e826330000
_jmp_addr_0x007c5982:    and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5982    8365fc00
                         mov              eax, dword ptr [eax]                          // 0x007c5986    8b00
                         {disp8} mov      esi, dword ptr [eax + -0x04]                  // 0x007c5988    8b70fc
                         {disp8} mov      dword ptr [ebp + -0x1c], esi                  // 0x007c598b    8975e4
                         push             0x8                                           // 0x007c598e    6a08
                         push             dword ptr [esi + 0x0c]                        // 0x007c5990    ff760c
                         call             dword ptr [rdata_bytes + 0x208]               // 0x007c5993    ff1508928a00
                         test             eax, eax                                      // 0x007c5999    85c0
                         {disp8} jne      _jmp_addr_0x007c59b3                          // 0x007c599b    7516
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                   // 0x007c599d    8b460c
                         or               dword ptr [ebp - 4], 0xffffffff               // 0x007c59a0    834dfcff
                         {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c59a4    8b4df0
                         {disp32} mov     fs:[0x0], ecx                                 // 0x007c59a7    64890d00000000
                         pop              edi                                           // 0x007c59ae    5f
                         pop              esi                                           // 0x007c59af    5e
                         pop              ebx                                           // 0x007c59b0    5b
                         leave                                                          // 0x007c59b1    c9
                         ret                                                            // 0x007c59b2    c3
_jmp_addr_0x007c59b3:    push             0x009a0614                                    // 0x007c59b3    6814069a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x34]                  // 0x007c59b8    8d4dcc
                         call             _jmp_addr_0x007c58a6                          // 0x007c59bb    e8e6feffff
                         push             0x009be480                                    // 0x007c59c0    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x34]                  // 0x007c59c5    8d45cc
                         push             eax                                           // 0x007c59c8    50
                         call             _jmp_addr_0x007c8ca8                          // 0x007c59c9    e8da320000
                         {disp8} mov      eax, dword ptr [ebp + -0x14]                  // 0x007c59ce    8b45ec
                         mov              eax, dword ptr [eax]                          // 0x007c59d1    8b00
                         mov              eax, dword ptr [eax]                          // 0x007c59d3    8b00
                         xor.s            ecx, ecx                                      // 0x007c59d5    33c9
                         cmp              eax, 0xc0000005                               // 0x007c59d7    3d050000c0
                         sete             cl                                            // 0x007c59dc    0f94c1
                         mov.s            eax, ecx                                      // 0x007c59df    8bc1
                         ret                                                            // 0x007c59e1    c3
                         {disp8} mov      esp, dword ptr [ebp + -0x18]                  // 0x007c59e2    8b65e8
                         push             0x009a05c8                                    // 0x007c59e5    68c8059a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x40]                  // 0x007c59ea    8d4dc0
                         call             _jmp_addr_0x007c58a6                          // 0x007c59ed    e8b4feffff
                         push             0x009be480                                    // 0x007c59f2    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x40]                  // 0x007c59f7    8d45c0
                         push             eax                                           // 0x007c59fa    50
                         call             _jmp_addr_0x007c8ca8                          // 0x007c59fb    e8a8320000
_jmp_addr_0x007c5a00:    {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x007c5a00    8d442404
                         push             esi                                           // 0x007c5a04    56
                         mov.s            esi, ecx                                      // 0x007c5a05    8bf1
                         push             eax                                           // 0x007c5a07    50
                         call             _jmp_addr_0x007c8bdf                          // 0x007c5a08    e8d2310000
                         mov              dword ptr [esi], 0x009a060c                   // 0x007c5a0d    c7060c069a00
                         mov.s            eax, esi                                      // 0x007c5a13    8bc6
                         pop              esi                                           // 0x007c5a15    5e
                         ret              0x0004                                        // 0x007c5a16    c20400
_jmp_addr_0x007c5a19:    push             ebp                                           // 0x007c5a19    55
                         mov.s            ebp, esp                                      // 0x007c5a1a    8bec
                         push             -0x1                                          // 0x007c5a1c    6aff
                         push             0x009a0680                                    // 0x007c5a1e    6880069a00
                         push             0x007cd8ac /*__except_handler3*/              // 0x007c5a23    68acd87c00
                         {disp32} mov     eax, fs:[0x0]                                 // 0x007c5a28    64a100000000
                         push             eax                                           // 0x007c5a2e    50
                         {disp32} mov     fs:[0x0], esp                                 // 0x007c5a2f    64892500000000
                         sub              esp, 0x3c                                     // 0x007c5a36    83ec3c
                         push             ebx                                           // 0x007c5a39    53
                         push             esi                                           // 0x007c5a3a    56
                         push             edi                                           // 0x007c5a3b    57
                         {disp8} mov      dword ptr [ebp + -0x18], esp                  // 0x007c5a3c    8965e8
                         {disp8} mov      esi, dword ptr [ebp + 0x08]                   // 0x007c5a3f    8b7508
                         test             esi, esi                                      // 0x007c5a42    85f6
                         {disp8} jne      _jmp_addr_0x007c5a57                          // 0x007c5a44    7511
                         xor.s            eax, eax                                      // 0x007c5a46    33c0
_jmp_addr_0x007c5a48:    {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c5a48    8b4df0
                         {disp32} mov     fs:[0x0], ecx                                 // 0x007c5a4b    64890d00000000
                         pop              edi                                           // 0x007c5a52    5f
                         pop              esi                                           // 0x007c5a53    5e
                         pop              ebx                                           // 0x007c5a54    5b
                         leave                                                          // 0x007c5a55    c9
                         ret                                                            // 0x007c5a56    c3
_jmp_addr_0x007c5a57:    and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5a57    8365fc00
                         push             esi                                           // 0x007c5a5b    56
                         call             _jmp_addr_0x007c5b81                          // 0x007c5a5c    e820010000
                         pop              ecx                                           // 0x007c5a61    59
                         mov.s            edi, eax                                      // 0x007c5a62    8bf8
                         {disp8} mov      dword ptr [ebp + -0x2c], edi                  // 0x007c5a64    897dd4
                         mov              eax, dword ptr [esi]                          // 0x007c5a67    8b06
                         {disp8} mov      eax, dword ptr [eax + -0x04]                  // 0x007c5a69    8b40fc
                         {disp8} mov      dword ptr [ebp + -0x24], eax                  // 0x007c5a6c    8945dc
                         sub              esi, dword ptr [ebp + 0x0c]                   // 0x007c5a6f    2b750c
                         {disp8} mov      dword ptr [ebp + 0x08], esi                   // 0x007c5a72    897508
                         sub.s            esi, edi                                      // 0x007c5a75    2bf7
                         {disp8} mov      dword ptr [ebp + -0x28], esi                  // 0x007c5a77    8975d8
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                   // 0x007c5a7a    8b4810
                         {disp8} mov      ecx, dword ptr [ecx + 0x04]                   // 0x007c5a7d    8b4904
                         test             cl, 0x01                                      // 0x007c5a80    f6c101
                         {disp8} jne      _jmp_addr_0x007c5a95                          // 0x007c5a83    7510
                         push             dword ptr [ebp + 0x14]                        // 0x007c5a85    ff7514
                         push             esi                                           // 0x007c5a88    56
                         push             dword ptr [ebp + 0x10]                        // 0x007c5a89    ff7510
                         push             eax                                           // 0x007c5a8c    50
                         push             edi                                           // 0x007c5a8d    57
                         call             _jmp_addr_0x007c5b9b                          // 0x007c5a8e    e808010000
                         {disp8} jmp      _jmp_addr_0x007c5aaf                          // 0x007c5a93    eb1a
_jmp_addr_0x007c5a95:    test             cl, 0x02                                      // 0x007c5a95    f6c102
                         push             dword ptr [ebp + 0x14]                        // 0x007c5a98    ff7514
                         push             esi                                           // 0x007c5a9b    56
                         push             dword ptr [ebp + 0x10]                        // 0x007c5a9c    ff7510
                         push             eax                                           // 0x007c5a9f    50
                         push             edi                                           // 0x007c5aa0    57
                         {disp8} jne      _jmp_addr_0x007c5aaa                          // 0x007c5aa1    7507
                         call             _jmp_addr_0x007c5bf5                          // 0x007c5aa3    e84d010000
                         {disp8} jmp      _jmp_addr_0x007c5aaf                          // 0x007c5aa8    eb05
_jmp_addr_0x007c5aaa:    call             _jmp_addr_0x007c5cee                          // 0x007c5aaa    e83f020000
_jmp_addr_0x007c5aaf:    add              esp, 0x14                                     // 0x007c5aaf    83c414
                         {disp8} mov      dword ptr [ebp + -0x1c], eax                  // 0x007c5ab2    8945e4
                         test             eax, eax                                      // 0x007c5ab5    85c0
                         {disp8} je       _jmp_addr_0x007c5ad3                          // 0x007c5ab7    741a
                         add              eax, 0x08                                     // 0x007c5ab9    83c008
                         push             eax                                           // 0x007c5abc    50
                         push             edi                                           // 0x007c5abd    57
                         call             _jmp_addr_0x007c5e26                          // 0x007c5abe    e863030000
                         pop              ecx                                           // 0x007c5ac3    59
                         pop              ecx                                           // 0x007c5ac4    59
                         add.s            eax, edi                                      // 0x007c5ac5    03c7
                         {disp8} mov      dword ptr [ebp + -0x20], eax                  // 0x007c5ac7    8945e0
_jmp_addr_0x007c5aca:    or               dword ptr [ebp - 4], 0xffffffff               // 0x007c5aca    834dfcff
                         {disp32} jmp     _jmp_addr_0x007c5a48                          // 0x007c5ace    e975ffffff
_jmp_addr_0x007c5ad3:    xor.s            eax, eax                                      // 0x007c5ad3    33c0
                         {disp8} mov      dword ptr [ebp + -0x20], eax                  // 0x007c5ad5    8945e0
                         cmp              dword ptr [ebp + 0x18], eax                   // 0x007c5ad8    394518
                         {disp8} je       _jmp_addr_0x007c5aca                          // 0x007c5adb    74ed
                         {disp8} mov      dword ptr [ebp + -0x3c], 0x009a066c           // 0x007c5add    c745c46c069a00
                         {disp8} lea      eax, dword ptr [ebp + -0x3c]                  // 0x007c5ae4    8d45c4
                         push             eax                                           // 0x007c5ae7    50
                         {disp8} lea      ecx, dword ptr [ebp + -0x38]                  // 0x007c5ae8    8d4dc8
                         call             _jmp_addr_0x007c5b30                          // 0x007c5aeb    e840000000
                         push             0x009be4e0                                    // 0x007c5af0    68e0e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x38]                  // 0x007c5af5    8d45c8
                         push             eax                                           // 0x007c5af8    50
                         call             _jmp_addr_0x007c8ca8                          // 0x007c5af9    e8aa310000
                         {disp8} mov      eax, dword ptr [ebp + -0x14]                  // 0x007c5afe    8b45ec
                         mov              eax, dword ptr [eax]                          // 0x007c5b01    8b00
                         mov              eax, dword ptr [eax]                          // 0x007c5b03    8b00
                         xor.s            ecx, ecx                                      // 0x007c5b05    33c9
                         cmp              eax, 0xc0000005                               // 0x007c5b07    3d050000c0
                         sete             cl                                            // 0x007c5b0c    0f94c1
                         mov.s            eax, ecx                                      // 0x007c5b0f    8bc1
                         ret                                                            // 0x007c5b11    c3
                         {disp8} mov      esp, dword ptr [ebp + -0x18]                  // 0x007c5b12    8b65e8
                         push             0x009a05c8                                    // 0x007c5b15    68c8059a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x48]                  // 0x007c5b1a    8d4db8
                         call             _jmp_addr_0x007c58a6                          // 0x007c5b1d    e884fdffff
                         push             0x009be480                                    // 0x007c5b22    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x48]                  // 0x007c5b27    8d45b8
                         push             eax                                           // 0x007c5b2a    50
                         call             _jmp_addr_0x007c8ca8                          // 0x007c5b2b    e878310000
_jmp_addr_0x007c5b30:    push             esi                                           // 0x007c5b30    56
                         mov.s            esi, ecx                                      // 0x007c5b31    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c5b33    ff742408
                         call             _jmp_addr_0x007c8bdf                          // 0x007c5b37    e8a3300000
                         mov              dword ptr [esi], 0x009a0690                   // 0x007c5b3c    c70690069a00
                         mov.s            eax, esi                                      // 0x007c5b42    8bc6
                         pop              esi                                           // 0x007c5b44    5e
                         ret              0x0004                                        // 0x007c5b45    c20400
                         push             esi                                           // 0x007c5b48    56
                         mov.s            esi, ecx                                      // 0x007c5b49    8bf1
                         call             _jmp_addr_0x007c5b64                          // 0x007c5b4b    e814000000
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c5b50    f644240801
                         {disp8} je       _jmp_addr_0x007c5b5e                          // 0x007c5b55    7407
                         push             esi                                           // 0x007c5b57    56
                         call             ___dl__FPv                                    // 0x007c5b58    e83b93feff
                         pop              ecx                                           // 0x007c5b5d    59
_jmp_addr_0x007c5b5e:    mov.s            eax, esi                                      // 0x007c5b5e    8bc6
                         pop              esi                                           // 0x007c5b60    5e
                         ret              0x0004                                        // 0x007c5b61    c20400
_jmp_addr_0x007c5b64:    {disp32} jmp     _jmp_addr_0x007c8c85                          // 0x007c5b64    e91c310000
                         push             esi                                           // 0x007c5b69    56
                         mov.s            esi, ecx                                      // 0x007c5b6a    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c5b6c    ff742408
                         call             _jmp_addr_0x007c8c1c                          // 0x007c5b70    e8a7300000
                         mov              dword ptr [esi], 0x009a0690                   // 0x007c5b75    c70690069a00
                         mov.s            eax, esi                                      // 0x007c5b7b    8bc6
                         pop              esi                                           // 0x007c5b7d    5e
                         ret              0x0004                                        // 0x007c5b7e    c20400
_jmp_addr_0x007c5b81:    {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007c5b81    8b4c2404
                         mov              eax, dword ptr [ecx]                          // 0x007c5b85    8b01
                         {disp8} mov      edx, dword ptr [eax + -0x04]                  // 0x007c5b87    8b50fc
                         mov.s            eax, ecx                                      // 0x007c5b8a    8bc1
                         sub              eax, dword ptr [edx + 0x04]                   // 0x007c5b8c    2b4204
                         {disp8} mov      edx, dword ptr [edx + 0x08]                   // 0x007c5b8f    8b5208
                         test             edx, edx                                      // 0x007c5b92    85d2
                         {disp8} je       _jmp_addr_0x007c5b9a                          // 0x007c5b94    7404
                         sub.s            ecx, edx                                      // 0x007c5b96    2bca
                         add              eax, dword ptr [ecx]                          // 0x007c5b98    0301
_jmp_addr_0x007c5b9a:    ret                                                            // 0x007c5b9a    c3
_jmp_addr_0x007c5b9b:    push             ebp                                           // 0x007c5b9b    55
                         mov.s            ebp, esp                                      // 0x007c5b9c    8bec
                         push             ecx                                           // 0x007c5b9e    51
                         and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5b9f    8365fc00
                         push             ebx                                           // 0x007c5ba3    53
                         {disp8} mov      ebx, dword ptr [ebp + 0x0c]                   // 0x007c5ba4    8b5d0c
                         push             esi                                           // 0x007c5ba7    56
                         push             edi                                           // 0x007c5ba8    57
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5ba9    8b4310
                         cmp              dword ptr [eax + 0x08], 0x00                  // 0x007c5bac    83780800
                         {disp8} mov      esi, dword ptr [eax + 0x0c]                   // 0x007c5bb0    8b700c
                         {disp8} jbe      _jmp_addr_0x007c5bea                          // 0x007c5bb3    7635
_jmp_addr_0x007c5bb5:    mov              edi, dword ptr [esi]                          // 0x007c5bb5    8b3e
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5bb7    8b4d18
                         mov              eax, dword ptr [edi]                          // 0x007c5bba    8b07
                         cmp.s            eax, ecx                                      // 0x007c5bbc    3bc1
                         {disp8} je       _jmp_addr_0x007c5bd3                          // 0x007c5bbe    7413
                         add              ecx, 0x8                                      // 0x007c5bc0    83c108
                         add              eax, 0x08                                     // 0x007c5bc3    83c008
                         push             ecx                                           // 0x007c5bc6    51
                         push             eax                                           // 0x007c5bc7    50
                         call             _jmp_addr_0x007cce10                          // 0x007c5bc8    e843720000
                         pop              ecx                                           // 0x007c5bcd    59
                         test             eax, eax                                      // 0x007c5bce    85c0
                         pop              ecx                                           // 0x007c5bd0    59
                         {disp8} jne      _jmp_addr_0x007c5bd9                          // 0x007c5bd1    7506
_jmp_addr_0x007c5bd3:    test             byte ptr [edi + 0x14], 0x01                   // 0x007c5bd3    f6471401
                         {disp8} je       _jmp_addr_0x007c5bf1                          // 0x007c5bd7    7418
_jmp_addr_0x007c5bd9:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5bd9    ff45fc
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5bdc    8b4310
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5bdf    8b4dfc
                         add              esi, 0x04                                     // 0x007c5be2    83c604
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5be5    3b4808
                         .byte            0x72, 0xcb// {disp8} jb _jmp_addr_0x007c5bb5  // 0x007c5be8    72cb
_jmp_addr_0x007c5bea:    xor.s            eax, eax                                      // 0x007c5bea    33c0
_jmp_addr_0x007c5bec:    pop              edi                                           // 0x007c5bec    5f
                         pop              esi                                           // 0x007c5bed    5e
                         pop              ebx                                           // 0x007c5bee    5b
                         leave                                                          // 0x007c5bef    c9
                         ret                                                            // 0x007c5bf0    c3
_jmp_addr_0x007c5bf1:    mov.s            eax, edi                                      // 0x007c5bf1    8bc7
                         {disp8} jmp      _jmp_addr_0x007c5bec                          // 0x007c5bf3    ebf7
_jmp_addr_0x007c5bf5:    push             ebp                                           // 0x007c5bf5    55
                         mov.s            ebp, esp                                      // 0x007c5bf6    8bec
                         sub              esp, 0x0c                                     // 0x007c5bf8    83ec0c
                         and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5bfb    8365fc00
                         push             ebx                                           // 0x007c5bff    53
                         {disp8} mov      ebx, dword ptr [ebp + 0x0c]                   // 0x007c5c00    8b5d0c
                         push             esi                                           // 0x007c5c03    56
                         push             edi                                           // 0x007c5c04    57
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5c05    8b4310
                         cmp              dword ptr [eax + 0x08], 0x00                  // 0x007c5c08    83780800
                         {disp8} mov      edi, dword ptr [eax + 0x0c]                   // 0x007c5c0c    8b780c
                         {disp32} jbe     _jmp_addr_0x007c5c9e                          // 0x007c5c0f    0f8689000000
_jmp_addr_0x007c5c15:    mov              esi, dword ptr [edi]                          // 0x007c5c15    8b37
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5c17    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5c1a    8b06
                         cmp.s            eax, ecx                                      // 0x007c5c1c    3bc1
                         {disp8} je       _jmp_addr_0x007c5c33                          // 0x007c5c1e    7413
                         add              ecx, 0x8                                      // 0x007c5c20    83c108
                         add              eax, 0x08                                     // 0x007c5c23    83c008
                         push             ecx                                           // 0x007c5c26    51
                         push             eax                                           // 0x007c5c27    50
                         call             _jmp_addr_0x007cce10                          // 0x007c5c28    e8e3710000
                         pop              ecx                                           // 0x007c5c2d    59
                         test             eax, eax                                      // 0x007c5c2e    85c0
                         pop              ecx                                           // 0x007c5c30    59
                         {disp8} jne      _jmp_addr_0x007c5c89                          // 0x007c5c31    7556
_jmp_addr_0x007c5c33:    and              dword ptr [ebp + -0x0c], 0x00                 // 0x007c5c33    8365f400
                         cmp              dword ptr [esi + 0x04], 0x00                  // 0x007c5c37    837e0400
                         {disp8} lea      eax, dword ptr [edi + 0x04]                   // 0x007c5c3b    8d4704
                         {disp8} mov      dword ptr [ebp + -0x08], eax                  // 0x007c5c3e    8945f8
                         {disp8} jbe      _jmp_addr_0x007c5c89                          // 0x007c5c41    7646
_jmp_addr_0x007c5c43:    {disp8} mov      eax, dword ptr [ebp + -0x08]                  // 0x007c5c43    8b45f8
                         {disp8} mov      ecx, dword ptr [ebp + 0x10]                   // 0x007c5c46    8b4d10
                         mov              ebx, dword ptr [eax]                          // 0x007c5c49    8b18
                         mov              eax, dword ptr [ebx]                          // 0x007c5c4b    8b03
                         cmp.s            eax, ecx                                      // 0x007c5c4d    3bc1
                         {disp8} je       _jmp_addr_0x007c5c64                          // 0x007c5c4f    7413
                         add              ecx, 0x8                                      // 0x007c5c51    83c108
                         add              eax, 0x08                                     // 0x007c5c54    83c008
                         push             ecx                                           // 0x007c5c57    51
                         push             eax                                           // 0x007c5c58    50
                         call             _jmp_addr_0x007cce10                          // 0x007c5c59    e8b2710000
                         pop              ecx                                           // 0x007c5c5e    59
                         test             eax, eax                                      // 0x007c5c5f    85c0
                         pop              ecx                                           // 0x007c5c61    59
                         {disp8} jne      _jmp_addr_0x007c5c77                          // 0x007c5c62    7513
_jmp_addr_0x007c5c64:    add              ebx, 0x08                                     // 0x007c5c64    83c308
                         push             ebx                                           // 0x007c5c67    53
                         push             dword ptr [ebp + 0x08]                        // 0x007c5c68    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5c6b    e8b6010000
                         cmp              eax, dword ptr [ebp + 0x14]                   // 0x007c5c70    3b4514
                         pop              ecx                                           // 0x007c5c73    59
                         pop              ecx                                           // 0x007c5c74    59
                         {disp8} je       _jmp_addr_0x007c5cea                          // 0x007c5c75    7473
_jmp_addr_0x007c5c77:    {disp8} inc      dword ptr [ebp + -0x0c]                       // 0x007c5c77    ff45f4
                         add              dword ptr [ebp + -0x08], 0x04                 // 0x007c5c7a    8345f804
                         {disp8} mov      eax, dword ptr [ebp + -0x0c]                  // 0x007c5c7e    8b45f4
                         cmp              eax, dword ptr [esi + 0x04]                   // 0x007c5c81    3b4604
                         .byte            0x72, 0xbd// {disp8} jb _jmp_addr_0x007c5c43  // 0x007c5c84    72bd
                         {disp8} mov      ebx, dword ptr [ebp + 0x0c]                   // 0x007c5c86    8b5d0c
_jmp_addr_0x007c5c89:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5c89    ff45fc
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5c8c    8b4310
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5c8f    8b4dfc
                         add              edi, 0x04                                     // 0x007c5c92    83c704
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5c95    3b4808
                         {disp32} jb      _jmp_addr_0x007c5c15                          // 0x007c5c98    0f8277ffffff
_jmp_addr_0x007c5c9e:    {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5c9e    8b4310
                         and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5ca1    8365fc00
                         cmp              dword ptr [eax + 0x08], 0x00                  // 0x007c5ca5    83780800
                         {disp8} mov      edi, dword ptr [eax + 0x0c]                   // 0x007c5ca9    8b780c
                         {disp8} jbe      _jmp_addr_0x007c5ce3                          // 0x007c5cac    7635
_jmp_addr_0x007c5cae:    mov              esi, dword ptr [edi]                          // 0x007c5cae    8b37
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5cb0    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5cb3    8b06
                         cmp.s            eax, ecx                                      // 0x007c5cb5    3bc1
                         {disp8} je       _jmp_addr_0x007c5ccc                          // 0x007c5cb7    7413
                         add              ecx, 0x8                                      // 0x007c5cb9    83c108
                         add              eax, 0x08                                     // 0x007c5cbc    83c008
                         push             ecx                                           // 0x007c5cbf    51
                         push             eax                                           // 0x007c5cc0    50
                         call             _jmp_addr_0x007cce10                          // 0x007c5cc1    e84a710000
                         pop              ecx                                           // 0x007c5cc6    59
                         test             eax, eax                                      // 0x007c5cc7    85c0
                         pop              ecx                                           // 0x007c5cc9    59
                         {disp8} jne      _jmp_addr_0x007c5cd2                          // 0x007c5cca    7506
_jmp_addr_0x007c5ccc:    test             byte ptr [esi + 0x14], 0x03                   // 0x007c5ccc    f6461403
                         {disp8} je       _jmp_addr_0x007c5cea                          // 0x007c5cd0    7418
_jmp_addr_0x007c5cd2:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5cd2    ff45fc
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5cd5    8b4310
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5cd8    8b4dfc
                         add              edi, 0x04                                     // 0x007c5cdb    83c704
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5cde    3b4808
                         .byte            0x72, 0xcb// {disp8} jb _jmp_addr_0x007c5cae  // 0x007c5ce1    72cb
_jmp_addr_0x007c5ce3:    xor.s            eax, eax                                      // 0x007c5ce3    33c0
_jmp_addr_0x007c5ce5:    pop              edi                                           // 0x007c5ce5    5f
                         pop              esi                                           // 0x007c5ce6    5e
                         pop              ebx                                           // 0x007c5ce7    5b
                         leave                                                          // 0x007c5ce8    c9
                         ret                                                            // 0x007c5ce9    c3
_jmp_addr_0x007c5cea:    mov.s            eax, esi                                      // 0x007c5cea    8bc6
                         {disp8} jmp      _jmp_addr_0x007c5ce5                          // 0x007c5cec    ebf7
_jmp_addr_0x007c5cee:    push             ebp                                           // 0x007c5cee    55
                         mov.s            ebp, esp                                      // 0x007c5cef    8bec
                         sub              esp, 0x10                                     // 0x007c5cf1    83ec10
                         push             ebx                                           // 0x007c5cf4    53
                         push             esi                                           // 0x007c5cf5    56
                         push             edi                                           // 0x007c5cf6    57
                         {disp8} mov      edi, dword ptr [ebp + 0x0c]                   // 0x007c5cf7    8b7d0c
                         xor.s            ecx, ecx                                      // 0x007c5cfa    33c9
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5cfc    8b4710
                         {disp8} mov      dword ptr [ebp + -0x10], ecx                  // 0x007c5cff    894df0
                         {disp8} mov      dword ptr [ebp + -0x04], ecx                  // 0x007c5d02    894dfc
                         cmp              dword ptr [eax + 0x08], ecx                   // 0x007c5d05    394808
                         {disp8} mov      ebx, dword ptr [eax + 0x0c]                   // 0x007c5d08    8b580c
                         {disp32} jbe     _jmp_addr_0x007c5dd8                          // 0x007c5d0b    0f86c7000000
_jmp_addr_0x007c5d11:    mov              esi, dword ptr [ebx]                          // 0x007c5d11    8b33
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5d13    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5d16    8b06
                         cmp.s            eax, ecx                                      // 0x007c5d18    3bc1
                         {disp8} je       _jmp_addr_0x007c5d33                          // 0x007c5d1a    7417
                         add              ecx, 0x8                                      // 0x007c5d1c    83c108
                         add              eax, 0x08                                     // 0x007c5d1f    83c008
                         push             ecx                                           // 0x007c5d22    51
                         push             eax                                           // 0x007c5d23    50
                         call             _jmp_addr_0x007cce10                          // 0x007c5d24    e8e7700000
                         pop              ecx                                           // 0x007c5d29    59
                         test             eax, eax                                      // 0x007c5d2a    85c0
                         pop              ecx                                           // 0x007c5d2c    59
                         {disp32} jne     _jmp_addr_0x007c5dba                          // 0x007c5d2d    0f8587000000
_jmp_addr_0x007c5d33:    and              dword ptr [ebp + -0x0c], 0x00                 // 0x007c5d33    8365f400
                         cmp              dword ptr [esi + 0x04], 0x00                  // 0x007c5d37    837e0400
                         {disp8} lea      eax, dword ptr [ebx + 0x04]                   // 0x007c5d3b    8d4304
                         {disp8} mov      dword ptr [ebp + -0x08], eax                  // 0x007c5d3e    8945f8
                         {disp8} jbe      _jmp_addr_0x007c5dba                          // 0x007c5d41    7677
_jmp_addr_0x007c5d43:    {disp8} mov      eax, dword ptr [ebp + -0x08]                  // 0x007c5d43    8b45f8
                         {disp8} mov      ecx, dword ptr [ebp + 0x10]                   // 0x007c5d46    8b4d10
                         mov              edi, dword ptr [eax]                          // 0x007c5d49    8b38
                         mov              eax, dword ptr [edi]                          // 0x007c5d4b    8b07
                         cmp.s            eax, ecx                                      // 0x007c5d4d    3bc1
                         {disp8} je       _jmp_addr_0x007c5d64                          // 0x007c5d4f    7413
                         add              ecx, 0x8                                      // 0x007c5d51    83c108
                         add              eax, 0x08                                     // 0x007c5d54    83c008
                         push             ecx                                           // 0x007c5d57    51
                         push             eax                                           // 0x007c5d58    50
                         call             _jmp_addr_0x007cce10                          // 0x007c5d59    e8b2700000
                         pop              ecx                                           // 0x007c5d5e    59
                         test             eax, eax                                      // 0x007c5d5f    85c0
                         pop              ecx                                           // 0x007c5d61    59
                         {disp8} jne      _jmp_addr_0x007c5da8                          // 0x007c5d62    7544
_jmp_addr_0x007c5d64:    add              edi, 0x08                                     // 0x007c5d64    83c708
                         push             edi                                           // 0x007c5d67    57
                         push             dword ptr [ebp + 0x08]                        // 0x007c5d68    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5d6b    e8b6000000
                         cmp              eax, dword ptr [ebp + 0x14]                   // 0x007c5d70    3b4514
                         pop              ecx                                           // 0x007c5d73    59
                         pop              ecx                                           // 0x007c5d74    59
                         {disp8} jne      _jmp_addr_0x007c5da8                          // 0x007c5d75    7531
                         {disp8} mov      edi, dword ptr [ebp + -0x10]                  // 0x007c5d77    8b7df0
                         test             edi, edi                                      // 0x007c5d7a    85ff
                         {disp8} je       _jmp_addr_0x007c5da5                          // 0x007c5d7c    7427
                         {disp8} lea      eax, dword ptr [esi + 0x08]                   // 0x007c5d7e    8d4608
                         push             eax                                           // 0x007c5d81    50
                         push             dword ptr [ebp + 0x08]                        // 0x007c5d82    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5d85    e89c000000
                         add              edi, 0x08                                     // 0x007c5d8a    83c708
                         mov.s            edx, eax                                      // 0x007c5d8d    8bd0
                         push             edi                                           // 0x007c5d8f    57
                         {disp8} mov      dword ptr [ebp + -0x10], edx                  // 0x007c5d90    8955f0
                         push             dword ptr [ebp + 0x08]                        // 0x007c5d93    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5d96    e88b000000
                         {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c5d9b    8b4df0
                         add              esp, 0x10                                     // 0x007c5d9e    83c410
                         cmp.s            eax, ecx                                      // 0x007c5da1    3bc1
                         {disp8} jne      _jmp_addr_0x007c5e1b                          // 0x007c5da3    7576
_jmp_addr_0x007c5da5:    {disp8} mov      dword ptr [ebp + -0x10], esi                  // 0x007c5da5    8975f0
_jmp_addr_0x007c5da8:    {disp8} inc      dword ptr [ebp + -0x0c]                       // 0x007c5da8    ff45f4
                         add              dword ptr [ebp + -0x08], 0x04                 // 0x007c5dab    8345f804
                         {disp8} mov      eax, dword ptr [ebp + -0x0c]                  // 0x007c5daf    8b45f4
                         cmp              eax, dword ptr [esi + 0x04]                   // 0x007c5db2    3b4604
                         .byte            0x72, 0x8c// {disp8} jb _jmp_addr_0x007c5d43  // 0x007c5db5    728c
                         {disp8} mov      edi, dword ptr [ebp + 0x0c]                   // 0x007c5db7    8b7d0c
_jmp_addr_0x007c5dba:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5dba    ff45fc
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5dbd    8b4710
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5dc0    8b4dfc
                         add              ebx, 0x04                                     // 0x007c5dc3    83c304
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5dc6    3b4808
                         {disp32} jb      _jmp_addr_0x007c5d11                          // 0x007c5dc9    0f8242ffffff
                         {disp8} mov      eax, dword ptr [ebp + -0x10]                  // 0x007c5dcf    8b45f0
                         xor.s            ecx, ecx                                      // 0x007c5dd2    33c9
                         cmp.s            eax, ecx                                      // 0x007c5dd4    3bc1
                         {disp8} jne      _jmp_addr_0x007c5e1d                          // 0x007c5dd6    7545
_jmp_addr_0x007c5dd8:    {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5dd8    8b4710
                         {disp8} mov      dword ptr [ebp + -0x04], ecx                  // 0x007c5ddb    894dfc
                         cmp              dword ptr [eax + 0x08], ecx                   // 0x007c5dde    394808
                         {disp8} mov      ebx, dword ptr [eax + 0x0c]                   // 0x007c5de1    8b580c
                         {disp8} jbe      _jmp_addr_0x007c5e1b                          // 0x007c5de4    7635
_jmp_addr_0x007c5de6:    mov              esi, dword ptr [ebx]                          // 0x007c5de6    8b33
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5de8    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5deb    8b06
                         cmp.s            eax, ecx                                      // 0x007c5ded    3bc1
                         {disp8} je       _jmp_addr_0x007c5e04                          // 0x007c5def    7413
                         add              ecx, 0x8                                      // 0x007c5df1    83c108
                         add              eax, 0x08                                     // 0x007c5df4    83c008
                         push             ecx                                           // 0x007c5df7    51
                         push             eax                                           // 0x007c5df8    50
                         call             _jmp_addr_0x007cce10                          // 0x007c5df9    e812700000
                         pop              ecx                                           // 0x007c5dfe    59
                         test             eax, eax                                      // 0x007c5dff    85c0
                         pop              ecx                                           // 0x007c5e01    59
                         {disp8} jne      _jmp_addr_0x007c5e0a                          // 0x007c5e02    7506
_jmp_addr_0x007c5e04:    test             byte ptr [esi + 0x14], 0x03                   // 0x007c5e04    f6461403
                         {disp8} je       _jmp_addr_0x007c5e22                          // 0x007c5e08    7418
_jmp_addr_0x007c5e0a:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5e0a    ff45fc
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5e0d    8b4710
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5e10    8b4dfc
                         add              ebx, 0x04                                     // 0x007c5e13    83c304
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5e16    3b4808
                         .byte            0x72, 0xcb// {disp8} jb _jmp_addr_0x007c5de6  // 0x007c5e19    72cb
_jmp_addr_0x007c5e1b:    xor.s            eax, eax                                      // 0x007c5e1b    33c0
_jmp_addr_0x007c5e1d:    pop              edi                                           // 0x007c5e1d    5f
                         pop              esi                                           // 0x007c5e1e    5e
                         pop              ebx                                           // 0x007c5e1f    5b
                         leave                                                          // 0x007c5e20    c9
                         ret                                                            // 0x007c5e21    c3
_jmp_addr_0x007c5e22:    mov.s            eax, esi                                      // 0x007c5e22    8bc6
                         {disp8} jmp      _jmp_addr_0x007c5e1d                          // 0x007c5e24    ebf7
_jmp_addr_0x007c5e26:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007c5e26    8b442408
                         xor.s            ecx, ecx                                      // 0x007c5e2a    33c9
                         {disp8} mov      edx, dword ptr [eax + 0x04]                   // 0x007c5e2c    8b5004
                         test             edx, edx                                      // 0x007c5e2f    85d2
                         {disp8} jl       _jmp_addr_0x007c5e44                          // 0x007c5e31    7c11
                         mov.s            ecx, edx                                      // 0x007c5e33    8bca
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x007c5e35    8b542404
                         push             esi                                           // 0x007c5e39    56
                         {disp8} mov      esi, dword ptr [eax + 0x08]                   // 0x007c5e3a    8b7008
                         mov              edx, dword ptr [ecx + edx * 0x1]              // 0x007c5e3d    8b1411
                         add              ecx, dword ptr [edx + esi * 0x1]              // 0x007c5e40    030c32
                         pop              esi                                           // 0x007c5e43    5e
_jmp_addr_0x007c5e44:    mov              eax, dword ptr [eax]                          // 0x007c5e44    8b00
                         add.s            eax, ecx                                      // 0x007c5e46    03c1
                         ret                                                            // 0x007c5e48    c3
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c5e49    8b442404
                         add              eax, -0x20                                    // 0x007c5e4d    83c0e0
                         ret                                                            // 0x007c5e50    c3
_jmp_addr_0x007c5e51:    push             ebx                                           // 0x007c5e51    53
                         xor.s            ebx, ebx                                      // 0x007c5e52    33db
                         cmp              dword ptr [data_bytes + 0x4be2a0], ebx        // 0x007c5e54    391da042e800
                         {disp8} jne      _jmp_addr_0x007c5e6f                          // 0x007c5e5a    7513
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007c5e5c    8b442408
                         cmp              eax, 0x61                                     // 0x007c5e60    83f861
                         {disp8} jl       _jmp_addr_0x007c5ebe                          // 0x007c5e63    7c59
                         cmp              eax, 0x7a                                     // 0x007c5e65    83f87a
                         {disp8} jg       _jmp_addr_0x007c5ebe                          // 0x007c5e68    7f54
                         sub              eax, 0x20                                     // 0x007c5e6a    83e820
                         pop              ebx                                           // 0x007c5e6d    5b
                         ret                                                            // 0x007c5e6e    c3
_jmp_addr_0x007c5e6f:    push             esi                                           // 0x007c5e6f    56
                         mov              esi, 0x00fadcc8                               // 0x007c5e70    bec8dcfa00
                         push             edi                                           // 0x007c5e75    57
                         push             esi                                           // 0x007c5e76    56
                         call             dword ptr [rdata_bytes + 0x310]               // 0x007c5e77    ff1510938a00
                         cmp              dword ptr [data_bytes + 0x5e7cc4], ebx        // 0x007c5e7d    391dc4dcfa00
                         {disp32} mov     edi, dword ptr [rdata_bytes + 0x314]          // 0x007c5e83    8b3d14938a00
                         {disp8} je       _jmp_addr_0x007c5e99                          // 0x007c5e89    740e
                         push             esi                                           // 0x007c5e8b    56
                         call             edi                                           // 0x007c5e8c    ffd7
                         push             0x13                                          // 0x007c5e8e    6a13
                         call             __lock                                         // 0x007c5e90    e821580000
                         pop              ecx                                           // 0x007c5e95    59
                         push             0x1                                           // 0x007c5e96    6a01
                         pop              ebx                                           // 0x007c5e98    5b
_jmp_addr_0x007c5e99:    push             dword ptr [esp + 0x10]                        // 0x007c5e99    ff742410
                         call             _jmp_addr_0x007c5ec0                          // 0x007c5e9d    e81e000000
                         test             ebx, ebx                                      // 0x007c5ea2    85db
                         pop              ecx                                           // 0x007c5ea4    59
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c5ea5    89442410
                         {disp8} je       _jmp_addr_0x007c5eb5                          // 0x007c5ea9    740a
                         push             0x13                                          // 0x007c5eab    6a13
                         call             __unlock                                      // 0x007c5ead    e865580000
                         pop              ecx                                           // 0x007c5eb2    59
                         {disp8} jmp      _jmp_addr_0x007c5eb8                          // 0x007c5eb3    eb03
_jmp_addr_0x007c5eb5:    push             esi                                           // 0x007c5eb5    56
                         call             edi                                           // 0x007c5eb6    ffd7
_jmp_addr_0x007c5eb8:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c5eb8    8b442410
                         pop              edi                                           // 0x007c5ebc    5f
                         pop              esi                                           // 0x007c5ebd    5e
_jmp_addr_0x007c5ebe:    pop              ebx                                           // 0x007c5ebe    5b
                         ret                                                            // 0x007c5ebf    c3
_jmp_addr_0x007c5ec0:    push             ebp                                           // 0x007c5ec0    55
                         mov.s            ebp, esp                                      // 0x007c5ec1    8bec
                         push             ecx                                           // 0x007c5ec3    51
                         cmp              dword ptr [data_bytes + 0x4be2a0], 0x00       // 0x007c5ec4    833da042e80000
                         push             ebx                                           // 0x007c5ecb    53
                         {disp8} jne      _jmp_addr_0x007c5eeb                          // 0x007c5ecc    751d
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007c5ece    8b4508
                         cmp              eax, 0x61                                     // 0x007c5ed1    83f861
                         {disp32} jl      _jmp_addr_0x007c5f89                          // 0x007c5ed4    0f8caf000000
                         cmp              eax, 0x7a                                     // 0x007c5eda    83f87a
                         {disp32} jg      _jmp_addr_0x007c5f89                          // 0x007c5edd    0f8fa6000000
                         sub              eax, 0x20                                     // 0x007c5ee3    83e820
                         {disp32} jmp     _jmp_addr_0x007c5f89                          // 0x007c5ee6    e99e000000
_jmp_addr_0x007c5eeb:    {disp8} mov      ebx, dword ptr [ebp + 0x08]                   // 0x007c5eeb    8b5d08
                         cmp              ebx, 0x00000100                               // 0x007c5eee    81fb00010000
                         {disp8} jge      _jmp_addr_0x007c5f1e                          // 0x007c5ef4    7d28
                         cmp              dword ptr [data_bytes + 0x267d2c], 0x01       // 0x007c5ef6    833d2cddc20001
                         {disp8} jle      _jmp_addr_0x007c5f0b                          // 0x007c5efd    7e0c
                         push             0x2                                           // 0x007c5eff    6a02
                         push             ebx                                           // 0x007c5f01    53
                         call             _jmp_addr_0x007cb993                          // 0x007c5f02    e88c5a0000
                         pop              ecx                                           // 0x007c5f07    59
                         pop              ecx                                           // 0x007c5f08    59
                         {disp8} jmp      _jmp_addr_0x007c5f16                          // 0x007c5f09    eb0b
_jmp_addr_0x007c5f0b:    {disp32} mov     eax, dword ptr [data_bytes + 0x267b20]        // 0x007c5f0b    a120dbc200
                         mov              al, byte ptr [eax + ebx * 0x2]                // 0x007c5f10    8a0458
                         and              eax, 0x02                                     // 0x007c5f13    83e002
_jmp_addr_0x007c5f16:    test             eax, eax                                      // 0x007c5f16    85c0
                         {disp8} jne      _jmp_addr_0x007c5f1e                          // 0x007c5f18    7504
_jmp_addr_0x007c5f1a:    mov.s            eax, ebx                                      // 0x007c5f1a    8bc3
                         {disp8} jmp      _jmp_addr_0x007c5f89                          // 0x007c5f1c    eb6b
_jmp_addr_0x007c5f1e:    {disp32} mov     edx, dword ptr [data_bytes + 0x267b20]        // 0x007c5f1e    8b1520dbc200
                         mov.s            eax, ebx                                      // 0x007c5f24    8bc3
                         sar              eax, 8                                        // 0x007c5f26    c1f808
                         movzx            ecx, al                                       // 0x007c5f29    0fb6c8
                         test             byte ptr [edx + ecx * 0x2 + 0x01], -0x80      // 0x007c5f2c    f6444a0180
                         {disp8} je       _jmp_addr_0x007c5f41                          // 0x007c5f31    740e
                         and              byte ptr [ebp + 0x0a], 0x00                   // 0x007c5f33    80650a00
                         {disp8} mov      byte ptr [ebp + 0x08], al                     // 0x007c5f37    884508
                         {disp8} mov      byte ptr [ebp + 0x09], bl                     // 0x007c5f3a    885d09
                         push             0x2                                           // 0x007c5f3d    6a02
                         {disp8} jmp      _jmp_addr_0x007c5f4a                          // 0x007c5f3f    eb09
_jmp_addr_0x007c5f41:    and              byte ptr [ebp + 0x09], 0x00                   // 0x007c5f41    80650900
                         {disp8} mov      byte ptr [ebp + 0x08], bl                     // 0x007c5f45    885d08
                         push             0x1                                           // 0x007c5f48    6a01
_jmp_addr_0x007c5f4a:    pop              eax                                           // 0x007c5f4a    58
                         {disp8} lea      ecx, dword ptr [ebp + -0x04]                  // 0x007c5f4b    8d4dfc
                         push             0x1                                           // 0x007c5f4e    6a01
                         push             0x0                                           // 0x007c5f50    6a00
                         push             0x3                                           // 0x007c5f52    6a03
                         push             ecx                                           // 0x007c5f54    51
                         push             eax                                           // 0x007c5f55    50
                         {disp8} lea      eax, dword ptr [ebp + 0x08]                   // 0x007c5f56    8d4508
                         push             eax                                           // 0x007c5f59    50
                         push             0x00000200                                    // 0x007c5f5a    6800020000
                         push             dword ptr [data_bytes + 0x4be2a0]             // 0x007c5f5f    ff35a042e800
                         call             ___crtLCMapStringA                            // 0x007c5f65    e8da570000
                         add              esp, 0x20                                     // 0x007c5f6a    83c420
                         test             eax, eax                                      // 0x007c5f6d    85c0
                         {disp8} je       _jmp_addr_0x007c5f1a                          // 0x007c5f6f    74a9
                         cmp              eax, 0x01                                     // 0x007c5f71    83f801
                         {disp8} jne      _jmp_addr_0x007c5f7c                          // 0x007c5f74    7506
                         movzx            eax, byte ptr [ebp + -0x04]                   // 0x007c5f76    0fb645fc
                         {disp8} jmp      _jmp_addr_0x007c5f89                          // 0x007c5f7a    eb0d
_jmp_addr_0x007c5f7c:    movzx            eax, byte ptr [ebp + -0x03]                   // 0x007c5f7c    0fb645fd
                         movzx            ecx, byte ptr [ebp + -0x04]                   // 0x007c5f80    0fb64dfc
                         shl              eax, 8                                        // 0x007c5f84    c1e008
                         or.s             eax, ecx                                      // 0x007c5f87    0bc1
_jmp_addr_0x007c5f89:    pop              ebx                                           // 0x007c5f89    5b
                         leave                                                          // 0x007c5f8a    c9
                         ret                                                            // 0x007c5f8b    c3
_jmp_addr_0x007c5f8c:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c5f8c    8b442404
                         mov.s            ecx, eax                                      // 0x007c5f90    8bc8
                         cmp              word ptr [eax], 0x00                          // 0x007c5f92    66833800
                         {disp8} je       _jmp_addr_0x007c5fa0                          // 0x007c5f96    7408
_jmp_addr_0x007c5f98:    inc              ecx                                           // 0x007c5f98    41
                         inc              ecx                                           // 0x007c5f99    41
                         cmp              word ptr [ecx], 0x00                          // 0x007c5f9a    66833900
                         {disp8} jne      _jmp_addr_0x007c5f98                          // 0x007c5f9e    75f8
_jmp_addr_0x007c5fa0:    {disp8} mov      edx, dword ptr [esp + 0x08]                   // 0x007c5fa0    8b542408
                         push             esi                                           // 0x007c5fa4    56
_jmp_addr_0x007c5fa5:    mov              si, word ptr [edx]                            // 0x007c5fa5    668b32
                         mov              word ptr [ecx], si                            // 0x007c5fa8    668931
                         inc              ecx                                           // 0x007c5fab    41
                         inc              ecx                                           // 0x007c5fac    41
                         inc              edx                                           // 0x007c5fad    42
                         inc              edx                                           // 0x007c5fae    42
                         test             si, si                                        // 0x007c5faf    6685f6
                         {disp8} jne      _jmp_addr_0x007c5fa5                          // 0x007c5fb2    75f1
                         pop              esi                                           // 0x007c5fb4    5e
                         ret                                                            // 0x007c5fb5    c3
_wcscpy:                 {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x007c5fb6    8b4c2408
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c5fba    8b442404
                         push             esi                                           // 0x007c5fbe    56
                         mov              dx, word ptr [ecx]                            // 0x007c5fbf    668b11
                         {disp8} lea      esi, dword ptr [eax + 0x02]                   // 0x007c5fc2    8d7002
                         mov              word ptr [eax], dx                            // 0x007c5fc5    668910
_jmp_addr_0x007c5fc8:    inc              ecx                                           // 0x007c5fc8    41
                         inc              ecx                                           // 0x007c5fc9    41
                         test             dx, dx                                        // 0x007c5fca    6685d2
                         {disp8} je       _jmp_addr_0x007c5fd9                          // 0x007c5fcd    740a
                         mov              dx, word ptr [ecx]                            // 0x007c5fcf    668b11
                         mov              word ptr [esi], dx                            // 0x007c5fd2    668916
                         inc              esi                                           // 0x007c5fd5    46
                         inc              esi                                           // 0x007c5fd6    46
                         {disp8} jmp      _jmp_addr_0x007c5fc8                          // 0x007c5fd7    ebef
_jmp_addr_0x007c5fd9:    pop              esi                                           // 0x007c5fd9    5e
                         ret                                                            // 0x007c5fda    c3
_jmp_addr_0x007c5fdb:    push             ebp                                           // 0x007c5fdb    55
                         mov.s            ebp, esp                                      // 0x007c5fdc    8bec
                         sub              esp, 0x14                                     // 0x007c5fde    83ec14
                         push             dword ptr [ebp + 0x10]                        // 0x007c5fe1    ff7510
                         {disp8} lea      eax, dword ptr [ebp + -0x14]                  // 0x007c5fe4    8d45ec
                         push             eax                                           // 0x007c5fe7    50
                         push             dword ptr [ebp + 0x08]                        // 0x007c5fe8    ff7508
                         call             _jmp_addr_0x007cd984                          // 0x007c5feb    e894790000
                         add              esp, 0x0c                                     // 0x007c5ff0    83c40c
                         {disp8} lea      eax, dword ptr [ebp + -0x14]                  // 0x007c5ff3    8d45ec
                         push             0x14                                          // 0x007c5ff6    6a14
                         push             dword ptr [ebp + 0x0c]                        // 0x007c5ff8    ff750c
                         push             -0x1                                          // 0x007c5ffb    6aff
                         push             eax                                           // 0x007c5ffd    50
                         push             0x1                                           // 0x007c5ffe    6a01
                         push             0x0                                           // 0x007c6000    6a00
                         call             dword ptr [rdata_bytes + 0x13c]               // 0x007c6002    ff153c918a00
                         {disp8} mov      eax, dword ptr [ebp + 0x0c]                   // 0x007c6008    8b450c
                         leave                                                          // 0x007c600b    c9
                         ret                                                            // 0x007c600c    c3
                         push             ebp                                           // 0x007c600d    55
                         mov.s            ebp, esp                                      // 0x007c600e    8bec
                         sub              esp, 0x28                                     // 0x007c6010    83ec28
                         push             dword ptr [ebp + 0x10]                        // 0x007c6013    ff7510
                         {disp8} lea      eax, dword ptr [ebp + -0x28]                  // 0x007c6016    8d45d8
                         push             eax                                           // 0x007c6019    50
                         push             dword ptr [ebp + 0x08]                        // 0x007c601a    ff7508
                         call             _jmp_addr_0x007cda0d                          // 0x007c601d    e8eb790000
                         add              esp, 0x0c                                     // 0x007c6022    83c40c
                         {disp8} lea      eax, dword ptr [ebp + -0x28]                  // 0x007c6025    8d45d8
                         push             0x28                                          // 0x007c6028    6a28
                         push             dword ptr [ebp + 0x0c]                        // 0x007c602a    ff750c
                         push             -0x1                                          // 0x007c602d    6aff
                         push             eax                                           // 0x007c602f    50
                         push             0x1                                           // 0x007c6030    6a01
                         push             0x0                                           // 0x007c6032    6a00
                         call             dword ptr [rdata_bytes + 0x13c]               // 0x007c6034    ff153c918a00
                         {disp8} mov      eax, dword ptr [ebp + 0x0c]                   // 0x007c603a    8b450c
                         leave                                                          // 0x007c603d    c9
                         ret                                                            // 0x007c603e    c3
                         push             ebp                                           // 0x007c603f    55
                         mov.s            ebp, esp                                      // 0x007c6040    8bec
                         sub              esp, 0x28                                     // 0x007c6042    83ec28
                         push             dword ptr [ebp + 0x10]                        // 0x007c6045    ff7510
                         {disp8} lea      eax, dword ptr [ebp + -0x28]                  // 0x007c6048    8d45d8
                         push             eax                                           // 0x007c604b    50
                         push             dword ptr [ebp + 0x08]                        // 0x007c604c    ff7508
                         call             _jmp_addr_0x007cda37                          // 0x007c604f    e8e3790000
                         add              esp, 0x0c                                     // 0x007c6054    83c40c
                         {disp8} lea      eax, dword ptr [ebp + -0x28]                  // 0x007c6057    8d45d8
                         push             0x28                                          // 0x007c605a    6a28
                         push             dword ptr [ebp + 0x0c]                        // 0x007c605c    ff750c
                         push             -0x1                                          // 0x007c605f    6aff
                         push             eax                                           // 0x007c6061    50
                         push             0x1                                           // 0x007c6062    6a01
                         push             0x0                                           // 0x007c6064    6a00
                         call             dword ptr [rdata_bytes + 0x13c]               // 0x007c6066    ff153c918a00
                         {disp8} mov      eax, dword ptr [ebp + 0x0c]                   // 0x007c606c    8b450c
                         leave                                                          // 0x007c606f    c9
                         ret                                                            // 0x007c6070    c3
                         push             ebp                                           // 0x007c6071    55
                         mov.s            ebp, esp                                      // 0x007c6072    8bec
                         sub              esp, 0x50                                     // 0x007c6074    83ec50
                         push             dword ptr [ebp + 0x14]                        // 0x007c6077    ff7514
                         {disp8} lea      eax, dword ptr [ebp + -0x50]                  // 0x007c607a    8d45b0
                         push             eax                                           // 0x007c607d    50
                         push             dword ptr [ebp + 0x0c]                        // 0x007c607e    ff750c
                         push             dword ptr [ebp + 0x08]                        // 0x007c6081    ff7508
                         call             _jmp_addr_0x007cda52                          // 0x007c6084    e8c9790000
                         add              esp, 0x10                                     // 0x007c6089    83c410
                         {disp8} lea      eax, dword ptr [ebp + -0x50]                  // 0x007c608c    8d45b0
                         push             0x50                                          // 0x007c608f    6a50
                         push             dword ptr [ebp + 0x10]                        // 0x007c6091    ff7510
                         push             -0x1                                          // 0x007c6094    6aff
                         push             eax                                           // 0x007c6096    50
                         push             0x1                                           // 0x007c6097    6a01
                         push             0x0                                           // 0x007c6099    6a00
                         call             dword ptr [rdata_bytes + 0x13c]               // 0x007c609b    ff153c918a00
                         {disp8} mov      eax, dword ptr [ebp + 0x10]                   // 0x007c60a1    8b4510
                         leave                                                          // 0x007c60a4    c9
                         ret                                                            // 0x007c60a5    c3
                         push             ebp                                           // 0x007c60a6    55
                         mov.s            ebp, esp                                      // 0x007c60a7    8bec
                         sub              esp, 0x50                                     // 0x007c60a9    83ec50
                         push             dword ptr [ebp + 0x14]                        // 0x007c60ac    ff7514
                         {disp8} lea      eax, dword ptr [ebp + -0x50]                  // 0x007c60af    8d45b0
                         push             eax                                           // 0x007c60b2    50
                         push             dword ptr [ebp + 0x0c]                        // 0x007c60b3    ff750c
                         push             dword ptr [ebp + 0x08]                        // 0x007c60b6    ff7508
                         call             _jmp_addr_0x007cdb09                          // 0x007c60b9    e84b7a0000
                         add              esp, 0x10                                     // 0x007c60be    83c410
                         {disp8} lea      eax, dword ptr [ebp + -0x50]                  // 0x007c60c1    8d45b0
                         push             0x50                                          // 0x007c60c4    6a50
                         push             dword ptr [ebp + 0x10]                        // 0x007c60c6    ff7510
                         push             -0x1                                          // 0x007c60c9    6aff
                         push             eax                                           // 0x007c60cb    50
                         push             0x1                                           // 0x007c60cc    6a01
                         push             0x0                                           // 0x007c60ce    6a00
                         call             dword ptr [rdata_bytes + 0x13c]               // 0x007c60d0    ff153c918a00
                         {disp8} mov      eax, dword ptr [ebp + 0x10]                   // 0x007c60d6    8b4510
                         leave                                                          // 0x007c60d9    c9
                         ret                                                            // 0x007c60da    c3
                         push             0x19                                          // 0x007c60db    6a19
                         call             __amsg_exit                                   // 0x007c60dd    e8c5440000
                         pop              ecx                                           // 0x007c60e2    59
                         ret                                                            // 0x007c60e3    c3
                         int3                                                           // 0x007c60e4    cc
                         int3                                                           // 0x007c60e5    cc
                         int3                                                           // 0x007c60e6    cc
                         int3                                                           // 0x007c60e7    cc
                         int3                                                           // 0x007c60e8    cc
                         int3                                                           // 0x007c60e9    cc
                         int3                                                           // 0x007c60ea    cc
                         int3                                                           // 0x007c60eb    cc
                         int3                                                           // 0x007c60ec    cc
                         int3                                                           // 0x007c60ed    cc
                         int3                                                           // 0x007c60ee    cc
                         int3                                                           // 0x007c60ef    cc
_jmp_addr_0x007c60f0:    push             ebp                                           // 0x007c60f0    55
                         mov.s            ebp, esp                                      // 0x007c60f1    8bec
                         push             edi                                           // 0x007c60f3    57
                         push             esi                                           // 0x007c60f4    56
                         {disp8} mov      esi, dword ptr [ebp + 0x0c]                   // 0x007c60f5    8b750c
                         {disp8} mov      ecx, dword ptr [ebp + 0x10]                   // 0x007c60f8    8b4d10
                         {disp8} mov      edi, dword ptr [ebp + 0x08]                   // 0x007c60fb    8b7d08
                         mov.s            eax, ecx                                      // 0x007c60fe    8bc1
                         mov.s            edx, ecx                                      // 0x007c6100    8bd1
                         add.s            eax, esi                                      // 0x007c6102    03c6
                         cmp.s            edi, esi                                      // 0x007c6104    3bfe
                         {disp8} jbe      _jmp_addr_0x007c6110                          // 0x007c6106    7608
                         cmp.s            edi, eax                                      // 0x007c6108    3bf8
                         {disp32} jb      _jmp_addr_0x007c6288                          // 0x007c610a    0f8278010000
_jmp_addr_0x007c6110:    test             edi, 0x00000003                               // 0x007c6110    f7c703000000
                         {disp8} jne      _jmp_addr_0x007c612c                          // 0x007c6116    7514
                         shr              ecx, 2                                        // 0x007c6118    c1e902
                         and              edx, 0x03                                     // 0x007c611b    83e203
                         cmp              ecx, 0x08                                     // 0x007c611e    83f908
                         .byte            0x72, 0x29// {disp8} jb _jmp_addr_0x007c614c  // 0x007c6121    7229
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007c6123    f3a5
                         jmp              dword ptr [edx*4 + 0x7c6238]                  // 0x007c6125    ff249538627c00
_jmp_addr_0x007c612c:    mov.s            eax, edi                                      // 0x007c612c    8bc7
                         mov              edx, 0x00000003                               // 0x007c612e    ba03000000
                         sub              ecx, 0x04                                     // 0x007c6133    83e904
                         .byte            0x72, 0xc// {disp8} jb _jmp_addr_0x007c6144   // 0x007c6136    720c
                         and              eax, 0x03                                     // 0x007c6138    83e003
                         add.s            ecx, eax                                      // 0x007c613b    03c8
                         jmp              dword ptr [eax*4 + 0x7c6150]                  // 0x007c613d    ff248550617c00
_jmp_addr_0x007c6144:    jmp              dword ptr [ecx*4 + 0x7c6248]                  // 0x007c6144    ff248d48627c00
                         nop                                                            // 0x007c614b    90
_jmp_addr_0x007c614c:    jmp              dword ptr [ecx*4 + 0x7c61cc]                  // 0x007c614c    ff248dcc617c00

// Snippet: db, [0x007c6153, 0x007c6154)
.byte 0x90                        // 0x007c6153

// Snippet: jmptbl, [0x007c6154, 0x007c6160)
.byte 0x60, 0x61, 0x7c, 0x00      // 0x007c6154
.byte 0x8c, 0x61, 0x7c, 0x00      // 0x007c6158
.byte 0xb0, 0x61, 0x7c, 0x00      // 0x007c615c

