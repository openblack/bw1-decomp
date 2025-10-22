.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004250a0
.extern _jmp_addr_0x0047f1c0
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x00489540
.extern _jmp_addr_0x004f7970
.extern _jmp_addr_0x004f81f0
.extern _jmp_addr_0x00617a80
.extern @GetAnim__9MorphableFll@16
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x0085e490

.globl _jmp_addr_0x004851a0

start_0x004851a0_0x00485df0:
// Snippet: asm, [0x004851a0, 0x00485d59)
_jmp_addr_0x004851a0:    sub                esp, 0x0c                                // 0x004851a0    83ec0c
                         push               ebx                                      // 0x004851a3    53
                         push               esi                                      // 0x004851a4    56
                         mov.s              esi, ecx                                 // 0x004851a5    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]        // 0x004851a7    8b8694490000
                         {disp8} lea        ecx, dword ptr [eax + -0x02]             // 0x004851ad    8d48fe
                         cmp                ecx, 0x23                                // 0x004851b0    83f923
                         push               edi                                      // 0x004851b3    57
                         {disp32} ja        _jmp_addr_0x00485d52                     // 0x004851b4    0f87980b0000
                         jmp                dword ptr [ecx*4 + 0x485d5c]             // 0x004851ba    ff248d5c5d4800
                         push               0x0                                      // 0x004851c1    6a00
                         push               0x00000091                               // 0x004851c3    6891000000
                         mov.s              ecx, esi                                 // 0x004851c8    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004851ca    e881441900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x004851cf    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004851d5    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004851db    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x004851e1    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x004851e3    8d3c0a
                         cmp.s              edi, ebx                                 // 0x004851e6    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004851e8    0f8c640b0000
                         push               ecx                                      // 0x004851ee    51
                         push               edx                                      // 0x004851ef    52
                         push               0x00000091                               // 0x004851f0    6891000000
                         mov.s              ecx, esi                                 // 0x004851f5    8bce
                         call               _jmp_addr_0x00617a80                     // 0x004851f7    e884281900
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x004851fc    8b8638520000
                         test               eax, eax                                 // 0x00485202    85c0
                         {disp8} je         _jmp_addr_0x00485216                     // 0x00485204    7410
                         push               0x7                                      // 0x00485206    6a07
                         mov.s              ecx, esi                                 // 0x00485208    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048520a    e8b1fcffff
                         pop                edi                                      // 0x0048520f    5f
                         pop                esi                                      // 0x00485210    5e
                         pop                ebx                                      // 0x00485211    5b
                         add                esp, 0x0c                                // 0x00485212    83c40c
                         ret                                                         // 0x00485215    c3
_jmp_addr_0x00485216:    push               0x6                                      // 0x00485216    6a06
                         mov.s              ecx, esi                                 // 0x00485218    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048521a    e8a1fcffff
                         pop                edi                                      // 0x0048521f    5f
                         pop                esi                                      // 0x00485220    5e
                         pop                ebx                                      // 0x00485221    5b
                         add                esp, 0x0c                                // 0x00485222    83c40c
                         ret                                                         // 0x00485225    c3
                         push               0x0                                      // 0x00485226    6a00
                         push               0x0000008e                               // 0x00485228    688e000000
                         mov.s              ecx, esi                                 // 0x0048522d    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x0048522f    e81c441900
                         mov.s              ecx, esi                                 // 0x00485234    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485236    8986c0470000
                         call               _jmp_addr_0x0047f1c0                     // 0x0048523c    e87f9fffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x00485241    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x00485247    e8b4c13100
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]        // 0x0048524c    8bbed0470000
                         {disp32} mov       ecx, dword ptr [esi + 0x000047c0]        // 0x00485252    8b8ec0470000
                         mov                edx, dword ptr [ecx]                     // 0x00485258    8b11
                         add.s              eax, edi                                 // 0x0048525a    03c7
                         cmp.s              eax, edx                                 // 0x0048525c    3bc2
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x0048525e    0f8cee0a0000
                         mov.s              ecx, esi                                 // 0x00485264    8bce
                         call               _jmp_addr_0x0047f1c0                     // 0x00485266    e8559fffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x0048526b    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x00485271    e88ac13100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485276    8b96d0470000
                         push               eax                                      // 0x0048527c    50
                         push               edx                                      // 0x0048527d    52
                         push               0x0000008e                               // 0x0048527e    688e000000
                         mov.s              ecx, esi                                 // 0x00485283    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00485285    e8f6271900
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x0048528a    8b8638520000
                         test               eax, eax                                 // 0x00485290    85c0
                         {disp32} je        _jmp_addr_0x004859b0                     // 0x00485292    0f8418070000
                         push               0x1d                                     // 0x00485298    6a1d
                         mov.s              ecx, esi                                 // 0x0048529a    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048529c    e81ffcffff
                         pop                edi                                      // 0x004852a1    5f
                         pop                esi                                      // 0x004852a2    5e
                         pop                ebx                                      // 0x004852a3    5b
                         add                esp, 0x0c                                // 0x004852a4    83c40c
                         ret                                                         // 0x004852a7    c3
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x004852a8    8b86a0490000
                         push               0x0                                      // 0x004852ae    6a00
                         dec                eax                                      // 0x004852b0    48
                         push               eax                                      // 0x004852b1    50
                         mov.s              ecx, esi                                 // 0x004852b2    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004852b4    e897431900
                         mov.s              ecx, esi                                 // 0x004852b9    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004852bb    8986c0470000
                         call               _jmp_addr_0x0047f1c0                     // 0x004852c1    e8fa9effff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x004852c6    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x004852cc    e82fc13100
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]        // 0x004852d1    8bbed0470000
                         {disp32} mov       ecx, dword ptr [esi + 0x000047c0]        // 0x004852d7    8b8ec0470000
                         mov                edx, dword ptr [ecx]                     // 0x004852dd    8b11
                         add.s              eax, edi                                 // 0x004852df    03c7
                         cmp.s              eax, edx                                 // 0x004852e1    3bc2
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004852e3    0f8c690a0000
                         mov.s              ecx, esi                                 // 0x004852e9    8bce
                         call               _jmp_addr_0x0047f1c0                     // 0x004852eb    e8d09effff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x004852f0    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x004852f6    e805c13100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004852fb    8b96d0470000
                         push               eax                                      // 0x00485301    50
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x00485302    8b86a0490000
                         push               edx                                      // 0x00485308    52
                         dec                eax                                      // 0x00485309    48
                         push               eax                                      // 0x0048530a    50
                         mov.s              ecx, esi                                 // 0x0048530b    8bce
                         call               _jmp_addr_0x00617a80                     // 0x0048530d    e86e271900
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x00485312    8b8638520000
                         test               eax, eax                                 // 0x00485318    85c0
                         {disp8} je         _jmp_addr_0x0048532c                     // 0x0048531a    7410
                         push               0x22                                     // 0x0048531c    6a22
                         mov.s              ecx, esi                                 // 0x0048531e    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485320    e89bfbffff
                         pop                edi                                      // 0x00485325    5f
                         pop                esi                                      // 0x00485326    5e
                         pop                ebx                                      // 0x00485327    5b
                         add                esp, 0x0c                                // 0x00485328    83c40c
                         ret                                                         // 0x0048532b    c3
