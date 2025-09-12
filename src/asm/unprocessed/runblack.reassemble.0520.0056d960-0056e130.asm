.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern ??1SetupControl@@UAE@XZ
.extern ?adjust@SetupThing@@SAMAAH0@Z
.extern ?adjusty@SetupThing@@SAHH@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0048e260
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern _jmp_addr_0x00566890
.extern _jmp_addr_0x0056aca0
.extern _jmp_addr_0x0056d220
.extern _jmp_addr_0x0056d270
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _wcscpy
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern _jmp_addr_0x0081b370

.globl _jmp_addr_0x0056da00
.globl ??_GSetupHSBarGraph@@UAEPAXI@Z
.globl ?Destroy@StatsBox@@UAEXXZ
.globl ?InitControls@StatsBox@@UAEXXZ

??_GSetupHSBarGraph@@UAEPAXI@Z:
                         push               esi                                           // 0x0056d960    56
                         mov.s              esi, ecx                                      // 0x0056d961    8bf1
                         call               ??1SetupControl@@UAE@XZ                       // 0x0056d963    e858bae9ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0056d968    f644240801
                         {disp8} je         _jmp_addr_0x0056d978                          // 0x0056d96d    7409
                         push               esi                                           // 0x0056d96f    56
                         call               ??3@YAXPAX@Z                                  // 0x0056d970    e823152400
                         add                esp, 0x04                                     // 0x0056d975    83c404
_jmp_addr_0x0056d978:    mov.s              eax, esi                                      // 0x0056d978    8bc6
                         pop                esi                                           // 0x0056d97a    5e
                         ret                0x0004                                        // 0x0056d97b    c20400
                         nop                                                              // 0x0056d97e    90
                         nop                                                              // 0x0056d97f    90
?Destroy@StatsBox@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x0056d980    e80b5cfaff
                         {disp32} mov       dword ptr [data_bytes + 0x340068], 0x00000000 // 0x0056d985    c7056860d00000000000
                         ret                                                              // 0x0056d98f    c3
?InitControls@StatsBox@@UAEXXZ:
                         push               esi                                           // 0x0056d990    56
                         mov.s              esi, ecx                                      // 0x0056d991    8bf1
                         call               _jmp_addr_0x00566890                          // 0x0056d993    e8f88effff
                         push               0x1                                           // 0x0056d998    6a01
                         mov.s              ecx, esi                                      // 0x0056d99a    8bce
                         {disp8} mov        dword ptr [esi + 0x6c], eax                   // 0x0056d99c    89466c
                         {disp8} mov        dword ptr [esi + 0x10], 0x00000001            // 0x0056d99f    c7461001000000
                         call               _jmp_addr_0x0056d270                          // 0x0056d9a6    e8c5f8ffff
                         {disp8} mov        al, byte ptr [esi + 0x40]                     // 0x0056d9ab    8a4640
                         test               al, al                                        // 0x0056d9ae    84c0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]        // 0x0056d9b0    a1ac7cd100
                         {disp8} je         _jmp_addr_0x0056d9ca                          // 0x0056d9b5    7413
                         cmp                eax, 0x00001a0e                               // 0x0056d9b7    3d0e1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d9bc    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056d9e4                          // 0x0056d9c1    7621
                         add                eax, 0x000138a8                               // 0x0056d9c3    05a8380100
                         {disp8} jmp        _jmp_addr_0x0056d9e4                          // 0x0056d9c8    eb1a
_jmp_addr_0x0056d9ca:    cmp                eax, 0x00001a7a                               // 0x0056d9ca    3d7a1a0000
                         {disp8} ja         _jmp_addr_0x0056d9d8                          // 0x0056d9cf    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d9d1    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056d9e4                          // 0x0056d9d6    eb0c
_jmp_addr_0x0056d9d8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d9d8    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013db8]             // 0x0056d9de    8d81b83d0100
_jmp_addr_0x0056d9e4:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056d9e4    8b4008
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x0056d9e7    8b5614
                         push               eax                                           // 0x0056d9ea    50
                         add                edx, 0x24                                     // 0x0056d9eb    83c224
                         push               edx                                           // 0x0056d9ee    52
                         call               _wcscpy                                       // 0x0056d9ef    e8c2852500
                         add                esp, 0x08                                     // 0x0056d9f4    83c408
                         pop                esi                                           // 0x0056d9f7    5e
                         ret                                                              // 0x0056d9f8    c3
                         nop                                                              // 0x0056d9f9    90
                         nop                                                              // 0x0056d9fa    90
                         nop                                                              // 0x0056d9fb    90
                         nop                                                              // 0x0056d9fc    90
                         nop                                                              // 0x0056d9fd    90
                         nop                                                              // 0x0056d9fe    90
                         nop                                                              // 0x0056d9ff    90
