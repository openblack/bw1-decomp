.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0060c3f0
.extern @Init__20ObjectCircleIteratorFiRC9MapCoords@16
.extern _jmp_addr_0x0060d740
.extern _jmp_addr_0x0060d750
.extern _jmp_addr_0x0060d760
.extern @ToMap__4GMapFll@16
.extern @InBounds__4GMapCFll@16
.extern @find_or_insert__std__map__SubCollideBlockPosPNewCollide3Obj@16
.extern @find__std__map__SubCollideBlockPosPNewCollide3Obj@16
.extern @GetMapChild__6ObjectFRC9MapCoords@12
.extern _jmp_addr_0x007370b0
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern @__ct__Q210NewCollide3ObjFfP7LHPoint@16

.globl @Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16
.globl ?IsWater@LH3DIsland@@SA_NJJ@Z
.globl @fetch__19CircleHugStateInfoTF9MapCoords@20
.globl _jmp_addr_0x0060d520

start_0x0060d280_0x0060d740:
// Snippet: asm, [0x0060d280, 0x0060d715)
@Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16:    sub               esp, 0x0c                                   // 0x0060d280    83ec0c
                         push              ebx                                         // 0x0060d283    53
                         push              ebp                                         // 0x0060d284    55
                         push              esi                                         // 0x0060d285    56
                         push              edi                                         // 0x0060d286    57
                         {disp8} mov       edi, dword ptr [esp + 0x20]                 // 0x0060d287    8b7c2420
                         xor.s             ebx, ebx                                    // 0x0060d28b    33db
                         cmp.s             edi, ebx                                    // 0x0060d28d    3bfb
                         mov.s             esi, ecx                                    // 0x0060d28f    8bf1
                         {disp8} mov       dword ptr [esi + 0x08], ebx                 // 0x0060d291    895e08
                         {disp8} je        _jmp_addr_0x0060d2e4                        // 0x0060d294    744e
_jmp_addr_0x0060d296:    {disp8} mov       dword ptr [esi + 0x0c], edi                 // 0x0060d296    897e0c
                         mov               eax, dword ptr [edi]                        // 0x0060d299    8b07
                         mov.s             ecx, edi                                    // 0x0060d29b    8bcf
                         call              dword ptr [eax + 0x858]                     // 0x0060d29d    ff9058080000
                         cmp.s             eax, ebx                                    // 0x0060d2a3    3bc3
                         {disp8} mov       dword ptr [esi + 0x04], eax                 // 0x0060d2a5    894604
                         {disp8} jne       _jmp_addr_0x0060d2b1                        // 0x0060d2a8    7507
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                 // 0x0060d2aa    8b4c2424
                         push              ecx                                         // 0x0060d2ae    51
                         {disp8} jmp       _jmp_addr_0x0060d2d3                        // 0x0060d2af    eb22
_jmp_addr_0x0060d2b1:    push              ebx                                         // 0x0060d2b1    53
                         push              0x00be9d68                                  // 0x0060d2b2    68689dbe00
                         push              0x009c7f50                                  // 0x0060d2b7    68507f9c00
                         push              ebx                                         // 0x0060d2bc    53
                         push              edi                                         // 0x0060d2bd    57
                         call              ___RTDynamicCast                            // 0x0060d2be    e856871b00
                         add               esp, 0x14                                   // 0x0060d2c3    83c414
                         test              eax, eax                                    // 0x0060d2c6    85c0
                         {disp32} je       _jmp_addr_0x0060d38f                        // 0x0060d2c8    0f84c1000000
                         {disp8} mov       edx, dword ptr [esp + 0x24]                 // 0x0060d2ce    8b542424
                         push              edx                                         // 0x0060d2d2    52
_jmp_addr_0x0060d2d3:    {disp8} mov       ecx, dword ptr [esi + 0x0c]                 // 0x0060d2d3    8b4e0c
                         call              @GetMapChild__6ObjectFRC9MapCoords@12       // 0x0060d2d6    e885b20200
                         mov.s             edi, eax                                    // 0x0060d2db    8bf8
                         cmp.s             edi, ebx                                    // 0x0060d2dd    3bfb
                         {disp8} mov       dword ptr [esi + 0x08], ebx                 // 0x0060d2df    895e08
                         {disp8} jne       _jmp_addr_0x0060d296                        // 0x0060d2e2    75b2
