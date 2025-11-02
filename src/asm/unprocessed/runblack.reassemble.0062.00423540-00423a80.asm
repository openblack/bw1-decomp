.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00423400
.extern ?GetReaction@Living@@QAEXXZ
.extern _jmp_addr_0x005fd5a0
.extern ?IsWater@MapCoords@@QBEIXZ
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x007436f0
.extern ___RTDynamicCast

start_0x00423540_0x00423a80:
// Snippet: asm, [0x00423540, 0x004239fd)
                         sub                esp, 0x08                               // 0x00423540    83ec08
                         push               ebx                                     // 0x00423543    53
                         push               ebp                                     // 0x00423544    55
                         push               esi                                     // 0x00423545    56
                         push               edi                                     // 0x00423546    57
                         mov.s              esi, ecx                                // 0x00423547    8bf1
                         call               ?GetReaction@Living@@QAEXXZ             // 0x00423549    e812951c00
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]       // 0x0042354e    8b86bc000000
                         push               0x0                                     // 0x00423554    6a00
                         push               0x009c95e0                              // 0x00423556    68e0959c00
                         push               0x009c7f30                              // 0x0042355b    68307f9c00
                         push               0x0                                     // 0x00423560    6a00
                         push               eax                                     // 0x00423562    50
                         call               ___RTDynamicCast                        // 0x00423563    e8b1243a00
                         mov.s              edi, eax                                // 0x00423568    8bf8
                         add                esp, 0x14                               // 0x0042356a    83c414
                         test               edi, edi                                // 0x0042356d    85ff
                         {disp32} je        _jmp_addr_0x00423714                    // 0x0042356f    0f849f010000
                         mov                eax, dword ptr [edi]                    // 0x00423575    8b07
                         mov.s              ecx, edi                                // 0x00423577    8bcf
                         call               dword ptr [eax + 0x2c]                  // 0x00423579    ff502c
                         test               eax, eax                                // 0x0042357c    85c0
                         {disp32} je        _jmp_addr_0x00423714                    // 0x0042357e    0f8490010000
                         {disp8} mov        ebx, dword ptr [edi + 0x38]             // 0x00423584    8b5f38
                         test               ebx, ebx                                // 0x00423587    85db
                         {disp8} mov        edi, dword ptr [edi + 0x3c]             // 0x00423589    8b7f3c
                         {disp32} je        _jmp_addr_0x00423714                    // 0x0042358c    0f8482010000
                         test               edi, edi                                // 0x00423592    85ff
                         {disp32} je        _jmp_addr_0x00423714                    // 0x00423594    0f847a010000
                         mov                edx, dword ptr [esi]                    // 0x0042359a    8b16
                         mov.s              ecx, esi                                // 0x0042359c    8bce
                         call               dword ptr [edx + 0x48]                  // 0x0042359e    ff5248
                         test               eax, eax                                // 0x004235a1    85c0
                         {disp8} je         _jmp_addr_0x004235f4                    // 0x004235a3    744f
                         mov                eax, dword ptr [esi]                    // 0x004235a5    8b06
                         push               ebx                                     // 0x004235a7    53
                         mov.s              ecx, esi                                // 0x004235a8    8bce
                         call               dword ptr [eax + 0x48]                  // 0x004235aa    ff5048
                         mov.s              ecx, eax                                // 0x004235ad    8bc8
                         call               _jmp_addr_0x007436f0                    // 0x004235af    e83c013200
                         mov                edx, dword ptr [esi]                    // 0x004235b4    8b16
                         push               edi                                     // 0x004235b6    57
                         mov.s              ecx, esi                                // 0x004235b7    8bce
                         mov.s              ebp, eax                                // 0x004235b9    8be8
                         call               dword ptr [edx + 0x48]                  // 0x004235bb    ff5248
                         mov.s              ecx, eax                                // 0x004235be    8bc8
                         call               _jmp_addr_0x007436f0                    // 0x004235c0    e82b013200
                         cmp                ebp, 0x03                               // 0x004235c5    83fd03
                         {disp8} jne        _jmp_addr_0x004235d2                    // 0x004235c8    7508
                         cmp.s              eax, ebp                                // 0x004235ca    3bc5
                         {disp8} jne        _jmp_addr_0x0042360d                    // 0x004235cc    753f
                         push               0x69                                    // 0x004235ce    6a69
                         {disp8} jmp        _jmp_addr_0x004235dd                    // 0x004235d0    eb0b
