.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??$WriteIt@I@GameOSFile@@QAEXAAI@Z
.extern ??$ReadIt@H@GameOSFile@@QAEXAAI@Z
.extern _jmp_addr_0x00419d10
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x004640a0
.extern _jmp_addr_0x004e9590
.extern @__ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl@24
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x00562240
.extern _jmp_addr_0x005622b0
.extern ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z
.extern ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z
.extern _jmp_addr_0x005e6540
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x00606380
.extern _jmp_addr_0x006da550
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x007346e0
.extern ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z
.extern _jmp_addr_0x007a1400
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20

.globl _jmp_addr_0x006d9290
.globl _jmp_addr_0x006d9450
.globl _jmp_addr_0x006d94a0
.globl _jmp_addr_0x006da350
.globl _jmp_addr_0x006da520
.globl ?Save@PuzzleGame@@UAEIAAVGameOSFile@@@Z
.globl ?Load@PuzzleGame@@UAEIAAVGameOSFile@@@Z

start_0x006d9290_0x006da550:
// Snippet: asm, [0x006d9290, 0x006da53e)
_jmp_addr_0x006d9290:    push              ebx                                           // 0x006d9290    53
                         push              ebp                                           // 0x006d9291    55
                         {disp8} lea       eax, dword ptr [ecx + 0x14]                   // 0x006d9292    8d4114
                         push              esi                                           // 0x006d9295    56
                         mov               esi, dword ptr [eax]                          // 0x006d9296    8b30
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x006d9298    8b5004
                         push              edi                                           // 0x006d929b    57
                         {disp8} mov       edi, dword ptr [eax + 0x08]                   // 0x006d929c    8b7808
                         {disp32} mov      eax, dword ptr [ecx + 0x00000390]             // 0x006d929f    8b8190030000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000394]             // 0x006d92a5    8b8994030000
                         mov.s             ebx, ecx                                      // 0x006d92ab    8bd9
                         imul              ecx, dword ptr [esp + 0x18]                   // 0x006d92ad    0faf4c2418
                         imul              ebx, dword ptr [esp + 0x1c]                   // 0x006d92b2    0faf5c241c
                         mov.s             ebp, eax                                      // 0x006d92b7    8be8
                         imul              eax, dword ptr [esp + 0x1c]                   // 0x006d92b9    0faf44241c
                         imul              ebp, dword ptr [esp + 0x18]                   // 0x006d92be    0faf6c2418
                         sub.s             eax, ecx                                      // 0x006d92c3    2bc1
                         add.s             ebp, esi                                      // 0x006d92c5    03ee
                         add.s             edx, eax                                      // 0x006d92c7    03d0
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x006d92c9    8b442414
                         lea               esi, dword ptr [ebx + ebp * 0x1]              // 0x006d92cd    8d342b
                         mov.s             ecx, eax                                      // 0x006d92d0    8bc8
                         mov               dword ptr [ecx], esi                          // 0x006d92d2    8931
                         {disp8} mov       dword ptr [ecx + 0x04], edx                   // 0x006d92d4    895104
                         {disp8} mov       dword ptr [ecx + 0x08], edi                   // 0x006d92d7    897908
                         pop               edi                                           // 0x006d92da    5f
                         pop               esi                                           // 0x006d92db    5e
                         pop               ebp                                           // 0x006d92dc    5d
                         pop               ebx                                           // 0x006d92dd    5b
                         ret               0x000c                                        // 0x006d92de    c20c00
                         nop                                                             // 0x006d92e1    90
                         nop                                                             // 0x006d92e2    90
                         nop                                                             // 0x006d92e3    90
                         nop                                                             // 0x006d92e4    90
                         nop                                                             // 0x006d92e5    90
                         nop                                                             // 0x006d92e6    90
                         nop                                                             // 0x006d92e7    90
                         nop                                                             // 0x006d92e8    90
                         nop                                                             // 0x006d92e9    90
                         nop                                                             // 0x006d92ea    90
                         nop                                                             // 0x006d92eb    90
                         nop                                                             // 0x006d92ec    90
                         nop                                                             // 0x006d92ed    90
                         nop                                                             // 0x006d92ee    90
                         nop                                                             // 0x006d92ef    90
_jmp_addr_0x006d92f0:    push              ebx                                           // 0x006d92f0    53
                         {disp8} mov       ebx, dword ptr [esp + 0x08]                   // 0x006d92f1    8b5c2408
                         cmp               ebx, -0x01                                    // 0x006d92f5    83fbff
                         push              ebp                                           // 0x006d92f8    55
                         push              edi                                           // 0x006d92f9    57
                         mov.s             edi, ecx                                      // 0x006d92fa    8bf9
                         {disp8} jle       _jmp_addr_0x006d9353                          // 0x006d92fc    7e55
                         cmp               ebx, 0x03                                     // 0x006d92fe    83fb03
                         {disp8} jge       _jmp_addr_0x006d9353                          // 0x006d9301    7d50
                         {disp8} mov       ebp, dword ptr [esp + 0x14]                   // 0x006d9303    8b6c2414
                         cmp               ebp, -0x01                                    // 0x006d9307    83fdff
                         {disp8} jle       _jmp_addr_0x006d9353                          // 0x006d930a    7e47
                         cmp               ebp, 0x03                                     // 0x006d930c    83fd03
                         {disp8} jge       _jmp_addr_0x006d9353                          // 0x006d930f    7d42
                         {disp8} lea       eax, dword ptr [ebp + ebx * 0x2 + 0x00]       // 0x006d9311    8d445d00
                         push              esi                                           // 0x006d9315    56
                         lea               esi, dword ptr [ebx + eax * 0x1]              // 0x006d9316    8d3403
                         {disp8} inc       byte ptr [esi + edi * 0x1 + 0x4c]             // 0x006d9319    fe443e4c
                         {disp8} mov       eax, dword ptr [edi + esi * 0x4 + 0x58]       // 0x006d931d    8b44b758
                         test              eax, eax                                      // 0x006d9321    85c0
                         {disp8} je        _jmp_addr_0x006d9339                          // 0x006d9323    7414
                         push              eax                                           // 0x006d9325    50
                         call              _jmp_addr_0x005e6540                          // 0x006d9326    e815d2f0ff
                         {disp8} mov       ecx, dword ptr [edi + esi * 0x4 + 0x58]       // 0x006d932b    8b4cb758
                         mov               edx, dword ptr [ecx]                          // 0x006d932f    8b11
                         add               esp, 0x04                                     // 0x006d9331    83c404
                         push              0x0                                           // 0x006d9334    6a00
                         call              dword ptr [edx + 0xc]                         // 0x006d9336    ff520c
_jmp_addr_0x006d9339:    push              ebp                                           // 0x006d9339    55
                         push              ebx                                           // 0x006d933a    53
                         mov.s             ecx, edi                                      // 0x006d933b    8bcf
                         call              _jmp_addr_0x006d93e0                          // 0x006d933d    e89e000000
                         {disp8} mov       dword ptr [edi + esi * 0x4 + 0x58], eax       // 0x006d9342    8944b758
                         mov               edx, dword ptr [eax]                          // 0x006d9346    8b10
                         push              0x1                                           // 0x006d9348    6a01
                         mov.s             ecx, eax                                      // 0x006d934a    8bc8
                         call              dword ptr [edx + 0x440]                       // 0x006d934c    ff9240040000
                         pop               esi                                           // 0x006d9352    5e
_jmp_addr_0x006d9353:    pop               edi                                           // 0x006d9353    5f
                         pop               ebp                                           // 0x006d9354    5d
                         pop               ebx                                           // 0x006d9355    5b
                         ret               0x0008                                        // 0x006d9356    c20800
                         nop                                                             // 0x006d9359    90
                         nop                                                             // 0x006d935a    90
                         nop                                                             // 0x006d935b    90
                         nop                                                             // 0x006d935c    90
                         nop                                                             // 0x006d935d    90
                         nop                                                             // 0x006d935e    90
                         nop                                                             // 0x006d935f    90
_jmp_addr_0x006d9360:    {disp8} mov       edx, dword ptr [ecx + 0x48]                   // 0x006d9360    8b5148
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x006d9363    8b442404
                         push              ebx                                           // 0x006d9367    53
                         xor.s             ebx, ebx                                      // 0x006d9368    33db
                         cmp               edx, 0x01                                     // 0x006d936a    83fa01
                         setne             bl                                            // 0x006d936d    0f95c3
                         cdq                                                             // 0x006d9370    99
                         add               ebx, 0x02                                     // 0x006d9371    83c302
                         idiv              ebx                                           // 0x006d9374    f7fb
                         pop               ebx                                           // 0x006d9376    5b
                         sub               edx, 0x00                                     // 0x006d9377    83ea00
                         {disp8} je        _jmp_addr_0x006d9397                          // 0x006d937a    741b
                         dec               edx                                           // 0x006d937c    4a
                         {disp8} je        _jmp_addr_0x006d938f                          // 0x006d937d    7410
                         dec               edx                                           // 0x006d937f    4a
                         {disp8} je        _jmp_addr_0x006d9387                          // 0x006d9380    7405
                         xor.s             eax, eax                                      // 0x006d9382    33c0
                         ret               0x0004                                        // 0x006d9384    c20400
_jmp_addr_0x006d9387:    mov               eax, 0x00000001                               // 0x006d9387    b801000000
                         ret               0x0004                                        // 0x006d938c    c20400
_jmp_addr_0x006d938f:    mov               eax, 0x00000005                               // 0x006d938f    b805000000
                         ret               0x0004                                        // 0x006d9394    c20400
_jmp_addr_0x006d9397:    mov               eax, 0x00000003                               // 0x006d9397    b803000000
                         ret               0x0004                                        // 0x006d939c    c20400
                         nop                                                             // 0x006d939f    90
_jmp_addr_0x006d93a0:    {disp8} mov       edx, dword ptr [ecx + 0x48]                   // 0x006d93a0    8b5148
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x006d93a3    8b442404
                         push              ebx                                           // 0x006d93a7    53
                         xor.s             ebx, ebx                                      // 0x006d93a8    33db
                         cmp               edx, 0x01                                     // 0x006d93aa    83fa01
                         setne             bl                                            // 0x006d93ad    0f95c3
                         cdq                                                             // 0x006d93b0    99
                         add               ebx, 0x02                                     // 0x006d93b1    83c302
                         idiv              ebx                                           // 0x006d93b4    f7fb
                         pop               ebx                                           // 0x006d93b6    5b
                         sub               edx, 0x00                                     // 0x006d93b7    83ea00
                         {disp8} je        _jmp_addr_0x006d93cb                          // 0x006d93ba    740f
                         dec               edx                                           // 0x006d93bc    4a
                         {disp8} je        _jmp_addr_0x006d93cb                          // 0x006d93bd    740c
                         dec               edx                                           // 0x006d93bf    4a
                         {disp8} je        _jmp_addr_0x006d93cb                          // 0x006d93c0    7409
                         {disp32} fld      dword ptr [_rdata_float0p0]                   // 0x006d93c2    d90598a38a00
                         ret               0x0004                                        // 0x006d93c8    c20400
_jmp_addr_0x006d93cb:    {disp32} fld      dword ptr [_rdata_float1p0]                   // 0x006d93cb    d90590a38a00
                         ret               0x0004                                        // 0x006d93d1    c20400
                         nop                                                             // 0x006d93d4    90
                         nop                                                             // 0x006d93d5    90
                         nop                                                             // 0x006d93d6    90
                         nop                                                             // 0x006d93d7    90
                         nop                                                             // 0x006d93d8    90
                         nop                                                             // 0x006d93d9    90
                         nop                                                             // 0x006d93da    90
                         nop                                                             // 0x006d93db    90
                         nop                                                             // 0x006d93dc    90
                         nop                                                             // 0x006d93dd    90
                         nop                                                             // 0x006d93de    90
                         nop                                                             // 0x006d93df    90
_jmp_addr_0x006d93e0:    sub               esp, 0x0c                                     // 0x006d93e0    83ec0c
                         push              ebx                                           // 0x006d93e3    53
                         {disp8} mov       ebx, dword ptr [esp + 0x18]                   // 0x006d93e4    8b5c2418
                         push              esi                                           // 0x006d93e8    56
                         push              edi                                           // 0x006d93e9    57
                         {disp8} mov       edi, dword ptr [esp + 0x1c]                   // 0x006d93ea    8b7c241c
                         push              ebx                                           // 0x006d93ee    53
                         push              edi                                           // 0x006d93ef    57
                         {disp8} lea       eax, dword ptr [esp + 0x14]                   // 0x006d93f0    8d442414
                         mov.s             esi, ecx                                      // 0x006d93f4    8bf1
                         push              eax                                           // 0x006d93f6    50
                         call              _jmp_addr_0x006d9290                          // 0x006d93f7    e894feffff
                         lea               ecx, dword ptr [ebx + edi * 0x2]              // 0x006d93fc    8d0c7b
                         add.s             edi, ecx                                      // 0x006d93ff    03f9
                         movsx             edx, byte ptr [edi + esi * 0x1 + 0x4c]        // 0x006d9401    0fbe54374c
                         {disp8} lea       ebx, dword ptr [edi + esi * 0x1 + 0x4c]       // 0x006d9406    8d5c374c
                         push              edx                                           // 0x006d940a    52
                         mov.s             ecx, esi                                      // 0x006d940b    8bce
                         call              _jmp_addr_0x006d9360                          // 0x006d940d    e84effffff
                         lea               edi, dword ptr [eax + eax * 0x4]              // 0x006d9412    8d3c80
                         movsx             eax, byte ptr [ebx]                           // 0x006d9415    0fbe03
                         push              0x3dcccccd                                    // 0x006d9418    68cdcccc3d
                         push              0x0                                           // 0x006d941d    6a00
                         shl               edi, 6                                        // 0x006d941f    c1e706
                         push              eax                                           // 0x006d9422    50
                         mov.s             ecx, esi                                      // 0x006d9423    8bce
                         add               edi, 0x00da3ad8                               // 0x006d9425    81c7d83ada00
                         call              _jmp_addr_0x006d93a0                          // 0x006d942b    e870ffffff
                         push              ecx                                           // 0x006d9430    51
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x006d9431    8d4c2418
                         fstp              dword ptr [esp]                               // 0x006d9435    d91c24
                         push              0x0                                           // 0x006d9438    6a00
                         push              edi                                           // 0x006d943a    57
                         push              ecx                                           // 0x006d943b    51
                         call              ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z           // 0x006d943c    e89f0a0700
                         add               esp, 0x18                                     // 0x006d9441    83c418
                         pop               edi                                           // 0x006d9444    5f
                         pop               esi                                           // 0x006d9445    5e
                         pop               ebx                                           // 0x006d9446    5b
                         add               esp, 0x0c                                     // 0x006d9447    83c40c
                         ret               0x0008                                        // 0x006d944a    c20800
                         nop                                                             // 0x006d944d    90
                         nop                                                             // 0x006d944e    90
                         nop                                                             // 0x006d944f    90
