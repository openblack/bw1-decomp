.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @Update__6ZoomerFf@12
.extern _jmp_addr_0x005b96d0
.extern _jmp_addr_0x005b98d0
.extern _jmp_addr_0x005ba010
.extern _jmp_addr_0x005ba350
.extern _jmp_addr_0x005bb610
.extern _jmp_addr_0x005bb730
.extern _jmp_addr_0x005bb8b0
.extern _jmp_addr_0x005bb980
.extern _jmp_addr_0x005bbd20
.extern _jmp_addr_0x005bc7c0
.extern _jmp_addr_0x005bc7d0
.extern _jmp_addr_0x005bcd00
.extern _jmp_addr_0x005bd0b0
.extern _jmp_addr_0x005bd250
.extern _jmp_addr_0x005bd2a0
.extern _jmp_addr_0x005bd390
.extern _jmp_addr_0x005bd4a0
.extern _jmp_addr_0x005c2800
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007faff0
.extern _jmp_addr_0x007fb3f0
.extern _jmp_addr_0x007fb5c0
.extern _jmp_addr_0x00801c90
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl _jmp_addr_0x005bdda0

start_0x005bdaf0_0x005bf5d0:
// Snippet: asm, [0x005bdaf0, 0x005bf57a)
_jmp_addr_0x005bdaf0:    {disp32} mov       eax, dword ptr [ecx + 0x00003470]                    // 0x005bdaf0    8b8170340000
                         sub                esp, 0x08                                            // 0x005bdaf6    83ec08
                         push               ebx                                                  // 0x005bdaf9    53
                         xor.s              ebx, ebx                                             // 0x005bdafa    33db
                         cmp.s              eax, ebx                                             // 0x005bdafc    3bc3
                         {disp8} je         _jmp_addr_0x005bdb76                                 // 0x005bdafe    7476
                         {disp32} fld       dword ptr [eax + 0x000035dc]                         // 0x005bdb00    d980dc350000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bdb06    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bdb0c    dfe0
                         test               ah, 0x40                                             // 0x005bdb0e    f6c440
                         {disp8} je         _jmp_addr_0x005bdb76                                 // 0x005bdb11    7463
                         cmp                dword ptr [esp + 0x14], ebx                          // 0x005bdb13    395c2414
                         {disp8} je         _jmp_addr_0x005bdb21                                 // 0x005bdb17    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x25fcc]                    // 0x005bdb19    d905ccef8c00
                         {disp8} jmp        _jmp_addr_0x005bdb27                                 // 0x005bdb1f    eb06
_jmp_addr_0x005bdb21:    {disp32} fld       dword ptr [rdata_bytes + 0x1e9a8]                    // 0x005bdb21    d905a8798c00
_jmp_addr_0x005bdb27:    {disp32} fstp      dword ptr [ecx + 0x00003394]                         // 0x005bdb27    d99994330000
                         {disp32} mov       eax, dword ptr [ecx + 0x00003470]                    // 0x005bdb2d    8b8170340000
                         {disp32} fld       dword ptr [eax + 0x000037e4]                         // 0x005bdb33    d980e4370000
                         {disp32} fmul      dword ptr [eax + 0x000035b4]                         // 0x005bdb39    d888b4350000
                         {disp8} fmul       dword ptr [eax + 0x10]                               // 0x005bdb3f    d84810
                         {disp32} fdiv      dword ptr [eax + 0x000035b8]                         // 0x005bdb42    d8b0b8350000
                         fadd.s             st(0), st(0)                                         // 0x005bdb48    dcc0
                         {disp32} fst       dword ptr [ecx + 0x000033a4]                         // 0x005bdb4a    d991a4330000
                         {disp32} fmul      dword ptr [__real@3dcccccd]                          // 0x005bdb50    d80d2cb28a00
                         {disp32} fstp      dword ptr [ecx + 0x000033a0]                         // 0x005bdb56    d999a0330000
                         {disp32} fld       dword ptr [eax + 0x00003514]                         // 0x005bdb5c    d98014350000
                         {disp32} fstp      dword ptr [ecx + 0x00003398]                         // 0x005bdb62    d99998330000
                         {disp32} fld       dword ptr [eax + 0x00003544]                         // 0x005bdb68    d98044350000
                         {disp32} fstp      dword ptr [ecx + 0x0000339c]                         // 0x005bdb6e    d9999c330000
                         {disp8} jmp        _jmp_addr_0x005bdb7c                                 // 0x005bdb74    eb06
_jmp_addr_0x005bdb76:    {disp32} mov       dword ptr [ecx + 0x00003394], ebx                    // 0x005bdb76    899994330000
_jmp_addr_0x005bdb7c:    test               byte ptr [ecx + 0x00003490], 0x08                    // 0x005bdb7c    f6819034000008
                         {disp8} je         _jmp_addr_0x005bdbe7                                 // 0x005bdb83    7462
                         {disp32} mov       eax, dword ptr [ecx + 0x000035ac]                    // 0x005bdb85    8b81ac350000
                         {disp32} mov       edx, dword ptr [ecx + 0x000035b0]                    // 0x005bdb8b    8b91b0350000
                         {disp32} mov       dword ptr [ecx + 0x000033a8], 0x40800000             // 0x005bdb91    c781a833000000008040
                         {disp32} mov       dword ptr [ecx + 0x000033b4], 0x3e4ccccd             // 0x005bdb9b    c781b4330000cdcc4c3e
                         {disp32} mov       dword ptr [ecx + 0x000033b8], 0x3f19999a             // 0x005bdba5    c781b83300009a99193f
                         {disp32} mov       dword ptr [ecx + 0x000033ac], eax                    // 0x005bdbaf    8981ac330000
                         {disp32} mov       dword ptr [ecx + 0x000033b0], edx                    // 0x005bdbb5    8991b0330000
                         {disp32} mov       dword ptr [ecx + 0x000033bc], 0xbf800000             // 0x005bdbbb    c781bc330000000080bf
                         {disp32} mov       dword ptr [ecx + 0x000033c8], 0x3da3d70a             // 0x005bdbc5    c781c83300000ad7a33d
                         {disp32} mov       dword ptr [ecx + 0x000033cc], 0x3e23d70a             // 0x005bdbcf    c781cc3300000ad7233e
                         {disp32} mov       dword ptr [ecx + 0x000033c0], eax                    // 0x005bdbd9    8981c0330000
                         {disp32} mov       dword ptr [ecx + 0x000033c4], edx                    // 0x005bdbdf    8991c4330000
                         {disp8} jmp        _jmp_addr_0x005bdbf3                                 // 0x005bdbe5    eb0c
_jmp_addr_0x005bdbe7:    {disp32} mov       dword ptr [ecx + 0x000033a8], ebx                    // 0x005bdbe7    8999a8330000
                         {disp32} mov       dword ptr [ecx + 0x000033bc], ebx                    // 0x005bdbed    8999bc330000
_jmp_addr_0x005bdbf3:    push               ebp                                                  // 0x005bdbf3    55
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]               // 0x005bdbf4    a1c052e800
                         xor.s              ebp, ebp                                             // 0x005bdbf9    33ed
                         {disp32} mov       bp, word ptr [data_bytes + 0x4bf058]                 // 0x005bdbfb    668b2d5850e800
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf2c4]               // 0x005bdc02    8b15c452e800
                         shr                bp, 1                                                // 0x005bdc08    66d1ed
                         push               esi                                                  // 0x005bdc0b    56
                         {disp32} mov       esi, dword ptr [ecx + 0x00003468]                    // 0x005bdc0c    8bb168340000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x005bdc12    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x005bdc16    89542410
                         and                ebp, 0x0000ffff                                      // 0x005bdc1a    81e5ffff0000
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                          // 0x005bdc20    896c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                               // 0x005bdc24    db44241c
                         xor.s              ebp, ebp                                             // 0x005bdc28    33ed
                         {disp32} mov       bp, word ptr [data_bytes + 0x4bf05a]                 // 0x005bdc2a    668b2d5a50e800
                         shr                bp, 1                                                // 0x005bdc31    66d1ed
                         {disp32} mov       dword ptr [ecx + 0x000033dc], 0x3e23d70a             // 0x005bdc34    c781dc3300000ad7233e
                         {disp32} mov       dword ptr [ecx + 0x000033e0], 0x3f19999a             // 0x005bdc3e    c781e03300009a99193f
                         and                ebp, 0x0000ffff                                      // 0x005bdc48    81e5ffff0000
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                          // 0x005bdc4e    896c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                               // 0x005bdc52    db44241c
                         mov.s              ebp, eax                                             // 0x005bdc56    8be8
                         sub.s              ebp, esi                                             // 0x005bdc58    2bee
                         {disp32} mov       esi, dword ptr [ecx + 0x0000346c]                    // 0x005bdc5a    8bb16c340000
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                          // 0x005bdc60    896c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                               // 0x005bdc64    db44241c
                         mov.s              ebp, edx                                             // 0x005bdc68    8bea
                         sub.s              ebp, esi                                             // 0x005bdc6a    2bee
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                          // 0x005bdc6c    896c241c
                         fdiv               st, st(2)                                            // 0x005bdc70    d8f2
                         {disp32} mov       dword ptr [ecx + 0x00003468], eax                    // 0x005bdc72    898168340000
                         pop                esi                                                  // 0x005bdc78    5e
                         {disp32} mov       dword ptr [ecx + 0x0000346c], edx                    // 0x005bdc79    89916c340000
                         pop                ebp                                                  // 0x005bdc7f    5d
                         {disp8} fild       dword ptr [esp + 0x14]                               // 0x005bdc80    db442414
                         fdiv               st, st(3)                                            // 0x005bdc84    d8f3
                         fld                st(0)                                                // 0x005bdc86    d9c0
                         fmul               st, st(1)                                            // 0x005bdc88    d8c9
                         fld                st(2)                                                // 0x005bdc8a    d9c2
                         fmul               st, st(3)                                            // 0x005bdc8c    d8cb
                         faddp              st(1), st                                            // 0x005bdc8e    dec1
                         fsqrt                                                                   // 0x005bdc90    d9fa
                         fstp               st(2)                                                // 0x005bdc92    ddda
                         fstp               st(0)                                                // 0x005bdc94    ddd8
                         {disp8} fdiv       dword ptr [esp + 0x10]                               // 0x005bdc96    d8742410
                         {disp32} fst       dword ptr [ecx + 0x00003340]                         // 0x005bdc9a    d99140330000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c6c]                    // 0x005bdca0    d80d6c0c9000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]                     // 0x005bdca6    d82578b48a00
                         {disp32} fcom      dword ptr [ecx + 0x000033d0]                         // 0x005bdcac    d891d0330000
                         fnstsw             ax                                                   // 0x005bdcb2    dfe0
                         test               ah, 0x01                                             // 0x005bdcb4    f6c401
                         {disp8} jne        _jmp_addr_0x005bdccb                                 // 0x005bdcb7    7512
                         {disp32} fsub      dword ptr [ecx + 0x000033d0]                         // 0x005bdcb9    d8a1d0330000
                         {disp32} fmul      dword ptr [__real@3e999999]                          // 0x005bdcbf    d80d3cb28a00
                         {disp32} fadd      dword ptr [ecx + 0x000033d0]                         // 0x005bdcc5    d881d0330000
_jmp_addr_0x005bdccb:    {disp32} fstp      dword ptr [ecx + 0x000033d0]                         // 0x005bdccb    d999d0330000
                         {disp8} fild       dword ptr [esp + 0x04]                               // 0x005bdcd1    db442404
                         fsub               st, st(2)                                            // 0x005bdcd5    d8e2
                         fdiv               st, st(2)                                            // 0x005bdcd7    d8f2
                         {disp32} fstp      dword ptr [ecx + 0x000033d4]                         // 0x005bdcd9    d999d4330000
                         {disp8} fild       dword ptr [esp + 0x08]                               // 0x005bdcdf    db442408
                         fsub               st, st(1)                                            // 0x005bdce3    d8e1
                         fdiv               st, st(2)                                            // 0x005bdce5    d8f2
                         {disp32} fstp      dword ptr [ecx + 0x000033d8]                         // 0x005bdce7    d999d8330000
                         {disp32} mov       eax, dword ptr [_game]                               // 0x005bdced    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x0025005c]                    // 0x005bdcf2    8b905c002500
                         {disp32} mov       eax, dword ptr [edx + 0x000045e8]                    // 0x005bdcf8    8b82e8450000
                         fstp               st(0)                                                // 0x005bdcfe    ddd8
                         cmp.s              eax, ebx                                             // 0x005bdd00    3bc3
                         fstp               st(0)                                                // 0x005bdd02    ddd8
                         {disp8} je         _jmp_addr_0x005bdd0c                                 // 0x005bdd04    7406
                         {disp32} mov       dword ptr [ecx + 0x000033d0], ebx                    // 0x005bdd06    8999d0330000
_jmp_addr_0x005bdd0c:    {disp32} mov       dword ptr [ecx + 0x000033ec], ebx                    // 0x005bdd0c    8999ec330000
                         {disp32} mov       dword ptr [ecx + 0x000033e8], ebx                    // 0x005bdd12    8999e8330000
                         {disp32} mov       dword ptr [ecx + 0x000033f0], ebx                    // 0x005bdd18    8999f0330000
                         {disp32} mov       dword ptr [ecx + 0x000033e4], 0xc0800000             // 0x005bdd1e    c781e4330000000080c0
                         {disp32} mov       dword ptr [ecx + 0x000033f4], 0x3f19999a             // 0x005bdd28    c781f43300009a99193f
                         pop                ebx                                                  // 0x005bdd32    5b
                         add                esp, 0x08                                            // 0x005bdd33    83c408
                         ret                0x0008                                               // 0x005bdd36    c20800
                         nop                                                                     // 0x005bdd39    90
                         nop                                                                     // 0x005bdd3a    90
                         nop                                                                     // 0x005bdd3b    90
                         nop                                                                     // 0x005bdd3c    90
                         nop                                                                     // 0x005bdd3d    90
                         nop                                                                     // 0x005bdd3e    90
                         nop                                                                     // 0x005bdd3f    90
_jmp_addr_0x005bdd40:    add                ecx, 0x00003404                                      // 0x005bdd40    81c104340000
                         mov                edx, 0x00000004                                      // 0x005bdd46    ba04000000
_jmp_addr_0x005bdd4b:    {disp8} fld        dword ptr [esp + 0x04]                               // 0x005bdd4b    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x08]                               // 0x005bdd4f    d84908
                         fadd               dword ptr [ecx]                                      // 0x005bdd52    d801
                         fst                dword ptr [ecx]                                      // 0x005bdd54    d911
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bdd56    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bdd5c    dfe0
                         test               ah, 0x01                                             // 0x005bdd5e    f6c401
                         {disp8} je         _jmp_addr_0x005bdd69                                 // 0x005bdd61    7406
                         mov                dword ptr [ecx], 0x00000000                          // 0x005bdd63    c70100000000
_jmp_addr_0x005bdd69:    {disp8} fld        dword ptr [esp + 0x04]                               // 0x005bdd69    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x0c]                               // 0x005bdd6d    d8490c
                         {disp8} fadd       dword ptr [ecx + 0x04]                               // 0x005bdd70    d84104
                         {disp8} fst        dword ptr [ecx + 0x04]                               // 0x005bdd73    d95104
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bdd76    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bdd7c    dfe0
                         test               ah, 0x01                                             // 0x005bdd7e    f6c401
                         {disp8} je         _jmp_addr_0x005bdd8a                                 // 0x005bdd81    7407
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000                   // 0x005bdd83    c7410400000000
_jmp_addr_0x005bdd8a:    add                ecx, 0x1c                                            // 0x005bdd8a    83c11c
                         dec                edx                                                  // 0x005bdd8d    4a
                         {disp8} jne        _jmp_addr_0x005bdd4b                                 // 0x005bdd8e    75bb
                         ret                0x0008                                               // 0x005bdd90    c20800
                         nop                                                                     // 0x005bdd93    90
                         nop                                                                     // 0x005bdd94    90
                         nop                                                                     // 0x005bdd95    90
                         nop                                                                     // 0x005bdd96    90
                         nop                                                                     // 0x005bdd97    90
                         nop                                                                     // 0x005bdd98    90
                         nop                                                                     // 0x005bdd99    90
                         nop                                                                     // 0x005bdd9a    90
                         nop                                                                     // 0x005bdd9b    90
                         nop                                                                     // 0x005bdd9c    90
                         nop                                                                     // 0x005bdd9d    90
                         nop                                                                     // 0x005bdd9e    90
                         nop                                                                     // 0x005bdd9f    90
_jmp_addr_0x005bdda0:    {disp8} fld        dword ptr [esp + 0x04]                               // 0x005bdda0    d9442404
                         sub                esp, 0x60                                            // 0x005bdda4    83ec60
                         push               ebx                                                  // 0x005bdda7    53
                         mov.s              ebx, ecx                                             // 0x005bdda8    8bd9
                         {disp32} fadd      dword ptr [ebx + 0x00003480]                         // 0x005bddaa    d88380340000
                         push               ebp                                                  // 0x005bddb0    55
                         push               esi                                                  // 0x005bddb1    56
                         push               edi                                                  // 0x005bddb2    57
                         {disp32} fstp      dword ptr [ebx + 0x00003480]                         // 0x005bddb3    d99b80340000
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bddb9    d9442474
                         {disp32} fadd      dword ptr [ebx + 0x00003484]                         // 0x005bddbd    d88384340000
                         {disp32} fstp      dword ptr [ebx + 0x00003484]                         // 0x005bddc3    d99b84340000
                         {disp32} mov       al, byte ptr [ebx + 0x00003490]                      // 0x005bddc9    8a8390340000
                         test               al, 0x08                                             // 0x005bddcf    a808
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x005bddd1    d90598a38a00
                         {disp8} je         _jmp_addr_0x005bdde1                                 // 0x005bddd7    7408
                         fstp               st(0)                                                // 0x005bddd9    ddd8
                         {disp32} fld       dword ptr [ebx + 0x00003670]                         // 0x005bdddb    d98370360000
