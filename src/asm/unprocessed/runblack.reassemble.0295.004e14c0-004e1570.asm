.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x004d42c0
.extern _jmp_addr_0x004d4340
.extern _jmp_addr_0x004d4bd0

.globl _jmp_addr_0x004e14c0

start_0x004e14c0_0x004e1570:
// Snippet: asm, [0x004e14c0, 0x004e155e)
_jmp_addr_0x004e14c0:    push             ebx                                           // 0x004e14c0    53
                         push             esi                                           // 0x004e14c1    56
                         push             edi                                           // 0x004e14c2    57
                         push             0x00000265                                    // 0x004e14c3    6865020000
                         push             0x00bdf960                                    // 0x004e14c8    6860f9bd00
                         push             0x14                                          // 0x004e14cd    6a14
                         mov.s            esi, ecx                                      // 0x004e14cf    8bf1
                         call             ?__nw@Base@@SAPAXK@Z                          // 0x004e14d1    e81a52f5ff
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                   // 0x004e14d6    8b7c241c
                         xor.s            ebx, ebx                                      // 0x004e14da    33db
                         add              esp, 0x0c                                     // 0x004e14dc    83c40c
                         cmp.s            eax, ebx                                      // 0x004e14df    3bc3
                         {disp8} je       _jmp_addr_0x004e14fb                          // 0x004e14e1    7418
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x004e14e3    8b4c2414
                         {disp8} mov      dword ptr [eax + 0x04], ebx                   // 0x004e14e7    895804
                         {disp8} mov      dword ptr [eax + 0x10], ebx                   // 0x004e14ea    895810
                         mov              dword ptr [eax], 0x008cf42c                   // 0x004e14ed    c7002cf48c00
                         {disp8} mov      dword ptr [eax + 0x08], edi                   // 0x004e14f3    897808
                         {disp8} mov      dword ptr [eax + 0x0c], ecx                   // 0x004e14f6    89480c
                         mov.s            ebx, eax                                      // 0x004e14f9    8bd8
_jmp_addr_0x004e14fb:    push             edi                                           // 0x004e14fb    57
                         {disp32} lea     ecx, dword ptr [esi + 0x00002478]             // 0x004e14fc    8d8e78240000
                         call             _jmp_addr_0x004e1530                          // 0x004e1502    e829000000
                         mov.s            esi, eax                                      // 0x004e1507    8bf0
                         push             ebx                                           // 0x004e1509    53
                         mov.s            ecx, esi                                      // 0x004e150a    8bce
                         call             _jmp_addr_0x004d42c0                          // 0x004e150c    e8af2dffff
                         mov.s            ecx, esi                                      // 0x004e1511    8bce
                         call             _jmp_addr_0x004d4340                          // 0x004e1513    e8282effff
                         {disp8} mov      edi, dword ptr [edi + 0x14]                   // 0x004e1518    8b7f14
                         push             edi                                           // 0x004e151b    57
                         {disp8} lea      ecx, dword ptr [esi + 0x14]                   // 0x004e151c    8d4e14
                         call             _jmp_addr_0x004d4bd0                          // 0x004e151f    e8ac36ffff
                         pop              edi                                           // 0x004e1524    5f
                         pop              esi                                           // 0x004e1525    5e
                         pop              ebx                                           // 0x004e1526    5b
                         ret              0x0008                                        // 0x004e1527    c20800
                         call             dword ptr [__imp__DirectDrawCreateEx@4]       // 0x004e152a    ff1524908a00
_jmp_addr_0x004e1530:    {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x004e1530    8b542404
                         {disp8} mov      eax, dword ptr [edx + 0x08]                   // 0x004e1534    8b4208
                         cmp              eax, 0x03                                     // 0x004e1537    83f803
                         {disp8} ja       _jmp_addr_0x004e1559                          // 0x004e153a    771d
                         jmp              dword ptr [eax*4 + 0x4e1560]                  // 0x004e153c    ff248560154e00
                         {disp8} mov      eax, dword ptr [edx + 0x0c]                   // 0x004e1543    8b420c
                         mov              eax, dword ptr [ecx + eax * 0x4]              // 0x004e1546    8b0481
                         ret              0x0004                                        // 0x004e1549    c20400
                         {disp8} mov      edx, dword ptr [edx + 0x0c]                   // 0x004e154c    8b520c
                         {disp32} mov     eax, dword ptr [ecx + edx * 0x4 + 0x000000a0] // 0x004e154f    8b8491a0000000
                         ret              0x0004                                        // 0x004e1556    c20400
_jmp_addr_0x004e1559:    xor.s            eax, eax                                      // 0x004e1559    33c0
                         ret              0x0004                                        // 0x004e155b    c20400

// Snippet: db, [0x004e155e, 0x004e1560)
.byte 0x8b, 0xff                  // 0x004e155e

// Snippet: jmptbl, [0x004e1560, 0x004e1570)
.byte 0x59, 0x15, 0x4e, 0x00      // 0x004e1560
.byte 0x43, 0x15, 0x4e, 0x00      // 0x004e1564
.byte 0x4c, 0x15, 0x4e, 0x00      // 0x004e1568
.byte 0x59, 0x15, 0x4e, 0x00      // 0x004e156c