_jmp_addr_0x006d9450:    push              ebx                                           // 0x006d9450    53
                         {disp8} mov       ebx, dword ptr [esp + 0x08]                   // 0x006d9451    8b5c2408
                         push              esi                                           // 0x006d9455    56
                         push              edi                                           // 0x006d9456    57
                         {disp8} mov       edi, dword ptr [esp + 0x14]                   // 0x006d9457    8b7c2414
                         push              edi                                           // 0x006d945b    57
                         {disp8} lea       eax, dword ptr [ebx + 0x01]                   // 0x006d945c    8d4301
                         mov.s             esi, ecx                                      // 0x006d945f    8bf1
                         push              eax                                           // 0x006d9461    50
                         call              _jmp_addr_0x006d92f0                          // 0x006d9462    e889feffff
                         push              edi                                           // 0x006d9467    57
                         {disp8} lea       ecx, dword ptr [ebx + -0x01]                  // 0x006d9468    8d4bff
                         push              ecx                                           // 0x006d946b    51
                         mov.s             ecx, esi                                      // 0x006d946c    8bce
                         call              _jmp_addr_0x006d92f0                          // 0x006d946e    e87dfeffff
                         {disp8} lea       edx, dword ptr [edi + 0x01]                   // 0x006d9473    8d5701
                         push              edx                                           // 0x006d9476    52
                         push              ebx                                           // 0x006d9477    53
                         mov.s             ecx, esi                                      // 0x006d9478    8bce
                         call              _jmp_addr_0x006d92f0                          // 0x006d947a    e871feffff
                         {disp8} lea       eax, dword ptr [edi + -0x01]                  // 0x006d947f    8d47ff
                         push              eax                                           // 0x006d9482    50
                         push              ebx                                           // 0x006d9483    53
                         mov.s             ecx, esi                                      // 0x006d9484    8bce
                         call              _jmp_addr_0x006d92f0                          // 0x006d9486    e865feffff
                         push              edi                                           // 0x006d948b    57
                         push              ebx                                           // 0x006d948c    53
                         mov.s             ecx, esi                                      // 0x006d948d    8bce
                         call              _jmp_addr_0x006d92f0                          // 0x006d948f    e85cfeffff
                         pop               edi                                           // 0x006d9494    5f
                         pop               esi                                           // 0x006d9495    5e
                         pop               ebx                                           // 0x006d9496    5b
                         ret               0x0008                                        // 0x006d9497    c20800
                         nop                                                             // 0x006d949a    90
                         nop                                                             // 0x006d949b    90
                         nop                                                             // 0x006d949c    90
                         nop                                                             // 0x006d949d    90
                         nop                                                             // 0x006d949e    90
                         nop                                                             // 0x006d949f    90
_jmp_addr_0x006d94a0:    sub               esp, 0x1c                                     // 0x006d94a0    83ec1c
                         push              ebx                                           // 0x006d94a3    53
                         push              ebp                                           // 0x006d94a4    55
                         push              esi                                           // 0x006d94a5    56
                         mov.s             esi, ecx                                      // 0x006d94a6    8bf1
                         xor.s             eax, eax                                      // 0x006d94a8    33c0
                         {disp8} mov       dword ptr [esi + 0x4c], eax                   // 0x006d94aa    89464c
                         {disp8} mov       dword ptr [esi + 0x50], eax                   // 0x006d94ad    894650
                         push              edi                                           // 0x006d94b0    57
                         {disp8} mov       byte ptr [esi + 0x54], al                     // 0x006d94b1    884654
                         xor.s             ebp, ebp                                      // 0x006d94b4    33ed
                         {disp8} lea       ebx, dword ptr [esi + 0x58]                   // 0x006d94b6    8d5e58
_jmp_addr_0x006d94b9:    xor.s             edi, edi                                      // 0x006d94b9    33ff
_jmp_addr_0x006d94bb:    push              edi                                           // 0x006d94bb    57
                         push              ebp                                           // 0x006d94bc    55
                         mov.s             ecx, esi                                      // 0x006d94bd    8bce
                         call              _jmp_addr_0x006d93e0                          // 0x006d94bf    e81cffffff
                         mov               dword ptr [ebx], eax                          // 0x006d94c4    8903
                         mov               edx, dword ptr [eax]                          // 0x006d94c6    8b10
                         push              0x1                                           // 0x006d94c8    6a01
                         mov.s             ecx, eax                                      // 0x006d94ca    8bc8
                         call              dword ptr [edx + 0x440]                       // 0x006d94cc    ff9240040000
                         inc               edi                                           // 0x006d94d2    47
                         add               ebx, 0x04                                     // 0x006d94d3    83c304
                         cmp               edi, 0x03                                     // 0x006d94d6    83ff03
                         {disp8} jl        _jmp_addr_0x006d94bb                          // 0x006d94d9    7ce0
                         inc               ebp                                           // 0x006d94db    45
                         cmp               ebp, 0x03                                     // 0x006d94dc    83fd03
                         {disp8} jl        _jmp_addr_0x006d94b9                          // 0x006d94df    7cd8
                         mov               edi, 0x00000007                               // 0x006d94e1    bf07000000
_jmp_addr_0x006d94e6:    push              0x0000068b                                    // 0x006d94e6    688b060000
                         push              0x00c09908                                    // 0x006d94eb    680899c000
                         push              0x3                                           // 0x006d94f0    6a03
                         call              ?GameRand@GRand@@SAHJ@Z                       // 0x006d94f2    e819500000
                         add               esp, 0x0c                                     // 0x006d94f7    83c40c
                         push              eax                                           // 0x006d94fa    50
                         push              0x0000068b                                    // 0x006d94fb    688b060000
                         push              0x00c09908                                    // 0x006d9500    680899c000
                         push              0x3                                           // 0x006d9505    6a03
                         call              ?GameRand@GRand@@SAHJ@Z                       // 0x006d9507    e804500000
                         add               esp, 0x0c                                     // 0x006d950c    83c40c
                         push              eax                                           // 0x006d950f    50
                         mov.s             ecx, esi                                      // 0x006d9510    8bce
                         call              _jmp_addr_0x006d9450                          // 0x006d9512    e839ffffff
                         dec               edi                                           // 0x006d9517    4f
                         {disp8} jne       _jmp_addr_0x006d94e6                          // 0x006d9518    75cc
                         push              0x00d3af0c                                    // 0x006d951a    680cafd300
                         push              -0x1                                          // 0x006d951f    6aff
                         push              -0x1                                          // 0x006d9521    6aff
                         {disp8} lea       eax, dword ptr [esp + 0x20]                   // 0x006d9523    8d442420
                         push              eax                                           // 0x006d9527    50
                         mov.s             ecx, esi                                      // 0x006d9528    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d952a    e861fdffff
                         push              eax                                           // 0x006d952f    50
                         call              _jmp_addr_0x007346e0                          // 0x006d9530    e8abb10500
                         add               esp, 0x08                                     // 0x006d9535    83c408
                         push              0x00d3af0c                                    // 0x006d9538    680cafd300
                         push              0x3                                           // 0x006d953d    6a03
                         push              -0x1                                          // 0x006d953f    6aff
                         {disp8} lea       ecx, dword ptr [esp + 0x20]                   // 0x006d9541    8d4c2420
                         push              ecx                                           // 0x006d9545    51
                         mov.s             ecx, esi                                      // 0x006d9546    8bce
                         {disp32} mov      dword ptr [esi + 0x000000d4], eax             // 0x006d9548    8986d4000000
                         call              _jmp_addr_0x006d9290                          // 0x006d954e    e83dfdffff
                         push              eax                                           // 0x006d9553    50
                         call              _jmp_addr_0x007346e0                          // 0x006d9554    e887b10500
                         add               esp, 0x08                                     // 0x006d9559    83c408
                         push              0x00d3af0c                                    // 0x006d955c    680cafd300
                         push              -0x1                                          // 0x006d9561    6aff
                         push              0x3                                           // 0x006d9563    6a03
                         {disp8} lea       edx, dword ptr [esp + 0x20]                   // 0x006d9565    8d542420
                         push              edx                                           // 0x006d9569    52
                         mov.s             ecx, esi                                      // 0x006d956a    8bce
                         {disp32} mov      dword ptr [esi + 0x000000d8], eax             // 0x006d956c    8986d8000000
                         call              _jmp_addr_0x006d9290                          // 0x006d9572    e819fdffff
                         push              eax                                           // 0x006d9577    50
                         call              _jmp_addr_0x007346e0                          // 0x006d9578    e863b10500
                         add               esp, 0x08                                     // 0x006d957d    83c408
                         push              0x00d3af0c                                    // 0x006d9580    680cafd300
                         push              0x3                                           // 0x006d9585    6a03
                         {disp32} mov      dword ptr [esi + 0x000000dc], eax             // 0x006d9587    8986dc000000
                         push              0x3                                           // 0x006d958d    6a03
                         {disp8} lea       eax, dword ptr [esp + 0x20]                   // 0x006d958f    8d442420
                         push              eax                                           // 0x006d9593    50
                         mov.s             ecx, esi                                      // 0x006d9594    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d9596    e8f5fcffff
                         push              eax                                           // 0x006d959b    50
                         call              _jmp_addr_0x007346e0                          // 0x006d959c    e83fb10500
                         push              0x00000698                                    // 0x006d95a1    6898060000
                         push              0x00c09908                                    // 0x006d95a6    680899c000
                         push              0x00000090                                    // 0x006d95ab    6890000000
                         {disp32} mov      dword ptr [esi + 0x000000e0], eax             // 0x006d95b0    8986e0000000
                         call              ?__nw@Base@@SAPAXK@Z                          // 0x006d95b6    e835d1d5ff
                         mov.s             edi, eax                                      // 0x006d95bb    8bf8
                         xor.s             ebp, ebp                                      // 0x006d95bd    33ed
                         add               esp, 0x14                                     // 0x006d95bf    83c414
                         cmp.s             edi, ebp                                      // 0x006d95c2    3bfd
                         {disp8} je        _jmp_addr_0x006d960d                          // 0x006d95c4    7447
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x006d95c6    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x006d95cc    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a5b]               // 0x006d95ce    8a815b5a2000
                         push              0x000aba52                                    // 0x006d95d4    6852ba0a00
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x006d95d9    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x006d95dc    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x006d95df    8d0450
                         shl               eax, 5                                        // 0x006d95e2    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x006d95e5    8d4c0818
                         push              ecx                                           // 0x006d95e9    51
                         push              0x00c5e624                                    // 0x006d95ea    6824e6c500
                         push              0x1                                           // 0x006d95ef    6a01
                         push              0x1                                           // 0x006d95f1    6a01
                         {disp8} lea       edx, dword ptr [esp + 0x28]                   // 0x006d95f3    8d542428
                         push              edx                                           // 0x006d95f7    52
                         mov.s             ecx, esi                                      // 0x006d95f8    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d95fa    e891fcffff
                         push              eax                                           // 0x006d95ff    50
                         mov.s             ecx, edi                                      // 0x006d9600    8bcf
                         call              @__ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl@24                          // 0x006d9602    e87961e5ff
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x006d9607    89442410
                         {disp8} jmp       _jmp_addr_0x006d9613                          // 0x006d960b    eb06
_jmp_addr_0x006d960d:    {disp8} mov       dword ptr [esp + 0x10], ebp                   // 0x006d960d    896c2410
                         mov.s             eax, ebp                                      // 0x006d9611    8bc5
_jmp_addr_0x006d9613:    {disp8} mov       word ptr [eax + 0x50], 0x0019                 // 0x006d9613    66c740501900
                         {disp8} mov       word ptr [eax + 0x52], 0x0018                 // 0x006d9619    66c740521800
                         {disp32} lea      edi, dword ptr [esi + 0x000000a0]             // 0x006d961f    8dbea0000000