_jmp_addr_0x0060d2e4:    {disp8} mov       eax, dword ptr [esp + 0x24]                 // 0x0060d2e4    8b442424
                         mov               ebp, dword ptr [eax]                        // 0x0060d2e8    8b28
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                 // 0x0060d2ea    8b4804
                         {disp8} mov       edx, dword ptr [eax + 0x08]                 // 0x0060d2ed    8b5008
                         {disp8} mov       dword ptr [esp + 0x14], ecx                 // 0x0060d2f0    894c2414
                         {disp8} mov       dword ptr [esp + 0x18], edx                 // 0x0060d2f4    89542418
                         {disp8} mov       edi, dword ptr [esp + 0x16]                 // 0x0060d2f8    8b7c2416
                         mov               dword ptr [esi], ebx                        // 0x0060d2fc    891e
                         {disp32} mov      eax, dword ptr [_game]                      // 0x0060d2fe    a15c19d000
                         {disp8} mov       dword ptr [esp + 0x10], ebp                 // 0x0060d303    896c2410
                         {disp8} mov       ebx, dword ptr [esp + 0x12]                 // 0x0060d307    8b5c2412
                         and               edi, 0x0000ffff                             // 0x0060d30b    81e7ffff0000
                         push              edi                                         // 0x0060d311    57
                         and               ebx, 0x0000ffff                             // 0x0060d312    81e3ffff0000
                         push              ebx                                         // 0x0060d318    53
                         {disp32} lea      ecx, dword ptr [eax + 0x000059b8]           // 0x0060d319    8d88b8590000
                         call              @InBounds__4GMapCFll@16                     // 0x0060d31f    e86c530000
                         test              eax, eax                                    // 0x0060d324    85c0
                         {disp8} je        _jmp_addr_0x0060d349                        // 0x0060d326    7421
                         {disp32} mov      ecx, dword ptr [_game]                      // 0x0060d328    8b0d5c19d000
                         push              edi                                         // 0x0060d32e    57
                         push              ebx                                         // 0x0060d32f    53
                         add               ecx, 0x000059b8                             // 0x0060d330    81c1b8590000
                         call              @ToMap__4GMapFll@16                         // 0x0060d336    e825530000
                         push              edi                                         // 0x0060d33b    57
                         push              ebx                                         // 0x0060d33c    53
                         call              ?IsWater@LH3DIsland@@SA_NJJ@Z               // 0x0060d33d    e85e000000
                         add               esp, 0x08                                   // 0x0060d342    83c408
                         test              eax, eax                                    // 0x0060d345    85c0
                         {disp8} je        _jmp_addr_0x0060d375                        // 0x0060d347    742c
_jmp_addr_0x0060d349:    {disp8} mov       eax, dword ptr [esp + 0x14]                 // 0x0060d349    8b442414
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                 // 0x0060d34d    8b4c2418
                         sub               esp, 0x0c                                   // 0x0060d351    83ec0c
                         mov.s             edx, esp                                    // 0x0060d354    8bd4
                         mov               dword ptr [edx], ebp                        // 0x0060d356    892a
                         {disp8} mov       dword ptr [edx + 0x04], eax                 // 0x0060d358    894204
                         {disp8} mov       dword ptr [edx + 0x08], ecx                 // 0x0060d35b    894a08
                         mov               ecx, OFFSET _CircleHugStateInfoT_00d3ee78   // 0x0060d35e    b978eed300
                         call              @fetch__19CircleHugStateInfoTF9MapCoords@20 // 0x0060d363    e8a8000000
                         {disp8} mov       dword ptr [esi + 0x08], eax                 // 0x0060d368    894608
                         pop               edi                                         // 0x0060d36b    5f
                         pop               esi                                         // 0x0060d36c    5e
                         pop               ebp                                         // 0x0060d36d    5d
                         pop               ebx                                         // 0x0060d36e    5b
                         add               esp, 0x0c                                   // 0x0060d36f    83c40c
                         ret               0x0008                                      // 0x0060d372    c20800
_jmp_addr_0x0060d375:    {disp8} mov       edx, dword ptr [esp + 0x24]                 // 0x0060d375    8b542424
                         mov               eax, dword ptr [esi]                        // 0x0060d379    8b06
                         push              edx                                         // 0x0060d37b    52
                         inc               eax                                         // 0x0060d37c    40
                         push              eax                                         // 0x0060d37d    50
                         mov.s             ecx, esi                                    // 0x0060d37e    8bce
                         call              @Init__20ObjectCircleIteratorFiRC9MapCoords@16                        // 0x0060d380    e81bfdffff
                         pop               edi                                         // 0x0060d385    5f
                         pop               esi                                         // 0x0060d386    5e
                         pop               ebp                                         // 0x0060d387    5d
                         pop               ebx                                         // 0x0060d388    5b
                         add               esp, 0x0c                                   // 0x0060d389    83c40c
                         ret               0x0008                                      // 0x0060d38c    c20800