_jmp_addr_0x0056da00:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0056da00    8b442408
                         sub                esp, 0x0000008c                               // 0x0056da04    81ec8c000000
                         cmp                eax, 0x0e                                     // 0x0056da0a    83f80e
                         push               ebx                                           // 0x0056da0d    53
                         push               esi                                           // 0x0056da0e    56
                         push               edi                                           // 0x0056da0f    57
                         {disp32} ja        _jmp_addr_0x0056e0ea                          // 0x0056da10    0f87d4060000
                         xor.s              ecx, ecx                                      // 0x0056da16    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0056e11c]               // 0x0056da18    8a881ce15600
                         jmp                dword ptr [ecx*4 + 0x56e100]                  // 0x0056da1e    ff248d00e15600
                         pop                edi                                           // 0x0056da25    5f
                         pop                esi                                           // 0x0056da26    5e
                         {disp32} mov       dword ptr [data_bytes + 0x340064], 0x00000000 // 0x0056da27    c7056460d00000000000
                         pop                ebx                                           // 0x0056da31    5b
                         add                esp, 0x0000008c                               // 0x0056da32    81c48c000000
                         ret                0x0018                                        // 0x0056da38    c21800
                         {disp32} mov       esi, dword ptr [esp + 0x0000009c]             // 0x0056da3b    8bb4249c000000
                         mov.s              ecx, esi                                      // 0x0056da42    8bce
                         call               _jmp_addr_0x0056d220                          // 0x0056da44    e8d7f7ffff
                         pop                edi                                           // 0x0056da49    5f
                         {disp8} mov        byte ptr [esi + 0x40], 0x00                   // 0x0056da4a    c6464000
                         pop                esi                                           // 0x0056da4e    5e
                         pop                ebx                                           // 0x0056da4f    5b
                         add                esp, 0x0000008c                               // 0x0056da50    81c48c000000
                         ret                0x0018                                        // 0x0056da56    c21800
                         {disp32} mov       ecx, dword ptr [esp + 0x0000009c]             // 0x0056da59    8b8c249c000000
                         mov                edx, dword ptr [ecx]                          // 0x0056da60    8b11
                         call               dword ptr [edx + 0x20]                        // 0x0056da62    ff5220
                         pop                edi                                           // 0x0056da65    5f
                         pop                esi                                           // 0x0056da66    5e
                         pop                ebx                                           // 0x0056da67    5b
                         add                esp, 0x0000008c                               // 0x0056da68    81c48c000000
                         ret                0x0018                                        // 0x0056da6e    c21800
                         {disp32} mov       edi, dword ptr [esp + 0x000000a8]             // 0x0056da71    8bbc24a8000000
                         {disp32} mov       esi, dword ptr [esp + 0x0000009c]             // 0x0056da78    8bb4249c000000
                         xor.s              ebx, ebx                                      // 0x0056da7f    33db
                         cmp.s              edi, ebx                                      // 0x0056da81    3bfb
                         {disp8} je         _jmp_addr_0x0056daac                          // 0x0056da83    7427
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0056da85    8b4718
                         cmp                eax, 0x000008fc                               // 0x0056da88    3dfc080000
                         {disp8} je         _jmp_addr_0x0056daa7                          // 0x0056da8d    7418
                         {disp8} jle        _jmp_addr_0x0056daac                          // 0x0056da8f    7e1b
                         cmp                eax, 0x00000901                               // 0x0056da91    3d01090000
                         {disp8} jg         _jmp_addr_0x0056daac                          // 0x0056da96    7f14
                         add                eax, 0xfffff704                               // 0x0056da98    0504f7ffff
                         push               eax                                           // 0x0056da9d    50
                         mov.s              ecx, esi                                      // 0x0056da9e    8bce
                         call               _jmp_addr_0x0056d270                          // 0x0056daa0    e8cbf7ffff
                         {disp8} jmp        _jmp_addr_0x0056daac                          // 0x0056daa5    eb05
_jmp_addr_0x0056daa7:    call               _jmp_addr_0x00513640                          // 0x0056daa7    e8945bfaff
_jmp_addr_0x0056daac:    cmp                edi, dword ptr [esi + 0x30]                   // 0x0056daac    3b7e30
                         {disp8} jne        _jmp_addr_0x0056dab6                          // 0x0056daaf    7505
                         call               _jmp_addr_0x00513640                          // 0x0056dab1    e88a5bfaff
_jmp_addr_0x0056dab6:    {disp8} mov        eax, dword ptr [esi + 0x38]                   // 0x0056dab6    8b4638
                         cmp.s              edi, eax                                      // 0x0056dab9    3bf8
                         {disp8} jne        _jmp_addr_0x0056dad2                          // 0x0056dabb    7515
                         {disp8} mov        eax, dword ptr [esi + 0x3c]                   // 0x0056dabd    8b463c
                         pop                edi                                           // 0x0056dac0    5f
                         pop                esi                                           // 0x0056dac1    5e
                         {disp32} mov       dword ptr [eax + 0x00000248], ebx             // 0x0056dac2    899848020000
                         pop                ebx                                           // 0x0056dac8    5b
                         add                esp, 0x0000008c                               // 0x0056dac9    81c48c000000
                         ret                0x0018                                        // 0x0056dacf    c21800
_jmp_addr_0x0056dad2:    cmp                edi, dword ptr [esi + 0x3c]                   // 0x0056dad2    3b7e3c
                         {disp8} jne        _jmp_addr_0x0056dae9                          // 0x0056dad5    7512
                         pop                edi                                           // 0x0056dad7    5f
                         pop                esi                                           // 0x0056dad8    5e
                         {disp32} mov       dword ptr [eax + 0x00000248], ebx             // 0x0056dad9    899848020000
                         pop                ebx                                           // 0x0056dadf    5b
                         add                esp, 0x0000008c                               // 0x0056dae0    81c48c000000
                         ret                0x0018                                        // 0x0056dae6    c21800