_jmp_addr_0x006d9625:    xor.s             ebx, ebx                                      // 0x006d9625    33db
_jmp_addr_0x006d9627:    push              0x40800000                                    // 0x006d9627    6800008040
                         push              0x14                                          // 0x006d962c    6a14
                         push              0x65                                          // 0x006d962e    6a65
                         push              0x0000008b                                    // 0x006d9630    688b000000
                         push              0x3b                                          // 0x006d9635    6a3b
                         push              0x3f800000                                    // 0x006d9637    680000803f
                         push              ebx                                           // 0x006d963c    53
                         push              ebp                                           // 0x006d963d    55
                         {disp8} lea       eax, dword ptr [esp + 0x34]                   // 0x006d963e    8d442434
                         push              eax                                           // 0x006d9642    50
                         mov.s             ecx, esi                                      // 0x006d9643    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d9645    e846fcffff
                         push              eax                                           // 0x006d964a    50
                         call              _jmp_addr_0x00606380                          // 0x006d964b    e830cdf2ff
                         {disp8} mov       ecx, dword ptr [esp + 0x2c]                   // 0x006d9650    8b4c242c
                         add               esp, 0x1c                                     // 0x006d9654    83c41c
                         push              0x14                                          // 0x006d9657    6a14
                         push              ecx                                           // 0x006d9659    51
                         push              0x0                                           // 0x006d965a    6a00
                         push              0x00c4fcf0                                    // 0x006d965c    68f0fcc400
                         push              0x1                                           // 0x006d9661    6a01
                         push              0x1                                           // 0x006d9663    6a01
                         {disp8} lea       edx, dword ptr [esp + 0x38]                   // 0x006d9665    8d542438
                         push              edx                                           // 0x006d9669    52
                         mov.s             ecx, esi                                      // 0x006d966a    8bce
                         {disp8} mov       dword ptr [edi + -0x24], eax                  // 0x006d966c    8947dc
                         call              _jmp_addr_0x006d9290                          // 0x006d966f    e81cfcffff
                         push              eax                                           // 0x006d9674    50
                         call              _jmp_addr_0x00419d10                          // 0x006d9675    e89606d4ff
                         add               esp, 0x14                                     // 0x006d967a    83c414
                         mov               dword ptr [edi], eax                          // 0x006d967d    8907
                         mov               edx, dword ptr [eax]                          // 0x006d967f    8b10
                         push              0x2b                                          // 0x006d9681    6a2b
                         mov.s             ecx, eax                                      // 0x006d9683    8bc8
                         call              dword ptr [edx + 0x8e8]                       // 0x006d9685    ff92e8080000
                         inc               ebx                                           // 0x006d968b    43
                         add               edi, 0x04                                     // 0x006d968c    83c704
                         cmp               ebx, 0x03                                     // 0x006d968f    83fb03
                         {disp8} jl        _jmp_addr_0x006d9627                          // 0x006d9692    7c93
                         inc               ebp                                           // 0x006d9694    45
                         cmp               ebp, 0x03                                     // 0x006d9695    83fd03
                         {disp8} jl        _jmp_addr_0x006d9625                          // 0x006d9698    7c8b
                         pop               edi                                           // 0x006d969a    5f
                         pop               esi                                           // 0x006d969b    5e
                         pop               ebp                                           // 0x006d969c    5d
                         pop               ebx                                           // 0x006d969d    5b
                         add               esp, 0x1c                                     // 0x006d969e    83c41c
                         ret                                                             // 0x006d96a1    c3
                         nop                                                             // 0x006d96a2    90
                         nop                                                             // 0x006d96a3    90
                         nop                                                             // 0x006d96a4    90
                         nop                                                             // 0x006d96a5    90
                         nop                                                             // 0x006d96a6    90
                         nop                                                             // 0x006d96a7    90
                         nop                                                             // 0x006d96a8    90
                         nop                                                             // 0x006d96a9    90
                         nop                                                             // 0x006d96aa    90
                         nop                                                             // 0x006d96ab    90
                         nop                                                             // 0x006d96ac    90
                         nop                                                             // 0x006d96ad    90
                         nop                                                             // 0x006d96ae    90
                         nop                                                             // 0x006d96af    90
                         mov               eax, 0x00000001                               // 0x006d96b0    b801000000
                         ret               0x0008                                        // 0x006d96b5    c20800
                         nop                                                             // 0x006d96b8    90
                         nop                                                             // 0x006d96b9    90
                         nop                                                             // 0x006d96ba    90
                         nop                                                             // 0x006d96bb    90
                         nop                                                             // 0x006d96bc    90
                         nop                                                             // 0x006d96bd    90
                         nop                                                             // 0x006d96be    90
                         nop                                                             // 0x006d96bf    90
?Save@PuzzleGame@@UAEIAAVGameOSFile@@@Z:
                         sub               esp, 0x08                                     // 0x006d96c0    83ec08
                         push              ebp                                           // 0x006d96c3    55
                         push              esi                                           // 0x006d96c4    56
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x006d96c5    8b742414
                         mov.s             ebp, ecx                                      // 0x006d96c9    8be9
                         push              esi                                           // 0x006d96cb    56
                         {disp8} mov       dword ptr [esp + 0x10], ebp                   // 0x006d96cc    896c2410
                         call              ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z // 0x006d96d0    e81b6de9ff
                         test              eax, eax                                      // 0x006d96d5    85c0
                         {disp32} je       _jmp_addr_0x006d9d35                          // 0x006d96d7    0f8458060000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x006d96dd    a190c9be00
                         push              ebx                                           // 0x006d96e2    53
                         xor.s             ebx, ebx                                      // 0x006d96e3    33db
                         cmp.s             eax, ebx                                      // 0x006d96e5    3bc3
                         push              edi                                           // 0x006d96e7    57
                         {disp32} je       _jmp_addr_0x006d97cb                          // 0x006d96e8    0f84dd000000
                         push              ebx                                           // 0x006d96ee    53
                         push              0x4                                           // 0x006d96ef    6a04
                         {disp8} lea       edi, dword ptr [ebp + 0x48]                   // 0x006d96f1    8d7d48
                         push              edi                                           // 0x006d96f4    57
                         mov.s             ecx, esi                                      // 0x006d96f5    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d96f7    e824320e00
                         cmp               eax, 0x03                                     // 0x006d96fc    83f803
                         {disp8} jne       _jmp_addr_0x006d9707                          // 0x006d96ff    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9701    891d90c9be00
_jmp_addr_0x006d9707:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9707    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d970d    33c0
                         mov               al, byte ptr [edi]                            // 0x006d970f    8a07
                         add               eax, 0x04                                     // 0x006d9711    83c004
                         add.s             ecx, eax                                      // 0x006d9714    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9716    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d971c    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d97cb                          // 0x006d9722    0f84a3000000
                         push              ebx                                           // 0x006d9728    53
                         push              0x4                                           // 0x006d9729    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x0000057c]             // 0x006d972b    8dbd7c050000
                         push              edi                                           // 0x006d9731    57
                         mov.s             ecx, esi                                      // 0x006d9732    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9734    e8e7310e00
                         cmp               eax, 0x03                                     // 0x006d9739    83f803
                         {disp8} jne       _jmp_addr_0x006d9744                          // 0x006d973c    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d973e    891d90c9be00
_jmp_addr_0x006d9744:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x006d9744    8b9614020000
                         xor.s             ecx, ecx                                      // 0x006d974a    33c9
                         mov               cl, byte ptr [edi]                            // 0x006d974c    8a0f
                         add               ecx, 0x4                                      // 0x006d974e    83c104
                         add.s             edx, ecx                                      // 0x006d9751    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x006d9753    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9759    391d90c9be00
                         {disp8} je        _jmp_addr_0x006d97cb                          // 0x006d975f    746a
                         push              ebx                                           // 0x006d9761    53
                         push              0x4                                           // 0x006d9762    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x00000584]             // 0x006d9764    8dbd84050000
                         push              edi                                           // 0x006d976a    57
                         mov.s             ecx, esi                                      // 0x006d976b    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d976d    e8ae310e00
                         cmp               eax, 0x03                                     // 0x006d9772    83f803
                         {disp8} jne       _jmp_addr_0x006d977d                          // 0x006d9775    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9777    891d90c9be00
_jmp_addr_0x006d977d:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d977d    8b8e14020000
                         xor.s             edx, edx                                      // 0x006d9783    33d2
                         mov               dl, byte ptr [edi]                            // 0x006d9785    8a17
                         add               edx, 0x04                                     // 0x006d9787    83c204
                         add.s             ecx, edx                                      // 0x006d978a    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d978c    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9792    391d90c9be00
                         {disp8} je        _jmp_addr_0x006d97cb                          // 0x006d9798    7431
                         push              ebx                                           // 0x006d979a    53
                         push              0x4                                           // 0x006d979b    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x00000580]             // 0x006d979d    8dbd80050000
                         push              edi                                           // 0x006d97a3    57
                         mov.s             ecx, esi                                      // 0x006d97a4    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d97a6    e875310e00
                         cmp               eax, 0x03                                     // 0x006d97ab    83f803
                         {disp8} jne       _jmp_addr_0x006d97b6                          // 0x006d97ae    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d97b0    891d90c9be00
_jmp_addr_0x006d97b6:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d97b6    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d97bc    33c0
                         mov               al, byte ptr [edi]                            // 0x006d97be    8a07
                         add               eax, 0x04                                     // 0x006d97c0    83c004
                         add.s             ecx, eax                                      // 0x006d97c3    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d97c5    898e14020000
_jmp_addr_0x006d97cb:    cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d97cb    391d90c9be00
                         {disp8} mov       dword ptr [esp + 0x1c], 0x00000006            // 0x006d97d1    c744241c06000000
                         {disp8} je        _jmp_addr_0x006d9812                          // 0x006d97d9    7437
                         {disp8} lea       ecx, dword ptr [esp + 0x1c]                   // 0x006d97db    8d4c241c
                         push              ecx                                           // 0x006d97df    51
                         mov.s             ecx, esi                                      // 0x006d97e0    8bce
                         call              ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x006d97e2    e819dfd2ff
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x006d97e7    8b44241c
                         test              eax, eax                                      // 0x006d97eb    85c0
                         {disp8} jbe       _jmp_addr_0x006d9812                          // 0x006d97ed    7623
                         {disp32} lea      edi, dword ptr [ebp + 0x000003cc]             // 0x006d97ef    8dbdcc030000
_jmp_addr_0x006d97f5:    push              edi                                           // 0x006d97f5    57
                         mov.s             ecx, esi                                      // 0x006d97f6    8bce
                         call              _jmp_addr_0x004640a0                          // 0x006d97f8    e8a3a8d8ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x006d97fd    a190c9be00
                         test              eax, eax                                      // 0x006d9802    85c0
                         {disp8} je        _jmp_addr_0x006d9812                          // 0x006d9804    740c
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x006d9806    8b44241c
                         inc               ebx                                           // 0x006d980a    43
                         add               edi, 0x04                                     // 0x006d980b    83c704
                         cmp.s             ebx, eax                                      // 0x006d980e    3bd8
                         .byte             0x72, 0xe3// {disp8} jb _jmp_addr_0x006d97f5  // 0x006d9810    72e3
_jmp_addr_0x006d9812:    push              0x6                                           // 0x006d9812    6a06
                         {disp32} lea      edx, dword ptr [ebp + 0x00000398]             // 0x006d9814    8d9598030000
                         push              edx                                           // 0x006d981a    52
                         mov.s             ecx, esi                                      // 0x006d981b    8bce
                         call              _jmp_addr_0x00562240                          // 0x006d981d    e81e8ae8ff
                         push              0x4                                           // 0x006d9822    6a04
                         {disp32} lea      eax, dword ptr [ebp + 0x000000c4]             // 0x006d9824    8d85c4000000
                         push              eax                                           // 0x006d982a    50
                         mov.s             ecx, esi                                      // 0x006d982b    8bce
                         call              _jmp_addr_0x00562240                          // 0x006d982d    e80e8ae8ff
                         push              0x4                                           // 0x006d9832    6a04
                         {disp32} lea      ecx, dword ptr [ebp + 0x000000d4]             // 0x006d9834    8d8dd4000000
                         push              ecx                                           // 0x006d983a    51
                         mov.s             ecx, esi                                      // 0x006d983b    8bce
                         call              _jmp_addr_0x00562240                          // 0x006d983d    e8fe89e8ff
                         {disp32} lea      edi, dword ptr [ebp + 0x000003b0]             // 0x006d9842    8dbdb0030000
                         mov               ebx, 0x00000003                               // 0x006d9848    bb03000000
_jmp_addr_0x006d984d:    mov               edx, dword ptr [edi]                          // 0x006d984d    8b17
                         push              edx                                           // 0x006d984f    52
                         mov.s             ecx, esi                                      // 0x006d9850    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9852    e8b985e8ff
                         add               edi, 0x04                                     // 0x006d9857    83c704
                         dec               ebx                                           // 0x006d985a    4b
                         {disp8} jne       _jmp_addr_0x006d984d                          // 0x006d985b    75f0
                         {disp32} lea      edi, dword ptr [ebp + 0x000003bc]             // 0x006d985d    8dbdbc030000
                         mov               ebx, 0x00000004                               // 0x006d9863    bb04000000
