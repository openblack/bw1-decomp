.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004753f0
.extern _jmp_addr_0x004831b0
.extern _jmp_addr_0x00483870
.extern _jmp_addr_0x004839d0
.extern _jmp_addr_0x00483ab0
.extern _jmp_addr_0x00483fe0
.extern _jmp_addr_0x0048d250
.extern _jmp_addr_0x0048d940
.extern _jmp_addr_0x006182f0
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?MoveAlongRoute@RPFollow@@QAEXXZ
.extern @FillPosAndHeading__8RPFollowFR7Point2DRff@20
.extern @GetLength__9RouteNodeFP7RPAvoid@12

.globl _jmp_addr_0x00491180

start_0x00491180_0x00491690:
// Snippet: asm, [0x00491180, 0x00491674)
_jmp_addr_0x00491180:    sub                esp, 0x24                                // 0x00491180    83ec24
                         push               ebx                                      // 0x00491183    53
                         push               ebp                                      // 0x00491184    55
                         push               esi                                      // 0x00491185    56
                         mov.s              esi, ecx                                 // 0x00491186    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00491188    8b8698510000
                         {disp32} mov       ecx, dword ptr [eax + 0x00064054]        // 0x0049118e    8b8854400600
                         cmp                ecx, 0x04                                // 0x00491194    83f904
                         push               edi                                      // 0x00491197    57
                         {disp32} ja        _jmp_addr_0x0049166c                     // 0x00491198    0f87ce040000
                         jmp                dword ptr [ecx*4 + 0x491674]             // 0x0049119e    ff248d74164900
                         mov.s              ecx, esi                                 // 0x004911a5    8bce
                         {disp32} mov       dword ptr [esi + 0x00005190], 0x00000000 // 0x004911a7    c7869051000000000000
                         call               _jmp_addr_0x0048d250                     // 0x004911b1    e89ac0ffff
                         pop                edi                                      // 0x004911b6    5f
                         pop                esi                                      // 0x004911b7    5e
                         pop                ebp                                      // 0x004911b8    5d
                         pop                ebx                                      // 0x004911b9    5b
                         add                esp, 0x24                                // 0x004911ba    83c424
                         ret                                                         // 0x004911bd    c3
                         {disp32} mov       ecx, dword ptr [eax + 0x0006403c]        // 0x004911be    8b883c400600
                         {disp8} mov        dword ptr [esp + 0x10], ecx              // 0x004911c4    894c2410
                         {disp32} mov       ecx, dword ptr [eax + 0x00064070]        // 0x004911c8    8b8870400600
                         {disp8} mov        edx, dword ptr [ecx + 0x24]              // 0x004911ce    8b5124
                         xor.s              ebp, ebp                                 // 0x004911d1    33ed
                         cmp.s              edx, ebp                                 // 0x004911d3    3bd5
                         {disp8} jne        _jmp_addr_0x0049120e                     // 0x004911d5    7537
                         push               eax                                      // 0x004911d7    50
                         call               @GetLength__9RouteNodeFP7RPAvoid@12      // 0x004911d8    e8c37f3d00
                         {disp32} mov       edx, dword ptr [esi + 0x00005198]        // 0x004911dd    8b9698510000
                         {disp32} fsub      dword ptr [edx + 0x00064038]             // 0x004911e3    d8a238400600
                         {disp32} fmul      dword ptr [rdata_bytes + 0x260d8]        // 0x004911e9    d80dd8f08c00
                         fadd.s             st(0), st(0)                             // 0x004911ef    dcc0
                         fsqrt                                                       // 0x004911f1    d9fa
                         {disp32} fld       dword ptr [__real@3dcccccd]              // 0x004911f3    d9052cb28a00
                         fcomp              st(1)                                    // 0x004911f9    d8d9
                         fnstsw             ax                                       // 0x004911fb    dfe0
                         test               ah, 0x41                                 // 0x004911fd    f6c441
                         {disp8} jne        _jmp_addr_0x0049126f                     // 0x00491200    756d
                         fstp               st(0)                                    // 0x00491202    ddd8
                         {disp8} mov        dword ptr [esp + 0x10], 0x3dcccccd       // 0x00491204    c7442410cdcccc3d
                         {disp8} jmp        _jmp_addr_0x00491273                     // 0x0049120c    eb65