_jmp_addr_0x005bdde1:    {disp32} fcom      dword ptr [ebx + 0x000035dc]                         // 0x005bdde1    d893dc350000
                         fnstsw             ax                                                   // 0x005bdde7    dfe0
                         test               ah, 0x41                                             // 0x005bdde9    f6c441
                         {disp8} jne        _jmp_addr_0x005bde0f                                 // 0x005bddec    7521
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bddee    d9442474
                         {disp32} fadd      dword ptr [ebx + 0x000035dc]                         // 0x005bddf2    d883dc350000
                         {disp32} fst       dword ptr [ebx + 0x000035dc]                         // 0x005bddf8    d993dc350000
                         fcomp              st(1)                                                // 0x005bddfe    d8d9
                         fnstsw             ax                                                   // 0x005bde00    dfe0
                         test               ah, 0x41                                             // 0x005bde02    f6c441
                         {disp8} jne        _jmp_addr_0x005bde3d                                 // 0x005bde05    7536
                         {disp32} fstp      dword ptr [ebx + 0x000035dc]                         // 0x005bde07    d99bdc350000
                         {disp8} jmp        _jmp_addr_0x005bde3f                                 // 0x005bde0d    eb30
_jmp_addr_0x005bde0f:    {disp32} fcom      dword ptr [ebx + 0x000035dc]                         // 0x005bde0f    d893dc350000
                         fnstsw             ax                                                   // 0x005bde15    dfe0
                         test               ah, 0x01                                             // 0x005bde17    f6c401
                         {disp8} je         _jmp_addr_0x005bde3d                                 // 0x005bde1a    7421
                         {disp32} fld       dword ptr [ebx + 0x000035dc]                         // 0x005bde1c    d983dc350000
                         {disp8} fsub       dword ptr [esp + 0x74]                               // 0x005bde22    d8642474
                         {disp32} fst       dword ptr [ebx + 0x000035dc]                         // 0x005bde26    d993dc350000
                         fcomp              st(1)                                                // 0x005bde2c    d8d9
                         fnstsw             ax                                                   // 0x005bde2e    dfe0
                         test               ah, 0x01                                             // 0x005bde30    f6c401
                         {disp8} je         _jmp_addr_0x005bde3d                                 // 0x005bde33    7408
                         {disp32} fstp      dword ptr [ebx + 0x000035dc]                         // 0x005bde35    d99bdc350000
                         {disp8} jmp        _jmp_addr_0x005bde3f                                 // 0x005bde3b    eb02
_jmp_addr_0x005bde3d:    fstp               st(0)                                                // 0x005bde3d    ddd8
_jmp_addr_0x005bde3f:    mov.s              ecx, ebx                                             // 0x005bde3f    8bcb
                         call               _jmp_addr_0x005bb610                                 // 0x005bde41    e8cad7ffff
                         mov.s              ecx, ebx                                             // 0x005bde46    8bcb
                         call               _jmp_addr_0x005bb730                                 // 0x005bde48    e8e3d8ffff
                         test               eax, eax                                             // 0x005bde4d    85c0
                         mov                ecx, 0x3f800000                                      // 0x005bde4f    b90000803f
                         {disp8} je         _jmp_addr_0x005bde6a                                 // 0x005bde54    7414
                         {disp32} mov       dword ptr [ebx + 0x000034d4], ecx                    // 0x005bde56    898bd4340000
                         {disp32} mov       dword ptr [ebx + 0x000034d8], 0x40000000             // 0x005bde5c    c783d834000000000040
                         xor.s              esi, esi                                             // 0x005bde66    33f6
                         {disp8} jmp        _jmp_addr_0x005bde7c                                 // 0x005bde68    eb12
_jmp_addr_0x005bde6a:    xor.s              esi, esi                                             // 0x005bde6a    33f6
                         {disp32} mov       dword ptr [ebx + 0x000034d4], esi                    // 0x005bde6c    89b3d4340000
                         {disp32} mov       dword ptr [ebx + 0x000034d8], 0x3fc00000             // 0x005bde72    c783d83400000000c03f
_jmp_addr_0x005bde7c:    test               byte ptr [ebx + 0x000035d0], 0x40                    // 0x005bde7c    f683d035000040
                         {disp8} je         _jmp_addr_0x005bde95                                 // 0x005bde83    7410
                         {disp32} mov       dword ptr [ebx + 0x000034d4], esi                    // 0x005bde85    89b3d4340000
                         {disp32} mov       dword ptr [ebx + 0x000034d8], 0x40200000             // 0x005bde8b    c783d834000000002040
_jmp_addr_0x005bde95:    cmp                dword ptr [ebx + 0x000037e8], esi                    // 0x005bde95    39b3e8370000
                         {disp8} je         _jmp_addr_0x005bdead                                 // 0x005bde9b    7410
                         {disp32} mov       dword ptr [ebx + 0x000034d4], ecx                    // 0x005bde9d    898bd4340000
                         {disp32} mov       dword ptr [ebx + 0x000034d8], 0x3f000000             // 0x005bdea3    c783d83400000000003f
_jmp_addr_0x005bdead:    {disp32} fld       dword ptr [ebx + 0x000034d0]                         // 0x005bdead    d983d0340000
                         {disp32} fcomp     dword ptr [ebx + 0x000034d4]                         // 0x005bdeb3    d89bd4340000
                         fnstsw             ax                                                   // 0x005bdeb9    dfe0
                         test               ah, 0x01                                             // 0x005bdebb    f6c401
                         {disp8} je         _jmp_addr_0x005bdeef                                 // 0x005bdebe    742f
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bdec0    d9442474
                         {disp32} fmul      dword ptr [ebx + 0x000034d8]                         // 0x005bdec4    d88bd8340000
                         {disp32} fadd      dword ptr [ebx + 0x000034d0]                         // 0x005bdeca    d883d0340000
                         {disp32} fst       dword ptr [ebx + 0x000034d0]                         // 0x005bded0    d993d0340000
                         {disp32} fcomp     dword ptr [ebx + 0x000034d4]                         // 0x005bded6    d89bd4340000
                         fnstsw             ax                                                   // 0x005bdedc    dfe0
                         test               ah, 0x41                                             // 0x005bdede    f6c441
                         {disp8} jne        _jmp_addr_0x005bdeef                                 // 0x005bdee1    750c
                         {disp32} mov       eax, dword ptr [ebx + 0x000034d4]                    // 0x005bdee3    8b83d4340000
                         {disp32} mov       dword ptr [ebx + 0x000034d0], eax                    // 0x005bdee9    8983d0340000
_jmp_addr_0x005bdeef:    {disp32} fld       dword ptr [ebx + 0x000034d0]                         // 0x005bdeef    d983d0340000
                         {disp32} fcomp     dword ptr [ebx + 0x000034d4]                         // 0x005bdef5    d89bd4340000
                         fnstsw             ax                                                   // 0x005bdefb    dfe0
                         test               ah, 0x41                                             // 0x005bdefd    f6c441
                         {disp8} jne        _jmp_addr_0x005bdf31                                 // 0x005bdf00    752f
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bdf02    d9442474
                         {disp32} fmul      dword ptr [ebx + 0x000034d8]                         // 0x005bdf06    d88bd8340000
                         {disp32} fsubr     dword ptr [ebx + 0x000034d0]                         // 0x005bdf0c    d8abd0340000
                         {disp32} fst       dword ptr [ebx + 0x000034d0]                         // 0x005bdf12    d993d0340000
                         {disp32} fcomp     dword ptr [ebx + 0x000034d4]                         // 0x005bdf18    d89bd4340000
                         fnstsw             ax                                                   // 0x005bdf1e    dfe0
                         test               ah, 0x01                                             // 0x005bdf20    f6c401
                         {disp8} je         _jmp_addr_0x005bdf31                                 // 0x005bdf23    740c
                         {disp32} mov       ecx, dword ptr [ebx + 0x000034d4]                    // 0x005bdf25    8b8bd4340000
                         {disp32} mov       dword ptr [ebx + 0x000034d0], ecx                    // 0x005bdf2b    898bd0340000
_jmp_addr_0x005bdf31:    cmp                dword ptr [ebx + 0x00003490], 0x04                   // 0x005bdf31    83bb9034000004
                         {disp8} mov        dword ptr [esp + 0x18], 0x3f800000                   // 0x005bdf38    c74424180000803f
                         {disp8} je         _jmp_addr_0x005bdf4a                                 // 0x005bdf40    7408
                         {disp8} mov        dword ptr [esp + 0x18], 0x3eaaaaab                   // 0x005bdf42    c7442418abaaaa3e