_jmp_addr_0x006d9868:    mov               eax, dword ptr [edi]                          // 0x006d9868    8b07
                         push              eax                                           // 0x006d986a    50
                         mov.s             ecx, esi                                      // 0x006d986b    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d986d    e89e85e8ff
                         add               edi, 0x04                                     // 0x006d9872    83c704
                         dec               ebx                                           // 0x006d9875    4b
                         {disp8} jne       _jmp_addr_0x006d9868                          // 0x006d9876    75f0
                         {disp8} lea       ecx, dword ptr [ebp + 0x4c]                   // 0x006d9878    8d4d4c
                         {disp8} mov       dword ptr [esp + 0x1c], ecx                   // 0x006d987b    894c241c
                         {disp8} lea       edi, dword ptr [ebp + 0x7c]                   // 0x006d987f    8d7d7c
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000003            // 0x006d9882    c744241003000000
_jmp_addr_0x006d988a:    xor.s             ebx, ebx                                      // 0x006d988a    33db
_jmp_addr_0x006d988c:    {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x006d988c    a190c9be00
                         test              eax, eax                                      // 0x006d9891    85c0
                         {disp8} je        _jmp_addr_0x006d98cf                          // 0x006d9893    743a
                         {disp8} mov       edx, dword ptr [esp + 0x1c]                   // 0x006d9895    8b54241c
                         push              0x0                                           // 0x006d9899    6a00
                         lea               ebp, dword ptr [edx + ebx * 0x1]              // 0x006d989b    8d2c1a
                         push              0x1                                           // 0x006d989e    6a01
                         push              ebp                                           // 0x006d98a0    55
                         mov.s             ecx, esi                                      // 0x006d98a1    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d98a3    e878300e00
                         cmp               eax, 0x03                                     // 0x006d98a8    83f803
                         {disp8} jne       _jmp_addr_0x006d98b7                          // 0x006d98ab    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x006d98ad    c70590c9be0000000000
_jmp_addr_0x006d98b7:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d98b7    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d98bd    33c0
                         {disp8} mov       al, byte ptr [ebp + 0x00]                     // 0x006d98bf    8a4500
                         {disp8} mov       ebp, dword ptr [esp + 0x14]                   // 0x006d98c2    8b6c2414
                         inc               eax                                           // 0x006d98c6    40
                         add.s             ecx, eax                                      // 0x006d98c7    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d98c9    898e14020000
_jmp_addr_0x006d98cf:    {disp8} mov       ecx, dword ptr [edi + -0x24]                  // 0x006d98cf    8b4fdc
                         push              ecx                                           // 0x006d98d2    51
                         mov.s             ecx, esi                                      // 0x006d98d3    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d98d5    e83685e8ff
                         mov               edx, dword ptr [edi]                          // 0x006d98da    8b17
                         push              edx                                           // 0x006d98dc    52
                         mov.s             ecx, esi                                      // 0x006d98dd    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d98df    e82c85e8ff
                         {disp8} mov       eax, dword ptr [edi + 0x24]                   // 0x006d98e4    8b4724
                         push              eax                                           // 0x006d98e7    50
                         mov.s             ecx, esi                                      // 0x006d98e8    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d98ea    e82185e8ff
                         inc               ebx                                           // 0x006d98ef    43
                         add               edi, 0x04                                     // 0x006d98f0    83c704
                         cmp               ebx, 0x03                                     // 0x006d98f3    83fb03
                         {disp8} jl        _jmp_addr_0x006d988c                          // 0x006d98f6    7c94
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                   // 0x006d98f8    8b4c241c
                         {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x006d98fc    8b442410
                         add               ecx, 0x3                                      // 0x006d9900    83c103
                         dec               eax                                           // 0x006d9903    48
                         {disp8} mov       dword ptr [esp + 0x1c], ecx                   // 0x006d9904    894c241c
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x006d9908    89442410
                         {disp32} jne      _jmp_addr_0x006d988a                          // 0x006d990c    0f8578ffffff
                         {disp8} mov       dword ptr [esp + 0x1c], 0x00000000            // 0x006d9912    c744241c00000000
                         {disp32} lea      ebx, dword ptr [ebp + 0x00000450]             // 0x006d991a    8d9d50040000
                         {disp32} lea      edi, dword ptr [ebp + 0x00000240]             // 0x006d9920    8dbd40020000
_jmp_addr_0x006d9926:    {disp8} mov       dword ptr [esp + 0x10], 0x00000009            // 0x006d9926    c744241009000000
_jmp_addr_0x006d992e:    mov               ecx, dword ptr [edi]                          // 0x006d992e    8b0f
                         push              ecx                                           // 0x006d9930    51
                         mov.s             ecx, esi                                      // 0x006d9931    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9933    e8d884e8ff
                         mov               edx, dword ptr [edi]                          // 0x006d9938    8b17
                         push              edx                                           // 0x006d993a    52
                         mov.s             ecx, esi                                      // 0x006d993b    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d993d    e8ce84e8ff
                         {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x006d9942    8b442410
                         add               edi, 0x04                                     // 0x006d9946    83c704
                         dec               eax                                           // 0x006d9949    48
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x006d994a    89442410
                         {disp8} jne       _jmp_addr_0x006d992e                          // 0x006d994e    75de
                         cmp               dword ptr [esp + 0x1c], 0x08                  // 0x006d9950    837c241c08
                         {disp32} jge      _jmp_addr_0x006d99e7                          // 0x006d9955    0f8d8c000000
                         {disp8} mov       eax, dword ptr [ebx + -0x40]                  // 0x006d995b    8b43c0
                         push              eax                                           // 0x006d995e    50
                         mov.s             ecx, esi                                      // 0x006d995f    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9961    e8aa84e8ff
                         {disp8} mov       ecx, dword ptr [ebx + -0x20]                  // 0x006d9966    8b4be0
                         push              ecx                                           // 0x006d9969    51
                         mov.s             ecx, esi                                      // 0x006d996a    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d996c    e89f84e8ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x006d9971    a190c9be00
                         test              eax, eax                                      // 0x006d9976    85c0
                         {disp8} je        _jmp_addr_0x006d99e7                          // 0x006d9978    746d
                         push              0x0                                           // 0x006d997a    6a00
                         push              0x4                                           // 0x006d997c    6a04
                         push              ebx                                           // 0x006d997e    53
                         mov.s             ecx, esi                                      // 0x006d997f    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9981    e89a2f0e00
                         cmp               eax, 0x03                                     // 0x006d9986    83f803
                         {disp8} jne       _jmp_addr_0x006d9995                          // 0x006d9989    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x006d998b    c70590c9be0000000000
_jmp_addr_0x006d9995:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9995    8b8e14020000
                         xor.s             edx, edx                                      // 0x006d999b    33d2
                         mov               dl, byte ptr [ebx]                            // 0x006d999d    8a13
                         add               edx, 0x04                                     // 0x006d999f    83c204
                         add.s             ecx, edx                                      // 0x006d99a2    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d99a4    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x006d99aa    a190c9be00
                         test              eax, eax                                      // 0x006d99af    85c0
                         {disp8} je        _jmp_addr_0x006d99e7                          // 0x006d99b1    7434
                         push              0x0                                           // 0x006d99b3    6a00
                         {disp8} lea       eax, dword ptr [ebx + 0x20]                   // 0x006d99b5    8d4320
                         push              0x4                                           // 0x006d99b8    6a04
                         push              eax                                           // 0x006d99ba    50
                         mov.s             ecx, esi                                      // 0x006d99bb    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d99bd    e85e2f0e00
                         cmp               eax, 0x03                                     // 0x006d99c2    83f803
                         {disp8} jne       _jmp_addr_0x006d99d1                          // 0x006d99c5    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x006d99c7    c70590c9be0000000000
_jmp_addr_0x006d99d1:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d99d1    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d99d7    33c0
                         {disp8} mov       al, byte ptr [ebx + 0x20]                     // 0x006d99d9    8a4320
                         add               eax, 0x04                                     // 0x006d99dc    83c004
                         add.s             ecx, eax                                      // 0x006d99df    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d99e1    898e14020000
_jmp_addr_0x006d99e7:    {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x006d99e7    8b44241c
                         inc               eax                                           // 0x006d99eb    40
                         add               ebx, 0x04                                     // 0x006d99ec    83c304
                         cmp               eax, 0x09                                     // 0x006d99ef    83f809
                         {disp8} mov       dword ptr [esp + 0x1c], eax                   // 0x006d99f2    8944241c
                         {disp32} jl       _jmp_addr_0x006d9926                          // 0x006d99f6    0f8c2affffff
                         {disp32} lea      edi, dword ptr [ebp + 0x000004e4]             // 0x006d99fc    8dbde4040000
                         mov               ebx, 0x00000012                               // 0x006d9a02    bb12000000
_jmp_addr_0x006d9a07:    mov               ecx, dword ptr [edi]                          // 0x006d9a07    8b0f
                         push              ecx                                           // 0x006d9a09    51
                         mov.s             ecx, esi                                      // 0x006d9a0a    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9a0c    e8ff83e8ff
                         add               edi, 0x04                                     // 0x006d9a11    83c704
                         dec               ebx                                           // 0x006d9a14    4b
                         {disp8} jne       _jmp_addr_0x006d9a07                          // 0x006d9a15    75f0
                         push              0x14                                          // 0x006d9a17    6a14
                         {disp32} lea      edx, dword ptr [ebp + 0x00000494]             // 0x006d9a19    8d9594040000
                         push              edx                                           // 0x006d9a1f    52
                         mov.s             ecx, esi                                      // 0x006d9a20    8bce
                         call              _jmp_addr_0x00562240                          // 0x006d9a22    e81988e8ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x006d9a27    a190c9be00
                         xor.s             ebx, ebx                                      // 0x006d9a2c    33db
                         cmp.s             eax, ebx                                      // 0x006d9a2e    3bc3
                         {disp32} je       _jmp_addr_0x006d9c47                          // 0x006d9a30    0f8411020000
                         push              ebx                                           // 0x006d9a36    53
                         push              0x4                                           // 0x006d9a37    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x00000490]             // 0x006d9a39    8dbd90040000
                         push              edi                                           // 0x006d9a3f    57
                         mov.s             ecx, esi                                      // 0x006d9a40    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9a42    e8d92e0e00
                         cmp               eax, 0x03                                     // 0x006d9a47    83f803
                         {disp8} jne       _jmp_addr_0x006d9a52                          // 0x006d9a4a    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9a4c    891d90c9be00
_jmp_addr_0x006d9a52:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9a52    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d9a58    33c0
                         mov               al, byte ptr [edi]                            // 0x006d9a5a    8a07
                         add               eax, 0x04                                     // 0x006d9a5c    83c004
                         add.s             ecx, eax                                      // 0x006d9a5f    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9a61    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9a67    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d9c47                          // 0x006d9a6d    0f84d4010000
                         push              ebx                                           // 0x006d9a73    53
                         push              0x4                                           // 0x006d9a74    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x00000388]             // 0x006d9a76    8dbd88030000
                         push              edi                                           // 0x006d9a7c    57
                         mov.s             ecx, esi                                      // 0x006d9a7d    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9a7f    e89c2e0e00
                         cmp               eax, 0x03                                     // 0x006d9a84    83f803
                         {disp8} jne       _jmp_addr_0x006d9a8f                          // 0x006d9a87    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9a89    891d90c9be00
_jmp_addr_0x006d9a8f:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x006d9a8f    8b9614020000
                         xor.s             ecx, ecx                                      // 0x006d9a95    33c9
                         mov               cl, byte ptr [edi]                            // 0x006d9a97    8a0f
                         add               ecx, 0x4                                      // 0x006d9a99    83c104
                         add.s             edx, ecx                                      // 0x006d9a9c    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x006d9a9e    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9aa4    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d9c47                          // 0x006d9aaa    0f8497010000
                         push              ebx                                           // 0x006d9ab0    53
                         push              0x2                                           // 0x006d9ab1    6a02
                         {disp32} lea      edi, dword ptr [ebp + 0x0000038c]             // 0x006d9ab3    8dbd8c030000
                         push              edi                                           // 0x006d9ab9    57
                         mov.s             ecx, esi                                      // 0x006d9aba    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9abc    e85f2e0e00
                         cmp               eax, 0x03                                     // 0x006d9ac1    83f803
                         {disp8} jne       _jmp_addr_0x006d9acc                          // 0x006d9ac4    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9ac6    891d90c9be00
_jmp_addr_0x006d9acc:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9acc    8b8e14020000
                         xor.s             edx, edx                                      // 0x006d9ad2    33d2
                         mov               dl, byte ptr [edi]                            // 0x006d9ad4    8a17
                         add               edx, 0x02                                     // 0x006d9ad6    83c202
                         add.s             ecx, edx                                      // 0x006d9ad9    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9adb    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9ae1    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d9c47                          // 0x006d9ae7    0f845a010000
                         push              ebx                                           // 0x006d9aed    53
                         push              0x4                                           // 0x006d9aee    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x00000390]             // 0x006d9af0    8dbd90030000
                         push              edi                                           // 0x006d9af6    57
                         mov.s             ecx, esi                                      // 0x006d9af7    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9af9    e8222e0e00
                         cmp               eax, 0x03                                     // 0x006d9afe    83f803
                         {disp8} jne       _jmp_addr_0x006d9b09                          // 0x006d9b01    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9b03    891d90c9be00
_jmp_addr_0x006d9b09:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9b09    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d9b0f    33c0
                         mov               al, byte ptr [edi]                            // 0x006d9b11    8a07
                         add               eax, 0x04                                     // 0x006d9b13    83c004
                         add.s             ecx, eax                                      // 0x006d9b16    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9b18    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9b1e    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d9c47                          // 0x006d9b24    0f841d010000
                         push              ebx                                           // 0x006d9b2a    53
                         push              0x4                                           // 0x006d9b2b    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x00000394]             // 0x006d9b2d    8dbd94030000
                         push              edi                                           // 0x006d9b33    57
                         mov.s             ecx, esi                                      // 0x006d9b34    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9b36    e8e52d0e00
                         cmp               eax, 0x03                                     // 0x006d9b3b    83f803
                         {disp8} jne       _jmp_addr_0x006d9b46                          // 0x006d9b3e    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9b40    891d90c9be00
_jmp_addr_0x006d9b46:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x006d9b46    8b9614020000
                         xor.s             ecx, ecx                                      // 0x006d9b4c    33c9
                         mov               cl, byte ptr [edi]                            // 0x006d9b4e    8a0f
                         add               ecx, 0x4                                      // 0x006d9b50    83c104
                         add.s             edx, ecx                                      // 0x006d9b53    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x006d9b55    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9b5b    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d9c47                          // 0x006d9b61    0f84e0000000
                         push              ebx                                           // 0x006d9b67    53
                         push              0x4                                           // 0x006d9b68    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x000003e4]             // 0x006d9b6a    8dbde4030000
                         push              edi                                           // 0x006d9b70    57
                         mov.s             ecx, esi                                      // 0x006d9b71    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9b73    e8a82d0e00
                         cmp               eax, 0x03                                     // 0x006d9b78    83f803
                         {disp8} jne       _jmp_addr_0x006d9b83                          // 0x006d9b7b    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9b7d    891d90c9be00
_jmp_addr_0x006d9b83:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9b83    8b8e14020000
                         xor.s             edx, edx                                      // 0x006d9b89    33d2
                         mov               dl, byte ptr [edi]                            // 0x006d9b8b    8a17
                         add               edx, 0x04                                     // 0x006d9b8d    83c204
                         add.s             ecx, edx                                      // 0x006d9b90    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9b92    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9b98    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d9c47                          // 0x006d9b9e    0f84a3000000
                         push              ebx                                           // 0x006d9ba4    53
                         push              0x4                                           // 0x006d9ba5    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x000003e8]             // 0x006d9ba7    8dbde8030000
                         push              edi                                           // 0x006d9bad    57
                         mov.s             ecx, esi                                      // 0x006d9bae    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9bb0    e86b2d0e00
                         cmp               eax, 0x03                                     // 0x006d9bb5    83f803
                         {disp8} jne       _jmp_addr_0x006d9bc0                          // 0x006d9bb8    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9bba    891d90c9be00
_jmp_addr_0x006d9bc0:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9bc0    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d9bc6    33c0
                         mov               al, byte ptr [edi]                            // 0x006d9bc8    8a07
                         add               eax, 0x04                                     // 0x006d9bca    83c004
                         add.s             ecx, eax                                      // 0x006d9bcd    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9bcf    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9bd5    391d90c9be00
                         {disp8} je        _jmp_addr_0x006d9c47                          // 0x006d9bdb    746a
                         push              ebx                                           // 0x006d9bdd    53
                         push              0x4                                           // 0x006d9bde    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x000003ec]             // 0x006d9be0    8dbdec030000
                         push              edi                                           // 0x006d9be6    57
                         mov.s             ecx, esi                                      // 0x006d9be7    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9be9    e8322d0e00
                         cmp               eax, 0x03                                     // 0x006d9bee    83f803
                         {disp8} jne       _jmp_addr_0x006d9bf9                          // 0x006d9bf1    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9bf3    891d90c9be00
_jmp_addr_0x006d9bf9:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x006d9bf9    8b9614020000
                         xor.s             ecx, ecx                                      // 0x006d9bff    33c9
                         mov               cl, byte ptr [edi]                            // 0x006d9c01    8a0f
                         add               ecx, 0x4                                      // 0x006d9c03    83c104
                         add.s             edx, ecx                                      // 0x006d9c06    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x006d9c08    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9c0e    391d90c9be00
                         {disp8} je        _jmp_addr_0x006d9c47                          // 0x006d9c14    7431
                         push              ebx                                           // 0x006d9c16    53
                         push              0x4                                           // 0x006d9c17    6a04
                         {disp32} lea      edi, dword ptr [ebp + 0x000003f0]             // 0x006d9c19    8dbdf0030000
                         push              edi                                           // 0x006d9c1f    57
                         mov.s             ecx, esi                                      // 0x006d9c20    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9c22    e8f92c0e00
                         cmp               eax, 0x03                                     // 0x006d9c27    83f803
                         {disp8} jne       _jmp_addr_0x006d9c32                          // 0x006d9c2a    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9c2c    891d90c9be00
_jmp_addr_0x006d9c32:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006d9c32    8b8614020000
                         xor.s             edx, edx                                      // 0x006d9c38    33d2
                         mov               dl, byte ptr [edi]                            // 0x006d9c3a    8a17
                         add               edx, 0x04                                     // 0x006d9c3c    83c204
                         add.s             eax, edx                                      // 0x006d9c3f    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006d9c41    898614020000
_jmp_addr_0x006d9c47:    {disp32} mov      eax, dword ptr [ebp + 0x000003f4]             // 0x006d9c47    8b85f4030000
                         push              eax                                           // 0x006d9c4d    50
                         mov.s             ecx, esi                                      // 0x006d9c4e    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9c50    e8bb81e8ff
                         {disp32} mov      ecx, dword ptr [ebp + 0x000003f8]             // 0x006d9c55    8b8df8030000
                         push              ecx                                           // 0x006d9c5b    51
                         mov.s             ecx, esi                                      // 0x006d9c5c    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9c5e    e8ad81e8ff
                         {disp32} mov      edx, dword ptr [ebp + 0x000003fc]             // 0x006d9c63    8b95fc030000
                         push              edx                                           // 0x006d9c69    52
                         mov.s             ecx, esi                                      // 0x006d9c6a    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9c6c    e89f81e8ff
                         {disp32} mov      eax, dword ptr [ebp + 0x00000384]             // 0x006d9c71    8b8584030000
                         push              eax                                           // 0x006d9c77    50
                         mov.s             ecx, esi                                      // 0x006d9c78    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x006d9c7a    e89181e8ff
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9c7f    391d90c9be00
                         {disp32} je       _jmp_addr_0x006d9d26                          // 0x006d9c85    0f849b000000
                         push              ebx                                           // 0x006d9c8b    53
                         push              0x4                                           // 0x006d9c8c    6a04
                         {disp8} lea       edi, dword ptr [ebp + 0x3c]                   // 0x006d9c8e    8d7d3c
                         push              edi                                           // 0x006d9c91    57
                         mov.s             ecx, esi                                      // 0x006d9c92    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9c94    e8872c0e00
                         cmp               eax, 0x03                                     // 0x006d9c99    83f803
                         {disp8} jne       _jmp_addr_0x006d9ca4                          // 0x006d9c9c    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9c9e    891d90c9be00
_jmp_addr_0x006d9ca4:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x006d9ca4    8b9614020000
                         xor.s             ecx, ecx                                      // 0x006d9caa    33c9
                         mov               cl, byte ptr [edi]                            // 0x006d9cac    8a0f
                         add               ecx, 0x4                                      // 0x006d9cae    83c104
                         add.s             edx, ecx                                      // 0x006d9cb1    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x006d9cb3    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9cb9    391d90c9be00
                         {disp8} je        _jmp_addr_0x006d9d26                          // 0x006d9cbf    7465
                         push              ebx                                           // 0x006d9cc1    53
                         push              0x2                                           // 0x006d9cc2    6a02
                         {disp8} lea       edi, dword ptr [ebp + 0x44]                   // 0x006d9cc4    8d7d44
                         push              edi                                           // 0x006d9cc7    57
                         mov.s             ecx, esi                                      // 0x006d9cc8    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9cca    e8512c0e00
                         cmp               eax, 0x03                                     // 0x006d9ccf    83f803
                         {disp8} jne       _jmp_addr_0x006d9cda                          // 0x006d9cd2    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9cd4    891d90c9be00
_jmp_addr_0x006d9cda:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9cda    8b8e14020000
                         xor.s             edx, edx                                      // 0x006d9ce0    33d2
                         mov               dl, byte ptr [edi]                            // 0x006d9ce2    8a17
                         add               edx, 0x02                                     // 0x006d9ce4    83c202
                         add.s             ecx, edx                                      // 0x006d9ce7    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9ce9    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebx        // 0x006d9cef    391d90c9be00
                         {disp8} je        _jmp_addr_0x006d9d26                          // 0x006d9cf5    742f
                         push              ebx                                           // 0x006d9cf7    53
                         push              0x2                                           // 0x006d9cf8    6a02
                         add               ebp, 0x46                                     // 0x006d9cfa    83c546
                         push              ebp                                           // 0x006d9cfd    55
                         mov.s             ecx, esi                                      // 0x006d9cfe    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x006d9d00    e81b2c0e00
                         cmp               eax, 0x03                                     // 0x006d9d05    83f803
                         {disp8} jne       _jmp_addr_0x006d9d10                          // 0x006d9d08    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebx        // 0x006d9d0a    891d90c9be00
_jmp_addr_0x006d9d10:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9d10    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d9d16    33c0
                         {disp8} mov       al, byte ptr [ebp + 0x00]                     // 0x006d9d18    8a4500
                         add               eax, 0x02                                     // 0x006d9d1b    83c002
                         add.s             ecx, eax                                      // 0x006d9d1e    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9d20    898e14020000
_jmp_addr_0x006d9d26:    pop               edi                                           // 0x006d9d26    5f
                         pop               ebx                                           // 0x006d9d27    5b
                         pop               esi                                           // 0x006d9d28    5e
                         mov               eax, 0x00000001                               // 0x006d9d29    b801000000
                         pop               ebp                                           // 0x006d9d2e    5d
                         add               esp, 0x08                                     // 0x006d9d2f    83c408
                         ret               0x0004                                        // 0x006d9d32    c20400
_jmp_addr_0x006d9d35:    pop               esi                                           // 0x006d9d35    5e
                         xor.s             eax, eax                                      // 0x006d9d36    33c0
                         pop               ebp                                           // 0x006d9d38    5d
                         add               esp, 0x08                                     // 0x006d9d39    83c408
                         ret               0x0004                                        // 0x006d9d3c    c20400
                         nop                                                             // 0x006d9d3f    90
?Load@PuzzleGame@@UAEIAAVGameOSFile@@@Z:
                         push              ecx                                           // 0x006d9d40    51
                         push              ebp                                           // 0x006d9d41    55
                         push              esi                                           // 0x006d9d42    56
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x006d9d43    8b742410
                         mov.s             ebp, ecx                                      // 0x006d9d47    8be9
                         push              esi                                           // 0x006d9d49    56
                         {disp8} mov       dword ptr [esp + 0x0c], ebp                   // 0x006d9d4a    896c240c
                         call              ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z // 0x006d9d4e    e84d67e9ff
                         test              eax, eax                                      // 0x006d9d53    85c0
                         {disp32} je       _jmp_addr_0x006da340                          // 0x006d9d55    0f84e5050000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x006d9d5b    a194c9be00
                         push              ebx                                           // 0x006d9d60    53
                         xor.s             ebx, ebx                                      // 0x006d9d61    33db
                         cmp.s             eax, ebx                                      // 0x006d9d63    3bc3
                         push              edi                                           // 0x006d9d65    57
                         {disp8} lea       edi, dword ptr [ebp + 0x48]                   // 0x006d9d66    8d7d48
                         {disp8} je        _jmp_addr_0x006d9d96                          // 0x006d9d69    742b
                         push              ebx                                           // 0x006d9d6b    53
                         push              0x4                                           // 0x006d9d6c    6a04
                         push              edi                                           // 0x006d9d6e    57
                         mov.s             ecx, esi                                      // 0x006d9d6f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006d9d71    e86a2b0e00
                         cmp               eax, 0x03                                     // 0x006d9d76    83f803
                         {disp8} jne       _jmp_addr_0x006d9d81                          // 0x006d9d79    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebx        // 0x006d9d7b    891d94c9be00
_jmp_addr_0x006d9d81:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9d81    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d9d87    33c0
                         mov               al, byte ptr [edi]                            // 0x006d9d89    8a07
                         add               eax, 0x04                                     // 0x006d9d8b    83c004
                         add.s             ecx, eax                                      // 0x006d9d8e    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9d90    898e14020000
_jmp_addr_0x006d9d96:    cmp               dword ptr [data_bytes + 0x226994], ebx        // 0x006d9d96    391d94c9be00
                         {disp32} lea      edi, dword ptr [ebp + 0x0000057c]             // 0x006d9d9c    8dbd7c050000
                         {disp8} je        _jmp_addr_0x006d9dcf                          // 0x006d9da2    742b
                         push              ebx                                           // 0x006d9da4    53
                         push              0x4                                           // 0x006d9da5    6a04
                         push              edi                                           // 0x006d9da7    57
                         mov.s             ecx, esi                                      // 0x006d9da8    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006d9daa    e8312b0e00
                         cmp               eax, 0x03                                     // 0x006d9daf    83f803
                         {disp8} jne       _jmp_addr_0x006d9dba                          // 0x006d9db2    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebx        // 0x006d9db4    891d94c9be00
_jmp_addr_0x006d9dba:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006d9dba    8b8614020000
                         xor.s             ecx, ecx                                      // 0x006d9dc0    33c9
                         mov               cl, byte ptr [edi]                            // 0x006d9dc2    8a0f
                         add               ecx, 0x4                                      // 0x006d9dc4    83c104
                         add.s             eax, ecx                                      // 0x006d9dc7    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006d9dc9    898614020000
_jmp_addr_0x006d9dcf:    cmp               dword ptr [data_bytes + 0x226994], ebx        // 0x006d9dcf    391d94c9be00
                         {disp32} lea      edi, dword ptr [ebp + 0x00000584]             // 0x006d9dd5    8dbd84050000
                         {disp8} je        _jmp_addr_0x006d9e08                          // 0x006d9ddb    742b
                         push              ebx                                           // 0x006d9ddd    53
                         push              0x4                                           // 0x006d9dde    6a04
                         push              edi                                           // 0x006d9de0    57
                         mov.s             ecx, esi                                      // 0x006d9de1    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006d9de3    e8f82a0e00
                         cmp               eax, 0x03                                     // 0x006d9de8    83f803
                         {disp8} jne       _jmp_addr_0x006d9df3                          // 0x006d9deb    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebx        // 0x006d9ded    891d94c9be00
_jmp_addr_0x006d9df3:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006d9df3    8b8614020000
                         xor.s             edx, edx                                      // 0x006d9df9    33d2
                         mov               dl, byte ptr [edi]                            // 0x006d9dfb    8a17
                         add               edx, 0x04                                     // 0x006d9dfd    83c204
                         add.s             eax, edx                                      // 0x006d9e00    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006d9e02    898614020000
_jmp_addr_0x006d9e08:    cmp               dword ptr [data_bytes + 0x226994], ebx        // 0x006d9e08    391d94c9be00
                         {disp32} lea      edi, dword ptr [ebp + 0x00000580]             // 0x006d9e0e    8dbd80050000
                         {disp8} je        _jmp_addr_0x006d9e79                          // 0x006d9e14    7463
                         push              ebx                                           // 0x006d9e16    53
                         push              0x4                                           // 0x006d9e17    6a04
                         push              edi                                           // 0x006d9e19    57
                         mov.s             ecx, esi                                      // 0x006d9e1a    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006d9e1c    e8bf2a0e00
                         cmp               eax, 0x03                                     // 0x006d9e21    83f803
                         {disp8} jne       _jmp_addr_0x006d9e2c                          // 0x006d9e24    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebx        // 0x006d9e26    891d94c9be00
_jmp_addr_0x006d9e2c:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9e2c    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d9e32    33c0
                         mov               al, byte ptr [edi]                            // 0x006d9e34    8a07
                         add               eax, 0x04                                     // 0x006d9e36    83c004
                         add.s             ecx, eax                                      // 0x006d9e39    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9e3b    898e14020000
                         cmp               dword ptr [data_bytes + 0x226994], ebx        // 0x006d9e41    391d94c9be00
                         {disp8} je        _jmp_addr_0x006d9e79                          // 0x006d9e47    7430
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x006d9e49    8d4c2418
                         push              ecx                                           // 0x006d9e4d    51
                         mov.s             ecx, esi                                      // 0x006d9e4e    8bce
                         call              ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x006d9e50    e84bd9d2ff
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x006d9e55    8b442418
                         xor.s             edi, edi                                      // 0x006d9e59    33ff
                         cmp.s             eax, ebx                                      // 0x006d9e5b    3bc3
                         {disp8} jbe       _jmp_addr_0x006d9e79                          // 0x006d9e5d    761a
                         {disp32} lea      ebx, dword ptr [ebp + 0x000003cc]             // 0x006d9e5f    8d9dcc030000
_jmp_addr_0x006d9e65:    push              ebx                                           // 0x006d9e65    53
                         mov.s             ecx, esi                                      // 0x006d9e66    8bce
                         call              _jmp_addr_0x004e9590                          // 0x006d9e68    e823f7e0ff
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x006d9e6d    8b442418
                         inc               edi                                           // 0x006d9e71    47
                         add               ebx, 0x04                                     // 0x006d9e72    83c304
                         cmp.s             edi, eax                                      // 0x006d9e75    3bf8
                         .byte             0x72, 0xec// {disp8} jb _jmp_addr_0x006d9e65  // 0x006d9e77    72ec
_jmp_addr_0x006d9e79:    {disp32} lea      edx, dword ptr [ebp + 0x00000398]             // 0x006d9e79    8d9598030000
                         push              edx                                           // 0x006d9e7f    52
                         mov.s             ecx, esi                                      // 0x006d9e80    8bce
                         call              _jmp_addr_0x005622b0                          // 0x006d9e82    e82984e8ff
                         {disp32} lea      eax, dword ptr [ebp + 0x000000c4]             // 0x006d9e87    8d85c4000000
                         push              eax                                           // 0x006d9e8d    50
                         mov.s             ecx, esi                                      // 0x006d9e8e    8bce
                         call              _jmp_addr_0x005622b0                          // 0x006d9e90    e81b84e8ff
                         {disp32} lea      ecx, dword ptr [ebp + 0x000000d4]             // 0x006d9e95    8d8dd4000000
                         push              ecx                                           // 0x006d9e9b    51
                         mov.s             ecx, esi                                      // 0x006d9e9c    8bce
                         call              _jmp_addr_0x005622b0                          // 0x006d9e9e    e80d84e8ff
                         {disp32} lea      edi, dword ptr [ebp + 0x000003b0]             // 0x006d9ea3    8dbdb0030000
                         mov               ebx, 0x00000003                               // 0x006d9ea9    bb03000000
_jmp_addr_0x006d9eae:    push              edi                                           // 0x006d9eae    57
                         mov.s             ecx, esi                                      // 0x006d9eaf    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9eb1    e8ca82e8ff
                         add               edi, 0x04                                     // 0x006d9eb6    83c704
                         dec               ebx                                           // 0x006d9eb9    4b
                         {disp8} jne       _jmp_addr_0x006d9eae                          // 0x006d9eba    75f2
                         {disp32} lea      edi, dword ptr [ebp + 0x000003bc]             // 0x006d9ebc    8dbdbc030000
                         mov               ebx, 0x00000004                               // 0x006d9ec2    bb04000000
_jmp_addr_0x006d9ec7:    push              edi                                           // 0x006d9ec7    57
                         mov.s             ecx, esi                                      // 0x006d9ec8    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9eca    e8b182e8ff
                         add               edi, 0x04                                     // 0x006d9ecf    83c704
                         dec               ebx                                           // 0x006d9ed2    4b
                         {disp8} jne       _jmp_addr_0x006d9ec7                          // 0x006d9ed3    75f2
                         {disp8} lea       edi, dword ptr [ebp + 0x7c]                   // 0x006d9ed5    8d7d7c
                         {disp8} lea       ebx, dword ptr [ebp + 0x4c]                   // 0x006d9ed8    8d5d4c
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000003            // 0x006d9edb    c744241803000000
_jmp_addr_0x006d9ee3:    mov               ebp, 0x00000003                               // 0x006d9ee3    bd03000000
_jmp_addr_0x006d9ee8:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x006d9ee8    a194c9be00
                         test              eax, eax                                      // 0x006d9eed    85c0
                         {disp8} je        _jmp_addr_0x006d9f1f                          // 0x006d9eef    742e
                         push              0x0                                           // 0x006d9ef1    6a00
                         push              0x1                                           // 0x006d9ef3    6a01
                         push              ebx                                           // 0x006d9ef5    53
                         mov.s             ecx, esi                                      // 0x006d9ef6    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006d9ef8    e8e3290e00
                         cmp               eax, 0x03                                     // 0x006d9efd    83f803
                         {disp8} jne       _jmp_addr_0x006d9f0c                          // 0x006d9f00    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x006d9f02    c70594c9be0000000000
_jmp_addr_0x006d9f0c:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006d9f0c    8b8614020000
                         xor.s             edx, edx                                      // 0x006d9f12    33d2
                         mov               dl, byte ptr [ebx]                            // 0x006d9f14    8a13
                         inc               edx                                           // 0x006d9f16    42
                         add.s             eax, edx                                      // 0x006d9f17    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006d9f19    898614020000
_jmp_addr_0x006d9f1f:    {disp8} lea       eax, dword ptr [edi + -0x24]                  // 0x006d9f1f    8d47dc
                         push              eax                                           // 0x006d9f22    50
                         mov.s             ecx, esi                                      // 0x006d9f23    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9f25    e85682e8ff
                         push              edi                                           // 0x006d9f2a    57
                         mov.s             ecx, esi                                      // 0x006d9f2b    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9f2d    e84e82e8ff
                         {disp8} lea       ecx, dword ptr [edi + 0x24]                   // 0x006d9f32    8d4f24
                         push              ecx                                           // 0x006d9f35    51
                         mov.s             ecx, esi                                      // 0x006d9f36    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9f38    e84382e8ff
                         add               edi, 0x04                                     // 0x006d9f3d    83c704
                         inc               ebx                                           // 0x006d9f40    43
                         dec               ebp                                           // 0x006d9f41    4d
                         {disp8} jne       _jmp_addr_0x006d9ee8                          // 0x006d9f42    75a4
                         dec               dword ptr [esp + 0x18]                        // 0x006d9f44    ff4c2418
                         {disp8} jne       _jmp_addr_0x006d9ee3                          // 0x006d9f48    7599
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x006d9f4a    8b7c2410
                         {disp32} lea      ebx, dword ptr [edi + 0x00000450]             // 0x006d9f4e    8d9f50040000
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000000            // 0x006d9f54    c744241800000000
                         add               edi, 0x00000240                               // 0x006d9f5c    81c740020000
_jmp_addr_0x006d9f62:    mov               ebp, 0x00000009                               // 0x006d9f62    bd09000000
_jmp_addr_0x006d9f67:    push              edi                                           // 0x006d9f67    57
                         mov.s             ecx, esi                                      // 0x006d9f68    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9f6a    e81182e8ff
                         push              edi                                           // 0x006d9f6f    57
                         mov.s             ecx, esi                                      // 0x006d9f70    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9f72    e80982e8ff
                         add               edi, 0x04                                     // 0x006d9f77    83c704
                         dec               ebp                                           // 0x006d9f7a    4d
                         {disp8} jne       _jmp_addr_0x006d9f67                          // 0x006d9f7b    75ea
                         cmp               dword ptr [esp + 0x18], 0x08                  // 0x006d9f7d    837c241808
                         {disp32} jge      _jmp_addr_0x006da014                          // 0x006d9f82    0f8d8c000000
                         {disp8} lea       ebp, dword ptr [ebx + -0x20]                  // 0x006d9f88    8d6be0
                         {disp8} lea       edx, dword ptr [ebp + -0x20]                  // 0x006d9f8b    8d55e0
                         push              edx                                           // 0x006d9f8e    52
                         mov.s             ecx, esi                                      // 0x006d9f8f    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9f91    e8ea81e8ff
                         push              ebp                                           // 0x006d9f96    55
                         mov.s             ecx, esi                                      // 0x006d9f97    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006d9f99    e8e281e8ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x006d9f9e    a194c9be00
                         test              eax, eax                                      // 0x006d9fa3    85c0
                         {disp8} je        _jmp_addr_0x006da014                          // 0x006d9fa5    746d
                         push              0x0                                           // 0x006d9fa7    6a00
                         push              0x4                                           // 0x006d9fa9    6a04
                         push              ebx                                           // 0x006d9fab    53
                         mov.s             ecx, esi                                      // 0x006d9fac    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006d9fae    e82d290e00
                         cmp               eax, 0x03                                     // 0x006d9fb3    83f803
                         {disp8} jne       _jmp_addr_0x006d9fc2                          // 0x006d9fb6    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x006d9fb8    c70594c9be0000000000
_jmp_addr_0x006d9fc2:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006d9fc2    8b8e14020000
                         xor.s             eax, eax                                      // 0x006d9fc8    33c0
                         mov               al, byte ptr [ebx]                            // 0x006d9fca    8a03
                         add               eax, 0x04                                     // 0x006d9fcc    83c004
                         add.s             ecx, eax                                      // 0x006d9fcf    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006d9fd1    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x006d9fd7    a194c9be00
                         test              eax, eax                                      // 0x006d9fdc    85c0
                         {disp8} je        _jmp_addr_0x006da014                          // 0x006d9fde    7434
                         push              0x0                                           // 0x006d9fe0    6a00
                         push              0x4                                           // 0x006d9fe2    6a04
                         {disp8} lea       ebp, dword ptr [ebx + 0x20]                   // 0x006d9fe4    8d6b20
                         push              ebp                                           // 0x006d9fe7    55
                         mov.s             ecx, esi                                      // 0x006d9fe8    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006d9fea    e8f1280e00
                         cmp               eax, 0x03                                     // 0x006d9fef    83f803
                         {disp8} jne       _jmp_addr_0x006d9ffe                          // 0x006d9ff2    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x006d9ff4    c70594c9be0000000000
_jmp_addr_0x006d9ffe:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006d9ffe    8b8614020000
                         xor.s             ecx, ecx                                      // 0x006da004    33c9
                         {disp8} mov       cl, byte ptr [ebp + 0x00]                     // 0x006da006    8a4d00
                         add               ecx, 0x4                                      // 0x006da009    83c104
                         add.s             eax, ecx                                      // 0x006da00c    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da00e    898614020000
_jmp_addr_0x006da014:    {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x006da014    8b442418
                         inc               eax                                           // 0x006da018    40
                         add               ebx, 0x04                                     // 0x006da019    83c304
                         cmp               eax, 0x09                                     // 0x006da01c    83f809
                         {disp8} mov       dword ptr [esp + 0x18], eax                   // 0x006da01f    89442418
                         {disp32} jl       _jmp_addr_0x006d9f62                          // 0x006da023    0f8c39ffffff
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x006da029    8b7c2410
                         {disp32} lea      ebx, dword ptr [edi + 0x000004e4]             // 0x006da02d    8d9fe4040000
                         mov               ebp, 0x00000012                               // 0x006da033    bd12000000
_jmp_addr_0x006da038:    push              ebx                                           // 0x006da038    53
                         mov.s             ecx, esi                                      // 0x006da039    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006da03b    e84081e8ff
                         add               ebx, 0x04                                     // 0x006da040    83c304
                         dec               ebp                                           // 0x006da043    4d
                         {disp8} jne       _jmp_addr_0x006da038                          // 0x006da044    75f2
                         {disp32} lea      edx, dword ptr [edi + 0x00000494]             // 0x006da046    8d9794040000
                         push              edx                                           // 0x006da04c    52
                         mov.s             ecx, esi                                      // 0x006da04d    8bce
                         call              _jmp_addr_0x005622b0                          // 0x006da04f    e85c82e8ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x006da054    a194c9be00
                         xor.s             ebp, ebp                                      // 0x006da059    33ed
                         cmp.s             eax, ebp                                      // 0x006da05b    3bc5
                         {disp32} lea      ebx, dword ptr [edi + 0x00000490]             // 0x006da05d    8d9f90040000
                         {disp8} je        _jmp_addr_0x006da090                          // 0x006da063    742b
                         push              ebp                                           // 0x006da065    55
                         push              0x4                                           // 0x006da066    6a04
                         push              ebx                                           // 0x006da068    53
                         mov.s             ecx, esi                                      // 0x006da069    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da06b    e870280e00
                         cmp               eax, 0x03                                     // 0x006da070    83f803
                         {disp8} jne       _jmp_addr_0x006da07b                          // 0x006da073    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da075    892d94c9be00
_jmp_addr_0x006da07b:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006da07b    8b8e14020000
                         xor.s             eax, eax                                      // 0x006da081    33c0
                         mov               al, byte ptr [ebx]                            // 0x006da083    8a03
                         add               eax, 0x04                                     // 0x006da085    83c004
                         add.s             ecx, eax                                      // 0x006da088    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006da08a    898e14020000
_jmp_addr_0x006da090:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da090    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x00000388]             // 0x006da096    8d9f88030000
                         {disp8} je        _jmp_addr_0x006da0c9                          // 0x006da09c    742b
                         push              ebp                                           // 0x006da09e    55
                         push              0x4                                           // 0x006da09f    6a04
                         push              ebx                                           // 0x006da0a1    53
                         mov.s             ecx, esi                                      // 0x006da0a2    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da0a4    e837280e00
                         cmp               eax, 0x03                                     // 0x006da0a9    83f803
                         {disp8} jne       _jmp_addr_0x006da0b4                          // 0x006da0ac    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da0ae    892d94c9be00
_jmp_addr_0x006da0b4:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da0b4    8b8614020000
                         xor.s             ecx, ecx                                      // 0x006da0ba    33c9
                         mov               cl, byte ptr [ebx]                            // 0x006da0bc    8a0b
                         add               ecx, 0x4                                      // 0x006da0be    83c104
                         add.s             eax, ecx                                      // 0x006da0c1    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da0c3    898614020000
_jmp_addr_0x006da0c9:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da0c9    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x0000038c]             // 0x006da0cf    8d9f8c030000
                         {disp8} je        _jmp_addr_0x006da102                          // 0x006da0d5    742b
                         push              ebp                                           // 0x006da0d7    55
                         push              0x2                                           // 0x006da0d8    6a02
                         push              ebx                                           // 0x006da0da    53
                         mov.s             ecx, esi                                      // 0x006da0db    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da0dd    e8fe270e00
                         cmp               eax, 0x03                                     // 0x006da0e2    83f803
                         {disp8} jne       _jmp_addr_0x006da0ed                          // 0x006da0e5    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da0e7    892d94c9be00
_jmp_addr_0x006da0ed:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da0ed    8b8614020000
                         xor.s             edx, edx                                      // 0x006da0f3    33d2
                         mov               dl, byte ptr [ebx]                            // 0x006da0f5    8a13
                         add               edx, 0x02                                     // 0x006da0f7    83c202
                         add.s             eax, edx                                      // 0x006da0fa    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da0fc    898614020000
_jmp_addr_0x006da102:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da102    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x00000390]             // 0x006da108    8d9f90030000
                         {disp8} je        _jmp_addr_0x006da13b                          // 0x006da10e    742b
                         push              ebp                                           // 0x006da110    55
                         push              0x4                                           // 0x006da111    6a04
                         push              ebx                                           // 0x006da113    53
                         mov.s             ecx, esi                                      // 0x006da114    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da116    e8c5270e00
                         cmp               eax, 0x03                                     // 0x006da11b    83f803
                         {disp8} jne       _jmp_addr_0x006da126                          // 0x006da11e    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da120    892d94c9be00
_jmp_addr_0x006da126:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006da126    8b8e14020000
                         xor.s             eax, eax                                      // 0x006da12c    33c0
                         mov               al, byte ptr [ebx]                            // 0x006da12e    8a03
                         add               eax, 0x04                                     // 0x006da130    83c004
                         add.s             ecx, eax                                      // 0x006da133    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006da135    898e14020000
_jmp_addr_0x006da13b:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da13b    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x00000394]             // 0x006da141    8d9f94030000
                         {disp8} je        _jmp_addr_0x006da174                          // 0x006da147    742b
                         push              ebp                                           // 0x006da149    55
                         push              0x4                                           // 0x006da14a    6a04
                         push              ebx                                           // 0x006da14c    53
                         mov.s             ecx, esi                                      // 0x006da14d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da14f    e88c270e00
                         cmp               eax, 0x03                                     // 0x006da154    83f803
                         {disp8} jne       _jmp_addr_0x006da15f                          // 0x006da157    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da159    892d94c9be00
_jmp_addr_0x006da15f:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da15f    8b8614020000
                         xor.s             ecx, ecx                                      // 0x006da165    33c9
                         mov               cl, byte ptr [ebx]                            // 0x006da167    8a0b
                         add               ecx, 0x4                                      // 0x006da169    83c104
                         add.s             eax, ecx                                      // 0x006da16c    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da16e    898614020000
_jmp_addr_0x006da174:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da174    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x000003e4]             // 0x006da17a    8d9fe4030000
                         {disp8} je        _jmp_addr_0x006da1ad                          // 0x006da180    742b
                         push              ebp                                           // 0x006da182    55
                         push              0x4                                           // 0x006da183    6a04
                         push              ebx                                           // 0x006da185    53
                         mov.s             ecx, esi                                      // 0x006da186    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da188    e853270e00
                         cmp               eax, 0x03                                     // 0x006da18d    83f803
                         {disp8} jne       _jmp_addr_0x006da198                          // 0x006da190    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da192    892d94c9be00
