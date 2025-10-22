.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0045a800
.extern _jmp_addr_0x00480900
.extern _jmp_addr_0x00480a60
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x00489cb0
.extern _jmp_addr_0x0048a580
.extern _jmp_addr_0x0048b790
.extern _jmp_addr_0x0048d7b0
.extern _jmp_addr_0x004ee6d0
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern _jmp_addr_0x006182f0
.extern @GetAnim__9MorphableFll@16
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x006e8210
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?Empty@RPHolder@@QAEXXZ
.extern _jmp_addr_0x0083b380
.extern _jmp_addr_0x0085e9d0
.extern _jmp_addr_0x00863b00
.extern @SetDest__8RPFollowFRC7Point2Dffff@28
.extern _jmp_addr_0x00863ef0

.globl _jmp_addr_0x00483750
.globl _jmp_addr_0x00483780
.globl _jmp_addr_0x00483850
.globl _jmp_addr_0x00483870
.globl _jmp_addr_0x004839d0
.globl _jmp_addr_0x00483ab0
.globl _jmp_addr_0x00483ed0
.globl _jmp_addr_0x00483f40
.globl _jmp_addr_0x00483fe0
.globl _jmp_addr_0x00484260
.globl ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ
.globl ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.globl _jmp_addr_0x004842e0
.globl _jmp_addr_0x00484300
.globl _jmp_addr_0x00484310
.globl _jmp_addr_0x00484360
.globl _jmp_addr_0x004843a0
.globl _jmp_addr_0x00484410
.globl _jmp_addr_0x00484540
.globl _jmp_addr_0x00484590
.globl _jmp_addr_0x004845f0
.globl _jmp_addr_0x004846e0
.globl _jmp_addr_0x00484790

start_0x00483750_0x00484830:
// Snippet: asm, [0x00483750, 0x0048481c)
_jmp_addr_0x00483750:    {disp32} fld       dword ptr [ecx + 0x00004864]                  // 0x00483750    d98164480000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00483756    d81d98a38a00
                         fnstsw             ax                                            // 0x0048375c    dfe0
                         test               ah, 0x40                                      // 0x0048375e    f6c440
                         {disp8} je         _jmp_addr_0x0048377c                          // 0x00483761    7419
                         {disp32} fld       dword ptr [ecx + 0x0000486c]                  // 0x00483763    d9816c480000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00483769    d81d98a38a00
                         fnstsw             ax                                            // 0x0048376f    dfe0
                         test               ah, 0x40                                      // 0x00483771    f6c440
                         {disp8} je         _jmp_addr_0x0048377c                          // 0x00483774    7406
                         mov                eax, 0x00000001                               // 0x00483776    b801000000
                         ret                                                              // 0x0048377b    c3
_jmp_addr_0x0048377c:    xor.s              eax, eax                                      // 0x0048377c    33c0
                         ret                                                              // 0x0048377e    c3
                         nop                                                              // 0x0048377f    90
_jmp_addr_0x00483780:    sub                esp, 0x08                                     // 0x00483780    83ec08
                         push               ebx                                           // 0x00483783    53
                         push               esi                                           // 0x00483784    56
                         push               edi                                           // 0x00483785    57
                         mov.s              edi, ecx                                      // 0x00483786    8bf9
                         call               _jmp_addr_0x00484300                          // 0x00483788    e8730b0000
                         test               eax, eax                                      // 0x0048378d    85c0
                         {disp8} je         _jmp_addr_0x0048379c                          // 0x0048378f    740b
                         pop                edi                                           // 0x00483791    5f
                         pop                esi                                           // 0x00483792    5e
                         xor.s              eax, eax                                      // 0x00483793    33c0
                         pop                ebx                                           // 0x00483795    5b
                         add                esp, 0x08                                     // 0x00483796    83c408
                         ret                0x0004                                        // 0x00483799    c20400
_jmp_addr_0x0048379c:    {disp32} mov       ecx, dword ptr [edi + 0x00005198]             // 0x0048379c    8b8f98510000
                         call               ?Empty@RPHolder@@QAEXXZ                       // 0x004837a2    e8897b3b00
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x004837a7    8b742418
                         fld                dword ptr [esi]                               // 0x004837ab    d906
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004837ad    d95c240c
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x004837b1    d94608
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x004837b4    d95c2410
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x004837b8    d94604
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x26098]             // 0x004837bb    d83598f08c00
                         call               _jmp_addr_0x007a1400                          // 0x004837c1    e83adc3100
                         fld                dword ptr [esi]                               // 0x004837c6    d906
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x26098]             // 0x004837c8    d83598f08c00
                         push               eax                                           // 0x004837ce    50
                         call               _jmp_addr_0x007a1400                          // 0x004837cf    e82cdc3100
                         {disp32} mov       ecx, dword ptr [edi + 0x00005198]             // 0x004837d4    8b8f98510000
                         push               eax                                           // 0x004837da    50
                         call               _jmp_addr_0x0083b380                          // 0x004837db    e8a07b3b00
                         {disp32} mov       ecx, dword ptr [edi + 0x00005198]             // 0x004837e0    8b8f98510000
                         {disp32} mov       esi, dword ptr [ecx + 0x00050000]             // 0x004837e6    8bb100000500
                         xor.s              edx, edx                                      // 0x004837ec    33d2
                         test               esi, esi                                      // 0x004837ee    85f6
                         {disp8} jle        _jmp_addr_0x0048382a                          // 0x004837f0    7e38
                         {disp8} lea        ebx, dword ptr [ecx + 0x08]                   // 0x004837f2    8d5908
_jmp_addr_0x004837f5:    fld                dword ptr [ebx]                               // 0x004837f5    d903
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x004837f7    d864240c
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x004837fb    d94304
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x004837fe    d8642410
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x00483802    d94308
                         fld                st(1)                                         // 0x00483805    d9c1
                         fmul               st, st(2)                                     // 0x00483807    d8ca
                         fld                st(3)                                         // 0x00483809    d9c3
                         fmul               st, st(4)                                     // 0x0048380b    d8cc
                         faddp              st(1), st                                     // 0x0048380d    dec1
                         fld                st(1)                                         // 0x0048380f    d9c1
                         fmul               st, st(2)                                     // 0x00483811    d8ca
                         fcompp                                                           // 0x00483813    ded9
                         fstp               st(0)                                         // 0x00483815    ddd8
                         fnstsw             ax                                            // 0x00483817    dfe0
                         fstp               st(0)                                         // 0x00483819    ddd8
                         test               ah, 0x41                                      // 0x0048381b    f6c441
                         fstp               st(0)                                         // 0x0048381e    ddd8
                         {disp8} je         _jmp_addr_0x0048383d                          // 0x00483820    741b
                         add                ebx, 0x14                                     // 0x00483822    83c314
                         inc                edx                                           // 0x00483825    42
                         cmp.s              edx, esi                                      // 0x00483826    3bd6
                         {disp8} jl         _jmp_addr_0x004837f5                          // 0x00483828    7ccb
_jmp_addr_0x0048382a:    call               ?Empty@RPHolder@@QAEXXZ                       // 0x0048382a    e8017b3b00
                         pop                edi                                           // 0x0048382f    5f
                         pop                esi                                           // 0x00483830    5e
                         mov                eax, 0x00000001                               // 0x00483831    b801000000
                         pop                ebx                                           // 0x00483836    5b
                         add                esp, 0x08                                     // 0x00483837    83c408
                         ret                0x0004                                        // 0x0048383a    c20400
_jmp_addr_0x0048383d:    call               ?Empty@RPHolder@@QAEXXZ                       // 0x0048383d    e8ee7a3b00
                         pop                edi                                           // 0x00483842    5f
                         pop                esi                                           // 0x00483843    5e
                         xor.s              eax, eax                                      // 0x00483844    33c0
                         pop                ebx                                           // 0x00483846    5b
                         add                esp, 0x08                                     // 0x00483847    83c408
                         ret                0x0004                                        // 0x0048384a    c20400
                         nop                                                              // 0x0048384d    90
                         nop                                                              // 0x0048384e    90
                         nop                                                              // 0x0048384f    90
_jmp_addr_0x00483850:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00483850    8b442404
                         push               0x40e33333                                    // 0x00483854    683333e340
                         push               eax                                           // 0x00483859    50
                         call               _jmp_addr_0x00483890                          // 0x0048385a    e831000000
                         add                esp, 0x08                                     // 0x0048385f    83c408
                         ret                                                              // 0x00483862    c3
                         nop                                                              // 0x00483863    90
                         nop                                                              // 0x00483864    90
                         nop                                                              // 0x00483865    90
                         nop                                                              // 0x00483866    90
                         nop                                                              // 0x00483867    90
                         nop                                                              // 0x00483868    90
                         nop                                                              // 0x00483869    90
                         nop                                                              // 0x0048386a    90
                         nop                                                              // 0x0048386b    90
                         nop                                                              // 0x0048386c    90
                         nop                                                              // 0x0048386d    90
                         nop                                                              // 0x0048386e    90
                         nop                                                              // 0x0048386f    90
_jmp_addr_0x00483870:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00483870    8b442404
                         push               0x40e1999a                                    // 0x00483874    689a99e140
                         push               eax                                           // 0x00483879    50
                         call               _jmp_addr_0x00483890                          // 0x0048387a    e811000000
                         add                esp, 0x08                                     // 0x0048387f    83c408
                         ret                                                              // 0x00483882    c3
                         nop                                                              // 0x00483883    90
                         nop                                                              // 0x00483884    90
                         nop                                                              // 0x00483885    90
                         nop                                                              // 0x00483886    90
                         nop                                                              // 0x00483887    90
                         nop                                                              // 0x00483888    90
                         nop                                                              // 0x00483889    90
                         nop                                                              // 0x0048388a    90
                         nop                                                              // 0x0048388b    90
                         nop                                                              // 0x0048388c    90
                         nop                                                              // 0x0048388d    90
                         nop                                                              // 0x0048388e    90
                         nop                                                              // 0x0048388f    90
_jmp_addr_0x00483890:    sub                esp, 0x08                                     // 0x00483890    83ec08
                         push               ebx                                           // 0x00483893    53
                         push               ebp                                           // 0x00483894    55
                         push               esi                                           // 0x00483895    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00483896    8b742418
                         fld                dword ptr [esi]                               // 0x0048389a    d906
                         push               edi                                           // 0x0048389c    57
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x0048389d    d80d2cb28a00
                         call               _jmp_addr_0x007a1400                          // 0x004838a3    e858db3100
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x004838a8    d94608
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x004838ab    d80d2cb28a00
                         mov.s              ebx, eax                                      // 0x004838b1    8bd8
                         call               _jmp_addr_0x007a1400                          // 0x004838b3    e848db3100
                         test               ebx, ebx                                      // 0x004838b8    85db
                         {disp32} jl        _jmp_addr_0x004839b7                          // 0x004838ba    0f8cf7000000
                         cmp                ebx, 0x00000200                               // 0x004838c0    81fb00020000
                         {disp32} jge       _jmp_addr_0x004839b7                          // 0x004838c6    0f8deb000000
                         test               eax, eax                                      // 0x004838cc    85c0
                         {disp32} jl        _jmp_addr_0x004839b7                          // 0x004838ce    0f8ce3000000
                         cmp                eax, 0x00000200                               // 0x004838d4    3d00020000
                         {disp32} jge       _jmp_addr_0x004839b7                          // 0x004838d9    0f8dd8000000
                         mov.s              ecx, eax                                      // 0x004838df    8bc8
                         shl                ecx, 9                                        // 0x004838e1    c1e109
                         xor.s              edx, edx                                      // 0x004838e4    33d2
                         {disp32} mov       dl, byte ptr [ecx + ebx * 0x1 + 0x00d559b0]   // 0x004838e6    8a9419b059d500
                         test               edx, edx                                      // 0x004838ed    85d2
                         {disp8} je         _jmp_addr_0x004838fa                          // 0x004838ef    7409
                         cmp                edx, 0x06                                     // 0x004838f1    83fa06
                         {disp32} jne       _jmp_addr_0x004839b7                          // 0x004838f4    0f85bd000000
_jmp_addr_0x004838fa:    {disp8} lea        edi, dword ptr [eax + -0x01]                  // 0x004838fa    8d78ff
                         or                 ebp, 0xffffffff                               // 0x004838fd    83cdff
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00483900    897c2414
                         {disp32} lea       esi, dword ptr [ecx + -0x00000200]            // 0x00483904    8db100feffff