_jmp_addr_0x0049120e:    cmp                dword ptr [edx + 0x1c], 0x01             // 0x0049120e    837a1c01
                         {disp8} jne        _jmp_addr_0x00491273                     // 0x00491212    755f
                         push               eax                                      // 0x00491214    50
                         call               @GetLength__9RouteNodeFP7RPAvoid@12      // 0x00491215    e8867f3d00
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x0049121a    8b8698510000
                         {disp32} mov       ecx, dword ptr [eax + 0x00064070]        // 0x00491220    8b8870400600
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]              // 0x00491226    8b4910
                         lea                edx, dword ptr [ecx + ecx * 0x4]         // 0x00491229    8d1489
                         {disp8} fld        dword ptr [eax + edx * 0x4 + 0x10]       // 0x0049122c    d9449010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x261c0]        // 0x00491230    d80dc0f18c00
                         fsqrt                                                       // 0x00491236    d9fa
                         fxch               st(1)                                    // 0x00491238    d9c9
                         {disp32} fsub      dword ptr [eax + 0x00064038]             // 0x0049123a    d8a038400600
                         {disp32} fmul      dword ptr [rdata_bytes + 0x260d8]        // 0x00491240    d80dd8f08c00
                         fadd.s             st(0), st(0)                             // 0x00491246    dcc0
                         fld                st(1)                                    // 0x00491248    d9c1
                         fmul               st, st(2)                                // 0x0049124a    d8ca
                         faddp              st(1), st                                // 0x0049124c    dec1
                         fsqrt                                                       // 0x0049124e    d9fa
                         fxch               st(1)                                    // 0x00491250    d9c9
                         fstp               st(0)                                    // 0x00491252    ddd8
                         {disp32} fld       dword ptr [__real@3dcccccd]              // 0x00491254    d9052cb28a00
                         fcomp              st(1)                                    // 0x0049125a    d8d9
                         fnstsw             ax                                       // 0x0049125c    dfe0
                         test               ah, 0x41                                 // 0x0049125e    f6c441
                         {disp8} jne        _jmp_addr_0x0049126f                     // 0x00491261    750c
                         fstp               st(0)                                    // 0x00491263    ddd8
                         {disp8} mov        dword ptr [esp + 0x10], 0x3dcccccd       // 0x00491265    c7442410cdcccc3d
                         {disp8} jmp        _jmp_addr_0x00491273                     // 0x0049126d    eb04
_jmp_addr_0x0049126f:    {disp8} fstp       dword ptr [esp + 0x10]                   // 0x0049126f    d95c2410
_jmp_addr_0x00491273:    {disp32} fld       dword ptr [esi + 0x00005228]             // 0x00491273    d98628520000
                         {disp8} lea        edi, dword ptr [esi + 0x78]              // 0x00491279    8d7e78
                         {disp32} fld       dword ptr [esi + 0x00000084]             // 0x0049127c    d98684000000
                         fld                st(0)                                    // 0x00491282    d9c0
                         fsin                                                        // 0x00491284    d9fe
                         fmul               st, st(2)                                // 0x00491286    d8ca
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00491288    d95c241c
                         fcos                                                        // 0x0049128c    d9ff
                         fmulp              st(1), st                                // 0x0049128e    dec9
                         fchs                                                        // 0x00491290    d9e0
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x00491292    d944241c
                         fadd               dword ptr [edi]                          // 0x00491296    d807
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00491298    d95c241c
                         {disp8} fadd       dword ptr [edi + 0x08]                   // 0x0049129c    d84708
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x0049129f    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x004912a3    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x004912a9    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x004912af    e84c013100
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x004912b4    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x004912ba    8944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x004912be    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x004912c4    e837013100
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]              // 0x004912c9    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x004912cd    89442420
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000       // 0x004912d1    c744242400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x004912d9    e8b21d3700
                         {disp8} fsub       dword ptr [esi + 0x7c]                   // 0x004912de    d8667c
                         {disp32} fdiv      dword ptr [esi + 0x00005228]             // 0x004912e1    d8b628520000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebdc]        // 0x004912e7    d80ddc7b8c00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1390]         // 0x004912ed    d82d90a38a00
                         {disp32} fcom      dword ptr [__real@3e999999]              // 0x004912f3    d8153cb28a00
                         fnstsw             ax                                       // 0x004912f9    dfe0
                         test               ah, 0x41                                 // 0x004912fb    f6c441
                         {disp8} jne        _jmp_addr_0x00491317                     // 0x004912fe    7517
                         {disp32} fcom      dword ptr [__real@3f8ccccd]              // 0x00491300    d81530b28a00
                         fnstsw             ax                                       // 0x00491306    dfe0
                         test               ah, 0x01                                 // 0x00491308    f6c401
                         {disp8} jne        _jmp_addr_0x0049131f                     // 0x0049130b    7512
                         fstp               st(0)                                    // 0x0049130d    ddd8
                         {disp32} fld       dword ptr [__real@3f8ccccd]              // 0x0049130f    d90530b28a00
                         {disp8} jmp        _jmp_addr_0x0049131f                     // 0x00491315    eb08