_jmp_addr_0x006da198:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da198    8b8614020000
                         xor.s             edx, edx                                      // 0x006da19e    33d2
                         mov               dl, byte ptr [ebx]                            // 0x006da1a0    8a13
                         add               edx, 0x04                                     // 0x006da1a2    83c204
                         add.s             eax, edx                                      // 0x006da1a5    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da1a7    898614020000
_jmp_addr_0x006da1ad:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da1ad    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x000003e8]             // 0x006da1b3    8d9fe8030000
                         {disp8} je        _jmp_addr_0x006da1e6                          // 0x006da1b9    742b
                         push              ebp                                           // 0x006da1bb    55
                         push              0x4                                           // 0x006da1bc    6a04
                         push              ebx                                           // 0x006da1be    53
                         mov.s             ecx, esi                                      // 0x006da1bf    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da1c1    e81a270e00
                         cmp               eax, 0x03                                     // 0x006da1c6    83f803
                         {disp8} jne       _jmp_addr_0x006da1d1                          // 0x006da1c9    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da1cb    892d94c9be00
_jmp_addr_0x006da1d1:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006da1d1    8b8e14020000
                         xor.s             eax, eax                                      // 0x006da1d7    33c0
                         mov               al, byte ptr [ebx]                            // 0x006da1d9    8a03
                         add               eax, 0x04                                     // 0x006da1db    83c004
                         add.s             ecx, eax                                      // 0x006da1de    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006da1e0    898e14020000