_jmp_addr_0x0048390a:    test               edi, edi                                      // 0x0048390a    85ff
                         {disp32} jl        _jmp_addr_0x00483995                          // 0x0048390c    0f8c83000000
                         cmp                edi, 0x00000200                               // 0x00483912    81ff00020000
                         {disp8} jge        _jmp_addr_0x00483995                          // 0x00483918    7d7b
                         {disp8} lea        ecx, dword ptr [ebx + -0x01]                  // 0x0048391a    8d4bff
                         or                 edx, 0xffffffff                               // 0x0048391d    83caff
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00483920    894c2410
_jmp_addr_0x00483924:    test               ecx, ecx                                      // 0x00483924    85c9
                         {disp8} jl         _jmp_addr_0x0048398a                          // 0x00483926    7c62
                         cmp                ecx, 0x00000200                               // 0x00483928    81f900020000
                         {disp8} jge        _jmp_addr_0x0048398a                          // 0x0048392e    7d5a
                         xor.s              eax, eax                                      // 0x00483930    33c0
                         {disp32} mov       al, byte ptr [esi + ecx * 0x1 + 0x00d559b0]   // 0x00483932    8a840eb059d500
                         test               eax, eax                                      // 0x00483939    85c0
                         {disp8} je         _jmp_addr_0x0048398a                          // 0x0048393b    744d
                         cmp                eax, 0x06                                     // 0x0048393d    83f806
                         {disp8} je         _jmp_addr_0x0048398a                          // 0x00483940    7448
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00483942    db442410
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00483946    8b44241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0048394a    d80d14b48a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26e4]              // 0x00483950    d805e4b68a00
                         fsub               dword ptr [eax]                               // 0x00483956    d820
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x00483958    db442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0048395c    d80d14b48a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26e4]              // 0x00483962    d805e4b68a00
                         {disp8} fsub       dword ptr [eax + 0x08]                        // 0x00483968    d86008
                         fld                st(0)                                         // 0x0048396b    d9c0
                         fmul               st, st(1)                                     // 0x0048396d    d8c9
                         fld                st(2)                                         // 0x0048396f    d9c2
                         fmul               st, st(3)                                     // 0x00483971    d8cb
                         faddp              st(1), st                                     // 0x00483973    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00483975    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00483979    d84c2420
                         fcompp                                                           // 0x0048397d    ded9
                         fnstsw             ax                                            // 0x0048397f    dfe0
                         fstp               st(0)                                         // 0x00483981    ddd8
                         test               ah, 0x41                                      // 0x00483983    f6c441
                         fstp               st(0)                                         // 0x00483986    ddd8
                         {disp8} je         _jmp_addr_0x004839b7                          // 0x00483988    742d
_jmp_addr_0x0048398a:    inc                edx                                           // 0x0048398a    42
                         inc                ecx                                           // 0x0048398b    41
                         cmp                edx, 0x02                                     // 0x0048398c    83fa02
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0048398f    894c2410
                         {disp8} jl         _jmp_addr_0x00483924                          // 0x00483993    7c8f
_jmp_addr_0x00483995:    inc                ebp                                           // 0x00483995    45
                         add                esi, 0x00000200                               // 0x00483996    81c600020000
                         inc                edi                                           // 0x0048399c    47
                         cmp                ebp, 0x02                                     // 0x0048399d    83fd02
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x004839a0    897c2414
                         {disp32} jl        _jmp_addr_0x0048390a                          // 0x004839a4    0f8c60ffffff
                         pop                edi                                           // 0x004839aa    5f
                         pop                esi                                           // 0x004839ab    5e
                         pop                ebp                                           // 0x004839ac    5d
                         mov                eax, 0x00000001                               // 0x004839ad    b801000000
                         pop                ebx                                           // 0x004839b2    5b
                         add                esp, 0x08                                     // 0x004839b3    83c408
                         ret                                                              // 0x004839b6    c3
_jmp_addr_0x004839b7:    pop                edi                                           // 0x004839b7    5f
                         pop                esi                                           // 0x004839b8    5e
                         pop                ebp                                           // 0x004839b9    5d
                         xor.s              eax, eax                                      // 0x004839ba    33c0
                         pop                ebx                                           // 0x004839bc    5b
                         add                esp, 0x08                                     // 0x004839bd    83c408
                         ret                                                              // 0x004839c0    c3
                         nop                                                              // 0x004839c1    90
                         nop                                                              // 0x004839c2    90
                         nop                                                              // 0x004839c3    90
                         nop                                                              // 0x004839c4    90
                         nop                                                              // 0x004839c5    90
                         nop                                                              // 0x004839c6    90
                         nop                                                              // 0x004839c7    90
                         nop                                                              // 0x004839c8    90
                         nop                                                              // 0x004839c9    90
                         nop                                                              // 0x004839ca    90
                         nop                                                              // 0x004839cb    90
                         nop                                                              // 0x004839cc    90
                         nop                                                              // 0x004839cd    90
                         nop                                                              // 0x004839ce    90
                         nop                                                              // 0x004839cf    90
_jmp_addr_0x004839d0:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004839d0    d90598a38a00
                         sub                esp, 0x00000090                               // 0x004839d6    81ec90000000
                         xor.s              eax, eax                                      // 0x004839dc    33c0
_jmp_addr_0x004839de:    fld                st(0)                                         // 0x004839de    d9c0
                         add                eax, 0x04                                     // 0x004839e0    83c004
                         cmp                eax, 0x40                                     // 0x004839e3    83f840
                         fsin                                                             // 0x004839e6    d9fe
                         {disp8} fstp       dword ptr [esp + eax * 0x1 + 0x4c]            // 0x004839e8    d95c044c
                         fld                st(0)                                         // 0x004839ec    d9c0
                         fcos                                                             // 0x004839ee    d9ff
                         {disp8} fstp       dword ptr [esp + eax * 0x1 + 0x0c]            // 0x004839f0    d95c040c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1dca0]             // 0x004839f4    d805a06c8c00
                         {disp8} jl         _jmp_addr_0x004839de                          // 0x004839fa    7ce2
                         push               esi                                           // 0x004839fc    56
                         fstp               st(0)                                         // 0x004839fd    ddd8
                         push               edi                                           // 0x004839ff    57
                         {disp32} mov       edi, dword ptr [esp + 0x0000009c]             // 0x00483a00    8bbc249c000000
                         {disp8} mov        dword ptr [esp + 0x08], 0x3f000000            // 0x00483a07    c74424080000003f
_jmp_addr_0x00483a0f:    xor.s              esi, esi                                      // 0x00483a0f    33f6
_jmp_addr_0x00483a11:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x00483a11    d9442408
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00483a15    8d44240c
                         {disp8} fmul       dword ptr [esp + esi * 0x1 + 0x18]            // 0x00483a19    d84c3418
                         push               eax                                           // 0x00483a1d    50
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00483a1e    c744241400000000
                         fadd               dword ptr [edi]                               // 0x00483a26    d807
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00483a28    d95c2410
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00483a2c    d944240c
                         {disp8} fmul       dword ptr [esp + esi * 0x1 + 0x5c]            // 0x00483a30    d84c345c
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x00483a34    d84708
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00483a37    d95c2418
                         call               _jmp_addr_0x00483850                          // 0x00483a3b    e810feffff
                         add                esp, 0x04                                     // 0x00483a40    83c404
                         test               eax, eax                                      // 0x00483a43    85c0
                         {disp8} jne        _jmp_addr_0x00483a73                          // 0x00483a45    752c
                         add                esi, 0x04                                     // 0x00483a47    83c604
                         cmp                esi, 0x40                                     // 0x00483a4a    83fe40
                         {disp8} jl         _jmp_addr_0x00483a11                          // 0x00483a4d    7cc2
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00483a4f    d9442408
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00483a53    d805b4a38a00
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00483a59    d9542408
                         {disp32} fcomp     dword ptr [__real@447a0000]                   // 0x00483a5d    d81d28b28a00
                         fnstsw             ax                                            // 0x00483a63    dfe0
                         test               ah, 0x01                                      // 0x00483a65    f6c401
                         {disp8} jne        _jmp_addr_0x00483a0f                          // 0x00483a68    75a5
                         pop                edi                                           // 0x00483a6a    5f
                         pop                esi                                           // 0x00483a6b    5e
                         add                esp, 0x00000090                               // 0x00483a6c    81c490000000
                         ret                                                              // 0x00483a72    c3
_jmp_addr_0x00483a73:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00483a73    8b54240c
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a0]             // 0x00483a77    8b8c24a0000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00483a7e    8b442410
                         mov                dword ptr [ecx], edx                          // 0x00483a82    8911
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00483a84    8b542414
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00483a88    894104
                         pop                edi                                           // 0x00483a8b    5f
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00483a8c    895108
                         pop                esi                                           // 0x00483a8f    5e
                         add                esp, 0x00000090                               // 0x00483a90    81c490000000
                         ret                                                              // 0x00483a96    c3
                         nop                                                              // 0x00483a97    90
                         nop                                                              // 0x00483a98    90
                         nop                                                              // 0x00483a99    90
                         nop                                                              // 0x00483a9a    90
                         nop                                                              // 0x00483a9b    90
                         nop                                                              // 0x00483a9c    90
                         nop                                                              // 0x00483a9d    90
                         nop                                                              // 0x00483a9e    90
                         nop                                                              // 0x00483a9f    90
                         mov                eax, 0x00000001                               // 0x00483aa0    b801000000
                         ret                0x0004                                        // 0x00483aa5    c20400
                         nop                                                              // 0x00483aa8    90
                         nop                                                              // 0x00483aa9    90
                         nop                                                              // 0x00483aaa    90
                         nop                                                              // 0x00483aab    90
                         nop                                                              // 0x00483aac    90
                         nop                                                              // 0x00483aad    90
                         nop                                                              // 0x00483aae    90
                         nop                                                              // 0x00483aaf    90