_jmp_addr_0x0060d38f:    pop               edi                                         // 0x0060d38f    5f
                         mov               dword ptr [esi], ebx                        // 0x0060d390    891e
                         pop               esi                                         // 0x0060d392    5e
                         pop               ebp                                         // 0x0060d393    5d
                         pop               ebx                                         // 0x0060d394    5b
                         add               esp, 0x0c                                   // 0x0060d395    83c40c
                         ret               0x0008                                      // 0x0060d398    c20800
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                        // 0x0060d39b    e85944dfff
?IsWater@LH3DIsland@@SA_NJJ@Z:
                              {disp8} mov       ecx, dword ptr [esp + 0x04]                 // 0x0060d3a0    8b4c2404
                         test              ecx, ecx                                    // 0x0060d3a4    85c9
                         push              esi                                         // 0x0060d3a6    56
                         {disp8} jl        _jmp_addr_0x0060d403                        // 0x0060d3a7    7c5a
                         cmp               ecx, 0x000001ff                             // 0x0060d3a9    81f9ff010000
                         {disp8} jg        _jmp_addr_0x0060d403                        // 0x0060d3af    7f52
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                 // 0x0060d3b1    8b44240c
                         test              eax, eax                                    // 0x0060d3b5    85c0
                         {disp8} jl        _jmp_addr_0x0060d403                        // 0x0060d3b7    7c4a
                         cmp               eax, 0x000001ff                             // 0x0060d3b9    3dff010000
                         {disp8} jg        _jmp_addr_0x0060d403                        // 0x0060d3be    7f43
                         mov.s             edx, ecx                                    // 0x0060d3c0    8bd1
                         sar               edx, 4                                      // 0x0060d3c2    c1fa04
                         push              ebx                                         // 0x0060d3c5    53
                         xor.s             ebx, ebx                                    // 0x0060d3c6    33db
                         shl               edx, 5                                      // 0x0060d3c8    c1e205
                         mov.s             esi, eax                                    // 0x0060d3cb    8bf0
                         sar               esi, 4                                      // 0x0060d3cd    c1fe04
                         {disp32} mov      bl, byte ptr [edx + esi + ?g_index_block@LH3DIsland@@3PAY0CA@EA] // 0x0060d3d0    8a9c3264c9e900
                         mov.s             edx, ebx                                    // 0x0060d3d7    8bd3
                         test              edx, edx                                    // 0x0060d3d9    85d2
                         pop               ebx                                         // 0x0060d3db    5b
                         {disp8} je        _jmp_addr_0x0060d403                        // 0x0060d3dc    7425
                         and               ecx, 0x0f                                   // 0x0060d3de    83e10f
                         mov.s             esi, ecx                                    // 0x0060d3e1    8bf1
                         shl               esi, 4                                      // 0x0060d3e3    c1e604
                         and               eax, 0x0f                                   // 0x0060d3e6    83e00f
                         add.s             esi, ecx                                    // 0x0060d3e9    03f1
                         add.s             esi, eax                                    // 0x0060d3eb    03f0
                         {disp32} mov      eax, dword ptr [edx * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]     // 0x0060d3ed    8b049564c5e900
                         lea               eax, dword ptr [eax + esi * 0x8]            // 0x0060d3f4    8d04f0
                         test              eax, eax                                    // 0x0060d3f7    85c0
                         {disp8} je        _jmp_addr_0x0060d403                        // 0x0060d3f9    7408
                         {disp8} mov       al, byte ptr [eax + 0x06]                   // 0x0060d3fb    8a4006
                         pop               esi                                         // 0x0060d3fe    5e
                         and               eax, 0x10                                   // 0x0060d3ff    83e010
                         ret                                                           // 0x0060d402    c3
_jmp_addr_0x0060d403:    mov               eax, 0x00000001                             // 0x0060d403    b801000000
                         pop               esi                                         // 0x0060d408    5e
                         ret                                                           // 0x0060d409    c3
                         call              dword ptr [__imp__PostQuitMessage@4]        // 0x0060d40a    ff15bc978a00