_jmp_addr_0x005bdf4a:    {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x005bdf4a    8b542418
                         push               edx                                                  // 0x005bdf4e    52
                         mov.s              ecx, ebx                                             // 0x005bdf4f    8bcb
                         call               _jmp_addr_0x005ba350                                 // 0x005bdf51    e8fac3ffff
                         {disp8} mov        ebp, dword ptr [esp + 0x78]                          // 0x005bdf56    8b6c2478
                         cmp.s              ebp, esi                                             // 0x005bdf5a    3bee
                         {disp8} je         _jmp_addr_0x005bdf6a                                 // 0x005bdf5c    740c
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                          // 0x005bdf5e    8b44247c
                         push               eax                                                  // 0x005bdf62    50
                         mov.s              ecx, ebx                                             // 0x005bdf63    8bcb
                         call               _jmp_addr_0x005ba010                                 // 0x005bdf65    e8a6c0ffff
_jmp_addr_0x005bdf6a:    {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bdf6a    d9442474
                         {disp32} fadd      dword ptr [ebx + 0x00003528]                         // 0x005bdf6e    d88328350000
                         {disp32} fcom      dword ptr [ebx + 0x0000352c]                         // 0x005bdf74    d8932c350000
                         {disp32} fst       dword ptr [ebx + 0x00003528]                         // 0x005bdf7a    d99328350000
                         fnstsw             ax                                                   // 0x005bdf80    dfe0
                         test               ah, 0x01                                             // 0x005bdf82    f6c401
                         {disp8} jne        _jmp_addr_0x005bdfb5                                 // 0x005bdf85    752e
                         {disp32} mov       ecx, dword ptr [ebx + 0x00003518]                    // 0x005bdf87    8b8b18350000
                         fstp               st(0)                                                // 0x005bdf8d    ddd8
                         {disp32} mov       edx, dword ptr [ebx + 0x0000351c]                    // 0x005bdf8f    8b931c350000
                         {disp32} mov       eax, dword ptr [ebx + 0x0000352c]                    // 0x005bdf95    8b832c350000
                         {disp32} mov       dword ptr [ebx + 0x00003514], ecx                    // 0x005bdf9b    898b14350000
                         {disp32} mov       dword ptr [ebx + 0x00003520], edx                    // 0x005bdfa1    899320350000
                         {disp32} mov       dword ptr [ebx + 0x00003524], esi                    // 0x005bdfa7    89b324350000
                         {disp32} mov       dword ptr [ebx + 0x00003528], eax                    // 0x005bdfad    898328350000
                         {disp8} jmp        _jmp_addr_0x005be02b                                 // 0x005bdfb3    eb76
_jmp_addr_0x005bdfb5:    fld                st(0)                                                // 0x005bdfb5    d9c0
                         fld                st(0)                                                // 0x005bdfb7    d9c0
                         fmulp              st(1), st                                            // 0x005bdfb9    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005bdfbb    d80db4a38a00
                         fld                st(0)                                                // 0x005bdfc1    d9c0
                         fmul               st, st(2)                                            // 0x005bdfc3    d8ca
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x005bdfc5    d80d6cb28a00
                         fld                st(1)                                                // 0x005bdfcb    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x0000353c]                         // 0x005bdfcd    d88b3c350000
                         fld                st(1)                                                // 0x005bdfd3    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x00003540]                         // 0x005bdfd5    d88b40350000
                         faddp              st(1), st                                            // 0x005bdfdb    dec1
                         fld                st(3)                                                // 0x005bdfdd    d9c3
                         {disp32} fmul      dword ptr [ebx + 0x00003538]                         // 0x005bdfdf    d88b38350000
                         faddp              st(1), st                                            // 0x005bdfe5    dec1
                         {disp32} fadd      dword ptr [ebx + 0x00003534]                         // 0x005bdfe7    d88334350000
                         {disp32} fstp      dword ptr [ebx + 0x00003520]                         // 0x005bdfed    d99b20350000
                         fld                st(1)                                                // 0x005bdff3    d9c1
                         fmul               st, st(2)                                            // 0x005bdff5    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                          // 0x005bdff7    d80d68b28a00
                         {disp32} fmul      dword ptr [ebx + 0x00003540]                         // 0x005bdffd    d88b40350000
                         fxch               st(1)                                                // 0x005be003    d9c9
                         {disp32} fmul      dword ptr [ebx + 0x0000353c]                         // 0x005be005    d88b3c350000
                         faddp              st(1), st                                            // 0x005be00b    dec1
                         fxch               st(2)                                                // 0x005be00d    d9ca
                         {disp32} fmul      dword ptr [ebx + 0x00003534]                         // 0x005be00f    d88b34350000
                         faddp              st(2), st                                            // 0x005be015    dec2
                         {disp32} fmul      dword ptr [ebx + 0x00003538]                         // 0x005be017    d88b38350000
                         faddp              st(1), st                                            // 0x005be01d    dec1
                         {disp32} fadd      dword ptr [ebx + 0x00003530]                         // 0x005be01f    d88330350000
                         {disp32} fstp      dword ptr [ebx + 0x00003514]                         // 0x005be025    d99b14350000
_jmp_addr_0x005be02b:    {disp8} fld        dword ptr [esp + 0x74]                               // 0x005be02b    d9442474
                         {disp32} fadd      dword ptr [ebx + 0x00003558]                         // 0x005be02f    d88358350000
                         {disp32} fcom      dword ptr [ebx + 0x0000355c]                         // 0x005be035    d8935c350000
                         {disp32} fst       dword ptr [ebx + 0x00003558]                         // 0x005be03b    d99358350000
                         fnstsw             ax                                                   // 0x005be041    dfe0
                         test               ah, 0x01                                             // 0x005be043    f6c401
                         {disp8} jne        _jmp_addr_0x005be076                                 // 0x005be046    752e
                         {disp32} mov       ecx, dword ptr [ebx + 0x00003548]                    // 0x005be048    8b8b48350000
                         fstp               st(0)                                                // 0x005be04e    ddd8
                         {disp32} mov       edx, dword ptr [ebx + 0x0000354c]                    // 0x005be050    8b934c350000
                         {disp32} mov       eax, dword ptr [ebx + 0x0000355c]                    // 0x005be056    8b835c350000
                         {disp32} mov       dword ptr [ebx + 0x00003544], ecx                    // 0x005be05c    898b44350000
                         {disp32} mov       dword ptr [ebx + 0x00003550], edx                    // 0x005be062    899350350000
                         {disp32} mov       dword ptr [ebx + 0x00003554], esi                    // 0x005be068    89b354350000
                         {disp32} mov       dword ptr [ebx + 0x00003558], eax                    // 0x005be06e    898358350000
                         {disp8} jmp        _jmp_addr_0x005be0ec                                 // 0x005be074    eb76
_jmp_addr_0x005be076:    fld                st(0)                                                // 0x005be076    d9c0
                         fld                st(0)                                                // 0x005be078    d9c0
                         fmulp              st(1), st                                            // 0x005be07a    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005be07c    d80db4a38a00
                         fld                st(0)                                                // 0x005be082    d9c0
                         fmul               st, st(2)                                            // 0x005be084    d8ca
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x005be086    d80d6cb28a00
                         fld                st(1)                                                // 0x005be08c    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x0000356c]                         // 0x005be08e    d88b6c350000
                         fld                st(1)                                                // 0x005be094    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x00003570]                         // 0x005be096    d88b70350000
                         faddp              st(1), st                                            // 0x005be09c    dec1
                         fld                st(3)                                                // 0x005be09e    d9c3
                         {disp32} fmul      dword ptr [ebx + 0x00003568]                         // 0x005be0a0    d88b68350000
                         faddp              st(1), st                                            // 0x005be0a6    dec1
                         {disp32} fadd      dword ptr [ebx + 0x00003564]                         // 0x005be0a8    d88364350000
                         {disp32} fstp      dword ptr [ebx + 0x00003550]                         // 0x005be0ae    d99b50350000
                         fld                st(1)                                                // 0x005be0b4    d9c1
                         fmul               st, st(2)                                            // 0x005be0b6    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                          // 0x005be0b8    d80d68b28a00
                         {disp32} fmul      dword ptr [ebx + 0x00003570]                         // 0x005be0be    d88b70350000
                         fxch               st(1)                                                // 0x005be0c4    d9c9
                         {disp32} fmul      dword ptr [ebx + 0x0000356c]                         // 0x005be0c6    d88b6c350000
                         faddp              st(1), st                                            // 0x005be0cc    dec1
                         fxch               st(2)                                                // 0x005be0ce    d9ca
                         {disp32} fmul      dword ptr [ebx + 0x00003564]                         // 0x005be0d0    d88b64350000
                         faddp              st(2), st                                            // 0x005be0d6    dec2
                         {disp32} fmul      dword ptr [ebx + 0x00003568]                         // 0x005be0d8    d88b68350000
                         faddp              st(1), st                                            // 0x005be0de    dec1
                         {disp32} fadd      dword ptr [ebx + 0x00003560]                         // 0x005be0e0    d88360350000
                         {disp32} fstp      dword ptr [ebx + 0x00003544]                         // 0x005be0e6    d99b44350000
_jmp_addr_0x005be0ec:    {disp8} fld        dword ptr [esp + 0x74]                               // 0x005be0ec    d9442474
                         {disp32} fadd      dword ptr [ebx + 0x00003588]                         // 0x005be0f0    d88388350000
                         {disp32} fcom      dword ptr [ebx + 0x0000358c]                         // 0x005be0f6    d8938c350000
                         {disp32} fst       dword ptr [ebx + 0x00003588]                         // 0x005be0fc    d99388350000
                         fnstsw             ax                                                   // 0x005be102    dfe0
                         test               ah, 0x01                                             // 0x005be104    f6c401
                         {disp8} jne        _jmp_addr_0x005be137                                 // 0x005be107    752e
                         {disp32} mov       ecx, dword ptr [ebx + 0x00003578]                    // 0x005be109    8b8b78350000
                         fstp               st(0)                                                // 0x005be10f    ddd8
                         {disp32} mov       edx, dword ptr [ebx + 0x0000357c]                    // 0x005be111    8b937c350000
                         {disp32} mov       eax, dword ptr [ebx + 0x0000358c]                    // 0x005be117    8b838c350000
                         {disp32} mov       dword ptr [ebx + 0x00003574], ecx                    // 0x005be11d    898b74350000
                         {disp32} mov       dword ptr [ebx + 0x00003580], edx                    // 0x005be123    899380350000
                         {disp32} mov       dword ptr [ebx + 0x00003584], esi                    // 0x005be129    89b384350000
                         {disp32} mov       dword ptr [ebx + 0x00003588], eax                    // 0x005be12f    898388350000
                         {disp8} jmp        _jmp_addr_0x005be1af                                 // 0x005be135    eb78
_jmp_addr_0x005be137:    fld                st(0)                                                // 0x005be137    d9c0
                         fld                st(0)                                                // 0x005be139    d9c0
                         fmulp              st(1), st                                            // 0x005be13b    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005be13d    d80db4a38a00
                         fld                st(0)                                                // 0x005be143    d9c0
                         fmul               st, st(2)                                            // 0x005be145    d8ca
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x005be147    d80d6cb28a00
                         fld                st(1)                                                // 0x005be14d    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x0000359c]                         // 0x005be14f    d88b9c350000
                         fld                st(1)                                                // 0x005be155    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x000035a0]                         // 0x005be157    d88ba0350000
                         faddp              st(1), st                                            // 0x005be15d    dec1
                         fld                st(3)                                                // 0x005be15f    d9c3
                         {disp32} fmul      dword ptr [ebx + 0x00003598]                         // 0x005be161    d88b98350000
                         faddp              st(1), st                                            // 0x005be167    dec1
                         {disp32} fadd      dword ptr [ebx + 0x00003594]                         // 0x005be169    d88394350000
                         {disp32} fstp      dword ptr [ebx + 0x00003580]                         // 0x005be16f    d99b80350000
                         fld                st(1)                                                // 0x005be175    d9c1
                         fmul               st, st(2)                                            // 0x005be177    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                          // 0x005be179    d80d68b28a00
                         {disp32} fmul      dword ptr [ebx + 0x000035a0]                         // 0x005be17f    d88ba0350000
                         fxch               st(1)                                                // 0x005be185    d9c9
                         {disp32} fmul      dword ptr [ebx + 0x0000359c]                         // 0x005be187    d88b9c350000
                         faddp              st(1), st                                            // 0x005be18d    dec1
                         fxch               st(1)                                                // 0x005be18f    d9c9
                         {disp32} fmul      dword ptr [ebx + 0x00003598]                         // 0x005be191    d88b98350000
                         faddp              st(1), st                                            // 0x005be197    dec1
                         fxch               st(1)                                                // 0x005be199    d9c9
                         {disp32} fmul      dword ptr [ebx + 0x00003594]                         // 0x005be19b    d88b94350000
                         faddp              st(1), st                                            // 0x005be1a1    dec1
                         {disp32} fadd      dword ptr [ebx + 0x00003590]                         // 0x005be1a3    d88390350000
                         {disp32} fstp      dword ptr [ebx + 0x00003574]                         // 0x005be1a9    d99b74350000
_jmp_addr_0x005be1af:    {disp8} mov        esi, dword ptr [esp + 0x74]                          // 0x005be1af    8b742474
                         {disp32} lea       edi, dword ptr [ebx + 0x000035e0]                    // 0x005be1b3    8dbbe0350000
                         push               esi                                                  // 0x005be1b9    56
                         mov.s              ecx, edi                                             // 0x005be1ba    8bcf
                         call               @Update__6ZoomerFf@12                                // 0x005be1bc    e85f45e8ff
                         push               esi                                                  // 0x005be1c1    56
                         {disp8} lea        ecx, dword ptr [edi + 0x30]                          // 0x005be1c2    8d4f30
                         call               @Update__6ZoomerFf@12                                // 0x005be1c5    e85645e8ff
                         push               esi                                                  // 0x005be1ca    56
                         {disp8} lea        ecx, dword ptr [edi + 0x60]                          // 0x005be1cb    8d4f60
                         call               @Update__6ZoomerFf@12                                // 0x005be1ce    e84d45e8ff
                         push               ebp                                                  // 0x005be1d3    55
                         push               esi                                                  // 0x005be1d4    56
                         mov.s              ecx, ebx                                             // 0x005be1d5    8bcb
                         call               _jmp_addr_0x005bdaf0                                 // 0x005be1d7    e814f9ffff
                         push               ebp                                                  // 0x005be1dc    55
                         push               esi                                                  // 0x005be1dd    56
                         mov.s              ecx, ebx                                             // 0x005be1de    8bcb
                         call               _jmp_addr_0x005bdd40                                 // 0x005be1e0    e85bfbffff
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005be1e5    d9442474
                         {disp32} fadd      dword ptr [ebx + 0x00003488]                         // 0x005be1e9    d88388340000
                         {disp32} fstp      dword ptr [ebx + 0x00003488]                         // 0x005be1ef    d99b88340000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00002c28]                    // 0x005be1f5    8b8b282c0000
                         {disp32} mov       eax, dword ptr [ebx + 0x00002c30]                    // 0x005be1fb    8b83302c0000
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005be201    d9442474
                         cmp.s              ecx, eax                                             // 0x005be205    3bc8
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]                    // 0x005be207    d80d502c8c00
                         {disp8} je         _jmp_addr_0x005be25f                                 // 0x005be20d    7450
                         {disp8} fstp       dword ptr [esp + 0x7c]                               // 0x005be20f    d95c247c
                         {disp32} fld       dword ptr [ebx + 0x00002c2c]                         // 0x005be213    d9832c2c0000
                         {disp8} fsub       dword ptr [esp + 0x7c]                               // 0x005be219    d864247c
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x005be21d    d81598a38a00
                         {disp32} fst       dword ptr [ebx + 0x00002c2c]                         // 0x005be223    d9932c2c0000
                         fnstsw             ax                                                   // 0x005be229    dfe0
                         test               ah, 0x01                                             // 0x005be22b    f6c401
                         {disp8} je         _jmp_addr_0x005be28a                                 // 0x005be22e    745a
                         fchs                                                                    // 0x005be230    d9e0
                         {disp32} fst       dword ptr [ebx + 0x00002c2c]                         // 0x005be232    d9932c2c0000
                         {disp32} fcomp     dword ptr [ebx + 0x00002c34]                         // 0x005be238    d89b342c0000
                         fnstsw             ax                                                   // 0x005be23e    dfe0
                         test               ah, 0x41                                             // 0x005be240    f6c441
                         {disp8} jne        _jmp_addr_0x005be251                                 // 0x005be243    750c
                         {disp32} mov       edx, dword ptr [ebx + 0x00002c34]                    // 0x005be245    8b93342c0000
                         {disp32} mov       dword ptr [ebx + 0x00002c2c], edx                    // 0x005be24b    89932c2c0000
_jmp_addr_0x005be251:    {disp32} mov       eax, dword ptr [ebx + 0x00002c30]                    // 0x005be251    8b83302c0000
                         {disp32} mov       dword ptr [ebx + 0x00002c28], eax                    // 0x005be257    8983282c0000
                         {disp8} jmp        _jmp_addr_0x005be28c                                 // 0x005be25d    eb2d
_jmp_addr_0x005be25f:    {disp8} fst        dword ptr [esp + 0x7c]                               // 0x005be25f    d954247c
                         {disp32} fadd      dword ptr [ebx + 0x00002c2c]                         // 0x005be263    d8832c2c0000
                         {disp32} fst       dword ptr [ebx + 0x00002c2c]                         // 0x005be269    d9932c2c0000
                         {disp32} fcomp     dword ptr [ebx + 0x00002c34]                         // 0x005be26f    d89b342c0000
                         fnstsw             ax                                                   // 0x005be275    dfe0
                         test               ah, 0x41                                             // 0x005be277    f6c441
                         {disp8} jne        _jmp_addr_0x005be28c                                 // 0x005be27a    7510
                         {disp32} mov       ecx, dword ptr [ebx + 0x00002c34]                    // 0x005be27c    8b8b342c0000
                         {disp32} mov       dword ptr [ebx + 0x00002c2c], ecx                    // 0x005be282    898b2c2c0000
                         {disp8} jmp        _jmp_addr_0x005be28c                                 // 0x005be288    eb02
_jmp_addr_0x005be28a:    fstp               st(0)                                                // 0x005be28a    ddd8
_jmp_addr_0x005be28c:    {disp32} fld       dword ptr [ebx + 0x00002c2c]                         // 0x005be28c    d9832c2c0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005be292    d81d98a38a00
                         fnstsw             ax                                                   // 0x005be298    dfe0
                         test               ah, 0x41                                             // 0x005be29a    f6c441
                         {disp8} je         _jmp_addr_0x005be2af                                 // 0x005be29d    7410
                         xor.s              ecx, ecx                                             // 0x005be29f    33c9
                         {disp32} mov       dword ptr [ebx + 0x00002c2c], ecx                    // 0x005be2a1    898b2c2c0000
                         {disp32} mov       dword ptr [ebx + 0x00002c28], ecx                    // 0x005be2a7    898b282c0000
                         {disp8} jmp        _jmp_addr_0x005be2b1                                 // 0x005be2ad    eb02
_jmp_addr_0x005be2af:    xor.s              ecx, ecx                                             // 0x005be2af    33c9
_jmp_addr_0x005be2b1:    cmp                dword ptr [ebx + 0x00002c30], ecx                    // 0x005be2b1    398b302c0000
                         {disp8} je         _jmp_addr_0x005be2f5                                 // 0x005be2b7    743c
                         {disp32} fld       dword ptr [ebx + 0x00003488]                         // 0x005be2b9    d98388340000
                         {disp32} fcomp     dword ptr [__real@3fc00000]                          // 0x005be2bf    d81d4cb28a00
                         fnstsw             ax                                                   // 0x005be2c5    dfe0
                         test               ah, 0x41                                             // 0x005be2c7    f6c441
                         {disp8} jne        _jmp_addr_0x005be2f5                                 // 0x005be2ca    7529
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005be2cc    d9442474
                         {disp32} fmul      dword ptr [__real@3e999999]                          // 0x005be2d0    d80d3cb28a00
                         {disp32} fsubr     dword ptr [ebx + 0x00002c34]                         // 0x005be2d6    d8ab342c0000
                         {disp32} fst       dword ptr [ebx + 0x00002c34]                         // 0x005be2dc    d993342c0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005be2e2    d81d98a38a00
                         fnstsw             ax                                                   // 0x005be2e8    dfe0
                         test               ah, 0x01                                             // 0x005be2ea    f6c401
                         {disp8} je         _jmp_addr_0x005be2f5                                 // 0x005be2ed    7406
                         {disp32} mov       dword ptr [ebx + 0x00002c34], ecx                    // 0x005be2ef    898b342c0000
_jmp_addr_0x005be2f5:    {disp32} lea       ebp, dword ptr [ebx + 0x00003350]                    // 0x005be2f5    8dab50330000
                         xor.s              eax, eax                                             // 0x005be2fb    33c0
                         mov                ecx, 0x0000000c                                      // 0x005be2fd    b90c000000
                         mov                esi, 0x00ea1d28                                      // 0x005be302    be281dea00
                         mov.s              edi, ebp                                             // 0x005be307    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x005be309    f3a5
                         mov.s              ecx, ebp                                             // 0x005be30b    8bcd
                         {disp8} mov        dword ptr [ebp + 0x24], eax                          // 0x005be30d    894524
                         {disp8} mov        dword ptr [ebp + 0x28], eax                          // 0x005be310    894528
                         {disp8} mov        dword ptr [ebp + 0x2c], eax                          // 0x005be313    89452c
                         call               _jmp_addr_0x007fb3f0                                 // 0x005be316    e8d5d02300
                         {disp8} mov        dword ptr [esp + 0x78], 0x00000000                   // 0x005be31b    c744247800000000
                         {disp32} fld       dword ptr [ebx + 0x000035b4]                         // 0x005be323    d983b4350000
                         {disp32} fmul      dword ptr [ebx + 0x000037e4]                         // 0x005be329    d88be4370000
                         fld                st(0)                                                // 0x005be32f    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x00]                               // 0x005be331    d84d00
                         {disp8} fstp       dword ptr [ebp + 0x00]                               // 0x005be334    d95d00
                         fld                st(0)                                                // 0x005be337    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                               // 0x005be339    d84d04
                         {disp8} fstp       dword ptr [ebp + 0x04]                               // 0x005be33c    d95d04
                         fld                st(0)                                                // 0x005be33f    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x08]                               // 0x005be341    d84d08
                         {disp8} fstp       dword ptr [ebp + 0x08]                               // 0x005be344    d95d08
                         fld                st(0)                                                // 0x005be347    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x0c]                               // 0x005be349    d84d0c
                         {disp8} fstp       dword ptr [ebp + 0x0c]                               // 0x005be34c    d95d0c
                         fld                st(0)                                                // 0x005be34f    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x10]                               // 0x005be351    d84d10
                         {disp8} fstp       dword ptr [ebp + 0x10]                               // 0x005be354    d95d10
                         fld                st(0)                                                // 0x005be357    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x14]                               // 0x005be359    d84d14
                         {disp8} fstp       dword ptr [ebp + 0x14]                               // 0x005be35c    d95d14
                         fld                st(0)                                                // 0x005be35f    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x18]                               // 0x005be361    d84d18
                         {disp8} fstp       dword ptr [ebp + 0x18]                               // 0x005be364    d95d18
                         fld                st(0)                                                // 0x005be367    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x1c]                               // 0x005be369    d84d1c
                         {disp8} fstp       dword ptr [ebp + 0x1c]                               // 0x005be36c    d95d1c
                         {disp8} fmul       dword ptr [ebp + 0x20]                               // 0x005be36f    d84d20
                         {disp8} fstp       dword ptr [ebp + 0x20]                               // 0x005be372    d95d20
                         {disp32} mov       eax, dword ptr [ebx + 0x00003490]                    // 0x005be375    8b8390340000
                         cmp                eax, 0x00000100                                      // 0x005be37b    3d00010000
                         {disp8} jne        _jmp_addr_0x005be38c                                 // 0x005be380    750a
                         {disp8} mov        dword ptr [esp + 0x78], 0x3f800000                   // 0x005be382    c74424780000803f
                         {disp8} jmp        _jmp_addr_0x005be3b6                                 // 0x005be38a    eb2a
_jmp_addr_0x005be38c:    cmp                eax, 0x00000110                                      // 0x005be38c    3d10010000
                         {disp8} jne        _jmp_addr_0x005be39f                                 // 0x005be391    750c
                         {disp32} mov       edx, dword ptr [ebx + 0x00003484]                    // 0x005be393    8b9384340000
                         {disp8} mov        dword ptr [esp + 0x78], edx                          // 0x005be399    89542478
                         {disp8} jmp        _jmp_addr_0x005be3b6                                 // 0x005be39d    eb17
_jmp_addr_0x005be39f:    cmp                eax, 0x00000120                                      // 0x005be39f    3d20010000
                         {disp8} jne        _jmp_addr_0x005be3b6                                 // 0x005be3a4    7510
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x005be3a6    d90590a38a00
                         {disp32} fsub      dword ptr [ebx + 0x00003484]                         // 0x005be3ac    d8a384340000
                         {disp8} fstp       dword ptr [esp + 0x78]                               // 0x005be3b2    d95c2478
_jmp_addr_0x005be3b6:    {disp8} mov        eax, dword ptr [esp + 0x78]                          // 0x005be3b6    8b442478
                         push               eax                                                  // 0x005be3ba    50
                         call               _jmp_addr_0x005bd250                                 // 0x005be3bb    e890eeffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x005be3c0    d90590a38a00
                         fsub               st, st(1)                                            // 0x005be3c6    d8e1
                         add                esp, 0x04                                            // 0x005be3c8    83c404
                         {disp32} fld       dword ptr [ebx + 0x00003580]                         // 0x005be3cb    d98380350000
                         {disp32} fmul      dword ptr [__real@3e999999]                          // 0x005be3d1    d80d3cb28a00
                         {disp32} fadd      dword ptr [ebx + 0x000035c0]                         // 0x005be3d7    d883c0350000
                         fmul               st, st(1)                                            // 0x005be3dd    d8c9
                         fld                st(0)                                                // 0x005be3df    d9c0
                         fcos                                                                    // 0x005be3e1    d9ff
                         {disp8} fstp       dword ptr [esp + 0x78]                               // 0x005be3e3    d95c2478
                         fsin                                                                    // 0x005be3e7    d9fe
                         fld                st(0)                                                // 0x005be3e9    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x0c]                               // 0x005be3eb    d84d0c
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be3ee    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x0c]                               // 0x005be3f2    d84d0c
                         fld                st(2)                                                // 0x005be3f5    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x18]                               // 0x005be3f7    d84d18
                         fsubp              st(1), st                                            // 0x005be3fa    dee9
                         {disp8} fstp       dword ptr [ebp + 0x0c]                               // 0x005be3fc    d95d0c
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be3ff    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x18]                               // 0x005be403    d84d18
                         fadd               st, st(1)                                            // 0x005be406    d8c1
                         {disp8} fstp       dword ptr [ebp + 0x18]                               // 0x005be408    d95d18
                         fstp               st(0)                                                // 0x005be40b    ddd8
                         fld                st(0)                                                // 0x005be40d    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x10]                               // 0x005be40f    d84d10
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be412    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x10]                               // 0x005be416    d84d10
                         fld                st(2)                                                // 0x005be419    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x1c]                               // 0x005be41b    d84d1c
                         fsubp              st(1), st                                            // 0x005be41e    dee9
                         {disp8} fstp       dword ptr [ebp + 0x10]                               // 0x005be420    d95d10
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be423    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x1c]                               // 0x005be427    d84d1c
                         fadd               st, st(1)                                            // 0x005be42a    d8c1
                         {disp8} fstp       dword ptr [ebp + 0x1c]                               // 0x005be42c    d95d1c
                         fstp               st(0)                                                // 0x005be42f    ddd8
                         fld                st(0)                                                // 0x005be431    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x14]                               // 0x005be433    d84d14
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x005be436    d95c2418
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be43a    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x14]                               // 0x005be43e    d84d14
                         fxch               st(1)                                                // 0x005be441    d9c9
                         {disp8} fmul       dword ptr [ebp + 0x20]                               // 0x005be443    d84d20
                         fsubp              st(1), st                                            // 0x005be446    dee9
                         {disp8} fstp       dword ptr [ebp + 0x14]                               // 0x005be448    d95d14
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be44b    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x20]                               // 0x005be44f    d84d20
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x005be452    d8442418
                         {disp8} fstp       dword ptr [ebp + 0x20]                               // 0x005be456    d95d20
                         {disp32} fld       dword ptr [ebx + 0x00003514]                         // 0x005be459    d98314350000
                         {disp32} fmul      dword ptr [_rdata_floatn0p8]                         // 0x005be45f    d80da8a38a00
                         fmulp              st(1), st                                            // 0x005be465    dec9
                         fld                st(0)                                                // 0x005be467    d9c0
                         fcos                                                                    // 0x005be469    d9ff
                         {disp8} fstp       dword ptr [esp + 0x78]                               // 0x005be46b    d95c2478
                         fsin                                                                    // 0x005be46f    d9fe
                         fld                st(0)                                                // 0x005be471    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x00]                               // 0x005be473    d84d00
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be476    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x00]                               // 0x005be47a    d84d00
                         fld                st(2)                                                // 0x005be47d    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x18]                               // 0x005be47f    d84d18
                         faddp              st(1), st                                            // 0x005be482    dec1
                         {disp8} fstp       dword ptr [ebp + 0x00]                               // 0x005be484    d95d00
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be487    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x18]                               // 0x005be48b    d84d18
                         fsub               st, st(1)                                            // 0x005be48e    d8e1
                         {disp8} fstp       dword ptr [ebp + 0x18]                               // 0x005be490    d95d18
                         fstp               st(0)                                                // 0x005be493    ddd8
                         fld                st(0)                                                // 0x005be495    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                               // 0x005be497    d84d04
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be49a    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x04]                               // 0x005be49e    d84d04
                         fld                st(2)                                                // 0x005be4a1    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x1c]                               // 0x005be4a3    d84d1c
                         faddp              st(1), st                                            // 0x005be4a6    dec1
                         {disp8} fstp       dword ptr [ebp + 0x04]                               // 0x005be4a8    d95d04
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be4ab    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x1c]                               // 0x005be4af    d84d1c
                         fsub               st, st(1)                                            // 0x005be4b2    d8e1
                         {disp8} fstp       dword ptr [ebp + 0x1c]                               // 0x005be4b4    d95d1c
                         fstp               st(0)                                                // 0x005be4b7    ddd8
                         fld                st(0)                                                // 0x005be4b9    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x08]                               // 0x005be4bb    d84d08
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x005be4be    d95c2418
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be4c2    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x08]                               // 0x005be4c6    d84d08
                         fxch               st(1)                                                // 0x005be4c9    d9c9
                         {disp8} fmul       dword ptr [ebp + 0x20]                               // 0x005be4cb    d84d20
                         faddp              st(1), st                                            // 0x005be4ce    dec1
                         {disp8} fstp       dword ptr [ebp + 0x08]                               // 0x005be4d0    d95d08
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be4d3    d9442478
                         {disp8} fmul       dword ptr [ebp + 0x20]                               // 0x005be4d7    d84d20
                         {disp8} fsub       dword ptr [esp + 0x18]                               // 0x005be4da    d8642418
                         {disp8} fstp       dword ptr [ebp + 0x20]                               // 0x005be4de    d95d20
                         {disp32} mov       ecx, dword ptr [ebx + 0x000034f4]                    // 0x005be4e1    8b8bf4340000
                         sub                ecx, 0x02                                            // 0x005be4e7    83e902
                         and                ecx, 0x03                                            // 0x005be4ea    83e103
                         sub                ecx, 0x02                                            // 0x005be4ed    83e902
                         {disp8} mov        dword ptr [esp + 0x78], ecx                          // 0x005be4f0    894c2478
                         {disp8} fild       dword ptr [esp + 0x78]                               // 0x005be4f4    db442478
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8d8]                    // 0x005be4f8    d80dd8788c00
                         fmulp              st(1), st                                            // 0x005be4fe    dec9
                         {disp32} fld       dword ptr [ebx + 0x00003504]                         // 0x005be500    d98304350000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005be506    d81d98a38a00
                         fnstsw             ax                                                   // 0x005be50c    dfe0
                         test               ah, 0x01                                             // 0x005be50e    f6c401
                         {disp8} je         _jmp_addr_0x005be525                                 // 0x005be511    7412
                         {disp32} fld       dword ptr [ebx + 0x00003504]                         // 0x005be513    d98304350000
                         {disp32} fadd      dword ptr [__real@40c90fdb]                          // 0x005be519    d80510b28a00
                         {disp32} fstp      dword ptr [ebx + 0x00003504]                         // 0x005be51f    d99b04350000