_jmp_addr_0x0048532c:    {disp32} mov       eax, dword ptr [esi + 0x00004834]        // 0x0048532c    8b8634480000
                         test               eax, eax                                 // 0x00485332    85c0
                         {disp8} je         _jmp_addr_0x004853af                     // 0x00485334    7479
                         {disp32} mov       ecx, dword ptr [esi + 0x0000528c]        // 0x00485336    8b8e8c520000
                         test               ecx, ecx                                 // 0x0048533c    85c9
                         {disp8} je         _jmp_addr_0x004853af                     // 0x0048533e    746f
                         {disp32} mov       ecx, dword ptr [eax + 0x000010a0]        // 0x00485340    8b88a0100000
                         test               ecx, ecx                                 // 0x00485346    85c9
                         {disp8} je         _jmp_addr_0x00485359                     // 0x00485348    740f
                         {disp32} mov       edx, dword ptr [esi + 0x00004b28]        // 0x0048534a    8b96284b0000
                         push               0x0                                      // 0x00485350    6a00
                         push               eax                                      // 0x00485352    50
                         push               edx                                      // 0x00485353    52
                         call               _jmp_addr_0x004250a0                     // 0x00485354    e847fdf9ff
_jmp_addr_0x00485359:    {disp32} mov       edx, dword ptr [esi + 0x00004b28]        // 0x00485359    8b96284b0000
                         lea                eax, dword ptr [edx + edx * 0x8]         // 0x0048535f    8d04d2
                         shl                eax, 3                                   // 0x00485362    c1e003
                         sub.s              eax, edx                                 // 0x00485365    2bc2
                         shl                eax, 2                                   // 0x00485367    c1e002
                         {disp32} mov       ecx, dword ptr [eax + 0x00cc6720]        // 0x0048536a    8b882067cc00
                         test               ecx, ecx                                 // 0x00485370    85c9
                         {disp8} je         _jmp_addr_0x00485391                     // 0x00485372    741d
                         {disp32} mov       eax, dword ptr [esi + 0x0000528c]        // 0x00485374    8b868c520000
                         {disp32} mov       ecx, dword ptr [eax + 0x00004834]        // 0x0048537a    8b8834480000
                         push               0x0                                      // 0x00485380    6a00
                         push               0x40000000                               // 0x00485382    6800000040
                         push               ecx                                      // 0x00485387    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]        // 0x00485388    8b8e34480000
                         push               edx                                      // 0x0048538e    52
                         {disp8} jmp        _jmp_addr_0x004853aa                     // 0x0048538f    eb19
_jmp_addr_0x00485391:    {disp32} mov       ecx, dword ptr [eax + 0x00cc6724]        // 0x00485391    8b882467cc00
                         test               ecx, ecx                                 // 0x00485397    85c9
                         {disp8} je         _jmp_addr_0x004853af                     // 0x00485399    7414
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]        // 0x0048539b    8b8e34480000
                         push               0x0                                      // 0x004853a1    6a00
                         push               0x40000000                               // 0x004853a3    6800000040
                         push               ecx                                      // 0x004853a8    51
                         push               edx                                      // 0x004853a9    52
_jmp_addr_0x004853aa:    call               _jmp_addr_0x004f7970                     // 0x004853aa    e8c1250700
_jmp_addr_0x004853af:    push               0x21                                     // 0x004853af    6a21
                         mov.s              ecx, esi                                 // 0x004853b1    8bce
                         {disp32} mov       dword ptr [esi + 0x00004b2c], 0x00000000 // 0x004853b3    c7862c4b000000000000
                         call               _jmp_addr_0x00484ec0                     // 0x004853bd    e8fefaffff
                         pop                edi                                      // 0x004853c2    5f
                         pop                esi                                      // 0x004853c3    5e
                         pop                ebx                                      // 0x004853c4    5b
                         add                esp, 0x0c                                // 0x004853c5    83c40c
                         ret                                                         // 0x004853c8    c3
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]        // 0x004853c9    8b96a0490000
                         push               0x0                                      // 0x004853cf    6a00
                         inc                edx                                      // 0x004853d1    42
                         push               edx                                      // 0x004853d2    52
                         mov.s              ecx, esi                                 // 0x004853d3    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004853d5    e876421900
                         mov.s              ecx, esi                                 // 0x004853da    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004853dc    8986c0470000
                         call               _jmp_addr_0x0047f1c0                     // 0x004853e2    e8d99dffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x004853e7    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x004853ed    e80ec03100
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]        // 0x004853f2    8bbed0470000
                         {disp32} mov       ecx, dword ptr [esi + 0x000047c0]        // 0x004853f8    8b8ec0470000
                         mov                edx, dword ptr [ecx]                     // 0x004853fe    8b11
                         add.s              eax, edi                                 // 0x00485400    03c7
                         cmp.s              eax, edx                                 // 0x00485402    3bc2
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485404    0f8c48090000
                         mov.s              ecx, esi                                 // 0x0048540a    8bce
                         call               _jmp_addr_0x0047f1c0                     // 0x0048540c    e8af9dffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x00485411    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x00485417    e8e4bf3100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x0048541c    8b96d0470000
                         push               eax                                      // 0x00485422    50
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x00485423    8b86a0490000
                         push               edx                                      // 0x00485429    52
                         inc                eax                                      // 0x0048542a    40
                         push               eax                                      // 0x0048542b    50
_jmp_addr_0x0048542c:    mov.s              ecx, esi                                 // 0x0048542c    8bce
                         call               _jmp_addr_0x00617a80                     // 0x0048542e    e84d261900
                         {disp32} mov       dword ptr [esi + 0x000049a0], 0x00000000 // 0x00485433    c786a049000000000000
