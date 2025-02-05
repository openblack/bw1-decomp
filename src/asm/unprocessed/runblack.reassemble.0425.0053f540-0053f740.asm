.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @__ct__14SetupTabButtonFiiiiiPwiii@35
.extern _jmp_addr_0x007a1400
.extern ___nw__FUl

.globl _jmp_addr_0x0053f540

start_0x0053f540_0x0053f740:
// Snippet: asm, [0x0053f540, 0x0053f71b)
_jmp_addr_0x0053f540:    sub               esp, 0x10                                     // 0x0053f540    83ec10
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d1c]        // 0x0053f543    8b0d1ccdc400
                         {disp32} mov      eax, dword ptr [ecx + 0x0000009c]             // 0x0053f549    8b819c000000
                         {disp32} mov      ecx, dword ptr [ecx + 0x000000a0]             // 0x0053f54f    8b89a0000000
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                   // 0x0053f555    894c240c
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x352588]        // 0x0053f559    8b0d8885d100
                         test              ecx, ecx                                      // 0x0053f55f    85c9
                         {disp8} mov       dword ptr [esp + 0x08], eax                   // 0x0053f561    89442408
                         {disp8} mov       dword ptr [esp + 0x00], 0x00000005            // 0x0053f565    c744240005000000
                         {disp8} je        _jmp_addr_0x0053f577                          // 0x0053f56d    7408
                         {disp8} mov       dword ptr [esp + 0x00], 0x00000006            // 0x0053f56f    c744240006000000
_jmp_addr_0x0053f577:    {disp8} fild      dword ptr [esp + 0x08]                        // 0x0053f577    db442408
                         cdq                                                             // 0x0053f57b    99
                         sub.s             eax, edx                                      // 0x0053f57c    2bc2
                         sar               eax, 1                                        // 0x0053f57e    d1f8
                         {disp8} fidiv     dword ptr [esp + 0x00]                        // 0x0053f580    da742400
                         mov               edx, 0x00000190                               // 0x0053f584    ba90010000
                         sub.s             edx, eax                                      // 0x0053f589    2bd0
                         {disp8} mov       eax, dword ptr [esp + 0x00]                   // 0x0053f58b    8b442400
                         {disp8} mov       dword ptr [esp + 0x04], edx                   // 0x0053f58f    89542404
                         push              edi                                           // 0x0053f593    57
                         xor.s             edi, edi                                      // 0x0053f594    33ff
                         test              eax, eax                                      // 0x0053f596    85c0
                         {disp8} fstp      dword ptr [esp + 0x0c]                        // 0x0053f598    d95c240c
                         {disp8} fild      dword ptr [esp + 0x08]                        // 0x0053f59c    db442408
                         {disp8} fstp      dword ptr [esp + 0x08]                        // 0x0053f5a0    d95c2408
                         {disp32} jle      _jmp_addr_0x0053f716                          // 0x0053f5a4    0f8e6c010000
                         push              ebx                                           // 0x0053f5aa    53
                         push              ebp                                           // 0x0053f5ab    55
                         {disp8} mov       ebp, dword ptr [esp + 0x20]                   // 0x0053f5ac    8b6c2420
                         push              esi                                           // 0x0053f5b0    56
_jmp_addr_0x0053f5b1:    cmp               edi, 0x05                                     // 0x0053f5b1    83ff05
                         {disp32} ja       _jmp_addr_0x0053f680                          // 0x0053f5b4    0f87c6000000
                         jmp               dword ptr [edi*4 + 0x53f71c]                  // 0x0053f5ba    ff24bd1cf75300
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a7a // 0x0053f5c1    813dac7cd1007a1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f5cb    a1a87cd100
                         {disp32} jbe      _jmp_addr_0x0053f67d                          // 0x0053f5d0    0f86a7000000
                         add               eax, 0x00013db8                               // 0x0053f5d6    05b83d0100
                         {disp32} jmp      _jmp_addr_0x0053f67d                          // 0x0053f5db    e99d000000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d52 // 0x0053f5e0    813dac7cd100520d0000
                         {disp8} ja        _jmp_addr_0x0053f5f6                          // 0x0053f5ea    770a
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f5ec    a1a87cd100
                         {disp32} jmp      _jmp_addr_0x0053f67d                          // 0x0053f5f1    e987000000