_jmp_addr_0x005be525:    {disp32} fld       dword ptr [ebx + 0x00003504]                         // 0x005be525    d98304350000
                         {disp32} fcomp     dword ptr [__real@40c90fdb]                          // 0x005be52b    d81d10b28a00
                         fnstsw             ax                                                   // 0x005be531    dfe0
                         test               ah, 0x41                                             // 0x005be533    f6c441
                         {disp8} jne        _jmp_addr_0x005be54a                                 // 0x005be536    7512
                         {disp32} fld       dword ptr [ebx + 0x00003504]                         // 0x005be538    d98304350000
                         {disp32} fsub      dword ptr [__real@40c90fdb]                          // 0x005be53e    d82510b28a00
                         {disp32} fstp      dword ptr [ebx + 0x00003504]                         // 0x005be544    d99b04350000
_jmp_addr_0x005be54a:    {disp32} mov       eax, dword ptr [ebx + 0x00003490]                    // 0x005be54a    8b8390340000
                         cmp                eax, 0x00000100                                      // 0x005be550    3d00010000
                         {disp8} je         _jmp_addr_0x005be566                                 // 0x005be555    740f
                         cmp                eax, 0x00000110                                      // 0x005be557    3d10010000
                         {disp8} je         _jmp_addr_0x005be566                                 // 0x005be55c    7408
                         fstp               st(0)                                                // 0x005be55e    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x005be560    d90598a38a00
_jmp_addr_0x005be566:    {disp32} fsub      dword ptr [ebx + 0x00003504]                         // 0x005be566    d8a304350000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1a6a0]                    // 0x005be56c    d815a0368c00
                         fnstsw             ax                                                   // 0x005be572    dfe0
                         test               ah, 0x41                                             // 0x005be574    f6c441
                         {disp8} jne        _jmp_addr_0x005be57f                                 // 0x005be577    7506
                         {disp32} fsub      dword ptr [__real@40c90fdb]                          // 0x005be579    d82510b28a00
_jmp_addr_0x005be57f:    {disp32} fcom      dword ptr [rdata_bytes + 0x1e9a4]                    // 0x005be57f    d815a4798c00
                         fnstsw             ax                                                   // 0x005be585    dfe0
                         test               ah, 0x01                                             // 0x005be587    f6c401
                         {disp8} je         _jmp_addr_0x005be592                                 // 0x005be58a    7406
                         {disp32} fadd      dword ptr [__real@40c90fdb]                          // 0x005be58c    d80510b28a00
_jmp_addr_0x005be592:    {disp32} fadd      dword ptr [ebx + 0x00003504]                         // 0x005be592    d88304350000
                         {disp32} fcom      dword ptr [ebx + 0x00003504]                         // 0x005be598    d89304350000
                         fnstsw             ax                                                   // 0x005be59e    dfe0
                         test               ah, 0x01                                             // 0x005be5a0    f6c401
                         {disp8} je         _jmp_addr_0x005be5c8                                 // 0x005be5a3    7423
                         {disp32} fld       dword ptr [ebx + 0x00003504]                         // 0x005be5a5    d98304350000
                         {disp8} fsub       dword ptr [esp + 0x7c]                               // 0x005be5ab    d864247c
                         {disp32} fst       dword ptr [ebx + 0x00003504]                         // 0x005be5af    d99304350000
                         fld                st(1)                                                // 0x005be5b5    d9c1
                         fcomp              st(1)                                                // 0x005be5b7    d8d9
                         fnstsw             ax                                                   // 0x005be5b9    dfe0
                         fstp               st(0)                                                // 0x005be5bb    ddd8
                         test               ah, 0x41                                             // 0x005be5bd    f6c441
                         {disp8} jne        _jmp_addr_0x005be5c8                                 // 0x005be5c0    7506
                         {disp32} fst       dword ptr [ebx + 0x00003504]                         // 0x005be5c2    d99304350000
_jmp_addr_0x005be5c8:    {disp32} fcom      dword ptr [ebx + 0x00003504]                         // 0x005be5c8    d89304350000
                         fnstsw             ax                                                   // 0x005be5ce    dfe0
                         test               ah, 0x41                                             // 0x005be5d0    f6c441
                         {disp8} jne        _jmp_addr_0x005be5fa                                 // 0x005be5d3    7525
                         {disp8} fld        dword ptr [esp + 0x7c]                               // 0x005be5d5    d944247c
                         {disp32} fadd      dword ptr [ebx + 0x00003504]                         // 0x005be5d9    d88304350000
                         {disp32} fst       dword ptr [ebx + 0x00003504]                         // 0x005be5df    d99304350000
                         fld                st(1)                                                // 0x005be5e5    d9c1
                         fcomp              st(1)                                                // 0x005be5e7    d8d9
                         fnstsw             ax                                                   // 0x005be5e9    dfe0
                         fstp               st(0)                                                // 0x005be5eb    ddd8
                         test               ah, 0x01                                             // 0x005be5ed    f6c401
                         {disp8} je         _jmp_addr_0x005be5fa                                 // 0x005be5f0    7408
                         {disp32} fstp      dword ptr [ebx + 0x00003504]                         // 0x005be5f2    d99b04350000
                         {disp8} jmp        _jmp_addr_0x005be5fc                                 // 0x005be5f8    eb02
_jmp_addr_0x005be5fa:    fstp               st(0)                                                // 0x005be5fa    ddd8
_jmp_addr_0x005be5fc:    {disp32} fld       dword ptr [ebx + 0x00003504]                         // 0x005be5fc    d98304350000
                         push               0x0                                                  // 0x005be602    6a00
                         fld                st(0)                                                // 0x005be604    d9c0
                         push               ecx                                                  // 0x005be606    51
                         fcos                                                                    // 0x005be607    d9ff
                         {disp32} lea       esi, dword ptr [ebx + 0x00003374]                    // 0x005be609    8db374330000
                         {disp32} fstp      dword ptr [esp + 0x00000080]                         // 0x005be60f    d99c2480000000
                         fsin                                                                    // 0x005be616    d9fe
                         fld                st(0)                                                // 0x005be618    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x00]                               // 0x005be61a    d84d00
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005be61d    d9842480000000
                         {disp8} fmul       dword ptr [ebp + 0x00]                               // 0x005be624    d84d00
                         fld                st(2)                                                // 0x005be627    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x0c]                               // 0x005be629    d84d0c
                         fsubp              st(1), st                                            // 0x005be62c    dee9
                         {disp8} fstp       dword ptr [ebp + 0x00]                               // 0x005be62e    d95d00
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005be631    d9842480000000
                         {disp8} fmul       dword ptr [ebp + 0x0c]                               // 0x005be638    d84d0c
                         fadd               st, st(1)                                            // 0x005be63b    d8c1
                         {disp8} fstp       dword ptr [ebp + 0x0c]                               // 0x005be63d    d95d0c
                         fstp               st(0)                                                // 0x005be640    ddd8
                         fld                st(0)                                                // 0x005be642    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                               // 0x005be644    d84d04
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005be647    d9842480000000
                         {disp8} fmul       dword ptr [ebp + 0x04]                               // 0x005be64e    d84d04
                         fld                st(2)                                                // 0x005be651    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x10]                               // 0x005be653    d84d10
                         fsubp              st(1), st                                            // 0x005be656    dee9
                         {disp8} fstp       dword ptr [ebp + 0x04]                               // 0x005be658    d95d04
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005be65b    d9842480000000
                         {disp8} fmul       dword ptr [ebp + 0x10]                               // 0x005be662    d84d10
                         fadd               st, st(1)                                            // 0x005be665    d8c1
                         {disp8} fstp       dword ptr [ebp + 0x10]                               // 0x005be667    d95d10
                         fstp               st(0)                                                // 0x005be66a    ddd8
                         fld                st(0)                                                // 0x005be66c    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x08]                               // 0x005be66e    d84d08
                         {disp32} fstp      dword ptr [esp + 0x00000084]                         // 0x005be671    d99c2484000000
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005be678    d9842480000000
                         {disp8} fmul       dword ptr [ebp + 0x08]                               // 0x005be67f    d84d08
                         fxch               st(1)                                                // 0x005be682    d9c9
                         {disp8} fmul       dword ptr [ebp + 0x14]                               // 0x005be684    d84d14
                         fsubp              st(1), st                                            // 0x005be687    dee9
                         {disp8} fstp       dword ptr [ebp + 0x08]                               // 0x005be689    d95d08
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005be68c    d9842480000000
                         {disp8} fmul       dword ptr [ebp + 0x14]                               // 0x005be693    d84d14
                         {disp32} fadd      dword ptr [esp + 0x00000084]                         // 0x005be696    d8842484000000
                         {disp8} fstp       dword ptr [ebp + 0x14]                               // 0x005be69d    d95d14
                         {disp32} mov       edx, dword ptr [ebx + 0x00003544]                    // 0x005be6a0    8b9344350000
                         {disp32} fld       dword ptr [ebx + 0x00003574]                         // 0x005be6a6    d98374350000
                         {disp32} mov       eax, dword ptr [ebx + 0x00003514]                    // 0x005be6ac    8b8314350000
                         mov.s              ecx, edx                                             // 0x005be6b2    8bca
                         fchs                                                                    // 0x005be6b4    d9e0
                         fstp               dword ptr [esp]                                      // 0x005be6b6    d91c24
                         push               ecx                                                  // 0x005be6b9    51
                         {disp32} mov       dword ptr [esp + 0x00000084], edx                    // 0x005be6ba    89942484000000
                         mov.s              edx, eax                                             // 0x005be6c1    8bd0
                         {disp32} mov       dword ptr [esp + 0x00000088], eax                    // 0x005be6c3    89842488000000
                         push               edx                                                  // 0x005be6ca    52
                         {disp8} lea        eax, dword ptr [esp + 0x44]                          // 0x005be6cb    8d442444
                         push               eax                                                  // 0x005be6cf    50
                         mov.s              ecx, ebx                                             // 0x005be6d0    8bcb
                         call               _jmp_addr_0x005bd2a0                                 // 0x005be6d2    e8c9ebffff
                         mov                ecx, dword ptr [eax]                                 // 0x005be6d7    8b08
                         mov                dword ptr [esi], ecx                                 // 0x005be6d9    890e
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x005be6db    8b5004
                         {disp8} mov        dword ptr [esi + 0x04], edx                          // 0x005be6de    895604
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x005be6e1    8b4008
                         {disp8} mov        dword ptr [esi + 0x08], eax                          // 0x005be6e4    894608
                         {disp32} fld       dword ptr [ebx + 0x000035dc]                         // 0x005be6e7    d983dc350000
                         {disp8} fst        dword ptr [esp + 0x78]                               // 0x005be6ed    d9542478
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005be6f1    d81d98a38a00
                         fnstsw             ax                                                   // 0x005be6f7    dfe0
                         test               ah, 0x40                                             // 0x005be6f9    f6c440
                         {disp32} jne       _jmp_addr_0x005bea8f                                 // 0x005be6fc    0f858d030000
                         {disp8} mov        ecx, dword ptr [esp + 0x78]                          // 0x005be702    8b4c2478
                         push               ecx                                                  // 0x005be706    51
                         call               _jmp_addr_0x005bd250                                 // 0x005be707    e844ebffff
                         {disp8} fstp       dword ptr [esp + 0x7c]                               // 0x005be70c    d95c247c
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be710    d9442478
                         mov                ecx, 0x0000000c                                      // 0x005be714    b90c000000
                         {disp32} fmul      dword ptr [__real@3e999999]                          // 0x005be719    d80d3cb28a00
                         mov                esi, 0x00ea1d28                                      // 0x005be71f    be281dea00
                         {disp8} lea        edi, dword ptr [esp + 0x44]                          // 0x005be724    8d7c2444
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x005be728    f3a5
                         {disp32} fadd      dword ptr [data_bytes + 0x34faa4]                    // 0x005be72a    d805a45ad100
                         {disp32} fstp      dword ptr [data_bytes + 0x34faa4]                    // 0x005be730    d91da45ad100
                         add                esp, 0x04                                            // 0x005be736    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                          // 0x005be739    8d4c2440
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000                   // 0x005be73d    c744246400000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000                   // 0x005be745    c744246800000000
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000                   // 0x005be74d    c744246c00000000
                         call               _jmp_addr_0x007fb3f0                                 // 0x005be755    e896cc2300
                         {disp32} fld       dword ptr [ebx + 0x000035e0]                         // 0x005be75a    d983e0350000
                         {disp8} fst        dword ptr [esp + 0x28]                               // 0x005be760    d9542428
                         {disp8} mov        edx, dword ptr [esp + 0x28]                          // 0x005be764    8b542428
                         {disp32} fld       dword ptr [ebx + 0x00003610]                         // 0x005be768    d98310360000
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x005be76e    8954241c
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x005be772    d95c242c
                         {disp32} fld       dword ptr [ebx + 0x00003640]                         // 0x005be776    d98340360000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x005be77c    8b44242c
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x005be780    d95c2430
                         {disp32} fld       dword ptr [data_bytes + 0x34faa4]                    // 0x005be784    d905a45ad100
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                          // 0x005be78a    8b4c2430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c8c]                    // 0x005be78e    d80d8c0c9000
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x005be794    89442420
                         mov.s              edx, ecx                                             // 0x005be798    8bd1
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x005be79a    894c2424
                         fsin                                                                    // 0x005be79e    d9fe
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x005be7a0    89542424
                         {disp32} fadd      dword ptr [ebx + 0x00003678]                         // 0x005be7a4    d88378360000
                         fxch               st(1)                                                // 0x005be7aa    d9c9
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x005be7ac    d95c241c
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x005be7b0    d8442420
                         {disp32} fld       dword ptr [ebx + 0x00003674]                         // 0x005be7b4    d98374360000
                         {disp8} fld        dword ptr [esp + 0x40]                               // 0x005be7ba    d9442440
                         fmul               st, st(1)                                            // 0x005be7be    d8c9
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x005be7c0    d95c2428
                         {disp8} fld        dword ptr [esp + 0x44]                               // 0x005be7c4    d9442444
                         fmul               st, st(1)                                            // 0x005be7c8    d8c9
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x005be7ca    d95c242c
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x005be7ce    d9442448
                         fmul               st, st(1)                                            // 0x005be7d2    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x005be7d4    d95c2430
                         fstp               st(0)                                                // 0x005be7d8    ddd8
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x005be7da    d944241c
                         {disp8} fsub       dword ptr [esp + 0x28]                               // 0x005be7de    d8642428
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x005be7e2    d95c241c
                         {disp8} fsub       dword ptr [esp + 0x2c]                               // 0x005be7e6    d864242c
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x005be7ea    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x005be7ee    d9442424
                         {disp8} fsub       dword ptr [esp + 0x30]                               // 0x005be7f2    d8642430
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x005be7f6    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x005be7fa    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x005be7fe    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x005be804    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x005be80a    e8f12b1e00
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x005be80f    d9442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x005be813    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x005be819    89442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x005be81d    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x005be823    e8d82b1e00
                         {disp8} mov        dword ptr [esp + 0x2c], eax                          // 0x005be828    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000                   // 0x005be82c    c744243000000000
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                          // 0x005be834    8d4c2428
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x005be838    e853482400
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]                    // 0x005be83d    d805502c8c00
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x005be843    d9442420
                         fcomp              st(1)                                                // 0x005be847    d8d9
                         fnstsw             ax                                                   // 0x005be849    dfe0
                         test               ah, 0x01                                             // 0x005be84b    f6c401
                         {disp8} je         _jmp_addr_0x005be856                                 // 0x005be84e    7406
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x005be850    d95c2420
                         {disp8} jmp        _jmp_addr_0x005be858                                 // 0x005be854    eb02