_jmp_addr_0x0048543d:    push               0x17                                     // 0x0048543d    6a17
                         mov.s              ecx, esi                                 // 0x0048543f    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485441    e87afaffff
                         cmp                dword ptr [esi + 0x0000579c], 0x02       // 0x00485446    83be9c57000002
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x0048544d    0f84ff080000
                         mov.s              ecx, esi                                 // 0x00485453    8bce
                         call               _jmp_addr_0x00489540                     // 0x00485455    e8e6400000
                         pop                edi                                      // 0x0048545a    5f
                         pop                esi                                      // 0x0048545b    5e
                         pop                ebx                                      // 0x0048545c    5b
                         add                esp, 0x0c                                // 0x0048545d    83c40c
                         ret                                                         // 0x00485460    c3
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]        // 0x00485461    8b8ea0490000
                         dec                ecx                                      // 0x00485467    49
                         push               0x0                                      // 0x00485468    6a00
                         push               ecx                                      // 0x0048546a    51
                         mov.s              ecx, esi                                 // 0x0048546b    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x0048546d    e8de411900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485472    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485478    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x0048547e    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485484    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485486    8d3c0a
                         cmp.s              edi, ebx                                 // 0x00485489    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x0048548b    0f8cc1080000
                         push               ecx                                      // 0x00485491    51
                         push               edx                                      // 0x00485492    52
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]        // 0x00485493    8b96a0490000
                         dec                edx                                      // 0x00485499    4a
                         push               edx                                      // 0x0048549a    52
                         mov.s              ecx, esi                                 // 0x0048549b    8bce
                         call               _jmp_addr_0x00617a80                     // 0x0048549d    e8de251900
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x004854a2    8b8638520000
                         test               eax, eax                                 // 0x004854a8    85c0
                         {disp8} je         _jmp_addr_0x004854bc                     // 0x004854aa    7410
                         push               0x4                                      // 0x004854ac    6a04
                         mov.s              ecx, esi                                 // 0x004854ae    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x004854b0    e80bfaffff
                         pop                edi                                      // 0x004854b5    5f
                         pop                esi                                      // 0x004854b6    5e
                         pop                ebx                                      // 0x004854b7    5b
                         add                esp, 0x0c                                // 0x004854b8    83c40c
                         ret                                                         // 0x004854bb    c3
_jmp_addr_0x004854bc:    push               0x3                                      // 0x004854bc    6a03
                         mov.s              ecx, esi                                 // 0x004854be    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x004854c0    e8fbf9ffff
                         pop                edi                                      // 0x004854c5    5f
                         pop                esi                                      // 0x004854c6    5e
                         pop                ebx                                      // 0x004854c7    5b
                         add                esp, 0x0c                                // 0x004854c8    83c40c
                         ret                                                         // 0x004854cb    c3
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]        // 0x004854cc    8b868c510000
                         test               eax, eax                                 // 0x004854d2    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x004854d4    0f8478080000
                         push               0x0                                      // 0x004854da    6a00
                         push               0x7a                                     // 0x004854dc    6a7a
                         mov.s              ecx, esi                                 // 0x004854de    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004854e0    e86b411900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x004854e5    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004854eb    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004854f1    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x004854f7    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x004854f9    8d3c0a
                         cmp.s              edi, ebx                                 // 0x004854fc    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004854fe    0f8c4e080000
                         push               ecx                                      // 0x00485504    51
                         push               edx                                      // 0x00485505    52
                         push               0x7a                                     // 0x00485506    6a7a
                         mov.s              ecx, esi                                 // 0x00485508    8bce
                         call               _jmp_addr_0x00617a80                     // 0x0048550a    e871251900
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x0048550f    8b8638520000
                         test               eax, eax                                 // 0x00485515    85c0
                         {disp8} je         _jmp_addr_0x00485529                     // 0x00485517    7410
                         push               0x19                                     // 0x00485519    6a19
                         mov.s              ecx, esi                                 // 0x0048551b    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048551d    e89ef9ffff
                         pop                edi                                      // 0x00485522    5f
                         pop                esi                                      // 0x00485523    5e
                         pop                ebx                                      // 0x00485524    5b
                         add                esp, 0x0c                                // 0x00485525    83c40c
                         ret                                                         // 0x00485528    c3
_jmp_addr_0x00485529:    push               0x17                                     // 0x00485529    6a17
                         mov.s              ecx, esi                                 // 0x0048552b    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048552d    e88ef9ffff
                         pop                edi                                      // 0x00485532    5f
                         pop                esi                                      // 0x00485533    5e
                         pop                ebx                                      // 0x00485534    5b
                         add                esp, 0x0c                                // 0x00485535    83c40c
                         ret                                                         // 0x00485538    c3
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x00485539    8b8638520000
                         test               eax, eax                                 // 0x0048553f    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x00485541    0f840b080000
                         push               0x4                                      // 0x00485547    6a04
                         mov.s              ecx, esi                                 // 0x00485549    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048554b    e870f9ffff
                         pop                edi                                      // 0x00485550    5f
                         pop                esi                                      // 0x00485551    5e
                         pop                ebx                                      // 0x00485552    5b
                         add                esp, 0x0c                                // 0x00485553    83c40c
                         ret                                                         // 0x00485556    c3
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x00485557    8b8638520000
                         test               eax, eax                                 // 0x0048555d    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x0048555f    0f84ed070000
                         push               0x1d                                     // 0x00485565    6a1d
                         mov.s              ecx, esi                                 // 0x00485567    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485569    e852f9ffff
                         pop                edi                                      // 0x0048556e    5f
                         pop                esi                                      // 0x0048556f    5e
                         pop                ebx                                      // 0x00485570    5b
                         add                esp, 0x0c                                // 0x00485571    83c40c
                         ret                                                         // 0x00485574    c3
                         {disp32} mov       eax, dword ptr [esi + 0x000048b4]        // 0x00485575    8b86b4480000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004b2c]        // 0x0048557b    8b8e2c4b0000
                         add.s              ecx, eax                                 // 0x00485581    03c8
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x00485583    8b8638520000
                         test               eax, eax                                 // 0x00485589    85c0
                         {disp32} mov       dword ptr [esi + 0x00004b2c], ecx        // 0x0048558b    898e2c4b0000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx              // 0x00485591    894c240c
                         {disp8} jne        _jmp_addr_0x004855ac                     // 0x00485595    7515
                         {disp8} fild       dword ptr [esp + 0x0c]                   // 0x00485597    db44240c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]         // 0x0048559b    d81d78b48a00
                         fnstsw             ax                                       // 0x004855a1    dfe0
                         test               ah, 0x41                                 // 0x004855a3    f6c441
                         {disp32} jne       _jmp_addr_0x00485d52                     // 0x004855a6    0f85a6070000
_jmp_addr_0x004855ac:    {disp32} mov       ecx, dword ptr [esi + 0x00004834]        // 0x004855ac    8b8e34480000
                         test               ecx, ecx                                 // 0x004855b2    85c9
                         {disp8} je         _jmp_addr_0x004855bb                     // 0x004855b4    7405
                         call               _jmp_addr_0x004f81f0                     // 0x004855b6    e8352c0700