_jmp_addr_0x004235d2:    cmp                eax, 0x03                               // 0x004235d2    83f803
                         {disp8} jne        _jmp_addr_0x004235db                    // 0x004235d5    7504
                         mov.s              ecx, ebx                                // 0x004235d7    8bcb
                         {disp8} jmp        _jmp_addr_0x00423613                    // 0x004235d9    eb38
_jmp_addr_0x004235db:    push               0x75                                    // 0x004235db    6a75
_jmp_addr_0x004235dd:    push               0x009c95c0                              // 0x004235dd    68c0959c00
                         push               0x2                                     // 0x004235e2    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                 // 0x004235e4    e827af2b00
                         add                esp, 0x0c                               // 0x004235e9    83c40c
                         test               eax, eax                                // 0x004235ec    85c0
                         {disp8} jne        _jmp_addr_0x0042360d                    // 0x004235ee    751d
                         mov.s              ecx, ebx                                // 0x004235f0    8bcb
                         {disp8} jmp        _jmp_addr_0x00423613                    // 0x004235f2    eb1f
_jmp_addr_0x004235f4:    push               0x7a                                    // 0x004235f4    6a7a
                         push               0x009c95c0                              // 0x004235f6    68c0959c00
                         push               0x2                                     // 0x004235fb    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                 // 0x004235fd    e80eaf2b00
                         add                esp, 0x0c                               // 0x00423602    83c40c
                         test               eax, eax                                // 0x00423605    85c0
                         {disp8} jne        _jmp_addr_0x0042360d                    // 0x00423607    7504
                         mov.s              ecx, ebx                                // 0x00423609    8bcb
                         {disp8} jmp        _jmp_addr_0x00423613                    // 0x0042360b    eb06
_jmp_addr_0x0042360d:    cmp.s              edi, ebx                                // 0x0042360d    3bfb
                         mov.s              ecx, edi                                // 0x0042360f    8bcf
                         {disp8} jne        _jmp_addr_0x00423615                    // 0x00423611    7502
_jmp_addr_0x00423613:    mov.s              ebx, edi                                // 0x00423613    8bdf
_jmp_addr_0x00423615:    {disp32} mov       eax, dword ptr [_game]                  // 0x00423615    a15c19d000
                         {disp32} mov       esi, dword ptr [eax + 0x00205a40]       // 0x0042361a    8bb0405a2000
                         xor.s              edx, edx                                // 0x00423620    33d2
                         mov                eax, 0x000003e8                         // 0x00423622    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]       // 0x00423627    f735381ad000
                         {disp32} mov       edx, dword ptr [ecx + 0x000010a8]       // 0x0042362d    8b91a8100000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000010a8]       // 0x00423633    8b8ba8100000
                         xor.s              ebp, ebp                                // 0x00423639    33ed
                         {disp8} mov        dword ptr [esp + 0x14], ebp             // 0x0042363b    896c2414
                         mov.s              edi, eax                                // 0x0042363f    8bf8
                         mov.s              eax, esi                                // 0x00423641    8bc6
                         sub.s              eax, edx                                // 0x00423643    2bc2
                         xor.s              edx, edx                                // 0x00423645    33d2
                         div                edi                                     // 0x00423647    f7f7
                         xor.s              edx, edx                                // 0x00423649    33d2
                         {disp8} mov        dword ptr [esp + 0x10], eax             // 0x0042364b    89442410
                         mov.s              eax, esi                                // 0x0042364f    8bc6
                         {disp8} fild       qword ptr [esp + 0x10]                  // 0x00423651    df6c2410
                         sub.s              eax, ecx                                // 0x00423655    2bc1
                         div                edi                                     // 0x00423657    f7f7
                         {disp8} mov        dword ptr [esp + 0x14], ebp             // 0x00423659    896c2414
                         {disp8} mov        dword ptr [esp + 0x10], eax             // 0x0042365d    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                  // 0x00423661    df6c2410
                         fld                st(1)                                   // 0x00423665    d9c1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c40]       // 0x00423667    d81d402c8c00
                         fnstsw             ax                                      // 0x0042366d    dfe0
                         test               ah, 0x41                                // 0x0042366f    f6c441
                         {disp8} jne        _jmp_addr_0x004236c7                    // 0x00423672    7553
                         {disp32} fcom      dword ptr [rdata_bytes + 0x19c40]       // 0x00423674    d815402c8c00
                         fnstsw             ax                                      // 0x0042367a    dfe0
                         test               ah, 0x41                                // 0x0042367c    f6c441
                         {disp8} jne        _jmp_addr_0x004236c7                    // 0x0042367f    7546
                         push               0x00000081                              // 0x00423681    6881000000
                         fstp               st(0)                                   // 0x00423686    ddd8
                         push               0x009c95c0                              // 0x00423688    68c0959c00
                         fstp               st(0)                                   // 0x0042368d    ddd8
                         push               0x3                                     // 0x0042368f    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                 // 0x00423691    e87aae2b00
                         add                esp, 0x0c                               // 0x00423696    83c40c
                         sub.s              eax, ebp                                // 0x00423699    2bc5
                         {disp8} je         _jmp_addr_0x004236ba                    // 0x0042369b    741d
                         dec                eax                                     // 0x0042369d    48
                         {disp8} je         _jmp_addr_0x004236ad                    // 0x0042369e    740d
                         pop                edi                                     // 0x004236a0    5f
                         pop                esi                                     // 0x004236a1    5e
                         pop                ebp                                     // 0x004236a2    5d
                         mov                eax, 0x00000110                         // 0x004236a3    b810010000
                         pop                ebx                                     // 0x004236a8    5b
                         add                esp, 0x08                               // 0x004236a9    83c408
                         ret                                                        // 0x004236ac    c3