_jmp_addr_0x00483ab0:    sub                esp, 0x30                                     // 0x00483ab0    83ec30
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00483ab3    8b442438
                         fld                dword ptr [eax]                               // 0x00483ab7    d900
                         push               ebx                                           // 0x00483ab9    53
                         push               ebp                                           // 0x00483aba    55
                         push               esi                                           // 0x00483abb    56
                         mov.s              esi, ecx                                      // 0x00483abc    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x00483abe    8b4c2440
                         fsub               dword ptr [ecx]                               // 0x00483ac2    d821
                         push               edi                                           // 0x00483ac4    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00483ac5    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x00483acd    c744242000000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00483ad5    d95c2410
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00483ad9    d94008
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00483adc    8d442410
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x00483ae0    d86108
                         push               eax                                           // 0x00483ae3    50
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00483ae4    d95c241c
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x00483ae8    d98684000000
                         fld                st(0)                                         // 0x00483aee    d9c0
                         fsin                                                             // 0x00483af0    d9fe
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00483af2    d95c2420
                         fcos                                                             // 0x00483af6    d9ff
                         fchs                                                             // 0x00483af8    d9e0
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00483afa    d95c2428
                         call               _jmp_addr_0x007faa50                          // 0x00483afe    e84d6f3700
                         {disp32} fstp      dword ptr [esi + 0x00004840]                  // 0x00483b03    d99e40480000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00483b09    8d4c2414
                         push               ecx                                           // 0x00483b0d    51
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x00483b0e    8d542424
                         push               edx                                           // 0x00483b12    52
                         call               _jmp_addr_0x006e8210                          // 0x00483b13    e8f8462600
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00483b18    d81d98a38a00
                         add                esp, 0x0c                                     // 0x00483b1e    83c40c
                         push               0x0                                           // 0x00483b21    6a00
                         fnstsw             ax                                            // 0x00483b23    dfe0
                         test               ah, 0x01                                      // 0x00483b25    f6c401
                         {disp32} je        _jmp_addr_0x00483be6                          // 0x00483b28    0f84b8000000
                         push               0xd                                           // 0x00483b2e    6a0d
                         mov.s              ecx, esi                                      // 0x00483b30    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00483b32    e8195b1900
                         mov.s              ebp, eax                                      // 0x00483b37    8be8
                         test               ebp, ebp                                      // 0x00483b39    85ed
                         {disp32} je        _jmp_addr_0x00483ea7                          // 0x00483b3b    0f8466030000
                         push               0x0                                           // 0x00483b41    6a00
                         push               0xe                                           // 0x00483b43    6a0e
                         mov.s              ecx, esi                                      // 0x00483b45    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00483b47    e8045b1900
                         mov.s              edi, eax                                      // 0x00483b4c    8bf8
                         test               edi, edi                                      // 0x00483b4e    85ff
                         {disp32} je        _jmp_addr_0x00483ea7                          // 0x00483b50    0f8451030000
                         push               0x0                                           // 0x00483b56    6a00
                         push               0xf                                           // 0x00483b58    6a0f
                         mov.s              ecx, esi                                      // 0x00483b5a    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00483b5c    e8ef5a1900
                         mov.s              ebx, eax                                      // 0x00483b61    8bd8
                         test               ebx, ebx                                      // 0x00483b63    85db
                         {disp32} je        _jmp_addr_0x00483ea7                          // 0x00483b65    0f843c030000
                         {disp8} fld        dword ptr [ebp + 0x10]                        // 0x00483b6b    d94510
                         {disp8} fld        dword ptr [ebp + 0x14]                        // 0x00483b6e    d94514
                         {disp8} fld        dword ptr [ebp + 0x18]                        // 0x00483b71    d94518
                         fld                st(0)                                         // 0x00483b74    d9c0
                         fmul               st, st(1)                                     // 0x00483b76    d8c9
                         fld                st(2)                                         // 0x00483b78    d9c2
                         fmul               st, st(3)                                     // 0x00483b7a    d8cb
                         faddp              st(1), st                                     // 0x00483b7c    dec1
                         fld                st(3)                                         // 0x00483b7e    d9c3
                         fmul               st, st(4)                                     // 0x00483b80    d8cc
                         faddp              st(1), st                                     // 0x00483b82    dec1
                         fsqrt                                                            // 0x00483b84    d9fa
                         {disp8} fstp       dword ptr [ebp + 0x0c]                        // 0x00483b86    d95d0c
                         fstp               st(0)                                         // 0x00483b89    ddd8
                         fstp               st(0)                                         // 0x00483b8b    ddd8
                         fstp               st(0)                                         // 0x00483b8d    ddd8
                         {disp8} fld        dword ptr [edi + 0x10]                        // 0x00483b8f    d94710
                         {disp8} fld        dword ptr [edi + 0x14]                        // 0x00483b92    d94714
                         {disp8} fld        dword ptr [edi + 0x18]                        // 0x00483b95    d94718
                         fld                st(0)                                         // 0x00483b98    d9c0
                         fmul               st, st(1)                                     // 0x00483b9a    d8c9
                         fld                st(2)                                         // 0x00483b9c    d9c2
                         fmul               st, st(3)                                     // 0x00483b9e    d8cb
                         faddp              st(1), st                                     // 0x00483ba0    dec1
                         fld                st(3)                                         // 0x00483ba2    d9c3
                         fmul               st, st(4)                                     // 0x00483ba4    d8cc
                         faddp              st(1), st                                     // 0x00483ba6    dec1
                         fsqrt                                                            // 0x00483ba8    d9fa
                         {disp8} fstp       dword ptr [edi + 0x0c]                        // 0x00483baa    d95f0c
                         fstp               st(0)                                         // 0x00483bad    ddd8
                         fstp               st(0)                                         // 0x00483baf    ddd8
                         fstp               st(0)                                         // 0x00483bb1    ddd8
                         {disp8} fld        dword ptr [ebx + 0x10]                        // 0x00483bb3    d94310
                         {disp8} fld        dword ptr [ebx + 0x14]                        // 0x00483bb6    d94314
                         {disp8} fld        dword ptr [ebx + 0x18]                        // 0x00483bb9    d94318
                         fld                st(0)                                         // 0x00483bbc    d9c0
                         fmul               st, st(1)                                     // 0x00483bbe    d8c9
                         fld                st(2)                                         // 0x00483bc0    d9c2
                         fmul               st, st(3)                                     // 0x00483bc2    d8cb
                         faddp              st(1), st                                     // 0x00483bc4    dec1
                         fld                st(3)                                         // 0x00483bc6    d9c3
                         fmul               st, st(4)                                     // 0x00483bc8    d8cc
                         faddp              st(1), st                                     // 0x00483bca    dec1
                         fsqrt                                                            // 0x00483bcc    d9fa
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x00483bce    d95b0c
                         {disp32} mov       dword ptr [esi + 0x0000521c], 0x00000001      // 0x00483bd1    c7861c52000001000000
                         fstp               st(0)                                         // 0x00483bdb    ddd8
                         fstp               st(0)                                         // 0x00483bdd    ddd8
                         fstp               st(0)                                         // 0x00483bdf    ddd8
                         {disp32} jmp       _jmp_addr_0x00483c99                          // 0x00483be1    e9b3000000
_jmp_addr_0x00483be6:    push               0xa                                           // 0x00483be6    6a0a
                         mov.s              ecx, esi                                      // 0x00483be8    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00483bea    e8615a1900
                         mov.s              ebp, eax                                      // 0x00483bef    8be8
                         test               ebp, ebp                                      // 0x00483bf1    85ed
                         {disp32} je        _jmp_addr_0x00483ea7                          // 0x00483bf3    0f84ae020000
                         push               0x0                                           // 0x00483bf9    6a00
                         push               0xb                                           // 0x00483bfb    6a0b
                         mov.s              ecx, esi                                      // 0x00483bfd    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00483bff    e84c5a1900
                         mov.s              edi, eax                                      // 0x00483c04    8bf8
                         test               edi, edi                                      // 0x00483c06    85ff
                         {disp32} je        _jmp_addr_0x00483ea7                          // 0x00483c08    0f8499020000
                         push               0x0                                           // 0x00483c0e    6a00
                         push               0xc                                           // 0x00483c10    6a0c
                         mov.s              ecx, esi                                      // 0x00483c12    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00483c14    e8375a1900
                         mov.s              ebx, eax                                      // 0x00483c19    8bd8
                         test               ebx, ebx                                      // 0x00483c1b    85db
                         {disp32} je        _jmp_addr_0x00483ea7                          // 0x00483c1d    0f8484020000
                         {disp8} fld        dword ptr [ebp + 0x10]                        // 0x00483c23    d94510
                         {disp8} fld        dword ptr [ebp + 0x14]                        // 0x00483c26    d94514
                         {disp8} fld        dword ptr [ebp + 0x18]                        // 0x00483c29    d94518
                         fld                st(0)                                         // 0x00483c2c    d9c0
                         fmul               st, st(1)                                     // 0x00483c2e    d8c9
                         fld                st(2)                                         // 0x00483c30    d9c2
                         fmul               st, st(3)                                     // 0x00483c32    d8cb
                         faddp              st(1), st                                     // 0x00483c34    dec1
                         fld                st(3)                                         // 0x00483c36    d9c3
                         fmul               st, st(4)                                     // 0x00483c38    d8cc
                         faddp              st(1), st                                     // 0x00483c3a    dec1
                         fsqrt                                                            // 0x00483c3c    d9fa
                         {disp8} fstp       dword ptr [ebp + 0x0c]                        // 0x00483c3e    d95d0c
                         fstp               st(0)                                         // 0x00483c41    ddd8
                         fstp               st(0)                                         // 0x00483c43    ddd8
                         fstp               st(0)                                         // 0x00483c45    ddd8
                         {disp8} fld        dword ptr [edi + 0x10]                        // 0x00483c47    d94710
                         {disp8} fld        dword ptr [edi + 0x14]                        // 0x00483c4a    d94714
                         {disp8} fld        dword ptr [edi + 0x18]                        // 0x00483c4d    d94718
                         fld                st(0)                                         // 0x00483c50    d9c0
                         fmul               st, st(1)                                     // 0x00483c52    d8c9
                         fld                st(2)                                         // 0x00483c54    d9c2
                         fmul               st, st(3)                                     // 0x00483c56    d8cb
                         faddp              st(1), st                                     // 0x00483c58    dec1
                         fld                st(3)                                         // 0x00483c5a    d9c3
                         fmul               st, st(4)                                     // 0x00483c5c    d8cc
                         faddp              st(1), st                                     // 0x00483c5e    dec1
                         fsqrt                                                            // 0x00483c60    d9fa
                         {disp8} fstp       dword ptr [edi + 0x0c]                        // 0x00483c62    d95f0c
                         fstp               st(0)                                         // 0x00483c65    ddd8
                         fstp               st(0)                                         // 0x00483c67    ddd8
                         fstp               st(0)                                         // 0x00483c69    ddd8
                         {disp8} fld        dword ptr [ebx + 0x10]                        // 0x00483c6b    d94310
                         {disp8} fld        dword ptr [ebx + 0x14]                        // 0x00483c6e    d94314
                         {disp8} fld        dword ptr [ebx + 0x18]                        // 0x00483c71    d94318
                         fld                st(0)                                         // 0x00483c74    d9c0
                         fmul               st, st(1)                                     // 0x00483c76    d8c9
                         fld                st(2)                                         // 0x00483c78    d9c2
                         fmul               st, st(3)                                     // 0x00483c7a    d8cb
                         faddp              st(1), st                                     // 0x00483c7c    dec1
                         fld                st(3)                                         // 0x00483c7e    d9c3
                         fmul               st, st(4)                                     // 0x00483c80    d8cc
                         faddp              st(1), st                                     // 0x00483c82    dec1
                         fsqrt                                                            // 0x00483c84    d9fa
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x00483c86    d95b0c
                         {disp32} mov       dword ptr [esi + 0x0000521c], 0x00000002      // 0x00483c89    c7861c52000002000000
                         fstp               st(0)                                         // 0x00483c93    ddd8
                         fstp               st(0)                                         // 0x00483c95    ddd8
                         fstp               st(0)                                         // 0x00483c97    ddd8
_jmp_addr_0x00483c99:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x00483c99    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00483c9d    d84c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00483ca1    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00483ca5    d84c2418
                         faddp              st(1), st                                     // 0x00483ca9    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00483cab    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00483caf    d84c2410
                         faddp              st(1), st                                     // 0x00483cb3    dec1
                         fsqrt                                                            // 0x00483cb5    d9fa
                         {disp32} fdiv      dword ptr [esi + 0x00000094]                  // 0x00483cb7    d8b694000000
                         {disp8} fcom       dword ptr [ebp + 0x0c]                        // 0x00483cbd    d8550c
                         fnstsw             ax                                            // 0x00483cc0    dfe0
                         test               ah, 0x41                                      // 0x00483cc2    f6c441
                         {disp32} jne       _jmp_addr_0x00483e58                          // 0x00483cc5    0f858d010000
                         {disp8} fcom       dword ptr [edi + 0x0c]                        // 0x00483ccb    d8570c
                         fnstsw             ax                                            // 0x00483cce    dfe0
                         test               ah, 0x41                                      // 0x00483cd0    f6c441
                         {disp32} jne       _jmp_addr_0x00483e58                          // 0x00483cd3    0f857f010000
                         {disp8} fcomp      dword ptr [ebx + 0x0c]                        // 0x00483cd9    d85b0c
                         fnstsw             ax                                            // 0x00483cdc    dfe0
                         test               ah, 0x41                                      // 0x00483cde    f6c441
                         {disp32} jne       _jmp_addr_0x00483e5a                          // 0x00483ce1    0f8573010000
                         push               0x0                                           // 0x00483ce7    6a00
                         push               0x0                                           // 0x00483ce9    6a00
                         mov.s              ecx, esi                                      // 0x00483ceb    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00483ced    e85e591900
                         {disp32} fld       dword ptr [esi + 0x00004840]                  // 0x00483cf2    d98640480000
                         {disp8} mov        ecx, dword ptr [eax + 0x34]                   // 0x00483cf8    8b4834
                         {disp32} fsub      dword ptr [esi + 0x00000084]                  // 0x00483cfb    d8a684000000
                         mov                edx, dword ptr [ecx]                          // 0x00483d01    8b11
                         push               ecx                                           // 0x00483d03    51
                         fstp               dword ptr [esp]                               // 0x00483d04    d91c24
                         {disp8} mov        dword ptr [esp + 0x48], edx                   // 0x00483d07    89542448
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000      // 0x00483d0b    c786d047000000000000
                         call               _jmp_addr_0x007faaf0                          // 0x00483d15    e8d66d3700
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00483d1a    d81598a38a00
                         add                esp, 0x04                                     // 0x00483d20    83c404
                         {disp8} fst        dword ptr [esp + 0x48]                        // 0x00483d23    d9542448
                         fnstsw             ax                                            // 0x00483d27    dfe0
                         test               ah, 0x01                                      // 0x00483d29    f6c401
                         {disp8} je         _jmp_addr_0x00483d34                          // 0x00483d2c    7406
                         fchs                                                             // 0x00483d2e    d9e0
                         {disp8} fst        dword ptr [esp + 0x48]                        // 0x00483d30    d9542448