_jmp_addr_0x004855bb:    push               0x22                                     // 0x004855bb    6a22
                         mov.s              ecx, esi                                 // 0x004855bd    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x004855bf    e8fcf8ffff
                         pop                edi                                      // 0x004855c4    5f
                         pop                esi                                      // 0x004855c5    5e
                         pop                ebx                                      // 0x004855c6    5b
                         add                esp, 0x0c                                // 0x004855c7    83c40c
                         ret                                                         // 0x004855ca    c3
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x004855cb    8b8638520000
                         test               eax, eax                                 // 0x004855d1    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x004855d3    0f8479070000
                         push               0x19                                     // 0x004855d9    6a19
                         mov.s              ecx, esi                                 // 0x004855db    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x004855dd    e8def8ffff
                         pop                edi                                      // 0x004855e2    5f
                         pop                esi                                      // 0x004855e3    5e
                         pop                ebx                                      // 0x004855e4    5b
                         add                esp, 0x0c                                // 0x004855e5    83c40c
                         ret                                                         // 0x004855e8    c3
                         {disp32} mov       eax, dword ptr [esi + 0x00005238]        // 0x004855e9    8b8638520000
                         test               eax, eax                                 // 0x004855ef    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x004855f1    0f845b070000
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]        // 0x004855f7    8b868c510000
                         test               eax, eax                                 // 0x004855fd    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x004855ff    0f844d070000
                         push               0x0                                      // 0x00485605    6a00
                         mov.s              ecx, esi                                 // 0x00485607    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485609    e8b2f8ffff
                         pop                edi                                      // 0x0048560e    5f
                         pop                esi                                      // 0x0048560f    5e
                         pop                ebx                                      // 0x00485610    5b
                         add                esp, 0x0c                                // 0x00485611    83c40c
                         ret                                                         // 0x00485614    c3
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]        // 0x00485615    8b96a0490000
                         push               0x0                                      // 0x0048561b    6a00
                         push               edx                                      // 0x0048561d    52
                         mov.s              ecx, esi                                 // 0x0048561e    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485620    e82b401900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485625    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x0048562b    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485631    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485637    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485639    8d3c0a
                         cmp.s              edi, ebx                                 // 0x0048563c    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x0048563e    0f8c0e070000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x00485644    8b86a0490000
                         push               ecx                                      // 0x0048564a    51
                         push               edx                                      // 0x0048564b    52
                         push               eax                                      // 0x0048564c    50
                         mov.s              ecx, esi                                 // 0x0048564d    8bce
                         call               _jmp_addr_0x00617a80                     // 0x0048564f    e82c241900
                         push               0x13                                     // 0x00485654    6a13
                         mov.s              ecx, esi                                 // 0x00485656    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485658    e863f8ffff
                         pop                edi                                      // 0x0048565d    5f
                         pop                esi                                      // 0x0048565e    5e
                         pop                ebx                                      // 0x0048565f    5b
                         add                esp, 0x0c                                // 0x00485660    83c40c
                         ret                                                         // 0x00485663    c3
                         push               0x0                                      // 0x00485664    6a00
                         push               0x000000e7                               // 0x00485666    68e7000000
                         mov.s              ecx, esi                                 // 0x0048566b    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x0048566d    e8de3f1900
                         {disp32} mov       ecx, dword ptr [esi + 0x00004998]        // 0x00485672    8b8e98490000
                         cmp                ecx, 0x01                                // 0x00485678    83f901
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x0048567b    8986c0470000
                         {disp8} je         _jmp_addr_0x004856aa                     // 0x00485681    7427
                         cmp                ecx, 0x03                                // 0x00485683    83f903
                         {disp8} je         _jmp_addr_0x004856aa                     // 0x00485686    7422
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]        // 0x00485688    8b8ed0470000
                         cmp                ecx, dword ptr [esi + 0x000048bc]        // 0x0048568e    3b8ebc480000
                         {disp32} jge       _jmp_addr_0x00485d52                     // 0x00485694    0f8db8060000
                         push               0x0                                      // 0x0048569a    6a00
                         mov.s              ecx, esi                                 // 0x0048569c    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048569e    e81df8ffff
                         pop                edi                                      // 0x004856a3    5f
                         pop                esi                                      // 0x004856a4    5e
                         pop                ebx                                      // 0x004856a5    5b
                         add                esp, 0x0c                                // 0x004856a6    83c40c
                         ret                                                         // 0x004856a9    c3