_jmp_addr_0x004236ad:    pop                edi                                     // 0x004236ad    5f
                         pop                esi                                     // 0x004236ae    5e
                         pop                ebp                                     // 0x004236af    5d
                         mov                eax, 0x0000018c                         // 0x004236b0    b88c010000
                         pop                ebx                                     // 0x004236b5    5b
                         add                esp, 0x08                               // 0x004236b6    83c408
                         ret                                                        // 0x004236b9    c3
_jmp_addr_0x004236ba:    pop                edi                                     // 0x004236ba    5f
                         pop                esi                                     // 0x004236bb    5e
                         pop                ebp                                     // 0x004236bc    5d
                         mov                eax, 0x0000018b                         // 0x004236bd    b88b010000
                         pop                ebx                                     // 0x004236c2    5b
                         add                esp, 0x08                               // 0x004236c3    83c408
                         ret                                                        // 0x004236c6    c3
_jmp_addr_0x004236c7:    fcomp              st(1)                                   // 0x004236c7    d8d9
                         fnstsw             ax                                      // 0x004236c9    dfe0
                         fstp               st(0)                                   // 0x004236cb    ddd8
                         test               ah, 0x01                                // 0x004236cd    f6c401
                         {disp8} je         _jmp_addr_0x004236f3                    // 0x004236d0    7421
                         push               0x0000008e                              // 0x004236d2    688e000000
                         push               0x009c95c0                              // 0x004236d7    68c0959c00
                         push               0x2                                     // 0x004236dc    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                 // 0x004236de    e82dae2b00
                         add                esp, 0x0c                               // 0x004236e3    83c40c
                         pop                edi                                     // 0x004236e6    5f
                         pop                esi                                     // 0x004236e7    5e
                         pop                ebp                                     // 0x004236e8    5d
                         add                eax, 0x000000ea                         // 0x004236e9    05ea000000
                         pop                ebx                                     // 0x004236ee    5b
                         add                esp, 0x08                               // 0x004236ef    83c408
                         ret                                                        // 0x004236f2    c3
_jmp_addr_0x004236f3:    push               0x00000092                              // 0x004236f3    6892000000
                         push               0x009c95c0                              // 0x004236f8    68c0959c00
                         push               0x2                                     // 0x004236fd    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                 // 0x004236ff    e80cae2b00
                         add                esp, 0x0c                               // 0x00423704    83c40c
                         pop                edi                                     // 0x00423707    5f
                         pop                esi                                     // 0x00423708    5e
                         pop                ebp                                     // 0x00423709    5d
                         add                eax, 0x000000e5                         // 0x0042370a    05e5000000
                         pop                ebx                                     // 0x0042370f    5b
                         add                esp, 0x08                               // 0x00423710    83c408
                         ret                                                        // 0x00423713    c3