@fetch__19CircleHugStateInfoTF9MapCoords@20:    sub               esp, 0x20                                   // 0x0060d410    83ec20
                         mov               eax, 0x00008000                             // 0x0060d413    b800800000
                         push              esi                                         // 0x0060d418    56
                         push              edi                                         // 0x0060d419    57
                         {disp8} mov       word ptr [esp + 0x2c], ax                   // 0x0060d41a    668944242c
                         {disp8} mov       word ptr [esp + 0x30], ax                   // 0x0060d41f    6689442430
                         {disp8} lea       eax, dword ptr [esp + 0x2c]                 // 0x0060d424    8d44242c
                         mov.s             edi, ecx                                    // 0x0060d428    8bf9
                         push              eax                                         // 0x0060d42a    50
                         {disp8} lea       ecx, dword ptr [esp + 0x0c]                 // 0x0060d42b    8d4c240c
                         push              ecx                                         // 0x0060d42f    51
                         call              _jmp_addr_0x007370b0                        // 0x0060d430    e87b9c1200
                         add               esp, 0x08                                   // 0x0060d435    83c408
                         {disp8} lea       edx, dword ptr [esp + 0x08]                 // 0x0060d438    8d542408
                         push              edx                                         // 0x0060d43c    52
                         {disp8} lea       eax, dword ptr [esp + 0x10]                 // 0x0060d43d    8d442410
                         {disp8} lea       esi, dword ptr [edi + 0x44]                 // 0x0060d441    8d7744
                         push              eax                                         // 0x0060d444    50
                         mov.s             ecx, esi                                    // 0x0060d445    8bce
                         call              @find__std__map__SubCollideBlockPosPNewCollide3Obj@16                        // 0x0060d447    e824660000
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                 // 0x0060d44c    8b44240c
                         cmp               eax, dword ptr [esi + 0x04]                 // 0x0060d450    3b4604
                         {disp8} je        _jmp_addr_0x0060d46c                        // 0x0060d453    7417
                         add               eax, 0x0c                                   // 0x0060d455    83c00c
                         push              eax                                         // 0x0060d458    50
                         {disp8} lea       ecx, dword ptr [esp + 0x0c]                 // 0x0060d459    8d4c240c
                         call              _jmp_addr_0x0060c3f0                        // 0x0060d45d    e88eefffff
                         test              al, al                                      // 0x0060d462    84c0
                         {disp8} jne       _jmp_addr_0x0060d46c                        // 0x0060d464    7506
                         {disp8} lea       eax, dword ptr [esp + 0x0c]                 // 0x0060d466    8d44240c
                         {disp8} jmp       _jmp_addr_0x0060d477                        // 0x0060d46a    eb0b
_jmp_addr_0x0060d46c:    {disp8} mov       ecx, dword ptr [esi + 0x04]                 // 0x0060d46c    8b4e04
                         {disp8} mov       dword ptr [esp + 0x14], ecx                 // 0x0060d46f    894c2414
                         {disp8} lea       eax, dword ptr [esp + 0x14]                 // 0x0060d473    8d442414
_jmp_addr_0x0060d477:    mov               eax, dword ptr [eax]                        // 0x0060d477    8b00
                         cmp               eax, dword ptr [edi + 0x48]                 // 0x0060d479    3b4748
                         {disp8} je        _jmp_addr_0x0060d489                        // 0x0060d47c    740b
                         {disp8} mov       eax, dword ptr [eax + 0x10]                 // 0x0060d47e    8b4010
                         pop               edi                                         // 0x0060d481    5f
                         pop               esi                                         // 0x0060d482    5e
                         add               esp, 0x20                                   // 0x0060d483    83c420
                         ret               0x000c                                      // 0x0060d486    c20c00
_jmp_addr_0x0060d489:    {disp8} mov       edx, dword ptr [esp + 0x34]                 // 0x0060d489    8b542434
                         {disp8} lea       ecx, dword ptr [esp + 0x2c]                 // 0x0060d48d    8d4c242c
                         {disp8} mov       dword ptr [esp + 0x14], edx                 // 0x0060d491    89542414
                         call              ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                      // 0x0060d495    e8f65b1f00
                         {disp8} fadd      dword ptr [esp + 0x14]                      // 0x0060d49a    d8442414
                         push              0x000000d7                                  // 0x0060d49e    68d7000000
                         push              0x00bf42a4                                  // 0x0060d4a3    68a442bf00
                         {disp8} fstp      dword ptr [esp + 0x28]                      // 0x0060d4a8    d95c2428
                         push              0x28                                        // 0x0060d4ac    6a28
                         {disp8} fild      dword ptr [esp + 0x38]                      // 0x0060d4ae    db442438
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]                   // 0x0060d4b2    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x28]                      // 0x0060d4b8    d95c2428
                         {disp8} fild      dword ptr [esp + 0x3c]                      // 0x0060d4bc    db44243c
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]                   // 0x0060d4c0    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x30]                      // 0x0060d4c6    d95c2430
                         call              ___nw__FUl                                  // 0x0060d4ca    e8c1e21c00
                         add               esp, 0x0c                                   // 0x0060d4cf    83c40c
                         test              eax, eax                                    // 0x0060d4d2    85c0
                         {disp8} je        _jmp_addr_0x0060d4eb                        // 0x0060d4d4    7415
                         {disp8} lea       ecx, dword ptr [esp + 0x1c]                 // 0x0060d4d6    8d4c241c
                         push              ecx                                         // 0x0060d4da    51
                         push              0x40e66666                                  // 0x0060d4db    686666e640
                         mov.s             ecx, eax                                    // 0x0060d4e0    8bc8
                         call              @__ct__Q210NewCollide3ObjFfP7LHPoint@16     // 0x0060d4e2    e8a9d82100
                         mov.s             edi, eax                                    // 0x0060d4e7    8bf8
                         {disp8} jmp       _jmp_addr_0x0060d4ed                        // 0x0060d4e9    eb02