_jmp_addr_0x006da1e6:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da1e6    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x000003ec]             // 0x006da1ec    8d9fec030000
                         {disp8} je        _jmp_addr_0x006da21f                          // 0x006da1f2    742b
                         push              ebp                                           // 0x006da1f4    55
                         push              0x4                                           // 0x006da1f5    6a04
                         push              ebx                                           // 0x006da1f7    53
                         mov.s             ecx, esi                                      // 0x006da1f8    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da1fa    e8e1260e00
                         cmp               eax, 0x03                                     // 0x006da1ff    83f803
                         {disp8} jne       _jmp_addr_0x006da20a                          // 0x006da202    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da204    892d94c9be00
_jmp_addr_0x006da20a:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da20a    8b8614020000
                         xor.s             ecx, ecx                                      // 0x006da210    33c9
                         mov               cl, byte ptr [ebx]                            // 0x006da212    8a0b
                         add               ecx, 0x4                                      // 0x006da214    83c104
                         add.s             eax, ecx                                      // 0x006da217    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da219    898614020000
_jmp_addr_0x006da21f:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da21f    392d94c9be00
                         {disp32} lea      ebx, dword ptr [edi + 0x000003f0]             // 0x006da225    8d9ff0030000
                         {disp8} je        _jmp_addr_0x006da258                          // 0x006da22b    742b
                         push              ebp                                           // 0x006da22d    55
                         push              0x4                                           // 0x006da22e    6a04
                         push              ebx                                           // 0x006da230    53
                         mov.s             ecx, esi                                      // 0x006da231    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da233    e8a8260e00
                         cmp               eax, 0x03                                     // 0x006da238    83f803
                         {disp8} jne       _jmp_addr_0x006da243                          // 0x006da23b    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da23d    892d94c9be00