_jmp_addr_0x004856aa:    {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x004856aa    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004856b0    8b96d0470000
                         mov                ebx, dword ptr [eax]                     // 0x004856b6    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x004856b8    8d3c0a
                         cmp.s              edi, ebx                                 // 0x004856bb    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004856bd    0f8c8f060000
                         push               ecx                                      // 0x004856c3    51
                         push               edx                                      // 0x004856c4    52
                         push               0x000000e7                               // 0x004856c5    68e7000000
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x004856ca    e973060000
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]        // 0x004856cf    8b96a0490000
                         push               0x0                                      // 0x004856d5    6a00
                         push               edx                                      // 0x004856d7    52
                         mov.s              ecx, esi                                 // 0x004856d8    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004856da    e8713f1900
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004856df    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004856e5    8986c0470000
                         mov                edi, dword ptr [eax]                     // 0x004856eb    8b38
                         {disp32} mov       eax, dword ptr [esi + 0x000048b4]        // 0x004856ed    8b86b4480000
                         add.s              eax, edx                                 // 0x004856f3    03c2
                         cmp.s              eax, edi                                 // 0x004856f5    3bc7
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004856f7    0f8c55060000
_jmp_addr_0x004856fd:    push               0x00000f17                               // 0x004856fd    68170f0000
                         push               0x009d1094                               // 0x00485702    6894109d00
                         push               0x5                                      // 0x00485707    6a05
                         call               ?GameRand@GRand@@SAHJ@Z                  // 0x00485709    e8028e2500
                         add                esp, 0x0c                                // 0x0048570e    83c40c
                         add                eax, 0x00000093                          // 0x00485711    0593000000
                         push               0x0                                      // 0x00485716    6a00
                         push               eax                                      // 0x00485718    50
                         mov.s              ecx, esi                                 // 0x00485719    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], eax        // 0x0048571b    8986a0490000
                         call               @GetAnim__9MorphableFll@16               // 0x00485721    e82a3f1900
                         test               eax, eax                                 // 0x00485726    85c0
                         {disp8} je         _jmp_addr_0x004856fd                     // 0x00485728    74d3
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]        // 0x0048572a    8b8ea0490000
                         push               0x0                                      // 0x00485730    6a00
                         push               ecx                                      // 0x00485732    51
                         mov.s              ecx, esi                                 // 0x00485733    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485735    e8163f1900
                         mov                eax, dword ptr [eax]                     // 0x0048573a    8b00
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]        // 0x0048573c    8b8ed0470000
                         sub.s              eax, edi                                 // 0x00485742    2bc7
                         add.s              ecx, eax                                 // 0x00485744    03c8
                         pop                edi                                      // 0x00485746    5f
                         {disp32} mov       dword ptr [esi + 0x000047d0], ecx        // 0x00485747    898ed0470000
                         pop                esi                                      // 0x0048574d    5e
                         pop                ebx                                      // 0x0048574e    5b
                         add                esp, 0x0c                                // 0x0048574f    83c40c
                         ret                                                         // 0x00485752    c3
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]        // 0x00485753    8b96a0490000
                         push               0x0                                      // 0x00485759    6a00
                         inc                edx                                      // 0x0048575b    42
                         push               edx                                      // 0x0048575c    52
                         mov.s              ecx, esi                                 // 0x0048575d    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x0048575f    e8ec3e1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485764    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x0048576a    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485770    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485776    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485778    8d3c0a
                         cmp.s              edi, ebx                                 // 0x0048577b    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x0048577d    0f8ccf050000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x00485783    8b86a0490000
                         push               ecx                                      // 0x00485789    51
                         push               edx                                      // 0x0048578a    52
                         inc                eax                                      // 0x0048578b    40
                         push               eax                                      // 0x0048578c    50
                         {disp32} jmp       _jmp_addr_0x00485b8c                     // 0x0048578d    e9fa030000
                         push               0x0                                      // 0x00485792    6a00
                         push               0x00000090                               // 0x00485794    6890000000
                         mov.s              ecx, esi                                 // 0x00485799    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x0048579b    e8b03e1900
                         mov.s              ecx, esi                                 // 0x004857a0    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004857a2    8986c0470000
                         call               _jmp_addr_0x0047f1c0                     // 0x004857a8    e8139affff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x004857ad    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x004857b3    e848bc3100
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]        // 0x004857b8    8bbed0470000
                         {disp32} mov       ecx, dword ptr [esi + 0x000047c0]        // 0x004857be    8b8ec0470000
                         mov                edx, dword ptr [ecx]                     // 0x004857c4    8b11
                         add.s              eax, edi                                 // 0x004857c6    03c7
                         cmp.s              eax, edx                                 // 0x004857c8    3bc2
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004857ca    0f8c82050000
                         mov.s              ecx, esi                                 // 0x004857d0    8bce
                         call               _jmp_addr_0x0047f1c0                     // 0x004857d2    e8e999ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x004857d7    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x004857dd    e81ebc3100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004857e2    8b96d0470000
                         push               eax                                      // 0x004857e8    50
                         push               edx                                      // 0x004857e9    52
                         push               0x00000090                               // 0x004857ea    6890000000
                         {disp32} jmp       _jmp_addr_0x0048542c                     // 0x004857ef    e938fcffff
                         push               0x0                                      // 0x004857f4    6a00
                         push               0x7c                                     // 0x004857f6    6a7c
                         mov.s              ecx, esi                                 // 0x004857f8    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004857fa    e8513e1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x004857ff    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485805    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x0048580b    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485811    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485813    8d3c0a
                         cmp.s              edi, ebx                                 // 0x00485816    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485818    0f8c34050000
                         push               ecx                                      // 0x0048581e    51
                         push               edx                                      // 0x0048581f    52
                         push               0x7c                                     // 0x00485820    6a7c
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x00485822    e91b050000
                         push               0x0                                      // 0x00485827    6a00
                         push               0x00000092                               // 0x00485829    6892000000
                         mov.s              ecx, esi                                 // 0x0048582e    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485830    e81b3e1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485835    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x0048583b    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485841    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485847    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485849    8d3c0a
                         cmp.s              edi, ebx                                 // 0x0048584c    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x0048584e    0f8cfe040000
                         push               ecx                                      // 0x00485854    51
                         push               edx                                      // 0x00485855    52
                         push               0x00000092                               // 0x00485856    6892000000
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x0048585b    e9e2040000
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]        // 0x00485860    8b868c510000
                         test               eax, eax                                 // 0x00485866    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x00485868    0f84e4040000
                         push               0x0                                      // 0x0048586e    6a00
                         push               0x000000d2                               // 0x00485870    68d2000000
                         mov.s              ecx, esi                                 // 0x00485875    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485877    e8d43d1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x0048587c    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485882    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485888    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x0048588e    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485890    8d3c0a
                         cmp.s              edi, ebx                                 // 0x00485893    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485895    0f8cb7040000
                         push               ecx                                      // 0x0048589b    51
                         push               edx                                      // 0x0048589c    52
                         push               0x000000d2                               // 0x0048589d    68d2000000
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x004858a2    e99b040000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x004858a7    8b86a0490000
                         push               0x0                                      // 0x004858ad    6a00
                         push               eax                                      // 0x004858af    50
                         mov.s              ecx, esi                                 // 0x004858b0    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004858b2    e8993d1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x004858b7    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004858bd    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004858c3    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x004858c9    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x004858cb    8d3c0a
                         cmp.s              edi, ebx                                 // 0x004858ce    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004858d0    0f8c7c040000
                         push               ecx                                      // 0x004858d6    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]        // 0x004858d7    8b8ea0490000
                         push               edx                                      // 0x004858dd    52
                         push               ecx                                      // 0x004858de    51
                         {disp32} jmp       _jmp_addr_0x00485b8c                     // 0x004858df    e9a8020000
                         push               0x0                                      // 0x004858e4    6a00
                         push               0x000000d4                               // 0x004858e6    68d4000000
                         mov.s              ecx, esi                                 // 0x004858eb    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004858ed    e85e3d1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]        // 0x004858f2    8b8eb4480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x004858f8    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004858fe    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485904    8b18
                         lea                edi, dword ptr [ecx + edx * 0x1]         // 0x00485906    8d3c11
                         cmp.s              edi, ebx                                 // 0x00485909    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x0048590b    0f8c41040000
                         push               ecx                                      // 0x00485911    51
                         push               edx                                      // 0x00485912    52
                         push               0x000000d4                               // 0x00485913    68d4000000
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x00485918    e925040000
                         push               0x0                                      // 0x0048591d    6a00
                         push               0x75                                     // 0x0048591f    6a75
                         mov.s              ecx, esi                                 // 0x00485921    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485923    e8283d1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485928    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x0048592e    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485934    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x0048593a    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x0048593c    8d3c0a
                         cmp.s              edi, ebx                                 // 0x0048593f    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485941    0f8c0b040000
                         push               ecx                                      // 0x00485947    51
                         push               edx                                      // 0x00485948    52
                         push               0x75                                     // 0x00485949    6a75
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x0048594b    e9f2030000
                         push               0x0                                      // 0x00485950    6a00
                         push               0x000000c6                               // 0x00485952    68c6000000
                         mov.s              ecx, esi                                 // 0x00485957    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485959    e8f23c1900
                         mov.s              ecx, esi                                 // 0x0048595e    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485960    8986c0470000
                         call               _jmp_addr_0x0047f1c0                     // 0x00485966    e85598ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x0048596b    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x00485971    e88aba3100
                         add                eax, dword ptr [esi + 0x000047d0]        // 0x00485976    0386d0470000
                         {disp32} mov       edx, dword ptr [esi + 0x000047c0]        // 0x0048597c    8b96c0470000
                         cmp                eax, dword ptr [edx]                     // 0x00485982    3b02
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485984    0f8cc8030000
                         mov.s              ecx, esi                                 // 0x0048598a    8bce
                         call               _jmp_addr_0x0047f1c0                     // 0x0048598c    e82f98ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x00485991    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x00485997    e864ba3100
                         push               eax                                      // 0x0048599c    50
                         {disp32} mov       eax, dword ptr [esi + 0x000047d0]        // 0x0048599d    8b86d0470000
                         push               eax                                      // 0x004859a3    50
                         push               0x000000c6                               // 0x004859a4    68c6000000
                         mov.s              ecx, esi                                 // 0x004859a9    8bce
                         call               _jmp_addr_0x00617a80                     // 0x004859ab    e8d0201900