_jmp_addr_0x0060d4eb:    xor.s             edi, edi                                    // 0x0060d4eb    33ff
_jmp_addr_0x0060d4ed:    {disp8} mov       edx, dword ptr [esp + 0x08]                 // 0x0060d4ed    8b542408
                         {disp8} lea       eax, dword ptr [esp + 0x14]                 // 0x0060d4f1    8d442414
                         push              eax                                         // 0x0060d4f5    50
                         {disp8} lea       ecx, dword ptr [esp + 0x10]                 // 0x0060d4f6    8d4c2410
                         push              ecx                                         // 0x0060d4fa    51
                         mov.s             ecx, esi                                    // 0x0060d4fb    8bce
                         {disp8} mov       dword ptr [esp + 0x1c], edx                 // 0x0060d4fd    8954241c
                         {disp8} mov       dword ptr [esp + 0x20], 0x00000000          // 0x0060d501    c744242000000000
                         call              @find_or_insert__std__map__SubCollideBlockPosPNewCollide3Obj@16                        // 0x0060d509    e822630000
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                 // 0x0060d50e    8b54240c
                         {disp8} mov       dword ptr [edx + 0x10], edi                 // 0x0060d512    897a10
                         mov.s             eax, edi                                    // 0x0060d515    8bc7
                         pop               edi                                         // 0x0060d517    5f
                         pop               esi                                         // 0x0060d518    5e
                         add               esp, 0x20                                   // 0x0060d519    83c420
                         ret               0x000c                                      // 0x0060d51c    c20c00
                         nop                                                           // 0x0060d51f    90
_jmp_addr_0x0060d520:    sub               esp, 0x0c                                   // 0x0060d520    83ec0c
                         push              ebx                                         // 0x0060d523    53
                         push              ebp                                         // 0x0060d524    55
                         push              esi                                         // 0x0060d525    56
                         mov.s             esi, ecx                                    // 0x0060d526    8bf1
                         {disp8} mov       eax, dword ptr [esi + 0x08]                 // 0x0060d528    8b4608
                         xor.s             ebp, ebp                                    // 0x0060d52b    33ed
                         cmp.s             eax, ebp                                    // 0x0060d52d    3bc5
                         push              edi                                         // 0x0060d52f    57
                         {disp32} je       _jmp_addr_0x0060d635                        // 0x0060d530    0f84ff000000
                         {disp8} mov       ebx, dword ptr [esp + 0x20]                 // 0x0060d536    8b5c2420
                         mov               edi, dword ptr [esi]                        // 0x0060d53a    8b3e
                         mov.s             eax, ebx                                    // 0x0060d53c    8bc3
                         mov               ecx, dword ptr [eax]                        // 0x0060d53e    8b08
                         {disp8} mov       edx, dword ptr [eax + 0x04]                 // 0x0060d540    8b5004
                         {disp8} mov       eax, dword ptr [eax + 0x08]                 // 0x0060d543    8b4008
                         inc               edi                                         // 0x0060d546    47
                         {disp8} mov       dword ptr [esp + 0x18], eax                 // 0x0060d547    89442418
                         {disp8} lea       eax, dword ptr [edi + -0x01]                // 0x0060d54b    8d47ff
                         cmp               eax, 0x08                                   // 0x0060d54e    83f808
                         {disp8} mov       dword ptr [esp + 0x10], ecx                 // 0x0060d551    894c2410
                         {disp8} mov       dword ptr [esp + 0x14], edx                 // 0x0060d555    89542414
                         {disp8} ja        _jmp_addr_0x0060d567                        // 0x0060d559    770c
                         jmp               dword ptr [eax*4 + 0x60d718]                // 0x0060d55b    ff248518d76000
                         {disp8} inc       word ptr [esp + 0x12]                       // 0x0060d562    66ff442412