_jmp_addr_0x0053f5f6:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0053f5f6    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x00009fd8]             // 0x0053f5fc    8d81d89f0000
                         {disp8} jmp       _jmp_addr_0x0053f67d                          // 0x0053f602    eb79
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000dd7 // 0x0053f604    813dac7cd100d70d0000
                         {disp8} ja        _jmp_addr_0x0053f617                          // 0x0053f60e    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f610    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053f67d                          // 0x0053f615    eb66
_jmp_addr_0x0053f617:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053f617    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a614]             // 0x0053f61d    8d8214a60000
                         {disp8} jmp       _jmp_addr_0x0053f67d                          // 0x0053f623    eb58
                         cmp               dword ptr [data_bytes + 0x351cac], 0x0000147b // 0x0053f625    813dac7cd1007b140000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f62f    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0053f67d                          // 0x0053f634    7647
                         add               eax, 0x0000f5c4                               // 0x0053f636    05c4f50000
                         {disp8} jmp       _jmp_addr_0x0053f67d                          // 0x0053f63b    eb40
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d79 // 0x0053f63d    813dac7cd100790d0000
                         {disp8} ja        _jmp_addr_0x0053f650                          // 0x0053f647    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f649    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053f67d                          // 0x0053f64e    eb2d
_jmp_addr_0x0053f650:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0053f650    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a1ac]             // 0x0053f656    8d81aca10000
                         {disp8} jmp       _jmp_addr_0x0053f67d                          // 0x0053f65c    eb1f
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000019f7 // 0x0053f65e    813dac7cd100f7190000
                         {disp8} ja        _jmp_addr_0x0053f671                          // 0x0053f668    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f66a    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053f67d                          // 0x0053f66f    eb0c
