.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z
.extern ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z
.extern _jmp_addr_0x0041b1f0
.extern ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z
.extern _jmp_addr_0x00442db0
.extern _jmp_addr_0x00442e10
.extern @__ct__7LHPointFRC7LHPoint@12
.extern _jmp_addr_0x00462900
.extern _jmp_addr_0x0046c040
.extern _jmp_addr_0x0046c1b0
.extern _jmp_addr_0x0046c2e0
.extern _jmp_addr_0x0046d9d0
.extern ?Draw@Abode@@UAEXXZ
.extern _jmp_addr_0x005167d0
.extern _jmp_addr_0x00516840
.extern _jmp_addr_0x00517f90
.extern _jmp_addr_0x00518050
.extern ?Draw@MobileObject@@UAEXXZ
.extern _jmp_addr_0x00519320
.extern _jmp_addr_0x005198f0
.extern _jmp_addr_0x0051ea10
.extern _jmp_addr_0x0051ed60
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005ced10
.extern @GetLHPoint__9MapCoordsCFv@12
.extern @SelectMesh__9MorphableFl@12
.extern _jmp_addr_0x00617860
.extern _jmp_addr_0x00618b40
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x00637dd0
.extern _jmp_addr_0x0063b5d0
.extern _jmp_addr_0x0063b680
.extern _jmp_addr_0x0063ef20
.extern _jmp_addr_0x0064ab20
.extern @GetPlayer3DColor__7GPlayerFv@12
.extern ?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ
.extern _jmp_addr_0x0069d750
.extern _jmp_addr_0x0069d790
.extern _jmp_addr_0x00719e90
.extern ?CanShowName@SpecialVillager@@QAE_NXZ
.extern _jmp_addr_0x00730360
.extern _jmp_addr_0x00730480
.extern _jmp_addr_0x00730570
.extern _jmp_addr_0x00737760
.extern _jmp_addr_0x00737780
.extern ?IsPregnant@Villager@@QAE_NXZ
.extern ?Add@VillagerName@@SAPAV1@MULHPoint@@PA_WAAULH3DColor@@@Z
.extern _jmp_addr_0x00779a60
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ___RTDynamicCast
.extern _wcscat
.extern _wcscpy
.extern _wcslen
.extern _swprintf
.extern ___nw__FUl
.extern _jmp_addr_0x007faaf0
.extern _jmp_addr_0x007fab30
.extern _jmp_addr_0x007fac10
.extern _jmp_addr_0x007fae60
.extern _jmp_addr_0x007faff0
.extern _jmp_addr_0x007fb3f0
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern _jmp_addr_0x00802120
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z
.extern _jmp_addr_0x0080bec0
.extern _jmp_addr_0x0081b450
.extern _CHAR2WCHAR__FPc
.extern _jmp_addr_0x0083f310
.extern _jmp_addr_0x008415c0
.extern _jmp_addr_0x008415d0
.extern _jmp_addr_0x00841630
.extern _jmp_addr_0x00841660
.extern _jmp_addr_0x00841670
.extern _jmp_addr_0x008416a0
.extern _jmp_addr_0x00841750
.extern _jmp_addr_0x00841900
.extern _jmp_addr_0x00841aa0
.extern _jmp_addr_0x00841b00
.extern _jmp_addr_0x00841b50
.extern _jmp_addr_0x00842100
.extern _jmp_addr_0x00842120
.extern _jmp_addr_0x00842150
.extern _jmp_addr_0x008421f0
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x0085e490
.extern @__ct__5CAnimFP5CAnim@12
.extern _jmp_addr_0x0085fa90

.globl _jmp_addr_0x0051a830
.globl _jmp_addr_0x0051af00
.globl ?DrawVillagerInfo@Villager@@UAEIXZ
.globl ?Draw@Villager@@UAEXXZ
.globl _jmp_addr_0x0051c8e0
.globl _jmp_addr_0x0051dce0
.globl _jmp_addr_0x0051dd60

.globl _globl_ct_0x0051cc80
.globl _globl_ct_0x0051ccb0
.globl _globl_ct_0x0051cce0
.globl ?DrawVillagerInfo@Villager@@UAEIXZ
.globl ?DrawOutOfMap@Object@@UAEX_N@Z
.globl ?Draw@Totem@@UAEXXZ
.globl ?Draw@Living@@UAEXXZ
.globl ?Draw@Pot@@UAEXXZ
.globl ?DrawOutOfMap@Pot@@UAEX_N@Z
.globl ?Draw@PileWood@@UAEXXZ
.globl ?Draw@PileFood@@UAEXXZ
.globl ?Draw@Animal@@UAEXXZ
.globl ?Draw@SpellWolf@@UAEXXZ
.globl ?Draw@Workshop@@UAEXXZ
.globl ?ProcessTurn@AnimEdit@@UAEHXZ
.globl ?Display@AnimEdit@@UAEXXZ
.globl ?PrssKey@AnimEdit@@UAEXW4LH_KEY@@G@Z

start_0x0051a830_0x0051e370:
// Snippet: asm, [0x0051a830, 0x0051e31a)
_jmp_addr_0x0051a830:    {disp32} mov       cl, byte ptr [data_bytes + 0x222e8e]                 // 0x0051a830    8a0d8e8ebe00
                         xor.s              eax, eax                                             // 0x0051a836    33c0
                         sub                esp, 0x60                                            // 0x0051a838    83ec60
                         cmp.s              cl, al                                               // 0x0051a83b    3ac8
                         {disp32} je        _jmp_addr_0x0051ab80                                 // 0x0051a83d    0f843d030000
                         push               esi                                                  // 0x0051a843    56
                         {disp8} mov        esi, dword ptr [esp + 0x68]                          // 0x0051a844    8b742468
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                          // 0x0051a848    8b4e24
                         {disp8} mov        edx, dword ptr [esi + 0x28]                          // 0x0051a84b    8b5628
                         {disp8} mov        dword ptr [esp + 0x28], ecx                          // 0x0051a84e    894c2428
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                          // 0x0051a852    8b4e2c
                         {disp8} mov        dword ptr [esp + 0x30], ecx                          // 0x0051a855    894c2430
                         {disp8} mov        dword ptr [esi + 0x24], eax                          // 0x0051a859    894624
                         {disp8} mov        dword ptr [esi + 0x28], eax                          // 0x0051a85c    894628
                         {disp8} mov        dword ptr [esi + 0x2c], eax                          // 0x0051a85f    89462c
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051a862    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x2c], edx                          // 0x0051a868    8954242c
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x0051a86c    e80f190300
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x0051a871    d9442428
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]               // 0x0051a875    8b15b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]               // 0x0051a87b    a1bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]               // 0x0051a880    8b0dc01dea00
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x0051a886    8954241c
                         {disp8} fsub       dword ptr [esp + 0x1c]                               // 0x0051a88a    d864241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x0051a88e    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x0051a892    894c2424
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051a896    d95c2410
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0051a89a    d944242c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051a89e    8b542410
                         {disp8} fsub       dword ptr [esp + 0x20]                               // 0x0051a8a2    d8642420
                         {disp8} mov        dword ptr [esp + 0x04], edx                          // 0x0051a8a6    89542404
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051a8aa    d95c2414
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x0051a8ae    d9442430
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051a8b2    8b442414
                         {disp8} fsub       dword ptr [esp + 0x24]                               // 0x0051a8b6    d8642424
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x0051a8ba    89442408
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051a8be    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051a8c2    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x0051a8c6    8b4c2418
                         fabs                                                                    // 0x0051a8ca    d9e1
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                          // 0x0051a8cc    894c240c
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]                    // 0x0051a8d0    dc1dd8798c00
                         fnstsw             ax                                                   // 0x0051a8d6    dfe0
                         test               ah, 0x01                                             // 0x0051a8d8    f6c401
                         {disp8} je         _jmp_addr_0x0051a911                                 // 0x0051a8db    7434
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051a8dd    d9442418
                         fabs                                                                    // 0x0051a8e1    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]                    // 0x0051a8e3    dc1dd8798c00
                         fnstsw             ax                                                   // 0x0051a8e9    dfe0
                         test               ah, 0x01                                             // 0x0051a8eb    f6c401
                         {disp8} je         _jmp_addr_0x0051a911                                 // 0x0051a8ee    7421
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051a8f0    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051a8f4    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051a8fa    dfe0
                         test               ah, 0x41                                             // 0x0051a8fc    f6c441
                         {disp8} jne        _jmp_addr_0x0051a909                                 // 0x0051a8ff    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]                    // 0x0051a901    d90518f58b00
                         {disp8} jmp        _jmp_addr_0x0051a948                                 // 0x0051a907    eb3f
_jmp_addr_0x0051a909:    {disp32} fld       dword ptr [rdata_bytes + 0x2f738]                    // 0x0051a909    d90538878d00
                         {disp8} jmp        _jmp_addr_0x0051a948                                 // 0x0051a90f    eb37
_jmp_addr_0x0051a911:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051a911    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051a915    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051a91b    dfe0
                         test               ah, 0x40                                             // 0x0051a91d    f6c440
                         {disp8} je         _jmp_addr_0x0051a944                                 // 0x0051a920    7422
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051a922    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051a926    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051a92c    dfe0
                         test               ah, 0x40                                             // 0x0051a92e    f6c440
                         {disp8} je         _jmp_addr_0x0051a944                                 // 0x0051a931    7411
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051a933    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051a937    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051a93d    dfe0
                         test               ah, 0x40                                             // 0x0051a93f    f6c440
                         {disp8} jne        _jmp_addr_0x0051a98c                                 // 0x0051a942    7548
_jmp_addr_0x0051a944:    {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051a944    d9442404
_jmp_addr_0x0051a948:    {disp8} fld        dword ptr [esp + 0x08]                               // 0x0051a948    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                               // 0x0051a94c    d84c2408
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051a950    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051a954    d84c240c
                         faddp              st(1), st                                            // 0x0051a958    dec1
                         fld                st(1)                                                // 0x0051a95a    d9c1
                         fmul               st, st(2)                                            // 0x0051a95c    d8ca
                         faddp              st(1), st                                            // 0x0051a95e    dec1
                         fsqrt                                                                   // 0x0051a960    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x0051a962    d83d90a38a00
                         {disp8} fst        dword ptr [esp + 0x68]                               // 0x0051a968    d9542468
                         fmul               st, st(1)                                            // 0x0051a96c    d8c9
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x0051a96e    d95c2404
                         fstp               st(0)                                                // 0x0051a972    ddd8
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x0051a974    d9442468
                         {disp8} fmul       dword ptr [esp + 0x08]                               // 0x0051a978    d84c2408
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x0051a97c    d95c2408
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x0051a980    d9442468
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051a984    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0051a988    d95c240c
_jmp_addr_0x0051a98c:    {disp32} mov       cl, byte ptr [data_bytes + 0x3002cc]                 // 0x0051a98c    8a0dcc62cc00
                         mov                al, 0x01                                             // 0x0051a992    b001
                         test               al, cl                                               // 0x0051a994    84c8
                         {disp8} jne        _jmp_addr_0x0051a9cd                                 // 0x0051a996    7535
                         mov.s              dl, cl                                               // 0x0051a998    8ad1
                         or.s               dl, al                                               // 0x0051a99a    0ad0
                         push               0x0051ab90                                           // 0x0051a99c    6890ab5100
                         {disp32} mov       byte ptr [data_bytes + 0x3002cc], dl                 // 0x0051a9a1    8815cc62cc00
                         {disp32} mov       dword ptr [data_bytes + 0x3002c0], 0x00000000        // 0x0051a9a7    c705c062cc0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3002c4], 0x3f800000        // 0x0051a9b1    c705c462cc000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x3002c8], 0x00000000        // 0x0051a9bb    c705c862cc0000000000
                         call               _atexit                                              // 0x0051a9c5    e8c7ad2a00
                         add                esp, 0x04                                            // 0x0051a9ca    83c404
_jmp_addr_0x0051a9cd:    {disp32} fld       dword ptr [data_bytes + 0x3002c4]                    // 0x0051a9cd    d905c462cc00
                         {disp8} fmul       dword ptr [esp + 0x08]                               // 0x0051a9d3    d84c2408
                         {disp32} fld       dword ptr [data_bytes + 0x3002c8]                    // 0x0051a9d7    d905c862cc00
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051a9dd    d84c240c
                         faddp              st(1), st                                            // 0x0051a9e1    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x3002c0]                    // 0x0051a9e3    d905c062cc00
                         {disp8} fmul       dword ptr [esp + 0x04]                               // 0x0051a9e9    d84c2404
                         faddp              st(1), st                                            // 0x0051a9ed    dec1
                         fchs                                                                    // 0x0051a9ef    d9e0
                         fld                st(0)                                                // 0x0051a9f1    d9c0
                         {disp8} fmul       dword ptr [esp + 0x04]                               // 0x0051a9f3    d84c2404
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051a9f7    d95c241c
                         fld                st(0)                                                // 0x0051a9fb    d9c0
                         {disp8} fmul       dword ptr [esp + 0x08]                               // 0x0051a9fd    d84c2408
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051aa01    d95c2420
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051aa05    d84c240c
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051aa09    d944241c
                         {disp32} fadd      dword ptr [data_bytes + 0x3002c0]                    // 0x0051aa0d    d805c062cc00
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051aa13    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051aa17    d9442420
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051aa1b    8b542410
                         {disp32} fadd      dword ptr [data_bytes + 0x3002c4]                    // 0x0051aa1f    d805c462cc00
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x0051aa25    8954241c
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051aa29    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051aa2d    8b442414
                         {disp32} fadd      dword ptr [data_bytes + 0x3002c8]                    // 0x0051aa31    d805c862cc00
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x0051aa37    89442420
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051aa3b    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051aa3f    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x0051aa43    8b4c2418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051aa47    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x0051aa4d    894c2424
                         fnstsw             ax                                                   // 0x0051aa51    dfe0
                         test               ah, 0x40                                             // 0x0051aa53    f6c440
                         {disp8} je         _jmp_addr_0x0051aa7a                                 // 0x0051aa56    7422
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051aa58    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051aa5c    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051aa62    dfe0
                         test               ah, 0x40                                             // 0x0051aa64    f6c440
                         {disp8} je         _jmp_addr_0x0051aa7a                                 // 0x0051aa67    7411
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051aa69    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051aa6d    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051aa73    dfe0
                         test               ah, 0x40                                             // 0x0051aa75    f6c440
                         {disp8} jne        _jmp_addr_0x0051aab8                                 // 0x0051aa78    753e
_jmp_addr_0x0051aa7a:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051aa7a    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0051aa7e    d84c2418
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051aa82    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0051aa86    d84c2414
                         faddp              st(1), st                                            // 0x0051aa8a    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051aa8c    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x0051aa90    d84c2410
                         faddp              st(1), st                                            // 0x0051aa94    dec1
                         fsqrt                                                                   // 0x0051aa96    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x0051aa98    d83d90a38a00
                         fld                st(0)                                                // 0x0051aa9e    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x0051aaa0    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051aaa4    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051aaa8    d9442414
                         fmul               st, st(1)                                            // 0x0051aaac    d8c9
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051aaae    d95c2420
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0051aab2    d84c2418
                         {disp8} jmp        _jmp_addr_0x0051aabc                                 // 0x0051aab6    eb04
_jmp_addr_0x0051aab8:    {disp8} fld        dword ptr [esp + 0x24]                               // 0x0051aab8    d9442424
_jmp_addr_0x0051aabc:    {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051aabc    d9442420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x0051aac0    8b54241c
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051aac4    d84c240c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x0051aac8    8b442420
                         fld                st(1)                                                // 0x0051aacc    d9c1
                         {disp8} mov        dword ptr [esp + 0x38], edx                          // 0x0051aace    89542438
                         {disp8} fmul       dword ptr [esp + 0x08]                               // 0x0051aad2    d84c2408
                         {disp8} mov        dword ptr [esp + 0x44], eax                          // 0x0051aad6    89442444
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000                   // 0x0051aada    c744246000000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000                   // 0x0051aae2    c744245c00000000
                         fsubp              st(1), st                                            // 0x0051aaea    dee9
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000                   // 0x0051aaec    c744245800000000
                         fld                st(1)                                                // 0x0051aaf4    d9c1
                         {disp8} fmul       dword ptr [esp + 0x04]                               // 0x0051aaf6    d84c2404
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051aafa    d944241c
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051aafe    d84c240c
                         fsubp              st(1), st                                            // 0x0051ab02    dee9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051ab04    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0051ab08    8b4c2414
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051ab0c    d944241c
                         {disp8} mov        dword ptr [esp + 0x48], ecx                          // 0x0051ab10    894c2448
                         {disp8} fmul       dword ptr [esp + 0x08]                               // 0x0051ab14    d84c2408
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x0051ab18    8d4c2434
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051ab1c    d9442420
                         {disp8} fmul       dword ptr [esp + 0x04]                               // 0x0051ab20    d84c2404
                         fsubp              st(1), st                                            // 0x0051ab24    dee9
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051ab26    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x0051ab2a    8b542418
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051ab2e    d9442404
                         {disp8} mov        dword ptr [esp + 0x54], edx                          // 0x0051ab32    89542454
                         fchs                                                                    // 0x0051ab36    d9e0
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x0051ab38    d95c2434
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x0051ab3c    d9442408
                         fchs                                                                    // 0x0051ab40    d9e0
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x0051ab42    d95c2440
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051ab46    d944240c
                         fchs                                                                    // 0x0051ab4a    d9e0
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0051ab4c    d95c244c
                         fxch               st(1)                                                // 0x0051ab50    d9c9
                         {disp8} fstp       dword ptr [esp + 0x50]                               // 0x0051ab52    d95c2450
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x0051ab56    d95c243c
                         call               _jmp_addr_0x007fb3f0                                 // 0x0051ab5a    e891082e00
                         {disp8} lea        edx, dword ptr [esp + 0x34]                          // 0x0051ab5f    8d542434
                         mov.s              ecx, esi                                             // 0x0051ab63    8bce
                         call               _jmp_addr_0x0046d9d0                                 // 0x0051ab65    e8662ef5ff
                         {disp8} mov        eax, dword ptr [esp + 0x28]                          // 0x0051ab6a    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                          // 0x0051ab6e    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x30]                          // 0x0051ab72    8b542430
                         {disp8} mov        dword ptr [esi + 0x24], eax                          // 0x0051ab76    894624
                         {disp8} mov        dword ptr [esi + 0x28], ecx                          // 0x0051ab79    894e28
                         {disp8} mov        dword ptr [esi + 0x2c], edx                          // 0x0051ab7c    89562c
                         pop                esi                                                  // 0x0051ab7f    5e
_jmp_addr_0x0051ab80:    add                esp, 0x60                                            // 0x0051ab80    83c460
                         ret                                                                     // 0x0051ab83    c3
                         nop                                                                     // 0x0051ab84    90
                         nop                                                                     // 0x0051ab85    90
                         nop                                                                     // 0x0051ab86    90
                         nop                                                                     // 0x0051ab87    90
                         nop                                                                     // 0x0051ab88    90
                         nop                                                                     // 0x0051ab89    90
                         nop                                                                     // 0x0051ab8a    90
                         nop                                                                     // 0x0051ab8b    90
                         nop                                                                     // 0x0051ab8c    90
                         nop                                                                     // 0x0051ab8d    90
                         nop                                                                     // 0x0051ab8e    90
                         nop                                                                     // 0x0051ab8f    90
                         ret                                                                     // 0x0051ab90    c3
                         nop                                                                     // 0x0051ab91    90
                         nop                                                                     // 0x0051ab92    90
                         nop                                                                     // 0x0051ab93    90
                         nop                                                                     // 0x0051ab94    90
                         nop                                                                     // 0x0051ab95    90
                         nop                                                                     // 0x0051ab96    90
                         nop                                                                     // 0x0051ab97    90
                         nop                                                                     // 0x0051ab98    90
                         nop                                                                     // 0x0051ab99    90
                         nop                                                                     // 0x0051ab9a    90
                         nop                                                                     // 0x0051ab9b    90
                         nop                                                                     // 0x0051ab9c    90
                         nop                                                                     // 0x0051ab9d    90
                         nop                                                                     // 0x0051ab9e    90
                         nop                                                                     // 0x0051ab9f    90
?Draw@Totem@@UAEXXZ:
                         sub                esp, 0x18                                            // 0x0051aba0    83ec18
                         push               ebx                                                  // 0x0051aba3    53
                         push               esi                                                  // 0x0051aba4    56
                         push               edi                                                  // 0x0051aba5    57
                         mov.s              edi, ecx                                             // 0x0051aba6    8bf9
                         push               0x1                                                  // 0x0051aba8    6a01
                         call               _jmp_addr_0x00737780                                 // 0x0051abaa    e8d1cb2100
                         mov                eax, dword ptr [edi]                                 // 0x0051abaf    8b07
                         mov.s              ecx, edi                                             // 0x0051abb1    8bcf
                         call               dword ptr [eax + 0x890]                              // 0x0051abb3    ff9090080000
                         test               eax, eax                                             // 0x0051abb9    85c0
                         {disp8} jne        _jmp_addr_0x0051abcf                                 // 0x0051abbb    7512
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                          // 0x0051abbd    8b4f40
                         push               ecx                                                  // 0x0051abc0    51
                         mov.s              ecx, edi                                             // 0x0051abc1    8bcf
                         call               _jmp_addr_0x00517f90                                 // 0x0051abc3    e8c8d3ffff
                         pop                edi                                                  // 0x0051abc8    5f
                         pop                esi                                                  // 0x0051abc9    5e
                         pop                ebx                                                  // 0x0051abca    5b
                         add                esp, 0x18                                            // 0x0051abcb    83c418
                         ret                                                                     // 0x0051abce    c3
_jmp_addr_0x0051abcf:    mov.s              ecx, edi                                             // 0x0051abcf    8bcf
                         call               _jmp_addr_0x00737760                                 // 0x0051abd1    e88acb2100
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                          // 0x0051abd6    8b4f40
                         mov                eax, dword ptr [ecx]                                 // 0x0051abd9    8b01
                         xor.s              edx, edx                                             // 0x0051abdb    33d2
                         call               dword ptr [eax + 0x48]                               // 0x0051abdd    ff5048
                         test               byte ptr [edi + 0x24], 0x10                          // 0x0051abe0    f6472410
                         {disp32} je        _jmp_addr_0x0051ad03                                 // 0x0051abe4    0f8419010000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051abea    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0051abf0    e85bac0300
                         mov.s              ecx, eax                                             // 0x0051abf5    8bc8
                         call               _jmp_addr_0x005ced10                                 // 0x0051abf7    e814410b00
                         cmp.s              eax, edi                                             // 0x0051abfc    3bc7
                         {disp32} jne       _jmp_addr_0x0051ad03                                 // 0x0051abfe    0f85ff000000
                         {disp8} mov        eax, dword ptr [edi + 0x44]                          // 0x0051ac04    8b4744
                         test               eax, eax                                             // 0x0051ac07    85c0
                         mov                edx, dword ptr [edi]                                 // 0x0051ac09    8b17
                         mov.s              ecx, edi                                             // 0x0051ac0b    8bcf
                         {disp8} je         _jmp_addr_0x0051ac85                                 // 0x0051ac0d    7476
                         call               dword ptr [edx + 0x120]                              // 0x0051ac0f    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0051ac15    d95c240c
                         mov                eax, dword ptr [edi]                                 // 0x0051ac19    8b07
                         mov.s              ecx, edi                                             // 0x0051ac1b    8bcf
                         call               dword ptr [eax + 0x508]                              // 0x0051ac1d    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051ac23    d95c2414
                         {disp32} mov       ecx, dword ptr [edi + 0x000000cc]                    // 0x0051ac27    8b8fcc000000
                         {disp8} mov        ebx, dword ptr [edi + 0x40]                          // 0x0051ac2d    8b5f40
                         {disp32} lea       esi, dword ptr [edi + 0x000000c4]                    // 0x0051ac30    8db7c4000000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x0051ac36    894c2410
                         mov.s              ecx, esi                                             // 0x0051ac3a    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051ac3c    e84f842e00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x0051ac41    d8442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                          // 0x0051ac45    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051ac49    8b442414
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051ac4d    d95c241c
                         push               edx                                                  // 0x0051ac51    52
                         fild               dword ptr [esi]                                      // 0x0051ac52    db06
                         push               eax                                                  // 0x0051ac54    50
                         {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x0051ac55    8d542420
                         mov.s              ecx, ebx                                             // 0x0051ac59    8bcb
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051ac5b    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051ac61    d95c2420
                         {disp8} fild       dword ptr [esi + 0x04]                               // 0x0051ac65    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051ac68    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0051ac6e    d95c2428
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z         // 0x0051ac72    e8c984f0ff
                         mov.s              ecx, edi                                             // 0x0051ac77    8bcf
                         call               _jmp_addr_0x00518050                                 // 0x0051ac79    e8d2d3ffff
                         pop                edi                                                  // 0x0051ac7e    5f
                         pop                esi                                                  // 0x0051ac7f    5e
                         pop                ebx                                                  // 0x0051ac80    5b
                         add                esp, 0x18                                            // 0x0051ac81    83c418
                         ret                                                                     // 0x0051ac84    c3
_jmp_addr_0x0051ac85:    call               dword ptr [edx + 0x120]                              // 0x0051ac85    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051ac8b    d95c2414
                         mov                eax, dword ptr [edi]                                 // 0x0051ac8f    8b07
                         mov.s              ecx, edi                                             // 0x0051ac91    8bcf
                         call               dword ptr [eax + 0x508]                              // 0x0051ac93    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051ac99    d95c2410
                         {disp32} fild      dword ptr [edi + 0x000000c4]                         // 0x0051ac9d    db87c4000000
                         {disp8} mov        esi, dword ptr [edi + 0x40]                          // 0x0051aca3    8b7740
                         {disp32} lea       ecx, dword ptr [edi + 0x000000c4]                    // 0x0051aca6    8d8fc4000000
                         {disp8} lea        edx, dword ptr [esi + 0x50]                          // 0x0051acac    8d5650
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051acaf    d80da4a38a00
                         push               edx                                                  // 0x0051acb5    52
                         {disp8} lea        edx, dword ptr [esi + 0x4c]                          // 0x0051acb6    8d564c
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051acb9    d95c241c
                         {disp8} fild       dword ptr [ecx + 0x04]                               // 0x0051acbd    db4104
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051acc0    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0051acc6    d95c2424
                         {disp8} fld        dword ptr [ecx + 0x08]                               // 0x0051acca    d94108
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051accd    d95c2420
                         call               ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z                                  // 0x0051acd1    e86a862e00
                         {disp8} fadd       dword ptr [esp + 0x1c]                               // 0x0051acd6    d844241c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051acda    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0051acde    8b4c2410
                         push               eax                                                  // 0x0051ace2    50
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051ace3    d95c2420
                         push               ecx                                                  // 0x0051ace7    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x0051ace8    8d542420
                         mov.s              ecx, esi                                             // 0x0051acec    8bce
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z         // 0x0051acee    e84d84f0ff
                         mov.s              edx, edi                                             // 0x0051acf3    8bd7
                         mov.s              ecx, esi                                             // 0x0051acf5    8bce
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051acf7    e8d4081200
                         pop                edi                                                  // 0x0051acfc    5f
                         pop                esi                                                  // 0x0051acfd    5e
                         pop                ebx                                                  // 0x0051acfe    5b
                         add                esp, 0x18                                            // 0x0051acff    83c418
                         ret                                                                     // 0x0051ad02    c3
_jmp_addr_0x0051ad03:    {disp8} mov        eax, dword ptr [edi + 0x44]                          // 0x0051ad03    8b4744
                         xor.s              ebx, ebx                                             // 0x0051ad06    33db
                         cmp.s              eax, ebx                                             // 0x0051ad08    3bc3
                         {disp8} je         _jmp_addr_0x0051ad1a                                 // 0x0051ad0a    740e
                         mov.s              ecx, edi                                             // 0x0051ad0c    8bcf
                         call               _jmp_addr_0x00518050                                 // 0x0051ad0e    e83dd3ffff
                         pop                edi                                                  // 0x0051ad13    5f
                         pop                esi                                                  // 0x0051ad14    5e
                         pop                ebx                                                  // 0x0051ad15    5b
                         add                esp, 0x18                                            // 0x0051ad16    83c418
                         ret                                                                     // 0x0051ad19    c3
_jmp_addr_0x0051ad1a:    mov                edx, dword ptr [edi]                                 // 0x0051ad1a    8b17
                         mov.s              ecx, edi                                             // 0x0051ad1c    8bcf
                         call               dword ptr [edx + 0x120]                              // 0x0051ad1e    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0051ad24    d95c240c
                         mov                eax, dword ptr [edi]                                 // 0x0051ad28    8b07
                         mov.s              ecx, edi                                             // 0x0051ad2a    8bcf
                         call               dword ptr [eax + 0x508]                              // 0x0051ad2c    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051ad32    d95c2410
                         {disp8} fild       dword ptr [edi + 0x14]                               // 0x0051ad36    db4714
                         {disp8} mov        esi, dword ptr [edi + 0x40]                          // 0x0051ad39    8b7740
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                          // 0x0051ad3c    8d4f14
                         {disp8} lea        edx, dword ptr [esi + 0x50]                          // 0x0051ad3f    8d5650
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051ad42    d80da4a38a00
                         push               edx                                                  // 0x0051ad48    52
                         {disp8} lea        edx, dword ptr [esi + 0x4c]                          // 0x0051ad49    8d564c
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051ad4c    d95c241c
                         {disp8} fild       dword ptr [ecx + 0x04]                               // 0x0051ad50    db4104
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051ad53    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0051ad59    d95c2424
                         {disp8} fld        dword ptr [ecx + 0x08]                               // 0x0051ad5d    d94108
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051ad60    d95c2420
                         call               ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z                                  // 0x0051ad64    e8d7852e00
                         {disp8} fadd       dword ptr [esp + 0x1c]                               // 0x0051ad69    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051ad6d    d95c241c
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051ad71    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051ad75    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051ad7b    d944240c
                         fnstsw             ax                                                   // 0x0051ad7f    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x0051ad81    d81d90a38a00
                         test               ah, 0x40                                             // 0x0051ad87    f6c440
                         fnstsw             ax                                                   // 0x0051ad8a    dfe0
                         {disp32} jne       _jmp_addr_0x0051ae6f                                 // 0x0051ad8c    0f85dd000000
                         test               ah, 0x40                                             // 0x0051ad92    f6c440
                         {disp32} jne       _jmp_addr_0x0051ae53                                 // 0x0051ad95    0f85b8000000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x0051ad9b    8b44240c
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051ad9f    d9442418
                         {disp8} mov        dword ptr [esi + 0x40], ebx                          // 0x0051ada3    895e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebx                          // 0x0051ada6    895e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebx                          // 0x0051ada9    895e38
                         {disp8} mov        dword ptr [esi + 0x30], ebx                          // 0x0051adac    895e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                          // 0x0051adaf    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx                          // 0x0051adb2    895e28
                         {disp8} mov        dword ptr [esi + 0x20], ebx                          // 0x0051adb5    895e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                          // 0x0051adb8    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                          // 0x0051adbb    895e18
                         {disp8} mov        dword ptr [esi + 0x34], eax                          // 0x0051adbe    894634
                         mov.s              ecx, eax                                             // 0x0051adc1    8bc8
                         {disp8} mov        dword ptr [esi + 0x24], ecx                          // 0x0051adc3    894e24
                         mov.s              edx, eax                                             // 0x0051adc6    8bd0
                         {disp8} mov        dword ptr [esi + 0x14], edx                          // 0x0051adc8    895614
                         {disp8} fadd       dword ptr [esi + 0x38]                               // 0x0051adcb    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                               // 0x0051adce    d95e38
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051add1    d944241c
                         {disp8} fadd       dword ptr [esi + 0x3c]                               // 0x0051add5    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                               // 0x0051add8    d95e3c
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051addb    d9442420
                         {disp8} fadd       dword ptr [esi + 0x40]                               // 0x0051addf    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                               // 0x0051ade2    d95e40
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051ade5    d9442410
                         fcos                                                                    // 0x0051ade9    d9ff
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051adeb    d9442410
                         fsin                                                                    // 0x0051adef    d9fe
                         fld                st(0)                                                // 0x0051adf1    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                               // 0x0051adf3    d84e14
                         fld                st(2)                                                // 0x0051adf6    d9c2
                         {disp8} fmul       dword ptr [esi + 0x14]                               // 0x0051adf8    d84e14
                         fld                st(2)                                                // 0x0051adfb    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                               // 0x0051adfd    d84e2c
                         faddp              st(1), st                                            // 0x0051ae00    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                               // 0x0051ae02    d95e14
                         fld                st(2)                                                // 0x0051ae05    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                               // 0x0051ae07    d84e2c
                         fsub               st, st(1)                                            // 0x0051ae0a    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                               // 0x0051ae0c    d95e2c
                         fstp               st(0)                                                // 0x0051ae0f    ddd8
                         fld                st(0)                                                // 0x0051ae11    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                               // 0x0051ae13    d84e18
                         fld                st(1)                                                // 0x0051ae16    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                               // 0x0051ae18    d84e30
                         fld                st(3)                                                // 0x0051ae1b    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                               // 0x0051ae1d    d84e18
                         faddp              st(1), st                                            // 0x0051ae20    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                               // 0x0051ae22    d95e18
                         fld                st(2)                                                // 0x0051ae25    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                               // 0x0051ae27    d84e30
                         fsub               st, st(1)                                            // 0x0051ae2a    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                               // 0x0051ae2c    d95e30
                         fstp               st(0)                                                // 0x0051ae2f    ddd8
                         fld                st(0)                                                // 0x0051ae31    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                               // 0x0051ae33    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051ae36    d95c2414
                         {disp8} fmul       dword ptr [esi + 0x34]                               // 0x0051ae3a    d84e34
                         fld                st(1)                                                // 0x0051ae3d    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                               // 0x0051ae3f    d84e1c
                         faddp              st(1), st                                            // 0x0051ae42    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                               // 0x0051ae44    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                               // 0x0051ae47    d84e34
                         {disp8} fsub       dword ptr [esp + 0x14]                               // 0x0051ae4a    d8642414
                         {disp8} fstp       dword ptr [esi + 0x34]                               // 0x0051ae4e    d95e34
                         {disp8} jmp        _jmp_addr_0x0051ae9c                                 // 0x0051ae51    eb49
_jmp_addr_0x0051ae53:    {disp8} lea        ebx, dword ptr [esi + 0x14]                          // 0x0051ae53    8d5e14
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051ae56    8d542418
                         mov.s              ecx, ebx                                             // 0x0051ae5a    8bcb
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051ae5c    e8cf86eeff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0051ae61    8b442410
                         push               eax                                                  // 0x0051ae65    50
                         mov.s              ecx, ebx                                             // 0x0051ae66    8bcb
                         call               _jmp_addr_0x005198f0                                 // 0x0051ae68    e883eaffff
                         {disp8} jmp        _jmp_addr_0x0051ae9c                                 // 0x0051ae6d    eb2d
_jmp_addr_0x0051ae6f:    test               ah, 0x40                                             // 0x0051ae6f    f6c440
                         {disp8} jne        _jmp_addr_0x0051ae90                                 // 0x0051ae72    751c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x0051ae74    8b4c240c
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                          // 0x0051ae78    8d5e14
                         push               ecx                                                  // 0x0051ae7b    51
                         mov.s              ecx, ebx                                             // 0x0051ae7c    8bcb
                         call               _jmp_addr_0x00519320                                 // 0x0051ae7e    e89de4ffff
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051ae83    8d542418
                         mov.s              ecx, ebx                                             // 0x0051ae87    8bcb
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z             // 0x0051ae89    e8e286eeff
                         {disp8} jmp        _jmp_addr_0x0051ae9c                                 // 0x0051ae8e    eb0c
_jmp_addr_0x0051ae90:    {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051ae90    8d542418
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x0051ae94    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051ae97    e89486eeff
_jmp_addr_0x0051ae9c:    {disp8} mov        edx, dword ptr [esp + 0x0c]                          // 0x0051ae9c    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0051aea0    8b442410
                         {disp8} mov        dword ptr [esi + 0x44], edx                          // 0x0051aea4    895644
                         mov.s              edx, edi                                             // 0x0051aea7    8bd7
                         mov.s              ecx, esi                                             // 0x0051aea9    8bce
                         {disp8} mov        dword ptr [esi + 0x48], eax                          // 0x0051aeab    894648
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051aeae    e81d071200
                         pop                edi                                                  // 0x0051aeb3    5f
                         pop                esi                                                  // 0x0051aeb4    5e
                         pop                ebx                                                  // 0x0051aeb5    5b
                         add                esp, 0x18                                            // 0x0051aeb6    83c418
                         ret                                                                     // 0x0051aeb9    c3
                         call               dword ptr [__imp__waveInClose@4]                     // 0x0051aeba    ff15a8988a00
?Draw@Living@@UAEXXZ:
                         push               esi                                                  // 0x0051aec0    56
                         mov.s              esi, ecx                                             // 0x0051aec1    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051aec3    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0051aec9    e882a90300
                         {disp32} mov       eax, dword ptr [eax + 0x000003a0]                    // 0x0051aece    8b80a0030000
                         cmp                dword ptr [eax + 0x00004878], 0x04                   // 0x0051aed4    83b87848000004
                         {disp8} jne        _jmp_addr_0x0051aee5                                 // 0x0051aedb    7508
                         cmp                dword ptr [eax + 0x00004904], esi                    // 0x0051aedd    39b004490000
                         {disp8} je         _jmp_addr_0x0051aef1                                 // 0x0051aee3    740c
_jmp_addr_0x0051aee5:    push               0x3f800000                                           // 0x0051aee5    680000803f
                         mov.s              ecx, esi                                             // 0x0051aeea    8bce
                         call               _jmp_addr_0x0051b3d0                                 // 0x0051aeec    e8df040000
_jmp_addr_0x0051aef1:    pop                esi                                                  // 0x0051aef1    5e
                         ret                                                                     // 0x0051aef2    c3
                         nop                                                                     // 0x0051aef3    90
                         nop                                                                     // 0x0051aef4    90
                         nop                                                                     // 0x0051aef5    90
                         nop                                                                     // 0x0051aef6    90
                         nop                                                                     // 0x0051aef7    90
                         nop                                                                     // 0x0051aef8    90
                         nop                                                                     // 0x0051aef9    90
                         nop                                                                     // 0x0051aefa    90
                         nop                                                                     // 0x0051aefb    90
                         nop                                                                     // 0x0051aefc    90
                         nop                                                                     // 0x0051aefd    90
                         nop                                                                     // 0x0051aefe    90
                         nop                                                                     // 0x0051aeff    90
_jmp_addr_0x0051af00:    sub                esp, 0x30                                            // 0x0051af00    83ec30
                         push               ebx                                                  // 0x0051af03    53
                         push               esi                                                  // 0x0051af04    56
                         mov.s              esi, ecx                                             // 0x0051af05    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x0051af07    8b06
                         push               edi                                                  // 0x0051af09    57
                         call               dword ptr [eax + 0x8b8]                              // 0x0051af0a    ff90b8080000
                         test               eax, eax                                             // 0x0051af10    85c0
                         {disp32} je        _jmp_addr_0x0051b0b6                                 // 0x0051af12    0f849e010000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051af18    8b4e40
                         mov                edx, dword ptr [ecx]                                 // 0x0051af1b    8b11
                         call               dword ptr [edx + 0x184]                              // 0x0051af1d    ff9284010000
                         test               eax, eax                                             // 0x0051af23    85c0
                         {disp32} je        _jmp_addr_0x0051b0b6                                 // 0x0051af25    0f848b010000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051af2b    8b4e40
                         mov                eax, dword ptr [ecx]                                 // 0x0051af2e    8b01
                         call               dword ptr [eax + 0x184]                              // 0x0051af30    ff9084010000
                         {disp8} mov        ecx, dword ptr [eax + 0x50]                          // 0x0051af36    8b4850
                         test               ch, 0x02                                             // 0x0051af39    f6c502
                         {disp32} jne       _jmp_addr_0x0051b0b6                                 // 0x0051af3c    0f8574010000
                         {disp32} mov       edx, dword ptr [_game]                               // 0x0051af42    8b155c19d000
                         mov                eax, dword ptr [esi]                                 // 0x0051af48    8b06
                         xor.s              ecx, ecx                                             // 0x0051af4a    33c9
                         {disp8} mov        cx, word ptr [esi + 0x5a]                            // 0x0051af4c    668b4e5a
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x0051af50    c744241400000000
                         imul               ecx, dword ptr [edx + 0x00250540]                    // 0x0051af58    0faf8a40052500
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x0051af5f    894c2410
                         mov.s              ecx, esi                                             // 0x0051af63    8bce
                         {disp8} fild       qword ptr [esp + 0x10]                               // 0x0051af65    df6c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051af69    d95c2410
                         call               dword ptr [eax + 0x120]                              // 0x0051af6d    ff9020010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f748]                    // 0x0051af73    d80d48878d00
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051af79    8b4640
                         mov                ebx, dword ptr [eax]                                 // 0x0051af7c    8b18
                         mov.s              edi, eax                                             // 0x0051af7e    8bf8
                         {disp8} fdivr      dword ptr [esp + 0x10]                               // 0x0051af80    d87c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051af84    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0051af88    8b4c2410
                         push               ecx                                                  // 0x0051af8c    51
                         mov.s              ecx, edi                                             // 0x0051af8d    8bcf
                         call               dword ptr [ebx + 0x18c]                              // 0x0051af8f    ff938c010000
                         mov                edx, dword ptr [edi]                                 // 0x0051af95    8b17
                         push               eax                                                  // 0x0051af97    50
                         mov.s              ecx, edi                                             // 0x0051af98    8bcf
                         call               dword ptr [edx + 0x184]                              // 0x0051af9a    ff9284010000
                         push               eax                                                  // 0x0051afa0    50
                         mov.s              ecx, esi                                             // 0x0051afa1    8bce
                         call               _jmp_addr_0x00516840                                 // 0x0051afa3    e898b8ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051afa8    8b4e40
                         mov.s              edx, eax                                             // 0x0051afab    8bd0
                         call               dword ptr [ebx + 0x188]                              // 0x0051afad    ff9388010000
                         {disp8} mov        eax, dword ptr [esi + 0x34]                          // 0x0051afb3    8b4634
                         {disp8} lea        edi, dword ptr [esi + 0x2c]                          // 0x0051afb6    8d7e2c
                         mov.s              ecx, edi                                             // 0x0051afb9    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0051afbb    89442410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051afbf    e8cc802e00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x0051afc4    d8442410
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                          // 0x0051afc8    8b4e1c
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x0051afcb    894c2410
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051afcf    d95c241c
                         fild               dword ptr [edi]                                      // 0x0051afd3    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051afd5    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051afdb    d95c2418
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x0051afdf    db4704
                         {disp8} lea        edi, dword ptr [esi + 0x14]                          // 0x0051afe2    8d7e14
                         mov.s              ecx, edi                                             // 0x0051afe5    8bcf
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051afe7    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051afed    d95c2420
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051aff1    e89a802e00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x0051aff6    d8442410
                         {disp32} mov       edx, dword ptr [_game]                               // 0x0051affa    8b155c19d000
                         fild               dword ptr [edi]                                      // 0x0051b000    db07
                         {disp32} mov       eax, dword ptr [edx + 0x00205d64]                    // 0x0051b002    8b82645d2000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x0051b008    8944240c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051b00c    d80da4a38a00
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x0051b012    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051b015    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051b01b    d95c242c
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x0051b01f    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x0c]                               // 0x0051b025    d864240c
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051b029    d95c2410
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051b02d    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x0051b031    d95c2430
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051b035    d84c240c
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0051b039    d944242c
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0051b03d    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x0051b041    d95c2438
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051b045    d9442418
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x0051b049    d84c2410
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051b04d    d944241c
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x0051b051    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0051b055    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051b059    d9442420
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x0051b05d    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051b061    d95c242c
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b065    8b4e40
                         {disp8} mov        edx, dword ptr [esp + 0x40]                          // 0x0051b068    8b542440
                         {disp8} fadd       dword ptr [esp + 0x30]                               // 0x0051b06c    d8442430
                         mov                eax, dword ptr [esi]                                 // 0x0051b070    8b06
                         push               edx                                                  // 0x0051b072    52
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051b073    d95c241c
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0051b077    d944242c
                         fadd               st, st(1)                                            // 0x0051b07b    d8c1
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051b07d    d95c2420
                         fstp               st(0)                                                // 0x0051b081    ddd8
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x0051b083    d9442430
                         {disp8} fadd       dword ptr [esp + 0x3c]                               // 0x0051b087    d844243c
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0051b08b    d95c2424
                         mov                edi, dword ptr [ecx]                                 // 0x0051b08f    8b39
                         mov.s              ecx, esi                                             // 0x0051b091    8bce
                         call               dword ptr [eax + 0x508]                              // 0x0051b093    ff9008050000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e8d8]                    // 0x0051b099    d805d8788c00
                         push               ecx                                                  // 0x0051b09f    51
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b0a0    8b4e40
                         {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x0051b0a3    8d542420
                         fstp               dword ptr [esp]                                      // 0x0051b0a7    d91c24
                         call               dword ptr [edi + 0x20]                               // 0x0051b0aa    ff5720
                         pop                edi                                                  // 0x0051b0ad    5f
                         pop                esi                                                  // 0x0051b0ae    5e
                         pop                ebx                                                  // 0x0051b0af    5b
                         add                esp, 0x30                                            // 0x0051b0b0    83c430
                         ret                0x0004                                               // 0x0051b0b3    c20400
_jmp_addr_0x0051b0b6:    mov                edx, dword ptr [esi]                                 // 0x0051b0b6    8b16
                         mov.s              ecx, esi                                             // 0x0051b0b8    8bce
                         call               dword ptr [edx + 0x508]                              // 0x0051b0ba    ff9208050000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e8d8]                    // 0x0051b0c0    d805d8788c00
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                          // 0x0051b0c6    8b461c
                         {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051b0c9    8b7e40
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                          // 0x0051b0cc    8d5e14
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0051b0cf    d95c240c
                         mov.s              ecx, ebx                                             // 0x0051b0d3    8bcb
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0051b0d5    89442410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051b0d9    e8b27f2e00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x0051b0de    d8442410
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051b0e2    d95c241c
                         fild               dword ptr [ebx]                                      // 0x0051b0e6    db03
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051b0e8    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051b0ee    d95c2418
                         {disp8} fild       dword ptr [ebx + 0x04]                               // 0x0051b0f2    db4304
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051b0f5    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051b0fb    d95c2420
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051b0ff    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051b103    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x40]                               // 0x0051b109    d9442440
                         fnstsw             ax                                                   // 0x0051b10d    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x0051b10f    d81d90a38a00
                         test               ah, 0x40                                             // 0x0051b115    f6c440
                         fnstsw             ax                                                   // 0x0051b118    dfe0
                         {disp8} jne        _jmp_addr_0x0051b195                                 // 0x0051b11a    7579
                         test               ah, 0x40                                             // 0x0051b11c    f6c440
                         {disp8} jne        _jmp_addr_0x0051b179                                 // 0x0051b11f    7558
                         {disp8} mov        edx, dword ptr [esp + 0x40]                          // 0x0051b121    8b542440
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051b125    d9442418
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                          // 0x0051b129    8d4f14
                         xor.s              eax, eax                                             // 0x0051b12c    33c0
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                          // 0x0051b12e    89412c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                          // 0x0051b131    894128
                         {disp8} mov        dword ptr [ecx + 0x24], eax                          // 0x0051b134    894124
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                          // 0x0051b137    89411c
                         {disp8} mov        dword ptr [ecx + 0x18], eax                          // 0x0051b13a    894118
                         {disp8} mov        dword ptr [ecx + 0x14], eax                          // 0x0051b13d    894114
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                          // 0x0051b140    89410c
                         {disp8} mov        dword ptr [ecx + 0x08], eax                          // 0x0051b143    894108
                         {disp8} mov        dword ptr [ecx + 0x04], eax                          // 0x0051b146    894104
                         {disp8} mov        dword ptr [ecx + 0x20], edx                          // 0x0051b149    895120
                         mov                dword ptr [ecx], edx                                 // 0x0051b14c    8911
                         mov.s              eax, edx                                             // 0x0051b14e    8bc2
                         {disp8} mov        dword ptr [ecx + 0x10], eax                          // 0x0051b150    894110
                         {disp8} fadd       dword ptr [ecx + 0x24]                               // 0x0051b153    d84124
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x0051b156    8b44240c
                         push               eax                                                  // 0x0051b15a    50
                         {disp8} fstp       dword ptr [ecx + 0x24]                               // 0x0051b15b    d95924
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051b15e    d9442420
                         {disp8} fadd       dword ptr [ecx + 0x28]                               // 0x0051b162    d84128
                         {disp8} fstp       dword ptr [ecx + 0x28]                               // 0x0051b165    d95928
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x0051b168    d9442424
                         {disp8} fadd       dword ptr [ecx + 0x2c]                               // 0x0051b16c    d8412c
                         {disp8} fstp       dword ptr [ecx + 0x2c]                               // 0x0051b16f    d9592c
                         call               _jmp_addr_0x005198f0                                 // 0x0051b172    e879e7ffff
                         {disp8} jmp        _jmp_addr_0x0051b1c2                                 // 0x0051b177    eb49
_jmp_addr_0x0051b179:    {disp8} lea        ebx, dword ptr [edi + 0x14]                          // 0x0051b179    8d5f14
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051b17c    8d542418
                         mov.s              ecx, ebx                                             // 0x0051b180    8bcb
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051b182    e8a983eeff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x0051b187    8b4c240c
                         push               ecx                                                  // 0x0051b18b    51
                         mov.s              ecx, ebx                                             // 0x0051b18c    8bcb
                         call               _jmp_addr_0x005198f0                                 // 0x0051b18e    e85de7ffff
                         {disp8} jmp        _jmp_addr_0x0051b1c2                                 // 0x0051b193    eb2d
_jmp_addr_0x0051b195:    test               ah, 0x40                                             // 0x0051b195    f6c440
                         {disp8} jne        _jmp_addr_0x0051b1b6                                 // 0x0051b198    751c
                         {disp8} mov        edx, dword ptr [esp + 0x40]                          // 0x0051b19a    8b542440
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                          // 0x0051b19e    8d5f14
                         push               edx                                                  // 0x0051b1a1    52
                         mov.s              ecx, ebx                                             // 0x0051b1a2    8bcb
                         call               _jmp_addr_0x00519320                                 // 0x0051b1a4    e877e1ffff
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051b1a9    8d542418
                         mov.s              ecx, ebx                                             // 0x0051b1ad    8bcb
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z             // 0x0051b1af    e8bc83eeff
                         {disp8} jmp        _jmp_addr_0x0051b1c2                                 // 0x0051b1b4    eb0c
_jmp_addr_0x0051b1b6:    {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051b1b6    8d542418
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                          // 0x0051b1ba    8d4f14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051b1bd    e86e83eeff
_jmp_addr_0x0051b1c2:    {disp8} mov        eax, dword ptr [esp + 0x40]                          // 0x0051b1c2    8b442440
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x0051b1c6    8b4c240c
                         {disp8} mov        dword ptr [edi + 0x48], ecx                          // 0x0051b1ca    894f48
                         {disp8} mov        dword ptr [edi + 0x44], eax                          // 0x0051b1cd    894744
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051b1d0    8b4640
                         {disp32} mov       edx, dword ptr [_game]                               // 0x0051b1d3    8b155c19d000
                         mov                ebx, dword ptr [eax]                                 // 0x0051b1d9    8b18
                         mov.s              edi, eax                                             // 0x0051b1db    8bf8
                         {disp32} mov       eax, dword ptr [edx + 0x00205d48]                    // 0x0051b1dd    8b82485d2000
                         push               eax                                                  // 0x0051b1e3    50
                         mov.s              ecx, edi                                             // 0x0051b1e4    8bcf
                         call               dword ptr [ebx + 0x18c]                              // 0x0051b1e6    ff938c010000
                         mov                edx, dword ptr [edi]                                 // 0x0051b1ec    8b17
                         push               eax                                                  // 0x0051b1ee    50
                         mov.s              ecx, edi                                             // 0x0051b1ef    8bcf
                         call               dword ptr [edx + 0x184]                              // 0x0051b1f1    ff9284010000
                         push               eax                                                  // 0x0051b1f7    50
                         mov.s              ecx, esi                                             // 0x0051b1f8    8bce
                         call               _jmp_addr_0x005167d0                                 // 0x0051b1fa    e8d1b5ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b1ff    8b4e40
                         mov.s              edx, eax                                             // 0x0051b202    8bd0
                         call               dword ptr [ebx + 0x188]                              // 0x0051b204    ff9388010000
                         pop                edi                                                  // 0x0051b20a    5f
                         pop                esi                                                  // 0x0051b20b    5e
                         pop                ebx                                                  // 0x0051b20c    5b
                         add                esp, 0x30                                            // 0x0051b20d    83c430
                         ret                0x0004                                               // 0x0051b210    c20400
                         nop                                                                     // 0x0051b213    90
                         nop                                                                     // 0x0051b214    90
                         nop                                                                     // 0x0051b215    90
                         nop                                                                     // 0x0051b216    90
                         nop                                                                     // 0x0051b217    90
                         nop                                                                     // 0x0051b218    90
                         nop                                                                     // 0x0051b219    90
                         nop                                                                     // 0x0051b21a    90
                         nop                                                                     // 0x0051b21b    90
                         nop                                                                     // 0x0051b21c    90
                         nop                                                                     // 0x0051b21d    90
                         nop                                                                     // 0x0051b21e    90
                         nop                                                                     // 0x0051b21f    90
_jmp_addr_0x0051b220:    sub                esp, 0x5c                                            // 0x0051b220    83ec5c
                         push               esi                                                  // 0x0051b223    56
                         mov.s              esi, ecx                                             // 0x0051b224    8bf1
                         {disp8} fld        dword ptr [esi + 0x1c]                               // 0x0051b226    d9461c
                         {disp32} fcomp     dword ptr [__real@3e4ccccd]                          // 0x0051b229    d81d44b28a00
                         fnstsw             ax                                                   // 0x0051b22f    dfe0
                         test               ah, 0x41                                             // 0x0051b231    f6c441
                         {disp32} je        _jmp_addr_0x0051b3bd                                 // 0x0051b234    0f8483010000
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051b23a    8b4640
                         {disp8} fld        dword ptr [eax + 0x38]                               // 0x0051b23d    d94038
                         {disp8} fadd       dword ptr [eax + 0x14]                               // 0x0051b240    d84014
                         {disp8} fld        dword ptr [eax + 0x40]                               // 0x0051b243    d94040
                         {disp8} fadd       dword ptr [eax + 0x1c]                               // 0x0051b246    d8401c
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051b249    d95c242c
                         {disp8} fld        dword ptr [eax + 0x38]                               // 0x0051b24d    d94038
                         {disp8} fadd       dword ptr [eax + 0x2c]                               // 0x0051b250    d8402c
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051b253    d95c2418
                         {disp8} fld        dword ptr [eax + 0x40]                               // 0x0051b257    d94040
                         {disp8} fadd       dword ptr [eax + 0x34]                               // 0x0051b25a    d84034
                         {disp8} mov        eax, dword ptr [eax + 0x3c]                          // 0x0051b25d    8b403c
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x0051b260    89442408
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051b264    d95c2420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x0051b268    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x0051b26e    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051b274    e887612800
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0051b279    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x0051b27d    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x0051b283    8944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x0051b287    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051b28d    e86e612800
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x0051b292    8d4c240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0051b296    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x0051b29a    c744241400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051b2a2    e8e97d2e00
                         {disp8} fsub       dword ptr [esp + 0x08]                               // 0x0051b2a7    d8642408
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x0051b2ab    d95c2404
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051b2af    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x0051b2b3    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x0051b2b9    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051b2bf    e83c612800
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051b2c4    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x0051b2c8    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x0051b2ce    8944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x0051b2d2    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051b2d8    e823612800
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x0051b2dd    8d4c240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0051b2e1    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x0051b2e5    c744241400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051b2ed    e89e7d2e00
                         {disp8} fsub       dword ptr [esp + 0x08]                               // 0x0051b2f2    d8642408
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051b2f6    d9442404
                         {disp32} fcomp     dword ptr [__real@3e999999]                          // 0x0051b2fa    d81d3cb28a00
                         fnstsw             ax                                                   // 0x0051b300    dfe0
                         test               ah, 0x01                                             // 0x0051b302    f6c401
                         {disp8} jne        _jmp_addr_0x0051b30f                                 // 0x0051b305    7508
                         {disp8} mov        dword ptr [esp + 0x04], 0x3e99999a                   // 0x0051b307    c74424049a99993e
_jmp_addr_0x0051b30f:    {disp32} fcom      dword ptr [__real@3e999999]                          // 0x0051b30f    d8153cb28a00
                         fnstsw             ax                                                   // 0x0051b315    dfe0
                         test               ah, 0x01                                             // 0x0051b317    f6c401
                         {disp8} jne        _jmp_addr_0x0051b324                                 // 0x0051b31a    7508
                         fstp               st(0)                                                // 0x0051b31c    ddd8
                         {disp32} fld       dword ptr [__real@3e999999]                          // 0x0051b31e    d9053cb28a00
_jmp_addr_0x0051b324:    {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051b324    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x21284]                    // 0x0051b328    d81d84a28c00
                         fnstsw             ax                                                   // 0x0051b32e    dfe0
                         test               ah, 0x41                                             // 0x0051b330    f6c441
                         {disp8} je         _jmp_addr_0x0051b33d                                 // 0x0051b333    7408
                         {disp8} mov        dword ptr [esp + 0x04], 0xbe99999a                   // 0x0051b335    c74424049a9999be
_jmp_addr_0x0051b33d:    {disp32} fcom      dword ptr [rdata_bytes + 0x21284]                    // 0x0051b33d    d81584a28c00
                         fnstsw             ax                                                   // 0x0051b343    dfe0
                         test               ah, 0x41                                             // 0x0051b345    f6c441
                         {disp8} je         _jmp_addr_0x0051b352                                 // 0x0051b348    7408
                         fstp               st(0)                                                // 0x0051b34a    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x21284]                    // 0x0051b34c    d90584a28c00
_jmp_addr_0x0051b352:    {disp8} mov        ecx, dword ptr [esp + 0x04]                          // 0x0051b352    8b4c2404
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0051b356    d95c244c
                         {disp8} mov        dword ptr [esp + 0x34], ecx                          // 0x0051b35a    894c2434
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b35e    8b4e40
                         {disp8} lea        edx, dword ptr [esp + 0x30]                          // 0x0051b361    8d542430
                         add                ecx, 0x14                                            // 0x0051b365    83c114
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000                   // 0x0051b368    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000                   // 0x0051b370    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000                   // 0x0051b378    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000                   // 0x0051b380    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x0051b388    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000                   // 0x0051b390    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000                   // 0x0051b398    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x3f800000                   // 0x0051b3a0    c74424500000803f
                         {disp8} mov        dword ptr [esp + 0x40], 0x3f800000                   // 0x0051b3a8    c74424400000803f
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f800000                   // 0x0051b3b0    c74424300000803f
                         call               _jmp_addr_0x007fae60                                 // 0x0051b3b8    e8a3fa2d00
_jmp_addr_0x0051b3bd:    pop                esi                                                  // 0x0051b3bd    5e
                         add                esp, 0x5c                                            // 0x0051b3be    83c45c
                         ret                                                                     // 0x0051b3c1    c3
                         nop                                                                     // 0x0051b3c2    90
                         nop                                                                     // 0x0051b3c3    90
                         nop                                                                     // 0x0051b3c4    90
                         nop                                                                     // 0x0051b3c5    90
                         nop                                                                     // 0x0051b3c6    90
                         nop                                                                     // 0x0051b3c7    90
                         nop                                                                     // 0x0051b3c8    90
                         nop                                                                     // 0x0051b3c9    90
                         nop                                                                     // 0x0051b3ca    90
                         nop                                                                     // 0x0051b3cb    90
                         nop                                                                     // 0x0051b3cc    90
                         nop                                                                     // 0x0051b3cd    90
                         nop                                                                     // 0x0051b3ce    90
                         nop                                                                     // 0x0051b3cf    90
_jmp_addr_0x0051b3d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x0051b3d0    8b442404
                         push               ebx                                                  // 0x0051b3d4    53
                         push               esi                                                  // 0x0051b3d5    56
                         push               edi                                                  // 0x0051b3d6    57
                         mov.s              esi, ecx                                             // 0x0051b3d7    8bf1
                         push               eax                                                  // 0x0051b3d9    50
                         call               _jmp_addr_0x0051af00                                 // 0x0051b3da    e821fbffff
                         mov.s              ecx, esi                                             // 0x0051b3df    8bce
                         call               _jmp_addr_0x0051b220                                 // 0x0051b3e1    e83afeffff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b3e6    8b4e40
                         mov                edx, dword ptr [ecx]                                 // 0x0051b3e9    8b11
                         call               dword ptr [edx + 0x18c]                              // 0x0051b3eb    ff928c010000
                         test               eax, eax                                             // 0x0051b3f1    85c0
                         {disp8} jge        _jmp_addr_0x0051b402                                 // 0x0051b3f3    7d0d
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b3f5    8b4e40
                         mov                eax, dword ptr [ecx]                                 // 0x0051b3f8    8b01
                         xor.s              edx, edx                                             // 0x0051b3fa    33d2
                         call               dword ptr [eax + 0x188]                              // 0x0051b3fc    ff9088010000
_jmp_addr_0x0051b402:    {disp8} mov        eax, dword ptr [esi + 0x44]                          // 0x0051b402    8b4644
                         test               eax, eax                                             // 0x0051b405    85c0
                         {disp8} je         _jmp_addr_0x0051b416                                 // 0x0051b407    740d
                         mov.s              ecx, esi                                             // 0x0051b409    8bce
                         call               _jmp_addr_0x00518050                                 // 0x0051b40b    e840ccffff
                         pop                edi                                                  // 0x0051b410    5f
                         pop                esi                                                  // 0x0051b411    5e
                         pop                ebx                                                  // 0x0051b412    5b
                         ret                0x0004                                               // 0x0051b413    c20400
_jmp_addr_0x0051b416:    {disp32} mov       eax, dword ptr [esi + 0x000000d0]                    // 0x0051b416    8b86d0000000
                         test               eax, eax                                             // 0x0051b41c    85c0
                         {disp8} je         _jmp_addr_0x0051b43d                                 // 0x0051b41e    741d
                         {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051b420    8b7e40
                         push               eax                                                  // 0x0051b423    50
                         or                 edx, 0xffffffff                                      // 0x0051b424    83caff
_jmp_addr_0x0051b427:    mov.s              ecx, edi                                             // 0x0051b427    8bcf
                         call               _jmp_addr_0x0080bec0                                 // 0x0051b429    e8920a2f00
                         mov.s              edx, esi                                             // 0x0051b42e    8bd6
                         mov.s              ecx, edi                                             // 0x0051b430    8bcf
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051b432    e899011200
                         pop                edi                                                  // 0x0051b437    5f
                         pop                esi                                                  // 0x0051b438    5e
                         pop                ebx                                                  // 0x0051b439    5b
                         ret                0x0004                                               // 0x0051b43a    c20400
_jmp_addr_0x0051b43d:    mov                edx, dword ptr [esi]                                 // 0x0051b43d    8b16
                         mov.s              ecx, esi                                             // 0x0051b43f    8bce
                         call               dword ptr [edx + 0x4a4]                              // 0x0051b441    ff92a4040000
                         test               al, al                                               // 0x0051b447    84c0
                         {disp8} je         _jmp_addr_0x0051b45f                                 // 0x0051b449    7414
                         call               _jmp_addr_0x0051bb60                                 // 0x0051b44b    e810070000
                         mov.s              ebx, eax                                             // 0x0051b450    8bd8
                         call               _jmp_addr_0x0051bb50                                 // 0x0051b452    e8f9060000
                         {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051b457    8b7e40
                         push               ebx                                                  // 0x0051b45a    53
                         mov.s              edx, eax                                             // 0x0051b45b    8bd0
                         {disp8} jmp        _jmp_addr_0x0051b427                                 // 0x0051b45d    ebc8
_jmp_addr_0x0051b45f:    {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051b45f    8b7e40
                         push               ebp                                                  // 0x0051b462    55
                         {disp8} lea        ebx, dword ptr [edi + 0x50]                          // 0x0051b463    8d5f50
                         push               ebx                                                  // 0x0051b466    53
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x0051b467    8d6f4c
                         {disp8} lea        eax, dword ptr [edi + 0x38]                          // 0x0051b46a    8d4738
                         push               ebp                                                  // 0x0051b46d    55
                         push               eax                                                  // 0x0051b46e    50
                         call               _jmp_addr_0x00801c90                                 // 0x0051b46f    e81c682e00
                         mov                eax, dword ptr [ebx]                                 // 0x0051b474    8b03
                         push               ebp                                                  // 0x0051b476    55
                         push               eax                                                  // 0x0051b477    50
                         {disp8} lea        eax, dword ptr [edi + 0x38]                          // 0x0051b478    8d4738
                         push               eax                                                  // 0x0051b47b    50
                         call               _jmp_addr_0x007feb30                                 // 0x0051b47c    e8af362e00
                         add                esp, 0x18                                            // 0x0051b481    83c418
                         mov.s              edx, esi                                             // 0x0051b484    8bd6
                         mov.s              ecx, edi                                             // 0x0051b486    8bcf
                         mov                dword ptr [ebx], eax                                 // 0x0051b488    8903
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051b48a    e841011200
                         pop                ebp                                                  // 0x0051b48f    5d
                         pop                edi                                                  // 0x0051b490    5f
                         pop                esi                                                  // 0x0051b491    5e
                         pop                ebx                                                  // 0x0051b492    5b
                         ret                0x0004                                               // 0x0051b493    c20400
                         nop                                                                     // 0x0051b496    90
                         nop                                                                     // 0x0051b497    90
                         nop                                                                     // 0x0051b498    90
                         nop                                                                     // 0x0051b499    90
                         nop                                                                     // 0x0051b49a    90
                         nop                                                                     // 0x0051b49b    90
                         nop                                                                     // 0x0051b49c    90
                         nop                                                                     // 0x0051b49d    90
                         nop                                                                     // 0x0051b49e    90
                         nop                                                                     // 0x0051b49f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x0051b4a0    8b442404
                         push               esi                                                  // 0x0051b4a4    56
                         push               edi                                                  // 0x0051b4a5    57
                         mov.s              esi, ecx                                             // 0x0051b4a6    8bf1
                         push               eax                                                  // 0x0051b4a8    50
                         call               _jmp_addr_0x0051af00                                 // 0x0051b4a9    e852faffff
                         {disp32} mov       eax, dword ptr [esi + 0x000000d0]                    // 0x0051b4ae    8b86d0000000
                         test               eax, eax                                             // 0x0051b4b4    85c0
                         {disp8} jne        _jmp_addr_0x0051b4f3                                 // 0x0051b4b6    753b
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b4b8    8b4e40
                         mov                eax, dword ptr [ecx]                                 // 0x0051b4bb    8b01
                         mov                edx, 0x00000001                                      // 0x0051b4bd    ba01000000
                         call               dword ptr [eax + 0x48]                               // 0x0051b4c2    ff5048
                         mov                edx, dword ptr [esi]                                 // 0x0051b4c5    8b16
                         mov.s              ecx, esi                                             // 0x0051b4c7    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x0051b4c9    ff521c
                         mov.s              ecx, eax                                             // 0x0051b4cc    8bc8
                         call               ?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ        // 0x0051b4ce    e82d231300
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b4d3    8b4e40
                         mov                edi, dword ptr [ecx]                                 // 0x0051b4d6    8b39
                         or                 eax, 0xff000000                                      // 0x0051b4d8    0d000000ff
                         push               0x0                                                  // 0x0051b4dd    6a00
                         mov.s              edx, eax                                             // 0x0051b4df    8bd0
                         call               dword ptr [edi + 0x2c]                               // 0x0051b4e1    ff572c
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051b4e4    8b4e40
                         mov.s              edx, esi                                             // 0x0051b4e7    8bd6
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051b4e9    e8e2001200
                         pop                edi                                                  // 0x0051b4ee    5f
                         pop                esi                                                  // 0x0051b4ef    5e
                         ret                0x0004                                               // 0x0051b4f0    c20400
_jmp_addr_0x0051b4f3:    {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051b4f3    8b7e40
                         push               eax                                                  // 0x0051b4f6    50
                         or                 edx, 0xffffffff                                      // 0x0051b4f7    83caff
                         mov.s              ecx, edi                                             // 0x0051b4fa    8bcf
                         call               _jmp_addr_0x0080bec0                                 // 0x0051b4fc    e8bf092f00
                         mov.s              edx, esi                                             // 0x0051b501    8bd6
                         mov.s              ecx, edi                                             // 0x0051b503    8bcf
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051b505    e8c6001200
                         pop                edi                                                  // 0x0051b50a    5f
                         pop                esi                                                  // 0x0051b50b    5e
                         ret                0x0004                                               // 0x0051b50c    c20400
                         nop                                                                     // 0x0051b50f    90

?DrawVillagerInfo@Villager@@UAEIXZ:
                         sub                esp, 0x00000820                                      // 0x0051b510    81ec20080000
                         push               ebx                                                  // 0x0051b516    53
                         push               ebp                                                  // 0x0051b517    55
                         push               esi                                                  // 0x0051b518    56
                         mov.s              esi, ecx                                             // 0x0051b519    8bf1
                         test               byte ptr [esi + 0x000000b5], 0x02                    // 0x0051b51b    f686b500000002
                         push               edi                                                  // 0x0051b522    57
                         {disp8} jne        _jmp_addr_0x0051b540                                 // 0x0051b523    751b
                         {disp32} mov       eax, dword ptr [_game]                               // 0x0051b525    a15c19d000
                         test               dword ptr [eax + 0x14], 0x00200000                   // 0x0051b52a    f7401400002000
                         {disp8} jne        _jmp_addr_0x0051b540                                 // 0x0051b531    750d
                         xor.s              al, al                                               // 0x0051b533    32c0
                         pop                edi                                                  // 0x0051b535    5f
                         pop                esi                                                  // 0x0051b536    5e
                         pop                ebp                                                  // 0x0051b537    5d
                         pop                ebx                                                  // 0x0051b538    5b
                         add                esp, 0x00000820                                      // 0x0051b539    81c420080000
                         ret                                                                     // 0x0051b53f    c3
_jmp_addr_0x0051b540:    mov                edx, dword ptr [esi]                                 // 0x0051b540    8b16
                         mov.s              ecx, esi                                             // 0x0051b542    8bce
                         call               dword ptr [edx + 0xb04]                              // 0x0051b544    ff92040b0000
                         push               0x00c4cd30                                           // 0x0051b54a    6830cdc400
                         and                eax, 0x000000ff                                      // 0x0051b54f    25ff000000
                         mov.s              ecx, eax                                             // 0x0051b554    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]                     // 0x0051b556    8d0449
                         shl                eax, 3                                               // 0x0051b559    c1e003
                         sub.s              eax, ecx                                             // 0x0051b55c    2bc1
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x0051b55e    8d4c2434
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x0051b562    8d0440
                         push               ecx                                                  // 0x0051b565    51
                         {disp32} lea       ebp, dword ptr [eax * 0x4 + _GVillagerStateTableInfos] // 0x0051b566    8d2c85689edb00
                         call               _wcscpy                                              // 0x0051b56d    e844aa2a00
                         push               0x0                                                  // 0x0051b572    6a00
                         push               0x00be8f48                                           // 0x0051b574    68488fbe00
                         push               0x009cafc8                                           // 0x0051b579    68c8af9c00
                         push               0x0                                                  // 0x0051b57e    6a00
                         push               esi                                                  // 0x0051b580    56
                         call               ___RTDynamicCast                                     // 0x0051b581    e893a42a00
                         mov                edx, dword ptr [esi]                                 // 0x0051b586    8b16
                         add                esp, 0x1c                                            // 0x0051b588    83c41c
                         mov.s              ecx, esi                                             // 0x0051b58b    8bce
                         mov.s              edi, eax                                             // 0x0051b58d    8bf8
                         call               dword ptr [edx + 0xb40]                              // 0x0051b58f    ff92400b0000
                         test               eax, eax                                             // 0x0051b595    85c0
                         {disp8} je         _jmp_addr_0x0051b5db                                 // 0x0051b597    7442
                         test               edi, edi                                             // 0x0051b599    85ff
                         {disp8} je         _jmp_addr_0x0051b5db                                 // 0x0051b59b    743e
                         mov.s              ecx, edi                                             // 0x0051b59d    8bcf
                         call               ?CanShowName@SpecialVillager@@QAE_NXZ                // 0x0051b59f    e8cc3e2000
                         test               al, al                                               // 0x0051b5a4    84c0
                         {disp8} je         _jmp_addr_0x0051b5db                                 // 0x0051b5a6    7433
                         mov                eax, dword ptr [esi]                                 // 0x0051b5a8    8b06
                         mov.s              ecx, esi                                             // 0x0051b5aa    8bce
                         call               dword ptr [eax + 0xb40]                              // 0x0051b5ac    ff90400b0000
                         push               eax                                                  // 0x0051b5b2    50
                         call               _CHAR2WCHAR__FPc                                     // 0x0051b5b3    e8e84a3100
                         add                esp, 0x04                                            // 0x0051b5b8    83c404
                         push               eax                                                  // 0x0051b5bb    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x0051b5bc    8d4c2434
                         push               0x00be8f3c                                           // 0x0051b5c0    683c8fbe00
                         push               ecx                                                  // 0x0051b5c5    51
                         call               _wcslen                                              // 0x0051b5c6    e897ae2a00
                         {disp8} lea        edx, dword ptr [esp + eax * 0x2 + 0x3c]              // 0x0051b5cb    8d54443c
                         add                esp, 0x04                                            // 0x0051b5cf    83c404
                         push               edx                                                  // 0x0051b5d2    52
                         call               _swprintf                                            // 0x0051b5d3    e8a7ae2a00
                         add                esp, 0x0c                                            // 0x0051b5d8    83c40c
_jmp_addr_0x0051b5db:    {disp32} mov       ecx, dword ptr [ebp + 0x0000010c]                    // 0x0051b5db    8b8d0c010000
                         test               ecx, ecx                                             // 0x0051b5e1    85c9
                         {disp32} je        _jmp_addr_0x0051b70d                                 // 0x0051b5e3    0f8424010000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x351cac]               // 0x0051b5e9    8b3dac7cd100
                         cmp                edi, 0x000017e0                                      // 0x0051b5ef    81ffe0170000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0051b5f5    a1a87cd100
                         mov.s              edx, eax                                             // 0x0051b5fa    8bd0
                         {disp8} jbe        _jmp_addr_0x0051b604                                 // 0x0051b5fc    7606
                         {disp32} lea       edx, dword ptr [eax + 0x00011e80]                    // 0x0051b5fe    8d90801e0100
_jmp_addr_0x0051b604:    cmp                edi, 0x000017df                                      // 0x0051b604    81ffdf170000
                         {disp8} mov        edx, dword ptr [edx + 0x08]                          // 0x0051b60a    8b5208
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x0051b60d    89542410
                         mov.s              edx, eax                                             // 0x0051b611    8bd0
                         {disp8} jbe        _jmp_addr_0x0051b61b                                 // 0x0051b613    7606
                         {disp32} lea       edx, dword ptr [eax + 0x00011e74]                    // 0x0051b615    8d90741e0100
_jmp_addr_0x0051b61b:    cmp                edi, 0x000017e1                                      // 0x0051b61b    81ffe1170000
                         {disp8} mov        ebx, dword ptr [edx + 0x08]                          // 0x0051b621    8b5a08
                         mov.s              edx, eax                                             // 0x0051b624    8bd0
                         {disp8} jbe        _jmp_addr_0x0051b62e                                 // 0x0051b626    7606
                         {disp32} lea       edx, dword ptr [eax + 0x00011e8c]                    // 0x0051b628    8d908c1e0100
_jmp_addr_0x0051b62e:    cmp.s              ecx, edi                                             // 0x0051b62e    3bcf
                         {disp8} mov        ebp, dword ptr [edx + 0x08]                          // 0x0051b630    8b6a08
                         {disp8} jae        _jmp_addr_0x0051b63f                                 // 0x0051b633    730a
                         test               ecx, ecx                                             // 0x0051b635    85c9
                         {disp8} jbe        _jmp_addr_0x0051b63f                                 // 0x0051b637    7606
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0051b639    8d0c49
                         lea                eax, dword ptr [eax + ecx * 0x4]                     // 0x0051b63c    8d0488
_jmp_addr_0x0051b63f:    {disp32} fld       dword ptr [esi + 0x000000e8]                         // 0x0051b63f    d986e8000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051b645    8b542410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]                     // 0x0051b649    d80d1cb48a00
                         {disp8} mov        edi, dword ptr [eax + 0x08]                          // 0x0051b64f    8b7808
                         mov                eax, dword ptr [esi]                                 // 0x0051b652    8b06
                         sub                esp, 0x08                                            // 0x0051b654    83ec08
                         fstp               qword ptr [esp]                                      // 0x0051b657    dd1c24
                         push               edx                                                  // 0x0051b65a    52
                         mov.s              ecx, esi                                             // 0x0051b65b    8bce
                         call               dword ptr [eax + 0x11c]                              // 0x0051b65d    ff901c010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]                     // 0x0051b663    d80d1cb48a00
                         mov                edx, dword ptr [esi]                                 // 0x0051b669    8b16
                         sub                esp, 0x08                                            // 0x0051b66b    83ec08
                         fstp               qword ptr [esp]                                      // 0x0051b66e    dd1c24
                         push               ebx                                                  // 0x0051b671    53
                         mov.s              ecx, esi                                             // 0x0051b672    8bce
                         call               dword ptr [edx + 0x8d0]                              // 0x0051b674    ff92d0080000
                         push               eax                                                  // 0x0051b67a    50
                         push               ebp                                                  // 0x0051b67b    55
                         push               edi                                                  // 0x0051b67c    57
                         {disp8} lea        eax, dword ptr [esp + 0x54]                          // 0x0051b67d    8d442454
                         push               0x00be8f08                                           // 0x0051b681    68088fbe00
                         push               eax                                                  // 0x0051b686    50
                         call               _wcslen                                              // 0x0051b687    e8d6ad2a00
                         {disp8} lea        ecx, dword ptr [esp + eax * 0x2 + 0x5c]              // 0x0051b68c    8d4c445c
                         add                esp, 0x04                                            // 0x0051b690    83c404
                         push               ecx                                                  // 0x0051b693    51
                         call               _swprintf                                            // 0x0051b694    e8e6ad2a00
                         add                esp, 0x2c                                            // 0x0051b699    83c42c
                         mov.s              ecx, esi                                             // 0x0051b69c    8bce
                         call               ?IsPregnant@Villager@@QAE_NXZ                        // 0x0051b69e    e86d6b2300
                         test               eax, eax                                             // 0x0051b6a3    85c0
                         {disp8} je         _jmp_addr_0x0051b6d7                                 // 0x0051b6a5    7430
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000017e3        // 0x0051b6a7    813dac7cd100e3170000
                         {disp8} ja         _jmp_addr_0x0051b6ba                                 // 0x0051b6b1    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0051b6b3    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0051b6c6                                 // 0x0051b6b8    eb0c
_jmp_addr_0x0051b6ba:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0051b6ba    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00011ea4]                    // 0x0051b6c0    8d82a41e0100
_jmp_addr_0x0051b6c6:    {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0051b6c6    8b4008
                         push               eax                                                  // 0x0051b6c9    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x0051b6ca    8d4c2434
                         push               ecx                                                  // 0x0051b6ce    51
                         call               _wcscat                                              // 0x0051b6cf    e8b8a82a00
                         add                esp, 0x08                                            // 0x0051b6d4    83c408
_jmp_addr_0x0051b6d7:    mov                edx, dword ptr [esi]                                 // 0x0051b6d7    8b16
                         mov.s              ecx, esi                                             // 0x0051b6d9    8bce
                         call               dword ptr [edx + 0x4a4]                              // 0x0051b6db    ff92a4040000
                         test               al, al                                               // 0x0051b6e1    84c0
                         {disp32} je        _jmp_addr_0x0051b7da                                 // 0x0051b6e3    0f84f1000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000017e2        // 0x0051b6e9    813dac7cd100e2170000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0051b6f3    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0051b6ff                                 // 0x0051b6f8    7605
                         add                eax, 0x00011e98                                      // 0x0051b6fa    05981e0100
_jmp_addr_0x0051b6ff:    {disp8} mov        ecx, dword ptr [eax + 0x08]                          // 0x0051b6ff    8b4808
                         push               ecx                                                  // 0x0051b702    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                          // 0x0051b703    8d542434
                         push               edx                                                  // 0x0051b707    52
                         {disp32} jmp       _jmp_addr_0x0051b7d2                                 // 0x0051b708    e9c5000000
_jmp_addr_0x0051b70d:    add                ebp, 0x38                                            // 0x0051b70d    83c538
                         push               ebp                                                  // 0x0051b710    55
                         call               _CHAR2WCHAR__FPc                                     // 0x0051b711    e88a493100
                         add                esp, 0x04                                            // 0x0051b716    83c404
                         push               eax                                                  // 0x0051b719    50
                         {disp8} lea        eax, dword ptr [esp + 0x34]                          // 0x0051b71a    8d442434
                         push               0x00be8f3c                                           // 0x0051b71e    683c8fbe00
                         push               eax                                                  // 0x0051b723    50
                         call               _wcslen                                              // 0x0051b724    e839ad2a00
                         {disp8} lea        ecx, dword ptr [esp + eax * 0x2 + 0x3c]              // 0x0051b729    8d4c443c
                         add                esp, 0x04                                            // 0x0051b72d    83c404
                         push               ecx                                                  // 0x0051b730    51
                         call               _swprintf                                            // 0x0051b731    e849ad2a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]               // 0x0051b736    a1ac7cd100
                         add                esp, 0x0c                                            // 0x0051b73b    83c40c
                         cmp                eax, 0x00001a35                                      // 0x0051b73e    3d351a0000
                         {disp8} ja         _jmp_addr_0x0051b74c                                 // 0x0051b743    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0051b745    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0051b758                                 // 0x0051b74a    eb0c
_jmp_addr_0x0051b74c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0051b74c    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013a7c]                    // 0x0051b752    8d827c3a0100
_jmp_addr_0x0051b758:    {disp8} mov        edi, dword ptr [eax + 0x08]                          // 0x0051b758    8b7808
                         {disp32} fld       dword ptr [esi + 0x000000e8]                         // 0x0051b75b    d986e8000000
                         mov                eax, dword ptr [esi]                                 // 0x0051b761    8b06
                         sub                esp, 0x08                                            // 0x0051b763    83ec08
                         mov.s              ecx, esi                                             // 0x0051b766    8bce
                         fstp               qword ptr [esp]                                      // 0x0051b768    dd1c24
                         call               dword ptr [eax + 0x11c]                              // 0x0051b76b    ff901c010000
                         mov                edx, dword ptr [esi]                                 // 0x0051b771    8b16
                         sub                esp, 0x08                                            // 0x0051b773    83ec08
                         mov.s              ecx, esi                                             // 0x0051b776    8bce
                         fstp               qword ptr [esp]                                      // 0x0051b778    dd1c24
                         call               dword ptr [edx + 0x8d0]                              // 0x0051b77b    ff92d0080000
                         push               eax                                                  // 0x0051b781    50
                         {disp8} lea        eax, dword ptr [esp + 0x44]                          // 0x0051b782    8d442444
                         push               edi                                                  // 0x0051b786    57
                         push               eax                                                  // 0x0051b787    50
                         call               _wcslen                                              // 0x0051b788    e8d5ac2a00
                         {disp8} lea        ecx, dword ptr [esp + eax * 0x2 + 0x4c]              // 0x0051b78d    8d4c444c
                         add                esp, 0x04                                            // 0x0051b791    83c404
                         push               ecx                                                  // 0x0051b794    51
                         call               _swprintf                                            // 0x0051b795    e8e5ac2a00
                         add                esp, 0x1c                                            // 0x0051b79a    83c41c
                         mov.s              ecx, esi                                             // 0x0051b79d    8bce
                         call               ?IsPregnant@Villager@@QAE_NXZ                        // 0x0051b79f    e86c6a2300
                         test               eax, eax                                             // 0x0051b7a4    85c0
                         {disp8} je         _jmp_addr_0x0051b7ba                                 // 0x0051b7a6    7412
                         {disp8} lea        edx, dword ptr [esp + 0x30]                          // 0x0051b7a8    8d542430
                         push               0x00be8f00                                           // 0x0051b7ac    68008fbe00
                         push               edx                                                  // 0x0051b7b1    52
                         call               _wcscat                                              // 0x0051b7b2    e8d5a72a00
                         add                esp, 0x08                                            // 0x0051b7b7    83c408
_jmp_addr_0x0051b7ba:    mov                eax, dword ptr [esi]                                 // 0x0051b7ba    8b06
                         mov.s              ecx, esi                                             // 0x0051b7bc    8bce
                         call               dword ptr [eax + 0x4a4]                              // 0x0051b7be    ff90a4040000
                         test               al, al                                               // 0x0051b7c4    84c0
                         {disp8} je         _jmp_addr_0x0051b7da                                 // 0x0051b7c6    7412
                         push               0x00be8ef8                                           // 0x0051b7c8    68f88ebe00
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x0051b7cd    8d4c2434
                         push               ecx                                                  // 0x0051b7d1    51
_jmp_addr_0x0051b7d2:    call               _wcscat                                              // 0x0051b7d2    e8b5a72a00
                         add                esp, 0x08                                            // 0x0051b7d7    83c408
_jmp_addr_0x0051b7da:    {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051b7da    8b4640
                         test               eax, eax                                             // 0x0051b7dd    85c0
                         {disp8} je         _jmp_addr_0x0051b7e6                                 // 0x0051b7df    7405
                         add                eax, 0x38                                            // 0x0051b7e1    83c038
                         {disp8} jmp        _jmp_addr_0x0051b7f3                                 // 0x0051b7e4    eb0d
_jmp_addr_0x0051b7e6:    {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051b7e6    8d542424
                         push               edx                                                  // 0x0051b7ea    52
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x0051b7eb    8d4e14
                         call               @GetLHPoint__9MapCoordsCFv@12                        // 0x0051b7ee    e84da40e00
_jmp_addr_0x0051b7f3:    mov                ecx, dword ptr [eax]                                 // 0x0051b7f3    8b08
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x0051b7f5    894c2414
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x0051b7f9    8b5004
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x0051b7fc    89542418
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051b800    d9442418
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0051b804    8b4008
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2611c]                    // 0x0051b807    d8051cf18c00
                         mov                edx, dword ptr [esi]                                 // 0x0051b80d    8b16
                         mov.s              ecx, esi                                             // 0x0051b80f    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051b811    d95c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x0051b815    8944241c
                         {disp8} mov        byte ptr [esp + 0x10], -0x01                         // 0x0051b819    c6442410ff
                         {disp8} mov        byte ptr [esp + 0x11], -0x01                         // 0x0051b81e    c6442411ff
                         {disp8} mov        byte ptr [esp + 0x12], -0x01                         // 0x0051b823    c6442412ff
                         {disp8} mov        byte ptr [esp + 0x13], -0x01                         // 0x0051b828    c6442413ff
                         call               dword ptr [edx + 0x48]                               // 0x0051b82d    ff5248
                         test               eax, eax                                             // 0x0051b830    85c0
                         {disp8} je         _jmp_addr_0x0051b866                                 // 0x0051b832    7432
                         mov                eax, dword ptr [esi]                                 // 0x0051b834    8b06
                         mov.s              ecx, esi                                             // 0x0051b836    8bce
                         call               dword ptr [eax + 0x48]                               // 0x0051b838    ff5048
                         mov                edx, dword ptr [eax]                                 // 0x0051b83b    8b10
                         mov.s              ecx, eax                                             // 0x0051b83d    8bc8
                         call               dword ptr [edx + 0x1c]                               // 0x0051b83f    ff521c
                         test               eax, eax                                             // 0x0051b842    85c0
                         {disp8} je         _jmp_addr_0x0051b866                                 // 0x0051b844    7420
                         mov                eax, dword ptr [esi]                                 // 0x0051b846    8b06
                         mov.s              ecx, esi                                             // 0x0051b848    8bce
                         call               dword ptr [eax + 0x48]                               // 0x0051b84a    ff5048
                         mov                edx, dword ptr [eax]                                 // 0x0051b84d    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                          // 0x0051b84f    8d4c2420
                         push               ecx                                                  // 0x0051b853    51
                         mov.s              ecx, eax                                             // 0x0051b854    8bc8
                         call               dword ptr [edx + 0x1c]                               // 0x0051b856    ff521c
                         mov.s              ecx, eax                                             // 0x0051b859    8bc8
                         call               @GetPlayer3DColor__7GPlayerFv@12                     // 0x0051b85b    e830fd1200
                         mov                eax, dword ptr [eax]                                 // 0x0051b860    8b00
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0051b862    89442410
_jmp_addr_0x0051b866:    mov                edx, dword ptr [esi]                                 // 0x0051b866    8b16
                         mov.s              ecx, esi                                             // 0x0051b868    8bce
                         call               dword ptr [edx + 0x450]                              // 0x0051b86a    ff9250040000
                         test               eax, eax                                             // 0x0051b870    85c0
                         {disp32} je        _jmp_addr_0x0051b900                                 // 0x0051b872    0f8488000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0051b878    8b442410
                         mov.s              ecx, eax                                             // 0x0051b87c    8bc8
                         and                ecx, 0x00ff0000                                      // 0x0051b87e    81e10000ff00
                         lea                edx, dword ptr [ecx + ecx * 0x8]                     // 0x0051b884    8d14c9
                         shl                edx, 4                                               // 0x0051b887    c1e204
                         add.s              edx, ecx                                             // 0x0051b88a    03d1
                         mov                esi, 0x906f0000                                      // 0x0051b88c    be00006f90
                         sub.s              esi, edx                                             // 0x0051b891    2bf2
                         shr                esi, 8                                               // 0x0051b893    c1ee08
                         mov.s              ecx, eax                                             // 0x0051b896    8bc8
                         and                ecx, 0xffff0000                                      // 0x0051b898    81e10000ffff
                         add.s              esi, ecx                                             // 0x0051b89e    03f1
                         mov.s              ecx, eax                                             // 0x0051b8a0    8bc8
                         and                ecx, 0x0000ff00                                      // 0x0051b8a2    81e100ff0000
                         lea                edx, dword ptr [ecx + ecx * 0x8]                     // 0x0051b8a8    8d14c9
                         shl                edx, 4                                               // 0x0051b8ab    c1e204
                         add.s              edx, ecx                                             // 0x0051b8ae    03d1
                         mov                ecx, 0xff906f00                                      // 0x0051b8b0    b9006f90ff
                         sub.s              ecx, edx                                             // 0x0051b8b5    2bca
                         shr                ecx, 8                                               // 0x0051b8b7    c1e908
                         mov.s              edx, eax                                             // 0x0051b8ba    8bd0
                         and                edx, 0xffffff00                                      // 0x0051b8bc    81e200ffffff
                         add.s              ecx, edx                                             // 0x0051b8c2    03ca
                         and                ecx, 0x0000ff00                                      // 0x0051b8c4    81e100ff0000
                         and                esi, 0xffff0000                                      // 0x0051b8ca    81e60000ffff
                         or.s               esi, ecx                                             // 0x0051b8d0    0bf1
                         mov.s              ecx, eax                                             // 0x0051b8d2    8bc8
                         and                ecx, 0x000000ff                                      // 0x0051b8d4    81e1ff000000
                         lea                edx, dword ptr [ecx + ecx * 0x8]                     // 0x0051b8da    8d14c9
                         shl                edx, 4                                               // 0x0051b8dd    c1e204
                         add.s              edx, ecx                                             // 0x0051b8e0    03d1
                         mov                ecx, 0xffff906f                                      // 0x0051b8e2    b96f90ffff
                         sub.s              ecx, edx                                             // 0x0051b8e7    2bca
                         shr                ecx, 8                                               // 0x0051b8e9    c1e908
                         add.s              ecx, eax                                             // 0x0051b8ec    03c8
                         and                ecx, 0x000000ff                                      // 0x0051b8ee    81e1ff000000
                         or.s               esi, ecx                                             // 0x0051b8f4    0bf1
                         or                 esi, 0xff000000                                      // 0x0051b8f6    81ce000000ff
                         {disp8} mov        dword ptr [esp + 0x10], esi                          // 0x0051b8fc    89742410
_jmp_addr_0x0051b900:    {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x0051b900    8d542410
                         push               edx                                                  // 0x0051b904    52
                         {disp8} lea        eax, dword ptr [esp + 0x34]                          // 0x0051b905    8d442434
                         push               eax                                                  // 0x0051b909    50
                         sub                esp, 0x0c                                            // 0x0051b90a    83ec0c
                         {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051b90d    8d542428
                         mov.s              ecx, esp                                             // 0x0051b911    8bcc
                         push               edx                                                  // 0x0051b913    52
                         call               @__ct__7LHPointFRC7LHPoint@12                        // 0x0051b914    e8a716f3ff
                         push               0x3f800000                                           // 0x0051b919    680000803f
                         call               ?Add@VillagerName@@SAPAV1@MULHPoint@@PA_WAAULH3DColor@@@Z          // 0x0051b91e    e8bd702400
                         add                esp, 0x18                                            // 0x0051b923    83c418
                         pop                edi                                                  // 0x0051b926    5f
                         pop                esi                                                  // 0x0051b927    5e
                         pop                ebp                                                  // 0x0051b928    5d
                         mov                al, 0x01                                             // 0x0051b929    b001
                         pop                ebx                                                  // 0x0051b92b    5b
                         add                esp, 0x00000820                                      // 0x0051b92c    81c420080000
                         ret                                                                     // 0x0051b932    c3
                         nop                                                                     // 0x0051b933    90
                         nop                                                                     // 0x0051b934    90
                         nop                                                                     // 0x0051b935    90
                         nop                                                                     // 0x0051b936    90
                         nop                                                                     // 0x0051b937    90
                         nop                                                                     // 0x0051b938    90
                         nop                                                                     // 0x0051b939    90
                         nop                                                                     // 0x0051b93a    90
                         nop                                                                     // 0x0051b93b    90
                         nop                                                                     // 0x0051b93c    90
                         nop                                                                     // 0x0051b93d    90
                         nop                                                                     // 0x0051b93e    90
                         nop                                                                     // 0x0051b93f    90
?Draw@Villager@@UAEXXZ:
                         push               ecx                                                  // 0x0051b940    51
                         push               esi                                                  // 0x0051b941    56
                         mov.s              esi, ecx                                             // 0x0051b942    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051b944    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0051b94a    e8019f0300
                         {disp32} mov       eax, dword ptr [eax + 0x000003a0]                    // 0x0051b94f    8b80a0030000
                         {disp32} mov       ecx, dword ptr [eax + 0x00004878]                    // 0x0051b955    8b8878480000
                         mov                edx, 0x00000004                                      // 0x0051b95b    ba04000000
                         cmp.s              ecx, edx                                             // 0x0051b960    3bca
                         {disp8} jne        _jmp_addr_0x0051b970                                 // 0x0051b962    750c
                         cmp                dword ptr [eax + 0x00004904], esi                    // 0x0051b964    39b004490000
                         {disp32} je        _jmp_addr_0x0051baeb                                 // 0x0051b96a    0f847b010000
_jmp_addr_0x0051b970:    xor.s              ecx, ecx                                             // 0x0051b970    33c9
                         {disp32} mov       cl, byte ptr [esi + 0x0000008c]                      // 0x0051b972    8a8e8c000000
                         lea                eax, dword ptr [ecx + ecx * 0x2]                     // 0x0051b978    8d0449
                         shl                eax, 3                                               // 0x0051b97b    c1e003
                         sub.s              eax, ecx                                             // 0x0051b97e    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x0051b980    8d0440
                         cmp                dword ptr [eax * 0x4 + 0x00db9e78], -0x04            // 0x0051b983    833c85789edb00fc
                         {disp32} je        _jmp_addr_0x0051bae1                                 // 0x0051b98b    0f8450010000
                         test               byte ptr [esi + 0x000000e0], dl                      // 0x0051b991    8496e0000000
                         {disp32} jne       _jmp_addr_0x0051bae1                                 // 0x0051b997    0f8544010000
                         mov                edx, dword ptr [esi]                                 // 0x0051b99d    8b16
                         mov.s              ecx, esi                                             // 0x0051b99f    8bce
                         call               dword ptr [edx + 0x508]                              // 0x0051b9a1    ff9208050000
                         push               ecx                                                  // 0x0051b9a7    51
                         fstp               dword ptr [esp]                                      // 0x0051b9a8    d91c24
                         call               _jmp_addr_0x007faaf0                                 // 0x0051b9ab    e840f12d00
                         {disp32} fsub      dword ptr [esi + 0x00000108]                         // 0x0051b9b0    d8a608010000
                         fstp               dword ptr [esp]                                      // 0x0051b9b6    d91c24
                         call               _jmp_addr_0x007faaf0                                 // 0x0051b9b9    e832f12d00
                         fld                st(0)                                                // 0x0051b9be    d9c0
                         add                esp, 0x04                                            // 0x0051b9c0    83c404
                         fabs                                                                    // 0x0051b9c3    d9e1
                         {disp8} mov        dword ptr [esp + 0x04], 0x3b449ba6                   // 0x0051b9c5    c7442404a69b443b
                         {disp32} fcom      qword ptr [rdata_bytes + 0x1eb48]                    // 0x0051b9cd    dc15487b8c00
                         fnstsw             ax                                                   // 0x0051b9d3    dfe0
                         test               ah, 0x41                                             // 0x0051b9d5    f6c441
                         {disp8} jne        _jmp_addr_0x0051b9ec                                 // 0x0051b9d8    7512
                         fld                st(0)                                                // 0x0051b9da    d9c0
                         {disp32} fmul      qword ptr [rdata_bytes + 0x1eb18]                    // 0x0051b9dc    dc0d187b8c00
                         fadd.s             st(0), st(0)                                         // 0x0051b9e2    dcc0
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2f750]                    // 0x0051b9e4    dc0d50878d00
                         {disp8} jmp        _jmp_addr_0x0051b9f0                                 // 0x0051b9ea    eb04
_jmp_addr_0x0051b9ec:    {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051b9ec    d9442404
_jmp_addr_0x0051b9f0:    {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]                    // 0x0051b9f0    db05c09eea00
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051b9f6    8b4640
                         test               eax, eax                                             // 0x0051b9f9    85c0
                         fmul               st, st(1)                                            // 0x0051b9fb    d8c9
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x0051b9fd    d95c2404
                         fstp               st(0)                                                // 0x0051ba01    ddd8
                         {disp32} je        _jmp_addr_0x0051bab1                                 // 0x0051ba03    0f84a8000000
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051ba09    d9442404
                         fxch               st(1)                                                // 0x0051ba0d    d9c9
                         fcompp                                                                  // 0x0051ba0f    ded9
                         fnstsw             ax                                                   // 0x0051ba11    dfe0
                         test               ah, 0x01                                             // 0x0051ba13    f6c401
                         {disp32} jne       _jmp_addr_0x0051bab3                                 // 0x0051ba16    0f8597000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051ba1c    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051ba22    dfe0
                         test               ah, 0x41                                             // 0x0051ba24    f6c441
                         {disp8} jne        _jmp_addr_0x0051ba35                                 // 0x0051ba27    750c
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051ba29    d9442404
                         {disp32} fadd      dword ptr [esi + 0x00000108]                         // 0x0051ba2d    d88608010000
                         {disp8} jmp        _jmp_addr_0x0051ba3f                                 // 0x0051ba33    eb0a
_jmp_addr_0x0051ba35:    {disp32} fld       dword ptr [esi + 0x00000108]                         // 0x0051ba35    d98608010000
                         {disp8} fsub       dword ptr [esp + 0x04]                               // 0x0051ba3b    d8642404
_jmp_addr_0x0051ba3f:    mov                eax, dword ptr [esi]                                 // 0x0051ba3f    8b06
                         {disp32} fstp      dword ptr [esi + 0x00000108]                         // 0x0051ba41    d99e08010000
                         mov.s              ecx, esi                                             // 0x0051ba47    8bce
                         call               dword ptr [eax + 0x508]                              // 0x0051ba49    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x0051ba4f    d95c2404
                         {disp32} mov       eax, dword ptr [esi + 0x00000108]                    // 0x0051ba53    8b8608010000
                         mov                edx, dword ptr [esi]                                 // 0x0051ba59    8b16
                         push               eax                                                  // 0x0051ba5b    50
                         mov.s              ecx, esi                                             // 0x0051ba5c    8bce
                         call               dword ptr [edx + 0x520]                              // 0x0051ba5e    ff9220050000
                         mov                edx, dword ptr [esi]                                 // 0x0051ba64    8b16
                         mov.s              ecx, esi                                             // 0x0051ba66    8bce
                         call               dword ptr [edx + 0x120]                              // 0x0051ba68    ff9220010000
                         push               ecx                                                  // 0x0051ba6e    51
                         mov.s              ecx, esi                                             // 0x0051ba6f    8bce
                         fstp               dword ptr [esp]                                      // 0x0051ba71    d91c24
                         call               _jmp_addr_0x0051b3d0                                 // 0x0051ba74    e857f9ffff
                         mov.s              ecx, esi                                             // 0x0051ba79    8bce
                         call               _jmp_addr_0x0051baf0                                 // 0x0051ba7b    e870000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                          // 0x0051ba80    8b4c2404
                         mov                eax, dword ptr [esi]                                 // 0x0051ba84    8b06
                         push               ecx                                                  // 0x0051ba86    51
                         mov.s              ecx, esi                                             // 0x0051ba87    8bce
                         call               dword ptr [eax + 0x520]                              // 0x0051ba89    ff9020050000
                         {disp32} mov       edx, dword ptr [esi + 0x00000108]                    // 0x0051ba8f    8b9608010000
                         push               edx                                                  // 0x0051ba95    52
                         call               _jmp_addr_0x007faaf0                                 // 0x0051ba96    e855f02d00
                         {disp32} fstp      dword ptr [esi + 0x00000108]                         // 0x0051ba9b    d99e08010000
                         mov                eax, dword ptr [esi]                                 // 0x0051baa1    8b06
                         add                esp, 0x04                                            // 0x0051baa3    83c404
                         mov.s              ecx, esi                                             // 0x0051baa6    8bce
                         call               dword ptr [eax + 0xb44]                              // 0x0051baa8    ff90440b0000
                         pop                esi                                                  // 0x0051baae    5e
                         pop                ecx                                                  // 0x0051baaf    59
                         ret                                                                     // 0x0051bab0    c3
_jmp_addr_0x0051bab1:    fstp               st(0)                                                // 0x0051bab1    ddd8
_jmp_addr_0x0051bab3:    mov                eax, dword ptr [esi]                                 // 0x0051bab3    8b06
                         fstp               st(0)                                                // 0x0051bab5    ddd8
                         mov.s              ecx, esi                                             // 0x0051bab7    8bce
                         call               dword ptr [eax + 0x508]                              // 0x0051bab9    ff9008050000
                         {disp32} fstp      dword ptr [esi + 0x00000108]                         // 0x0051babf    d99e08010000
                         mov                edx, dword ptr [esi]                                 // 0x0051bac5    8b16
                         mov.s              ecx, esi                                             // 0x0051bac7    8bce
                         call               dword ptr [edx + 0x120]                              // 0x0051bac9    ff9220010000
                         push               ecx                                                  // 0x0051bacf    51
                         mov.s              ecx, esi                                             // 0x0051bad0    8bce
                         fstp               dword ptr [esp]                                      // 0x0051bad2    d91c24
                         call               _jmp_addr_0x0051b3d0                                 // 0x0051bad5    e8f6f8ffff
                         mov.s              ecx, esi                                             // 0x0051bada    8bce
                         call               _jmp_addr_0x0051baf0                                 // 0x0051badc    e80f000000
_jmp_addr_0x0051bae1:    mov                eax, dword ptr [esi]                                 // 0x0051bae1    8b06
                         mov.s              ecx, esi                                             // 0x0051bae3    8bce
                         call               dword ptr [eax + 0xb44]                              // 0x0051bae5    ff90440b0000
_jmp_addr_0x0051baeb:    pop                esi                                                  // 0x0051baeb    5e
                         pop                ecx                                                  // 0x0051baec    59
                         ret                                                                     // 0x0051baed    c3
                         nop                                                                     // 0x0051baee    90
                         nop                                                                     // 0x0051baef    90
_jmp_addr_0x0051baf0:    push               esi                                                  // 0x0051baf0    56
                         push               edi                                                  // 0x0051baf1    57
                         xor.s              eax, eax                                             // 0x0051baf2    33c0
                         mov.s              edi, ecx                                             // 0x0051baf4    8bf9
                         {disp32} mov       al, byte ptr [edi + 0x000000f1]                      // 0x0051baf6    8a87f1000000
                         push               eax                                                  // 0x0051bafc    50
                         call               _jmp_addr_0x00462900                                 // 0x0051bafd    e8fe6df4ff
                         mov.s              esi, eax                                             // 0x0051bb02    8bf0
                         add                esp, 0x04                                            // 0x0051bb04    83c404
                         test               esi, esi                                             // 0x0051bb07    85f6
                         {disp8} je         _jmp_addr_0x0051bb45                                 // 0x0051bb09    743a
                         mov                eax, dword ptr [esi]                                 // 0x0051bb0b    8b06
                         {disp8} mov        edx, dword ptr [edi + 0x40]                          // 0x0051bb0d    8b5740
                         push               ebx                                                  // 0x0051bb10    53
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4dbaf0]               // 0x0051bb11    8b1df01aea00
                         push               0x0                                                  // 0x0051bb17    6a00
                         push               0x3f800000                                           // 0x0051bb19    680000803f
                         mov.s              ecx, esi                                             // 0x0051bb1e    8bce
                         call               dword ptr [eax + 0x28]                               // 0x0051bb20    ff5028
                         {disp8} mov        edi, dword ptr [edi + 0x40]                          // 0x0051bb23    8b7f40
                         {disp8} mov        ecx, dword ptr [edi + 0x50]                          // 0x0051bb26    8b4f50
                         mov                eax, dword ptr [esi]                                 // 0x0051bb29    8b06
                         {disp8} mov        edx, dword ptr [edi + 0x4c]                          // 0x0051bb2b    8b574c
                         push               ecx                                                  // 0x0051bb2e    51
                         mov.s              ecx, esi                                             // 0x0051bb2f    8bce
                         call               dword ptr [eax + 0x2c]                               // 0x0051bb31    ff502c
                         mov                edx, dword ptr [esi]                                 // 0x0051bb34    8b16
                         mov.s              ecx, esi                                             // 0x0051bb36    8bce
                         call               dword ptr [edx + 0x100]                              // 0x0051bb38    ff9200010000
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], ebx               // 0x0051bb3e    891df01aea00
                         pop                ebx                                                  // 0x0051bb44    5b
_jmp_addr_0x0051bb45:    pop                edi                                                  // 0x0051bb45    5f
                         pop                esi                                                  // 0x0051bb46    5e
                         ret                                                                     // 0x0051bb47    c3
                         nop                                                                     // 0x0051bb48    90
                         nop                                                                     // 0x0051bb49    90
                         nop                                                                     // 0x0051bb4a    90
                         nop                                                                     // 0x0051bb4b    90
                         nop                                                                     // 0x0051bb4c    90
                         nop                                                                     // 0x0051bb4d    90
                         nop                                                                     // 0x0051bb4e    90
                         nop                                                                     // 0x0051bb4f    90
_jmp_addr_0x0051bb50:    mov                eax, 0xffe8ffdd                                      // 0x0051bb50    b8ddffe8ff
                         ret                                                                     // 0x0051bb55    c3
                         nop                                                                     // 0x0051bb56    90
                         nop                                                                     // 0x0051bb57    90
                         nop                                                                     // 0x0051bb58    90
                         nop                                                                     // 0x0051bb59    90
                         nop                                                                     // 0x0051bb5a    90
                         nop                                                                     // 0x0051bb5b    90
                         nop                                                                     // 0x0051bb5c    90
                         nop                                                                     // 0x0051bb5d    90
                         nop                                                                     // 0x0051bb5e    90
                         nop                                                                     // 0x0051bb5f    90
_jmp_addr_0x0051bb60:    mov                eax, 0xff001000                                      // 0x0051bb60    b8001000ff
                         ret                                                                     // 0x0051bb65    c3
                         nop                                                                     // 0x0051bb66    90
                         nop                                                                     // 0x0051bb67    90
                         nop                                                                     // 0x0051bb68    90
                         nop                                                                     // 0x0051bb69    90
                         nop                                                                     // 0x0051bb6a    90
                         nop                                                                     // 0x0051bb6b    90
                         nop                                                                     // 0x0051bb6c    90
                         nop                                                                     // 0x0051bb6d    90
                         nop                                                                     // 0x0051bb6e    90
                         nop                                                                     // 0x0051bb6f    90
?Draw@Pot@@UAEXXZ:
                         push               esi                                                  // 0x0051bb70    56
                         mov.s              esi, ecx                                             // 0x0051bb71    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x70]                          // 0x0051bb73    8b4670
                         test               eax, eax                                             // 0x0051bb76    85c0
                         {disp8} je         _jmp_addr_0x0051bbbc                                 // 0x0051bb78    7442
                         mov                eax, dword ptr [esi]                                 // 0x0051bb7a    8b06
                         call               dword ptr [eax + 0x4a4]                              // 0x0051bb7c    ff90a4040000
                         test               al, al                                               // 0x0051bb82    84c0
                         {disp8} je         _jmp_addr_0x0051bbb5                                 // 0x0051bb84    742f
                         {disp8} mov        eax, dword ptr [esi + 0x44]                          // 0x0051bb86    8b4644
                         test               eax, eax                                             // 0x0051bb89    85c0
                         {disp8} jne        _jmp_addr_0x0051bbb5                                 // 0x0051bb8b    7528
                         push               ebx                                                  // 0x0051bb8d    53
                         push               edi                                                  // 0x0051bb8e    57
                         call               _jmp_addr_0x0051bb60                                 // 0x0051bb8f    e8ccffffff
                         mov.s              ebx, eax                                             // 0x0051bb94    8bd8
                         call               _jmp_addr_0x0051bb50                                 // 0x0051bb96    e8b5ffffff
                         {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051bb9b    8b7e40
                         push               ebx                                                  // 0x0051bb9e    53
                         mov.s              edx, eax                                             // 0x0051bb9f    8bd0
                         mov.s              ecx, edi                                             // 0x0051bba1    8bcf
                         call               _jmp_addr_0x0080bec0                                 // 0x0051bba3    e818032f00
                         mov.s              edx, esi                                             // 0x0051bba8    8bd6
                         mov.s              ecx, edi                                             // 0x0051bbaa    8bcf
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051bbac    e81ffa1100
                         pop                edi                                                  // 0x0051bbb1    5f
                         pop                ebx                                                  // 0x0051bbb2    5b
                         pop                esi                                                  // 0x0051bbb3    5e
                         ret                                                                     // 0x0051bbb4    c3
_jmp_addr_0x0051bbb5:    mov.s              ecx, esi                                             // 0x0051bbb5    8bce
                         call               ?Draw@MobileObject@@UAEXXZ                           // 0x0051bbb7    e894c5ffff
_jmp_addr_0x0051bbbc:    pop                esi                                                  // 0x0051bbbc    5e
                         ret                                                                     // 0x0051bbbd    c3
                         nop                                                                     // 0x0051bbbe    90
                         nop                                                                     // 0x0051bbbf    90
?DrawOutOfMap@Pot@@UAEX_N@Z:
                         push               esi                                                  // 0x0051bbc0    56
                         mov.s              esi, ecx                                             // 0x0051bbc1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051bbc3    8b4640
                         test               eax, eax                                             // 0x0051bbc6    85c0
                         {disp8} je         _jmp_addr_0x0051bbce                                 // 0x0051bbc8    7404
                         or                 dword ptr [eax + 8], 0x40                            // 0x0051bbca    83480840
_jmp_addr_0x0051bbce:    {disp8} mov        eax, dword ptr [esi + 0x70]                          // 0x0051bbce    8b4670
                         test               eax, eax                                             // 0x0051bbd1    85c0
                         {disp8} je         _jmp_addr_0x0051bc26                                 // 0x0051bbd3    7451
                         mov                eax, dword ptr [esi]                                 // 0x0051bbd5    8b06
                         mov.s              ecx, esi                                             // 0x0051bbd7    8bce
                         call               dword ptr [eax + 0x4a4]                              // 0x0051bbd9    ff90a4040000
                         test               al, al                                               // 0x0051bbdf    84c0
                         {disp8} je         _jmp_addr_0x0051bc1a                                 // 0x0051bbe1    7437
                         {disp8} mov        eax, dword ptr [esi + 0x44]                          // 0x0051bbe3    8b4644
                         test               eax, eax                                             // 0x0051bbe6    85c0
                         {disp8} jne        _jmp_addr_0x0051bc1a                                 // 0x0051bbe8    7530
                         push               ebx                                                  // 0x0051bbea    53
                         push               edi                                                  // 0x0051bbeb    57
                         call               _jmp_addr_0x0051bb60                                 // 0x0051bbec    e86fffffff
                         mov.s              ebx, eax                                             // 0x0051bbf1    8bd8
                         call               _jmp_addr_0x0051bb50                                 // 0x0051bbf3    e858ffffff
                         {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051bbf8    8b7e40
                         push               ebx                                                  // 0x0051bbfb    53
                         mov.s              edx, eax                                             // 0x0051bbfc    8bd0
                         mov.s              ecx, edi                                             // 0x0051bbfe    8bcf
                         call               _jmp_addr_0x0080bec0                                 // 0x0051bc00    e8bb022f00
                         {disp8} mov        dl, byte ptr [esp + 0x10]                            // 0x0051bc05    8a542410
                         neg                dl                                                   // 0x0051bc09    f6da
                         mov.s              ecx, edi                                             // 0x0051bc0b    8bcf
                         sbb.s              edx, edx                                             // 0x0051bc0d    1bd2
                         and.s              edx, esi                                             // 0x0051bc0f    23d6
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051bc11    e8baf91100
                         pop                edi                                                  // 0x0051bc16    5f
                         pop                ebx                                                  // 0x0051bc17    5b
                         {disp8} jmp        _jmp_addr_0x0051bc26                                 // 0x0051bc18    eb0c
_jmp_addr_0x0051bc1a:    {disp8} mov        ecx, dword ptr [esp + 0x08]                          // 0x0051bc1a    8b4c2408
                         push               ecx                                                  // 0x0051bc1e    51
                         mov.s              ecx, esi                                             // 0x0051bc1f    8bce
                         call               ?DrawOutOfMap@Object@@UAEX_N@Z                       // 0x0051bc21    e8fa0b0000
_jmp_addr_0x0051bc26:    {disp8} mov        esi, dword ptr [esi + 0x40]                          // 0x0051bc26    8b7640
                         test               esi, esi                                             // 0x0051bc29    85f6
                         {disp8} je         _jmp_addr_0x0051bc31                                 // 0x0051bc2b    7404
                         and                dword ptr [esi + 0x08], 0xffffffbf                   // 0x0051bc2d    836608bf
_jmp_addr_0x0051bc31:    pop                esi                                                  // 0x0051bc31    5e
                         ret                0x0004                                               // 0x0051bc32    c20400
                         nop                                                                     // 0x0051bc35    90
                         nop                                                                     // 0x0051bc36    90
                         nop                                                                     // 0x0051bc37    90
                         nop                                                                     // 0x0051bc38    90
                         nop                                                                     // 0x0051bc39    90
                         nop                                                                     // 0x0051bc3a    90
                         nop                                                                     // 0x0051bc3b    90
                         nop                                                                     // 0x0051bc3c    90
                         nop                                                                     // 0x0051bc3d    90
                         nop                                                                     // 0x0051bc3e    90
                         nop                                                                     // 0x0051bc3f    90
?Draw@PileWood@@UAEXXZ:
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]                    // 0x0051bc40    db05c09eea00
                         sub                esp, 0x24                                            // 0x0051bc46    83ec24
                         push               esi                                                  // 0x0051bc49    56
                         mov.s              esi, ecx                                             // 0x0051bc4a    8bf1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]                     // 0x0051bc4c    d80d18c48a00
                         {disp32} fadd      dword ptr [esi + 0x00000098]                         // 0x0051bc52    d88698000000
                         {disp32} fcom      dword ptr [esi + 0x0000009c]                         // 0x0051bc58    d8969c000000
                         {disp32} fst       dword ptr [esi + 0x00000098]                         // 0x0051bc5e    d99698000000
                         fnstsw             ax                                                   // 0x0051bc64    dfe0
                         test               ah, 0x01                                             // 0x0051bc66    f6c401
                         {disp8} jne        _jmp_addr_0x0051bc9d                                 // 0x0051bc69    7532
                         {disp32} mov       eax, dword ptr [esi + 0x00000088]                    // 0x0051bc6b    8b8688000000
                         fstp               st(0)                                                // 0x0051bc71    ddd8
                         {disp32} mov       ecx, dword ptr [esi + 0x0000008c]                    // 0x0051bc73    8b8e8c000000
                         {disp32} mov       edx, dword ptr [esi + 0x0000009c]                    // 0x0051bc79    8b969c000000
                         {disp32} mov       dword ptr [esi + 0x00000084], eax                    // 0x0051bc7f    898684000000
                         {disp32} mov       dword ptr [esi + 0x00000090], ecx                    // 0x0051bc85    898e90000000
                         {disp32} mov       dword ptr [esi + 0x00000094], 0x00000000             // 0x0051bc8b    c7869400000000000000
                         {disp32} mov       dword ptr [esi + 0x00000098], edx                    // 0x0051bc95    899698000000
                         {disp8} jmp        _jmp_addr_0x0051bd19                                 // 0x0051bc9b    eb7c
_jmp_addr_0x0051bc9d:    fld                st(0)                                                // 0x0051bc9d    d9c0
                         fld                st(0)                                                // 0x0051bc9f    d9c0
                         fmulp              st(1), st                                            // 0x0051bca1    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x0051bca3    d80db4a38a00
                         fld                st(1)                                                // 0x0051bca9    d9c1
                         fmul               st, st(1)                                            // 0x0051bcab    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x0051bcad    d80d6cb28a00
                         fld                st(1)                                                // 0x0051bcb3    d9c1
                         {disp32} fmul      dword ptr [esi + 0x000000ac]                         // 0x0051bcb5    d88eac000000
                         fld                st(1)                                                // 0x0051bcbb    d9c1
                         {disp32} fmul      dword ptr [esi + 0x000000b0]                         // 0x0051bcbd    d88eb0000000
                         faddp              st(1), st                                            // 0x0051bcc3    dec1
                         fxch               st(3)                                                // 0x0051bcc5    d9cb
                         {disp32} fmul      dword ptr [esi + 0x000000a8]                         // 0x0051bcc7    d88ea8000000
                         faddp              st(3), st                                            // 0x0051bccd    dec3
                         fxch               st(2)                                                // 0x0051bccf    d9ca
                         {disp32} fadd      dword ptr [esi + 0x000000a4]                         // 0x0051bcd1    d886a4000000
                         {disp32} fstp      dword ptr [esi + 0x00000090]                         // 0x0051bcd7    d99e90000000
                         fld                st(0)                                                // 0x0051bcdd    d9c0
                         fmul               st, st(1)                                            // 0x0051bcdf    d8c9
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                          // 0x0051bce1    d80d68b28a00
                         {disp32} fmul      dword ptr [esi + 0x000000b0]                         // 0x0051bce7    d88eb0000000
                         fxch               st(2)                                                // 0x0051bced    d9ca
                         {disp32} fmul      dword ptr [esi + 0x000000ac]                         // 0x0051bcef    d88eac000000
                         faddp              st(2), st                                            // 0x0051bcf5    dec2
                         {disp32} fmul      dword ptr [esi + 0x000000a8]                         // 0x0051bcf7    d88ea8000000
                         faddp              st(1), st                                            // 0x0051bcfd    dec1
                         {disp32} fld       dword ptr [esi + 0x000000a4]                         // 0x0051bcff    d986a4000000
                         {disp32} fmul      dword ptr [esi + 0x00000098]                         // 0x0051bd05    d88e98000000
                         faddp              st(1), st                                            // 0x0051bd0b    dec1
                         {disp32} fadd      dword ptr [esi + 0x000000a0]                         // 0x0051bd0d    d886a0000000
                         {disp32} fstp      dword ptr [esi + 0x00000084]                         // 0x0051bd13    d99e84000000
_jmp_addr_0x0051bd19:    {disp32} mov       eax, dword ptr [esi + 0x00000084]                    // 0x0051bd19    8b8684000000
                         mov                edx, dword ptr [esi]                                 // 0x0051bd1f    8b16
                         mov.s              ecx, esi                                             // 0x0051bd21    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x0051bd23    89442408
                         call               dword ptr [edx + 0x42c]                              // 0x0051bd27    ff922c040000
                         fchs                                                                    // 0x0051bd2d    d9e0
                         {disp8} fcomp      dword ptr [esp + 0x08]                               // 0x0051bd2f    d85c2408
                         fnstsw             ax                                                   // 0x0051bd33    dfe0
                         test               ah, 0x01                                             // 0x0051bd35    f6c401
                         {disp32} je        _jmp_addr_0x0051bf6e                                 // 0x0051bd38    0f8430020000
                         {disp32} fld       dword ptr [esi + 0x00000084]                         // 0x0051bd3e    d98684000000
                         push               ebx                                                  // 0x0051bd44    53
                         push               ebp                                                  // 0x0051bd45    55
                         {disp8} lea        ebp, dword ptr [esi + 0x14]                          // 0x0051bd46    8d6e14
                         mov.s              eax, ebp                                             // 0x0051bd49    8bc5
                         mov                ecx, dword ptr [eax]                                 // 0x0051bd4b    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x0051bd4d    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0051bd50    8b4008
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x0051bd53    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x0051bd57    8954241c
                         mov                edx, dword ptr [esi]                                 // 0x0051bd5b    8b16
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x0051bd5d    89442420
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051bd61    d95c2420
                         push               edi                                                  // 0x0051bd65    57
                         mov.s              ecx, esi                                             // 0x0051bd66    8bce
                         call               dword ptr [edx + 0x120]                              // 0x0051bd68    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051bd6e    d95c2410
                         mov                eax, dword ptr [esi]                                 // 0x0051bd72    8b06
                         mov.s              ecx, esi                                             // 0x0051bd74    8bce
                         call               dword ptr [eax + 0x508]                              // 0x0051bd76    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051bd7c    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                          // 0x0051bd80    8b4c2424
                         {disp8} mov        ebx, dword ptr [esi + 0x40]                          // 0x0051bd84    8b5e40
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x0051bd87    894c2418
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x0051bd8b    8d4c241c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051bd8f    e8fc722e00
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x0051bd94    d8442418
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051bd98    d95c242c
                         {disp8} fild       dword ptr [esp + 0x1c]                               // 0x0051bd9c    db44241c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051bda0    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0051bda6    d95c2428
                         {disp8} fild       dword ptr [esp + 0x20]                               // 0x0051bdaa    db442420
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051bdae    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x0051bdb4    d95c2430
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051bdb8    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051bdbc    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051bdc2    d9442410
                         fnstsw             ax                                                   // 0x0051bdc6    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x0051bdc8    d81d90a38a00
                         test               ah, 0x40                                             // 0x0051bdce    f6c440
                         fnstsw             ax                                                   // 0x0051bdd1    dfe0
                         {disp8} jne        _jmp_addr_0x0051be3c                                 // 0x0051bdd3    7567
                         test               ah, 0x40                                             // 0x0051bdd5    f6c440
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                          // 0x0051bdd8    8d7b14
                         {disp8} jne        _jmp_addr_0x0051be23                                 // 0x0051bddb    7546
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051bddd    8b542410
                         xor.s              eax, eax                                             // 0x0051bde1    33c0
                         mov.s              ecx, edx                                             // 0x0051bde3    8bca
                         {disp8} mov        dword ptr [edi + 0x2c], eax                          // 0x0051bde5    89472c
                         {disp8} mov        dword ptr [edi + 0x28], eax                          // 0x0051bde8    894728
                         {disp8} mov        dword ptr [edi + 0x24], eax                          // 0x0051bdeb    894724
                         {disp8} mov        dword ptr [edi + 0x1c], eax                          // 0x0051bdee    89471c
                         {disp8} mov        dword ptr [edi + 0x18], eax                          // 0x0051bdf1    894718
                         {disp8} mov        dword ptr [edi + 0x14], eax                          // 0x0051bdf4    894714
                         {disp8} mov        dword ptr [edi + 0x0c], eax                          // 0x0051bdf7    89470c
                         {disp8} mov        dword ptr [edi + 0x08], eax                          // 0x0051bdfa    894708
                         {disp8} mov        dword ptr [edi + 0x04], eax                          // 0x0051bdfd    894704
                         mov.s              eax, edx                                             // 0x0051be00    8bc2
                         {disp8} mov        dword ptr [edi + 0x20], edx                          // 0x0051be02    895720
                         mov                dword ptr [edi], ecx                                 // 0x0051be05    890f
                         {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051be07    8d542428
                         mov.s              ecx, edi                                             // 0x0051be0b    8bcf
                         {disp8} mov        dword ptr [edi + 0x10], eax                          // 0x0051be0d    894710
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z             // 0x0051be10    e85b77eeff
                         {disp8} mov        edx, dword ptr [esp + 0x14]                          // 0x0051be15    8b542414
                         push               edx                                                  // 0x0051be19    52
                         mov.s              ecx, edi                                             // 0x0051be1a    8bcf
                         call               _jmp_addr_0x005198f0                                 // 0x0051be1c    e8cfdaffff
                         {disp8} jmp        _jmp_addr_0x0051be69                                 // 0x0051be21    eb46
_jmp_addr_0x0051be23:    {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051be23    8d542428
                         mov.s              ecx, edi                                             // 0x0051be27    8bcf
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051be29    e80277eeff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051be2e    8b442414
                         push               eax                                                  // 0x0051be32    50
                         mov.s              ecx, edi                                             // 0x0051be33    8bcf
                         call               _jmp_addr_0x005198f0                                 // 0x0051be35    e8b6daffff
                         {disp8} jmp        _jmp_addr_0x0051be69                                 // 0x0051be3a    eb2d
_jmp_addr_0x0051be3c:    test               ah, 0x40                                             // 0x0051be3c    f6c440
                         {disp8} jne        _jmp_addr_0x0051be5d                                 // 0x0051be3f    751c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0051be41    8b4c2410
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                          // 0x0051be45    8d7b14
                         push               ecx                                                  // 0x0051be48    51
                         mov.s              ecx, edi                                             // 0x0051be49    8bcf
                         call               _jmp_addr_0x00519320                                 // 0x0051be4b    e8d0d4ffff
                         {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051be50    8d542428
                         mov.s              ecx, edi                                             // 0x0051be54    8bcf
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z             // 0x0051be56    e81577eeff
                         {disp8} jmp        _jmp_addr_0x0051be69                                 // 0x0051be5b    eb0c
_jmp_addr_0x0051be5d:    {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051be5d    8d542428
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]                          // 0x0051be61    8d4b14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051be64    e8c776eeff
_jmp_addr_0x0051be69:    {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051be69    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051be6d    8b442414
                         mov.s              ecx, esi                                             // 0x0051be71    8bce
                         {disp8} mov        dword ptr [ebx + 0x44], edx                          // 0x0051be73    895344
                         {disp8} mov        dword ptr [ebx + 0x48], eax                          // 0x0051be76    894348
                         call               ?Draw@MobileObject@@UAEXXZ                           // 0x0051be79    e8d2c2ffff
                         mov                edx, dword ptr [esi]                                 // 0x0051be7e    8b16
                         mov.s              ecx, esi                                             // 0x0051be80    8bce
                         call               dword ptr [edx + 0x120]                              // 0x0051be82    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051be88    d95c2410
                         mov                eax, dword ptr [esi]                                 // 0x0051be8c    8b06
                         mov.s              ecx, esi                                             // 0x0051be8e    8bce
                         call               dword ptr [eax + 0x508]                              // 0x0051be90    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051be96    d95c2414
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                          // 0x0051be9a    8b4d08
                         {disp8} mov        esi, dword ptr [esi + 0x40]                          // 0x0051be9d    8b7640
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x0051bea0    894c2418
                         mov.s              ecx, ebp                                             // 0x0051bea4    8bcd
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051bea6    e8e5712e00
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x0051beab    d8442418
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051beaf    d95c242c
                         {disp8} fild       dword ptr [ebp + 0x00]                               // 0x0051beb3    db4500
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051beb6    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0051bebc    d95c2428
                         {disp8} fild       dword ptr [ebp + 0x04]                               // 0x0051bec0    db4504
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051bec3    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x0051bec9    d95c2430
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051becd    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051bed1    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051bed7    d9442410
                         fnstsw             ax                                                   // 0x0051bedb    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x0051bedd    d81d90a38a00
                         test               ah, 0x40                                             // 0x0051bee3    f6c440
                         fnstsw             ax                                                   // 0x0051bee6    dfe0
                         {disp8} jne        _jmp_addr_0x0051bf30                                 // 0x0051bee8    7546
                         test               ah, 0x40                                             // 0x0051beea    f6c440
                         {disp8} lea        edi, dword ptr [esi + 0x14]                          // 0x0051beed    8d7e14
                         {disp8} jne        _jmp_addr_0x0051bf17                                 // 0x0051bef0    7525
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051bef2    8b542410
                         push               edx                                                  // 0x0051bef6    52
                         mov.s              ecx, edi                                             // 0x0051bef7    8bcf
                         call               _jmp_addr_0x00519320                                 // 0x0051bef9    e822d4ffff
                         {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051befe    8d542428
                         mov.s              ecx, edi                                             // 0x0051bf02    8bcf
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z             // 0x0051bf04    e86776eeff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051bf09    8b442414
                         push               eax                                                  // 0x0051bf0d    50
                         mov.s              ecx, edi                                             // 0x0051bf0e    8bcf
                         call               _jmp_addr_0x005198f0                                 // 0x0051bf10    e8dbd9ffff
                         {disp8} jmp        _jmp_addr_0x0051bf5d                                 // 0x0051bf15    eb46
_jmp_addr_0x0051bf17:    {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051bf17    8d542428
                         mov.s              ecx, edi                                             // 0x0051bf1b    8bcf
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051bf1d    e80e76eeff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0051bf22    8b4c2414
                         push               ecx                                                  // 0x0051bf26    51
                         mov.s              ecx, edi                                             // 0x0051bf27    8bcf
                         call               _jmp_addr_0x005198f0                                 // 0x0051bf29    e8c2d9ffff
                         {disp8} jmp        _jmp_addr_0x0051bf5d                                 // 0x0051bf2e    eb2d
_jmp_addr_0x0051bf30:    test               ah, 0x40                                             // 0x0051bf30    f6c440
                         {disp8} jne        _jmp_addr_0x0051bf51                                 // 0x0051bf33    751c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051bf35    8b542410
                         {disp8} lea        edi, dword ptr [esi + 0x14]                          // 0x0051bf39    8d7e14
                         push               edx                                                  // 0x0051bf3c    52
                         mov.s              ecx, edi                                             // 0x0051bf3d    8bcf
                         call               _jmp_addr_0x00519320                                 // 0x0051bf3f    e8dcd3ffff
                         {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051bf44    8d542428
                         mov.s              ecx, edi                                             // 0x0051bf48    8bcf
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z             // 0x0051bf4a    e82176eeff
                         {disp8} jmp        _jmp_addr_0x0051bf5d                                 // 0x0051bf4f    eb0c
_jmp_addr_0x0051bf51:    {disp8} lea        edx, dword ptr [esp + 0x28]                          // 0x0051bf51    8d542428
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x0051bf55    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051bf58    e8d375eeff
_jmp_addr_0x0051bf5d:    {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0051bf5d    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0051bf61    8b4c2414
                         pop                edi                                                  // 0x0051bf65    5f
                         pop                ebp                                                  // 0x0051bf66    5d
                         {disp8} mov        dword ptr [esi + 0x44], eax                          // 0x0051bf67    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx                          // 0x0051bf6a    894e48
                         pop                ebx                                                  // 0x0051bf6d    5b
_jmp_addr_0x0051bf6e:    pop                esi                                                  // 0x0051bf6e    5e
                         add                esp, 0x24                                            // 0x0051bf6f    83c424
                         ret                                                                     // 0x0051bf72    c3
                         nop                                                                     // 0x0051bf73    90
                         nop                                                                     // 0x0051bf74    90
                         nop                                                                     // 0x0051bf75    90
                         nop                                                                     // 0x0051bf76    90
                         nop                                                                     // 0x0051bf77    90
                         nop                                                                     // 0x0051bf78    90
                         nop                                                                     // 0x0051bf79    90
                         nop                                                                     // 0x0051bf7a    90
                         nop                                                                     // 0x0051bf7b    90
                         nop                                                                     // 0x0051bf7c    90
                         nop                                                                     // 0x0051bf7d    90
                         nop                                                                     // 0x0051bf7e    90
                         nop                                                                     // 0x0051bf7f    90
?Draw@PileFood@@UAEXXZ:
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]                    // 0x0051bf80    db05c09eea00
                         sub                esp, 0x24                                            // 0x0051bf86    83ec24
                         push               ebx                                                  // 0x0051bf89    53
                         push               esi                                                  // 0x0051bf8a    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]                     // 0x0051bf8b    d80d18c48a00
                         mov.s              esi, ecx                                             // 0x0051bf91    8bf1
                         {disp32} fadd      dword ptr [esi + 0x00000098]                         // 0x0051bf93    d88698000000
                         {disp32} fcom      dword ptr [esi + 0x0000009c]                         // 0x0051bf99    d8969c000000
                         {disp32} fst       dword ptr [esi + 0x00000098]                         // 0x0051bf9f    d99698000000
                         fnstsw             ax                                                   // 0x0051bfa5    dfe0
                         test               ah, 0x01                                             // 0x0051bfa7    f6c401
                         {disp8} jne        _jmp_addr_0x0051bfdc                                 // 0x0051bfaa    7530
                         {disp32} mov       eax, dword ptr [esi + 0x00000088]                    // 0x0051bfac    8b8688000000
                         fstp               st(0)                                                // 0x0051bfb2    ddd8
                         {disp32} mov       ecx, dword ptr [esi + 0x0000008c]                    // 0x0051bfb4    8b8e8c000000
                         {disp32} mov       edx, dword ptr [esi + 0x0000009c]                    // 0x0051bfba    8b969c000000
                         xor.s              ebx, ebx                                             // 0x0051bfc0    33db
                         {disp32} mov       dword ptr [esi + 0x00000084], eax                    // 0x0051bfc2    898684000000
                         {disp32} mov       dword ptr [esi + 0x00000090], ecx                    // 0x0051bfc8    898e90000000
                         {disp32} mov       dword ptr [esi + 0x00000094], ebx                    // 0x0051bfce    899e94000000
                         {disp32} mov       dword ptr [esi + 0x00000098], edx                    // 0x0051bfd4    899698000000
                         {disp8} jmp        _jmp_addr_0x0051c05a                                 // 0x0051bfda    eb7e
_jmp_addr_0x0051bfdc:    fld                st(0)                                                // 0x0051bfdc    d9c0
                         xor.s              ebx, ebx                                             // 0x0051bfde    33db
                         fld                st(0)                                                // 0x0051bfe0    d9c0
                         fmulp              st(1), st                                            // 0x0051bfe2    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x0051bfe4    d80db4a38a00
                         fld                st(1)                                                // 0x0051bfea    d9c1
                         fmul               st, st(1)                                            // 0x0051bfec    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x0051bfee    d80d6cb28a00
                         fld                st(1)                                                // 0x0051bff4    d9c1
                         {disp32} fmul      dword ptr [esi + 0x000000ac]                         // 0x0051bff6    d88eac000000
                         fld                st(1)                                                // 0x0051bffc    d9c1
                         {disp32} fmul      dword ptr [esi + 0x000000b0]                         // 0x0051bffe    d88eb0000000
                         faddp              st(1), st                                            // 0x0051c004    dec1
                         fxch               st(3)                                                // 0x0051c006    d9cb
                         {disp32} fmul      dword ptr [esi + 0x000000a8]                         // 0x0051c008    d88ea8000000
                         faddp              st(3), st                                            // 0x0051c00e    dec3
                         fxch               st(2)                                                // 0x0051c010    d9ca
                         {disp32} fadd      dword ptr [esi + 0x000000a4]                         // 0x0051c012    d886a4000000
                         {disp32} fstp      dword ptr [esi + 0x00000090]                         // 0x0051c018    d99e90000000
                         fld                st(0)                                                // 0x0051c01e    d9c0
                         fmul               st, st(1)                                            // 0x0051c020    d8c9
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                          // 0x0051c022    d80d68b28a00
                         {disp32} fmul      dword ptr [esi + 0x000000b0]                         // 0x0051c028    d88eb0000000
                         fxch               st(2)                                                // 0x0051c02e    d9ca
                         {disp32} fmul      dword ptr [esi + 0x000000ac]                         // 0x0051c030    d88eac000000
                         faddp              st(2), st                                            // 0x0051c036    dec2
                         {disp32} fmul      dword ptr [esi + 0x000000a8]                         // 0x0051c038    d88ea8000000
                         faddp              st(1), st                                            // 0x0051c03e    dec1
                         {disp32} fld       dword ptr [esi + 0x000000a4]                         // 0x0051c040    d986a4000000
                         {disp32} fmul      dword ptr [esi + 0x00000098]                         // 0x0051c046    d88e98000000
                         faddp              st(1), st                                            // 0x0051c04c    dec1
                         {disp32} fadd      dword ptr [esi + 0x000000a0]                         // 0x0051c04e    d886a0000000
                         {disp32} fstp      dword ptr [esi + 0x00000084]                         // 0x0051c054    d99e84000000
_jmp_addr_0x0051c05a:    {disp32} mov       eax, dword ptr [esi + 0x00000084]                    // 0x0051c05a    8b8684000000
                         mov                edx, dword ptr [esi]                                 // 0x0051c060    8b16
                         mov.s              ecx, esi                                             // 0x0051c062    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x0051c064    8944240c
                         call               dword ptr [edx + 0x42c]                              // 0x0051c068    ff922c040000
                         fchs                                                                    // 0x0051c06e    d9e0
                         {disp8} fcomp      dword ptr [esp + 0x0c]                               // 0x0051c070    d85c240c
                         fnstsw             ax                                                   // 0x0051c074    dfe0
                         test               ah, 0x01                                             // 0x0051c076    f6c401
                         {disp32} je        _jmp_addr_0x0051c305                                 // 0x0051c079    0f8486020000
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                          // 0x0051c07f    8b4e28
                         sub                ecx, 0x00d4c660                                      // 0x0051c082    81e960c6d400
                         mov                eax, 0x1948b0fd                                      // 0x0051c088    b8fdb04819
                         imul               ecx                                                  // 0x0051c08d    f7e9
                         sar                edx, 5                                               // 0x0051c08f    c1fa05
                         mov.s              eax, edx                                             // 0x0051c092    8bc2
                         shr                eax, 0x1f                                            // 0x0051c094    c1e81f
                         add.s              edx, eax                                             // 0x0051c097    03d0
                         cmp                edx, 0x0a                                            // 0x0051c099    83fa0a
                         {disp8} je         _jmp_addr_0x0051c0a3                                 // 0x0051c09c    7405
                         cmp                edx, 0x02                                            // 0x0051c09e    83fa02
                         {disp8} jne        _jmp_addr_0x0051c103                                 // 0x0051c0a1    7560
_jmp_addr_0x0051c0a3:    mov                edx, dword ptr [esi]                                 // 0x0051c0a3    8b16
                         mov.s              ecx, esi                                             // 0x0051c0a5    8bce
                         call               dword ptr [edx + 0x42c]                              // 0x0051c0a7    ff922c040000
                         {disp8} fdivr      dword ptr [esp + 0x0c]                               // 0x0051c0ad    d87c240c
                         {disp32} fadd      dword ptr [_rdata_float1p0]                          // 0x0051c0b1    d80590a38a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x0051c0b7    d81598a38a00
                         fnstsw             ax                                                   // 0x0051c0bd    dfe0
                         test               ah, 0x41                                             // 0x0051c0bf    f6c441
                         {disp8} jne        _jmp_addr_0x0051c0db                                 // 0x0051c0c2    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                          // 0x0051c0c4    d81590a38a00
                         fnstsw             ax                                                   // 0x0051c0ca    dfe0
                         test               ah, 0x01                                             // 0x0051c0cc    f6c401
                         {disp8} jne        _jmp_addr_0x0051c0e3                                 // 0x0051c0cf    7512
                         fstp               st(0)                                                // 0x0051c0d1    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x0051c0d3    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0051c0e3                                 // 0x0051c0d9    eb08
_jmp_addr_0x0051c0db:    fstp               st(0)                                                // 0x0051c0db    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0051c0dd    d90598a38a00
_jmp_addr_0x0051c0e3:    {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x0051c0e3    d90590a38a00
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x0051c0e9    8b4e40
                         mov                eax, dword ptr [ecx]                                 // 0x0051c0ec    8b01
                         fsub               st, st(1)                                            // 0x0051c0ee    d8e1
                         push               ecx                                                  // 0x0051c0f0    51
                         {disp32} fmul      dword ptr [data_bytes + 0x222eb0]                    // 0x0051c0f1    d80db08ebe00
                         fstp               dword ptr [esp]                                      // 0x0051c0f7    d91c24
                         push               ebx                                                  // 0x0051c0fa    53
                         fstp               st(0)                                                // 0x0051c0fb    ddd8
                         call               dword ptr [eax + 0xe8]                               // 0x0051c0fd    ff90e8000000
_jmp_addr_0x0051c103:    {disp32} fld       dword ptr [esi + 0x00000084]                         // 0x0051c103    d98684000000
                         push               ebp                                                  // 0x0051c109    55
                         push               edi                                                  // 0x0051c10a    57
                         {disp8} lea        edi, dword ptr [esi + 0x14]                          // 0x0051c10b    8d7e14
                         mov.s              ecx, edi                                             // 0x0051c10e    8bcf
                         mov                edx, dword ptr [ecx]                                 // 0x0051c110    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                          // 0x0051c112    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0051c115    8b4908
                         {disp8} mov        dword ptr [esp + 0x30], ecx                          // 0x0051c118    894c2430
                         {disp8} mov        dword ptr [esp + 0x28], edx                          // 0x0051c11c    89542428
                         mov                edx, dword ptr [esi]                                 // 0x0051c120    8b16
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x0051c122    d95c2430
                         mov.s              ecx, esi                                             // 0x0051c126    8bce
                         {disp8} mov        dword ptr [esp + 0x2c], eax                          // 0x0051c128    8944242c
                         call               dword ptr [edx + 0x120]                              // 0x0051c12c    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051c132    d95c2410
                         mov                eax, dword ptr [esi]                                 // 0x0051c136    8b06
                         mov.s              ecx, esi                                             // 0x0051c138    8bce
                         call               dword ptr [eax + 0x508]                              // 0x0051c13a    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051c140    d95c2418
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                          // 0x0051c144    8b4c2430
                         {disp8} mov        ebp, dword ptr [esi + 0x40]                          // 0x0051c148    8b6e40
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x0051c14b    894c2414
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                          // 0x0051c14f    8d4c2428
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051c153    e8386f2e00
                         {disp8} fadd       dword ptr [esp + 0x14]                               // 0x0051c158    d8442414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051c15c    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x0051c160    8b442418
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051c164    d95c2420
                         push               edx                                                  // 0x0051c168    52
                         {disp8} fild       dword ptr [esp + 0x2c]                               // 0x0051c169    db44242c
                         push               eax                                                  // 0x0051c16d    50
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051c16e    8d542424
                         mov.s              ecx, ebp                                             // 0x0051c172    8bcd
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051c174    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0051c17a    d95c2424
                         {disp8} fild       dword ptr [esp + 0x34]                               // 0x0051c17e    db442434
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051c182    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051c188    d95c242c
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z         // 0x0051c18c    e8af6ff0ff
                         mov                edx, dword ptr [esi]                                 // 0x0051c191    8b16
                         mov.s              ecx, esi                                             // 0x0051c193    8bce
                         call               dword ptr [edx + 0x4a4]                              // 0x0051c195    ff92a4040000
                         test               al, al                                               // 0x0051c19b    84c0
                         {disp8} je         _jmp_addr_0x0051c1ca                                 // 0x0051c19d    742b
                         cmp                dword ptr [esi + 0x44], ebx                          // 0x0051c19f    395e44
                         {disp8} jne        _jmp_addr_0x0051c1ca                                 // 0x0051c1a2    7526
                         call               _jmp_addr_0x0051bb60                                 // 0x0051c1a4    e8b7f9ffff
                         mov.s              ebp, eax                                             // 0x0051c1a9    8be8
                         call               _jmp_addr_0x0051bb50                                 // 0x0051c1ab    e8a0f9ffff
                         {disp8} mov        ebx, dword ptr [esi + 0x40]                          // 0x0051c1b0    8b5e40
                         push               ebp                                                  // 0x0051c1b3    55
                         mov.s              edx, eax                                             // 0x0051c1b4    8bd0
                         mov.s              ecx, ebx                                             // 0x0051c1b6    8bcb
                         call               _jmp_addr_0x0080bec0                                 // 0x0051c1b8    e803fd2e00
                         mov.s              edx, esi                                             // 0x0051c1bd    8bd6
                         mov.s              ecx, ebx                                             // 0x0051c1bf    8bcb
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051c1c1    e80af41100
                         xor.s              ebx, ebx                                             // 0x0051c1c6    33db
                         {disp8} jmp        _jmp_addr_0x0051c1d1                                 // 0x0051c1c8    eb07
_jmp_addr_0x0051c1ca:    mov.s              ecx, esi                                             // 0x0051c1ca    8bce
                         call               ?Draw@MobileObject@@UAEXXZ                           // 0x0051c1cc    e87fbfffff
_jmp_addr_0x0051c1d1:    mov                eax, dword ptr [esi]                                 // 0x0051c1d1    8b06
                         mov.s              ecx, esi                                             // 0x0051c1d3    8bce
                         call               dword ptr [eax + 0x120]                              // 0x0051c1d5    ff9020010000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051c1db    d95c2410
                         mov                edx, dword ptr [esi]                                 // 0x0051c1df    8b16
                         mov.s              ecx, esi                                             // 0x0051c1e1    8bce
                         call               dword ptr [edx + 0x508]                              // 0x0051c1e3    ff9208050000
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051c1e9    d95c2414
                         {disp8} mov        eax, dword ptr [edi + 0x08]                          // 0x0051c1ed    8b4708
                         {disp8} mov        esi, dword ptr [esi + 0x40]                          // 0x0051c1f0    8b7640
                         mov.s              ecx, edi                                             // 0x0051c1f3    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x0051c1f5    89442418
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0051c1f9    e8926e2e00
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x0051c1fe    d8442418
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0051c202    d95c2420
                         fild               dword ptr [edi]                                      // 0x0051c206    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051c208    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051c20e    d95c241c
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x0051c212    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0051c215    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0051c21b    d95c2424
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051c21f    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051c223    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051c229    d9442410
                         fnstsw             ax                                                   // 0x0051c22d    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x0051c22f    d81d90a38a00
                         test               ah, 0x40                                             // 0x0051c235    f6c440
                         fnstsw             ax                                                   // 0x0051c238    dfe0
                         {disp32} jne       _jmp_addr_0x0051c2c8                                 // 0x0051c23a    0f8588000000
                         test               ah, 0x40                                             // 0x0051c240    f6c440
                         {disp8} jne        _jmp_addr_0x0051c29b                                 // 0x0051c243    7556
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051c245    8b542410
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051c249    d944241c
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x0051c24d    8d4e14
                         {disp8} mov        dword ptr [ecx + 0x2c], ebx                          // 0x0051c250    89592c
                         {disp8} mov        dword ptr [ecx + 0x28], ebx                          // 0x0051c253    895928
                         {disp8} mov        dword ptr [ecx + 0x24], ebx                          // 0x0051c256    895924
                         {disp8} mov        dword ptr [ecx + 0x1c], ebx                          // 0x0051c259    89591c
                         {disp8} mov        dword ptr [ecx + 0x18], ebx                          // 0x0051c25c    895918
                         {disp8} mov        dword ptr [ecx + 0x14], ebx                          // 0x0051c25f    895914
                         {disp8} mov        dword ptr [ecx + 0x0c], ebx                          // 0x0051c262    89590c
                         {disp8} mov        dword ptr [ecx + 0x08], ebx                          // 0x0051c265    895908
                         {disp8} mov        dword ptr [ecx + 0x04], ebx                          // 0x0051c268    895904
                         {disp8} mov        dword ptr [ecx + 0x20], edx                          // 0x0051c26b    895120
                         mov                dword ptr [ecx], edx                                 // 0x0051c26e    8911
                         mov.s              eax, edx                                             // 0x0051c270    8bc2
                         {disp8} mov        dword ptr [ecx + 0x10], eax                          // 0x0051c272    894110
                         {disp8} fadd       dword ptr [ecx + 0x24]                               // 0x0051c275    d84124
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0051c278    8b442414
                         push               eax                                                  // 0x0051c27c    50
                         {disp8} fstp       dword ptr [ecx + 0x24]                               // 0x0051c27d    d95924
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x0051c280    d9442424
                         {disp8} fadd       dword ptr [ecx + 0x28]                               // 0x0051c284    d84128
                         {disp8} fstp       dword ptr [ecx + 0x28]                               // 0x0051c287    d95928
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x0051c28a    d9442428
                         {disp8} fadd       dword ptr [ecx + 0x2c]                               // 0x0051c28e    d8412c
                         {disp8} fstp       dword ptr [ecx + 0x2c]                               // 0x0051c291    d9592c
                         call               _jmp_addr_0x005198f0                                 // 0x0051c294    e857d6ffff
                         {disp8} jmp        _jmp_addr_0x0051c2f5                                 // 0x0051c299    eb5a
_jmp_addr_0x0051c29b:    {disp8} lea        edi, dword ptr [esi + 0x14]                          // 0x0051c29b    8d7e14
                         mov.s              ecx, edi                                             // 0x0051c29e    8bcf
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                        // 0x0051c2a0    e85b72eeff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x0051c2a5    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                          // 0x0051c2a9    8b542420
                         {disp8} mov        eax, dword ptr [esp + 0x24]                          // 0x0051c2ad    8b442424
                         {disp8} mov        dword ptr [edi + 0x24], ecx                          // 0x0051c2b1    894f24
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0051c2b4    8b4c2414
                         push               ecx                                                  // 0x0051c2b8    51
                         mov.s              ecx, edi                                             // 0x0051c2b9    8bcf
                         {disp8} mov        dword ptr [edi + 0x28], edx                          // 0x0051c2bb    895728
                         {disp8} mov        dword ptr [edi + 0x2c], eax                          // 0x0051c2be    89472c
                         call               _jmp_addr_0x005198f0                                 // 0x0051c2c1    e82ad6ffff
                         {disp8} jmp        _jmp_addr_0x0051c2f5                                 // 0x0051c2c6    eb2d
_jmp_addr_0x0051c2c8:    test               ah, 0x40                                             // 0x0051c2c8    f6c440
                         {disp8} jne        _jmp_addr_0x0051c2e9                                 // 0x0051c2cb    751c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051c2cd    8b542410
                         {disp8} lea        edi, dword ptr [esi + 0x14]                          // 0x0051c2d1    8d7e14
                         push               edx                                                  // 0x0051c2d4    52
                         mov.s              ecx, edi                                             // 0x0051c2d5    8bcf
                         call               _jmp_addr_0x00519320                                 // 0x0051c2d7    e844d0ffff
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x0051c2dc    8d54241c
                         mov.s              ecx, edi                                             // 0x0051c2e0    8bcf
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z             // 0x0051c2e2    e88972eeff
                         {disp8} jmp        _jmp_addr_0x0051c2f5                                 // 0x0051c2e7    eb0c
_jmp_addr_0x0051c2e9:    {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x0051c2e9    8d54241c
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x0051c2ed    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z            // 0x0051c2f0    e83b72eeff
_jmp_addr_0x0051c2f5:    {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0051c2f5    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0051c2f9    8b4c2414
                         pop                edi                                                  // 0x0051c2fd    5f
                         {disp8} mov        dword ptr [esi + 0x44], eax                          // 0x0051c2fe    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx                          // 0x0051c301    894e48
                         pop                ebp                                                  // 0x0051c304    5d
_jmp_addr_0x0051c305:    pop                esi                                                  // 0x0051c305    5e
                         pop                ebx                                                  // 0x0051c306    5b
                         add                esp, 0x24                                            // 0x0051c307    83c424
                         ret                                                                     // 0x0051c30a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0051c30b    e86955eeff
?Draw@Animal@@UAEXXZ:
                         sub                esp, 0x38                                            // 0x0051c310    83ec38
                         push               ebx                                                  // 0x0051c313    53
                         mov.s              ebx, ecx                                             // 0x0051c314    8bd9
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051c316    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0051c31c    e82f950300
                         {disp32} mov       eax, dword ptr [eax + 0x000003a0]                    // 0x0051c321    8b80a0030000
                         cmp                dword ptr [eax + 0x00004878], 0x04                   // 0x0051c327    83b87848000004
                         {disp8} jne        _jmp_addr_0x0051c33c                                 // 0x0051c32e    750c
                         cmp                dword ptr [eax + 0x00004904], ebx                    // 0x0051c330    399804490000
                         {disp32} je        _jmp_addr_0x0051c555                                 // 0x0051c336    0f8419020000
_jmp_addr_0x0051c33c:    mov                eax, dword ptr [ebx]                                 // 0x0051c33c    8b03
                         mov.s              ecx, ebx                                             // 0x0051c33e    8bcb
                         call               dword ptr [eax + 0x120]                              // 0x0051c340    ff9020010000
                         push               ecx                                                  // 0x0051c346    51
                         mov.s              ecx, ebx                                             // 0x0051c347    8bcb
                         fstp               dword ptr [esp]                                      // 0x0051c349    d91c24
                         call               _jmp_addr_0x0051af00                                 // 0x0051c34c    e8afebffff
                         mov.s              ecx, ebx                                             // 0x0051c351    8bcb
                         call               _jmp_addr_0x0051b220                                 // 0x0051c353    e8c8eeffff
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]                    // 0x0051c358    db05c09eea00
                         {disp32} fmul      dword ptr [_rdata_float0p001]                        // 0x0051c35e    d80db0a38a00
                         {disp32} fadd      dword ptr [ebx + 0x00000124]                         // 0x0051c364    d88324010000
                         {disp32} fcom      dword ptr [ebx + 0x00000128]                         // 0x0051c36a    d89328010000
                         {disp32} fst       dword ptr [ebx + 0x00000124]                         // 0x0051c370    d99324010000
                         fnstsw             ax                                                   // 0x0051c376    dfe0
                         test               ah, 0x01                                             // 0x0051c378    f6c401
                         {disp8} jne        _jmp_addr_0x0051c3af                                 // 0x0051c37b    7532
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000114]                    // 0x0051c37d    8b8b14010000
                         fstp               st(0)                                                // 0x0051c383    ddd8
                         {disp32} mov       edx, dword ptr [ebx + 0x00000118]                    // 0x0051c385    8b9318010000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000128]                    // 0x0051c38b    8b8328010000
                         {disp32} mov       dword ptr [ebx + 0x00000110], ecx                    // 0x0051c391    898b10010000
                         {disp32} mov       dword ptr [ebx + 0x0000011c], edx                    // 0x0051c397    89931c010000
                         {disp32} mov       dword ptr [ebx + 0x00000120], 0x00000000             // 0x0051c39d    c7832001000000000000
                         {disp32} mov       dword ptr [ebx + 0x00000124], eax                    // 0x0051c3a7    898324010000
                         {disp8} jmp        _jmp_addr_0x0051c42b                                 // 0x0051c3ad    eb7c
_jmp_addr_0x0051c3af:    fld                st(0)                                                // 0x0051c3af    d9c0
                         fld                st(0)                                                // 0x0051c3b1    d9c0
                         fmulp              st(1), st                                            // 0x0051c3b3    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x0051c3b5    d80db4a38a00
                         fld                st(1)                                                // 0x0051c3bb    d9c1
                         fmul               st, st(1)                                            // 0x0051c3bd    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x0051c3bf    d80d6cb28a00
                         fld                st(1)                                                // 0x0051c3c5    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x00000138]                         // 0x0051c3c7    d88b38010000
                         fld                st(1)                                                // 0x0051c3cd    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x0000013c]                         // 0x0051c3cf    d88b3c010000
                         faddp              st(1), st                                            // 0x0051c3d5    dec1
                         fxch               st(3)                                                // 0x0051c3d7    d9cb
                         {disp32} fmul      dword ptr [ebx + 0x00000134]                         // 0x0051c3d9    d88b34010000
                         faddp              st(3), st                                            // 0x0051c3df    dec3
                         fxch               st(2)                                                // 0x0051c3e1    d9ca
                         {disp32} fadd      dword ptr [ebx + 0x00000130]                         // 0x0051c3e3    d88330010000
                         {disp32} fstp      dword ptr [ebx + 0x0000011c]                         // 0x0051c3e9    d99b1c010000
                         fld                st(0)                                                // 0x0051c3ef    d9c0
                         fmul               st, st(1)                                            // 0x0051c3f1    d8c9
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                          // 0x0051c3f3    d80d68b28a00
                         {disp32} fmul      dword ptr [ebx + 0x0000013c]                         // 0x0051c3f9    d88b3c010000
                         fxch               st(2)                                                // 0x0051c3ff    d9ca
                         {disp32} fmul      dword ptr [ebx + 0x00000138]                         // 0x0051c401    d88b38010000
                         faddp              st(2), st                                            // 0x0051c407    dec2
                         {disp32} fmul      dword ptr [ebx + 0x00000134]                         // 0x0051c409    d88b34010000
                         faddp              st(1), st                                            // 0x0051c40f    dec1
                         {disp32} fld       dword ptr [ebx + 0x00000130]                         // 0x0051c411    d98330010000
                         {disp32} fmul      dword ptr [ebx + 0x00000124]                         // 0x0051c417    d88b24010000
                         faddp              st(1), st                                            // 0x0051c41d    dec1
                         {disp32} fadd      dword ptr [ebx + 0x0000012c]                         // 0x0051c41f    d8832c010000
                         {disp32} fstp      dword ptr [ebx + 0x00000110]                         // 0x0051c425    d99b10010000
_jmp_addr_0x0051c42b:    {disp32} mov       ecx, dword ptr [ebx + 0x00000110]                    // 0x0051c42b    8b8b10010000
                         {disp8} mov        dword ptr [esp + 0x04], ecx                          // 0x0051c431    894c2404
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x0051c435    d9442404
                         push               esi                                                  // 0x0051c439    56
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051c43a    d81d98a38a00
                         push               edi                                                  // 0x0051c440    57
                         fnstsw             ax                                                   // 0x0051c441    dfe0
                         test               ah, 0x40                                             // 0x0051c443    f6c440
                         {disp8} jne        _jmp_addr_0x0051c4c6                                 // 0x0051c446    757e
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051c448    d944240c
                         {disp8} mov        eax, dword ptr [ebx + 0x40]                          // 0x0051c44c    8b4340
                         fcos                                                                    // 0x0051c44f    d9ff
                         add                eax, 0x14                                            // 0x0051c451    83c014
                         mov                ecx, 0x0000000c                                      // 0x0051c454    b90c000000
                         mov.s              esi, eax                                             // 0x0051c459    8bf0
                         {disp8} lea        edi, dword ptr [esp + 0x14]                          // 0x0051c45b    8d7c2414
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0051c45f    f3a5
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051c461    d944240c
                         fsin                                                                    // 0x0051c465    d9fe
                         fld                st(0)                                                // 0x0051c467    d9c0
                         fmul               dword ptr [eax]                                      // 0x0051c469    d808
                         fld                st(2)                                                // 0x0051c46b    d9c2
                         fmul               dword ptr [eax]                                      // 0x0051c46d    d808
                         fld                st(2)                                                // 0x0051c46f    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                               // 0x0051c471    d8480c
                         fsubp              st(1), st                                            // 0x0051c474    dee9
                         fstp               dword ptr [eax]                                      // 0x0051c476    d918
                         fld                st(2)                                                // 0x0051c478    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                               // 0x0051c47a    d8480c
                         fadd               st, st(1)                                            // 0x0051c47d    d8c1
                         {disp8} fstp       dword ptr [eax + 0x0c]                               // 0x0051c47f    d9580c
                         fstp               st(0)                                                // 0x0051c482    ddd8
                         fld                st(0)                                                // 0x0051c484    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                               // 0x0051c486    d84804
                         fld                st(2)                                                // 0x0051c489    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                               // 0x0051c48b    d84804
                         fld                st(2)                                                // 0x0051c48e    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                               // 0x0051c490    d84810
                         fsubp              st(1), st                                            // 0x0051c493    dee9
                         {disp8} fstp       dword ptr [eax + 0x04]                               // 0x0051c495    d95804
                         fld                st(2)                                                // 0x0051c498    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                               // 0x0051c49a    d84810
                         fadd               st, st(1)                                            // 0x0051c49d    d8c1
                         {disp8} fstp       dword ptr [eax + 0x10]                               // 0x0051c49f    d95810
                         fstp               st(0)                                                // 0x0051c4a2    ddd8
                         fld                st(0)                                                // 0x0051c4a4    d9c0
                         {disp8} fmul       dword ptr [eax + 0x08]                               // 0x0051c4a6    d84808
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051c4a9    d95c2410
                         fld                st(1)                                                // 0x0051c4ad    d9c1
                         {disp8} fmul       dword ptr [eax + 0x08]                               // 0x0051c4af    d84808
                         fxch               st(1)                                                // 0x0051c4b2    d9c9
                         {disp8} fmul       dword ptr [eax + 0x14]                               // 0x0051c4b4    d84814
                         fsubp              st(1), st                                            // 0x0051c4b7    dee9
                         {disp8} fstp       dword ptr [eax + 0x08]                               // 0x0051c4b9    d95808
                         {disp8} fmul       dword ptr [eax + 0x14]                               // 0x0051c4bc    d84814
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x0051c4bf    d8442410
                         {disp8} fstp       dword ptr [eax + 0x14]                               // 0x0051c4c3    d95814
_jmp_addr_0x0051c4c6:    {disp8} mov        eax, dword ptr [ebx + 0x44]                          // 0x0051c4c6    8b4344
                         test               eax, eax                                             // 0x0051c4c9    85c0
                         {disp8} je         _jmp_addr_0x0051c4d6                                 // 0x0051c4cb    7409
                         mov.s              ecx, ebx                                             // 0x0051c4cd    8bcb
                         call               _jmp_addr_0x00518050                                 // 0x0051c4cf    e87cbbffff
                         {disp8} jmp        _jmp_addr_0x0051c52a                                 // 0x0051c4d4    eb54
_jmp_addr_0x0051c4d6:    {disp32} mov       eax, dword ptr [ebx + 0x000000d0]                    // 0x0051c4d6    8b83d0000000
                         test               eax, eax                                             // 0x0051c4dc    85c0
                         {disp8} jne        _jmp_addr_0x0051c513                                 // 0x0051c4de    7533
                         {disp8} mov        esi, dword ptr [ebx + 0x40]                          // 0x0051c4e0    8b7340
                         push               ebp                                                  // 0x0051c4e3    55
                         {disp8} lea        edi, dword ptr [esi + 0x50]                          // 0x0051c4e4    8d7e50
                         push               edi                                                  // 0x0051c4e7    57
                         {disp8} lea        ebp, dword ptr [esi + 0x4c]                          // 0x0051c4e8    8d6e4c
                         {disp8} lea        eax, dword ptr [esi + 0x38]                          // 0x0051c4eb    8d4638
                         push               ebp                                                  // 0x0051c4ee    55
                         push               eax                                                  // 0x0051c4ef    50
                         call               _jmp_addr_0x00801c90                                 // 0x0051c4f0    e89b572e00
                         mov                edx, dword ptr [edi]                                 // 0x0051c4f5    8b17
                         push               ebp                                                  // 0x0051c4f7    55
                         push               edx                                                  // 0x0051c4f8    52
                         {disp8} lea        eax, dword ptr [esi + 0x38]                          // 0x0051c4f9    8d4638
                         push               eax                                                  // 0x0051c4fc    50
                         call               _jmp_addr_0x007feb30                                 // 0x0051c4fd    e82e262e00
                         add                esp, 0x18                                            // 0x0051c502    83c418
                         mov.s              edx, ebx                                             // 0x0051c505    8bd3
                         mov.s              ecx, esi                                             // 0x0051c507    8bce
                         mov                dword ptr [edi], eax                                 // 0x0051c509    8907
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051c50b    e8c0f01100
                         pop                ebp                                                  // 0x0051c510    5d
                         {disp8} jmp        _jmp_addr_0x0051c52a                                 // 0x0051c511    eb17
_jmp_addr_0x0051c513:    {disp8} mov        esi, dword ptr [ebx + 0x40]                          // 0x0051c513    8b7340
                         push               eax                                                  // 0x0051c516    50
                         or                 edx, 0xffffffff                                      // 0x0051c517    83caff
                         mov.s              ecx, esi                                             // 0x0051c51a    8bce
                         call               _jmp_addr_0x0080bec0                                 // 0x0051c51c    e89ff92e00
                         mov.s              edx, ebx                                             // 0x0051c521    8bd3
                         mov.s              ecx, esi                                             // 0x0051c523    8bce
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051c525    e8a6f01100
_jmp_addr_0x0051c52a:    {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051c52a    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051c52e    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051c534    dfe0
                         test               ah, 0x40                                             // 0x0051c536    f6c440
                         {disp8} jne        _jmp_addr_0x0051c54c                                 // 0x0051c539    7511
                         {disp8} mov        edi, dword ptr [ebx + 0x40]                          // 0x0051c53b    8b7b40
                         add                edi, 0x14                                            // 0x0051c53e    83c714
                         mov                ecx, 0x0000000c                                      // 0x0051c541    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x14]                          // 0x0051c546    8d742414
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0051c54a    f3a5
_jmp_addr_0x0051c54c:    mov.s              ecx, ebx                                             // 0x0051c54c    8bcb
                         call               _jmp_addr_0x0041b1f0                                 // 0x0051c54e    e89decefff
                         pop                edi                                                  // 0x0051c553    5f
                         pop                esi                                                  // 0x0051c554    5e
_jmp_addr_0x0051c555:    pop                ebx                                                  // 0x0051c555    5b
                         add                esp, 0x38                                            // 0x0051c556    83c438
                         ret                                                                     // 0x0051c559    c3
                         call               dword ptr [__imp__sendto@4]                          // 0x0051c55a    ff15fc988a00
?Draw@SpellWolf@@UAEXXZ:
                         push               ebp                                                  // 0x0051c560    55
                         mov.s              ebp, esp                                             // 0x0051c561    8bec
                         sub                esp, 0x40                                            // 0x0051c563    83ec40
                         push               ebx                                                  // 0x0051c566    53
                         push               esi                                                  // 0x0051c567    56
                         mov.s              ebx, ecx                                             // 0x0051c568    8bd9
                         mov                eax, dword ptr [ebx]                                 // 0x0051c56a    8b03
                         push               edi                                                  // 0x0051c56c    57
                         call               dword ptr [eax + 0x120]                              // 0x0051c56d    ff9020010000
                         push               ecx                                                  // 0x0051c573    51
                         mov.s              ecx, ebx                                             // 0x0051c574    8bcb
                         fstp               dword ptr [esp]                                      // 0x0051c576    d91c24
                         call               _jmp_addr_0x0051af00                                 // 0x0051c579    e882e9ffff
                         mov.s              ecx, ebx                                             // 0x0051c57e    8bcb
                         call               _jmp_addr_0x0051b220                                 // 0x0051c580    e89becffff
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]                    // 0x0051c585    db05c09eea00
                         {disp32} fmul      dword ptr [_rdata_float0p001]                        // 0x0051c58b    d80db0a38a00
                         {disp32} fadd      dword ptr [ebx + 0x00000124]                         // 0x0051c591    d88324010000
                         {disp32} fcom      dword ptr [ebx + 0x00000128]                         // 0x0051c597    d89328010000
                         {disp32} fst       dword ptr [ebx + 0x00000124]                         // 0x0051c59d    d99324010000
                         fnstsw             ax                                                   // 0x0051c5a3    dfe0
                         test               ah, 0x01                                             // 0x0051c5a5    f6c401
                         {disp8} jne        _jmp_addr_0x0051c5dc                                 // 0x0051c5a8    7532
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000114]                    // 0x0051c5aa    8b8b14010000
                         fstp               st(0)                                                // 0x0051c5b0    ddd8
                         {disp32} mov       edx, dword ptr [ebx + 0x00000118]                    // 0x0051c5b2    8b9318010000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000128]                    // 0x0051c5b8    8b8328010000
                         {disp32} mov       dword ptr [ebx + 0x00000110], ecx                    // 0x0051c5be    898b10010000
                         {disp32} mov       dword ptr [ebx + 0x0000011c], edx                    // 0x0051c5c4    89931c010000
                         {disp32} mov       dword ptr [ebx + 0x00000120], 0x00000000             // 0x0051c5ca    c7832001000000000000
                         {disp32} mov       dword ptr [ebx + 0x00000124], eax                    // 0x0051c5d4    898324010000
                         {disp8} jmp        _jmp_addr_0x0051c65a                                 // 0x0051c5da    eb7e
_jmp_addr_0x0051c5dc:    fld                st(0)                                                // 0x0051c5dc    d9c0
                         fld                st(0)                                                // 0x0051c5de    d9c0
                         fmulp              st(1), st                                            // 0x0051c5e0    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x0051c5e2    d80db4a38a00
                         fld                st(1)                                                // 0x0051c5e8    d9c1
                         fmul               st, st(1)                                            // 0x0051c5ea    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x0051c5ec    d80d6cb28a00
                         fld                st(0)                                                // 0x0051c5f2    d9c0
                         {disp32} fmul      dword ptr [ebx + 0x0000013c]                         // 0x0051c5f4    d88b3c010000
                         fxch               st(3)                                                // 0x0051c5fa    d9cb
                         {disp32} fmul      dword ptr [ebx + 0x00000134]                         // 0x0051c5fc    d88b34010000
                         faddp              st(3), st                                            // 0x0051c602    dec3
                         fld                st(1)                                                // 0x0051c604    d9c1
                         {disp32} fmul      dword ptr [ebx + 0x00000138]                         // 0x0051c606    d88b38010000
                         faddp              st(3), st                                            // 0x0051c60c    dec3
                         fxch               st(2)                                                // 0x0051c60e    d9ca
                         {disp32} fadd      dword ptr [ebx + 0x00000130]                         // 0x0051c610    d88330010000
                         {disp32} fstp      dword ptr [ebx + 0x0000011c]                         // 0x0051c616    d99b1c010000
                         fld                st(0)                                                // 0x0051c61c    d9c0
                         fmul               st, st(1)                                            // 0x0051c61e    d8c9
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                          // 0x0051c620    d80d68b28a00
                         {disp32} fmul      dword ptr [ebx + 0x0000013c]                         // 0x0051c626    d88b3c010000
                         fxch               st(1)                                                // 0x0051c62c    d9c9
                         {disp32} fmul      dword ptr [ebx + 0x00000134]                         // 0x0051c62e    d88b34010000
                         faddp              st(1), st                                            // 0x0051c634    dec1
                         {disp32} fld       dword ptr [ebx + 0x00000130]                         // 0x0051c636    d98330010000
                         {disp32} fmul      dword ptr [ebx + 0x00000124]                         // 0x0051c63c    d88b24010000
                         faddp              st(1), st                                            // 0x0051c642    dec1
                         fxch               st(1)                                                // 0x0051c644    d9c9
                         {disp32} fmul      dword ptr [ebx + 0x00000138]                         // 0x0051c646    d88b38010000
                         faddp              st(1), st                                            // 0x0051c64c    dec1
                         {disp32} fadd      dword ptr [ebx + 0x0000012c]                         // 0x0051c64e    d8832c010000
                         {disp32} fstp      dword ptr [ebx + 0x00000110]                         // 0x0051c654    d99b10010000
_jmp_addr_0x0051c65a:    {disp32} mov       ecx, dword ptr [ebx + 0x00000110]                    // 0x0051c65a    8b8b10010000
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                         // 0x0051c660    894dfc
                         {disp8} fld        dword ptr [ebp + -0x04]                              // 0x0051c663    d945fc
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051c666    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051c66c    dfe0
                         test               ah, 0x40                                             // 0x0051c66e    f6c440
                         {disp8} jne        _jmp_addr_0x0051c6ec                                 // 0x0051c671    7579
                         {disp8} fld        dword ptr [ebp + -0x04]                              // 0x0051c673    d945fc
                         {disp8} mov        eax, dword ptr [ebx + 0x40]                          // 0x0051c676    8b4340
                         fcos                                                                    // 0x0051c679    d9ff
                         add                eax, 0x14                                            // 0x0051c67b    83c014
                         mov                ecx, 0x0000000c                                      // 0x0051c67e    b90c000000
                         mov.s              esi, eax                                             // 0x0051c683    8bf0
                         {disp8} lea        edi, dword ptr [ebp + -0x40]                         // 0x0051c685    8d7dc0
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0051c688    f3a5
                         {disp8} fld        dword ptr [ebp + -0x04]                              // 0x0051c68a    d945fc
                         fsin                                                                    // 0x0051c68d    d9fe
                         fld                st(0)                                                // 0x0051c68f    d9c0
                         fmul               dword ptr [eax]                                      // 0x0051c691    d808
                         fld                st(2)                                                // 0x0051c693    d9c2
                         fmul               dword ptr [eax]                                      // 0x0051c695    d808
                         fld                st(2)                                                // 0x0051c697    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                               // 0x0051c699    d8480c
                         fsubp              st(1), st                                            // 0x0051c69c    dee9
                         fstp               dword ptr [eax]                                      // 0x0051c69e    d918
                         fld                st(2)                                                // 0x0051c6a0    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                               // 0x0051c6a2    d8480c
                         fadd               st, st(1)                                            // 0x0051c6a5    d8c1
                         {disp8} fstp       dword ptr [eax + 0x0c]                               // 0x0051c6a7    d9580c
                         fstp               st(0)                                                // 0x0051c6aa    ddd8
                         fld                st(0)                                                // 0x0051c6ac    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                               // 0x0051c6ae    d84804
                         fld                st(2)                                                // 0x0051c6b1    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                               // 0x0051c6b3    d84804
                         fld                st(2)                                                // 0x0051c6b6    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                               // 0x0051c6b8    d84810
                         fsubp              st(1), st                                            // 0x0051c6bb    dee9
                         {disp8} fstp       dword ptr [eax + 0x04]                               // 0x0051c6bd    d95804
                         fld                st(2)                                                // 0x0051c6c0    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                               // 0x0051c6c2    d84810
                         fadd               st, st(1)                                            // 0x0051c6c5    d8c1
                         {disp8} fstp       dword ptr [eax + 0x10]                               // 0x0051c6c7    d95810
                         fstp               st(0)                                                // 0x0051c6ca    ddd8
                         fld                st(0)                                                // 0x0051c6cc    d9c0
                         {disp8} fmul       dword ptr [eax + 0x08]                               // 0x0051c6ce    d84808
                         {disp8} fstp       dword ptr [ebp + -0x08]                              // 0x0051c6d1    d95df8
                         fld                st(1)                                                // 0x0051c6d4    d9c1
                         {disp8} fmul       dword ptr [eax + 0x08]                               // 0x0051c6d6    d84808
                         fxch               st(1)                                                // 0x0051c6d9    d9c9
                         {disp8} fmul       dword ptr [eax + 0x14]                               // 0x0051c6db    d84814
                         fsubp              st(1), st                                            // 0x0051c6de    dee9
                         {disp8} fstp       dword ptr [eax + 0x08]                               // 0x0051c6e0    d95808
                         {disp8} fmul       dword ptr [eax + 0x14]                               // 0x0051c6e3    d84814
                         {disp8} fadd       dword ptr [ebp + -0x08]                              // 0x0051c6e6    d845f8
                         {disp8} fstp       dword ptr [eax + 0x14]                               // 0x0051c6e9    d95814
_jmp_addr_0x0051c6ec:    {disp32} mov       edx, dword ptr [ebx + 0x00000168]                    // 0x0051c6ec    8b9368010000
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                         // 0x0051c6f2    8d45f8
                         {disp8} mov        dword ptr [ebp + -0x10], edx                         // 0x0051c6f5    8955f0
                         {disp8} mov        dword ptr [ebp + -0x0c], eax                         // 0x0051c6f8    8945f4
                         {disp8} fld        dword ptr [ebp + -0x10]                              // 0x0051c6fb    d945f0
                         {disp8} mov        edx, dword ptr [ebp + -0x0c]                         // 0x0051c6fe    8b55f4
                         fistp              dword ptr [edx]                                      // 0x0051c701    db1a
                         {disp8} mov        esi, dword ptr [ebp + -0x08]                         // 0x0051c703    8b75f8
                         {disp8} mov        edx, dword ptr [ebx + 0x40]                          // 0x0051c706    8b5340
                         mov.s              ecx, esi                                             // 0x0051c709    8bce
                         shl                ecx, 0x18                                            // 0x0051c70b    c1e118
                         or                 ecx, 0xffffff                                        // 0x0051c70e    81c9ffffff00
                         {disp8} mov        dword ptr [edx + 0x4c], ecx                          // 0x0051c714    894a4c
                         {disp8} mov        ecx, dword ptr [ebx + 0x40]                          // 0x0051c717    8b4b40
                         mov                eax, dword ptr [ecx]                                 // 0x0051c71a    8b01
                         xor.s              edx, edx                                             // 0x0051c71c    33d2
                         cmp                esi, 0x000000ff                                      // 0x0051c71e    81feff000000
                         setne              dl                                                   // 0x0051c724    0f95c2
                         call               dword ptr [eax + 0x48]                               // 0x0051c727    ff5048
                         {disp8} mov        edi, dword ptr [ebx + 0x44]                          // 0x0051c72a    8b7b44
                         test               edi, edi                                             // 0x0051c72d    85ff
                         {disp32} je        _jmp_addr_0x0051c7d2                                 // 0x0051c72f    0f849d000000
                         {disp8} mov        ecx, dword ptr [ebx + 0x40]                          // 0x0051c735    8b4b40
                         {disp8} mov        edx, dword ptr [ecx + 0x4c]                          // 0x0051c738    8b514c
                         mov.s              ecx, edi                                             // 0x0051c73b    8bcf
                         {disp8} mov        dword ptr [ebp + -0x08], edx                         // 0x0051c73d    8955f8
                         call               _jmp_addr_0x00730570                                 // 0x0051c740    e82b3e2100
                         mov.s              esi, eax                                             // 0x0051c745    8bf0
                         mov.s              ecx, edi                                             // 0x0051c747    8bcf
                         {disp8} mov        dword ptr [ebp + -0x10], esi                         // 0x0051c749    8975f0
                         call               _jmp_addr_0x00730480                                 // 0x0051c74c    e82f3d2100
                         {disp8} mov        ecx, dword ptr [ebx + 0x40]                          // 0x0051c751    8b4b40
                         xor.s              edx, edx                                             // 0x0051c754    33d2
                         {disp8} mov        dl, byte ptr [ebp + -0x06]                           // 0x0051c756    8a55fa
                         shr                esi, 8                                               // 0x0051c759    c1ee08
                         push               eax                                                  // 0x0051c75c    50
                         mov.s              eax, esi                                             // 0x0051c75d    8bc6
                         {disp8} mov        dword ptr [ebp + -0x0c], ecx                         // 0x0051c75f    894df4
                         and                eax, 0x0000ff00                                      // 0x0051c762    2500ff0000
                         mov.s              ecx, esi                                             // 0x0051c767    8bce
                         imul               edx, eax                                             // 0x0051c769    0fafd0
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                         // 0x0051c76c    8b45f8
                         and                ecx, 0x00ff0000                                      // 0x0051c76f    81e10000ff00
                         mov.s              edi, eax                                             // 0x0051c775    8bf8
                         shr                edi, 0x18                                            // 0x0051c777    c1ef18
                         imul               ecx, edi                                             // 0x0051c77a    0fafcf
                         and                ecx, 0xff00ffff                                      // 0x0051c77d    81e1ffff00ff
                         or.s               edx, ecx                                             // 0x0051c783    0bd1
                         xor.s              ecx, ecx                                             // 0x0051c785    33c9
                         mov.s              cl, ah                                               // 0x0051c787    8acc
                         and                esi, 0x000000ff                                      // 0x0051c789    81e6ff000000
                         and                eax, 0x000000ff                                      // 0x0051c78f    25ff000000
                         and                edx, 0xffff00ff                                      // 0x0051c794    81e2ff00ffff
                         imul               ecx, esi                                             // 0x0051c79a    0fafce
                         {disp8} mov        esi, dword ptr [ebp + -0x10]                         // 0x0051c79d    8b75f0
                         and                esi, 0x000000ff                                      // 0x0051c7a0    81e6ff000000
                         imul               eax, esi                                             // 0x0051c7a6    0fafc6
                         {disp8} mov        esi, dword ptr [ebp + -0x0c]                         // 0x0051c7a9    8b75f4
                         or.s               edx, ecx                                             // 0x0051c7ac    0bd1
                         and                edx, 0xffffff00                                      // 0x0051c7ae    81e200ffffff
                         shr                eax, 8                                               // 0x0051c7b4    c1e808
                         or.s               edx, eax                                             // 0x0051c7b7    0bd0
                         mov.s              ecx, esi                                             // 0x0051c7b9    8bce
                         call               _jmp_addr_0x0080bec0                                 // 0x0051c7bb    e800f72e00
                         mov.s              edx, ebx                                             // 0x0051c7c0    8bd3
                         mov.s              ecx, esi                                             // 0x0051c7c2    8bce
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051c7c4    e807ee1100
                         mov.s              ecx, ebx                                             // 0x0051c7c9    8bcb
                         call               _jmp_addr_0x00637dd0                                 // 0x0051c7cb    e800b61100
                         {disp8} jmp        _jmp_addr_0x0051c7ef                                 // 0x0051c7d0    eb1d
_jmp_addr_0x0051c7d2:    {disp32} mov       edx, dword ptr [ebx + 0x000000d0]                    // 0x0051c7d2    8b93d0000000
                         {disp8} mov        esi, dword ptr [ebx + 0x40]                          // 0x0051c7d8    8b7340
                         push               edx                                                  // 0x0051c7db    52
                         {disp8} mov        edx, dword ptr [esi + 0x4c]                          // 0x0051c7dc    8b564c
                         mov.s              ecx, esi                                             // 0x0051c7df    8bce
                         call               _jmp_addr_0x0080bec0                                 // 0x0051c7e1    e8daf62e00
                         mov.s              edx, ebx                                             // 0x0051c7e6    8bd3
                         mov.s              ecx, esi                                             // 0x0051c7e8    8bce
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051c7ea    e8e1ed1100
_jmp_addr_0x0051c7ef:    {disp8} fld        dword ptr [ebp + -0x04]                              // 0x0051c7ef    d945fc
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051c7f2    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051c7f8    dfe0
                         test               ah, 0x40                                             // 0x0051c7fa    f6c440
                         {disp8} jne        _jmp_addr_0x0051c80f                                 // 0x0051c7fd    7510
                         {disp8} mov        edi, dword ptr [ebx + 0x40]                          // 0x0051c7ff    8b7b40
                         add                edi, 0x14                                            // 0x0051c802    83c714
                         mov                ecx, 0x0000000c                                      // 0x0051c805    b90c000000
                         {disp8} lea        esi, dword ptr [ebp + -0x40]                         // 0x0051c80a    8d75c0
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x0051c80d    f3a5
_jmp_addr_0x0051c80f:    mov.s              ecx, ebx                                             // 0x0051c80f    8bcb
                         call               _jmp_addr_0x0041b1f0                                 // 0x0051c811    e8dae9efff
                         pop                edi                                                  // 0x0051c816    5f
                         pop                esi                                                  // 0x0051c817    5e
                         pop                ebx                                                  // 0x0051c818    5b
                         mov.s              esp, ebp                                             // 0x0051c819    8be5
                         pop                ebp                                                  // 0x0051c81b    5d
                         ret                                                                     // 0x0051c81c    c3
                         nop                                                                     // 0x0051c81d    90
                         nop                                                                     // 0x0051c81e    90
                         nop                                                                     // 0x0051c81f    90
?DrawOutOfMap@Object@@UAEX_N@Z:
                         push               esi                                                  // 0x0051c820    56
                         mov.s              esi, ecx                                             // 0x0051c821    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051c823    8b4640
                         test               eax, eax                                             // 0x0051c826    85c0
                         {disp8} je         _jmp_addr_0x0051c82e                                 // 0x0051c828    7404
                         or                 dword ptr [eax + 8], 0x40                            // 0x0051c82a    83480840
_jmp_addr_0x0051c82e:    push               ebx                                                  // 0x0051c82e    53
                         push               edi                                                  // 0x0051c82f    57
                         {disp8} mov        edi, dword ptr [esi + 0x44]                          // 0x0051c830    8b7e44
                         test               edi, edi                                             // 0x0051c833    85ff
                         {disp8} je         _jmp_addr_0x0051c86e                                 // 0x0051c835    7437
                         mov.s              ecx, edi                                             // 0x0051c837    8bcf
                         call               _jmp_addr_0x00730480                                 // 0x0051c839    e8423c2100
                         mov.s              ecx, edi                                             // 0x0051c83e    8bcf
                         mov.s              ebx, eax                                             // 0x0051c840    8bd8
                         call               _jmp_addr_0x00730570                                 // 0x0051c842    e8293d2100
                         {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051c847    8b7e40
                         push               ebx                                                  // 0x0051c84a    53
                         mov.s              edx, eax                                             // 0x0051c84b    8bd0
                         mov.s              ecx, edi                                             // 0x0051c84d    8bcf
                         call               _jmp_addr_0x0080bec0                                 // 0x0051c84f    e86cf62e00
                         {disp8} mov        dl, byte ptr [esp + 0x10]                            // 0x0051c854    8a542410
                         neg                dl                                                   // 0x0051c858    f6da
                         mov.s              ecx, edi                                             // 0x0051c85a    8bcf
                         sbb.s              edx, edx                                             // 0x0051c85c    1bd2
                         and.s              edx, esi                                             // 0x0051c85e    23d6
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051c860    e86bed1100
                         mov.s              ecx, esi                                             // 0x0051c865    8bce
                         call               _jmp_addr_0x00637dd0                                 // 0x0051c867    e864b51100
                         {disp8} jmp        _jmp_addr_0x0051c8a7                                 // 0x0051c86c    eb39
_jmp_addr_0x0051c86e:    {disp8} mov        edi, dword ptr [esi + 0x40]                          // 0x0051c86e    8b7e40
                         push               ebp                                                  // 0x0051c871    55
                         {disp8} lea        ebx, dword ptr [edi + 0x50]                          // 0x0051c872    8d5f50
                         push               ebx                                                  // 0x0051c875    53
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x0051c876    8d6f4c
                         {disp8} lea        eax, dword ptr [edi + 0x38]                          // 0x0051c879    8d4738
                         push               ebp                                                  // 0x0051c87c    55
                         push               eax                                                  // 0x0051c87d    50
                         call               _jmp_addr_0x00801c90                                 // 0x0051c87e    e80d542e00
                         mov                eax, dword ptr [ebx]                                 // 0x0051c883    8b03
                         push               ebp                                                  // 0x0051c885    55
                         push               eax                                                  // 0x0051c886    50
                         {disp8} lea        eax, dword ptr [edi + 0x38]                          // 0x0051c887    8d4738
                         push               eax                                                  // 0x0051c88a    50
                         call               _jmp_addr_0x007feb30                                 // 0x0051c88b    e8a0222e00
                         {disp8} mov        dl, byte ptr [esp + 0x2c]                            // 0x0051c890    8a54242c
                         add                esp, 0x18                                            // 0x0051c894    83c418
                         neg                dl                                                   // 0x0051c897    f6da
                         mov.s              ecx, edi                                             // 0x0051c899    8bcf
                         mov                dword ptr [ebx], eax                                 // 0x0051c89b    8903
                         sbb.s              edx, edx                                             // 0x0051c89d    1bd2
                         and.s              edx, esi                                             // 0x0051c89f    23d6
                         call               _jmp_addr_0x0063b5d0                                 // 0x0051c8a1    e82aed1100
                         pop                ebp                                                  // 0x0051c8a6    5d
_jmp_addr_0x0051c8a7:    {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051c8a7    8b4640
                         test               eax, eax                                             // 0x0051c8aa    85c0
                         pop                edi                                                  // 0x0051c8ac    5f
                         pop                ebx                                                  // 0x0051c8ad    5b
                         {disp8} je         _jmp_addr_0x0051c8b4                                 // 0x0051c8ae    7404
                         and                dword ptr [eax + 0x08], 0xffffffbf                   // 0x0051c8b0    836008bf
_jmp_addr_0x0051c8b4:    mov                edx, dword ptr [esi]                                 // 0x0051c8b4    8b16
                         push               0x0                                                  // 0x0051c8b6    6a00
                         mov.s              ecx, esi                                             // 0x0051c8b8    8bce
                         call               dword ptr [edx + 0x2c8]                              // 0x0051c8ba    ff92c8020000
                         test               eax, eax                                             // 0x0051c8c0    85c0
                         {disp8} je         _jmp_addr_0x0051c8ce                                 // 0x0051c8c2    740a
                         mov                eax, dword ptr [esi]                                 // 0x0051c8c4    8b06
                         mov.s              ecx, esi                                             // 0x0051c8c6    8bce
                         call               dword ptr [eax + 0xb44]                              // 0x0051c8c8    ff90440b0000
_jmp_addr_0x0051c8ce:    pop                esi                                                  // 0x0051c8ce    5e
                         ret                0x0004                                               // 0x0051c8cf    c20400
                         nop                                                                     // 0x0051c8d2    90
                         nop                                                                     // 0x0051c8d3    90
                         nop                                                                     // 0x0051c8d4    90
                         nop                                                                     // 0x0051c8d5    90
                         nop                                                                     // 0x0051c8d6    90
                         nop                                                                     // 0x0051c8d7    90
                         nop                                                                     // 0x0051c8d8    90
                         nop                                                                     // 0x0051c8d9    90
                         nop                                                                     // 0x0051c8da    90
                         nop                                                                     // 0x0051c8db    90
                         nop                                                                     // 0x0051c8dc    90
                         nop                                                                     // 0x0051c8dd    90
                         nop                                                                     // 0x0051c8de    90
                         nop                                                                     // 0x0051c8df    90
_jmp_addr_0x0051c8e0:    sub                esp, 0x18                                            // 0x0051c8e0    83ec18
                         push               edi                                                  // 0x0051c8e3    57
                         mov.s              edi, ecx                                             // 0x0051c8e4    8bf9
                         {disp8} fld        dword ptr [edi + 0x28]                               // 0x0051c8e6    d94728
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]                     // 0x0051c8e9    d81d78b48a00
                         fnstsw             ax                                                   // 0x0051c8ef    dfe0
                         test               ah, 0x41                                             // 0x0051c8f1    f6c441
                         {disp32} jne       _jmp_addr_0x0051ca0b                                 // 0x0051c8f4    0f8511010000
                         {disp8} mov        eax, dword ptr [edi + 0x14]                          // 0x0051c8fa    8b4714
                         test               eax, eax                                             // 0x0051c8fd    85c0
                         {disp32} je        _jmp_addr_0x0051ca0b                                 // 0x0051c8ff    0f8406010000
                         {disp8} mov        ecx, dword ptr [edi + 0x3c]                          // 0x0051c905    8b4f3c
                         test               ecx, ecx                                             // 0x0051c908    85c9
                         {disp32} je        _jmp_addr_0x0051ca0b                                 // 0x0051c90a    0f84fb000000
                         push               esi                                                  // 0x0051c910    56
                         {disp8} mov        esi, dword ptr [eax + 0x40]                          // 0x0051c911    8b7040
                         test               esi, esi                                             // 0x0051c914    85f6
                         {disp32} je        _jmp_addr_0x0051c9bb                                 // 0x0051c916    0f849f000000
                         mov                eax, dword ptr [esi]                                 // 0x0051c91c    8b06
                         mov.s              ecx, esi                                             // 0x0051c91e    8bce
                         call               dword ptr [eax + 0xf8]                               // 0x0051c920    ff90f8000000
                         add                eax, 0x18                                            // 0x0051c926    83c018
                         mov                ecx, dword ptr [eax]                                 // 0x0051c929    8b08
                         {disp8} mov        dword ptr [esp + 0x08], ecx                          // 0x0051c92b    894c2408
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x0051c92f    d9442408
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x0051c933    8b5004
                         {disp8} mov        dword ptr [esp + 0x0c], edx                          // 0x0051c936    8954240c
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051c93a    d944240c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0051c93e    8b4008
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0051c941    89442410
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051c945    d9442410
                         {disp8} fmul       dword ptr [esi + 0x2c]                               // 0x0051c949    d84e2c
                         mov.s              ecx, esi                                             // 0x0051c94c    8bce
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051c94e    d944240c
                         {disp8} fmul       dword ptr [esi + 0x20]                               // 0x0051c952    d84e20
                         faddp              st(1), st                                            // 0x0051c955    dec1
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x0051c957    d9442408
                         {disp8} fmul       dword ptr [esi + 0x14]                               // 0x0051c95b    d84e14
                         faddp              st(1), st                                            // 0x0051c95e    dec1
                         {disp8} fadd       dword ptr [esi + 0x38]                               // 0x0051c960    d84638
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x0051c963    d95c2408
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051c967    d9442410
                         {disp8} fmul       dword ptr [esi + 0x30]                               // 0x0051c96b    d84e30
                         fld                st(2)                                                // 0x0051c96e    d9c2
                         {disp8} fmul       dword ptr [esi + 0x18]                               // 0x0051c970    d84e18
                         faddp              st(1), st                                            // 0x0051c973    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x0051c975    d944240c
                         {disp8} fmul       dword ptr [esi + 0x24]                               // 0x0051c979    d84e24
                         faddp              st(1), st                                            // 0x0051c97c    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                               // 0x0051c97e    d8463c
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0051c981    d95c240c
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051c985    d9442410
                         {disp8} fmul       dword ptr [esi + 0x34]                               // 0x0051c989    d84e34
                         fxch               st(1)                                                // 0x0051c98c    d9c9
                         {disp8} fmul       dword ptr [esi + 0x28]                               // 0x0051c98e    d84e28
                         faddp              st(1), st                                            // 0x0051c991    dec1
                         fxch               st(1)                                                // 0x0051c993    d9c9
                         {disp8} fmul       dword ptr [esi + 0x1c]                               // 0x0051c995    d84e1c
                         faddp              st(1), st                                            // 0x0051c998    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                               // 0x0051c99a    d84640
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051c99d    d95c2410
                         mov                edx, dword ptr [esi]                                 // 0x0051c9a1    8b16
                         call               dword ptr [edx + 0xf8]                               // 0x0051c9a3    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x28]                               // 0x0051c9a9    d94028
                         {disp8} fmul       dword ptr [esi + 0x44]                               // 0x0051c9ac    d84e44
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2f758]                    // 0x0051c9af    dc0d58878d00
                         {disp8} fadd       dword ptr [esp + 0x0c]                               // 0x0051c9b5    d844240c
                         {disp8} jmp        _jmp_addr_0x0051c9f1                                 // 0x0051c9b9    eb36
_jmp_addr_0x0051c9bb:    {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x0051c9bb    8d4c2414
                         push               ecx                                                  // 0x0051c9bf    51
                         {disp8} lea        ecx, dword ptr [eax + 0x14]                          // 0x0051c9c0    8d4814
                         call               @GetLHPoint__9MapCoordsCFv@12                        // 0x0051c9c3    e878920e00
                         mov                edx, dword ptr [eax]                                 // 0x0051c9c8    8b10
                         {disp8} mov        dword ptr [esp + 0x08], edx                          // 0x0051c9ca    89542408
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x0051c9ce    8b4804
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                          // 0x0051c9d1    894c240c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0051c9d5    8b5008
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                          // 0x0051c9d8    8b4f14
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x0051c9db    89542410
                         mov                eax, dword ptr [ecx]                                 // 0x0051c9df    8b01
                         call               dword ptr [eax + 0x42c]                              // 0x0051c9e1    ff902c040000
                         {disp8} fadd       dword ptr [esp + 0x0c]                               // 0x0051c9e7    d844240c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]                     // 0x0051c9eb    d80578b48a00
_jmp_addr_0x0051c9f1:    {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x0051c9f1    8d4c2408
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0051c9f5    d95c240c
                         push               ecx                                                  // 0x0051c9f9    51
                         {disp8} mov        ecx, dword ptr [edi + 0x3c]                          // 0x0051c9fa    8b4f3c
                         call               _jmp_addr_0x0069d750                                 // 0x0051c9fd    e84e0d1800
                         {disp8} mov        ecx, dword ptr [edi + 0x3c]                          // 0x0051ca02    8b4f3c
                         call               _jmp_addr_0x0069d790                                 // 0x0051ca05    e8860d1800
                         pop                esi                                                  // 0x0051ca0a    5e
_jmp_addr_0x0051ca0b:    pop                edi                                                  // 0x0051ca0b    5f
                         add                esp, 0x18                                            // 0x0051ca0c    83c418
                         ret                                                                     // 0x0051ca0f    c3
                         {disp32} mov       eax, dword ptr [data_bytes + 0x300324]               // 0x0051ca10    a12463cc00
                         sub                esp, 0x2c                                            // 0x0051ca15    83ec2c
                         push               ebx                                                  // 0x0051ca18    53
                         push               esi                                                  // 0x0051ca19    56
                         push               edi                                                  // 0x0051ca1a    57
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4e3ec0]               // 0x0051ca1b    8b3dc09eea00
                         mov.s              esi, ecx                                             // 0x0051ca21    8bf1
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x222eb4]               // 0x0051ca23    8b0db48ebe00
                         add.s              eax, edi                                             // 0x0051ca29    03c7
                         cmp.s              eax, ecx                                             // 0x0051ca2b    3bc1
                         {disp32} mov       dword ptr [data_bytes + 0x300324], eax               // 0x0051ca2d    a32463cc00
                         {disp8} jle        _jmp_addr_0x0051ca3d                                 // 0x0051ca32    7e09
                         cdq                                                                     // 0x0051ca34    99
                         idiv               ecx                                                  // 0x0051ca35    f7f9
                         {disp32} mov       dword ptr [data_bytes + 0x300324], edx               // 0x0051ca37    89152463cc00
_jmp_addr_0x0051ca3d:    {disp32} mov       ecx, dword ptr [esi + 0x000000e0]                    // 0x0051ca3d    8b8ee0000000
                         xor.s              ebx, ebx                                             // 0x0051ca43    33db
                         cmp.s              ecx, ebx                                             // 0x0051ca45    3bcb
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x0051ca47    894c2410
                         {disp32} je        _jmp_addr_0x0051cbdf                                 // 0x0051ca4b    0f848e010000
                         push               ebp                                                  // 0x0051ca51    55
                         {disp8} jmp        _jmp_addr_0x0051ca58                                 // 0x0051ca52    eb04
_jmp_addr_0x0051ca54:    {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0051ca54    8b4c2414
_jmp_addr_0x0051ca58:    {disp8} mov        edi, dword ptr [ecx + 0x04]                          // 0x0051ca58    8b7904
                         xor.s              eax, eax                                             // 0x0051ca5b    33c0
                         {disp32} mov       al, byte ptr [edi + 0x00000088]                      // 0x0051ca5d    8a8788000000
                         shr                al, 6                                                // 0x0051ca63    c0e806
                         and                eax, 0x03                                            // 0x0051ca66    83e003
                         cmp                byte ptr [eax + esi * 0x1 + 0x000000dc], 0x01        // 0x0051ca69    80bc30dc00000001
                         {disp32} jne       _jmp_addr_0x0051cbd0                                 // 0x0051ca71    0f8559010000
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x0051ca77    8d4c241c
                         push               ecx                                                  // 0x0051ca7b    51
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051ca7c    8d542424
                         push               edx                                                  // 0x0051ca80    52
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                          // 0x0051ca81    8d4c242c
                         push               ecx                                                  // 0x0051ca85    51
                         push               eax                                                  // 0x0051ca86    50
                         {disp8} lea        edx, dword ptr [esp + 0x40]                          // 0x0051ca87    8d542440
                         push               edx                                                  // 0x0051ca8b    52
                         mov.s              ecx, esi                                             // 0x0051ca8c    8bce
                         call               _jmp_addr_0x00779a60                                 // 0x0051ca8e    e8cdcf2500
                         mov                eax, dword ptr [edi]                                 // 0x0051ca93    8b07
                         mov.s              ecx, edi                                             // 0x0051ca95    8bcf
                         call               dword ptr [eax + 0x608]                              // 0x0051ca97    ff9008060000
                         cmp.s              eax, ebx                                             // 0x0051ca9d    3bc3
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]               // 0x0051ca9f    8b1534fee900
                         {disp8} jl         _jmp_addr_0x0051caab                                 // 0x0051caa5    7c04
                         cmp                eax, dword ptr [edx]                                 // 0x0051caa7    3b02
                         {disp8} jl         _jmp_addr_0x0051caad                                 // 0x0051caa9    7c02
_jmp_addr_0x0051caab:    xor.s              eax, eax                                             // 0x0051caab    33c0
_jmp_addr_0x0051caad:    {disp32} mov       ecx, dword ptr [esi + 0x000000cc]                    // 0x0051caad    8b8ecc000000
                         mov                ebp, dword ptr [ecx]                                 // 0x0051cab3    8b29
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]              // 0x0051cab5    8b548204
                         push               ebx                                                  // 0x0051cab9    53
                         push               ebx                                                  // 0x0051caba    53
                         call               dword ptr [ebp + 0xf4]                               // 0x0051cabb    ff95f4000000
                         mov                edx, dword ptr [edi]                                 // 0x0051cac1    8b17
                         mov.s              ecx, edi                                             // 0x0051cac3    8bcf
                         call               dword ptr [edx + 0x120]                              // 0x0051cac5    ff9220010000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x0051cacb    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x24]                          // 0x0051cacf    8b542424
                         push               ecx                                                  // 0x0051cad3    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                          // 0x0051cad4    8b4c2424
                         fstp               dword ptr [esp]                                      // 0x0051cad8    d91c24
                         push               eax                                                  // 0x0051cadb    50
                         push               ecx                                                  // 0x0051cadc    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000000cc]                    // 0x0051cadd    8b8ecc000000
                         push               edx                                                  // 0x0051cae3    52
                         {disp8} lea        edx, dword ptr [esp + 0x40]                          // 0x0051cae4    8d542440
                         call               _jmp_addr_0x0063b680                                 // 0x0051cae8    e893eb1100
                         {disp32} mov       ecx, dword ptr [esi + 0x000000cc]                    // 0x0051caed    8b8ecc000000
                         mov                eax, dword ptr [ecx]                                 // 0x0051caf3    8b01
                         mov                edx, 0x00000001                                      // 0x0051caf5    ba01000000
                         call               dword ptr [eax + 0x48]                               // 0x0051cafa    ff5048
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x0051cafd    8d4c2418
                         push               ecx                                                  // 0x0051cb01    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x0051cb02    8d542414
                         push               edx                                                  // 0x0051cb06    52
                         {disp8} lea        eax, dword ptr [esp + 0x38]                          // 0x0051cb07    8d442438
                         push               eax                                                  // 0x0051cb0b    50
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                          // 0x0051cb0c    895c241c
                         {disp8} mov        dword ptr [esp + 0x24], ebx                          // 0x0051cb10    895c2424
                         call               _jmp_addr_0x00802120                                 // 0x0051cb14    e807562e00
                         {disp32} fild      dword ptr [data_bytes + 0x300324]                    // 0x0051cb19    db052463cc00
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                          // 0x0051cb1f    8b7c241c
                         mov.s              ecx, edi                                             // 0x0051cb23    8bcf
                         {disp32} fmul      dword ptr [__real@40c90fdb]                          // 0x0051cb25    d80d10b28a00
                         shr                ecx, 0x18                                            // 0x0051cb2b    c1e918
                         {disp8} mov        dword ptr [esp + 0x34], ecx                          // 0x0051cb2e    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], ebx                          // 0x0051cb32    895c2438
                         {disp32} fidiv     dword ptr [data_bytes + 0x222eb4]                    // 0x0051cb36    da35b48ebe00
                         add                esp, 0x0c                                            // 0x0051cb3c    83c40c
                         fcos                                                                    // 0x0051cb3f    d9ff
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]            // 0x0051cb41    dc0580b68a00
                         {disp8} fild       qword ptr [esp + 0x28]                               // 0x0051cb47    df6c2428
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x0051cb4b    d80d6cb28a00
                         fmulp              st(1), st                                            // 0x0051cb51    dec9
                         {disp32} fmul      qword ptr [__real@3fe0000000000000]                  // 0x0051cb53    dc0d60b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051cb59    e8a2482800
                         {disp32} mov       ecx, dword ptr [esi + 0x000000cc]                    // 0x0051cb5e    8b8ecc000000
                         mov.s              ebp, eax                                             // 0x0051cb64    8be8
                         mov.s              edx, ebp                                             // 0x0051cb66    8bd5
                         shl                edx, 0x18                                            // 0x0051cb68    c1e218
                         and                edi, 0x00ffffff                                      // 0x0051cb6b    81e7ffffff00
                         or.s               edi, edx                                             // 0x0051cb71    0bfa
                         mov.s              edx, edi                                             // 0x0051cb73    8bd7
                         {disp8} mov        edi, dword ptr [esp + 0x18]                          // 0x0051cb75    8b7c2418
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x0051cb79    89542410
                         mov                eax, dword ptr [ecx]                                 // 0x0051cb7d    8b01
                         push               edi                                                  // 0x0051cb7f    57
                         call               dword ptr [eax + 0x2c]                               // 0x0051cb80    ff502c
                         {disp8} lea        eax, dword ptr [ebp + ebp * 0x4 + 0x00]              // 0x0051cb83    8d44ad00
                         lea                eax, dword ptr [eax + eax * 0x4]                     // 0x0051cb87    8d0480
                         lea                ecx, dword ptr [eax + eax * 0x4]                     // 0x0051cb8a    8d0c80
                         shl                ecx, 1                                               // 0x0051cb8d    d1e1
                         mov                eax, 0x80808081                                      // 0x0051cb8f    b881808080
                         imul               ecx                                                  // 0x0051cb94    f7e9
                         {disp32} mov       eax, dword ptr [data_bytes + 0x222eb8]               // 0x0051cb96    a1b88ebe00
                         add.s              edx, ecx                                             // 0x0051cb9b    03d1
                         sar                edx, 7                                               // 0x0051cb9d    c1fa07
                         mov.s              ecx, edx                                             // 0x0051cba0    8bca
                         shr                ecx, 0x1f                                            // 0x0051cba2    c1e91f
                         add.s              edx, ecx                                             // 0x0051cba5    03d1
                         sub.s              edx, eax                                             // 0x0051cba7    2bd0
                         xor.s              eax, eax                                             // 0x0051cba9    33c0
                         cmp.s              edx, ebx                                             // 0x0051cbab    3bd3
                         setle              al                                                   // 0x0051cbad    0f9ec0
                         dec                eax                                                  // 0x0051cbb0    48
                         and.s              eax, edx                                             // 0x0051cbb1    23c2
                         {disp32} mov       dword ptr [data_bytes + 0x504658], eax               // 0x0051cbb3    a358a6ec00
                         {disp32} mov       ecx, dword ptr [esi + 0x000000cc]                    // 0x0051cbb8    8b8ecc000000
                         mov                edx, dword ptr [ecx]                                 // 0x0051cbbe    8b11
                         call               dword ptr [edx + 0x100]                              // 0x0051cbc0    ff9200010000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0051cbc6    8b4c2414
                         {disp32} mov       dword ptr [data_bytes + 0x504658], ebx               // 0x0051cbca    891d58a6ec00
_jmp_addr_0x0051cbd0:    mov                ecx, dword ptr [ecx]                                 // 0x0051cbd0    8b09
                         cmp.s              ecx, ebx                                             // 0x0051cbd2    3bcb
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x0051cbd4    894c2414
                         {disp32} jne       _jmp_addr_0x0051ca54                                 // 0x0051cbd8    0f8576feffff
                         pop                ebp                                                  // 0x0051cbde    5d
_jmp_addr_0x0051cbdf:    pop                edi                                                  // 0x0051cbdf    5f
                         pop                esi                                                  // 0x0051cbe0    5e
                         pop                ebx                                                  // 0x0051cbe1    5b
                         add                esp, 0x2c                                            // 0x0051cbe2    83c42c
                         ret                                                                     // 0x0051cbe5    c3
                         nop                                                                     // 0x0051cbe6    90
                         nop                                                                     // 0x0051cbe7    90
                         nop                                                                     // 0x0051cbe8    90
                         nop                                                                     // 0x0051cbe9    90
                         nop                                                                     // 0x0051cbea    90
                         nop                                                                     // 0x0051cbeb    90
                         nop                                                                     // 0x0051cbec    90
                         nop                                                                     // 0x0051cbed    90
                         nop                                                                     // 0x0051cbee    90
                         nop                                                                     // 0x0051cbef    90
?Draw@Workshop@@UAEXXZ:
                         push               esi                                                  // 0x0051cbf0    56
                         mov.s              esi, ecx                                             // 0x0051cbf1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x0051cbf3    8b4640
                         {disp8} fld        dword ptr [eax + 0x40]                               // 0x0051cbf6    d94040
                         add                eax, 0x38                                            // 0x0051cbf9    83c038
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdc0]                    // 0x0051cbfc    d825c01dea00
                         push               0x0                                                  // 0x0051cc02    6a00
                         {disp8} fld        dword ptr [eax + 0x04]                               // 0x0051cc04    d94004
                         push               ecx                                                  // 0x0051cc07    51
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdbc]                    // 0x0051cc08    d825bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x504648]               // 0x0051cc0e    8b0d48a6ec00
                         fld                dword ptr [eax]                                      // 0x0051cc14    d900
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdb8]                    // 0x0051cc16    d825b81dea00
                         mov.s              edx, esi                                             // 0x0051cc1c    8bd6
                         fld                st(0)                                                // 0x0051cc1e    d9c0
                         fmul               st, st(1)                                            // 0x0051cc20    d8c9
                         fld                st(2)                                                // 0x0051cc22    d9c2
                         fmul               st, st(3)                                            // 0x0051cc24    d8cb
                         faddp              st(1), st                                            // 0x0051cc26    dec1
                         fld                st(3)                                                // 0x0051cc28    d9c3
                         fmul               st, st(4)                                            // 0x0051cc2a    d8cc
                         faddp              st(1), st                                            // 0x0051cc2c    dec1
                         fstp               dword ptr [esp]                                      // 0x0051cc2e    d91c24
                         push               0x0051ca10                                           // 0x0051cc31    6810ca5100
                         fstp               st(0)                                                // 0x0051cc36    ddd8
                         fstp               st(0)                                                // 0x0051cc38    ddd8
                         fstp               st(0)                                                // 0x0051cc3a    ddd8
                         call               _jmp_addr_0x0083f310                                 // 0x0051cc3c    e8cf263200
                         mov                eax, dword ptr [esi]                                 // 0x0051cc41    8b06
                         mov.s              ecx, esi                                             // 0x0051cc43    8bce
                         call               dword ptr [eax + 0xd4]                               // 0x0051cc45    ff90d4000000
                         test               eax, eax                                             // 0x0051cc4b    85c0
                         {disp8} je         _jmp_addr_0x0051cc6c                                 // 0x0051cc4d    741d
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                          // 0x0051cc4f    8b4e44
                         test               ecx, ecx                                             // 0x0051cc52    85c9
                         {disp8} je         _jmp_addr_0x0051cc5f                                 // 0x0051cc54    7409
                         call               _jmp_addr_0x00730360                                 // 0x0051cc56    e805372100
                         test               eax, eax                                             // 0x0051cc5b    85c0
                         {disp8} jne        _jmp_addr_0x0051cc6c                                 // 0x0051cc5d    750d
_jmp_addr_0x0051cc5f:    {disp32} mov       ecx, dword ptr [esi + 0x000000d4]                    // 0x0051cc5f    8b8ed4000000
                         push               0x0                                                  // 0x0051cc65    6a00
                         call               _jmp_addr_0x00719e90                                 // 0x0051cc67    e824d21f00
_jmp_addr_0x0051cc6c:    mov.s              ecx, esi                                             // 0x0051cc6c    8bce
                         call               ?Draw@Abode@@UAEXXZ                                  // 0x0051cc6e    e8fd92ffff
                         pop                esi                                                  // 0x0051cc73    5e
                         ret                                                                     // 0x0051cc74    c3
                         nop                                                                     // 0x0051cc75    90
                         nop                                                                     // 0x0051cc76    90
                         nop                                                                     // 0x0051cc77    90
                         nop                                                                     // 0x0051cc78    90
                         nop                                                                     // 0x0051cc79    90
                         nop                                                                     // 0x0051cc7a    90
                         nop                                                                     // 0x0051cc7b    90
                         nop                                                                     // 0x0051cc7c    90
                         nop                                                                     // 0x0051cc7d    90
                         nop                                                                     // 0x0051cc7e    90
                         nop                                                                     // 0x0051cc7f    90
_globl_ct_0x0051cc80:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                         // 0x0051cc80    8a0d34c9fa00
                         mov                al, 0x01                                             // 0x0051cc86    b001
                         test               al, cl                                               // 0x0051cc88    84c8
                         {disp8} jne        _jmp_addr_0x0051cc94                                 // 0x0051cc8a    7508
                         or.s               cl, al                                               // 0x0051cc8c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                         // 0x0051cc8e    880d34c9fa00
_jmp_addr_0x0051cc94:    {disp32} jmp       _jmp_addr_0x0051cca0                                 // 0x0051cc94    e907000000
                         nop                                                                     // 0x0051cc99    90
                         nop                                                                     // 0x0051cc9a    90
                         nop                                                                     // 0x0051cc9b    90
                         nop                                                                     // 0x0051cc9c    90
                         nop                                                                     // 0x0051cc9d    90
                         nop                                                                     // 0x0051cc9e    90
                         nop                                                                     // 0x0051cc9f    90
_jmp_addr_0x0051cca0:    push               0x00407870                                           // 0x0051cca0    6870784000
                         call               _atexit                                              // 0x0051cca5    e8e78a2a00
                         pop                ecx                                                  // 0x0051ccaa    59
                         ret                                                                     // 0x0051ccab    c3
                         nop                                                                     // 0x0051ccac    90
                         nop                                                                     // 0x0051ccad    90
                         nop                                                                     // 0x0051ccae    90
                         nop                                                                     // 0x0051ccaf    90
_globl_ct_0x0051ccb0:    {disp32} jmp       _jmp_addr_0x0051ccc0                                 // 0x0051ccb0    e90b000000
                         nop                                                                     // 0x0051ccb5    90
                         nop                                                                     // 0x0051ccb6    90
                         nop                                                                     // 0x0051ccb7    90
                         nop                                                                     // 0x0051ccb8    90
                         nop                                                                     // 0x0051ccb9    90
                         nop                                                                     // 0x0051ccba    90
                         nop                                                                     // 0x0051ccbb    90
                         nop                                                                     // 0x0051ccbc    90
                         nop                                                                     // 0x0051ccbd    90
                         nop                                                                     // 0x0051ccbe    90
                         nop                                                                     // 0x0051ccbf    90
_jmp_addr_0x0051ccc0:    {disp32} fld       dword ptr [rdata_bytes + 0x2f768]                    // 0x0051ccc0    d90568878d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f764]                    // 0x0051ccc6    d80d64878d00
                         {disp32} fstp      dword ptr [data_bytes + 0x30032c]                    // 0x0051cccc    d91d2c63cc00
                         ret                                                                     // 0x0051ccd2    c3
                         nop                                                                     // 0x0051ccd3    90
                         nop                                                                     // 0x0051ccd4    90
                         nop                                                                     // 0x0051ccd5    90
                         nop                                                                     // 0x0051ccd6    90
                         nop                                                                     // 0x0051ccd7    90
                         nop                                                                     // 0x0051ccd8    90
                         nop                                                                     // 0x0051ccd9    90
                         nop                                                                     // 0x0051ccda    90
                         nop                                                                     // 0x0051ccdb    90
                         nop                                                                     // 0x0051ccdc    90
                         nop                                                                     // 0x0051ccdd    90
                         nop                                                                     // 0x0051ccde    90
                         nop                                                                     // 0x0051ccdf    90
_globl_ct_0x0051cce0:    {disp32} jmp       _jmp_addr_0x0051ccf0                                 // 0x0051cce0    e90b000000
                         nop                                                                     // 0x0051cce5    90
                         nop                                                                     // 0x0051cce6    90
                         nop                                                                     // 0x0051cce7    90
                         nop                                                                     // 0x0051cce8    90
                         nop                                                                     // 0x0051cce9    90
                         nop                                                                     // 0x0051ccea    90
                         nop                                                                     // 0x0051cceb    90
                         nop                                                                     // 0x0051ccec    90
                         nop                                                                     // 0x0051cced    90
                         nop                                                                     // 0x0051ccee    90
                         nop                                                                     // 0x0051ccef    90
_jmp_addr_0x0051ccf0:    {disp32} mov       dword ptr [data_bytes + 0x300328], 0xffffffff        // 0x0051ccf0    c7052863cc00ffffffff
                         ret                                                                     // 0x0051ccfa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0051ccfb    e8794beeff
                         push               ebx                                                  // 0x0051cd00    53
                         push               esi                                                  // 0x0051cd01    56
                         push               0x6e                                                 // 0x0051cd02    6a6e
                         push               0x00be8f80                                           // 0x0051cd04    68808fbe00
                         push               0x000006f0                                           // 0x0051cd09    68f0060000
                         call               ___nw__FUl                                           // 0x0051cd0e    e87dea2b00
                         mov.s              esi, eax                                             // 0x0051cd13    8bf0
                         xor.s              ebx, ebx                                             // 0x0051cd15    33db
                         add                esp, 0x0c                                            // 0x0051cd17    83c40c
                         cmp.s              esi, ebx                                             // 0x0051cd1a    3bf3
                         {disp32} je        _jmp_addr_0x0051cdbc                                 // 0x0051cd1c    0f849a000000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0051cd22    8b4c2410
                         push               ebp                                                  // 0x0051cd26    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                          // 0x0051cd27    8b6c2418
                         push               edi                                                  // 0x0051cd2b    57
                         push               ebx                                                  // 0x0051cd2c    53
                         push               ebp                                                  // 0x0051cd2d    55
                         mov                dword ptr [esi], 0x008d8770                          // 0x0051cd2e    c70670878d00
                         {disp8} mov        dword ptr [esi + 0x10], ecx                          // 0x0051cd34    894e10
                         {disp8} mov        dword ptr [esi + 0x14], ebx                          // 0x0051cd37    895e14
                         {disp8} mov        dword ptr [esi + 0x20], ebx                          // 0x0051cd3a    895e20
                         {disp8} mov        dword ptr [esi + 0x24], ebx                          // 0x0051cd3d    895e24
                         {disp8} mov        dword ptr [esi + 0x28], ebx                          // 0x0051cd40    895e28
                         {disp32} mov       dword ptr [esi + 0x00000230], ebp                    // 0x0051cd43    89ae30020000
                         {disp32} mov       dword ptr [esi + 0x00000234], ebx                    // 0x0051cd49    899e34020000
                         {disp32} mov       dword ptr [esi + 0x00000238], ebx                    // 0x0051cd4f    899e38020000
                         {disp32} mov       dword ptr [esi + 0x0000023c], 0x00000001             // 0x0051cd55    c7863c02000001000000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx                    // 0x0051cd5f    899e40020000
                         call               @GetAnim__9MorphableFll@16                           // 0x0051cd65    e8e6c80f00
                         {disp32} mov       dword ptr [esi + 0x000006e4], eax                    // 0x0051cd6a    8986e4060000
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051cd70    8b4610
                         {disp32} mov       eax, dword ptr [eax + 0x000047b8]                    // 0x0051cd73    8b80b8470000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x0051cd79    8d0c40
                         push               ecx                                                  // 0x0051cd7c    51
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                             // 0x0051cd7d    e85e5f3200
                         {disp32} mov       dword ptr [esi + 0x000006e8], eax                    // 0x0051cd82    8986e8060000
                         add                esp, 0x04                                            // 0x0051cd88    83c404
                         xor.s              eax, eax                                             // 0x0051cd8b    33c0
                         xor.s              edx, edx                                             // 0x0051cd8d    33d2
                         cmp.s              ebp, ebx                                             // 0x0051cd8f    3beb
                         mov                ecx, 0x00000080                                      // 0x0051cd91    b980000000
                         {disp8} lea        edi, dword ptr [esi + 0x30]                          // 0x0051cd96    8d7e30
                         rep stosd                                                               // 0x0051cd99    f3ab
                         sete               dl                                                   // 0x0051cd9b    0f94c2
                         {disp32} lea       edi, dword ptr [esi + 0x00000244]                    // 0x0051cd9e    8dbe44020000
                         mov                ecx, 0x00000028                                      // 0x0051cda4    b928000000
                         rep stosd                                                               // 0x0051cda9    f3ab
                         pop                edi                                                  // 0x0051cdab    5f
                         {disp32} mov       dword ptr [esi + 0x000006ec], 0x00000001             // 0x0051cdac    c786ec06000001000000
                         {disp8} mov        dword ptr [esi + 0x2c], edx                          // 0x0051cdb6    89562c
                         pop                ebp                                                  // 0x0051cdb9    5d
                         {disp8} jmp        _jmp_addr_0x0051cdbe                                 // 0x0051cdba    eb02
_jmp_addr_0x0051cdbc:    xor.s              esi, esi                                             // 0x0051cdbc    33f6
_jmp_addr_0x0051cdbe:    {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x0051cdbe    8b44240c
                         push               esi                                                  // 0x0051cdc2    56
                         {disp8} mov        dword ptr [esi + 0x04], eax                          // 0x0051cdc3    894604
                         {disp8} mov        dword ptr [esi + 0x08], ebx                          // 0x0051cdc6    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000001                   // 0x0051cdc9    c7460c01000000
                         call               _jmp_addr_0x00842150                                 // 0x0051cdd0    e87b533200
                         add                esp, 0x04                                            // 0x0051cdd5    83c404
                         mov.s              eax, esi                                             // 0x0051cdd8    8bc6
                         pop                esi                                                  // 0x0051cdda    5e
                         pop                ebx                                                  // 0x0051cddb    5b
                         ret                                                                     // 0x0051cddc    c3
                         nop                                                                     // 0x0051cddd    90
                         nop                                                                     // 0x0051cdde    90
                         nop                                                                     // 0x0051cddf    90
?ProcessTurn@AnimEdit@@UAEHXZ:
                         sub                esp, 0x000000ac                                      // 0x0051cde0    81ecac000000
                         push               ebp                                                  // 0x0051cde6    55
                         push               esi                                                  // 0x0051cde7    56
                         mov.s              esi, ecx                                             // 0x0051cde8    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                          // 0x0051cdea    8b460c
                         xor.s              ebp, ebp                                             // 0x0051cded    33ed
                         cmp.s              eax, ebp                                             // 0x0051cdef    3bc5
                         {disp8} jne        _jmp_addr_0x0051ce4d                                 // 0x0051cdf1    755a
                         {disp32} mov       eax, dword ptr [esi + 0x00000230]                    // 0x0051cdf3    8b8630020000
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051cdf9    8b4e10
                         push               eax                                                  // 0x0051cdfc    50
                         call               _jmp_addr_0x00617860                                 // 0x0051cdfd    e85eaa0f00
                         cmp.s              esi, ebp                                             // 0x0051ce02    3bf5
                         {disp8} je         _jmp_addr_0x0051ce42                                 // 0x0051ce04    743c
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051ce06    8b4e10
                         mov                dword ptr [esi], 0x008d8770                          // 0x0051ce09    c70670878d00
                         call               _jmp_addr_0x00618b40                                 // 0x0051ce0f    e82cbd0f00
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051ce14    8b4e10
                         {disp32} mov       edx, dword ptr [ecx + 0x00000098]                    // 0x0051ce17    8b9198000000
                         push               edx                                                  // 0x0051ce1d    52
                         call               @SelectMesh__9MorphableFl@12                         // 0x0051ce1e    e8fda70f00
                         {disp32} mov       eax, dword ptr [esi + 0x000006e8]                    // 0x0051ce23    8b86e8060000
                         push               eax                                                  // 0x0051ce29    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                              // 0x0051ce2a    e8315f3200
                         add                esp, 0x04                                            // 0x0051ce2f    83c404
                         mov.s              ecx, esi                                             // 0x0051ce32    8bce
                         call               _jmp_addr_0x0051ed60                                 // 0x0051ce34    e8271f0000
                         push               esi                                                  // 0x0051ce39    56
                         call               ??3@YAXPAX@Z                                         // 0x0051ce3a    e859202900
                         add                esp, 0x04                                            // 0x0051ce3f    83c404
_jmp_addr_0x0051ce42:    pop                esi                                                  // 0x0051ce42    5e
                         xor.s              eax, eax                                             // 0x0051ce43    33c0
                         pop                ebp                                                  // 0x0051ce45    5d
                         add                esp, 0x000000ac                                      // 0x0051ce46    81c4ac000000
                         ret                                                                     // 0x0051ce4c    c3
_jmp_addr_0x0051ce4d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x33ba38]               // 0x0051ce4d    8b0d381ad000
                         {disp8} mov        edx, dword ptr [esi + 0x28]                          // 0x0051ce53    8b5628
                         add.s              edx, ecx                                             // 0x0051ce56    03d1
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                          // 0x0051ce58    8b4e24
                         inc                ecx                                                  // 0x0051ce5b    41
                         mov.s              eax, ecx                                             // 0x0051ce5c    8bc1
                         cmp                eax, 0x0a                                            // 0x0051ce5e    83f80a
                         {disp8} mov        dword ptr [esi + 0x28], edx                          // 0x0051ce61    895628
                         {disp8} mov        dword ptr [esi + 0x24], ecx                          // 0x0051ce64    894e24
                         {disp8} jne        _jmp_addr_0x0051ce7b                                 // 0x0051ce67    7512
                         {disp8} fild       dword ptr [esi + 0x28]                               // 0x0051ce69    db4628
                         {disp8} mov        dword ptr [esi + 0x24], ebp                          // 0x0051ce6c    896e24
                         {disp8} mov        dword ptr [esi + 0x28], ebp                          // 0x0051ce6f    896e28
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x1c8a4]                    // 0x0051ce72    d83da4588c00
                         {disp8} fstp       dword ptr [esi + 0x20]                               // 0x0051ce78    d95e20
_jmp_addr_0x0051ce7b:    {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051ce7b    8b8ee4060000
                         cmp                dword ptr [ecx + 0x04], ebp                          // 0x0051ce81    396904
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]                    // 0x0051ce84    8b8634020000
                         {disp8} je         _jmp_addr_0x0051ce95                                 // 0x0051ce8a    7409
                         imul               eax, dword ptr [ecx]                                 // 0x0051ce8c    0faf01
                         cdq                                                                     // 0x0051ce8f    99
                         idiv               dword ptr [ecx + 0x1c]                               // 0x0051ce90    f7791c
                         {disp8} jmp        _jmp_addr_0x0051ce9f                                 // 0x0051ce93    eb0a
_jmp_addr_0x0051ce95:    imul               eax, dword ptr [ecx]                                 // 0x0051ce95    0faf01
                         {disp8} mov        ecx, dword ptr [ecx + 0x1c]                          // 0x0051ce98    8b491c
                         cdq                                                                     // 0x0051ce9b    99
                         dec                ecx                                                  // 0x0051ce9c    49
                         idiv               ecx                                                  // 0x0051ce9d    f7f9
_jmp_addr_0x0051ce9f:    {disp8} mov        edx, dword ptr [esi + 0x10]                          // 0x0051ce9f    8b5610
                         push               edi                                                  // 0x0051cea2    57
                         mov.s              ecx, esi                                             // 0x0051cea3    8bce
                         {disp32} mov       dword ptr [edx + 0x000047d0], eax                    // 0x0051cea5    8982d0470000
                         call               _jmp_addr_0x00842100                                 // 0x0051ceab    e850523200
                         cmp                dword ptr [esi + 0x14], ebp                          // 0x0051ceb0    396e14
                         {disp8} je         _jmp_addr_0x0051cec8                                 // 0x0051ceb3    7413
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf304]                 // 0x0051ceb5    a00453e800
                         test               al, 0x02                                             // 0x0051ceba    a802
                         {disp8} je         _jmp_addr_0x0051ced4                                 // 0x0051cebc    7416
                         mov.s              ecx, esi                                             // 0x0051cebe    8bce
                         call               _jmp_addr_0x0051dd60                                 // 0x0051cec0    e89b0e0000
_jmp_addr_0x0051cec5:    {disp8} mov        dword ptr [esi + 0x14], ebp                          // 0x0051cec5    896e14
_jmp_addr_0x0051cec8:    pop                edi                                                  // 0x0051cec8    5f
                         mov.s              eax, esi                                             // 0x0051cec9    8bc6
                         pop                esi                                                  // 0x0051cecb    5e
                         pop                ebp                                                  // 0x0051cecc    5d
                         add                esp, 0x000000ac                                      // 0x0051cecd    81c4ac000000
                         ret                                                                     // 0x0051ced3    c3
_jmp_addr_0x0051ced4:    test               al, 0x01                                             // 0x0051ced4    a801
                         {disp8} je         _jmp_addr_0x0051cec5                                 // 0x0051ced6    74ed
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c4]               // 0x0051ced8    8b0dc452e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]               // 0x0051cede    a1c052e800
                         {disp32} mov       dword ptr [esp + 0x00000084], ecx                    // 0x0051cee3    898c2484000000
                         sub                eax, dword ptr [esi + 0x18]                          // 0x0051ceea    2b4618
                         {disp32} mov       dword ptr [esp + 0x00000080], eax                    // 0x0051ceed    89842480000000
                         {disp8} je         _jmp_addr_0x0051cec8                                 // 0x0051cef4    74d2
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051cef6    8b4e10
                         {disp32} fild      dword ptr [esp + 0x00000080]                         // 0x0051cef9    db842480000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000098]                    // 0x0051cf00    8b8198000000
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]              // 0x0051cf06    8d14c500000000
                         sub.s              edx, eax                                             // 0x0051cf0d    2bd0
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051cf0f    d95c2410
                         lea                eax, dword ptr [eax + edx * 0x4]                     // 0x0051cf13    8d0490
                         {disp32} mov       edx, dword ptr [esi + 0x00000230]                    // 0x0051cf16    8b9630020000
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x0051cf1c    8d0440
                         lea                eax, dword ptr [edx + eax * 0x8]                     // 0x0051cf1f    8d04c2
                         {disp32} mov       dword ptr [ecx + eax * 0x4 + 0x00000574], 0x00000002 // 0x0051cf22    c784817405000002000000
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051cf2d    8b4610
                         {disp32} mov       ecx, dword ptr [eax + 0x000047b8]                    // 0x0051cf30    8b88b8470000
                         xor.s              edi, edi                                             // 0x0051cf36    33ff
                         cmp.s              ecx, ebp                                             // 0x0051cf38    3bcd
                         {disp8} jle        _jmp_addr_0x0051cec8                                 // 0x0051cf3a    7e8c
                         {disp8} lea        ecx, dword ptr [esi + 0x30]                          // 0x0051cf3c    8d4e30
                         push               ebx                                                  // 0x0051cf3f    53
                         xor.s              ebx, ebx                                             // 0x0051cf40    33db
                         {disp32} mov       dword ptr [esp + 0x00000084], ecx                    // 0x0051cf42    898c2484000000
_jmp_addr_0x0051cf49:    {disp32} mov       edx, dword ptr [esp + 0x00000084]                    // 0x0051cf49    8b942484000000
                         cmp                dword ptr [edx], ebp                                 // 0x0051cf50    392a
                         {disp32} je        _jmp_addr_0x0051d432                                 // 0x0051cf52    0f84da040000
                         {disp32} mov       eax, dword ptr [eax + 0x000047f4]                    // 0x0051cf58    8b80f4470000
                         {disp8} fld        dword ptr [eax + ebx * 0x1 + 0x24]                   // 0x0051cf5e    d9441824
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                          // 0x0051cf62    c644241300
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051cf67    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051cf6d    dfe0
                         test               ah, 0x41                                             // 0x0051cf6f    f6c441
                         {disp8} jne        _jmp_addr_0x0051cf79                                 // 0x0051cf72    7505
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                          // 0x0051cf74    c644241301
_jmp_addr_0x0051cf79:    {disp32} mov       eax, dword ptr [esi + 0x00000240]                    // 0x0051cf79    8b8640020000
                         cmp.s              eax, ebp                                             // 0x0051cf7f    3bc5
                         {disp32} jne       _jmp_addr_0x0051d348                                 // 0x0051cf81    0f85c1030000
                         push               ebp                                                  // 0x0051cf87    55
                         push               edi                                                  // 0x0051cf88    57
                         mov.s              ecx, esi                                             // 0x0051cf89    8bce
                         call               _jmp_addr_0x0051ea10                                 // 0x0051cf8b    e8801a0000
                         {disp32} mov       edx, dword ptr [esi + 0x00000244]                    // 0x0051cf90    8b9644020000
                         {disp8} mov        edx, dword ptr [edx + 0x34]                          // 0x0051cf96    8b5234
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x0051cf99    8d0c40
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]                    // 0x0051cf9c    8b8634020000
                         mov                eax, dword ptr [edx + eax * 0x4]                     // 0x0051cfa2    8b0482
                         mov                edx, dword ptr [eax]                                 // 0x0051cfa5    8b10
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051cfa7    8b4610
                         {disp32} mov       eax, dword ptr [eax + 0x000047f4]                    // 0x0051cfaa    8b80f4470000
                         lea                ecx, dword ptr [edx + ecx * 0x4]                     // 0x0051cfb0    8d0c8a
                         mov                edx, dword ptr [eax + ebx * 0x1]                     // 0x0051cfb3    8b1418
                         add.s              eax, ebx                                             // 0x0051cfb6    03c3
                         {disp8} mov        dword ptr [esp + 0x54], edx                          // 0x0051cfb8    89542454
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x0051cfbc    8b5004
                         {disp8} mov        dword ptr [esp + 0x58], edx                          // 0x0051cfbf    89542458
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0051cfc3    8b5008
                         {disp8} mov        dword ptr [esp + 0x5c], edx                          // 0x0051cfc6    8954245c
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                          // 0x0051cfca    8b500c
                         {disp8} mov        dword ptr [esp + 0x60], edx                          // 0x0051cfcd    89542460
                         {disp8} mov        edx, dword ptr [eax + 0x10]                          // 0x0051cfd1    8b5010
                         {disp8} mov        dword ptr [esp + 0x64], edx                          // 0x0051cfd4    89542464
                         {disp8} mov        edx, dword ptr [eax + 0x14]                          // 0x0051cfd8    8b5014
                         {disp8} mov        dword ptr [esp + 0x68], edx                          // 0x0051cfdb    89542468
                         {disp8} mov        edx, dword ptr [eax + 0x18]                          // 0x0051cfdf    8b5018
                         {disp8} mov        dword ptr [esp + 0x6c], edx                          // 0x0051cfe2    8954246c
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                          // 0x0051cfe6    8b501c
                         {disp8} mov        dword ptr [esp + 0x70], edx                          // 0x0051cfe9    89542470
                         {disp8} mov        eax, dword ptr [eax + 0x20]                          // 0x0051cfed    8b4020
                         {disp8} mov        dword ptr [esp + 0x74], eax                          // 0x0051cff0    89442474
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                          // 0x0051cff4    8b5108
                         mov                eax, dword ptr [ecx]                                 // 0x0051cff7    8b01
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                          // 0x0051cff9    8b4904
                         push               edx                                                  // 0x0051cffc    52
                         push               eax                                                  // 0x0051cffd    50
                         push               ecx                                                  // 0x0051cffe    51
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x0051cfff    8d4c2424
                         call               _jmp_addr_0x007fac10                                 // 0x0051d003    e808dc2d00
                         {disp8} fld        dword ptr [esp + 0x54]                               // 0x0051d008    d9442454
                         {disp8} fld        dword ptr [esp + 0x58]                               // 0x0051d00c    d9442458
                         {disp8} mov        edx, dword ptr [esp + 0x60]                          // 0x0051d010    8b542460
                         {disp8} fld        dword ptr [esp + 0x5c]                               // 0x0051d014    d944245c
                         {disp8} mov        eax, dword ptr [esp + 0x64]                          // 0x0051d018    8b442464
                         {disp8} fmul       dword ptr [esp + 0x30]                               // 0x0051d01c    d84c2430
                         {disp8} mov        ecx, dword ptr [esp + 0x6c]                          // 0x0051d020    8b4c246c
                         {disp8} fld        dword ptr [esp + 0x58]                               // 0x0051d024    d9442458
                         {disp32} mov       dword ptr [esp + 0x00000098], edx                    // 0x0051d028    89942498000000
                         {disp8} fmul       dword ptr [esp + 0x24]                               // 0x0051d02f    d84c2424
                         {disp8} mov        edx, dword ptr [esp + 0x70]                          // 0x0051d033    8b542470
                         {disp32} mov       dword ptr [esp + 0x0000009c], eax                    // 0x0051d037    8984249c000000
                         {disp32} mov       dword ptr [esp + 0x000000a4], ecx                    // 0x0051d03e    898c24a4000000
                         faddp              st(1), st                                            // 0x0051d045    dec1
                         {disp32} mov       dword ptr [esp + 0x000000a8], edx                    // 0x0051d047    899424a8000000
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d04e    d9442418
                         {disp8} fmul       dword ptr [esp + 0x54]                               // 0x0051d052    d84c2454
                         faddp              st(1), st                                            // 0x0051d056    dec1
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x0051d058    d95c2454
                         {disp8} fld        dword ptr [esp + 0x5c]                               // 0x0051d05c    d944245c
                         {disp8} fmul       dword ptr [esp + 0x34]                               // 0x0051d060    d84c2434
                         {disp8} fld        dword ptr [esp + 0x58]                               // 0x0051d064    d9442458
                         {disp8} fmul       dword ptr [esp + 0x28]                               // 0x0051d068    d84c2428
                         faddp              st(1), st                                            // 0x0051d06c    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051d06e    d944241c
                         fmul               st, st(3)                                            // 0x0051d072    d8cb
                         faddp              st(1), st                                            // 0x0051d074    dec1
                         {disp8} fstp       dword ptr [esp + 0x58]                               // 0x0051d076    d95c2458
                         {disp8} fld        dword ptr [esp + 0x5c]                               // 0x0051d07a    d944245c
                         {disp8} fmul       dword ptr [esp + 0x38]                               // 0x0051d07e    d84c2438
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0051d082    d944242c
                         fmul               st, st(2)                                            // 0x0051d086    d8ca
                         faddp              st(1), st                                            // 0x0051d088    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051d08a    d9442420
                         fmul               st, st(3)                                            // 0x0051d08e    d8cb
                         faddp              st(1), st                                            // 0x0051d090    dec1
                         {disp8} fstp       dword ptr [esp + 0x5c]                               // 0x0051d092    d95c245c
                         fstp               st(0)                                                // 0x0051d096    ddd8
                         fstp               st(0)                                                // 0x0051d098    ddd8
                         {disp8} fld        dword ptr [esp + 0x60]                               // 0x0051d09a    d9442460
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0051d09e    d84c2418
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x0051d0a2    d9442468
                         {disp8} mov        eax, dword ptr [esi + 0x14]                          // 0x0051d0a6    8b4614
                         dec                eax                                                  // 0x0051d0a9    48
                         {disp8} fmul       dword ptr [esp + 0x30]                               // 0x0051d0aa    d84c2430
                         faddp              st(1), st                                            // 0x0051d0ae    dec1
                         {disp8} fld        dword ptr [esp + 0x64]                               // 0x0051d0b0    d9442464
                         {disp8} fmul       dword ptr [esp + 0x24]                               // 0x0051d0b4    d84c2424
                         faddp              st(1), st                                            // 0x0051d0b8    dec1
                         {disp8} fstp       dword ptr [esp + 0x60]                               // 0x0051d0ba    d95c2460
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051d0be    d944241c
                         {disp32} fmul      dword ptr [esp + 0x00000098]                         // 0x0051d0c2    d88c2498000000
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x0051d0c9    d9442468
                         {disp8} fmul       dword ptr [esp + 0x34]                               // 0x0051d0cd    d84c2434
                         faddp              st(1), st                                            // 0x0051d0d1    dec1
                         {disp8} fld        dword ptr [esp + 0x64]                               // 0x0051d0d3    d9442464
                         {disp8} fmul       dword ptr [esp + 0x28]                               // 0x0051d0d7    d84c2428
                         faddp              st(1), st                                            // 0x0051d0db    dec1
                         {disp8} fstp       dword ptr [esp + 0x64]                               // 0x0051d0dd    d95c2464
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0051d0e1    d944242c
                         {disp32} fmul      dword ptr [esp + 0x0000009c]                         // 0x0051d0e5    d88c249c000000
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051d0ec    d9442420
                         {disp32} fmul      dword ptr [esp + 0x00000098]                         // 0x0051d0f0    d88c2498000000
                         faddp              st(1), st                                            // 0x0051d0f7    dec1
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x0051d0f9    d9442468
                         {disp8} fmul       dword ptr [esp + 0x38]                               // 0x0051d0fd    d84c2438
                         faddp              st(1), st                                            // 0x0051d101    dec1
                         {disp8} fstp       dword ptr [esp + 0x68]                               // 0x0051d103    d95c2468
                         {disp8} fld        dword ptr [esp + 0x6c]                               // 0x0051d107    d944246c
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0051d10b    d84c2418
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x0051d10f    d9442474
                         {disp8} fmul       dword ptr [esp + 0x30]                               // 0x0051d113    d84c2430
                         faddp              st(1), st                                            // 0x0051d117    dec1
                         {disp8} fld        dword ptr [esp + 0x70]                               // 0x0051d119    d9442470
                         {disp8} fmul       dword ptr [esp + 0x24]                               // 0x0051d11d    d84c2424
                         faddp              st(1), st                                            // 0x0051d121    dec1
                         {disp8} fstp       dword ptr [esp + 0x6c]                               // 0x0051d123    d95c246c
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0051d127    d944241c
                         {disp32} fmul      dword ptr [esp + 0x000000a4]                         // 0x0051d12b    d88c24a4000000
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x0051d132    d9442474
                         {disp8} fmul       dword ptr [esp + 0x34]                               // 0x0051d136    d84c2434
                         faddp              st(1), st                                            // 0x0051d13a    dec1
                         {disp8} fld        dword ptr [esp + 0x70]                               // 0x0051d13c    d9442470
                         {disp8} fmul       dword ptr [esp + 0x28]                               // 0x0051d140    d84c2428
                         faddp              st(1), st                                            // 0x0051d144    dec1
                         {disp8} fstp       dword ptr [esp + 0x70]                               // 0x0051d146    d95c2470
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0051d14a    d944242c
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                         // 0x0051d14e    d88c24a8000000
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x0051d155    d9442420
                         {disp32} fmul      dword ptr [esp + 0x000000a4]                         // 0x0051d159    d88c24a4000000
                         faddp              st(1), st                                            // 0x0051d160    dec1
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x0051d162    d9442474
                         {disp8} fmul       dword ptr [esp + 0x38]                               // 0x0051d166    d84c2438
                         faddp              st(1), st                                            // 0x0051d16a    dec1
                         {disp8} fstp       dword ptr [esp + 0x74]                               // 0x0051d16c    d95c2474
                         {disp32} je        _jmp_addr_0x0051d265                                 // 0x0051d170    0f84ef000000
                         dec                eax                                                  // 0x0051d176    48
                         {disp8} je         _jmp_addr_0x0051d1e7                                 // 0x0051d177    746e
                         dec                eax                                                  // 0x0051d179    48
                         {disp32} jne       _jmp_addr_0x0051d2e7                                 // 0x0051d17a    0f8567010000
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d180    d9442414
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x0051d184    c744244400000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f78c]                    // 0x0051d18c    d80d8c878d00
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000                   // 0x0051d192    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000                   // 0x0051d19a    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000                   // 0x0051d1a2    c744243400000000
                         fld                st(0)                                                // 0x0051d1aa    d9c0
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000                   // 0x0051d1ac    c744243000000000
                         fcos                                                                    // 0x0051d1b4    d9ff
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000                   // 0x0051d1b6    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x0051d1be    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x3f800000                   // 0x0051d1c6    c74424380000803f
                         {disp8} fst        dword ptr [esp + 0x28]                               // 0x0051d1ce    d9542428
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d1d2    d95c2418
                         fsin                                                                    // 0x0051d1d6    d9fe
                         {disp8} fst        dword ptr [esp + 0x24]                               // 0x0051d1d8    d9542424
                         fchs                                                                    // 0x0051d1dc    d9e0
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0051d1de    d95c241c
                         {disp32} jmp       _jmp_addr_0x0051d2e7                                 // 0x0051d1e2    e900010000
_jmp_addr_0x0051d1e7:    {disp8} mov        al, byte ptr [esp + 0x13]                            // 0x0051d1e7    8a442413
                         test               al, al                                               // 0x0051d1eb    84c0
                         {disp8} je         _jmp_addr_0x0051d1f9                                 // 0x0051d1ed    740a
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d1ef    d9442414
                         fchs                                                                    // 0x0051d1f3    d9e0
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d1f5    d95c2414
_jmp_addr_0x0051d1f9:    test               al, al                                               // 0x0051d1f9    84c0
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d1fb    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f78c]                    // 0x0051d1ff    d80d8c878d00
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x0051d205    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000                   // 0x0051d20d    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000                   // 0x0051d215    c744243c00000000
                         fld                st(0)                                                // 0x0051d21d    d9c0
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000                   // 0x0051d21f    c744243400000000
                         fcos                                                                    // 0x0051d227    d9ff
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000                   // 0x0051d229    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000                   // 0x0051d231    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000                   // 0x0051d239    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x3f800000                   // 0x0051d241    c74424280000803f
                         {disp8} fst        dword ptr [esp + 0x38]                               // 0x0051d249    d9542438
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d24d    d95c2418
                         fsin                                                                    // 0x0051d251    d9fe
                         {disp8} fst        dword ptr [esp + 0x20]                               // 0x0051d253    d9542420
                         fchs                                                                    // 0x0051d257    d9e0
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x0051d259    d95c2430
                         {disp32} je        _jmp_addr_0x0051d2e7                                 // 0x0051d25d    0f8484000000
                         {disp8} jmp        _jmp_addr_0x0051d2dd                                 // 0x0051d263    eb78
_jmp_addr_0x0051d265:    {disp8} mov        al, byte ptr [esp + 0x13]                            // 0x0051d265    8a442413
                         test               al, al                                               // 0x0051d269    84c0
                         {disp8} je         _jmp_addr_0x0051d277                                 // 0x0051d26b    740a
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d26d    d9442414
                         fchs                                                                    // 0x0051d271    d9e0
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d273    d95c2414
_jmp_addr_0x0051d277:    test               al, al                                               // 0x0051d277    84c0
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d279    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f78c]                    // 0x0051d27d    d80d8c878d00
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x0051d283    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000                   // 0x0051d28b    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000                   // 0x0051d293    c744243c00000000
                         fld                st(0)                                                // 0x0051d29b    d9c0
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000                   // 0x0051d29d    c744243000000000
                         fcos                                                                    // 0x0051d2a5    d9ff
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000                   // 0x0051d2a7    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x0051d2af    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000                   // 0x0051d2b7    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x3f800000                   // 0x0051d2bf    c74424180000803f
                         {disp8} fst        dword ptr [esp + 0x38]                               // 0x0051d2c7    d9542438
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0051d2cb    d95c2428
                         fsin                                                                    // 0x0051d2cf    d9fe
                         {disp8} fst        dword ptr [esp + 0x34]                               // 0x0051d2d1    d9542434
                         fchs                                                                    // 0x0051d2d5    d9e0
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051d2d7    d95c242c
                         {disp8} je         _jmp_addr_0x0051d2e7                                 // 0x0051d2db    740a
_jmp_addr_0x0051d2dd:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d2dd    d9442414
                         fchs                                                                    // 0x0051d2e1    d9e0
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d2e3    d95c2414
_jmp_addr_0x0051d2e7:    {disp8} lea        edx, dword ptr [esp + 0x54]                          // 0x0051d2e7    8d542454
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x0051d2eb    8d4c2418
                         call               _jmp_addr_0x007faff0                                 // 0x0051d2ef    e8fcdc2d00
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051d2f4    8b4610
                         {disp32} mov       edx, dword ptr [eax + 0x000047f8]                    // 0x0051d2f7    8b90f8470000
                         add.s              edx, ebx                                             // 0x0051d2fd    03d3
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x0051d2ff    8d4c2418
                         call               _jmp_addr_0x007fae60                                 // 0x0051d303    e858db2d00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000240]                    // 0x0051d308    8b8e40020000
                         push               ecx                                                  // 0x0051d30e    51
                         push               edi                                                  // 0x0051d30f    57
                         mov.s              ecx, esi                                             // 0x0051d310    8bce
                         call               _jmp_addr_0x0051ea10                                 // 0x0051d312    e8f9160000
                         {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051d317    8b8ee4060000
                         {disp8} mov        ecx, dword ptr [ecx + 0x34]                          // 0x0051d31d    8b4934
                         lea                edx, dword ptr [eax + eax * 0x2]                     // 0x0051d320    8d1440
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]                    // 0x0051d323    8b8634020000
                         mov                eax, dword ptr [ecx + eax * 0x4]                     // 0x0051d329    8b0481
                         mov                ecx, dword ptr [eax]                                 // 0x0051d32c    8b08
                         lea                eax, dword ptr [ecx + edx * 0x4]                     // 0x0051d32e    8d0491
                         {disp8} lea        edx, dword ptr [eax + 0x08]                          // 0x0051d331    8d5008
                         push               edx                                                  // 0x0051d334    52
                         push               eax                                                  // 0x0051d335    50
                         add                eax, 0x04                                            // 0x0051d336    83c004
                         push               eax                                                  // 0x0051d339    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x0051d33a    8d4c2424
                         call               _jmp_addr_0x007fab30                                 // 0x0051d33e    e8edd72d00
                         {disp32} jmp       _jmp_addr_0x0051d432                                 // 0x0051d343    e9ea000000
_jmp_addr_0x0051d348:    push               eax                                                  // 0x0051d348    50
                         push               edi                                                  // 0x0051d349    57
                         mov.s              ecx, esi                                             // 0x0051d34a    8bce
                         call               _jmp_addr_0x0051ea10                                 // 0x0051d34c    e8bf160000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000244]                    // 0x0051d351    8b8e44020000
                         {disp8} mov        ecx, dword ptr [ecx + 0x34]                          // 0x0051d357    8b4934
                         {disp32} mov       edx, dword ptr [esi + 0x00000234]                    // 0x0051d35a    8b9634020000
                         mov                edx, dword ptr [ecx + edx * 0x4]                     // 0x0051d360    8b1491
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                          // 0x0051d363    8b4a04
                         {disp8} mov        edx, dword ptr [esi + 0x10]                          // 0x0051d366    8b5610
                         {disp32} fld       dword ptr [edx + 0x0000008c]                         // 0x0051d369    d9828c000000
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x0051d36f    8d0440
                         lea                ebp, dword ptr [ecx + eax * 0x4]                     // 0x0051d372    8d2c81
                         {disp8} mov        eax, dword ptr [esi + 0x14]                          // 0x0051d375    8b4614
                         dec                eax                                                  // 0x0051d378    48
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0051d379    d84c2414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x261b8]                    // 0x0051d37d    d80db8f18c00
                         {disp8} je         _jmp_addr_0x0051d3c1                                 // 0x0051d383    743c
                         dec                eax                                                  // 0x0051d385    48
                         {disp8} je         _jmp_addr_0x0051d3ab                                 // 0x0051d386    7423
                         dec                eax                                                  // 0x0051d388    48
                         {disp8} jne        _jmp_addr_0x0051d3d7                                 // 0x0051d389    754c
                         {disp8} mov        al, byte ptr [esp + 0x13]                            // 0x0051d38b    8a442413
                         test               al, al                                               // 0x0051d38f    84c0
                         {disp8} je         _jmp_addr_0x0051d395                                 // 0x0051d391    7402
                         fchs                                                                    // 0x0051d393    d9e0
_jmp_addr_0x0051d395:    {disp8} fstp       dword ptr [esp + 0x50]                               // 0x0051d395    d95c2450
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000                   // 0x0051d399    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000                   // 0x0051d3a1    c744244c00000000
                         {disp8} jmp        _jmp_addr_0x0051d3d9                                 // 0x0051d3a9    eb2e
_jmp_addr_0x0051d3ab:    {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0051d3ab    d95c244c
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000                   // 0x0051d3af    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000                   // 0x0051d3b7    c744245000000000
                         {disp8} jmp        _jmp_addr_0x0051d3d9                                 // 0x0051d3bf    eb18
_jmp_addr_0x0051d3c1:    {disp8} fstp       dword ptr [esp + 0x48]                               // 0x0051d3c1    d95c2448
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000                   // 0x0051d3c5    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000                   // 0x0051d3cd    c744245000000000
                         {disp8} jmp        _jmp_addr_0x0051d3d9                                 // 0x0051d3d5    eb02
_jmp_addr_0x0051d3d7:    fstp               st(0)                                                // 0x0051d3d7    ddd8
_jmp_addr_0x0051d3d9:    {disp32} mov       eax, dword ptr [esi + 0x00000240]                    // 0x0051d3d9    8b8640020000
                         push               eax                                                  // 0x0051d3df    50
                         push               edi                                                  // 0x0051d3e0    57
                         mov.s              ecx, esi                                             // 0x0051d3e1    8bce
                         call               _jmp_addr_0x0051ea10                                 // 0x0051d3e3    e828160000
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x0051d3e8    d9442448
                         {disp32} mov       edx, dword ptr [esi + 0x00000234]                    // 0x0051d3ec    8b9634020000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x0051d3f2    8d0c40
                         {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051d3f5    8b86e4060000
                         {disp8} mov        eax, dword ptr [eax + 0x34]                          // 0x0051d3fb    8b4034
                         mov                edx, dword ptr [eax + edx * 0x4]                     // 0x0051d3fe    8b1490
                         {disp8} mov        eax, dword ptr [edx + 0x04]                          // 0x0051d401    8b4204
                         lea                eax, dword ptr [eax + ecx * 0x4]                     // 0x0051d404    8d0488
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x0051d407    8b4d00
                         mov                dword ptr [eax], ecx                                 // 0x0051d40a    8908
                         fadd               dword ptr [eax]                                      // 0x0051d40c    d800
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                          // 0x0051d40e    8b5504
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x0051d411    895004
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                          // 0x0051d414    8b4d08
                         fstp               dword ptr [eax]                                      // 0x0051d417    d918
                         {disp8} fld        dword ptr [esp + 0x4c]                               // 0x0051d419    d944244c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x0051d41d    894808
                         {disp8} fadd       dword ptr [eax + 0x04]                               // 0x0051d420    d84004
                         xor.s              ebp, ebp                                             // 0x0051d423    33ed
                         {disp8} fstp       dword ptr [eax + 0x04]                               // 0x0051d425    d95804
                         {disp8} fld        dword ptr [esp + 0x50]                               // 0x0051d428    d9442450
                         {disp8} fadd       dword ptr [eax + 0x08]                               // 0x0051d42c    d84008
                         {disp8} fstp       dword ptr [eax + 0x08]                               // 0x0051d42f    d95808
_jmp_addr_0x0051d432:    add                dword ptr [esp + 0x00000084], 0x04                   // 0x0051d432    8384248400000004
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051d43a    8b4610
                         {disp32} mov       ecx, dword ptr [eax + 0x000047b8]                    // 0x0051d43d    8b88b8470000
                         inc                edi                                                  // 0x0051d443    47
                         add                ebx, 0x30                                            // 0x0051d444    83c330
                         cmp.s              edi, ecx                                             // 0x0051d447    3bf9
                         {disp32} jl        _jmp_addr_0x0051cf49                                 // 0x0051d449    0f8cfafaffff
                         pop                ebx                                                  // 0x0051d44f    5b
                         pop                edi                                                  // 0x0051d450    5f
                         mov.s              eax, esi                                             // 0x0051d451    8bc6
                         pop                esi                                                  // 0x0051d453    5e
                         pop                ebp                                                  // 0x0051d454    5d
                         add                esp, 0x000000ac                                      // 0x0051d455    81c4ac000000
                         ret                                                                     // 0x0051d45b    c3
                         nop                                                                     // 0x0051d45c    90
                         nop                                                                     // 0x0051d45d    90
                         nop                                                                     // 0x0051d45e    90
                         nop                                                                     // 0x0051d45f    90
?Display@AnimEdit@@UAEXXZ:
                         sub                esp, 0x00000090                                      // 0x0051d460    81ec90000000
                         push               ebx                                                  // 0x0051d466    53
                         push               ebp                                                  // 0x0051d467    55
                         push               esi                                                  // 0x0051d468    56
                         push               edi                                                  // 0x0051d469    57
                         xor.s              ebx, ebx                                             // 0x0051d46a    33db
                         push               ebx                                                  // 0x0051d46c    53
                         push               0x009d1078                                           // 0x0051d46d    6878109d00
                         mov.s              esi, ecx                                             // 0x0051d472    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051d474    8b4610
                         {disp32} mov       ecx, dword ptr [eax + 0x000047f0]                    // 0x0051d477    8b88f0470000
                         push               0x009cecb0                                           // 0x0051d47d    68b0ec9c00
                         push               ebx                                                  // 0x0051d482    53
                         push               eax                                                  // 0x0051d483    50
                         {disp8} mov        dword ptr [esp + 0x68], ecx                          // 0x0051d484    894c2468
                         call               ___RTDynamicCast                                     // 0x0051d488    e88c852a00
                         mov.s              ebp, eax                                             // 0x0051d48d    8be8
                         add                esp, 0x14                                            // 0x0051d48f    83c414
                         mov.s              ecx, esi                                             // 0x0051d492    8bce
                         {disp8} mov        dword ptr [esp + 0x70], ebp                          // 0x0051d494    896c2470
                         {disp8} mov        dword ptr [esp + 0x38], ebx                          // 0x0051d498    895c2438
                         call               _jmp_addr_0x00842120                                 // 0x0051d49c    e87f4c3200
                         cmp                dword ptr [esi + 0x08], ebx                          // 0x0051d4a1    395e08
                         {disp32} jne       _jmp_addr_0x0051dccb                                 // 0x0051d4a4    0f8521080000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e40        // 0x0051d4aa    c705a09eea00409eea00
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051d4b4    8b4610
                         {disp8} mov        edx, dword ptr [eax + 0x78]                          // 0x0051d4b7    8b5078
                         add                eax, 0x78                                            // 0x0051d4ba    83c078
                         cmp.s              ebp, ebx                                             // 0x0051d4bd    3beb
                         {disp8} mov        dword ptr [esp + 0x3c], edx                          // 0x0051d4bf    8954243c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x0051d4c3    8b4804
                         {disp8} mov        dword ptr [esp + 0x40], ecx                          // 0x0051d4c6    894c2440
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0051d4ca    8b5008
                         {disp8} mov        dword ptr [esp + 0x44], edx                          // 0x0051d4cd    89542444
                         {disp8} jne        _jmp_addr_0x0051d4e0                                 // 0x0051d4d1    750d
                         call               _jmp_addr_0x0046c040                                 // 0x0051d4d3    e868ebf4ff
                         {disp8} fadd       dword ptr [esp + 0x40]                               // 0x0051d4d8    d8442440
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x0051d4dc    d95c2440
_jmp_addr_0x0051d4e0:    mov                edi, 0x00000001                                      // 0x0051d4e0    bf01000000
                         push               edi                                                  // 0x0051d4e5    57
                         {disp8} lea        eax, dword ptr [esp + 0x40]                          // 0x0051d4e6    8d442440
                         push               eax                                                  // 0x0051d4ea    50
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051d4eb    8d542424
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                          // 0x0051d4ef    8d4c247c
                         call               _jmp_addr_0x0081b450                                 // 0x0051d4f3    e858df2f00
                         cmp                dword ptr [esp + 0x1c], ebx                          // 0x0051d4f8    395c241c
                         {disp8} jne        _jmp_addr_0x0051d527                                 // 0x0051d4fc    7529
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x0051d4fe    d9442478
                         push               ebx                                                  // 0x0051d502    53
                         push               0x00ef64e8                                           // 0x0051d503    68e864ef00
                         push               ebx                                                  // 0x0051d508    53
                         push               ebx                                                  // 0x0051d509    53
                         push               ebx                                                  // 0x0051d50a    53
                         call               _jmp_addr_0x007a1400                                 // 0x0051d50b    e8f03e2800
                         {disp32} fld       dword ptr [esp + 0x00000088]                         // 0x0051d510    d9842488000000
                         push               eax                                                  // 0x0051d517    50
                         call               _jmp_addr_0x007a1400                                 // 0x0051d518    e8e33e2800
                         push               eax                                                  // 0x0051d51d    50
                         push               esi                                                  // 0x0051d51e    56
                         call               _jmp_addr_0x00841b00                                 // 0x0051d51f    e8dc453200
                         add                esp, 0x20                                            // 0x0051d524    83c420
_jmp_addr_0x0051d527:    {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051d527    8b4e10
                         cmp                dword ptr [ecx + 0x000047b8], ebx                    // 0x0051d52a    3999b8470000
                         {disp32} jle       _jmp_addr_0x0051d914                                 // 0x0051d530    0f8ede030000
                         {disp8} mov        edx, dword ptr [esp + 0x54]                          // 0x0051d536    8b542454
                         {disp8} lea        ebp, dword ptr [esi + 0x30]                          // 0x0051d53a    8d6e30
                         {disp8} lea        edi, dword ptr [edx + 0x08]                          // 0x0051d53d    8d7a08
_jmp_addr_0x0051d540:    {disp8} mov        eax, dword ptr [ebp + 0x00]                          // 0x0051d540    8b4500
                         add                dword ptr [esp + 0x38], eax                          // 0x0051d543    01442438
                         {disp32} mov       ecx, dword ptr [esi + 0x00000240]                    // 0x0051d547    8b8e40020000
                         push               ecx                                                  // 0x0051d54d    51
                         push               ebx                                                  // 0x0051d54e    53
                         mov.s              ecx, esi                                             // 0x0051d54f    8bce
                         call               _jmp_addr_0x0051ea10                                 // 0x0051d551    e8ba140000
                         cmp                eax, -0x01                                           // 0x0051d556    83f8ff
                         {disp32} je        _jmp_addr_0x0051d8f3                                 // 0x0051d559    0f8494030000
                         cmp                dword ptr [ebp + 0x00], 0x00                         // 0x0051d55f    837d0000
                         {disp32} je        _jmp_addr_0x0051d888                                 // 0x0051d563    0f841f030000
                         {disp32} mov       eax, dword ptr [esi + 0x0000023c]                    // 0x0051d569    8b863c020000
                         test               eax, eax                                             // 0x0051d56f    85c0
                         {disp32} je        _jmp_addr_0x0051d888                                 // 0x0051d571    0f8411030000
                         {disp8} fld        dword ptr [edi + 0x1c]                               // 0x0051d577    d9471c
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x0051d57a    d95c242c
                         {disp8} fld        dword ptr [edi + 0x20]                               // 0x0051d57e    d94720
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x0051d581    d95c2430
                         {disp8} fld        dword ptr [edi + 0x24]                               // 0x0051d585    d94724
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x0051d588    d95c2434
                         {disp8} fld        dword ptr [edi + -0x08]                              // 0x0051d58c    d947f8
                         {disp8} fld        dword ptr [edi + -0x04]                              // 0x0051d58f    d947fc
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d592    d95c2414
                         fld                dword ptr [edi]                                      // 0x0051d596    d907
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d598    d95c2418
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x0051d59c    d81598a38a00
                         fnstsw             ax                                                   // 0x0051d5a2    dfe0
                         test               ah, 0x40                                             // 0x0051d5a4    f6c440
                         {disp8} je         _jmp_addr_0x0051d5cb                                 // 0x0051d5a7    7422
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d5a9    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051d5ad    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051d5b3    dfe0
                         test               ah, 0x40                                             // 0x0051d5b5    f6c440
                         {disp8} je         _jmp_addr_0x0051d5cb                                 // 0x0051d5b8    7411
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d5ba    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051d5be    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051d5c4    dfe0
                         test               ah, 0x40                                             // 0x0051d5c6    f6c440
                         {disp8} jne        _jmp_addr_0x0051d605                                 // 0x0051d5c9    753a
_jmp_addr_0x0051d5cb:    fld                st(0)                                                // 0x0051d5cb    d9c0
                         fmul               st, st(1)                                            // 0x0051d5cd    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d5cf    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0051d5d3    d84c2414
                         faddp              st(1), st                                            // 0x0051d5d7    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d5d9    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0051d5dd    d84c2418
                         faddp              st(1), st                                            // 0x0051d5e1    dec1
                         fsqrt                                                                   // 0x0051d5e3    d9fa
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x19c50]                    // 0x0051d5e5    d83d502c8c00
                         fld                st(0)                                                // 0x0051d5eb    d9c0
                         fmulp              st(2), st                                            // 0x0051d5ed    deca
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d5ef    d9442414
                         fmul               st, st(1)                                            // 0x0051d5f3    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d5f5    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d5f9    d9442418
                         fmul               st, st(1)                                            // 0x0051d5fd    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d5ff    d95c2418
                         fstp               st(0)                                                // 0x0051d603    ddd8
_jmp_addr_0x0051d605:    {disp8} fadd       dword ptr [esp + 0x2c]                               // 0x0051d605    d844242c
                         push               0x1                                                  // 0x0051d609    6a01
                         {disp8} fstp       dword ptr [esp + 0x68]                               // 0x0051d60b    d95c2468
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x0051d60f    d9442434
                         {disp8} mov        edx, dword ptr [esp + 0x68]                          // 0x0051d613    8b542468
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x0051d617    d8442418
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x0051d61b    89542424
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051d61f    8d542424
                         push               edx                                                  // 0x0051d623    52
                         {disp8} fstp       dword ptr [esp + 0x70]                               // 0x0051d624    d95c2470
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x0051d628    d944243c
                         {disp8} mov        eax, dword ptr [esp + 0x70]                          // 0x0051d62c    8b442470
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x0051d630    d8442420
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051d634    8d542424
                         {disp8} mov        dword ptr [esp + 0x2c], eax                          // 0x0051d638    8944242c
                         {disp8} fstp       dword ptr [esp + 0x74]                               // 0x0051d63c    d95c2474
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                          // 0x0051d640    8b4c2474
                         {disp8} mov        dword ptr [esp + 0x30], ecx                          // 0x0051d644    894c2430
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                          // 0x0051d648    8d4c247c
                         call               _jmp_addr_0x0081b450                                 // 0x0051d64c    e8ffdd2f00
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x0051d651    d9442474
                         call               _jmp_addr_0x007a1400                                 // 0x0051d655    e8a63d2800
                         push               eax                                                  // 0x0051d65a    50
                         call               _jmp_addr_0x00841660                                 // 0x0051d65b    e800403200
                         {disp8} fld        dword ptr [esp + 0x7c]                               // 0x0051d660    d944247c
                         call               _jmp_addr_0x007a1400                                 // 0x0051d664    e8973d2800
                         push               eax                                                  // 0x0051d669    50
                         call               _jmp_addr_0x00841670                                 // 0x0051d66a    e801403200
                         push               0x0                                                  // 0x0051d66f    6a00
                         push               0x00be9084                                           // 0x0051d671    688490be00
                         push               0x00ef6500                                           // 0x0051d676    680065ef00
                         push               0x0                                                  // 0x0051d67b    6a00
                         push               0x0                                                  // 0x0051d67d    6a00
                         push               0x1                                                  // 0x0051d67f    6a01
                         push               esi                                                  // 0x0051d681    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d682    e8c9403200
                         {disp8} fld        dword ptr [edi + 0x04]                               // 0x0051d687    d94704
                         {disp8} fld        dword ptr [edi + 0x08]                               // 0x0051d68a    d94708
                         add                esp, 0x24                                            // 0x0051d68d    83c424
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d690    d95c2414
                         {disp8} fld        dword ptr [edi + 0x0c]                               // 0x0051d694    d9470c
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d697    d95c2418
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x0051d69b    d81598a38a00
                         fnstsw             ax                                                   // 0x0051d6a1    dfe0
                         test               ah, 0x40                                             // 0x0051d6a3    f6c440
                         {disp8} je         _jmp_addr_0x0051d6ca                                 // 0x0051d6a6    7422
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d6a8    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051d6ac    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051d6b2    dfe0
                         test               ah, 0x40                                             // 0x0051d6b4    f6c440
                         {disp8} je         _jmp_addr_0x0051d6ca                                 // 0x0051d6b7    7411
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d6b9    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051d6bd    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051d6c3    dfe0
                         test               ah, 0x40                                             // 0x0051d6c5    f6c440
                         {disp8} jne        _jmp_addr_0x0051d704                                 // 0x0051d6c8    753a
_jmp_addr_0x0051d6ca:    fld                st(0)                                                // 0x0051d6ca    d9c0
                         fmul               st, st(1)                                            // 0x0051d6cc    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d6ce    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0051d6d2    d84c2414
                         faddp              st(1), st                                            // 0x0051d6d6    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d6d8    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0051d6dc    d84c2418
                         faddp              st(1), st                                            // 0x0051d6e0    dec1
                         fsqrt                                                                   // 0x0051d6e2    d9fa
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x19c50]                    // 0x0051d6e4    d83d502c8c00
                         fld                st(0)                                                // 0x0051d6ea    d9c0
                         fmulp              st(2), st                                            // 0x0051d6ec    deca
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d6ee    d9442414
                         fmul               st, st(1)                                            // 0x0051d6f2    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d6f4    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d6f8    d9442418
                         fmul               st, st(1)                                            // 0x0051d6fc    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d6fe    d95c2418
                         fstp               st(0)                                                // 0x0051d702    ddd8
_jmp_addr_0x0051d704:    {disp8} fadd       dword ptr [esp + 0x2c]                               // 0x0051d704    d844242c
                         push               0x1                                                  // 0x0051d708    6a01
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0051d70a    d95c244c
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x0051d70e    d9442434
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                          // 0x0051d712    8b44244c
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x0051d716    d8442418
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x0051d71a    89442424
                         {disp8} lea        eax, dword ptr [esp + 0x24]                          // 0x0051d71e    8d442424
                         push               eax                                                  // 0x0051d722    50
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x0051d723    d95c2454
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x0051d727    d944243c
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                          // 0x0051d72b    8b4c2454
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x0051d72f    d8442420
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                          // 0x0051d733    894c242c
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                          // 0x0051d737    8d4c247c
                         {disp8} fstp       dword ptr [esp + 0x58]                               // 0x0051d73b    d95c2458
                         {disp8} mov        edx, dword ptr [esp + 0x58]                          // 0x0051d73f    8b542458
                         {disp8} mov        dword ptr [esp + 0x30], edx                          // 0x0051d743    89542430
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051d747    8d542424
                         call               _jmp_addr_0x0081b450                                 // 0x0051d74b    e800dd2f00
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x0051d750    d9442474
                         call               _jmp_addr_0x007a1400                                 // 0x0051d754    e8a73c2800
                         push               eax                                                  // 0x0051d759    50
                         call               _jmp_addr_0x00841660                                 // 0x0051d75a    e8013f3200
                         {disp8} fld        dword ptr [esp + 0x7c]                               // 0x0051d75f    d944247c
                         call               _jmp_addr_0x007a1400                                 // 0x0051d763    e8983c2800
                         push               eax                                                  // 0x0051d768    50
                         call               _jmp_addr_0x00841670                                 // 0x0051d769    e8023f3200
                         push               0x0                                                  // 0x0051d76e    6a00
                         push               0x00be9080                                           // 0x0051d770    688090be00
                         push               0x00ef6500                                           // 0x0051d775    680065ef00
                         push               0x0                                                  // 0x0051d77a    6a00
                         push               0x0                                                  // 0x0051d77c    6a00
                         push               0x1                                                  // 0x0051d77e    6a01
                         push               esi                                                  // 0x0051d780    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d781    e8ca3f3200
                         {disp8} fld        dword ptr [edi + 0x10]                               // 0x0051d786    d94710
                         {disp8} fld        dword ptr [edi + 0x14]                               // 0x0051d789    d94714
                         add                esp, 0x24                                            // 0x0051d78c    83c424
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d78f    d95c2414
                         {disp8} fld        dword ptr [edi + 0x18]                               // 0x0051d793    d94718
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d796    d95c2418
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x0051d79a    d81598a38a00
                         fnstsw             ax                                                   // 0x0051d7a0    dfe0
                         test               ah, 0x40                                             // 0x0051d7a2    f6c440
                         {disp8} je         _jmp_addr_0x0051d7c9                                 // 0x0051d7a5    7422
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d7a7    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051d7ab    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051d7b1    dfe0
                         test               ah, 0x40                                             // 0x0051d7b3    f6c440
                         {disp8} je         _jmp_addr_0x0051d7c9                                 // 0x0051d7b6    7411
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d7b8    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0051d7bc    d81d98a38a00
                         fnstsw             ax                                                   // 0x0051d7c2    dfe0
                         test               ah, 0x40                                             // 0x0051d7c4    f6c440
                         {disp8} jne        _jmp_addr_0x0051d803                                 // 0x0051d7c7    753a
_jmp_addr_0x0051d7c9:    fld                st(0)                                                // 0x0051d7c9    d9c0
                         fmul               st, st(1)                                            // 0x0051d7cb    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d7cd    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0051d7d1    d84c2414
                         faddp              st(1), st                                            // 0x0051d7d5    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d7d7    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0051d7db    d84c2418
                         faddp              st(1), st                                            // 0x0051d7df    dec1
                         fsqrt                                                                   // 0x0051d7e1    d9fa
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x19c50]                    // 0x0051d7e3    d83d502c8c00
                         fld                st(0)                                                // 0x0051d7e9    d9c0
                         fmulp              st(2), st                                            // 0x0051d7eb    deca
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0051d7ed    d9442414
                         fmul               st, st(1)                                            // 0x0051d7f1    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0051d7f3    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0051d7f7    d9442418
                         fmul               st, st(1)                                            // 0x0051d7fb    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051d7fd    d95c2418
                         fstp               st(0)                                                // 0x0051d801    ddd8
_jmp_addr_0x0051d803:    {disp8} fadd       dword ptr [esp + 0x2c]                               // 0x0051d803    d844242c
                         push               0x1                                                  // 0x0051d807    6a01
                         {disp8} fstp       dword ptr [esp + 0x5c]                               // 0x0051d809    d95c245c
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x0051d80d    d9442434
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                          // 0x0051d811    8b4c245c
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x0051d815    d8442418
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x0051d819    894c2424
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x0051d81d    8d4c2424
                         push               ecx                                                  // 0x0051d821    51
                         {disp8} fstp       dword ptr [esp + 0x64]                               // 0x0051d822    d95c2464
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x0051d826    d944243c
                         {disp8} mov        edx, dword ptr [esp + 0x64]                          // 0x0051d82a    8b542464
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x0051d82e    d8442420
                         {disp8} mov        dword ptr [esp + 0x2c], edx                          // 0x0051d832    8954242c
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051d836    8d542424
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                          // 0x0051d83a    8d4c247c
                         {disp8} fstp       dword ptr [esp + 0x68]                               // 0x0051d83e    d95c2468
                         {disp8} mov        eax, dword ptr [esp + 0x68]                          // 0x0051d842    8b442468
                         {disp8} mov        dword ptr [esp + 0x30], eax                          // 0x0051d846    89442430
                         call               _jmp_addr_0x0081b450                                 // 0x0051d84a    e801dc2f00
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x0051d84f    d9442474
                         call               _jmp_addr_0x007a1400                                 // 0x0051d853    e8a83b2800
                         push               eax                                                  // 0x0051d858    50
                         call               _jmp_addr_0x00841660                                 // 0x0051d859    e8023e3200
                         {disp8} fld        dword ptr [esp + 0x7c]                               // 0x0051d85e    d944247c
                         call               _jmp_addr_0x007a1400                                 // 0x0051d862    e8993b2800
                         push               eax                                                  // 0x0051d867    50
                         call               _jmp_addr_0x00841670                                 // 0x0051d868    e8033e3200
                         push               0x0                                                  // 0x0051d86d    6a00
                         push               0x00be907c                                           // 0x0051d86f    687c90be00
                         push               0x00ef6500                                           // 0x0051d874    680065ef00
                         push               0x0                                                  // 0x0051d879    6a00
                         push               0x0                                                  // 0x0051d87b    6a00
                         push               0x1                                                  // 0x0051d87d    6a01
                         push               esi                                                  // 0x0051d87f    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d880    e8cb3e3200
                         add                esp, 0x24                                            // 0x0051d885    83c424
_jmp_addr_0x0051d888:    {disp8} fld        dword ptr [edi + 0x1c]                               // 0x0051d888    d9471c
                         push               0x1                                                  // 0x0051d88b    6a01
                         {disp32} fstp      dword ptr [esp + 0x00000098]                         // 0x0051d88d    d99c2498000000
                         {disp8} fld        dword ptr [edi + 0x20]                               // 0x0051d894    d94720
                         {disp32} lea       edx, dword ptr [esp + 0x00000098]                    // 0x0051d897    8d942498000000
                         {disp32} fstp      dword ptr [esp + 0x0000009c]                         // 0x0051d89e    d99c249c000000
                         {disp8} fld        dword ptr [edi + 0x24]                               // 0x0051d8a5    d94724
                         push               edx                                                  // 0x0051d8a8    52
                         {disp32} fstp      dword ptr [esp + 0x000000a4]                         // 0x0051d8a9    d99c24a4000000
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x0051d8b0    8d542424
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                          // 0x0051d8b4    8d4c247c
                         call               _jmp_addr_0x0081b450                                 // 0x0051d8b8    e893db2f00
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x0051d8bd    8b44241c
                         test               eax, eax                                             // 0x0051d8c1    85c0
                         {disp8} jne        _jmp_addr_0x0051d8f3                                 // 0x0051d8c3    752e
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                          // 0x0051d8c5    8b4500
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x0051d8c8    d9442478
                         push               0x2                                                  // 0x0051d8cc    6a02
                         push               0x00ef64f4                                           // 0x0051d8ce    68f464ef00
                         push               eax                                                  // 0x0051d8d3    50
                         push               0x0                                                  // 0x0051d8d4    6a00
                         push               ebx                                                  // 0x0051d8d6    53
                         call               _jmp_addr_0x007a1400                                 // 0x0051d8d7    e8243b2800
                         {disp32} fld       dword ptr [esp + 0x00000088]                         // 0x0051d8dc    d9842488000000
                         push               eax                                                  // 0x0051d8e3    50
                         call               _jmp_addr_0x007a1400                                 // 0x0051d8e4    e8173b2800
                         push               eax                                                  // 0x0051d8e9    50
                         push               esi                                                  // 0x0051d8ea    56
                         call               _jmp_addr_0x00841b00                                 // 0x0051d8eb    e810423200
                         add                esp, 0x20                                            // 0x0051d8f0    83c420
_jmp_addr_0x0051d8f3:    {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051d8f3    8b4e10
                         {disp32} mov       eax, dword ptr [ecx + 0x000047b8]                    // 0x0051d8f6    8b81b8470000
                         inc                ebx                                                  // 0x0051d8fc    43
                         add                ebp, 0x04                                            // 0x0051d8fd    83c504
                         add                edi, 0x30                                            // 0x0051d900    83c730
                         cmp.s              ebx, eax                                             // 0x0051d903    3bd8
                         {disp32} jl        _jmp_addr_0x0051d540                                 // 0x0051d905    0f8c35fcffff
                         {disp8} mov        ebp, dword ptr [esp + 0x70]                          // 0x0051d90b    8b6c2470
                         mov                edi, 0x00000001                                      // 0x0051d90f    bf01000000
_jmp_addr_0x0051d914:    call               _jmp_addr_0x008415c0                                 // 0x0051d914    e8a73c3200
                         push               0x0                                                  // 0x0051d919    6a00
                         push               0x00be9070                                           // 0x0051d91b    687090be00
                         push               0x00ef64f8                                           // 0x0051d920    68f864ef00
                         push               0x0                                                  // 0x0051d925    6a00
                         push               0x0                                                  // 0x0051d927    6a00
                         push               0xa                                                  // 0x0051d929    6a0a
                         push               esi                                                  // 0x0051d92b    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d92c    e81f3e3200
                         call               _jmp_addr_0x008416a0                                 // 0x0051d931    e86a3d3200
                         {disp8} fld        dword ptr [esi + 0x20]                               // 0x0051d936    d94620
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]                     // 0x0051d939    d80d14b48a00
                         push               0x0                                                  // 0x0051d93f    6a00
                         push               0x00be9068                                           // 0x0051d941    686890be00
                         call               _jmp_addr_0x007a1400                                 // 0x0051d946    e8b53a2800
                         push               eax                                                  // 0x0051d94b    50
                         push               0x00ef6500                                           // 0x0051d94c    680065ef00
                         push               0x0                                                  // 0x0051d951    6a00
                         push               0x0                                                  // 0x0051d953    6a00
                         push               0xa                                                  // 0x0051d955    6a0a
                         push               esi                                                  // 0x0051d957    56
                         call               _jmp_addr_0x00841900                                 // 0x0051d958    e8a33f3200
                         call               _jmp_addr_0x008416a0                                 // 0x0051d95d    e83e3d3200
                         {disp32} mov       edx, dword ptr [esi + 0x0000023c]                    // 0x0051d962    8b963c020000
                         push               edi                                                  // 0x0051d968    57
                         push               0x00be905c                                           // 0x0051d969    685c90be00
                         push               0x00ef6500                                           // 0x0051d96e    680065ef00
                         push               edx                                                  // 0x0051d973    52
                         push               0x0                                                  // 0x0051d974    6a00
                         push               0xa                                                  // 0x0051d976    6a0a
                         push               esi                                                  // 0x0051d978    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d979    e8d23d3200
                         add                esp, 0x58                                            // 0x0051d97e    83c458
                         call               _jmp_addr_0x008416a0                                 // 0x0051d981    e81a3d3200
                         test               ebp, ebp                                             // 0x0051d986    85ed
                         {disp8} je         _jmp_addr_0x0051da07                                 // 0x0051d988    747d
                         {disp32} mov       ebx, dword ptr [ebp + 0x000051e8]                    // 0x0051d98a    8b9de8510000
                         xor.s              eax, eax                                             // 0x0051d990    33c0
                         push               edi                                                  // 0x0051d992    57
                         cmp                ebx, 0x03                                            // 0x0051d993    83fb03
                         sete               al                                                   // 0x0051d996    0f94c0
                         push               0x00be9054                                           // 0x0051d999    685490be00
                         push               0x00ef6500                                           // 0x0051d99e    680065ef00
                         push               eax                                                  // 0x0051d9a3    50
                         push               0x2                                                  // 0x0051d9a4    6a02
                         push               0xa                                                  // 0x0051d9a6    6a0a
                         push               esi                                                  // 0x0051d9a8    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d9a9    e8a23d3200
                         call               _jmp_addr_0x008416a0                                 // 0x0051d9ae    e8ed3c3200
                         {disp32} mov       edx, dword ptr [ebp + 0x000051e8]                    // 0x0051d9b3    8b95e8510000
                         xor.s              ecx, ecx                                             // 0x0051d9b9    33c9
                         push               edi                                                  // 0x0051d9bb    57
                         cmp                edx, 0x02                                            // 0x0051d9bc    83fa02
                         sete               cl                                                   // 0x0051d9bf    0f94c1
                         push               0x00be9048                                           // 0x0051d9c2    684890be00
                         push               0x00ef6500                                           // 0x0051d9c7    680065ef00
                         push               ecx                                                  // 0x0051d9cc    51
                         push               0x8                                                  // 0x0051d9cd    6a08
                         push               0xa                                                  // 0x0051d9cf    6a0a
                         push               esi                                                  // 0x0051d9d1    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d9d2    e8793d3200
                         call               _jmp_addr_0x008416a0                                 // 0x0051d9d7    e8c43c3200
                         {disp32} mov       eax, dword ptr [ebp + 0x000051e8]                    // 0x0051d9dc    8b85e8510000
                         xor.s              edx, edx                                             // 0x0051d9e2    33d2
                         push               edi                                                  // 0x0051d9e4    57
                         cmp.s              eax, edi                                             // 0x0051d9e5    3bc7
                         sete               dl                                                   // 0x0051d9e7    0f94c2
                         push               0x00be903c                                           // 0x0051d9ea    683c90be00
                         push               0x00ef6500                                           // 0x0051d9ef    680065ef00
                         push               edx                                                  // 0x0051d9f4    52
                         push               0x3                                                  // 0x0051d9f5    6a03
                         push               0xa                                                  // 0x0051d9f7    6a0a
                         push               esi                                                  // 0x0051d9f9    56
                         call               _jmp_addr_0x00841750                                 // 0x0051d9fa    e8513d3200
                         add                esp, 0x54                                            // 0x0051d9ff    83c454
                         call               _jmp_addr_0x008416a0                                 // 0x0051da02    e8993c3200
_jmp_addr_0x0051da07:    push               edi                                                  // 0x0051da07    57
                         push               0x00be9030                                           // 0x0051da08    683090be00
                         push               0x00ef6500                                           // 0x0051da0d    680065ef00
                         push               0x0                                                  // 0x0051da12    6a00
                         push               0xa                                                  // 0x0051da14    6a0a
                         push               0xa                                                  // 0x0051da16    6a0a
                         push               esi                                                  // 0x0051da18    56
                         call               _jmp_addr_0x00841750                                 // 0x0051da19    e8323d3200
                         call               _jmp_addr_0x008416a0                                 // 0x0051da1e    e87d3c3200
                         push               edi                                                  // 0x0051da23    57
                         push               0x00be9024                                           // 0x0051da24    682490be00
                         push               0x00ef6500                                           // 0x0051da29    680065ef00
                         push               0x0                                                  // 0x0051da2e    6a00
                         push               0x7                                                  // 0x0051da30    6a07
                         push               0xa                                                  // 0x0051da32    6a0a
                         push               esi                                                  // 0x0051da34    56
                         call               _jmp_addr_0x00841750                                 // 0x0051da35    e8163d3200
                         add                esp, 0x38                                            // 0x0051da3a    83c438
                         call               _jmp_addr_0x008416a0                                 // 0x0051da3d    e85e3c3200
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051da42    8b4610
                         cmp                dword ptr [eax + 0x00000098], edi                    // 0x0051da45    39b898000000
                         {disp8} je         _jmp_addr_0x0051da6c                                 // 0x0051da4b    741f
                         push               edi                                                  // 0x0051da4d    57
                         push               0x00be9018                                           // 0x0051da4e    681890be00
                         push               0x00ef6500                                           // 0x0051da53    680065ef00
                         push               0x0                                                  // 0x0051da58    6a00
                         push               0x9                                                  // 0x0051da5a    6a09
                         push               0xa                                                  // 0x0051da5c    6a0a
                         push               esi                                                  // 0x0051da5e    56
                         call               _jmp_addr_0x00841750                                 // 0x0051da5f    e8ec3c3200
                         add                esp, 0x1c                                            // 0x0051da64    83c41c
                         call               _jmp_addr_0x008416a0                                 // 0x0051da67    e8343c3200
_jmp_addr_0x0051da6c:    {disp32} mov       eax, dword ptr [esi + 0x00000240]                    // 0x0051da6c    8b8640020000
                         xor.s              ecx, ecx                                             // 0x0051da72    33c9
                         push               edi                                                  // 0x0051da74    57
                         test               eax, eax                                             // 0x0051da75    85c0
                         sete               cl                                                   // 0x0051da77    0f94c1
                         push               0x00be9014                                           // 0x0051da7a    681490be00
                         push               0x00ef6500                                           // 0x0051da7f    680065ef00
                         push               ecx                                                  // 0x0051da84    51
                         push               0x4                                                  // 0x0051da85    6a04
                         push               0x5                                                  // 0x0051da87    6a05
                         push               esi                                                  // 0x0051da89    56
                         call               _jmp_addr_0x00841750                                 // 0x0051da8a    e8c13c3200
                         {disp32} mov       ecx, dword ptr [esi + 0x00000240]                    // 0x0051da8f    8b8e40020000
                         xor.s              edx, edx                                             // 0x0051da95    33d2
                         push               edi                                                  // 0x0051da97    57
                         cmp.s              ecx, edi                                             // 0x0051da98    3bcf
                         sete               dl                                                   // 0x0051da9a    0f94c2
                         push               0x00be9010                                           // 0x0051da9d    681090be00
                         push               0x00ef6500                                           // 0x0051daa2    680065ef00
                         push               edx                                                  // 0x0051daa7    52
                         push               0x5                                                  // 0x0051daa8    6a05
                         push               0x5                                                  // 0x0051daaa    6a05
                         push               esi                                                  // 0x0051daac    56
                         call               _jmp_addr_0x00841750                                 // 0x0051daad    e89e3c3200
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                          // 0x0051dab2    8b462c
                         add                esp, 0x38                                            // 0x0051dab5    83c438
                         test               eax, eax                                             // 0x0051dab8    85c0
                         {disp8} je         _jmp_addr_0x0051daf2                                 // 0x0051daba    7436
                         call               _jmp_addr_0x008416a0                                 // 0x0051dabc    e8df3b3200
                         push               edi                                                  // 0x0051dac1    57
                         push               0x00be9004                                           // 0x0051dac2    680490be00
                         push               0x00ef64fc                                           // 0x0051dac7    68fc64ef00
                         push               0x0                                                  // 0x0051dacc    6a00
                         push               0xc                                                  // 0x0051dace    6a0c
                         push               0x5                                                  // 0x0051dad0    6a05
                         push               esi                                                  // 0x0051dad2    56
                         call               _jmp_addr_0x00841750                                 // 0x0051dad3    e8783c3200
                         push               edi                                                  // 0x0051dad8    57
                         push               0x00be8ff8                                           // 0x0051dad9    68f88fbe00
                         push               0x00ef64fc                                           // 0x0051dade    68fc64ef00
                         push               0x0                                                  // 0x0051dae3    6a00
                         push               0xd                                                  // 0x0051dae5    6a0d
                         push               0x5                                                  // 0x0051dae7    6a05
                         push               esi                                                  // 0x0051dae9    56
                         call               _jmp_addr_0x00841750                                 // 0x0051daea    e8613c3200
                         add                esp, 0x38                                            // 0x0051daef    83c438
_jmp_addr_0x0051daf2:    {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051daf2    8b86e4060000
                         cmp                dword ptr [eax + 0x1c], edi                          // 0x0051daf8    39781c
                         {disp8} jle        _jmp_addr_0x0051db1b                                 // 0x0051dafb    7e1e
                         call               _jmp_addr_0x008416a0                                 // 0x0051dafd    e89e3b3200
                         push               edi                                                  // 0x0051db02    57
                         push               0x00be8fe8                                           // 0x0051db03    68e88fbe00
                         push               0x00ef64fc                                           // 0x0051db08    68fc64ef00
                         push               0x0                                                  // 0x0051db0d    6a00
                         push               edi                                                  // 0x0051db0f    57
                         push               0xa                                                  // 0x0051db10    6a0a
                         push               esi                                                  // 0x0051db12    56
                         call               _jmp_addr_0x00841750                                 // 0x0051db13    e8383c3200
                         add                esp, 0x1c                                            // 0x0051db18    83c41c
_jmp_addr_0x0051db1b:    call               _jmp_addr_0x008416a0                                 // 0x0051db1b    e8803b3200
                         push               edi                                                  // 0x0051db20    57
                         push               0x00be8fd8                                           // 0x0051db21    68d88fbe00
                         push               0x00ef64fc                                           // 0x0051db26    68fc64ef00
                         push               0x0                                                  // 0x0051db2b    6a00
                         push               0x6                                                  // 0x0051db2d    6a06
                         push               0xa                                                  // 0x0051db2f    6a0a
                         push               esi                                                  // 0x0051db31    56
                         call               _jmp_addr_0x00841750                                 // 0x0051db32    e8193c3200
                         {disp32} mov       eax, dword ptr [esi + 0x00000244]                    // 0x0051db37    8b8644020000
                         add                esp, 0x1c                                            // 0x0051db3d    83c41c
                         test               eax, eax                                             // 0x0051db40    85c0
                         {disp8} je         _jmp_addr_0x0051db64                                 // 0x0051db42    7420
                         call               _jmp_addr_0x008416a0                                 // 0x0051db44    e8573b3200
                         push               0x6                                                  // 0x0051db49    6a06
                         push               0x00be8fd0                                           // 0x0051db4b    68d08fbe00
                         push               0x00ef64fc                                           // 0x0051db50    68fc64ef00
                         push               0x0                                                  // 0x0051db55    6a00
                         push               0x0                                                  // 0x0051db57    6a00
                         push               0xa                                                  // 0x0051db59    6a0a
                         push               esi                                                  // 0x0051db5b    56
                         call               _jmp_addr_0x00841750                                 // 0x0051db5c    e8ef3b3200
                         add                esp, 0x1c                                            // 0x0051db61    83c41c
_jmp_addr_0x0051db64:    call               _jmp_addr_0x008416a0                                 // 0x0051db64    e8373b3200
                         {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051db69    8b8ee4060000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                          // 0x0051db6f    8b5104
                         push               edi                                                  // 0x0051db72    57
                         push               0x00be8fc8                                           // 0x0051db73    68c88fbe00
                         push               0x00ef64fc                                           // 0x0051db78    68fc64ef00
                         push               edx                                                  // 0x0051db7d    52
                         push               0xb                                                  // 0x0051db7e    6a0b
                         push               0xa                                                  // 0x0051db80    6a0a
                         push               esi                                                  // 0x0051db82    56
                         call               _jmp_addr_0x00841750                                 // 0x0051db83    e8c83b3200
                         call               _jmp_addr_0x008416a0                                 // 0x0051db88    e8133b3200
                         push               0x5                                                  // 0x0051db8d    6a05
                         push               0x00be8fb8                                           // 0x0051db8f    68b88fbe00
                         push               0x00ef64fc                                           // 0x0051db94    68fc64ef00
                         push               0x0                                                  // 0x0051db99    6a00
                         push               0xb                                                  // 0x0051db9b    6a0b
                         push               0xa                                                  // 0x0051db9d    6a0a
                         push               esi                                                  // 0x0051db9f    56
                         call               _jmp_addr_0x00841750                                 // 0x0051dba0    e8ab3b3200
                         push               edi                                                  // 0x0051dba5    57
                         call               _jmp_addr_0x00841630                                 // 0x0051dba6    e8853a3200
                         {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051dbab    8b86e4060000
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                          // 0x0051dbb1    8b481c
                         add                esp, 0x3c                                            // 0x0051dbb4    83c43c
                         xor.s              edi, edi                                             // 0x0051dbb7    33ff
                         test               ecx, ecx                                             // 0x0051dbb9    85c9
                         {disp8} jle        _jmp_addr_0x0051dbef                                 // 0x0051dbbb    7e32
_jmp_addr_0x0051dbbd:    {disp32} mov       ebx, dword ptr [esi + 0x00000234]                    // 0x0051dbbd    8b9e34020000
                         xor.s              ecx, ecx                                             // 0x0051dbc3    33c9
                         push               0x4                                                  // 0x0051dbc5    6a04
                         cmp.s              edi, ebx                                             // 0x0051dbc7    3bfb
                         push               edi                                                  // 0x0051dbc9    57
                         sete               cl                                                   // 0x0051dbca    0f94c1
                         push               0x00ef64f0                                           // 0x0051dbcd    68f064ef00
                         push               ecx                                                  // 0x0051dbd2    51
                         push               edi                                                  // 0x0051dbd3    57
                         push               0x2                                                  // 0x0051dbd4    6a02
                         push               0x0                                                  // 0x0051dbd6    6a00
                         push               esi                                                  // 0x0051dbd8    56
                         call               _jmp_addr_0x00841aa0                                 // 0x0051dbd9    e8c23e3200
                         {disp32} mov       edx, dword ptr [esi + 0x000006e4]                    // 0x0051dbde    8b96e4060000
                         {disp8} mov        eax, dword ptr [edx + 0x1c]                          // 0x0051dbe4    8b421c
                         add                esp, 0x20                                            // 0x0051dbe7    83c420
                         inc                edi                                                  // 0x0051dbea    47
                         cmp.s              edi, eax                                             // 0x0051dbeb    3bf8
                         {disp8} jl         _jmp_addr_0x0051dbbd                                 // 0x0051dbed    7cce
_jmp_addr_0x0051dbef:    {disp8} mov        eax, dword ptr [esp + 0x38]                          // 0x0051dbef    8b442438
                         test               eax, eax                                             // 0x0051dbf3    85c0
                         {disp32} je        _jmp_addr_0x0051dccb                                 // 0x0051dbf5    0f84d0000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051dbfb    8b8ee4060000
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]                    // 0x0051dc01    8b8634020000
                         {disp8} mov        edx, dword ptr [ecx + 0x34]                          // 0x0051dc07    8b5134
                         mov                ecx, dword ptr [edx + eax * 0x4]                     // 0x0051dc0a    8b0c82
                         {disp32} mov       eax, dword ptr [esi + 0x00000238]                    // 0x0051dc0d    8b8638020000
                         lea                edx, dword ptr [eax + eax * 0x2]                     // 0x0051dc13    8d1440
                         mov                eax, dword ptr [ecx]                                 // 0x0051dc16    8b01
                         push               0x1                                                  // 0x0051dc18    6a01
                         push               0x28                                                 // 0x0051dc1a    6a28
                         lea                edi, dword ptr [eax + edx * 0x4]                     // 0x0051dc1c    8d3c90
                         call               _jmp_addr_0x008415d0                                 // 0x0051dc1f    e8ac393200
                         {disp8} fld        dword ptr [edi + 0x08]                               // 0x0051dc24    d94708
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]                    // 0x0051dc27    d805a0368c00
                         push               0x7                                                  // 0x0051dc2d    6a07
                         push               0x00be8fb0                                           // 0x0051dc2f    68b08fbe00
                         push               0x00000274                                           // 0x0051dc34    6874020000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]                     // 0x0051dc39    d80d1cb48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051dc3f    e8bc372800
                         push               eax                                                  // 0x0051dc44    50
                         push               0x00ef6500                                           // 0x0051dc45    680065ef00
                         push               0x3                                                  // 0x0051dc4a    6a03
                         push               0x28                                                 // 0x0051dc4c    6a28
                         push               esi                                                  // 0x0051dc4e    56
                         call               _jmp_addr_0x00841b50                                 // 0x0051dc4f    e8fc3e3200
                         push               0x2                                                  // 0x0051dc54    6a02
                         push               0x28                                                 // 0x0051dc56    6a28
                         call               _jmp_addr_0x008415d0                                 // 0x0051dc58    e873393200
                         {disp8} fld        dword ptr [edi + 0x04]                               // 0x0051dc5d    d94704
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]                    // 0x0051dc60    d805a0368c00
                         push               0x7                                                  // 0x0051dc66    6a07
                         push               0x00be8fa8                                           // 0x0051dc68    68a88fbe00
                         push               0x00000274                                           // 0x0051dc6d    6874020000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]                     // 0x0051dc72    d80d1cb48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051dc78    e883372800
                         push               eax                                                  // 0x0051dc7d    50
                         push               0x00ef6500                                           // 0x0051dc7e    680065ef00
                         push               0x2                                                  // 0x0051dc83    6a02
                         push               0x28                                                 // 0x0051dc85    6a28
                         push               esi                                                  // 0x0051dc87    56
                         call               _jmp_addr_0x00841b50                                 // 0x0051dc88    e8c33e3200
                         add                esp, 0x50                                            // 0x0051dc8d    83c450
                         push               0x3                                                  // 0x0051dc90    6a03
                         push               0x28                                                 // 0x0051dc92    6a28
                         call               _jmp_addr_0x008415d0                                 // 0x0051dc94    e837393200
                         fld                dword ptr [edi]                                      // 0x0051dc99    d907
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]                    // 0x0051dc9b    d805a0368c00
                         push               0x7                                                  // 0x0051dca1    6a07
                         push               0x00be8fa0                                           // 0x0051dca3    68a08fbe00
                         push               0x00000274                                           // 0x0051dca8    6874020000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]                     // 0x0051dcad    d80d1cb48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0051dcb3    e848372800
                         push               eax                                                  // 0x0051dcb8    50
                         push               0x00ef6500                                           // 0x0051dcb9    680065ef00
                         push               0x1                                                  // 0x0051dcbe    6a01
                         push               0x28                                                 // 0x0051dcc0    6a28
                         push               esi                                                  // 0x0051dcc2    56
                         call               _jmp_addr_0x00841b50                                 // 0x0051dcc3    e8883e3200
                         add                esp, 0x28                                            // 0x0051dcc8    83c428
_jmp_addr_0x0051dccb:    pop                edi                                                  // 0x0051dccb    5f
                         pop                esi                                                  // 0x0051dccc    5e
                         pop                ebp                                                  // 0x0051dccd    5d
                         pop                ebx                                                  // 0x0051dcce    5b
                         add                esp, 0x00000090                                      // 0x0051dccf    81c490000000
                         ret                                                                     // 0x0051dcd5    c3
                         nop                                                                     // 0x0051dcd6    90
                         nop                                                                     // 0x0051dcd7    90
                         nop                                                                     // 0x0051dcd8    90
                         nop                                                                     // 0x0051dcd9    90
                         nop                                                                     // 0x0051dcda    90
                         nop                                                                     // 0x0051dcdb    90
                         nop                                                                     // 0x0051dcdc    90
                         nop                                                                     // 0x0051dcdd    90
                         nop                                                                     // 0x0051dcde    90
                         nop                                                                     // 0x0051dcdf    90
_jmp_addr_0x0051dce0:    push               ebx                                                  // 0x0051dce0    53
                         push               esi                                                  // 0x0051dce1    56
                         push               edi                                                  // 0x0051dce2    57
                         mov.s              edi, ecx                                             // 0x0051dce3    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x000002e0]                    // 0x0051dce5    8bb7e0020000
                         test               esi, esi                                             // 0x0051dceb    85f6
                         {disp32} lea       ebx, dword ptr [edi + 0x000002e0]                    // 0x0051dced    8d9fe0020000
                         {disp8} je         _jmp_addr_0x0051dd05                                 // 0x0051dcf3    7410
                         mov.s              ecx, esi                                             // 0x0051dcf5    8bce
                         call               _jmp_addr_0x0085e490                                 // 0x0051dcf7    e894073400
                         push               esi                                                  // 0x0051dcfc    56
                         call               ??3@YAXPAX@Z                                         // 0x0051dcfd    e896112900
                         add                esp, 0x04                                            // 0x0051dd02    83c404
_jmp_addr_0x0051dd05:    mov.s              eax, ebx                                             // 0x0051dd05    8bc3
                         mov                ecx, 0x00000027                                      // 0x0051dd07    b927000000
_jmp_addr_0x0051dd0c:    {disp8} mov        edx, dword ptr [eax + -0x04]                         // 0x0051dd0c    8b50fc
                         mov                dword ptr [eax], edx                                 // 0x0051dd0f    8910
                         add                eax, -0x04                                           // 0x0051dd11    83c0fc
                         dec                ecx                                                  // 0x0051dd14    49
                         {disp8} jne        _jmp_addr_0x0051dd0c                                 // 0x0051dd15    75f5
                         push               0x000001bd                                           // 0x0051dd17    68bd010000
                         push               0x00be8f80                                           // 0x0051dd1c    68808fbe00
                         push               0x38                                                 // 0x0051dd21    6a38
                         call               ___nw__FUl                                           // 0x0051dd23    e868da2b00
                         add                esp, 0x0c                                            // 0x0051dd28    83c40c
                         test               eax, eax                                             // 0x0051dd2b    85c0
                         {disp8} je         _jmp_addr_0x0051dd47                                 // 0x0051dd2d    7418
                         {disp32} mov       ecx, dword ptr [edi + 0x000006e4]                    // 0x0051dd2f    8b8fe4060000
                         push               ecx                                                  // 0x0051dd35    51
                         mov.s              ecx, eax                                             // 0x0051dd36    8bc8
                         call               @__ct__5CAnimFP5CAnim@12                             // 0x0051dd38    e883073400
                         {disp32} mov       dword ptr [edi + 0x00000244], eax                    // 0x0051dd3d    898744020000
                         pop                edi                                                  // 0x0051dd43    5f
                         pop                esi                                                  // 0x0051dd44    5e
                         pop                ebx                                                  // 0x0051dd45    5b
                         ret                                                                     // 0x0051dd46    c3
_jmp_addr_0x0051dd47:    xor.s              eax, eax                                             // 0x0051dd47    33c0
                         {disp32} mov       dword ptr [edi + 0x00000244], eax                    // 0x0051dd49    898744020000
                         pop                edi                                                  // 0x0051dd4f    5f
                         pop                esi                                                  // 0x0051dd50    5e
                         pop                ebx                                                  // 0x0051dd51    5b
                         ret                                                                     // 0x0051dd52    c3
                         nop                                                                     // 0x0051dd53    90
                         nop                                                                     // 0x0051dd54    90
                         nop                                                                     // 0x0051dd55    90
                         nop                                                                     // 0x0051dd56    90
                         nop                                                                     // 0x0051dd57    90
                         nop                                                                     // 0x0051dd58    90
                         nop                                                                     // 0x0051dd59    90
                         nop                                                                     // 0x0051dd5a    90
                         nop                                                                     // 0x0051dd5b    90
                         nop                                                                     // 0x0051dd5c    90
                         nop                                                                     // 0x0051dd5d    90
                         nop                                                                     // 0x0051dd5e    90
                         nop                                                                     // 0x0051dd5f    90
_jmp_addr_0x0051dd60:    push               esi                                                  // 0x0051dd60    56
                         mov.s              esi, ecx                                             // 0x0051dd61    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000244]                    // 0x0051dd63    8b8644020000
                         test               eax, eax                                             // 0x0051dd69    85c0
                         push               edi                                                  // 0x0051dd6b    57
                         {disp32} lea       edi, dword ptr [esi + 0x00000244]                    // 0x0051dd6c    8dbe44020000
                         {disp32} je        _jmp_addr_0x0051de07                                 // 0x0051dd72    0f848f000000
                         push               ebx                                                  // 0x0051dd78    53
                         {disp32} mov       ebx, dword ptr [esi + 0x000006e4]                    // 0x0051dd79    8b9ee4060000
                         test               ebx, ebx                                             // 0x0051dd7f    85db
                         {disp8} je         _jmp_addr_0x0051dd93                                 // 0x0051dd81    7410
                         mov.s              ecx, ebx                                             // 0x0051dd83    8bcb
                         call               _jmp_addr_0x0085e490                                 // 0x0051dd85    e806073400
                         push               ebx                                                  // 0x0051dd8a    53
                         call               ??3@YAXPAX@Z                                         // 0x0051dd8b    e808112900
                         add                esp, 0x04                                            // 0x0051dd90    83c404
_jmp_addr_0x0051dd93:    push               0x000001c5                                           // 0x0051dd93    68c5010000
                         push               0x00be8f80                                           // 0x0051dd98    68808fbe00
                         push               0x38                                                 // 0x0051dd9d    6a38
                         call               ___nw__FUl                                           // 0x0051dd9f    e8ecd92b00
                         add                esp, 0x0c                                            // 0x0051dda4    83c40c
                         test               eax, eax                                             // 0x0051dda7    85c0
                         {disp8} je         _jmp_addr_0x0051ddb7                                 // 0x0051dda9    740c
                         mov                ecx, dword ptr [edi]                                 // 0x0051ddab    8b0f
                         push               ecx                                                  // 0x0051ddad    51
                         mov.s              ecx, eax                                             // 0x0051ddae    8bc8
                         call               @__ct__5CAnimFP5CAnim@12                             // 0x0051ddb0    e80b073400
                         {disp8} jmp        _jmp_addr_0x0051ddb9                                 // 0x0051ddb5    eb02
_jmp_addr_0x0051ddb7:    xor.s              eax, eax                                             // 0x0051ddb7    33c0
_jmp_addr_0x0051ddb9:    {disp8} mov        edx, dword ptr [esi + 0x10]                          // 0x0051ddb9    8b5610
                         {disp32} mov       dword ptr [esi + 0x000006e4], eax                    // 0x0051ddbc    8986e4060000
                         {disp32} mov       ecx, dword ptr [edx + 0x00000098]                    // 0x0051ddc2    8b8a98000000
                         {disp32} lea       ebx, dword ptr [ecx * 0x8 + 0x00000000]              // 0x0051ddc8    8d1ccd00000000
                         sub.s              ebx, ecx                                             // 0x0051ddcf    2bd9
                         lea                ecx, dword ptr [ecx + ebx * 0x4]                     // 0x0051ddd1    8d0c99
                         {disp32} mov       ebx, dword ptr [esi + 0x00000230]                    // 0x0051ddd4    8b9e30020000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0051ddda    8d0c49
                         lea                ecx, dword ptr [ebx + ecx * 0x8]                     // 0x0051dddd    8d0ccb
                         {disp32} mov       dword ptr [edx + ecx * 0x4 + 0x000001d4], eax        // 0x0051dde0    89848ad4010000
                         mov.s              eax, edi                                             // 0x0051dde7    8bc7
                         mov                ecx, 0x00000027                                      // 0x0051dde9    b927000000
                         pop                ebx                                                  // 0x0051ddee    5b
_jmp_addr_0x0051ddef:    {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x0051ddef    8b5004
                         mov                dword ptr [eax], edx                                 // 0x0051ddf2    8910
                         add                eax, 0x04                                            // 0x0051ddf4    83c004
                         dec                ecx                                                  // 0x0051ddf7    49
                         {disp8} jne        _jmp_addr_0x0051ddef                                 // 0x0051ddf8    75f5
                         pop                edi                                                  // 0x0051ddfa    5f
                         {disp32} mov       dword ptr [esi + 0x000002e0], 0x00000000             // 0x0051ddfb    c786e002000000000000
                         pop                esi                                                  // 0x0051de05    5e
                         ret                                                                     // 0x0051de06    c3
_jmp_addr_0x0051de07:    push               0x00be9088                                           // 0x0051de07    688890be00
                         push               esi                                                  // 0x0051de0c    56
                         call               _jmp_addr_0x008421f0                                 // 0x0051de0d    e8de433200
                         add                esp, 0x08                                            // 0x0051de12    83c408
                         pop                edi                                                  // 0x0051de15    5f
                         pop                esi                                                  // 0x0051de16    5e
                         ret                                                                     // 0x0051de17    c3
                         nop                                                                     // 0x0051de18    90
                         nop                                                                     // 0x0051de19    90
                         nop                                                                     // 0x0051de1a    90
                         nop                                                                     // 0x0051de1b    90
                         nop                                                                     // 0x0051de1c    90
                         nop                                                                     // 0x0051de1d    90
                         nop                                                                     // 0x0051de1e    90
                         nop                                                                     // 0x0051de1f    90
?PrssKey@AnimEdit@@UAEXW4LH_KEY@@G@Z:
                         sub                esp, 0x10                                            // 0x0051de20    83ec10
                         push               ebx                                                  // 0x0051de23    53
                         push               ebp                                                  // 0x0051de24    55
                         push               esi                                                  // 0x0051de25    56
                         mov.s              esi, ecx                                             // 0x0051de26    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x10]                          // 0x0051de28    8b4610
                         {disp32} fld       dword ptr [eax + 0x00000084]                         // 0x0051de2b    d98084000000
                         {disp8} mov        ecx, dword ptr [eax + 0x78]                          // 0x0051de31    8b4878
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x0051de34    894c2410
                         {disp8} mov        edx, dword ptr [eax + 0x7c]                          // 0x0051de38    8b507c
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x0051de3b    89542414
                         {disp32} mov       ecx, dword ptr [eax + 0x00000080]                    // 0x0051de3f    8b8880000000
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1a6a0]                    // 0x0051de45    d82da0368c00
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x0051de4b    894c2418
                         push               edi                                                  // 0x0051de4f    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                          // 0x0051de50    8b7c2424
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0051de54    d95c2410
                         {disp32} fld       dword ptr [eax + 0x00000090]                         // 0x0051de58    d98090000000
                         {disp8} lea        ecx, dword ptr [edi + -0x10]                         // 0x0051de5e    8d4ff0
                         cmp                ecx, 0x24                                            // 0x0051de61    83f924
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e798]                    // 0x0051de64    d80d98778c00
                         {disp8} fadd       dword ptr [esp + 0x18]                               // 0x0051de6a    d8442418
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0051de6e    d95c2418
                         {disp32} ja        _jmp_addr_0x0051e2ff                                 // 0x0051de72    0f8787040000
                         xor.s              edx, edx                                             // 0x0051de78    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x0051e348]                      // 0x0051de7a    8a9148e35100
                         jmp                dword ptr [edx*4 + 0x51e31c]                         // 0x0051de80    ff24951ce35100
                         {disp8} mov        edi, dword ptr [esp + 0x28]                          // 0x0051de87    8b7c2428
                         xor.s              ecx, ecx                                             // 0x0051de8b    33c9
                         {disp32} mov       cx, word ptr [rdata_bytes + 0xf861e]                 // 0x0051de8d    668b0d1e169a00
                         and.s              ecx, edi                                             // 0x0051de94    23cf
                         test               cx, cx                                               // 0x0051de96    6685c9
                         {disp8} je         _jmp_addr_0x0051defd                                 // 0x0051de99    7462
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051de9b    8b0d5c19d000
                         xor.s              eax, eax                                             // 0x0051dea1    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x0051dea3    8a81595a2000
                         push               0x1                                                  // 0x0051dea9    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x0051deab    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x0051deae    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x0051deb1    8d0450
                         shl                eax, 5                                               // 0x0051deb4    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x0051deb7    8d4c0818
                         call               _jmp_addr_0x0064ab20                                 // 0x0051debb    e860cc1200
                         mov.s              ecx, eax                                             // 0x0051dec0    8bc8
                         call               _jmp_addr_0x0046c1b0                                 // 0x0051dec2    e8e9e2f4ff
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051dec7    8b0d5c19d000
                         xor.s              eax, eax                                             // 0x0051decd    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x0051decf    8a81595a2000
                         push               0x1                                                  // 0x0051ded5    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x0051ded7    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x0051deda    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x0051dedd    8d0450
                         shl                eax, 5                                               // 0x0051dee0    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x0051dee3    8d4c0818
                         call               _jmp_addr_0x0064ab20                                 // 0x0051dee7    e834cc1200
                         mov.s              ecx, eax                                             // 0x0051deec    8bc8
                         call               _jmp_addr_0x0046c2e0                                 // 0x0051deee    e8ede3f4ff
                         pop                edi                                                  // 0x0051def3    5f
                         pop                esi                                                  // 0x0051def4    5e
                         pop                ebp                                                  // 0x0051def5    5d
                         pop                ebx                                                  // 0x0051def6    5b
                         add                esp, 0x10                                            // 0x0051def7    83c410
                         ret                0x0008                                               // 0x0051defa    c20800
_jmp_addr_0x0051defd:    {disp32} mov       ecx, dword ptr [esi + 0x00000240]                    // 0x0051defd    8b8e40020000
                         test               ecx, ecx                                             // 0x0051df03    85c9
                         {disp32} jne       _jmp_addr_0x0051e006                                 // 0x0051df05    0f85fb000000
                         {disp32} mov       ecx, dword ptr [eax + 0x000047b8]                    // 0x0051df0b    8b88b8470000
                         xor.s              ebp, ebp                                             // 0x0051df11    33ed
                         test               ecx, ecx                                             // 0x0051df13    85c9
                         {disp8} mov        dword ptr [esp + 0x10], ebp                          // 0x0051df15    896c2410
                         {disp32} jle       _jmp_addr_0x0051e310                                 // 0x0051df19    0f8ef1030000
                         {disp8} lea        ecx, dword ptr [esi + 0x30]                          // 0x0051df1f    8d4e30
                         {disp8} mov        dword ptr [esp + 0x28], ecx                          // 0x0051df22    894c2428
_jmp_addr_0x0051df26:    {disp8} mov        edx, dword ptr [esp + 0x28]                          // 0x0051df26    8b542428
                         cmp                dword ptr [edx], 0x00                                // 0x0051df2a    833a00
                         {disp32} je        _jmp_addr_0x0051dfdb                                 // 0x0051df2d    0f84a8000000
                         {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051df33    8b86e4060000
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                          // 0x0051df39    8b481c
                         xor.s              ebx, ebx                                             // 0x0051df3c    33db
                         test               ecx, ecx                                             // 0x0051df3e    85c9
                         {disp8} mov        dword ptr [esp + 0x24], ebx                          // 0x0051df40    895c2424
                         {disp8} jle        _jmp_addr_0x0051dfa1                                 // 0x0051df44    7e5b
_jmp_addr_0x0051df46:    {disp8} mov        ecx, dword ptr [eax + 0x34]                          // 0x0051df46    8b4834
                         mov                ecx, dword ptr [ecx + ebx * 0x4]                     // 0x0051df49    8b0c99
                         mov                edx, dword ptr [ecx]                                 // 0x0051df4c    8b11
                         xor.s              ecx, ecx                                             // 0x0051df4e    33c9
                         cmp                dword ptr [eax + 0x24], ecx                          // 0x0051df50    394824
                         mov.s              edi, edx                                             // 0x0051df53    8bfa
                         {disp8} jle        _jmp_addr_0x0051df8f                                 // 0x0051df55    7e38
_jmp_addr_0x0051df57:    {disp8} mov        eax, dword ptr [eax + 0x2c]                          // 0x0051df57    8b402c
                         cmp                dword ptr [eax + ecx * 0x4], ebp                     // 0x0051df5a    392c88
                         {disp8} je         _jmp_addr_0x0051df7a                                 // 0x0051df5d    741b
                         mov.s              eax, edx                                             // 0x0051df5f    8bc2
                         mov                ebp, dword ptr [eax]                                 // 0x0051df61    8b28
                         mov.s              ebx, edi                                             // 0x0051df63    8bdf
                         mov                dword ptr [ebx], ebp                                 // 0x0051df65    892b
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                          // 0x0051df67    8b6804
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x0051df6a    896b04
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0051df6d    8b4008
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                          // 0x0051df70    8b6c2410
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x0051df74    894308
                         add                edi, 0x0c                                            // 0x0051df77    83c70c
_jmp_addr_0x0051df7a:    {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051df7a    8b86e4060000
                         {disp8} mov        ebx, dword ptr [eax + 0x24]                          // 0x0051df80    8b5824
                         add                edx, 0x0c                                            // 0x0051df83    83c20c
                         inc                ecx                                                  // 0x0051df86    41
                         cmp.s              ecx, ebx                                             // 0x0051df87    3bcb
                         {disp8} jl         _jmp_addr_0x0051df57                                 // 0x0051df89    7ccc
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                          // 0x0051df8b    8b5c2424
_jmp_addr_0x0051df8f:    {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051df8f    8b86e4060000
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                          // 0x0051df95    8b481c
                         inc                ebx                                                  // 0x0051df98    43
                         cmp.s              ebx, ecx                                             // 0x0051df99    3bd9
                         {disp8} mov        dword ptr [esp + 0x24], ebx                          // 0x0051df9b    895c2424
                         {disp8} jl         _jmp_addr_0x0051df46                                 // 0x0051df9f    7ca5
_jmp_addr_0x0051dfa1:    {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051dfa1    8b8ee4060000
                         {disp8} mov        eax, dword ptr [ecx + 0x2c]                          // 0x0051dfa7    8b412c
                         xor.s              edx, edx                                             // 0x0051dfaa    33d2
                         xor.s              ebx, ebx                                             // 0x0051dfac    33db
                         cmp                dword ptr [ecx + 0x24], edx                          // 0x0051dfae    395124
                         mov.s              edi, eax                                             // 0x0051dfb1    8bf8
                         {disp8} jle        _jmp_addr_0x0051dfd2                                 // 0x0051dfb3    7e1d
_jmp_addr_0x0051dfb5:    mov                ecx, dword ptr [eax]                                 // 0x0051dfb5    8b08
                         cmp.s              ecx, ebp                                             // 0x0051dfb7    3bcd
                         {disp8} jne        _jmp_addr_0x0051dfbe                                 // 0x0051dfb9    7503
                         inc                ebx                                                  // 0x0051dfbb    43
                         {disp8} jmp        _jmp_addr_0x0051dfc3                                 // 0x0051dfbc    eb05
_jmp_addr_0x0051dfbe:    mov                dword ptr [edi], ecx                                 // 0x0051dfbe    890f
                         add                edi, 0x04                                            // 0x0051dfc0    83c704
_jmp_addr_0x0051dfc3:    {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051dfc3    8b8ee4060000
                         add                eax, 0x04                                            // 0x0051dfc9    83c004
                         inc                edx                                                  // 0x0051dfcc    42
                         cmp                edx, dword ptr [ecx + 0x24]                          // 0x0051dfcd    3b5124
                         {disp8} jl         _jmp_addr_0x0051dfb5                                 // 0x0051dfd0    7ce3
_jmp_addr_0x0051dfd2:    {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051dfd2    8b86e4060000
                         sub                dword ptr [eax + 0x24], ebx                          // 0x0051dfd8    295824
_jmp_addr_0x0051dfdb:    {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x0051dfdb    8b4c2428
                         {disp8} mov        edx, dword ptr [esi + 0x10]                          // 0x0051dfdf    8b5610
                         {disp32} mov       eax, dword ptr [edx + 0x000047b8]                    // 0x0051dfe2    8b82b8470000
                         inc                ebp                                                  // 0x0051dfe8    45
                         add                ecx, 0x4                                             // 0x0051dfe9    83c104
                         cmp.s              ebp, eax                                             // 0x0051dfec    3be8
                         {disp8} mov        dword ptr [esp + 0x10], ebp                          // 0x0051dfee    896c2410
                         {disp8} mov        dword ptr [esp + 0x28], ecx                          // 0x0051dff2    894c2428
                         {disp32} jl        _jmp_addr_0x0051df26                                 // 0x0051dff6    0f8c2affffff
                         pop                edi                                                  // 0x0051dffc    5f
                         pop                esi                                                  // 0x0051dffd    5e
                         pop                ebp                                                  // 0x0051dffe    5d
                         pop                ebx                                                  // 0x0051dfff    5b
                         add                esp, 0x10                                            // 0x0051e000    83c410
                         ret                0x0008                                               // 0x0051e003    c20800
_jmp_addr_0x0051e006:    {disp32} mov       ecx, dword ptr [eax + 0x000047b8]                    // 0x0051e006    8b88b8470000
                         xor.s              ebp, ebp                                             // 0x0051e00c    33ed
                         test               ecx, ecx                                             // 0x0051e00e    85c9
                         {disp8} mov        dword ptr [esp + 0x10], ebp                          // 0x0051e010    896c2410
                         {disp32} jle       _jmp_addr_0x0051e310                                 // 0x0051e014    0f8ef6020000
                         {disp8} lea        eax, dword ptr [esi + 0x30]                          // 0x0051e01a    8d4630
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x0051e01d    89442428
_jmp_addr_0x0051e021:    {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x0051e021    8b4c2428
                         cmp                dword ptr [ecx], 0x00                                // 0x0051e025    833900
                         {disp32} je        _jmp_addr_0x0051e0d7                                 // 0x0051e028    0f84a9000000
                         {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051e02e    8b86e4060000
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                          // 0x0051e034    8b481c
                         xor.s              ebx, ebx                                             // 0x0051e037    33db
                         test               ecx, ecx                                             // 0x0051e039    85c9
                         {disp8} mov        dword ptr [esp + 0x24], ebx                          // 0x0051e03b    895c2424
                         {disp8} jle        _jmp_addr_0x0051e09d                                 // 0x0051e03f    7e5c
_jmp_addr_0x0051e041:    {disp8} mov        edx, dword ptr [eax + 0x34]                          // 0x0051e041    8b5034
                         mov                ecx, dword ptr [edx + ebx * 0x4]                     // 0x0051e044    8b0c9a
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                          // 0x0051e047    8b5104
                         xor.s              ecx, ecx                                             // 0x0051e04a    33c9
                         cmp                dword ptr [eax + 0x28], ecx                          // 0x0051e04c    394828
                         mov.s              edi, edx                                             // 0x0051e04f    8bfa
                         {disp8} jle        _jmp_addr_0x0051e08b                                 // 0x0051e051    7e38
_jmp_addr_0x0051e053:    {disp8} mov        eax, dword ptr [eax + 0x30]                          // 0x0051e053    8b4030
                         cmp                dword ptr [eax + ecx * 0x4], ebp                     // 0x0051e056    392c88
                         {disp8} je         _jmp_addr_0x0051e076                                 // 0x0051e059    741b
                         mov.s              eax, edx                                             // 0x0051e05b    8bc2
                         mov                ebp, dword ptr [eax]                                 // 0x0051e05d    8b28
                         mov.s              ebx, edi                                             // 0x0051e05f    8bdf
                         mov                dword ptr [ebx], ebp                                 // 0x0051e061    892b
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                          // 0x0051e063    8b6804
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x0051e066    896b04
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0051e069    8b4008
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                          // 0x0051e06c    8b6c2410
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x0051e070    894308
                         add                edi, 0x0c                                            // 0x0051e073    83c70c
_jmp_addr_0x0051e076:    {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051e076    8b86e4060000
                         {disp8} mov        ebx, dword ptr [eax + 0x28]                          // 0x0051e07c    8b5828
                         add                edx, 0x0c                                            // 0x0051e07f    83c20c
                         inc                ecx                                                  // 0x0051e082    41
                         cmp.s              ecx, ebx                                             // 0x0051e083    3bcb
                         {disp8} jl         _jmp_addr_0x0051e053                                 // 0x0051e085    7ccc
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                          // 0x0051e087    8b5c2424
_jmp_addr_0x0051e08b:    {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051e08b    8b86e4060000
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                          // 0x0051e091    8b481c
                         inc                ebx                                                  // 0x0051e094    43
                         cmp.s              ebx, ecx                                             // 0x0051e095    3bd9
                         {disp8} mov        dword ptr [esp + 0x24], ebx                          // 0x0051e097    895c2424
                         {disp8} jl         _jmp_addr_0x0051e041                                 // 0x0051e09b    7ca4
_jmp_addr_0x0051e09d:    {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051e09d    8b8ee4060000
                         {disp8} mov        eax, dword ptr [ecx + 0x30]                          // 0x0051e0a3    8b4130
                         xor.s              edx, edx                                             // 0x0051e0a6    33d2
                         xor.s              ebx, ebx                                             // 0x0051e0a8    33db
                         cmp                dword ptr [ecx + 0x28], edx                          // 0x0051e0aa    395128
                         mov.s              edi, eax                                             // 0x0051e0ad    8bf8
                         {disp8} jle        _jmp_addr_0x0051e0ce                                 // 0x0051e0af    7e1d
_jmp_addr_0x0051e0b1:    mov                ecx, dword ptr [eax]                                 // 0x0051e0b1    8b08
                         cmp.s              ecx, ebp                                             // 0x0051e0b3    3bcd
                         {disp8} jne        _jmp_addr_0x0051e0ba                                 // 0x0051e0b5    7503
                         inc                ebx                                                  // 0x0051e0b7    43
                         {disp8} jmp        _jmp_addr_0x0051e0bf                                 // 0x0051e0b8    eb05
_jmp_addr_0x0051e0ba:    mov                dword ptr [edi], ecx                                 // 0x0051e0ba    890f
                         add                edi, 0x04                                            // 0x0051e0bc    83c704
_jmp_addr_0x0051e0bf:    {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051e0bf    8b8ee4060000
                         add                eax, 0x04                                            // 0x0051e0c5    83c004
                         inc                edx                                                  // 0x0051e0c8    42
                         cmp                edx, dword ptr [ecx + 0x28]                          // 0x0051e0c9    3b5128
                         {disp8} jl         _jmp_addr_0x0051e0b1                                 // 0x0051e0cc    7ce3
_jmp_addr_0x0051e0ce:    {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051e0ce    8b86e4060000
                         sub                dword ptr [eax + 0x28], ebx                          // 0x0051e0d4    295828
_jmp_addr_0x0051e0d7:    {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x0051e0d7    8b4c2428
                         {disp8} mov        edx, dword ptr [esi + 0x10]                          // 0x0051e0db    8b5610
                         {disp32} mov       eax, dword ptr [edx + 0x000047b8]                    // 0x0051e0de    8b82b8470000
                         inc                ebp                                                  // 0x0051e0e4    45
                         add                ecx, 0x4                                             // 0x0051e0e5    83c104
                         cmp.s              ebp, eax                                             // 0x0051e0e8    3be8
                         {disp8} mov        dword ptr [esp + 0x10], ebp                          // 0x0051e0ea    896c2410
                         {disp8} mov        dword ptr [esp + 0x28], ecx                          // 0x0051e0ee    894c2428
                         {disp32} jl        _jmp_addr_0x0051e021                                 // 0x0051e0f2    0f8c29ffffff
                         pop                edi                                                  // 0x0051e0f8    5f
                         pop                esi                                                  // 0x0051e0f9    5e
                         pop                ebp                                                  // 0x0051e0fa    5d
                         pop                ebx                                                  // 0x0051e0fb    5b
                         add                esp, 0x10                                            // 0x0051e0fc    83c410
                         ret                0x0008                                               // 0x0051e0ff    c20800
                         {disp32} mov       edi, dword ptr [esi + 0x00000234]                    // 0x0051e102    8bbe34020000
                         {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051e108    8b8ee4060000
                         inc                edi                                                  // 0x0051e10e    47
                         {disp32} mov       dword ptr [esi + 0x00000234], edi                    // 0x0051e10f    89be34020000
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                          // 0x0051e115    8b511c
                         mov.s              eax, edi                                             // 0x0051e118    8bc7
                         cmp.s              eax, edx                                             // 0x0051e11a    3bc2
                         {disp32} jl        _jmp_addr_0x0051e310                                 // 0x0051e11c    0f8cee010000
                         pop                edi                                                  // 0x0051e122    5f
                         {disp32} mov       dword ptr [esi + 0x00000234], 0x00000000             // 0x0051e123    c7863402000000000000
                         pop                esi                                                  // 0x0051e12d    5e
                         pop                ebp                                                  // 0x0051e12e    5d
                         pop                ebx                                                  // 0x0051e12f    5b
                         add                esp, 0x10                                            // 0x0051e130    83c410
                         ret                0x0008                                               // 0x0051e133    c20800
                         mov.s              ecx, esi                                             // 0x0051e136    8bce
                         call               _jmp_addr_0x0051dce0                                 // 0x0051e138    e8a3fbffff
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051e13d    8b4e10
                         push               0x0                                                  // 0x0051e140    6a00
                         push               0x0                                                  // 0x0051e142    6a00
                         call               @GetAnim__9MorphableFll@16                           // 0x0051e144    e807b50f00
                         {disp8} mov        edx, dword ptr [eax + 0x34]                          // 0x0051e149    8b5034
                         mov                edi, dword ptr [edx]                                 // 0x0051e14c    8b3a
                         push               0x0000025b                                           // 0x0051e14e    685b020000
                         push               0x00be8f80                                           // 0x0051e153    68808fbe00
                         push               0x38                                                 // 0x0051e158    6a38
                         call               ___nw__FUl                                           // 0x0051e15a    e831d62b00
                         add                esp, 0x0c                                            // 0x0051e15f    83c40c
                         test               eax, eax                                             // 0x0051e162    85c0
                         {disp8} je         _jmp_addr_0x0051e177                                 // 0x0051e164    7411
                         {disp32} mov       ecx, dword ptr [esi + 0x000006e4]                    // 0x0051e166    8b8ee4060000
                         push               ecx                                                  // 0x0051e16c    51
                         push               edi                                                  // 0x0051e16d    57
                         mov.s              ecx, eax                                             // 0x0051e16e    8bc8
                         call               _jmp_addr_0x0085fa90                                 // 0x0051e170    e81b193400
                         {disp8} jmp        _jmp_addr_0x0051e179                                 // 0x0051e175    eb02
_jmp_addr_0x0051e177:    xor.s              eax, eax                                             // 0x0051e177    33c0
_jmp_addr_0x0051e179:    {disp8} mov        edx, dword ptr [esi + 0x10]                          // 0x0051e179    8b5610
                         {disp32} mov       ecx, dword ptr [edx + 0x00000098]                    // 0x0051e17c    8b8a98000000
                         {disp32} lea       edi, dword ptr [ecx * 0x8 + 0x00000000]              // 0x0051e182    8d3ccd00000000
                         sub.s              edi, ecx                                             // 0x0051e189    2bf9
                         lea                ecx, dword ptr [ecx + edi * 0x4]                     // 0x0051e18b    8d0cb9
                         {disp32} mov       edi, dword ptr [esi + 0x00000230]                    // 0x0051e18e    8bbe30020000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0051e194    8d0c49
                         lea                ecx, dword ptr [edi + ecx * 0x8]                     // 0x0051e197    8d0ccf
                         {disp32} mov       dword ptr [edx + ecx * 0x4 + 0x000001d4], eax        // 0x0051e19a    89848ad4010000
                         {disp32} mov       edi, dword ptr [esi + 0x000006e4]                    // 0x0051e1a1    8bbee4060000
                         test               edi, edi                                             // 0x0051e1a7    85ff
                         {disp8} je         _jmp_addr_0x0051e1bb                                 // 0x0051e1a9    7410
                         mov.s              ecx, edi                                             // 0x0051e1ab    8bcf
                         call               _jmp_addr_0x0085e490                                 // 0x0051e1ad    e8de023400
                         push               edi                                                  // 0x0051e1b2    57
                         call               ??3@YAXPAX@Z                                         // 0x0051e1b3    e8e00c2900
                         add                esp, 0x04                                            // 0x0051e1b8    83c404
_jmp_addr_0x0051e1bb:    {disp32} mov       edx, dword ptr [esi + 0x00000230]                    // 0x0051e1bb    8b9630020000
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                          // 0x0051e1c1    8b4e10
                         push               0x0                                                  // 0x0051e1c4    6a00
                         push               edx                                                  // 0x0051e1c6    52
                         {disp8} mov        dword ptr [esi + 0x2c], 0x00000001                   // 0x0051e1c7    c7462c01000000
                         call               @GetAnim__9MorphableFll@16                           // 0x0051e1ce    e87db40f00
                         pop                edi                                                  // 0x0051e1d3    5f
                         {disp32} mov       dword ptr [esi + 0x000006e4], eax                    // 0x0051e1d4    8986e4060000
                         pop                esi                                                  // 0x0051e1da    5e
                         pop                ebp                                                  // 0x0051e1db    5d
                         pop                ebx                                                  // 0x0051e1dc    5b
                         add                esp, 0x10                                            // 0x0051e1dd    83c410
                         ret                0x0008                                               // 0x0051e1e0    c20800
                         dec                dword ptr [esi + 0x00000234]                         // 0x0051e1e3    ff8e34020000
                         {disp32} jns       _jmp_addr_0x0051e310                                 // 0x0051e1e9    0f8921010000
                         {disp32} mov       eax, dword ptr [esi + 0x000006e4]                    // 0x0051e1ef    8b86e4060000
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                          // 0x0051e1f5    8b481c
                         pop                edi                                                  // 0x0051e1f8    5f
                         dec                ecx                                                  // 0x0051e1f9    49
                         {disp32} mov       dword ptr [esi + 0x00000234], ecx                    // 0x0051e1fa    898e34020000
                         pop                esi                                                  // 0x0051e200    5e
                         pop                ebp                                                  // 0x0051e201    5d
                         pop                ebx                                                  // 0x0051e202    5b
                         add                esp, 0x10                                            // 0x0051e203    83c410
                         ret                0x0008                                               // 0x0051e206    c20800
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051e209    8b0d5c19d000
                         push               0x0                                                  // 0x0051e20f    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051e211    8d542418
                         push               edx                                                  // 0x0051e215    52
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x0051e216    e865df0200
                         mov.s              ecx, eax                                             // 0x0051e21b    8bc8
                         call               _jmp_addr_0x00442e10                                 // 0x0051e21d    e8ee4bf2ff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0051e222    8b442410
                         push               0x0                                                  // 0x0051e226    6a00
                         push               eax                                                  // 0x0051e228    50
                         {disp32} jmp       _jmp_addr_0x0051e2d2                                 // 0x0051e229    e9a4000000
                         push               0x0                                                  // 0x0051e22e    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x0051e230    8d4c2418
                         push               ecx                                                  // 0x0051e234    51
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051e235    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x0051e23b    e840df0200
                         mov.s              ecx, eax                                             // 0x0051e240    8bc8
                         call               _jmp_addr_0x00442e10                                 // 0x0051e242    e8c94bf2ff
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051e247    d9442410
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]                    // 0x0051e24b    d805a0368c00
                         push               0x0                                                  // 0x0051e251    6a00
                         push               ecx                                                  // 0x0051e253    51
                         fstp               dword ptr [esp]                                      // 0x0051e254    d91c24
                         {disp8} jmp        _jmp_addr_0x0051e2d2                                 // 0x0051e257    eb79
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051e259    8b0d5c19d000
                         push               0x0                                                  // 0x0051e25f    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0051e261    8d542418
                         push               edx                                                  // 0x0051e265    52
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x0051e266    e815df0200
                         mov.s              ecx, eax                                             // 0x0051e26b    8bc8
                         call               _jmp_addr_0x00442e10                                 // 0x0051e26d    e89e4bf2ff
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051e272    d9442410
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e8d8]                    // 0x0051e276    d805d8788c00
                         push               0x0                                                  // 0x0051e27c    6a00
                         push               ecx                                                  // 0x0051e27e    51
                         fstp               dword ptr [esp]                                      // 0x0051e27f    d91c24
                         {disp8} jmp        _jmp_addr_0x0051e2d2                                 // 0x0051e282    eb4e
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051e284    8b0d5c19d000
                         push               0x0                                                  // 0x0051e28a    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x0051e28c    8d442418
                         push               eax                                                  // 0x0051e290    50
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x0051e291    e8eade0200
                         mov.s              ecx, eax                                             // 0x0051e296    8bc8
                         call               _jmp_addr_0x00442e10                                 // 0x0051e298    e8734bf2ff
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0051e29d    d9442410
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e8d8]                    // 0x0051e2a1    d825d8788c00
                         push               0x0                                                  // 0x0051e2a7    6a00
                         push               ecx                                                  // 0x0051e2a9    51
                         fstp               dword ptr [esp]                                      // 0x0051e2aa    d91c24
                         {disp8} jmp        _jmp_addr_0x0051e2d2                                 // 0x0051e2ad    eb23
                         push               0x0                                                  // 0x0051e2af    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x0051e2b1    8d4c2418
                         push               ecx                                                  // 0x0051e2b5    51
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051e2b6    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x0051e2bc    e8bfde0200
                         mov.s              ecx, eax                                             // 0x0051e2c1    8bc8
                         call               _jmp_addr_0x00442e10                                 // 0x0051e2c3    e8484bf2ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0051e2c8    8b542410
                         push               0x3fc50a6b                                           // 0x0051e2cc    686b0ac53f
                         push               edx                                                  // 0x0051e2d1    52
_jmp_addr_0x0051e2d2:    {disp32} mov       ecx, dword ptr [_game]                               // 0x0051e2d2    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x0051e2d8    e8a3de0200
                         mov.s              ecx, eax                                             // 0x0051e2dd    8bc8
                         call               _jmp_addr_0x00442db0                                 // 0x0051e2df    e8cc4af2ff
                         pop                edi                                                  // 0x0051e2e4    5f
                         pop                esi                                                  // 0x0051e2e5    5e
                         pop                ebp                                                  // 0x0051e2e6    5d
                         pop                ebx                                                  // 0x0051e2e7    5b
                         add                esp, 0x10                                            // 0x0051e2e8    83c410
                         ret                0x0008                                               // 0x0051e2eb    c20800
                         mov                eax, dword ptr [esi]                                 // 0x0051e2ee    8b06
                         mov.s              ecx, esi                                             // 0x0051e2f0    8bce
                         call               dword ptr [eax + 8]                                  // 0x0051e2f2    ff5008
                         pop                edi                                                  // 0x0051e2f5    5f
                         pop                esi                                                  // 0x0051e2f6    5e
                         pop                ebp                                                  // 0x0051e2f7    5d
                         pop                ebx                                                  // 0x0051e2f8    5b
                         add                esp, 0x10                                            // 0x0051e2f9    83c410
                         ret                0x0008                                               // 0x0051e2fc    c20800
_jmp_addr_0x0051e2ff:    {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x0051e2ff    8b4c2428
                         push               ecx                                                  // 0x0051e303    51
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0051e304    8b0d5c19d000
                         push               edi                                                  // 0x0051e30a    57
                         call               _jmp_addr_0x0063ef20                                 // 0x0051e30b    e8100c1200
_jmp_addr_0x0051e310:    pop                edi                                                  // 0x0051e310    5f
                         pop                esi                                                  // 0x0051e311    5e
                         pop                ebp                                                  // 0x0051e312    5d
                         pop                ebx                                                  // 0x0051e313    5b
                         add                esp, 0x10                                            // 0x0051e314    83c410
                         ret                0x0008                                               // 0x0051e317    c20800

// Snippet: db, [0x0051e31a, 0x0051e31c)
.byte 0x8b, 0xff                  // 0x0051e31a

// Snippet: jmptbl, [0x0051e31c, 0x0051e348)
.byte 0xee, 0xe2, 0x51, 0x00      // 0x0051e31c
.byte 0x36, 0xe1, 0x51, 0x00      // 0x0051e320
.byte 0x59, 0xe2, 0x51, 0x00      // 0x0051e324
.byte 0xaf, 0xe2, 0x51, 0x00      // 0x0051e328
.byte 0x09, 0xe2, 0x51, 0x00      // 0x0051e32c
.byte 0x84, 0xe2, 0x51, 0x00      // 0x0051e330
.byte 0x87, 0xde, 0x51, 0x00      // 0x0051e334
.byte 0x2e, 0xe2, 0x51, 0x00      // 0x0051e338
.byte 0xe3, 0xe1, 0x51, 0x00      // 0x0051e33c
.byte 0x02, 0xe1, 0x51, 0x00      // 0x0051e340
.byte 0xff, 0xe2, 0x51, 0x00      // 0x0051e344

// Snippet: ijmptbl, [0x0051e348, 0x0051e36d)
.byte 0x00, 0x0a, 0x01, 0x02      // 0x0051e348
.byte 0x03, 0x0a, 0x0a, 0x0a      // 0x0051e34c
.byte 0x0a, 0x0a, 0x0a, 0x0a      // 0x0051e350
.byte 0x0a, 0x0a, 0x0a, 0x0a      // 0x0051e354
.byte 0x0a, 0x04, 0x0a, 0x0a      // 0x0051e358
.byte 0x0a, 0x0a, 0x05, 0x0a      // 0x0051e35c
.byte 0x06, 0x0a, 0x0a, 0x0a      // 0x0051e360
.byte 0x0a, 0x0a, 0x0a, 0x0a      // 0x0051e364
.byte 0x07, 0x0a, 0x0a, 0x08      // 0x0051e368
.byte 0x09                        // 0x0051e36c

// Snippet: db, [0x0051e36d, 0x0051e370)
.byte 0x90, 0x90, 0x90            // 0x0051e36d

