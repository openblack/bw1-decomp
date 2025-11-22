.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00401140
.extern _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl
.extern _jmp_addr_0x00544b60
.extern _jmp_addr_0x00545680
.extern _jmp_addr_0x00545920
.extern _jmp_addr_0x00545970
.extern _jmp_addr_0x00545980
.extern _jmp_addr_0x00545990
.extern _jmp_addr_0x00545be0
.extern _jmp_addr_0x00545d60
.extern _jmp_addr_0x00545d80
.extern _jmp_addr_0x00545f00
.extern _jmp_addr_0x0076dc30
.extern _jmp_addr_0x0076e2d0
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007ace50
.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x007b7812
.extern _atexit
.extern _wcslen
.extern ??2@YAPAXI@Z
.extern _wcscmp
.extern _jmp_addr_0x007f43a0
.extern _jmp_addr_0x007f4570
.extern _jmp_addr_0x007f45d0
.extern _jmp_addr_0x007f45f0
.extern _jmp_addr_0x007f4710
.extern _jmp_addr_0x007f4740
.extern _jmp_addr_0x007f4750
.extern _jmp_addr_0x007f4780
.extern _jmp_addr_0x007f47b0
.extern _jmp_addr_0x007f47f0
.extern _jmp_addr_0x007f8a20
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0081c780
.extern _jmp_addr_0x00841170
.extern _jmp_addr_0x0086cb80
.extern _jmp_IMM32_DLL__ImmAssociateContext
.extern _jmp_IMM32_DLL__ImmGetProperty
.extern _jmp_IMM32_DLL__ImmCreateContext
.extern _jmp_IMM32_DLL__ImmGetDescriptionA

.globl _jmp_addr_0x007f5450
.globl _jmp_addr_0x007f5600
.globl _jmp_addr_0x007f5670
.globl _jmp_addr_0x007f57b0
.globl _jmp_addr_0x007f5c10
.globl _jmp_addr_0x007f5cc0
.globl _jmp_addr_0x007f5d20
.globl _jmp_addr_0x007f5db0
.globl _jmp_addr_0x007f5e20
.globl _jmp_addr_0x007f5e40
.globl _jmp_addr_0x007f5e70
.globl _jmp_addr_0x007f5e90
.globl _jmp_addr_0x007f5ef0
.globl _jmp_addr_0x007f5fe0
.globl _jmp_addr_0x007f6010
.globl _jmp_addr_0x007f64c0
.globl _jmp_addr_0x007f64e0
.globl _jmp_addr_0x007f66f0
.globl _jmp_addr_0x007f6730
.globl _jmp_addr_0x007f6780
.globl _jmp_addr_0x007f6bb0
.globl _jmp_addr_0x007f6e00
.globl _jmp_addr_0x007f6ee0
.globl _jmp_addr_0x007f6f00
.globl ??1FragMesh@@QAE@XZ
.globl _jmp_addr_0x007f7230
.globl _jmp_addr_0x007f7960
.globl _jmp_addr_0x007f7d40
.globl _jmp_addr_0x007f7e30
.globl _jmp_addr_0x007f8740
.globl _jmp_addr_0x007f8810

.globl _globl_ct_0x007f6dd0
.globl _globl_ct_0x007f6ea0
.globl _globl_ct_0x007f6ec0

start_0x007f5450_0x007f8970:
// Snippet: asm, [0x007f5450, 0x007f8958)
_jmp_addr_0x007f5450:    push               -0x1                                           // 0x007f5450    6aff
                         push               0x008a7c50                                     // 0x007f5452    68507c8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f5457    64a100000000
                         push               eax                                            // 0x007f545d    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f545e    64892500000000
                         sub                esp, 0x30                                      // 0x007f5465    83ec30
                         {disp8} mov        eax, dword ptr [esp + 0x40]                    // 0x007f5468    8b442440
                         push               ebx                                            // 0x007f546c    53
                         mov.s              ebx, ecx                                       // 0x007f546d    8bd9
                         push               ebp                                            // 0x007f546f    55
                         push               eax                                            // 0x007f5470    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                    // 0x007f5471    8d4c2410
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                    // 0x007f5475    895c240c
                         call               _jmp_addr_0x007f45d0                           // 0x007f5479    e852f1ffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007f547e    8b442410
                         xor.s              ebp, ebp                                       // 0x007f5482    33ed
                         cmp.s              eax, ebp                                       // 0x007f5484    3bc5
                         {disp8} mov        dword ptr [esp + 0x40], ebp                    // 0x007f5486    896c2440
                         {disp8} jne        _jmp_addr_0x007f54a8                           // 0x007f548a    751c
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                    // 0x007f548c    8d4c240c
                         call               _jmp_addr_0x007f45f0                           // 0x007f5490    e85bf1ffff
                         pop                ebp                                            // 0x007f5495    5d
                         pop                ebx                                            // 0x007f5496    5b
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                    // 0x007f5497    8b4c2430
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f549b    64890d00000000
                         add                esp, 0x3c                                      // 0x007f54a2    83c43c
                         ret                0x0008                                         // 0x007f54a5    c20800
_jmp_addr_0x007f54a8:    {disp8} mov        cl, byte ptr [esp + 0x48]                      // 0x007f54a8    8a4c2448
                         push               esi                                            // 0x007f54ac    56
                         push               edi                                            // 0x007f54ad    57
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                    // 0x007f54ae    896c241c
                         {disp8} mov        byte ptr [esp + 0x2c], cl                      // 0x007f54b2    884c242c
                         {disp8} mov        dword ptr [esp + 0x30], ebp                    // 0x007f54b6    896c2430
                         {disp8} mov        dword ptr [esp + 0x34], ebp                    // 0x007f54ba    896c2434
                         {disp8} mov        dword ptr [esp + 0x38], ebp                    // 0x007f54be    896c2438
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000080c]              // 0x007f54c2    8b8b0c080000
                         {disp32} lea       edi, dword ptr [ebx + 0x00000808]              // 0x007f54c8    8dbb08080000
                         cmp.s              ecx, ebp                                       // 0x007f54ce    3bcd
                         {disp8} mov        byte ptr [esp + 0x48], 0x01                    // 0x007f54d0    c644244801
                         {disp8} je         _jmp_addr_0x007f54f8                           // 0x007f54d5    7421
                         {disp8} mov        esi, dword ptr [edi + 0x08]                    // 0x007f54d7    8b7708
                         mov                eax, 0x38e38e39                                // 0x007f54da    b8398ee338
                         mov.s              edx, esi                                       // 0x007f54df    8bd6
                         sub.s              edx, ecx                                       // 0x007f54e1    2bd1
                         imul               edx                                            // 0x007f54e3    f7ea
                         sar                edx, 3                                         // 0x007f54e5    c1fa03
                         mov.s              eax, edx                                       // 0x007f54e8    8bc2
                         shr                eax, 0x1f                                      // 0x007f54ea    c1e81f
                         add.s              edx, eax                                       // 0x007f54ed    03d0
                         cmp                edx, 0x20                                      // 0x007f54ef    83fa20
                         {disp8} jae        _jmp_addr_0x007f552c                           // 0x007f54f2    7338
                         cmp.s              ecx, ebp                                       // 0x007f54f4    3bcd
                         {disp8} jne        _jmp_addr_0x007f54fc                           // 0x007f54f6    7504
_jmp_addr_0x007f54f8:    xor.s              edx, edx                                       // 0x007f54f8    33d2
                         {disp8} jmp        _jmp_addr_0x007f5512                           // 0x007f54fa    eb16
_jmp_addr_0x007f54fc:    {disp8} mov        edx, dword ptr [edi + 0x08]                    // 0x007f54fc    8b5708
                         mov                eax, 0x38e38e39                                // 0x007f54ff    b8398ee338
                         sub.s              edx, ecx                                       // 0x007f5504    2bd1
                         imul               edx                                            // 0x007f5506    f7ea
                         sar                edx, 3                                         // 0x007f5508    c1fa03
                         mov.s              ecx, edx                                       // 0x007f550b    8bca
                         shr                ecx, 0x1f                                      // 0x007f550d    c1e91f
                         add.s              edx, ecx                                       // 0x007f5510    03d1
_jmp_addr_0x007f5512:    {disp8} mov        eax, dword ptr [edi + 0x08]                    // 0x007f5512    8b4708
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x007f5515    8d4c241c
                         push               ecx                                            // 0x007f5519    51
                         mov                ecx, 0x00000020                                // 0x007f551a    b920000000
                         sub.s              ecx, edx                                       // 0x007f551f    2bca
                         push               ecx                                            // 0x007f5521    51
                         push               eax                                            // 0x007f5522    50
                         mov.s              ecx, edi                                       // 0x007f5523    8bcf
                         call               _jmp_addr_0x007f6170                           // 0x007f5525    e8460c0000
                         {disp8} jmp        _jmp_addr_0x007f556d                           // 0x007f552a    eb41
_jmp_addr_0x007f552c:    {disp8} jbe        _jmp_addr_0x007f556d                           // 0x007f552c    763f
                         cmp.s              esi, esi                                       // 0x007f552e    3bf6
                         {disp32} lea       ebx, dword ptr [ecx + 0x00000480]              // 0x007f5530    8d9980040000
                         mov.s              ebp, esi                                       // 0x007f5536    8bee
                         {disp8} je         _jmp_addr_0x007f554c                           // 0x007f5538    7412
_jmp_addr_0x007f553a:    push               ebp                                            // 0x007f553a    55
                         mov.s              ecx, ebx                                       // 0x007f553b    8bcb
                         call               _jmp_addr_0x007f6960                           // 0x007f553d    e81e140000
                         add                ebp, 0x24                                      // 0x007f5542    83c524
                         add                ebx, 0x24                                      // 0x007f5545    83c324
                         cmp.s              ebp, esi                                       // 0x007f5548    3bee
                         {disp8} jne        _jmp_addr_0x007f553a                           // 0x007f554a    75ee
_jmp_addr_0x007f554c:    {disp8} mov        ebp, dword ptr [edi + 0x08]                    // 0x007f554c    8b6f08
                         mov.s              esi, ebx                                       // 0x007f554f    8bf3
                         cmp.s              ebx, ebp                                       // 0x007f5551    3bdd
                         {disp8} je         _jmp_addr_0x007f5564                           // 0x007f5553    740f
_jmp_addr_0x007f5555:    {disp8} lea        ecx, dword ptr [esi + 0x10]                    // 0x007f5555    8d4e10
                         call               _jmp_addr_0x007f5f70                           // 0x007f5558    e8130a0000
                         add                esi, 0x24                                      // 0x007f555d    83c624
                         cmp.s              esi, ebp                                       // 0x007f5560    3bf5
                         {disp8} jne        _jmp_addr_0x007f5555                           // 0x007f5562    75f1
_jmp_addr_0x007f5564:    {disp8} mov        dword ptr [edi + 0x08], ebx                    // 0x007f5564    895f08
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007f5567    8b5c2410
                         xor.s              ebp, ebp                                       // 0x007f556b    33ed
_jmp_addr_0x007f556d:    {disp8} mov        edi, dword ptr [esp + 0x34]                    // 0x007f556d    8b7c2434
                         {disp8} mov        esi, dword ptr [esp + 0x30]                    // 0x007f5571    8b742430
                         cmp.s              esi, edi                                       // 0x007f5575    3bf7
                         {disp8} mov        byte ptr [esp + 0x48], 0x00                    // 0x007f5577    c644244800
                         {disp8} je         _jmp_addr_0x007f5592                           // 0x007f557c    7414
_jmp_addr_0x007f557e:    push               0x1                                            // 0x007f557e    6a01
                         mov.s              ecx, esi                                       // 0x007f5580    8bce
                         call               _jmp_addr_0x00545920                           // 0x007f5582    e89903d5ff
                         add                esi, 0x10                                      // 0x007f5587    83c610
                         cmp.s              esi, edi                                       // 0x007f558a    3bf7
                         {disp8} jne        _jmp_addr_0x007f557e                           // 0x007f558c    75f0
                         {disp8} mov        esi, dword ptr [esp + 0x30]                    // 0x007f558e    8b742430
_jmp_addr_0x007f5592:    push               esi                                            // 0x007f5592    56
                         call               ??3@YAXPAX@Z                                   // 0x007f5593    e80099fbff
                         {disp8} mov        edi, dword ptr [esp + 0x58]                    // 0x007f5598    8b7c2458
                         add                esp, 0x04                                      // 0x007f559c    83c404
                         xor.s              esi, esi                                       // 0x007f559f    33f6
                         mov                ebp, 0x00000002                                // 0x007f55a1    bd02000000
_jmp_addr_0x007f55a6:    mov                edx, 0x00000001                                // 0x007f55a6    ba01000000
                         mov.s              ecx, esi                                       // 0x007f55ab    8bce
                         shl                edx, cl                                        // 0x007f55ad    d3e2
                         test               edi, edx                                       // 0x007f55af    85d7
                         {disp8} je         _jmp_addr_0x007f55cd                           // 0x007f55b1    741a
                         {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x007f55b3    8d442414
                         push               esi                                            // 0x007f55b7    56
                         push               eax                                            // 0x007f55b8    50
                         mov.s              ecx, ebx                                       // 0x007f55b9    8bcb
                         call               _jmp_addr_0x007f5930                           // 0x007f55bb    e870030000
                         test               eax, eax                                       // 0x007f55c0    85c0
                         {disp8} je         _jmp_addr_0x007f55cd                           // 0x007f55c2    7409
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                    // 0x007f55c4    896b04
                         {disp32} mov       dword ptr [ebx + 0x0000082c], esi              // 0x007f55c7    89b32c080000
_jmp_addr_0x007f55cd:    inc                esi                                            // 0x007f55cd    46
                         cmp                esi, 0x20                                      // 0x007f55ce    83fe20
                         .byte              0x72, 0xd3// {disp8} jb _jmp_addr_0x007f55a6   // 0x007f55d1    72d3
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                    // 0x007f55d3    8d4c2414
                         call               _jmp_addr_0x007f45f0                           // 0x007f55d7    e814f0ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                    // 0x007f55dc    8b4c2440
                         pop                edi                                            // 0x007f55e0    5f
                         pop                esi                                            // 0x007f55e1    5e
                         pop                ebp                                            // 0x007f55e2    5d
                         pop                ebx                                            // 0x007f55e3    5b
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f55e4    64890d00000000
                         add                esp, 0x3c                                      // 0x007f55eb    83c43c
                         ret                0x0008                                         // 0x007f55ee    c20800
                         nop                                                               // 0x007f55f1    90
                         nop                                                               // 0x007f55f2    90
                         nop                                                               // 0x007f55f3    90
                         nop                                                               // 0x007f55f4    90
                         nop                                                               // 0x007f55f5    90
                         nop                                                               // 0x007f55f6    90
                         nop                                                               // 0x007f55f7    90
                         nop                                                               // 0x007f55f8    90
                         nop                                                               // 0x007f55f9    90
                         nop                                                               // 0x007f55fa    90
                         nop                                                               // 0x007f55fb    90
                         nop                                                               // 0x007f55fc    90
                         nop                                                               // 0x007f55fd    90
                         nop                                                               // 0x007f55fe    90
                         nop                                                               // 0x007f55ff    90
_jmp_addr_0x007f5600:    push               ebx                                            // 0x007f5600    53
                         push               ebp                                            // 0x007f5601    55
                         push               esi                                            // 0x007f5602    56
                         push               edi                                            // 0x007f5603    57
                         mov.s              edi, ecx                                       // 0x007f5604    8bf9
                         xor.s              ebx, ebx                                       // 0x007f5606    33db
                         {disp8} mov        ebp, dword ptr [edi + 0x18]                    // 0x007f5608    8b6f18
                         {disp8} mov        esi, dword ptr [edi + 0x14]                    // 0x007f560b    8b7714
                         cmp.s              esi, ebp                                       // 0x007f560e    3bf5
                         {disp8} je         _jmp_addr_0x007f5647                           // 0x007f5610    7435
_jmp_addr_0x007f5612:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f5612    8b4e04
                         cmp.s              ecx, ebx                                       // 0x007f5615    3bcb
                         {disp8} je         _jmp_addr_0x007f5637                           // 0x007f5617    741e
                         {disp8} mov        al, byte ptr [ecx + -0x01]                     // 0x007f5619    8a41ff
                         cmp.s              al, bl                                         // 0x007f561c    3ac3
                         {disp8} je         _jmp_addr_0x007f562b                           // 0x007f561e    740b
                         cmp                al, -0x01                                      // 0x007f5620    3cff
                         {disp8} je         _jmp_addr_0x007f562b                           // 0x007f5622    7407
                         dec                al                                             // 0x007f5624    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                     // 0x007f5626    8841ff
                         {disp8} jmp        _jmp_addr_0x007f5637                           // 0x007f5629    eb0c
_jmp_addr_0x007f562b:    add                ecx, -0x2                                      // 0x007f562b    83c1fe
                         push               ecx                                            // 0x007f562e    51
                         call               ??3@YAXPAX@Z                                   // 0x007f562f    e86498fbff
                         add                esp, 0x04                                      // 0x007f5634    83c404
_jmp_addr_0x007f5637:    {disp8} mov        dword ptr [esi + 0x04], ebx                    // 0x007f5637    895e04
                         {disp8} mov        dword ptr [esi + 0x08], ebx                    // 0x007f563a    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                    // 0x007f563d    895e0c
                         add                esi, 0x10                                      // 0x007f5640    83c610
                         cmp.s              esi, ebp                                       // 0x007f5643    3bf5
                         {disp8} jne        _jmp_addr_0x007f5612                           // 0x007f5645    75cb
_jmp_addr_0x007f5647:    {disp8} mov        eax, dword ptr [edi + 0x14]                    // 0x007f5647    8b4714
                         push               eax                                            // 0x007f564a    50
                         call               ??3@YAXPAX@Z                                   // 0x007f564b    e84898fbff
                         add                esp, 0x04                                      // 0x007f5650    83c404
                         {disp8} mov        dword ptr [edi + 0x14], ebx                    // 0x007f5653    895f14
                         {disp8} mov        dword ptr [edi + 0x18], ebx                    // 0x007f5656    895f18
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                    // 0x007f5659    895f1c
                         pop                edi                                            // 0x007f565c    5f
                         pop                esi                                            // 0x007f565d    5e
                         pop                ebp                                            // 0x007f565e    5d
                         pop                ebx                                            // 0x007f565f    5b
                         ret                                                               // 0x007f5660    c3
                         nop                                                               // 0x007f5661    90
                         nop                                                               // 0x007f5662    90
                         nop                                                               // 0x007f5663    90
                         nop                                                               // 0x007f5664    90
                         nop                                                               // 0x007f5665    90
                         nop                                                               // 0x007f5666    90
                         nop                                                               // 0x007f5667    90
                         nop                                                               // 0x007f5668    90
                         nop                                                               // 0x007f5669    90
                         nop                                                               // 0x007f566a    90
                         nop                                                               // 0x007f566b    90
                         nop                                                               // 0x007f566c    90
                         nop                                                               // 0x007f566d    90
                         nop                                                               // 0x007f566e    90
                         nop                                                               // 0x007f566f    90
_jmp_addr_0x007f5670:    sub                esp, 0x10                                      // 0x007f5670    83ec10
                         mov.s              edx, ecx                                       // 0x007f5673    8bd1
                         push               esi                                            // 0x007f5675    56
                         xor.s              ecx, ecx                                       // 0x007f5676    33c9
                         {disp8} mov        dword ptr [esp + 0x04], edx                    // 0x007f5678    89542404
                         {disp32} mov       esi, dword ptr [edx + 0x0000080c]              // 0x007f567c    8bb20c080000
                         {disp32} mov       eax, dword ptr [edx + 0x00000810]              // 0x007f5682    8b8210080000
                         cmp.s              esi, eax                                       // 0x007f5688    3bf0
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x007f568a    894c240c
                         {disp8} mov        dword ptr [esp + 0x10], esi                    // 0x007f568e    89742410
                         {disp32} je        _jmp_addr_0x007f579c                           // 0x007f5692    0f8404010000
                         push               ebx                                            // 0x007f5698    53
                         {disp8} lea        eax, dword ptr [esi + 0x18]                    // 0x007f5699    8d4618
                         push               ebp                                            // 0x007f569c    55
                         push               edi                                            // 0x007f569d    57
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f569e    89442414
_jmp_addr_0x007f56a2:    {disp8} mov        ebx, dword ptr [esp + 0x28]                    // 0x007f56a2    8b5c2428
                         mov                edi, 0x00000001                                // 0x007f56a6    bf01000000
                         shl                edi, cl                                        // 0x007f56ab    d3e7
                         test               ebx, edi                                       // 0x007f56ad    85fb
                         {disp32} je        _jmp_addr_0x007f576a                           // 0x007f56af    0f84b5000000
                         cmp                ecx, dword ptr [edx + 0x0000082c]              // 0x007f56b5    3b8a2c080000
                         {disp8} jne        _jmp_addr_0x007f56c7                           // 0x007f56bb    750a
                         {disp32} mov       dword ptr [edx + 0x0000082c], 0xffffffff       // 0x007f56bd    c7822c080000ffffffff
_jmp_addr_0x007f56c7:    mov                edi, dword ptr [eax]                           // 0x007f56c7    8b38
                         {disp8} mov        ebp, dword ptr [eax + -0x04]                   // 0x007f56c9    8b68fc
                         mov.s              esi, edi                                       // 0x007f56cc    8bf7
                         cmp.s              esi, edi                                       // 0x007f56ce    3bf7
                         {disp8} je         _jmp_addr_0x007f56f4                           // 0x007f56d0    7422
_jmp_addr_0x007f56d2:    {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]         // 0x007f56d2    a1d4ec8d00
                         mov.s              ecx, ebp                                       // 0x007f56d7    8bcd
                         push               eax                                            // 0x007f56d9    50
                         push               0x0                                            // 0x007f56da    6a00
                         push               esi                                            // 0x007f56dc    56
                         call               _jmp_addr_0x00545f00                           // 0x007f56dd    e81e08d5ff
                         add                esi, 0x10                                      // 0x007f56e2    83c610
                         add                ebp, 0x10                                      // 0x007f56e5    83c510
                         cmp.s              esi, edi                                       // 0x007f56e8    3bf7
                         {disp8} jne        _jmp_addr_0x007f56d2                           // 0x007f56ea    75e6
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x007f56ec    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f56f0    8b442414
_jmp_addr_0x007f56f4:    mov                ebx, dword ptr [eax]                           // 0x007f56f4    8b18
                         cmp.s              ebp, ebx                                       // 0x007f56f6    3beb
                         {disp8} je         _jmp_addr_0x007f5760                           // 0x007f56f8    7466
                         {disp8} lea        esi, dword ptr [ebp + 0x04]                    // 0x007f56fa    8d7504
_jmp_addr_0x007f56fd:    mov                eax, dword ptr [esi]                           // 0x007f56fd    8b06
                         test               eax, eax                                       // 0x007f56ff    85c0
                         {disp8} je         _jmp_addr_0x007f5748                           // 0x007f5701    7445
                         {disp8} lea        edi, dword ptr [esi + -0x04]                   // 0x007f5703    8d7efc
                         push               eax                                            // 0x007f5706    50
                         mov.s              ecx, edi                                       // 0x007f5707    8bcf
                         call               _jmp_addr_0x00545970                           // 0x007f5709    e86202d5ff
                         cmp                byte ptr [eax], 0x00                           // 0x007f570e    803800
                         {disp8} je         _jmp_addr_0x007f5730                           // 0x007f5711    741d
                         mov                ecx, dword ptr [esi]                           // 0x007f5713    8b0e
                         push               ecx                                            // 0x007f5715    51
                         mov.s              ecx, edi                                       // 0x007f5716    8bcf
                         call               _jmp_addr_0x00545970                           // 0x007f5718    e85302d5ff
                         cmp                byte ptr [eax], -0x01                          // 0x007f571d    8038ff
                         {disp8} je         _jmp_addr_0x007f5730                           // 0x007f5720    740e
                         mov                edx, dword ptr [esi]                           // 0x007f5722    8b16
                         mov.s              ecx, edi                                       // 0x007f5724    8bcf
                         push               edx                                            // 0x007f5726    52
                         call               _jmp_addr_0x00545970                           // 0x007f5727    e84402d5ff
                         dec                byte ptr [eax]                                 // 0x007f572c    fe08
                         {disp8} jmp        _jmp_addr_0x007f5744                           // 0x007f572e    eb14
_jmp_addr_0x007f5730:    {disp8} mov        eax, dword ptr [esi + 0x08]                    // 0x007f5730    8b4608
                         mov                ecx, dword ptr [esi]                           // 0x007f5733    8b0e
                         add                eax, 0x02                                      // 0x007f5735    83c002
                         sub                ecx, 0x02                                      // 0x007f5738    83e902
                         push               eax                                            // 0x007f573b    50
                         push               ecx                                            // 0x007f573c    51
                         mov.s              ecx, edi                                       // 0x007f573d    8bcf
                         call               _jmp_addr_0x00545980                           // 0x007f573f    e83c02d5ff
_jmp_addr_0x007f5744:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x007f5744    8b542410
_jmp_addr_0x007f5748:    xor.s              eax, eax                                       // 0x007f5748    33c0
                         mov                dword ptr [esi], eax                           // 0x007f574a    8906
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007f574c    894604
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x007f574f    894608
                         add                esi, 0x10                                      // 0x007f5752    83c610
                         {disp8} lea        eax, dword ptr [esi + -0x04]                   // 0x007f5755    8d46fc
                         cmp.s              eax, ebx                                       // 0x007f5758    3bc3
                         {disp8} jne        _jmp_addr_0x007f56fd                           // 0x007f575a    75a1
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f575c    8b442414
_jmp_addr_0x007f5760:    {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x007f5760    8b74241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x007f5764    8b4c2418
                         mov                dword ptr [eax], ebp                           // 0x007f5768    8928
_jmp_addr_0x007f576a:    {disp32} mov       edi, dword ptr [edx + 0x00000810]              // 0x007f576a    8bba10080000
                         add                esi, 0x24                                      // 0x007f5770    83c624
                         inc                ecx                                            // 0x007f5773    41
                         add                eax, 0x24                                      // 0x007f5774    83c024
                         cmp.s              esi, edi                                       // 0x007f5777    3bf7
                         {disp8} mov        dword ptr [esp + 0x18], ecx                    // 0x007f5779    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], esi                    // 0x007f577d    8974241c
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f5781    89442414
                         {disp32} jne       _jmp_addr_0x007f56a2                           // 0x007f5785    0f8517ffffff
                         pop                edi                                            // 0x007f578b    5f
                         pop                ebp                                            // 0x007f578c    5d
                         pop                ebx                                            // 0x007f578d    5b
                         {disp8} mov        dword ptr [edx + 0x04], 0x00000001             // 0x007f578e    c7420401000000
                         pop                esi                                            // 0x007f5795    5e
                         add                esp, 0x10                                      // 0x007f5796    83c410
                         ret                0x0008                                         // 0x007f5799    c20800
_jmp_addr_0x007f579c:    {disp8} mov        dword ptr [edx + 0x04], 0x00000001             // 0x007f579c    c7420401000000
                         pop                esi                                            // 0x007f57a3    5e
                         add                esp, 0x10                                      // 0x007f57a4    83c410
                         ret                0x0008                                         // 0x007f57a7    c20800
                         nop                                                               // 0x007f57aa    90
                         nop                                                               // 0x007f57ab    90
                         nop                                                               // 0x007f57ac    90
                         nop                                                               // 0x007f57ad    90
                         nop                                                               // 0x007f57ae    90
                         nop                                                               // 0x007f57af    90
_jmp_addr_0x007f57b0:    push               -0x1                                           // 0x007f57b0    6aff
                         push               0x008a7c70                                     // 0x007f57b2    68707c8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f57b7    64a100000000
                         push               eax                                            // 0x007f57bd    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f57be    64892500000000
                         sub                esp, 0x30                                      // 0x007f57c5    83ec30
                         {disp8} mov        eax, dword ptr [esp + 0x40]                    // 0x007f57c8    8b442440
                         push               ebx                                            // 0x007f57cc    53
                         push               ebp                                            // 0x007f57cd    55
                         push               esi                                            // 0x007f57ce    56
                         mov.s              ebx, ecx                                       // 0x007f57cf    8bd9
                         push               edi                                            // 0x007f57d1    57
                         push               eax                                            // 0x007f57d2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x007f57d3    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x14], ebx                    // 0x007f57d7    895c2414
                         call               _jmp_addr_0x007f45d0                           // 0x007f57db    e8f0edffff
                         {disp8} mov        cl, byte ptr [esp + 0x50]                      // 0x007f57e0    8a4c2450
                         xor.s              ebp, ebp                                       // 0x007f57e4    33ed
                         {disp8} mov        dword ptr [esp + 0x48], ebp                    // 0x007f57e6    896c2448
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                    // 0x007f57ea    896c241c
                         {disp8} mov        byte ptr [esp + 0x2c], cl                      // 0x007f57ee    884c242c
                         {disp8} mov        dword ptr [esp + 0x30], ebp                    // 0x007f57f2    896c2430
                         {disp8} mov        dword ptr [esp + 0x34], ebp                    // 0x007f57f6    896c2434
                         {disp8} mov        dword ptr [esp + 0x38], ebp                    // 0x007f57fa    896c2438
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000080c]              // 0x007f57fe    8b8b0c080000
                         {disp32} lea       edi, dword ptr [ebx + 0x00000808]              // 0x007f5804    8dbb08080000
                         cmp.s              ecx, ebp                                       // 0x007f580a    3bcd
                         {disp8} mov        byte ptr [esp + 0x48], 0x01                    // 0x007f580c    c644244801
                         {disp8} je         _jmp_addr_0x007f5834                           // 0x007f5811    7421
                         {disp8} mov        esi, dword ptr [edi + 0x08]                    // 0x007f5813    8b7708
                         mov                eax, 0x38e38e39                                // 0x007f5816    b8398ee338
                         mov.s              edx, esi                                       // 0x007f581b    8bd6
                         sub.s              edx, ecx                                       // 0x007f581d    2bd1
                         imul               edx                                            // 0x007f581f    f7ea
                         sar                edx, 3                                         // 0x007f5821    c1fa03
                         mov.s              eax, edx                                       // 0x007f5824    8bc2
                         shr                eax, 0x1f                                      // 0x007f5826    c1e81f
                         add.s              edx, eax                                       // 0x007f5829    03d0
                         cmp                edx, 0x20                                      // 0x007f582b    83fa20
                         {disp8} jae        _jmp_addr_0x007f5868                           // 0x007f582e    7338
                         cmp.s              ecx, ebp                                       // 0x007f5830    3bcd
                         {disp8} jne        _jmp_addr_0x007f5838                           // 0x007f5832    7504
_jmp_addr_0x007f5834:    xor.s              edx, edx                                       // 0x007f5834    33d2
                         {disp8} jmp        _jmp_addr_0x007f584e                           // 0x007f5836    eb16
_jmp_addr_0x007f5838:    {disp8} mov        edx, dword ptr [edi + 0x08]                    // 0x007f5838    8b5708
                         mov                eax, 0x38e38e39                                // 0x007f583b    b8398ee338
                         sub.s              edx, ecx                                       // 0x007f5840    2bd1
                         imul               edx                                            // 0x007f5842    f7ea
                         sar                edx, 3                                         // 0x007f5844    c1fa03
                         mov.s              ecx, edx                                       // 0x007f5847    8bca
                         shr                ecx, 0x1f                                      // 0x007f5849    c1e91f
                         add.s              edx, ecx                                       // 0x007f584c    03d1
_jmp_addr_0x007f584e:    {disp8} mov        eax, dword ptr [edi + 0x08]                    // 0x007f584e    8b4708
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x007f5851    8d4c241c
                         push               ecx                                            // 0x007f5855    51
                         mov                ecx, 0x00000020                                // 0x007f5856    b920000000
                         sub.s              ecx, edx                                       // 0x007f585b    2bca
                         push               ecx                                            // 0x007f585d    51
                         push               eax                                            // 0x007f585e    50
                         mov.s              ecx, edi                                       // 0x007f585f    8bcf
                         call               _jmp_addr_0x007f6170                           // 0x007f5861    e80a090000
                         {disp8} jmp        _jmp_addr_0x007f58a9                           // 0x007f5866    eb41
_jmp_addr_0x007f5868:    {disp8} jbe        _jmp_addr_0x007f58a9                           // 0x007f5868    763f
                         cmp.s              esi, esi                                       // 0x007f586a    3bf6
                         {disp32} lea       ebx, dword ptr [ecx + 0x00000480]              // 0x007f586c    8d9980040000
                         mov.s              ebp, esi                                       // 0x007f5872    8bee
                         {disp8} je         _jmp_addr_0x007f5888                           // 0x007f5874    7412
_jmp_addr_0x007f5876:    push               ebp                                            // 0x007f5876    55
                         mov.s              ecx, ebx                                       // 0x007f5877    8bcb
                         call               _jmp_addr_0x007f6960                           // 0x007f5879    e8e2100000
                         add                ebp, 0x24                                      // 0x007f587e    83c524
                         add                ebx, 0x24                                      // 0x007f5881    83c324
                         cmp.s              ebp, esi                                       // 0x007f5884    3bee
                         {disp8} jne        _jmp_addr_0x007f5876                           // 0x007f5886    75ee
_jmp_addr_0x007f5888:    {disp8} mov        ebp, dword ptr [edi + 0x08]                    // 0x007f5888    8b6f08
                         mov.s              esi, ebx                                       // 0x007f588b    8bf3
                         cmp.s              ebx, ebp                                       // 0x007f588d    3bdd
                         {disp8} je         _jmp_addr_0x007f58a0                           // 0x007f588f    740f
_jmp_addr_0x007f5891:    {disp8} lea        ecx, dword ptr [esi + 0x10]                    // 0x007f5891    8d4e10
                         call               _jmp_addr_0x007f5f70                           // 0x007f5894    e8d7060000
                         add                esi, 0x24                                      // 0x007f5899    83c624
                         cmp.s              esi, ebp                                       // 0x007f589c    3bf5
                         {disp8} jne        _jmp_addr_0x007f5891                           // 0x007f589e    75f1
_jmp_addr_0x007f58a0:    {disp8} mov        dword ptr [edi + 0x08], ebx                    // 0x007f58a0    895f08
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007f58a3    8b5c2410
                         xor.s              ebp, ebp                                       // 0x007f58a7    33ed
_jmp_addr_0x007f58a9:    {disp8} mov        edi, dword ptr [esp + 0x34]                    // 0x007f58a9    8b7c2434
                         {disp8} mov        esi, dword ptr [esp + 0x30]                    // 0x007f58ad    8b742430
                         cmp.s              esi, edi                                       // 0x007f58b1    3bf7
                         {disp8} mov        byte ptr [esp + 0x48], 0x00                    // 0x007f58b3    c644244800
                         {disp8} je         _jmp_addr_0x007f58ce                           // 0x007f58b8    7414
_jmp_addr_0x007f58ba:    push               0x1                                            // 0x007f58ba    6a01
                         mov.s              ecx, esi                                       // 0x007f58bc    8bce
                         call               _jmp_addr_0x00545920                           // 0x007f58be    e85d00d5ff
                         add                esi, 0x10                                      // 0x007f58c3    83c610
                         cmp.s              esi, edi                                       // 0x007f58c6    3bf7
                         {disp8} jne        _jmp_addr_0x007f58ba                           // 0x007f58c8    75f0
                         {disp8} mov        esi, dword ptr [esp + 0x30]                    // 0x007f58ca    8b742430
_jmp_addr_0x007f58ce:    push               esi                                            // 0x007f58ce    56
                         call               ??3@YAXPAX@Z                                   // 0x007f58cf    e8c495fbff
                         {disp8} mov        edi, dword ptr [esp + 0x58]                    // 0x007f58d4    8b7c2458
                         add                esp, 0x04                                      // 0x007f58d8    83c404
                         xor.s              esi, esi                                       // 0x007f58db    33f6
_jmp_addr_0x007f58dd:    mov                edx, 0x00000001                                // 0x007f58dd    ba01000000
                         mov.s              ecx, esi                                       // 0x007f58e2    8bce
                         shl                edx, cl                                        // 0x007f58e4    d3e2
                         test               edi, edx                                       // 0x007f58e6    85d7
                         {disp8} je         _jmp_addr_0x007f58fb                           // 0x007f58e8    7411
                         {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x007f58ea    8d442414
                         push               esi                                            // 0x007f58ee    56
                         push               eax                                            // 0x007f58ef    50
                         mov.s              ecx, ebx                                       // 0x007f58f0    8bcb
                         call               _jmp_addr_0x007f5930                           // 0x007f58f2    e839000000
                         test               eax, eax                                       // 0x007f58f7    85c0
                         {disp8} jne        _jmp_addr_0x007f5903                           // 0x007f58f9    7508
_jmp_addr_0x007f58fb:    inc                esi                                            // 0x007f58fb    46
                         cmp                esi, 0x20                                      // 0x007f58fc    83fe20
                         .byte              0x72, 0xdc// {disp8} jb _jmp_addr_0x007f58dd   // 0x007f58ff    72dc
                         {disp8} jmp        _jmp_addr_0x007f5910                           // 0x007f5901    eb0d
_jmp_addr_0x007f5903:    {disp8} mov        dword ptr [ebx + 0x04], 0x00000002             // 0x007f5903    c7430402000000
                         {disp32} mov       dword ptr [ebx + 0x0000082c], esi              // 0x007f590a    89b32c080000
_jmp_addr_0x007f5910:    {disp8} lea        ecx, dword ptr [esp + 0x14]                    // 0x007f5910    8d4c2414
                         call               _jmp_addr_0x007f45f0                           // 0x007f5914    e8d7ecffff
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                    // 0x007f5919    8b4c2440
                         pop                edi                                            // 0x007f591d    5f
                         pop                esi                                            // 0x007f591e    5e
                         pop                ebp                                            // 0x007f591f    5d
                         pop                ebx                                            // 0x007f5920    5b
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f5921    64890d00000000
                         add                esp, 0x3c                                      // 0x007f5928    83c43c
                         ret                0x0008                                         // 0x007f592b    c20800
                         nop                                                               // 0x007f592e    90
                         nop                                                               // 0x007f592f    90
_jmp_addr_0x007f5930:    push               ebp                                            // 0x007f5930    55
                         mov.s              ebp, esp                                       // 0x007f5931    8bec
                         push               -0x1                                           // 0x007f5933    6aff
                         push               0x008a7c98                                     // 0x007f5935    68987c8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f593a    64a100000000
                         push               eax                                            // 0x007f5940    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f5941    64892500000000
                         sub                esp, 0x00000230                                // 0x007f5948    81ec30020000
                         push               ebx                                            // 0x007f594e    53
                         {disp8} mov        ebx, dword ptr [ebp + 0x0c]                    // 0x007f594f    8b5d0c
                         push               esi                                            // 0x007f5952    56
                         push               edi                                            // 0x007f5953    57
                         mov.s              edi, ecx                                       // 0x007f5954    8bf9
                         lea                esi, dword ptr [ebx + ebx * 0x8]               // 0x007f5956    8d34db
                         shl                esi, 2                                         // 0x007f5959    c1e602
                         {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f595c    8b870c080000
                         {disp8} mov        dword ptr [ebp + -0x10], 0x00000000            // 0x007f5962    c745f000000000
                         {disp8} mov        edx, dword ptr [esi + eax * 0x1 + 0x14]        // 0x007f5969    8b540614
                         {disp8} lea        ecx, dword ptr [esi + eax * 0x1 + 0x10]        // 0x007f596d    8d4c0610
                         {disp8} mov        eax, dword ptr [esi + eax * 0x1 + 0x18]        // 0x007f5971    8b440618
                         push               eax                                            // 0x007f5975    50
                         push               edx                                            // 0x007f5976    52
                         call               _jmp_addr_0x007f6020                           // 0x007f5977    e8a4060000
                         {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f597c    8b870c080000
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007f5982    8b4d08
                         push               0x0                                            // 0x007f5985    6a00
                         push               0x0                                            // 0x007f5987    6a00
                         mov                edx, dword ptr [esi + eax * 0x1]               // 0x007f5989    8b1406
                         push               ebx                                            // 0x007f598c    53
                         inc                edx                                            // 0x007f598d    42
                         mov                dword ptr [esi + eax * 0x1], edx               // 0x007f598e    891406
                         call               _jmp_addr_0x007f47f0                           // 0x007f5991    e85aeeffff
                         test               eax, eax                                       // 0x007f5996    85c0
                         {disp8} mov        dword ptr [ebp + -0x14], eax                   // 0x007f5998    8945ec
                         {disp32} je        _jmp_addr_0x007f5bf7                           // 0x007f599b    0f8456020000
                         push               eax                                            // 0x007f59a1    50
                         call               ??2@YAPAXI@Z                                   // 0x007f59a2    e8470bfdff
                         mov.s              ebx, eax                                       // 0x007f59a7    8bd8
                         add                esp, 0x04                                      // 0x007f59a9    83c404
                         test               ebx, ebx                                       // 0x007f59ac    85db
                         setne              byte ptr [ebp + -0x3c]                         // 0x007f59ae    0f9545c4
                         {disp8} mov        dword ptr [ebp + -0x38], ebx                   // 0x007f59b2    895dc8
                         {disp8} mov        eax, dword ptr [ebp + -0x14]                   // 0x007f59b5    8b45ec
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                    // 0x007f59b8    8b4d0c
                         push               eax                                            // 0x007f59bb    50
                         push               ebx                                            // 0x007f59bc    53
                         push               ecx                                            // 0x007f59bd    51
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007f59be    8b4d08
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000000            // 0x007f59c1    c745fc00000000
                         call               _jmp_addr_0x007f47f0                           // 0x007f59c8    e823eeffff
                         {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f59cd    8b870c080000
                         {disp8} mov        edx, dword ptr [ebx + 0x14]                    // 0x007f59d3    8b5314
                         {disp8} mov        dword ptr [ebp + 0x08], 0x00000000             // 0x007f59d6    c7450800000000
                         {disp8} mov        dword ptr [esi + eax * 0x1 + 0x04], edx        // 0x007f59dd    89540604
                         {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f59e1    8b870c080000
                         {disp8} mov        ecx, dword ptr [ebx + 0x0c]                    // 0x007f59e7    8b4b0c
                         {disp8} mov        dword ptr [esi + eax * 0x1 + 0x0c], ecx        // 0x007f59ea    894c060c
                         {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f59ee    8b870c080000
                         {disp8} mov        edx, dword ptr [ebx + 0x10]                    // 0x007f59f4    8b5310
                         {disp8} lea        ecx, dword ptr [ebx + 0x18]                    // 0x007f59f7    8d4b18
                         {disp8} mov        dword ptr [esi + eax * 0x1 + 0x08], edx        // 0x007f59fa    89540608
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                    // 0x007f59fe    8b4308
                         test               eax, eax                                       // 0x007f5a01    85c0
                         {disp32} jbe       _jmp_addr_0x007f5bc0                           // 0x007f5a03    0f86b7010000
                         {disp8} jmp        _jmp_addr_0x007f5a0e                           // 0x007f5a09    eb03
_jmp_addr_0x007f5a0b:    {disp8} mov        ecx, dword ptr [ebp + -0x14]                   // 0x007f5a0b    8b4dec
_jmp_addr_0x007f5a0e:    mov                eax, dword ptr [ecx]                           // 0x007f5a0e    8b01
                         push               0x00000100                                     // 0x007f5a10    6800010000
                         add.s              eax, ebx                                       // 0x007f5a15    03c3
                         add                ecx, 0x4                                       // 0x007f5a17    83c104
                         push               eax                                            // 0x007f5a1a    50
                         {disp32} lea       eax, dword ptr [ebp + -0x0000023c]             // 0x007f5a1b    8d85c4fdffff
                         push               eax                                            // 0x007f5a21    50
                         {disp8} mov        dword ptr [ebp + -0x14], ecx                   // 0x007f5a22    894dec
                         call               _jmp_addr_0x007f4570                           // 0x007f5a25    e846ebffff
                         add                esp, 0x0c                                      // 0x007f5a2a    83c40c
                         test               eax, eax                                       // 0x007f5a2d    85c0
                         {disp32} je        _jmp_addr_0x007f5b0b                           // 0x007f5a2f    0f84d6000000
                         {disp8} mov        cl, byte ptr [ebp + 0x0f]                      // 0x007f5a35    8a4d0f
                         push               0x0                                            // 0x007f5a38    6a00
                         {disp8} mov        byte ptr [ebp + -0x34], cl                     // 0x007f5a3a    884dcc
                         {disp8} lea        ecx, dword ptr [ebp + -0x34]                   // 0x007f5a3d    8d4dcc
                         call               _jmp_addr_0x00545920                           // 0x007f5a40    e8dbfed4ff
                         {disp32} lea       edx, dword ptr [ebp + -0x0000023c]             // 0x007f5a45    8d95c4fdffff
                         push               edx                                            // 0x007f5a4b    52
                         call               _wcslen                                        // 0x007f5a4c    e8110afdff
                         add                esp, 0x04                                      // 0x007f5a51    83c404
                         {disp8} lea        ecx, dword ptr [ebp + -0x34]                   // 0x007f5a54    8d4dcc
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f5a57    89450c
                         push               0x1                                            // 0x007f5a5a    6a01
                         push               eax                                            // 0x007f5a5c    50
                         call               _jmp_addr_0x00545990                           // 0x007f5a5d    e82effd4ff
                         test               al, al                                         // 0x007f5a62    84c0
                         {disp8} je         _jmp_addr_0x007f5a89                           // 0x007f5a64    7423
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007f5a66    8b450c
                         {disp8} mov        edx, dword ptr [ebp + -0x30]                   // 0x007f5a69    8b55d0
                         {disp32} lea       ecx, dword ptr [ebp + -0x0000023c]             // 0x007f5a6c    8d8dc4fdffff
                         push               eax                                            // 0x007f5a72    50
                         push               ecx                                            // 0x007f5a73    51
                         push               edx                                            // 0x007f5a74    52
                         call               _jmp_addr_0x00544b60                           // 0x007f5a75    e8e6f0d4ff
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007f5a7a    8b450c
                         add                esp, 0x0c                                      // 0x007f5a7d    83c40c
                         {disp8} lea        ecx, dword ptr [ebp + -0x34]                   // 0x007f5a80    8d4dcc
                         push               eax                                            // 0x007f5a83    50
                         call               _jmp_addr_0x00545d60                           // 0x007f5a84    e8d702d5ff
_jmp_addr_0x007f5a89:    {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f5a89    8b870c080000
                         {disp8} lea        edx, dword ptr [ebp + -0x34]                   // 0x007f5a8f    8d55cc
                         push               edx                                            // 0x007f5a92    52
                         push               0x1                                            // 0x007f5a93    6a01
                         {disp8} lea        ecx, dword ptr [esi + eax * 0x1 + 0x10]        // 0x007f5a95    8d4c0610
                         {disp8} mov        byte ptr [ebp + -0x04], 0x01                   // 0x007f5a99    c645fc01
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                    // 0x007f5a9d    8b4108
                         push               eax                                            // 0x007f5aa0    50
                         call               _jmp_addr_0x00545680                           // 0x007f5aa1    e8dafbd4ff
                         push               0x1                                            // 0x007f5aa6    6a01
                         {disp8} lea        ecx, dword ptr [ebp + -0x34]                   // 0x007f5aa8    8d4dcc
                         {disp8} mov        byte ptr [ebp + -0x04], 0x00                   // 0x007f5aab    c645fc00
                         call               _jmp_addr_0x00545920                           // 0x007f5aaf    e86cfed4ff
                         {disp32} lea       eax, dword ptr [ebp + -0x0000023c]             // 0x007f5ab4    8d85c4fdffff
                         push               eax                                            // 0x007f5aba    50
                         call               _wcslen                                        // 0x007f5abb    e8a209fdff
                         {disp32} lea       ecx, dword ptr [ebp + eax * 0x2 + -0x0000023c] // 0x007f5ac0    8d8c45c4fdffff
                         {disp32} lea       edx, dword ptr [ebp + -0x0000023c]             // 0x007f5ac7    8d95c4fdffff
                         add                esp, 0x04                                      // 0x007f5acd    83c404
                         {disp8} mov        dword ptr [ebp + 0x0c], ecx                    // 0x007f5ad0    894d0c
                         cmp                edx, dword ptr [ebp + 0x0c]                    // 0x007f5ad3    3b550c
                         {disp8} mov        ecx, dword ptr [ebp + -0x10]                   // 0x007f5ad6    8b4df0
                         {disp32} lea       eax, dword ptr [ebp + -0x0000023c]             // 0x007f5ad9    8d85c4fdffff
                         {disp8} je         _jmp_addr_0x007f5b03                           // 0x007f5adf    7422
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f5ae1    8b550c
                         {disp8} mov        dword ptr [ebp + -0x10], 0x00000001            // 0x007f5ae4    c745f001000000
_jmp_addr_0x007f5aeb:    {disp8} mov        dword ptr [ebp + 0x0c], ecx                    // 0x007f5aeb    894d0c
                         {disp8} mov        cl, byte ptr [ebp + -0x10]                     // 0x007f5aee    8a4df0
                         rol                dword ptr [ebp + 0xc], cl                      // 0x007f5af1    d3450c
                         xor.s              ecx, ecx                                       // 0x007f5af4    33c9
                         mov                cx, word ptr [eax]                             // 0x007f5af6    668b08
                         add                eax, 0x02                                      // 0x007f5af9    83c002
                         xor                ecx, dword ptr [ebp + 0x0c]                    // 0x007f5afc    334d0c
                         cmp.s              eax, edx                                       // 0x007f5aff    3bc2
                         {disp8} jne        _jmp_addr_0x007f5aeb                           // 0x007f5b01    75e8
_jmp_addr_0x007f5b03:    {disp8} mov        dword ptr [ebp + -0x10], ecx                   // 0x007f5b03    894df0
                         {disp32} jmp       _jmp_addr_0x007f5bae                           // 0x007f5b06    e9a3000000
_jmp_addr_0x007f5b0b:    {disp8} mov        dl, byte ptr [ebp + 0x0f]                      // 0x007f5b0b    8a550f
                         push               0x0                                            // 0x007f5b0e    6a00
                         {disp8} lea        ecx, dword ptr [ebp + -0x24]                   // 0x007f5b10    8d4ddc
                         {disp8} mov        byte ptr [ebp + -0x24], dl                     // 0x007f5b13    8855dc
                         call               _jmp_addr_0x00545920                           // 0x007f5b16    e805fed4ff
                         push               0x00c4cd30                                     // 0x007f5b1b    6830cdc400
                         call               _wcslen                                        // 0x007f5b20    e83d09fdff
                         add                esp, 0x04                                      // 0x007f5b25    83c404
                         {disp8} lea        ecx, dword ptr [ebp + -0x24]                   // 0x007f5b28    8d4ddc
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f5b2b    89450c
                         push               0x1                                            // 0x007f5b2e    6a01
                         push               eax                                            // 0x007f5b30    50
                         call               _jmp_addr_0x00545990                           // 0x007f5b31    e85afed4ff
                         test               al, al                                         // 0x007f5b36    84c0
                         {disp8} je         _jmp_addr_0x007f5b5b                           // 0x007f5b38    7421
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007f5b3a    8b450c
                         {disp8} mov        ecx, dword ptr [ebp + -0x20]                   // 0x007f5b3d    8b4de0
                         push               eax                                            // 0x007f5b40    50
                         push               0x00c4cd30                                     // 0x007f5b41    6830cdc400
                         push               ecx                                            // 0x007f5b46    51
                         call               _jmp_addr_0x00544b60                           // 0x007f5b47    e814f0d4ff
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f5b4c    8b550c
                         add                esp, 0x0c                                      // 0x007f5b4f    83c40c
                         {disp8} lea        ecx, dword ptr [ebp + -0x24]                   // 0x007f5b52    8d4ddc
                         push               edx                                            // 0x007f5b55    52
                         call               _jmp_addr_0x00545d60                           // 0x007f5b56    e80502d5ff
_jmp_addr_0x007f5b5b:    {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f5b5b    8b870c080000
                         {disp8} lea        edx, dword ptr [ebp + -0x24]                   // 0x007f5b61    8d55dc
                         push               edx                                            // 0x007f5b64    52
                         push               0x1                                            // 0x007f5b65    6a01
                         {disp8} lea        ecx, dword ptr [esi + eax * 0x1 + 0x10]        // 0x007f5b67    8d4c0610
                         {disp8} mov        byte ptr [ebp + -0x04], 0x02                   // 0x007f5b6b    c645fc02
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                    // 0x007f5b6f    8b4108
                         push               eax                                            // 0x007f5b72    50
                         call               _jmp_addr_0x00545680                           // 0x007f5b73    e808fbd4ff
                         {disp8} mov        ecx, dword ptr [ebp + -0x20]                   // 0x007f5b78    8b4de0
                         xor.s              edx, edx                                       // 0x007f5b7b    33d2
                         cmp.s              ecx, edx                                       // 0x007f5b7d    3bca
                         {disp8} mov        byte ptr [ebp + -0x04], 0x00                   // 0x007f5b7f    c645fc00
                         {disp8} je         _jmp_addr_0x007f5ba5                           // 0x007f5b83    7420
                         {disp8} mov        al, byte ptr [ecx + -0x01]                     // 0x007f5b85    8a41ff
                         test               al, al                                         // 0x007f5b88    84c0
                         {disp8} je         _jmp_addr_0x007f5b97                           // 0x007f5b8a    740b
                         cmp                al, -0x01                                      // 0x007f5b8c    3cff
                         {disp8} je         _jmp_addr_0x007f5b97                           // 0x007f5b8e    7407
                         dec                al                                             // 0x007f5b90    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                     // 0x007f5b92    8841ff
                         {disp8} jmp        _jmp_addr_0x007f5ba5                           // 0x007f5b95    eb0e
_jmp_addr_0x007f5b97:    add                ecx, -0x2                                      // 0x007f5b97    83c1fe
                         push               ecx                                            // 0x007f5b9a    51
                         call               ??3@YAXPAX@Z                                   // 0x007f5b9b    e8f892fbff
                         add                esp, 0x04                                      // 0x007f5ba0    83c404
                         xor.s              edx, edx                                       // 0x007f5ba3    33d2
_jmp_addr_0x007f5ba5:    {disp8} mov        dword ptr [ebp + -0x20], edx                   // 0x007f5ba5    8955e0
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                   // 0x007f5ba8    8955e4
                         {disp8} mov        dword ptr [ebp + -0x18], edx                   // 0x007f5bab    8955e8
_jmp_addr_0x007f5bae:    {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007f5bae    8b4508
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                    // 0x007f5bb1    8b4b08
                         inc                eax                                            // 0x007f5bb4    40
                         cmp.s              eax, ecx                                       // 0x007f5bb5    3bc1
                         {disp8} mov        dword ptr [ebp + 0x08], eax                    // 0x007f5bb7    894508
                         {disp32} jb        _jmp_addr_0x007f5a0b                           // 0x007f5bba    0f824bfeffff
_jmp_addr_0x007f5bc0:    {disp32} mov       eax, dword ptr [edi + 0x0000080c]              // 0x007f5bc0    8b870c080000
                         {disp8} mov        ecx, dword ptr [ebp + -0x10]                   // 0x007f5bc6    8b4df0
                         {disp8} mov        dword ptr [esi + eax * 0x1 + 0x20], ecx        // 0x007f5bc9    894c0620
                         {disp8} mov        al, byte ptr [ebp + -0x3c]                     // 0x007f5bcd    8a45c4
                         test               al, al                                         // 0x007f5bd0    84c0
                         mov                esi, 0x00000001                                // 0x007f5bd2    be01000000
                         {disp8} je         _jmp_addr_0x007f5be2                           // 0x007f5bd7    7409
                         push               ebx                                            // 0x007f5bd9    53
                         call               ??3@YAXPAX@Z                                   // 0x007f5bda    e8b992fbff
                         add                esp, 0x04                                      // 0x007f5bdf    83c404
_jmp_addr_0x007f5be2:    mov.s              eax, esi                                       // 0x007f5be2    8bc6
                         pop                edi                                            // 0x007f5be4    5f
                         pop                esi                                            // 0x007f5be5    5e
                         pop                ebx                                            // 0x007f5be6    5b
                         {disp8} mov        ecx, dword ptr [ebp + -0x0c]                   // 0x007f5be7    8b4df4
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f5bea    64890d00000000
                         mov.s              esp, ebp                                       // 0x007f5bf1    8be5
                         pop                ebp                                            // 0x007f5bf3    5d
                         ret                0x0008                                         // 0x007f5bf4    c20800
_jmp_addr_0x007f5bf7:    {disp8} mov        ecx, dword ptr [ebp + -0x0c]                   // 0x007f5bf7    8b4df4
                         pop                edi                                            // 0x007f5bfa    5f
                         pop                esi                                            // 0x007f5bfb    5e
                         xor.s              eax, eax                                       // 0x007f5bfc    33c0
                         pop                ebx                                            // 0x007f5bfe    5b
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f5bff    64890d00000000
                         mov.s              esp, ebp                                       // 0x007f5c06    8be5
                         pop                ebp                                            // 0x007f5c08    5d
                         ret                0x0008                                         // 0x007f5c09    c20800
                         nop                                                               // 0x007f5c0c    90
                         nop                                                               // 0x007f5c0d    90
                         nop                                                               // 0x007f5c0e    90
                         nop                                                               // 0x007f5c0f    90
_jmp_addr_0x007f5c10:    sub                esp, 0x08                                      // 0x007f5c10    83ec08
                         push               esi                                            // 0x007f5c13    56
                         mov.s              esi, ecx                                       // 0x007f5c14    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000820]              // 0x007f5c16    8b8620080000
                         test               eax, eax                                       // 0x007f5c1c    85c0
                         {disp8} je         _jmp_addr_0x007f5c2c                           // 0x007f5c1e    740c
                         mov                eax, 0x80004005                                // 0x007f5c20    b805400080
                         pop                esi                                            // 0x007f5c25    5e
                         add                esp, 0x08                                      // 0x007f5c26    83c408
                         ret                0x0004                                         // 0x007f5c29    c20400
_jmp_addr_0x007f5c2c:    {disp32} mov       eax, dword ptr [esi + 0x00000828]              // 0x007f5c2c    8b8628080000
                         test               eax, eax                                       // 0x007f5c32    85c0
                         {disp8} jne        _jmp_addr_0x007f5c41                           // 0x007f5c34    750b
                         call               _jmp_IMM32_DLL__ImmCreateContext               // 0x007f5c36    e81dcb0a00
                         {disp32} mov       dword ptr [esi + 0x00000828], eax              // 0x007f5c3b    898628080000
_jmp_addr_0x007f5c41:    {disp32} mov       eax, dword ptr [esi + 0x00000828]              // 0x007f5c41    8b8628080000
                         push               edi                                            // 0x007f5c47    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x007f5c48    8b7c2414
                         push               eax                                            // 0x007f5c4c    50
                         push               edi                                            // 0x007f5c4d    57
                         call               _jmp_IMM32_DLL__ImmAssociateContext            // 0x007f5c4e    e8bdca0a00
                         push               0x0                                            // 0x007f5c53    6a00
                         {disp32} mov       dword ptr [esi + 0x00000830], 0x00000100       // 0x007f5c55    c7863008000000010000
                         {disp32} mov       dword ptr [esi + 0x00000820], edi              // 0x007f5c5f    89be20080000
                         call               dword ptr [__imp__GetKeyboardLayout@4]         // 0x007f5c65    ff15e8978a00
                         push               eax                                            // 0x007f5c6b    50
                         mov.s              ecx, esi                                       // 0x007f5c6c    8bce
                         call               _jmp_addr_0x007f5ef0                           // 0x007f5c6e    e87d020000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000820]              // 0x007f5c73    8b8e20080000
                         push               ecx                                            // 0x007f5c79    51
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                    // 0x007f5c7a    8d4c240c
                         call               _jmp_addr_0x007f45d0                           // 0x007f5c7e    e84de9ffff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x007f5c83    8b44240c
                         pop                edi                                            // 0x007f5c87    5f
                         test               eax, eax                                       // 0x007f5c88    85c0
                         {disp8} je         _jmp_addr_0x007f5c9b                           // 0x007f5c8a    740f
                         push               0x0                                            // 0x007f5c8c    6a00
                         push               0x4                                            // 0x007f5c8e    6a04
                         push               0x15                                           // 0x007f5c90    6a15
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                    // 0x007f5c92    8d4c2410
                         call               _jmp_addr_0x007f4780                           // 0x007f5c96    e8e5eaffff
_jmp_addr_0x007f5c9b:    {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x007f5c9b    8d4c2404
                         {disp32} mov       byte ptr [esi + 0x00000824], 0x01              // 0x007f5c9f    c6862408000001
                         call               _jmp_addr_0x007f45f0                           // 0x007f5ca6    e845e9ffff
                         xor.s              eax, eax                                       // 0x007f5cab    33c0
                         pop                esi                                            // 0x007f5cad    5e
                         add                esp, 0x08                                      // 0x007f5cae    83c408
                         ret                0x0004                                         // 0x007f5cb1    c20400
                         nop                                                               // 0x007f5cb4    90
                         nop                                                               // 0x007f5cb5    90
                         nop                                                               // 0x007f5cb6    90
                         nop                                                               // 0x007f5cb7    90
                         nop                                                               // 0x007f5cb8    90
                         nop                                                               // 0x007f5cb9    90
                         nop                                                               // 0x007f5cba    90
                         nop                                                               // 0x007f5cbb    90
                         nop                                                               // 0x007f5cbc    90
                         nop                                                               // 0x007f5cbd    90
                         nop                                                               // 0x007f5cbe    90
                         nop                                                               // 0x007f5cbf    90
_jmp_addr_0x007f5cc0:    sub                esp, 0x08                                      // 0x007f5cc0    83ec08
                         push               esi                                            // 0x007f5cc3    56
                         mov.s              esi, ecx                                       // 0x007f5cc4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000820]              // 0x007f5cc6    8b8620080000
                         {disp32} mov       byte ptr [esi + 0x00000824], 0x00              // 0x007f5ccc    c6862408000000
                         test               eax, eax                                       // 0x007f5cd3    85c0
                         {disp8} je         _jmp_addr_0x007f5d1b                           // 0x007f5cd5    7444
                         push               eax                                            // 0x007f5cd7    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                    // 0x007f5cd8    8d4c2408
                         call               _jmp_addr_0x007f45d0                           // 0x007f5cdc    e8efe8ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007f5ce1    8b442408
                         test               eax, eax                                       // 0x007f5ce5    85c0
                         {disp8} je         _jmp_addr_0x007f5cf4                           // 0x007f5ce7    740b
                         push               0x0                                            // 0x007f5ce9    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                    // 0x007f5ceb    8d4c2408
                         call               _jmp_addr_0x007f47b0                           // 0x007f5cef    e8bceaffff
_jmp_addr_0x007f5cf4:    {disp32} mov       eax, dword ptr [esi + 0x00000820]              // 0x007f5cf4    8b8620080000
                         push               0x0                                            // 0x007f5cfa    6a00
                         push               eax                                            // 0x007f5cfc    50
                         call               _jmp_IMM32_DLL__ImmAssociateContext            // 0x007f5cfd    e80eca0a00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x007f5d02    8d4c2404
                         {disp32} mov       dword ptr [esi + 0x00000820], 0x00000000       // 0x007f5d06    c7862008000000000000
                         {disp8} mov        word ptr [esi + 0x08], 0x0000                  // 0x007f5d10    66c746080000
                         call               _jmp_addr_0x007f45f0                           // 0x007f5d16    e8d5e8ffff
_jmp_addr_0x007f5d1b:    pop                esi                                            // 0x007f5d1b    5e
                         add                esp, 0x08                                      // 0x007f5d1c    83c408
                         ret                                                               // 0x007f5d1f    c3
_jmp_addr_0x007f5d20:    push               -0x1                                           // 0x007f5d20    6aff
                         push               0x008a7cb8                                     // 0x007f5d22    68b87c8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f5d27    64a100000000
                         push               eax                                            // 0x007f5d2d    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f5d2e    64892500000000
                         sub                esp, 0x08                                      // 0x007f5d35    83ec08
                         push               esi                                            // 0x007f5d38    56
                         mov.s              esi, ecx                                       // 0x007f5d39    8bf1
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x007f5d3b    8d4c2404
                         {disp32} mov       eax, dword ptr [esi + 0x00000820]              // 0x007f5d3f    8b8620080000
                         push               eax                                            // 0x007f5d45    50
                         call               _jmp_addr_0x007f45d0                           // 0x007f5d46    e885e8ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007f5d4b    8b442408
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000             // 0x007f5d4f    c744241400000000
                         test               eax, eax                                       // 0x007f5d57    85c0
                         {disp8} je         _jmp_addr_0x007f5d93                           // 0x007f5d59    7438
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x007f5d5b    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x007f5d5f    8b54241c
                         {disp32} mov       eax, dword ptr [esi + 0x0000082c]              // 0x007f5d63    8b862c080000
                         push               ecx                                            // 0x007f5d69    51
                         push               edx                                            // 0x007f5d6a    52
                         push               eax                                            // 0x007f5d6b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                    // 0x007f5d6c    8d4c2410
                         call               _jmp_addr_0x007f4710                           // 0x007f5d70    e89be9ffff
                         test               byte ptr [esi + 0x0000081c], 0x01              // 0x007f5d75    f6861c08000001
                         {disp8} je         _jmp_addr_0x007f5d93                           // 0x007f5d7c    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x007f5d7e    8b4c2424
                         {disp32} mov       edx, dword ptr [esi + 0x0000082c]              // 0x007f5d82    8b962c080000
                         push               ecx                                            // 0x007f5d88    51
                         push               edx                                            // 0x007f5d89    52
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                    // 0x007f5d8a    8d4c240c
                         call               _jmp_addr_0x007f4740                           // 0x007f5d8e    e8ade9ffff
_jmp_addr_0x007f5d93:    {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x007f5d93    8d4c2404
                         call               _jmp_addr_0x007f45f0                           // 0x007f5d97    e854e8ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x007f5d9c    8b4c240c
                         pop                esi                                            // 0x007f5da0    5e
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f5da1    64890d00000000
                         add                esp, 0x14                                      // 0x007f5da8    83c414
                         ret                0x000c                                         // 0x007f5dab    c20c00
                         nop                                                               // 0x007f5dae    90
                         nop                                                               // 0x007f5daf    90
_jmp_addr_0x007f5db0:    push               -0x1                                           // 0x007f5db0    6aff
                         push               0x008a7cd8                                     // 0x007f5db2    68d87c8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f5db7    64a100000000
                         push               eax                                            // 0x007f5dbd    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f5dbe    64892500000000
                         sub                esp, 0x08                                      // 0x007f5dc5    83ec08
                         push               esi                                            // 0x007f5dc8    56
                         mov.s              esi, ecx                                       // 0x007f5dc9    8bf1
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x007f5dcb    8d4c2404
                         {disp32} mov       eax, dword ptr [esi + 0x00000820]              // 0x007f5dcf    8b8620080000
                         push               eax                                            // 0x007f5dd5    50
                         call               _jmp_addr_0x007f45d0                           // 0x007f5dd6    e8f5e7ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007f5ddb    8b442408
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000             // 0x007f5ddf    c744241400000000
                         test               eax, eax                                       // 0x007f5de7    85c0
                         {disp8} je         _jmp_addr_0x007f5e00                           // 0x007f5de9    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x007f5deb    8b4c241c
                         {disp32} mov       edx, dword ptr [esi + 0x0000082c]              // 0x007f5def    8b962c080000
                         push               ecx                                            // 0x007f5df5    51
                         push               edx                                            // 0x007f5df6    52
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                    // 0x007f5df7    8d4c240c
                         call               _jmp_addr_0x007f4750                           // 0x007f5dfb    e850e9ffff
_jmp_addr_0x007f5e00:    {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x007f5e00    8d4c2404
                         call               _jmp_addr_0x007f45f0                           // 0x007f5e04    e8e7e7ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x007f5e09    8b4c240c
                         pop                esi                                            // 0x007f5e0d    5e
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f5e0e    64890d00000000
                         add                esp, 0x14                                      // 0x007f5e15    83c414
                         ret                0x0004                                         // 0x007f5e18    c20400
                         nop                                                               // 0x007f5e1b    90
                         nop                                                               // 0x007f5e1c    90
                         nop                                                               // 0x007f5e1d    90
                         nop                                                               // 0x007f5e1e    90
                         nop                                                               // 0x007f5e1f    90
_jmp_addr_0x007f5e20:    {disp32} mov       eax, dword ptr [ecx + 0x0000082c]              // 0x007f5e20    8b812c080000
                         cmp                eax, -0x01                                     // 0x007f5e26    83f8ff
                         {disp8} jne        _jmp_addr_0x007f5e2e                           // 0x007f5e29    7503
                         xor.s              eax, eax                                       // 0x007f5e2b    33c0
                         ret                                                               // 0x007f5e2d    c3
_jmp_addr_0x007f5e2e:    {disp32} mov       ecx, dword ptr [ecx + 0x0000080c]              // 0x007f5e2e    8b890c080000
                         lea                eax, dword ptr [eax + eax * 0x8]               // 0x007f5e34    8d04c0
                         lea                eax, dword ptr [ecx + eax * 0x4]               // 0x007f5e37    8d0481
                         ret                                                               // 0x007f5e3a    c3
                         nop                                                               // 0x007f5e3b    90
                         nop                                                               // 0x007f5e3c    90
                         nop                                                               // 0x007f5e3d    90
                         nop                                                               // 0x007f5e3e    90
                         nop                                                               // 0x007f5e3f    90
_jmp_addr_0x007f5e40:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007f5e40    8b442404
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0xf92bc]         // 0x007f5e44    8b15bc229a00
                         cmp.s              eax, edx                                       // 0x007f5e4a    3bc2
                         {disp8} jae        _jmp_addr_0x007f5e5d                           // 0x007f5e4c    730f
                         {disp8} lea        eax, dword ptr [esp + 0x04]                    // 0x007f5e4e    8d442404
                         mov                edx, dword ptr [eax]                           // 0x007f5e52    8b10
                         {disp32} mov       dword ptr [ecx + 0x00000830], edx              // 0x007f5e54    899130080000
                         ret                0x0004                                         // 0x007f5e5a    c20400
_jmp_addr_0x007f5e5d:    mov                eax, 0x009a22bc                                // 0x007f5e5d    b8bc229a00
                         mov                eax, dword ptr [eax]                           // 0x007f5e62    8b00
                         {disp32} mov       dword ptr [ecx + 0x00000830], eax              // 0x007f5e64    898130080000
                         ret                0x0004                                         // 0x007f5e6a    c20400
                         nop                                                               // 0x007f5e6d    90
                         nop                                                               // 0x007f5e6e    90
                         nop                                                               // 0x007f5e6f    90
_jmp_addr_0x007f5e70:    {disp8} lea        eax, dword ptr [ecx + 0x08]                    // 0x007f5e70    8d4108
                         ret                                                               // 0x007f5e73    c3
                         nop                                                               // 0x007f5e74    90
                         nop                                                               // 0x007f5e75    90
                         nop                                                               // 0x007f5e76    90
                         nop                                                               // 0x007f5e77    90
                         nop                                                               // 0x007f5e78    90
                         nop                                                               // 0x007f5e79    90
                         nop                                                               // 0x007f5e7a    90
                         nop                                                               // 0x007f5e7b    90
                         nop                                                               // 0x007f5e7c    90
                         nop                                                               // 0x007f5e7d    90
                         nop                                                               // 0x007f5e7e    90
                         nop                                                               // 0x007f5e7f    90
                         {disp32} lea       eax, dword ptr [ecx + 0x00000208]              // 0x007f5e80    8d8108020000
                         ret                                                               // 0x007f5e86    c3
                         nop                                                               // 0x007f5e87    90
                         nop                                                               // 0x007f5e88    90
                         nop                                                               // 0x007f5e89    90
                         nop                                                               // 0x007f5e8a    90
                         nop                                                               // 0x007f5e8b    90
                         nop                                                               // 0x007f5e8c    90
                         nop                                                               // 0x007f5e8d    90
                         nop                                                               // 0x007f5e8e    90
                         nop                                                               // 0x007f5e8f    90
_jmp_addr_0x007f5e90:    sub                esp, 0x00000100                                // 0x007f5e90    81ec00010000
                         push               0x0                                            // 0x007f5e96    6a00
                         call               dword ptr [__imp__GetKeyboardLayout@4]         // 0x007f5e98    ff15e8978a00
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                    // 0x007f5e9e    8d4c2400
                         push               0x00000100                                     // 0x007f5ea2    6800010000
                         push               ecx                                            // 0x007f5ea7    51
                         push               eax                                            // 0x007f5ea8    50
                         call               _jmp_IMM32_DLL__ImmGetDescriptionA             // 0x007f5ea9    e8b0c80a00
                         test               eax, eax                                       // 0x007f5eae    85c0
                         {disp8} je         _jmp_addr_0x007f5ed5                           // 0x007f5eb0    7423
                         {disp8} lea        edx, dword ptr [esp + 0x00]                    // 0x007f5eb2    8d542400
                         push               0x00000100                                     // 0x007f5eb6    6800010000
                         push               edx                                            // 0x007f5ebb    52
                         push               0x00e91ee4                                     // 0x007f5ebc    68e41ee900
                         call               _jmp_addr_0x007f4570                           // 0x007f5ec1    e8aae6ffff
                         add                esp, 0x0c                                      // 0x007f5ec6    83c40c
                         mov                eax, 0x00e91ee4                                // 0x007f5ec9    b8e41ee900
                         add                esp, 0x00000100                                // 0x007f5ece    81c400010000
                         ret                                                               // 0x007f5ed4    c3
_jmp_addr_0x007f5ed5:    {disp32} mov       word ptr [data_bytes + 0x4cbee4], 0x0000       // 0x007f5ed5    66c705e41ee9000000
                         mov                eax, 0x00e91ee4                                // 0x007f5ede    b8e41ee900
                         add                esp, 0x00000100                                // 0x007f5ee3    81c400010000
                         ret                                                               // 0x007f5ee9    c3
                         nop                                                               // 0x007f5eea    90
                         nop                                                               // 0x007f5eeb    90
                         nop                                                               // 0x007f5eec    90
                         nop                                                               // 0x007f5eed    90
                         nop                                                               // 0x007f5eee    90
                         nop                                                               // 0x007f5eef    90
_jmp_addr_0x007f5ef0:    sub                esp, 0x00000100                                // 0x007f5ef0    81ec00010000
                         {disp8} lea        eax, dword ptr [esp + 0x00]                    // 0x007f5ef6    8d442400
                         push               ebx                                            // 0x007f5efa    53
                         {disp32} mov       ebx, dword ptr [esp + 0x00000108]              // 0x007f5efb    8b9c2408010000
                         push               esi                                            // 0x007f5f02    56
                         push               edi                                            // 0x007f5f03    57
                         push               0x00000100                                     // 0x007f5f04    6800010000
                         push               eax                                            // 0x007f5f09    50
                         mov.s              esi, ecx                                       // 0x007f5f0a    8bf1
                         push               ebx                                            // 0x007f5f0c    53
                         call               _jmp_IMM32_DLL__ImmGetDescriptionA             // 0x007f5f0d    e84cc80a00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                    // 0x007f5f12    8d4c240c
                         {disp32} lea       edi, dword ptr [esi + 0x00000608]              // 0x007f5f16    8dbe08060000
                         push               0x00000100                                     // 0x007f5f1c    6800010000
                         push               ecx                                            // 0x007f5f21    51
                         push               edi                                            // 0x007f5f22    57
                         call               _jmp_addr_0x007f4570                           // 0x007f5f23    e848e6ffff
                         push               0x009a22c0                                     // 0x007f5f28    68c0229a00
                         push               edi                                            // 0x007f5f2d    57
                         {disp32} mov       dword ptr [esi + 0x0000081c], 0xffffffff       // 0x007f5f2e    c7861c080000ffffffff
                         call               _wcscmp                           // 0x007f5f38    e8a20ffdff
                         add                esp, 0x14                                      // 0x007f5f3d    83c414
                         test               eax, eax                                       // 0x007f5f40    85c0
                         {disp8} jne        _jmp_addr_0x007f5f52                           // 0x007f5f42    750e
                         {disp32} mov       eax, dword ptr [esi + 0x0000081c]              // 0x007f5f44    8b861c080000
                         and                al, -0x02                                      // 0x007f5f4a    24fe
                         {disp32} mov       dword ptr [esi + 0x0000081c], eax              // 0x007f5f4c    89861c080000
_jmp_addr_0x007f5f52:    push               0x4                                            // 0x007f5f52    6a04
                         push               ebx                                            // 0x007f5f54    53
                         call               _jmp_IMM32_DLL__ImmGetProperty                 // 0x007f5f55    e8f8c70a00
                         pop                edi                                            // 0x007f5f5a    5f
                         pop                esi                                            // 0x007f5f5b    5e
                         pop                ebx                                            // 0x007f5f5c    5b
                         add                esp, 0x00000100                                // 0x007f5f5d    81c400010000
                         ret                0x0004                                         // 0x007f5f63    c20400
                         nop                                                               // 0x007f5f66    90
                         nop                                                               // 0x007f5f67    90
                         nop                                                               // 0x007f5f68    90
                         nop                                                               // 0x007f5f69    90
                         nop                                                               // 0x007f5f6a    90
                         nop                                                               // 0x007f5f6b    90
                         nop                                                               // 0x007f5f6c    90
                         nop                                                               // 0x007f5f6d    90
                         nop                                                               // 0x007f5f6e    90
                         nop                                                               // 0x007f5f6f    90
_jmp_addr_0x007f5f70:    push               ebx                                            // 0x007f5f70    53
                         push               ebp                                            // 0x007f5f71    55
                         push               esi                                            // 0x007f5f72    56
                         push               edi                                            // 0x007f5f73    57
                         mov.s              edi, ecx                                       // 0x007f5f74    8bf9
                         xor.s              ebx, ebx                                       // 0x007f5f76    33db
                         {disp8} mov        ebp, dword ptr [edi + 0x08]                    // 0x007f5f78    8b6f08
                         {disp8} mov        esi, dword ptr [edi + 0x04]                    // 0x007f5f7b    8b7704
                         cmp.s              esi, ebp                                       // 0x007f5f7e    3bf5
                         {disp8} je         _jmp_addr_0x007f5fb7                           // 0x007f5f80    7435
_jmp_addr_0x007f5f82:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f5f82    8b4e04
                         cmp.s              ecx, ebx                                       // 0x007f5f85    3bcb
                         {disp8} je         _jmp_addr_0x007f5fa7                           // 0x007f5f87    741e
                         {disp8} mov        al, byte ptr [ecx + -0x01]                     // 0x007f5f89    8a41ff
                         cmp.s              al, bl                                         // 0x007f5f8c    3ac3
                         {disp8} je         _jmp_addr_0x007f5f9b                           // 0x007f5f8e    740b
                         cmp                al, -0x01                                      // 0x007f5f90    3cff
                         {disp8} je         _jmp_addr_0x007f5f9b                           // 0x007f5f92    7407
                         dec                al                                             // 0x007f5f94    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                     // 0x007f5f96    8841ff
                         {disp8} jmp        _jmp_addr_0x007f5fa7                           // 0x007f5f99    eb0c
_jmp_addr_0x007f5f9b:    add                ecx, -0x2                                      // 0x007f5f9b    83c1fe
                         push               ecx                                            // 0x007f5f9e    51
                         call               ??3@YAXPAX@Z                                   // 0x007f5f9f    e8f48efbff
                         add                esp, 0x04                                      // 0x007f5fa4    83c404
_jmp_addr_0x007f5fa7:    {disp8} mov        dword ptr [esi + 0x04], ebx                    // 0x007f5fa7    895e04
                         {disp8} mov        dword ptr [esi + 0x08], ebx                    // 0x007f5faa    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                    // 0x007f5fad    895e0c
                         add                esi, 0x10                                      // 0x007f5fb0    83c610
                         cmp.s              esi, ebp                                       // 0x007f5fb3    3bf5
                         {disp8} jne        _jmp_addr_0x007f5f82                           // 0x007f5fb5    75cb
_jmp_addr_0x007f5fb7:    {disp8} mov        eax, dword ptr [edi + 0x04]                    // 0x007f5fb7    8b4704
                         push               eax                                            // 0x007f5fba    50
                         call               ??3@YAXPAX@Z                                   // 0x007f5fbb    e8d88efbff
                         add                esp, 0x04                                      // 0x007f5fc0    83c404
                         {disp8} mov        dword ptr [edi + 0x04], ebx                    // 0x007f5fc3    895f04
                         {disp8} mov        dword ptr [edi + 0x08], ebx                    // 0x007f5fc6    895f08
                         {disp8} mov        dword ptr [edi + 0x0c], ebx                    // 0x007f5fc9    895f0c
                         pop                edi                                            // 0x007f5fcc    5f
                         pop                esi                                            // 0x007f5fcd    5e
                         pop                ebp                                            // 0x007f5fce    5d
                         pop                ebx                                            // 0x007f5fcf    5b
                         ret                                                               // 0x007f5fd0    c3
                         nop                                                               // 0x007f5fd1    90
                         nop                                                               // 0x007f5fd2    90
                         nop                                                               // 0x007f5fd3    90
                         nop                                                               // 0x007f5fd4    90
                         nop                                                               // 0x007f5fd5    90
                         nop                                                               // 0x007f5fd6    90
                         nop                                                               // 0x007f5fd7    90
                         nop                                                               // 0x007f5fd8    90
                         nop                                                               // 0x007f5fd9    90
                         nop                                                               // 0x007f5fda    90
                         nop                                                               // 0x007f5fdb    90
                         nop                                                               // 0x007f5fdc    90
                         nop                                                               // 0x007f5fdd    90
                         nop                                                               // 0x007f5fde    90
                         nop                                                               // 0x007f5fdf    90
_jmp_addr_0x007f5fe0:    push               ecx                                            // 0x007f5fe0    51
                         push               esi                                            // 0x007f5fe1    56
                         mov.s              esi, ecx                                       // 0x007f5fe2    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x04]                    // 0x007f5fe4    8b4604
                         push               eax                                            // 0x007f5fe7    50
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x007f5fe8    89442408
                         call               ??3@YAXPAX@Z                                   // 0x007f5fec    e8a78efbff
                         add                esp, 0x04                                      // 0x007f5ff1    83c404
                         xor.s              eax, eax                                       // 0x007f5ff4    33c0
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007f5ff6    894604
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x007f5ff9    894608
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x007f5ffc    89460c
                         pop                esi                                            // 0x007f5fff    5e
                         pop                ecx                                            // 0x007f6000    59
                         ret                                                               // 0x007f6001    c3
                         nop                                                               // 0x007f6002    90
                         nop                                                               // 0x007f6003    90
                         nop                                                               // 0x007f6004    90
                         nop                                                               // 0x007f6005    90
                         nop                                                               // 0x007f6006    90
                         nop                                                               // 0x007f6007    90
                         nop                                                               // 0x007f6008    90
                         nop                                                               // 0x007f6009    90
                         nop                                                               // 0x007f600a    90
                         nop                                                               // 0x007f600b    90
                         nop                                                               // 0x007f600c    90
                         nop                                                               // 0x007f600d    90
                         nop                                                               // 0x007f600e    90
                         nop                                                               // 0x007f600f    90
_jmp_addr_0x007f6010:    cmp                byte ptr [ecx], 0x00                           // 0x007f6010    803900
                         {disp8} je         _jmp_addr_0x007f601f                           // 0x007f6013    740a
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x007f6015    8b4104
                         push               eax                                            // 0x007f6018    50
                         call               ??3@YAXPAX@Z                                   // 0x007f6019    e87a8efbff
                         pop                ecx                                            // 0x007f601e    59
_jmp_addr_0x007f601f:    ret                                                               // 0x007f601f    c3
_jmp_addr_0x007f6020:    sub                esp, 0x08                                      // 0x007f6020    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007f6023    8b442410
                         mov.s              edx, ecx                                       // 0x007f6027    8bd1
                         push               ebx                                            // 0x007f6029    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007f602a    8b5c2410
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                    // 0x007f602e    8b4a08
                         push               ebp                                            // 0x007f6031    55
                         push               esi                                            // 0x007f6032    56
                         cmp.s              eax, ecx                                       // 0x007f6033    3bc1
                         push               edi                                            // 0x007f6035    57
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x007f6036    89542410
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x007f603a    894c2414
                         mov.s              ebp, ebx                                       // 0x007f603e    8beb
                         {disp32} je        _jmp_addr_0x007f610c                           // 0x007f6040    0f84c6000000
                         {disp8} lea        esi, dword ptr [eax + 0x04]                    // 0x007f6046    8d7004
                         sub.s              ebx, eax                                       // 0x007f6049    2bd8
_jmp_addr_0x007f604b:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f604b    8b4e04
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]         // 0x007f604e    a1d4ec8d00
                         mov.s              edi, ecx                                       // 0x007f6053    8bf9
                         cmp.s              eax, edi                                       // 0x007f6055    3bc7
                         {disp8} jae        _jmp_addr_0x007f605b                           // 0x007f6057    7302
                         mov.s              edi, eax                                       // 0x007f6059    8bf8
_jmp_addr_0x007f605b:    {disp8} lea        edx, dword ptr [esi + -0x04]                   // 0x007f605b    8d56fc
                         cmp.s              ebp, edx                                       // 0x007f605e    3bea
                         {disp8} jne        _jmp_addr_0x007f6078                           // 0x007f6060    7516
                         push               eax                                            // 0x007f6062    50
                         push               edi                                            // 0x007f6063    57
                         mov.s              ecx, ebp                                       // 0x007f6064    8bcd
                         call               _jmp_addr_0x007b7812                           // 0x007f6066    e8a717fcff
                         push               0x0                                            // 0x007f606b    6a00
                         push               0x0                                            // 0x007f606d    6a00
                         mov.s              ecx, ebp                                       // 0x007f606f    8bcd
                         call               _jmp_addr_0x007b7812                           // 0x007f6071    e89c17fcff
                         {disp8} jmp        _jmp_addr_0x007f60ef                           // 0x007f6076    eb77
_jmp_addr_0x007f6078:    test               edi, edi                                       // 0x007f6078    85ff
                         {disp8} jbe        _jmp_addr_0x007f60c0                           // 0x007f607a    7644
                         cmp.s              edi, ecx                                       // 0x007f607c    3bf9
                         {disp8} jne        _jmp_addr_0x007f60c0                           // 0x007f607e    7540
                         mov                eax, dword ptr [esi]                           // 0x007f6080    8b06
                         test               eax, eax                                       // 0x007f6082    85c0
                         {disp8} jne        _jmp_addr_0x007f608b                           // 0x007f6084    7505
                         mov                eax, 0x008decd8                                // 0x007f6086    b8d8ec8d00
_jmp_addr_0x007f608b:    cmp                byte ptr [eax + -0x01], -0x02                  // 0x007f608b    8078fffe
                         {disp8} jae        _jmp_addr_0x007f60c0                           // 0x007f608f    732f
                         push               0x1                                            // 0x007f6091    6a01
                         mov.s              ecx, ebp                                       // 0x007f6093    8bcd
                         call               _jmp_addr_0x00545920                           // 0x007f6095    e886f8d4ff
                         mov                eax, dword ptr [esi]                           // 0x007f609a    8b06
                         test               eax, eax                                       // 0x007f609c    85c0
                         {disp8} jne        _jmp_addr_0x007f60a5                           // 0x007f609e    7505
                         mov                eax, 0x008decd8                                // 0x007f60a0    b8d8ec8d00
_jmp_addr_0x007f60a5:    mov                dword ptr [esi + ebx * 0x1], eax               // 0x007f60a5    89041e
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f60a8    8b4e04
                         {disp8} mov        dword ptr [esi + ebx * 0x1 + 0x04], ecx        // 0x007f60ab    894c1e04
                         {disp8} mov        edx, dword ptr [esi + 0x08]                    // 0x007f60af    8b5608
                         {disp8} mov        dword ptr [esi + ebx * 0x1 + 0x08], edx        // 0x007f60b2    89541e08
                         {disp8} mov        cl, byte ptr [eax + -0x01]                     // 0x007f60b6    8a48ff
                         inc                cl                                             // 0x007f60b9    fec1
                         {disp8} mov        byte ptr [eax + -0x01], cl                     // 0x007f60bb    8848ff
                         {disp8} jmp        _jmp_addr_0x007f60ef                           // 0x007f60be    eb2f
_jmp_addr_0x007f60c0:    push               0x1                                            // 0x007f60c0    6a01
                         push               edi                                            // 0x007f60c2    57
                         mov.s              ecx, ebp                                       // 0x007f60c3    8bcd
                         call               _jmp_addr_0x00545990                           // 0x007f60c5    e8c6f8d4ff
                         test               al, al                                         // 0x007f60ca    84c0
                         {disp8} je         _jmp_addr_0x007f60ef                           // 0x007f60cc    7421
                         mov                eax, dword ptr [esi]                           // 0x007f60ce    8b06
                         test               eax, eax                                       // 0x007f60d0    85c0
                         {disp8} jne        _jmp_addr_0x007f60d9                           // 0x007f60d2    7505
                         mov                eax, 0x008decd8                                // 0x007f60d4    b8d8ec8d00
_jmp_addr_0x007f60d9:    push               edi                                            // 0x007f60d9    57
                         push               eax                                            // 0x007f60da    50
                         mov                eax, dword ptr [esi + ebx * 0x1]               // 0x007f60db    8b041e
                         push               eax                                            // 0x007f60de    50
                         call               _jmp_addr_0x00544b60                           // 0x007f60df    e87cead4ff
                         add                esp, 0x0c                                      // 0x007f60e4    83c40c
                         mov.s              ecx, ebp                                       // 0x007f60e7    8bcd
                         push               edi                                            // 0x007f60e9    57
                         call               _jmp_addr_0x00545d60                           // 0x007f60ea    e871fcd4ff
_jmp_addr_0x007f60ef:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f60ef    8b442414
                         add                esi, 0x10                                      // 0x007f60f3    83c610
                         add                ebp, 0x10                                      // 0x007f60f6    83c510
                         {disp8} lea        ecx, dword ptr [esi + -0x04]                   // 0x007f60f9    8d4efc
                         cmp.s              ecx, eax                                       // 0x007f60fc    3bc8
                         {disp32} jne       _jmp_addr_0x007f604b                           // 0x007f60fe    0f8547ffffff
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                    // 0x007f6104    8b5c241c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x007f6108    8b542410
_jmp_addr_0x007f610c:    {disp8} mov        edi, dword ptr [edx + 0x08]                    // 0x007f610c    8b7a08
                         cmp.s              ebp, edi                                       // 0x007f610f    3bef
                         {disp8} je         _jmp_addr_0x007f6156                           // 0x007f6111    7443
                         {disp8} lea        esi, dword ptr [ebp + 0x04]                    // 0x007f6113    8d7504
_jmp_addr_0x007f6116:    mov                ecx, dword ptr [esi]                           // 0x007f6116    8b0e
                         test               ecx, ecx                                       // 0x007f6118    85c9
                         {disp8} je         _jmp_addr_0x007f6142                           // 0x007f611a    7426
                         {disp8} mov        al, byte ptr [ecx + -0x01]                     // 0x007f611c    8a41ff
                         test               al, al                                         // 0x007f611f    84c0
                         {disp8} je         _jmp_addr_0x007f612e                           // 0x007f6121    740b
                         cmp                al, -0x01                                      // 0x007f6123    3cff
                         {disp8} je         _jmp_addr_0x007f612e                           // 0x007f6125    7407
                         dec                al                                             // 0x007f6127    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                     // 0x007f6129    8841ff
                         {disp8} jmp        _jmp_addr_0x007f6142                           // 0x007f612c    eb14
_jmp_addr_0x007f612e:    add                ecx, -0x2                                      // 0x007f612e    83c1fe
                         push               ecx                                            // 0x007f6131    51
                         call               ??3@YAXPAX@Z                                   // 0x007f6132    e8618dfbff
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x007f6137    8b5c2420
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x007f613b    8b542414
                         add                esp, 0x04                                      // 0x007f613f    83c404
_jmp_addr_0x007f6142:    xor.s              eax, eax                                       // 0x007f6142    33c0
                         mov                dword ptr [esi], eax                           // 0x007f6144    8906
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007f6146    894604
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x007f6149    894608
                         add                esi, 0x10                                      // 0x007f614c    83c610
                         {disp8} lea        eax, dword ptr [esi + -0x04]                   // 0x007f614f    8d46fc
                         cmp.s              eax, edi                                       // 0x007f6152    3bc7
                         {disp8} jne        _jmp_addr_0x007f6116                           // 0x007f6154    75c0
_jmp_addr_0x007f6156:    pop                edi                                            // 0x007f6156    5f
                         {disp8} mov        dword ptr [edx + 0x08], ebp                    // 0x007f6157    896a08
                         pop                esi                                            // 0x007f615a    5e
                         mov.s              eax, ebx                                       // 0x007f615b    8bc3
                         pop                ebp                                            // 0x007f615d    5d
                         pop                ebx                                            // 0x007f615e    5b
                         add                esp, 0x08                                      // 0x007f615f    83c408
                         ret                0x0008                                         // 0x007f6162    c20800
                         nop                                                               // 0x007f6165    90
                         nop                                                               // 0x007f6166    90
                         nop                                                               // 0x007f6167    90
                         nop                                                               // 0x007f6168    90
                         nop                                                               // 0x007f6169    90
                         nop                                                               // 0x007f616a    90
                         nop                                                               // 0x007f616b    90
                         nop                                                               // 0x007f616c    90
                         nop                                                               // 0x007f616d    90
                         nop                                                               // 0x007f616e    90
                         nop                                                               // 0x007f616f    90
_jmp_addr_0x007f6170:    sub                esp, 0x0c                                      // 0x007f6170    83ec0c
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                    // 0x007f6173    8b510c
                         push               ebx                                            // 0x007f6176    53
                         push               ebp                                            // 0x007f6177    55
                         push               esi                                            // 0x007f6178    56
                         {disp8} mov        esi, dword ptr [ecx + 0x08]                    // 0x007f6179    8b7108
                         mov                eax, 0x38e38e39                                // 0x007f617c    b8398ee338
                         sub.s              edx, esi                                       // 0x007f6181    2bd6
                         push               edi                                            // 0x007f6183    57
                         imul               edx                                            // 0x007f6184    f7ea
                         {disp8} mov        edi, dword ptr [esp + 0x24]                    // 0x007f6186    8b7c2424
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x007f618a    894c2410
                         sar                edx, 3                                         // 0x007f618e    c1fa03
                         mov.s              eax, edx                                       // 0x007f6191    8bc2
                         shr                eax, 0x1f                                      // 0x007f6193    c1e81f
                         add.s              edx, eax                                       // 0x007f6196    03d0
                         cmp.s              edx, edi                                       // 0x007f6198    3bd7
                         {disp32} jae       _jmp_addr_0x007f6308                           // 0x007f619a    0f8368010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                    // 0x007f61a0    8b4904
                         test               ecx, ecx                                       // 0x007f61a3    85c9
                         {disp8} je         _jmp_addr_0x007f61c2                           // 0x007f61a5    741b
                         mov.s              edx, esi                                       // 0x007f61a7    8bd6
                         mov                eax, 0x38e38e39                                // 0x007f61a9    b8398ee338
                         sub.s              edx, ecx                                       // 0x007f61ae    2bd1
                         imul               edx                                            // 0x007f61b0    f7ea
                         sar                edx, 3                                         // 0x007f61b2    c1fa03
                         mov.s              eax, edx                                       // 0x007f61b5    8bc2
                         shr                eax, 0x1f                                      // 0x007f61b7    c1e81f
                         add.s              edx, eax                                       // 0x007f61ba    03d0
                         cmp.s              edi, edx                                       // 0x007f61bc    3bfa
                         mov.s              ebx, edx                                       // 0x007f61be    8bda
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x007f61c4    // 0x007f61c0    7202
_jmp_addr_0x007f61c2:    mov.s              ebx, edi                                       // 0x007f61c2    8bdf
_jmp_addr_0x007f61c4:    test               ecx, ecx                                       // 0x007f61c4    85c9
                         {disp8} jne        _jmp_addr_0x007f61cc                           // 0x007f61c6    7504
                         xor.s              edx, edx                                       // 0x007f61c8    33d2
                         {disp8} jmp        _jmp_addr_0x007f61df                           // 0x007f61ca    eb13
_jmp_addr_0x007f61cc:    sub.s              esi, ecx                                       // 0x007f61cc    2bf1
                         mov                eax, 0x38e38e39                                // 0x007f61ce    b8398ee338
                         imul               esi                                            // 0x007f61d3    f7ee
                         sar                edx, 3                                         // 0x007f61d5    c1fa03
                         mov.s              ecx, edx                                       // 0x007f61d8    8bca
                         shr                ecx, 0x1f                                      // 0x007f61da    c1e91f
                         add.s              edx, ecx                                       // 0x007f61dd    03d1
_jmp_addr_0x007f61df:    lea                eax, dword ptr [edx + ebx * 0x1]               // 0x007f61df    8d041a
                         test               eax, eax                                       // 0x007f61e2    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f61e4    89442414
                         {disp8} jge        _jmp_addr_0x007f61ec                           // 0x007f61e8    7d02
                         xor.s              eax, eax                                       // 0x007f61ea    33c0
_jmp_addr_0x007f61ec:    lea                edx, dword ptr [eax + eax * 0x8]               // 0x007f61ec    8d14c0
                         shl                edx, 2                                         // 0x007f61ef    c1e202
                         push               edx                                            // 0x007f61f2    52
                         call               ??2@YAPAXI@Z                                   // 0x007f61f3    e8f602fdff
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                    // 0x007f61f8    8b5c2414
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x007f61fc    8944241c
                         mov.s              ebp, eax                                       // 0x007f6200    8be8
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x007f6202    8b442424
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                    // 0x007f6206    8b7304
                         add                esp, 0x04                                      // 0x007f6209    83c404
                         cmp.s              esi, eax                                       // 0x007f620c    3bf0
                         {disp8} je         _jmp_addr_0x007f6228                           // 0x007f620e    7418
_jmp_addr_0x007f6210:    push               esi                                            // 0x007f6210    56
                         push               ebp                                            // 0x007f6211    55
                         call               _jmp_addr_0x007f67a0                           // 0x007f6212    e889050000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x007f6217    8b442428
                         add                esi, 0x24                                      // 0x007f621b    83c624
                         add                esp, 0x08                                      // 0x007f621e    83c408
                         add                ebp, 0x24                                      // 0x007f6221    83c524
                         cmp.s              esi, eax                                       // 0x007f6224    3bf0
                         {disp8} jne        _jmp_addr_0x007f6210                           // 0x007f6226    75e8
_jmp_addr_0x007f6228:    test               edi, edi                                       // 0x007f6228    85ff
                         mov.s              esi, ebp                                       // 0x007f622a    8bf5
                         {disp8} jbe        _jmp_addr_0x007f624e                           // 0x007f622c    7620
                         {disp8} mov        dword ptr [esp + 0x24], edi                    // 0x007f622e    897c2424
_jmp_addr_0x007f6232:    {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x007f6232    8b442428
                         push               eax                                            // 0x007f6236    50
                         push               esi                                            // 0x007f6237    56
                         call               _jmp_addr_0x007f67a0                           // 0x007f6238    e863050000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x007f623d    8b44242c
                         add                esp, 0x08                                      // 0x007f6241    83c408
                         add                esi, 0x24                                      // 0x007f6244    83c624
                         dec                eax                                            // 0x007f6247    48
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x007f6248    89442424
                         {disp8} jne        _jmp_addr_0x007f6232                           // 0x007f624c    75e4
_jmp_addr_0x007f624e:    {disp8} mov        esi, dword ptr [esp + 0x20]                    // 0x007f624e    8b742420
                         lea                ecx, dword ptr [edi + edi * 0x8]               // 0x007f6252    8d0cff
                         {disp8} lea        eax, dword ptr [ebp + ecx * 0x4 + 0x00]        // 0x007f6255    8d448d00
                         {disp8} mov        ebp, dword ptr [ebx + 0x08]                    // 0x007f6259    8b6b08
                         cmp.s              esi, ebp                                       // 0x007f625c    3bf5
                         {disp8} je         _jmp_addr_0x007f6284                           // 0x007f625e    7424
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x007f6260    89442420
_jmp_addr_0x007f6264:    {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x007f6264    8b542420
                         push               esi                                            // 0x007f6268    56
                         push               edx                                            // 0x007f6269    52
                         call               _jmp_addr_0x007f67a0                           // 0x007f626a    e831050000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x007f626f    8b4c2428
                         add                esi, 0x24                                      // 0x007f6273    83c624
                         add                esp, 0x08                                      // 0x007f6276    83c408
                         add                ecx, 0x24                                      // 0x007f6279    83c124
                         cmp.s              esi, ebp                                       // 0x007f627c    3bf5
                         {disp8} mov        dword ptr [esp + 0x20], ecx                    // 0x007f627e    894c2420
                         {disp8} jne        _jmp_addr_0x007f6264                           // 0x007f6282    75e0
_jmp_addr_0x007f6284:    {disp8} mov        ebp, dword ptr [ebx + 0x08]                    // 0x007f6284    8b6b08
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                    // 0x007f6287    8b7304
                         cmp.s              esi, ebp                                       // 0x007f628a    3bf5
                         {disp8} je         _jmp_addr_0x007f629c                           // 0x007f628c    740e
_jmp_addr_0x007f628e:    mov.s              ecx, esi                                       // 0x007f628e    8bce
                         call               _jmp_addr_0x007f5600                           // 0x007f6290    e86bf3ffff
                         add                esi, 0x24                                      // 0x007f6295    83c624
                         cmp.s              esi, ebp                                       // 0x007f6298    3bf5
                         {disp8} jne        _jmp_addr_0x007f628e                           // 0x007f629a    75f2
_jmp_addr_0x007f629c:    {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f629c    8b4304
                         push               eax                                            // 0x007f629f    50
                         call               ??3@YAXPAX@Z                                   // 0x007f62a0    e8f38bfbff
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f62a5    8b442418
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x007f62a9    8b74241c
                         add                esp, 0x04                                      // 0x007f62ad    83c404
                         lea                ecx, dword ptr [eax + eax * 0x8]               // 0x007f62b0    8d0cc0
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f62b3    8b4304
                         test               eax, eax                                       // 0x007f62b6    85c0
                         lea                edx, dword ptr [esi + ecx * 0x4]               // 0x007f62b8    8d148e
                         {disp8} mov        dword ptr [ebx + 0x0c], edx                    // 0x007f62bb    89530c
                         {disp8} jne        _jmp_addr_0x007f62da                           // 0x007f62be    751a
                         xor.s              edx, edx                                       // 0x007f62c0    33d2
                         {disp8} mov        dword ptr [ebx + 0x04], esi                    // 0x007f62c2    897304
                         add.s              edi, edx                                       // 0x007f62c5    03fa
                         lea                ecx, dword ptr [edi + edi * 0x8]               // 0x007f62c7    8d0cff
                         pop                edi                                            // 0x007f62ca    5f
                         lea                edx, dword ptr [esi + ecx * 0x4]               // 0x007f62cb    8d148e
                         pop                esi                                            // 0x007f62ce    5e
                         {disp8} mov        dword ptr [ebx + 0x08], edx                    // 0x007f62cf    895308
                         pop                ebp                                            // 0x007f62d2    5d
                         pop                ebx                                            // 0x007f62d3    5b
                         add                esp, 0x0c                                      // 0x007f62d4    83c40c
                         ret                0x000c                                         // 0x007f62d7    c20c00
_jmp_addr_0x007f62da:    {disp8} mov        ecx, dword ptr [ebx + 0x08]                    // 0x007f62da    8b4b08
                         {disp8} mov        dword ptr [ebx + 0x04], esi                    // 0x007f62dd    897304
                         sub.s              ecx, eax                                       // 0x007f62e0    2bc8
                         mov                eax, 0x38e38e39                                // 0x007f62e2    b8398ee338
                         imul               ecx                                            // 0x007f62e7    f7e9
                         sar                edx, 3                                         // 0x007f62e9    c1fa03
                         mov.s              eax, edx                                       // 0x007f62ec    8bc2
                         shr                eax, 0x1f                                      // 0x007f62ee    c1e81f
                         add.s              edx, eax                                       // 0x007f62f1    03d0
                         add.s              edi, edx                                       // 0x007f62f3    03fa
                         lea                ecx, dword ptr [edi + edi * 0x8]               // 0x007f62f5    8d0cff
                         pop                edi                                            // 0x007f62f8    5f
                         lea                edx, dword ptr [esi + ecx * 0x4]               // 0x007f62f9    8d148e
                         pop                esi                                            // 0x007f62fc    5e
                         {disp8} mov        dword ptr [ebx + 0x08], edx                    // 0x007f62fd    895308
                         pop                ebp                                            // 0x007f6300    5d
                         pop                ebx                                            // 0x007f6301    5b
                         add                esp, 0x0c                                      // 0x007f6302    83c40c
                         ret                0x000c                                         // 0x007f6305    c20c00
_jmp_addr_0x007f6308:    {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x007f6308    8b5c2420
                         mov.s              edx, esi                                       // 0x007f630c    8bd6
                         sub.s              edx, ebx                                       // 0x007f630e    2bd3
                         mov                eax, 0x38e38e39                                // 0x007f6310    b8398ee338
                         imul               edx                                            // 0x007f6315    f7ea
                         sar                edx, 3                                         // 0x007f6317    c1fa03
                         mov.s              eax, edx                                       // 0x007f631a    8bc2
                         shr                eax, 0x1f                                      // 0x007f631c    c1e81f
                         add.s              edx, eax                                       // 0x007f631f    03d0
                         cmp.s              edx, edi                                       // 0x007f6321    3bd7
                         {disp32} jae       _jmp_addr_0x007f63f9                           // 0x007f6323    0f83d0000000
                         lea                eax, dword ptr [edi + edi * 0x8]               // 0x007f6329    8d04ff
                         mov.s              ebp, ebx                                       // 0x007f632c    8beb
                         shl                eax, 2                                         // 0x007f632e    c1e002
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x007f6331    89442420
                         add.s              eax, ebx                                       // 0x007f6335    03c3
                         cmp.s              ebx, esi                                       // 0x007f6337    3bde
                         {disp8} je         _jmp_addr_0x007f6363                           // 0x007f6339    7428
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x007f633b    89442424
_jmp_addr_0x007f633f:    {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x007f633f    8b4c2424
                         push               ebp                                            // 0x007f6343    55
                         push               ecx                                            // 0x007f6344    51
                         call               _jmp_addr_0x007f67a0                           // 0x007f6345    e856040000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x007f634a    8b4c242c
                         add                ebp, 0x24                                      // 0x007f634e    83c524
                         add                esp, 0x08                                      // 0x007f6351    83c408
                         add                ecx, 0x24                                      // 0x007f6354    83c124
                         cmp.s              ebp, esi                                       // 0x007f6357    3bee
                         {disp8} mov        dword ptr [esp + 0x24], ecx                    // 0x007f6359    894c2424
                         {disp8} jne        _jmp_addr_0x007f633f                           // 0x007f635d    75e0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f635f    8b4c2410
_jmp_addr_0x007f6363:    {disp8} mov        esi, dword ptr [ecx + 0x08]                    // 0x007f6363    8b7108
                         mov                eax, 0x38e38e39                                // 0x007f6366    b8398ee338
                         mov.s              ecx, esi                                       // 0x007f636b    8bce
                         sub.s              ecx, ebx                                       // 0x007f636d    2bcb
                         imul               ecx                                            // 0x007f636f    f7e9
                         sar                edx, 3                                         // 0x007f6371    c1fa03
                         mov.s              eax, edx                                       // 0x007f6374    8bc2
                         shr                eax, 0x1f                                      // 0x007f6376    c1e81f
                         add.s              edx, eax                                       // 0x007f6379    03d0
                         sub.s              edi, edx                                       // 0x007f637b    2bfa
                         mov.s              eax, edi                                       // 0x007f637d    8bc7
                         {disp8} mov        edi, dword ptr [esp + 0x28]                    // 0x007f637f    8b7c2428
                         {disp8} je         _jmp_addr_0x007f6397                           // 0x007f6383    7412
                         mov.s              ebp, eax                                       // 0x007f6385    8be8
_jmp_addr_0x007f6387:    push               edi                                            // 0x007f6387    57
                         push               esi                                            // 0x007f6388    56
                         call               _jmp_addr_0x007f67a0                           // 0x007f6389    e812040000
                         add                esp, 0x08                                      // 0x007f638e    83c408
                         add                esi, 0x24                                      // 0x007f6391    83c624
                         dec                ebp                                            // 0x007f6394    4d
                         {disp8} jne        _jmp_addr_0x007f6387                           // 0x007f6395    75f0
_jmp_addr_0x007f6397:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f6397    8b4c2410
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                    // 0x007f639b    8b4108
                         cmp.s              ebx, eax                                       // 0x007f639e    3bd8
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x007f63a0    89442428
                         {disp8} je         _jmp_addr_0x007f63e3                           // 0x007f63a4    743d
                         {disp8} lea        ebp, dword ptr [edi + 0x10]                    // 0x007f63a6    8d6f10
                         {disp8} lea        esi, dword ptr [ebx + 0x08]                    // 0x007f63a9    8d7308
_jmp_addr_0x007f63ac:    mov                ecx, dword ptr [edi]                           // 0x007f63ac    8b0f
                         push               ebp                                            // 0x007f63ae    55
                         {disp8} mov        dword ptr [esi + -0x08], ecx                   // 0x007f63af    894ef8
                         {disp8} mov        edx, dword ptr [edi + 0x04]                    // 0x007f63b2    8b5704
                         {disp8} mov        dword ptr [esi + -0x04], edx                   // 0x007f63b5    8956fc
                         {disp8} mov        eax, dword ptr [edi + 0x08]                    // 0x007f63b8    8b4708
                         mov                dword ptr [esi], eax                           // 0x007f63bb    8906
                         {disp8} mov        ecx, dword ptr [edi + 0x0c]                    // 0x007f63bd    8b4f0c
                         {disp8} mov        dword ptr [esi + 0x04], ecx                    // 0x007f63c0    894e04
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                    // 0x007f63c3    8d4e08
                         call               _jmp_addr_0x007f6bb0                           // 0x007f63c6    e8e5070000
                         {disp8} mov        edx, dword ptr [edi + 0x20]                    // 0x007f63cb    8b5720
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x007f63ce    8b4c2428
                         {disp8} mov        dword ptr [esi + 0x18], edx                    // 0x007f63d2    895618
                         add                esi, 0x24                                      // 0x007f63d5    83c624
                         {disp8} lea        eax, dword ptr [esi + -0x08]                   // 0x007f63d8    8d46f8
                         cmp.s              eax, ecx                                       // 0x007f63db    3bc1
                         {disp8} jne        _jmp_addr_0x007f63ac                           // 0x007f63dd    75cd
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f63df    8b4c2410
_jmp_addr_0x007f63e3:    {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x007f63e3    8b542420
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                    // 0x007f63e7    8b4108
                         pop                edi                                            // 0x007f63ea    5f
                         add.s              eax, edx                                       // 0x007f63eb    03c2
                         pop                esi                                            // 0x007f63ed    5e
                         pop                ebp                                            // 0x007f63ee    5d
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x007f63ef    894108
                         pop                ebx                                            // 0x007f63f2    5b
                         add                esp, 0x0c                                      // 0x007f63f3    83c40c
                         ret                0x000c                                         // 0x007f63f6    c20c00
_jmp_addr_0x007f63f9:    test               edi, edi                                       // 0x007f63f9    85ff
                         {disp32} jbe       _jmp_addr_0x007f64a9                           // 0x007f63fb    0f86a8000000
                         lea                eax, dword ptr [edi + edi * 0x8]               // 0x007f6401    8d04ff
                         mov.s              edi, esi                                       // 0x007f6404    8bfe
                         shl                eax, 2                                         // 0x007f6406    c1e002
                         sub.s              edi, eax                                       // 0x007f6409    2bf8
                         mov.s              ebp, esi                                       // 0x007f640b    8bee
                         cmp.s              edi, esi                                       // 0x007f640d    3bfe
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x007f640f    89442420
                         {disp8} je         _jmp_addr_0x007f6431                           // 0x007f6413    741c
_jmp_addr_0x007f6415:    push               edi                                            // 0x007f6415    57
                         push               ebp                                            // 0x007f6416    55
                         call               _jmp_addr_0x007f67a0                           // 0x007f6417    e884030000
                         add                edi, 0x24                                      // 0x007f641c    83c724
                         add                esp, 0x08                                      // 0x007f641f    83c408
                         add                ebp, 0x24                                      // 0x007f6422    83c524
                         cmp.s              edi, esi                                       // 0x007f6425    3bfe
                         {disp8} jne        _jmp_addr_0x007f6415                           // 0x007f6427    75ec
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f6429    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x007f642d    8b442420
_jmp_addr_0x007f6431:    {disp8} mov        edi, dword ptr [ecx + 0x08]                    // 0x007f6431    8b7908
                         mov.s              esi, edi                                       // 0x007f6434    8bf7
                         sub.s              esi, eax                                       // 0x007f6436    2bf0
                         cmp.s              ebx, esi                                       // 0x007f6438    3bde
                         {disp8} je         _jmp_addr_0x007f6456                           // 0x007f643a    741a
_jmp_addr_0x007f643c:    sub                esi, 0x24                                      // 0x007f643c    83ee24
                         sub                edi, 0x24                                      // 0x007f643f    83ef24
                         push               esi                                            // 0x007f6442    56
                         mov.s              ecx, edi                                       // 0x007f6443    8bcf
                         call               _jmp_addr_0x007f6960                           // 0x007f6445    e816050000
                         cmp.s              esi, ebx                                       // 0x007f644a    3bf3
                         {disp8} jne        _jmp_addr_0x007f643c                           // 0x007f644c    75ee
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f644e    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x007f6452    8b442420
_jmp_addr_0x007f6456:    lea                edx, dword ptr [eax + ebx * 0x1]               // 0x007f6456    8d1418
                         cmp.s              ebx, edx                                       // 0x007f6459    3bda
                         {disp8} mov        dword ptr [esp + 0x24], edx                    // 0x007f645b    89542424
                         {disp8} je         _jmp_addr_0x007f64a6                           // 0x007f645f    7445
                         {disp8} mov        edi, dword ptr [esp + 0x28]                    // 0x007f6461    8b7c2428
                         {disp8} lea        esi, dword ptr [ebx + 0x08]                    // 0x007f6465    8d7308
                         {disp8} lea        ebp, dword ptr [edi + 0x10]                    // 0x007f6468    8d6f10
_jmp_addr_0x007f646b:    mov                eax, dword ptr [edi]                           // 0x007f646b    8b07
                         push               ebp                                            // 0x007f646d    55
                         {disp8} mov        dword ptr [esi + -0x08], eax                   // 0x007f646e    8946f8
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x007f6471    8b4f04
                         {disp8} mov        dword ptr [esi + -0x04], ecx                   // 0x007f6474    894efc
                         {disp8} mov        edx, dword ptr [edi + 0x08]                    // 0x007f6477    8b5708
                         mov                dword ptr [esi], edx                           // 0x007f647a    8916
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                    // 0x007f647c    8b470c
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                    // 0x007f647f    8d4e08
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007f6482    894604
                         call               _jmp_addr_0x007f6bb0                           // 0x007f6485    e826070000
                         {disp8} mov        ecx, dword ptr [edi + 0x20]                    // 0x007f648a    8b4f20
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x007f648d    8b442424
                         {disp8} mov        dword ptr [esi + 0x18], ecx                    // 0x007f6491    894e18
                         add                esi, 0x24                                      // 0x007f6494    83c624
                         {disp8} lea        edx, dword ptr [esi + -0x08]                   // 0x007f6497    8d56f8
                         cmp.s              edx, eax                                       // 0x007f649a    3bd0
                         {disp8} jne        _jmp_addr_0x007f646b                           // 0x007f649c    75cd
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f649e    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x007f64a2    8b442420
_jmp_addr_0x007f64a6:    add                dword ptr [ecx + 0x08], eax                    // 0x007f64a6    014108
_jmp_addr_0x007f64a9:    pop                edi                                            // 0x007f64a9    5f
                         pop                esi                                            // 0x007f64aa    5e
                         pop                ebp                                            // 0x007f64ab    5d
                         pop                ebx                                            // 0x007f64ac    5b
                         add                esp, 0x0c                                      // 0x007f64ad    83c40c
                         ret                0x000c                                         // 0x007f64b0    c20c00
                         nop                                                               // 0x007f64b3    90
                         nop                                                               // 0x007f64b4    90
                         nop                                                               // 0x007f64b5    90
                         nop                                                               // 0x007f64b6    90
                         nop                                                               // 0x007f64b7    90
                         nop                                                               // 0x007f64b8    90
                         nop                                                               // 0x007f64b9    90
                         nop                                                               // 0x007f64ba    90
                         nop                                                               // 0x007f64bb    90
                         nop                                                               // 0x007f64bc    90
                         nop                                                               // 0x007f64bd    90
                         nop                                                               // 0x007f64be    90
                         nop                                                               // 0x007f64bf    90
_jmp_addr_0x007f64c0:    {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x007f64c0    8b5104
                         test               edx, edx                                       // 0x007f64c3    85d2
                         {disp8} jne        _jmp_addr_0x007f64ca                           // 0x007f64c5    7503
                         xor.s              eax, eax                                       // 0x007f64c7    33c0
                         ret                                                               // 0x007f64c9    c3
_jmp_addr_0x007f64ca:    {disp8} mov        eax, dword ptr [ecx + 0x08]                    // 0x007f64ca    8b4108
                         sub.s              eax, edx                                       // 0x007f64cd    2bc2
                         sar                eax, 2                                         // 0x007f64cf    c1f802
                         ret                                                               // 0x007f64d2    c3
                         nop                                                               // 0x007f64d3    90
                         nop                                                               // 0x007f64d4    90
                         nop                                                               // 0x007f64d5    90
                         nop                                                               // 0x007f64d6    90
                         nop                                                               // 0x007f64d7    90
                         nop                                                               // 0x007f64d8    90
                         nop                                                               // 0x007f64d9    90
                         nop                                                               // 0x007f64da    90
                         nop                                                               // 0x007f64db    90
                         nop                                                               // 0x007f64dc    90
                         nop                                                               // 0x007f64dd    90
                         nop                                                               // 0x007f64de    90
                         nop                                                               // 0x007f64df    90
_jmp_addr_0x007f64e0:    sub                esp, 0x08                                      // 0x007f64e0    83ec08
                         push               ebx                                            // 0x007f64e3    53
                         push               ebp                                            // 0x007f64e4    55
                         push               esi                                            // 0x007f64e5    56
                         push               edi                                            // 0x007f64e6    57
                         {disp8} mov        ebp, dword ptr [esp + 0x20]                    // 0x007f64e7    8b6c2420
                         mov.s              edi, ecx                                       // 0x007f64eb    8bf9
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x007f64ed    897c2410
                         {disp8} mov        eax, dword ptr [edi + 0x08]                    // 0x007f64f1    8b4708
                         {disp8} mov        ecx, dword ptr [edi + 0x0c]                    // 0x007f64f4    8b4f0c
                         sub.s              ecx, eax                                       // 0x007f64f7    2bc8
                         sar                ecx, 2                                         // 0x007f64f9    c1f902
                         cmp.s              ecx, ebp                                       // 0x007f64fc    3bcd
                         {disp32} jae       _jmp_addr_0x007f660a                           // 0x007f64fe    0f8306010000
                         {disp8} mov        edx, dword ptr [edi + 0x04]                    // 0x007f6504    8b5704
                         test               edx, edx                                       // 0x007f6507    85d2
                         {disp8} je         _jmp_addr_0x007f6516                           // 0x007f6509    740b
                         mov.s              ecx, eax                                       // 0x007f650b    8bc8
                         sub.s              ecx, edx                                       // 0x007f650d    2bca
                         sar                ecx, 2                                         // 0x007f650f    c1f902
                         cmp.s              ebp, ecx                                       // 0x007f6512    3be9
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x007f6518    // 0x007f6514    7202
_jmp_addr_0x007f6516:    mov.s              ecx, ebp                                       // 0x007f6516    8bcd
_jmp_addr_0x007f6518:    test               edx, edx                                       // 0x007f6518    85d2
                         {disp8} jne        _jmp_addr_0x007f6520                           // 0x007f651a    7504
                         xor.s              eax, eax                                       // 0x007f651c    33c0
                         {disp8} jmp        _jmp_addr_0x007f6525                           // 0x007f651e    eb05
_jmp_addr_0x007f6520:    sub.s              eax, edx                                       // 0x007f6520    2bc2
                         sar                eax, 2                                         // 0x007f6522    c1f802
_jmp_addr_0x007f6525:    add.s              eax, ecx                                       // 0x007f6525    03c1
                         test               eax, eax                                       // 0x007f6527    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f6529    89442414
                         {disp8} jge        _jmp_addr_0x007f6531                           // 0x007f652d    7d02
                         xor.s              eax, eax                                       // 0x007f652f    33c0
_jmp_addr_0x007f6531:    {disp32} lea       edx, dword ptr [eax * 0x4 + 0x00000000]        // 0x007f6531    8d148500000000
                         push               edx                                            // 0x007f6538    52
                         call               ??2@YAPAXI@Z                                   // 0x007f6539    e8b0fffcff
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x007f653e    8b5c2420
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x007f6542    89442424
                         mov.s              ecx, eax                                       // 0x007f6546    8bc8
                         {disp8} mov        eax, dword ptr [edi + 0x04]                    // 0x007f6548    8b4704
                         add                esp, 0x04                                      // 0x007f654b    83c404
                         cmp.s              eax, ebx                                       // 0x007f654e    3bc3
                         {disp8} je         _jmp_addr_0x007f6564                           // 0x007f6550    7412
_jmp_addr_0x007f6552:    test               ecx, ecx                                       // 0x007f6552    85c9
                         {disp8} je         _jmp_addr_0x007f655a                           // 0x007f6554    7404
                         mov                edx, dword ptr [eax]                           // 0x007f6556    8b10
                         mov                dword ptr [ecx], edx                           // 0x007f6558    8911
_jmp_addr_0x007f655a:    add                eax, 0x04                                      // 0x007f655a    83c004
                         add                ecx, 0x4                                       // 0x007f655d    83c104
                         cmp.s              eax, ebx                                       // 0x007f6560    3bc3
                         {disp8} jne        _jmp_addr_0x007f6552                           // 0x007f6562    75ee
_jmp_addr_0x007f6564:    test               ebp, ebp                                       // 0x007f6564    85ed
                         mov.s              eax, ecx                                       // 0x007f6566    8bc1
                         {disp8} jbe        _jmp_addr_0x007f6582                           // 0x007f6568    7618
                         {disp8} mov        esi, dword ptr [esp + 0x24]                    // 0x007f656a    8b742424
                         mov.s              edx, ebp                                       // 0x007f656e    8bd5
_jmp_addr_0x007f6570:    test               eax, eax                                       // 0x007f6570    85c0
                         {disp8} je         _jmp_addr_0x007f657c                           // 0x007f6572    7408
                         mov                edi, dword ptr [esi]                           // 0x007f6574    8b3e
                         mov                dword ptr [eax], edi                           // 0x007f6576    8938
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x007f6578    8b7c2410
_jmp_addr_0x007f657c:    add                eax, 0x04                                      // 0x007f657c    83c004
                         dec                edx                                            // 0x007f657f    4a
                         {disp8} jne        _jmp_addr_0x007f6570                           // 0x007f6580    75ee
_jmp_addr_0x007f6582:    {disp8} mov        edi, dword ptr [edi + 0x08]                    // 0x007f6582    8b7f08
                         {disp32} lea       esi, dword ptr [ebp * 0x4 + 0x00000000]        // 0x007f6585    8d34ad00000000
                         cmp.s              ebx, edi                                       // 0x007f658c    3bdf
                         lea                edx, dword ptr [esi + ecx * 0x1]               // 0x007f658e    8d140e
                         {disp8} je         _jmp_addr_0x007f65ad                           // 0x007f6591    741a
                         mov.s              eax, edx                                       // 0x007f6593    8bc2
                         sub.s              eax, esi                                       // 0x007f6595    2bc6
                         sub.s              eax, ecx                                       // 0x007f6597    2bc1
                         add.s              eax, ebx                                       // 0x007f6599    03c3
_jmp_addr_0x007f659b:    test               edx, edx                                       // 0x007f659b    85d2
                         {disp8} je         _jmp_addr_0x007f65a3                           // 0x007f659d    7404
                         mov                ecx, dword ptr [eax]                           // 0x007f659f    8b08
                         mov                dword ptr [edx], ecx                           // 0x007f65a1    890a
_jmp_addr_0x007f65a3:    add                eax, 0x04                                      // 0x007f65a3    83c004
                         add                edx, 0x04                                      // 0x007f65a6    83c204
                         cmp.s              eax, edi                                       // 0x007f65a9    3bc7
                         {disp8} jne        _jmp_addr_0x007f659b                           // 0x007f65ab    75ee
_jmp_addr_0x007f65ad:    {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x007f65ad    8b742410
                         {disp8} mov        eax, dword ptr [esi + 0x04]                    // 0x007f65b1    8b4604
                         push               eax                                            // 0x007f65b4    50
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x007f65b5    89442428
                         call               ??3@YAXPAX@Z                                   // 0x007f65b9    e8da88fbff
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x007f65be    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f65c2    8b442418
                         add                esp, 0x04                                      // 0x007f65c6    83c404
                         lea                ecx, dword ptr [edx + eax * 0x4]               // 0x007f65c9    8d0c82
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                    // 0x007f65cc    894e0c
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f65cf    8b4e04
                         test               ecx, ecx                                       // 0x007f65d2    85c9
                         {disp8} jne        _jmp_addr_0x007f65ed                           // 0x007f65d4    7517
                         xor.s              eax, eax                                       // 0x007f65d6    33c0
                         {disp8} mov        dword ptr [esi + 0x04], edx                    // 0x007f65d8    895604
                         mov.s              eax, ebp                                       // 0x007f65db    8bc5
                         pop                edi                                            // 0x007f65dd    5f
                         lea                eax, dword ptr [edx + eax * 0x4]               // 0x007f65de    8d0482
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x007f65e1    894608
                         pop                esi                                            // 0x007f65e4    5e
                         pop                ebp                                            // 0x007f65e5    5d
                         pop                ebx                                            // 0x007f65e6    5b
                         add                esp, 0x08                                      // 0x007f65e7    83c408
                         ret                0x000c                                         // 0x007f65ea    c20c00
_jmp_addr_0x007f65ed:    {disp8} mov        eax, dword ptr [esi + 0x08]                    // 0x007f65ed    8b4608
                         {disp8} mov        dword ptr [esi + 0x04], edx                    // 0x007f65f0    895604
                         sub.s              eax, ecx                                       // 0x007f65f3    2bc1
                         pop                edi                                            // 0x007f65f5    5f
                         sar                eax, 2                                         // 0x007f65f6    c1f802
                         add.s              eax, ebp                                       // 0x007f65f9    03c5
                         lea                eax, dword ptr [edx + eax * 0x4]               // 0x007f65fb    8d0482
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x007f65fe    894608
                         pop                esi                                            // 0x007f6601    5e
                         pop                ebp                                            // 0x007f6602    5d
                         pop                ebx                                            // 0x007f6603    5b
                         add                esp, 0x08                                      // 0x007f6604    83c408
                         ret                0x000c                                         // 0x007f6607    c20c00
_jmp_addr_0x007f660a:    {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x007f660a    8b54241c
                         mov.s              ecx, eax                                       // 0x007f660e    8bc8
                         sub.s              ecx, edx                                       // 0x007f6610    2bca
                         sar                ecx, 2                                         // 0x007f6612    c1f902
                         cmp.s              ecx, ebp                                       // 0x007f6615    3bcd
                         {disp8} jae        _jmp_addr_0x007f6687                           // 0x007f6617    736e
                         {disp32} lea       ebx, dword ptr [ebp * 0x4 + 0x00000000]        // 0x007f6619    8d1cad00000000
                         cmp.s              edx, eax                                       // 0x007f6620    3bd0
                         lea                esi, dword ptr [ebx + edx * 0x1]               // 0x007f6622    8d3413
                         {disp8} je         _jmp_addr_0x007f6641                           // 0x007f6625    741a
                         mov.s              ecx, esi                                       // 0x007f6627    8bce
                         sub.s              ecx, ebx                                       // 0x007f6629    2bcb
_jmp_addr_0x007f662b:    test               esi, esi                                       // 0x007f662b    85f6
                         {disp8} je         _jmp_addr_0x007f6637                           // 0x007f662d    7408
                         mov                edi, dword ptr [ecx]                           // 0x007f662f    8b39
                         mov                dword ptr [esi], edi                           // 0x007f6631    893e
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x007f6633    8b7c2410
_jmp_addr_0x007f6637:    add                ecx, 0x4                                       // 0x007f6637    83c104
                         add                esi, 0x04                                      // 0x007f663a    83c604
                         cmp.s              ecx, eax                                       // 0x007f663d    3bc8
                         {disp8} jne        _jmp_addr_0x007f662b                           // 0x007f663f    75ea
_jmp_addr_0x007f6641:    {disp8} mov        eax, dword ptr [edi + 0x08]                    // 0x007f6641    8b4708
                         {disp8} mov        esi, dword ptr [esp + 0x24]                    // 0x007f6644    8b742424
                         mov.s              ecx, eax                                       // 0x007f6648    8bc8
                         sub.s              ecx, edx                                       // 0x007f664a    2bca
                         sar                ecx, 2                                         // 0x007f664c    c1f902
                         sub.s              ebp, ecx                                       // 0x007f664f    2be9
                         {disp8} je         _jmp_addr_0x007f6661                           // 0x007f6651    740e
_jmp_addr_0x007f6653:    test               eax, eax                                       // 0x007f6653    85c0
                         {disp8} je         _jmp_addr_0x007f665b                           // 0x007f6655    7404
                         mov                ecx, dword ptr [esi]                           // 0x007f6657    8b0e
                         mov                dword ptr [eax], ecx                           // 0x007f6659    8908
_jmp_addr_0x007f665b:    add                eax, 0x04                                      // 0x007f665b    83c004
                         dec                ebp                                            // 0x007f665e    4d
                         {disp8} jne        _jmp_addr_0x007f6653                           // 0x007f665f    75f2
_jmp_addr_0x007f6661:    {disp8} mov        ecx, dword ptr [edi + 0x08]                    // 0x007f6661    8b4f08
                         mov.s              eax, edx                                       // 0x007f6664    8bc2
                         cmp.s              edx, ecx                                       // 0x007f6666    3bd1
                         {disp8} je         _jmp_addr_0x007f6675                           // 0x007f6668    740b
_jmp_addr_0x007f666a:    mov                edx, dword ptr [esi]                           // 0x007f666a    8b16
                         mov                dword ptr [eax], edx                           // 0x007f666c    8910
                         add                eax, 0x04                                      // 0x007f666e    83c004
                         cmp.s              eax, ecx                                       // 0x007f6671    3bc1
                         {disp8} jne        _jmp_addr_0x007f666a                           // 0x007f6673    75f5
_jmp_addr_0x007f6675:    {disp8} mov        eax, dword ptr [edi + 0x08]                    // 0x007f6675    8b4708
                         add.s              eax, ebx                                       // 0x007f6678    03c3
                         {disp8} mov        dword ptr [edi + 0x08], eax                    // 0x007f667a    894708
                         pop                edi                                            // 0x007f667d    5f
                         pop                esi                                            // 0x007f667e    5e
                         pop                ebp                                            // 0x007f667f    5d
                         pop                ebx                                            // 0x007f6680    5b
                         add                esp, 0x08                                      // 0x007f6681    83c408
                         ret                0x000c                                         // 0x007f6684    c20c00
_jmp_addr_0x007f6687:    test               ebp, ebp                                       // 0x007f6687    85ed
                         {disp8} jbe        _jmp_addr_0x007f66df                           // 0x007f6689    7654
                         shl                ebp, 2                                         // 0x007f668b    c1e502
                         mov.s              ecx, eax                                       // 0x007f668e    8bc8
                         mov.s              esi, eax                                       // 0x007f6690    8bf0
                         sub.s              ecx, ebp                                       // 0x007f6692    2bcd
                         cmp.s              ecx, eax                                       // 0x007f6694    3bc8
                         {disp8} je         _jmp_addr_0x007f66aa                           // 0x007f6696    7412
_jmp_addr_0x007f6698:    test               esi, esi                                       // 0x007f6698    85f6
                         {disp8} je         _jmp_addr_0x007f66a0                           // 0x007f669a    7404
                         mov                ebx, dword ptr [ecx]                           // 0x007f669c    8b19
                         mov                dword ptr [esi], ebx                           // 0x007f669e    891e
_jmp_addr_0x007f66a0:    add                ecx, 0x4                                       // 0x007f66a0    83c104
                         add                esi, 0x04                                      // 0x007f66a3    83c604
                         cmp.s              ecx, eax                                       // 0x007f66a6    3bc8
                         {disp8} jne        _jmp_addr_0x007f6698                           // 0x007f66a8    75ee
_jmp_addr_0x007f66aa:    {disp8} mov        ecx, dword ptr [edi + 0x08]                    // 0x007f66aa    8b4f08
                         mov.s              eax, ecx                                       // 0x007f66ad    8bc1
                         sub.s              eax, ebp                                       // 0x007f66af    2bc5
                         cmp.s              edx, eax                                       // 0x007f66b1    3bd0
                         {disp8} je         _jmp_addr_0x007f66c4                           // 0x007f66b3    740f
_jmp_addr_0x007f66b5:    {disp8} mov        esi, dword ptr [eax + -0x04]                   // 0x007f66b5    8b70fc
                         sub                eax, 0x04                                      // 0x007f66b8    83e804
                         sub                ecx, 0x04                                      // 0x007f66bb    83e904
                         cmp.s              eax, edx                                       // 0x007f66be    3bc2
                         mov                dword ptr [ecx], esi                           // 0x007f66c0    8931
                         {disp8} jne        _jmp_addr_0x007f66b5                           // 0x007f66c2    75f1
_jmp_addr_0x007f66c4:    lea                ecx, dword ptr [edx + ebp * 0x1]               // 0x007f66c4    8d0c2a
                         mov.s              eax, edx                                       // 0x007f66c7    8bc2
                         cmp.s              edx, ecx                                       // 0x007f66c9    3bd1
                         {disp8} je         _jmp_addr_0x007f66dc                           // 0x007f66cb    740f
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x007f66cd    8b542424
_jmp_addr_0x007f66d1:    mov                esi, dword ptr [edx]                           // 0x007f66d1    8b32
                         mov                dword ptr [eax], esi                           // 0x007f66d3    8930
                         add                eax, 0x04                                      // 0x007f66d5    83c004
                         cmp.s              eax, ecx                                       // 0x007f66d8    3bc1
                         {disp8} jne        _jmp_addr_0x007f66d1                           // 0x007f66da    75f5
_jmp_addr_0x007f66dc:    add                dword ptr [edi + 0x08], ebp                    // 0x007f66dc    016f08
_jmp_addr_0x007f66df:    pop                edi                                            // 0x007f66df    5f
                         pop                esi                                            // 0x007f66e0    5e
                         pop                ebp                                            // 0x007f66e1    5d
                         pop                ebx                                            // 0x007f66e2    5b
                         add                esp, 0x08                                      // 0x007f66e3    83c408
                         ret                0x000c                                         // 0x007f66e6    c20c00
                         nop                                                               // 0x007f66e9    90
                         nop                                                               // 0x007f66ea    90
                         nop                                                               // 0x007f66eb    90
                         nop                                                               // 0x007f66ec    90
                         nop                                                               // 0x007f66ed    90
                         nop                                                               // 0x007f66ee    90
                         nop                                                               // 0x007f66ef    90
_jmp_addr_0x007f66f0:    {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x007f66f0    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007f66f4    8b442404
                         push               esi                                            // 0x007f66f8    56
                         push               edi                                            // 0x007f66f9    57
                         {disp8} mov        edi, dword ptr [ecx + 0x08]                    // 0x007f66fa    8b7908
                         mov.s              esi, eax                                       // 0x007f66fd    8bf0
                         cmp.s              edx, edi                                       // 0x007f66ff    3bd7
                         {disp8} je         _jmp_addr_0x007f6713                           // 0x007f6701    7410
                         push               ebx                                            // 0x007f6703    53
_jmp_addr_0x007f6704:    mov                ebx, dword ptr [edx]                           // 0x007f6704    8b1a
                         add                edx, 0x04                                      // 0x007f6706    83c204
                         mov                dword ptr [esi], ebx                           // 0x007f6709    891e
                         add                esi, 0x04                                      // 0x007f670b    83c604
                         cmp.s              edx, edi                                       // 0x007f670e    3bd7
                         {disp8} jne        _jmp_addr_0x007f6704                           // 0x007f6710    75f2
                         pop                ebx                                            // 0x007f6712    5b
_jmp_addr_0x007f6713:    {disp8} mov        edx, dword ptr [ecx + 0x08]                    // 0x007f6713    8b5108
                         {disp8} mov        dword ptr [ecx + 0x08], esi                    // 0x007f6716    897108
                         pop                edi                                            // 0x007f6719    5f
                         {disp8} mov        dword ptr [esp + 0x08], edx                    // 0x007f671a    89542408
                         pop                esi                                            // 0x007f671e    5e
                         ret                0x0008                                         // 0x007f671f    c20800
                         nop                                                               // 0x007f6722    90
                         nop                                                               // 0x007f6723    90
                         nop                                                               // 0x007f6724    90
                         nop                                                               // 0x007f6725    90
                         nop                                                               // 0x007f6726    90
                         nop                                                               // 0x007f6727    90
                         nop                                                               // 0x007f6728    90
                         nop                                                               // 0x007f6729    90
                         nop                                                               // 0x007f672a    90
                         nop                                                               // 0x007f672b    90
                         nop                                                               // 0x007f672c    90
                         nop                                                               // 0x007f672d    90
                         nop                                                               // 0x007f672e    90
                         nop                                                               // 0x007f672f    90
_jmp_addr_0x007f6730:    push               esi                                            // 0x007f6730    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                    // 0x007f6731    8b742408
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f6735    8b4e04
                         test               ecx, ecx                                       // 0x007f6738    85c9
                         {disp8} je         _jmp_addr_0x007f675a                           // 0x007f673a    741e
                         {disp8} mov        al, byte ptr [ecx + -0x01]                     // 0x007f673c    8a41ff
                         test               al, al                                         // 0x007f673f    84c0
                         {disp8} je         _jmp_addr_0x007f674e                           // 0x007f6741    740b
                         cmp                al, -0x01                                      // 0x007f6743    3cff
                         {disp8} je         _jmp_addr_0x007f674e                           // 0x007f6745    7407
                         dec                al                                             // 0x007f6747    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                     // 0x007f6749    8841ff
                         {disp8} jmp        _jmp_addr_0x007f675a                           // 0x007f674c    eb0c
_jmp_addr_0x007f674e:    add                ecx, -0x2                                      // 0x007f674e    83c1fe
                         push               ecx                                            // 0x007f6751    51
                         call               ??3@YAXPAX@Z                                   // 0x007f6752    e84187fbff
                         add                esp, 0x04                                      // 0x007f6757    83c404
_jmp_addr_0x007f675a:    {disp8} mov        dword ptr [esi + 0x04], 0x00000000             // 0x007f675a    c7460400000000
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000             // 0x007f6761    c7460800000000
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000             // 0x007f6768    c7460c00000000
                         pop                esi                                            // 0x007f676f    5e
                         ret                0x0004                                         // 0x007f6770    c20400
                         nop                                                               // 0x007f6773    90
                         nop                                                               // 0x007f6774    90
                         nop                                                               // 0x007f6775    90
                         nop                                                               // 0x007f6776    90
                         nop                                                               // 0x007f6777    90
                         nop                                                               // 0x007f6778    90
                         nop                                                               // 0x007f6779    90
                         nop                                                               // 0x007f677a    90
                         nop                                                               // 0x007f677b    90
                         nop                                                               // 0x007f677c    90
                         nop                                                               // 0x007f677d    90
                         nop                                                               // 0x007f677e    90
                         nop                                                               // 0x007f677f    90
_jmp_addr_0x007f6780:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007f6780    8b442404
                         test               eax, eax                                       // 0x007f6784    85c0
                         {disp8} je         _jmp_addr_0x007f6790                           // 0x007f6786    7408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x007f6788    8b4c2408
                         mov                edx, dword ptr [ecx]                           // 0x007f678c    8b11
                         mov                dword ptr [eax], edx                           // 0x007f678e    8910
_jmp_addr_0x007f6790:    ret                                                               // 0x007f6790    c3
                         nop                                                               // 0x007f6791    90
                         nop                                                               // 0x007f6792    90
                         nop                                                               // 0x007f6793    90
                         nop                                                               // 0x007f6794    90
                         nop                                                               // 0x007f6795    90
                         nop                                                               // 0x007f6796    90
                         nop                                                               // 0x007f6797    90
                         nop                                                               // 0x007f6798    90
                         nop                                                               // 0x007f6799    90
                         nop                                                               // 0x007f679a    90
                         nop                                                               // 0x007f679b    90
                         nop                                                               // 0x007f679c    90
                         nop                                                               // 0x007f679d    90
                         nop                                                               // 0x007f679e    90
                         nop                                                               // 0x007f679f    90
_jmp_addr_0x007f67a0:    push               -0x1                                           // 0x007f67a0    6aff
                         push               0x008a7d12                                     // 0x007f67a2    68127d8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f67a7    64a100000000
                         push               eax                                            // 0x007f67ad    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f67ae    64892500000000
                         sub                esp, 0x14                                      // 0x007f67b5    83ec14
                         push               ebx                                            // 0x007f67b8    53
                         push               ebp                                            // 0x007f67b9    55
                         {disp8} mov        ebp, dword ptr [esp + 0x2c]                    // 0x007f67ba    8b6c242c
                         {disp8} mov        dword ptr [esp + 0x14], ebp                    // 0x007f67be    896c2414
                         xor.s              ebx, ebx                                       // 0x007f67c2    33db
                         cmp.s              ebp, ebx                                       // 0x007f67c4    3beb
                         {disp8} mov        dword ptr [esp + 0x24], ebx                    // 0x007f67c6    895c2424
                         {disp32} je        _jmp_addr_0x007f693e                           // 0x007f67ca    0f846e010000
                         push               esi                                            // 0x007f67d0    56
                         push               edi                                            // 0x007f67d1    57
                         {disp8} mov        edi, dword ptr [esp + 0x38]                    // 0x007f67d2    8b7c2438
                         mov                eax, dword ptr [edi]                           // 0x007f67d6    8b07
                         {disp8} mov        dword ptr [ebp + 0x00], eax                    // 0x007f67d8    894500
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x007f67db    8b4f04
                         {disp8} mov        dword ptr [ebp + 0x04], ecx                    // 0x007f67de    894d04
                         {disp8} mov        edx, dword ptr [edi + 0x08]                    // 0x007f67e1    8b5708
                         {disp8} mov        dword ptr [ebp + 0x08], edx                    // 0x007f67e4    895508
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                    // 0x007f67e7    8b470c
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f67ea    89450c
                         {disp8} mov        cl, byte ptr [edi + 0x10]                      // 0x007f67ed    8a4f10
                         {disp8} mov        byte ptr [ebp + 0x10], cl                      // 0x007f67f0    884d10
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x007f67f3    8b4f14
                         cmp.s              ecx, ebx                                       // 0x007f67f6    3bcb
                         {disp8} jne        _jmp_addr_0x007f67fe                           // 0x007f67f8    7504
                         xor.s              eax, eax                                       // 0x007f67fa    33c0
                         {disp8} jmp        _jmp_addr_0x007f6806                           // 0x007f67fc    eb08
_jmp_addr_0x007f67fe:    {disp8} mov        eax, dword ptr [edi + 0x18]                    // 0x007f67fe    8b4718
                         sub.s              eax, ecx                                       // 0x007f6801    2bc1
                         sar                eax, 4                                         // 0x007f6803    c1f804
_jmp_addr_0x007f6806:    cmp.s              eax, ebx                                       // 0x007f6806    3bc3
                         {disp8} jge        _jmp_addr_0x007f680c                           // 0x007f6808    7d02
                         xor.s              eax, eax                                       // 0x007f680a    33c0
_jmp_addr_0x007f680c:    shl                eax, 4                                         // 0x007f680c    c1e004
                         push               eax                                            // 0x007f680f    50
                         call               ??2@YAPAXI@Z                                   // 0x007f6810    e8d9fcfcff
                         {disp8} mov        dword ptr [ebp + 0x14], eax                    // 0x007f6815    894514
                         {disp8} mov        edx, dword ptr [edi + 0x18]                    // 0x007f6818    8b5718
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x007f681b    8b4f14
                         add                esp, 0x04                                      // 0x007f681e    83c404
                         mov.s              esi, eax                                       // 0x007f6821    8bf0
                         cmp.s              ecx, edx                                       // 0x007f6823    3bca
                         {disp8} mov        dword ptr [esp + 0x18], edx                    // 0x007f6825    89542418
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x007f6829    89742414
                         {disp32} je        _jmp_addr_0x007f6930                           // 0x007f682d    0f84fd000000
                         {disp8} lea        ebp, dword ptr [ecx + 0x04]                    // 0x007f6833    8d6904
_jmp_addr_0x007f6836:    {disp8} mov        dword ptr [esp + 0x20], esi                    // 0x007f6836    89742420
                         cmp.s              esi, ebx                                       // 0x007f683a    3bf3
                         {disp8} mov        byte ptr [esp + 0x2c], 0x01                    // 0x007f683c    c644242c01
                         {disp32} je        _jmp_addr_0x007f690f                           // 0x007f6841    0f84c8000000
                         {disp8} mov        dl, byte ptr [ebp + -0x04]                     // 0x007f6847    8a55fc
                         {disp8} mov        dword ptr [esi + 0x04], ebx                    // 0x007f684a    895e04
                         mov                byte ptr [esi], dl                             // 0x007f684d    8816
                         {disp8} mov        dword ptr [esi + 0x08], ebx                    // 0x007f684f    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                    // 0x007f6852    895e0c
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x007f6855    8b4d04
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]         // 0x007f6858    a1d4ec8d00
                         mov.s              edi, ecx                                       // 0x007f685d    8bf9
                         cmp.s              eax, edi                                       // 0x007f685f    3bc7
                         {disp8} jae        _jmp_addr_0x007f6865                           // 0x007f6861    7302
                         mov.s              edi, eax                                       // 0x007f6863    8bf8
_jmp_addr_0x007f6865:    {disp8} lea        edx, dword ptr [ebp + -0x04]                   // 0x007f6865    8d55fc
                         cmp.s              esi, edx                                       // 0x007f6868    3bf2
                         {disp8} jne        _jmp_addr_0x007f6883                           // 0x007f686a    7517
                         push               eax                                            // 0x007f686c    50
                         push               edi                                            // 0x007f686d    57
                         mov.s              ecx, esi                                       // 0x007f686e    8bce
                         call               _jmp_addr_0x007b7812                           // 0x007f6870    e89d0ffcff
                         push               ebx                                            // 0x007f6875    53
                         push               ebx                                            // 0x007f6876    53
                         mov.s              ecx, esi                                       // 0x007f6877    8bce
                         call               _jmp_addr_0x007b7812                           // 0x007f6879    e8940ffcff
                         {disp32} jmp       _jmp_addr_0x007f690b                           // 0x007f687e    e988000000
_jmp_addr_0x007f6883:    cmp.s              edi, ebx                                       // 0x007f6883    3bfb
                         {disp8} jbe        _jmp_addr_0x007f68cb                           // 0x007f6885    7644
                         cmp.s              edi, ecx                                       // 0x007f6887    3bf9
                         {disp8} jne        _jmp_addr_0x007f68cb                           // 0x007f6889    7540
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                    // 0x007f688b    8b4500
                         cmp.s              eax, ebx                                       // 0x007f688e    3bc3
                         {disp8} jne        _jmp_addr_0x007f6897                           // 0x007f6890    7505
                         call               _jmp_addr_0x007f6dc0                           // 0x007f6892    e829050000
_jmp_addr_0x007f6897:    cmp                byte ptr [eax + -0x01], -0x02                  // 0x007f6897    8078fffe
                         {disp8} jae        _jmp_addr_0x007f68cb                           // 0x007f689b    732e
                         push               0x1                                            // 0x007f689d    6a01
                         mov.s              ecx, esi                                       // 0x007f689f    8bce
                         call               _jmp_addr_0x00545920                           // 0x007f68a1    e87af0d4ff
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                    // 0x007f68a6    8b4500
                         cmp.s              eax, ebx                                       // 0x007f68a9    3bc3
                         {disp8} jne        _jmp_addr_0x007f68b2                           // 0x007f68ab    7505
                         call               _jmp_addr_0x007f6dc0                           // 0x007f68ad    e80e050000
_jmp_addr_0x007f68b2:    {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007f68b2    894604
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x007f68b5    8b4d04
                         {disp8} mov        dword ptr [esi + 0x08], ecx                    // 0x007f68b8    894e08
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007f68bb    8b4d08
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                    // 0x007f68be    894e0c
                         {disp8} mov        cl, byte ptr [eax + -0x01]                     // 0x007f68c1    8a48ff
                         inc                cl                                             // 0x007f68c4    fec1
                         {disp8} mov        byte ptr [eax + -0x01], cl                     // 0x007f68c6    8848ff
                         {disp8} jmp        _jmp_addr_0x007f690b                           // 0x007f68c9    eb40
_jmp_addr_0x007f68cb:    push               0x1                                            // 0x007f68cb    6a01
                         push               edi                                            // 0x007f68cd    57
                         mov.s              ecx, esi                                       // 0x007f68ce    8bce
                         call               _jmp_addr_0x00545990                           // 0x007f68d0    e8bbf0d4ff
                         test               al, al                                         // 0x007f68d5    84c0
                         {disp8} je         _jmp_addr_0x007f690b                           // 0x007f68d7    7432
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                    // 0x007f68d9    8b4500
                         cmp.s              eax, ebx                                       // 0x007f68dc    3bc3
                         {disp8} jne        _jmp_addr_0x007f68e5                           // 0x007f68de    7505
                         call               _jmp_addr_0x007f6dc0                           // 0x007f68e0    e8db040000
_jmp_addr_0x007f68e5:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f68e5    8b4e04
                         push               edi                                            // 0x007f68e8    57
                         push               eax                                            // 0x007f68e9    50
                         push               ecx                                            // 0x007f68ea    51
                         call               _jmp_addr_0x00544b60                           // 0x007f68eb    e870e2d4ff
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x007f68f0    8b4e04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x007f68f3    8d44241c
                         push               eax                                            // 0x007f68f7    50
                         {disp8} mov        dword ptr [esp + 0x20], ebx                    // 0x007f68f8    895c2420
                         lea                edx, dword ptr [ecx + edi * 0x2]               // 0x007f68fc    8d1479
                         {disp8} mov        dword ptr [esi + 0x08], edi                    // 0x007f68ff    897e08
                         push               edx                                            // 0x007f6902    52
                         call               _jmp_addr_0x007f6950                           // 0x007f6903    e848000000
                         add                esp, 0x14                                      // 0x007f6908    83c414
_jmp_addr_0x007f690b:    {disp8} mov        edi, dword ptr [esp + 0x38]                    // 0x007f690b    8b7c2438
_jmp_addr_0x007f690f:    {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x007f690f    8b4c2418
                         add                ebp, 0x10                                      // 0x007f6913    83c510
                         add                esi, 0x10                                      // 0x007f6916    83c610
                         {disp8} mov        byte ptr [esp + 0x2c], bl                      // 0x007f6919    885c242c
                         {disp8} lea        eax, dword ptr [ebp + -0x04]                   // 0x007f691d    8d45fc
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x007f6920    89742414
                         cmp.s              eax, ecx                                       // 0x007f6924    3bc1
                         {disp32} jne       _jmp_addr_0x007f6836                           // 0x007f6926    0f850affffff
                         {disp8} mov        ebp, dword ptr [esp + 0x34]                    // 0x007f692c    8b6c2434
_jmp_addr_0x007f6930:    {disp8} mov        dword ptr [ebp + 0x18], esi                    // 0x007f6930    897518
                         {disp8} mov        dword ptr [ebp + 0x1c], esi                    // 0x007f6933    89751c
                         {disp8} mov        ecx, dword ptr [edi + 0x20]                    // 0x007f6936    8b4f20
                         pop                edi                                            // 0x007f6939    5f
                         {disp8} mov        dword ptr [ebp + 0x20], ecx                    // 0x007f693a    894d20
                         pop                esi                                            // 0x007f693d    5e
_jmp_addr_0x007f693e:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x007f693e    8b4c241c
                         pop                ebp                                            // 0x007f6942    5d
                         pop                ebx                                            // 0x007f6943    5b
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f6944    64890d00000000
                         add                esp, 0x20                                      // 0x007f694b    83c420
                         ret                                                               // 0x007f694e    c3
                         nop                                                               // 0x007f694f    90
_jmp_addr_0x007f6950:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007f6950    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x007f6954    8b542404
                         mov                cx, word ptr [eax]                             // 0x007f6958    668b08
                         mov                word ptr [edx], cx                             // 0x007f695b    66890a
                         ret                                                               // 0x007f695e    c3
                         nop                                                               // 0x007f695f    90
_jmp_addr_0x007f6960:    push               ecx                                            // 0x007f6960    51
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007f6961    8b442408
                         push               ebx                                            // 0x007f6965    53
                         push               ebp                                            // 0x007f6966    55
                         mov.s              ebp, ecx                                       // 0x007f6967    8be9
                         mov                ecx, dword ptr [eax]                           // 0x007f6969    8b08
                         push               esi                                            // 0x007f696b    56
                         {disp8} mov        dword ptr [ebp + 0x00], ecx                    // 0x007f696c    894d00
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x007f696f    8b5004
                         {disp8} mov        dword ptr [ebp + 0x04], edx                    // 0x007f6972    895504
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                    // 0x007f6975    8b4808
                         {disp8} mov        dword ptr [ebp + 0x08], ecx                    // 0x007f6978    894d08
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x007f697b    8b500c
                         {disp8} mov        dword ptr [ebp + 0x0c], edx                    // 0x007f697e    89550c
                         {disp8} lea        edx, dword ptr [eax + 0x10]                    // 0x007f6981    8d5010
                         {disp8} lea        ebx, dword ptr [ebp + 0x10]                    // 0x007f6984    8d5d10
                         push               edi                                            // 0x007f6987    57
                         cmp.s              ebx, edx                                       // 0x007f6988    3bda
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x007f698a    896c2410
                         {disp32} je        _jmp_addr_0x007f6b97                           // 0x007f698e    0f8403020000
                         {disp8} mov        esi, dword ptr [edx + 0x04]                    // 0x007f6994    8b7204
                         test               esi, esi                                       // 0x007f6997    85f6
                         {disp8} jne        _jmp_addr_0x007f699f                           // 0x007f6999    7504
                         xor.s              edi, edi                                       // 0x007f699b    33ff
                         {disp8} jmp        _jmp_addr_0x007f69a7                           // 0x007f699d    eb08
_jmp_addr_0x007f699f:    {disp8} mov        edi, dword ptr [edx + 0x08]                    // 0x007f699f    8b7a08
                         sub.s              edi, esi                                       // 0x007f69a2    2bfe
                         sar                edi, 4                                         // 0x007f69a4    c1ff04
_jmp_addr_0x007f69a7:    {disp8} mov        ecx, dword ptr [ebx + 0x04]                    // 0x007f69a7    8b4b04
                         test               ecx, ecx                                       // 0x007f69aa    85c9
                         {disp8} jne        _jmp_addr_0x007f69b2                           // 0x007f69ac    7504
                         xor.s              eax, eax                                       // 0x007f69ae    33c0
                         {disp8} jmp        _jmp_addr_0x007f69ba                           // 0x007f69b0    eb08
_jmp_addr_0x007f69b2:    {disp8} mov        eax, dword ptr [ebx + 0x08]                    // 0x007f69b2    8b4308
                         sub.s              eax, ecx                                       // 0x007f69b5    2bc1
                         sar                eax, 4                                         // 0x007f69b7    c1f804
_jmp_addr_0x007f69ba:    cmp.s              edi, eax                                       // 0x007f69ba    3bf8
                         {disp32} ja        _jmp_addr_0x007f6a54                           // 0x007f69bc    0f8792000000
                         {disp8} mov        ebx, dword ptr [edx + 0x08]                    // 0x007f69c2    8b5a08
                         mov.s              edi, ecx                                       // 0x007f69c5    8bf9
                         cmp.s              esi, ebx                                       // 0x007f69c7    3bf3
                         {disp8} je         _jmp_addr_0x007f69e5                           // 0x007f69c9    741a
_jmp_addr_0x007f69cb:    {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]         // 0x007f69cb    a1d4ec8d00
                         mov.s              ecx, edi                                       // 0x007f69d0    8bcf
                         push               eax                                            // 0x007f69d2    50
                         push               0x0                                            // 0x007f69d3    6a00
                         push               esi                                            // 0x007f69d5    56
                         call               _jmp_addr_0x00545f00                           // 0x007f69d6    e825f5d4ff
                         add                esi, 0x10                                      // 0x007f69db    83c610
                         add                edi, 0x10                                      // 0x007f69de    83c710
                         cmp.s              esi, ebx                                       // 0x007f69e1    3bf3
                         {disp8} jne        _jmp_addr_0x007f69cb                           // 0x007f69e3    75e6
_jmp_addr_0x007f69e5:    {disp8} mov        ebx, dword ptr [ebp + 0x18]                    // 0x007f69e5    8b5d18
                         mov.s              esi, edi                                       // 0x007f69e8    8bf7
                         cmp.s              edi, ebx                                       // 0x007f69ea    3bfb
                         {disp8} je         _jmp_addr_0x007f69fe                           // 0x007f69ec    7410
_jmp_addr_0x007f69ee:    push               0x0                                            // 0x007f69ee    6a00
                         mov.s              ecx, esi                                       // 0x007f69f0    8bce
                         call               _jmp_addr_0x00545d80                           // 0x007f69f2    e889f3d4ff
                         add                esi, 0x10                                      // 0x007f69f7    83c610
                         cmp.s              esi, ebx                                       // 0x007f69fa    3bf3
                         {disp8} jne        _jmp_addr_0x007f69ee                           // 0x007f69fc    75f0
_jmp_addr_0x007f69fe:    {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x007f69fe    8b4c2418
                         {disp8} lea        eax, dword ptr [ecx + 0x10]                    // 0x007f6a02    8d4110
                         {disp8} mov        ecx, dword ptr [ecx + 0x14]                    // 0x007f6a05    8b4914
                         test               ecx, ecx                                       // 0x007f6a08    85c9
                         {disp8} jne        _jmp_addr_0x007f6a2d                           // 0x007f6a0a    7521
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x007f6a0c    8b4d14
                         xor.s              eax, eax                                       // 0x007f6a0f    33c0
                         shl                eax, 4                                         // 0x007f6a11    c1e004
                         add.s              eax, ecx                                       // 0x007f6a14    03c1
                         pop                edi                                            // 0x007f6a16    5f
                         {disp8} mov        dword ptr [ebp + 0x18], eax                    // 0x007f6a17    894518
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f6a1a    8b442414
                         pop                esi                                            // 0x007f6a1e    5e
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                    // 0x007f6a1f    8b4820
                         mov.s              eax, ebp                                       // 0x007f6a22    8bc5
                         {disp8} mov        dword ptr [ebp + 0x20], ecx                    // 0x007f6a24    894d20
                         pop                ebp                                            // 0x007f6a27    5d
                         pop                ebx                                            // 0x007f6a28    5b
                         pop                ecx                                            // 0x007f6a29    59
                         ret                0x0004                                         // 0x007f6a2a    c20400
_jmp_addr_0x007f6a2d:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x007f6a2d    8b4008
                         pop                edi                                            // 0x007f6a30    5f
                         sub.s              eax, ecx                                       // 0x007f6a31    2bc1
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x007f6a33    8b4d14
                         sar                eax, 4                                         // 0x007f6a36    c1f804
                         shl                eax, 4                                         // 0x007f6a39    c1e004
                         add.s              eax, ecx                                       // 0x007f6a3c    03c1
                         pop                esi                                            // 0x007f6a3e    5e
                         {disp8} mov        dword ptr [ebp + 0x18], eax                    // 0x007f6a3f    894518
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007f6a42    8b442410
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                    // 0x007f6a46    8b4820
                         mov.s              eax, ebp                                       // 0x007f6a49    8bc5
                         {disp8} mov        dword ptr [ebp + 0x20], ecx                    // 0x007f6a4b    894d20
                         pop                ebp                                            // 0x007f6a4e    5d
                         pop                ebx                                            // 0x007f6a4f    5b
                         pop                ecx                                            // 0x007f6a50    59
                         ret                0x0004                                         // 0x007f6a51    c20400
_jmp_addr_0x007f6a54:    test               esi, esi                                       // 0x007f6a54    85f6
                         {disp8} jne        _jmp_addr_0x007f6a5c                           // 0x007f6a56    7504
                         xor.s              edx, edx                                       // 0x007f6a58    33d2
                         {disp8} jmp        _jmp_addr_0x007f6a64                           // 0x007f6a5a    eb08
_jmp_addr_0x007f6a5c:    {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x007f6a5c    8b5208
                         sub.s              edx, esi                                       // 0x007f6a5f    2bd6
                         sar                edx, 4                                         // 0x007f6a61    c1fa04
_jmp_addr_0x007f6a64:    test               ecx, ecx                                       // 0x007f6a64    85c9
                         {disp8} jne        _jmp_addr_0x007f6a6c                           // 0x007f6a66    7504
                         xor.s              eax, eax                                       // 0x007f6a68    33c0
                         {disp8} jmp        _jmp_addr_0x007f6a74                           // 0x007f6a6a    eb08
_jmp_addr_0x007f6a6c:    {disp8} mov        eax, dword ptr [ebx + 0x0c]                    // 0x007f6a6c    8b430c
                         sub.s              eax, ecx                                       // 0x007f6a6f    2bc1
                         sar                eax, 4                                         // 0x007f6a71    c1f804
_jmp_addr_0x007f6a74:    cmp.s              edx, eax                                       // 0x007f6a74    3bd0
                         {disp32} ja        _jmp_addr_0x007f6b26                           // 0x007f6a76    0f87aa000000
                         test               ecx, ecx                                       // 0x007f6a7c    85c9
                         {disp8} jne        _jmp_addr_0x007f6a84                           // 0x007f6a7e    7504
                         xor.s              eax, eax                                       // 0x007f6a80    33c0
                         {disp8} jmp        _jmp_addr_0x007f6a8c                           // 0x007f6a82    eb08
_jmp_addr_0x007f6a84:    {disp8} mov        eax, dword ptr [ebx + 0x08]                    // 0x007f6a84    8b4308
                         sub.s              eax, ecx                                       // 0x007f6a87    2bc1
                         sar                eax, 4                                         // 0x007f6a89    c1f804
_jmp_addr_0x007f6a8c:    shl                eax, 4                                         // 0x007f6a8c    c1e004
                         add.s              eax, esi                                       // 0x007f6a8f    03c6
                         mov.s              ebx, ecx                                       // 0x007f6a91    8bd9
                         mov.s              edi, eax                                       // 0x007f6a93    8bf8
                         cmp.s              esi, edi                                       // 0x007f6a95    3bf7
                         {disp8} je         _jmp_addr_0x007f6ab4                           // 0x007f6a97    741b
_jmp_addr_0x007f6a99:    {disp32} mov       edx, dword ptr [rdata_bytes + 0x35cd4]         // 0x007f6a99    8b15d4ec8d00
                         mov.s              ecx, ebx                                       // 0x007f6a9f    8bcb
                         push               edx                                            // 0x007f6aa1    52
                         push               0x0                                            // 0x007f6aa2    6a00
                         push               esi                                            // 0x007f6aa4    56
                         call               _jmp_addr_0x00545f00                           // 0x007f6aa5    e856f4d4ff
                         add                esi, 0x10                                      // 0x007f6aaa    83c610
                         add                ebx, 0x10                                      // 0x007f6aad    83c310
                         cmp.s              esi, edi                                       // 0x007f6ab0    3bf7
                         {disp8} jne        _jmp_addr_0x007f6a99                           // 0x007f6ab2    75e5
_jmp_addr_0x007f6ab4:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f6ab4    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f6ab8    8b4c2410
                         add                eax, 0x10                                      // 0x007f6abc    83c010
                         mov.s              esi, edi                                       // 0x007f6abf    8bf7
                         {disp8} mov        ebx, dword ptr [ecx + 0x18]                    // 0x007f6ac1    8b5918
                         {disp8} mov        ebp, dword ptr [eax + 0x08]                    // 0x007f6ac4    8b6808
                         {disp8} lea        eax, dword ptr [ecx + 0x10]                    // 0x007f6ac7    8d4110
                         cmp.s              edi, ebp                                       // 0x007f6aca    3bfd
                         {disp8} je         _jmp_addr_0x007f6ae2                           // 0x007f6acc    7414
_jmp_addr_0x007f6ace:    push               esi                                            // 0x007f6ace    56
                         push               ebx                                            // 0x007f6acf    53
                         call               _jmp_addr_0x00545be0                           // 0x007f6ad0    e80bf1d4ff
                         add                esi, 0x10                                      // 0x007f6ad5    83c610
                         add                esp, 0x08                                      // 0x007f6ad8    83c408
                         add                ebx, 0x10                                      // 0x007f6adb    83c310
                         cmp.s              esi, ebp                                       // 0x007f6ade    3bf5
                         {disp8} jne        _jmp_addr_0x007f6ace                           // 0x007f6ae0    75ec
_jmp_addr_0x007f6ae2:    {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x007f6ae2    8b542418
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x007f6ae6    8b4a14
                         {disp8} lea        eax, dword ptr [edx + 0x10]                    // 0x007f6ae9    8d4210
                         test               ecx, ecx                                       // 0x007f6aec    85c9
                         {disp8} jne        _jmp_addr_0x007f6af4                           // 0x007f6aee    7504
                         xor.s              eax, eax                                       // 0x007f6af0    33c0
                         {disp8} jmp        _jmp_addr_0x007f6afc                           // 0x007f6af2    eb08
_jmp_addr_0x007f6af4:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x007f6af4    8b4008
                         sub.s              eax, ecx                                       // 0x007f6af7    2bc1
                         sar                eax, 4                                         // 0x007f6af9    c1f804
_jmp_addr_0x007f6afc:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f6afc    8b4c2410
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x007f6b00    8b6c2410
                         add                ecx, 0x10                                      // 0x007f6b04    83c110
                         pop                edi                                            // 0x007f6b07    5f
                         shl                eax, 4                                         // 0x007f6b08    c1e004
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x007f6b0b    8b5104
                         pop                esi                                            // 0x007f6b0e    5e
                         add.s              eax, edx                                       // 0x007f6b0f    03c2
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x007f6b11    894108
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007f6b14    8b442410
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                    // 0x007f6b18    8b4820
                         mov.s              eax, ebp                                       // 0x007f6b1b    8bc5
                         {disp8} mov        dword ptr [ebp + 0x20], ecx                    // 0x007f6b1d    894d20
                         pop                ebp                                            // 0x007f6b20    5d
                         pop                ebx                                            // 0x007f6b21    5b
                         pop                ecx                                            // 0x007f6b22    59
                         ret                0x0004                                         // 0x007f6b23    c20400
_jmp_addr_0x007f6b26:    {disp8} mov        edi, dword ptr [ebx + 0x08]                    // 0x007f6b26    8b7b08
                         mov.s              esi, ecx                                       // 0x007f6b29    8bf1
                         cmp.s              esi, edi                                       // 0x007f6b2b    3bf7
                         {disp8} je         _jmp_addr_0x007f6b3f                           // 0x007f6b2d    7410
_jmp_addr_0x007f6b2f:    push               0x0                                            // 0x007f6b2f    6a00
                         mov.s              ecx, esi                                       // 0x007f6b31    8bce
                         call               _jmp_addr_0x00545d80                           // 0x007f6b33    e848f2d4ff
                         add                esi, 0x10                                      // 0x007f6b38    83c610
                         cmp.s              esi, edi                                       // 0x007f6b3b    3bf7
                         {disp8} jne        _jmp_addr_0x007f6b2f                           // 0x007f6b3d    75f0
_jmp_addr_0x007f6b3f:    {disp8} mov        edx, dword ptr [ebp + 0x14]                    // 0x007f6b3f    8b5514
                         {disp8} lea        esi, dword ptr [ebp + 0x10]                    // 0x007f6b42    8d7510
                         push               edx                                            // 0x007f6b45    52
                         call               ??3@YAXPAX@Z                                   // 0x007f6b46    e84d83fbff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x007f6b4b    8b44241c
                         add                esp, 0x04                                      // 0x007f6b4f    83c404
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                    // 0x007f6b52    8b4814
                         {disp8} lea        edi, dword ptr [eax + 0x10]                    // 0x007f6b55    8d7810
                         test               ecx, ecx                                       // 0x007f6b58    85c9
                         {disp8} jne        _jmp_addr_0x007f6b60                           // 0x007f6b5a    7504
                         xor.s              eax, eax                                       // 0x007f6b5c    33c0
                         {disp8} jmp        _jmp_addr_0x007f6b68                           // 0x007f6b5e    eb08
_jmp_addr_0x007f6b60:    {disp8} mov        eax, dword ptr [edi + 0x08]                    // 0x007f6b60    8b4708
                         sub.s              eax, ecx                                       // 0x007f6b63    2bc1
                         sar                eax, 4                                         // 0x007f6b65    c1f804
_jmp_addr_0x007f6b68:    test               eax, eax                                       // 0x007f6b68    85c0
                         {disp8} jge        _jmp_addr_0x007f6b6e                           // 0x007f6b6a    7d02
                         xor.s              eax, eax                                       // 0x007f6b6c    33c0
_jmp_addr_0x007f6b6e:    shl                eax, 4                                         // 0x007f6b6e    c1e004
                         push               eax                                            // 0x007f6b71    50
                         call               ??2@YAPAXI@Z                                   // 0x007f6b72    e877f9fcff
                         add                esp, 0x04                                      // 0x007f6b77    83c404
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007f6b7a    894604
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                    // 0x007f6b7d    8b4f08
                         {disp8} mov        edx, dword ptr [edi + 0x04]                    // 0x007f6b80    8b5704
                         push               eax                                            // 0x007f6b83    50
                         push               ecx                                            // 0x007f6b84    51
                         push               edx                                            // 0x007f6b85    52
                         mov.s              ecx, esi                                       // 0x007f6b86    8bce
                         call               _jmp_addr_0x007f43a0                           // 0x007f6b88    e813d8ffff
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x007f6b8d    894608
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x007f6b90    89460c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f6b93    8b442418
_jmp_addr_0x007f6b97:    {disp8} mov        ecx, dword ptr [eax + 0x20]                    // 0x007f6b97    8b4820
                         pop                edi                                            // 0x007f6b9a    5f
                         {disp8} mov        dword ptr [ebp + 0x20], ecx                    // 0x007f6b9b    894d20
                         mov.s              eax, ebp                                       // 0x007f6b9e    8bc5
                         pop                esi                                            // 0x007f6ba0    5e
                         pop                ebp                                            // 0x007f6ba1    5d
                         pop                ebx                                            // 0x007f6ba2    5b
                         pop                ecx                                            // 0x007f6ba3    59
                         ret                0x0004                                         // 0x007f6ba4    c20400
                         nop                                                               // 0x007f6ba7    90
                         nop                                                               // 0x007f6ba8    90
                         nop                                                               // 0x007f6ba9    90
                         nop                                                               // 0x007f6baa    90
                         nop                                                               // 0x007f6bab    90
                         nop                                                               // 0x007f6bac    90
                         nop                                                               // 0x007f6bad    90
                         nop                                                               // 0x007f6bae    90
                         nop                                                               // 0x007f6baf    90
_jmp_addr_0x007f6bb0:    push               ecx                                            // 0x007f6bb0    51
                         push               ebx                                            // 0x007f6bb1    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                    // 0x007f6bb2    8b5c240c
                         push               ebp                                            // 0x007f6bb6    55
                         mov.s              ebp, ecx                                       // 0x007f6bb7    8be9
                         push               esi                                            // 0x007f6bb9    56
                         cmp.s              ebp, ebx                                       // 0x007f6bba    3beb
                         push               edi                                            // 0x007f6bbc    57
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x007f6bbd    896c2410
                         {disp32} je        _jmp_addr_0x007f6dae                           // 0x007f6bc1    0f84e7010000
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                    // 0x007f6bc7    8b7304
                         test               esi, esi                                       // 0x007f6bca    85f6
                         {disp8} jne        _jmp_addr_0x007f6bd2                           // 0x007f6bcc    7504
                         xor.s              edx, edx                                       // 0x007f6bce    33d2
                         {disp8} jmp        _jmp_addr_0x007f6bda                           // 0x007f6bd0    eb08
_jmp_addr_0x007f6bd2:    {disp8} mov        edx, dword ptr [ebx + 0x08]                    // 0x007f6bd2    8b5308
                         sub.s              edx, esi                                       // 0x007f6bd5    2bd6
                         sar                edx, 4                                         // 0x007f6bd7    c1fa04
_jmp_addr_0x007f6bda:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x007f6bda    8b4d04
                         test               ecx, ecx                                       // 0x007f6bdd    85c9
                         {disp8} jne        _jmp_addr_0x007f6be5                           // 0x007f6bdf    7504
                         xor.s              eax, eax                                       // 0x007f6be1    33c0
                         {disp8} jmp        _jmp_addr_0x007f6bed                           // 0x007f6be3    eb08
_jmp_addr_0x007f6be5:    {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007f6be5    8b4508
                         sub.s              eax, ecx                                       // 0x007f6be8    2bc1
                         sar                eax, 4                                         // 0x007f6bea    c1f804
_jmp_addr_0x007f6bed:    cmp.s              edx, eax                                       // 0x007f6bed    3bd0
                         {disp8} ja         _jmp_addr_0x007f6c6c                           // 0x007f6bef    777b
                         {disp8} mov        ebx, dword ptr [ebx + 0x08]                    // 0x007f6bf1    8b5b08
                         mov.s              edi, ecx                                       // 0x007f6bf4    8bf9
                         cmp.s              esi, ebx                                       // 0x007f6bf6    3bf3
                         {disp8} je         _jmp_addr_0x007f6c14                           // 0x007f6bf8    741a
_jmp_addr_0x007f6bfa:    {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]         // 0x007f6bfa    a1d4ec8d00
                         mov.s              ecx, edi                                       // 0x007f6bff    8bcf
                         push               eax                                            // 0x007f6c01    50
                         push               0x0                                            // 0x007f6c02    6a00
                         push               esi                                            // 0x007f6c04    56
                         call               _jmp_addr_0x00545f00                           // 0x007f6c05    e8f6f2d4ff
                         add                esi, 0x10                                      // 0x007f6c0a    83c610
                         add                edi, 0x10                                      // 0x007f6c0d    83c710
                         cmp.s              esi, ebx                                       // 0x007f6c10    3bf3
                         {disp8} jne        _jmp_addr_0x007f6bfa                           // 0x007f6c12    75e6
_jmp_addr_0x007f6c14:    {disp8} mov        ebx, dword ptr [ebp + 0x08]                    // 0x007f6c14    8b5d08
                         mov.s              esi, edi                                       // 0x007f6c17    8bf7
                         cmp.s              edi, ebx                                       // 0x007f6c19    3bfb
                         {disp8} je         _jmp_addr_0x007f6c2d                           // 0x007f6c1b    7410
_jmp_addr_0x007f6c1d:    push               0x0                                            // 0x007f6c1d    6a00
                         mov.s              ecx, esi                                       // 0x007f6c1f    8bce
                         call               _jmp_addr_0x00545d80                           // 0x007f6c21    e85af1d4ff
                         add                esi, 0x10                                      // 0x007f6c26    83c610
                         cmp.s              esi, ebx                                       // 0x007f6c29    3bf3
                         {disp8} jne        _jmp_addr_0x007f6c1d                           // 0x007f6c2b    75f0
_jmp_addr_0x007f6c2d:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f6c2d    8b442418
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x007f6c31    8b4804
                         test               ecx, ecx                                       // 0x007f6c34    85c9
                         {disp8} jne        _jmp_addr_0x007f6c4f                           // 0x007f6c36    7517
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x007f6c38    8b4d04
                         xor.s              eax, eax                                       // 0x007f6c3b    33c0
                         shl                eax, 4                                         // 0x007f6c3d    c1e004
                         add.s              eax, ecx                                       // 0x007f6c40    03c1
                         pop                edi                                            // 0x007f6c42    5f
                         {disp8} mov        dword ptr [ebp + 0x08], eax                    // 0x007f6c43    894508
                         mov.s              eax, ebp                                       // 0x007f6c46    8bc5
                         pop                esi                                            // 0x007f6c48    5e
                         pop                ebp                                            // 0x007f6c49    5d
                         pop                ebx                                            // 0x007f6c4a    5b
                         pop                ecx                                            // 0x007f6c4b    59
                         ret                0x0004                                         // 0x007f6c4c    c20400
_jmp_addr_0x007f6c4f:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x007f6c4f    8b4008
                         pop                edi                                            // 0x007f6c52    5f
                         sub.s              eax, ecx                                       // 0x007f6c53    2bc1
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x007f6c55    8b4d04
                         sar                eax, 4                                         // 0x007f6c58    c1f804
                         shl                eax, 4                                         // 0x007f6c5b    c1e004
                         add.s              eax, ecx                                       // 0x007f6c5e    03c1
                         pop                esi                                            // 0x007f6c60    5e
                         {disp8} mov        dword ptr [ebp + 0x08], eax                    // 0x007f6c61    894508
                         mov.s              eax, ebp                                       // 0x007f6c64    8bc5
                         pop                ebp                                            // 0x007f6c66    5d
                         pop                ebx                                            // 0x007f6c67    5b
                         pop                ecx                                            // 0x007f6c68    59
                         ret                0x0004                                         // 0x007f6c69    c20400
_jmp_addr_0x007f6c6c:    test               esi, esi                                       // 0x007f6c6c    85f6
                         {disp8} jne        _jmp_addr_0x007f6c74                           // 0x007f6c6e    7504
                         xor.s              edx, edx                                       // 0x007f6c70    33d2
                         {disp8} jmp        _jmp_addr_0x007f6c7c                           // 0x007f6c72    eb08
_jmp_addr_0x007f6c74:    {disp8} mov        edx, dword ptr [ebx + 0x08]                    // 0x007f6c74    8b5308
                         sub.s              edx, esi                                       // 0x007f6c77    2bd6
                         sar                edx, 4                                         // 0x007f6c79    c1fa04
_jmp_addr_0x007f6c7c:    test               ecx, ecx                                       // 0x007f6c7c    85c9
                         {disp8} jne        _jmp_addr_0x007f6c84                           // 0x007f6c7e    7504
                         xor.s              eax, eax                                       // 0x007f6c80    33c0
                         {disp8} jmp        _jmp_addr_0x007f6c8c                           // 0x007f6c82    eb08
_jmp_addr_0x007f6c84:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007f6c84    8b450c
                         sub.s              eax, ecx                                       // 0x007f6c87    2bc1
                         sar                eax, 4                                         // 0x007f6c89    c1f804
_jmp_addr_0x007f6c8c:    cmp.s              edx, eax                                       // 0x007f6c8c    3bd0
                         {disp32} ja        _jmp_addr_0x007f6d37                           // 0x007f6c8e    0f87a3000000
                         test               ecx, ecx                                       // 0x007f6c94    85c9
                         {disp8} jne        _jmp_addr_0x007f6c9c                           // 0x007f6c96    7504
                         xor.s              eax, eax                                       // 0x007f6c98    33c0
                         {disp8} jmp        _jmp_addr_0x007f6ca4                           // 0x007f6c9a    eb08
_jmp_addr_0x007f6c9c:    {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007f6c9c    8b4508
                         sub.s              eax, ecx                                       // 0x007f6c9f    2bc1
                         sar                eax, 4                                         // 0x007f6ca1    c1f804
_jmp_addr_0x007f6ca4:    shl                eax, 4                                         // 0x007f6ca4    c1e004
                         add.s              eax, esi                                       // 0x007f6ca7    03c6
                         mov.s              ebx, ecx                                       // 0x007f6ca9    8bd9
                         mov.s              edi, eax                                       // 0x007f6cab    8bf8
                         cmp.s              esi, edi                                       // 0x007f6cad    3bf7
                         {disp8} je         _jmp_addr_0x007f6ccc                           // 0x007f6caf    741b
_jmp_addr_0x007f6cb1:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0x35cd4]         // 0x007f6cb1    8b0dd4ec8d00
                         push               ecx                                            // 0x007f6cb7    51
                         push               0x0                                            // 0x007f6cb8    6a00
                         push               esi                                            // 0x007f6cba    56
                         mov.s              ecx, ebx                                       // 0x007f6cbb    8bcb
                         call               _jmp_addr_0x00545f00                           // 0x007f6cbd    e83ef2d4ff
                         add                esi, 0x10                                      // 0x007f6cc2    83c610
                         add                ebx, 0x10                                      // 0x007f6cc5    83c310
                         cmp.s              esi, edi                                       // 0x007f6cc8    3bf7
                         {disp8} jne        _jmp_addr_0x007f6cb1                           // 0x007f6cca    75e5
_jmp_addr_0x007f6ccc:    {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x007f6ccc    8b542418
                         mov.s              esi, edi                                       // 0x007f6cd0    8bf7
                         {disp8} mov        ebp, dword ptr [edx + 0x08]                    // 0x007f6cd2    8b6a08
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x007f6cd5    8b542410
                         cmp.s              edi, ebp                                       // 0x007f6cd9    3bfd
                         {disp8} mov        ebx, dword ptr [edx + 0x08]                    // 0x007f6cdb    8b5a08
                         {disp8} je         _jmp_addr_0x007f6cf8                           // 0x007f6cde    7418
_jmp_addr_0x007f6ce0:    push               esi                                            // 0x007f6ce0    56
                         push               ebx                                            // 0x007f6ce1    53
                         call               _jmp_addr_0x00545be0                           // 0x007f6ce2    e8f9eed4ff
                         add                esi, 0x10                                      // 0x007f6ce7    83c610
                         add                esp, 0x08                                      // 0x007f6cea    83c408
                         add                ebx, 0x10                                      // 0x007f6ced    83c310
                         cmp.s              esi, ebp                                       // 0x007f6cf0    3bf5
                         {disp8} jne        _jmp_addr_0x007f6ce0                           // 0x007f6cf2    75ec
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x007f6cf4    8b542410
_jmp_addr_0x007f6cf8:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f6cf8    8b442418
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x007f6cfc    8b4804
                         test               ecx, ecx                                       // 0x007f6cff    85c9
                         {disp8} jne        _jmp_addr_0x007f6d1a                           // 0x007f6d01    7517
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                    // 0x007f6d03    8b4a04
                         xor.s              eax, eax                                       // 0x007f6d06    33c0
                         shl                eax, 4                                         // 0x007f6d08    c1e004
                         add.s              eax, ecx                                       // 0x007f6d0b    03c1
                         pop                edi                                            // 0x007f6d0d    5f
                         pop                esi                                            // 0x007f6d0e    5e
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x007f6d0f    894208
                         pop                ebp                                            // 0x007f6d12    5d
                         mov.s              eax, edx                                       // 0x007f6d13    8bc2
                         pop                ebx                                            // 0x007f6d15    5b
                         pop                ecx                                            // 0x007f6d16    59
                         ret                0x0004                                         // 0x007f6d17    c20400
_jmp_addr_0x007f6d1a:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x007f6d1a    8b4008
                         pop                edi                                            // 0x007f6d1d    5f
                         sub.s              eax, ecx                                       // 0x007f6d1e    2bc1
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                    // 0x007f6d20    8b4a04
                         sar                eax, 4                                         // 0x007f6d23    c1f804
                         shl                eax, 4                                         // 0x007f6d26    c1e004
                         add.s              eax, ecx                                       // 0x007f6d29    03c1
                         pop                esi                                            // 0x007f6d2b    5e
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x007f6d2c    894208
                         pop                ebp                                            // 0x007f6d2f    5d
                         mov.s              eax, edx                                       // 0x007f6d30    8bc2
                         pop                ebx                                            // 0x007f6d32    5b
                         pop                ecx                                            // 0x007f6d33    59
                         ret                0x0004                                         // 0x007f6d34    c20400
_jmp_addr_0x007f6d37:    {disp8} mov        edi, dword ptr [ebp + 0x08]                    // 0x007f6d37    8b7d08
                         mov.s              esi, ecx                                       // 0x007f6d3a    8bf1
                         cmp.s              esi, edi                                       // 0x007f6d3c    3bf7
                         {disp8} je         _jmp_addr_0x007f6d50                           // 0x007f6d3e    7410
_jmp_addr_0x007f6d40:    push               0x1                                            // 0x007f6d40    6a01
                         mov.s              ecx, esi                                       // 0x007f6d42    8bce
                         call               _jmp_addr_0x00545920                           // 0x007f6d44    e8d7ebd4ff
                         add                esi, 0x10                                      // 0x007f6d49    83c610
                         cmp.s              esi, edi                                       // 0x007f6d4c    3bf7
                         {disp8} jne        _jmp_addr_0x007f6d40                           // 0x007f6d4e    75f0
_jmp_addr_0x007f6d50:    {disp8} mov        eax, dword ptr [ebp + 0x04]                    // 0x007f6d50    8b4504
                         push               eax                                            // 0x007f6d53    50
                         call               ??3@YAXPAX@Z                                   // 0x007f6d54    e83f81fbff
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                    // 0x007f6d59    8b4b04
                         add                esp, 0x04                                      // 0x007f6d5c    83c404
                         test               ecx, ecx                                       // 0x007f6d5f    85c9
                         {disp8} jne        _jmp_addr_0x007f6d67                           // 0x007f6d61    7504
                         xor.s              eax, eax                                       // 0x007f6d63    33c0
                         {disp8} jmp        _jmp_addr_0x007f6d6f                           // 0x007f6d65    eb08
_jmp_addr_0x007f6d67:    {disp8} mov        eax, dword ptr [ebx + 0x08]                    // 0x007f6d67    8b4308
                         sub.s              eax, ecx                                       // 0x007f6d6a    2bc1
                         sar                eax, 4                                         // 0x007f6d6c    c1f804
_jmp_addr_0x007f6d6f:    test               eax, eax                                       // 0x007f6d6f    85c0
                         {disp8} jge        _jmp_addr_0x007f6d75                           // 0x007f6d71    7d02
                         xor.s              eax, eax                                       // 0x007f6d73    33c0
_jmp_addr_0x007f6d75:    shl                eax, 4                                         // 0x007f6d75    c1e004
                         push               eax                                            // 0x007f6d78    50
                         call               ??2@YAPAXI@Z                                   // 0x007f6d79    e870f7fcff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x007f6d7e    8b4c241c
                         {disp8} mov        dword ptr [ebp + 0x04], eax                    // 0x007f6d82    894504
                         {disp8} mov        ebx, dword ptr [ebx + 0x08]                    // 0x007f6d85    8b5b08
                         add                esp, 0x04                                      // 0x007f6d88    83c404
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                    // 0x007f6d8b    8b7104
                         mov.s              edi, eax                                       // 0x007f6d8e    8bf8
                         cmp.s              esi, ebx                                       // 0x007f6d90    3bf3
                         {disp8} je         _jmp_addr_0x007f6da8                           // 0x007f6d92    7414
_jmp_addr_0x007f6d94:    push               esi                                            // 0x007f6d94    56
                         push               edi                                            // 0x007f6d95    57
                         call               _jmp_addr_0x00545be0                           // 0x007f6d96    e845eed4ff
                         add                esi, 0x10                                      // 0x007f6d9b    83c610
                         add                esp, 0x08                                      // 0x007f6d9e    83c408
                         add                edi, 0x10                                      // 0x007f6da1    83c710
                         cmp.s              esi, ebx                                       // 0x007f6da4    3bf3
                         {disp8} jne        _jmp_addr_0x007f6d94                           // 0x007f6da6    75ec
_jmp_addr_0x007f6da8:    {disp8} mov        dword ptr [ebp + 0x08], edi                    // 0x007f6da8    897d08
                         {disp8} mov        dword ptr [ebp + 0x0c], edi                    // 0x007f6dab    897d0c
_jmp_addr_0x007f6dae:    pop                edi                                            // 0x007f6dae    5f
                         mov.s              eax, ebp                                       // 0x007f6daf    8bc5
                         pop                esi                                            // 0x007f6db1    5e
                         pop                ebp                                            // 0x007f6db2    5d
                         pop                ebx                                            // 0x007f6db3    5b
                         pop                ecx                                            // 0x007f6db4    59
                         ret                0x0004                                         // 0x007f6db5    c20400
                         nop                                                               // 0x007f6db8    90
                         nop                                                               // 0x007f6db9    90
                         nop                                                               // 0x007f6dba    90
                         nop                                                               // 0x007f6dbb    90
                         nop                                                               // 0x007f6dbc    90
                         nop                                                               // 0x007f6dbd    90
                         nop                                                               // 0x007f6dbe    90
                         nop                                                               // 0x007f6dbf    90
_jmp_addr_0x007f6dc0:    mov                eax, 0x008decd8                                // 0x007f6dc0    b8d8ec8d00
                         ret                                                               // 0x007f6dc5    c3
                         nop                                                               // 0x007f6dc6    90
                         nop                                                               // 0x007f6dc7    90
                         nop                                                               // 0x007f6dc8    90
                         nop                                                               // 0x007f6dc9    90
                         nop                                                               // 0x007f6dca    90
                         nop                                                               // 0x007f6dcb    90
                         nop                                                               // 0x007f6dcc    90
                         nop                                                               // 0x007f6dcd    90
                         nop                                                               // 0x007f6dce    90
                         nop                                                               // 0x007f6dcf    90
_globl_ct_0x007f6dd0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x007f6dd0    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x007f6dd6    b001
                         test               al, cl                                         // 0x007f6dd8    84c8
                         {disp8} jne        _jmp_addr_0x007f6de4                           // 0x007f6dda    7508
                         or.s               cl, al                                         // 0x007f6ddc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x007f6dde    880d34c9fa00
_jmp_addr_0x007f6de4:    {disp32} jmp       _jmp_addr_0x007f6df0                           // 0x007f6de4    e907000000
                         nop                                                               // 0x007f6de9    90
                         nop                                                               // 0x007f6dea    90
                         nop                                                               // 0x007f6deb    90
                         nop                                                               // 0x007f6dec    90
                         nop                                                               // 0x007f6ded    90
                         nop                                                               // 0x007f6dee    90
                         nop                                                               // 0x007f6def    90
_jmp_addr_0x007f6df0:    push               0x00407870                                     // 0x007f6df0    6870784000
                         call               _atexit                                        // 0x007f6df5    e897e9fcff
                         pop                ecx                                            // 0x007f6dfa    59
                         ret                                                               // 0x007f6dfb    c3
                         nop                                                               // 0x007f6dfc    90
                         nop                                                               // 0x007f6dfd    90
                         nop                                                               // 0x007f6dfe    90
                         nop                                                               // 0x007f6dff    90
_jmp_addr_0x007f6e00:    push               ebx                                            // 0x007f6e00    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007f6e01    8b5c2410
                         push               ebp                                            // 0x007f6e05    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                    // 0x007f6e06    8b6c240c
                         push               esi                                            // 0x007f6e0a    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x007f6e0b    8b742414
                         mov.s              ecx, ebx                                       // 0x007f6e0f    8bcb
                         sub.s              esi, ebp                                       // 0x007f6e11    2bf5
                         sub.s              ecx, ebp                                       // 0x007f6e13    2bcd
                         push               edi                                            // 0x007f6e15    57
                         sar                esi, 2                                         // 0x007f6e16    c1fe02
                         sar                ecx, 2                                         // 0x007f6e19    c1f902
                         test               esi, esi                                       // 0x007f6e1c    85f6
                         mov.s              eax, ecx                                       // 0x007f6e1e    8bc1
                         mov.s              edi, esi                                       // 0x007f6e20    8bfe
                         {disp8} je         _jmp_addr_0x007f6e2f                           // 0x007f6e22    740b
_jmp_addr_0x007f6e24:    cdq                                                               // 0x007f6e24    99
                         idiv               edi                                            // 0x007f6e25    f7ff
                         mov.s              eax, edi                                       // 0x007f6e27    8bc7
                         test               edx, edx                                       // 0x007f6e29    85d2
                         mov.s              edi, edx                                       // 0x007f6e2b    8bfa
                         {disp8} jne        _jmp_addr_0x007f6e24                           // 0x007f6e2d    75f5
_jmp_addr_0x007f6e2f:    cmp.s              eax, ecx                                       // 0x007f6e2f    3bc1
                         {disp8} jge        _jmp_addr_0x007f6e90                           // 0x007f6e31    7d5d
                         test               eax, eax                                       // 0x007f6e33    85c0
                         {disp8} jle        _jmp_addr_0x007f6e90                           // 0x007f6e35    7e59
                         {disp8} lea        edi, dword ptr [ebp + eax * 0x4 + 0x00]        // 0x007f6e37    8d7c8500
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x007f6e3b    89442418
_jmp_addr_0x007f6e3f:    mov                eax, dword ptr [edi]                           // 0x007f6e3f    8b07
                         lea                ecx, dword ptr [edi + esi * 0x4]               // 0x007f6e41    8d0cb7
                         cmp.s              ecx, ebx                                       // 0x007f6e44    3bcb
                         mov.s              edx, edi                                       // 0x007f6e46    8bd7
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f6e48    89442414
                         {disp8} jne        _jmp_addr_0x007f6e50                           // 0x007f6e4c    7502
                         mov.s              ecx, ebp                                       // 0x007f6e4e    8bcd
_jmp_addr_0x007f6e50:    cmp.s              ecx, edi                                       // 0x007f6e50    3bcf
                         {disp8} je         _jmp_addr_0x007f6e7c                           // 0x007f6e52    7428
_jmp_addr_0x007f6e54:    mov                eax, dword ptr [ecx]                           // 0x007f6e54    8b01
                         mov                dword ptr [edx], eax                           // 0x007f6e56    8902
                         mov.s              eax, ebx                                       // 0x007f6e58    8bc3
                         sub.s              eax, ecx                                       // 0x007f6e5a    2bc1
                         mov.s              edx, ecx                                       // 0x007f6e5c    8bd1
                         sar                eax, 2                                         // 0x007f6e5e    c1f802
                         cmp.s              esi, eax                                       // 0x007f6e61    3bf0
                         {disp8} jge        _jmp_addr_0x007f6e70                           // 0x007f6e63    7d0b
                         {disp32} lea       eax, dword ptr [esi * 0x4 + 0x00000000]        // 0x007f6e65    8d04b500000000
                         add.s              ecx, eax                                       // 0x007f6e6c    03c8
                         {disp8} jmp        _jmp_addr_0x007f6e78                           // 0x007f6e6e    eb08
_jmp_addr_0x007f6e70:    mov.s              ecx, esi                                       // 0x007f6e70    8bce
                         sub.s              ecx, eax                                       // 0x007f6e72    2bc8
                         {disp8} lea        ecx, dword ptr [ebp + ecx * 0x4 + 0x00]        // 0x007f6e74    8d4c8d00
_jmp_addr_0x007f6e78:    cmp.s              ecx, edi                                       // 0x007f6e78    3bcf
                         {disp8} jne        _jmp_addr_0x007f6e54                           // 0x007f6e7a    75d8
_jmp_addr_0x007f6e7c:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f6e7c    8b442414
                         sub                edi, 0x04                                      // 0x007f6e80    83ef04
                         mov                dword ptr [edx], eax                           // 0x007f6e83    8902
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f6e85    8b442418
                         dec                eax                                            // 0x007f6e89    48
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x007f6e8a    89442418
                         {disp8} jne        _jmp_addr_0x007f6e3f                           // 0x007f6e8e    75af
_jmp_addr_0x007f6e90:    pop                edi                                            // 0x007f6e90    5f
                         pop                esi                                            // 0x007f6e91    5e
                         pop                ebp                                            // 0x007f6e92    5d
                         pop                ebx                                            // 0x007f6e93    5b
                         ret                                                               // 0x007f6e94    c3
                         nop                                                               // 0x007f6e95    90
                         nop                                                               // 0x007f6e96    90
                         nop                                                               // 0x007f6e97    90
                         nop                                                               // 0x007f6e98    90
                         nop                                                               // 0x007f6e99    90
                         nop                                                               // 0x007f6e9a    90
                         nop                                                               // 0x007f6e9b    90
                         nop                                                               // 0x007f6e9c    90
                         nop                                                               // 0x007f6e9d    90
                         nop                                                               // 0x007f6e9e    90
                         nop                                                               // 0x007f6e9f    90
_globl_ct_0x007f6ea0:    {disp32} jmp       _jmp_addr_0x007f6eb0                           // 0x007f6ea0    e90b000000
                         nop                                                               // 0x007f6ea5    90
                         nop                                                               // 0x007f6ea6    90
                         nop                                                               // 0x007f6ea7    90
                         nop                                                               // 0x007f6ea8    90
                         nop                                                               // 0x007f6ea9    90
                         nop                                                               // 0x007f6eaa    90
                         nop                                                               // 0x007f6eab    90
                         nop                                                               // 0x007f6eac    90
                         nop                                                               // 0x007f6ead    90
                         nop                                                               // 0x007f6eae    90
                         nop                                                               // 0x007f6eaf    90
_jmp_addr_0x007f6eb0:    ret                                                               // 0x007f6eb0    c3
                         nop                                                               // 0x007f6eb1    90
                         nop                                                               // 0x007f6eb2    90
                         nop                                                               // 0x007f6eb3    90
                         nop                                                               // 0x007f6eb4    90
                         nop                                                               // 0x007f6eb5    90
                         nop                                                               // 0x007f6eb6    90
                         nop                                                               // 0x007f6eb7    90
                         nop                                                               // 0x007f6eb8    90
                         nop                                                               // 0x007f6eb9    90
                         nop                                                               // 0x007f6eba    90
                         nop                                                               // 0x007f6ebb    90
                         nop                                                               // 0x007f6ebc    90
                         nop                                                               // 0x007f6ebd    90
                         nop                                                               // 0x007f6ebe    90
                         nop                                                               // 0x007f6ebf    90
_globl_ct_0x007f6ec0:    {disp32} jmp       _jmp_addr_0x007f6ed0                           // 0x007f6ec0    e90b000000
                         nop                                                               // 0x007f6ec5    90
                         nop                                                               // 0x007f6ec6    90
                         nop                                                               // 0x007f6ec7    90
                         nop                                                               // 0x007f6ec8    90
                         nop                                                               // 0x007f6ec9    90
                         nop                                                               // 0x007f6eca    90
                         nop                                                               // 0x007f6ecb    90
                         nop                                                               // 0x007f6ecc    90
                         nop                                                               // 0x007f6ecd    90
                         nop                                                               // 0x007f6ece    90
                         nop                                                               // 0x007f6ecf    90
_jmp_addr_0x007f6ed0:    ret                                                               // 0x007f6ed0    c3
                         nop                                                               // 0x007f6ed1    90
                         nop                                                               // 0x007f6ed2    90
                         nop                                                               // 0x007f6ed3    90
                         nop                                                               // 0x007f6ed4    90
                         nop                                                               // 0x007f6ed5    90
                         nop                                                               // 0x007f6ed6    90
                         nop                                                               // 0x007f6ed7    90
                         nop                                                               // 0x007f6ed8    90
                         nop                                                               // 0x007f6ed9    90
                         nop                                                               // 0x007f6eda    90
                         nop                                                               // 0x007f6edb    90
                         nop                                                               // 0x007f6edc    90
                         nop                                                               // 0x007f6edd    90
                         nop                                                               // 0x007f6ede    90
                         nop                                                               // 0x007f6edf    90
_jmp_addr_0x007f6ee0:    xor.s              eax, eax                                       // 0x007f6ee0    33c0
                         {disp8} mov        dword ptr [ecx + 0x18], eax                    // 0x007f6ee2    894118
                         {disp8} mov        dword ptr [ecx + 0x10], 0xffffffff             // 0x007f6ee5    c74110ffffffff
                         {disp8} mov        dword ptr [ecx + 0x14], eax                    // 0x007f6eec    894114
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                    // 0x007f6eef    89411c
                         {disp8} mov        dword ptr [ecx + 0x24], eax                    // 0x007f6ef2    894124
                         {disp8} mov        dword ptr [ecx + 0x20], eax                    // 0x007f6ef5    894120
                         ret                                                               // 0x007f6ef8    c3
                         nop                                                               // 0x007f6ef9    90
                         nop                                                               // 0x007f6efa    90
                         nop                                                               // 0x007f6efb    90
                         nop                                                               // 0x007f6efc    90
                         nop                                                               // 0x007f6efd    90
                         nop                                                               // 0x007f6efe    90
                         nop                                                               // 0x007f6eff    90
_jmp_addr_0x007f6f00:    push               -0x1                                           // 0x007f6f00    6aff
                         push               0x008a7d2b                                     // 0x007f6f02    682b7d8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f6f07    64a100000000
                         push               eax                                            // 0x007f6f0d    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f6f0e    64892500000000
                         sub                esp, 0x40                                      // 0x007f6f15    83ec40
                         push               ebx                                            // 0x007f6f18    53
                         push               ebp                                            // 0x007f6f19    55
                         push               esi                                            // 0x007f6f1a    56
                         {disp8} mov        esi, dword ptr [esp + 0x5c]                    // 0x007f6f1b    8b74245c
                         push               edi                                            // 0x007f6f1f    57
                         mov.s              edi, ecx                                       // 0x007f6f20    8bf9
                         {disp8} mov        dword ptr [edi + 0x18], 0x3f800000             // 0x007f6f22    c747180000803f
                         {disp8} mov        eax, dword ptr [esi + 0x58]                    // 0x007f6f29    8b4658
                         {disp8} mov        dword ptr [edi + 0x1c], eax                    // 0x007f6f2c    89471c
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                    // 0x007f6f2f    8b4e14
                         {disp8} mov        edx, dword ptr [esi + 0x18]                    // 0x007f6f32    8b5618
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                    // 0x007f6f35    8b461c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                    // 0x007f6f38    894c2420
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                    // 0x007f6f3c    8b4e20
                         {disp8} mov        dword ptr [esp + 0x24], edx                    // 0x007f6f3f    89542424
                         {disp8} mov        edx, dword ptr [esi + 0x24]                    // 0x007f6f43    8b5624
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x007f6f46    89442428
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x007f6f4a    8b4628
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                    // 0x007f6f4d    894c242c
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                    // 0x007f6f51    8b4e2c
                         {disp8} mov        dword ptr [esp + 0x30], edx                    // 0x007f6f54    89542430
                         {disp8} mov        edx, dword ptr [esi + 0x30]                    // 0x007f6f58    8b5630
                         {disp8} mov        dword ptr [esp + 0x34], eax                    // 0x007f6f5b    89442434
                         {disp8} mov        eax, dword ptr [esi + 0x34]                    // 0x007f6f5f    8b4634
                         {disp8} mov        dword ptr [esp + 0x38], ecx                    // 0x007f6f62    894c2438
                         {disp8} mov        ecx, dword ptr [esi + 0x38]                    // 0x007f6f66    8b4e38
                         {disp8} mov        dword ptr [esp + 0x3c], edx                    // 0x007f6f69    8954243c
                         {disp8} mov        edx, dword ptr [esi + 0x3c]                    // 0x007f6f6d    8b563c
                         {disp8} mov        dword ptr [esp + 0x40], eax                    // 0x007f6f70    89442440
                         {disp8} mov        eax, dword ptr [esi + 0x40]                    // 0x007f6f74    8b4640
                         {disp8} mov        dword ptr [esp + 0x44], ecx                    // 0x007f6f77    894c2444
                         {disp8} mov        dword ptr [esp + 0x48], edx                    // 0x007f6f7b    89542448
                         mov                dword ptr [edi], 0x00000000                    // 0x007f6f7f    c70700000000
                         mov                edx, dword ptr [esi]                           // 0x007f6f85    8b16
                         mov.s              ecx, esi                                       // 0x007f6f87    8bce
                         {disp8} mov        dword ptr [esp + 0x4c], eax                    // 0x007f6f89    8944244c
                         call               dword ptr [edx + 0xf8]                         // 0x007f6f8d    ff92f8000000
                         {disp8} mov        ebp, dword ptr [eax + 0x0c]                    // 0x007f6f93    8b680c
                         {disp8} mov        dword ptr [edi + 0x04], 0x00000000             // 0x007f6f96    c7470400000000
                         mov                eax, dword ptr [esi]                           // 0x007f6f9d    8b06
                         mov.s              ecx, esi                                       // 0x007f6f9f    8bce
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x007f6fa1    896c2410
                         call               dword ptr [eax + 0xf8]                         // 0x007f6fa5    ff90f8000000
                         test               ebp, ebp                                       // 0x007f6fab    85ed
                         {disp8} mov        edx, dword ptr [eax + 0x10]                    // 0x007f6fad    8b5010
                         {disp8} jle        _jmp_addr_0x007f6fd4                           // 0x007f6fb0    7e22
                         mov.s              ebx, ebp                                       // 0x007f6fb2    8bdd
_jmp_addr_0x007f6fb4:    mov                eax, dword ptr [edx]                           // 0x007f6fb4    8b02
                         mov                ecx, dword ptr [eax]                           // 0x007f6fb6    8b08
                         test               ecx, 0x20000000                                // 0x007f6fb8    f7c100000020
                         {disp8} je         _jmp_addr_0x007f6fce                           // 0x007f6fbe    740e
                         test               ecx, 0x000003f0                                // 0x007f6fc0    f7c1f0030000
                         {disp8} jne        _jmp_addr_0x007f6fce                           // 0x007f6fc6    7506
                         {disp8} mov        eax, dword ptr [eax + 0x04]                    // 0x007f6fc8    8b4004
                         add                dword ptr [edi + 0x04], eax                    // 0x007f6fcb    014704
_jmp_addr_0x007f6fce:    add                edx, 0x04                                      // 0x007f6fce    83c204
                         dec                ebx                                            // 0x007f6fd1    4b
                         {disp8} jne        _jmp_addr_0x007f6fb4                           // 0x007f6fd2    75e0
_jmp_addr_0x007f6fd4:    {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x007f6fd4    8b4f04
                         shl                ecx, 2                                         // 0x007f6fd7    c1e102
                         push               ecx                                            // 0x007f6fda    51
                         call               ??2@YAPAXI@Z                                   // 0x007f6fdb    e80ef5fcff
                         xor.s              ebx, ebx                                       // 0x007f6fe0    33db
                         {disp8} mov        dword ptr [edi + 0x0c], eax                    // 0x007f6fe2    89470c
                         {disp8} mov        dword ptr [edi + 0x08], ebx                    // 0x007f6fe5    895f08
                         mov                edx, dword ptr [esi]                           // 0x007f6fe8    8b16
                         add                esp, 0x04                                      // 0x007f6fea    83c404
                         mov.s              ecx, esi                                       // 0x007f6fed    8bce
                         call               dword ptr [edx + 0x1f4]                        // 0x007f6fef    ff92f4010000
                         {disp32} mov       dword ptr [data_bytes + 0x4cc0e8], eax         // 0x007f6ff5    a3e820e900
                         mov                eax, dword ptr [esi]                           // 0x007f6ffa    8b06
                         mov.s              ecx, esi                                       // 0x007f6ffc    8bce
                         call               dword ptr [eax + 0xf8]                         // 0x007f6ffe    ff90f8000000
                         test               ebp, ebp                                       // 0x007f7004    85ed
                         {disp8} mov        eax, dword ptr [eax + 0x10]                    // 0x007f7006    8b4010
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f7009    89442414
                         {disp8} mov        dword ptr [esp + 0x60], ebx                    // 0x007f700d    895c2460
                         {disp32} jle       _jmp_addr_0x007f70bb                           // 0x007f7011    0f8ea4000000
_jmp_addr_0x007f7017:    mov                eax, dword ptr [eax]                           // 0x007f7017    8b00
                         mov                ecx, dword ptr [eax]                           // 0x007f7019    8b08
                         test               ecx, 0x20000000                                // 0x007f701b    f7c100000020
                         {disp8} je         _jmp_addr_0x007f709f                           // 0x007f7021    747c
                         test               ecx, 0x000003f0                                // 0x007f7023    f7c1f0030000
                         {disp8} jne        _jmp_addr_0x007f709f                           // 0x007f7029    7574
                         {disp8} mov        ebp, dword ptr [eax + 0x08]                    // 0x007f702b    8b6808
                         {disp8} mov        eax, dword ptr [eax + 0x04]                    // 0x007f702e    8b4004
                         xor.s              esi, esi                                       // 0x007f7031    33f6
                         test               eax, eax                                       // 0x007f7033    85c0
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x007f7035    89442418
                         {disp8} jle        _jmp_addr_0x007f709b                           // 0x007f7039    7e60
_jmp_addr_0x007f703b:    push               0x14                                           // 0x007f703b    6a14
                         call               ??2@YAPAXI@Z                                   // 0x007f703d    e8acf4fcff
                         add                esp, 0x04                                      // 0x007f7042    83c404
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x007f7045    8944241c
                         test               eax, eax                                       // 0x007f7049    85c0
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000             // 0x007f704b    c744245800000000
                         {disp8} je         _jmp_addr_0x007f706d                           // 0x007f7053    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                    // 0x007f7055    8b4c2460
                         push               esi                                            // 0x007f7059    56
                         push               ecx                                            // 0x007f705a    51
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x007f705b    8b4d00
                         {disp8} lea        edx, dword ptr [esp + 0x28]                    // 0x007f705e    8d542428
                         push               edx                                            // 0x007f7062    52
                         push               ecx                                            // 0x007f7063    51
                         mov.s              ecx, eax                                       // 0x007f7064    8bc8
                         call               _jmp_addr_0x007f72b0                           // 0x007f7066    e845020000
                         {disp8} jmp        _jmp_addr_0x007f706f                           // 0x007f706b    eb02
_jmp_addr_0x007f706d:    xor.s              eax, eax                                       // 0x007f706d    33c0
_jmp_addr_0x007f706f:    {disp8} mov        edx, dword ptr [edi + 0x0c]                    // 0x007f706f    8b570c
                         mov                dword ptr [edx + ebx * 0x4], eax               // 0x007f7072    89049a
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                    // 0x007f7075    8b470c
                         mov                ecx, dword ptr [eax + ebx * 0x4]               // 0x007f7078    8b0c98
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x007f707b    8b5104
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                    // 0x007f707e    8b4f08
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f7081    8b442418
                         add.s              ecx, edx                                       // 0x007f7085    03ca
                         inc                ebx                                            // 0x007f7087    43
                         add                ebp, 0x04                                      // 0x007f7088    83c504
                         inc                esi                                            // 0x007f708b    46
                         cmp.s              esi, eax                                       // 0x007f708c    3bf0
                         {disp8} mov        dword ptr [esp + 0x58], 0xffffffff             // 0x007f708e    c7442458ffffffff
                         {disp8} mov        dword ptr [edi + 0x08], ecx                    // 0x007f7096    894f08
                         {disp8} jl         _jmp_addr_0x007f703b                           // 0x007f7099    7ca0
_jmp_addr_0x007f709b:    {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x007f709b    8b6c2410
_jmp_addr_0x007f709f:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f709f    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                    // 0x007f70a3    8b4c2460
                         add                eax, 0x04                                      // 0x007f70a7    83c004
                         inc                ecx                                            // 0x007f70aa    41
                         cmp.s              ecx, ebp                                       // 0x007f70ab    3bcd
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f70ad    89442414
                         {disp8} mov        dword ptr [esp + 0x60], ecx                    // 0x007f70b1    894c2460
                         {disp32} jl        _jmp_addr_0x007f7017                           // 0x007f70b5    0f8c5cffffff
_jmp_addr_0x007f70bb:    {disp8} mov        ecx, dword ptr [esp + 0x50]                    // 0x007f70bb    8b4c2450
                         mov.s              eax, edi                                       // 0x007f70bf    8bc7
                         pop                edi                                            // 0x007f70c1    5f
                         pop                esi                                            // 0x007f70c2    5e
                         pop                ebp                                            // 0x007f70c3    5d
                         pop                ebx                                            // 0x007f70c4    5b
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f70c5    64890d00000000
                         add                esp, 0x4c                                      // 0x007f70cc    83c44c
                         ret                0x0004                                         // 0x007f70cf    c20400
                         nop                                                               // 0x007f70d2    90
                         nop                                                               // 0x007f70d3    90
                         nop                                                               // 0x007f70d4    90
                         nop                                                               // 0x007f70d5    90
                         nop                                                               // 0x007f70d6    90
                         nop                                                               // 0x007f70d7    90
                         nop                                                               // 0x007f70d8    90
                         nop                                                               // 0x007f70d9    90
                         nop                                                               // 0x007f70da    90
                         nop                                                               // 0x007f70db    90
                         nop                                                               // 0x007f70dc    90
                         nop                                                               // 0x007f70dd    90
                         nop                                                               // 0x007f70de    90
                         nop                                                               // 0x007f70df    90
??1FragMesh@@QAE@XZ:
                         push               ebx                                            // 0x007f70e0    53
                         mov.s              ebx, ecx                                       // 0x007f70e1    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f70e3    8b4304
                         push               edi                                            // 0x007f70e6    57
                         xor.s              edi, edi                                       // 0x007f70e7    33ff
                         test               eax, eax                                       // 0x007f70e9    85c0
                         {disp8} jle        _jmp_addr_0x007f7111                           // 0x007f70eb    7e24
                         push               esi                                            // 0x007f70ed    56
_jmp_addr_0x007f70ee:    {disp8} mov        eax, dword ptr [ebx + 0x0c]                    // 0x007f70ee    8b430c
                         mov                esi, dword ptr [eax + edi * 0x4]               // 0x007f70f1    8b34b8
                         test               esi, esi                                       // 0x007f70f4    85f6
                         {disp8} je         _jmp_addr_0x007f7108                           // 0x007f70f6    7410
                         mov.s              ecx, esi                                       // 0x007f70f8    8bce
                         call               _jmp_addr_0x007f7950                           // 0x007f70fa    e851080000
                         push               esi                                            // 0x007f70ff    56
                         call               ??3@YAXPAX@Z                                   // 0x007f7100    e8937dfbff
                         add                esp, 0x04                                      // 0x007f7105    83c404
_jmp_addr_0x007f7108:    {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f7108    8b4304
                         inc                edi                                            // 0x007f710b    47
                         cmp.s              edi, eax                                       // 0x007f710c    3bf8
                         {disp8} jl         _jmp_addr_0x007f70ee                           // 0x007f710e    7cde
                         pop                esi                                            // 0x007f7110    5e
_jmp_addr_0x007f7111:    {disp8} mov        ecx, dword ptr [ebx + 0x0c]                    // 0x007f7111    8b4b0c
                         push               ecx                                            // 0x007f7114    51
                         call               ??3@YAXPAX@Z                                   // 0x007f7115    e87e7dfbff
                         add                esp, 0x04                                      // 0x007f711a    83c404
                         pop                edi                                            // 0x007f711d    5f
                         pop                ebx                                            // 0x007f711e    5b
                         ret                                                               // 0x007f711f    c3
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007f7120    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x007f7124    8b4c2404
                         xor.s              edx, edx                                       // 0x007f7128    33d2
                         mov                dx, word ptr [eax]                             // 0x007f712a    668b10
                         cmp.s              ecx, edx                                       // 0x007f712d    3bca
                         {disp8} je         _jmp_addr_0x007f7148                           // 0x007f712f    7417
                         xor.s              edx, edx                                       // 0x007f7131    33d2
                         {disp8} mov        dx, word ptr [eax + 0x02]                      // 0x007f7133    668b5002
                         cmp.s              ecx, edx                                       // 0x007f7137    3bca
                         {disp8} je         _jmp_addr_0x007f7148                           // 0x007f7139    740d
                         xor.s              edx, edx                                       // 0x007f713b    33d2
                         {disp8} mov        dx, word ptr [eax + 0x04]                      // 0x007f713d    668b5004
                         cmp.s              ecx, edx                                       // 0x007f7141    3bca
                         {disp8} je         _jmp_addr_0x007f7148                           // 0x007f7143    7403
                         xor.s              eax, eax                                       // 0x007f7145    33c0
                         ret                                                               // 0x007f7147    c3
_jmp_addr_0x007f7148:    mov                eax, 0x00000001                                // 0x007f7148    b801000000
                         ret                                                               // 0x007f714d    c3
                         nop                                                               // 0x007f714e    90
                         nop                                                               // 0x007f714f    90
_jmp_addr_0x007f7150:    {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x007f7150    8b44240c
                         push               ebx                                            // 0x007f7154    53
                         push               esi                                            // 0x007f7155    56
                         {disp8} lea        ebx, dword ptr [eax + 0x04]                    // 0x007f7156    8d5804
                         push               edi                                            // 0x007f7159    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x007f715a    8b7c2410
                         xor.s              edx, edx                                       // 0x007f715e    33d2
                         mov.s              ecx, ebx                                       // 0x007f7160    8bcb
                         mov                esi, 0x00000003                                // 0x007f7162    be03000000
_jmp_addr_0x007f7167:    fld                dword ptr [edi]                                // 0x007f7167    d907
                         fsub               dword ptr [ecx]                                // 0x007f7169    d821
                         fabs                                                              // 0x007f716b    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f716d    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f7173    dfe0
                         test               ah, 0x01                                       // 0x007f7175    f6c401
                         {disp8} je         _jmp_addr_0x007f71ab                           // 0x007f7178    7431
                         {disp8} fld        dword ptr [edi + 0x04]                         // 0x007f717a    d94704
                         {disp8} fsub       dword ptr [ecx + 0x04]                         // 0x007f717d    d86104
                         fabs                                                              // 0x007f7180    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f7182    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f7188    dfe0
                         test               ah, 0x01                                       // 0x007f718a    f6c401
                         {disp8} je         _jmp_addr_0x007f71ab                           // 0x007f718d    741c
                         {disp8} fld        dword ptr [edi + 0x08]                         // 0x007f718f    d94708
                         {disp8} fsub       dword ptr [ecx + 0x08]                         // 0x007f7192    d86108
                         fabs                                                              // 0x007f7195    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f7197    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f719d    dfe0
                         test               ah, 0x01                                       // 0x007f719f    f6c401
                         {disp8} je         _jmp_addr_0x007f71ab                           // 0x007f71a2    7407
                         mov                eax, 0x00000001                                // 0x007f71a4    b801000000
                         {disp8} jmp        _jmp_addr_0x007f71ad                           // 0x007f71a9    eb02
_jmp_addr_0x007f71ab:    xor.s              eax, eax                                       // 0x007f71ab    33c0
_jmp_addr_0x007f71ad:    add.s              edx, eax                                       // 0x007f71ad    03d0
                         add                ecx, 0x14                                      // 0x007f71af    83c114
                         dec                esi                                            // 0x007f71b2    4e
                         {disp8} jne        _jmp_addr_0x007f7167                           // 0x007f71b3    75b2
                         test               edx, edx                                       // 0x007f71b5    85d2
                         {disp8} jne        _jmp_addr_0x007f71bf                           // 0x007f71b7    7506
                         pop                edi                                            // 0x007f71b9    5f
                         pop                esi                                            // 0x007f71ba    5e
                         xor.s              eax, eax                                       // 0x007f71bb    33c0
                         pop                ebx                                            // 0x007f71bd    5b
                         ret                                                               // 0x007f71be    c3
_jmp_addr_0x007f71bf:    {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x007f71bf    8b7c2414
                         mov.s              ecx, ebx                                       // 0x007f71c3    8bcb
                         mov                esi, 0x00000003                                // 0x007f71c5    be03000000
_jmp_addr_0x007f71ca:    fld                dword ptr [edi]                                // 0x007f71ca    d907
                         fsub               dword ptr [ecx]                                // 0x007f71cc    d821
                         fabs                                                              // 0x007f71ce    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f71d0    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f71d6    dfe0
                         test               ah, 0x01                                       // 0x007f71d8    f6c401
                         {disp8} je         _jmp_addr_0x007f720e                           // 0x007f71db    7431
                         {disp8} fld        dword ptr [edi + 0x04]                         // 0x007f71dd    d94704
                         {disp8} fsub       dword ptr [ecx + 0x04]                         // 0x007f71e0    d86104
                         fabs                                                              // 0x007f71e3    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f71e5    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f71eb    dfe0
                         test               ah, 0x01                                       // 0x007f71ed    f6c401
                         {disp8} je         _jmp_addr_0x007f720e                           // 0x007f71f0    741c
                         {disp8} fld        dword ptr [edi + 0x08]                         // 0x007f71f2    d94708
                         {disp8} fsub       dword ptr [ecx + 0x08]                         // 0x007f71f5    d86108
                         fabs                                                              // 0x007f71f8    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f71fa    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f7200    dfe0
                         test               ah, 0x01                                       // 0x007f7202    f6c401
                         {disp8} je         _jmp_addr_0x007f720e                           // 0x007f7205    7407
                         mov                eax, 0x00000001                                // 0x007f7207    b801000000
                         {disp8} jmp        _jmp_addr_0x007f7210                           // 0x007f720c    eb02
_jmp_addr_0x007f720e:    xor.s              eax, eax                                       // 0x007f720e    33c0
_jmp_addr_0x007f7210:    add.s              edx, eax                                       // 0x007f7210    03d0
                         add                ecx, 0x14                                      // 0x007f7212    83c114
                         dec                esi                                            // 0x007f7215    4e
                         {disp8} jne        _jmp_addr_0x007f71ca                           // 0x007f7216    75b2
                         pop                edi                                            // 0x007f7218    5f
                         xor.s              eax, eax                                       // 0x007f7219    33c0
                         cmp                edx, 0x02                                      // 0x007f721b    83fa02
                         pop                esi                                            // 0x007f721e    5e
                         sete               al                                             // 0x007f721f    0f94c0
                         pop                ebx                                            // 0x007f7222    5b
                         ret                                                               // 0x007f7223    c3
                         nop                                                               // 0x007f7224    90
                         nop                                                               // 0x007f7225    90
                         nop                                                               // 0x007f7226    90
                         nop                                                               // 0x007f7227    90
                         nop                                                               // 0x007f7228    90
                         nop                                                               // 0x007f7229    90
                         nop                                                               // 0x007f722a    90
                         nop                                                               // 0x007f722b    90
                         nop                                                               // 0x007f722c    90
                         nop                                                               // 0x007f722d    90
                         nop                                                               // 0x007f722e    90
                         nop                                                               // 0x007f722f    90
_jmp_addr_0x007f7230:    push               ecx                                            // 0x007f7230    51
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x007f7231    8b4104
                         push               ebx                                            // 0x007f7234    53
                         xor.s              ebx, ebx                                       // 0x007f7235    33db
                         test               eax, eax                                       // 0x007f7237    85c0
                         {disp8} mov        dword ptr [esp + 0x04], ebx                    // 0x007f7239    895c2404
                         {disp8} jle        _jmp_addr_0x007f7271                           // 0x007f723d    7e32
                         push               ebp                                            // 0x007f723f    55
                         push               esi                                            // 0x007f7240    56
                         {disp8} mov        esi, dword ptr [ecx + 0x0c]                    // 0x007f7241    8b710c
                         push               edi                                            // 0x007f7244    57
                         mov.s              edi, eax                                       // 0x007f7245    8bf8
_jmp_addr_0x007f7247:    mov                eax, dword ptr [esi]                           // 0x007f7247    8b06
                         {disp8} mov        edx, dword ptr [eax + 0x10]                    // 0x007f7249    8b5010
                         {disp8} mov        eax, dword ptr [eax + 0x04]                    // 0x007f724c    8b4004
                         test               eax, eax                                       // 0x007f724f    85c0
                         {disp8} jle        _jmp_addr_0x007f7264                           // 0x007f7251    7e11
                         add                edx, 0x50                                      // 0x007f7253    83c250
_jmp_addr_0x007f7256:    mov                ebp, dword ptr [edx]                           // 0x007f7256    8b2a
                         cmp                ebp, dword ptr [edx + 0x04]                    // 0x007f7258    3b6a04
                         {disp8} jne        _jmp_addr_0x007f725e                           // 0x007f725b    7501
                         inc                ebx                                            // 0x007f725d    43
_jmp_addr_0x007f725e:    add                edx, 0x58                                      // 0x007f725e    83c258
                         dec                eax                                            // 0x007f7261    48
                         {disp8} jne        _jmp_addr_0x007f7256                           // 0x007f7262    75f2
_jmp_addr_0x007f7264:    add                esi, 0x04                                      // 0x007f7264    83c604
                         dec                edi                                            // 0x007f7267    4f
                         {disp8} jne        _jmp_addr_0x007f7247                           // 0x007f7268    75dd
                         pop                edi                                            // 0x007f726a    5f
                         pop                esi                                            // 0x007f726b    5e
                         {disp8} mov        dword ptr [esp + 0x08], ebx                    // 0x007f726c    895c2408
                         pop                ebp                                            // 0x007f7270    5d
_jmp_addr_0x007f7271:    {disp8} fild       dword ptr [esp + 0x04]                         // 0x007f7271    db442404
                         pop                ebx                                            // 0x007f7275    5b
                         {disp8} fidiv      dword ptr [ecx + 0x08]                         // 0x007f7276    da7108
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x007f7279    d81598a38a00
                         fnstsw             ax                                             // 0x007f727f    dfe0
                         test               ah, 0x01                                       // 0x007f7281    f6c401
                         {disp8} je         _jmp_addr_0x007f7290                           // 0x007f7284    740a
                         fstp               st(0)                                          // 0x007f7286    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x007f7288    d90598a38a00
                         pop                ecx                                            // 0x007f728e    59
                         ret                                                               // 0x007f728f    c3
_jmp_addr_0x007f7290:    {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x007f7290    d81590a38a00
                         fnstsw             ax                                             // 0x007f7296    dfe0
                         test               ah, 0x41                                       // 0x007f7298    f6c441
                         {disp8} jne        _jmp_addr_0x007f72a7                           // 0x007f729b    750a
                         fstp               st(0)                                          // 0x007f729d    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x007f729f    d90590a38a00
                         pop                ecx                                            // 0x007f72a5    59
                         ret                                                               // 0x007f72a6    c3
_jmp_addr_0x007f72a7:    {disp8} fst        dword ptr [ecx + 0x18]                         // 0x007f72a7    d95118
                         pop                ecx                                            // 0x007f72aa    59
                         ret                                                               // 0x007f72ab    c3
                         nop                                                               // 0x007f72ac    90
                         nop                                                               // 0x007f72ad    90
                         nop                                                               // 0x007f72ae    90
                         nop                                                               // 0x007f72af    90
_jmp_addr_0x007f72b0:    push               -0x1                                           // 0x007f72b0    6aff
                         push               0x008a7d4b                                     // 0x007f72b2    684b7d8a00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007f72b7    64a100000000
                         push               eax                                            // 0x007f72bd    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007f72be    64892500000000
                         sub                esp, 0x20                                      // 0x007f72c5    83ec20
                         push               ebx                                            // 0x007f72c8    53
                         {disp8} mov        ebx, dword ptr [esp + 0x34]                    // 0x007f72c9    8b5c2434
                         push               ebp                                            // 0x007f72cd    55
                         push               esi                                            // 0x007f72ce    56
                         {disp8} mov        esi, dword ptr [ebx + 0x18]                    // 0x007f72cf    8b7318
                         push               edi                                            // 0x007f72d2    57
                         mov.s              edi, ecx                                       // 0x007f72d3    8bf9
                         lea                eax, dword ptr [esi + esi * 0x4]               // 0x007f72d5    8d04b6
                         lea                ecx, dword ptr [esi + eax * 0x2]               // 0x007f72d8    8d0c46
                         shl                ecx, 3                                         // 0x007f72db    c1e103
                         push               ecx                                            // 0x007f72de    51
                         {disp8} mov        dword ptr [esp + 0x18], edi                    // 0x007f72df    897c2418
                         {disp8} mov        dword ptr [edi + 0x04], esi                    // 0x007f72e3    897704
                         call               ??2@YAPAXI@Z                                   // 0x007f72e6    e803f2fcff
                         add                esp, 0x04                                      // 0x007f72eb    83c404
                         {disp8} mov        dword ptr [esp + 0x40], eax                    // 0x007f72ee    89442440
                         xor.s              ecx, ecx                                       // 0x007f72f2    33c9
                         cmp.s              eax, ecx                                       // 0x007f72f4    3bc1
                         {disp8} mov        dword ptr [esp + 0x38], ecx                    // 0x007f72f6    894c2438
                         {disp8} je         _jmp_addr_0x007f7326                           // 0x007f72fa    742a
                         {disp8} lea        ebp, dword ptr [esi + -0x01]                   // 0x007f72fc    8d6eff
                         cmp.s              ebp, ecx                                       // 0x007f72ff    3be9
                         {disp8} jl         _jmp_addr_0x007f7320                           // 0x007f7301    7c1d
                         {disp8} lea        esi, dword ptr [eax + 0x04]                    // 0x007f7303    8d7004
                         inc                ebp                                            // 0x007f7306    45
_jmp_addr_0x007f7307:    push               0x0076d970                                     // 0x007f7307    6870d97600
                         push               0x3                                            // 0x007f730c    6a03
                         push               0x14                                           // 0x007f730e    6a14
                         push               esi                                            // 0x007f7310    56
                         call               _jmp_addr_0x00401140                           // 0x007f7311    e82a9ec0ff
                         add                esi, 0x58                                      // 0x007f7316    83c658
                         dec                ebp                                            // 0x007f7319    4d
                         {disp8} jne        _jmp_addr_0x007f7307                           // 0x007f731a    75eb
                         {disp8} mov        eax, dword ptr [esp + 0x40]                    // 0x007f731c    8b442440
_jmp_addr_0x007f7320:    {disp8} mov        dword ptr [esp + 0x40], eax                    // 0x007f7320    89442440
                         {disp8} jmp        _jmp_addr_0x007f732a                           // 0x007f7324    eb04
_jmp_addr_0x007f7326:    {disp8} mov        dword ptr [esp + 0x40], ecx                    // 0x007f7326    894c2440
_jmp_addr_0x007f732a:    {disp8} mov        edx, dword ptr [esp + 0x40]                    // 0x007f732a    8b542440
                         {disp8} mov        eax, dword ptr [esp + 0x48]                    // 0x007f732e    8b442448
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                    // 0x007f7332    8b4c244c
                         {disp8} mov        esi, dword ptr [esp + 0x44]                    // 0x007f7336    8b742444
                         {disp8} mov        dword ptr [edi + 0x10], edx                    // 0x007f733a    895710
                         {disp8} mov        dword ptr [edi + 0x08], eax                    // 0x007f733d    894708
                         {disp8} mov        dword ptr [edi + 0x0c], ecx                    // 0x007f7340    894f0c
                         mov                dword ptr [edi], ebx                           // 0x007f7343    891f
                         {disp8} fld        dword ptr [esi + 0x24]                         // 0x007f7345    d94624
                         {disp8} mov        ebp, dword ptr [ebx + 0x14]                    // 0x007f7348    8b6b14
                         {disp8} mov        ebx, dword ptr [ebx + 0x1c]                    // 0x007f734b    8b5b1c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x007f734e    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x38], 0xffffffff             // 0x007f7354    c7442438ffffffff
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x007f735c    896c2410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x007f7360    d80d04c48a00
                         call               _jmp_addr_0x007a1400                           // 0x007f7366    e895a0faff
                         {disp8} fld        dword ptr [esi + 0x2c]                         // 0x007f736b    d9462c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x007f736e    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x007f7374    89442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x007f7378    d80d04c48a00
                         call               _jmp_addr_0x007a1400                           // 0x007f737e    e87da0faff
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x007f7383    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x007f7387    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x007f738b    c744242000000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z // 0x007f7393    e8f8bc0000
                         {disp8} fstp       dword ptr [esp + 0x44]                         // 0x007f7398    d95c2444
                         {disp8} mov        eax, dword ptr [edi + 0x04]                    // 0x007f739c    8b4704
                         test               eax, eax                                       // 0x007f739f    85c0
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000             // 0x007f73a1    c744244800000000
                         {disp32} jle       _jmp_addr_0x007f765b                           // 0x007f73a9    0f8eac020000
                         {disp8} mov        edx, dword ptr [esp + 0x40]                    // 0x007f73af    8b542440
                         {disp8} lea        ecx, dword ptr [ebx + 0x04]                    // 0x007f73b3    8d4b04
                         {disp8} lea        edi, dword ptr [edx + 0x0c]                    // 0x007f73b6    8d7a0c
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                    // 0x007f73b9    894c244c
                         {disp8} jmp        _jmp_addr_0x007f73c3                           // 0x007f73bd    eb04
_jmp_addr_0x007f73bf:    {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x007f73bf    8b6c2410
_jmp_addr_0x007f73c3:    {disp8} mov        dword ptr [edi + 0x44], 0x00000002             // 0x007f73c3    c7474402000000
                         xor.s              eax, eax                                       // 0x007f73ca    33c0
                         {disp8} mov        ax, word ptr [ecx + -0x04]                     // 0x007f73cc    668b41fc
                         {disp8} lea        ebx, dword ptr [edi + -0x04]                   // 0x007f73d0    8d5ffc
                         shl                eax, 5                                         // 0x007f73d3    c1e005
                         fld                dword ptr [eax + ebp * 0x1]                    // 0x007f73d6    d90428
                         add.s              eax, ebp                                       // 0x007f73d9    03c5
                         fmul               dword ptr [esi]                                // 0x007f73db    d80e
                         {disp8} fld        dword ptr [esi + 0x0c]                         // 0x007f73dd    d9460c
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f73e0    d84804
                         faddp              st(1), st                                      // 0x007f73e3    dec1
                         {disp8} fld        dword ptr [esi + 0x18]                         // 0x007f73e5    d94618
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f73e8    d84808
                         faddp              st(1), st                                      // 0x007f73eb    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                         // 0x007f73ed    d84624
                         {disp8} fstp       dword ptr [edi + -0x08]                        // 0x007f73f0    d95ff8
                         {disp8} fld        dword ptr [esi + 0x10]                         // 0x007f73f3    d94610
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f73f6    d84804
                         {disp8} fld        dword ptr [esi + 0x04]                         // 0x007f73f9    d94604
                         fmul               dword ptr [eax]                                // 0x007f73fc    d808
                         faddp              st(1), st                                      // 0x007f73fe    dec1
                         {disp8} fld        dword ptr [esi + 0x1c]                         // 0x007f7400    d9461c
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f7403    d84808
                         faddp              st(1), st                                      // 0x007f7406    dec1
                         {disp8} fadd       dword ptr [esi + 0x28]                         // 0x007f7408    d84628
                         fstp               dword ptr [ebx]                                // 0x007f740b    d91b
                         {disp8} fld        dword ptr [esi + 0x14]                         // 0x007f740d    d94614
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f7410    d84804
                         {disp8} fld        dword ptr [esi + 0x08]                         // 0x007f7413    d94608
                         fmul               dword ptr [eax]                                // 0x007f7416    d808
                         faddp              st(1), st                                      // 0x007f7418    dec1
                         {disp8} fld        dword ptr [esi + 0x20]                         // 0x007f741a    d94620
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f741d    d84808
                         faddp              st(1), st                                      // 0x007f7420    dec1
                         {disp8} fadd       dword ptr [esi + 0x2c]                         // 0x007f7422    d8462c
                         fstp               dword ptr [edi]                                // 0x007f7425    d91f
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x007f7427    8b500c
                         {disp8} mov        dword ptr [edi + 0x04], edx                    // 0x007f742a    895704
                         {disp8} mov        eax, dword ptr [eax + 0x10]                    // 0x007f742d    8b4010
                         {disp8} mov        dword ptr [edi + 0x08], eax                    // 0x007f7430    894708
                         xor.s              eax, eax                                       // 0x007f7433    33c0
                         {disp8} mov        ax, word ptr [ecx + -0x02]                     // 0x007f7435    668b41fe
                         shl                eax, 5                                         // 0x007f7439    c1e005
                         fld                dword ptr [eax + ebp * 0x1]                    // 0x007f743c    d90428
                         add.s              eax, ebp                                       // 0x007f743f    03c5
                         fmul               dword ptr [esi]                                // 0x007f7441    d80e
                         {disp8} fld        dword ptr [esi + 0x0c]                         // 0x007f7443    d9460c
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f7446    d84804
                         faddp              st(1), st                                      // 0x007f7449    dec1
                         {disp8} fld        dword ptr [esi + 0x18]                         // 0x007f744b    d94618
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f744e    d84808
                         faddp              st(1), st                                      // 0x007f7451    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                         // 0x007f7453    d84624
                         {disp8} fstp       dword ptr [edi + 0x0c]                         // 0x007f7456    d95f0c
                         {disp8} fld        dword ptr [esi + 0x10]                         // 0x007f7459    d94610
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f745c    d84804
                         {disp8} fld        dword ptr [esi + 0x04]                         // 0x007f745f    d94604
                         fmul               dword ptr [eax]                                // 0x007f7462    d808
                         faddp              st(1), st                                      // 0x007f7464    dec1
                         {disp8} fld        dword ptr [esi + 0x1c]                         // 0x007f7466    d9461c
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f7469    d84808
                         faddp              st(1), st                                      // 0x007f746c    dec1
                         {disp8} fadd       dword ptr [esi + 0x28]                         // 0x007f746e    d84628
                         {disp8} fstp       dword ptr [edi + 0x10]                         // 0x007f7471    d95f10
                         {disp8} fld        dword ptr [esi + 0x14]                         // 0x007f7474    d94614
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f7477    d84804
                         {disp8} fld        dword ptr [esi + 0x08]                         // 0x007f747a    d94608
                         fmul               dword ptr [eax]                                // 0x007f747d    d808
                         faddp              st(1), st                                      // 0x007f747f    dec1
                         {disp8} fld        dword ptr [esi + 0x20]                         // 0x007f7481    d94620
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f7484    d84808
                         faddp              st(1), st                                      // 0x007f7487    dec1
                         {disp8} fadd       dword ptr [esi + 0x2c]                         // 0x007f7489    d8462c
                         {disp8} fstp       dword ptr [edi + 0x14]                         // 0x007f748c    d95f14
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x007f748f    8b500c
                         {disp8} mov        dword ptr [edi + 0x18], edx                    // 0x007f7492    895718
                         {disp8} mov        eax, dword ptr [eax + 0x10]                    // 0x007f7495    8b4010
                         {disp8} mov        dword ptr [edi + 0x1c], eax                    // 0x007f7498    89471c
                         xor.s              eax, eax                                       // 0x007f749b    33c0
                         mov                ax, word ptr [ecx]                             // 0x007f749d    668b01
                         shl                eax, 5                                         // 0x007f74a0    c1e005
                         fld                dword ptr [eax + ebp * 0x1]                    // 0x007f74a3    d90428
                         add.s              eax, ebp                                       // 0x007f74a6    03c5
                         fmul               dword ptr [esi]                                // 0x007f74a8    d80e
                         {disp8} fld        dword ptr [esi + 0x0c]                         // 0x007f74aa    d9460c
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f74ad    d84804
                         faddp              st(1), st                                      // 0x007f74b0    dec1
                         {disp8} fld        dword ptr [esi + 0x18]                         // 0x007f74b2    d94618
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f74b5    d84808
                         faddp              st(1), st                                      // 0x007f74b8    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                         // 0x007f74ba    d84624
                         {disp8} fstp       dword ptr [edi + 0x20]                         // 0x007f74bd    d95f20
                         {disp8} fld        dword ptr [esi + 0x10]                         // 0x007f74c0    d94610
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f74c3    d84804
                         {disp8} fld        dword ptr [esi + 0x04]                         // 0x007f74c6    d94604
                         fmul               dword ptr [eax]                                // 0x007f74c9    d808
                         faddp              st(1), st                                      // 0x007f74cb    dec1
                         {disp8} fld        dword ptr [esi + 0x1c]                         // 0x007f74cd    d9461c
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f74d0    d84808
                         faddp              st(1), st                                      // 0x007f74d3    dec1
                         {disp8} fadd       dword ptr [esi + 0x28]                         // 0x007f74d5    d84628
                         {disp8} fstp       dword ptr [edi + 0x24]                         // 0x007f74d8    d95f24
                         {disp8} fld        dword ptr [esi + 0x14]                         // 0x007f74db    d94614
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x007f74de    d84804
                         {disp8} fld        dword ptr [esi + 0x08]                         // 0x007f74e1    d94608
                         fmul               dword ptr [eax]                                // 0x007f74e4    d808
                         faddp              st(1), st                                      // 0x007f74e6    dec1
                         {disp8} fld        dword ptr [esi + 0x20]                         // 0x007f74e8    d94620
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x007f74eb    d84808
                         faddp              st(1), st                                      // 0x007f74ee    dec1
                         {disp8} fadd       dword ptr [esi + 0x2c]                         // 0x007f74f0    d8462c
                         {disp8} fstp       dword ptr [edi + 0x28]                         // 0x007f74f3    d95f28
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                    // 0x007f74f6    8b480c
                         {disp8} mov        dword ptr [edi + 0x2c], ecx                    // 0x007f74f9    894f2c
                         {disp8} mov        edx, dword ptr [eax + 0x10]                    // 0x007f74fc    8b5010
                         {disp8} mov        dword ptr [edi + 0x30], edx                    // 0x007f74ff    895730
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4cc0e8]         // 0x007f7502    a1e820e900
                         test               eax, eax                                       // 0x007f7507    85c0
                         {disp8} je         _jmp_addr_0x007f7565                           // 0x007f7509    745a
                         mov                ebp, 0x00000003                                // 0x007f750b    bd03000000
_jmp_addr_0x007f7510:    {disp8} fld        dword ptr [ebx + -0x04]                        // 0x007f7510    d943fc
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x007f7513    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x007f7519    d80d04c48a00
                         call               _jmp_addr_0x007a1400                           // 0x007f751f    e8dc9efaff
                         {disp8} fld        dword ptr [ebx + 0x04]                         // 0x007f7524    d94304
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x007f7527    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x007f752d    89442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x007f7531    d80d04c48a00
                         call               _jmp_addr_0x007a1400                           // 0x007f7537    e8c49efaff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                    // 0x007f753c    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x007f7540    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000             // 0x007f7544    c744242c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z // 0x007f754c    e83fbb0000
                         {disp8} fld        dword ptr [esp + 0x44]                         // 0x007f7551    d9442444
                         fsub               st, st(1)                                      // 0x007f7555    d8e1
                         add                ebx, 0x14                                      // 0x007f7557    83c314
                         dec                ebp                                            // 0x007f755a    4d
                         {disp8} fsubr      dword ptr [ebx + -0x14]                        // 0x007f755b    d86bec
                         {disp8} fstp       dword ptr [ebx + -0x14]                        // 0x007f755e    d95bec
                         fstp               st(0)                                          // 0x007f7561    ddd8
                         {disp8} jne        _jmp_addr_0x007f7510                           // 0x007f7563    75ab
_jmp_addr_0x007f7565:    {disp8} mov        dword ptr [esp + 0x40], 0x49742400             // 0x007f7565    c744244000247449
                         xor.s              eax, eax                                       // 0x007f756d    33c0
                         mov.s              ecx, edi                                       // 0x007f756f    8bcf
_jmp_addr_0x007f7571:    {disp8} lea        ebx, dword ptr [eax + 0x01]                    // 0x007f7571    8d5801
                         {disp8} fld        dword ptr [ecx + -0x08]                        // 0x007f7574    d941f8
                         mov.s              eax, ebx                                       // 0x007f7577    8bc3
                         cdq                                                               // 0x007f7579    99
                         mov                ebp, 0x00000003                                // 0x007f757a    bd03000000
                         idiv               ebp                                            // 0x007f757f    f7fd
                         lea                eax, dword ptr [edx + edx * 0x4]               // 0x007f7581    8d0492
                         {disp8} fsub       dword ptr [edi + eax * 0x4 + -0x08]            // 0x007f7584    d86487f8
                         {disp8} lea        eax, dword ptr [edi + eax * 0x4 + -0x08]       // 0x007f7588    8d4487f8
                         {disp8} fld        dword ptr [ecx + -0x04]                        // 0x007f758c    d941fc
                         {disp8} fsub       dword ptr [eax + 0x04]                         // 0x007f758f    d86004
                         fld                dword ptr [ecx]                                // 0x007f7592    d901
                         {disp8} fsub       dword ptr [eax + 0x08]                         // 0x007f7594    d86008
                         fld                st(0)                                          // 0x007f7597    d9c0
                         fmul               st, st(1)                                      // 0x007f7599    d8c9
                         fld                st(2)                                          // 0x007f759b    d9c2
                         fmul               st, st(3)                                      // 0x007f759d    d8cb
                         faddp              st(1), st                                      // 0x007f759f    dec1
                         fld                st(3)                                          // 0x007f75a1    d9c3
                         fmul               st, st(4)                                      // 0x007f75a3    d8cc
                         faddp              st(1), st                                      // 0x007f75a5    dec1
                         fstp               st(3)                                          // 0x007f75a7    dddb
                         fstp               st(0)                                          // 0x007f75a9    ddd8
                         fstp               st(0)                                          // 0x007f75ab    ddd8
                         {disp8} fcom       dword ptr [esp + 0x40]                         // 0x007f75ad    d8542440
                         fnstsw             ax                                             // 0x007f75b1    dfe0
                         test               ah, 0x01                                       // 0x007f75b3    f6c401
                         {disp8} je         _jmp_addr_0x007f75be                           // 0x007f75b6    7406
                         {disp8} fstp       dword ptr [esp + 0x40]                         // 0x007f75b8    d95c2440
                         {disp8} jmp        _jmp_addr_0x007f75c0                           // 0x007f75bc    eb02
_jmp_addr_0x007f75be:    fstp               st(0)                                          // 0x007f75be    ddd8
_jmp_addr_0x007f75c0:    mov.s              eax, ebx                                       // 0x007f75c0    8bc3
                         add                ecx, 0x14                                      // 0x007f75c2    83c114
                         cmp                eax, 0x03                                      // 0x007f75c5    83f803
                         {disp8} jl         _jmp_addr_0x007f7571                           // 0x007f75c8    7ca7
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x007f75ca    d9442440
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26134]              // 0x007f75ce    d81d34f18c00
                         fnstsw             ax                                             // 0x007f75d4    dfe0
                         test               ah, 0x41                                       // 0x007f75d6    f6c441
                         {disp8} jne        _jmp_addr_0x007f75e4                           // 0x007f75d9    7509
                         {disp8} mov        dword ptr [edi + 0x44], 0x00000003             // 0x007f75db    c7474403000000
                         {disp8} jmp        _jmp_addr_0x007f761f                           // 0x007f75e2    eb3b
_jmp_addr_0x007f75e4:    {disp8} fld        dword ptr [esp + 0x40]                         // 0x007f75e4    d9442440
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c70]              // 0x007f75e8    d81d702c8c00
                         fnstsw             ax                                             // 0x007f75ee    dfe0
                         test               ah, 0x41                                       // 0x007f75f0    f6c441
                         {disp8} jne        _jmp_addr_0x007f75fe                           // 0x007f75f3    7509
                         {disp8} mov        dword ptr [edi + 0x44], 0x00000002             // 0x007f75f5    c7474402000000
                         {disp8} jmp        _jmp_addr_0x007f761f                           // 0x007f75fc    eb21
_jmp_addr_0x007f75fe:    {disp8} fld        dword ptr [esp + 0x40]                         // 0x007f75fe    d9442440
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]               // 0x007f7602    d81d78b48a00
                         fnstsw             ax                                             // 0x007f7608    dfe0
                         test               ah, 0x41                                       // 0x007f760a    f6c441
                         {disp8} jne        _jmp_addr_0x007f7618                           // 0x007f760d    7509
                         {disp8} mov        dword ptr [edi + 0x44], 0x00000001             // 0x007f760f    c7474401000000
                         {disp8} jmp        _jmp_addr_0x007f761f                           // 0x007f7616    eb07
_jmp_addr_0x007f7618:    {disp8} mov        dword ptr [edi + 0x44], 0x00000000             // 0x007f7618    c7474400000000
_jmp_addr_0x007f761f:    {disp8} mov        ecx, dword ptr [edi + 0x44]                    // 0x007f761f    8b4f44
                         {disp8} mov        dword ptr [edi + 0x48], ecx                    // 0x007f7622    894f48
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                    // 0x007f7625    8b4c244c
                         or                 edx, 0xffffffff                                // 0x007f7629    83caff
                         {disp8} lea        eax, dword ptr [edi + 0x34]                    // 0x007f762c    8d4734
                         mov                dword ptr [eax], edx                           // 0x007f762f    8910
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x007f7631    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                    // 0x007f7634    895008
                         {disp8} mov        edx, dword ptr [esp + 0x48]                    // 0x007f7637    8b542448
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f763b    8b442414
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                    // 0x007f763f    8b5804
                         add                edi, 0x58                                      // 0x007f7642    83c758
                         inc                edx                                            // 0x007f7645    42
                         add                ecx, 0x6                                       // 0x007f7646    83c106
                         cmp.s              edx, ebx                                       // 0x007f7649    3bd3
                         {disp8} mov        dword ptr [esp + 0x48], edx                    // 0x007f764b    89542448
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                    // 0x007f764f    894c244c
                         {disp32} jl        _jmp_addr_0x007f73bf                           // 0x007f7653    0f8c66fdffff
                         {disp8} jmp        _jmp_addr_0x007f765d                           // 0x007f7659    eb02
_jmp_addr_0x007f765b:    mov.s              eax, edi                                       // 0x007f765b    8bc7
_jmp_addr_0x007f765d:    {disp8} mov        ecx, dword ptr [esp + 0x30]                    // 0x007f765d    8b4c2430
                         pop                edi                                            // 0x007f7661    5f
                         pop                esi                                            // 0x007f7662    5e
                         pop                ebp                                            // 0x007f7663    5d
                         pop                ebx                                            // 0x007f7664    5b
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007f7665    64890d00000000
                         add                esp, 0x2c                                      // 0x007f766c    83c42c
                         ret                0x0010                                         // 0x007f766f    c21000
                         nop                                                               // 0x007f7672    90
                         nop                                                               // 0x007f7673    90
                         nop                                                               // 0x007f7674    90
                         nop                                                               // 0x007f7675    90
                         nop                                                               // 0x007f7676    90
                         nop                                                               // 0x007f7677    90
                         nop                                                               // 0x007f7678    90
                         nop                                                               // 0x007f7679    90
                         nop                                                               // 0x007f767a    90
                         nop                                                               // 0x007f767b    90
                         nop                                                               // 0x007f767c    90
                         nop                                                               // 0x007f767d    90
                         nop                                                               // 0x007f767e    90
                         nop                                                               // 0x007f767f    90
_jmp_addr_0x007f7680:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007f7680    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x007f7684    8b4c2408
                         push               ebx                                            // 0x007f7688    53
                         push               ebp                                            // 0x007f7689    55
                         push               esi                                            // 0x007f768a    56
                         push               edi                                            // 0x007f768b    57
                         xor.s              edi, edi                                       // 0x007f768c    33ff
                         {disp8} lea        edx, dword ptr [eax + 0x04]                    // 0x007f768e    8d5004
                         {disp8} lea        ebx, dword ptr [ecx + 0x04]                    // 0x007f7691    8d5904
                         mov                ebp, 0x00000003                                // 0x007f7694    bd03000000
_jmp_addr_0x007f7699:    mov.s              ecx, ebx                                       // 0x007f7699    8bcb
                         mov                esi, 0x00000003                                // 0x007f769b    be03000000
_jmp_addr_0x007f76a0:    fld                dword ptr [edx]                                // 0x007f76a0    d902
                         fsub               dword ptr [ecx]                                // 0x007f76a2    d821
                         fabs                                                              // 0x007f76a4    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f76a6    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f76ac    dfe0
                         test               ah, 0x01                                       // 0x007f76ae    f6c401
                         {disp8} je         _jmp_addr_0x007f76e4                           // 0x007f76b1    7431
                         {disp8} fld        dword ptr [edx + 0x04]                         // 0x007f76b3    d94204
                         {disp8} fsub       dword ptr [ecx + 0x04]                         // 0x007f76b6    d86104
                         fabs                                                              // 0x007f76b9    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f76bb    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f76c1    dfe0
                         test               ah, 0x01                                       // 0x007f76c3    f6c401
                         {disp8} je         _jmp_addr_0x007f76e4                           // 0x007f76c6    741c
                         {disp8} fld        dword ptr [edx + 0x08]                         // 0x007f76c8    d94208
                         {disp8} fsub       dword ptr [ecx + 0x08]                         // 0x007f76cb    d86108
                         fabs                                                              // 0x007f76ce    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]              // 0x007f76d0    dc1d107a8c00
                         fnstsw             ax                                             // 0x007f76d6    dfe0
                         test               ah, 0x01                                       // 0x007f76d8    f6c401
                         {disp8} je         _jmp_addr_0x007f76e4                           // 0x007f76db    7407
                         mov                eax, 0x00000001                                // 0x007f76dd    b801000000
                         {disp8} jmp        _jmp_addr_0x007f76e6                           // 0x007f76e2    eb02
_jmp_addr_0x007f76e4:    xor.s              eax, eax                                       // 0x007f76e4    33c0
_jmp_addr_0x007f76e6:    add.s              edi, eax                                       // 0x007f76e6    03f8
                         add                ecx, 0x14                                      // 0x007f76e8    83c114
                         dec                esi                                            // 0x007f76eb    4e
                         {disp8} jne        _jmp_addr_0x007f76a0                           // 0x007f76ec    75b2
                         add                edx, 0x14                                      // 0x007f76ee    83c214
                         dec                ebp                                            // 0x007f76f1    4d
                         {disp8} jne        _jmp_addr_0x007f7699                           // 0x007f76f2    75a5
                         xor.s              eax, eax                                       // 0x007f76f4    33c0
                         cmp                edi, 0x01                                      // 0x007f76f6    83ff01
                         pop                edi                                            // 0x007f76f9    5f
                         pop                esi                                            // 0x007f76fa    5e
                         pop                ebp                                            // 0x007f76fb    5d
                         setg               al                                             // 0x007f76fc    0f9fc0
                         pop                ebx                                            // 0x007f76ff    5b
                         ret                                                               // 0x007f7700    c3
                         nop                                                               // 0x007f7701    90
                         nop                                                               // 0x007f7702    90
                         nop                                                               // 0x007f7703    90
                         nop                                                               // 0x007f7704    90
                         nop                                                               // 0x007f7705    90
                         nop                                                               // 0x007f7706    90
                         nop                                                               // 0x007f7707    90
                         nop                                                               // 0x007f7708    90
                         nop                                                               // 0x007f7709    90
                         nop                                                               // 0x007f770a    90
                         nop                                                               // 0x007f770b    90
                         nop                                                               // 0x007f770c    90
                         nop                                                               // 0x007f770d    90
                         nop                                                               // 0x007f770e    90
                         nop                                                               // 0x007f770f    90
_jmp_addr_0x007f7710:    sub                esp, 0x34                                      // 0x007f7710    83ec34
                         push               ebx                                            // 0x007f7713    53
                         push               ebp                                            // 0x007f7714    55
                         mov.s              ebp, ecx                                       // 0x007f7715    8be9
                         {disp8} fld        dword ptr [ebp + 0x2c]                         // 0x007f7717    d9452c
                         push               esi                                            // 0x007f771a    56
                         {disp8} fsub       dword ptr [ebp + 0x04]                         // 0x007f771b    d86504
                         mov                esi, 0x00000002                                // 0x007f771e    be02000000
                         {disp8} fld        dword ptr [ebp + 0x30]                         // 0x007f7723    d94530
                         push               edi                                            // 0x007f7726    57
                         {disp8} fsub       dword ptr [ebp + 0x08]                         // 0x007f7727    d86508
                         {disp8} mov        dword ptr [esp + 0x10], esi                    // 0x007f772a    89742410
                         {disp8} fld        dword ptr [ebp + 0x34]                         // 0x007f772e    d94534
                         {disp8} fsub       dword ptr [ebp + 0x0c]                         // 0x007f7731    d8650c
                         fld                st(0)                                          // 0x007f7734    d9c0
                         fmul               st, st(1)                                      // 0x007f7736    d8c9
                         fld                st(2)                                          // 0x007f7738    d9c2
                         fmul               st, st(3)                                      // 0x007f773a    d8cb
                         faddp              st(1), st                                      // 0x007f773c    dec1
                         fld                st(3)                                          // 0x007f773e    d9c3
                         fmul               st, st(4)                                      // 0x007f7740    d8cc
                         faddp              st(1), st                                      // 0x007f7742    dec1
                         fstp               st(3)                                          // 0x007f7744    dddb
                         fstp               st(0)                                          // 0x007f7746    ddd8
                         fstp               st(0)                                          // 0x007f7748    ddd8
                         {disp8} fld        dword ptr [ebp + 0x04]                         // 0x007f774a    d94504
                         {disp8} fsub       dword ptr [ebp + 0x18]                         // 0x007f774d    d86518
                         {disp8} fld        dword ptr [ebp + 0x08]                         // 0x007f7750    d94508
                         {disp8} fsub       dword ptr [ebp + 0x1c]                         // 0x007f7753    d8651c
                         {disp8} fld        dword ptr [ebp + 0x0c]                         // 0x007f7756    d9450c
                         {disp8} fsub       dword ptr [ebp + 0x20]                         // 0x007f7759    d86520
                         fld                st(0)                                          // 0x007f775c    d9c0
                         fmul               st, st(1)                                      // 0x007f775e    d8c9
                         fld                st(2)                                          // 0x007f7760    d9c2
                         fmul               st, st(3)                                      // 0x007f7762    d8cb
                         faddp              st(1), st                                      // 0x007f7764    dec1
                         fld                st(3)                                          // 0x007f7766    d9c3
                         fmul               st, st(4)                                      // 0x007f7768    d8cc
                         faddp              st(1), st                                      // 0x007f776a    dec1
                         {disp8} fst        dword ptr [esp + 0x14]                         // 0x007f776c    d9542414
                         fstp               st(3)                                          // 0x007f7770    dddb
                         fstp               st(0)                                          // 0x007f7772    ddd8
                         fstp               st(0)                                          // 0x007f7774    ddd8
                         fcomp              st(1)                                          // 0x007f7776    d8d9
                         fnstsw             ax                                             // 0x007f7778    dfe0
                         test               ah, 0x41                                       // 0x007f777a    f6c441
                         {disp8} jne        _jmp_addr_0x007f7791                           // 0x007f777d    7512
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x007f777f    c744241000000000
                         fstp               st(0)                                          // 0x007f7787    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x007f7789    d9442414
                         {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x007f778d    8b742410
_jmp_addr_0x007f7791:    {disp8} fld        dword ptr [ebp + 0x18]                         // 0x007f7791    d94518
                         {disp8} fsub       dword ptr [ebp + 0x2c]                         // 0x007f7794    d8652c
                         {disp8} fld        dword ptr [ebp + 0x1c]                         // 0x007f7797    d9451c
                         {disp8} fsub       dword ptr [ebp + 0x30]                         // 0x007f779a    d86530
                         {disp8} fld        dword ptr [ebp + 0x20]                         // 0x007f779d    d94520
                         {disp8} fsub       dword ptr [ebp + 0x34]                         // 0x007f77a0    d86534
                         fld                st(0)                                          // 0x007f77a3    d9c0
                         fmul               st, st(1)                                      // 0x007f77a5    d8c9
                         fld                st(2)                                          // 0x007f77a7    d9c2
                         fmul               st, st(3)                                      // 0x007f77a9    d8cb
                         faddp              st(1), st                                      // 0x007f77ab    dec1
                         fld                st(3)                                          // 0x007f77ad    d9c3
                         fmul               st, st(4)                                      // 0x007f77af    d8cc
                         faddp              st(1), st                                      // 0x007f77b1    dec1
                         fcomp              st(4)                                          // 0x007f77b3    d8dc
                         fstp               st(0)                                          // 0x007f77b5    ddd8
                         fstp               st(0)                                          // 0x007f77b7    ddd8
                         fnstsw             ax                                             // 0x007f77b9    dfe0
                         fstp               st(0)                                          // 0x007f77bb    ddd8
                         test               ah, 0x41                                       // 0x007f77bd    f6c441
                         fstp               st(0)                                          // 0x007f77c0    ddd8
                         {disp8} jne        _jmp_addr_0x007f77d0                           // 0x007f77c2    750c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000001             // 0x007f77c4    c744241001000000
                         {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x007f77cc    8b742410
_jmp_addr_0x007f77d0:    {disp8} mov        ebx, dword ptr [esp + 0x48]                    // 0x007f77d0    8b5c2448
                         or                 eax, -0x1                                      // 0x007f77d4    83c8ff
                         {disp32} mov       dword ptr [ebx + 0x000000a4], eax              // 0x007f77d7    8983a4000000
                         {disp8} mov        dword ptr [ebx + 0x4c], eax                    // 0x007f77dd    89434c
                         {disp8} lea        eax, dword ptr [esi + 0x01]                    // 0x007f77e0    8d4601
                         cdq                                                               // 0x007f77e3    99
                         mov                ecx, 0x00000003                                // 0x007f77e4    b903000000
                         idiv               ecx                                            // 0x007f77e9    f7f9
                         mov                edi, 0x00000003                                // 0x007f77eb    bf03000000
                         mov.s              ecx, edx                                       // 0x007f77f0    8bca
                         {disp8} lea        eax, dword ptr [ecx + 0x01]                    // 0x007f77f2    8d4101
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x007f77f5    894c2414
                         lea                ecx, dword ptr [ecx + ecx * 0x4]               // 0x007f77f9    8d0c89
                         {disp8} fld        dword ptr [ebp + ecx * 0x4 + 0x10]             // 0x007f77fc    d9448d10
                         cdq                                                               // 0x007f7800    99
                         idiv               edi                                            // 0x007f7801    f7ff
                         lea                eax, dword ptr [esi + esi * 0x4]               // 0x007f7803    8d04b6
                         {disp8} lea        esi, dword ptr [ebp + eax * 0x4 + 0x04]        // 0x007f7806    8d748504
                         {disp8} lea        eax, dword ptr [ebp + ecx * 0x4 + 0x04]        // 0x007f780a    8d448d04
                         {disp8} lea        edi, dword ptr [ebx + 0x04]                    // 0x007f780e    8d7b04
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x007f7811    d8460c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x007f7814    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                         // 0x007f781a    d95c243c
                         {disp8} fld        dword ptr [eax + 0x10]                         // 0x007f781e    d94010
                         {disp8} fadd       dword ptr [esi + 0x10]                         // 0x007f7821    d84610
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x007f7824    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x40]                         // 0x007f782a    d95c2440
                         fld                dword ptr [eax]                                // 0x007f782e    d900
                         fadd               dword ptr [esi]                                // 0x007f7830    d806
                         {disp8} fld        dword ptr [eax + 0x04]                         // 0x007f7832    d94004
                         {disp8} fadd       dword ptr [esi + 0x04]                         // 0x007f7835    d84604
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x007f7838    d95c2428
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x007f783c    d94008
                         lea                ecx, dword ptr [edx + edx * 0x4]               // 0x007f783f    8d0c92
                         {disp8} fadd       dword ptr [esi + 0x08]                         // 0x007f7842    d84608
                         {disp8} lea        ecx, dword ptr [ebp + ecx * 0x4 + 0x04]        // 0x007f7845    8d4c8d04
                         {disp8} mov        dword ptr [esp + 0x48], ecx                    // 0x007f7849    894c2448
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x007f784d    d95c242c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x007f7851    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x007f7857    d95c2418
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x007f785b    d9442428
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x007f785f    8b4c2418
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x007f7863    d80db4a38a00
                         {disp8} mov        dword ptr [esp + 0x30], ecx                    // 0x007f7869    894c2430
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x007f786d    d95c241c
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x007f7871    d944242c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x007f7875    8b4c241c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x007f7879    d80db4a38a00
                         {disp8} mov        dword ptr [esp + 0x34], ecx                    // 0x007f787f    894c2434
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x007f7883    d95c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x007f7887    8b4c2420
                         {disp8} mov        dword ptr [esp + 0x38], ecx                    // 0x007f788b    894c2438
                         {disp8} mov        ecx, dword ptr [ebp + 0x50]                    // 0x007f788f    8b4d50
                         dec                ecx                                            // 0x007f7892    49
                         {disp8} mov        dword ptr [ebx + 0x50], ecx                    // 0x007f7893    894b50
                         {disp8} mov        ecx, dword ptr [ebp + 0x54]                    // 0x007f7896    8b4d54
                         dec                ecx                                            // 0x007f7899    49
                         {disp8} mov        dword ptr [ebx + 0x54], ecx                    // 0x007f789a    894b54
                         mov                ecx, 0x00000005                                // 0x007f789d    b905000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f78a2    f3a5
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f78a4    8b4c2410
                         {disp8} mov        ecx, dword ptr [ebp + ecx * 0x4 + 0x40]        // 0x007f78a8    8b4c8d40
                         {disp8} mov        dword ptr [ebx + 0x40], ecx                    // 0x007f78ac    894b40
                         {disp8} lea        edi, dword ptr [ebx + 0x18]                    // 0x007f78af    8d7b18
                         mov                ecx, 0x00000005                                // 0x007f78b2    b905000000
                         {disp8} lea        esi, dword ptr [esp + 0x30]                    // 0x007f78b7    8d742430
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f78bb    f3a5
                         {disp8} mov        esi, dword ptr [esp + 0x48]                    // 0x007f78bd    8b742448
                         {disp8} mov        dword ptr [ebx + 0x44], 0xffffffff             // 0x007f78c1    c74344ffffffff
                         {disp8} lea        edi, dword ptr [ebx + 0x2c]                    // 0x007f78c8    8d7b2c
                         mov                ecx, 0x00000005                                // 0x007f78cb    b905000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f78d0    f3a5
                         {disp8} mov        edx, dword ptr [ebp + edx * 0x4 + 0x40]        // 0x007f78d2    8b549540
                         {disp8} mov        dword ptr [ebx + 0x48], edx                    // 0x007f78d6    895348
                         {disp8} mov        ecx, dword ptr [ebp + 0x50]                    // 0x007f78d9    8b4d50
                         dec                ecx                                            // 0x007f78dc    49
                         {disp32} mov       dword ptr [ebx + 0x000000a8], ecx              // 0x007f78dd    898ba8000000
                         {disp8} mov        edx, dword ptr [ebp + 0x54]                    // 0x007f78e3    8b5554
                         {disp8} lea        edi, dword ptr [ebx + 0x5c]                    // 0x007f78e6    8d7b5c
                         mov                ecx, 0x00000005                                // 0x007f78e9    b905000000
                         {disp8} lea        esi, dword ptr [esp + 0x30]                    // 0x007f78ee    8d742430
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f78f2    f3a5
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f78f4    8b4c2410
                         dec                edx                                            // 0x007f78f8    4a
                         {disp32} mov       dword ptr [ebx + 0x000000ac], edx              // 0x007f78f9    8993ac000000
                         {disp8} mov        edx, dword ptr [ebp + ecx * 0x4 + 0x40]        // 0x007f78ff    8b548d40
                         {disp32} mov       dword ptr [ebx + 0x00000098], edx              // 0x007f7903    899398000000
                         {disp8} lea        edi, dword ptr [ebx + 0x70]                    // 0x007f7909    8d7b70
                         mov.s              esi, eax                                       // 0x007f790c    8bf0
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007f790e    8b442414
                         mov                ecx, 0x00000005                                // 0x007f7912    b905000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f7917    f3a5
                         {disp8} mov        ecx, dword ptr [ebp + eax * 0x4 + 0x40]        // 0x007f7919    8b4c8540
                         {disp8} mov        esi, dword ptr [esp + 0x48]                    // 0x007f791d    8b742448
                         {disp32} mov       dword ptr [ebx + 0x0000009c], ecx              // 0x007f7921    898b9c000000
                         {disp32} lea       edi, dword ptr [ebx + 0x00000084]              // 0x007f7927    8dbb84000000
                         mov                ecx, 0x00000005                                // 0x007f792d    b905000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f7932    f3a5
                         pop                edi                                            // 0x007f7934    5f
                         pop                esi                                            // 0x007f7935    5e
                         pop                ebp                                            // 0x007f7936    5d
                         {disp32} mov       dword ptr [ebx + 0x000000a0], 0xffffffff       // 0x007f7937    c783a0000000ffffffff
                         pop                ebx                                            // 0x007f7941    5b
                         add                esp, 0x34                                      // 0x007f7942    83c434
                         ret                0x0004                                         // 0x007f7945    c20400
                         nop                                                               // 0x007f7948    90
                         nop                                                               // 0x007f7949    90
                         nop                                                               // 0x007f794a    90
                         nop                                                               // 0x007f794b    90
                         nop                                                               // 0x007f794c    90
                         nop                                                               // 0x007f794d    90
                         nop                                                               // 0x007f794e    90
                         nop                                                               // 0x007f794f    90
_jmp_addr_0x007f7950:    {disp8} mov        eax, dword ptr [ecx + 0x10]                    // 0x007f7950    8b4110
                         push               eax                                            // 0x007f7953    50
                         call               ??3@YAXPAX@Z                                   // 0x007f7954    e83f75fbff
                         pop                ecx                                            // 0x007f7959    59
                         ret                                                               // 0x007f795a    c3
                         nop                                                               // 0x007f795b    90
                         nop                                                               // 0x007f795c    90
                         nop                                                               // 0x007f795d    90
                         nop                                                               // 0x007f795e    90
                         nop                                                               // 0x007f795f    90
_jmp_addr_0x007f7960:    sub                esp, 0x1c                                      // 0x007f7960    83ec1c
                         push               ebx                                            // 0x007f7963    53
                         mov.s              ebx, ecx                                       // 0x007f7964    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x10]                    // 0x007f7966    8b4310
                         push               esi                                            // 0x007f7969    56
                         {disp8} mov        esi, dword ptr [ebx + 0x0c]                    // 0x007f796a    8b730c
                         {disp32} mov       dword ptr [data_bytes + 0x2711b0], eax         // 0x007f796d    a3b071c300
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                    // 0x007f7972    8b4b14
                         {disp32} mov       dword ptr [data_bytes + 0x4d40f8], ecx         // 0x007f7975    890df8a0e900
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f797b    8b4304
                         push               edi                                            // 0x007f797e    57
                         xor.s              edi, edi                                       // 0x007f797f    33ff
                         test               eax, eax                                       // 0x007f7981    85c0
                         {disp8} jle        _jmp_addr_0x007f79a3                           // 0x007f7983    7e1e
_jmp_addr_0x007f7985:    {disp8} mov        edx, dword ptr [esp + 0x30]                    // 0x007f7985    8b542430
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x007f7989    8b44242c
                         mov                ecx, dword ptr [esi]                           // 0x007f798d    8b0e
                         push               0x0                                            // 0x007f798f    6a00
                         push               edx                                            // 0x007f7991    52
                         push               eax                                            // 0x007f7992    50
                         call               _jmp_addr_0x007f7ed0                           // 0x007f7993    e838050000
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f7998    8b4304
                         add                esi, 0x04                                      // 0x007f799b    83c604
                         inc                edi                                            // 0x007f799e    47
                         cmp.s              edi, eax                                       // 0x007f799f    3bf8
                         {disp8} jl         _jmp_addr_0x007f7985                           // 0x007f79a1    7ce2
_jmp_addr_0x007f79a3:    {disp8} mov        eax, dword ptr [ebx + 0x20]                    // 0x007f79a3    8b4320
                         test               eax, eax                                       // 0x007f79a6    85c0
                         {disp8} mov        esi, dword ptr [ebx + 0x1c]                    // 0x007f79a8    8b731c
                         {disp8} je         _jmp_addr_0x007f79b6                           // 0x007f79ab    7409
                         {disp8} mov        dword ptr [ebx + 0x1c], 0x00000000             // 0x007f79ad    c7431c00000000
                         {disp8} jmp        _jmp_addr_0x007f7a0f                           // 0x007f79b4    eb59
_jmp_addr_0x007f79b6:    {disp8} mov        eax, dword ptr [ebx + 0x24]                    // 0x007f79b6    8b4324
                         test               eax, eax                                       // 0x007f79b9    85c0
                         {disp8} jne        _jmp_addr_0x007f79ee                           // 0x007f79bb    7531
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                    // 0x007f79bd    8b4c2430
                         push               ecx                                            // 0x007f79c1    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516344]         // 0x007f79c2    8b0d44c3ed00
                         call               _jmp_addr_0x0086cb80                           // 0x007f79c8    e8b3510700
                         call               _jmp_addr_0x007a1400                           // 0x007f79cd    e82e9afaff
                         sub                eax, 0x14                                      // 0x007f79d2    83e814
                         {disp8} js         _jmp_addr_0x007f79e9                           // 0x007f79d5    7812
                         test               eax, eax                                       // 0x007f79d7    85c0
                         {disp8} jle        _jmp_addr_0x007f79e9                           // 0x007f79d9    7e0e
                         cmp                eax, 0x000000ff                                // 0x007f79db    3dff000000
                         {disp8} jl         _jmp_addr_0x007f79eb                           // 0x007f79e0    7c09
                         mov                eax, 0x000000ff                                // 0x007f79e2    b8ff000000
                         {disp8} jmp        _jmp_addr_0x007f79eb                           // 0x007f79e7    eb02
_jmp_addr_0x007f79e9:    xor.s              eax, eax                                       // 0x007f79e9    33c0
_jmp_addr_0x007f79eb:    {disp8} mov        dword ptr [ebx + 0x1c], eax                    // 0x007f79eb    89431c
_jmp_addr_0x007f79ee:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ec0]         // 0x007f79ee    a1c09eea00
                         {disp8} mov        edx, dword ptr [ebx + 0x1c]                    // 0x007f79f3    8b531c
                         sar                eax, 4                                         // 0x007f79f6    c1f804
                         lea                ecx, dword ptr [eax + esi * 0x1]               // 0x007f79f9    8d0c30
                         cmp.s              edx, ecx                                       // 0x007f79fc    3bd1
                         {disp8} jle        _jmp_addr_0x007f7a03                           // 0x007f79fe    7e03
                         {disp8} mov        dword ptr [ebx + 0x1c], ecx                    // 0x007f7a00    894b1c
_jmp_addr_0x007f7a03:    mov.s              ecx, esi                                       // 0x007f7a03    8bce
                         sub.s              ecx, eax                                       // 0x007f7a05    2bc8
                         cmp                dword ptr [ebx + 0x1c], ecx                    // 0x007f7a07    394b1c
                         {disp8} jge        _jmp_addr_0x007f7a0f                           // 0x007f7a0a    7d03
                         {disp8} mov        dword ptr [ebx + 0x1c], ecx                    // 0x007f7a0c    894b1c
_jmp_addr_0x007f7a0f:    cmp                dword ptr [ebx + 0x1c], 0x05                   // 0x007f7a0f    837b1c05
                         {disp32} jle       _jmp_addr_0x007f7d20                           // 0x007f7a13    0f8e07030000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517394]         // 0x007f7a19    a194d3ed00
                         test               eax, eax                                       // 0x007f7a1e    85c0
                         {disp32} je        _jmp_addr_0x007f7d20                           // 0x007f7a20    0f84fa020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504228]         // 0x007f7a26    a128a2ec00
                         or                 esi, 0xffffffff                                // 0x007f7a2b    83ceff
                         cmp.s              eax, esi                                       // 0x007f7a2e    3bc6
                         {disp8} jne        _jmp_addr_0x007f7a5c                           // 0x007f7a30    752a
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7a32    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x007f7a37    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                    // 0x007f7a39    8d4c2424
                         push               ecx                                            // 0x007f7a3d    51
                         push               0xe                                            // 0x007f7a3e    6a0e
                         push               eax                                            // 0x007f7a40    50
                         call               dword ptr [edx + 0x54]                         // 0x007f7a41    ff5254
                         test               eax, eax                                       // 0x007f7a44    85c0
                         {disp8} je         _jmp_addr_0x007f7a50                           // 0x007f7a46    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504228], esi         // 0x007f7a48    893528a2ec00
                         {disp8} jmp        _jmp_addr_0x007f7a60                           // 0x007f7a4e    eb10
_jmp_addr_0x007f7a50:    {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x007f7a50    8b542424
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edx         // 0x007f7a54    891528a2ec00
                         {disp8} jmp        _jmp_addr_0x007f7a60                           // 0x007f7a5a    eb04
_jmp_addr_0x007f7a5c:    {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x007f7a5c    89442424
_jmp_addr_0x007f7a60:    push               ebp                                            // 0x007f7a60    55
                         mov                ebp, 0x00000001                                // 0x007f7a61    bd01000000
                         {disp32} mov       dword ptr [data_bytes + 0x504658], ebp         // 0x007f7a66    892d58a6ec00
                         {disp8} mov        ecx, dword ptr [ebx + 0x1c]                    // 0x007f7a6c    8b4b1c
                         mov                eax, 0x000000ff                                // 0x007f7a6f    b8ff000000
                         sub.s              eax, ecx                                       // 0x007f7a74    2bc1
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517394]         // 0x007f7a76    8b0d94d3ed00
                         push               0x0                                            // 0x007f7a7c    6a00
                         push               ecx                                            // 0x007f7a7e    51
                         {disp32} mov       dword ptr [data_bytes + 0x50465c], eax         // 0x007f7a7f    a35ca6ec00
                         call               _jmp_addr_0x007ace50                           // 0x007f7a84    e8c753fbff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50425c]         // 0x007f7a89    a15ca2ec00
                         add                esp, 0x08                                      // 0x007f7a8e    83c408
                         cmp.s              eax, esi                                       // 0x007f7a91    3bc6
                         {disp8} jne        _jmp_addr_0x007f7abe                           // 0x007f7a93    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7a95    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x007f7a9a    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                    // 0x007f7a9c    8d4c2410
                         push               ecx                                            // 0x007f7aa0    51
                         push               0x1b                                           // 0x007f7aa1    6a1b
                         push               eax                                            // 0x007f7aa3    50
                         call               dword ptr [edx + 0x54]                         // 0x007f7aa4    ff5254
                         test               eax, eax                                       // 0x007f7aa7    85c0
                         {disp8} je         _jmp_addr_0x007f7ab3                           // 0x007f7aa9    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], esi         // 0x007f7aab    89355ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7ac6                           // 0x007f7ab1    eb13
_jmp_addr_0x007f7ab3:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007f7ab3    8b442410
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], eax         // 0x007f7ab7    a35ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7ac2                           // 0x007f7abc    eb04
_jmp_addr_0x007f7abe:    {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x007f7abe    89442410
_jmp_addr_0x007f7ac2:    cmp.s              eax, esi                                       // 0x007f7ac2    3bc6
                         {disp8} jne        _jmp_addr_0x007f7af0                           // 0x007f7ac4    752a
_jmp_addr_0x007f7ac6:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7ac6    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x007f7acb    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                    // 0x007f7acd    8d4c2414
                         push               ecx                                            // 0x007f7ad1    51
                         push               0x1b                                           // 0x007f7ad2    6a1b
                         push               eax                                            // 0x007f7ad4    50
                         call               dword ptr [edx + 0x54]                         // 0x007f7ad5    ff5254
                         test               eax, eax                                       // 0x007f7ad8    85c0
                         {disp8} je         _jmp_addr_0x007f7ae4                           // 0x007f7ada    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], esi         // 0x007f7adc    89355ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7af4                           // 0x007f7ae2    eb10
_jmp_addr_0x007f7ae4:    {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x007f7ae4    8b542414
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], edx         // 0x007f7ae8    89155ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7af4                           // 0x007f7aee    eb04
_jmp_addr_0x007f7af0:    {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x007f7af0    89442414
_jmp_addr_0x007f7af4:    {disp32} mov       eax, dword ptr [data_bytes + 0x50423c]         // 0x007f7af4    a13ca2ec00
                         cmp.s              eax, esi                                       // 0x007f7af9    3bc6
                         {disp8} jne        _jmp_addr_0x007f7b26                           // 0x007f7afb    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7afd    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x007f7b02    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x18]                    // 0x007f7b04    8d542418
                         push               edx                                            // 0x007f7b08    52
                         push               0x13                                           // 0x007f7b09    6a13
                         push               eax                                            // 0x007f7b0b    50
                         call               dword ptr [ecx + 0x54]                         // 0x007f7b0c    ff5154
                         test               eax, eax                                       // 0x007f7b0f    85c0
                         {disp8} je         _jmp_addr_0x007f7b1b                           // 0x007f7b11    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], esi         // 0x007f7b13    89353ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7b2a                           // 0x007f7b19    eb0f
_jmp_addr_0x007f7b1b:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f7b1b    8b442418
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], eax         // 0x007f7b1f    a33ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7b2a                           // 0x007f7b24    eb04
_jmp_addr_0x007f7b26:    {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x007f7b26    89442418
_jmp_addr_0x007f7b2a:    {disp32} mov       eax, dword ptr [data_bytes + 0x504240]         // 0x007f7b2a    a140a2ec00
                         cmp.s              eax, esi                                       // 0x007f7b2f    3bc6
                         {disp8} jne        _jmp_addr_0x007f7b5c                           // 0x007f7b31    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7b33    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x007f7b38    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                    // 0x007f7b3a    8d54241c
                         push               edx                                            // 0x007f7b3e    52
                         push               0x14                                           // 0x007f7b3f    6a14
                         push               eax                                            // 0x007f7b41    50
                         call               dword ptr [ecx + 0x54]                         // 0x007f7b42    ff5154
                         test               eax, eax                                       // 0x007f7b45    85c0
                         {disp8} je         _jmp_addr_0x007f7b51                           // 0x007f7b47    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504240], esi         // 0x007f7b49    893540a2ec00
                         {disp8} jmp        _jmp_addr_0x007f7b60                           // 0x007f7b4f    eb0f
_jmp_addr_0x007f7b51:    {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x007f7b51    8b44241c
                         {disp32} mov       dword ptr [data_bytes + 0x504240], eax         // 0x007f7b55    a340a2ec00
                         {disp8} jmp        _jmp_addr_0x007f7b60                           // 0x007f7b5a    eb04
_jmp_addr_0x007f7b5c:    {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x007f7b5c    8944241c
_jmp_addr_0x007f7b60:    {disp32} mov       eax, dword ptr [data_bytes + 0x50422c]         // 0x007f7b60    a12ca2ec00
                         cmp.s              eax, esi                                       // 0x007f7b65    3bc6
                         {disp8} jne        _jmp_addr_0x007f7b92                           // 0x007f7b67    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7b69    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x007f7b6e    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x20]                    // 0x007f7b70    8d542420
                         push               edx                                            // 0x007f7b74    52
                         push               0xf                                            // 0x007f7b75    6a0f
                         push               eax                                            // 0x007f7b77    50
                         call               dword ptr [ecx + 0x54]                         // 0x007f7b78    ff5154
                         test               eax, eax                                       // 0x007f7b7b    85c0
                         {disp8} je         _jmp_addr_0x007f7b87                           // 0x007f7b7d    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50422c], esi         // 0x007f7b7f    89352ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7b96                           // 0x007f7b85    eb0f
_jmp_addr_0x007f7b87:    {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x007f7b87    8b442420
                         {disp32} mov       dword ptr [data_bytes + 0x50422c], eax         // 0x007f7b8b    a32ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7b96                           // 0x007f7b90    eb04
_jmp_addr_0x007f7b92:    {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x007f7b92    89442420
_jmp_addr_0x007f7b96:    {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]         // 0x007f7b96    a14ca2ec00
                         cmp.s              eax, esi                                       // 0x007f7b9b    3bc6
                         {disp8} jne        _jmp_addr_0x007f7bc8                           // 0x007f7b9d    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7b9f    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x007f7ba4    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x24]                    // 0x007f7ba6    8d542424
                         push               edx                                            // 0x007f7baa    52
                         push               0x17                                           // 0x007f7bab    6a17
                         push               eax                                            // 0x007f7bad    50
                         call               dword ptr [ecx + 0x54]                         // 0x007f7bae    ff5154
                         test               eax, eax                                       // 0x007f7bb1    85c0
                         {disp8} je         _jmp_addr_0x007f7bbd                           // 0x007f7bb3    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], esi         // 0x007f7bb5    89354ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7bcc                           // 0x007f7bbb    eb0f
_jmp_addr_0x007f7bbd:    {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x007f7bbd    8b442424
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x007f7bc1    a34ca2ec00
                         {disp8} jmp        _jmp_addr_0x007f7bcc                           // 0x007f7bc6    eb04
_jmp_addr_0x007f7bc8:    {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x007f7bc8    89442424
_jmp_addr_0x007f7bcc:    cmp                dword ptr [data_bytes + 0x50425c], ebp         // 0x007f7bcc    392d5ca2ec00
                         {disp8} je         _jmp_addr_0x007f7c0b                           // 0x007f7bd2    7437
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7bd4    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x007f7bd9    8b08
                         push               ebp                                            // 0x007f7bdb    55
                         push               0x1b                                           // 0x007f7bdc    6a1b
                         push               eax                                            // 0x007f7bde    50
                         call               dword ptr [ecx + 0x50]                         // 0x007f7bdf    ff5150
                         test               eax, eax                                       // 0x007f7be2    85c0
                         {disp32} je        _jmp_addr_0x007f7d29                           // 0x007f7be4    0f843f010000
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7bea    a138a6ec00
                         push               ebp                                            // 0x007f7bef    55
                         push               0x1b                                           // 0x007f7bf0    6a1b
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], esi         // 0x007f7bf2    89355ca2ec00
                         mov                edx, dword ptr [eax]                           // 0x007f7bf8    8b10
                         push               eax                                            // 0x007f7bfa    50
                         call               dword ptr [edx + 0x50]                         // 0x007f7bfb    ff5250
                         neg                eax                                            // 0x007f7bfe    f7d8
                         sbb.s              eax, eax                                       // 0x007f7c00    1bc0
                         and                eax, 0xfffffffe                                // 0x007f7c02    83e0fe
                         inc                eax                                            // 0x007f7c05    40
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], eax         // 0x007f7c06    a35ca2ec00
_jmp_addr_0x007f7c0b:    cmp                dword ptr [data_bytes + 0x50422c], ebp         // 0x007f7c0b    392d2ca2ec00
                         {disp8} je         _jmp_addr_0x007f7c2e                           // 0x007f7c11    741b
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7c13    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x007f7c18    8b08
                         push               ebp                                            // 0x007f7c1a    55
                         push               0xf                                            // 0x007f7c1b    6a0f
                         push               eax                                            // 0x007f7c1d    50
                         call               dword ptr [ecx + 0x50]                         // 0x007f7c1e    ff5150
                         neg                eax                                            // 0x007f7c21    f7d8
                         sbb.s              eax, eax                                       // 0x007f7c23    1bc0
                         and                eax, 0xfffffffe                                // 0x007f7c25    83e0fe
                         inc                eax                                            // 0x007f7c28    40
                         {disp32} mov       dword ptr [data_bytes + 0x50422c], eax         // 0x007f7c29    a32ca2ec00
_jmp_addr_0x007f7c2e:    cmp                dword ptr [data_bytes + 0x50423c], 0x02        // 0x007f7c2e    833d3ca2ec0002
                         {disp8} je         _jmp_addr_0x007f7c55                           // 0x007f7c35    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7c37    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x007f7c3c    8b10
                         push               0x2                                            // 0x007f7c3e    6a02
                         push               0x13                                           // 0x007f7c40    6a13
                         push               eax                                            // 0x007f7c42    50
                         call               dword ptr [edx + 0x50]                         // 0x007f7c43    ff5250
                         neg                eax                                            // 0x007f7c46    f7d8
                         sbb.s              eax, eax                                       // 0x007f7c48    1bc0
                         and                eax, 0xfffffffd                                // 0x007f7c4a    83e0fd
                         add                eax, 0x02                                      // 0x007f7c4d    83c002
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], eax         // 0x007f7c50    a33ca2ec00
_jmp_addr_0x007f7c55:    cmp                dword ptr [data_bytes + 0x504240], ebp         // 0x007f7c55    392d40a2ec00
                         {disp8} je         _jmp_addr_0x007f7c78                           // 0x007f7c5b    741b
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7c5d    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x007f7c62    8b08
                         push               ebp                                            // 0x007f7c64    55
                         push               0x14                                           // 0x007f7c65    6a14
                         push               eax                                            // 0x007f7c67    50
                         call               dword ptr [ecx + 0x50]                         // 0x007f7c68    ff5150
                         neg                eax                                            // 0x007f7c6b    f7d8
                         sbb.s              eax, eax                                       // 0x007f7c6d    1bc0
                         and                eax, 0xfffffffe                                // 0x007f7c6f    83e0fe
                         inc                eax                                            // 0x007f7c72    40
                         {disp32} mov       dword ptr [data_bytes + 0x504240], eax         // 0x007f7c73    a340a2ec00
_jmp_addr_0x007f7c78:    cmp                dword ptr [data_bytes + 0x50424c], 0x03        // 0x007f7c78    833d4ca2ec0003
                         {disp8} je         _jmp_addr_0x007f7c9f                           // 0x007f7c7f    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x007f7c81    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x007f7c86    8b10
                         push               0x3                                            // 0x007f7c88    6a03
                         push               0x17                                           // 0x007f7c8a    6a17
                         push               eax                                            // 0x007f7c8c    50
                         call               dword ptr [edx + 0x50]                         // 0x007f7c8d    ff5250
                         neg                eax                                            // 0x007f7c90    f7d8
                         sbb.s              eax, eax                                       // 0x007f7c92    1bc0
                         and                eax, 0xfffffffc                                // 0x007f7c94    83e0fc
                         add                eax, 0x03                                      // 0x007f7c97    83c003
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x007f7c9a    a34ca2ec00
_jmp_addr_0x007f7c9f:    {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f7c9f    8b4304
                         {disp8} mov        esi, dword ptr [ebx + 0x0c]                    // 0x007f7ca2    8b730c
                         xor.s              edi, edi                                       // 0x007f7ca5    33ff
                         test               eax, eax                                       // 0x007f7ca7    85c0
                         {disp8} jle        _jmp_addr_0x007f7cc8                           // 0x007f7ca9    7e1d
_jmp_addr_0x007f7cab:    {disp8} mov        eax, dword ptr [esp + 0x34]                    // 0x007f7cab    8b442434
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                    // 0x007f7caf    8b4c2430
                         push               ebp                                            // 0x007f7cb3    55
                         push               eax                                            // 0x007f7cb4    50
                         push               ecx                                            // 0x007f7cb5    51
                         mov                ecx, dword ptr [esi]                           // 0x007f7cb6    8b0e
                         call               _jmp_addr_0x007f7ed0                           // 0x007f7cb8    e813020000
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f7cbd    8b4304
                         add                esi, 0x04                                      // 0x007f7cc0    83c604
                         inc                edi                                            // 0x007f7cc3    47
                         cmp.s              edi, eax                                       // 0x007f7cc4    3bf8
                         {disp8} jl         _jmp_addr_0x007f7cab                           // 0x007f7cc6    7ce3
_jmp_addr_0x007f7cc8:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x007f7cc8    8b542410
                         push               edx                                            // 0x007f7ccc    52
                         push               0x1b                                           // 0x007f7ccd    6a1b
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                           // 0x007f7ccf    e86cacc1ff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x007f7cd4    8b44241c
                         push               eax                                            // 0x007f7cd8    50
                         push               0x1b                                           // 0x007f7cd9    6a1b
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                           // 0x007f7cdb    e860acc1ff
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x007f7ce0    8b4c2428
                         push               ecx                                            // 0x007f7ce4    51
                         push               0x13                                           // 0x007f7ce5    6a13
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                           // 0x007f7ce7    e854acc1ff
                         {disp8} mov        edx, dword ptr [esp + 0x34]                    // 0x007f7cec    8b542434
                         push               edx                                            // 0x007f7cf0    52
                         push               0x14                                           // 0x007f7cf1    6a14
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                           // 0x007f7cf3    e848acc1ff
                         {disp8} mov        eax, dword ptr [esp + 0x40]                    // 0x007f7cf8    8b442440
                         push               eax                                            // 0x007f7cfc    50
                         push               0xf                                            // 0x007f7cfd    6a0f
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                           // 0x007f7cff    e83cacc1ff
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                    // 0x007f7d04    8b4c244c
                         push               ecx                                            // 0x007f7d08    51
                         push               0x17                                           // 0x007f7d09    6a17
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                           // 0x007f7d0b    e830acc1ff
                         add                esp, 0x30                                      // 0x007f7d10    83c430
                         xor.s              eax, eax                                       // 0x007f7d13    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x504658], eax         // 0x007f7d15    a358a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], eax         // 0x007f7d1a    a34ca6ec00
                         pop                ebp                                            // 0x007f7d1f    5d
_jmp_addr_0x007f7d20:    pop                edi                                            // 0x007f7d20    5f
                         pop                esi                                            // 0x007f7d21    5e
                         pop                ebx                                            // 0x007f7d22    5b
                         add                esp, 0x1c                                      // 0x007f7d23    83c41c
                         ret                0x0008                                         // 0x007f7d26    c20800
_jmp_addr_0x007f7d29:    {disp32} mov       dword ptr [data_bytes + 0x50425c], ebp         // 0x007f7d29    892d5ca2ec00
                         {disp32} jmp       _jmp_addr_0x007f7c0b                           // 0x007f7d2f    e9d7feffff
                         nop                                                               // 0x007f7d34    90
                         nop                                                               // 0x007f7d35    90
                         nop                                                               // 0x007f7d36    90
                         nop                                                               // 0x007f7d37    90
                         nop                                                               // 0x007f7d38    90
                         nop                                                               // 0x007f7d39    90
                         nop                                                               // 0x007f7d3a    90
                         nop                                                               // 0x007f7d3b    90
                         nop                                                               // 0x007f7d3c    90
                         nop                                                               // 0x007f7d3d    90
                         nop                                                               // 0x007f7d3e    90
                         nop                                                               // 0x007f7d3f    90
_jmp_addr_0x007f7d40:    sub                esp, 0x00000410                                // 0x007f7d40    81ec10040000
                         push               ebp                                            // 0x007f7d46    55
                         push               esi                                            // 0x007f7d47    56
                         mov.s              ebp, ecx                                       // 0x007f7d48    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                    // 0x007f7d4a    8b4504
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x007f7d4d    8b750c
                         push               edi                                            // 0x007f7d50    57
                         xor.s              edi, edi                                       // 0x007f7d51    33ff
                         cmp.s              eax, edi                                       // 0x007f7d53    3bc7
                         {disp8} mov        dword ptr [esp + 0x0c], edi                    // 0x007f7d55    897c240c
                         {disp8} jle        _jmp_addr_0x007f7db4                           // 0x007f7d59    7e59
                         push               ebx                                            // 0x007f7d5b    53
_jmp_addr_0x007f7d5c:    {disp32} mov       eax, dword ptr [esp + 0x00000430]              // 0x007f7d5c    8b842430040000
                         {disp32} mov       edx, dword ptr [esp + 0x0000042c]              // 0x007f7d63    8b94242c040000
                         push               eax                                            // 0x007f7d6a    50
                         {disp32} mov       eax, dword ptr [esp + 0x0000042c]              // 0x007f7d6b    8b84242c040000
                         {disp8} lea        ecx, dword ptr [esp + edi * 0x4 + 0x24]        // 0x007f7d72    8d4cbc24
                         push               ecx                                            // 0x007f7d76    51
                         {disp32} mov       ecx, dword ptr [esp + 0x0000042c]              // 0x007f7d77    8b8c242c040000
                         push               edx                                            // 0x007f7d7e    52
                         push               eax                                            // 0x007f7d7f    50
                         push               ecx                                            // 0x007f7d80    51
                         mov                ecx, dword ptr [esi]                           // 0x007f7d81    8b0e
                         call               _jmp_addr_0x0076e2d0                           // 0x007f7d83    e84865f7ff
                         mov                ebx, dword ptr [esi]                           // 0x007f7d88    8b1e
                         add.s              edi, eax                                       // 0x007f7d8a    03f8
                         test               ebx, ebx                                       // 0x007f7d8c    85db
                         {disp8} je         _jmp_addr_0x007f7da0                           // 0x007f7d8e    7410
                         mov.s              ecx, ebx                                       // 0x007f7d90    8bcb
                         call               _jmp_addr_0x007f7950                           // 0x007f7d92    e8b9fbffff
                         push               ebx                                            // 0x007f7d97    53
                         call               ??3@YAXPAX@Z                                   // 0x007f7d98    e8fb70fbff
                         add                esp, 0x04                                      // 0x007f7d9d    83c404
_jmp_addr_0x007f7da0:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007f7da0    8b442410
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x007f7da4    8b4d04
                         add                esi, 0x04                                      // 0x007f7da7    83c604
                         inc                eax                                            // 0x007f7daa    40
                         cmp.s              eax, ecx                                       // 0x007f7dab    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x007f7dad    89442410
                         {disp8} jl         _jmp_addr_0x007f7d5c                           // 0x007f7db1    7ca9
                         pop                ebx                                            // 0x007f7db3    5b
_jmp_addr_0x007f7db4:    {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f7db4    8b550c
                         push               edx                                            // 0x007f7db7    52
                         call               ??3@YAXPAX@Z                                   // 0x007f7db8    e8db70fbff
                         {disp32} lea       eax, dword ptr [edi * 0x4 + 0x00000000]        // 0x007f7dbd    8d04bd00000000
                         push               eax                                            // 0x007f7dc4    50
                         {disp8} mov        dword ptr [ebp + 0x04], edi                    // 0x007f7dc5    897d04
                         call               ??2@YAPAXI@Z                                   // 0x007f7dc8    e821e7fcff
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x007f7dcd    8b4d04
                         shl                ecx, 2                                         // 0x007f7dd0    c1e102
                         mov.s              edx, ecx                                       // 0x007f7dd3    8bd1
                         shr                ecx, 2                                         // 0x007f7dd5    c1e902
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f7dd8    89450c
                         mov.s              edi, eax                                       // 0x007f7ddb    8bf8
                         {disp8} lea        esi, dword ptr [esp + 0x24]                    // 0x007f7ddd    8d742424
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f7de1    f3a5
                         mov.s              ecx, edx                                       // 0x007f7de3    8bca
                         and                ecx, 0x03                                      // 0x007f7de5    83e103
                         rep movsb                                                         // 0x007f7de8    f3a4
                         {disp32} mov       ecx, dword ptr [esp + 0x00000434]              // 0x007f7dea    8b8c2434040000
                         add                esp, 0x08                                      // 0x007f7df1    83c408
                         {disp8} lea        eax, dword ptr [esp + 0x10]                    // 0x007f7df4    8d442410
                         push               eax                                            // 0x007f7df8    50
                         push               ecx                                            // 0x007f7df9    51
                         push               0x1                                            // 0x007f7dfa    6a01
                         mov.s              ecx, ebp                                       // 0x007f7dfc    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000             // 0x007f7dfe    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x007f7e06    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000             // 0x007f7e0e    c744242400000000
                         call               _jmp_addr_0x0076dc30                           // 0x007f7e16    e8155ef7ff
                         pop                edi                                            // 0x007f7e1b    5f
                         pop                esi                                            // 0x007f7e1c    5e
                         pop                ebp                                            // 0x007f7e1d    5d
                         add                esp, 0x00000410                                // 0x007f7e1e    81c410040000
                         ret                0x0010                                         // 0x007f7e24    c21000
                         nop                                                               // 0x007f7e27    90
                         nop                                                               // 0x007f7e28    90
                         nop                                                               // 0x007f7e29    90
                         nop                                                               // 0x007f7e2a    90
                         nop                                                               // 0x007f7e2b    90
                         nop                                                               // 0x007f7e2c    90
                         nop                                                               // 0x007f7e2d    90
                         nop                                                               // 0x007f7e2e    90
                         nop                                                               // 0x007f7e2f    90
_jmp_addr_0x007f7e30:    sub                esp, 0x0c                                      // 0x007f7e30    83ec0c
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                    // 0x007f7e33    8b410c
                         {disp8} mov        dword ptr [esp + 0x00], eax                    // 0x007f7e36    89442400
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x007f7e3a    8b4104
                         test               eax, eax                                       // 0x007f7e3d    85c0
                         {disp8} mov        dword ptr [esp + 0x04], ecx                    // 0x007f7e3f    894c2404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000             // 0x007f7e43    c744240800000000
                         {disp8} jle        _jmp_addr_0x007f7ec5                           // 0x007f7e4b    7e78
                         push               ebx                                            // 0x007f7e4d    53
                         push               ebp                                            // 0x007f7e4e    55
                         push               esi                                            // 0x007f7e4f    56
                         push               edi                                            // 0x007f7e50    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                    // 0x007f7e51    8b7c2424
_jmp_addr_0x007f7e55:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x007f7e55    8b542410
                         mov                ebx, dword ptr [edx]                           // 0x007f7e59    8b1a
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f7e5b    8b4304
                         {disp8} mov        esi, dword ptr [ebx + 0x10]                    // 0x007f7e5e    8b7310
                         xor.s              ebp, ebp                                       // 0x007f7e61    33ed
                         test               eax, eax                                       // 0x007f7e63    85c0
                         {disp8} jle        _jmp_addr_0x007f7ea6                           // 0x007f7e65    7e3f
_jmp_addr_0x007f7e67:    cmp                dword ptr [esi], -0x01                         // 0x007f7e67    833eff
                         {disp8} jne        _jmp_addr_0x007f7e97                           // 0x007f7e6a    752b
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x007f7e6c    8b442420
                         push               esi                                            // 0x007f7e70    56
                         push               eax                                            // 0x007f7e71    50
                         call               _jmp_addr_0x007f7680                           // 0x007f7e72    e809f8ffff
                         add                esp, 0x08                                      // 0x007f7e77    83c408
                         test               al, al                                         // 0x007f7e7a    84c0
                         {disp8} je         _jmp_addr_0x007f7e97                           // 0x007f7e7c    7419
                         {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x007f7e7e    8b442428
                         mov                dword ptr [esi], edi                           // 0x007f7e82    893e
                         mov                ecx, dword ptr [eax + edi * 0x4]               // 0x007f7e84    8b0cb8
                         push               eax                                            // 0x007f7e87    50
                         inc                ecx                                            // 0x007f7e88    41
                         push               edi                                            // 0x007f7e89    57
                         mov                dword ptr [eax + edi * 0x4], ecx               // 0x007f7e8a    890cb8
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x007f7e8d    8b4c241c
                         push               esi                                            // 0x007f7e91    56
                         call               _jmp_addr_0x007f7e30                           // 0x007f7e92    e899ffffff
_jmp_addr_0x007f7e97:    {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x007f7e97    8b4304
                         add                esi, 0x58                                      // 0x007f7e9a    83c658
                         inc                ebp                                            // 0x007f7e9d    45
                         cmp.s              ebp, eax                                       // 0x007f7e9e    3be8
                         {disp8} jl         _jmp_addr_0x007f7e67                           // 0x007f7ea0    7cc5
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x007f7ea2    8b4c2414
_jmp_addr_0x007f7ea6:    {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007f7ea6    8b5c2410
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x007f7eaa    8b442418
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x007f7eae    8b5104
                         add                ebx, 0x04                                      // 0x007f7eb1    83c304
                         inc                eax                                            // 0x007f7eb4    40
                         cmp.s              eax, edx                                       // 0x007f7eb5    3bc2
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x007f7eb7    895c2410
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x007f7ebb    89442418
                         {disp8} jl         _jmp_addr_0x007f7e55                           // 0x007f7ebf    7c94
                         pop                edi                                            // 0x007f7ec1    5f
                         pop                esi                                            // 0x007f7ec2    5e
                         pop                ebp                                            // 0x007f7ec3    5d
                         pop                ebx                                            // 0x007f7ec4    5b
_jmp_addr_0x007f7ec5:    add                esp, 0x0c                                      // 0x007f7ec5    83c40c
                         ret                0x000c                                         // 0x007f7ec8    c20c00
                         nop                                                               // 0x007f7ecb    90
                         nop                                                               // 0x007f7ecc    90
                         nop                                                               // 0x007f7ecd    90
                         nop                                                               // 0x007f7ece    90
                         nop                                                               // 0x007f7ecf    90
_jmp_addr_0x007f7ed0:    push               ebp                                            // 0x007f7ed0    55
                         mov.s              ebp, esp                                       // 0x007f7ed1    8bec
                         sub                esp, 0x000000dc                                // 0x007f7ed3    81ecdc000000
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e90]              // 0x007f7ed9    d905909eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e94]         // 0x007f7edf    a1949eea00
                         push               ebx                                            // 0x007f7ee4    53
                         push               esi                                            // 0x007f7ee5    56
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x007f7ee6    8b750c
                         fsub               dword ptr [esi]                                // 0x007f7ee9    d826
                         {disp8} mov        dword ptr [ebp + -0x58], eax                   // 0x007f7eeb    8945a8
                         mov.s              ebx, ecx                                       // 0x007f7eee    8bd9
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3e98]         // 0x007f7ef0    8b0d989eea00
                         {disp8} fstp       dword ptr [ebp + -0x30]                        // 0x007f7ef6    d95dd0
                         {disp8} fld        dword ptr [ebp + -0x58]                        // 0x007f7ef9    d945a8
                         {disp8} mov        dword ptr [ebp + -0x54], ecx                   // 0x007f7efc    894dac
                         {disp8} fsub       dword ptr [esi + 0x04]                         // 0x007f7eff    d86604
                         push               edi                                            // 0x007f7f02    57
                         push               ecx                                            // 0x007f7f03    51
                         xor.s              edi, edi                                       // 0x007f7f04    33ff
                         {disp8} fstp       dword ptr [ebp + -0x2c]                        // 0x007f7f06    d95dd4
                         {disp8} fld        dword ptr [ebp + -0x54]                        // 0x007f7f09    d945ac
                         {disp8} mov        dword ptr [ebp + -0x40], ebx                   // 0x007f7f0c    895dc0
                         {disp8} fsub       dword ptr [esi + 0x08]                         // 0x007f7f0f    d86608
                         {disp8} mov        dword ptr [ebp + -0x20], edi                   // 0x007f7f12    897de0
                         {disp8} mov        dword ptr [ebp + -0x1c], edi                   // 0x007f7f15    897de4
                         {disp8} fst        dword ptr [ebp + -0x28]                        // 0x007f7f18    d955d8
                         {disp8} fld        dword ptr [ebp + -0x2c]                        // 0x007f7f1b    d945d4
                         fld                st(0)                                          // 0x007f7f1e    d9c0
                         fmul               st, st(1)                                      // 0x007f7f20    d8c9
                         fld                st(2)                                          // 0x007f7f22    d9c2
                         fmul               st, st(3)                                      // 0x007f7f24    d8cb
                         faddp              st(1), st                                      // 0x007f7f26    dec1
                         {disp8} fld        dword ptr [ebp + -0x30]                        // 0x007f7f28    d945d0
                         {disp8} fmul       dword ptr [ebp + -0x30]                        // 0x007f7f2b    d84dd0
                         faddp              st(1), st                                      // 0x007f7f2e    dec1
                         fstp               dword ptr [esp]                                // 0x007f7f30    d91c24
                         fstp               st(0)                                          // 0x007f7f33    ddd8
                         fstp               st(0)                                          // 0x007f7f35    ddd8
                         call               _jmp_addr_0x00841170                           // 0x007f7f37    e834920400
                         {disp8} fld        dword ptr [ebp + -0x30]                        // 0x007f7f3c    d945d0
                         {disp8} lea        edx, dword ptr [ebp + -0x18]                   // 0x007f7f3f    8d55e8
                         fmul               st, st(1)                                      // 0x007f7f42    d8c9
                         push               edx                                            // 0x007f7f44    52
                         {disp8} lea        eax, dword ptr [ebp + -0x24]                   // 0x007f7f45    8d45dc
                         push               eax                                            // 0x007f7f48    50
                         {disp8} fstp       dword ptr [ebp + -0x5c]                        // 0x007f7f49    d95da4
                         push               esi                                            // 0x007f7f4c    56
                         {disp8} fld        dword ptr [ebp + -0x2c]                        // 0x007f7f4d    d945d4
                         fmul               st, st(1)                                      // 0x007f7f50    d8c9
                         {disp8} fstp       dword ptr [ebp + -0x58]                        // 0x007f7f52    d95da8
                         {disp8} fld        dword ptr [ebp + -0x28]                        // 0x007f7f55    d945d8
                         fmul               st, st(1)                                      // 0x007f7f58    d8c9
                         {disp8} fstp       dword ptr [ebp + -0x54]                        // 0x007f7f5a    d95dac
                         fstp               st(0)                                          // 0x007f7f5d    ddd8
                         call               _jmp_addr_0x00801c90                           // 0x007f7f5f    e82c9d0000
                         {disp32} mov       al, byte ptr [data_bytes + 0x2711b4]           // 0x007f7f64    a0b471c300
                         add                esp, 0x10                                      // 0x007f7f69    83c410
                         test               al, al                                         // 0x007f7f6c    84c0
                         {disp32} je        _jmp_addr_0x007f8074                           // 0x007f7f6e    0f8400010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2711b0]         // 0x007f7f74    a1b071c300
                         cmp                eax, -0x01                                     // 0x007f7f79    83f8ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4d40f8]         // 0x007f7f7c    8b0df8a0e900
                         {disp8} jne        _jmp_addr_0x007f7f8c                           // 0x007f7f82    7508
                         cmp.s              ecx, edi                                       // 0x007f7f84    3bcf
                         {disp32} je        _jmp_addr_0x007f8074                           // 0x007f7f86    0f84e8000000
_jmp_addr_0x007f7f8c:    {disp8} mov        esi, dword ptr [ebp + -0x24]                   // 0x007f7f8c    8b75dc
                         xor.s              edx, edx                                       // 0x007f7f8f    33d2
                         {disp32} mov       dl, byte ptr [data_bytes + 0x2711b2]           // 0x007f7f91    8a15b271c300
                         shr                esi, 8                                         // 0x007f7f97    c1ee08
                         mov.s              edi, esi                                       // 0x007f7f9a    8bfe
                         and                edi, 0x0000ff00                                // 0x007f7f9c    81e700ff0000
                         mov.s              ebx, eax                                       // 0x007f7fa2    8bd8
                         shr                ebx, 0x18                                      // 0x007f7fa4    c1eb18
                         imul               edx, edi                                       // 0x007f7fa7    0fafd7
                         mov.s              edi, esi                                       // 0x007f7faa    8bfe
                         and                edi, 0x00ff0000                                // 0x007f7fac    81e70000ff00
                         imul               edi, ebx                                       // 0x007f7fb2    0faffb
                         xor.s              ebx, ebx                                       // 0x007f7fb5    33db
                         mov.s              bl, ah                                         // 0x007f7fb7    8adc
                         and                esi, 0x000000ff                                // 0x007f7fb9    81e6ff000000
                         and                eax, 0x000000ff                                // 0x007f7fbf    25ff000000
                         and                edi, 0xff00ffff                                // 0x007f7fc4    81e7ffff00ff
                         or.s               edx, edi                                       // 0x007f7fca    0bd7
                         and                edx, 0xffff00ff                                // 0x007f7fcc    81e2ff00ffff
                         imul               ebx, esi                                       // 0x007f7fd2    0fafde
                         {disp8} mov        esi, dword ptr [ebp + -0x24]                   // 0x007f7fd5    8b75dc
                         and                esi, 0x000000ff                                // 0x007f7fd8    81e6ff000000
                         imul               eax, esi                                       // 0x007f7fde    0fafc6
                         or.s               edx, ebx                                       // 0x007f7fe1    0bd3
                         and                edx, 0xffffff00                                // 0x007f7fe3    81e200ffffff
                         shr                eax, 8                                         // 0x007f7fe9    c1e808
                         or.s               edx, eax                                       // 0x007f7fec    0bd0
                         {disp8} mov        eax, dword ptr [ebp + -0x18]                   // 0x007f7fee    8b45e8
                         {disp8} mov        dword ptr [ebp + -0x24], edx                   // 0x007f7ff1    8955dc
                         mov.s              esi, ecx                                       // 0x007f7ff4    8bf1
                         mov.s              edx, eax                                       // 0x007f7ff6    8bd0
                         shr                edx, 0x18                                      // 0x007f7ff8    c1ea18
                         shr                esi, 0x18                                      // 0x007f7ffb    c1ee18
                         add.s              esi, edx                                       // 0x007f7ffe    03f2
                         xor.s              edx, edx                                       // 0x007f8000    33d2
                         {disp32} mov       dl, byte ptr [data_bytes + 0x4d40fa]           // 0x007f8002    8a15faa0e900
                         xor.s              ebx, ebx                                       // 0x007f8008    33db
                         {disp8} mov        bl, byte ptr [ebp + -0x16]                     // 0x007f800a    8a5dea
                         add.s              edx, ebx                                       // 0x007f800d    03d3
                         mov.s              edi, edx                                       // 0x007f800f    8bfa
                         xor.s              edx, edx                                       // 0x007f8011    33d2
                         xor.s              ebx, ebx                                       // 0x007f8013    33db
                         mov.s              dl, ch                                         // 0x007f8015    8ad5
                         mov.s              bl, ah                                         // 0x007f8017    8adc
                         and                ecx, 0x000000ff                                // 0x007f8019    81e1ff000000
                         and                eax, 0x000000ff                                // 0x007f801f    25ff000000
                         add.s              ecx, eax                                       // 0x007f8024    03c8
                         add.s              edx, ebx                                       // 0x007f8026    03d3
                         cmp                esi, 0x000000ff                                // 0x007f8028    81feff000000
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x007f8035    // 0x007f802e    7205
                         mov                esi, 0x000000ff                                // 0x007f8030    beff000000
_jmp_addr_0x007f8035:    cmp                edi, 0x000000ff                                // 0x007f8035    81ffff000000
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x007f8042    // 0x007f803b    7205
                         mov                edi, 0x000000ff                                // 0x007f803d    bfff000000
_jmp_addr_0x007f8042:    cmp                edx, 0x000000ff                                // 0x007f8042    81faff000000
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x007f804f    // 0x007f8048    7205
                         mov                edx, 0x000000ff                                // 0x007f804a    baff000000
_jmp_addr_0x007f804f:    cmp                ecx, 0x000000ff                                // 0x007f804f    81f9ff000000
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x007f805c    // 0x007f8055    7205
                         mov                ecx, 0x000000ff                                // 0x007f8057    b9ff000000
_jmp_addr_0x007f805c:    {disp8} mov        ebx, dword ptr [ebp + -0x40]                   // 0x007f805c    8b5dc0
                         shl                esi, 8                                         // 0x007f805f    c1e608
                         or.s               esi, edi                                       // 0x007f8062    0bf7
                         shl                esi, 8                                         // 0x007f8064    c1e608
                         or.s               esi, edx                                       // 0x007f8067    0bf2
                         shl                esi, 8                                         // 0x007f8069    c1e608
                         or.s               esi, ecx                                       // 0x007f806c    0bf1
                         {disp8} mov        dword ptr [ebp + -0x18], esi                   // 0x007f806e    8975e8
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x007f8071    8b750c
_jmp_addr_0x007f8074:    {disp8} mov        ecx, dword ptr [ebp + -0x18]                   // 0x007f8074    8b4de8
                         {disp8} lea        eax, dword ptr [ebp + -0x24]                   // 0x007f8077    8d45dc
                         push               eax                                            // 0x007f807a    50
                         push               ecx                                            // 0x007f807b    51
                         push               esi                                            // 0x007f807c    56
                         call               _jmp_addr_0x007feb30                           // 0x007f807d    e8ae6a0000
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                    // 0x007f8082    8b4b04
                         {disp8} mov        dword ptr [ebp + -0x18], eax                   // 0x007f8085    8945e8
                         xor.s              eax, eax                                       // 0x007f8088    33c0
                         add                esp, 0x0c                                      // 0x007f808a    83c40c
                         cmp.s              ecx, eax                                       // 0x007f808d    3bc8
                         {disp8} mov        dword ptr [ebp + -0x68], eax                   // 0x007f808f    894598
                         {disp32} jle       _jmp_addr_0x007f8735                           // 0x007f8092    0f8e9d060000
                         {disp8} mov        dword ptr [ebp + -0x60], eax                   // 0x007f8098    8945a0
_jmp_addr_0x007f809b:    {disp8} mov        esi, dword ptr [ebx + 0x10]                    // 0x007f809b    8b7310
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007f809e    8b4d08
                         add.s              eax, esi                                       // 0x007f80a1    03c6
                         test               ecx, ecx                                       // 0x007f80a3    85c9
                         {disp8} mov        dword ptr [ebp + -0x38], eax                   // 0x007f80a5    8945c8
                         {disp32} je        _jmp_addr_0x007f81da                           // 0x007f80a8    0f842c010000
                         {disp32} lea       edx, dword ptr [ebp + -0x000000a4]             // 0x007f80ae    8d955cffffff
                         add                eax, 0x08                                      // 0x007f80b4    83c008
                         mov                esi, 0x00000003                                // 0x007f80b7    be03000000
_jmp_addr_0x007f80bc:    {disp8} fld        dword ptr [eax + 0x04]                         // 0x007f80bc    d94004
                         add                eax, 0x14                                      // 0x007f80bf    83c014
                         {disp8} fmul       dword ptr [ecx + 0x18]                         // 0x007f80c2    d84918
                         add                edx, 0x0c                                      // 0x007f80c5    83c20c
                         dec                esi                                            // 0x007f80c8    4e
                         {disp8} fld        dword ptr [eax + -0x14]                        // 0x007f80c9    d940ec
                         {disp8} fmul       dword ptr [ecx + 0x0c]                         // 0x007f80cc    d8490c
                         faddp              st(1), st                                      // 0x007f80cf    dec1
                         fld                dword ptr [ecx]                                // 0x007f80d1    d901
                         {disp8} fmul       dword ptr [eax + -0x18]                        // 0x007f80d3    d848e8
                         faddp              st(1), st                                      // 0x007f80d6    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                         // 0x007f80d8    d84124
                         {disp8} fstp       dword ptr [edx + -0x14]                        // 0x007f80db    d95aec
                         {disp8} fld        dword ptr [eax + -0x14]                        // 0x007f80de    d940ec
                         {disp8} fmul       dword ptr [ecx + 0x10]                         // 0x007f80e1    d84910
                         {disp8} fld        dword ptr [ecx + 0x04]                         // 0x007f80e4    d94104
                         {disp8} fmul       dword ptr [eax + -0x18]                        // 0x007f80e7    d848e8
                         faddp              st(1), st                                      // 0x007f80ea    dec1
                         {disp8} fld        dword ptr [ecx + 0x1c]                         // 0x007f80ec    d9411c
                         {disp8} fmul       dword ptr [eax + -0x10]                        // 0x007f80ef    d848f0
                         faddp              st(1), st                                      // 0x007f80f2    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                         // 0x007f80f4    d84128
                         {disp8} fstp       dword ptr [edx + -0x10]                        // 0x007f80f7    d95af0
                         {disp8} fld        dword ptr [eax + -0x14]                        // 0x007f80fa    d940ec
                         {disp8} fmul       dword ptr [ecx + 0x14]                         // 0x007f80fd    d84914
                         {disp8} fld        dword ptr [ecx + 0x08]                         // 0x007f8100    d94108
                         {disp8} fmul       dword ptr [eax + -0x18]                        // 0x007f8103    d848e8
                         faddp              st(1), st                                      // 0x007f8106    dec1
                         {disp8} fld        dword ptr [ecx + 0x20]                         // 0x007f8108    d94120
                         {disp8} fmul       dword ptr [eax + -0x10]                        // 0x007f810b    d848f0
                         faddp              st(1), st                                      // 0x007f810e    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                         // 0x007f8110    d8412c
                         {disp8} fstp       dword ptr [edx + -0x0c]                        // 0x007f8113    d95af4
                         {disp8} jne        _jmp_addr_0x007f80bc                           // 0x007f8116    75a4
                         {disp32} fld       dword ptr [ebp + -0x00000094]                  // 0x007f8118    d9856cffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000ac]                  // 0x007f811e    d8a554ffffff
                         {disp32} fld       dword ptr [ebp + -0x00000090]                  // 0x007f8124    d98570ffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000a8]                  // 0x007f812a    d8a558ffffff
                         {disp32} fld       dword ptr [ebp + -0x0000008c]                  // 0x007f8130    d98574ffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000a4]                  // 0x007f8136    d8a55cffffff
                         {disp32} fld       dword ptr [ebp + -0x000000a0]                  // 0x007f813c    d98560ffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000ac]                  // 0x007f8142    d8a554ffffff
                         {disp32} fstp      dword ptr [ebp + -0x00000084]                  // 0x007f8148    d99d7cffffff
                         {disp32} fld       dword ptr [ebp + -0x0000009c]                  // 0x007f814e    d98564ffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000a8]                  // 0x007f8154    d8a558ffffff
                         {disp8} fstp       dword ptr [ebp + -0x80]                        // 0x007f815a    d95d80
                         {disp32} fld       dword ptr [ebp + -0x00000098]                  // 0x007f815d    d98568ffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000a4]                  // 0x007f8163    d8a55cffffff
                         {disp8} fld        dword ptr [ebp + -0x80]                        // 0x007f8169    d94580
                         fmul               st, st(2)                                      // 0x007f816c    d8ca
                         fld                st(1)                                          // 0x007f816e    d9c1
                         fmul               st, st(4)                                      // 0x007f8170    d8cc
                         fsubp              st(1), st                                      // 0x007f8172    dee9
                         {disp8} fstp       dword ptr [ebp + -0x50]                        // 0x007f8174    d95db0
                         {disp8} mov        edx, dword ptr [ebp + -0x50]                   // 0x007f8177    8b55b0
                         fmul               st, st(3)                                      // 0x007f817a    d8cb
                         {disp8} mov        dword ptr [ebp + -0x14], edx                   // 0x007f817c    8955ec
                         fxch               st(1)                                          // 0x007f817f    d9c9
                         {disp32} fmul      dword ptr [ebp + -0x00000084]                  // 0x007f8181    d88d7cffffff
                         fsubp              st(1), st                                      // 0x007f8187    dee9
                         {disp8} fstp       dword ptr [ebp + -0x4c]                        // 0x007f8189    d95db4
                         {disp8} mov        eax, dword ptr [ebp + -0x4c]                   // 0x007f818c    8b45b4
                         {disp32} fmul      dword ptr [ebp + -0x00000084]                  // 0x007f818f    d88d7cffffff
                         {disp8} mov        dword ptr [ebp + -0x10], eax                   // 0x007f8195    8945f0
                         {disp8} fld        dword ptr [ebp + -0x80]                        // 0x007f8198    d94580
                         fmul               st, st(2)                                      // 0x007f819b    d8ca
                         fsubp              st(1), st                                      // 0x007f819d    dee9
                         {disp8} fstp       dword ptr [ebp + -0x48]                        // 0x007f819f    d95db8
                         {disp8} mov        ecx, dword ptr [ebp + -0x48]                   // 0x007f81a2    8b4db8
                         fstp               st(0)                                          // 0x007f81a5    ddd8
                         push               ecx                                            // 0x007f81a7    51
                         {disp8} fld        dword ptr [ebp + -0x48]                        // 0x007f81a8    d945b8
                         {disp8} mov        dword ptr [ebp + -0x0c], ecx                   // 0x007f81ab    894df4
                         {disp8} fld        dword ptr [ebp + -0x4c]                        // 0x007f81ae    d945b4
                         fld                st(0)                                          // 0x007f81b1    d9c0
                         fmul               st, st(1)                                      // 0x007f81b3    d8c9
                         {disp8} fld        dword ptr [ebp + -0x50]                        // 0x007f81b5    d945b0
                         {disp8} fmul       dword ptr [ebp + -0x50]                        // 0x007f81b8    d84db0
                         faddp              st(1), st                                      // 0x007f81bb    dec1
                         fld                st(2)                                          // 0x007f81bd    d9c2
                         fmul               st, st(3)                                      // 0x007f81bf    d8cb
                         faddp              st(1), st                                      // 0x007f81c1    dec1
                         fstp               dword ptr [esp]                                // 0x007f81c3    d91c24
                         fstp               st(0)                                          // 0x007f81c6    ddd8
                         fstp               st(0)                                          // 0x007f81c8    ddd8
                         call               _jmp_addr_0x00841170                           // 0x007f81ca    e8a18f0400
                         {disp8} fld        dword ptr [ebp + -0x50]                        // 0x007f81cf    d945b0
                         add                esp, 0x04                                      // 0x007f81d2    83c404
                         {disp32} jmp       _jmp_addr_0x007f826a                           // 0x007f81d5    e990000000
_jmp_addr_0x007f81da:    {disp8} fld        dword ptr [eax + 0x2c]                         // 0x007f81da    d9402c
                         {disp8} fsub       dword ptr [eax + 0x04]                         // 0x007f81dd    d86004
                         {disp8} fld        dword ptr [eax + 0x30]                         // 0x007f81e0    d94030
                         {disp8} fsub       dword ptr [eax + 0x08]                         // 0x007f81e3    d86008
                         {disp8} fld        dword ptr [eax + 0x34]                         // 0x007f81e6    d94034
                         {disp8} fsub       dword ptr [eax + 0x0c]                         // 0x007f81e9    d8600c
                         {disp8} fld        dword ptr [eax + 0x18]                         // 0x007f81ec    d94018
                         {disp8} fsub       dword ptr [eax + 0x04]                         // 0x007f81ef    d86004
                         {disp8} fstp       dword ptr [ebp + -0x78]                        // 0x007f81f2    d95d88
                         {disp8} fld        dword ptr [eax + 0x1c]                         // 0x007f81f5    d9401c
                         {disp8} fsub       dword ptr [eax + 0x08]                         // 0x007f81f8    d86008
                         {disp8} fstp       dword ptr [ebp + -0x74]                        // 0x007f81fb    d95d8c
                         {disp8} fld        dword ptr [eax + 0x20]                         // 0x007f81fe    d94020
                         {disp8} fsub       dword ptr [eax + 0x0c]                         // 0x007f8201    d8600c
                         {disp8} fld        dword ptr [ebp + -0x74]                        // 0x007f8204    d9458c
                         fmul               st, st(2)                                      // 0x007f8207    d8ca
                         fld                st(1)                                          // 0x007f8209    d9c1
                         fmul               st, st(4)                                      // 0x007f820b    d8cc
                         fsubp              st(1), st                                      // 0x007f820d    dee9
                         {disp8} fstp       dword ptr [ebp + -0x30]                        // 0x007f820f    d95dd0
                         {disp8} mov        edx, dword ptr [ebp + -0x30]                   // 0x007f8212    8b55d0
                         fmul               st, st(3)                                      // 0x007f8215    d8cb
                         {disp8} mov        dword ptr [ebp + -0x14], edx                   // 0x007f8217    8955ec
                         fxch               st(1)                                          // 0x007f821a    d9c9
                         {disp8} fmul       dword ptr [ebp + -0x78]                        // 0x007f821c    d84d88
                         fsubp              st(1), st                                      // 0x007f821f    dee9
                         {disp8} fstp       dword ptr [ebp + -0x2c]                        // 0x007f8221    d95dd4
                         {disp8} mov        eax, dword ptr [ebp + -0x2c]                   // 0x007f8224    8b45d4
                         {disp8} fmul       dword ptr [ebp + -0x78]                        // 0x007f8227    d84d88
                         {disp8} mov        dword ptr [ebp + -0x10], eax                   // 0x007f822a    8945f0
                         {disp8} fld        dword ptr [ebp + -0x74]                        // 0x007f822d    d9458c
                         fmul               st, st(2)                                      // 0x007f8230    d8ca
                         fsubp              st(1), st                                      // 0x007f8232    dee9
                         {disp8} fstp       dword ptr [ebp + -0x28]                        // 0x007f8234    d95dd8
                         {disp8} mov        ecx, dword ptr [ebp + -0x28]                   // 0x007f8237    8b4dd8
                         fstp               st(0)                                          // 0x007f823a    ddd8
                         push               ecx                                            // 0x007f823c    51
                         {disp8} fld        dword ptr [ebp + -0x28]                        // 0x007f823d    d945d8
                         {disp8} mov        dword ptr [ebp + -0x0c], ecx                   // 0x007f8240    894df4
                         {disp8} fld        dword ptr [ebp + -0x2c]                        // 0x007f8243    d945d4
                         {disp8} fld        dword ptr [ebp + -0x30]                        // 0x007f8246    d945d0
                         {disp8} fmul       dword ptr [ebp + -0x30]                        // 0x007f8249    d84dd0
                         fld                st(1)                                          // 0x007f824c    d9c1
                         fmul               st, st(2)                                      // 0x007f824e    d8ca
                         faddp              st(1), st                                      // 0x007f8250    dec1
                         fld                st(2)                                          // 0x007f8252    d9c2
                         fmul               st, st(3)                                      // 0x007f8254    d8cb
                         faddp              st(1), st                                      // 0x007f8256    dec1
                         fstp               dword ptr [esp]                                // 0x007f8258    d91c24
                         fstp               st(0)                                          // 0x007f825b    ddd8
                         fstp               st(0)                                          // 0x007f825d    ddd8
                         call               _jmp_addr_0x00841170                           // 0x007f825f    e80c8f0400
                         {disp8} fld        dword ptr [ebp + -0x30]                        // 0x007f8264    d945d0
                         add                esp, 0x04                                      // 0x007f8267    83c404
_jmp_addr_0x007f826a:    fmul               st, st(1)                                      // 0x007f826a    d8c9
                         {disp8} lea        edx, dword ptr [ebp + -0x44]                   // 0x007f826c    8d55bc
                         {disp8} mov        dword ptr [ebp + 0x0c], edx                    // 0x007f826f    89550c
                         {disp8} fstp       dword ptr [ebp + -0x14]                        // 0x007f8272    d95dec
                         fld                st(0)                                          // 0x007f8275    d9c0
                         {disp8} fmul       dword ptr [ebp + -0x10]                        // 0x007f8277    d84df0
                         {disp8} fstp       dword ptr [ebp + -0x10]                        // 0x007f827a    d95df0
                         {disp8} fmul       dword ptr [ebp + -0x0c]                        // 0x007f827d    d84df4
                         {disp8} fstp       dword ptr [ebp + -0x0c]                        // 0x007f8280    d95df4
                         {disp8} fld        dword ptr [ebp + -0x54]                        // 0x007f8283    d945ac
                         {disp8} fmul       dword ptr [ebp + -0x0c]                        // 0x007f8286    d84df4
                         {disp8} fld        dword ptr [ebp + -0x58]                        // 0x007f8289    d945a8
                         {disp8} fmul       dword ptr [ebp + -0x10]                        // 0x007f828c    d84df0
                         faddp              st(1), st                                      // 0x007f828f    dec1
                         {disp8} fld        dword ptr [ebp + -0x5c]                        // 0x007f8291    d945a4
                         {disp8} fmul       dword ptr [ebp + -0x14]                        // 0x007f8294    d84dec
                         faddp              st(1), st                                      // 0x007f8297    dec1
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x007f8299    d80d70b28a00
                         {disp8} fstp       dword ptr [ebp + -0x04]                        // 0x007f829f    d95dfc
                         {disp8} fld        dword ptr [ebp + -0x04]                        // 0x007f82a2    d945fc
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f82a5    8b550c
                         fistp              dword ptr [edx]                                // 0x007f82a8    db1a
                         {disp8} mov        eax, dword ptr [ebp + -0x44]                   // 0x007f82aa    8b45bc
                         mov.s              edx, eax                                       // 0x007f82ad    8bd0
                         neg                edx                                            // 0x007f82af    f7da
                         test               eax, eax                                       // 0x007f82b1    85c0
                         {disp8} jge        _jmp_addr_0x007f82bf                           // 0x007f82b3    7d0a
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x273264]         // 0x007f82b5    8b0d6492c300
                         mov.s              edi, ecx                                       // 0x007f82bb    8bf9
                         {disp8} jmp        _jmp_addr_0x007f82d4                           // 0x007f82bd    eb15
_jmp_addr_0x007f82bf:    {disp32} mov       ecx, dword ptr [data_bytes + 0x273264]         // 0x007f82bf    8b0d6492c300
                         mov                edi, 0x000000ff                                // 0x007f82c5    bfff000000
                         sub.s              edi, ecx                                       // 0x007f82ca    2bf9
                         imul               edi, eax                                       // 0x007f82cc    0faff8
                         sar                edi, 8                                         // 0x007f82cf    c1ff08
                         add.s              edi, ecx                                       // 0x007f82d2    03f9
_jmp_addr_0x007f82d4:    test               edx, edx                                       // 0x007f82d4    85d2
                         {disp8} jge        _jmp_addr_0x007f82dd                           // 0x007f82d6    7d05
                         {disp8} mov        dword ptr [ebp + 0x0c], ecx                    // 0x007f82d8    894d0c
                         {disp8} jmp        _jmp_addr_0x007f82ef                           // 0x007f82db    eb12
_jmp_addr_0x007f82dd:    mov                eax, 0x000000ff                                // 0x007f82dd    b8ff000000
                         sub.s              eax, ecx                                       // 0x007f82e2    2bc1
                         imul               eax, edx                                       // 0x007f82e4    0fafc2
                         sar                eax, 8                                         // 0x007f82e7    c1f808
                         add.s              eax, ecx                                       // 0x007f82ea    03c1
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f82ec    89450c
_jmp_addr_0x007f82ef:    {disp8} mov        esi, dword ptr [ebp + -0x24]                   // 0x007f82ef    8b75dc
                         mov.s              ecx, esi                                       // 0x007f82f2    8bce
                         mov.s              eax, esi                                       // 0x007f82f4    8bc6
                         and                eax, 0x0000ff00                                // 0x007f82f6    2500ff0000
                         mov.s              edx, esi                                       // 0x007f82fb    8bd6
                         and                esi, 0xff000000                                // 0x007f82fd    81e6000000ff
                         {disp8} mov        dword ptr [ebp + -0x04], esi                   // 0x007f8303    8975fc
                         mov.s              esi, eax                                       // 0x007f8306    8bf0
                         and                ecx, 0x00ff0000                                // 0x007f8308    81e10000ff00
                         imul               esi, edi                                       // 0x007f830e    0faff7
                         mov.s              ebx, ecx                                       // 0x007f8311    8bd9
                         imul               ebx, edi                                       // 0x007f8313    0fafdf
                         and                ebx, 0xff0000ff                                // 0x007f8316    81e3ff0000ff
                         and                edx, 0x000000ff                                // 0x007f831c    81e2ff000000
                         and                esi, 0x00ff0000                                // 0x007f8322    81e60000ff00
                         or.s               esi, ebx                                       // 0x007f8328    0bf3
                         mov.s              ebx, edx                                       // 0x007f832a    8bda
                         imul               ebx, edi                                       // 0x007f832c    0fafdf
                         {disp8} mov        edi, dword ptr [ebp + 0x0c]                    // 0x007f832f    8b7d0c
                         imul               eax, edi                                       // 0x007f8332    0fafc7
                         imul               ecx, edi                                       // 0x007f8335    0fafcf
                         imul               edx, edi                                       // 0x007f8338    0fafd7
                         {disp8} mov        edi, dword ptr [ebp + -0x20]                   // 0x007f833b    8b7de0
                         and                eax, 0x00ff0000                                // 0x007f833e    250000ff00
                         and                ecx, 0xff0000ff                                // 0x007f8343    81e1ff0000ff
                         or.s               eax, ecx                                       // 0x007f8349    0bc1
                         and                edx, 0x0000ff00                                // 0x007f834b    81e200ff0000
                         or.s               eax, edx                                       // 0x007f8351    0bc2
                         and                ebx, 0x0000ff00                                // 0x007f8353    81e300ff0000
                         or.s               esi, ebx                                       // 0x007f8359    0bf3
                         {disp8} mov        ebx, dword ptr [ebp + -0x04]                   // 0x007f835b    8b5dfc
                         shr                eax, 8                                         // 0x007f835e    c1e808
                         or.s               eax, ebx                                       // 0x007f8361    0bc3
                         {disp32} mov       dword ptr [ebp + -0x00000088], eax             // 0x007f8363    898578ffffff
                         {disp8} mov        eax, dword ptr [ebp + -0x1c]                   // 0x007f8369    8b45e4
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x007f836c    8d0440
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00e94100]        // 0x007f836f    8d0c850041e900
                         {disp8} lea        edx, dword ptr [edi + 0x05]                    // 0x007f8376    8d5705
                         shr                esi, 8                                         // 0x007f8379    c1ee08
                         {disp8} mov        dword ptr [ebp + -0x6c], ecx                   // 0x007f837c    894d94
                         {disp8} mov        ecx, dword ptr [ebp + -0x38]                   // 0x007f837f    8b4dc8
                         {disp32} lea       eax, dword ptr [ebp + -0x000000a4]             // 0x007f8382    8d855cffffff
                         {disp8} mov        dword ptr [ebp + -0x20], edx                   // 0x007f8388    8955e0
                         or.s               esi, ebx                                       // 0x007f838b    0bf3
                         lea                edx, dword ptr [edi + edi * 0x2]               // 0x007f838d    8d147f
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f8390    89450c
                         add                ecx, 0xc                                       // 0x007f8393    83c10c
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00e97100]        // 0x007f8396    8d04950071e900
                         {disp8} mov        dword ptr [ebp + -0x3c], 0x00000000            // 0x007f839d    c745c400000000
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                   // 0x007f83a4    894dfc
                         {disp8} mov        dword ptr [ebp + -0x34], eax                   // 0x007f83a7    8945cc
                         {disp32} lea       ebx, dword ptr [edi * 0x8 + 0x00000000]        // 0x007f83aa    8d1cfd00000000
_jmp_addr_0x007f83b1:    {disp8} mov        edx, dword ptr [ebp + 0x08]                    // 0x007f83b1    8b5508
                         test               edx, edx                                       // 0x007f83b4    85d2
                         {disp8} je         _jmp_addr_0x007f842f                           // 0x007f83b6    7477
                         {disp8} fld        dword ptr [ebp + -0x14]                        // 0x007f83b8    d945ec
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f83bb    8b550c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ec78]              // 0x007f83be    d80d787c8c00
                         {disp8} mov        edx, dword ptr [edx + -0x08]                   // 0x007f83c4    8b52f8
                         {disp8} fld        dword ptr [ebp + -0x10]                        // 0x007f83c7    d945f0
                         {disp8} mov        dword ptr [eax + -0x08], edx                   // 0x007f83ca    8950f8
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ec78]              // 0x007f83cd    d80d787c8c00
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f83d3    8b550c
                         {disp8} mov        edx, dword ptr [edx + -0x04]                   // 0x007f83d6    8b52fc
                         {disp8} mov        dword ptr [eax + -0x04], edx                   // 0x007f83d9    8950fc
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f83dc    8b550c
                         mov                edx, dword ptr [edx]                           // 0x007f83df    8b12
                         {disp32} fstp      dword ptr [ebp + -0x000000b4]                  // 0x007f83e1    d99d4cffffff
                         {disp8} fld        dword ptr [ebp + -0x0c]                        // 0x007f83e7    d945f4
                         mov                dword ptr [eax], edx                           // 0x007f83ea    8910
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ec78]              // 0x007f83ec    d80d787c8c00
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f83f2    8b550c
                         {disp32} fstp      dword ptr [ebp + -0x000000b0]                  // 0x007f83f5    d99d50ffffff
                         {disp8} fsubr      dword ptr [edx + -0x08]                        // 0x007f83fb    d86af8
                         {disp8} fld        dword ptr [edx + -0x04]                        // 0x007f83fe    d942fc
                         {disp32} fsub      dword ptr [ebp + -0x000000b4]                  // 0x007f8401    d8a54cffffff
                         {disp32} fstp      dword ptr [ebp + -0x000000d8]                  // 0x007f8407    d99d28ffffff
                         fld                dword ptr [edx]                                // 0x007f840d    d902
                         {disp32} mov       edx, dword ptr [ebp + -0x000000d8]             // 0x007f840f    8b9528ffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000b0]                  // 0x007f8415    d8a550ffffff
                         {disp8} mov        dword ptr [eax + 0x20], edx                    // 0x007f841b    895020
                         {disp32} fstp      dword ptr [ebp + -0x000000d4]                  // 0x007f841e    d99d2cffffff
                         {disp32} mov       edx, dword ptr [ebp + -0x000000d4]             // 0x007f8424    8b952cffffff
                         {disp8} fstp       dword ptr [eax + 0x1c]                         // 0x007f842a    d9581c
                         {disp8} jmp        _jmp_addr_0x007f8498                           // 0x007f842d    eb69
_jmp_addr_0x007f842f:    {disp8} fld        dword ptr [ebp + -0x14]                        // 0x007f842f    d945ec
                         {disp8} mov        edx, dword ptr [ecx + -0x08]                   // 0x007f8432    8b51f8
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ec78]              // 0x007f8435    d80d787c8c00
                         {disp8} mov        dword ptr [eax + -0x08], edx                   // 0x007f843b    8950f8
                         {disp8} fld        dword ptr [ebp + -0x10]                        // 0x007f843e    d945f0
                         {disp8} mov        edx, dword ptr [ecx + -0x04]                   // 0x007f8441    8b51fc
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ec78]              // 0x007f8444    d80d787c8c00
                         {disp8} mov        dword ptr [eax + -0x04], edx                   // 0x007f844a    8950fc
                         mov                edx, dword ptr [ecx]                           // 0x007f844d    8b11
                         mov                dword ptr [eax], edx                           // 0x007f844f    8910
                         {disp32} fstp      dword ptr [ebp + -0x000000cc]                  // 0x007f8451    d99d34ffffff
                         {disp8} fld        dword ptr [ebp + -0x0c]                        // 0x007f8457    d945f4
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ec78]              // 0x007f845a    d80d787c8c00
                         {disp32} fstp      dword ptr [ebp + -0x000000c8]                  // 0x007f8460    d99d38ffffff
                         {disp8} fsubr      dword ptr [ecx + -0x08]                        // 0x007f8466    d869f8
                         {disp8} fld        dword ptr [ecx + -0x04]                        // 0x007f8469    d941fc
                         {disp32} fsub      dword ptr [ebp + -0x000000cc]                  // 0x007f846c    d8a534ffffff
                         {disp32} fstp      dword ptr [ebp + -0x000000c0]                  // 0x007f8472    d99d40ffffff
                         fld                dword ptr [ecx]                                // 0x007f8478    d901
                         {disp32} mov       edx, dword ptr [ebp + -0x000000c0]             // 0x007f847a    8b9540ffffff
                         {disp32} fsub      dword ptr [ebp + -0x000000c8]                  // 0x007f8480    d8a538ffffff
                         {disp8} mov        dword ptr [eax + 0x20], edx                    // 0x007f8486    895020
                         {disp32} fstp      dword ptr [ebp + -0x000000bc]                  // 0x007f8489    d99d44ffffff
                         {disp32} mov       edx, dword ptr [ebp + -0x000000bc]             // 0x007f848f    8b9544ffffff
                         {disp8} fstp       dword ptr [eax + 0x1c]                         // 0x007f8495    d9581c
_jmp_addr_0x007f8498:    {disp8} mov        dword ptr [eax + 0x24], edx                    // 0x007f8498    895024
                         {disp32} mov       edx, dword ptr [ebp + -0x00000088]             // 0x007f849b    8b9578ffffff
                         {disp32} mov       dword ptr [ebx + 0x00e950f4], esi              // 0x007f84a1    89b3f450e900
                         {disp32} mov       dword ptr [ebx + 0x00e9510c], edx              // 0x007f84a7    89930c51e900
                         {disp8} mov        edx, dword ptr [ebp + -0x18]                   // 0x007f84ad    8b55e8
                         {disp32} mov       dword ptr [ebx + 0x00e95110], edx              // 0x007f84b0    89931051e900
                         {disp32} mov       dword ptr [ebx + 0x00e950f8], edx              // 0x007f84b6    8993f850e900
                         {disp8} mov        dl, byte ptr [ebp + 0x10]                      // 0x007f84bc    8a5510
                         test               dl, dl                                         // 0x007f84bf    84d2
                         {disp32} je        _jmp_addr_0x007f8563                           // 0x007f84c1    0f849c000000
                         fld                dword ptr [eax]                                // 0x007f84c7    d900
                         {disp8} fld        dword ptr [eax + -0x04]                        // 0x007f84c9    d940fc
                         {disp32} fmul      dword ptr [__real@3e999999]                    // 0x007f84cc    d80d3cb28a00
                         fadd               st, st(1)                                      // 0x007f84d2    d8c1
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]              // 0x007f84d4    d80558768c00
                         {disp8} fstp       dword ptr [ebp + -0x64]                        // 0x007f84da    d95d9c
                         {disp32} fmul      dword ptr [__real@3dcccccd]                    // 0x007f84dd    d80d2cb28a00
                         {disp8} fadd       dword ptr [eax + -0x08]                        // 0x007f84e3    d840f8
                         fld                st(0)                                          // 0x007f84e6    d9c0
                         call               _jmp_addr_0x007a1400                           // 0x007f84e8    e8138ffaff
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x007f84ed    8945f8
                         {disp8} fild       dword ptr [ebp + -0x08]                        // 0x007f84f0    db45f8
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1c81c]              // 0x007f84f3    d8051c588c00
                         fsubp              st(1), st                                      // 0x007f84f9    dee9
                         {disp8} fld        dword ptr [ebp + -0x64]                        // 0x007f84fb    d9459c
                         call               _jmp_addr_0x007a1400                           // 0x007f84fe    e8fd8efaff
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x007f8503    8945f8
                         {disp8} fild       dword ptr [ebp + -0x08]                        // 0x007f8506    db45f8
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1c81c]              // 0x007f8509    d8051c588c00
                         {disp8} fsubr      dword ptr [ebp + -0x64]                        // 0x007f850f    d86d9c
                         fld                st(0)                                          // 0x007f8512    d9c0
                         call               _jmp_addr_0x007a1400                           // 0x007f8514    e8e78efaff
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x007f8519    8945f8
                         {disp8} fisub      dword ptr [ebp + -0x08]                        // 0x007f851c    da65f8
                         {disp32} fmul      dword ptr [__real@3e4ccccd]                    // 0x007f851f    d80d44b28a00
                         {disp8} fadd       dword ptr [ebp + -0x14]                        // 0x007f8525    d845ec
                         fld                st(1)                                          // 0x007f8528    d9c1
                         call               _jmp_addr_0x007a1400                           // 0x007f852a    e8d18efaff
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x007f852f    8945f8
                         {disp8} fild       dword ptr [ebp + -0x08]                        // 0x007f8532    db45f8
                         {disp8} mov        eax, dword ptr [ebp + -0x34]                   // 0x007f8535    8b45cc
                         fsubr              st, st(2)                                      // 0x007f8538    d8ea
                         {disp32} fmul      dword ptr [__real@3e4ccccd]                    // 0x007f853a    d80d44b28a00
                         {disp8} fadd       dword ptr [ebp + -0x10]                        // 0x007f8540    d845f0
                         {disp32} fstp      dword ptr [ebx + 0x00e920f4]                   // 0x007f8543    d99bf420e900
                         {disp32} fst       dword ptr [ebx + 0x00e920f8]                   // 0x007f8549    d993f820e900
                         {disp32} mov       dword ptr [ebx + 0x00e9210c], 0x00000000       // 0x007f854f    c7830c21e90000000000
                         {disp32} fstp      dword ptr [ebx + 0x00e92110]                   // 0x007f8559    d99b1021e900
                         fstp               st(0)                                          // 0x007f855f    ddd8
                         {disp8} jmp        _jmp_addr_0x007f8587                           // 0x007f8561    eb24
_jmp_addr_0x007f8563:    {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x007f8563    8b5104
                         {disp32} mov       dword ptr [ebx + 0x00e920f4], edx              // 0x007f8566    8993f420e900
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                    // 0x007f856c    8b5108
                         {disp32} mov       dword ptr [ebx + 0x00e920f8], edx              // 0x007f856f    8993f820e900
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x007f8575    8b5104
                         {disp32} mov       dword ptr [ebx + 0x00e9210c], edx              // 0x007f8578    89930c21e900
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x007f857e    8b4908
                         {disp32} mov       dword ptr [ebx + 0x00e92110], ecx              // 0x007f8581    898b1021e900
_jmp_addr_0x007f8587:    {disp8} mov        edx, dword ptr [ebp + -0x3c]                   // 0x007f8587    8b55c4
                         {disp8} mov        ecx, dword ptr [ebp + -0x6c]                   // 0x007f858a    8b4d94
                         add.s              edx, edi                                       // 0x007f858d    03d7
                         {disp8} mov        dword ptr [ecx + -0x0c], edx                   // 0x007f858f    8951f4
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2711ac]         // 0x007f8592    8b15ac71c300
                         test               edx, edx                                       // 0x007f8598    85d2
                         {disp8} je         _jmp_addr_0x007f85a1                           // 0x007f859a    7405
                         {disp8} mov        edx, dword ptr [ebp + -0x20]                   // 0x007f859c    8b55e0
                         mov                dword ptr [ecx], edx                           // 0x007f859f    8911
_jmp_addr_0x007f85a1:    {disp8} inc        dword ptr [ebp + -0x3c]                        // 0x007f85a1    ff45c4
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007f85a4    8b550c
                         add                ecx, 0x4                                       // 0x007f85a7    83c104
                         add                edx, 0x0c                                      // 0x007f85aa    83c20c
                         {disp8} mov        dword ptr [ebp + -0x6c], ecx                   // 0x007f85ad    894d94
                         {disp8} mov        ecx, dword ptr [ebp + -0x04]                   // 0x007f85b0    8b4dfc
                         {disp8} mov        dword ptr [ebp + 0x0c], edx                    // 0x007f85b3    89550c
                         {disp8} mov        edx, dword ptr [ebp + -0x20]                   // 0x007f85b6    8b55e0
                         add                eax, 0x0c                                      // 0x007f85b9    83c00c
                         add                ecx, 0x14                                      // 0x007f85bc    83c114
                         add                ebx, 0x08                                      // 0x007f85bf    83c308
                         dec                edx                                            // 0x007f85c2    4a
                         {disp8} mov        dword ptr [ebp + -0x20], edx                   // 0x007f85c3    8955e0
                         cmp                dword ptr [ebp + -0x3c], 0x03                  // 0x007f85c6    837dc403
                         {disp8} mov        dword ptr [ebp + -0x34], eax                   // 0x007f85ca    8945cc
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                   // 0x007f85cd    894dfc
                         {disp32} jl        _jmp_addr_0x007f83b1                           // 0x007f85d0    0f8cdbfdffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2711ac]         // 0x007f85d6    a1ac71c300
                         {disp8} mov        ecx, dword ptr [ebp + -0x1c]                   // 0x007f85db    8b4de4
                         {disp8} lea        edx, dword ptr [ecx + eax * 0x1 + 0x01]        // 0x007f85de    8d540101
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2711a8]         // 0x007f85e2    a1a871c300
                         add                edi, 0x06                                      // 0x007f85e7    83c706
                         test               eax, eax                                       // 0x007f85ea    85c0
                         {disp8} mov        dword ptr [ebp + -0x20], edi                   // 0x007f85ec    897de0
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                   // 0x007f85ef    8955e4
                         {disp32} je        _jmp_addr_0x007f869d                           // 0x007f85f2    0f84a5000000
                         lea                ecx, dword ptr [edx + edx * 0x2]               // 0x007f85f8    8d0c52
                         shl                ecx, 2                                         // 0x007f85fb    c1e102
                         {disp32} lea       eax, dword ptr [ecx + 0x00e940fc]              // 0x007f85fe    8d81fc40e900
                         {disp8} mov        dword ptr [ebp + -0x04], eax                   // 0x007f8604    8945fc
                         {disp8} mov        eax, dword ptr [ebp + -0x38]                   // 0x007f8607    8b45c8
                         xor.s              ebx, ebx                                       // 0x007f860a    33db
                         add                eax, 0x40                                      // 0x007f860c    83c040
                         {disp32} lea       esi, dword ptr [ecx + 0x00e940f8]              // 0x007f860f    8db1f840e900
                         {disp8} mov        dword ptr [ebp + -0x34], ebx                   // 0x007f8615    895dcc
                         {disp32} lea       ecx, dword ptr [ecx + 0x00e940f4]              // 0x007f8618    8d89f440e900
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f861e    89450c
_jmp_addr_0x007f8621:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007f8621    8b450c
                         cmp                dword ptr [eax], -0x01                         // 0x007f8624    8338ff
                         {disp8} jne        _jmp_addr_0x007f868b                           // 0x007f8627    7562
                         {disp8} lea        eax, dword ptr [ebx + 0x01]                    // 0x007f8629    8d4301
                         cdq                                                               // 0x007f862c    99
                         mov                ebx, 0x00000003                                // 0x007f862d    bb03000000
                         idiv               ebx                                            // 0x007f8632    f7fb
                         {disp8} mov        ebx, dword ptr [ebp + -0x34]                   // 0x007f8634    8b5dcc
                         {disp8} lea        eax, dword ptr [edi + ebx * 0x1 + -0x06]       // 0x007f8637    8d441ffa
                         mov                dword ptr [ecx], eax                           // 0x007f863b    8901
                         {disp8} lea        eax, dword ptr [edi + ebx * 0x1 + -0x03]       // 0x007f863d    8d441ffd
                         mov                dword ptr [esi], eax                           // 0x007f8641    8906
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x007f8643    8945f8
                         {disp8} mov        eax, dword ptr [ebp + -0x04]                   // 0x007f8646    8b45fc
                         add                ecx, 0xc                                       // 0x007f8649    83c10c
                         add                esi, 0x0c                                      // 0x007f864c    83c60c
                         add                eax, 0x0c                                      // 0x007f864f    83c00c
                         add                ecx, 0xc                                       // 0x007f8652    83c10c
                         add                esi, 0x0c                                      // 0x007f8655    83c60c
                         {disp8} mov        dword ptr [ebp + -0x38], edx                   // 0x007f8658    8955c8
                         {disp8} lea        edx, dword ptr [edi + edx * 0x1 + -0x06]       // 0x007f865b    8d5417fa
                         {disp8} mov        dword ptr [eax + -0x0c], edx                   // 0x007f865f    8950f4
                         {disp8} inc        dword ptr [ebp + -0x1c]                        // 0x007f8662    ff45e4
                         {disp8} mov        edx, dword ptr [ebp + -0x38]                   // 0x007f8665    8b55c8
                         {disp8} lea        edx, dword ptr [edi + edx * 0x1 + -0x06]       // 0x007f8668    8d5417fa
                         {disp8} mov        dword ptr [ecx + -0x0c], edx                   // 0x007f866c    8951f4
                         {disp8} mov        edx, dword ptr [ebp + -0x08]                   // 0x007f866f    8b55f8
                         {disp8} mov        dword ptr [esi + -0x0c], edx                   // 0x007f8672    8956f4
                         {disp8} mov        edx, dword ptr [ebp + -0x38]                   // 0x007f8675    8b55c8
                         {disp8} lea        edx, dword ptr [edi + edx * 0x1 + -0x03]       // 0x007f8678    8d5417fd
                         mov                dword ptr [eax], edx                           // 0x007f867c    8910
                         {disp8} mov        edx, dword ptr [ebp + -0x1c]                   // 0x007f867e    8b55e4
                         inc                edx                                            // 0x007f8681    42
                         add                eax, 0x0c                                      // 0x007f8682    83c00c
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                   // 0x007f8685    8955e4
                         {disp8} mov        dword ptr [ebp + -0x04], eax                   // 0x007f8688    8945fc
_jmp_addr_0x007f868b:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007f868b    8b450c
                         inc                ebx                                            // 0x007f868e    43
                         add                eax, 0x04                                      // 0x007f868f    83c004
                         cmp                ebx, 0x03                                      // 0x007f8692    83fb03
                         {disp8} mov        dword ptr [ebp + -0x34], ebx                   // 0x007f8695    895dcc
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007f8698    89450c
                         {disp8} jl         _jmp_addr_0x007f8621                           // 0x007f869b    7c84
_jmp_addr_0x007f869d:    cmp                edi, 0x00000100                                // 0x007f869d    81ff00010000
                         {disp8} jge        _jmp_addr_0x007f86ad                           // 0x007f86a3    7d08
                         cmp                edx, 0x00000100                                // 0x007f86a5    81fa00010000
                         {disp8} jl         _jmp_addr_0x007f86e9                           // 0x007f86ab    7c3c
_jmp_addr_0x007f86ad:    {disp8} mov        al, byte ptr [ebp + 0x10]                      // 0x007f86ad    8a4510
                         test               al, al                                         // 0x007f86b0    84c0
                         {disp8} je         _jmp_addr_0x007f86bb                           // 0x007f86b2    7407
                         {disp8} mov        ebx, dword ptr [ebp + -0x40]                   // 0x007f86b4    8b5dc0
                         xor.s              eax, eax                                       // 0x007f86b7    33c0
                         {disp8} jmp        _jmp_addr_0x007f86c0                           // 0x007f86b9    eb05
_jmp_addr_0x007f86bb:    {disp8} mov        ebx, dword ptr [ebp + -0x40]                   // 0x007f86bb    8b5dc0
                         mov                eax, dword ptr [ebx]                           // 0x007f86be    8b03
_jmp_addr_0x007f86c0:    push               eax                                            // 0x007f86c0    50
                         push               0x00e940f4                                     // 0x007f86c1    68f440e900
                         push               edx                                            // 0x007f86c6    52
                         push               0x00e920f4                                     // 0x007f86c7    68f420e900
                         push               0x00e950f4                                     // 0x007f86cc    68f450e900
                         mov                edx, 0x00e970f8                                // 0x007f86d1    baf870e900
                         mov.s              ecx, edi                                       // 0x007f86d6    8bcf
                         call               _jmp_addr_0x0081c780                           // 0x007f86d8    e8a3400200
                         xor.s              edx, edx                                       // 0x007f86dd    33d2
                         xor.s              edi, edi                                       // 0x007f86df    33ff
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                   // 0x007f86e1    8955e4
                         {disp8} mov        dword ptr [ebp + -0x20], edi                   // 0x007f86e4    897de0
                         {disp8} jmp        _jmp_addr_0x007f86ec                           // 0x007f86e7    eb03
_jmp_addr_0x007f86e9:    {disp8} mov        ebx, dword ptr [ebp + -0x40]                   // 0x007f86e9    8b5dc0
_jmp_addr_0x007f86ec:    {disp8} mov        ecx, dword ptr [ebp + -0x68]                   // 0x007f86ec    8b4d98
                         {disp8} mov        eax, dword ptr [ebp + -0x60]                   // 0x007f86ef    8b45a0
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                    // 0x007f86f2    8b7304
                         inc                ecx                                            // 0x007f86f5    41
                         add                eax, 0x58                                      // 0x007f86f6    83c058
                         cmp.s              ecx, esi                                       // 0x007f86f9    3bce
                         {disp8} mov        dword ptr [ebp + -0x68], ecx                   // 0x007f86fb    894d98
                         {disp8} mov        dword ptr [ebp + -0x60], eax                   // 0x007f86fe    8945a0
                         {disp32} jl        _jmp_addr_0x007f809b                           // 0x007f8701    0f8c94f9ffff
                         test               edx, edx                                       // 0x007f8707    85d2
                         {disp8} je         _jmp_addr_0x007f8735                           // 0x007f8709    742a
                         {disp8} mov        al, byte ptr [ebp + 0x10]                      // 0x007f870b    8a4510
                         test               al, al                                         // 0x007f870e    84c0
                         {disp8} je         _jmp_addr_0x007f8716                           // 0x007f8710    7404
                         xor.s              ebx, ebx                                       // 0x007f8712    33db
                         {disp8} jmp        _jmp_addr_0x007f8718                           // 0x007f8714    eb02
_jmp_addr_0x007f8716:    mov                ebx, dword ptr [ebx]                           // 0x007f8716    8b1b
_jmp_addr_0x007f8718:    push               ebx                                            // 0x007f8718    53
                         push               0x00e940f4                                     // 0x007f8719    68f440e900
                         push               edx                                            // 0x007f871e    52
                         push               0x00e920f4                                     // 0x007f871f    68f420e900
                         push               0x00e950f4                                     // 0x007f8724    68f450e900
                         mov                edx, 0x00e970f8                                // 0x007f8729    baf870e900
                         mov.s              ecx, edi                                       // 0x007f872e    8bcf
                         call               _jmp_addr_0x0081c780                           // 0x007f8730    e84b400200
_jmp_addr_0x007f8735:    pop                edi                                            // 0x007f8735    5f
                         pop                esi                                            // 0x007f8736    5e
                         pop                ebx                                            // 0x007f8737    5b
                         mov.s              esp, ebp                                       // 0x007f8738    8be5
                         pop                ebp                                            // 0x007f873a    5d
                         ret                0x000c                                         // 0x007f873b    c20c00
                         nop                                                               // 0x007f873e    90
                         nop                                                               // 0x007f873f    90
_jmp_addr_0x007f8740:    push               ecx                                            // 0x007f8740    51
                         push               ebp                                            // 0x007f8741    55
                         mov.s              ebp, ecx                                       // 0x007f8742    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                    // 0x007f8744    8b4504
                         push               esi                                            // 0x007f8747    56
                         xor.s              esi, esi                                       // 0x007f8748    33f6
                         test               eax, eax                                       // 0x007f874a    85c0
                         push               edi                                            // 0x007f874c    57
                         {disp8} jle        _jmp_addr_0x007f8776                           // 0x007f874d    7e27
                         mov                edx, 0x00000040                                // 0x007f874f    ba40000000
_jmp_addr_0x007f8754:    mov.s              eax, edx                                       // 0x007f8754    8bc2
                         mov                ecx, 0x00000003                                // 0x007f8756    b903000000
_jmp_addr_0x007f875b:    {disp8} mov        edi, dword ptr [ebp + 0x10]                    // 0x007f875b    8b7d10
                         mov                dword ptr [eax + edi * 0x1], 0xffffffff        // 0x007f875e    c70438ffffffff
                         add                eax, 0x04                                      // 0x007f8765    83c004
                         dec                ecx                                            // 0x007f8768    49
                         {disp8} jne        _jmp_addr_0x007f875b                           // 0x007f8769    75f0
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                    // 0x007f876b    8b4504
                         inc                esi                                            // 0x007f876e    46
                         add                edx, 0x58                                      // 0x007f876f    83c258
                         cmp.s              esi, eax                                       // 0x007f8772    3bf0
                         {disp8} jl         _jmp_addr_0x007f8754                           // 0x007f8774    7cde
_jmp_addr_0x007f8776:    {disp8} mov        eax, dword ptr [ebp + 0x04]                    // 0x007f8776    8b4504
                         test               eax, eax                                       // 0x007f8779    85c0
                         {disp8} mov        esi, dword ptr [ebp + 0x10]                    // 0x007f877b    8b7510
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000             // 0x007f877e    c744240c00000000
                         {disp8} jle        _jmp_addr_0x007f87fc                           // 0x007f8786    7e74
                         push               ebx                                            // 0x007f8788    53
                         add                esi, 0x18                                      // 0x007f8789    83c618
_jmp_addr_0x007f878c:    {disp8} mov        ebx, dword ptr [ebp + 0x10]                    // 0x007f878c    8b5d10
                         xor.s              edi, edi                                       // 0x007f878f    33ff
                         test               eax, eax                                       // 0x007f8791    85c0
                         {disp8} jle        _jmp_addr_0x007f87e8                           // 0x007f8793    7e53
_jmp_addr_0x007f8795:    cmp                edi, dword ptr [esp + 0x10]                    // 0x007f8795    3b7c2410
                         {disp8} je         _jmp_addr_0x007f87dd                           // 0x007f8799    7442
                         push               ebx                                            // 0x007f879b    53
                         {disp8} lea        eax, dword ptr [esi + -0x14]                   // 0x007f879c    8d46ec
                         push               esi                                            // 0x007f879f    56
                         push               eax                                            // 0x007f87a0    50
                         call               _jmp_addr_0x007f7150                           // 0x007f87a1    e8aae9ffff
                         add                esp, 0x0c                                      // 0x007f87a6    83c40c
                         test               eax, eax                                       // 0x007f87a9    85c0
                         {disp8} je         _jmp_addr_0x007f87b0                           // 0x007f87ab    7403
                         {disp8} mov        dword ptr [esi + 0x28], edi                    // 0x007f87ad    897e28
_jmp_addr_0x007f87b0:    {disp8} lea        eax, dword ptr [esi + 0x14]                    // 0x007f87b0    8d4614
                         push               ebx                                            // 0x007f87b3    53
                         push               eax                                            // 0x007f87b4    50
                         push               esi                                            // 0x007f87b5    56
                         call               _jmp_addr_0x007f7150                           // 0x007f87b6    e895e9ffff
                         add                esp, 0x0c                                      // 0x007f87bb    83c40c
                         test               eax, eax                                       // 0x007f87be    85c0
                         {disp8} je         _jmp_addr_0x007f87c5                           // 0x007f87c0    7403
                         {disp8} mov        dword ptr [esi + 0x2c], edi                    // 0x007f87c2    897e2c
_jmp_addr_0x007f87c5:    push               ebx                                            // 0x007f87c5    53
                         {disp8} lea        eax, dword ptr [esi + -0x14]                   // 0x007f87c6    8d46ec
                         push               eax                                            // 0x007f87c9    50
                         {disp8} lea        eax, dword ptr [esi + 0x14]                    // 0x007f87ca    8d4614
                         push               eax                                            // 0x007f87cd    50
                         call               _jmp_addr_0x007f7150                           // 0x007f87ce    e87de9ffff
                         add                esp, 0x0c                                      // 0x007f87d3    83c40c
                         test               eax, eax                                       // 0x007f87d6    85c0
                         {disp8} je         _jmp_addr_0x007f87dd                           // 0x007f87d8    7403
                         {disp8} mov        dword ptr [esi + 0x30], edi                    // 0x007f87da    897e30
_jmp_addr_0x007f87dd:    {disp8} mov        eax, dword ptr [ebp + 0x04]                    // 0x007f87dd    8b4504
                         add                ebx, 0x58                                      // 0x007f87e0    83c358
                         inc                edi                                            // 0x007f87e3    47
                         cmp.s              edi, eax                                       // 0x007f87e4    3bf8
                         {disp8} jl         _jmp_addr_0x007f8795                           // 0x007f87e6    7cad
_jmp_addr_0x007f87e8:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007f87e8    8b4c2410
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                    // 0x007f87ec    8b4504
                         add                esi, 0x58                                      // 0x007f87ef    83c658
                         inc                ecx                                            // 0x007f87f2    41
                         cmp.s              ecx, eax                                       // 0x007f87f3    3bc8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x007f87f5    894c2410
                         {disp8} jl         _jmp_addr_0x007f878c                           // 0x007f87f9    7c91
                         pop                ebx                                            // 0x007f87fb    5b
_jmp_addr_0x007f87fc:    pop                edi                                            // 0x007f87fc    5f
                         pop                esi                                            // 0x007f87fd    5e
                         pop                ebp                                            // 0x007f87fe    5d
                         pop                ecx                                            // 0x007f87ff    59
                         ret                                                               // 0x007f8800    c3
                         nop                                                               // 0x007f8801    90
                         nop                                                               // 0x007f8802    90
                         nop                                                               // 0x007f8803    90
                         nop                                                               // 0x007f8804    90
                         nop                                                               // 0x007f8805    90
                         nop                                                               // 0x007f8806    90
                         nop                                                               // 0x007f8807    90
                         nop                                                               // 0x007f8808    90
                         nop                                                               // 0x007f8809    90
                         nop                                                               // 0x007f880a    90
                         nop                                                               // 0x007f880b    90
                         nop                                                               // 0x007f880c    90
                         nop                                                               // 0x007f880d    90
                         nop                                                               // 0x007f880e    90
                         nop                                                               // 0x007f880f    90
_jmp_addr_0x007f8810:    sub                esp, 0x000000b0                                // 0x007f8810    81ecb0000000
                         push               ebx                                            // 0x007f8816    53
                         push               ebp                                            // 0x007f8817    55
                         push               esi                                            // 0x007f8818    56
                         push               edi                                            // 0x007f8819    57
                         mov.s              esi, ecx                                       // 0x007f881a    8bf1
                         {disp8} lea        edi, dword ptr [esp + 0x14]                    // 0x007f881c    8d7c2414
                         mov                ebx, 0x00000002                                // 0x007f8820    bb02000000
_jmp_addr_0x007f8825:    push               0x0076d970                                     // 0x007f8825    6870d97600
                         push               0x3                                            // 0x007f882a    6a03
                         push               0x14                                           // 0x007f882c    6a14
                         push               edi                                            // 0x007f882e    57
                         call               _jmp_addr_0x00401140                           // 0x007f882f    e80c89c0ff
                         add                edi, 0x58                                      // 0x007f8834    83c758
                         dec                ebx                                            // 0x007f8837    4b
                         {disp8} jne        _jmp_addr_0x007f8825                           // 0x007f8838    75eb
                         {disp32} mov       edi, dword ptr [esp + 0x000000cc]              // 0x007f883a    8bbc24cc000000
                         {disp32} mov       ebx, dword ptr [esp + 0x000000c8]              // 0x007f8841    8b9c24c8000000
                         {disp32} mov       ebp, dword ptr [esp + 0x000000c4]              // 0x007f8848    8bac24c4000000
                         push               edi                                            // 0x007f884f    57
                         push               ebx                                            // 0x007f8850    53
                         push               ebp                                            // 0x007f8851    55
                         mov.s              ecx, esi                                       // 0x007f8852    8bce
                         call               _jmp_addr_0x007f8a20                           // 0x007f8854    e8c7010000
                         {disp8} mov        ecx, dword ptr [esi + 0x50]                    // 0x007f8859    8b4e50
                         test               ecx, ecx                                       // 0x007f885c    85c9
                         {disp8} jne        _jmp_addr_0x007f8873                           // 0x007f885e    7513
                         mov.s              ecx, eax                                       // 0x007f8860    8bc8
                         dec                ecx                                            // 0x007f8862    49
                         {disp8} je         _jmp_addr_0x007f886f                           // 0x007f8863    740a
                         dec                ecx                                            // 0x007f8865    49
                         {disp8} jne        _jmp_addr_0x007f8873                           // 0x007f8866    750b
                         mov                eax, 0x00000003                                // 0x007f8868    b803000000
                         {disp8} jmp        _jmp_addr_0x007f887c                           // 0x007f886d    eb0d
_jmp_addr_0x007f886f:    xor.s              eax, eax                                       // 0x007f886f    33c0
                         {disp8} jmp        _jmp_addr_0x007f887c                           // 0x007f8871    eb09
_jmp_addr_0x007f8873:    cmp                eax, 0x03                                      // 0x007f8873    83f803
                         {disp32} ja        _jmp_addr_0x007f894b                           // 0x007f8876    0f87cf000000
_jmp_addr_0x007f887c:    jmp                dword ptr [eax*4 + 0x7f8958]                   // 0x007f887c    ff248558897f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4cc0ec]         // 0x007f8883    a1ec20e900
                         cmp                eax, 0x00000800                                // 0x007f8888    3d00080000
                         {disp32} jge       _jmp_addr_0x007f894b                           // 0x007f888d    0f8db8000000
                         lea                ecx, dword ptr [eax + eax * 0x4]               // 0x007f8893    8d0c80
                         lea                edx, dword ptr [eax + ecx * 0x2]               // 0x007f8896    8d1448
                         {disp32} mov       eax, dword ptr [esp + 0x000000d4]              // 0x007f8899    8b8424d4000000
                         lea                edi, dword ptr [eax + edx * 0x8]               // 0x007f88a0    8d3cd0
                         mov                ecx, 0x00000016                                // 0x007f88a3    b916000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f88a8    f3a5
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4cc0ec]         // 0x007f88aa    a1ec20e900
                         pop                edi                                            // 0x007f88af    5f
                         pop                esi                                            // 0x007f88b0    5e
                         inc                eax                                            // 0x007f88b1    40
                         pop                ebp                                            // 0x007f88b2    5d
                         {disp32} mov       dword ptr [data_bytes + 0x4cc0ec], eax         // 0x007f88b3    a3ec20e900
                         pop                ebx                                            // 0x007f88b8    5b
                         add                esp, 0x000000b0                                // 0x007f88b9    81c4b0000000
                         ret                0x0018                                         // 0x007f88bf    c21800
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                    // 0x007f88c2    8d4c2410
                         push               ecx                                            // 0x007f88c6    51
                         mov.s              ecx, esi                                       // 0x007f88c7    8bce
                         call               _jmp_addr_0x007f7710                           // 0x007f88c9    e842eeffff
                         {disp32} mov       eax, dword ptr [esp + 0x000000d8]              // 0x007f88ce    8b8424d8000000
                         {disp32} mov       edx, dword ptr [esp + 0x000000d0]              // 0x007f88d5    8b9424d0000000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000d4]              // 0x007f88dc    8b8c24d4000000
                         push               eax                                            // 0x007f88e3    50
                         push               ecx                                            // 0x007f88e4    51
                         {disp8} lea        esi, dword ptr [edx + 0x01]                    // 0x007f88e5    8d7201
                         push               esi                                            // 0x007f88e8    56
                         push               edi                                            // 0x007f88e9    57
                         push               ebx                                            // 0x007f88ea    53
                         push               ebp                                            // 0x007f88eb    55
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                    // 0x007f88ec    8d4c2428
                         call               _jmp_addr_0x007f8810                           // 0x007f88f0    e81bffffff
                         {disp32} mov       edx, dword ptr [esp + 0x000000d8]              // 0x007f88f5    8b9424d8000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000d4]              // 0x007f88fc    8b8424d4000000
                         push               edx                                            // 0x007f8903    52
                         push               eax                                            // 0x007f8904    50
                         push               esi                                            // 0x007f8905    56
                         push               edi                                            // 0x007f8906    57
                         push               ebx                                            // 0x007f8907    53
                         push               ebp                                            // 0x007f8908    55
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]              // 0x007f8909    8d8c2480000000
                         call               _jmp_addr_0x007f8810                           // 0x007f8910    e8fbfeffff
                         pop                edi                                            // 0x007f8915    5f
                         pop                esi                                            // 0x007f8916    5e
                         pop                ebp                                            // 0x007f8917    5d
                         pop                ebx                                            // 0x007f8918    5b
                         add                esp, 0x000000b0                                // 0x007f8919    81c4b0000000
                         ret                0x0018                                         // 0x007f891f    c21800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4cc0f0]         // 0x007f8922    a1f020e900
                         cmp                eax, 0x00000800                                // 0x007f8927    3d00080000
                         {disp8} jge        _jmp_addr_0x007f894b                           // 0x007f892c    7d1d
                         lea                ecx, dword ptr [eax + eax * 0x4]               // 0x007f892e    8d0c80
                         lea                edx, dword ptr [eax + ecx * 0x2]               // 0x007f8931    8d1448
                         {disp32} mov       eax, dword ptr [esp + 0x000000d8]              // 0x007f8934    8b8424d8000000
                         lea                edi, dword ptr [eax + edx * 0x8]               // 0x007f893b    8d3cd0
                         mov                ecx, 0x00000016                                // 0x007f893e    b916000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x007f8943    f3a5
                         {disp32} inc       dword ptr [data_bytes + 0x4cc0f0]              // 0x007f8945    ff05f020e900
_jmp_addr_0x007f894b:    pop                edi                                            // 0x007f894b    5f
                         pop                esi                                            // 0x007f894c    5e
                         pop                ebp                                            // 0x007f894d    5d
                         pop                ebx                                            // 0x007f894e    5b
                         add                esp, 0x000000b0                                // 0x007f894f    81c4b0000000
                         ret                0x0018                                         // 0x007f8955    c21800

// Snippet: jmptbl, [0x007f8958, 0x007f8968)
.byte 0x83, 0x88, 0x7f, 0x00      // 0x007f8958
.byte 0xc2, 0x88, 0x7f, 0x00      // 0x007f895c
.byte 0xc2, 0x88, 0x7f, 0x00      // 0x007f8960
.byte 0x22, 0x89, 0x7f, 0x00      // 0x007f8964

// Snippet: db, [0x007f8968, 0x007f8970)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007f8968
.byte 0x90, 0x90, 0x90, 0x90      // 0x007f896c