_jmp_addr_0x00423714:    pop                edi                                     // 0x00423714    5f
                         pop                esi                                     // 0x00423715    5e
                         pop                ebp                                     // 0x00423716    5d
                         mov                eax, 0x00000181                         // 0x00423717    b881010000
                         pop                ebx                                     // 0x0042371c    5b
                         add                esp, 0x08                               // 0x0042371d    83c408
                         ret                                                        // 0x00423720    c3
                         nop                                                        // 0x00423721    90
                         nop                                                        // 0x00423722    90
                         nop                                                        // 0x00423723    90
                         nop                                                        // 0x00423724    90
                         nop                                                        // 0x00423725    90
                         nop                                                        // 0x00423726    90
                         nop                                                        // 0x00423727    90
                         nop                                                        // 0x00423728    90
                         nop                                                        // 0x00423729    90
                         nop                                                        // 0x0042372a    90
                         nop                                                        // 0x0042372b    90
                         nop                                                        // 0x0042372c    90
                         nop                                                        // 0x0042372d    90
                         nop                                                        // 0x0042372e    90
                         nop                                                        // 0x0042372f    90
                         xor.s              eax, eax                                // 0x00423730    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x000000b4]         // 0x00423732    8a81b4000000
                         shr                al, 4                                   // 0x00423738    c0e804
                         and                eax, 0x03                               // 0x0042373b    83e003
                         test               ax, ax                                  // 0x0042373e    6685c0
                         {disp8} jne        _jmp_addr_0x00423757                    // 0x00423741    7514
                         {disp32} mov       dl, byte ptr [ecx + 0x000000f1]         // 0x00423743    8a91f1000000
                         xor.s              eax, eax                                // 0x00423749    33c0
                         cmp                dl, 0x01                                // 0x0042374b    80fa01
                         setne              al                                      // 0x0042374e    0f95c0
                         add                eax, 0x00000134                         // 0x00423751    0534010000
                         ret                                                        // 0x00423756    c3
_jmp_addr_0x00423757:    xor.s              ecx, ecx                                // 0x00423757    33c9
                         cmp                ax, 0x0001                              // 0x00423759    663d0100
                         setne              cl                                      // 0x0042375d    0f95c1
                         add                ecx, 0x00000132                         // 0x00423760    81c132010000
                         mov.s              eax, ecx                                // 0x00423766    8bc1
                         ret                                                        // 0x00423768    c3
                         nop                                                        // 0x00423769    90
                         nop                                                        // 0x0042376a    90
                         nop                                                        // 0x0042376b    90
                         nop                                                        // 0x0042376c    90
                         nop                                                        // 0x0042376d    90
                         nop                                                        // 0x0042376e    90
                         nop                                                        // 0x0042376f    90
                         push               esi                                     // 0x00423770    56
                         mov.s              esi, ecx                                // 0x00423771    8bf1
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x00423773    8d4e14
                         call               ?IsWater@MapCoords@@QBEIXZ              // 0x00423776    e835fe1d00
                         test               eax, eax                                // 0x0042377b    85c0
                         {disp8} je         _jmp_addr_0x00423786                    // 0x0042377d    7407
                         mov                eax, 0x0000011b                         // 0x0042377f    b81b010000
                         pop                esi                                     // 0x00423784    5e
                         ret                                                        // 0x00423785    c3
_jmp_addr_0x00423786:    {disp32} mov       al, byte ptr [esi + 0x000000b4]         // 0x00423786    8a86b4000000
                         and                al, 0x30                                // 0x0042378c    2430
                         sub                al, 0x20                                // 0x0042378e    2c20
                         neg                al                                      // 0x00423790    f6d8
                         pop                esi                                     // 0x00423792    5e
                         sbb.s              eax, eax                                // 0x00423793    1bc0
                         and                eax, 0x07                               // 0x00423795    83e007
                         add                eax, 0x000000f6                         // 0x00423798    05f6000000
                         ret                                                        // 0x0042379d    c3
                         nop                                                        // 0x0042379e    90
                         nop                                                        // 0x0042379f    90
                         push               esi                                     // 0x004237a0    56
                         mov.s              esi, ecx                                // 0x004237a1    8bf1
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x004237a3    8d4e14
                         call               ?IsWater@MapCoords@@QBEIXZ              // 0x004237a6    e805fe1d00
                         test               eax, eax                                // 0x004237ab    85c0
                         {disp8} je         _jmp_addr_0x004237b6                    // 0x004237ad    7407
                         mov                eax, 0x000000f9                         // 0x004237af    b8f9000000
                         pop                esi                                     // 0x004237b4    5e
                         ret                                                        // 0x004237b5    c3