_jmp_addr_0x00483d34:    {disp32} fcomp     dword ptr [rdata_bytes + 0x1e8d8]             // 0x00483d34    d81dd8788c00
                         fnstsw             ax                                            // 0x00483d3a    dfe0
                         test               ah, 0x01                                      // 0x00483d3c    f6c401
                         {disp8} je         _jmp_addr_0x00483d78                          // 0x00483d3f    7437
                         push               0x00000aef                                    // 0x00483d41    68ef0a0000
                         push               0x009d1094                                    // 0x00483d46    6894109d00
                         push               0x38                                          // 0x00483d4b    6a38
                         call               ___nw__FUl                                    // 0x00483d4d    e83e7a3500
                         add                esp, 0x0c                                     // 0x00483d52    83c40c
                         test               eax, eax                                      // 0x00483d55    85c0
                         {disp8} je         _jmp_addr_0x00483db5                          // 0x00483d57    745c
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00483d59    d9442448
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x00483d5d    8b542444
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2614c]             // 0x00483d61    d80d4cf18c00
                         push               ecx                                           // 0x00483d67    51
                         mov.s              ecx, eax                                      // 0x00483d68    8bc8
                         fstp               dword ptr [esp]                               // 0x00483d6a    d91c24
                         push               edx                                           // 0x00483d6d    52
                         push               edi                                           // 0x00483d6e    57
                         push               edx                                           // 0x00483d6f    52
                         push               ebp                                           // 0x00483d70    55
                         call               _jmp_addr_0x0085e9d0                          // 0x00483d71    e85aac3d00
                         {disp8} jmp        _jmp_addr_0x00483db7                          // 0x00483d76    eb3f
_jmp_addr_0x00483d78:    push               0x00000af5                                    // 0x00483d78    68f50a0000
                         push               0x009d1094                                    // 0x00483d7d    6894109d00
                         push               0x38                                          // 0x00483d82    6a38
                         call               ___nw__FUl                                    // 0x00483d84    e8077a3500
                         add                esp, 0x0c                                     // 0x00483d89    83c40c
                         test               eax, eax                                      // 0x00483d8c    85c0
                         {disp8} je         _jmp_addr_0x00483db5                          // 0x00483d8e    7425
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00483d90    d9442448
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x00483d94    8b542444
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e8d8]             // 0x00483d98    d825d8788c00
                         push               ecx                                           // 0x00483d9e    51
                         mov.s              ecx, eax                                      // 0x00483d9f    8bc8
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2614c]             // 0x00483da1    d80d4cf18c00
                         fstp               dword ptr [esp]                               // 0x00483da7    d91c24
                         push               edx                                           // 0x00483daa    52
                         push               ebx                                           // 0x00483dab    53
                         push               edx                                           // 0x00483dac    52
                         push               edi                                           // 0x00483dad    57
                         call               _jmp_addr_0x0085e9d0                          // 0x00483dae    e81dac3d00
                         {disp8} jmp        _jmp_addr_0x00483db7                          // 0x00483db3    eb02
_jmp_addr_0x00483db5:    xor.s              eax, eax                                      // 0x00483db5    33c0
_jmp_addr_0x00483db7:    {disp32} mov       dword ptr [esi + 0x00005220], eax             // 0x00483db7    898620520000
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x00483dbd    8b481c
                         dec                ecx                                           // 0x00483dc0    49
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x00483dc1    894c2448
                         {disp8} fild       dword ptr [esp + 0x48]                        // 0x00483dc5    db442448
                         push               ecx                                           // 0x00483dc9    51
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00483dca    d95c2448
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00483dce    d90590a38a00
                         {disp8} fdiv       dword ptr [esp + 0x48]                        // 0x00483dd4    d8742448
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00483dd8    d95c244c
                         {disp32} fld       dword ptr [esi + 0x00004840]                  // 0x00483ddc    d98640480000
                         {disp32} fsub      dword ptr [esi + 0x00000084]                  // 0x00483de2    d8a684000000
                         fstp               dword ptr [esp]                               // 0x00483de8    d91c24
                         call               _jmp_addr_0x007faaf0                          // 0x00483deb    e8006d3700
                         fld                st(0)                                         // 0x00483df0    d9c0
                         {disp32} mov       edi, dword ptr [esi + 0x00005220]             // 0x00483df2    8bbe20520000
                         fsin                                                             // 0x00483df8    d9fe
                         add                esp, 0x04                                     // 0x00483dfa    83c404
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00483dfd    d95c2428
                         fcos                                                             // 0x00483e01    d9ff
                         fchs                                                             // 0x00483e03    d9e0
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00483e05    d9442448
                         {disp8} fmul       dword ptr [edi + 0x10]                        // 0x00483e09    d84f10
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00483e0c    d9442448
                         {disp8} fmul       dword ptr [edi + 0x14]                        // 0x00483e10    d84f14
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00483e13    d95c2438
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00483e17    d9442448
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x00483e1b    d84f18
                         fxch               st(2)                                         // 0x00483e1e    d9ca
                         fmul               st, st(2)                                     // 0x00483e20    d8ca
                         fxch               st(1)                                         // 0x00483e22    d9c9
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x00483e24    d84c2428
                         faddp              st(1), st                                     // 0x00483e28    dec1
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x00483e2a    d88e94000000
                         {disp32} fdiv      dword ptr [esi + 0x00004844]                  // 0x00483e30    d8b644480000
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x00483e36    d84c2444
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x00483e3a    d80d28b28a00
                         call               _jmp_addr_0x007a1400                          // 0x00483e40    e8bbd53100
                         fstp               st(0)                                         // 0x00483e45    ddd8
                         mov                dword ptr [edi], eax                          // 0x00483e47    8907
                         pop                edi                                           // 0x00483e49    5f
                         pop                esi                                           // 0x00483e4a    5e
                         pop                ebp                                           // 0x00483e4b    5d
                         mov                eax, 0x00000005                               // 0x00483e4c    b805000000
                         pop                ebx                                           // 0x00483e51    5b
                         add                esp, 0x30                                     // 0x00483e52    83c430
                         ret                0x0008                                        // 0x00483e55    c20800
_jmp_addr_0x00483e58:    fstp               st(0)                                         // 0x00483e58    ddd8
_jmp_addr_0x00483e5a:    {disp32} fld       dword ptr [esi + 0x00004840]                  // 0x00483e5a    d98640480000
                         push               ecx                                           // 0x00483e60    51
                         {disp32} fsub      dword ptr [esi + 0x00000084]                  // 0x00483e61    d8a684000000
                         fstp               dword ptr [esp]                               // 0x00483e67    d91c24
                         call               _jmp_addr_0x007faaf0                          // 0x00483e6a    e8816c3700
                         fabs                                                             // 0x00483e6f    d9e1
                         add                esp, 0x04                                     // 0x00483e71    83c404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ea08]             // 0x00483e74    d81d087a8c00
                         fnstsw             ax                                            // 0x00483e7a    dfe0
                         test               ah, 0x01                                      // 0x00483e7c    f6c401
                         {disp8} je         _jmp_addr_0x00483e9e                          // 0x00483e7f    741d
                         xor.s              eax, eax                                      // 0x00483e81    33c0
                         pop                edi                                           // 0x00483e83    5f
                         {disp32} mov       dword ptr [esi + 0x000047d4], eax             // 0x00483e84    8986d4470000
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x00483e8a    8986d0470000
                         pop                esi                                           // 0x00483e90    5e
                         pop                ebp                                           // 0x00483e91    5d
                         mov                eax, 0x00000006                               // 0x00483e92    b806000000
                         pop                ebx                                           // 0x00483e97    5b
                         add                esp, 0x30                                     // 0x00483e98    83c430
                         ret                0x0008                                        // 0x00483e9b    c20800
_jmp_addr_0x00483e9e:    {disp32} mov       edx, dword ptr [esi + 0x00004840]             // 0x00483e9e    8b9640480000
                         push               edx                                           // 0x00483ea4    52
                         {disp8} jmp        _jmp_addr_0x00483eae                          // 0x00483ea5    eb07
_jmp_addr_0x00483ea7:    {disp32} mov       eax, dword ptr [esi + 0x00004840]             // 0x00483ea7    8b8640480000
                         push               eax                                           // 0x00483ead    50
_jmp_addr_0x00483eae:    mov.s              ecx, esi                                      // 0x00483eae    8bce
                         call               _jmp_addr_0x0048b790                          // 0x00483eb0    e8db780000
                         pop                edi                                           // 0x00483eb5    5f
                         pop                esi                                           // 0x00483eb6    5e
                         pop                ebp                                           // 0x00483eb7    5d
                         mov                eax, 0x00000004                               // 0x00483eb8    b804000000
                         pop                ebx                                           // 0x00483ebd    5b
                         add                esp, 0x30                                     // 0x00483ebe    83c430
                         ret                0x0008                                        // 0x00483ec1    c20800
                         nop                                                              // 0x00483ec4    90
                         nop                                                              // 0x00483ec5    90
                         nop                                                              // 0x00483ec6    90
                         nop                                                              // 0x00483ec7    90
                         nop                                                              // 0x00483ec8    90
                         nop                                                              // 0x00483ec9    90
                         nop                                                              // 0x00483eca    90
                         nop                                                              // 0x00483ecb    90
                         nop                                                              // 0x00483ecc    90
                         nop                                                              // 0x00483ecd    90
                         nop                                                              // 0x00483ece    90
                         nop                                                              // 0x00483ecf    90
_jmp_addr_0x00483ed0:    push               esi                                           // 0x00483ed0    56
                         mov.s              esi, ecx                                      // 0x00483ed1    8bf1
                         {disp32} mov       cl, byte ptr [data_bytes + 0x29e194]          // 0x00483ed3    8a0d9441c600
                         mov                al, 0x01                                      // 0x00483ed9    b001
                         test               al, cl                                        // 0x00483edb    84c8
                         {disp8} jne        _jmp_addr_0x00483ef6                          // 0x00483edd    7517
                         mov.s              dl, cl                                        // 0x00483edf    8ad1
                         or.s               dl, al                                        // 0x00483ee1    0ad0
                         push               0x00483f30                                    // 0x00483ee3    68303f4800
                         {disp32} mov       byte ptr [data_bytes + 0x29e194], dl          // 0x00483ee8    88159441c600
                         call               _atexit                                       // 0x00483eee    e89e183400
                         add                esp, 0x04                                     // 0x00483ef3    83c404
_jmp_addr_0x00483ef6:    {disp32} mov       eax, dword ptr [esi + 0x00005198]             // 0x00483ef6    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064078]                  // 0x00483efc    d98078400600
                         pop                esi                                           // 0x00483f02    5e
                         {disp32} fld       dword ptr [eax + 0x00064074]                  // 0x00483f03    d98074400600
                         {disp32} mov       dword ptr [data_bytes + 0x29e18c], 0x00000000 // 0x00483f09    c7058c41c60000000000
                         {disp32} fstp      dword ptr [data_bytes + 0x29e188]             // 0x00483f13    d91d8841c600
                         mov                eax, 0x00c64188                               // 0x00483f19    b88841c600
                         {disp32} fstp      dword ptr [data_bytes + 0x29e190]             // 0x00483f1e    d91d9041c600
                         ret                                                              // 0x00483f24    c3
                         nop                                                              // 0x00483f25    90
                         nop                                                              // 0x00483f26    90
                         nop                                                              // 0x00483f27    90
                         nop                                                              // 0x00483f28    90
                         nop                                                              // 0x00483f29    90
                         nop                                                              // 0x00483f2a    90
                         nop                                                              // 0x00483f2b    90
                         nop                                                              // 0x00483f2c    90
                         nop                                                              // 0x00483f2d    90
                         nop                                                              // 0x00483f2e    90
                         nop                                                              // 0x00483f2f    90
                         ret                                                              // 0x00483f30    c3
                         nop                                                              // 0x00483f31    90
                         nop                                                              // 0x00483f32    90
                         nop                                                              // 0x00483f33    90
                         nop                                                              // 0x00483f34    90
                         nop                                                              // 0x00483f35    90
                         nop                                                              // 0x00483f36    90
                         nop                                                              // 0x00483f37    90
                         nop                                                              // 0x00483f38    90
                         nop                                                              // 0x00483f39    90
                         nop                                                              // 0x00483f3a    90
                         nop                                                              // 0x00483f3b    90
                         nop                                                              // 0x00483f3c    90
                         nop                                                              // 0x00483f3d    90
                         nop                                                              // 0x00483f3e    90
                         nop                                                              // 0x00483f3f    90