_jmp_addr_0x0056dae9:    {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x0056dae9    8b4634
                         cmp.s              edi, eax                                      // 0x0056daec    3bf8
                         {disp32} jne       _jmp_addr_0x0056e0ea                          // 0x0056daee    0f85f6050000
                         {disp32} mov       eax, dword ptr [eax + 0x00000248]             // 0x0056daf4    8b8048020000
                         cmp.s              eax, ebx                                      // 0x0056dafa    3bc3
                         {disp32} jl        _jmp_addr_0x0056e0ea                          // 0x0056dafc    0f8ce8050000
                         cmp                eax, dword ptr [esi + 0x68]                   // 0x0056db02    3b4668
                         {disp32} je        _jmp_addr_0x0056e0ea                          // 0x0056db05    0f84df050000
                         push               ebx                                           // 0x0056db0b    53
                         push               eax                                           // 0x0056db0c    50
                         mov.s              ecx, esi                                      // 0x0056db0d    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056db0f    e88cd1ffff
                         pop                edi                                           // 0x0056db14    5f
                         pop                esi                                           // 0x0056db15    5e
                         pop                ebx                                           // 0x0056db16    5b
                         add                esp, 0x0000008c                               // 0x0056db17    81c48c000000
                         ret                0x0018                                        // 0x0056db1d    c21800
                         {disp32} mov       esi, dword ptr [data_bytes + 0x2078]          // 0x0056db20    8b3578809c00
                         {disp32} mov       ecx, dword ptr [esp + 0x0000009c]             // 0x0056db26    8b8c249c000000
                         push               0x1                                           // 0x0056db2d    6a01
                         push               0x1                                           // 0x0056db2f    6a01
                         mov.s              eax, esi                                      // 0x0056db31    8bc6
                         cdq                                                              // 0x0056db33    99
                         sub.s              eax, edx                                      // 0x0056db34    2bc2
                         push               0x00202020                                    // 0x0056db36    6820202000
                         push               0x00202020                                    // 0x0056db3b    6820202000
                         sar                eax, 1                                        // 0x0056db40    d1f8
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x0056db42    a378809c00
                         {disp8} mov        eax, dword ptr [ecx + 0x2c]                   // 0x0056db47    8b412c
                         {disp8} mov        edx, dword ptr [eax + 0x14]                   // 0x0056db4a    8b5014
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x0056db4d    8b4810
                         push               0x00202020                                    // 0x0056db50    6820202000
                         push               0x00202020                                    // 0x0056db55    6820202000
                         push               edx                                           // 0x0056db5a    52
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x0056db5b    8b500c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056db5e    8b4008
                         push               ecx                                           // 0x0056db61    51
                         push               edx                                           // 0x0056db62    52
                         push               eax                                           // 0x0056db63    50
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0056db64    e85757eaff
                         add                esp, 0x28                                     // 0x0056db69    83c428
                         pop                edi                                           // 0x0056db6c    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2078], esi          // 0x0056db6d    893578809c00
                         pop                esi                                           // 0x0056db73    5e
                         pop                ebx                                           // 0x0056db74    5b
                         add                esp, 0x0000008c                               // 0x0056db75    81c48c000000
                         ret                0x0018                                        // 0x0056db7b    c21800
                         {disp32} mov       ebx, dword ptr [esp + 0x0000009c]             // 0x0056db7e    8b9c249c000000
                         cmp                dword ptr [ebx + 0x10], 0x02                  // 0x0056db85    837b1002
                         {disp32} jne       _jmp_addr_0x0056e0ea                          // 0x0056db89    0f855b050000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]        // 0x0056db8f    8b0db81dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]        // 0x0056db95    8b15bc1dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]        // 0x0056db9b    a1c01dea00
                         {disp32} mov       dword ptr [esp + 0x0000008c], ecx             // 0x0056dba0    898c248c000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc4]        // 0x0056dba7    8b0dc41dea00
                         {disp32} mov       dword ptr [esp + 0x00000090], edx             // 0x0056dbad    89942490000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc8]        // 0x0056dbb4    8b15c81dea00
                         {disp32} mov       dword ptr [esp + 0x00000094], eax             // 0x0056dbba    89842494000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdcc]        // 0x0056dbc1    a1cc1dea00
                         push               ebp                                           // 0x0056dbc6    55
                         {disp8} mov        dword ptr [esp + 0x78], ecx                   // 0x0056dbc7    894c2478
                         {disp8} mov        dword ptr [esp + 0x7c], edx                   // 0x0056dbcb    8954247c
                         {disp32} mov       dword ptr [esp + 0x00000080], eax             // 0x0056dbcf    89842480000000
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0056dbd6    ff15c4918a00
                         xor.s              edi, edi                                      // 0x0056dbdc    33ff
                         and                eax, 0x00001fff                               // 0x0056dbde    25ff1f0000
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x0056dbe3    89442444
                         {disp8} mov        dword ptr [esp + 0x48], edi                   // 0x0056dbe7    897c2448
                         {disp8} fild       qword ptr [esp + 0x44]                        // 0x0056dbeb    df6c2444
                         {disp8} lea        edx, dword ptr [esp + 0x6c]                   // 0x0056dbef    8d54246c
                         {disp32} lea       ecx, dword ptr [esp + 0x00000084]             // 0x0056dbf3    8d8c2484000000
                         {disp8} mov        dword ptr [esp + 0x6c], edi                   // 0x0056dbfa    897c246c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x56f38]             // 0x0056dbfe    d80d38ff8f00
                         {disp8} mov        dword ptr [esp + 0x70], 0x41a00000            // 0x0056dc04    c74424700000a041
                         {disp8} mov        dword ptr [esp + 0x74], edi                   // 0x0056dc0c    897c2474
                         {disp32} mov       dword ptr [esp + 0x00000088], 0x42200000      // 0x0056dc10    c784248800000000002042
                         fld                st(0)                                         // 0x0056dc1b    d9c0
                         fcos                                                             // 0x0056dc1d    d9ff
                         {disp32} fmul      qword ptr [rdata_bytes + 0x56f30]             // 0x0056dc1f    dc0d30ff8f00
                         {disp32} fstp      dword ptr [esp + 0x00000084]                  // 0x0056dc25    d99c2484000000
                         fsin                                                             // 0x0056dc2c    d9fe
                         {disp32} fmul      qword ptr [rdata_bytes + 0x56f30]             // 0x0056dc2e    dc0d30ff8f00
                         {disp32} fstp      dword ptr [esp + 0x0000008c]                  // 0x0056dc34    d99c248c000000
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x0056dc3b    e8e0bc2a00
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0056dc40    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0056dc45    8b08
                         push               edi                                           // 0x0056dc47    57
                         push               0x3f800000                                    // 0x0056dc48    680000803f
                         push               edi                                           // 0x0056dc4d    57
                         push               0x2                                           // 0x0056dc4e    6a02
                         push               edi                                           // 0x0056dc50    57
                         push               edi                                           // 0x0056dc51    57
                         push               eax                                           // 0x0056dc52    50
                         call               dword ptr [ecx + 0x28]                        // 0x0056dc53    ff5128
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2078]          // 0x0056dc56    a178809c00
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x0056dc5b    89442444
                         cdq                                                              // 0x0056dc5f    99
                         sub.s              eax, edx                                      // 0x0056dc60    2bc2
                         sar                eax, 1                                        // 0x0056dc62    d1f8
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x0056dc64    a378809c00
                         {disp8} mov        edx, dword ptr [ebx + 0x6c]                   // 0x0056dc69    8b536c
                         {disp8} mov        eax, dword ptr [ebx + 0x4c]                   // 0x0056dc6c    8b434c
                         {disp8} mov        ebx, dword ptr [eax + 0x0c]                   // 0x0056dc6f    8b580c
                         {disp8} mov        ebp, dword ptr [eax + 0x14]                   // 0x0056dc72    8b6814
                         xor.s              ecx, ecx                                      // 0x0056dc75    33c9
                         mov                cx, word ptr [edx]                            // 0x0056dc77    668b0a
                         mov                eax, 0x00000032                               // 0x0056dc7a    b832000000
                         mov                esi, 0x00000028                               // 0x0056dc7f    be28000000
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x0056dc84    89742424
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x0056dc88    895c2440
                         {disp8} mov        dword ptr [esp + 0x38], edi                   // 0x0056dc8c    897c2438
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x0056dc90    897c2434
                         sub.s              eax, ecx                                      // 0x0056dc94    2bc1
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0056dc96    8d0480
                         shl                eax, 1                                        // 0x0056dc99    d1e0
                         cdq                                                              // 0x0056dc9b    99
                         idiv               ecx                                           // 0x0056dc9c    f7f9
                         cmp                ecx, 0x03                                     // 0x0056dc9e    83f903
                         {disp8} mov        dword ptr [esp + 0x5c], ecx                   // 0x0056dca1    894c245c
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0056dca5    89442428
                         {disp8} jl         _jmp_addr_0x0056dcd4                          // 0x0056dca9    7c29
                         mov.s              eax, ebp                                      // 0x0056dcab    8bc5
                         sub.s              eax, ebx                                      // 0x0056dcad    2bc3
                         cdq                                                              // 0x0056dcaf    99
                         sub.s              eax, edx                                      // 0x0056dcb0    2bc2
                         sar                eax, 1                                        // 0x0056dcb2    d1f8
                         add                eax, 0x05                                     // 0x0056dcb4    83c005
                         cmp                ecx, 0x03                                     // 0x0056dcb7    83f903
                         {disp8} mov        dword ptr [esp + 0x28], 0x000000f0            // 0x0056dcba    c7442428f0000000
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0056dcc2    89442438
                         {disp8} lea        ebp, dword ptr [eax + ebx * 0x1 + -0x0a]      // 0x0056dcc6    8d6c18f6
                         {disp8} jne        _jmp_addr_0x0056dcd4                          // 0x0056dcca    7508
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000078            // 0x0056dccc    c744243478000000
_jmp_addr_0x0056dcd4:    test               ecx, ecx                                      // 0x0056dcd4    85c9
                         {disp8} mov        dword ptr [esp + 0x2c], edi                   // 0x0056dcd6    897c242c
                         {disp32} jle       _jmp_addr_0x0056e0cf                          // 0x0056dcda    0f8eef030000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0056dce0    8b442428
                         cdq                                                              // 0x0056dce4    99
                         sub.s              eax, edx                                      // 0x0056dce5    2bc2
                         sar                eax, 1                                        // 0x0056dce7    d1f8
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0056dce9    89442458
                         {disp8} jmp        _jmp_addr_0x0056dcf7                          // 0x0056dced    eb08
