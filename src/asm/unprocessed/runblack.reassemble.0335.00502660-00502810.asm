.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern _jmp_addr_0x0047a880

start_0x00502660_0x00502810:
// Snippet: asm, [0x00502660, 0x005027dc)
                         sub               esp, 0x2c                                     // 0x00502660    83ec2c
                         push              esi                                           // 0x00502663    56
                         mov.s             esi, ecx                                      // 0x00502664    8bf1
                         {disp32} mov      eax, dword ptr [esi + 0x00000164]             // 0x00502666    8b8664010000
                         {disp8} fild      dword ptr [esi + 0x14]                        // 0x0050266c    db4614
                         {disp32} mov      ecx, dword ptr [eax + 0x00000fb4]             // 0x0050266f    8b88b40f0000
                         lea               ecx, dword ptr [ecx + ecx * 0x2]              // 0x00502675    8d0c49
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2864c]             // 0x00502678    d80d4c168d00
                         shl               ecx, 5                                        // 0x0050267e    c1e105
                         {disp32} mov      edx, dword ptr [ecx + eax * 0x1 + 0x00000fe4] // 0x00502681    8b9401e40f0000
                         {disp32} lea      ecx, dword ptr [ecx + eax * 0x1 + 0x00000fe4] // 0x00502688    8d8c01e40f0000
                         {disp8} mov       dword ptr [esp + 0x18], edx                   // 0x0050268f    89542418
                         {disp8} mov       edx, dword ptr [ecx + 0x04]                   // 0x00502693    8b5104
                         {disp32} fmul     dword ptr [rdata_bytes + 0x341c]              // 0x00502696    d80d1cc48a00
                         {disp8} mov       dword ptr [esp + 0x1c], edx                   // 0x0050269c    8954241c
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x005026a0    8b4908
                         {disp8} fsubr     dword ptr [esp + 0x18]                        // 0x005026a3    d86c2418
                         {disp8} mov       dword ptr [esp + 0x20], ecx                   // 0x005026a7    894c2420
                         {disp32} mov      ecx, dword ptr [eax + 0x00000fb4]             // 0x005026ab    8b88b40f0000
                         {disp8} fstp      dword ptr [esp + 0x0c]                        // 0x005026b1    d95c240c
                         lea               edx, dword ptr [ecx + ecx * 0x2]              // 0x005026b5    8d1449
                         {disp8} fild      dword ptr [esi + 0x18]                        // 0x005026b8    db4618
                         shl               edx, 5                                        // 0x005026bb    c1e205
                         mov.s             ecx, esi                                      // 0x005026be    8bce
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2864c]             // 0x005026c0    d80d4c168d00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x341c]              // 0x005026c6    d80d1cc48a00
                         {disp8} fsubr     dword ptr [esp + 0x20]                        // 0x005026cc    d86c2420
                         {disp8} fst       dword ptr [esp + 0x10]                        // 0x005026d0    d9542410
                         {disp8} fmul      dword ptr [esp + 0x10]                        // 0x005026d4    d84c2410
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x005026d8    d944240c
                         {disp8} fmul      dword ptr [esp + 0x0c]                        // 0x005026dc    d84c240c
                         faddp             st(1), st                                     // 0x005026e0    dec1
                         fsqrt                                                           // 0x005026e2    d9fa
                         {disp8} fstp      dword ptr [esp + 0x08]                        // 0x005026e4    d95c2408
                         {disp32} fld      dword ptr [edx + eax * 0x1 + 0x00000ff0]      // 0x005026e8    d98402f00f0000
                         mov               eax, dword ptr [esi]                          // 0x005026ef    8b06
                         {disp8} fstp      dword ptr [esp + 0x04]                        // 0x005026f1    d95c2404
                         call              dword ptr [eax + 0x42c]                       // 0x005026f5    ff902c040000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x19c70]             // 0x005026fb    d80d702c8c00
                         {disp8} fstp      dword ptr [esp + 0x14]                        // 0x00502701    d95c2414
                         {disp8} fld       dword ptr [esp + 0x08]                        // 0x00502705    d9442408
                         {disp8} fcomp     dword ptr [esp + 0x04]                        // 0x00502709    d85c2404
                         fnstsw            ax                                            // 0x0050270d    dfe0
                         test              ah, 0x01                                      // 0x0050270f    f6c401
                         {disp8} je        _jmp_addr_0x00502790                          // 0x00502712    747c
                         {disp8} fld       dword ptr [esp + 0x04]                        // 0x00502714    d9442404
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00502718    8b4c2404
                         {disp8} fmul      dword ptr [esp + 0x0c]                        // 0x0050271c    d84c240c
                         mov               edx, dword ptr [esi]                          // 0x00502720    8b16
                         push              ecx                                           // 0x00502722    51
                         mov.s             ecx, esi                                      // 0x00502723    8bce
                         {disp8} fdiv      dword ptr [esp + 0x0c]                        // 0x00502725    d874240c
                         {disp8} fsubr     dword ptr [esp + 0x1c]                        // 0x00502729    d86c241c
                         {disp8} fstp      dword ptr [esp + 0x28]                        // 0x0050272d    d95c2428
                         {disp8} fld       dword ptr [esp + 0x08]                        // 0x00502731    d9442408
                         {disp8} fmul      dword ptr [esp + 0x14]                        // 0x00502735    d84c2414
                         {disp8} fdiv      dword ptr [esp + 0x0c]                        // 0x00502739    d874240c
                         {disp8} fsubr     dword ptr [esp + 0x24]                        // 0x0050273d    d86c2424
                         {disp8} fstp      dword ptr [esp + 0x30]                        // 0x00502741    d95c2430
                         call              dword ptr [edx + 0x42c]                       // 0x00502745    ff922c040000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x19c50]             // 0x0050274b    d80d502c8c00
                         push              ecx                                           // 0x00502751    51
                         {disp8} lea       eax, dword ptr [esp + 0x2c]                   // 0x00502752    8d44242c
                         mov.s             ecx, esi                                      // 0x00502756    8bce
                         fstp              dword ptr [esp]                               // 0x00502758    d91c24
                         push              eax                                           // 0x0050275b    50
                         push              0x0                                           // 0x0050275c    6a00
                         call              _jmp_addr_0x0047a880                          // 0x0050275e    e81d81f7ff
                         cmp               eax, 0x04                                     // 0x00502763    83f804
                         {disp8} ja        _jmp_addr_0x0050277f                          // 0x00502766    7717
                         jmp               dword ptr [eax*4 + 0x5027dc]                  // 0x00502768    ff2485dc275000
                         push              0x1                                           // 0x0050276f    6a01
                         push              0x1                                           // 0x00502771    6a01
                         push              0x00be6540                                    // 0x00502773    684065be00
                         mov.s             ecx, esi                                      // 0x00502778    8bce
                         call              ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x0050277a    e8b12ff7ff