_jmp_addr_0x004859b0:    push               0x1b                                     // 0x004859b0    6a1b
                         mov.s              ecx, esi                                 // 0x004859b2    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x004859b4    e807f5ffff
                         pop                edi                                      // 0x004859b9    5f
                         pop                esi                                      // 0x004859ba    5e
                         pop                ebx                                      // 0x004859bb    5b
                         add                esp, 0x0c                                // 0x004859bc    83c40c
                         ret                                                         // 0x004859bf    c3
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]        // 0x004859c0    8b8ea0490000
                         push               0x0                                      // 0x004859c6    6a00
                         push               ecx                                      // 0x004859c8    51
                         mov.s              ecx, esi                                 // 0x004859c9    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004859cb    e8803c1900
                         mov.s              ecx, esi                                 // 0x004859d0    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x004859d2    8986c0470000
                         call               _jmp_addr_0x0047f1c0                     // 0x004859d8    e8e397ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x004859dd    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x004859e3    e818ba3100
                         add                eax, dword ptr [esi + 0x000047d0]        // 0x004859e8    0386d0470000
                         {disp32} mov       edx, dword ptr [esi + 0x000047c0]        // 0x004859ee    8b96c0470000
                         cmp                eax, dword ptr [edx]                     // 0x004859f4    3b02
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x004859f6    0f8c56030000
                         mov.s              ecx, esi                                 // 0x004859fc    8bce
                         call               _jmp_addr_0x0047f1c0                     // 0x004859fe    e8bd97ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]             // 0x00485a03    da8eb4480000
                         call               _jmp_addr_0x007a1400                     // 0x00485a09    e8f2b93100
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]        // 0x00485a0e    8b8ea0490000
                         push               eax                                      // 0x00485a14    50
                         {disp32} mov       eax, dword ptr [esi + 0x000047d0]        // 0x00485a15    8b86d0470000
                         push               eax                                      // 0x00485a1b    50
                         push               ecx                                      // 0x00485a1c    51
                         mov.s              ecx, esi                                 // 0x00485a1d    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00485a1f    e85c201900
                         {disp32} jmp       _jmp_addr_0x0048543d                     // 0x00485a24    e914faffff
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]        // 0x00485a29    8b868c510000
                         test               eax, eax                                 // 0x00485a2f    85c0
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x00485a31    0f841b030000
                         {disp32} fld       dword ptr [esi + 0x00004974]             // 0x00485a37    d98674490000
                         push               0x0                                      // 0x00485a3d    6a00
                         {disp32} fdiv      dword ptr [esi + 0x00004970]             // 0x00485a3f    d8b670490000
                         push               0x5b                                     // 0x00485a45    6a5b
                         mov.s              ecx, esi                                 // 0x00485a47    8bce
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00485a49    d95c241c
                         {disp32} fld       dword ptr [esi + 0x0000496c]             // 0x00485a4d    d9866c490000
                         {disp32} fdiv      dword ptr [esi + 0x00004968]             // 0x00485a53    d8b668490000
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00485a59    d95c2414
                         {disp32} fld       dword ptr [esi + 0x0000497c]             // 0x00485a5d    d9867c490000
                         {disp32} fdiv      dword ptr [esi + 0x00004978]             // 0x00485a63    d8b678490000
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00485a69    d95c2418
                         call               @GetAnim__9MorphableFll@16               // 0x00485a6d    e8de3b1900
                         push               0x0                                      // 0x00485a72    6a00
                         push               0x5c                                     // 0x00485a74    6a5c
                         mov.s              ecx, esi                                 // 0x00485a76    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485a78    8986c0470000
                         call               @GetAnim__9MorphableFll@16               // 0x00485a7e    e8cd3b1900
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x00485a83    d9442410
                         {disp8} fsub       dword ptr [esp + 0x0c]                   // 0x00485a87    d864240c
                         {disp32} mov       dword ptr [esi + 0x000047c4], eax        // 0x00485a8b    8986c4470000
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00485a91    d9442414
                         {disp8} fsub       dword ptr [esp + 0x0c]                   // 0x00485a95    d864240c
                         fdivp              st(1), st                                // 0x00485a99    def9
                         {disp32} fst       dword ptr [esi + 0x000047e4]             // 0x00485a9b    d996e4470000
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00485aa1    d90590a38a00
                         fsub               st, st(1)                                // 0x00485aa7    d8e1
                         {disp32} fst       dword ptr [esi + 0x000047e0]             // 0x00485aa9    d996e0470000
                         {disp32} fild      dword ptr [esi + 0x000048b4]             // 0x00485aaf    db86b4480000
                         {disp32} fmul      dword ptr [esi + 0x00004978]             // 0x00485ab5    d88e78490000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26024]        // 0x00485abb    d80d24f08c00
                         fxch               st(2)                                    // 0x00485ac1    d9ca
                         {disp32} fmul      dword ptr [esi + 0x00004970]             // 0x00485ac3    d88e70490000
                         fxch               st(1)                                    // 0x00485ac9    d9c9
                         {disp32} fmul      dword ptr [esi + 0x00004968]             // 0x00485acb    d88e68490000
                         faddp              st(1), st                                // 0x00485ad1    dec1
                         {disp32} fmul      dword ptr [esi + 0x00000094]             // 0x00485ad3    d88e94000000
                         fdivp              st(1), st                                // 0x00485ad9    def9
                         call               _jmp_addr_0x007a1400                     // 0x00485adb    e820b93100
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]        // 0x00485ae0    8bbed0470000
                         {disp32} mov       edx, dword ptr [esi + 0x00004964]        // 0x00485ae6    8b9664490000
                         mov.s              ecx, eax                                 // 0x00485aec    8bc8
                         mov.s              eax, edi                                 // 0x00485aee    8bc7
                         sub.s              eax, edx                                 // 0x00485af0    2bc2
                         cdq                                                         // 0x00485af2    99
                         xor.s              eax, edx                                 // 0x00485af3    33c2
                         sub.s              eax, edx                                 // 0x00485af5    2bc2
                         {disp8} mov        dword ptr [esp + 0x0c], eax              // 0x00485af7    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], ecx              // 0x00485afb    894c2410
                         {disp8} fild       dword ptr [esp + 0x0c]                   // 0x00485aff    db44240c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1e728]        // 0x00485b03    d81d28778c00
                         fnstsw             ax                                       // 0x00485b09    dfe0
                         test               ah, 0x41                                 // 0x00485b0b    f6c441
                         {disp8} jne        _jmp_addr_0x00485b18                     // 0x00485b0e    7508
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000190       // 0x00485b10    c744240c90010000
_jmp_addr_0x00485b18:    {disp32} mov       edx, dword ptr [esi + 0x000048bc]        // 0x00485b18    8b96bc480000
                         sub.s              edx, ecx                                 // 0x00485b1e    2bd1
                         {disp8} mov        dword ptr [esp + 0x14], edx              // 0x00485b20    89542414
                         {disp8} fild       dword ptr [esp + 0x14]                   // 0x00485b24    db442414
                         {disp8} fild       dword ptr [esp + 0x0c]                   // 0x00485b28    db44240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26154]        // 0x00485b2c    d80d54f18c00
                         fmulp              st(1), st                                // 0x00485b32    dec9
                         {disp8} fiadd      dword ptr [esp + 0x10]                   // 0x00485b34    da442410
                         call               _jmp_addr_0x007a1400                     // 0x00485b38    e8c3b83100
                         {disp32} mov       edx, dword ptr [esi + 0x000047c0]        // 0x00485b3d    8b96c0470000
                         mov                ebx, dword ptr [edx]                     // 0x00485b43    8b1a
                         lea                ecx, dword ptr [edi + eax * 0x1]         // 0x00485b45    8d0c07
                         cmp.s              ecx, ebx                                 // 0x00485b48    3bcb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485b4a    0f8c02020000
                         push               eax                                      // 0x00485b50    50
                         push               edi                                      // 0x00485b51    57
                         push               0x5b                                     // 0x00485b52    6a5b
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x00485b54    e9e9010000
                         push               0x0                                      // 0x00485b59    6a00
                         push               0x56                                     // 0x00485b5b    6a56
                         mov.s              ecx, esi                                 // 0x00485b5d    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485b5f    e8ec3a1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485b64    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485b6a    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485b70    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485b76    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485b78    8d3c0a
                         cmp.s              edi, ebx                                 // 0x00485b7b    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485b7d    0f8ccf010000
                         push               ecx                                      // 0x00485b83    51
                         push               edx                                      // 0x00485b84    52
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]        // 0x00485b85    8b96a0490000
                         push               edx                                      // 0x00485b8b    52