_jmp_addr_0x004237b6:    {disp32} mov       al, byte ptr [esi + 0x000000b4]         // 0x004237b6    8a86b4000000
                         and                al, 0x30                                // 0x004237bc    2430
                         sub                al, 0x20                                // 0x004237be    2c20
                         neg                al                                      // 0x004237c0    f6d8
                         pop                esi                                     // 0x004237c2    5e
                         sbb.s              eax, eax                                // 0x004237c3    1bc0
                         and                eax, 0xfffffffd                         // 0x004237c5    83e0fd
                         add                eax, 0x000000f6                         // 0x004237c8    05f6000000
                         ret                                                        // 0x004237cd    c3
                         nop                                                        // 0x004237ce    90
                         nop                                                        // 0x004237cf    90
                         {disp8} mov        eax, dword ptr [ecx + 0x28]             // 0x004237d0    8b4128
                         {disp32} mov       edx, dword ptr [eax + 0x000001f8]       // 0x004237d3    8b90f8010000
                         xor.s              ecx, ecx                                // 0x004237d9    33c9
                         test               edx, edx                                // 0x004237db    85d2
                         setne              cl                                      // 0x004237dd    0f95c1
                         add                ecx, 0x000000df                         // 0x004237e0    81c1df000000
                         mov.s              eax, ecx                                // 0x004237e6    8bc1
                         ret                                                        // 0x004237e8    c3
                         nop                                                        // 0x004237e9    90
                         nop                                                        // 0x004237ea    90
                         nop                                                        // 0x004237eb    90
                         nop                                                        // 0x004237ec    90
                         nop                                                        // 0x004237ed    90
                         nop                                                        // 0x004237ee    90
                         nop                                                        // 0x004237ef    90
                         push               esi                                     // 0x004237f0    56
                         mov.s              esi, ecx                                // 0x004237f1    8bf1
                         mov                eax, dword ptr [esi]                    // 0x004237f3    8b06
                         call               dword ptr [eax + 0x11c]                 // 0x004237f5    ff901c010000
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x19c48]       // 0x004237fb    dc1d482c8c00
                         fnstsw             ax                                      // 0x00423801    dfe0
                         test               ah, 0x41                                // 0x00423803    f6c441
                         {disp8} je         _jmp_addr_0x0042380f                    // 0x00423806    7407
                         mov                eax, 0x00000190                         // 0x00423808    b890010000
                         pop                esi                                     // 0x0042380d    5e
                         ret                                                        // 0x0042380e    c3
_jmp_addr_0x0042380f:    push               esi                                     // 0x0042380f    56
                         call               _jmp_addr_0x005fd5a0                    // 0x00423810    e88b9d1d00
                         add                esp, 0x04                               // 0x00423815    83c404
                         neg                al                                      // 0x00423818    f6d8
                         pop                esi                                     // 0x0042381a    5e
                         sbb.s              eax, eax                                // 0x0042381b    1bc0
                         and                eax, 0x02                               // 0x0042381d    83e002
                         add                eax, 0x0000018f                         // 0x00423820    058f010000
                         ret                                                        // 0x00423825    c3
                         nop                                                        // 0x00423826    90
                         nop                                                        // 0x00423827    90
                         nop                                                        // 0x00423828    90
                         nop                                                        // 0x00423829    90
                         nop                                                        // 0x0042382a    90
                         nop                                                        // 0x0042382b    90
                         nop                                                        // 0x0042382c    90
                         nop                                                        // 0x0042382d    90
                         nop                                                        // 0x0042382e    90
                         nop                                                        // 0x0042382f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x000000d8]       // 0x00423830    8b81d8000000
                         test               eax, eax                                // 0x00423836    85c0
                         {disp8} je         _jmp_addr_0x0042383f                    // 0x00423838    7405
                         {disp32} jmp       _jmp_addr_0x00423850                    // 0x0042383a    e911000000
_jmp_addr_0x0042383f:    mov                eax, 0x00000181                         // 0x0042383f    b881010000
                         ret                                                        // 0x00423844    c3
                         nop                                                        // 0x00423845    90
                         nop                                                        // 0x00423846    90
                         nop                                                        // 0x00423847    90
                         nop                                                        // 0x00423848    90
                         nop                                                        // 0x00423849    90
                         nop                                                        // 0x0042384a    90
                         nop                                                        // 0x0042384b    90
                         nop                                                        // 0x0042384c    90
                         nop                                                        // 0x0042384d    90
                         nop                                                        // 0x0042384e    90
                         nop                                                        // 0x0042384f    90