_jmp_addr_0x00483f40:    sub                esp, 0x0c                                     // 0x00483f40    83ec0c
                         push               edi                                           // 0x00483f43    57
                         mov.s              edi, ecx                                      // 0x00483f44    8bf9
                         call               _jmp_addr_0x004842e0                          // 0x00483f46    e895030000
                         test               eax, eax                                      // 0x00483f4b    85c0
                         {disp8} jne        _jmp_addr_0x00483f5b                          // 0x00483f4d    750c
                         mov                eax, 0x00000001                               // 0x00483f4f    b801000000
                         pop                edi                                           // 0x00483f54    5f
                         add                esp, 0x0c                                     // 0x00483f55    83c40c
                         ret                0x0010                                        // 0x00483f58    c21000
_jmp_addr_0x00483f5b:    push               ebx                                           // 0x00483f5b    53
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00483f5c    8b5c2418
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x00483f60    8b431c
                         push               esi                                           // 0x00483f63    56
                         {disp8} lea        esi, dword ptr [ebx + 0x14]                   // 0x00483f64    8d7314
                         mov.s              ecx, esi                                      // 0x00483f67    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00483f69    8944241c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00483f6d    e81ef13700
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00483f72    d844241c
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x00483f76    8b8734480000
                         mov                edx, dword ptr [ebx]                          // 0x00483f7c    8b13
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00483f7e    d95c2410
                         push               eax                                           // 0x00483f82    50
                         fild               dword ptr [esi]                               // 0x00483f83    db06
                         mov.s              ecx, ebx                                      // 0x00483f85    8bcb
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00483f87    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00483f8d    d95c2410
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00483f91    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00483f94    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00483f9a    d95c2418
                         call               dword ptr [edx + 0x7c4]                       // 0x00483f9e    ff92c4070000
                         mov.s              ecx, edi                                      // 0x00483fa4    8bcf
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00483fa6    d95c241c
                         call               _jmp_addr_0x00480a60                          // 0x00483faa    e8b1caffff
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00483faf    d844241c
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00483fb3    8b4c2428
                         push               ecx                                           // 0x00483fb7    51
                         fld                st(0)                                         // 0x00483fb8    d9c0
                         push               ecx                                           // 0x00483fba    51
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x00483fbb    d844242c
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00483fbf    8d542414
                         fstp               dword ptr [esp]                               // 0x00483fc3    d91c24
                         push               ecx                                           // 0x00483fc6    51
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x00483fc7    d844242c
                         mov.s              ecx, edi                                      // 0x00483fcb    8bcf
                         fstp               dword ptr [esp]                               // 0x00483fcd    d91c24
                         push               edx                                           // 0x00483fd0    52
                         call               _jmp_addr_0x00483fe0                          // 0x00483fd1    e80a000000
                         pop                esi                                           // 0x00483fd6    5e
                         pop                ebx                                           // 0x00483fd7    5b
                         pop                edi                                           // 0x00483fd8    5f
                         add                esp, 0x0c                                     // 0x00483fd9    83c40c
                         ret                0x0010                                        // 0x00483fdc    c21000
                         nop                                                              // 0x00483fdf    90
_jmp_addr_0x00483fe0:    sub                esp, 0x20                                     // 0x00483fe0    83ec20
                         push               ebx                                           // 0x00483fe3    53
                         push               ebp                                           // 0x00483fe4    55
                         push               esi                                           // 0x00483fe5    56
                         push               edi                                           // 0x00483fe6    57
                         mov.s              esi, ecx                                      // 0x00483fe7    8bf1
                         call               _jmp_addr_0x004842e0                          // 0x00483fe9    e8f2020000
                         test               eax, eax                                      // 0x00483fee    85c0
                         {disp32} je        _jmp_addr_0x00484244                          // 0x00483ff0    0f844e020000
                         {disp8} mov        ebx, dword ptr [esp + 0x34]                   // 0x00483ff6    8b5c2434
                         push               ebx                                           // 0x00483ffa    53
                         call               _jmp_addr_0x00483850                          // 0x00483ffb    e850f8ffff
                         add                esp, 0x04                                     // 0x00484000    83c404
                         test               eax, eax                                      // 0x00484003    85c0
                         {disp8} jne        _jmp_addr_0x00484011                          // 0x00484005    750a
                         pop                edi                                           // 0x00484007    5f
                         pop                esi                                           // 0x00484008    5e
                         pop                ebp                                           // 0x00484009    5d
                         pop                ebx                                           // 0x0048400a    5b
                         add                esp, 0x20                                     // 0x0048400b    83c420
                         ret                0x0010                                        // 0x0048400e    c21000
_jmp_addr_0x00484011:    {disp32} mov       eax, dword ptr [esi + 0x000051ec]             // 0x00484011    8b86ec510000
                         xor.s              ebp, ebp                                      // 0x00484017    33ed
                         cmp.s              eax, ebp                                      // 0x00484019    3bc5
                         {disp32} jne       _jmp_addr_0x00484244                          // 0x0048401b    0f8523020000
                         cmp                dword ptr [esi + 0x00004994], 0x01            // 0x00484021    83be9449000001
                         {disp32} je        _jmp_addr_0x004840d1                          // 0x00484028    0f84a3000000
                         {disp8} lea        edi, dword ptr [esi + 0x78]                   // 0x0048402e    8d7e78
                         push               edi                                           // 0x00484031    57
                         call               _jmp_addr_0x00483870                          // 0x00484032    e839f8ffff
                         add                esp, 0x04                                     // 0x00484037    83c404
                         test               eax, eax                                      // 0x0048403a    85c0
                         {disp8} jne        _jmp_addr_0x0048406c                          // 0x0048403c    752e
                         mov                eax, dword ptr [edi]                          // 0x0048403e    8b07
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x00484040    8b4f04
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x00484043    8b5708
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00484046    89442424
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0048404a    8d442424
                         push               eax                                           // 0x0048404e    50
                         push               edi                                           // 0x0048404f    57
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00484050    894c2430
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00484054    89542434
                         call               _jmp_addr_0x004839d0                          // 0x00484058    e873f9ffff
                         add                esp, 0x08                                     // 0x0048405d    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00484060    8d4c2424
                         push               ecx                                           // 0x00484064    51
                         mov.s              ecx, esi                                      // 0x00484065    8bce
                         call               _jmp_addr_0x006182f0                          // 0x00484067    e884421900
_jmp_addr_0x0048406c:    fld                dword ptr [edi]                               // 0x0048406c    d907
                         mov.s              ecx, esi                                      // 0x0048406e    8bce
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00484070    d95c2410
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x00484074    d98680000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048407a    d95c2414
                         call               _jmp_addr_0x00480a60                          // 0x0048407e    e8ddc9ffff
                         push               ecx                                           // 0x00484083    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]             // 0x00484084    8b8e98510000
                         fstp               dword ptr [esp]                               // 0x0048408a    d91c24
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0048408d    8d542414
                         push               edx                                           // 0x00484091    52
                         call               _jmp_addr_0x00863b00                          // 0x00484092    e869fa3d00
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00484097    8b8634480000
                         cmp.s              eax, ebp                                      // 0x0048409d    3bc5
                         {disp32} mov       dword ptr [esi + 0x00005190], ebp             // 0x0048409f    89ae90510000
                         {disp32} mov       dword ptr [esi + 0x0000573c], 0x00000bb8      // 0x004840a5    c7863c570000b80b0000
                         {disp32} mov       dword ptr [esi + 0x00005740], ebp             // 0x004840af    89ae40570000
                         {disp32} mov       dword ptr [esi + 0x00005744], ebp             // 0x004840b5    89ae44570000
                         {disp8} je         _jmp_addr_0x004840c5                          // 0x004840bb    7408
                         cmp                dword ptr [eax + 0x000012a8], ebp             // 0x004840bd    39a8a8120000
                         {disp8} jne        _jmp_addr_0x0048411e                          // 0x004840c3    7559
_jmp_addr_0x004840c5:    {disp32} mov       dword ptr [esi + 0x0000519c], 0x00000001      // 0x004840c5    c7869c51000001000000
                         {disp8} jmp        _jmp_addr_0x0048411e                          // 0x004840cf    eb4d
_jmp_addr_0x004840d1:    fld                dword ptr [ebx]                               // 0x004840d1    d903
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]             // 0x004840d3    8b8698510000
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x004840d9    d94308
                         add                eax, 0x00064074                               // 0x004840dc    0574400600
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004840e1    d95c2414
                         fsub               dword ptr [eax]                               // 0x004840e5    d820
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004840e7    d9442414
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x004840eb    d86004
                         fld                st(0)                                         // 0x004840ee    d9c0
                         fmul               st, st(1)                                     // 0x004840f0    d8c9
                         fld                st(2)                                         // 0x004840f2    d9c2
                         fmul               st, st(3)                                     // 0x004840f4    d8cb
                         faddp              st(1), st                                     // 0x004840f6    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x004840f8    d81d40588c00
                         fnstsw             ax                                            // 0x004840fe    dfe0
                         fstp               st(0)                                         // 0x00484100    ddd8
                         test               ah, 0x01                                      // 0x00484102    f6c401
                         fstp               st(0)                                         // 0x00484105    ddd8
                         {disp8} je         _jmp_addr_0x00484118                          // 0x00484107    740f
                         pop                edi                                           // 0x00484109    5f
                         pop                esi                                           // 0x0048410a    5e
                         pop                ebp                                           // 0x0048410b    5d
                         mov                eax, 0x00000004                               // 0x0048410c    b804000000
                         pop                ebx                                           // 0x00484111    5b
                         add                esp, 0x20                                     // 0x00484112    83c420
                         ret                0x0010                                        // 0x00484115    c21000
_jmp_addr_0x00484118:    {disp32} mov       dword ptr [esi + 0x0000519c], ebp             // 0x00484118    89ae9c510000
_jmp_addr_0x0048411e:    {disp8} fld        dword ptr [esi + 0x78]                        // 0x0048411e    d94678
                         fsub               dword ptr [ebx]                               // 0x00484121    d823
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x00484123    d98680000000
                         {disp8} fsub       dword ptr [ebx + 0x08]                        // 0x00484129    d86308
                         fld                st(0)                                         // 0x0048412c    d9c0
                         fmul               st, st(1)                                     // 0x0048412e    d8c9
                         fld                st(2)                                         // 0x00484130    d9c2
                         fmul               st, st(3)                                     // 0x00484132    d8cb
                         faddp              st(1), st                                     // 0x00484134    dec1
                         fsqrt                                                            // 0x00484136    d9fa
                         fstp               st(2)                                         // 0x00484138    ddda
                         fstp               st(0)                                         // 0x0048413a    ddd8
                         {disp32} fsub      dword ptr [rdata_bytes + 0x33f4]              // 0x0048413c    d825f4c38a00
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00484142    d944243c
                         fcomp              st(1)                                         // 0x00484146    d8d9
                         fnstsw             ax                                            // 0x00484148    dfe0
                         test               ah, 0x01                                      // 0x0048414a    f6c401
                         {disp8} jne        _jmp_addr_0x00484155                          // 0x0048414d    7506
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0048414f    d95c243c
                         {disp8} jmp        _jmp_addr_0x00484157                          // 0x00484153    eb02