_jmp_addr_0x00485b8c:    mov.s              ecx, esi                                 // 0x00485b8c    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00485b8e    e8ed1e1900
                         push               0x0                                      // 0x00485b93    6a00
                         mov.s              ecx, esi                                 // 0x00485b95    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], 0x00000000 // 0x00485b97    c786a049000000000000
                         call               _jmp_addr_0x00484ec0                     // 0x00485ba1    e81af3ffff
                         pop                edi                                      // 0x00485ba6    5f
                         pop                esi                                      // 0x00485ba7    5e
                         pop                ebx                                      // 0x00485ba8    5b
                         add                esp, 0x0c                                // 0x00485ba9    83c40c
                         ret                                                         // 0x00485bac    c3
                         {disp32} mov       ecx, dword ptr [esi + 0x0000518c]        // 0x00485bad    8b8e8c510000
                         test               ecx, ecx                                 // 0x00485bb3    85c9
                         {disp32} je        _jmp_addr_0x00485d52                     // 0x00485bb5    0f8497010000
                         xor.s              ecx, ecx                                 // 0x00485bbb    33c9
                         cmp                eax, 0x0e                                // 0x00485bbd    83f80e
                         setne              cl                                       // 0x00485bc0    0f95c1
                         push               0x0                                      // 0x00485bc3    6a00
                         dec                ecx                                      // 0x00485bc5    49
                         and                ecx, 0xffffffe0                          // 0x00485bc6    83e1e0
                         add                ecx, 0x71                                // 0x00485bc9    83c171
                         mov.s              edi, ecx                                 // 0x00485bcc    8bf9
                         push               edi                                      // 0x00485bce    57
                         mov.s              ecx, esi                                 // 0x00485bcf    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485bd1    e87a3a1900
                         {disp32} mov       ecx, dword ptr [esi + 0x00004998]        // 0x00485bd6    8b8e98490000
                         cmp                ecx, 0x01                                // 0x00485bdc    83f901
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485bdf    8986c0470000
                         {disp8} je         _jmp_addr_0x00485c0e                     // 0x00485be5    7427
                         cmp                ecx, 0x03                                // 0x00485be7    83f903
                         {disp8} je         _jmp_addr_0x00485c0e                     // 0x00485bea    7422
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485bec    8b96d0470000
                         cmp                edx, dword ptr [esi + 0x000048bc]        // 0x00485bf2    3b96bc480000
                         {disp32} jge       _jmp_addr_0x00485d52                     // 0x00485bf8    0f8d54010000
                         push               0x0                                      // 0x00485bfe    6a00
                         mov.s              ecx, esi                                 // 0x00485c00    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485c02    e8b9f2ffff
                         pop                edi                                      // 0x00485c07    5f
                         pop                esi                                      // 0x00485c08    5e
                         pop                ebx                                      // 0x00485c09    5b
                         add                esp, 0x0c                                // 0x00485c0a    83c40c
                         ret                                                         // 0x00485c0d    c3