_jmp_addr_0x00423850:    push               esi                                     // 0x00423850    56
                         mov.s              esi, ecx                                // 0x00423851    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000d8]       // 0x00423853    8b86d8000000
                         test               eax, eax                                // 0x00423859    85c0
                         {disp32} je        _jmp_addr_0x004239f6                    // 0x0042385b    0f8495010000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]             // 0x00423861    8b4814
                         test               ecx, ecx                                // 0x00423864    85c9
                         {disp8} je         _jmp_addr_0x00423878                    // 0x00423866    7410
                         cmp                dword ptr [ecx + 0x00000100], 0x01      // 0x00423868    83b90001000001
                         {disp8} jne        _jmp_addr_0x00423878                    // 0x0042386f    7507
                         mov                eax, 0x00000171                         // 0x00423871    b871010000
                         pop                esi                                     // 0x00423876    5e
                         ret                                                        // 0x00423877    c3
_jmp_addr_0x00423878:    {disp8} mov        edx, dword ptr [eax + 0x5c]             // 0x00423878    8b505c
                         cmp                edx, 0x1e                               // 0x0042387b    83fa1e
                         {disp32} ja        _jmp_addr_0x004239f6                    // 0x0042387e    0f8772010000
                         jmp                dword ptr [edx*4 + 0x423a00]            // 0x00423884    ff2495003a4200
                         test               ecx, ecx                                // 0x0042388b    85c9
                         {disp8} je         _jmp_addr_0x004238af                    // 0x0042388d    7420
                         {disp32} fld       dword ptr [ecx + 0x0000009c]            // 0x0042388f    d9819c000000