_jmp_addr_0x006da243:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da243    8b8614020000
                         xor.s             edx, edx                                      // 0x006da249    33d2
                         mov               dl, byte ptr [ebx]                            // 0x006da24b    8a13
                         add               edx, 0x04                                     // 0x006da24d    83c204
                         add.s             eax, edx                                      // 0x006da250    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da252    898614020000
_jmp_addr_0x006da258:    {disp32} lea      eax, dword ptr [edi + 0x000003f4]             // 0x006da258    8d87f4030000
                         push              eax                                           // 0x006da25e    50
                         mov.s             ecx, esi                                      // 0x006da25f    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006da261    e81a7fe8ff
                         {disp32} lea      ecx, dword ptr [edi + 0x000003f8]             // 0x006da266    8d8ff8030000
                         push              ecx                                           // 0x006da26c    51
                         mov.s             ecx, esi                                      // 0x006da26d    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006da26f    e80c7fe8ff
                         {disp32} lea      edx, dword ptr [edi + 0x000003fc]             // 0x006da274    8d97fc030000
                         push              edx                                           // 0x006da27a    52
                         mov.s             ecx, esi                                      // 0x006da27b    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006da27d    e8fe7ee8ff
                         {disp32} lea      eax, dword ptr [edi + 0x00000384]             // 0x006da282    8d8784030000
                         push              eax                                           // 0x006da288    50
                         mov.s             ecx, esi                                      // 0x006da289    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x006da28b    e8f07ee8ff
                         cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da290    392d94c9be00
                         {disp8} lea       ebx, dword ptr [edi + 0x3c]                   // 0x006da296    8d5f3c
                         {disp8} je        _jmp_addr_0x006da2c6                          // 0x006da299    742b
                         push              ebp                                           // 0x006da29b    55
                         push              0x4                                           // 0x006da29c    6a04
                         push              ebx                                           // 0x006da29e    53
                         mov.s             ecx, esi                                      // 0x006da29f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da2a1    e83a260e00
                         cmp               eax, 0x03                                     // 0x006da2a6    83f803
                         {disp8} jne       _jmp_addr_0x006da2b1                          // 0x006da2a9    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da2ab    892d94c9be00
_jmp_addr_0x006da2b1:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da2b1    8b8614020000
                         xor.s             ecx, ecx                                      // 0x006da2b7    33c9
                         mov               cl, byte ptr [ebx]                            // 0x006da2b9    8a0b
                         add               ecx, 0x4                                      // 0x006da2bb    83c104
                         add.s             eax, ecx                                      // 0x006da2be    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da2c0    898614020000
_jmp_addr_0x006da2c6:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x006da2c6    392d94c9be00
                         {disp8} lea       ebx, dword ptr [edi + 0x44]                   // 0x006da2cc    8d5f44
                         {disp8} je        _jmp_addr_0x006da2fc                          // 0x006da2cf    742b
                         push              ebp                                           // 0x006da2d1    55
                         push              0x2                                           // 0x006da2d2    6a02
                         push              ebx                                           // 0x006da2d4    53
                         mov.s             ecx, esi                                      // 0x006da2d5    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da2d7    e804260e00
                         cmp               eax, 0x03                                     // 0x006da2dc    83f803
                         {disp8} jne       _jmp_addr_0x006da2e7                          // 0x006da2df    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da2e1    892d94c9be00
_jmp_addr_0x006da2e7:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x006da2e7    8b8614020000
                         xor.s             edx, edx                                      // 0x006da2ed    33d2
                         mov               dl, byte ptr [ebx]                            // 0x006da2ef    8a13
                         add               edx, 0x02                                     // 0x006da2f1    83c202
                         add.s             eax, edx                                      // 0x006da2f4    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x006da2f6    898614020000
_jmp_addr_0x006da2fc:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x006da2fc    a194c9be00
                         add               edi, 0x46                                     // 0x006da301    83c746
                         cmp.s             eax, ebp                                      // 0x006da304    3bc5
                         {disp8} je        _jmp_addr_0x006da333                          // 0x006da306    742b
                         push              ebp                                           // 0x006da308    55
                         push              0x2                                           // 0x006da309    6a02
                         push              edi                                           // 0x006da30b    57
                         mov.s             ecx, esi                                      // 0x006da30c    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x006da30e    e8cd250e00
                         cmp               eax, 0x03                                     // 0x006da313    83f803
                         {disp8} jne       _jmp_addr_0x006da31e                          // 0x006da316    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x006da318    892d94c9be00
_jmp_addr_0x006da31e:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x006da31e    8b8e14020000
                         xor.s             eax, eax                                      // 0x006da324    33c0
                         mov               al, byte ptr [edi]                            // 0x006da326    8a07
                         add               eax, 0x02                                     // 0x006da328    83c002
                         add.s             ecx, eax                                      // 0x006da32b    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x006da32d    898e14020000
_jmp_addr_0x006da333:    pop               edi                                           // 0x006da333    5f
                         pop               ebx                                           // 0x006da334    5b
                         pop               esi                                           // 0x006da335    5e
                         mov               eax, 0x00000001                               // 0x006da336    b801000000
                         pop               ebp                                           // 0x006da33b    5d
                         pop               ecx                                           // 0x006da33c    59
                         ret               0x0004                                        // 0x006da33d    c20400