_jmp_addr_0x00484155:    fstp               st(0)                                         // 0x00484155    ddd8
_jmp_addr_0x00484157:    {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00484157    d944243c
                         {disp32} fadd      dword ptr [_rdata_float0p001]                 // 0x0048415b    d805b0a38a00
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00484161    d9442438
                         fcomp              st(1)                                         // 0x00484165    d8d9
                         fnstsw             ax                                            // 0x00484167    dfe0
                         test               ah, 0x01                                      // 0x00484169    f6c401
                         {disp8} je         _jmp_addr_0x00484174                          // 0x0048416c    7406
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0048416e    d95c2438
                         {disp8} jmp        _jmp_addr_0x00484176                          // 0x00484172    eb02
_jmp_addr_0x00484174:    fstp               st(0)                                         // 0x00484174    ddd8
_jmp_addr_0x00484176:    {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x00484176    8b4b08
                         mov                eax, dword ptr [ebx]                          // 0x00484179    8b03
                         push               ebp                                           // 0x0048417b    55
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0048417c    894c241c
                         push               0x1                                           // 0x00484180    6a01
                         mov.s              ecx, esi                                      // 0x00484182    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00484184    89442418
                         call               @GetAnim__9MorphableFll@16                    // 0x00484188    e8c3541900
                         test               eax, eax                                      // 0x0048418d    85c0
                         {disp32} je        _jmp_addr_0x00484244                          // 0x0048418f    0f84af000000
                         push               ebp                                           // 0x00484195    55
                         push               0x2                                           // 0x00484196    6a02
                         mov.s              ecx, esi                                      // 0x00484198    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x0048419a    e8b1541900
                         test               eax, eax                                      // 0x0048419f    85c0
                         {disp32} je        _jmp_addr_0x00484244                          // 0x004841a1    0f849d000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004841a7    d9442410
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x004841ab    8b542440
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x004841af    d95c241c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004841b3    d9442418
                         push               edx                                           // 0x004841b7    52
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x004841b8    d95c2424
                         mov.s              ecx, esi                                      // 0x004841bc    8bce
                         call               _jmp_addr_0x00480a60                          // 0x004841be    e89dc8ffff
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x004841c3    8b44243c
                         push               ecx                                           // 0x004841c7    51
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x004841c8    8b4c2444
                         fstp               dword ptr [esp]                               // 0x004841cc    d91c24
                         push               eax                                           // 0x004841cf    50
                         push               ecx                                           // 0x004841d0    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]             // 0x004841d1    8b8e98510000
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x004841d7    8d54242c
                         push               edx                                           // 0x004841db    52
                         call               @SetDest__8RPFollowFRC7Point2Dffff@28         // 0x004841dc    e88ff93d00
                         {disp32} mov       edi, dword ptr [esi + 0x00004834]             // 0x004841e1    8bbe34480000
                         cmp.s              edi, ebp                                      // 0x004841e7    3bfd
                         {disp32} mov       dword ptr [esi + 0x00004994], 0x00000001      // 0x004841e9    c7869449000001000000
                         {disp8} je         _jmp_addr_0x00484235                          // 0x004841f3    7440
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004841f5    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x004841f9    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x004841ff    e8fcd13100
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00484204    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00484208    d80d00c48a00
                         {disp32} mov       dword ptr [edi + 0x00001214], eax             // 0x0048420e    898714120000
                         call               _jmp_addr_0x007a1400                          // 0x00484214    e8e7d13100
                         {disp32} mov       dword ptr [edi + 0x00001218], eax             // 0x00484219    898718120000
                         {disp32} mov       dword ptr [edi + 0x0000121c], ebp             // 0x0048421f    89af1c120000
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00484225    8b8634480000
                         {disp32} mov       dword ptr [eax + 0x00001118], 0x00000001      // 0x0048422b    c7801811000001000000
_jmp_addr_0x00484235:    pop                edi                                           // 0x00484235    5f
                         pop                esi                                           // 0x00484236    5e
                         pop                ebp                                           // 0x00484237    5d
                         mov                eax, 0x00000004                               // 0x00484238    b804000000
                         pop                ebx                                           // 0x0048423d    5b
                         add                esp, 0x20                                     // 0x0048423e    83c420
                         ret                0x0010                                        // 0x00484241    c21000
_jmp_addr_0x00484244:    pop                edi                                           // 0x00484244    5f
                         pop                esi                                           // 0x00484245    5e
                         pop                ebp                                           // 0x00484246    5d
                         mov                eax, 0x00000001                               // 0x00484247    b801000000
                         pop                ebx                                           // 0x0048424c    5b
                         add                esp, 0x20                                     // 0x0048424d    83c420
                         ret                0x0010                                        // 0x00484250    c21000
                         nop                                                              // 0x00484253    90
                         nop                                                              // 0x00484254    90
                         nop                                                              // 0x00484255    90
                         nop                                                              // 0x00484256    90
                         nop                                                              // 0x00484257    90
                         nop                                                              // 0x00484258    90
                         nop                                                              // 0x00484259    90
                         nop                                                              // 0x0048425a    90
                         nop                                                              // 0x0048425b    90
                         nop                                                              // 0x0048425c    90
                         nop                                                              // 0x0048425d    90
                         nop                                                              // 0x0048425e    90
                         nop                                                              // 0x0048425f    90
_jmp_addr_0x00484260:    push               esi                                           // 0x00484260    56
                         mov.s              esi, ecx                                      // 0x00484261    8bf1
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x00484263    d98690000000
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]             // 0x00484269    8b8694490000
                         cmp                eax, 0x01                                     // 0x0048426f    83f801
                         fsqrt                                                            // 0x00484272    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00484274    d83d90a38a00
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x26e4]              // 0x0048427a    d83de4b68a00
                         {disp32} fstp      dword ptr [esi + 0x00004990]                  // 0x00484280    d99e90490000
                         {disp8} jne        _jmp_addr_0x004842a4                          // 0x00484286    751c
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]             // 0x00484288    8b8e98510000
                         call               _jmp_addr_0x00863ef0                          // 0x0048428e    e85dfc3d00
                         {disp32} mov       dword ptr [esi + 0x000051b4], 0x00000000      // 0x00484293    c786b451000000000000
                         mov                eax, 0x00000001                               // 0x0048429d    b801000000
                         pop                esi                                           // 0x004842a2    5e
                         ret                                                              // 0x004842a3    c3
_jmp_addr_0x004842a4:    xor.s              eax, eax                                      // 0x004842a4    33c0
                         pop                esi                                           // 0x004842a6    5e
                         ret                                                              // 0x004842a7    c3
                         nop                                                              // 0x004842a8    90
                         nop                                                              // 0x004842a9    90
                         nop                                                              // 0x004842aa    90
                         nop                                                              // 0x004842ab    90
                         nop                                                              // 0x004842ac    90
                         nop                                                              // 0x004842ad    90
                         nop                                                              // 0x004842ae    90
                         nop                                                              // 0x004842af    90
?GetSafeBuffer@LH3DCreature@@QAEPAEXZ:
                                       {disp32} mov       eax, dword ptr [ecx + 0x00005270]             // 0x004842b0    8b8170520000
                         test               eax, eax                                      // 0x004842b6    85c0
                         {disp8} je         _jmp_addr_0x004842c1                          // 0x004842b8    7407
                         {disp32} mov       eax, dword ptr [ecx + 0x00005180]             // 0x004842ba    8b8180510000
                         ret                                                              // 0x004842c0    c3
_jmp_addr_0x004842c1:    {disp32} mov       eax, dword ptr [ecx + 0x00005178]             // 0x004842c1    8b8178510000
                         ret                                                              // 0x004842c7    c3
                         nop                                                              // 0x004842c8    90
                         nop                                                              // 0x004842c9    90
                         nop                                                              // 0x004842ca    90
                         nop                                                              // 0x004842cb    90
                         nop                                                              // 0x004842cc    90
                         nop                                                              // 0x004842cd    90
                         nop                                                              // 0x004842ce    90
                         nop                                                              // 0x004842cf    90
?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ:
                         {disp32} mov       edx, dword ptr [ecx + 0x00004994]             // 0x004842d0    8b9194490000
                         xor.s              eax, eax                                      // 0x004842d6    33c0
                         test               edx, edx                                      // 0x004842d8    85d2
                         setne              al                                            // 0x004842da    0f95c0
                         ret                                                              // 0x004842dd    c3
                         nop                                                              // 0x004842de    90
                         nop                                                              // 0x004842df    90
_jmp_addr_0x004842e0:    {disp32} mov       eax, dword ptr [ecx + 0x00004994]             // 0x004842e0    8b8194490000
                         test               eax, eax                                      // 0x004842e6    85c0
                         {disp8} jl         _jmp_addr_0x004842f5                          // 0x004842e8    7c0b
                         cmp                eax, 0x01                                     // 0x004842ea    83f801
                         {disp8} jg         _jmp_addr_0x004842f5                          // 0x004842ed    7f06
                         mov                eax, 0x00000001                               // 0x004842ef    b801000000
                         ret                                                              // 0x004842f4    c3
_jmp_addr_0x004842f5:    xor.s              eax, eax                                      // 0x004842f5    33c0
                         ret                                                              // 0x004842f7    c3
                         nop                                                              // 0x004842f8    90
                         nop                                                              // 0x004842f9    90
                         nop                                                              // 0x004842fa    90
                         nop                                                              // 0x004842fb    90
                         nop                                                              // 0x004842fc    90
                         nop                                                              // 0x004842fd    90
                         nop                                                              // 0x004842fe    90
                         nop                                                              // 0x004842ff    90
_jmp_addr_0x00484300:    {disp32} mov       edx, dword ptr [ecx + 0x00004994]             // 0x00484300    8b9194490000
                         xor.s              eax, eax                                      // 0x00484306    33c0
                         cmp                edx, 0x01                                     // 0x00484308    83fa01
                         sete               al                                            // 0x0048430b    0f94c0
                         ret                                                              // 0x0048430e    c3
                         nop                                                              // 0x0048430f    90
_jmp_addr_0x00484310:    push               esi                                           // 0x00484310    56
                         mov.s              esi, ecx                                      // 0x00484311    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00484313    8b8634480000
                         test               eax, eax                                      // 0x00484319    85c0
                         {disp8} je         _jmp_addr_0x00484333                          // 0x0048431b    7416
                         push               0x00000bb1                                    // 0x0048431d    68b10b0000
                         push               0x009d1094                                    // 0x00484322    6894109d00
                         push               0x2                                           // 0x00484327    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00484329    e8e2a12500
                         add                esp, 0x0c                                     // 0x0048432e    83c40c
                         {disp8} jmp        _jmp_addr_0x0048433d                          // 0x00484331    eb0a
_jmp_addr_0x00484333:    push               0x2                                           // 0x00484333    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00484335    e836a22500
                         add                esp, 0x04                                     // 0x0048433a    83c404
_jmp_addr_0x0048433d:    {disp32} mov       edx, dword ptr [esi + 0x00004a90]             // 0x0048433d    8b96904a0000
                         xor.s              ecx, ecx                                      // 0x00484343    33c9
                         test               edx, edx                                      // 0x00484345    85d2
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00484347    8b542408
                         setne              cl                                            // 0x0048434b    0f95c1
                         dec                ecx                                           // 0x0048434e    49
                         and.s              ecx, eax                                      // 0x0048434f    23c8
                         push               ecx                                           // 0x00484351    51
                         push               edx                                           // 0x00484352    52
                         mov.s              ecx, esi                                      // 0x00484353    8bce
                         call               _jmp_addr_0x004843a0                          // 0x00484355    e846000000
                         pop                esi                                           // 0x0048435a    5e
                         ret                0x0004                                        // 0x0048435b    c20400
                         nop                                                              // 0x0048435e    90
                         nop                                                              // 0x0048435f    90
_jmp_addr_0x00484360:    push               esi                                           // 0x00484360    56
                         mov.s              esi, ecx                                      // 0x00484361    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005738]             // 0x00484363    8b8638570000
                         test               eax, eax                                      // 0x00484369    85c0
                         push               edi                                           // 0x0048436b    57
                         {disp8} jne        _jmp_addr_0x00484398                          // 0x0048436c    752a
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0048436e    8b7c240c
                         push               0x0                                           // 0x00484372    6a00
                         push               edi                                           // 0x00484374    57
                         call               @GetAnim__9MorphableFll@16                    // 0x00484375    e8d6521900
                         test               eax, eax                                      // 0x0048437a    85c0
                         {disp8} je         _jmp_addr_0x00484398                          // 0x0048437c    741a
                         {disp32} mov       dword ptr [esi + 0x00005738], edi             // 0x0048437e    89be38570000
                         pop                edi                                           // 0x00484384    5f
                         {disp32} mov       dword ptr [esi + 0x00005734], 0x00000000      // 0x00484385    c7863457000000000000
                         mov                eax, 0x00000001                               // 0x0048438f    b801000000
                         pop                esi                                           // 0x00484394    5e
                         ret                0x0004                                        // 0x00484395    c20400
_jmp_addr_0x00484398:    pop                edi                                           // 0x00484398    5f
                         xor.s              eax, eax                                      // 0x00484399    33c0
                         pop                esi                                           // 0x0048439b    5e
                         ret                0x0004                                        // 0x0048439c    c20400
                         nop                                                              // 0x0048439f    90