_jmp_addr_0x00423895:    {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x00423895    d81d98a38a00
                         fnstsw             ax                                      // 0x0042389b    dfe0
                         test               ah, 0x40                                // 0x0042389d    f6c440
_jmp_addr_0x004238a0:    {disp32} jne       _jmp_addr_0x004239f6                    // 0x004238a0    0f8550010000
                         mov.s              ecx, esi                                // 0x004238a6    8bce
                         call               _jmp_addr_0x00423400                    // 0x004238a8    e853fbffff
                         pop                esi                                     // 0x004238ad    5e
                         ret                                                        // 0x004238ae    c3
_jmp_addr_0x004238af:    {disp8} mov        eax, dword ptr [eax + 0x18]             // 0x004238af    8b4018
                         {disp32} fld       dword ptr [eax + 0x0000009c]            // 0x004238b2    d9809c000000
                         {disp8} jmp        _jmp_addr_0x00423895                    // 0x004238b8    ebdb
                         {disp8} mov        ecx, dword ptr [esi + 0x28]             // 0x004238ba    8b4e28
                         {disp32} mov       eax, dword ptr [ecx + 0x000001f8]       // 0x004238bd    8b81f8010000
                         mov.s              ecx, esi                                // 0x004238c3    8bce
                         test               eax, eax                                // 0x004238c5    85c0
                         call               _jmp_addr_0x00423400                    // 0x004238c7    e834fbffff
                         pop                esi                                     // 0x004238cc    5e
                         ret                                                        // 0x004238cd    c3
                         {disp8} mov        edx, dword ptr [esi + 0x28]             // 0x004238ce    8b5628
                         {disp32} mov       eax, dword ptr [edx + 0x000001f8]       // 0x004238d1    8b82f8010000
                         test               eax, eax                                // 0x004238d7    85c0
                         {disp8} jne        _jmp_addr_0x004238f6                    // 0x004238d9    751b
                         push               0x00000122                              // 0x004238db    6822010000
                         push               0x009c95c0                              // 0x004238e0    68c0959c00
                         push               0x3                                     // 0x004238e5    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                 // 0x004238e7    e824ac2b00
                         add                esp, 0x0c                               // 0x004238ec    83c40c
                         add                eax, 0x0000013a                         // 0x004238ef    053a010000
                         pop                esi                                     // 0x004238f4    5e
                         ret                                                        // 0x004238f5    c3
_jmp_addr_0x004238f6:    push               0x00000126                              // 0x004238f6    6826010000
                         push               0x009c95c0                              // 0x004238fb    68c0959c00
                         push               0x3                                     // 0x00423900    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                 // 0x00423902    e809ac2b00
                         add                esp, 0x0c                               // 0x00423907    83c40c
                         add                eax, 0x00000109                         // 0x0042390a    0509010000
                         pop                esi                                     // 0x0042390f    5e
                         ret                                                        // 0x00423910    c3
                         mov                eax, 0x00000157                         // 0x00423911    b857010000
                         pop                esi                                     // 0x00423916    5e
                         ret                                                        // 0x00423917    c3
                         mov                edx, dword ptr [esi]                    // 0x00423918    8b16
                         mov.s              ecx, esi                                // 0x0042391a    8bce
                         call               dword ptr [edx + 0x174]                 // 0x0042391c    ff9274010000
                         test               eax, eax                                // 0x00423922    85c0
                         {disp32} je        _jmp_addr_0x004239f6                    // 0x00423924    0f84cc000000
                         {disp8} mov        eax, dword ptr [esi + 0x28]             // 0x0042392a    8b4628
                         {disp32} mov       edx, dword ptr [eax + 0x000001f8]       // 0x0042392d    8b90f8010000
                         xor.s              ecx, ecx                                // 0x00423933    33c9
                         test               edx, edx                                // 0x00423935    85d2
                         setne              cl                                      // 0x00423937    0f95c1
                         pop                esi                                     // 0x0042393a    5e
                         add                ecx, 0x000000f1                         // 0x0042393b    81c1f1000000
                         mov.s              eax, ecx                                // 0x00423941    8bc1
                         ret                                                        // 0x00423943    c3
                         mov                eax, 0x000000e5                         // 0x00423944    b8e5000000
                         pop                esi                                     // 0x00423949    5e
                         ret                                                        // 0x0042394a    c3
                         mov                eax, 0x000000ea                         // 0x0042394b    b8ea000000
                         pop                esi                                     // 0x00423950    5e
                         ret                                                        // 0x00423951    c3
                         mov                eax, 0x00000136                         // 0x00423952    b836010000
                         pop                esi                                     // 0x00423957    5e
                         ret                                                        // 0x00423958    c3
                         mov                eax, 0x00000139                         // 0x00423959    b839010000
                         pop                esi                                     // 0x0042395e    5e
                         ret                                                        // 0x0042395f    c3
                         mov                eax, 0x0000018c                         // 0x00423960    b88c010000
                         pop                esi                                     // 0x00423965    5e
                         ret                                                        // 0x00423966    c3
                         mov                eax, 0x0000018b                         // 0x00423967    b88b010000
                         pop                esi                                     // 0x0042396c    5e
                         ret                                                        // 0x0042396d    c3
                         mov                eax, 0x000000f1                         // 0x0042396e    b8f1000000
                         pop                esi                                     // 0x00423973    5e
                         ret                                                        // 0x00423974    c3
                         mov                eax, 0x000000f2                         // 0x00423975    b8f2000000
                         pop                esi                                     // 0x0042397a    5e
                         ret                                                        // 0x0042397b    c3
                         mov                eax, 0x00000109                         // 0x0042397c    b809010000
                         pop                esi                                     // 0x00423981    5e
                         ret                                                        // 0x00423982    c3
                         mov                eax, 0x0000010a                         // 0x00423983    b80a010000
                         pop                esi                                     // 0x00423988    5e
                         ret                                                        // 0x00423989    c3
                         mov                eax, 0x0000010b                         // 0x0042398a    b80b010000
                         pop                esi                                     // 0x0042398f    5e
                         ret                                                        // 0x00423990    c3
                         mov                eax, 0x0000013a                         // 0x00423991    b83a010000
                         pop                esi                                     // 0x00423996    5e
                         ret                                                        // 0x00423997    c3
                         mov                eax, 0x0000013b                         // 0x00423998    b83b010000
                         pop                esi                                     // 0x0042399d    5e
                         ret                                                        // 0x0042399e    c3
                         mov                eax, 0x0000013c                         // 0x0042399f    b83c010000
                         pop                esi                                     // 0x004239a4    5e
                         ret                                                        // 0x004239a5    c3
                         mov                edx, dword ptr [esi]                    // 0x004239a6    8b16
                         mov.s              ecx, esi                                // 0x004239a8    8bce
                         call               dword ptr [edx + 0x44c]                 // 0x004239aa    ff924c040000
                         test               eax, eax                                // 0x004239b0    85c0
                         {disp8} je         _jmp_addr_0x004239cd                    // 0x004239b2    7419
                         {disp32} mov       eax, dword ptr [esi + 0x000000d8]       // 0x004239b4    8b86d8000000
                         {disp8} mov        eax, dword ptr [eax + 0x60]             // 0x004239ba    8b4060
                         mov.s              ecx, eax                                // 0x004239bd    8bc8
                         shl                ecx, 4                                  // 0x004239bf    c1e104
                         add.s              ecx, eax                                // 0x004239c2    03c8
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00be6970] // 0x004239c4    8b04cd7069be00
                         pop                esi                                     // 0x004239cb    5e
                         ret                                                        // 0x004239cc    c3