_jmp_addr_0x006da340:    pop               esi                                           // 0x006da340    5e
                         xor.s             eax, eax                                      // 0x006da341    33c0
                         pop               ebp                                           // 0x006da343    5d
                         pop               ecx                                           // 0x006da344    59
                         ret               0x0004                                        // 0x006da345    c20400
                         nop                                                             // 0x006da348    90
                         nop                                                             // 0x006da349    90
                         nop                                                             // 0x006da34a    90
                         nop                                                             // 0x006da34b    90
                         nop                                                             // 0x006da34c    90
                         nop                                                             // 0x006da34d    90
                         nop                                                             // 0x006da34e    90
                         nop                                                             // 0x006da34f    90
_jmp_addr_0x006da350:    sub               esp, 0x30                                     // 0x006da350    83ec30
                         push              ebx                                           // 0x006da353    53
                         mov.s             ebx, ecx                                      // 0x006da354    8bd9
                         push              ebp                                           // 0x006da356    55
                         push              esi                                           // 0x006da357    56
                         {disp32} lea      edx, dword ptr [ebx + 0x000003cc]             // 0x006da358    8d93cc030000
                         push              edi                                           // 0x006da35e    57
                         xor.s             ebp, ebp                                      // 0x006da35f    33ed
                         mov               eax, 0x00000004                               // 0x006da361    b804000000
                         mov               ecx, 0x00000006                               // 0x006da366    b906000000
                         mov.s             edi, edx                                      // 0x006da36b    8bfa
                         rep stosd                                                       // 0x006da36d    f3ab
                         {disp8} mov       eax, dword ptr [ebx + 0x48]                   // 0x006da36f    8b4348
                         cmp               eax, 0x06                                     // 0x006da372    83f806
                         mov               dword ptr [edx], ebp                          // 0x006da375    892a
                         {disp32} mov      dword ptr [ebx + 0x000003d0], ebp             // 0x006da377    89abd0030000
                         {disp32} mov      dword ptr [ebx + 0x000003d4], ebp             // 0x006da37d    89abd4030000
                         {disp32} mov      dword ptr [ebx + 0x000003d8], ebp             // 0x006da383    89abd8030000
                         {disp32} mov      dword ptr [ebx + 0x000003dc], ebp             // 0x006da389    89abdc030000
                         {disp32} mov      dword ptr [ebx + 0x000003e0], ebp             // 0x006da38f    89abe0030000
                         {disp32} je       _jmp_addr_0x006da4b6                          // 0x006da395    0f841b010000
                         cmp               eax, 0x07                                     // 0x006da39b    83f807
                         {disp32} je       _jmp_addr_0x006da4b6                          // 0x006da39e    0f8412010000
                         {disp32} lea      esi, dword ptr [ebx + 0x00000398]             // 0x006da3a4    8db398030000
_jmp_addr_0x006da3aa:    {disp8} lea       eax, dword ptr [ebx + 0x14]                   // 0x006da3aa    8d4314
                         mov               ecx, dword ptr [eax]                          // 0x006da3ad    8b08
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x006da3af    8b5004
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x006da3b2    8b4008
                         {disp8} mov       dword ptr [esp + 0x18], eax                   // 0x006da3b5    89442418
                         {disp8} mov       dword ptr [esp + 0x14], edx                   // 0x006da3b9    89542414
                         mov               eax, 0xaaaaaaab                               // 0x006da3bd    b8abaaaaaa
                         mul               ebp                                           // 0x006da3c2    f7e5
                         mov.s             edi, edx                                      // 0x006da3c4    8bfa
                         shr               edi, 2                                        // 0x006da3c6    c1ef02
                         shl               edi, 2                                        // 0x006da3c9    c1e702
                         {disp8} mov       dword ptr [esp + 0x10], ecx                   // 0x006da3cc    894c2410
                         {disp32} fild     dword ptr [edi + _sin_lookup_table]           // 0x006da3d0    db871416c300
                         {disp32} fmul     dword ptr [ebx + 0x00000388]                  // 0x006da3d6    d88b88030000
                         fadd.s            st(0), st(0)                                  // 0x006da3dc    dcc0
                         call              _jmp_addr_0x007a1400                          // 0x006da3de    e81d700c00
                         {disp32} fild     dword ptr [edi + _cos_lookup_table]           // 0x006da3e3    db87141ec300
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x006da3e9    8b4c2410
                         add.s             ecx, eax                                      // 0x006da3ed    03c8
                         {disp32} fmul     dword ptr [ebx + 0x00000388]                  // 0x006da3ef    d88b88030000
                         {disp8} mov       dword ptr [esp + 0x10], ecx                   // 0x006da3f5    894c2410
                         fadd.s            st(0), st(0)                                  // 0x006da3f9    dcc0
                         call              _jmp_addr_0x007a1400                          // 0x006da3fb    e800700c00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x243860]        // 0x006da400    8b0d6098c000
                         {disp8} mov       edx, dword ptr [esp + 0x14]                   // 0x006da406    8b542414
                         push              0x0                                           // 0x006da40a    6a00
                         push              0x3f800000                                    // 0x006da40c    680000803f
                         push              ecx                                           // 0x006da411    51
                         push              0x0                                           // 0x006da412    6a00
                         add.s             edx, eax                                      // 0x006da414    03d0
                         push              0x0                                           // 0x006da416    6a00
                         {disp8} mov       dword ptr [esp + 0x28], edx                   // 0x006da418    89542428
                         {disp8} lea       edx, dword ptr [esp + 0x24]                   // 0x006da41c    8d542424
                         push              0x00c426c0                                    // 0x006da420    68c026c400
                         push              edx                                           // 0x006da425    52
                         call              _jmp_addr_0x006da550                          // 0x006da426    e825010000
                         mov               dword ptr [esi], eax                          // 0x006da42b    8906
                         {disp32} mov      dword ptr [eax + 0x000000e4], 0x00000004      // 0x006da42d    c780e400000004000000
                         mov               eax, dword ptr [esi]                          // 0x006da437    8b06
                         {disp8} mov       ecx, dword ptr [esi + 0x34]                   // 0x006da439    8b4e34
                         add               esp, 0x1c                                     // 0x006da43c    83c41c
                         {disp32} mov      dword ptr [eax + 0x000000e8], ecx             // 0x006da43f    8988e8000000
                         mov               eax, dword ptr [esi]                          // 0x006da445    8b06
                         or                byte ptr [eax + 0x25], 0x10                   // 0x006da447    80482510
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x006da44b    8d54241c
                         push              edx                                           // 0x006da44f    52
                         push              0x0                                           // 0x006da450    6a00
                         push              0x0                                           // 0x006da452    6a00
                         {disp8} lea       eax, dword ptr [esp + 0x34]                   // 0x006da454    8d442434
                         push              eax                                           // 0x006da458    50
                         mov.s             ecx, ebx                                      // 0x006da459    8bcb
                         call              _jmp_addr_0x006d9290                          // 0x006da45b    e830eeffff
                         mov.s             ecx, eax                                      // 0x006da460    8bc8
                         call              @GetLHPoint__9MapCoordsCFv@12                 // 0x006da462    e8d9b7f2ff
                         {disp8} lea       ecx, dword ptr [esp + 0x34]                   // 0x006da467    8d4c2434
                         push              ecx                                           // 0x006da46b    51
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                   // 0x006da46c    8d4c2414
                         mov.s             edi, eax                                      // 0x006da470    8bf8
                         call              @GetLHPoint__9MapCoordsCFv@12                 // 0x006da472    e8c9b7f2ff
                         fld               dword ptr [eax]                               // 0x006da477    d900
                         fsub              dword ptr [edi]                               // 0x006da479    d827
                         mov               ecx, dword ptr [esi]                          // 0x006da47b    8b0e
                         {disp8} fld       dword ptr [eax + 0x08]                        // 0x006da47d    d94008
                         mov               edx, dword ptr [ecx]                          // 0x006da480    8b11
                         {disp8} fsub      dword ptr [edi + 0x08]                        // 0x006da482    d86708
                         fxch              st(1)                                         // 0x006da485    d9c9
                         push              ecx                                           // 0x006da487    51
                         fpatan                                                          // 0x006da488    d9f3
                         {disp32} fsub     dword ptr [rdata_bytes + 0x1e8d8]             // 0x006da48a    d825d8788c00
                         fstp              dword ptr [esp]                               // 0x006da490    d91c24
                         call              dword ptr [edx + 0x524]                       // 0x006da493    ff9224050000
                         add               ebp, 0x00000400                               // 0x006da499    81c500040000
                         add               esi, 0x04                                     // 0x006da49f    83c604
                         cmp               ebp, 0x00001800                               // 0x006da4a2    81fd00180000
                         {disp32} jl       _jmp_addr_0x006da3aa                          // 0x006da4a8    0f8cfcfeffff
                         pop               edi                                           // 0x006da4ae    5f
                         pop               esi                                           // 0x006da4af    5e
                         pop               ebp                                           // 0x006da4b0    5d
                         pop               ebx                                           // 0x006da4b1    5b
                         add               esp, 0x30                                     // 0x006da4b2    83c430
                         ret                                                             // 0x006da4b5    c3
_jmp_addr_0x006da4b6:    xor.s             edi, edi                                      // 0x006da4b6    33ff
                         {disp32} lea      esi, dword ptr [ebx + 0x00000398]             // 0x006da4b8    8db398030000
_jmp_addr_0x006da4be:    {disp32} mov      eax, dword ptr [data_bytes + 0x243860]        // 0x006da4be    a16098c000
                         push              ebp                                           // 0x006da4c3    55
                         push              0x3f800000                                    // 0x006da4c4    680000803f
                         push              eax                                           // 0x006da4c9    50
                         push              ebp                                           // 0x006da4ca    55
                         push              ebp                                           // 0x006da4cb    55
                         push              0x00c426c0                                    // 0x006da4cc    68c026c400
                         push              ebp                                           // 0x006da4d1    55
                         push              edi                                           // 0x006da4d2    57
                         {disp8} lea       ecx, dword ptr [esp + 0x54]                   // 0x006da4d3    8d4c2454
                         push              ecx                                           // 0x006da4d7    51
                         mov.s             ecx, ebx                                      // 0x006da4d8    8bcb
                         call              _jmp_addr_0x006d9290                          // 0x006da4da    e8b1edffff
                         push              eax                                           // 0x006da4df    50
                         call              _jmp_addr_0x006da550                          // 0x006da4e0    e86b000000
                         mov               dword ptr [esi], eax                          // 0x006da4e5    8906
                         {disp32} mov      dword ptr [eax + 0x000000e4], 0x00000004      // 0x006da4e7    c780e400000004000000
                         {disp8} mov       eax, dword ptr [esi + 0x34]                   // 0x006da4f1    8b4634
                         mov               edx, dword ptr [esi]                          // 0x006da4f4    8b16
                         {disp32} mov      dword ptr [edx + 0x000000e8], eax             // 0x006da4f6    8982e8000000
                         mov               eax, dword ptr [esi]                          // 0x006da4fc    8b06
                         or                byte ptr [eax + 0x25], 0x10                   // 0x006da4fe    80482510
                         add               esp, 0x1c                                     // 0x006da502    83c41c
                         inc               edi                                           // 0x006da505    47
                         add               esi, 0x04                                     // 0x006da506    83c604
                         cmp               edi, 0x06                                     // 0x006da509    83ff06
                         {disp8} jl        _jmp_addr_0x006da4be                          // 0x006da50c    7cb0
                         pop               edi                                           // 0x006da50e    5f
                         pop               esi                                           // 0x006da50f    5e
                         pop               ebp                                           // 0x006da510    5d
                         pop               ebx                                           // 0x006da511    5b
                         add               esp, 0x30                                     // 0x006da512    83c430
                         ret                                                             // 0x006da515    c3
                         nop                                                             // 0x006da516    90
                         nop                                                             // 0x006da517    90
                         nop                                                             // 0x006da518    90
                         nop                                                             // 0x006da519    90
                         nop                                                             // 0x006da51a    90
                         nop                                                             // 0x006da51b    90
                         nop                                                             // 0x006da51c    90
                         nop                                                             // 0x006da51d    90
                         nop                                                             // 0x006da51e    90
                         nop                                                             // 0x006da51f    90
_jmp_addr_0x006da520:    {disp8} mov       ecx, dword ptr [ecx + 0x48]                   // 0x006da520    8b4948
                         {disp8} lea       eax, dword ptr [ecx + -0x06]                  // 0x006da523    8d41fa
                         cmp               eax, 0x03                                     // 0x006da526    83f803
                         {disp8} ja        _jmp_addr_0x006da538                          // 0x006da529    770d
                         jmp               dword ptr [eax*4 + 0x6da540]                  // 0x006da52b    ff248540a56d00
                         mov               eax, 0x0093a8b0                               // 0x006da532    b8b0a89300
                         ret                                                             // 0x006da537    c3
_jmp_addr_0x006da538:    mov               eax, 0x0093a820                               // 0x006da538    b820a89300
                         ret                                                             // 0x006da53d    c3

// Snippet: db, [0x006da53e, 0x006da540)
.byte 0x8b, 0xff                  // 0x006da53e

// Snippet: jmptbl, [0x006da540, 0x006da550)
.byte 0x38, 0xa5, 0x6d, 0x00      // 0x006da540
.byte 0x32, 0xa5, 0x6d, 0x00      // 0x006da544
.byte 0x38, 0xa5, 0x6d, 0x00      // 0x006da548
.byte 0x32, 0xa5, 0x6d, 0x00      // 0x006da54c