_jmp_addr_0x0060d567:    {disp8} lea       ecx, dword ptr [esp + 0x10]                 // 0x0060d567    8d4c2410
                         push              ecx                                         // 0x0060d56b    51
                         mov               dword ptr [esi], edi                        // 0x0060d56c    893e
                         call              _jmp_addr_0x0060d760                        // 0x0060d56e    e8ed010000
                         add               esp, 0x04                                   // 0x0060d573    83c404
                         test              al, al                                      // 0x0060d576    84c0
                         {disp32} jne      _jmp_addr_0x0060d61f                        // 0x0060d578    0f85a1000000
                         {disp8} mov       eax, dword ptr [esp + 0x10]                 // 0x0060d57e    8b442410
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                 // 0x0060d582    8b4c2414
                         sub               esp, 0x0c                                   // 0x0060d586    83ec0c
                         mov.s             edx, esp                                    // 0x0060d589    8bd4
                         mov               dword ptr [edx], eax                        // 0x0060d58b    8902
                         {disp8} mov       eax, dword ptr [esp + 0x24]                 // 0x0060d58d    8b442424
                         {disp8} mov       dword ptr [edx + 0x04], ecx                 // 0x0060d591    894a04
                         mov               ecx, OFFSET _CircleHugStateInfoT_00d3ee78   // 0x0060d594    b978eed300
                         {disp8} mov       dword ptr [edx + 0x08], eax                 // 0x0060d599    894208
                         call              @fetch__19CircleHugStateInfoTF9MapCoords@20 // 0x0060d59c    e86ffeffff
                         {disp8} mov       dword ptr [esi + 0x08], eax                 // 0x0060d5a1    894608
                         pop               edi                                         // 0x0060d5a4    5f
                         pop               esi                                         // 0x0060d5a5    5e
                         pop               ebp                                         // 0x0060d5a6    5d
                         pop               ebx                                         // 0x0060d5a7    5b
                         add               esp, 0x0c                                   // 0x0060d5a8    83c40c
                         ret               0x0004                                      // 0x0060d5ab    c20400
                         dec               word ptr [esp + 0x12]                       // 0x0060d5ae    66ff4c2412
                         {disp8} jmp       _jmp_addr_0x0060d567                        // 0x0060d5b3    ebb2
                         {disp8} inc       word ptr [esp + 0x16]                       // 0x0060d5b5    66ff442416
                         {disp8} jmp       _jmp_addr_0x0060d567                        // 0x0060d5ba    ebab
                         dec               word ptr [esp + 0x16]                       // 0x0060d5bc    66ff4c2416
                         {disp8} jmp       _jmp_addr_0x0060d567                        // 0x0060d5c1    eba4
                         dec               word ptr [esp + 0x16]                       // 0x0060d5c3    66ff4c2416
                         push              -0x1                                        // 0x0060d5c8    6aff
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                 // 0x0060d5ca    8d4c2414
                         call              _jmp_addr_0x0060d740                        // 0x0060d5ce    e86d010000
                         {disp8} jmp       _jmp_addr_0x0060d567                        // 0x0060d5d3    eb92
                         push              0x1                                         // 0x0060d5d5    6a01
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                 // 0x0060d5d7    8d4c2414
                         call              _jmp_addr_0x0060d750                        // 0x0060d5db    e870010000
                         push              -0x1                                        // 0x0060d5e0    6aff
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                 // 0x0060d5e2    8d4c2414
                         call              _jmp_addr_0x0060d740                        // 0x0060d5e6    e855010000
                         {disp32} jmp      _jmp_addr_0x0060d567                        // 0x0060d5eb    e977ffffff
                         push              -0x1                                        // 0x0060d5f0    6aff
                         {disp8} jmp       _jmp_addr_0x0060d5f6                        // 0x0060d5f2    eb02
                         push              0x1                                         // 0x0060d5f4    6a01
_jmp_addr_0x0060d5f6:    {disp8} lea       ecx, dword ptr [esp + 0x14]                 // 0x0060d5f6    8d4c2414
                         call              _jmp_addr_0x0060d750                        // 0x0060d5fa    e851010000
                         push              0x1                                         // 0x0060d5ff    6a01
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                 // 0x0060d601    8d4c2414
                         call              _jmp_addr_0x0060d740                        // 0x0060d605    e836010000
                         {disp32} jmp      _jmp_addr_0x0060d567                        // 0x0060d60a    e958ffffff
                         {disp8} mov       dword ptr [esi + 0x0c], ebp                 // 0x0060d60f    896e0c
                         {disp8} mov       dword ptr [esi + 0x08], ebp                 // 0x0060d612    896e08
                         pop               edi                                         // 0x0060d615    5f
                         pop               esi                                         // 0x0060d616    5e
                         pop               ebp                                         // 0x0060d617    5d
                         pop               ebx                                         // 0x0060d618    5b
                         add               esp, 0x0c                                   // 0x0060d619    83c40c
                         ret               0x0004                                      // 0x0060d61c    c20400
