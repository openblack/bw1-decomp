.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _atexit
.extern _malloc
.extern _free
.extern __chkstk
.extern __errno
.extern ___doserrno
.extern _strncpy
.extern _strchr
.extern _calloc
.extern __tolower_lk
.extern _strlen
.extern _memset
.extern __lock
.extern __unlock
.extern __write_lk
.extern __lseek_lk
.extern _strcpy
.extern __get_osfhandle
.extern __lock_fhandle
.extern __unlock_fhandle
.extern _jmp_addr_0x007dc8b0
.extern _jmp_addr_0x007dc920
.extern _jmp_addr_0x007dcaf0
.extern @__ct__8LHScreenFv@4
.extern @__dt__8LHScreenFv@4
.extern _jmp_addr_0x007de6f0
.extern _jmp_addr_0x007de820
.extern _jmp_addr_0x007de8d0
.extern _jmp_addr_0x007dece0
.extern _jmp_addr_0x007ded10
.extern _jmp_addr_0x007e4b80
.extern @__ct__7LHMouseFv@4
.extern @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16
.extern _jmp_addr_0x007e5b20
.extern _jmp_addr_0x007ef780
.extern _jmp_addr_0x007f3b80
.extern _jmp_addr_0x007f3d20
.extern _jmp_addr_0x007f42b0
.extern __getpid

.globl _$I10_OUTPUT
.globl __mbschr
.globl __strdup
.globl __chsize_lk
.globl ___multtenpow12
.globl ___crtGetLocaleInfoW
.globl ___crtGetLocaleInfoA
.globl __setmode


// x10fout.obj
_$I10_OUTPUT:
                         push              ebp                                            // 0x007da9b2    55
                         mov.s             ebp, esp                                       // 0x007da9b3    8bec
                         sub               esp, 0x1c                                      // 0x007da9b5    83ec1c
                         {disp8} mov       eax, dword ptr [ebp + 0x10]                    // 0x007da9b8    8b4510
                         push              ebx                                            // 0x007da9bb    53
                         {disp8} mov       ebx, dword ptr [ebp + 0x1c]                    // 0x007da9bc    8b5d1c
                         push              esi                                            // 0x007da9bf    56
                         mov.s             ecx, eax                                       // 0x007da9c0    8bc8
                         mov               esi, 0x00007fff                                // 0x007da9c2    beff7f0000
                         and               ecx, 0x00008000                                // 0x007da9c7    81e100800000
                         and.s             eax, esi                                       // 0x007da9cd    23c6
                         test              cx, cx                                         // 0x007da9cf    6685c9
                         push              edi                                            // 0x007da9d2    57
                         {disp8} mov       byte ptr [ebp + -0x1c], -0x34                  // 0x007da9d3    c645e4cc
                         {disp8} mov       byte ptr [ebp + -0x1b], -0x34                  // 0x007da9d7    c645e5cc
                         {disp8} mov       byte ptr [ebp + -0x1a], -0x34                  // 0x007da9db    c645e6cc
                         {disp8} mov       byte ptr [ebp + -0x19], -0x34                  // 0x007da9df    c645e7cc
                         {disp8} mov       byte ptr [ebp + -0x18], -0x34                  // 0x007da9e3    c645e8cc
                         {disp8} mov       byte ptr [ebp + -0x17], -0x34                  // 0x007da9e7    c645e9cc
                         {disp8} mov       byte ptr [ebp + -0x16], -0x34                  // 0x007da9eb    c645eacc
                         {disp8} mov       byte ptr [ebp + -0x15], -0x34                  // 0x007da9ef    c645ebcc
                         {disp8} mov       byte ptr [ebp + -0x14], -0x34                  // 0x007da9f3    c645eccc
                         {disp8} mov       byte ptr [ebp + -0x13], -0x34                  // 0x007da9f7    c645edcc
                         {disp8} mov       byte ptr [ebp + -0x12], -0x05                  // 0x007da9fb    c645eefb
                         {disp8} mov       byte ptr [ebp + -0x11], 0x3f                   // 0x007da9ff    c645ef3f
                         {disp8} mov       dword ptr [ebp + -0x04], 0x00000001            // 0x007daa03    c745fc01000000
                         mov.s             edx, eax                                       // 0x007daa0a    8bd0
                         {disp8} je        _jmp_addr_0x007daa14                           // 0x007daa0c    7406
                         {disp8} mov       byte ptr [ebx + 0x02], 0x2d                    // 0x007daa0e    c643022d
                         {disp8} jmp       _jmp_addr_0x007daa18                           // 0x007daa12    eb04
_jmp_addr_0x007daa14:    {disp8} mov       byte ptr [ebx + 0x02], 0x20                    // 0x007daa14    c6430220
_jmp_addr_0x007daa18:    {disp8} mov       edi, dword ptr [ebp + 0x0c]                    // 0x007daa18    8b7d0c
                         test              dx, dx                                         // 0x007daa1b    6685d2
                         {disp8} jne       _jmp_addr_0x007daa3e                           // 0x007daa1e    751e
                         test              edi, edi                                       // 0x007daa20    85ff
                         {disp8} jne       _jmp_addr_0x007daa3e                           // 0x007daa22    751a
                         cmp               dword ptr [ebp + 0x08], edi                    // 0x007daa24    397d08
                         {disp8} jne       _jmp_addr_0x007daa3e                           // 0x007daa27    7515
_jmp_addr_0x007daa29:    and               word ptr [ebx], 0x00                           // 0x007daa29    66832300
                         {disp8} mov       byte ptr [ebx + 0x02], 0x20                    // 0x007daa2d    c6430220
                         {disp8} mov       byte ptr [ebx + 0x03], 0x01                    // 0x007daa31    c6430301
                         {disp8} mov       byte ptr [ebx + 0x04], 0x30                    // 0x007daa35    c6430430
                         {disp32} jmp      _jmp_addr_0x007dac3c                           // 0x007daa39    e9fe010000
_jmp_addr_0x007daa3e:    cmp.s             dx, si                                         // 0x007daa3e    663bd6
                         {disp8} jne       _jmp_addr_0x007daabd                           // 0x007daa41    757a
                         mov               eax, 0x80000000                                // 0x007daa43    b800000080
                         mov               word ptr [ebx], 0x0001                         // 0x007daa48    66c7030100
                         cmp.s             edi, eax                                       // 0x007daa4d    3bf8
                         {disp8} jne       _jmp_addr_0x007daa57                           // 0x007daa4f    7506
                         cmp               dword ptr [ebp + 0x08], 0x00                   // 0x007daa51    837d0800
                         {disp8} je        _jmp_addr_0x007daa66                           // 0x007daa55    740f
_jmp_addr_0x007daa57:    test              edi, 0x40000000                                // 0x007daa57    f7c700000040
                         {disp8} jne       _jmp_addr_0x007daa66                           // 0x007daa5d    7507
                         push              0x009a15f4                                     // 0x007daa5f    68f4159a00
                         {disp8} jmp       _jmp_addr_0x007daaac                           // 0x007daa64    eb46
_jmp_addr_0x007daa66:    test              cx, cx                                         // 0x007daa66    6685c9
                         {disp8} je        _jmp_addr_0x007daa80                           // 0x007daa69    7415
                         cmp               edi, 0xc0000000                                // 0x007daa6b    81ff000000c0
                         {disp8} jne       _jmp_addr_0x007daa80                           // 0x007daa71    750d
                         cmp               dword ptr [ebp + 0x08], 0x00                   // 0x007daa73    837d0800
                         {disp8} jne       _jmp_addr_0x007daaa7                           // 0x007daa77    752e
                         push              0x009a15ec                                     // 0x007daa79    68ec159a00
                         {disp8} jmp       _jmp_addr_0x007daa8f                           // 0x007daa7e    eb0f
_jmp_addr_0x007daa80:    cmp.s             edi, eax                                       // 0x007daa80    3bf8
                         {disp8} jne       _jmp_addr_0x007daaa7                           // 0x007daa82    7523
                         cmp               dword ptr [ebp + 0x08], 0x00                   // 0x007daa84    837d0800
                         {disp8} jne       _jmp_addr_0x007daaa7                           // 0x007daa88    751d
                         push              0x009a15e4                                     // 0x007daa8a    68e4159a00
_jmp_addr_0x007daa8f:    {disp8} lea       eax, dword ptr [ebx + 0x04]                    // 0x007daa8f    8d4304
                         push              eax                                            // 0x007daa92    50
                         call              _strcpy                                        // 0x007daa93    e8d8a5ffff
                         pop               ecx                                            // 0x007daa98    59
                         {disp8} mov       byte ptr [ebx + 0x03], 0x05                    // 0x007daa99    c6430305
                         pop               ecx                                            // 0x007daa9d    59
_jmp_addr_0x007daa9e:    and               dword ptr [ebp + -0x04], 0x00                  // 0x007daa9e    8365fc00
                         {disp32} jmp      _jmp_addr_0x007dac15                           // 0x007daaa2    e96e010000
_jmp_addr_0x007daaa7:    push              0x009a15dc                                     // 0x007daaa7    68dc159a00
_jmp_addr_0x007daaac:    {disp8} lea       eax, dword ptr [ebx + 0x04]                    // 0x007daaac    8d4304
                         push              eax                                            // 0x007daaaf    50
                         call              _strcpy                                        // 0x007daab0    e8bba5ffff
                         pop               ecx                                            // 0x007daab5    59
                         {disp8} mov       byte ptr [ebx + 0x03], 0x06                    // 0x007daab6    c6430306
                         pop               ecx                                            // 0x007daaba    59
                         {disp8} jmp       _jmp_addr_0x007daa9e                           // 0x007daabb    ebe1