_jmp_addr_0x00491317:    fstp               st(0)                                    // 0x00491317    ddd8
                         {disp32} fld       dword ptr [__real@3e999999]              // 0x00491319    d9053cb28a00
_jmp_addr_0x0049131f:    {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x0049131f    8b8e98510000
                         {disp32} fmul      dword ptr [ecx + 0x0006403c]             // 0x00491325    d8893c400600
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x0049132b    d95c2414
                         {disp32} fld       dword ptr [ecx + 0x00064034]             // 0x0049132f    d98134400600
                         {disp8} fcomp      dword ptr [esp + 0x14]                   // 0x00491335    d85c2414
                         fnstsw             ax                                       // 0x00491339    dfe0
                         test               ah, 0x01                                 // 0x0049133b    f6c401
                         {disp8} je         _jmp_addr_0x0049136b                     // 0x0049133e    742b
                         {disp32} fld       dword ptr [rdata_bytes + 0x260d4]        // 0x00491340    d905d4f08c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x260d8]        // 0x00491346    d80dd8f08c00
                         {disp32} fadd      dword ptr [ecx + 0x00064034]             // 0x0049134c    d88134400600
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00491352    d9442414
                         fcomp              st(1)                                    // 0x00491356    d8d9
                         fnstsw             ax                                       // 0x00491358    dfe0
                         test               ah, 0x01                                 // 0x0049135a    f6c401
                         {disp8} je         _jmp_addr_0x00491365                     // 0x0049135d    7406
                         fstp               st(0)                                    // 0x0049135f    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00491361    d9442414
_jmp_addr_0x00491365:    {disp32} fstp      dword ptr [ecx + 0x00064034]             // 0x00491365    d99934400600
_jmp_addr_0x0049136b:    {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x0049136b    8b8e98510000
                         {disp32} fld       dword ptr [ecx + 0x00064034]             // 0x00491371    d98134400600
                         {disp8} fcomp      dword ptr [esp + 0x10]                   // 0x00491377    d85c2410
                         fnstsw             ax                                       // 0x0049137b    dfe0
                         test               ah, 0x41                                 // 0x0049137d    f6c441
                         {disp8} jne        _jmp_addr_0x0049138c                     // 0x00491380    750a
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x00491382    8b442410
                         {disp32} mov       dword ptr [ecx + 0x00064034], eax        // 0x00491386    898134400600
_jmp_addr_0x0049138c:    {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x0049138c    8b8e98510000
                         {disp32} mov       ebx, dword ptr [ecx + 0x00064070]        // 0x00491392    8b9970400600
                         call               ?MoveAlongRoute@RPFollow@@QAEXXZ         // 0x00491398    e8f3353d00
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x0049139d    8b8698510000
                         {disp32} mov       ecx, dword ptr [eax + 0x00064034]        // 0x004913a3    8b8834400600
                         {disp32} mov       dword ptr [esi + 0x00004838], ecx        // 0x004913a9    898e38480000
                         cmp                dword ptr [eax + 0x00064070], ebp        // 0x004913af    39a870400600
                         {disp32} je        _jmp_addr_0x0049163d                     // 0x004913b5    0f8482020000
                         {disp32} fld       dword ptr [esi + 0x00000084]             // 0x004913bb    d98684000000
                         push               ecx                                      // 0x004913c1    51
                         {disp32} fsub      dword ptr [eax + 0x00064040]             // 0x004913c2    d8a040400600
                         fstp               dword ptr [esp]                          // 0x004913c8    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x004913cb    e820973600
                         fabs                                                        // 0x004913d0    d9e1
                         add                esp, 0x04                                // 0x004913d2    83c404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26164]        // 0x004913d5    d81d64f18c00
                         fnstsw             ax                                       // 0x004913db    dfe0
                         test               ah, 0x01                                 // 0x004913dd    f6c401
                         {disp32} je        _jmp_addr_0x00491468                     // 0x004913e0    0f8482000000
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x004913e6    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064030]             // 0x004913ec    d98030400600
                         {disp32} fld       dword ptr [eax + 0x0006402c]             // 0x004913f2    d9802c400600
                         {disp8} mov        dword ptr [edi + 0x04], ebp              // 0x004913f8    896f04
                         fstp               dword ptr [edi]                          // 0x004913fb    d91f
                         {disp8} fstp       dword ptr [edi + 0x08]                   // 0x004913fd    d95f08
                         fld                dword ptr [edi]                          // 0x00491400    d907
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x00491402    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x00491408    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x0049140e    e8edff3000
                         {disp8} fld        dword ptr [edi + 0x08]                   // 0x00491413    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x00491416    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x0049141c    8944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x00491420    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x00491426    e8d5ff3000
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]              // 0x0049142b    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x0049142f    89442420
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000       // 0x00491433    c744242400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x0049143b    e8501c3700
                         {disp8} fstp       dword ptr [esi + 0x7c]                   // 0x00491440    d95e7c
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00491443    8b8698510000
                         {disp32} mov       edx, dword ptr [eax + 0x00064040]        // 0x00491449    8b9040400600
                         {disp32} mov       dword ptr [esi + 0x00000084], edx        // 0x0049144f    899684000000
                         {disp32} mov       eax, dword ptr [eax + 0x00064050]        // 0x00491455    8b8050400600
                         push               eax                                      // 0x0049145b    50
                         mov.s              ecx, esi                                 // 0x0049145c    8bce
                         call               _jmp_addr_0x0048d940                     // 0x0049145e    e8ddc4ffff
                         {disp32} jmp       _jmp_addr_0x00491580                     // 0x00491463    e918010000
_jmp_addr_0x00491468:    {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x00491468    8b8e98510000
                         {disp32} mov       dword ptr [ecx + 0x00064034], ebp        // 0x0049146e    89a934400600
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00491474    8b8698510000
                         {disp32} mov       dword ptr [esi + 0x00004838], ebp        // 0x0049147a    89ae38480000
                         cmp                dword ptr [eax + 0x00064070], ebx        // 0x00491480    399870400600
                         {disp8} je         _jmp_addr_0x0049148e                     // 0x00491486    7406
                         {disp32} mov       dword ptr [eax + 0x00064038], ebp        // 0x00491488    89a838400600
_jmp_addr_0x0049148e:    {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x0049148e    8b8e98510000
                         {disp32} mov       edx, dword ptr [ecx + 0x00064038]        // 0x00491494    8b9138400600
                         push               edx                                      // 0x0049149a    52
                         {disp32} lea       eax, dword ptr [ecx + 0x00064040]        // 0x0049149b    8d8140400600
                         push               eax                                      // 0x004914a1    50
                         {disp32} lea       edx, dword ptr [ecx + 0x0006402c]        // 0x004914a2    8d912c400600
                         push               edx                                      // 0x004914a8    52
                         call               @FillPosAndHeading__8RPFollowFR7Point2DRff@20                     // 0x004914a9    e8f2363d00
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x004914ae    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064030]             // 0x004914b4    d98030400600
                         {disp32} fld       dword ptr [eax + 0x0006402c]             // 0x004914ba    d9802c400600
                         {disp8} mov        dword ptr [edi + 0x04], ebp              // 0x004914c0    896f04
                         fstp               dword ptr [edi]                          // 0x004914c3    d91f
                         {disp8} fstp       dword ptr [edi + 0x08]                   // 0x004914c5    d95f08
                         fld                dword ptr [edi]                          // 0x004914c8    d907
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x004914ca    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x004914d0    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x004914d6    e825ff3000
                         {disp8} fld        dword ptr [edi + 0x08]                   // 0x004914db    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x004914de    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x28], eax              // 0x004914e4    89442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x004914e8    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x004914ee    e80dff3000
                         {disp8} lea        ecx, dword ptr [esp + 0x28]              // 0x004914f3    8d4c2428
                         {disp8} mov        dword ptr [esp + 0x2c], eax              // 0x004914f7    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000       // 0x004914fb    c744243000000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x00491503    e8881b3700
                         {disp8} fstp       dword ptr [esi + 0x7c]                   // 0x00491508    d95e7c
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x0049150b    8b8698510000
                         {disp32} mov       ecx, dword ptr [eax + 0x00064070]        // 0x00491511    8b8870400600
                         push               eax                                      // 0x00491517    50
                         call               @GetLength__9RouteNodeFP7RPAvoid@12      // 0x00491518    e8837c3d00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1c840]        // 0x0049151d    d81540588c00
                         fnstsw             ax                                       // 0x00491523    dfe0
                         test               ah, 0x01                                 // 0x00491525    f6c401
                         {disp8} je         _jmp_addr_0x00491532                     // 0x00491528    7408
                         fstp               st(0)                                    // 0x0049152a    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1c840]        // 0x0049152c    d90540588c00
_jmp_addr_0x00491532:    {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00491532    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064040]             // 0x00491538    d98040400600
                         {disp8} mov        ecx, dword ptr [edi + 0x04]              // 0x0049153e    8b4f04
                         fld                st(0)                                    // 0x00491541    d9c0
                         {disp8} mov        dword ptr [esp + 0x20], ecx              // 0x00491543    894c2420
                         fsin                                                        // 0x00491547    d9fe
                         mov.s              ecx, esi                                 // 0x00491549    8bce
                         fmul               st, st(2)                                // 0x0049154b    d8ca
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x0049154d    d95c241c
                         fcos                                                        // 0x00491551    d9ff
                         fmulp              st(1), st                                // 0x00491553    dec9
                         fchs                                                        // 0x00491555    d9e0
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x00491557    d944241c
                         fadd               dword ptr [edi]                          // 0x0049155b    d807
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x0049155d    d95c241c
                         {disp8} fadd       dword ptr [edi + 0x08]                   // 0x00491561    d84708
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00491564    d95c2424
                         call               _jmp_addr_0x0048d250                     // 0x00491568    e8e3bcffff
                         {disp8} lea        edx, dword ptr [esp + 0x1c]              // 0x0049156d    8d54241c
                         push               edx                                      // 0x00491571    52
                         push               edi                                      // 0x00491572    57
                         mov.s              ecx, esi                                 // 0x00491573    8bce
                         call               _jmp_addr_0x00483ab0                     // 0x00491575    e83625ffff
                         {disp32} mov       dword ptr [esi + 0x00005190], eax        // 0x0049157a    898690510000
_jmp_addr_0x00491580:    push               edi                                      // 0x00491580    57
                         call               _jmp_addr_0x00483870                     // 0x00491581    e8ea22ffff
                         add                esp, 0x04                                // 0x00491586    83c404
                         test               eax, eax                                 // 0x00491589    85c0
                         {disp32} jne       _jmp_addr_0x0049166c                     // 0x0049158b    0f85db000000
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00491591    8b8698510000
                         {disp32} mov       edx, dword ptr [eax + 0x0006407c]        // 0x00491597    8b907c400600
                         {disp32} fld       dword ptr [eax + 0x00064078]             // 0x0049159d    d98078400600
                         {disp32} mov       ecx, dword ptr [eax + 0x00064080]        // 0x004915a3    8b8880400600
                         {disp32} fld       dword ptr [eax + 0x00064074]             // 0x004915a9    d98074400600
                         {disp8} mov        dword ptr [esp + 0x10], edx              // 0x004915af    89542410
                         mov                edx, dword ptr [edi]                     // 0x004915b3    8b17
                         {disp8} mov        dword ptr [esp + 0x18], ecx              // 0x004915b5    894c2418
                         {disp32} mov       ecx, dword ptr [eax + 0x00064084]        // 0x004915b9    8b8884400600
                         {disp8} mov        eax, dword ptr [edi + 0x04]              // 0x004915bf    8b4704
                         {disp8} mov        dword ptr [esp + 0x1c], edx              // 0x004915c2    8954241c
                         {disp8} lea        edx, dword ptr [esp + 0x1c]              // 0x004915c6    8d54241c
                         {disp8} mov        dword ptr [esp + 0x14], ecx              // 0x004915ca    894c2414
                         {disp8} mov        ecx, dword ptr [edi + 0x08]              // 0x004915ce    8b4f08
                         {disp8} fstp       dword ptr [esp + 0x28]                   // 0x004915d1    d95c2428
                         push               edx                                      // 0x004915d5    52
                         push               edi                                      // 0x004915d6    57
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x004915d7    d95c2438
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000       // 0x004915db    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x28], eax              // 0x004915e3    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], ecx              // 0x004915e7    894c242c
                         call               _jmp_addr_0x004839d0                     // 0x004915eb    e8e023ffff
                         add                esp, 0x08                                // 0x004915f0    83c408
                         {disp8} lea        eax, dword ptr [esp + 0x1c]              // 0x004915f3    8d44241c
                         push               eax                                      // 0x004915f7    50
                         mov.s              ecx, esi                                 // 0x004915f8    8bce
                         call               _jmp_addr_0x006182f0                     // 0x004915fa    e8f16c1800
                         mov.s              ecx, esi                                 // 0x004915ff    8bce
                         call               _jmp_addr_0x004831b0                     // 0x00491601    e8aa1bffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x00491606    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x10]              // 0x0049160a    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x0049160e    8b442418
                         push               ecx                                      // 0x00491612    51
                         push               edx                                      // 0x00491613    52
                         push               eax                                      // 0x00491614    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]              // 0x00491615    8d4c2434
                         push               ecx                                      // 0x00491619    51
                         mov.s              ecx, esi                                 // 0x0049161a    8bce
                         call               _jmp_addr_0x00483fe0                     // 0x0049161c    e8bf29ffff
                         cmp                eax, 0x04                                // 0x00491621    83f804
                         {disp8} je         _jmp_addr_0x0049166c                     // 0x00491624    7446
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]        // 0x00491626    8b8e34480000
                         cmp.s              ecx, ebp                                 // 0x0049162c    3bcd
                         {disp8} je         _jmp_addr_0x0049166c                     // 0x0049162e    743c
                         call               _jmp_addr_0x004753f0                     // 0x00491630    e8bb3dfeff
                         pop                edi                                      // 0x00491635    5f
                         pop                esi                                      // 0x00491636    5e
                         pop                ebp                                      // 0x00491637    5d
                         pop                ebx                                      // 0x00491638    5b
                         add                esp, 0x24                                // 0x00491639    83c424
                         ret                                                         // 0x0049163c    c3
_jmp_addr_0x0049163d:    {disp32} fld       dword ptr [eax + 0x00064030]             // 0x0049163d    d98030400600
                         {disp8} lea        edx, dword ptr [esp + 0x28]              // 0x00491643    8d542428
                         {disp32} fld       dword ptr [eax + 0x0006402c]             // 0x00491647    d9802c400600
                         push               edx                                      // 0x0049164d    52
                         {disp8} fstp       dword ptr [esp + 0x2c]                   // 0x0049164e    d95c242c
                         mov.s              ecx, esi                                 // 0x00491652    8bce
                         {disp8} fstp       dword ptr [esp + 0x34]                   // 0x00491654    d95c2434
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000       // 0x00491658    c744243000000000
                         call               _jmp_addr_0x006182f0                     // 0x00491660    e88b6c1800
                         mov.s              ecx, esi                                 // 0x00491665    8bce
                         call               _jmp_addr_0x0048d250                     // 0x00491667    e8e4bbffff
_jmp_addr_0x0049166c:    pop                edi                                      // 0x0049166c    5f
                         pop                esi                                      // 0x0049166d    5e
                         pop                ebp                                      // 0x0049166e    5d
                         pop                ebx                                      // 0x0049166f    5b
                         add                esp, 0x24                                // 0x00491670    83c424
                         ret                                                         // 0x00491673    c3

// Snippet: jmptbl, [0x00491674, 0x00491688)
.byte 0xa5, 0x11, 0x49, 0x00      // 0x00491674
.byte 0xa5, 0x11, 0x49, 0x00      // 0x00491678
.byte 0xa5, 0x11, 0x49, 0x00      // 0x0049167c
.byte 0xbe, 0x11, 0x49, 0x00      // 0x00491680
.byte 0xbe, 0x11, 0x49, 0x00      // 0x00491684

// Snippet: db, [0x00491688, 0x00491690)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00491688
.byte 0x90, 0x90, 0x90, 0x90      // 0x0049168c