_jmp_addr_0x0060d61f:    mov               ecx, dword ptr [esi]                        // 0x0060d61f    8b0e
                         inc               ecx                                         // 0x0060d621    41
                         push              ebx                                         // 0x0060d622    53
                         push              ecx                                         // 0x0060d623    51
                         mov.s             ecx, esi                                    // 0x0060d624    8bce
                         call              @Init__20ObjectCircleIteratorFiRC9MapCoords@16                        // 0x0060d626    e875faffff
                         pop               edi                                         // 0x0060d62b    5f
                         pop               esi                                         // 0x0060d62c    5e
                         pop               ebp                                         // 0x0060d62d    5d
                         pop               ebx                                         // 0x0060d62e    5b
                         add               esp, 0x0c                                   // 0x0060d62f    83c40c
                         ret               0x0004                                      // 0x0060d632    c20400
_jmp_addr_0x0060d635:    {disp8} mov       eax, dword ptr [esi + 0x04]                 // 0x0060d635    8b4604
                         mov               edx, dword ptr [eax]                        // 0x0060d638    8b10
                         cmp               dword ptr [edx + 0x24], ebp                 // 0x0060d63a    396a24
                         {disp32} je       _jmp_addr_0x0060d6ca                        // 0x0060d63d    0f8487000000
                         mov               ecx, dword ptr [esi]                        // 0x0060d643    8b0e
                         inc               ecx                                         // 0x0060d645    41
                         mov               dword ptr [esi], ecx                        // 0x0060d646    890e
                         mov               eax, dword ptr [eax]                        // 0x0060d648    8b00
                         {disp8} mov       edx, dword ptr [eax + 0x24]                 // 0x0060d64a    8b5024
                         cmp               ecx, dword ptr [edx + 0x04]                 // 0x0060d64d    3b4a04
                         {disp32} jl       _jmp_addr_0x0060d70b                        // 0x0060d650    0f8cb5000000
                         {disp8} mov       ebx, dword ptr [esp + 0x20]                 // 0x0060d656    8b5c2420
                         {disp8} mov       ecx, dword ptr [esi + 0x0c]                 // 0x0060d65a    8b4e0c
                         push              ebx                                         // 0x0060d65d    53
                         call              @GetMapChild__6ObjectFRC9MapCoords@12       // 0x0060d65e    e8fdae0200
                         mov.s             edi, eax                                    // 0x0060d663    8bf8
                         cmp.s             edi, ebp                                    // 0x0060d665    3bfd
                         {disp8} mov       dword ptr [esi + 0x08], ebp                 // 0x0060d667    896e08
                         {disp8} jne       _jmp_addr_0x0060d67f                        // 0x0060d66a    7513
                         push              ebx                                         // 0x0060d66c    53
                         push              ebp                                         // 0x0060d66d    55
                         mov.s             ecx, esi                                    // 0x0060d66e    8bce
                         call              @Init__20ObjectCircleIteratorFiRC9MapCoords@16                        // 0x0060d670    e82bfaffff
                         pop               edi                                         // 0x0060d675    5f
                         pop               esi                                         // 0x0060d676    5e
                         pop               ebp                                         // 0x0060d677    5d
                         pop               ebx                                         // 0x0060d678    5b
                         add               esp, 0x0c                                   // 0x0060d679    83c40c
                         ret               0x0004                                      // 0x0060d67c    c20400
_jmp_addr_0x0060d67f:    {disp8} mov       dword ptr [esi + 0x0c], edi                 // 0x0060d67f    897e0c
                         mov               eax, dword ptr [edi]                        // 0x0060d682    8b07
                         mov.s             ecx, edi                                    // 0x0060d684    8bcf
                         call              dword ptr [eax + 0x858]                     // 0x0060d686    ff9058080000
                         cmp.s             eax, ebp                                    // 0x0060d68c    3bc5
                         {disp8} mov       dword ptr [esi + 0x04], eax                 // 0x0060d68e    894604
                         {disp8} jne       _jmp_addr_0x0060d6af                        // 0x0060d691    751c
_jmp_addr_0x0060d693:    {disp8} mov       ecx, dword ptr [esi + 0x0c]                 // 0x0060d693    8b4e0c
                         push              ebx                                         // 0x0060d696    53
                         push              ebx                                         // 0x0060d697    53
                         call              @GetMapChild__6ObjectFRC9MapCoords@12       // 0x0060d698    e8c3ae0200
                         push              eax                                         // 0x0060d69d    50
                         mov.s             ecx, esi                                    // 0x0060d69e    8bce
                         call              @Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16                        // 0x0060d6a0    e8dbfbffff
                         pop               edi                                         // 0x0060d6a5    5f
                         pop               esi                                         // 0x0060d6a6    5e
                         pop               ebp                                         // 0x0060d6a7    5d
                         pop               ebx                                         // 0x0060d6a8    5b
                         add               esp, 0x0c                                   // 0x0060d6a9    83c40c
                         ret               0x0004                                      // 0x0060d6ac    c20400