_jmp_addr_0x007daabd:    movzx             eax, dx                                        // 0x007daabd    0fb7c2
                         mov.s             ecx, edi                                       // 0x007daac0    8bcf
                         mov.s             esi, eax                                       // 0x007daac2    8bf0
                         shr               ecx, 0x18                                      // 0x007daac4    c1e918
                         imul              eax, eax, 0x00004d10                           // 0x007daac7    69c0104d0000
                         shr               esi, 8                                         // 0x007daacd    c1ee08
                         and               word ptr [ebp + -0x10], 0x00                   // 0x007daad0    668365f000
                         push              0x1                                            // 0x007daad5    6a01
                         lea               ecx, dword ptr [esi + ecx * 0x2]               // 0x007daad7    8d0c4e
                         {disp8} mov       word ptr [ebp + -0x06], dx                     // 0x007daada    668955fa
                         imul              ecx, ecx, 0x4d                                 // 0x007daade    6bc94d
                         {disp8} mov       dword ptr [ebp + -0x0a], edi                   // 0x007daae1    897df6
                         {disp32} lea      esi, dword ptr [ecx + eax * 0x1 + -0x134312f4] // 0x007daae4    8db4010cedbcec
                         {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007daaeb    8b4508
                         sar               esi, 0x10                                      // 0x007daaee    c1fe10
                         {disp8} mov       dword ptr [ebp + -0x0e], eax                   // 0x007daaf1    8945f2
                         movsx             eax, si                                        // 0x007daaf4    0fbfc6
                         neg               eax                                            // 0x007daaf7    f7d8
                         push              eax                                            // 0x007daaf9    50
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007daafa    8d45f0
                         push              eax                                            // 0x007daafd    50
                         call              ___multtenpow12                                // 0x007daafe    e8a2050000
                         add               esp, 0x0c                                      // 0x007dab03    83c40c
                         cmp               word ptr [ebp + -0x06], 0x3fff                 // 0x007dab06    66817dfaff3f
                         .byte             0x72, 0x10// {disp8} jb _jmp_addr_0x007dab1e   // 0x007dab0c    7210
                         {disp8} lea       eax, dword ptr [ebp + -0x1c]                   // 0x007dab0e    8d45e4
                         inc               esi                                            // 0x007dab11    46
                         push              eax                                            // 0x007dab12    50
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab13    8d45f0
                         push              eax                                            // 0x007dab16    50
                         call              ___ld12mul                                     // 0x007dab17    e869030000
                         pop               ecx                                            // 0x007dab1c    59
                         pop               ecx                                            // 0x007dab1d    59
_jmp_addr_0x007dab1e:    test              byte ptr [ebp + 0x18], 0x01                    // 0x007dab1e    f6451801
                         mov               word ptr [ebx], si                             // 0x007dab22    668933
                         {disp8} je        _jmp_addr_0x007dab38                           // 0x007dab25    7411
                         {disp8} mov       edi, dword ptr [ebp + 0x14]                    // 0x007dab27    8b7d14
                         movsx             eax, si                                        // 0x007dab2a    0fbfc6
                         add.s             edi, eax                                       // 0x007dab2d    03f8
                         test              edi, edi                                       // 0x007dab2f    85ff
                         {disp8} jg        _jmp_addr_0x007dab3b                           // 0x007dab31    7f08
                         {disp32} jmp      _jmp_addr_0x007daa29                           // 0x007dab33    e9f1feffff
_jmp_addr_0x007dab38:    {disp8} mov       edi, dword ptr [ebp + 0x14]                    // 0x007dab38    8b7d14
_jmp_addr_0x007dab3b:    cmp               edi, 0x15                                      // 0x007dab3b    83ff15
                         {disp8} jle       _jmp_addr_0x007dab43                           // 0x007dab3e    7e03
                         push              0x15                                           // 0x007dab40    6a15
                         pop               edi                                            // 0x007dab42    5f
_jmp_addr_0x007dab43:    movzx             esi, word ptr [ebp + -0x06]                    // 0x007dab43    0fb775fa
                         sub               esi, 0x00003ffe                                // 0x007dab47    81eefe3f0000
                         and               word ptr [ebp + -0x06], 0x00                   // 0x007dab4d    668365fa00
                         {disp8} mov       dword ptr [ebp + 0x1c], 0x00000008             // 0x007dab52    c7451c08000000
_jmp_addr_0x007dab59:    {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab59    8d45f0
                         push              eax                                            // 0x007dab5c    50
                         call              ___shl_12                                      // 0x007dab5d    e82efdffff
                         dec               dword ptr [ebp + 0x1c]                         // 0x007dab62    ff4d1c
                         pop               ecx                                            // 0x007dab65    59
                         {disp8} jne       _jmp_addr_0x007dab59                           // 0x007dab66    75f1
                         test              esi, esi                                       // 0x007dab68    85f6
                         {disp8} jge       _jmp_addr_0x007dab83                           // 0x007dab6a    7d17
                         neg               esi                                            // 0x007dab6c    f7de
                         and               esi, 0x000000ff                                // 0x007dab6e    81e6ff000000
                         {disp8} jle       _jmp_addr_0x007dab83                           // 0x007dab74    7e0d
_jmp_addr_0x007dab76:    {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab76    8d45f0
                         push              eax                                            // 0x007dab79    50
                         call              ___shr_12                                      // 0x007dab7a    e83ffdffff
                         dec               esi                                            // 0x007dab7f    4e
                         pop               ecx                                            // 0x007dab80    59
                         {disp8} jne       _jmp_addr_0x007dab76                           // 0x007dab81    75f3
_jmp_addr_0x007dab83:    {disp8} lea       ecx, dword ptr [edi + 0x01]                    // 0x007dab83    8d4f01
                         {disp8} lea       eax, dword ptr [ebx + 0x04]                    // 0x007dab86    8d4304
                         test              ecx, ecx                                       // 0x007dab89    85c9
                         {disp8} mov       dword ptr [ebp + 0x1c], eax                    // 0x007dab8b    89451c
                         {disp8} jle       _jmp_addr_0x007dabe0                           // 0x007dab8e    7e50
                         {disp8} mov       dword ptr [ebp + 0x14], ecx                    // 0x007dab90    894d14
_jmp_addr_0x007dab93:    {disp8} lea       esi, dword ptr [ebp + -0x10]                   // 0x007dab93    8d75f0
                         {disp8} lea       edi, dword ptr [ebp + 0x08]                    // 0x007dab96    8d7d08
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007dab99    a5
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007dab9a    a5
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab9b    8d45f0
                         push              eax                                            // 0x007dab9e    50
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007dab9f    a5
                         call              ___shl_12                                      // 0x007daba0    e8ebfcffff
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007daba5    8d45f0
                         push              eax                                            // 0x007daba8    50
                         call              ___shl_12                                      // 0x007daba9    e8e2fcffff
                         {disp8} lea       eax, dword ptr [ebp + 0x08]                    // 0x007dabae    8d4508
                         push              eax                                            // 0x007dabb1    50
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dabb2    8d45f0
                         push              eax                                            // 0x007dabb5    50
                         call              ___add_12                                      // 0x007dabb6    e877fcffff
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dabbb    8d45f0
                         push              eax                                            // 0x007dabbe    50
                         call              ___shl_12                                      // 0x007dabbf    e8ccfcffff
                         {disp8} mov       al, byte ptr [ebp + -0x05]                     // 0x007dabc4    8a45fb
                         {disp8} mov       ecx, dword ptr [ebp + 0x1c]                    // 0x007dabc7    8b4d1c
                         and               byte ptr [ebp + -0x05], 0x00                   // 0x007dabca    8065fb00
                         add               esp, 0x14                                      // 0x007dabce    83c414
                         add               al, 0x30                                       // 0x007dabd1    0430
                         {disp8} inc       dword ptr [ebp + 0x1c]                         // 0x007dabd3    ff451c
                         dec               dword ptr [ebp + 0x14]                         // 0x007dabd6    ff4d14
                         mov               byte ptr [ecx], al                             // 0x007dabd9    8801
                         {disp8} jne       _jmp_addr_0x007dab93                           // 0x007dabdb    75b6
                         {disp8} mov       eax, dword ptr [ebp + 0x1c]                    // 0x007dabdd    8b451c
_jmp_addr_0x007dabe0:    {disp8} mov       cl, byte ptr [eax + -0x01]                     // 0x007dabe0    8a48ff
                         dec               eax                                            // 0x007dabe3    48
                         dec               eax                                            // 0x007dabe4    48
                         cmp               cl, 0x35                                       // 0x007dabe5    80f935
                         {disp8} lea       ecx, dword ptr [ebx + 0x04]                    // 0x007dabe8    8d4b04
                         {disp8} jl        _jmp_addr_0x007dac1d                           // 0x007dabeb    7c30
_jmp_addr_0x007dabed:    cmp.s             eax, ecx                                       // 0x007dabed    3bc1
                         .byte             0x72, 0xf// {disp8} jb _jmp_addr_0x007dac00    // 0x007dabef    720f
                         cmp               byte ptr [eax], 0x39                           // 0x007dabf1    803839
                         {disp8} jne       _jmp_addr_0x007dabfc                           // 0x007dabf4    7506
                         mov               byte ptr [eax], 0x30                           // 0x007dabf6    c60030
                         dec               eax                                            // 0x007dabf9    48
                         {disp8} jmp       _jmp_addr_0x007dabed                           // 0x007dabfa    ebf1
_jmp_addr_0x007dabfc:    cmp.s             eax, ecx                                       // 0x007dabfc    3bc1
                         {disp8} jae       _jmp_addr_0x007dac04                           // 0x007dabfe    7304
_jmp_addr_0x007dac00:    inc               eax                                            // 0x007dac00    40
                         inc               word ptr [ebx]                                 // 0x007dac01    66ff03
_jmp_addr_0x007dac04:    inc               byte ptr [eax]                                 // 0x007dac04    fe00
_jmp_addr_0x007dac06:    sub.s             al, bl                                         // 0x007dac06    2ac3
                         sub               al, 0x03                                       // 0x007dac08    2c03
                         {disp8} mov       byte ptr [ebx + 0x03], al                      // 0x007dac0a    884303
                         movsx             eax, al                                        // 0x007dac0d    0fbec0
                         and               byte ptr [eax + ebx * 0x1 + 0x04], 0x00        // 0x007dac10    8064180400
_jmp_addr_0x007dac15:    {disp8} mov       eax, dword ptr [ebp + -0x04]                   // 0x007dac15    8b45fc
_jmp_addr_0x007dac18:    pop               edi                                            // 0x007dac18    5f
                         pop               esi                                            // 0x007dac19    5e
                         pop               ebx                                            // 0x007dac1a    5b
                         leave                                                            // 0x007dac1b    c9
                         ret                                                              // 0x007dac1c    c3
_jmp_addr_0x007dac1d:    cmp.s             eax, ecx                                       // 0x007dac1d    3bc1
                         .byte             0x72, 0xc// {disp8} jb _jmp_addr_0x007dac2d    // 0x007dac1f    720c
                         cmp               byte ptr [eax], 0x30                           // 0x007dac21    803830
                         {disp8} jne       _jmp_addr_0x007dac29                           // 0x007dac24    7503
                         dec               eax                                            // 0x007dac26    48
                         {disp8} jmp       _jmp_addr_0x007dac1d                           // 0x007dac27    ebf4
_jmp_addr_0x007dac29:    cmp.s             eax, ecx                                       // 0x007dac29    3bc1
                         {disp8} jae       _jmp_addr_0x007dac06                           // 0x007dac2b    73d9
_jmp_addr_0x007dac2d:    and               word ptr [ebx], 0x00                           // 0x007dac2d    66832300
                         {disp8} mov       byte ptr [ebx + 0x02], 0x20                    // 0x007dac31    c6430220
                         {disp8} mov       byte ptr [ebx + 0x03], 0x01                    // 0x007dac35    c6430301
                         mov               byte ptr [ecx], 0x30                           // 0x007dac39    c60130
_jmp_addr_0x007dac3c:    and               byte ptr [ebx + 0x05], 0x00                    // 0x007dac3c    80630500
                         push              0x1                                            // 0x007dac40    6a01
                         pop               eax                                            // 0x007dac42    58
                         {disp8} jmp       _jmp_addr_0x007dac18                           // 0x007dac43    ebd3

__mbschr:
                         push              ebp                                            // 0x007dac45    55
                         mov.s             ebp, esp                                       // 0x007dac46    8bec
                         cmp               dword ptr [data_bytes + 0x5e6a7c], 0x00        // 0x007dac48    833d7ccafa0000
                         push              ebx                                            // 0x007dac4f    53
                         push              esi                                            // 0x007dac50    56
                         {disp8} jne       _jmp_addr_0x007dac62                           // 0x007dac51    750f
                         push              dword ptr [ebp + 0x0c]                         // 0x007dac53    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007dac56    ff7508
                         call              _strchr                                        // 0x007dac59    e892e5feff
                         pop               ecx                                            // 0x007dac5e    59
                         pop               ecx                                            // 0x007dac5f    59
                         {disp8} jmp       _jmp_addr_0x007dacd8                           // 0x007dac60    eb76
_jmp_addr_0x007dac62:    push              0x19                                           // 0x007dac62    6a19
                         call              __lock                                          // 0x007dac64    e84d0affff
                         {disp8} mov       esi, dword ptr [ebp + 0x08]                    // 0x007dac69    8b7508
                         pop               ecx                                            // 0x007dac6c    59
_jmp_addr_0x007dac6d:    movzx             bx, byte ptr [esi]                             // 0x007dac6d    660fb61e
                         test              bx, bx                                         // 0x007dac71    6685db
                         {disp8} je        _jmp_addr_0x007dacc0                           // 0x007dac74    744a
                         movzx             eax, bl                                        // 0x007dac76    0fb6c3
                         test              byte ptr [eax + 0x00facb81], 0x04              // 0x007dac79    f68081cbfa0004
                         {disp8} je        _jmp_addr_0x007dac9c                           // 0x007dac80    741a
                         {disp8} mov       al, byte ptr [esi + 0x01]                      // 0x007dac82    8a4601
                         inc               esi                                            // 0x007dac85    46
                         test              al, al                                         // 0x007dac86    84c0
                         {disp8} je        _jmp_addr_0x007daca7                           // 0x007dac88    741d
                         movzx             ecx, bx                                        // 0x007dac8a    0fb7cb
                         movzx             eax, al                                        // 0x007dac8d    0fb6c0
                         shl               ecx, 8                                         // 0x007dac90    c1e108
                         or.s              ecx, eax                                       // 0x007dac93    0bc8
                         cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007dac95    394d0c
                         {disp8} je        _jmp_addr_0x007dacb3                           // 0x007dac98    7419
                         {disp8} jmp       _jmp_addr_0x007daca4                           // 0x007dac9a    eb08
_jmp_addr_0x007dac9c:    movzx             eax, bx                                        // 0x007dac9c    0fb7c3
                         cmp               dword ptr [ebp + 0x0c], eax                    // 0x007dac9f    39450c
                         {disp8} je        _jmp_addr_0x007dacc0                           // 0x007daca2    741c
_jmp_addr_0x007daca4:    inc               esi                                            // 0x007daca4    46
                         {disp8} jmp       _jmp_addr_0x007dac6d                           // 0x007daca5    ebc6
_jmp_addr_0x007daca7:    push              0x19                                           // 0x007daca7    6a19
                         call              __unlock                                       // 0x007daca9    e8690affff
                         pop               ecx                                            // 0x007dacae    59
                         xor.s             eax, eax                                       // 0x007dacaf    33c0
                         {disp8} jmp       _jmp_addr_0x007dacd8                           // 0x007dacb1    eb25
_jmp_addr_0x007dacb3:    push              0x19                                           // 0x007dacb3    6a19
                         call              __unlock                                       // 0x007dacb5    e85d0affff
                         pop               ecx                                            // 0x007dacba    59
                         {disp8} lea       eax, dword ptr [esi + -0x01]                   // 0x007dacbb    8d46ff
                         {disp8} jmp       _jmp_addr_0x007dacd8                           // 0x007dacbe    eb18
_jmp_addr_0x007dacc0:    push              0x19                                           // 0x007dacc0    6a19
                         call              __unlock                                       // 0x007dacc2    e8500affff
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007dacc7    8b450c
                         pop               ecx                                            // 0x007dacca    59
                         movzx             ecx, bx                                        // 0x007daccb    0fb7cb
                         sub.s             eax, ecx                                       // 0x007dacce    2bc1
                         neg               eax                                            // 0x007dacd0    f7d8
                         sbb.s             eax, eax                                       // 0x007dacd2    1bc0
                         not               eax                                            // 0x007dacd4    f7d0
                         and.s             eax, esi                                       // 0x007dacd6    23c6
_jmp_addr_0x007dacd8:    pop               esi                                            // 0x007dacd8    5e
                         pop               ebx                                            // 0x007dacd9    5b
                         pop               ebp                                            // 0x007dacda    5d
                         ret                                                              // 0x007dacdb    c3

// strdup.obj
__strdup:
                         push              esi                                            // 0x007dacdc    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007dacdd    8b742408
                         test              esi, esi                                       // 0x007dace1    85f6
                         {disp8} je        _jmp_addr_0x007dad03                           // 0x007dace3    741e
                         push              esi                                            // 0x007dace5    56
                         call              _strlen                                        // 0x007dace6    e805f9feff
                         inc               eax                                            // 0x007daceb    40
                         push              eax                                            // 0x007dacec    50
                         call              _malloc                                        // 0x007daced    e85ab9feff
                         pop               ecx                                            // 0x007dacf2    59
                         test              eax, eax                                       // 0x007dacf3    85c0
                         pop               ecx                                            // 0x007dacf5    59
                         {disp8} je        _jmp_addr_0x007dad03                           // 0x007dacf6    740b
                         push              esi                                            // 0x007dacf8    56
                         push              eax                                            // 0x007dacf9    50
                         call              _strcpy                                        // 0x007dacfa    e871a3ffff
                         pop               ecx                                            // 0x007dacff    59
                         pop               ecx                                            // 0x007dad00    59
                         pop               esi                                            // 0x007dad01    5e
                         ret                                                              // 0x007dad02    c3
_jmp_addr_0x007dad03:    xor.s             eax, eax                                       // 0x007dad03    33c0
                         pop               esi                                            // 0x007dad05    5e
                         ret                                                              // 0x007dad06    c3

// chsize.obj
__chsize:
                         push              esi                                            // 0x007dad07    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007dad08    8b742408
                         cmp               esi, dword ptr [data_bytes + 0x5e6a60]         // 0x007dad0c    3b3560cafa00
                         {disp8} jae       _jmp_addr_0x007dad50                           // 0x007dad12    733c
                         mov.s             ecx, esi                                       // 0x007dad14    8bce
                         mov.s             eax, esi                                       // 0x007dad16    8bc6
                         sar               ecx, 5                                         // 0x007dad18    c1f905
                         and               eax, 0x1f                                      // 0x007dad1b    83e01f
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007dad1e    8b0c8d60c9fa00
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007dad25    8d04c0
                         test              byte ptr [ecx + eax * 0x4 + 0x04], 0x01        // 0x007dad28    f644810401
                         {disp8} je        _jmp_addr_0x007dad50                           // 0x007dad2d    7421
                         push              edi                                            // 0x007dad2f    57
                         push              esi                                            // 0x007dad30    56
                         call              __lock_fhandle                                 // 0x007dad31    e827edffff
                         push              dword ptr [esp + 0x14]                         // 0x007dad36    ff742414
                         push              esi                                            // 0x007dad3a    56
                         call              __chsize_lk                                    // 0x007dad3b    e820000000
                         push              esi                                            // 0x007dad40    56
                         mov.s             edi, eax                                       // 0x007dad41    8bf8
                         call              __unlock_fhandle                               // 0x007dad43    e874edffff
                         add               esp, 0x10                                      // 0x007dad48    83c410
                         mov.s             eax, edi                                       // 0x007dad4b    8bc7
                         pop               edi                                            // 0x007dad4d    5f
                         pop               esi                                            // 0x007dad4e    5e
                         ret                                                              // 0x007dad4f    c3
_jmp_addr_0x007dad50:    call              __errno                                        // 0x007dad50    e82ce3feff
                         mov               dword ptr [eax], 0x00000009                    // 0x007dad55    c70009000000
                         or                eax, -0x1                                      // 0x007dad5b    83c8ff
                         pop               esi                                            // 0x007dad5e    5e
                         ret                                                              // 0x007dad5f    c3
__chsize_lk:
                         push              ebp                                            // 0x007dad60    55
                         mov.s             ebp, esp                                       // 0x007dad61    8bec
                         mov               eax, 0x00001004                                // 0x007dad63    b804100000
                         call              __chkstk                                       // 0x007dad68    e843c1feff
                         push              ebx                                            // 0x007dad6d    53
                         push              esi                                            // 0x007dad6e    56
                         xor.s             esi, esi                                       // 0x007dad6f    33f6
                         push              0x1                                            // 0x007dad71    6a01
                         push              esi                                            // 0x007dad73    56
                         push              dword ptr [ebp + 0x08]                         // 0x007dad74    ff7508
                         call              __lseek_lk                                     // 0x007dad77    e862a0ffff
                         or                ebx, 0xffffffff                                // 0x007dad7c    83cbff
                         add               esp, 0x0c                                      // 0x007dad7f    83c40c
                         cmp.s             eax, ebx                                       // 0x007dad82    3bc3
                         {disp8} mov       dword ptr [ebp + -0x04], eax                   // 0x007dad84    8945fc
                         {disp32} je       _jmp_addr_0x007dae7f                           // 0x007dad87    0f84f2000000
                         push              0x2                                            // 0x007dad8d    6a02
                         push              esi                                            // 0x007dad8f    56
                         push              dword ptr [ebp + 0x08]                         // 0x007dad90    ff7508
                         call              __lseek_lk                                     // 0x007dad93    e846a0ffff
                         add               esp, 0x0c                                      // 0x007dad98    83c40c
                         cmp.s             eax, ebx                                       // 0x007dad9b    3bc3
                         {disp32} je       _jmp_addr_0x007dae7f                           // 0x007dad9d    0f84dc000000
                         push              edi                                            // 0x007dada3    57
                         {disp8} mov       edi, dword ptr [ebp + 0x0c]                    // 0x007dada4    8b7d0c
                         sub.s             edi, eax                                       // 0x007dada7    2bf8
                         test              edi, edi                                       // 0x007dada9    85ff
                         {disp8} jle       _jmp_addr_0x007dae22                           // 0x007dadab    7e75
                         mov               ebx, 0x00001000                                // 0x007dadad    bb00100000
                         {disp32} lea      eax, dword ptr [ebp + -0x00001004]             // 0x007dadb2    8d85fcefffff
                         push              ebx                                            // 0x007dadb8    53
                         push              esi                                            // 0x007dadb9    56
                         push              eax                                            // 0x007dadba    50
                         call              _memset                                        // 0x007dadbb    e84003ffff
                         push              0x00008000                                     // 0x007dadc0    6800800000
                         push              dword ptr [ebp + 0x08]                         // 0x007dadc5    ff7508
                         call              __setmode_lk                                   // 0x007dadc8    e8de050000
                         add               esp, 0x14                                      // 0x007dadcd    83c414
                         {disp8} mov       dword ptr [ebp + 0x0c], eax                    // 0x007dadd0    89450c
_jmp_addr_0x007dadd3:    cmp.s             edi, ebx                                       // 0x007dadd3    3bfb
                         mov.s             eax, ebx                                       // 0x007dadd5    8bc3
                         {disp8} jge       _jmp_addr_0x007daddb                           // 0x007dadd7    7d02
                         mov.s             eax, edi                                       // 0x007dadd9    8bc7
_jmp_addr_0x007daddb:    push              eax                                            // 0x007daddb    50
                         {disp32} lea      eax, dword ptr [ebp + -0x00001004]             // 0x007daddc    8d85fcefffff
                         push              eax                                            // 0x007dade2    50
                         push              dword ptr [ebp + 0x08]                         // 0x007dade3    ff7508
                         call              __write_lk                                     // 0x007dade6    e83073ffff
                         add               esp, 0x0c                                      // 0x007dadeb    83c40c
                         cmp               eax, -0x01                                     // 0x007dadee    83f8ff
                         {disp8} je        _jmp_addr_0x007dadfb                           // 0x007dadf1    7408
                         sub.s             edi, eax                                       // 0x007dadf3    2bf8
                         test              edi, edi                                       // 0x007dadf5    85ff
                         {disp8} jle       _jmp_addr_0x007dae13                           // 0x007dadf7    7e1a
                         {disp8} jmp       _jmp_addr_0x007dadd3                           // 0x007dadf9    ebd8
_jmp_addr_0x007dadfb:    call              ___doserrno                                    // 0x007dadfb    e88ae2feff
                         cmp               dword ptr [eax], 0x05                          // 0x007dae00    833805
                         {disp8} jne       _jmp_addr_0x007dae10                           // 0x007dae03    750b
                         call              __errno                                        // 0x007dae05    e877e2feff
                         mov               dword ptr [eax], 0x0000000d                    // 0x007dae0a    c7000d000000
_jmp_addr_0x007dae10:    or                esi, 0xffffffff                                // 0x007dae10    83ceff
_jmp_addr_0x007dae13:    push              dword ptr [ebp + 0x0c]                         // 0x007dae13    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007dae16    ff7508
                         call              __setmode_lk                                   // 0x007dae19    e88d050000
                         pop               ecx                                            // 0x007dae1e    59
                         pop               ecx                                            // 0x007dae1f    59
                         {disp8} jmp       _jmp_addr_0x007dae6a                           // 0x007dae20    eb48
_jmp_addr_0x007dae22:    {disp8} jge       _jmp_addr_0x007dae6a                           // 0x007dae22    7d46
                         push              0x0                                            // 0x007dae24    6a00
                         push              dword ptr [ebp + 0x0c]                         // 0x007dae26    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007dae29    ff7508
                         call              __lseek_lk                                     // 0x007dae2c    e8ad9fffff
                         push              dword ptr [ebp + 0x08]                         // 0x007dae31    ff7508
                         call              __get_osfhandle                                // 0x007dae34    e83bebffff
                         add               esp, 0x10                                      // 0x007dae39    83c410
                         push              eax                                            // 0x007dae3c    50
                         call              dword ptr [__imp__SetEndOfFile@4]              // 0x007dae3d    ff150c928a00
                         mov.s             esi, eax                                       // 0x007dae43    8bf0
                         neg               esi                                            // 0x007dae45    f7de
                         sbb.s             esi, esi                                       // 0x007dae47    1bf6
                         neg               esi                                            // 0x007dae49    f7de
                         dec               esi                                            // 0x007dae4b    4e
                         cmp.s             esi, ebx                                       // 0x007dae4c    3bf3
                         {disp8} jne       _jmp_addr_0x007dae6a                           // 0x007dae4e    751a
                         call              __errno                                        // 0x007dae50    e82ce2feff
                         mov               dword ptr [eax], 0x0000000d                    // 0x007dae55    c7000d000000
                         call              dword ptr [__imp__GetLastError@0]              // 0x007dae5b    ff15fc918a00
                         mov.s             edi, eax                                       // 0x007dae61    8bf8
                         call              ___doserrno                                    // 0x007dae63    e822e2feff
                         mov               dword ptr [eax], edi                           // 0x007dae68    8938
_jmp_addr_0x007dae6a:    push              0x0                                            // 0x007dae6a    6a00
                         push              dword ptr [ebp + -0x04]                        // 0x007dae6c    ff75fc
                         push              dword ptr [ebp + 0x08]                         // 0x007dae6f    ff7508
                         call              __lseek_lk                                     // 0x007dae72    e8679fffff
                         add               esp, 0x0c                                      // 0x007dae77    83c40c
                         mov.s             eax, esi                                       // 0x007dae7a    8bc6
                         pop               edi                                            // 0x007dae7c    5f
                         {disp8} jmp       _jmp_addr_0x007dae81                           // 0x007dae7d    eb02
_jmp_addr_0x007dae7f:    mov.s             eax, ebx                                       // 0x007dae7f    8bc3
_jmp_addr_0x007dae81:    pop               esi                                            // 0x007dae81    5e
                         pop               ebx                                            // 0x007dae82    5b
                         leave                                                            // 0x007dae83    c9
                         ret                                                              // 0x007dae84    c3

// tenpow.obj
___ld12mul:
                         push              ebp                                            // 0x007dae85    55
                         mov.s             ebp, esp                                       // 0x007dae86    8bec
                         sub               esp, 0x24                                      // 0x007dae88    83ec24
                         push              ebx                                            // 0x007dae8b    53
                         {disp8} mov       ebx, dword ptr [ebp + 0x0c]                    // 0x007dae8c    8b5d0c
                         push              esi                                            // 0x007dae8f    56
                         {disp8} mov       esi, dword ptr [ebp + 0x08]                    // 0x007dae90    8b7508
                         {disp8} mov       cx, word ptr [ebx + 0x0a]                      // 0x007dae93    668b4b0a
                         xor.s             eax, eax                                       // 0x007dae97    33c0
                         push              edi                                            // 0x007dae99    57
                         {disp8} mov       dword ptr [ebp + -0x14], eax                   // 0x007dae9a    8945ec
                         {disp8} mov       dword ptr [ebp + -0x24], eax                   // 0x007dae9d    8945dc
                         {disp8} mov       dword ptr [ebp + -0x20], eax                   // 0x007daea0    8945e0
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007daea3    8945e4
                         {disp8} mov       ax, word ptr [esi + 0x0a]                      // 0x007daea6    668b460a
                         mov.s             edi, ecx                                       // 0x007daeaa    8bf9
                         mov               edx, 0x00007fff                                // 0x007daeac    baff7f0000
                         xor.s             edi, eax                                       // 0x007daeb1    33f8
                         and.s             eax, edx                                       // 0x007daeb3    23c2
                         and.s             ecx, edx                                       // 0x007daeb5    23ca
                         and               edi, 0x00008000                                // 0x007daeb7    81e700800000
                         cmp               ax, 0x7fff                                     // 0x007daebd    663dff7f
                         lea               edx, dword ptr [ecx + eax * 0x1]               // 0x007daec1    8d1401
                         {disp8} mov       dword ptr [ebp + 0x08], edx                    // 0x007daec4    895508
                         {disp32} jae      _jmp_addr_0x007db085                           // 0x007daec7    0f83b8010000
                         cmp               cx, 0x7fff                                     // 0x007daecd    6681f9ff7f
                         {disp32} jae      _jmp_addr_0x007db085                           // 0x007daed2    0f83ad010000
                         cmp               dx, -0x4003                                    // 0x007daed8    6681fafdbf
                         {disp32} ja       _jmp_addr_0x007db085                           // 0x007daedd    0f87a2010000
                         cmp               dx, 0x3fbf                                     // 0x007daee3    6681fabf3f
                         {disp8} ja        _jmp_addr_0x007daeee                           // 0x007daee8    7704
                         xor.s             eax, eax                                       // 0x007daeea    33c0
                         {disp8} jmp       _jmp_addr_0x007daf28                           // 0x007daeec    eb3a
_jmp_addr_0x007daeee:    test              ax, ax                                         // 0x007daeee    6685c0
                         mov               edx, 0x7fffffff                                // 0x007daef1    baffffff7f
                         {disp8} jne       _jmp_addr_0x007daf10                           // 0x007daef6    7518
                         {disp8} inc       dword ptr [ebp + 0x08]                         // 0x007daef8    ff4508
                         test              dword ptr [esi + 0x08], edx                    // 0x007daefb    855608
                         {disp8} jne       _jmp_addr_0x007daf10                           // 0x007daefe    7510
                         xor.s             eax, eax                                       // 0x007daf00    33c0
                         cmp               dword ptr [esi + 0x04], eax                    // 0x007daf02    394604
                         {disp8} jne       _jmp_addr_0x007daf12                           // 0x007daf05    750b
                         cmp               dword ptr [esi], eax                           // 0x007daf07    3906
                         {disp8} jne       _jmp_addr_0x007daf12                           // 0x007daf09    7507
                         {disp32} jmp      _jmp_addr_0x007db07f                           // 0x007daf0b    e96f010000
_jmp_addr_0x007daf10:    xor.s             eax, eax                                       // 0x007daf10    33c0
_jmp_addr_0x007daf12:    cmp.s             cx, ax                                         // 0x007daf12    663bc8
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf15    751e
                         {disp8} inc       dword ptr [ebp + 0x08]                         // 0x007daf17    ff4508
                         test              dword ptr [ebx + 0x08], edx                    // 0x007daf1a    855308
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf1d    7516
                         cmp               dword ptr [ebx + 0x04], eax                    // 0x007daf1f    394304
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf22    7511
                         cmp               dword ptr [ebx], eax                           // 0x007daf24    3903
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf26    750d
_jmp_addr_0x007daf28:    {disp8} mov       dword ptr [esi + 0x08], eax                    // 0x007daf28    894608
                         {disp8} mov       dword ptr [esi + 0x04], eax                    // 0x007daf2b    894604
                         mov               dword ptr [esi], eax                           // 0x007daf2e    8906
                         {disp32} jmp      _jmp_addr_0x007db0a0                           // 0x007daf30    e96b010000
_jmp_addr_0x007daf35:    {disp8} mov       dword ptr [ebp + -0x10], eax                   // 0x007daf35    8945f0
                         {disp8} lea       eax, dword ptr [ebp + -0x20]                   // 0x007daf38    8d45e0
                         {disp8} mov       dword ptr [ebp + -0x04], eax                   // 0x007daf3b    8945fc
                         {disp8} mov       dword ptr [ebp + 0x0c], 0x00000005             // 0x007daf3e    c7450c05000000
_jmp_addr_0x007daf45:    {disp8} mov       eax, dword ptr [ebp + -0x10]                   // 0x007daf45    8b45f0
                         add.s             eax, eax                                       // 0x007daf48    03c0
                         cmp               dword ptr [ebp + 0x0c], 0x00                   // 0x007daf4a    837d0c00
                         {disp8} jle       _jmp_addr_0x007daf99                           // 0x007daf4e    7e49
                         add.s             eax, esi                                       // 0x007daf50    03c6
                         {disp8} lea       ecx, dword ptr [ebx + 0x08]                    // 0x007daf52    8d4b08
                         {disp8} mov       dword ptr [ebp + -0x08], eax                   // 0x007daf55    8945f8
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007daf58    8b450c
                         {disp8} mov       dword ptr [ebp + -0x0c], ecx                   // 0x007daf5b    894df4
                         {disp8} mov       dword ptr [ebp + -0x18], eax                   // 0x007daf5e    8945e8
_jmp_addr_0x007daf61:    {disp8} mov       eax, dword ptr [ebp + -0x08]                   // 0x007daf61    8b45f8
                         {disp8} mov       ecx, dword ptr [ebp + -0x0c]                   // 0x007daf64    8b4df4
                         movzx             eax, word ptr [eax]                            // 0x007daf67    0fb700
                         movzx             ecx, word ptr [ecx]                            // 0x007daf6a    0fb709
                         imul              eax, ecx                                       // 0x007daf6d    0fafc1
                         {disp8} mov       ecx, dword ptr [ebp + -0x04]                   // 0x007daf70    8b4dfc
                         add               ecx, -0x4                                      // 0x007daf73    83c1fc
                         push              ecx                                            // 0x007daf76    51
                         push              eax                                            // 0x007daf77    50
                         push              dword ptr [ecx]                                // 0x007daf78    ff31
                         call              ___addl                                        // 0x007daf7a    e892f8ffff
                         add               esp, 0x0c                                      // 0x007daf7f    83c40c
                         test              eax, eax                                       // 0x007daf82    85c0
                         {disp8} je        _jmp_addr_0x007daf8c                           // 0x007daf84    7406
                         {disp8} mov       eax, dword ptr [ebp + -0x04]                   // 0x007daf86    8b45fc
                         inc               word ptr [eax]                                 // 0x007daf89    66ff00
_jmp_addr_0x007daf8c:    add               dword ptr [ebp + -0x08], 0x02                  // 0x007daf8c    8345f802
                         sub               dword ptr [ebp + -0x0c], 0x02                  // 0x007daf90    836df402
                         dec               dword ptr [ebp + -0x18]                        // 0x007daf94    ff4de8
                         {disp8} jne       _jmp_addr_0x007daf61                           // 0x007daf97    75c8
_jmp_addr_0x007daf99:    add               dword ptr [ebp + -0x04], 0x02                  // 0x007daf99    8345fc02
                         {disp8} inc       dword ptr [ebp + -0x10]                        // 0x007daf9d    ff45f0
                         dec               dword ptr [ebp + 0x0c]                         // 0x007dafa0    ff4d0c
                         cmp               dword ptr [ebp + 0x0c], 0x00                   // 0x007dafa3    837d0c00
                         {disp8} jg        _jmp_addr_0x007daf45                           // 0x007dafa7    7f9c
                         add               dword ptr [ebp + 0x08], 0x0000c002             // 0x007dafa9    81450802c00000
                         cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafb0    66837d0800
                         {disp8} jle       _jmp_addr_0x007dafdc                           // 0x007dafb5    7e25
_jmp_addr_0x007dafb7:    test              byte ptr [ebp + -0x19], -0x80                  // 0x007dafb7    f645e780
                         {disp8} jne       _jmp_addr_0x007dafd5                           // 0x007dafbb    7518
                         {disp8} lea       eax, dword ptr [ebp + -0x24]                   // 0x007dafbd    8d45dc
                         push              eax                                            // 0x007dafc0    50
                         call              ___shl_12                                      // 0x007dafc1    e8caf8ffff
                         add               dword ptr [ebp + 0x08], 0x0000ffff             // 0x007dafc6    814508ffff0000
                         pop               ecx                                            // 0x007dafcd    59
                         cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafce    66837d0800
                         {disp8} jg        _jmp_addr_0x007dafb7                           // 0x007dafd3    7fe2
_jmp_addr_0x007dafd5:    cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafd5    66837d0800
                         {disp8} jg        _jmp_addr_0x007db015                           // 0x007dafda    7f39
_jmp_addr_0x007dafdc:    add               dword ptr [ebp + 0x08], 0x0000ffff             // 0x007dafdc    814508ffff0000
                         cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafe3    66837d0800
                         {disp8} jge       _jmp_addr_0x007db015                           // 0x007dafe8    7d2b
                         movsx             eax, word ptr [ebp + 0x08]                     // 0x007dafea    0fbf4508
                         neg               eax                                            // 0x007dafee    f7d8
                         add               dword ptr [ebp + 0x08], eax                    // 0x007daff0    014508
                         mov.s             ebx, eax                                       // 0x007daff3    8bd8
_jmp_addr_0x007daff5:    test              byte ptr [ebp + -0x24], 0x01                   // 0x007daff5    f645dc01
                         {disp8} je        _jmp_addr_0x007daffe                           // 0x007daff9    7403
                         {disp8} inc       dword ptr [ebp + -0x14]                        // 0x007daffb    ff45ec
_jmp_addr_0x007daffe:    {disp8} lea       eax, dword ptr [ebp + -0x24]                   // 0x007daffe    8d45dc
                         push              eax                                            // 0x007db001    50
                         call              ___shr_12                                      // 0x007db002    e8b7f8ffff
                         dec               ebx                                            // 0x007db007    4b
                         pop               ecx                                            // 0x007db008    59
                         {disp8} jne       _jmp_addr_0x007daff5                           // 0x007db009    75ea
                         cmp               dword ptr [ebp + -0x14], 0x00                  // 0x007db00b    837dec00
                         {disp8} je        _jmp_addr_0x007db015                           // 0x007db00f    7404
                         or                byte ptr [ebp - 0x24], 1                       // 0x007db011    804ddc01
_jmp_addr_0x007db015:    cmp               word ptr [ebp + -0x24], -0x8000                // 0x007db015    66817ddc0080
                         {disp8} ja        _jmp_addr_0x007db02c                           // 0x007db01b    770f
                         {disp8} mov       eax, dword ptr [ebp + -0x24]                   // 0x007db01d    8b45dc
                         and               eax, 0x0001ffff                                // 0x007db020    25ffff0100
                         cmp               eax, 0x00018000                                // 0x007db025    3d00800100
                         {disp8} jne       _jmp_addr_0x007db061                           // 0x007db02a    7535
_jmp_addr_0x007db02c:    cmp               dword ptr [ebp + -0x22], -0x01                 // 0x007db02c    837ddeff
                         {disp8} jne       _jmp_addr_0x007db05e                           // 0x007db030    752c
                         and               dword ptr [ebp + -0x22], 0x00                  // 0x007db032    8365de00
                         cmp               dword ptr [ebp + -0x1e], -0x01                 // 0x007db036    837de2ff
                         {disp8} jne       _jmp_addr_0x007db059                           // 0x007db03a    751d
                         and               dword ptr [ebp + -0x1e], 0x00                  // 0x007db03c    8365e200
                         .byte             0x66, 0x81, 0x7d, 0xe6, 0xff, 0xff// cmp word ptr [ebp + -0x1a], -0x0001 // 0x007db040    66817de6ffff
                         {disp8} jne       _jmp_addr_0x007db053                           // 0x007db046    750b
                         {disp8} inc       dword ptr [ebp + 0x08]                         // 0x007db048    ff4508
                         {disp8} mov       word ptr [ebp + -0x1a], -0x8000                // 0x007db04b    66c745e60080
                         {disp8} jmp       _jmp_addr_0x007db061                           // 0x007db051    eb0e
_jmp_addr_0x007db053:    {disp8} inc       word ptr [ebp + -0x1a]                         // 0x007db053    66ff45e6
                         {disp8} jmp       _jmp_addr_0x007db061                           // 0x007db057    eb08
_jmp_addr_0x007db059:    {disp8} inc       dword ptr [ebp + -0x1e]                        // 0x007db059    ff45e2
                         {disp8} jmp       _jmp_addr_0x007db061                           // 0x007db05c    eb03
_jmp_addr_0x007db05e:    {disp8} inc       dword ptr [ebp + -0x22]                        // 0x007db05e    ff45de
_jmp_addr_0x007db061:    {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007db061    8b4508
                         cmp               ax, 0x7fff                                     // 0x007db064    663dff7f
                         {disp8} jae       _jmp_addr_0x007db085                           // 0x007db068    731b
                         {disp8} mov       cx, word ptr [ebp + -0x22]                     // 0x007db06a    668b4dde
                         or.s              eax, edi                                       // 0x007db06e    0bc7
                         mov               word ptr [esi], cx                             // 0x007db070    66890e
                         {disp8} mov       ecx, dword ptr [ebp + -0x20]                   // 0x007db073    8b4de0
                         {disp8} mov       dword ptr [esi + 0x02], ecx                    // 0x007db076    894e02
                         {disp8} mov       ecx, dword ptr [ebp + -0x1c]                   // 0x007db079    8b4de4
                         {disp8} mov       dword ptr [esi + 0x06], ecx                    // 0x007db07c    894e06
_jmp_addr_0x007db07f:    {disp8} mov       word ptr [esi + 0x0a], ax                      // 0x007db07f    6689460a
                         {disp8} jmp       _jmp_addr_0x007db0a0                           // 0x007db083    eb1b
_jmp_addr_0x007db085:    neg               di                                             // 0x007db085    66f7df
                         sbb.s             edi, edi                                       // 0x007db088    1bff
                         and               dword ptr [esi + 0x04], 0x00                   // 0x007db08a    83660400
                         and               edi, 0x80000000                                // 0x007db08e    81e700000080
                         add               edi, 0x7fff8000                                // 0x007db094    81c70080ff7f
                         and               dword ptr [esi], 0x00                          // 0x007db09a    832600
                         {disp8} mov       dword ptr [esi + 0x08], edi                    // 0x007db09d    897e08
_jmp_addr_0x007db0a0:    pop               edi                                            // 0x007db0a0    5f
                         pop               esi                                            // 0x007db0a1    5e
                         pop               ebx                                            // 0x007db0a2    5b
                         leave                                                            // 0x007db0a3    c9
                         ret                                                              // 0x007db0a4    c3

___multtenpow12:
                         push              ebp                                            // 0x007db0a5    55
                         mov.s             ebp, esp                                       // 0x007db0a6    8bec
                         sub               esp, 0x0c                                      // 0x007db0a8    83ec0c
                         push              ebx                                            // 0x007db0ab    53
                         mov               ebx, 0x00c30cb0                                // 0x007db0ac    bbb00cc300
                         xor.s             ecx, ecx                                       // 0x007db0b1    33c9
                         sub               ebx, 0x60                                      // 0x007db0b3    83eb60
                         cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007db0b6    394d0c
                         {disp8} je        _jmp_addr_0x007db11e                           // 0x007db0b9    7463
                         {disp8} jge       _jmp_addr_0x007db0cd                           // 0x007db0bb    7d10
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007db0bd    8b450c
                         mov               ebx, 0x00c30e10                                // 0x007db0c0    bb100ec300
                         neg               eax                                            // 0x007db0c5    f7d8
                         {disp8} mov       dword ptr [ebp + 0x0c], eax                    // 0x007db0c7    89450c
                         sub               ebx, 0x60                                      // 0x007db0ca    83eb60
_jmp_addr_0x007db0cd:    cmp               dword ptr [ebp + 0x10], ecx                    // 0x007db0cd    394d10
                         {disp8} jne       _jmp_addr_0x007db0d8                           // 0x007db0d0    7506
                         {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007db0d2    8b4508
                         mov               word ptr [eax], cx                             // 0x007db0d5    668908
_jmp_addr_0x007db0d8:    cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007db0d8    394d0c
                         {disp8} je        _jmp_addr_0x007db11e                           // 0x007db0db    7441
                         push              esi                                            // 0x007db0dd    56
                         push              edi                                            // 0x007db0de    57
_jmp_addr_0x007db0df:    {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007db0df    8b450c
                         add               ebx, 0x54                                      // 0x007db0e2    83c354
                         sar               dword ptr [ebp + 0xc], 3                       // 0x007db0e5    c17d0c03
                         and               eax, 0x07                                      // 0x007db0e9    83e007
                         cmp.s             eax, ecx                                       // 0x007db0ec    3bc1
                         {disp8} je        _jmp_addr_0x007db117                           // 0x007db0ee    7427
                         lea               eax, dword ptr [eax + eax * 0x2]               // 0x007db0f0    8d0440
                         cmp               word ptr [ebx + eax * 0x4], -0x8000            // 0x007db0f3    66813c830080
                         lea               esi, dword ptr [ebx + eax * 0x4]               // 0x007db0f9    8d3483
                         .byte             0x72, 0xc// {disp8} jb _jmp_addr_0x007db10a    // 0x007db0fc    720c
                         {disp8} lea       edi, dword ptr [ebp + -0x0c]                   // 0x007db0fe    8d7df4
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007db101    a5
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007db102    a5
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007db103    a5
                         dec               dword ptr [ebp + -0x0a]                        // 0x007db104    ff4df6
                         {disp8} lea       esi, dword ptr [ebp + -0x0c]                   // 0x007db107    8d75f4
_jmp_addr_0x007db10a:    push              esi                                            // 0x007db10a    56
                         push              dword ptr [ebp + 0x08]                         // 0x007db10b    ff7508
                         call              ___ld12mul                                     // 0x007db10e    e872fdffff
                         pop               ecx                                            // 0x007db113    59
                         pop               ecx                                            // 0x007db114    59
                         xor.s             ecx, ecx                                       // 0x007db115    33c9
_jmp_addr_0x007db117:    cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007db117    394d0c
                         {disp8} jne       _jmp_addr_0x007db0df                           // 0x007db11a    75c3
                         pop               edi                                            // 0x007db11c    5f
                         pop               esi                                            // 0x007db11d    5e
_jmp_addr_0x007db11e:    pop               ebx                                            // 0x007db11e    5b
                         leave                                                            // 0x007db11f    c9
                         ret                                                              // 0x007db120    c3

// w_loc.obj
___crtGetLocaleInfoW:
                         push              ebp                                            // 0x007db121    55
                         mov.s             ebp, esp                                       // 0x007db122    8bec
                         push              -0x1                                           // 0x007db124    6aff
                         push              0x009a1600                                     // 0x007db126    6800169a00
                         push              0x007cd8ac /*__except_handler3*/               // 0x007db12b    68acd87c00
                         {disp32} mov      eax, fs:[0x0]                                  // 0x007db130    64a100000000
                         push              eax                                            // 0x007db136    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007db137    64892500000000
                         sub               esp, 0x14                                      // 0x007db13e    83ec14
                         push              ebx                                            // 0x007db141    53
                         push              esi                                            // 0x007db142    56
                         push              edi                                            // 0x007db143    57
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db144    8965e8
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be570]         // 0x007db147    a17045e800
                         xor.s             edi, edi                                       // 0x007db14c    33ff
                         cmp.s             eax, edi                                       // 0x007db14e    3bc7
                         {disp8} jne       _jmp_addr_0x007db180                           // 0x007db150    752e
                         push              edi                                            // 0x007db152    57
                         push              edi                                            // 0x007db153    57
                         push              0x1                                            // 0x007db154    6a01
                         push              edi                                            // 0x007db156    57
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db157    ff1560928a00
                         test              eax, eax                                       // 0x007db15d    85c0
                         {disp8} je        _jmp_addr_0x007db165                           // 0x007db15f    7404
                         push              0x1                                            // 0x007db161    6a01
                         {disp8} jmp       _jmp_addr_0x007db17a                           // 0x007db163    eb15
_jmp_addr_0x007db165:    push              edi                                            // 0x007db165    57
                         push              edi                                            // 0x007db166    57
                         push              0x1                                            // 0x007db167    6a01
                         push              edi                                            // 0x007db169    57
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db16a    ff1580928a00
                         test              eax, eax                                       // 0x007db170    85c0
                         {disp32} je       _jmp_addr_0x007db220                           // 0x007db172    0f84a8000000
                         push              0x2                                            // 0x007db178    6a02
_jmp_addr_0x007db17a:    pop               eax                                            // 0x007db17a    58
                         {disp32} mov      dword ptr [data_bytes + 0x4be570], eax         // 0x007db17b    a37045e800
_jmp_addr_0x007db180:    cmp               eax, 0x01                                      // 0x007db180    83f801
                         {disp8} jne       _jmp_addr_0x007db19c                           // 0x007db183    7517
                         push              dword ptr [ebp + 0x14]                         // 0x007db185    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db188    ff7510
                         push              dword ptr [ebp + 0x0c]                         // 0x007db18b    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db18e    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db191    ff1560928a00
                         {disp32} jmp      _jmp_addr_0x007db222                           // 0x007db197    e986000000
_jmp_addr_0x007db19c:    cmp               eax, 0x02                                      // 0x007db19c    83f802
                         {disp8} jne       _jmp_addr_0x007db220                           // 0x007db19f    757f
                         cmp               dword ptr [ebp + 0x18], edi                    // 0x007db1a1    397d18
                         {disp8} jne       _jmp_addr_0x007db1ae                           // 0x007db1a4    7508
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007db1a6    a1b042e800
                         {disp8} mov       dword ptr [ebp + 0x18], eax                    // 0x007db1ab    894518
_jmp_addr_0x007db1ae:    push              edi                                            // 0x007db1ae    57
                         push              edi                                            // 0x007db1af    57
                         push              dword ptr [ebp + 0x0c]                         // 0x007db1b0    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db1b3    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db1b6    ff1580928a00
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007db1bc    8945e4
                         cmp.s             eax, edi                                       // 0x007db1bf    3bc7
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1c1    745d
                         {disp8} mov       dword ptr [ebp + -0x04], edi                   // 0x007db1c3    897dfc
                         add               eax, 0x03                                      // 0x007db1c6    83c003
                         and               al, -0x04                                      // 0x007db1c9    24fc
                         call              __chkstk                                       // 0x007db1cb    e8e0bcfeff
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db1d0    8965e8
                         mov.s             esi, esp                                       // 0x007db1d3    8bf4
                         {disp8} mov       dword ptr [ebp + -0x20], esi                   // 0x007db1d5    8975e0
                         {disp8} jmp       _jmp_addr_0x007db1e5                           // 0x007db1d8    eb0b
                         push              0x1                                            // 0x007db1da    6a01
                         pop               eax                                            // 0x007db1dc    58
                         ret                                                              // 0x007db1dd    c3
                         {disp8} mov       esp, dword ptr [ebp + -0x18]                   // 0x007db1de    8b65e8
                         xor.s             edi, edi                                       // 0x007db1e1    33ff
                         xor.s             esi, esi                                       // 0x007db1e3    33f6
_jmp_addr_0x007db1e5:    or                dword ptr [ebp - 4], 0xffffffff                // 0x007db1e5    834dfcff
                         cmp.s             esi, edi                                       // 0x007db1e9    3bf7
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1eb    7433
                         push              dword ptr [ebp + -0x1c]                        // 0x007db1ed    ff75e4
                         push              esi                                            // 0x007db1f0    56
                         push              dword ptr [ebp + 0x0c]                         // 0x007db1f1    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db1f4    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db1f7    ff1580928a00
                         test              eax, eax                                       // 0x007db1fd    85c0
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1ff    741f
                         cmp               dword ptr [ebp + 0x14], edi                    // 0x007db201    397d14
                         {disp8} jne       _jmp_addr_0x007db20a                           // 0x007db204    7504
                         push              edi                                            // 0x007db206    57
                         push              edi                                            // 0x007db207    57
                         {disp8} jmp       _jmp_addr_0x007db210                           // 0x007db208    eb06
_jmp_addr_0x007db20a:    push              dword ptr [ebp + 0x14]                         // 0x007db20a    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db20d    ff7510
_jmp_addr_0x007db210:    push              -0x1                                           // 0x007db210    6aff
                         push              esi                                            // 0x007db212    56
                         push              0x1                                            // 0x007db213    6a01
                         push              dword ptr [ebp + 0x18]                         // 0x007db215    ff7518
                         call              dword ptr [__imp__MultiByteToWideChar@24]       // 0x007db218    ff153c918a00
                         {disp8} jmp       _jmp_addr_0x007db222                           // 0x007db21e    eb02
_jmp_addr_0x007db220:    xor.s             eax, eax                                       // 0x007db220    33c0
_jmp_addr_0x007db222:    {disp8} lea       esp, dword ptr [ebp + -0x30]                   // 0x007db222    8d65d0
                         {disp8} mov       ecx, dword ptr [ebp + -0x10]                   // 0x007db225    8b4df0
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007db228    64890d00000000
                         pop               edi                                            // 0x007db22f    5f
                         pop               esi                                            // 0x007db230    5e
                         pop               ebx                                            // 0x007db231    5b
                         leave                                                            // 0x007db232    c9
                         ret                                                              // 0x007db233    c3
// a_loc.obj
___crtGetLocaleInfoA:    push              ebp                                            // 0x007db234    55
                         mov.s             ebp, esp                                       // 0x007db235    8bec
                         push              -0x1                                           // 0x007db237    6aff
                         push              0x009a1610                                     // 0x007db239    6810169a00
                         push              0x007cd8ac /*__except_handler3*/               // 0x007db23e    68acd87c00
                         {disp32} mov      eax, fs:[0x0]                                  // 0x007db243    64a100000000
                         push              eax                                            // 0x007db249    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007db24a    64892500000000
                         sub               esp, 0x14                                      // 0x007db251    83ec14
                         push              ebx                                            // 0x007db254    53
                         push              esi                                            // 0x007db255    56
                         push              edi                                            // 0x007db256    57
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db257    8965e8
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be574]         // 0x007db25a    a17445e800
                         xor.s             esi, esi                                       // 0x007db25f    33f6
                         cmp.s             eax, esi                                       // 0x007db261    3bc6
                         {disp8} jne       _jmp_addr_0x007db293                           // 0x007db263    752e
                         push              esi                                            // 0x007db265    56
                         push              esi                                            // 0x007db266    56
                         push              0x1                                            // 0x007db267    6a01
                         push              esi                                            // 0x007db269    56
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db26a    ff1560928a00
                         test              eax, eax                                       // 0x007db270    85c0
                         {disp8} je        _jmp_addr_0x007db278                           // 0x007db272    7404
                         push              0x1                                            // 0x007db274    6a01
                         {disp8} jmp       _jmp_addr_0x007db28d                           // 0x007db276    eb15
_jmp_addr_0x007db278:    push              esi                                            // 0x007db278    56
                         push              esi                                            // 0x007db279    56
                         push              0x1                                            // 0x007db27a    6a01
                         push              esi                                            // 0x007db27c    56
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db27d    ff1580928a00
                         test              eax, eax                                       // 0x007db283    85c0
                         {disp32} je       _jmp_addr_0x007db33e                           // 0x007db285    0f84b3000000
                         push              0x2                                            // 0x007db28b    6a02
_jmp_addr_0x007db28d:    pop               eax                                            // 0x007db28d    58
                         {disp32} mov      dword ptr [data_bytes + 0x4be574], eax         // 0x007db28e    a37445e800
_jmp_addr_0x007db293:    cmp               eax, 0x02                                      // 0x007db293    83f802
                         {disp8} jne       _jmp_addr_0x007db2af                           // 0x007db296    7517
                         push              dword ptr [ebp + 0x14]                         // 0x007db298    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db29b    ff7510
                         push              dword ptr [ebp + 0x0c]                         // 0x007db29e    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db2a1    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db2a4    ff1580928a00
                         {disp32} jmp      _jmp_addr_0x007db340                           // 0x007db2aa    e991000000
_jmp_addr_0x007db2af:    cmp               eax, 0x01                                      // 0x007db2af    83f801
                         {disp32} jne      _jmp_addr_0x007db33e                           // 0x007db2b2    0f8586000000
                         cmp               dword ptr [ebp + 0x18], esi                    // 0x007db2b8    397518
                         {disp8} jne       _jmp_addr_0x007db2c5                           // 0x007db2bb    7508
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007db2bd    a1b042e800
                         {disp8} mov       dword ptr [ebp + 0x18], eax                    // 0x007db2c2    894518
_jmp_addr_0x007db2c5:    push              esi                                            // 0x007db2c5    56
                         push              esi                                            // 0x007db2c6    56
                         push              dword ptr [ebp + 0x0c]                         // 0x007db2c7    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db2ca    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db2cd    ff1560928a00
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007db2d3    8945e4
                         cmp.s             eax, esi                                       // 0x007db2d6    3bc6
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db2d8    7464
                         {disp8} mov       dword ptr [ebp + -0x04], esi                   // 0x007db2da    8975fc
                         add.s             eax, eax                                       // 0x007db2dd    03c0
                         add               eax, 0x03                                      // 0x007db2df    83c003
                         and               al, -0x04                                      // 0x007db2e2    24fc
                         call              __chkstk                                       // 0x007db2e4    e8c7bbfeff
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db2e9    8965e8
                         mov.s             edi, esp                                       // 0x007db2ec    8bfc
                         {disp8} mov       dword ptr [ebp + -0x20], edi                   // 0x007db2ee    897de0
                         {disp8} jmp       _jmp_addr_0x007db2fe                           // 0x007db2f1    eb0b
                         push              0x1                                            // 0x007db2f3    6a01
                         pop               eax                                            // 0x007db2f5    58
                         ret                                                              // 0x007db2f6    c3
                         {disp8} mov       esp, dword ptr [ebp + -0x18]                   // 0x007db2f7    8b65e8
                         xor.s             esi, esi                                       // 0x007db2fa    33f6
                         xor.s             edi, edi                                       // 0x007db2fc    33ff
_jmp_addr_0x007db2fe:    or                dword ptr [ebp - 4], 0xffffffff                // 0x007db2fe    834dfcff
                         cmp.s             edi, esi                                       // 0x007db302    3bfe
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db304    7438
                         push              dword ptr [ebp + -0x1c]                        // 0x007db306    ff75e4
                         push              edi                                            // 0x007db309    57
                         push              dword ptr [ebp + 0x0c]                         // 0x007db30a    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db30d    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db310    ff1560928a00
                         test              eax, eax                                       // 0x007db316    85c0
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db318    7424
                         cmp               dword ptr [ebp + 0x14], esi                    // 0x007db31a    397514
                         push              esi                                            // 0x007db31d    56
                         push              esi                                            // 0x007db31e    56
                         {disp8} jne       _jmp_addr_0x007db325                           // 0x007db31f    7504
                         push              esi                                            // 0x007db321    56
                         push              esi                                            // 0x007db322    56
                         {disp8} jmp       _jmp_addr_0x007db32b                           // 0x007db323    eb06
_jmp_addr_0x007db325:    push              dword ptr [ebp + 0x14]                         // 0x007db325    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db328    ff7510
_jmp_addr_0x007db32b:    push              -0x1                                           // 0x007db32b    6aff
                         push              edi                                            // 0x007db32d    57
                         push              0x00000220                                     // 0x007db32e    6820020000
                         push              dword ptr [ebp + 0x18]                         // 0x007db333    ff7518
                         call              dword ptr [__imp__WideCharToMultiByte@32]       // 0x007db336    ff152c928a00
                         {disp8} jmp       _jmp_addr_0x007db340                           // 0x007db33c    eb02
_jmp_addr_0x007db33e:    xor.s             eax, eax                                       // 0x007db33e    33c0
_jmp_addr_0x007db340:    {disp8} lea       esp, dword ptr [ebp + -0x30]                   // 0x007db340    8d65d0
                         {disp8} mov       ecx, dword ptr [ebp + -0x10]                   // 0x007db343    8b4df0
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007db346    64890d00000000
                         pop               edi                                            // 0x007db34d    5f
                         pop               esi                                            // 0x007db34e    5e
                         pop               ebx                                            // 0x007db34f    5b
                         leave                                                            // 0x007db350    c9
                         ret                                                              // 0x007db351    c3
// setmode.obj
__setmode:               push              esi                                            // 0x007db352    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007db353    8b742408
                         cmp               esi, dword ptr [data_bytes + 0x5e6a60]         // 0x007db357    3b3560cafa00
                         {disp8} jae       _jmp_addr_0x007db39b                           // 0x007db35d    733c
                         mov.s             ecx, esi                                       // 0x007db35f    8bce
                         mov.s             eax, esi                                       // 0x007db361    8bc6
                         sar               ecx, 5                                         // 0x007db363    c1f905
                         and               eax, 0x1f                                      // 0x007db366    83e01f
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db369    8b0c8d60c9fa00
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db370    8d04c0
                         test              byte ptr [ecx + eax * 0x4 + 0x04], 0x01        // 0x007db373    f644810401
                         {disp8} je        _jmp_addr_0x007db39b                           // 0x007db378    7421
                         push              edi                                            // 0x007db37a    57
                         push              esi                                            // 0x007db37b    56
                         call              __lock_fhandle                                 // 0x007db37c    e8dce6ffff
                         push              dword ptr [esp + 0x14]                         // 0x007db381    ff742414
                         push              esi                                            // 0x007db385    56
                         call              __setmode_lk                                   // 0x007db386    e820000000
                         push              esi                                            // 0x007db38b    56
                         mov.s             edi, eax                                       // 0x007db38c    8bf8
                         call              __unlock_fhandle                               // 0x007db38e    e829e7ffff
                         add               esp, 0x10                                      // 0x007db393    83c410
                         mov.s             eax, edi                                       // 0x007db396    8bc7
                         pop               edi                                            // 0x007db398    5f
                         pop               esi                                            // 0x007db399    5e
                         ret                                                              // 0x007db39a    c3
_jmp_addr_0x007db39b:    call              __errno                                        // 0x007db39b    e8e1dcfeff
                         mov               dword ptr [eax], 0x00000009                    // 0x007db3a0    c70009000000
                         or                eax, -0x1                                      // 0x007db3a6    83c8ff
                         pop               esi                                            // 0x007db3a9    5e
                         ret                                                              // 0x007db3aa    c3
__setmode_lk:            {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007db3ab    8b442404
                         push              esi                                            // 0x007db3af    56
                         mov.s             ecx, eax                                       // 0x007db3b0    8bc8
                         and               eax, 0x1f                                      // 0x007db3b2    83e01f
                         sar               ecx, 5                                         // 0x007db3b5    c1f905
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db3b8    8d04c0
                         mov               esi, 0x00008000                                // 0x007db3bb    be00800000
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db3c0    8b0c8d60c9fa00
                         {disp8} lea       edx, dword ptr [ecx + eax * 0x4 + 0x04]        // 0x007db3c7    8d548104
                         {disp8} mov       cl, byte ptr [ecx + eax * 0x4 + 0x04]          // 0x007db3cb    8a4c8104
                         mov.s             al, cl                                         // 0x007db3cf    8ac1
                         and               eax, 0x00000080                                // 0x007db3d1    2580000000
                         cmp               dword ptr [esp + 0x0c], esi                    // 0x007db3d6    3974240c
                         {disp8} jne       _jmp_addr_0x007db3e1                           // 0x007db3da    7505
                         and               cl, 0x7f                                       // 0x007db3dc    80e17f
                         {disp8} jmp       _jmp_addr_0x007db3ee                           // 0x007db3df    eb0d
_jmp_addr_0x007db3e1:    cmp               dword ptr [esp + 0x0c], 0x00004000             // 0x007db3e1    817c240c00400000
                         {disp8} jne       _jmp_addr_0x007db3fc                           // 0x007db3e9    7511
                         or                cl, 0x80                                       // 0x007db3eb    80c980
_jmp_addr_0x007db3ee:    neg               eax                                            // 0x007db3ee    f7d8
                         sbb.s             eax, eax                                       // 0x007db3f0    1bc0
                         mov               byte ptr [edx], cl                             // 0x007db3f2    880a
                         and               ax, -0x4000                                    // 0x007db3f4    662500c0
                         add.s             eax, esi                                       // 0x007db3f8    03c6
                         pop               esi                                            // 0x007db3fa    5e
                         ret                                                              // 0x007db3fb    c3
_jmp_addr_0x007db3fc:    call              __errno                                        // 0x007db3fc    e880dcfeff
                         mov               dword ptr [eax], 0x00000016                    // 0x007db401    c70016000000
                         or                eax, -0x1                                      // 0x007db407    83c8ff
                         pop               esi                                            // 0x007db40a    5e
                         ret                                                              // 0x007db40b    c3
                         int3                                                             // 0x007db40c    cc
                         int3                                                             // 0x007db40d    cc
                         int3                                                             // 0x007db40e    cc
                         int3                                                             // 0x007db40f    cc
// End of libcmt.lib