_jmp_addr_0x004843a0:    push               esi                                           // 0x004843a0    56
                         push               edi                                           // 0x004843a1    57
                         mov.s              esi, ecx                                      // 0x004843a2    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x004843a4    e827ffffff
                         test               eax, eax                                      // 0x004843a9    85c0
                         {disp8} jne        _jmp_addr_0x00484404                          // 0x004843ab    7557
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004843ad    8b7c240c
                         push               0x1                                           // 0x004843b1    6a01
                         {disp8} lea        eax, dword ptr [edi + -0x01]                  // 0x004843b3    8d47ff
                         push               eax                                           // 0x004843b6    50
                         mov.s              ecx, esi                                      // 0x004843b7    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004843b9    e892521900
                         test               eax, eax                                      // 0x004843be    85c0
                         {disp8} je         _jmp_addr_0x00484404                          // 0x004843c0    7442
                         push               0x1                                           // 0x004843c2    6a01
                         push               edi                                           // 0x004843c4    57
                         mov.s              ecx, esi                                      // 0x004843c5    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004843c7    e884521900
                         test               eax, eax                                      // 0x004843cc    85c0
                         {disp8} je         _jmp_addr_0x00484404                          // 0x004843ce    7434
                         push               0x1                                           // 0x004843d0    6a01
                         {disp8} lea        ecx, dword ptr [edi + 0x01]                   // 0x004843d2    8d4f01
                         push               ecx                                           // 0x004843d5    51
                         mov.s              ecx, esi                                      // 0x004843d6    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004843d8    e873521900
                         test               eax, eax                                      // 0x004843dd    85c0
                         {disp8} je         _jmp_addr_0x00484404                          // 0x004843df    7423
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004843e1    8b542410
                         push               0x2                                           // 0x004843e5    6a02
                         mov.s              ecx, esi                                      // 0x004843e7    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi             // 0x004843e9    89bea0490000
                         {disp32} mov       dword ptr [esi + 0x0000522c], edx             // 0x004843ef    89962c520000
                         call               _jmp_addr_0x00484ec0                          // 0x004843f5    e8c60a0000
                         pop                edi                                           // 0x004843fa    5f
                         mov                eax, 0x00000001                               // 0x004843fb    b801000000
                         pop                esi                                           // 0x00484400    5e
                         ret                0x0008                                        // 0x00484401    c20800
_jmp_addr_0x00484404:    pop                edi                                           // 0x00484404    5f
                         xor.s              eax, eax                                      // 0x00484405    33c0
                         pop                esi                                           // 0x00484407    5e
                         ret                0x0008                                        // 0x00484408    c20800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0048440b    e869d4f7ff
_jmp_addr_0x00484410:    sub                esp, 0x0c                                     // 0x00484410    83ec0c
                         push               ebx                                           // 0x00484413    53
                         push               esi                                           // 0x00484414    56
                         mov.s              esi, ecx                                      // 0x00484415    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00484417    e8b4feffff
                         test               eax, eax                                      // 0x0048441c    85c0
                         {disp32} jne       _jmp_addr_0x00484534                          // 0x0048441e    0f8510010000
                         xor.s              ebx, ebx                                      // 0x00484424    33db
                         push               ebx                                           // 0x00484426    53
                         push               0x7a                                          // 0x00484427    6a7a
                         mov.s              ecx, esi                                      // 0x00484429    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x0048442b    e820521900
                         test               eax, eax                                      // 0x00484430    85c0
                         {disp32} je        _jmp_addr_0x00484534                          // 0x00484432    0f84fc000000
                         push               ebx                                           // 0x00484438    53
                         push               0x7b                                          // 0x00484439    6a7b
                         mov.s              ecx, esi                                      // 0x0048443b    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x0048443d    e80e521900
                         test               eax, eax                                      // 0x00484442    85c0
                         {disp32} je        _jmp_addr_0x00484534                          // 0x00484444    0f84ea000000
                         push               ebx                                           // 0x0048444a    53
                         push               0x7c                                          // 0x0048444b    6a7c
                         mov.s              ecx, esi                                      // 0x0048444d    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x0048444f    e8fc511900
                         test               eax, eax                                      // 0x00484454    85c0
                         {disp32} je        _jmp_addr_0x00484534                          // 0x00484456    0f84d8000000
                         cmp                dword ptr [esi + 0x000051ec], ebx             // 0x0048445c    399eec510000
                         {disp32} jne       _jmp_addr_0x00484534                          // 0x00484462    0f85cc000000
                         mov.s              ecx, esi                                      // 0x00484468    8bce
                         call               _jmp_addr_0x004ee6d0                          // 0x0048446a    e861a20600
                         mov.s              ecx, esi                                      // 0x0048446f    8bce
                         call               _jmp_addr_0x0048d7b0                          // 0x00484471    e83a930000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00484476    8b442418
                         cmp.s              eax, ebx                                      // 0x0048447a    3bc3
                         {disp32} mov       dword ptr [esi + 0x0000528c], eax             // 0x0048447c    89868c520000
                         {disp32} mov       dword ptr [esi + 0x00004ac0], ebx             // 0x00484482    899ec04a0000
                         {disp32} mov       byte ptr [esi + 0x00004b24], bl               // 0x00484488    889e244b0000
                         {disp32} mov       dword ptr [esi + 0x00004b30], ebx             // 0x0048448e    899e304b0000
                         {disp8} je         _jmp_addr_0x004844df                          // 0x00484494    7449
                         {disp32} mov       dword ptr [esi + 0x0000518c], ebx             // 0x00484496    899e8c510000
                         {disp32} fld       dword ptr [eax + 0x00000080]                  // 0x0048449c    d98080000000
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x004844a2    d8a680000000
                         {disp8} fld        dword ptr [eax + 0x7c]                        // 0x004844a8    d9407c
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x004844ab    d8667c
                         {disp8} fld        dword ptr [eax + 0x78]                        // 0x004844ae    d94078
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x004844b1    8d442408
                         {disp8} fsub       dword ptr [esi + 0x78]                        // 0x004844b5    d86678
                         push               eax                                           // 0x004844b8    50
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004844b9    d95c240c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x004844bd    d95c2410
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004844c1    d95c2414
                         call               _jmp_addr_0x007faa50                          // 0x004844c5    e886653700
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x004844ca    d95c241c
                         add                esp, 0x04                                     // 0x004844ce    83c404
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x004844d1    8b4c2418
                         push               ecx                                           // 0x004844d5    51
                         mov.s              ecx, esi                                      // 0x004844d6    8bce
                         call               _jmp_addr_0x0048b790                          // 0x004844d8    e8b3720000
                         {disp8} jmp        _jmp_addr_0x004844e9                          // 0x004844dd    eb0a
_jmp_addr_0x004844df:    {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000001      // 0x004844df    c7868c51000001000000
_jmp_addr_0x004844e9:    push               0x16                                          // 0x004844e9    6a16
                         mov.s              ecx, esi                                      // 0x004844eb    8bce
                         call               _jmp_addr_0x00484ec0                          // 0x004844ed    e8ce090000
                         {disp32} fld       dword ptr [rdata_bytes + 0x260a8]             // 0x004844f2    d905a8f08c00
                         call               _jmp_addr_0x007a1400                          // 0x004844f8    e803cf3100
                         {disp32} mov       dword ptr [esi + 0x00004ab8], eax             // 0x004844fd    8986b84a0000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00484503    8b44241c
                         mov                ecx, dword ptr [eax]                          // 0x00484507    8b08
                         {disp32} lea       edx, dword ptr [esi + 0x00004a98]             // 0x00484509    8d96984a0000
                         mov                dword ptr [edx], ecx                          // 0x0048450f    890a
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00484511    8b4804
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00484514    894a04
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00484517    8b4008
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0048451a    8b4c2420
                         {disp32} mov       dword ptr [esi + 0x00004aa4], ecx             // 0x0048451e    898ea44a0000
                         pop                esi                                           // 0x00484524    5e
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x00484525    894208
                         mov                eax, 0x00000001                               // 0x00484528    b801000000
                         pop                ebx                                           // 0x0048452d    5b
                         add                esp, 0x0c                                     // 0x0048452e    83c40c
                         ret                0x000c                                        // 0x00484531    c20c00
_jmp_addr_0x00484534:    pop                esi                                           // 0x00484534    5e
                         xor.s              eax, eax                                      // 0x00484535    33c0
                         pop                ebx                                           // 0x00484537    5b
                         add                esp, 0x0c                                     // 0x00484538    83c40c
                         ret                0x000c                                        // 0x0048453b    c20c00
                         nop                                                              // 0x0048453e    90
                         nop                                                              // 0x0048453f    90
_jmp_addr_0x00484540:    push               esi                                           // 0x00484540    56
                         mov.s              esi, ecx                                      // 0x00484541    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00484543    e888fdffff
                         test               eax, eax                                      // 0x00484548    85c0
                         {disp8} jne        _jmp_addr_0x00484589                          // 0x0048454a    753d
                         push               eax                                           // 0x0048454c    50
                         push               0x000000d4                                    // 0x0048454d    68d4000000
                         mov.s              ecx, esi                                      // 0x00484552    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00484554    e8f7501900
                         test               eax, eax                                      // 0x00484559    85c0
                         {disp8} je         _jmp_addr_0x00484589                          // 0x0048455b    742c
                         push               0x0                                           // 0x0048455d    6a00
                         push               0x000000d5                                    // 0x0048455f    68d5000000
                         mov.s              ecx, esi                                      // 0x00484564    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00484566    e8e5501900
                         test               eax, eax                                      // 0x0048456b    85c0
                         {disp8} je         _jmp_addr_0x00484589                          // 0x0048456d    741a
                         push               0x11                                          // 0x0048456f    6a11
                         mov.s              ecx, esi                                      // 0x00484571    8bce
                         {disp32} mov       dword ptr [esi + 0x00004980], 0x00000000      // 0x00484573    c7868049000000000000
                         call               _jmp_addr_0x00484ec0                          // 0x0048457d    e83e090000
                         mov                eax, 0x00000001                               // 0x00484582    b801000000
                         pop                esi                                           // 0x00484587    5e
                         ret                                                              // 0x00484588    c3
_jmp_addr_0x00484589:    xor.s              eax, eax                                      // 0x00484589    33c0
                         pop                esi                                           // 0x0048458b    5e
                         ret                                                              // 0x0048458c    c3
                         nop                                                              // 0x0048458d    90
                         nop                                                              // 0x0048458e    90
                         nop                                                              // 0x0048458f    90
_jmp_addr_0x00484590:    push               esi                                           // 0x00484590    56
                         mov.s              esi, ecx                                      // 0x00484591    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00484593    e838fdffff
                         test               eax, eax                                      // 0x00484598    85c0
                         {disp8} jne        _jmp_addr_0x004845e1                          // 0x0048459a    7545
                         push               eax                                           // 0x0048459c    50
                         push               0x000000d4                                    // 0x0048459d    68d4000000
                         mov.s              ecx, esi                                      // 0x004845a2    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004845a4    e8a7501900
                         test               eax, eax                                      // 0x004845a9    85c0
                         {disp8} je         _jmp_addr_0x004845e1                          // 0x004845ab    7434
                         push               0x0                                           // 0x004845ad    6a00
                         push               0x000000d5                                    // 0x004845af    68d5000000
                         mov.s              ecx, esi                                      // 0x004845b4    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004845b6    e895501900
                         test               eax, eax                                      // 0x004845bb    85c0
                         {disp8} je         _jmp_addr_0x004845e1                          // 0x004845bd    7422
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004845bf    8b442408
                         push               eax                                           // 0x004845c3    50
                         mov.s              ecx, esi                                      // 0x004845c4    8bce
                         call               _jmp_addr_0x00480900                          // 0x004845c6    e835c3ffff
                         test               eax, eax                                      // 0x004845cb    85c0
                         {disp8} je         _jmp_addr_0x004845e1                          // 0x004845cd    7412
                         push               0x11                                          // 0x004845cf    6a11
                         mov.s              ecx, esi                                      // 0x004845d1    8bce
                         call               _jmp_addr_0x00484ec0                          // 0x004845d3    e8e8080000
                         mov                eax, 0x00000001                               // 0x004845d8    b801000000
                         pop                esi                                           // 0x004845dd    5e
                         ret                0x0004                                        // 0x004845de    c20400
_jmp_addr_0x004845e1:    xor.s              eax, eax                                      // 0x004845e1    33c0
                         pop                esi                                           // 0x004845e3    5e
                         ret                0x0004                                        // 0x004845e4    c20400
                         nop                                                              // 0x004845e7    90
                         nop                                                              // 0x004845e8    90
                         nop                                                              // 0x004845e9    90
                         nop                                                              // 0x004845ea    90
                         nop                                                              // 0x004845eb    90
                         nop                                                              // 0x004845ec    90
                         nop                                                              // 0x004845ed    90
                         nop                                                              // 0x004845ee    90
                         nop                                                              // 0x004845ef    90
_jmp_addr_0x004845f0:    push               edi                                           // 0x004845f0    57
                         mov.s              edi, ecx                                      // 0x004845f1    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004845f3    8b8794490000
                         cmp                eax, 0x16                                     // 0x004845f9    83f816
                         {disp32} mov       dword ptr [edi + 0x0000528c], 0x00000000      // 0x004845fc    c7878c52000000000000
                         {disp8} je         _jmp_addr_0x00484634                          // 0x00484606    742c
                         cmp                eax, 0x17                                     // 0x00484608    83f817
                         {disp8} je         _jmp_addr_0x00484634                          // 0x0048460b    7427
                         cmp                eax, 0x18                                     // 0x0048460d    83f818
                         {disp8} je         _jmp_addr_0x00484634                          // 0x00484610    7422
                         cmp                eax, 0x1a                                     // 0x00484612    83f81a
                         {disp8} je         _jmp_addr_0x00484634                          // 0x00484615    741d
                         cmp                eax, 0x1b                                     // 0x00484617    83f81b
                         {disp8} je         _jmp_addr_0x00484634                          // 0x0048461a    7418
                         cmp                eax, 0x1d                                     // 0x0048461c    83f81d
                         {disp8} je         _jmp_addr_0x00484634                          // 0x0048461f    7413
                         cmp                eax, 0x20                                     // 0x00484621    83f820
                         {disp8} je         _jmp_addr_0x00484634                          // 0x00484624    740e
                         cmp                eax, 0x21                                     // 0x00484626    83f821
                         {disp8} je         _jmp_addr_0x00484634                          // 0x00484629    7409
                         cmp                eax, 0x22                                     // 0x0048462b    83f822
                         {disp8} je         _jmp_addr_0x00484634                          // 0x0048462e    7404
                         xor.s              eax, eax                                      // 0x00484630    33c0
                         pop                edi                                           // 0x00484632    5f
                         ret                                                              // 0x00484633    c3
_jmp_addr_0x00484634:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00484634    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0048463a    e8417b0c00
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0048463f    8b4858
                         test               ecx, ecx                                      // 0x00484642    85c9
                         {disp8} jge        _jmp_addr_0x0048464a                          // 0x00484644    7d04
                         xor.s              eax, eax                                      // 0x00484646    33c0
                         {disp8} jmp        _jmp_addr_0x0048464e                          // 0x00484648    eb04
_jmp_addr_0x0048464a:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]       // 0x0048464a    8b448828
_jmp_addr_0x0048464e:    push               0x0                                           // 0x0048464e    6a00
                         push               0x009cd3b0                                    // 0x00484650    68b0d39c00
                         push               0x009cd390                                    // 0x00484655    6890d39c00
                         push               0x0                                           // 0x0048465a    6a00
                         push               eax                                           // 0x0048465c    50
                         call               ___RTDynamicCast                              // 0x0048465d    e8b7133400
                         add                esp, 0x14                                     // 0x00484662    83c414
                         test               eax, eax                                      // 0x00484665    85c0
                         {disp8} je         _jmp_addr_0x00484672                          // 0x00484667    7409
                         push               0x1                                           // 0x00484669    6a01
                         mov.s              ecx, eax                                      // 0x0048466b    8bc8
                         call               _jmp_addr_0x0045a800                          // 0x0048466d    e88e61fdff