_jmp_addr_0x0060d6af:    push              ebp                                         // 0x0060d6af    55
                         push              0x00be9d68                                  // 0x0060d6b0    68689dbe00
                         push              0x009c7f50                                  // 0x0060d6b5    68507f9c00
                         push              ebp                                         // 0x0060d6ba    55
                         push              edi                                         // 0x0060d6bb    57
                         call              ___RTDynamicCast                            // 0x0060d6bc    e858831b00
                         add               esp, 0x14                                   // 0x0060d6c1    83c414
                         test              eax, eax                                    // 0x0060d6c4    85c0
                         {disp8} je        _jmp_addr_0x0060d709                        // 0x0060d6c6    7441
                         {disp8} jmp       _jmp_addr_0x0060d693                        // 0x0060d6c8    ebc9
_jmp_addr_0x0060d6ca:    {disp8} mov       ebx, dword ptr [esp + 0x20]                 // 0x0060d6ca    8b5c2420
                         {disp8} mov       ecx, dword ptr [esi + 0x0c]                 // 0x0060d6ce    8b4e0c
                         push              ebx                                         // 0x0060d6d1    53
                         call              @GetMapChild__6ObjectFRC9MapCoords@12       // 0x0060d6d2    e889ae0200
                         mov.s             edi, eax                                    // 0x0060d6d7    8bf8
                         cmp.s             edi, ebp                                    // 0x0060d6d9    3bfd
                         {disp8} mov       dword ptr [esi + 0x08], ebp                 // 0x0060d6db    896e08
                         {disp8} jne       _jmp_addr_0x0060d6f3                        // 0x0060d6de    7513
                         push              ebx                                         // 0x0060d6e0    53
                         push              ebp                                         // 0x0060d6e1    55
                         mov.s             ecx, esi                                    // 0x0060d6e2    8bce
                         call              @Init__20ObjectCircleIteratorFiRC9MapCoords@16                        // 0x0060d6e4    e8b7f9ffff
                         pop               edi                                         // 0x0060d6e9    5f
                         pop               esi                                         // 0x0060d6ea    5e
                         pop               ebp                                         // 0x0060d6eb    5d
                         pop               ebx                                         // 0x0060d6ec    5b
                         add               esp, 0x0c                                   // 0x0060d6ed    83c40c
                         ret               0x0004                                      // 0x0060d6f0    c20400
_jmp_addr_0x0060d6f3:    {disp8} mov       dword ptr [esi + 0x0c], edi                 // 0x0060d6f3    897e0c
                         mov               edx, dword ptr [edi]                        // 0x0060d6f6    8b17
                         mov.s             ecx, edi                                    // 0x0060d6f8    8bcf
                         call              dword ptr [edx + 0x858]                     // 0x0060d6fa    ff9258080000
                         cmp.s             eax, ebp                                    // 0x0060d700    3bc5
                         {disp8} mov       dword ptr [esi + 0x04], eax                 // 0x0060d702    894604
                         {disp8} jne       _jmp_addr_0x0060d6af                        // 0x0060d705    75a8
                         {disp8} jmp       _jmp_addr_0x0060d693                        // 0x0060d707    eb8a
_jmp_addr_0x0060d709:    mov               dword ptr [esi], ebp                        // 0x0060d709    892e
_jmp_addr_0x0060d70b:    pop               edi                                         // 0x0060d70b    5f
                         pop               esi                                         // 0x0060d70c    5e
                         pop               ebp                                         // 0x0060d70d    5d
                         pop               ebx                                         // 0x0060d70e    5b
                         add               esp, 0x0c                                   // 0x0060d70f    83c40c
                         ret               0x0004                                      // 0x0060d712    c20400

// Snippet: db, [0x0060d715, 0x0060d718)
.byte 0x8d, 0x49, 0x00            // 0x0060d715

// Snippet: jmptbl, [0x0060d718, 0x0060d73c)
.byte 0x62, 0xd5, 0x60, 0x00      // 0x0060d718
.byte 0xae, 0xd5, 0x60, 0x00      // 0x0060d71c
.byte 0xb5, 0xd5, 0x60, 0x00      // 0x0060d720
.byte 0xbc, 0xd5, 0x60, 0x00      // 0x0060d724
.byte 0xc3, 0xd5, 0x60, 0x00      // 0x0060d728
.byte 0xd5, 0xd5, 0x60, 0x00      // 0x0060d72c
.byte 0xf0, 0xd5, 0x60, 0x00      // 0x0060d730
.byte 0xf4, 0xd5, 0x60, 0x00      // 0x0060d734
.byte 0x0f, 0xd6, 0x60, 0x00      // 0x0060d738

// Snippet: db, [0x0060d73c, 0x0060d740)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060d73c