_jmp_addr_0x0050277f:    mov               eax, 0x00000001                               // 0x0050277f    b801000000
                         pop               esi                                           // 0x00502784    5e
                         add               esp, 0x2c                                     // 0x00502785    83c42c
                         ret                                                             // 0x00502788    c3
                         xor.s             eax, eax                                      // 0x00502789    33c0
                         pop               esi                                           // 0x0050278b    5e
                         add               esp, 0x2c                                     // 0x0050278c    83c42c
                         ret                                                             // 0x0050278f    c3
_jmp_addr_0x00502790:    {disp8} fld       dword ptr [esp + 0x08]                        // 0x00502790    d9442408
                         {disp8} fcomp     dword ptr [esp + 0x14]                        // 0x00502794    d85c2414
                         fnstsw            ax                                            // 0x00502798    dfe0
                         test              ah, 0x41                                      // 0x0050279a    f6c441
                         {disp8} jne       _jmp_addr_0x005027d2                          // 0x0050279d    7533
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x0050279f    8b4c2414
                         mov               edx, dword ptr [esi]                          // 0x005027a3    8b16
                         push              ecx                                           // 0x005027a5    51
                         mov.s             ecx, esi                                      // 0x005027a6    8bce
                         call              dword ptr [edx + 0x42c]                       // 0x005027a8    ff922c040000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x19c50]             // 0x005027ae    d80d502c8c00
                         push              ecx                                           // 0x005027b4    51
                         {disp8} lea       eax, dword ptr [esp + 0x20]                   // 0x005027b5    8d442420
                         fstp              dword ptr [esp]                               // 0x005027b9    d91c24
                         push              eax                                           // 0x005027bc    50
                         push              0x0                                           // 0x005027bd    6a00
                         mov.s             ecx, esi                                      // 0x005027bf    8bce
                         call              _jmp_addr_0x0047a880                          // 0x005027c1    e8ba80f7ff
                         cmp               eax, 0x04                                     // 0x005027c6    83f804
                         {disp8} ja        _jmp_addr_0x0050277f                          // 0x005027c9    77b4
                         jmp               dword ptr [eax*4 + 0x5027f0]                  // 0x005027cb    ff2485f0275000
_jmp_addr_0x005027d2:    mov               eax, 0x00000002                               // 0x005027d2    b802000000
                         pop               esi                                           // 0x005027d7    5e
                         add               esp, 0x2c                                     // 0x005027d8    83c42c
                         ret                                                             // 0x005027db    c3

// Snippet: jmptbl, [0x005027dc, 0x00502804)
.byte 0x6f, 0x27, 0x50, 0x00      // 0x005027dc
.byte 0x89, 0x27, 0x50, 0x00      // 0x005027e0
.byte 0x6f, 0x27, 0x50, 0x00      // 0x005027e4
.byte 0xd2, 0x27, 0x50, 0x00      // 0x005027e8
.byte 0xd2, 0x27, 0x50, 0x00      // 0x005027ec
.byte 0x6f, 0x27, 0x50, 0x00      // 0x005027f0
.byte 0x89, 0x27, 0x50, 0x00      // 0x005027f4
.byte 0x6f, 0x27, 0x50, 0x00      // 0x005027f8
.byte 0xd2, 0x27, 0x50, 0x00      // 0x005027fc
.byte 0xd2, 0x27, 0x50, 0x00      // 0x00502800

// Snippet: db, [0x00502804, 0x00502810)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00502804
.byte 0x90, 0x90, 0x90, 0x90      // 0x00502808
.byte 0x90, 0x90, 0x90, 0x90      // 0x0050280c