_jmp_addr_0x0056dcef:    {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x0056dcef    8b742424
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x0056dcf3    8b7c242c
_jmp_addr_0x0056dcf7:    cmp                edi, 0x02                                     // 0x0056dcf7    83ff02
                         {disp8} jne        _jmp_addr_0x0056dd15                          // 0x0056dcfa    7519
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0056dcfc    8b442438
                         add.s              ebx, eax                                      // 0x0056dd00    03d8
                         add.s              ebp, eax                                      // 0x0056dd02    03e8
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x0056dd04    8b442434
                         add                eax, 0x28                                     // 0x0056dd08    83c028
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x0056dd0b    895c2440
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0056dd0f    89442424
                         mov.s              esi, eax                                      // 0x0056dd13    8bf0
_jmp_addr_0x0056dd15:    lea                ecx, dword ptr [edi + edi * 0x4]              // 0x0056dd15    8d0cbf
                         lea                eax, dword ptr [edi + ecx * 0x8]              // 0x0056dd18    8d04cf
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x0056dd1b    8b7c2428
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0056dd1f    8d0440
                         push               0x1                                           // 0x0056dd22    6a01
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x0056dd24    8d14c0
                         {disp32} mov       eax, dword ptr [esp + 0x000000a4]             // 0x0056dd27    8b8424a4000000
                         {disp8} mov        ecx, dword ptr [eax + 0x6c]                   // 0x0056dd2e    8b486c
                         {disp8} mov        eax, dword ptr [ecx + edx * 0x4 + 0x04]       // 0x0056dd31    8b449104
                         push               0x1                                           // 0x0056dd35    6a01
                         push               eax                                           // 0x0056dd37    50
                         push               eax                                           // 0x0056dd38    50
                         push               eax                                           // 0x0056dd39    50
                         push               eax                                           // 0x0056dd3a    50
                         push               ebp                                           // 0x0056dd3b    55
                         lea                edx, dword ptr [edi + esi * 0x1]              // 0x0056dd3c    8d1437
                         push               edx                                           // 0x0056dd3f    52
                         push               ebx                                           // 0x0056dd40    53
                         push               esi                                           // 0x0056dd41    56
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0056dd42    e87955eaff
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]             // 0x0056dd47    8b842480000000
                         mov.s              ecx, ebp                                      // 0x0056dd4e    8bcd
                         sub.s              ecx, ebx                                      // 0x0056dd50    2bcb
                         {disp8} mov        dword ptr [esp + 0x58], ecx                   // 0x0056dd52    894c2458
                         {disp8} fild       dword ptr [esp + 0x58]                        // 0x0056dd56    db442458
                         add.s              eax, esi                                      // 0x0056dd5a    03c6
                         {disp8} mov        dword ptr [esp + 0x64], eax                   // 0x0056dd5c    89442464
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c844]             // 0x0056dd60    d80d44588c00
                         {disp8} fiadd      dword ptr [esp + 0x68]                        // 0x0056dd66    da442468
                         call               _jmp_addr_0x007a1400                          // 0x0056dd6a    e891362300
                         {disp8} lea        edx, dword ptr [esp + 0x58]                   // 0x0056dd6f    8d542458
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0056dd73    89442458
                         push               edx                                           // 0x0056dd77    52
                         {disp8} lea        eax, dword ptr [esp + 0x68]                   // 0x0056dd78    8d442468
                         push               eax                                           // 0x0056dd7c    50
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x0056dd7d    e8be3deaff
                         fstp               st(0)                                         // 0x0056dd82    ddd8
                         push               ebp                                           // 0x0056dd84    55
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056dd85    e8e640eaff
                         push               ebx                                           // 0x0056dd8a    53
                         mov.s              esi, eax                                      // 0x0056dd8b    8bf0
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056dd8d    e8de40eaff
                         push               edi                                           // 0x0056dd92    57
                         sub.s              esi, eax                                      // 0x0056dd93    2bf0
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056dd95    e8d640eaff
                         push               0x0                                           // 0x0056dd9a    6a00
                         mov.s              edi, eax                                      // 0x0056dd9c    8bf8
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056dd9e    e8cd40eaff
                         sub.s              edi, eax                                      // 0x0056dda3    2bf8
                         add                esp, 0x40                                     // 0x0056dda5    83c440
                         cmp.s              edi, esi                                      // 0x0056dda8    3bfe
                         {disp8} jge        _jmp_addr_0x0056ddbc                          // 0x0056ddaa    7d10
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0056ddac    8b4c2428
                         push               ecx                                           // 0x0056ddb0    51
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056ddb1    e8ba40eaff
                         mov.s              esi, eax                                      // 0x0056ddb6    8bf0
                         push               0x0                                           // 0x0056ddb8    6a00
                         {disp8} jmp        _jmp_addr_0x0056ddc5                          // 0x0056ddba    eb09