_jmp_addr_0x005be856:    fstp               st(0)                                                // 0x005be856    ddd8
_jmp_addr_0x005be858:    {disp8} fld        dword ptr [esp + 0x40]                               // 0x005be858    d9442440
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                          // 0x005be85c    8b4c2420
                         {disp8} fsub       dword ptr [ebp + 0x00]                               // 0x005be860    d86500
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x005be863    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x24]                          // 0x005be867    8b542424
                         {disp8} mov        dword ptr [esp + 0x68], ecx                          // 0x005be86b    894c2468
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be86f    d84c2478
                         mov.s              ecx, ebp                                             // 0x005be873    8bcd
                         {disp8} mov        dword ptr [esp + 0x64], eax                          // 0x005be875    89442464
                         {disp8} fadd       dword ptr [ebp + 0x00]                               // 0x005be879    d84500
                         {disp8} mov        dword ptr [esp + 0x6c], edx                          // 0x005be87c    8954246c
                         {disp8} fstp       dword ptr [ebp + 0x00]                               // 0x005be880    d95d00
                         {disp8} fld        dword ptr [esp + 0x44]                               // 0x005be883    d9442444
                         {disp8} fsub       dword ptr [ebp + 0x04]                               // 0x005be887    d86504
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be88a    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x04]                               // 0x005be88e    d84504
                         {disp8} fstp       dword ptr [ebp + 0x04]                               // 0x005be891    d95d04
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x005be894    d9442448
                         {disp8} fsub       dword ptr [ebp + 0x08]                               // 0x005be898    d86508
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be89b    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x08]                               // 0x005be89f    d84508
                         {disp8} fstp       dword ptr [ebp + 0x08]                               // 0x005be8a2    d95d08
                         {disp8} fld        dword ptr [esp + 0x4c]                               // 0x005be8a5    d944244c
                         {disp8} fsub       dword ptr [ebp + 0x0c]                               // 0x005be8a9    d8650c
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be8ac    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x0c]                               // 0x005be8b0    d8450c
                         {disp8} fstp       dword ptr [ebp + 0x0c]                               // 0x005be8b3    d95d0c
                         {disp8} fld        dword ptr [esp + 0x50]                               // 0x005be8b6    d9442450
                         {disp8} fsub       dword ptr [ebp + 0x10]                               // 0x005be8ba    d86510
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be8bd    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x10]                               // 0x005be8c1    d84510
                         {disp8} fstp       dword ptr [ebp + 0x10]                               // 0x005be8c4    d95d10
                         {disp8} fld        dword ptr [esp + 0x54]                               // 0x005be8c7    d9442454
                         {disp8} fsub       dword ptr [ebp + 0x14]                               // 0x005be8cb    d86514
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be8ce    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x14]                               // 0x005be8d2    d84514
                         {disp8} fstp       dword ptr [ebp + 0x14]                               // 0x005be8d5    d95d14
                         {disp8} fld        dword ptr [esp + 0x58]                               // 0x005be8d8    d9442458
                         {disp8} fsub       dword ptr [ebp + 0x18]                               // 0x005be8dc    d86518
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be8df    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x18]                               // 0x005be8e3    d84518
                         {disp8} fstp       dword ptr [ebp + 0x18]                               // 0x005be8e6    d95d18
                         {disp8} fld        dword ptr [esp + 0x5c]                               // 0x005be8e9    d944245c
                         {disp8} fsub       dword ptr [ebp + 0x1c]                               // 0x005be8ed    d8651c
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be8f0    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x1c]                               // 0x005be8f4    d8451c
                         {disp8} fstp       dword ptr [ebp + 0x1c]                               // 0x005be8f7    d95d1c
                         {disp8} fld        dword ptr [esp + 0x60]                               // 0x005be8fa    d9442460
                         {disp8} fsub       dword ptr [ebp + 0x20]                               // 0x005be8fe    d86520
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be901    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x20]                               // 0x005be905    d84520
                         {disp8} fstp       dword ptr [ebp + 0x20]                               // 0x005be908    d95d20
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x005be90b    d944241c
                         {disp8} fsub       dword ptr [ebp + 0x24]                               // 0x005be90f    d86524
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be912    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x24]                               // 0x005be916    d84524
                         {disp8} fstp       dword ptr [ebp + 0x24]                               // 0x005be919    d95d24
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x005be91c    d9442420
                         {disp8} fsub       dword ptr [ebp + 0x28]                               // 0x005be920    d86528
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be923    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x28]                               // 0x005be927    d84528
                         {disp8} fstp       dword ptr [ebp + 0x28]                               // 0x005be92a    d95d28
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x005be92d    d9442424
                         {disp8} fsub       dword ptr [ebp + 0x2c]                               // 0x005be931    d8652c
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005be934    d84c2478
                         {disp8} fadd       dword ptr [ebp + 0x2c]                               // 0x005be938    d8452c
                         {disp8} fstp       dword ptr [ebp + 0x2c]                               // 0x005be93b    d95d2c
                         call               _jmp_addr_0x007fb5c0                                 // 0x005be93e    e87dcc2300
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x005be943    d9442478
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]                    // 0x005be947    d80d502c8c00
                         {disp8} lea        eax, dword ptr [esp + 0x7c]                          // 0x005be94d    8d44247c
                         push               eax                                                  // 0x005be951    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x005be952    8d4c241c
                         {disp32} fadd      dword ptr [_rdata_float1p0]                          // 0x005be956    d80590a38a00
                         push               ecx                                                  // 0x005be95c    51
                         {disp32} lea       eax, dword ptr [ebx + 0x00003374]                    // 0x005be95d    8d8374330000
                         push               eax                                                  // 0x005be963    50
                         {disp32} fmul      dword ptr [ebx + 0x000035b4]                         // 0x005be964    d88bb4350000
                         {disp32} fmul      dword ptr [ebx + 0x000037e4]                         // 0x005be96a    d88be4370000
                         fld                st(0)                                                // 0x005be970    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x00]                               // 0x005be972    d84d00
                         {disp8} fstp       dword ptr [ebp + 0x00]                               // 0x005be975    d95d00
                         fld                st(0)                                                // 0x005be978    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                               // 0x005be97a    d84d04
                         {disp8} fstp       dword ptr [ebp + 0x04]                               // 0x005be97d    d95d04
                         fld                st(0)                                                // 0x005be980    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x08]                               // 0x005be982    d84d08
                         {disp8} fstp       dword ptr [ebp + 0x08]                               // 0x005be985    d95d08
                         fld                st(0)                                                // 0x005be988    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x0c]                               // 0x005be98a    d84d0c
                         {disp8} fstp       dword ptr [ebp + 0x0c]                               // 0x005be98d    d95d0c
                         fld                st(0)                                                // 0x005be990    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x10]                               // 0x005be992    d84d10
                         {disp8} fstp       dword ptr [ebp + 0x10]                               // 0x005be995    d95d10
                         fld                st(0)                                                // 0x005be998    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x14]                               // 0x005be99a    d84d14
                         {disp8} fstp       dword ptr [ebp + 0x14]                               // 0x005be99d    d95d14
                         fld                st(0)                                                // 0x005be9a0    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x18]                               // 0x005be9a2    d84d18
                         {disp8} fstp       dword ptr [ebp + 0x18]                               // 0x005be9a5    d95d18
                         fld                st(0)                                                // 0x005be9a8    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x1c]                               // 0x005be9aa    d84d1c
                         {disp8} fstp       dword ptr [ebp + 0x1c]                               // 0x005be9ad    d95d1c
                         {disp8} fmul       dword ptr [ebp + 0x20]                               // 0x005be9b0    d84d20
                         {disp8} fstp       dword ptr [ebp + 0x20]                               // 0x005be9b3    d95d20
                         call               _jmp_addr_0x00801c90                                 // 0x005be9b6    e8d5322400
                         {disp32} fld       dword ptr [esp + 0x00000084]                         // 0x005be9bb    d9842484000000
                         add                esp, 0x0c                                            // 0x005be9c2    83c40c
                         {disp32} fmul      dword ptr [__real@437f0000]                          // 0x005be9c5    d80d70b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x005be9cb    e8302a1e00
                         {disp8} mov        edx, dword ptr [esp + 0x7c]                          // 0x005be9d0    8b54247c
                         {disp8} mov        ecx, dword ptr [ebx + 0x1c]                          // 0x005be9d4    8b4b1c
                         mov                esi, dword ptr [ecx]                                 // 0x005be9d7    8b31
                         mov.s              ecx, edx                                             // 0x005be9d9    8bca
                         mov.s              edi, edx                                             // 0x005be9db    8bfa
                         and                edi, 0x0000ff00                                      // 0x005be9dd    81e700ff0000
                         imul               edi, eax                                             // 0x005be9e3    0faff8
                         and                ecx, 0x00ff0000                                      // 0x005be9e6    81e10000ff00
                         imul               ecx, eax                                             // 0x005be9ec    0fafc8
                         and                edi, 0x00ff0000                                      // 0x005be9ef    81e70000ff00
                         and                ecx, 0xff0000ff                                      // 0x005be9f5    81e1ff0000ff
                         or.s               ecx, edi                                             // 0x005be9fb    0bcf
                         mov.s              edi, edx                                             // 0x005be9fd    8bfa
                         and                edi, 0x000000ff                                      // 0x005be9ff    81e7ff000000
                         imul               edi, eax                                             // 0x005bea05    0faff8
                         and                edi, 0x0000ff00                                      // 0x005bea08    81e700ff0000
                         or.s               ecx, edi                                             // 0x005bea0e    0bcf
                         and                edx, 0xff000000                                      // 0x005bea10    81e2000000ff
                         shr                ecx, 8                                               // 0x005bea16    c1e908
                         or.s               ecx, edx                                             // 0x005bea19    0bca
                         push               ecx                                                  // 0x005bea1b    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x005bea1c    8b4c241c
                         mov.s              edx, ecx                                             // 0x005bea20    8bd1
                         and                edx, 0x000000ff                                      // 0x005bea22    81e2ff000000
                         sub                edx, 0x000000ff                                      // 0x005bea28    81eaff000000
                         mov.s              edi, ecx                                             // 0x005bea2e    8bf9
                         imul               edx, eax                                             // 0x005bea30    0fafd0
                         and                edi, 0x00ff0000                                      // 0x005bea33    81e70000ff00
                         sub                edi, 0x00ff0000                                      // 0x005bea39    81ef0000ff00
                         imul               edi, eax                                             // 0x005bea3f    0faff8
                         shr                edx, 8                                               // 0x005bea42    c1ea08
                         shr                edi, 8                                               // 0x005bea45    c1ef08
                         dec                edx                                                  // 0x005bea48    4a
                         sub                edi, 0x00010000                                      // 0x005bea49    81ef00000100
                         and                edi, 0x00ff0000                                      // 0x005bea4f    81e70000ff00
                         and                edx, 0x000000ff                                      // 0x005bea55    81e2ff000000
                         or.s               edx, edi                                             // 0x005bea5b    0bd7
                         mov.s              edi, ecx                                             // 0x005bea5d    8bf9
                         and                edi, 0x0000ff00                                      // 0x005bea5f    81e700ff0000
                         sub                edi, 0x0000ff00                                      // 0x005bea65    81ef00ff0000
                         imul               edi, eax                                             // 0x005bea6b    0faff8
                         shr                edi, 8                                               // 0x005bea6e    c1ef08
                         sub                edi, 0x00000100                                      // 0x005bea71    81ef00010000
                         and                edi, 0x0000ff00                                      // 0x005bea77    81e700ff0000
                         and                ecx, 0xff000000                                      // 0x005bea7d    81e1000000ff
                         or.s               edx, edi                                             // 0x005bea83    0bd7
                         or.s               edx, ecx                                             // 0x005bea85    0bd1
                         {disp8} mov        ecx, dword ptr [ebx + 0x1c]                          // 0x005bea87    8b4b1c
                         call               dword ptr [esi + 0x2c]                               // 0x005bea8a    ff562c
                         {disp8} jmp        _jmp_addr_0x005bea9c                                 // 0x005bea8d    eb0d
_jmp_addr_0x005bea8f:    {disp8} mov        ecx, dword ptr [ebx + 0x1c]                          // 0x005bea8f    8b4b1c
                         mov                eax, dword ptr [ecx]                                 // 0x005bea92    8b01
                         push               0x0                                                  // 0x005bea94    6a00
                         or                 edx, 0xffffffff                                      // 0x005bea96    83caff
                         call               dword ptr [eax + 0x2c]                               // 0x005bea99    ff502c
_jmp_addr_0x005bea9c:    xor.s              esi, esi                                             // 0x005bea9c    33f6
                         push               esi                                                  // 0x005bea9e    56
                         mov.s              ecx, ebx                                             // 0x005bea9f    8bcb
                         call               _jmp_addr_0x005bb8b0                                 // 0x005beaa1    e80aceffff
                         {disp32} mov       eax, dword ptr [ebx + 0x00003490]                    // 0x005beaa6    8b8390340000
                         cmp                eax, 0x00000100                                      // 0x005beaac    3d00010000
                         {disp32} mov       edi, dword ptr [esp + 0x00000080]                    // 0x005beab1    8bbc2480000000
                         {disp8} je         _jmp_addr_0x005beae8                                 // 0x005beab8    742e
                         cmp                eax, 0x04                                            // 0x005beaba    83f804
                         {disp8} jne        _jmp_addr_0x005beacc                                 // 0x005beabd    750d
                         test               byte ptr [ebx + 0x000035d0], 0x02                    // 0x005beabf    f683d035000002
                         {disp8} jne        _jmp_addr_0x005beacc                                 // 0x005beac6    7504
                         xor.s              eax, eax                                             // 0x005beac8    33c0
                         {disp8} jmp        _jmp_addr_0x005bead1                                 // 0x005beaca    eb05
_jmp_addr_0x005beacc:    mov                eax, 0x00000001                                      // 0x005beacc    b801000000
_jmp_addr_0x005bead1:    {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bead1    d9442474
                         push               edi                                                  // 0x005bead5    57
                         {disp32} fmul      dword ptr [ebx + 0x00002e64]                         // 0x005bead6    d88b642e0000
                         push               ecx                                                  // 0x005beadc    51
                         mov.s              ecx, ebx                                             // 0x005beadd    8bcb
                         fstp               dword ptr [esp]                                      // 0x005beadf    d91c24
                         push               eax                                                  // 0x005beae2    50
                         call               _jmp_addr_0x005bc7d0                                 // 0x005beae3    e8e8dcffff
_jmp_addr_0x005beae8:    test               byte ptr [ebx + 0x000035d0], 0x04                    // 0x005beae8    f683d035000004
                         {disp8} jne        _jmp_addr_0x005beafd                                 // 0x005beaef    750c
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                          // 0x005beaf1    8b4c2474
                         push               ecx                                                  // 0x005beaf5    51
                         mov.s              ecx, ebx                                             // 0x005beaf6    8bcb
                         call               _jmp_addr_0x005bd0b0                                 // 0x005beaf8    e8b3e5ffff
_jmp_addr_0x005beafd:    {disp8} mov        edx, dword ptr [esp + 0x74]                          // 0x005beafd    8b542474
                         push               edi                                                  // 0x005beb01    57
                         push               edx                                                  // 0x005beb02    52
                         mov.s              ecx, ebx                                             // 0x005beb03    8bcb
                         call               _jmp_addr_0x005bcd00                                 // 0x005beb05    e8f6e1ffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x005beb0a    d90590a38a00
                         {disp32} mov       eax, dword ptr [ebx + 0x00003490]                    // 0x005beb10    8b8390340000
                         {disp32} fsub      dword ptr [ebx + 0x000035a8]                         // 0x005beb16    d8a3a8350000
                         cmp                eax, 0x40                                            // 0x005beb1c    83f840
                         {disp8} mov        dword ptr [esp + 0x7c], eax                          // 0x005beb1f    8944247c
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005beb23    d95c2410
                         {disp8} mov        dword ptr [esp + 0x78], 0x3f800000                   // 0x005beb27    c74424780000803f
                         {disp32} jg        _jmp_addr_0x005bed41                                 // 0x005beb2f    0f8f0c020000
                         {disp32} je        _jmp_addr_0x005bece7                                 // 0x005beb35    0f84ac010000
                         add                eax, -0x09                                           // 0x005beb3b    83c0f7
                         cmp                eax, 0x21                                            // 0x005beb3e    83f821
                         {disp32} ja        _jmp_addr_0x005beeb1                                 // 0x005beb41    0f876a030000
                         xor.s              ecx, ecx                                             // 0x005beb47    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x005bf598]                      // 0x005beb49    8a8898f55b00
                         jmp                dword ptr [ecx*4 + 0x5bf57c]                         // 0x005beb4f    ff248d7cf55b00
                         test               byte ptr [ebx + 0x000035d0], 0x10                    // 0x005beb56    f683d035000010
                         {disp8} jne        _jmp_addr_0x005beb89                                 // 0x005beb5d    752a
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005beb5f    d9442410
                         push               esi                                                  // 0x005beb63    56
                         {disp32} fmul      dword ptr [ebx + 0x00003484]                         // 0x005beb64    d88b84340000
                         push               esi                                                  // 0x005beb6a    56
                         mov.s              ecx, ebx                                             // 0x005beb6b    8bcb
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]                     // 0x005beb6d    d80d18b48a00
                         {disp32} fstp      dword ptr [esp + 0x00000080]                         // 0x005beb73    d99c2480000000
                         {disp32} mov       edx, dword ptr [esp + 0x00000080]                    // 0x005beb7a    8b942480000000
                         push               edx                                                  // 0x005beb81    52
                         push               0x1b                                                 // 0x005beb82    6a1b
                         call               _jmp_addr_0x005bb980                                 // 0x005beb84    e8f7cdffff