_jmp_addr_0x00484672:    {disp32} mov       ecx, dword ptr [edi + 0x00004834]             // 0x00484672    8b8f34480000
                         test               ecx, ecx                                      // 0x00484678    85c9
                         {disp8} je         _jmp_addr_0x004846aa                          // 0x0048467a    742e
                         push               esi                                           // 0x0048467c    56
                         mov                esi, dword ptr [ecx]                          // 0x0048467d    8b31
                         call               dword ptr [esi + 0x11c]                       // 0x0048467f    ff961c010000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00484685    d90590a38a00
                         {disp32} fsub      dword ptr [edi + 0x00004aa8]                  // 0x0048468b    d8a7a84a0000
                         push               ecx                                           // 0x00484691    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00004834]             // 0x00484692    8b8f34480000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26080]             // 0x00484698    d80d80f08c00
                         fsubp              st(1), st                                     // 0x0048469e    dee9
                         fstp               dword ptr [esp]                               // 0x004846a0    d91c24
                         call               dword ptr [esi + 0x5b0]                       // 0x004846a3    ff96b0050000
                         pop                esi                                           // 0x004846a9    5e
_jmp_addr_0x004846aa:    {disp32} mov       dword ptr [edi + 0x00005238], 0x00000001      // 0x004846aa    c7873852000001000000
                         mov                eax, 0x00000001                               // 0x004846b4    b801000000
                         pop                edi                                           // 0x004846b9    5f
                         ret                                                              // 0x004846ba    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004846bb    e8b9d1f7ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004846c0    8b442404
                         {disp32} mov       dword ptr [ecx + 0x000049a8], eax             // 0x004846c4    8981a8490000
                         ret                0x0004                                        // 0x004846ca    c20400
                         nop                                                              // 0x004846cd    90
                         nop                                                              // 0x004846ce    90
                         nop                                                              // 0x004846cf    90
                         {disp32} fld       dword ptr [ecx + 0x000049a8]                  // 0x004846d0    d981a8490000
                         ret                                                              // 0x004846d6    c3
                         nop                                                              // 0x004846d7    90
                         nop                                                              // 0x004846d8    90
                         nop                                                              // 0x004846d9    90
                         nop                                                              // 0x004846da    90
                         nop                                                              // 0x004846db    90
                         nop                                                              // 0x004846dc    90
                         nop                                                              // 0x004846dd    90
                         nop                                                              // 0x004846de    90
                         nop                                                              // 0x004846df    90
_jmp_addr_0x004846e0:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x004846e0    d9442408
                         push               esi                                           // 0x004846e4    56
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x004846e5    d805b4a38a00
                         mov.s              esi, ecx                                      // 0x004846eb    8bf1
                         cmp                dword ptr [esi + 0x00004994], 0x17            // 0x004846ed    83be9449000017
                         {disp32} fstp      dword ptr [esi + 0x000049a4]                  // 0x004846f4    d99ea4490000
                         push               edi                                           // 0x004846fa    57
                         {disp32} jne       _jmp_addr_0x00484785                          // 0x004846fb    0f8584000000
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00484701    8b7c240c
                         push               0x0                                           // 0x00484705    6a00
                         push               edi                                           // 0x00484707    57
                         call               @GetAnim__9MorphableFll@16                    // 0x00484708    e8434f1900
                         test               eax, eax                                      // 0x0048470d    85c0
                         {disp8} je         _jmp_addr_0x00484785                          // 0x0048470f    7474
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e214]        // 0x00484711    a11442c600
                         test               eax, eax                                      // 0x00484716    85c0
                         {disp8} jne        _jmp_addr_0x0048476c                          // 0x00484718    7552
                         {disp8} fld        dword ptr [esi + 0x78]                        // 0x0048471a    d94678
                         {disp32} fsub      dword ptr [esi + 0x00004a98]                  // 0x0048471d    d8a6984a0000
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x00484723    d98680000000
                         {disp32} fsub      dword ptr [esi + 0x00004aa0]                  // 0x00484729    d8a6a04a0000
                         fld                st(0)                                         // 0x0048472f    d9c0
                         fmul               st, st(1)                                     // 0x00484731    d8c9
                         fld                st(2)                                         // 0x00484733    d9c2
                         fmul               st, st(3)                                     // 0x00484735    d8cb
                         faddp              st(1), st                                     // 0x00484737    dec1
                         fsqrt                                                            // 0x00484739    d9fa
                         fstp               st(2)                                         // 0x0048473b    ddda
                         fstp               st(0)                                         // 0x0048473d    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2609c]             // 0x0048473f    d9059cf08c00
                         {disp32} fmul      dword ptr [esi + 0x00004aa4]                  // 0x00484745    d88ea44a0000
                         fcompp                                                           // 0x0048474b    ded9
                         fnstsw             ax                                            // 0x0048474d    dfe0
                         test               ah, 0x01                                      // 0x0048474f    f6c401
                         {disp8} je         _jmp_addr_0x0048476c                          // 0x00484752    7418
                         cmp                edi, 0x0000008c                               // 0x00484754    81ff8c000000
                         {disp8} je         _jmp_addr_0x00484785                          // 0x0048475a    7429
                         cmp                edi, 0x0000008b                               // 0x0048475c    81ff8b000000
                         {disp8} je         _jmp_addr_0x00484785                          // 0x00484762    7421
                         cmp                edi, 0x0000008a                               // 0x00484764    81ff8a000000
                         {disp8} je         _jmp_addr_0x00484785                          // 0x0048476a    7419
_jmp_addr_0x0048476c:    push               0x18                                          // 0x0048476c    6a18
                         mov.s              ecx, esi                                      // 0x0048476e    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi             // 0x00484770    89bea0490000
                         call               _jmp_addr_0x00484ec0                          // 0x00484776    e845070000
                         pop                edi                                           // 0x0048477b    5f
                         mov                eax, 0x00000001                               // 0x0048477c    b801000000
                         pop                esi                                           // 0x00484781    5e
                         ret                0x0008                                        // 0x00484782    c20800
_jmp_addr_0x00484785:    pop                edi                                           // 0x00484785    5f
                         xor.s              eax, eax                                      // 0x00484786    33c0
                         pop                esi                                           // 0x00484788    5e
                         ret                0x0008                                        // 0x00484789    c20800
                         nop                                                              // 0x0048478c    90
                         nop                                                              // 0x0048478d    90
                         nop                                                              // 0x0048478e    90
                         nop                                                              // 0x0048478f    90
_jmp_addr_0x00484790:    push               esi                                           // 0x00484790    56
                         mov.s              esi, ecx                                      // 0x00484791    8bf1
                         call               _jmp_addr_0x00489cb0                          // 0x00484793    e818550000
                         test               eax, eax                                      // 0x00484798    85c0
                         {disp8} jne        _jmp_addr_0x00484816                          // 0x0048479a    757a
                         mov.s              ecx, esi                                      // 0x0048479c    8bce
                         call               _jmp_addr_0x0048a580                          // 0x0048479e    e8dd5d0000
                         test               al, al                                        // 0x004847a3    84c0
                         {disp8} je         _jmp_addr_0x004847d1                          // 0x004847a5    742a
                         push               0x1                                           // 0x004847a7    6a01
                         push               0x000000c6                                    // 0x004847a9    68c6000000
                         mov.s              ecx, esi                                      // 0x004847ae    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004847b0    e89b4e1900
                         push               0x1c                                          // 0x004847b5    6a1c
                         mov.s              ecx, esi                                      // 0x004847b7    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], 0x000000c6      // 0x004847b9    c786a0490000c6000000
                         call               _jmp_addr_0x00484ec0                          // 0x004847c3    e8f8060000
                         mov                eax, 0x00000001                               // 0x004847c8    b801000000
                         pop                esi                                           // 0x004847cd    5e
                         ret                0x0004                                        // 0x004847ce    c20400
_jmp_addr_0x004847d1:    {disp32} mov       eax, dword ptr [esi + 0x00004994]             // 0x004847d1    8b8694490000
                         add                eax, -0x17                                    // 0x004847d7    83c0e9
                         cmp                eax, 0x0b                                     // 0x004847da    83f80b
                         {disp8} ja         _jmp_addr_0x00484816                          // 0x004847dd    7737
                         xor.s              ecx, ecx                                      // 0x004847df    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00484824]               // 0x004847e1    8a8824484800
                         jmp                dword ptr [ecx*4 + 0x48481c]                  // 0x004847e7    ff248d1c484800
                         push               edi                                           // 0x004847ee    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004847ef    8b7c240c
                         push               0x1                                           // 0x004847f3    6a01
                         push               edi                                           // 0x004847f5    57
                         mov.s              ecx, esi                                      // 0x004847f6    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004847f8    e8534e1900
                         push               0x18                                          // 0x004847fd    6a18
                         mov.s              ecx, esi                                      // 0x004847ff    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi             // 0x00484801    89bea0490000
                         call               _jmp_addr_0x00484ec0                          // 0x00484807    e8b4060000
                         pop                edi                                           // 0x0048480c    5f
                         mov                eax, 0x00000001                               // 0x0048480d    b801000000
                         pop                esi                                           // 0x00484812    5e
                         ret                0x0004                                        // 0x00484813    c20400
_jmp_addr_0x00484816:    xor.s              eax, eax                                      // 0x00484816    33c0
                         pop                esi                                           // 0x00484818    5e
                         ret                0x0004                                        // 0x00484819    c20400

// Snippet: jmptbl, [0x0048481c, 0x00484824)
.byte 0xee, 0x47, 0x48, 0x00      // 0x0048481c
.byte 0x16, 0x48, 0x48, 0x00      // 0x00484820

// Snippet: ijmptbl, [0x00484824, 0x00484830)
.byte 0x00, 0x00, 0x01, 0x01      // 0x00484824
.byte 0x01, 0x01, 0x01, 0x01      // 0x00484828
.byte 0x01, 0x00, 0x00, 0x00      // 0x0048482c