_jmp_addr_0x0056ddbc:    push               ebp                                           // 0x0056ddbc    55
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056ddbd    e8ae40eaff
                         mov.s              esi, eax                                      // 0x0056ddc2    8bf0
                         push               ebx                                           // 0x0056ddc4    53
_jmp_addr_0x0056ddc5:    call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056ddc5    e8a640eaff
                         sub.s              esi, eax                                      // 0x0056ddca    2bf0
                         add                esp, 0x08                                     // 0x0056ddcc    83c408
                         cmp                esi, 0x0a                                     // 0x0056ddcf    83fe0a
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x0056ddd2    89742414
                         {disp8} jge        _jmp_addr_0x0056dde0                          // 0x0056ddd6    7d08
                         {disp8} mov        dword ptr [esp + 0x14], 0x0000000a            // 0x0056ddd8    c74424140a000000
_jmp_addr_0x0056dde0:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056dde0    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00250538]             // 0x0056dde6    8b8138052500
                         test               eax, eax                                      // 0x0056ddec    85c0
                         {disp32} je        _jmp_addr_0x0056e0aa                          // 0x0056ddee    0f84b6020000
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0056ddf4    8b74242c
                         push               esi                                           // 0x0056ddf8    56
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0056ddf9    e8b22bfeff
                         test               eax, eax                                      // 0x0056ddfe    85c0
                         {disp32} je        _jmp_addr_0x0056e0aa                          // 0x0056de00    0f84a4020000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056de06    8b0d5c19d000
                         push               esi                                           // 0x0056de0c    56
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0056de0d    e89e2bfeff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000a4c]             // 0x0056de12    8b884c0a0000
                         test               ecx, ecx                                      // 0x0056de18    85c9
                         {disp32} je        _jmp_addr_0x0056e0aa                          // 0x0056de1a    0f848a020000
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0056de20    e82b9af0ff
                         mov.s              esi, eax                                      // 0x0056de25    8bf0
                         test               esi, esi                                      // 0x0056de27    85f6
                         {disp32} je        _jmp_addr_0x0056e0aa                          // 0x0056de29    0f847b020000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0056de2f    8b8e2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0056de35    8b01
                         mov                edx, 0x00000001                               // 0x0056de37    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x0056de3c    ff90a0000000
                         cmp                dword ptr [data_bytes + 0x50424c], 0x04       // 0x0056de42    833d4ca2ec0004
                         {disp8} je         _jmp_addr_0x0056de69                          // 0x0056de49    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0056de4b    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0056de50    8b08
                         push               0x4                                           // 0x0056de52    6a04
                         push               0x17                                          // 0x0056de54    6a17
                         push               eax                                           // 0x0056de56    50
                         call               dword ptr [ecx + 0x50]                        // 0x0056de57    ff5150
                         neg                eax                                           // 0x0056de5a    f7d8
                         sbb.s              eax, eax                                      // 0x0056de5c    1bc0
                         and                eax, 0xfffffffb                               // 0x0056de5e    83e0fb
                         add                eax, 0x04                                     // 0x0056de61    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x0056de64    a34ca2ec00