_jmp_addr_0x00485c0e:    {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485c0e    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485c14    8b96d0470000
                         push               ebp                                      // 0x00485c1a    55
                         mov                ebp, dword ptr [eax]                     // 0x00485c1b    8b28
                         lea                ebx, dword ptr [edx + ecx * 0x1]         // 0x00485c1d    8d1c0a
                         cmp.s              ebx, ebp                                 // 0x00485c20    3bdd
                         pop                ebp                                      // 0x00485c22    5d
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485c23    0f8c29010000
                         push               ecx                                      // 0x00485c29    51
                         push               edx                                      // 0x00485c2a    52
                         push               edi                                      // 0x00485c2b    57
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x00485c2c    e911010000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x00485c31    8b86a0490000
                         push               0x0                                      // 0x00485c37    6a00
                         push               eax                                      // 0x00485c39    50
                         mov.s              ecx, esi                                 // 0x00485c3a    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485c3c    e80f3a1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485c41    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485c47    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485c4d    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485c53    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485c55    8d3c0a
                         cmp.s              edi, ebx                                 // 0x00485c58    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485c5a    0f8cf2000000
                         push               ecx                                      // 0x00485c60    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]        // 0x00485c61    8b8ea0490000
                         push               edx                                      // 0x00485c67    52
                         push               ecx                                      // 0x00485c68    51
                         mov.s              ecx, esi                                 // 0x00485c69    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00485c6b    e8101e1900
                         push               0x24                                     // 0x00485c70    6a24
                         mov.s              ecx, esi                                 // 0x00485c72    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485c74    e847f2ffff
                         pop                edi                                      // 0x00485c79    5f
                         pop                esi                                      // 0x00485c7a    5e
                         pop                ebx                                      // 0x00485c7b    5b
                         add                esp, 0x0c                                // 0x00485c7c    83c40c
                         ret                                                         // 0x00485c7f    c3
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]        // 0x00485c80    8b96a0490000
                         push               0x0                                      // 0x00485c86    6a00
                         push               edx                                      // 0x00485c88    52
                         mov.s              ecx, esi                                 // 0x00485c89    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485c8b    e8c0391900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485c90    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485c96    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485c9c    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485ca2    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485ca4    8d3c0a
                         cmp.s              edi, ebx                                 // 0x00485ca7    3bfb
                         {disp32} jl        _jmp_addr_0x00485d52                     // 0x00485ca9    0f8ca3000000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x00485caf    8b86a0490000
                         push               ecx                                      // 0x00485cb5    51
                         push               edx                                      // 0x00485cb6    52
                         push               eax                                      // 0x00485cb7    50
                         {disp32} jmp       _jmp_addr_0x00485d42                     // 0x00485cb8    e985000000
                         {disp32} fld       dword ptr [esi + 0x00000084]             // 0x00485cbd    d98684000000
                         {disp32} fsub      dword ptr [esi + 0x00004840]             // 0x00485cc3    d8a640480000
                         fabs                                                        // 0x00485cc9    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]        // 0x00485ccb    dc1dd8798c00
                         fnstsw             ax                                       // 0x00485cd1    dfe0
                         test               ah, 0x01                                 // 0x00485cd3    f6c401
                         {disp8} je         _jmp_addr_0x00485d52                     // 0x00485cd6    747a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004840]        // 0x00485cd8    8b8e40480000
                         {disp32} mov       dword ptr [esi + 0x00000084], ecx        // 0x00485cde    898e84000000
                         push               0x0                                      // 0x00485ce4    6a00
                         mov.s              ecx, esi                                 // 0x00485ce6    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485ce8    e8d3f1ffff
                         {disp32} mov       edi, dword ptr [esi + 0x00005220]        // 0x00485ced    8bbe20520000
                         test               edi, edi                                 // 0x00485cf3    85ff
                         {disp8} je         _jmp_addr_0x00485d52                     // 0x00485cf5    745b
                         mov.s              ecx, edi                                 // 0x00485cf7    8bcf
                         call               _jmp_addr_0x0085e490                     // 0x00485cf9    e892873d00
                         push               edi                                      // 0x00485cfe    57
                         call               ??3@YAXPAX@Z                             // 0x00485cff    e894913200
                         add                esp, 0x04                                // 0x00485d04    83c404
                         pop                edi                                      // 0x00485d07    5f
                         {disp32} mov       dword ptr [esi + 0x00005220], 0x00000000 // 0x00485d08    c7862052000000000000
                         pop                esi                                      // 0x00485d12    5e
                         pop                ebx                                      // 0x00485d13    5b
                         add                esp, 0x0c                                // 0x00485d14    83c40c
                         ret                                                         // 0x00485d17    c3
                         push               0x0                                      // 0x00485d18    6a00
                         push               0x6d                                     // 0x00485d1a    6a6d
                         mov.s              ecx, esi                                 // 0x00485d1c    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00485d1e    e82d391900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00485d23    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00485d29    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00485d2f    8986c0470000
                         mov                ebx, dword ptr [eax]                     // 0x00485d35    8b18
                         lea                edi, dword ptr [edx + ecx * 0x1]         // 0x00485d37    8d3c0a
                         cmp.s              edi, ebx                                 // 0x00485d3a    3bfb
                         {disp8} jl         _jmp_addr_0x00485d52                     // 0x00485d3c    7c14
                         push               ecx                                      // 0x00485d3e    51
                         push               edx                                      // 0x00485d3f    52
                         push               0x6d                                     // 0x00485d40    6a6d
_jmp_addr_0x00485d42:    mov.s              ecx, esi                                 // 0x00485d42    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00485d44    e8371d1900
                         push               0x0                                      // 0x00485d49    6a00
                         mov.s              ecx, esi                                 // 0x00485d4b    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00485d4d    e86ef1ffff
_jmp_addr_0x00485d52:    pop                edi                                      // 0x00485d52    5f
                         pop                esi                                      // 0x00485d53    5e
                         pop                ebx                                      // 0x00485d54    5b
                         add                esp, 0x0c                                // 0x00485d55    83c40c
                         ret                                                         // 0x00485d58    c3

// Snippet: db, [0x00485d59, 0x00485d5c)
.byte 0x8d, 0x49, 0x00            // 0x00485d59

// Snippet: jmptbl, [0x00485d5c, 0x00485dec)
.byte 0x61, 0x54, 0x48, 0x00      // 0x00485d5c
.byte 0x39, 0x55, 0x48, 0x00      // 0x00485d60
.byte 0x53, 0x57, 0x48, 0x00      // 0x00485d64
.byte 0xc1, 0x51, 0x48, 0x00      // 0x00485d68
.byte 0xcf, 0x56, 0x48, 0x00      // 0x00485d6c
.byte 0x27, 0x58, 0x48, 0x00      // 0x00485d70
.byte 0x60, 0x58, 0x48, 0x00      // 0x00485d74
.byte 0x60, 0x58, 0x48, 0x00      // 0x00485d78
.byte 0xa7, 0x58, 0x48, 0x00      // 0x00485d7c
.byte 0xa7, 0x58, 0x48, 0x00      // 0x00485d80
.byte 0xa7, 0x58, 0x48, 0x00      // 0x00485d84
.byte 0x29, 0x5a, 0x48, 0x00      // 0x00485d88
.byte 0xad, 0x5b, 0x48, 0x00      // 0x00485d8c
.byte 0x59, 0x5b, 0x48, 0x00      // 0x00485d90
.byte 0xad, 0x5b, 0x48, 0x00      // 0x00485d94
.byte 0xe4, 0x58, 0x48, 0x00      // 0x00485d98
.byte 0x1d, 0x59, 0x48, 0x00      // 0x00485d9c
.byte 0xe9, 0x55, 0x48, 0x00      // 0x00485da0
.byte 0x15, 0x56, 0x48, 0x00      // 0x00485da4
.byte 0x64, 0x56, 0x48, 0x00      // 0x00485da8
.byte 0xcc, 0x54, 0x48, 0x00      // 0x00485dac
.byte 0xcb, 0x55, 0x48, 0x00      // 0x00485db0
.byte 0xc0, 0x59, 0x48, 0x00      // 0x00485db4
.byte 0xf4, 0x57, 0x48, 0x00      // 0x00485db8
.byte 0x26, 0x52, 0x48, 0x00      // 0x00485dbc
.byte 0x57, 0x55, 0x48, 0x00      // 0x00485dc0
.byte 0x50, 0x59, 0x48, 0x00      // 0x00485dc4
.byte 0x92, 0x57, 0x48, 0x00      // 0x00485dc8
.byte 0x31, 0x5c, 0x48, 0x00      // 0x00485dcc
.byte 0x80, 0x5c, 0x48, 0x00      // 0x00485dd0
.byte 0xa8, 0x52, 0x48, 0x00      // 0x00485dd4
.byte 0x75, 0x55, 0x48, 0x00      // 0x00485dd8
.byte 0xc9, 0x53, 0x48, 0x00      // 0x00485ddc
.byte 0xbd, 0x5c, 0x48, 0x00      // 0x00485de0
.byte 0x52, 0x5d, 0x48, 0x00      // 0x00485de4
.byte 0x18, 0x5d, 0x48, 0x00      // 0x00485de8

// Snippet: db, [0x00485dec, 0x00485df0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00485dec