_jmp_addr_0x005beb89:    {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005beb89    d98384340000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x23d4]                     // 0x005beb8f    d81dd4b38a00
                         fnstsw             ax                                                   // 0x005beb95    dfe0
                         test               ah, 0x41                                             // 0x005beb97    f6c441
                         {disp32} jne       _jmp_addr_0x005beeb1                                 // 0x005beb9a    0f8511030000
                         {disp8} mov        dword ptr [esp + 0x7c], 0x00000009                   // 0x005beba0    c744247c09000000
                         {disp32} jmp       _jmp_addr_0x005beeb1                                 // 0x005beba8    e904030000
                         test               byte ptr [ebx + 0x000035d0], 0x10                    // 0x005bebad    f683d035000010
                         {disp8} jne        _jmp_addr_0x005bebe0                                 // 0x005bebb4    752a
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bebb6    d9442410
                         push               esi                                                  // 0x005bebba    56
                         {disp32} fmul      dword ptr [ebx + 0x00003484]                         // 0x005bebbb    d88b84340000
                         push               esi                                                  // 0x005bebc1    56
                         mov.s              ecx, ebx                                             // 0x005bebc2    8bcb
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]                     // 0x005bebc4    d80d18b48a00
                         {disp32} fstp      dword ptr [esp + 0x00000080]                         // 0x005bebca    d99c2480000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]                    // 0x005bebd1    8b842480000000
                         push               eax                                                  // 0x005bebd8    50
                         push               0x1d                                                 // 0x005bebd9    6a1d
                         call               _jmp_addr_0x005bb980                                 // 0x005bebdb    e8a0cdffff