_jmp_addr_0x0056de69:    cmp                dword ptr [data_bytes + 0x504228], 0x01       // 0x0056de69    833d28a2ec0001
                         {disp8} je         _jmp_addr_0x0056de8e                          // 0x0056de70    741c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0056de72    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0056de77    8b10
                         push               0x1                                           // 0x0056de79    6a01
                         push               0xe                                           // 0x0056de7b    6a0e
                         push               eax                                           // 0x0056de7d    50
                         call               dword ptr [edx + 0x50]                        // 0x0056de7e    ff5250
                         neg                eax                                           // 0x0056de81    f7d8
                         sbb.s              eax, eax                                      // 0x0056de83    1bc0
                         and                eax, 0xfffffffe                               // 0x0056de85    83e0fe
                         inc                eax                                           // 0x0056de88    40
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x0056de89    a328a2ec00
_jmp_addr_0x0056de8e:    {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x0056de8e    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x0056de94    d80d402c8c00
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x0056de9a    d9542410
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x0056de9e    d81d2cb28a00
                         fnstsw             ax                                            // 0x0056dea4    dfe0
                         test               ah, 0x41                                      // 0x0056dea6    f6c441
                         {disp8} jne        _jmp_addr_0x0056deb7                          // 0x0056dea9    750c
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0056deab    db442414
                         {disp8} fdiv       dword ptr [esp + 0x10]                        // 0x0056deaf    d8742410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056deb3    d95c2410
_jmp_addr_0x0056deb7:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056deb7    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0056debb    d81d90a38a00
                         fnstsw             ax                                            // 0x0056dec1    dfe0
                         test               ah, 0x41                                      // 0x0056dec3    f6c441
                         {disp8} jne        _jmp_addr_0x0056ded6                          // 0x0056dec6    750e
                         {disp32} fld       dword ptr [rdata_bytes + 0x1e78c]             // 0x0056dec8    d9058c778c00
                         {disp8} fdiv       dword ptr [esp + 0x10]                        // 0x0056dece    d8742410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056ded2    d95c2410
_jmp_addr_0x0056ded6:    {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x0056ded6    66a15a50e800
                         push               0x00000258                                    // 0x0056dedc    6858020000
                         {disp8} mov        word ptr [esp + 0x64], ax                     // 0x0056dee1    6689442464
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056dee6    e8853feaff
                         push               0x0                                           // 0x0056deeb    6a00
                         mov.s              edi, eax                                      // 0x0056deed    8bf8
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x0056deef    e87c3feaff
                         {disp8} mov        ecx, dword ptr [esp + 0x68]                   // 0x0056def4    8b4c2468
                         sub.s              edi, eax                                      // 0x0056def8    2bf8
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056defa    897c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0056defe    db44241c
                         and                ecx, 0x0000ffff                               // 0x0056df02    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0056df08    894c241c
                         add                esp, 0x08                                     // 0x0056df0c    83c408
                         {disp8} fidiv      dword ptr [esp + 0x14]                        // 0x0056df0f    da742414
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0056df13    d81598a38a00
                         fnstsw             ax                                            // 0x0056df19    dfe0
                         test               ah, 0x40                                      // 0x0056df1b    f6c440
                         {disp8} jne        _jmp_addr_0x0056df2a                          // 0x0056df1e    750a
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056df20    d9442410
                         fdiv               st, st(1)                                     // 0x0056df24    d8f1
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056df26    d95c2410
_jmp_addr_0x0056df2a:    {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0056df2a    8b54243c
                         fstp               st(0)                                         // 0x0056df2e    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0056df30    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0056df34    8b442430
                         {disp8} mov        dword ptr [esp + 0x64], edx                   // 0x0056df38    89542464
                         push               ecx                                           // 0x0056df3c    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0056df3d    8d54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x0056df41    8d4c2468
                         {disp8} mov        dword ptr [esp + 0x6c], eax                   // 0x0056df45    8944246c
                         call               _jmp_addr_0x0081b370                          // 0x0056df49    e822d42a00
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0056df4e    d90598a38a00
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0056df54    d90598a38a00
                         {disp32} mov       edi, dword ptr [esi + 0x000047b8]             // 0x0056df5a    8bbeb8470000
                         test               edi, edi                                      // 0x0056df60    85ff
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0056df62    d90598a38a00
                         {disp32} mov       edx, dword ptr [esi + 0x000047f0]             // 0x0056df68    8b96f0470000
                         {disp8} fst        dword ptr [esp + 0x54]                        // 0x0056df6e    d9542454
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0056df72    89542410
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0056df76    897c2414
                         {disp32} jle       _jmp_addr_0x0056e0f6                          // 0x0056df7a    0f8e76010000
                         {disp8} lea        eax, dword ptr [edx + 0x28]                   // 0x0056df80    8d4228
                         mov.s              ecx, edi                                      // 0x0056df83    8bcf
_jmp_addr_0x0056df85:    fxch               st(2)                                         // 0x0056df85    d9ca
                         add                eax, 0x30                                     // 0x0056df87    83c030
                         dec                ecx                                           // 0x0056df8a    49
                         {disp8} fadd       dword ptr [eax + -0x34]                       // 0x0056df8b    d840cc
                         fxch               st(2)                                         // 0x0056df8e    d9ca
                         fxch               st(1)                                         // 0x0056df90    d9c9
                         {disp8} fadd       dword ptr [eax + -0x30]                       // 0x0056df92    d840d0
                         fxch               st(1)                                         // 0x0056df95    d9c9
                         {disp8} fadd       dword ptr [eax + -0x2c]                       // 0x0056df97    d840d4
                         {disp8} jne        _jmp_addr_0x0056df85                          // 0x0056df9a    75e9
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x0056df9c    d95c2454
_jmp_addr_0x0056dfa0:    test               edi, edi                                      // 0x0056dfa0    85ff
                         fstp               st(0)                                         // 0x0056dfa2    ddd8
                         {disp8} je         _jmp_addr_0x0056dfbc                          // 0x0056dfa4    7416
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0056dfa6    db442414
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0056dfaa    d83d90a38a00
                         fld                st(0)                                         // 0x0056dfb0    d9c0
                         fmulp              st(2), st                                     // 0x0056dfb2    deca
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x0056dfb4    d84c2454
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x0056dfb8    d95c2454
_jmp_addr_0x0056dfbc:    test               edi, edi                                      // 0x0056dfbc    85ff
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0056dfbe    d9442418
                         {disp8} mov        eax, dword ptr [esi + 0x7c]                   // 0x0056dfc2    8b467c
                         fsub               st, st(1)                                     // 0x0056dfc5    d8e1
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x0056dfc7    89442450
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0056dfcb    d95c2418
                         fstp               st(0)                                         // 0x0056dfcf    ddd8
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0056dfd1    d944241c
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x0056dfd5    d8642450
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0056dfd9    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0056dfdd    d9442420
                         {disp8} fsub       dword ptr [esp + 0x54]                        // 0x0056dfe1    d8642454
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0056dfe5    d95c2420
                         {disp8} jle        _jmp_addr_0x0056e014                          // 0x0056dfe9    7e29
                         {disp8} lea        eax, dword ptr [edx + 0x28]                   // 0x0056dfeb    8d4228
                         mov.s              ecx, edi                                      // 0x0056dfee    8bcf
_jmp_addr_0x0056dff0:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x0056dff0    d9442418
                         add                eax, 0x30                                     // 0x0056dff4    83c030
                         dec                ecx                                           // 0x0056dff7    49
                         {disp8} fadd       dword ptr [eax + -0x34]                       // 0x0056dff8    d840cc
                         {disp8} fstp       dword ptr [eax + -0x34]                       // 0x0056dffb    d958cc
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0056dffe    d944241c
                         {disp8} fadd       dword ptr [eax + -0x30]                       // 0x0056e002    d840d0
                         {disp8} fstp       dword ptr [eax + -0x30]                       // 0x0056e005    d958d0
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0056e008    d9442420
                         {disp8} fadd       dword ptr [eax + -0x2c]                       // 0x0056e00c    d840d4
                         {disp8} fstp       dword ptr [eax + -0x2c]                       // 0x0056e00f    d958d4
                         {disp8} jne        _jmp_addr_0x0056dff0                          // 0x0056e012    75dc
_jmp_addr_0x0056e014:    {disp32} mov       eax, dword ptr [esi + 0x0000482c]             // 0x0056e014    8b862c480000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0056e01a    d9442418
                         {disp8} fadd       dword ptr [eax + 0x38]                        // 0x0056e01e    d84038
                         mov.s              ecx, esi                                      // 0x0056e021    8bce
                         {disp8} fstp       dword ptr [eax + 0x38]                        // 0x0056e023    d95838
                         {disp32} mov       eax, dword ptr [esi + 0x0000482c]             // 0x0056e026    8b862c480000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0056e02c    d944241c
                         {disp8} fadd       dword ptr [eax + 0x3c]                        // 0x0056e030    d8403c
                         {disp8} fstp       dword ptr [eax + 0x3c]                        // 0x0056e033    d9583c
                         {disp32} mov       eax, dword ptr [esi + 0x0000482c]             // 0x0056e036    8b862c480000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0056e03c    d9442420
                         {disp8} fadd       dword ptr [eax + 0x40]                        // 0x0056e040    d84040
                         {disp8} fstp       dword ptr [eax + 0x40]                        // 0x0056e043    d95840
                         call               _jmp_addr_0x0048e260                          // 0x0056e046    e81502f2ff
                         test               edi, edi                                      // 0x0056e04b    85ff
                         {disp8} jle        _jmp_addr_0x0056e07a                          // 0x0056e04d    7e2b
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0056e04f    8b4c2410
                         {disp8} lea        eax, dword ptr [ecx + 0x28]                   // 0x0056e053    8d4128
_jmp_addr_0x0056e056:    {disp8} fld        dword ptr [eax + -0x04]                       // 0x0056e056    d940fc
                         add                eax, 0x30                                     // 0x0056e059    83c030
                         dec                edi                                           // 0x0056e05c    4f
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0056e05d    d8642418
                         {disp8} fstp       dword ptr [eax + -0x34]                       // 0x0056e061    d958cc
                         {disp8} fld        dword ptr [eax + -0x30]                       // 0x0056e064    d940d0
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x0056e067    d864241c
                         {disp8} fstp       dword ptr [eax + -0x30]                       // 0x0056e06b    d958d0
                         {disp8} fld        dword ptr [eax + -0x2c]                       // 0x0056e06e    d940d4
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0056e071    d8642420
                         {disp8} fstp       dword ptr [eax + -0x2c]                       // 0x0056e075    d958d4
                         {disp8} jne        _jmp_addr_0x0056e056                          // 0x0056e078    75dc
_jmp_addr_0x0056e07a:    {disp32} mov       eax, dword ptr [esi + 0x0000482c]             // 0x0056e07a    8b862c480000
                         {disp8} fld        dword ptr [eax + 0x38]                        // 0x0056e080    d94038
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0056e083    d8642418
                         {disp8} fstp       dword ptr [eax + 0x38]                        // 0x0056e087    d95838
                         {disp32} mov       eax, dword ptr [esi + 0x0000482c]             // 0x0056e08a    8b862c480000
                         {disp8} fld        dword ptr [eax + 0x3c]                        // 0x0056e090    d9403c
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x0056e093    d864241c
                         {disp8} fstp       dword ptr [eax + 0x3c]                        // 0x0056e097    d9583c
                         {disp32} mov       esi, dword ptr [esi + 0x0000482c]             // 0x0056e09a    8bb62c480000
                         {disp8} fld        dword ptr [esi + 0x40]                        // 0x0056e0a0    d94640
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0056e0a3    d8642420
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x0056e0a7    d95e40
_jmp_addr_0x0056e0aa:    {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0056e0aa    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0056e0ae    8b442428
                         {disp8} lea        ecx, dword ptr [edx + eax * 0x1 + 0x0a]       // 0x0056e0b2    8d4c020a
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0056e0b6    8b44242c
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0056e0ba    894c2424
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                   // 0x0056e0be    8b4c245c
                         inc                eax                                           // 0x0056e0c2    40
                         cmp.s              eax, ecx                                      // 0x0056e0c3    3bc1
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0056e0c5    8944242c
                         {disp32} jl        _jmp_addr_0x0056dcef                          // 0x0056e0c9    0f8c20fcffff
_jmp_addr_0x0056e0cf:    {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x0056e0cf    8b542444
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edx          // 0x0056e0d3    891578809c00
                         {disp8} lea        edx, dword ptr [esp + 0x78]                   // 0x0056e0d9    8d542478
                         {disp32} lea       ecx, dword ptr [esp + 0x00000090]             // 0x0056e0dd    8d8c2490000000
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x0056e0e4    e837b82a00
                         pop                ebp                                           // 0x0056e0e9    5d
_jmp_addr_0x0056e0ea:    pop                edi                                           // 0x0056e0ea    5f
                         pop                esi                                           // 0x0056e0eb    5e
                         pop                ebx                                           // 0x0056e0ec    5b
                         add                esp, 0x0000008c                               // 0x0056e0ed    81c48c000000
                         ret                0x0018                                        // 0x0056e0f3    c21800
_jmp_addr_0x0056e0f6:    fstp               st(0)                                         // 0x0056e0f6    ddd8
                         {disp32} jmp       _jmp_addr_0x0056dfa0                          // 0x0056e0f8    e9a3feffff

// Snippet: db, [0x0056e0fd, 0x0056e100)
.byte 0x8d, 0x49, 0x00            // 0x0056e0fd

// Snippet: jmptbl, [0x0056e100, 0x0056e11c)
.byte 0x25, 0xda, 0x56, 0x00      // 0x0056e100
.byte 0x71, 0xda, 0x56, 0x00      // 0x0056e104
.byte 0x59, 0xda, 0x56, 0x00      // 0x0056e108
.byte 0x3b, 0xda, 0x56, 0x00      // 0x0056e10c
.byte 0x20, 0xdb, 0x56, 0x00      // 0x0056e110
.byte 0x7e, 0xdb, 0x56, 0x00      // 0x0056e114
.byte 0xea, 0xe0, 0x56, 0x00      // 0x0056e118

// Snippet: ijmptbl, [0x0056e11c, 0x0056e12b)
.byte 0x00, 0x01, 0x06, 0x06      // 0x0056e11c
.byte 0x06, 0x06, 0x02, 0x03      // 0x0056e120
.byte 0x06, 0x06, 0x06, 0x06      // 0x0056e124
.byte 0x06, 0x04, 0x05            // 0x0056e128

// Snippet: db, [0x0056e12b, 0x0056e130)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0056e12b
.byte 0x90                        // 0x0056e12f