_jmp_addr_0x0053f671:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053f671    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013794]             // 0x0053f677    8d8294370100
_jmp_addr_0x0053f67d:    {disp8} mov       ebp, dword ptr [eax + 0x08]                   // 0x0053f67d    8b6808
_jmp_addr_0x0053f680:    push              0x0000062e                                    // 0x0053f680    682e060000
                         push              0x00bea568                                    // 0x0053f685    6868a5be00
                         push              0x00000254                                    // 0x0053f68a    6854020000
                         call              ___nw__FUl                                    // 0x0053f68f    e8fcc02900
                         mov.s             ebx, eax                                      // 0x0053f694    8bd8
                         add               esp, 0x0c                                     // 0x0053f696    83c40c
                         test              ebx, ebx                                      // 0x0053f699    85db
                         {disp8} je        _jmp_addr_0x0053f6fa                          // 0x0053f69b    745d
                         {disp8} fld       dword ptr [esp + 0x14]                        // 0x0053f69d    d9442414
                         call              _jmp_addr_0x007a1400                          // 0x0053f6a1    e85a1d2600
                         {disp8} fld       dword ptr [esp + 0x14]                        // 0x0053f6a6    d9442414
                         mov.s             esi, eax                                      // 0x0053f6aa    8bf0
                         {disp8} fadd      dword ptr [esp + 0x18]                        // 0x0053f6ac    d8442418
                         {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x0053f6b0    8b442410
                         dec               eax                                           // 0x0053f6b4    48
                         xor.s             ecx, ecx                                      // 0x0053f6b5    33c9
                         cmp.s             edi, eax                                      // 0x0053f6b7    3bf8
                         sete              cl                                            // 0x0053f6b9    0f94c1
                         xor.s             edx, edx                                      // 0x0053f6bc    33d2
                         test              edi, edi                                      // 0x0053f6be    85ff
                         sete              dl                                            // 0x0053f6c0    0f94c2
                         xor.s             eax, eax                                      // 0x0053f6c3    33c0
                         push              ecx                                           // 0x0053f6c5    51
                         push              edx                                           // 0x0053f6c6    52
                         cmp               edi, dword ptr [esp + 0x2c]                   // 0x0053f6c7    3b7c242c
                         sete              al                                            // 0x0053f6cb    0f94c0
                         push              eax                                           // 0x0053f6ce    50
                         push              ebp                                           // 0x0053f6cf    55
                         push              0x28                                          // 0x0053f6d0    6a28
                         call              _jmp_addr_0x007a1400                          // 0x0053f6d2    e8291d2600
                         sub.s             eax, esi                                      // 0x0053f6d7    2bc6
                         push              eax                                           // 0x0053f6d9    50
                         {disp8} mov       eax, dword ptr [esp + 0x34]                   // 0x0053f6da    8b442434
                         cdq                                                             // 0x0053f6de    99
                         sub.s             eax, edx                                      // 0x0053f6df    2bc2
                         sar               eax, 1                                        // 0x0053f6e1    d1f8
                         mov               ecx, 0x00000104                               // 0x0053f6e3    b904010000
                         sub.s             ecx, eax                                      // 0x0053f6e8    2bc8
                         push              ecx                                           // 0x0053f6ea    51
                         push              esi                                           // 0x0053f6eb    56
                         {disp32} lea      edx, dword ptr [edi + 0x000008fc]             // 0x0053f6ec    8d97fc080000
                         push              edx                                           // 0x0053f6f2    52
                         mov.s             ecx, ebx                                      // 0x0053f6f3    8bcb
                         call              @__ct__14SetupTabButtonFiiiiiPwiii@35         // 0x0053f6f5    e8e6feecff
_jmp_addr_0x0053f6fa:    {disp8} fld       dword ptr [esp + 0x14]                        // 0x0053f6fa    d9442414
                         {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x0053f6fe    8b442410
                         {disp8} fadd      dword ptr [esp + 0x18]                        // 0x0053f702    d8442418
                         inc               edi                                           // 0x0053f706    47
                         cmp.s             edi, eax                                      // 0x0053f707    3bf8
                         {disp8} fstp      dword ptr [esp + 0x14]                        // 0x0053f709    d95c2414
                         {disp32} jl       _jmp_addr_0x0053f5b1                          // 0x0053f70d    0f8c9efeffff
                         pop               esi                                           // 0x0053f713    5e
                         pop               ebp                                           // 0x0053f714    5d
                         pop               ebx                                           // 0x0053f715    5b
_jmp_addr_0x0053f716:    pop               edi                                           // 0x0053f716    5f
                         add               esp, 0x10                                     // 0x0053f717    83c410
                         ret                                                             // 0x0053f71a    c3

// Snippet: db, [0x0053f71b, 0x0053f71c)
.byte 0x90                        // 0x0053f71b

// Snippet: jmptbl, [0x0053f71c, 0x0053f734)
.byte 0xc1, 0xf5, 0x53, 0x00      // 0x0053f71c
.byte 0xe0, 0xf5, 0x53, 0x00      // 0x0053f720
.byte 0x04, 0xf6, 0x53, 0x00      // 0x0053f724
.byte 0x25, 0xf6, 0x53, 0x00      // 0x0053f728
.byte 0x3d, 0xf6, 0x53, 0x00      // 0x0053f72c
.byte 0x5e, 0xf6, 0x53, 0x00      // 0x0053f730

// Snippet: db, [0x0053f734, 0x0053f740)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0053f734
.byte 0x90, 0x90, 0x90, 0x90      // 0x0053f738
.byte 0x90, 0x90, 0x90, 0x90      // 0x0053f73c