_jmp_addr_0x005bebe0:    {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bebe0    d98384340000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x23d4]                     // 0x005bebe6    d81dd4b38a00
                         fnstsw             ax                                                   // 0x005bebec    dfe0
                         test               ah, 0x41                                             // 0x005bebee    f6c441
                         {disp32} jne       _jmp_addr_0x005beeb1                                 // 0x005bebf1    0f85ba020000
                         {disp8} mov        dword ptr [esp + 0x7c], 0x0000000a                   // 0x005bebf7    c744247c0a000000
                         {disp32} jmp       _jmp_addr_0x005beeb1                                 // 0x005bebff    e9ad020000
                         test               byte ptr [ebx + 0x000035d0], 0x10                    // 0x005bec04    f683d035000010
                         {disp8} jne        _jmp_addr_0x005bec71                                 // 0x005bec0b    7564
                         {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bec0d    d98384340000
                         push               esi                                                  // 0x005bec13    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]                     // 0x005bec14    d80d18b48a00
                         push               esi                                                  // 0x005bec1a    56
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                          // 0x005bec1b    d82d90a38a00
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x005bec21    d84c2418
                         {disp32} fstp      dword ptr [esp + 0x00000080]                         // 0x005bec25    d99c2480000000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000080]                    // 0x005bec2c    8b8c2480000000
                         push               ecx                                                  // 0x005bec33    51
                         push               0x1b                                                 // 0x005bec34    6a1b
                         {disp8} jmp        _jmp_addr_0x005bec6a                                 // 0x005bec36    eb32
                         test               byte ptr [ebx + 0x000035d0], 0x10                    // 0x005bec38    f683d035000010
                         {disp8} jne        _jmp_addr_0x005bec71                                 // 0x005bec3f    7530
                         {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bec41    d98384340000
                         push               esi                                                  // 0x005bec47    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]                     // 0x005bec48    d80d18b48a00
                         push               esi                                                  // 0x005bec4e    56
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                          // 0x005bec4f    d82d90a38a00
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x005bec55    d84c2418
                         {disp32} fstp      dword ptr [esp + 0x00000080]                         // 0x005bec59    d99c2480000000
                         {disp32} mov       edx, dword ptr [esp + 0x00000080]                    // 0x005bec60    8b942480000000
                         push               edx                                                  // 0x005bec67    52
                         push               0x1d                                                 // 0x005bec68    6a1d
_jmp_addr_0x005bec6a:    mov.s              ecx, ebx                                             // 0x005bec6a    8bcb
                         call               _jmp_addr_0x005bb980                                 // 0x005bec6c    e80fcdffff
_jmp_addr_0x005bec71:    {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bec71    d98384340000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x23d4]                     // 0x005bec77    d81dd4b38a00
                         fnstsw             ax                                                   // 0x005bec7d    dfe0
                         test               ah, 0x41                                             // 0x005bec7f    f6c441
                         {disp32} jne       _jmp_addr_0x005beeb1                                 // 0x005bec82    0f8529020000
                         {disp8} mov        dword ptr [esp + 0x7c], esi                          // 0x005bec88    8974247c
                         {disp32} jmp       _jmp_addr_0x005beeb1                                 // 0x005bec8c    e920020000
                         test               byte ptr [ebx + 0x000035d0], 0x10                    // 0x005bec91    f683d035000010
                         {disp32} jne       _jmp_addr_0x005beeb1                                 // 0x005bec98    0f8513020000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x005bec9e    8b442410
                         push               esi                                                  // 0x005beca2    56
                         push               esi                                                  // 0x005beca3    56
                         mov.s              ecx, eax                                             // 0x005beca4    8bc8
                         push               ecx                                                  // 0x005beca6    51
                         push               0x1b                                                 // 0x005beca7    6a1b
                         mov.s              ecx, ebx                                             // 0x005beca9    8bcb
                         {disp32} mov       dword ptr [esp + 0x00000088], eax                    // 0x005becab    89842488000000
                         call               _jmp_addr_0x005bb980                                 // 0x005becb2    e8c9ccffff
                         {disp32} jmp       _jmp_addr_0x005beeb1                                 // 0x005becb7    e9f5010000
                         test               byte ptr [ebx + 0x000035d0], 0x10                    // 0x005becbc    f683d035000010
                         {disp32} jne       _jmp_addr_0x005beeb1                                 // 0x005becc3    0f85e8010000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x005becc9    8b542410
                         push               esi                                                  // 0x005beccd    56
                         push               esi                                                  // 0x005becce    56
                         mov.s              eax, edx                                             // 0x005beccf    8bc2
                         push               eax                                                  // 0x005becd1    50
                         push               0x1d                                                 // 0x005becd2    6a1d
                         mov.s              ecx, ebx                                             // 0x005becd4    8bcb
                         {disp32} mov       dword ptr [esp + 0x00000088], edx                    // 0x005becd6    89942488000000
                         call               _jmp_addr_0x005bb980                                 // 0x005becdd    e89eccffff
                         {disp32} jmp       _jmp_addr_0x005beeb1                                 // 0x005bece2    e9ca010000
_jmp_addr_0x005bece7:    {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bece7    d98384340000
                         {disp32} mov       esi, dword ptr [ebx + 0x000035cc]                    // 0x005beced    8bb3cc350000
                         {disp32} fmul      dword ptr [__real@3fc00000]                          // 0x005becf3    d80d4cb28a00
                         push               0x0                                                  // 0x005becf9    6a00
                         push               0x0                                                  // 0x005becfb    6a00
                         push               ecx                                                  // 0x005becfd    51
                         fstp               dword ptr [esp]                                      // 0x005becfe    d91c24
                         add                esi, 0x20                                            // 0x005bed01    83c620
                         push               esi                                                  // 0x005bed04    56
                         mov.s              ecx, ebx                                             // 0x005bed05    8bcb
                         call               _jmp_addr_0x005bb980                                 // 0x005bed07    e874ccffff
                         test               edi, edi                                             // 0x005bed0c    85ff
                         {disp8} je         _jmp_addr_0x005bed30                                 // 0x005bed0e    7420
                         mov.s              ecx, ebx                                             // 0x005bed10    8bcb
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bed12    e8a9daffff
                         {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bed17    d98384340000
                         {disp32} fmul      dword ptr [__real@3fc00000]                          // 0x005bed1d    d80d4cb28a00
                         push               eax                                                  // 0x005bed23    50
                         push               ecx                                                  // 0x005bed24    51
                         mov.s              ecx, ebx                                             // 0x005bed25    8bcb
                         fstp               dword ptr [esp]                                      // 0x005bed27    d91c24
                         push               esi                                                  // 0x005bed2a    56
                         call               _jmp_addr_0x005c2800                                 // 0x005bed2b    e8d03a0000
_jmp_addr_0x005bed30:    {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bed30    d98384340000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57c88]                    // 0x005bed36    d81d880c9000
                         {disp32} jmp       _jmp_addr_0x005bee56                                 // 0x005bed3c    e915010000
_jmp_addr_0x005bed41:    cmp                eax, 0x00000110                                      // 0x005bed41    3d10010000
                         {disp32} jg        _jmp_addr_0x005bedd4                                 // 0x005bed46    0f8f88000000
                         {disp8} je         _jmp_addr_0x005beda9                                 // 0x005bed4c    745b
                         cmp                eax, 0x00000080                                      // 0x005bed4e    3d80000000
                         {disp8} je         _jmp_addr_0x005bed6c                                 // 0x005bed53    7417
                         cmp                eax, 0x00000100                                      // 0x005bed55    3d00010000
                         {disp32} jne       _jmp_addr_0x005beeb1                                 // 0x005bed5a    0f8551010000
                         mov.s              ecx, ebx                                             // 0x005bed60    8bcb
                         call               _jmp_addr_0x005bbd20                                 // 0x005bed62    e8b9cfffff
                         {disp32} jmp       _jmp_addr_0x005bee89                                 // 0x005bed67    e91d010000
_jmp_addr_0x005bed6c:    {disp32} fld       dword ptr [ebx + 0x00003528]                         // 0x005bed6c    d98328350000
                         {disp32} fcomp     dword ptr [ebx + 0x0000352c]                         // 0x005bed72    d89b2c350000
                         fnstsw             ax                                                   // 0x005bed78    dfe0
                         test               ah, 0x40                                             // 0x005bed7a    f6c440
                         {disp32} je        _jmp_addr_0x005beeb1                                 // 0x005bed7d    0f842e010000
                         {disp32} fld       dword ptr [ebx + 0x00003558]                         // 0x005bed83    d98358350000
                         {disp32} fcomp     dword ptr [ebx + 0x0000355c]                         // 0x005bed89    d89b5c350000
                         fnstsw             ax                                                   // 0x005bed8f    dfe0
                         test               ah, 0x40                                             // 0x005bed91    f6c440
                         {disp32} je        _jmp_addr_0x005beeb1                                 // 0x005bed94    0f8417010000
                         {disp32} mov       eax, dword ptr [ebx + 0x00003510]                    // 0x005bed9a    8b8310350000
                         {disp8} mov        dword ptr [esp + 0x7c], eax                          // 0x005beda0    8944247c
                         {disp32} jmp       _jmp_addr_0x005beeb1                                 // 0x005beda4    e908010000
_jmp_addr_0x005beda9:    mov.s              ecx, ebx                                             // 0x005beda9    8bcb
                         call               _jmp_addr_0x005bbd20                                 // 0x005bedab    e870cfffff
                         {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bedb0    d98384340000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bedb6    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bedbc    dfe0
                         test               ah, 0x01                                             // 0x005bedbe    f6c401
                         {disp32} jne       _jmp_addr_0x005bee89                                 // 0x005bedc1    0f85c2000000
                         {disp8} mov        dword ptr [esp + 0x7c], 0x00000100                   // 0x005bedc7    c744247c00010000
                         {disp32} jmp       _jmp_addr_0x005bee89                                 // 0x005bedcf    e9b5000000
_jmp_addr_0x005bedd4:    cmp                eax, 0x00000120                                      // 0x005bedd4    3d20010000
                         {disp32} je        _jmp_addr_0x005bee72                                 // 0x005bedd9    0f8493000000
                         cmp                eax, 0x00000200                                      // 0x005beddf    3d00020000
                         {disp32} jne       _jmp_addr_0x005beeb1                                 // 0x005bede4    0f85c7000000
                         {disp32} mov       esi, dword ptr [ebx + 0x0000350c]                    // 0x005bedea    8bb30c350000
                         {disp32} mov       al, byte ptr [esi + ebx * 0x1 + 0x00002e7c]          // 0x005bedf0    8a841e7c2e0000
                         and                al, 0x20                                             // 0x005bedf7    2420
                         {disp8} mov        eax, dword ptr [ebx + 0x24]                          // 0x005bedf9    8b4324
                         mov                eax, dword ptr [eax + esi * 0x4]                     // 0x005bedfc    8b04b0
                         test               eax, eax                                             // 0x005bedff    85c0
                         {disp32} je        _jmp_addr_0x005beeb1                                 // 0x005bee01    0f84aa000000
                         {disp32} fld       dword ptr [ebx + 0x00003508]                         // 0x005bee07    d98308350000
                         push               0x0                                                  // 0x005bee0d    6a00
                         {disp32} fmul      dword ptr [ebx + 0x00003484]                         // 0x005bee0f    d88b84340000
                         push               0x0                                                  // 0x005bee15    6a00
                         mov.s              ecx, ebx                                             // 0x005bee17    8bcb
                         {disp32} fmul      dword ptr [__real@447a0000]                          // 0x005bee19    d80d28b28a00
                         fidiv              dword ptr [eax]                                      // 0x005bee1f    da30
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x005bee21    d95c2420
                         {disp8} mov        edi, dword ptr [esp + 0x20]                          // 0x005bee25    8b7c2420
                         push               edi                                                  // 0x005bee29    57
                         push               esi                                                  // 0x005bee2a    56
                         call               _jmp_addr_0x005bb980                                 // 0x005bee2b    e850cbffff
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]                    // 0x005bee30    8b842480000000
                         test               eax, eax                                             // 0x005bee37    85c0
                         {disp8} je         _jmp_addr_0x005bee4c                                 // 0x005bee39    7411
                         mov.s              ecx, ebx                                             // 0x005bee3b    8bcb
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bee3d    e87ed9ffff
                         push               eax                                                  // 0x005bee42    50
                         push               edi                                                  // 0x005bee43    57
                         push               esi                                                  // 0x005bee44    56
                         mov.s              ecx, ebx                                             // 0x005bee45    8bcb
                         call               _jmp_addr_0x005c2800                                 // 0x005bee47    e8b4390000
_jmp_addr_0x005bee4c:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x005bee4c    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bee50    d81d90a38a00
_jmp_addr_0x005bee56:    fnstsw             ax                                                   // 0x005bee56    dfe0
                         test               ah, 0x41                                             // 0x005bee58    f6c441
                         {disp8} jne        _jmp_addr_0x005beeb1                                 // 0x005bee5b    7554
                         {disp8} mov        dword ptr [esp + 0x7c], 0x00000000                   // 0x005bee5d    c744247c00000000
                         {disp32} mov       dword ptr [ebx + esi * 0x4 + 0x000031fc], 0xbf800000 // 0x005bee65    c784b3fc310000000080bf
                         {disp8} jmp        _jmp_addr_0x005beeb1                                 // 0x005bee70    eb3f
_jmp_addr_0x005bee72:    {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bee72    d98384340000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bee78    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bee7e    dfe0
                         test               ah, 0x01                                             // 0x005bee80    f6c401
                         {disp8} jne        _jmp_addr_0x005bee89                                 // 0x005bee83    7504
                         {disp8} mov        dword ptr [esp + 0x7c], esi                          // 0x005bee85    8974247c
_jmp_addr_0x005bee89:    {disp32} mov       ecx, dword ptr [ebx + 0x000034ec]                    // 0x005bee89    8b8bec340000
                         push               esi                                                  // 0x005bee8f    56
                         push               0x3f800000                                           // 0x005bee90    680000803f
                         push               ecx                                                  // 0x005bee95    51
                         mov.s              ecx, ebx                                             // 0x005bee96    8bcb
                         call               _jmp_addr_0x005b96d0                                 // 0x005bee98    e833a8ffff
                         {disp32} mov       edx, dword ptr [ebx + 0x000034f0]                    // 0x005bee9d    8b93f0340000
                         push               esi                                                  // 0x005beea3    56
                         push               0x3f800000                                           // 0x005beea4    680000803f
                         push               edx                                                  // 0x005beea9    52
                         mov.s              ecx, ebx                                             // 0x005beeaa    8bcb
                         call               _jmp_addr_0x005b98d0                                 // 0x005beeac    e81faaffff
_jmp_addr_0x005beeb1:    {disp32} mov       edx, dword ptr [ebx + 0x00003490]                    // 0x005beeb1    8b9390340000
                         test               dh, 0x01                                             // 0x005beeb7    f6c601
                         {disp32} je        _jmp_addr_0x005bf124                                 // 0x005beeba    0f8464020000
                         {disp32} mov       eax, dword ptr [ebx + 0x000034f4]                    // 0x005beec0    8b83f4340000
                         cmp                eax, 0x03                                            // 0x005beec6    83f803
                         {disp8} ja         _jmp_addr_0x005beef8                                 // 0x005beec9    772d
                         jmp                dword ptr [eax*4 + 0x5bf5bc]                         // 0x005beecb    ff2485bcf55b00
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000044                   // 0x005beed2    c744241444000000
                         {disp8} jmp        _jmp_addr_0x005beef8                                 // 0x005beeda    eb1c
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000041                   // 0x005beedc    c744241441000000
                         {disp8} jmp        _jmp_addr_0x005beef8                                 // 0x005beee4    eb12
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000043                   // 0x005beee6    c744241443000000
                         {disp8} jmp        _jmp_addr_0x005beef8                                 // 0x005beeee    eb08
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000042                   // 0x005beef0    c744241442000000
_jmp_addr_0x005beef8:    {disp8} mov        eax, dword ptr [ebx + 0x24]                          // 0x005beef8    8b4324
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x005beefb    8b4c2414
                         mov                ecx, dword ptr [eax + ecx * 0x4]                     // 0x005beeff    8b0c88
                         test               ecx, ecx                                             // 0x005bef02    85c9
                         {disp32} je        _jmp_addr_0x005bf124                                 // 0x005bef04    0f841a020000
                         cmp                edx, 0x00000110                                      // 0x005bef0a    81fa10010000
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x005bef10    d90590a38a00
                         {disp8} jne        _jmp_addr_0x005bef20                                 // 0x005bef16    7508
                         fstp               st(0)                                                // 0x005bef18    ddd8
                         {disp32} fld       dword ptr [ebx + 0x00003484]                         // 0x005bef1a    d98384340000
_jmp_addr_0x005bef20:    cmp                edx, 0x00000120                                      // 0x005bef20    81fa20010000
                         {disp8} jne        _jmp_addr_0x005bef36                                 // 0x005bef26    750e
                         fstp               st(0)                                                // 0x005bef28    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x005bef2a    d90590a38a00
                         {disp32} fsub      dword ptr [ebx + 0x00003484]                         // 0x005bef30    d8a384340000
_jmp_addr_0x005bef36:    {disp8} mov        edi, dword ptr [ecx + 0x34]                          // 0x005bef36    8b7934
                         mov                edx, dword ptr [edi]                                 // 0x005bef39    8b17
                         {disp8} mov        eax, dword ptr [edx + 0x04]                          // 0x005bef3b    8b4204
                         fld                dword ptr [eax]                                      // 0x005bef3e    d900
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x005bef40    8b5004
                         {disp8} fild       dword ptr [ecx + 0x1c]                               // 0x005bef43    db411c
                         {disp8} mov        esi, dword ptr [esp + 0x14]                          // 0x005bef46    8b742414
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x005bef4a    8b4008
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x005bef4d    89542420
                         {disp32} mov       edx, dword ptr [ebx + 0x0000333c]                    // 0x005bef51    8b933c330000
                         shl                esi, 4                                               // 0x005bef57    c1e604
                         {disp8} fmul       dword ptr [esi + edx * 0x1 + 0x0c]                   // 0x005bef5a    d84c160c
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x005bef5e    89442424
                         call               _jmp_addr_0x007a1400                                 // 0x005bef62    e899241e00
                         mov                eax, dword ptr [edi + eax * 0x4]                     // 0x005bef67    8b0487
                         {disp8} mov        eax, dword ptr [eax + 0x04]                          // 0x005bef6a    8b4004
                         fsubr              dword ptr [eax]                                      // 0x005bef6d    d828
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x005bef6f    8b4804
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x005bef72    8b5008
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                          // 0x005bef75    894c242c
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x005bef79    d944242c
                         {disp8} fsub       dword ptr [esp + 0x20]                               // 0x005bef7d    d8642420
                         {disp8} mov        dword ptr [esp + 0x30], edx                          // 0x005bef81    89542430
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x005bef85    8b4c2414
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x005bef89    d95c2438
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x005bef8d    d9442430
                         {disp8} fsub       dword ptr [esp + 0x24]                               // 0x005bef91    d8642424
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x005bef95    d95c243c
                         fmul               st, st(1)                                            // 0x005bef99    d8c9
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x005bef9b    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x005bef9f    d9442438
                         fmul               st, st(1)                                            // 0x005befa3    d8c9
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x005befa5    d95c2420
                         {disp8} fmul       dword ptr [esp + 0x3c]                               // 0x005befa9    d84c243c
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x005befad    d944241c
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x005befb1    d9442420
                         fld                st(2)                                                // 0x005befb5    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x18]                               // 0x005befb7    d84d18
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x005befba    d9442420
                         {disp8} fmul       dword ptr [ebp + 0x0c]                               // 0x005befbe    d84d0c
                         faddp              st(1), st                                            // 0x005befc1    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x005befc3    d944241c
                         {disp8} fmul       dword ptr [ebp + 0x00]                               // 0x005befc7    d84d00
                         faddp              st(1), st                                            // 0x005befca    dec1
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x005befcc    d95c241c
                         fld                st(2)                                                // 0x005befd0    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x1c]                               // 0x005befd2    d84d1c
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x005befd5    d9442420
                         {disp8} fmul       dword ptr [ebp + 0x10]                               // 0x005befd9    d84d10
                         faddp              st(1), st                                            // 0x005befdc    dec1
                         fld                st(2)                                                // 0x005befde    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x04]                               // 0x005befe0    d84d04
                         faddp              st(1), st                                            // 0x005befe3    dec1
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x005befe5    d95c2420
                         fxch               st(2)                                                // 0x005befe9    d9ca
                         {disp8} fmul       dword ptr [ebp + 0x20]                               // 0x005befeb    d84d20
                         fxch               st(2)                                                // 0x005befee    d9ca
                         {disp8} fmul       dword ptr [ebp + 0x14]                               // 0x005beff0    d84d14
                         faddp              st(2), st                                            // 0x005beff3    dec2
                         {disp8} fmul       dword ptr [ebp + 0x08]                               // 0x005beff5    d84d08
                         faddp              st(1), st                                            // 0x005beff8    dec1
                         {disp32} fld       dword ptr [ebx + 0x00003374]                         // 0x005beffa    d98374330000
                         {disp8} fsub       dword ptr [esp + 0x1c]                               // 0x005bf000    d864241c
                         {disp32} fstp      dword ptr [ebx + 0x00003374]                         // 0x005bf004    d99b74330000
                         {disp32} fld       dword ptr [ebx + 0x00003378]                         // 0x005bf00a    d98378330000
                         {disp8} fsub       dword ptr [esp + 0x20]                               // 0x005bf010    d8642420
                         {disp32} fstp      dword ptr [ebx + 0x00003378]                         // 0x005bf014    d99b78330000
                         {disp32} fld       dword ptr [ebx + 0x0000337c]                         // 0x005bf01a    d9837c330000
                         fsub               st, st(1)                                            // 0x005bf020    d8e1
                         {disp32} fstp      dword ptr [ebx + 0x0000337c]                         // 0x005bf022    d99b7c330000
                         {disp8} mov        eax, dword ptr [ebx + 0x24]                          // 0x005bf028    8b4324
                         mov                edx, dword ptr [eax + ecx * 0x4]                     // 0x005bf02b    8b1488
                         fstp               st(0)                                                // 0x005bf02e    ddd8
                         fild               dword ptr [edx]                                      // 0x005bf030    db02
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x005bf032    d95c2418
                         {disp32} fld       dword ptr [ebx + 0x000034f8]                         // 0x005bf036    d983f8340000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00003490]                    // 0x005bf03c    8b8b90340000
                         cmp                ecx, 0x00000100                                      // 0x005bf042    81f900010000
                         {disp32} fmul      dword ptr [__real@447a0000]                          // 0x005bf048    d80d28b28a00
                         {disp8} fdiv       dword ptr [esp + 0x18]                               // 0x005bf04e    d8742418
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005bf052    d95c2410
                         {disp8} jne        _jmp_addr_0x005bf097                                 // 0x005bf056    753f
                         {disp32} mov       eax, dword ptr [ebx + 0x0000333c]                    // 0x005bf058    8b833c330000
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bf05e    d9442410
                         {disp8} fcomp      dword ptr [esi + eax * 0x1 + 0x0c]                   // 0x005bf062    d85c060c
                         {disp8} lea        edx, dword ptr [esi + eax * 0x1 + 0x0c]              // 0x005bf066    8d54060c
                         fnstsw             ax                                                   // 0x005bf06a    dfe0
                         test               ah, 0x41                                             // 0x005bf06c    f6c441
                         {disp8} jne        _jmp_addr_0x005bf087                                 // 0x005bf06f    7516
                         mov                edx, dword ptr [edx]                                 // 0x005bf071    8b12
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x005bf073    89542410
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bf077    d9442410
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x005bf07b    d84c2418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]                     // 0x005bf07f    d80d18c48a00
                         {disp8} jmp        _jmp_addr_0x005bf091                                 // 0x005bf085    eb0a
_jmp_addr_0x005bf087:    {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bf087    d9442474
                         {disp32} fadd      dword ptr [ebx + 0x000034f8]                         // 0x005bf08b    d883f8340000
_jmp_addr_0x005bf091:    {disp32} fstp      dword ptr [ebx + 0x000034f8]                         // 0x005bf091    d99bf8340000
_jmp_addr_0x005bf097:    cmp                ecx, 0x00000120                                      // 0x005bf097    81f920010000
                         {disp8} jne        _jmp_addr_0x005bf0bf                                 // 0x005bf09d    7520
                         {disp32} mov       eax, dword ptr [ebx + 0x0000333c]                    // 0x005bf09f    8b833c330000
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x005bf0a5    d90590a38a00
                         {disp8} fsub       dword ptr [esi + eax * 0x1 + 0x0c]                   // 0x005bf0ab    d864060c
                         {disp8} lea        eax, dword ptr [esi + eax * 0x1 + 0x0c]              // 0x005bf0af    8d44060c
                         {disp32} fmul      dword ptr [ebx + 0x00003484]                         // 0x005bf0b3    d88b84340000
                         fadd               dword ptr [eax]                                      // 0x005bf0b9    d800
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005bf0bb    d95c2410
_jmp_addr_0x005bf0bf:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bf0bf    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf0c3    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf0c9    dfe0
                         test               ah, 0x01                                             // 0x005bf0cb    f6c401
                         {disp8} je         _jmp_addr_0x005bf0da                                 // 0x005bf0ce    740a
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000                   // 0x005bf0d0    c744241000000000
                         {disp8} jmp        _jmp_addr_0x005bf0f3                                 // 0x005bf0d8    eb19
_jmp_addr_0x005bf0da:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bf0da    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bf0de    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bf0e4    dfe0
                         test               ah, 0x41                                             // 0x005bf0e6    f6c441
                         {disp8} jne        _jmp_addr_0x005bf0f3                                 // 0x005bf0e9    7508
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f800000                   // 0x005bf0eb    c74424100000803f
_jmp_addr_0x005bf0f3:    {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x005bf0f3    8b7c2410
                         {disp8} mov        esi, dword ptr [esp + 0x14]                          // 0x005bf0f7    8b742414
                         push               0x0                                                  // 0x005bf0fb    6a00
                         push               0x0                                                  // 0x005bf0fd    6a00
                         push               edi                                                  // 0x005bf0ff    57
                         push               esi                                                  // 0x005bf100    56
                         mov.s              ecx, ebx                                             // 0x005bf101    8bcb
                         call               _jmp_addr_0x005bb980                                 // 0x005bf103    e878c8ffff
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]                    // 0x005bf108    8b842480000000
                         test               eax, eax                                             // 0x005bf10f    85c0
                         {disp8} je         _jmp_addr_0x005bf124                                 // 0x005bf111    7411
                         mov.s              ecx, ebx                                             // 0x005bf113    8bcb
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bf115    e8a6d6ffff
                         push               eax                                                  // 0x005bf11a    50
                         push               edi                                                  // 0x005bf11b    57
                         push               esi                                                  // 0x005bf11c    56
                         mov.s              ecx, ebx                                             // 0x005bf11d    8bcb
                         call               _jmp_addr_0x005c2800                                 // 0x005bf11f    e8dc360000
_jmp_addr_0x005bf124:    {disp32} fld       dword ptr [ebx + 0x000035b4]                         // 0x005bf124    d983b4350000
                         {disp32} fmul      dword ptr [ebx + 0x000037e4]                         // 0x005bf12a    d88be4370000
                         {disp32} fdivr     dword ptr [ebx + 0x00003520]                         // 0x005bf130    d8bb20350000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2850c]                    // 0x005bf136    d80d0c158d00
                         {disp32} fld       dword ptr [ebx + 0x0000348c]                         // 0x005bf13c    d9838c340000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba04]                    // 0x005bf142    d80d044a8c00
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                          // 0x005bf148    d82d90a38a00
                         fmulp              st(1), st                                            // 0x005bf14e    dec9
                         {disp32} fst       dword ptr [esp + 0x00000080]                         // 0x005bf150    d9942480000000
                         fabs                                                                    // 0x005bf157    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]                    // 0x005bf159    dc1d107a8c00
                         fnstsw             ax                                                   // 0x005bf15f    dfe0
                         test               ah, 0x41                                             // 0x005bf161    f6c441
                         {disp8} jne        _jmp_addr_0x005bf1cf                                 // 0x005bf164    7569
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005bf166    d9842480000000
                         mov                ecx, 0x00000003                                      // 0x005bf16d    b903000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf172    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf178    dfe0
                         test               ah, 0x01                                             // 0x005bf17a    f6c401
                         {disp8} je         _jmp_addr_0x005bf194                                 // 0x005bf17d    7415
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005bf17f    d9842480000000
                         mov                ecx, 0x00000002                                      // 0x005bf186    b902000000
                         fchs                                                                    // 0x005bf18b    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000080]                         // 0x005bf18d    d99c2480000000
_jmp_addr_0x005bf194:    {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005bf194    d9842480000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf19b    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf1a1    dfe0
                         test               ah, 0x40                                             // 0x005bf1a3    f6c440
                         {disp8} jne        _jmp_addr_0x005bf1cf                                 // 0x005bf1a6    7527
                         {disp32} fld       dword ptr [ebx + 0x000035dc]                         // 0x005bf1a8    d983dc350000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf1ae    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf1b4    dfe0
                         test               ah, 0x40                                             // 0x005bf1b6    f6c440
                         {disp8} je         _jmp_addr_0x005bf1cf                                 // 0x005bf1b9    7414
                         {disp32} mov       edx, dword ptr [esp + 0x00000080]                    // 0x005bf1bb    8b942480000000
                         push               0x0                                                  // 0x005bf1c2    6a00
                         push               0x0                                                  // 0x005bf1c4    6a00
                         push               edx                                                  // 0x005bf1c6    52
                         push               ecx                                                  // 0x005bf1c7    51
                         mov.s              ecx, ebx                                             // 0x005bf1c8    8bcb
                         call               _jmp_addr_0x005bb980                                 // 0x005bf1ca    e8b1c7ffff
_jmp_addr_0x005bf1cf:    test               byte ptr [ebx + 0x00003490], 0x08                    // 0x005bf1cf    f6839034000008
                         {disp32} je        _jmp_addr_0x005bf562                                 // 0x005bf1d6    0f8486030000
                         {disp32} mov       esi, dword ptr [ebx + 0x000028b4]                    // 0x005bf1dc    8bb3b4280000
                         mov                ecx, 0x0000000c                                      // 0x005bf1e2    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x40]                          // 0x005bf1e7    8d7c2440
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x005bf1eb    f3a5
                         mov.s              edx, ebp                                             // 0x005bf1ed    8bd5
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                          // 0x005bf1ef    8d4c2440
                         call               _jmp_addr_0x007faff0                                 // 0x005bf1f3    e8f8bd2300
                         {disp32} mov       eax, dword ptr [ebx + 0x000035b0]                    // 0x005bf1f8    8b83b0350000
                         {disp32} fld       dword ptr [ebx + 0x000035c4]                         // 0x005bf1fe    d983c4350000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000035ac]                    // 0x005bf204    8b8bac350000
                         {disp8} fmul       dword ptr [ebx + 0x10]                               // 0x005bf20a    d84b10
                         push               0x0                                                  // 0x005bf20d    6a00
                         push               0x0                                                  // 0x005bf20f    6a00
                         push               eax                                                  // 0x005bf211    50
                         {disp32} fstp      dword ptr [esp + 0x0000008c]                         // 0x005bf212    d99c248c000000
                         push               ecx                                                  // 0x005bf219    51
                         {disp32} fld       dword ptr [ebx + 0x000035c8]                         // 0x005bf21a    d983c8350000
                         {disp8} lea        edx, dword ptr [esp + 0x44]                          // 0x005bf220    8d542444
                         {disp8} fmul       dword ptr [ebx + 0x10]                               // 0x005bf224    d84b10
                         push               edx                                                  // 0x005bf227    52
                         mov.s              ecx, ebx                                             // 0x005bf228    8bcb
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x005bf22a    d95c2424
                         call               _jmp_addr_0x005bd2a0                                 // 0x005bf22e    e86de0ffff
                         {disp32} fld       dword ptr [ebx + 0x00003670]                         // 0x005bf233    d98370360000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf239    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf23f    dfe0
                         test               ah, 0x40                                             // 0x005bf241    f6c440
                         {disp8} jne        _jmp_addr_0x005bf27c                                 // 0x005bf244    7536
                         {disp32} fld       dword ptr [ebx + 0x000035e0]                         // 0x005bf246    d983e0350000
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x005bf24c    d95c2428
                         {disp32} fld       dword ptr [ebx + 0x00003610]                         // 0x005bf250    d98310360000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                          // 0x005bf256    8b442428
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x005bf25a    d95c242c
                         {disp32} fld       dword ptr [ebx + 0x00003640]                         // 0x005bf25e    d98340360000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                          // 0x005bf264    8b4c242c
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x005bf268    d95c2430
                         {disp8} mov        edx, dword ptr [esp + 0x30]                          // 0x005bf26c    8b542430
                         {disp8} mov        dword ptr [esp + 0x34], eax                          // 0x005bf270    89442434
                         {disp8} mov        dword ptr [esp + 0x38], ecx                          // 0x005bf274    894c2438
                         {disp8} mov        dword ptr [esp + 0x3c], edx                          // 0x005bf278    8954243c
_jmp_addr_0x005bf27c:    {disp8} fld        dword ptr [esp + 0x40]                               // 0x005bf27c    d9442440
                         push               0x1                                                  // 0x005bf280    6a01
                         {disp32} fmul      dword ptr [esp + 0x00000084]                         // 0x005bf282    d88c2484000000
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x005bf289    8d54241c
                         push               edx                                                  // 0x005bf28d    52
                         {disp8} fadd       dword ptr [esp + 0x6c]                               // 0x005bf28e    d844246c
                         {disp8} fld        dword ptr [esp + 0x4c]                               // 0x005bf292    d944244c
                         {disp32} fmul      dword ptr [esp + 0x00000088]                         // 0x005bf296    d88c2488000000
                         {disp8} fadd       dword ptr [esp + 0x70]                               // 0x005bf29d    d8442470
                         {disp8} fstp       dword ptr [esp + 0x70]                               // 0x005bf2a1    d95c2470
                         {disp8} fld        dword ptr [esp + 0x50]                               // 0x005bf2a5    d9442450
                         {disp32} fmul      dword ptr [esp + 0x00000088]                         // 0x005bf2a9    d88c2488000000
                         {disp8} fadd       dword ptr [esp + 0x74]                               // 0x005bf2b0    d8442474
                         {disp8} fstp       dword ptr [esp + 0x74]                               // 0x005bf2b4    d95c2474
                         {disp8} fld        dword ptr [esp + 0x60]                               // 0x005bf2b8    d9442460
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x005bf2bc    d84c2418
                         faddp              st(1), st                                            // 0x005bf2c0    dec1
                         {disp8} fst        dword ptr [esp + 0x6c]                               // 0x005bf2c2    d954246c
                         {disp8} fld        dword ptr [esp + 0x64]                               // 0x005bf2c6    d9442464
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x005bf2ca    d84c2418
                         {disp8} fadd       dword ptr [esp + 0x70]                               // 0x005bf2ce    d8442470
                         {disp8} fstp       dword ptr [esp + 0x70]                               // 0x005bf2d2    d95c2470
                         {disp8} mov        eax, dword ptr [esp + 0x70]                          // 0x005bf2d6    8b442470
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x005bf2da    d9442468
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x005bf2de    89442428
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x005bf2e2    d84c2418
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x005bf2e6    8d44241c
                         push               eax                                                  // 0x005bf2ea    50
                         {disp8} fadd       dword ptr [esp + 0x78]                               // 0x005bf2eb    d8442478
                         {disp8} fstp       dword ptr [esp + 0x78]                               // 0x005bf2ef    d95c2478
                         {disp8} mov        ecx, dword ptr [esp + 0x78]                          // 0x005bf2f3    8b4c2478
                         {disp8} mov        dword ptr [esp + 0x30], ecx                          // 0x005bf2f7    894c2430
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                          // 0x005bf2fb    8d4c2428
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x005bf2ff    d95c2428
                         push               ecx                                                  // 0x005bf303    51
                         mov.s              ecx, ebx                                             // 0x005bf304    8bcb
                         call               _jmp_addr_0x005bd390                                 // 0x005bf306    e885e0ffff
                         test               eax, eax                                             // 0x005bf30b    85c0
                         {disp8} jne        _jmp_addr_0x005bf321                                 // 0x005bf30d    7512
                         {disp32} fld       dword ptr [ebx + 0x00003514]                         // 0x005bf30f    d98314350000
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x005bf315    d95c2414
                         {disp32} fld       dword ptr [ebx + 0x00003544]                         // 0x005bf319    d98344350000
                         {disp8} jmp        _jmp_addr_0x005bf325                                 // 0x005bf31f    eb04
_jmp_addr_0x005bf321:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x005bf321    d9442418
_jmp_addr_0x005bf325:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bf325    d9442414
                         {disp32} mov       edx, dword ptr [ebx + 0x000035b0]                    // 0x005bf329    8b93b0350000
                         {disp32} fsub      dword ptr [ebx + 0x000035ac]                         // 0x005bf32f    d8a3ac350000
                         {disp32} mov       al, byte ptr [ebx + 0x00003490]                      // 0x005bf335    8a8390340000
                         test               al, 0x01                                             // 0x005bf33b    a801
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x005bf33d    89542410
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x005bf341    d95c2414
                         mov                esi, 0x0000001e                                      // 0x005bf345    be1e000000
                         {disp8} fsub       dword ptr [esp + 0x10]                               // 0x005bf34a    d8642410
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x005bf34e    d95c2418
                         {disp8} je         _jmp_addr_0x005bf363                                 // 0x005bf352    740f
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bf354    d9442414
                         mov                esi, 0x0000001c                                      // 0x005bf358    be1c000000
                         fchs                                                                    // 0x005bf35d    d9e0
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x005bf35f    d95c2414
_jmp_addr_0x005bf363:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x005bf363    d9442418
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bf367    d9442414
                         fpatan                                                                  // 0x005bf36b    d9f3
                         {disp32} fmul      qword ptr [rdata_bytes + 0x57c80]                    // 0x005bf36d    dc0d800c9000
                         {disp8} fmul       dword ptr [esp + 0x78]                               // 0x005bf373    d84c2478
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x005bf377    d805b4a38a00
                         {disp32} fstp      dword ptr [esp + 0x00000080]                         // 0x005bf37d    d99c2480000000
                         {disp32} fld       dword ptr [ebx + 0x000035dc]                         // 0x005bf384    d983dc350000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf38a    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf390    dfe0
                         test               ah, 0x40                                             // 0x005bf392    f6c440
                         {disp8} jne        _jmp_addr_0x005bf3a9                                 // 0x005bf395    7512
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x3e4ccccd             // 0x005bf397    c7842480000000cdcc4c3e
                         mov                esi, 0x0000001c                                      // 0x005bf3a2    be1c000000
                         {disp8} jmp        _jmp_addr_0x005bf3fc                                 // 0x005bf3a7    eb53
_jmp_addr_0x005bf3a9:    {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005bf3a9    d9842480000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf3b0    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf3b6    dfe0
                         test               ah, 0x01                                             // 0x005bf3b8    f6c401
                         {disp8} je         _jmp_addr_0x005bf3ca                                 // 0x005bf3bb    740d
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x00000000             // 0x005bf3bd    c784248000000000000000
                         {disp8} jmp        _jmp_addr_0x005bf3e9                                 // 0x005bf3c8    eb1f
_jmp_addr_0x005bf3ca:    {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x005bf3ca    d9842480000000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bf3d1    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bf3d7    dfe0
                         test               ah, 0x41                                             // 0x005bf3d9    f6c441
                         {disp8} jne        _jmp_addr_0x005bf3fc                                 // 0x005bf3dc    751e
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x3f800000             // 0x005bf3de    c78424800000000000803f
_jmp_addr_0x005bf3e9:    {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x005bf3e9    8b442410
                         push               0x1                                                  // 0x005bf3ed    6a01
                         push               0x3f800000                                           // 0x005bf3ef    680000803f
                         push               eax                                                  // 0x005bf3f4    50
                         mov.s              ecx, ebx                                             // 0x005bf3f5    8bcb
                         call               _jmp_addr_0x005b98d0                                 // 0x005bf3f7    e8d4a4ffff
_jmp_addr_0x005bf3fc:    {disp32} fld       dword ptr [ebx + 0x00003514]                         // 0x005bf3fc    d98314350000
                         {disp32} fsub      dword ptr [ebx + 0x000035ac]                         // 0x005bf402    d8a3ac350000
                         fld                st(0)                                                // 0x005bf408    d9c0
                         fabs                                                                    // 0x005bf40a    d9e1
                         {disp32} fcom      qword ptr [rdata_bytes + 0x57c78]                    // 0x005bf40c    dc15780c9000
                         fnstsw             ax                                                   // 0x005bf412    dfe0
                         test               ah, 0x01                                             // 0x005bf414    f6c401
                         {disp8} jne        _jmp_addr_0x005bf428                                 // 0x005bf417    750f
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x57c70]                    // 0x005bf419    dc1d700c9000
                         fnstsw             ax                                                   // 0x005bf41f    dfe0
                         test               ah, 0x41                                             // 0x005bf421    f6c441
                         {disp8} jne        _jmp_addr_0x005bf464                                 // 0x005bf424    753e
                         {disp8} jmp        _jmp_addr_0x005bf42a                                 // 0x005bf426    eb02
_jmp_addr_0x005bf428:    fstp               st(0)                                                // 0x005bf428    ddd8
_jmp_addr_0x005bf42a:    {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf42a    d81d98a38a00
                         {disp32} fld       dword ptr [ebx + 0x000035ac]                         // 0x005bf430    d983ac350000
                         fnstsw             ax                                                   // 0x005bf436    dfe0
                         test               ah, 0x01                                             // 0x005bf438    f6c401
                         {disp8} je         _jmp_addr_0x005bf445                                 // 0x005bf43b    7408
                         {disp32} fsub      dword ptr [__real@3e4ccccd]                          // 0x005bf43d    d82544b28a00
                         {disp8} jmp        _jmp_addr_0x005bf44b                                 // 0x005bf443    eb06
_jmp_addr_0x005bf445:    {disp32} fadd      dword ptr [__real@3e4ccccd]                          // 0x005bf445    d80544b28a00
_jmp_addr_0x005bf44b:    push               0x1                                                  // 0x005bf44b    6a01
                         {disp8} fstp       dword ptr [esp + 0x7c]                               // 0x005bf44d    d95c247c
                         {disp8} mov        ecx, dword ptr [esp + 0x7c]                          // 0x005bf451    8b4c247c
                         push               0x3f800000                                           // 0x005bf455    680000803f
                         push               ecx                                                  // 0x005bf45a    51
                         mov.s              ecx, ebx                                             // 0x005bf45b    8bcb
                         call               _jmp_addr_0x005b96d0                                 // 0x005bf45d    e86ea2ffff
                         {disp8} jmp        _jmp_addr_0x005bf466                                 // 0x005bf462    eb02
_jmp_addr_0x005bf464:    fstp               st(0)                                                // 0x005bf464    ddd8
_jmp_addr_0x005bf466:    {disp32} mov       al, byte ptr [ebx + 0x000035a4]                      // 0x005bf466    8a83a4350000
                         test               al, al                                               // 0x005bf46c    84c0
                         {disp32} je        _jmp_addr_0x005bf51e                                 // 0x005bf46e    0f84aa000000
                         {disp32} mov       edx, dword ptr [ebx + 0x000035ac]                    // 0x005bf474    8b93ac350000
                         push               0x1                                                  // 0x005bf47a    6a01
                         push               0x3f800000                                           // 0x005bf47c    680000803f
                         push               edx                                                  // 0x005bf481    52
                         mov.s              ecx, ebx                                             // 0x005bf482    8bcb
                         call               _jmp_addr_0x005b96d0                                 // 0x005bf484    e847a2ffff
                         {disp32} mov       eax, dword ptr [ebx + 0x000035b0]                    // 0x005bf489    8b83b0350000
                         push               0x1                                                  // 0x005bf48f    6a01
                         push               0x3f800000                                           // 0x005bf491    680000803f
                         push               eax                                                  // 0x005bf496    50
                         mov.s              ecx, ebx                                             // 0x005bf497    8bcb
                         call               _jmp_addr_0x005b98d0                                 // 0x005bf499    e832a4ffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x005bf49e    d90590a38a00
                         {disp32} fsub      dword ptr [ebx + 0x000035a8]                         // 0x005bf4a4    d8a3a8350000
                         push               0x0                                                  // 0x005bf4aa    6a00
                         push               0x3f000000                                           // 0x005bf4ac    680000003f
                         push               ecx                                                  // 0x005bf4b1    51
                         {disp32} fmul      dword ptr [esp + 0x0000008c]                         // 0x005bf4b2    d88c248c000000
                         {disp32} fld       dword ptr [ebx + 0x000035a8]                         // 0x005bf4b9    d983a8350000
                         mov.s              ecx, ebx                                             // 0x005bf4bf    8bcb
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005bf4c1    d80db4a38a00
                         faddp              st(1), st                                            // 0x005bf4c7    dec1
                         fstp               dword ptr [esp]                                      // 0x005bf4c9    d91c24
                         push               esi                                                  // 0x005bf4cc    56
                         call               _jmp_addr_0x005bb980                                 // 0x005bf4cd    e8aec4ffff
                         {disp32} fld       dword ptr [ebx + 0x000035a8]                         // 0x005bf4d2    d983a8350000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005bf4d8    d80db4a38a00
                         push               0x0                                                  // 0x005bf4de    6a00
                         push               0x0                                                  // 0x005bf4e0    6a00
                         push               ecx                                                  // 0x005bf4e2    51
                         fstp               dword ptr [esp]                                      // 0x005bf4e3    d91c24
                         push               0x2a                                                 // 0x005bf4e6    6a2a
                         mov.s              ecx, ebx                                             // 0x005bf4e8    8bcb
                         call               _jmp_addr_0x005bb980                                 // 0x005bf4ea    e891c4ffff
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bf4ef    d9442474
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005bf4f3    d80db4a38a00
                         {disp32} fadd      dword ptr [ebx + 0x000035a8]                         // 0x005bf4f9    d883a8350000
                         {disp32} fst       dword ptr [ebx + 0x000035a8]                         // 0x005bf4ff    d993a8350000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bf505    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bf50b    dfe0
                         test               ah, 0x41                                             // 0x005bf50d    f6c441
                         {disp8} jne        _jmp_addr_0x005bf562                                 // 0x005bf510    7550
                         {disp32} mov       dword ptr [ebx + 0x000035a8], 0x3f800000             // 0x005bf512    c783a83500000000803f
                         {disp8} jmp        _jmp_addr_0x005bf562                                 // 0x005bf51c    eb44
_jmp_addr_0x005bf51e:    {disp32} mov       ecx, dword ptr [esp + 0x00000080]                    // 0x005bf51e    8b8c2480000000
                         push               0x0                                                  // 0x005bf525    6a00
                         push               0x3f000000                                           // 0x005bf527    680000003f
                         push               ecx                                                  // 0x005bf52c    51
                         push               esi                                                  // 0x005bf52d    56
                         mov.s              ecx, ebx                                             // 0x005bf52e    8bcb
                         call               _jmp_addr_0x005bb980                                 // 0x005bf530    e84bc4ffff
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x005bf535    d9442474
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005bf539    d80db4a38a00
                         {disp32} fsubr     dword ptr [ebx + 0x000035a8]                         // 0x005bf53f    d8aba8350000
                         {disp32} fst       dword ptr [ebx + 0x000035a8]                         // 0x005bf545    d993a8350000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bf54b    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bf551    dfe0
                         test               ah, 0x01                                             // 0x005bf553    f6c401
                         {disp8} je         _jmp_addr_0x005bf562                                 // 0x005bf556    740a
                         {disp32} mov       dword ptr [ebx + 0x000035a8], 0x00000000             // 0x005bf558    c783a835000000000000
_jmp_addr_0x005bf562:    {disp8} mov        edx, dword ptr [esp + 0x7c]                          // 0x005bf562    8b54247c
                         push               0x1                                                  // 0x005bf566    6a01
                         push               edx                                                  // 0x005bf568    52
                         mov.s              ecx, ebx                                             // 0x005bf569    8bcb
                         call               _jmp_addr_0x005bd4a0                                 // 0x005bf56b    e830dfffff
                         pop                edi                                                  // 0x005bf570    5f
                         pop                esi                                                  // 0x005bf571    5e
                         pop                ebp                                                  // 0x005bf572    5d
                         pop                ebx                                                  // 0x005bf573    5b
                         add                esp, 0x60                                            // 0x005bf574    83c460
                         ret                0x0014                                               // 0x005bf577    c21400

// Snippet: db, [0x005bf57a, 0x005bf57c)
.byte 0x8b, 0xff                  // 0x005bf57a

// Snippet: jmptbl, [0x005bf57c, 0x005bf598)
.byte 0x91, 0xec, 0x5b, 0x00      // 0x005bf57c
.byte 0xbc, 0xec, 0x5b, 0x00      // 0x005bf580
.byte 0x56, 0xeb, 0x5b, 0x00      // 0x005bf584
.byte 0xad, 0xeb, 0x5b, 0x00      // 0x005bf588
.byte 0x04, 0xec, 0x5b, 0x00      // 0x005bf58c
.byte 0x38, 0xec, 0x5b, 0x00      // 0x005bf590
.byte 0xb1, 0xee, 0x5b, 0x00      // 0x005bf594

// Snippet: ijmptbl, [0x005bf598, 0x005bf5ba)
.byte 0x00, 0x01, 0x06, 0x06      // 0x005bf598
.byte 0x06, 0x06, 0x06, 0x06      // 0x005bf59c
.byte 0x06, 0x06, 0x06, 0x06      // 0x005bf5a0
.byte 0x06, 0x06, 0x06, 0x06      // 0x005bf5a4
.byte 0x02, 0x03, 0x06, 0x06      // 0x005bf5a8
.byte 0x06, 0x06, 0x06, 0x06      // 0x005bf5ac
.byte 0x06, 0x06, 0x06, 0x06      // 0x005bf5b0
.byte 0x06, 0x06, 0x06, 0x06      // 0x005bf5b4
.byte 0x04, 0x05                  // 0x005bf5b8

// Snippet: db, [0x005bf5ba, 0x005bf5bc)
.byte 0x8b, 0xff                  // 0x005bf5ba

// Snippet: jmptbl, [0x005bf5bc, 0x005bf5cc)
.byte 0xd2, 0xee, 0x5b, 0x00      // 0x005bf5bc
.byte 0xdc, 0xee, 0x5b, 0x00      // 0x005bf5c0
.byte 0xe6, 0xee, 0x5b, 0x00      // 0x005bf5c4
.byte 0xf0, 0xee, 0x5b, 0x00      // 0x005bf5c8

// Snippet: db, [0x005bf5cc, 0x005bf5d0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005bf5cc