_jmp_addr_0x004239cd:    {disp32} mov       edx, dword ptr [esi + 0x000000d8]       // 0x004239cd    8b96d8000000
                         {disp8} mov        eax, dword ptr [edx + 0x60]             // 0x004239d3    8b4260
                         mov.s              ecx, eax                                // 0x004239d6    8bc8
                         shl                ecx, 4                                  // 0x004239d8    c1e104
                         add.s              ecx, eax                                // 0x004239db    03c8
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00be6974] // 0x004239dd    8b04cd7469be00
                         pop                esi                                     // 0x004239e4    5e
                         ret                                                        // 0x004239e5    c3
                         {disp8} mov        eax, dword ptr [eax + 0x70]             // 0x004239e6    8b4070
                         test               eax, eax                                // 0x004239e9    85c0
                         {disp8} je         _jmp_addr_0x004239f6                    // 0x004239eb    7409
                         cmp                dword ptr [eax + 0x5c], 0x01            // 0x004239ed    83785c01
                         {disp32} jmp       _jmp_addr_0x004238a0                    // 0x004239f1    e9aafeffff
_jmp_addr_0x004239f6:    mov                eax, 0x00000181                         // 0x004239f6    b881010000
                         pop                esi                                     // 0x004239fb    5e
                         ret                                                        // 0x004239fc    c3

// Snippet: db, [0x004239fd, 0x00423a00)
.byte 0x8d, 0x49, 0x00            // 0x004239fd

// Snippet: jmptbl, [0x00423a00, 0x00423a7c)
.byte 0xe6, 0x39, 0x42, 0x00      // 0x00423a00
.byte 0x8b, 0x38, 0x42, 0x00      // 0x00423a04
.byte 0xf6, 0x39, 0x42, 0x00      // 0x00423a08
.byte 0xf6, 0x39, 0x42, 0x00      // 0x00423a0c
.byte 0xce, 0x38, 0x42, 0x00      // 0x00423a10
.byte 0x11, 0x39, 0x42, 0x00      // 0x00423a14
.byte 0x2a, 0x39, 0x42, 0x00      // 0x00423a18
.byte 0xf6, 0x39, 0x42, 0x00      // 0x00423a1c
.byte 0xf6, 0x39, 0x42, 0x00      // 0x00423a20
.byte 0x18, 0x39, 0x42, 0x00      // 0x00423a24
.byte 0xa6, 0x39, 0x42, 0x00      // 0x00423a28
.byte 0xba, 0x38, 0x42, 0x00      // 0x00423a2c
.byte 0xba, 0x38, 0x42, 0x00      // 0x00423a30
.byte 0xf6, 0x39, 0x42, 0x00      // 0x00423a34
.byte 0xf6, 0x39, 0x42, 0x00      // 0x00423a38
.byte 0x44, 0x39, 0x42, 0x00      // 0x00423a3c
.byte 0x4b, 0x39, 0x42, 0x00      // 0x00423a40
.byte 0x52, 0x39, 0x42, 0x00      // 0x00423a44
.byte 0x11, 0x39, 0x42, 0x00      // 0x00423a48
.byte 0x59, 0x39, 0x42, 0x00      // 0x00423a4c
.byte 0x60, 0x39, 0x42, 0x00      // 0x00423a50
.byte 0x67, 0x39, 0x42, 0x00      // 0x00423a54
.byte 0x11, 0x39, 0x42, 0x00      // 0x00423a58
.byte 0x6e, 0x39, 0x42, 0x00      // 0x00423a5c
.byte 0x75, 0x39, 0x42, 0x00      // 0x00423a60
.byte 0x7c, 0x39, 0x42, 0x00      // 0x00423a64
.byte 0x83, 0x39, 0x42, 0x00      // 0x00423a68
.byte 0x8a, 0x39, 0x42, 0x00      // 0x00423a6c
.byte 0x91, 0x39, 0x42, 0x00      // 0x00423a70
.byte 0x98, 0x39, 0x42, 0x00      // 0x00423a74
.byte 0x9f, 0x39, 0x42, 0x00      // 0x00423a78

// Snippet: db, [0x00423a7c, 0x00423a80)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00423a7c

