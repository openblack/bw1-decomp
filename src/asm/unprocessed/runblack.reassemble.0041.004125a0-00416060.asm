.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?adjust@SetupThing@@SAMAAH0@Z
.extern ?adjusty@SetupThing@@SAHH@Z
.extern _jmp_addr_0x00416750
.extern _jmp_addr_0x004169e0
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x004f12e0
.extern _jmp_addr_0x0051fbe0
.extern _jmp_addr_0x00520b90
.extern _jmp_addr_0x005254c0
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern _jmp_addr_0x00555880
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z
.extern _jmp_addr_0x0071ceb0
.extern _jmp_addr_0x0072eec0
.extern _jmp_addr_0x00741220
.extern _jmp_addr_0x007466d0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern _DrawAndClip__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl
.extern _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl
.extern ?SetD3DTillingOn@LH3DRender@@SAXH@Z
.extern ?SetD3DTillingOff@LH3DRender@@SAXH@Z

.globl ?DrawLine@SetupThing@@SAXHHHHKHMM@Z
.globl _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl
.globl ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.globl ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z
.globl ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.globl ?DrawTab@SetupThing@@SAXHHHHHHHPA_WHH@Z
.globl _jmp_addr_0x00413960
.globl ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.globl _jmp_addr_0x00414140
.globl _jmp_addr_0x004141a0
.globl _jmp_addr_0x004141f0
.globl _jmp_addr_0x00414220
.globl _jmp_addr_0x00414320
.globl _jmp_addr_0x00414360
.globl _jmp_addr_0x004143b0
.globl _jmp_addr_0x00414410
.globl _jmp_addr_0x00414520
.globl _jmp_addr_0x004145a0
.globl _jmp_addr_0x00414600
.globl _jmp_addr_0x004146b0
.globl _jmp_addr_0x004146f0
.globl _jmp_addr_0x00414730
.globl _jmp_addr_0x00414b90
.globl _jmp_addr_0x00414d40

.globl _globl_ct_0x00413ff0
.globl _globl_ct_0x00414020
.globl _globl_ct_0x00414050
.globl _globl_ct_0x00414070
.globl _globl_ct_0x00414770

.globl ?GetDebugText@GBaseInfo@@UBEPBDXZ
.globl ?GetPDMRegion@EditorIconBase@@UAIPAULHRegion@@XZ
.globl ?GetTextRegion@EditorIconBase@@UAIPAULHRegion@@XZ
.globl ?GetTextHandle@EditorIconBase@@UAIIXZ
.globl ?GetTextHeight@EditorIconBase@@UAIMXZ
.globl ?GetHiliteColor@EditorIconBase@@UAIPAULH3DColor@@XZ
.globl ?IsScrollable@EditorIconBase@@UAI_NXZ
.globl ?GetBaseInfo@GAlignmentInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGAlignmentInfo@@UAEPAXI@Z

start_0x004125a0_0x00416060:
// Snippet: asm, [0x004125a0, 0x00416032)
?DrawLine@SetupThing@@SAXHHHHKHMM@Z:
                                      {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x004125a0    8b442418
                         sub                esp, 0x0c                                     // 0x004125a4    83ec0c
                         test               eax, eax                                      // 0x004125a7    85c0
                         {disp8} je         _jmp_addr_0x004125d0                          // 0x004125a9    7425
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x004125ab    8d442414
                         push               eax                                           // 0x004125af    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004125b0    8d4c2414
                         push               ecx                                           // 0x004125b4    51
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x004125b5    e886f5ffff
                         fstp               st(0)                                         // 0x004125ba    ddd8
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x004125bc    8d542424
                         push               edx                                           // 0x004125c0    52
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x004125c1    8d442424
                         push               eax                                           // 0x004125c5    50
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x004125c6    e875f5ffff
                         fstp               st(0)                                         // 0x004125cb    ddd8
                         add                esp, 0x10                                     // 0x004125cd    83c410
_jmp_addr_0x004125d0:    {disp8} fild       dword ptr [esp + 0x10]                        // 0x004125d0    db442410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004125d4    8b442420
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2078]          // 0x004125d8    8b0d78809c00
                         push               esi                                           // 0x004125de    56
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x004125df    d805b4a38a00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x517494]        // 0x004125e5    8b3594d4ed00
                         and                eax, 0x00ffffff                               // 0x004125eb    25ffffff00
                         shl                ecx, 0x18                                     // 0x004125f0    c1e118
                         {disp32} fstp      dword ptr [data_bytes + 0x2080]               // 0x004125f3    d91d80809c00
                         add.s              eax, ecx                                      // 0x004125f9    03c1
                         test               esi, esi                                      // 0x004125fb    85f6
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x004125fd    db442418
                         push               edi                                           // 0x00412601    57
                         {disp32} mov       dword ptr [data_bytes + 0x2098], 0x00000000   // 0x00412602    c70598809c0000000000
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0041260c    d805b4a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x209c], 0x00000000   // 0x00412612    c7059c809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x2090], eax          // 0x0041261c    a390809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20b8], 0x00000000   // 0x00412621    c705b8809c0000000000
                         {disp32} fstp      dword ptr [data_bytes + 0x2084]               // 0x0041262b    d91d84809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20bc], 0x00000000   // 0x00412631    c705bc809c0000000000
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x0041263b    db442420
                         {disp32} mov       dword ptr [data_bytes + 0x20b0], eax          // 0x0041263f    a3b0809c00
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00412644    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20a0]               // 0x0041264a    d91da0809c00
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00412650    db442424
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00412654    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20a4]               // 0x0041265a    d91da4809c00
                         {disp8} je         _jmp_addr_0x004126c0                          // 0x00412660    745e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x272714]        // 0x00412662    a11487c300
                         test               eax, eax                                      // 0x00412667    85c0
                         {disp8} je         _jmp_addr_0x004126c0                          // 0x00412669    7455
                         test               esi, esi                                      // 0x0041266b    85f6
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0041266d    89354ca6ec00
                         {disp8} je         _jmp_addr_0x004126c0                          // 0x00412673    744b
                         mov                eax, dword ptr [esi]                          // 0x00412675    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x00412677    8b3d18a6ec00
                         xor.s              edx, edx                                      // 0x0041267d    33d2
                         mov.s              ecx, esi                                      // 0x0041267f    8bce
                         call               dword ptr [edi + eax*8]                       // 0x00412681    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x00412684    a114a6ec00
                         test               eax, eax                                      // 0x00412689    85c0
                         {disp8} jne        _jmp_addr_0x0041269c                          // 0x0041268b    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0041268d    f6460504
                         {disp8} jne        _jmp_addr_0x0041269c                          // 0x00412691    7509
                         push               0x0                                           // 0x00412693    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x00412695    e8b6d84100
                         {disp8} jmp        _jmp_addr_0x004126a3                          // 0x0041269a    eb07
_jmp_addr_0x0041269c:    push               0x0                                           // 0x0041269c    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0041269e    e86dd84100
_jmp_addr_0x004126a3:    xor.s              ecx, ecx                                      // 0x004126a3    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x004126a5    8a4e05
                         not                cl                                            // 0x004126a8    f6d1
                         add                esp, 0x04                                     // 0x004126aa    83c404
                         and                ecx, 0x01                                     // 0x004126ad    83e101
                         shl                ecx, 1                                        // 0x004126b0    d1e1
                         or                 ecx, 1                                        // 0x004126b2    83c901
                         push               ecx                                           // 0x004126b5    51
                         push               0x16                                          // 0x004126b6    6a16
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x004126b8    e883020000
                         add                esp, 0x08                                     // 0x004126bd    83c408
_jmp_addr_0x004126c0:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x004126c0    a128a2ec00
                         or                 edi, 0xffffffff                               // 0x004126c5    83cfff
                         cmp.s              eax, edi                                      // 0x004126c8    3bc7
                         {disp8} jne        _jmp_addr_0x004126f6                          // 0x004126ca    752a
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004126cc    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004126d1    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004126d3    8d4c240c
                         push               ecx                                           // 0x004126d7    51
                         push               0xe                                           // 0x004126d8    6a0e
                         push               eax                                           // 0x004126da    50
                         call               dword ptr [edx + 0x54]                        // 0x004126db    ff5254
                         test               eax, eax                                      // 0x004126de    85c0
                         {disp8} je         _jmp_addr_0x004126ea                          // 0x004126e0    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edi        // 0x004126e2    893d28a2ec00
                         {disp8} jmp        _jmp_addr_0x004126fa                          // 0x004126e8    eb10
_jmp_addr_0x004126ea:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x004126ea    8b54240c
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edx        // 0x004126ee    891528a2ec00
                         {disp8} jmp        _jmp_addr_0x004126fa                          // 0x004126f4    eb04
_jmp_addr_0x004126f6:    {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x004126f6    8944240c
_jmp_addr_0x004126fa:    {disp32} mov       ecx, dword ptr [data_bytes + 0x50424c]        // 0x004126fa    8b0d4ca2ec00
                         cmp.s              ecx, edi                                      // 0x00412700    3bcf
                         {disp8} jne        _jmp_addr_0x00412730                          // 0x00412702    752c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412704    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00412709    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0041270b    8d542408
                         push               edx                                           // 0x0041270f    52
                         push               0x17                                          // 0x00412710    6a17
                         push               eax                                           // 0x00412712    50
                         call               dword ptr [ecx + 0x54]                        // 0x00412713    ff5154
                         test               eax, eax                                      // 0x00412716    85c0
                         {disp8} je         _jmp_addr_0x00412724                          // 0x00412718    740a
                         mov.s              ecx, edi                                      // 0x0041271a    8bcf
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], ecx        // 0x0041271c    890d4ca2ec00
                         {disp8} jmp        _jmp_addr_0x00412734                          // 0x00412722    eb10
_jmp_addr_0x00412724:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00412724    8b4c2408
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], ecx        // 0x00412728    890d4ca2ec00
                         {disp8} jmp        _jmp_addr_0x00412734                          // 0x0041272e    eb04
_jmp_addr_0x00412730:    {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x00412730    894c2408
_jmp_addr_0x00412734:    {disp8} fld        dword ptr [esp + 0x30]                        // 0x00412734    d9442430
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00412738    d81d98a38a00
                         fnstsw             ax                                            // 0x0041273e    dfe0
                         test               ah, 0x40                                      // 0x00412740    f6c440
                         {disp8} je         _jmp_addr_0x00412792                          // 0x00412743    744d
                         cmp                ecx, 0x08                                     // 0x00412745    83f908
                         {disp8} je         _jmp_addr_0x00412768                          // 0x00412748    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0041274a    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0041274f    8b08
                         push               0x8                                           // 0x00412751    6a08
                         push               0x17                                          // 0x00412753    6a17
                         push               eax                                           // 0x00412755    50
                         call               dword ptr [ecx + 0x50]                        // 0x00412756    ff5150
                         neg                eax                                           // 0x00412759    f7d8
                         sbb.s              eax, eax                                      // 0x0041275b    1bc0
                         and                eax, 0xfffffff7                               // 0x0041275d    83e0f7
                         add                eax, 0x08                                     // 0x00412760    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00412763    a34ca2ec00
_jmp_addr_0x00412768:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x00412768    a128a2ec00
                         test               eax, eax                                      // 0x0041276d    85c0
                         {disp32} je        _jmp_addr_0x0041281e                          // 0x0041276f    0f84a9000000
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412775    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0041277a    8b10
                         push               0x0                                           // 0x0041277c    6a00
                         push               0xe                                           // 0x0041277e    6a0e
                         push               eax                                           // 0x00412780    50
                         call               dword ptr [edx + 0x50]                        // 0x00412781    ff5250
                         neg                eax                                           // 0x00412784    f7d8
                         sbb.s              eax, eax                                      // 0x00412786    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x00412788    a328a2ec00
                         {disp32} jmp       _jmp_addr_0x0041281e                          // 0x0041278d    e98c000000
_jmp_addr_0x00412792:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x00412792    a128a2ec00
                         test               eax, eax                                      // 0x00412797    85c0
                         {disp8} je         _jmp_addr_0x004127b9                          // 0x00412799    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0041279b    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x004127a0    8b08
                         push               0x0                                           // 0x004127a2    6a00
                         push               0xe                                           // 0x004127a4    6a0e
                         push               eax                                           // 0x004127a6    50
                         call               dword ptr [ecx + 0x50]                        // 0x004127a7    ff5150
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x50424c]        // 0x004127aa    8b0d4ca2ec00
                         neg                eax                                           // 0x004127b0    f7d8
                         sbb.s              eax, eax                                      // 0x004127b2    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x004127b4    a328a2ec00
_jmp_addr_0x004127b9:    cmp                ecx, 0x04                                     // 0x004127b9    83f904
                         {disp8} je         _jmp_addr_0x004127dc                          // 0x004127bc    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004127be    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004127c3    8b10
                         push               0x4                                           // 0x004127c5    6a04
                         push               0x17                                          // 0x004127c7    6a17
                         push               eax                                           // 0x004127c9    50
                         call               dword ptr [edx + 0x50]                        // 0x004127ca    ff5250
                         neg                eax                                           // 0x004127cd    f7d8
                         sbb.s              eax, eax                                      // 0x004127cf    1bc0
                         and                eax, 0xfffffffb                               // 0x004127d1    83e0fb
                         add                eax, 0x04                                     // 0x004127d4    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x004127d7    a34ca2ec00
_jmp_addr_0x004127dc:    {disp32} fld       dword ptr [_near_clipping]                    // 0x004127dc    d905e039e800
                         {disp8} fdiv       dword ptr [esp + 0x34]                        // 0x004127e2    d8742434
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x004127e6    d90590a38a00
                         fsub               st, st(1)                                     // 0x004127ec    d8e1
                         {disp32} fst       dword ptr [data_bytes + 0x20e8]               // 0x004127ee    d915e8809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20c8]               // 0x004127f4    d915c8809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20a8]               // 0x004127fa    d915a8809c00
                         {disp32} fstp      dword ptr [data_bytes + 0x2088]               // 0x00412800    d91d88809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20ec]               // 0x00412806    d915ec809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20cc]               // 0x0041280c    d915cc809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20ac]               // 0x00412812    d915ac809c00
                         {disp32} fstp      dword ptr [data_bytes + 0x208c]               // 0x00412818    d91d8c809c00
_jmp_addr_0x0041281e:    {disp32} mov       eax, dword ptr [data_bytes + 0x504230]        // 0x0041281e    a130a2ec00
                         cmp.s              eax, edi                                      // 0x00412823    3bc7
                         {disp8} mov        word ptr [esp + 0x10], 0x0000                 // 0x00412825    66c74424100000
                         {disp8} mov        word ptr [esp + 0x12], 0x0001                 // 0x0041282c    66c74424120100
                         {disp8} jne        _jmp_addr_0x0041285e                          // 0x00412833    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412835    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0041283a    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0041283c    8d54242c
                         push               edx                                           // 0x00412840    52
                         push               0x10                                          // 0x00412841    6a10
                         push               eax                                           // 0x00412843    50
                         call               dword ptr [ecx + 0x54]                        // 0x00412844    ff5154
                         test               eax, eax                                      // 0x00412847    85c0
                         {disp8} je         _jmp_addr_0x00412853                          // 0x00412849    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504230], edi        // 0x0041284b    893d30a2ec00
                         {disp8} jmp        _jmp_addr_0x00412867                          // 0x00412851    eb14
_jmp_addr_0x00412853:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00412853    8b44242c
                         {disp32} mov       dword ptr [data_bytes + 0x504230], eax        // 0x00412857    a330a2ec00
                         {disp8} jmp        _jmp_addr_0x00412862                          // 0x0041285c    eb04
_jmp_addr_0x0041285e:    {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0041285e    8944242c
_jmp_addr_0x00412862:    cmp                eax, 0x01                                     // 0x00412862    83f801
                         {disp8} je         _jmp_addr_0x00412883                          // 0x00412865    741c
_jmp_addr_0x00412867:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412867    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0041286c    8b08
                         push               0x1                                           // 0x0041286e    6a01
                         push               0x10                                          // 0x00412870    6a10
                         push               eax                                           // 0x00412872    50
                         call               dword ptr [ecx + 0x50]                        // 0x00412873    ff5150
                         neg                eax                                           // 0x00412876    f7d8
                         sbb.s              eax, eax                                      // 0x00412878    1bc0
                         and                eax, 0xfffffffe                               // 0x0041287a    83e0fe
                         inc                eax                                           // 0x0041287d    40
                         {disp32} mov       dword ptr [data_bytes + 0x504230], eax        // 0x0041287e    a330a2ec00
_jmp_addr_0x00412883:    push               0x2                                           // 0x00412883    6a02
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00412885    8d542414
                         push               edx                                           // 0x00412889    52
                         push               0x2                                           // 0x0041288a    6a02
                         push               0x009c8080                                    // 0x0041288c    6880809c00
                         push               0x000001c4                                    // 0x00412891    68c4010000
                         push               0x2                                           // 0x00412896    6a02
                         call               _DrawAndClip__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl                          // 0x00412898    e8637c4100
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x0041289d    8b442444
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x504230]        // 0x004128a1    8b0d30a2ec00
                         add                esp, 0x18                                     // 0x004128a7    83c418
                         cmp.s              ecx, eax                                      // 0x004128aa    3bc8
                         mov.s              esi, eax                                      // 0x004128ac    8bf0
                         {disp8} je         _jmp_addr_0x004128cf                          // 0x004128ae    741f
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x004128b0    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x004128b6    8b11
                         push               eax                                           // 0x004128b8    50
                         push               0x10                                          // 0x004128b9    6a10
                         push               ecx                                           // 0x004128bb    51
                         call               dword ptr [edx + 0x50]                        // 0x004128bc    ff5250
                         test               eax, eax                                      // 0x004128bf    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504230], edi        // 0x004128c1    893d30a2ec00
                         {disp8} jne        _jmp_addr_0x004128cf                          // 0x004128c7    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504230], esi        // 0x004128c9    893530a2ec00
_jmp_addr_0x004128cf:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004128cf    8b442408
                         push               eax                                           // 0x004128d3    50
                         push               0x17                                          // 0x004128d4    6a17
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x004128d6    e865000000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004128db    8b4c2414
                         push               ecx                                           // 0x004128df    51
                         push               0xe                                           // 0x004128e0    6a0e
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x004128e2    e859000000
                         add                esp, 0x10                                     // 0x004128e7    83c410
                         pop                edi                                           // 0x004128ea    5f
                         {disp32} mov       dword ptr [data_bytes + 0x20e8], 0x00000000   // 0x004128eb    c705e8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20c8], 0x00000000   // 0x004128f5    c705c8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20a8], 0x00000000   // 0x004128ff    c705a8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x2088], 0x00000000   // 0x00412909    c70588809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20ec], 0x3f800000   // 0x00412913    c705ec809c000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x20cc], 0x3f800000   // 0x0041291d    c705cc809c000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x20ac], 0x3f800000   // 0x00412927    c705ac809c000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x208c], 0x3f800000   // 0x00412931    c7058c809c000000803f
                         pop                esi                                           // 0x0041293b    5e
                         add                esp, 0x0c                                     // 0x0041293c    83c40c
                         ret                                                              // 0x0041293f    c3
_SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl:    push               esi                                           // 0x00412940    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00412941    8b74240c
                         push               edi                                           // 0x00412945    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00412946    8b7c240c
                         cmp                dword ptr [edi * 0x4 + 0x00eca1f0], esi       // 0x0041294a    3934bdf0a1ec00
                         {disp8} je         _jmp_addr_0x00412971                          // 0x00412951    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412953    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00412958    8b08
                         push               esi                                           // 0x0041295a    56
                         push               edi                                           // 0x0041295b    57
                         push               eax                                           // 0x0041295c    50
                         call               dword ptr [ecx + 0x50]                        // 0x0041295d    ff5150
                         test               eax, eax                                      // 0x00412960    85c0
                         {disp8} je         _jmp_addr_0x00412967                          // 0x00412962    7403
                         or                 esi, 0xffffffff                               // 0x00412964    83ceff
_jmp_addr_0x00412967:    {disp32} mov       dword ptr [edi * 0x4 + 0x00eca1f0], esi       // 0x00412967    8934bdf0a1ec00
                         pop                edi                                           // 0x0041296e    5f
                         pop                esi                                           // 0x0041296f    5e
                         ret                                                              // 0x00412970    c3
_jmp_addr_0x00412971:    pop                edi                                           // 0x00412971    5f
                         xor.s              eax, eax                                      // 0x00412972    33c0
                         pop                esi                                           // 0x00412974    5e
                         ret                                                              // 0x00412975    c3
                         nop                                                              // 0x00412976    90
                         nop                                                              // 0x00412977    90
                         nop                                                              // 0x00412978    90
                         nop                                                              // 0x00412979    90
                         nop                                                              // 0x0041297a    90
                         nop                                                              // 0x0041297b    90
                         nop                                                              // 0x0041297c    90
                         nop                                                              // 0x0041297d    90
                         nop                                                              // 0x0041297e    90
                         nop                                                              // 0x0041297f    90
?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z:
                                                                   {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00412980    8b44242c
                         sub                esp, 0x08                                     // 0x00412984    83ec08
                         test               eax, eax                                      // 0x00412987    85c0
                         push               ebp                                           // 0x00412989    55
                         push               esi                                           // 0x0041298a    56
                         push               edi                                           // 0x0041298b    57
                         {disp8} je         _jmp_addr_0x004129cb                          // 0x0041298c    743d
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0041298e    8d44241c
                         push               eax                                           // 0x00412992    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00412993    8d4c241c
                         push               ecx                                           // 0x00412997    51
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x00412998    e8a3f1ffff
                         fstp               st(0)                                         // 0x0041299d    ddd8
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0041299f    8d54242c
                         push               edx                                           // 0x004129a3    52
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x004129a4    8d44242c
                         push               eax                                           // 0x004129a8    50
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x004129a9    e892f1ffff
                         fstp               st(0)                                         // 0x004129ae    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x004129b0    8b4c2454
                         push               ecx                                           // 0x004129b4    51
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x004129b5    e8b6f4ffff
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                   // 0x004129ba    8b54245c
                         push               edx                                           // 0x004129be    52
                         mov.s              ebp, eax                                      // 0x004129bf    8be8
                         call               ?adjusty@SetupThing@@SAHH@Z                   // 0x004129c1    e8aaf4ffff
                         add                esp, 0x18                                     // 0x004129c6    83c418
                         {disp8} jmp        _jmp_addr_0x004129d3                          // 0x004129c9    eb08
_jmp_addr_0x004129cb:    {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x004129cb    8b442448
                         {disp8} mov        ebp, dword ptr [esp + 0x44]                   // 0x004129cf    8b6c2444
_jmp_addr_0x004129d3:    {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x004129d3    8b54243c
                         or                 ecx, 0xffffffff                               // 0x004129d7    83c9ff
                         test               edx, edx                                      // 0x004129da    85d2
                         {disp8} je         _jmp_addr_0x004129e0                          // 0x004129dc    7402
                         mov                ecx, dword ptr [edx]                          // 0x004129de    8b0a
_jmp_addr_0x004129e0:    {disp32} mov       esi, dword ptr [data_bytes + 0x2078]          // 0x004129e0    8b3578809c00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x004129e6    8b54241c
                         and                ecx, 0x00ffffff                               // 0x004129ea    81e1ffffff00
                         shl                esi, 0x18                                     // 0x004129f0    c1e618
                         add.s              esi, ecx                                      // 0x004129f3    03f1
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x004129f5    8b4c2424
                         cmp.s              edx, ecx                                      // 0x004129f9    3bd1
                         push               ebx                                           // 0x004129fb    53
                         {disp8} jle        _jmp_addr_0x00412a36                          // 0x004129fc    7e38
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x004129fe    d9442430
                         mov.s              edi, edx                                      // 0x00412a02    8bfa
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00412a04    d944242c
                         mov.s              edx, ecx                                      // 0x00412a08    8bd1
                         mov.s              ecx, edi                                      // 0x00412a0a    8bcf
                         fld                st(1)                                         // 0x00412a0c    d9c1
                         {disp8} mov        edi, dword ptr [esp + 0x38]                   // 0x00412a0e    8b7c2438
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00412a12    d95c242c
                         {disp8} mov        dword ptr [esp + 0x30], edi                   // 0x00412a16    897c2430
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00412a1a    8b7c241c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00412a1e    d95c2434
                         mov.s              ebx, ecx                                      // 0x00412a22    8bd9
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00412a24    89542420
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00412a28    894c2428
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x00412a2c    895c241c
                         {disp8} mov        dword ptr [esp + 0x24], edi                   // 0x00412a30    897c2424
                         {disp8} jmp        _jmp_addr_0x00412a3e                          // 0x00412a34    eb08
_jmp_addr_0x00412a36:    {disp8} fld        dword ptr [esp + 0x38]                        // 0x00412a36    d9442438
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00412a3a    8b5c241c
_jmp_addr_0x00412a3e:    cmp                ebx, dword ptr [esp + 0x24]                   // 0x00412a3e    3b5c2424
                         {disp8} jle        _jmp_addr_0x00412a5a                          // 0x00412a42    7e16
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00412a44    d944242c
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00412a48    894c241c
                         fld                st(1)                                         // 0x00412a4c    d9c1
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x00412a4e    895c2424
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00412a52    d95c242c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00412a56    d95c2434
_jmp_addr_0x00412a5a:    cmp.s              edx, eax                                      // 0x00412a5a    3bd0
                         pop                ebx                                           // 0x00412a5c    5b
                         {disp32} jge       _jmp_addr_0x00412e98                          // 0x00412a5d    0f8d35040000
                         cmp.s              ecx, ebp                                      // 0x00412a63    3bcd
                         {disp32} jle       _jmp_addr_0x00412e98                          // 0x00412a65    0f8e2d040000
                         cmp.s              ecx, edx                                      // 0x00412a6b    3bca
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00412a6d    d90598a38a00
                         {disp8} jle        _jmp_addr_0x00412a89                          // 0x00412a73    7e14
                         fstp               st(0)                                         // 0x00412a75    ddd8
                         mov.s              edi, ecx                                      // 0x00412a77    8bf9
                         fld                st(0)                                         // 0x00412a79    d9c0
                         sub.s              edi, edx                                      // 0x00412a7b    2bfa
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00412a7d    d864242c
                         {disp8} mov        dword ptr [esp + 0x48], edi                   // 0x00412a81    897c2448
                         {disp8} fidiv      dword ptr [esp + 0x48]                        // 0x00412a85    da742448
_jmp_addr_0x00412a89:    cmp.s              edx, ebp                                      // 0x00412a89    3bd5
                         {disp8} jge        _jmp_addr_0x00412aa9                          // 0x00412a8b    7d1c
                         mov.s              edi, ebp                                      // 0x00412a8d    8bfd
                         sub.s              edi, edx                                      // 0x00412a8f    2bfa
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x00412a91    897c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00412a95    db44241c
                         mov.s              edx, ebp                                      // 0x00412a99    8bd5
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00412a9b    8954241c
                         fmul               st, st(1)                                     // 0x00412a9f    d8c9
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x00412aa1    d844242c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00412aa5    d95c242c
_jmp_addr_0x00412aa9:    cmp.s              ecx, eax                                      // 0x00412aa9    3bc8
                         {disp8} jle        _jmp_addr_0x00412ac5                          // 0x00412aab    7e18
                         sub.s              ecx, eax                                      // 0x00412aad    2bc8
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00412aaf    894c2424
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00412ab3    db442424
                         mov.s              ecx, eax                                      // 0x00412ab7    8bc8
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00412ab9    894c2424
                         fmul               st, st(1)                                     // 0x00412abd    d8c9
                         fsubp              st(2), st                                     // 0x00412abf    deea
                         fstp               st(0)                                         // 0x00412ac1    ddd8
                         {disp8} jmp        _jmp_addr_0x00412ac7                          // 0x00412ac3    eb02
_jmp_addr_0x00412ac5:    fstp               st(0)                                         // 0x00412ac5    ddd8
_jmp_addr_0x00412ac7:    cmp.s              edx, ecx                                      // 0x00412ac7    3bd1
                         {disp32} jg        _jmp_addr_0x00412e98                          // 0x00412ac9    0f8fc9030000
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00412acf    db442418
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00412ad3    8b4c242c
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00412ad7    8b442428
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00412adb    8b542430
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00412adf    d805b4a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x2098], eax          // 0x00412ae5    a398809c00
                         mov.s              eax, ecx                                      // 0x00412aea    8bc1
                         {disp32} mov       dword ptr [data_bytes + 0x20bc], eax          // 0x00412aec    a3bc809c00
                         {disp32} fst       dword ptr [data_bytes + 0x2080]               // 0x00412af1    d91580809c00
                         {disp32} mov       dword ptr [data_bytes + 0x209c], ecx          // 0x00412af7    890d9c809c00
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00412afd    db44241c
                         {disp32} mov       dword ptr [data_bytes + 0x2090], esi          // 0x00412b01    893590809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20b8], edx          // 0x00412b07    8915b8809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20b0], esi          // 0x00412b0d    8935b0809c00
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00412b13    d805b4a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x20d8], edx          // 0x00412b19    8915d8809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20d0], esi          // 0x00412b1f    8935d0809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20f0], esi          // 0x00412b25    8935f0809c00
                         {disp32} fst       dword ptr [data_bytes + 0x2084]               // 0x00412b2b    d91584809c00
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x00412b31    db442420
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00412b35    d805b4a38a00
                         {disp8} fst        dword ptr [esp + 0x48]                        // 0x00412b3b    d9542448
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x00412b3f    8b4c2448
                         {disp32} fstp      dword ptr [data_bytes + 0x20a0]               // 0x00412b43    d91da0809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20c0], ecx          // 0x00412b49    890dc0809c00
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00412b4f    8b4c2428
                         {disp32} fstp      dword ptr [data_bytes + 0x20a4]               // 0x00412b53    d91da4809c00
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00412b59    db442424
                         {disp32} mov       dword ptr [data_bytes + 0x20f8], ecx          // 0x00412b5d    890df8809c00
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00412b63    d805b4a38a00
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x00412b69    d954242c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00412b6d    8b44242c
                         {disp32} fstp      dword ptr [data_bytes + 0x20c4]               // 0x00412b71    d91dc4809c00
                         fld                st(1)                                         // 0x00412b77    d9c1
                         {disp32} mov       dword ptr [data_bytes + 0x20e4], eax          // 0x00412b79    a3e4809c00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x272714]        // 0x00412b7e    a11487c300
                         {disp32} fstp      dword ptr [data_bytes + 0x20dc]               // 0x00412b83    d91ddc809c00
                         test               eax, eax                                      // 0x00412b89    85c0
                         {disp32} fstp      dword ptr [data_bytes + 0x20e0]               // 0x00412b8b    d91de0809c00
                         {disp32} fstp      dword ptr [data_bytes + 0x20fc]               // 0x00412b91    d91dfc809c00
                         {disp8} je         _jmp_addr_0x00412bf2                          // 0x00412b97    7459
                         {disp8} mov        esi, dword ptr [esp + 0x38]                   // 0x00412b99    8b742438
                         test               esi, esi                                      // 0x00412b9d    85f6
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x00412b9f    89354ca6ec00
                         {disp8} je         _jmp_addr_0x00412bf2                          // 0x00412ba5    744b
                         mov                eax, dword ptr [esi]                          // 0x00412ba7    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x00412ba9    8b3d18a6ec00
                         xor.s              edx, edx                                      // 0x00412baf    33d2
                         mov.s              ecx, esi                                      // 0x00412bb1    8bce
                         call               dword ptr [edi + eax*8]                       // 0x00412bb3    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x00412bb6    a114a6ec00
                         test               eax, eax                                      // 0x00412bbb    85c0
                         {disp8} jne        _jmp_addr_0x00412bce                          // 0x00412bbd    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x00412bbf    f6460504
                         {disp8} jne        _jmp_addr_0x00412bce                          // 0x00412bc3    7509
                         push               0x0                                           // 0x00412bc5    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x00412bc7    e884d34100
                         {disp8} jmp        _jmp_addr_0x00412bd5                          // 0x00412bcc    eb07
_jmp_addr_0x00412bce:    push               0x0                                           // 0x00412bce    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x00412bd0    e83bd34100
_jmp_addr_0x00412bd5:    xor.s              ecx, ecx                                      // 0x00412bd5    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x00412bd7    8a4e05
                         not                cl                                            // 0x00412bda    f6d1
                         add                esp, 0x04                                     // 0x00412bdc    83c404
                         and                ecx, 0x01                                     // 0x00412bdf    83e101
                         shl                ecx, 1                                        // 0x00412be2    d1e1
                         or                 ecx, 1                                        // 0x00412be4    83c901
                         push               ecx                                           // 0x00412be7    51
                         push               0x16                                          // 0x00412be8    6a16
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x00412bea    e851fdffff
                         add                esp, 0x08                                     // 0x00412bef    83c408
_jmp_addr_0x00412bf2:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x00412bf2    a128a2ec00
                         cmp                eax, -0x01                                    // 0x00412bf7    83f8ff
                         {disp8} jne        _jmp_addr_0x00412c2a                          // 0x00412bfa    752e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412bfc    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00412c01    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00412c03    8d4c2410
                         push               ecx                                           // 0x00412c07    51
                         push               0xe                                           // 0x00412c08    6a0e
                         push               eax                                           // 0x00412c0a    50
                         call               dword ptr [edx + 0x54]                        // 0x00412c0b    ff5254
                         test               eax, eax                                      // 0x00412c0e    85c0
                         {disp8} je         _jmp_addr_0x00412c1e                          // 0x00412c10    740c
                         {disp32} mov       dword ptr [data_bytes + 0x504228], 0xffffffff // 0x00412c12    c70528a2ec00ffffffff
                         {disp8} jmp        _jmp_addr_0x00412c2e                          // 0x00412c1c    eb10
_jmp_addr_0x00412c1e:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00412c1e    8b542410
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edx        // 0x00412c22    891528a2ec00
                         {disp8} jmp        _jmp_addr_0x00412c2e                          // 0x00412c28    eb04
_jmp_addr_0x00412c2a:    {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00412c2a    89442410
_jmp_addr_0x00412c2e:    {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x00412c2e    a14ca2ec00
                         or                 edi, 0xffffffff                               // 0x00412c33    83cfff
                         cmp.s              eax, edi                                      // 0x00412c36    3bc7
                         {disp8} jne        _jmp_addr_0x00412c64                          // 0x00412c38    752a
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412c3a    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00412c3f    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00412c41    8d54240c
                         push               edx                                           // 0x00412c45    52
                         push               0x17                                          // 0x00412c46    6a17
                         push               eax                                           // 0x00412c48    50
                         call               dword ptr [ecx + 0x54]                        // 0x00412c49    ff5154
                         test               eax, eax                                      // 0x00412c4c    85c0
                         {disp8} je         _jmp_addr_0x00412c59                          // 0x00412c4e    7409
                         mov.s              eax, edi                                      // 0x00412c50    8bc7
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00412c52    a34ca2ec00
                         {disp8} jmp        _jmp_addr_0x00412c68                          // 0x00412c57    eb0f
_jmp_addr_0x00412c59:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00412c59    8b44240c
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00412c5d    a34ca2ec00
                         {disp8} jmp        _jmp_addr_0x00412c68                          // 0x00412c62    eb04
_jmp_addr_0x00412c64:    {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00412c64    8944240c
_jmp_addr_0x00412c68:    {disp8} mov        cl, byte ptr [esp + 0x4c]                     // 0x00412c68    8a4c244c
                         test               cl, cl                                        // 0x00412c6c    84c9
                         {disp8} jne        _jmp_addr_0x00412cbd                          // 0x00412c6e    754d
                         cmp                eax, 0x08                                     // 0x00412c70    83f808
                         {disp8} je         _jmp_addr_0x00412c93                          // 0x00412c73    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412c75    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00412c7a    8b08
                         push               0x8                                           // 0x00412c7c    6a08
                         push               0x17                                          // 0x00412c7e    6a17
                         push               eax                                           // 0x00412c80    50
                         call               dword ptr [ecx + 0x50]                        // 0x00412c81    ff5150
                         neg                eax                                           // 0x00412c84    f7d8
                         sbb.s              eax, eax                                      // 0x00412c86    1bc0
                         and                eax, 0xfffffff7                               // 0x00412c88    83e0f7
                         add                eax, 0x08                                     // 0x00412c8b    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00412c8e    a34ca2ec00
_jmp_addr_0x00412c93:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x00412c93    a128a2ec00
                         test               eax, eax                                      // 0x00412c98    85c0
                         {disp32} je        _jmp_addr_0x00412d49                          // 0x00412c9a    0f84a9000000
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412ca0    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00412ca5    8b10
                         push               0x0                                           // 0x00412ca7    6a00
                         push               0xe                                           // 0x00412ca9    6a0e
                         push               eax                                           // 0x00412cab    50
                         call               dword ptr [edx + 0x50]                        // 0x00412cac    ff5250
                         neg                eax                                           // 0x00412caf    f7d8
                         sbb.s              eax, eax                                      // 0x00412cb1    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x00412cb3    a328a2ec00
                         {disp32} jmp       _jmp_addr_0x00412d49                          // 0x00412cb8    e98c000000
_jmp_addr_0x00412cbd:    {disp32} mov       ecx, dword ptr [data_bytes + 0x504228]        // 0x00412cbd    8b0d28a2ec00
                         test               ecx, ecx                                      // 0x00412cc3    85c9
                         {disp8} je         _jmp_addr_0x00412ce4                          // 0x00412cc5    741d
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412cc7    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00412ccc    8b08
                         push               0x0                                           // 0x00412cce    6a00
                         push               0xe                                           // 0x00412cd0    6a0e
                         push               eax                                           // 0x00412cd2    50
                         call               dword ptr [ecx + 0x50]                        // 0x00412cd3    ff5150
                         neg                eax                                           // 0x00412cd6    f7d8
                         sbb.s              eax, eax                                      // 0x00412cd8    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x00412cda    a328a2ec00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x00412cdf    a14ca2ec00
_jmp_addr_0x00412ce4:    cmp                eax, 0x04                                     // 0x00412ce4    83f804
                         {disp8} je         _jmp_addr_0x00412d07                          // 0x00412ce7    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412ce9    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00412cee    8b10
                         push               0x4                                           // 0x00412cf0    6a04
                         push               0x17                                          // 0x00412cf2    6a17
                         push               eax                                           // 0x00412cf4    50
                         call               dword ptr [edx + 0x50]                        // 0x00412cf5    ff5250
                         neg                eax                                           // 0x00412cf8    f7d8
                         sbb.s              eax, eax                                      // 0x00412cfa    1bc0
                         and                eax, 0xfffffffb                               // 0x00412cfc    83e0fb
                         add                eax, 0x04                                     // 0x00412cff    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00412d02    a34ca2ec00
_jmp_addr_0x00412d07:    {disp32} fld       dword ptr [_near_clipping]                    // 0x00412d07    d905e039e800
                         {disp8} fdiv       dword ptr [esp + 0x50]                        // 0x00412d0d    d8742450
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00412d11    d90590a38a00
                         fsub               st, st(1)                                     // 0x00412d17    d8e1
                         {disp32} fst       dword ptr [data_bytes + 0x20e8]               // 0x00412d19    d915e8809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20c8]               // 0x00412d1f    d915c8809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20a8]               // 0x00412d25    d915a8809c00
                         {disp32} fstp      dword ptr [data_bytes + 0x2088]               // 0x00412d2b    d91d88809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20ec]               // 0x00412d31    d915ec809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20cc]               // 0x00412d37    d915cc809c00
                         {disp32} fst       dword ptr [data_bytes + 0x20ac]               // 0x00412d3d    d915ac809c00
                         {disp32} fstp      dword ptr [data_bytes + 0x208c]               // 0x00412d43    d91d8c809c00
_jmp_addr_0x00412d49:    {disp32} mov       eax, dword ptr [data_bytes + 0x504230]        // 0x00412d49    a130a2ec00
                         cmp.s              eax, edi                                      // 0x00412d4e    3bc7
                         {disp8} jne        _jmp_addr_0x00412d7b                          // 0x00412d50    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412d52    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00412d57    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00412d59    8d542440
                         push               edx                                           // 0x00412d5d    52
                         push               0x10                                          // 0x00412d5e    6a10
                         push               eax                                           // 0x00412d60    50
                         call               dword ptr [ecx + 0x54]                        // 0x00412d61    ff5154
                         test               eax, eax                                      // 0x00412d64    85c0
                         {disp8} je         _jmp_addr_0x00412d70                          // 0x00412d66    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504230], edi        // 0x00412d68    893d30a2ec00
                         {disp8} jmp        _jmp_addr_0x00412d83                          // 0x00412d6e    eb13
_jmp_addr_0x00412d70:    {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x00412d70    8b442440
                         {disp32} mov       dword ptr [data_bytes + 0x504230], eax        // 0x00412d74    a330a2ec00
                         {disp8} jmp        _jmp_addr_0x00412d7f                          // 0x00412d79    eb04
_jmp_addr_0x00412d7b:    {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00412d7b    89442440
_jmp_addr_0x00412d7f:    test               eax, eax                                      // 0x00412d7f    85c0
                         {disp8} je         _jmp_addr_0x00412d9b                          // 0x00412d81    7418
_jmp_addr_0x00412d83:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00412d83    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00412d88    8b08
                         push               0x0                                           // 0x00412d8a    6a00
                         push               0x10                                          // 0x00412d8c    6a10
                         push               eax                                           // 0x00412d8e    50
                         call               dword ptr [ecx + 0x50]                        // 0x00412d8f    ff5150
                         neg                eax                                           // 0x00412d92    f7d8
                         sbb.s              eax, eax                                      // 0x00412d94    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504230], eax        // 0x00412d96    a330a2ec00
_jmp_addr_0x00412d9b:    push               0x6                                           // 0x00412d9b    6a06
                         push               0x009c8100                                    // 0x00412d9d    6800819c00
                         push               0x4                                           // 0x00412da2    6a04
                         push               0x009c8080                                    // 0x00412da4    6880809c00
                         push               0x000001c4                                    // 0x00412da9    68c4010000
                         push               0x4                                           // 0x00412dae    6a04
                         call               _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl                          // 0x00412db0    e8fb774100
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x00412db5    8b442458
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x504230]        // 0x00412db9    8b0d30a2ec00
                         add                esp, 0x18                                     // 0x00412dbf    83c418
                         cmp.s              ecx, eax                                      // 0x00412dc2    3bc8
                         mov.s              esi, eax                                      // 0x00412dc4    8bf0
                         {disp8} je         _jmp_addr_0x00412de7                          // 0x00412dc6    741f
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x00412dc8    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x00412dce    8b11
                         push               eax                                           // 0x00412dd0    50
                         push               0x10                                          // 0x00412dd1    6a10
                         push               ecx                                           // 0x00412dd3    51
                         call               dword ptr [edx + 0x50]                        // 0x00412dd4    ff5250
                         test               eax, eax                                      // 0x00412dd7    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504230], edi        // 0x00412dd9    893d30a2ec00
                         {disp8} jne        _jmp_addr_0x00412de7                          // 0x00412ddf    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504230], esi        // 0x00412de1    893530a2ec00
_jmp_addr_0x00412de7:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00412de7    8b44240c
                         cmp                dword ptr [data_bytes + 0x50424c], eax        // 0x00412deb    39054ca2ec00
                         mov.s              esi, eax                                      // 0x00412df1    8bf0
                         {disp8} je         _jmp_addr_0x00412e14                          // 0x00412df3    741f
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x00412df5    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x00412dfb    8b11
                         push               eax                                           // 0x00412dfd    50
                         push               0x17                                          // 0x00412dfe    6a17
                         push               ecx                                           // 0x00412e00    51
                         call               dword ptr [edx + 0x50]                        // 0x00412e01    ff5250
                         test               eax, eax                                      // 0x00412e04    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], edi        // 0x00412e06    893d4ca2ec00
                         {disp8} jne        _jmp_addr_0x00412e14                          // 0x00412e0c    7506
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], esi        // 0x00412e0e    89354ca2ec00
_jmp_addr_0x00412e14:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00412e14    8b442410
                         cmp                dword ptr [data_bytes + 0x504228], eax        // 0x00412e18    390528a2ec00
                         mov.s              esi, eax                                      // 0x00412e1e    8bf0
                         {disp8} je         _jmp_addr_0x00412e41                          // 0x00412e20    741f
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x00412e22    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x00412e28    8b11
                         push               eax                                           // 0x00412e2a    50
                         push               0xe                                           // 0x00412e2b    6a0e
                         push               ecx                                           // 0x00412e2d    51
                         call               dword ptr [edx + 0x50]                        // 0x00412e2e    ff5250
                         test               eax, eax                                      // 0x00412e31    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edi        // 0x00412e33    893d28a2ec00
                         {disp8} jne        _jmp_addr_0x00412e41                          // 0x00412e39    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504228], esi        // 0x00412e3b    893528a2ec00
_jmp_addr_0x00412e41:    pop                edi                                           // 0x00412e41    5f
                         pop                esi                                           // 0x00412e42    5e
                         {disp32} mov       dword ptr [data_bytes + 0x20e8], 0x00000000   // 0x00412e43    c705e8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20c8], 0x00000000   // 0x00412e4d    c705c8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20a8], 0x00000000   // 0x00412e57    c705a8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x2088], 0x00000000   // 0x00412e61    c70588809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20ec], 0x3f800000   // 0x00412e6b    c705ec809c000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x20cc], 0x3f800000   // 0x00412e75    c705cc809c000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x20ac], 0x3f800000   // 0x00412e7f    c705ac809c000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x208c], 0x3f800000   // 0x00412e89    c7058c809c000000803f
                         pop                ebp                                           // 0x00412e93    5d
                         add                esp, 0x08                                     // 0x00412e94    83c408
                         ret                                                              // 0x00412e97    c3
_jmp_addr_0x00412e98:    pop                edi                                           // 0x00412e98    5f
                         fstp               st(0)                                         // 0x00412e99    ddd8
                         pop                esi                                           // 0x00412e9b    5e
                         pop                ebp                                           // 0x00412e9c    5d
                         add                esp, 0x08                                     // 0x00412e9d    83c408
                         ret                                                              // 0x00412ea0    c3
                         nop                                                              // 0x00412ea1    90
                         nop                                                              // 0x00412ea2    90
                         nop                                                              // 0x00412ea3    90
                         nop                                                              // 0x00412ea4    90
                         nop                                                              // 0x00412ea5    90
                         nop                                                              // 0x00412ea6    90
                         nop                                                              // 0x00412ea7    90
                         nop                                                              // 0x00412ea8    90
                         nop                                                              // 0x00412ea9    90
                         nop                                                              // 0x00412eaa    90
                         nop                                                              // 0x00412eab    90
                         nop                                                              // 0x00412eac    90
                         nop                                                              // 0x00412ead    90
                         nop                                                              // 0x00412eae    90
                         nop                                                              // 0x00412eaf    90
?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z:
                                                 {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00412eb0    8b442438
                         sub                esp, 0x08                                     // 0x00412eb4    83ec08
                         test               eax, eax                                      // 0x00412eb7    85c0
                         {disp8} je         _jmp_addr_0x00412f02                          // 0x00412eb9    7447
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00412ebb    8d442410
                         push               eax                                           // 0x00412ebf    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00412ec0    8d4c2410
                         push               ecx                                           // 0x00412ec4    51
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x00412ec5    e876ecffff
                         fstp               st(0)                                         // 0x00412eca    ddd8
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00412ecc    8d542420
                         push               edx                                           // 0x00412ed0    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x00412ed1    8d442420
                         push               eax                                           // 0x00412ed5    50
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x00412ed6    e865ecffff
                         fstp               st(0)                                         // 0x00412edb    ddd8
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00412edd    8d4c2430
                         push               ecx                                           // 0x00412ee1    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x00412ee2    8d542430
                         push               edx                                           // 0x00412ee6    52
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x00412ee7    e854ecffff
                         fstp               st(0)                                         // 0x00412eec    ddd8
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00412eee    8d442440
                         push               eax                                           // 0x00412ef2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00412ef3    8d4c2440
                         push               ecx                                           // 0x00412ef7    51
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x00412ef8    e843ecffff
                         fstp               st(0)                                         // 0x00412efd    ddd8
                         add                esp, 0x20                                     // 0x00412eff    83c420
_jmp_addr_0x00412f02:    {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00412f02    8b44243c
                         test               eax, eax                                      // 0x00412f06    85c0
                         push               esi                                           // 0x00412f08    56
                         push               edi                                           // 0x00412f09    57
                         {disp8} je         _jmp_addr_0x00412f46                          // 0x00412f0a    743a
                         {disp32} mov       edi, dword ptr [data_bytes + 0x2078]          // 0x00412f0c    8b3d78809c00
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00412f12    8b442434
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x00412f16    8b4c2438
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00412f1a    8b54243c
                         {disp8} mov        esi, dword ptr [esp + 0x40]                   // 0x00412f1e    8b742440
                         shl                edi, 0x18                                     // 0x00412f22    c1e718
                         and                eax, 0x00ffffff                               // 0x00412f25    25ffffff00
                         and                ecx, 0x00ffffff                               // 0x00412f2a    81e1ffffff00
                         and                edx, 0x00ffffff                               // 0x00412f30    81e2ffffff00
                         and                esi, 0x00ffffff                               // 0x00412f36    81e6ffffff00
                         add.s              eax, edi                                      // 0x00412f3c    03c7
                         add.s              ecx, edi                                      // 0x00412f3e    03cf
                         add.s              edx, edi                                      // 0x00412f40    03d7
                         add.s              esi, edi                                      // 0x00412f42    03f7
                         {disp8} jmp        _jmp_addr_0x00412fb6                          // 0x00412f44    eb70
_jmp_addr_0x00412f46:    {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00412f46    8b4c2434
                         {disp32} mov       edi, dword ptr [data_bytes + 0x2078]          // 0x00412f4a    8b3d78809c00
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00412f50    8b542438
                         mov.s              eax, ecx                                      // 0x00412f54    8bc1
                         shr                eax, 0x18                                     // 0x00412f56    c1e818
                         imul               eax, edi                                      // 0x00412f59    0fafc7
                         {disp8} mov        esi, dword ptr [esp + 0x3c]                   // 0x00412f5c    8b74243c
                         and                ecx, 0x00ffffff                               // 0x00412f60    81e1ffffff00
                         shr                eax, 8                                        // 0x00412f66    c1e808
                         shl                eax, 0x18                                     // 0x00412f69    c1e018
                         add.s              eax, ecx                                      // 0x00412f6c    03c1
                         mov.s              ecx, edx                                      // 0x00412f6e    8bca
                         shr                ecx, 0x18                                     // 0x00412f70    c1e918
                         imul               ecx, edi                                      // 0x00412f73    0fafcf
                         and                edx, 0x00ffffff                               // 0x00412f76    81e2ffffff00
                         shr                ecx, 8                                        // 0x00412f7c    c1e908
                         shl                ecx, 0x18                                     // 0x00412f7f    c1e118
                         add.s              ecx, edx                                      // 0x00412f82    03ca
                         mov.s              edx, esi                                      // 0x00412f84    8bd6
                         shr                edx, 0x18                                     // 0x00412f86    c1ea18
                         imul               edx, edi                                      // 0x00412f89    0fafd7
                         and                esi, 0x00ffffff                               // 0x00412f8c    81e6ffffff00
                         shr                edx, 8                                        // 0x00412f92    c1ea08
                         push               ebx                                           // 0x00412f95    53
                         {disp8} mov        ebx, dword ptr [esp + 0x44]                   // 0x00412f96    8b5c2444
                         shl                edx, 0x18                                     // 0x00412f9a    c1e218
                         add.s              edx, esi                                      // 0x00412f9d    03d6
                         mov.s              esi, ebx                                      // 0x00412f9f    8bf3
                         shr                esi, 0x18                                     // 0x00412fa1    c1ee18
                         imul               esi, edi                                      // 0x00412fa4    0faff7
                         shr                esi, 8                                        // 0x00412fa7    c1ee08
                         and                ebx, 0x00ffffff                               // 0x00412faa    81e3ffffff00
                         shl                esi, 0x18                                     // 0x00412fb0    c1e618
                         add.s              esi, ebx                                      // 0x00412fb3    03f3
                         pop                ebx                                           // 0x00412fb5    5b
_jmp_addr_0x00412fb6:    {disp8} fild       dword ptr [esp + 0x14]                        // 0x00412fb6    db442414
                         {disp32} mov       dword ptr [data_bytes + 0x2090], eax          // 0x00412fba    a390809c00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x272714]        // 0x00412fbf    a11487c300
                         test               eax, eax                                      // 0x00412fc4    85c0
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00412fc6    d805b4a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x20f0], esi          // 0x00412fcc    8935f0809c00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x517494]        // 0x00412fd2    8b3594d4ed00
                         {disp32} mov       dword ptr [data_bytes + 0x2098], 0x00000000   // 0x00412fd8    c70598809c0000000000
                         {disp32} fstp      dword ptr [data_bytes + 0x2080]               // 0x00412fe2    d91d80809c00
                         {disp32} mov       dword ptr [data_bytes + 0x209c], 0x00000000   // 0x00412fe8    c7059c809c0000000000
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00412ff2    db442418
                         {disp32} mov       dword ptr [data_bytes + 0x20b8], 0x00000000   // 0x00412ff6    c705b8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20bc], 0x00000000   // 0x00413000    c705bc809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20b0], ecx          // 0x0041300a    890db0809c00
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00413010    d805b4a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x20d8], 0x00000000   // 0x00413016    c705d8809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20dc], 0x00000000   // 0x00413020    c705dc809c0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x20d0], edx          // 0x0041302a    8915d0809c00
                         {disp32} fstp      dword ptr [data_bytes + 0x2084]               // 0x00413030    d91d84809c00
                         {disp32} mov       dword ptr [data_bytes + 0x20f8], 0x00000000   // 0x00413036    c705f8809c0000000000
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00413040    db44241c
                         {disp32} mov       dword ptr [data_bytes + 0x20fc], 0x00000000   // 0x00413044    c705fc809c0000000000
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0041304e    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20a0]               // 0x00413054    d91da0809c00
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x0041305a    db442420
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0041305e    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20a4]               // 0x00413064    d91da4809c00
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x0041306a    db442424
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0041306e    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20c0]               // 0x00413074    d91dc0809c00
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x0041307a    db442428
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0041307e    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20c4]               // 0x00413084    d91dc4809c00
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0041308a    db44242c
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0041308e    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20e0]               // 0x00413094    d91de0809c00
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x0041309a    db442430
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0041309e    d805b4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x20e4]               // 0x004130a4    d91de4809c00
                         {disp8} je         _jmp_addr_0x00413101                          // 0x004130aa    7455
                         test               esi, esi                                      // 0x004130ac    85f6
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x004130ae    89354ca6ec00
                         {disp8} je         _jmp_addr_0x00413101                          // 0x004130b4    744b
                         mov                eax, dword ptr [esi]                          // 0x004130b6    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x004130b8    8b3d18a6ec00
                         xor.s              edx, edx                                      // 0x004130be    33d2
                         mov.s              ecx, esi                                      // 0x004130c0    8bce
                         call               dword ptr [edi + eax*8]                       // 0x004130c2    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x004130c5    a114a6ec00
                         test               eax, eax                                      // 0x004130ca    85c0
                         {disp8} jne        _jmp_addr_0x004130dd                          // 0x004130cc    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x004130ce    f6460504
                         {disp8} jne        _jmp_addr_0x004130dd                          // 0x004130d2    7509
                         push               0x0                                           // 0x004130d4    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x004130d6    e875ce4100
                         {disp8} jmp        _jmp_addr_0x004130e4                          // 0x004130db    eb07
_jmp_addr_0x004130dd:    push               0x0                                           // 0x004130dd    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x004130df    e82cce4100
_jmp_addr_0x004130e4:    xor.s              ecx, ecx                                      // 0x004130e4    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x004130e6    8a4e05
                         not                cl                                            // 0x004130e9    f6d1
                         add                esp, 0x04                                     // 0x004130eb    83c404
                         and                ecx, 0x01                                     // 0x004130ee    83e101
                         shl                ecx, 1                                        // 0x004130f1    d1e1
                         or                 ecx, 1                                        // 0x004130f3    83c901
                         push               ecx                                           // 0x004130f6    51
                         push               0x16                                          // 0x004130f7    6a16
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x004130f9    e842f8ffff
                         add                esp, 0x08                                     // 0x004130fe    83c408
_jmp_addr_0x00413101:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x00413101    a128a2ec00
                         or                 edi, 0xffffffff                               // 0x00413106    83cfff
                         cmp.s              eax, edi                                      // 0x00413109    3bc7
                         {disp8} jne        _jmp_addr_0x00413137                          // 0x0041310b    752a
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0041310d    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00413112    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x00413114    8d4c2448
                         push               ecx                                           // 0x00413118    51
                         push               0xe                                           // 0x00413119    6a0e
                         push               eax                                           // 0x0041311b    50
                         call               dword ptr [edx + 0x54]                        // 0x0041311c    ff5254
                         test               eax, eax                                      // 0x0041311f    85c0
                         {disp8} je         _jmp_addr_0x0041312b                          // 0x00413121    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edi        // 0x00413123    893d28a2ec00
                         {disp8} jmp        _jmp_addr_0x0041313b                          // 0x00413129    eb10
_jmp_addr_0x0041312b:    {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x0041312b    8b542448
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edx        // 0x0041312f    891528a2ec00
                         {disp8} jmp        _jmp_addr_0x0041313b                          // 0x00413135    eb04
_jmp_addr_0x00413137:    {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x00413137    89442448
_jmp_addr_0x0041313b:    {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0041313b    a14ca2ec00
                         cmp.s              eax, edi                                      // 0x00413140    3bc7
                         {disp8} jne        _jmp_addr_0x0041316d                          // 0x00413142    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413144    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00413149    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0041314b    8d542408
                         push               edx                                           // 0x0041314f    52
                         push               0x17                                          // 0x00413150    6a17
                         push               eax                                           // 0x00413152    50
                         call               dword ptr [ecx + 0x54]                        // 0x00413153    ff5154
                         test               eax, eax                                      // 0x00413156    85c0
                         {disp8} je         _jmp_addr_0x00413162                          // 0x00413158    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], edi        // 0x0041315a    893d4ca2ec00
                         {disp8} jmp        _jmp_addr_0x00413171                          // 0x00413160    eb0f
_jmp_addr_0x00413162:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00413162    8b442408
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00413166    a34ca2ec00
                         {disp8} jmp        _jmp_addr_0x00413171                          // 0x0041316b    eb04
_jmp_addr_0x0041316d:    {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0041316d    89442408
_jmp_addr_0x00413171:    {disp32} mov       eax, dword ptr [data_bytes + 0x504230]        // 0x00413171    a130a2ec00
                         cmp.s              eax, edi                                      // 0x00413176    3bc7
                         {disp8} jne        _jmp_addr_0x004131a3                          // 0x00413178    7529
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0041317a    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0041317f    8b08
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00413181    8d54240c
                         push               edx                                           // 0x00413185    52
                         push               0x10                                          // 0x00413186    6a10
                         push               eax                                           // 0x00413188    50
                         call               dword ptr [ecx + 0x54]                        // 0x00413189    ff5154
                         test               eax, eax                                      // 0x0041318c    85c0
                         {disp8} je         _jmp_addr_0x00413198                          // 0x0041318e    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504230], edi        // 0x00413190    893d30a2ec00
                         {disp8} jmp        _jmp_addr_0x004131a7                          // 0x00413196    eb0f
_jmp_addr_0x00413198:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00413198    8b44240c
                         {disp32} mov       dword ptr [data_bytes + 0x504230], eax        // 0x0041319c    a330a2ec00
                         {disp8} jmp        _jmp_addr_0x004131a7                          // 0x004131a1    eb04
_jmp_addr_0x004131a3:    {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x004131a3    8944240c
_jmp_addr_0x004131a7:    cmp                dword ptr [data_bytes + 0x50424c], 0x08       // 0x004131a7    833d4ca2ec0008
                         {disp8} je         _jmp_addr_0x004131ce                          // 0x004131ae    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004131b0    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x004131b5    8b08
                         push               0x8                                           // 0x004131b7    6a08
                         push               0x17                                          // 0x004131b9    6a17
                         push               eax                                           // 0x004131bb    50
                         call               dword ptr [ecx + 0x50]                        // 0x004131bc    ff5150
                         neg                eax                                           // 0x004131bf    f7d8
                         sbb.s              eax, eax                                      // 0x004131c1    1bc0
                         and                eax, 0xfffffff7                               // 0x004131c3    83e0f7
                         add                eax, 0x08                                     // 0x004131c6    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x004131c9    a34ca2ec00
_jmp_addr_0x004131ce:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x004131ce    a128a2ec00
                         test               eax, eax                                      // 0x004131d3    85c0
                         {disp8} je         _jmp_addr_0x004131ef                          // 0x004131d5    7418
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004131d7    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004131dc    8b10
                         push               0x0                                           // 0x004131de    6a00
                         push               0xe                                           // 0x004131e0    6a0e
                         push               eax                                           // 0x004131e2    50
                         call               dword ptr [edx + 0x50]                        // 0x004131e3    ff5250
                         neg                eax                                           // 0x004131e6    f7d8
                         sbb.s              eax, eax                                      // 0x004131e8    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x004131ea    a328a2ec00
_jmp_addr_0x004131ef:    {disp32} mov       eax, dword ptr [data_bytes + 0x504230]        // 0x004131ef    a130a2ec00
                         test               eax, eax                                      // 0x004131f4    85c0
                         {disp8} je         _jmp_addr_0x00413210                          // 0x004131f6    7418
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004131f8    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x004131fd    8b08
                         push               0x0                                           // 0x004131ff    6a00
                         push               0x10                                          // 0x00413201    6a10
                         push               eax                                           // 0x00413203    50
                         call               dword ptr [ecx + 0x50]                        // 0x00413204    ff5150
                         neg                eax                                           // 0x00413207    f7d8
                         sbb.s              eax, eax                                      // 0x00413209    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504230], eax        // 0x0041320b    a330a2ec00
_jmp_addr_0x00413210:    push               0x6                                           // 0x00413210    6a06
                         push               0x009c8100                                    // 0x00413212    6800819c00
                         push               0x4                                           // 0x00413217    6a04
                         push               0x009c8080                                    // 0x00413219    6880809c00
                         push               0x000001c4                                    // 0x0041321e    68c4010000
                         push               0x4                                           // 0x00413223    6a04
                         call               _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl                          // 0x00413225    e886734100
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x0041322a    8b442460
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x504228]        // 0x0041322e    8b0d28a2ec00
                         add                esp, 0x18                                     // 0x00413234    83c418
                         cmp.s              ecx, eax                                      // 0x00413237    3bc8
                         mov.s              esi, eax                                      // 0x00413239    8bf0
                         {disp8} je         _jmp_addr_0x0041325c                          // 0x0041323b    741f
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x0041323d    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x00413243    8b11
                         push               eax                                           // 0x00413245    50
                         push               0xe                                           // 0x00413246    6a0e
                         push               ecx                                           // 0x00413248    51
                         call               dword ptr [edx + 0x50]                        // 0x00413249    ff5250
                         test               eax, eax                                      // 0x0041324c    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], edi        // 0x0041324e    893d28a2ec00
                         {disp8} jne        _jmp_addr_0x0041325c                          // 0x00413254    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504228], esi        // 0x00413256    893528a2ec00
_jmp_addr_0x0041325c:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0041325c    8b442408
                         cmp                dword ptr [data_bytes + 0x50424c], eax        // 0x00413260    39054ca2ec00
                         mov.s              esi, eax                                      // 0x00413266    8bf0
                         {disp8} je         _jmp_addr_0x00413289                          // 0x00413268    741f
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x0041326a    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x00413270    8b11
                         push               eax                                           // 0x00413272    50
                         push               0x17                                          // 0x00413273    6a17
                         push               ecx                                           // 0x00413275    51
                         call               dword ptr [edx + 0x50]                        // 0x00413276    ff5250
                         test               eax, eax                                      // 0x00413279    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], edi        // 0x0041327b    893d4ca2ec00
                         {disp8} jne        _jmp_addr_0x00413289                          // 0x00413281    7506
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], esi        // 0x00413283    89354ca2ec00
_jmp_addr_0x00413289:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00413289    8b44240c
                         cmp                dword ptr [data_bytes + 0x504230], eax        // 0x0041328d    390530a2ec00
                         mov.s              esi, eax                                      // 0x00413293    8bf0
                         {disp8} je         _jmp_addr_0x004132b6                          // 0x00413295    741f
                         {disp32} mov       ecx, dword ptr [_Direct3DDevice7]             // 0x00413297    8b0d38a6ec00
                         mov                edx, dword ptr [ecx]                          // 0x0041329d    8b11
                         push               eax                                           // 0x0041329f    50
                         push               0x10                                          // 0x004132a0    6a10
                         push               ecx                                           // 0x004132a2    51
                         call               dword ptr [edx + 0x50]                        // 0x004132a3    ff5250
                         test               eax, eax                                      // 0x004132a6    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504230], edi        // 0x004132a8    893d30a2ec00
                         {disp8} jne        _jmp_addr_0x004132b6                          // 0x004132ae    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504230], esi        // 0x004132b0    893530a2ec00
_jmp_addr_0x004132b6:    pop                edi                                           // 0x004132b6    5f
                         pop                esi                                           // 0x004132b7    5e
                         add                esp, 0x08                                     // 0x004132b8    83c408
                         ret                                                              // 0x004132bb    c3
                         nop                                                              // 0x004132bc    90
                         nop                                                              // 0x004132bd    90
                         nop                                                              // 0x004132be    90
                         nop                                                              // 0x004132bf    90
?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z:
                                            {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004132c0    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x004132c4    8b4c240c
                         cmp.s              eax, ecx                                      // 0x004132c8    3bc1
                         push               ebx                                           // 0x004132ca    53
                         push               ebp                                           // 0x004132cb    55
                         push               esi                                           // 0x004132cc    56
                         push               edi                                           // 0x004132cd    57
                         {disp8} jle        _jmp_addr_0x004132fc                          // 0x004132ce    7e2c
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x004132d0    8b542428
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x004132d4    8b742430
                         xor.s              eax, ecx                                      // 0x004132d8    33c1
                         xor.s              ecx, eax                                      // 0x004132da    33c8
                         xor.s              eax, ecx                                      // 0x004132dc    33c1
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x004132de    89442414
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x004132e2    8b442424
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x004132e6    894c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x004132ea    8b4c242c
                         xor.s              eax, edx                                      // 0x004132ee    33c2
                         xor.s              ecx, esi                                      // 0x004132f0    33ce
                         xor.s              edx, eax                                      // 0x004132f2    33d0
                         xor.s              esi, ecx                                      // 0x004132f4    33f1
                         xor.s              eax, edx                                      // 0x004132f6    33c2
                         xor.s              ecx, esi                                      // 0x004132f8    33ce
                         {disp8} jmp        _jmp_addr_0x0041330c                          // 0x004132fa    eb10
_jmp_addr_0x004132fc:    {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x004132fc    8b742430
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00413300    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00413304    8b542428
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00413308    8b442424
_jmp_addr_0x0041330c:    {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0041330c    8b7c2418
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x00413310    8b5c2420
                         cmp.s              edi, ebx                                      // 0x00413314    3bfb
                         {disp8} jle        _jmp_addr_0x0041332a                          // 0x00413316    7e12
                         xor.s              edi, ebx                                      // 0x00413318    33fb
                         xor.s              eax, ecx                                      // 0x0041331a    33c1
                         xor.s              edx, esi                                      // 0x0041331c    33d6
                         xor.s              ebx, edi                                      // 0x0041331e    33df
                         xor.s              ecx, eax                                      // 0x00413320    33c8
                         xor.s              esi, edx                                      // 0x00413322    33f2
                         xor.s              edi, ebx                                      // 0x00413324    33fb
                         xor.s              eax, ecx                                      // 0x00413326    33c1
                         xor.s              edx, esi                                      // 0x00413328    33d6
_jmp_addr_0x0041332a:    {disp8} mov        ebp, dword ptr [esp + 0x38]                   // 0x0041332a    8b6c2438
                         push               ebp                                           // 0x0041332e    55
                         {disp8} mov        ebp, dword ptr [esp + 0x38]                   // 0x0041332f    8b6c2438
                         push               ebp                                           // 0x00413333    55
                         push               esi                                           // 0x00413334    56
                         push               ecx                                           // 0x00413335    51
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00413336    8b4c242c
                         push               edx                                           // 0x0041333a    52
                         push               eax                                           // 0x0041333b    50
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0041333c    8b44242c
                         push               ebx                                           // 0x00413340    53
                         push               eax                                           // 0x00413341    50
                         push               ebx                                           // 0x00413342    53
                         push               ecx                                           // 0x00413343    51
                         push               edi                                           // 0x00413344    57
                         push               ecx                                           // 0x00413345    51
                         push               edi                                           // 0x00413346    57
                         push               eax                                           // 0x00413347    50
                         call               ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z     // 0x00413348    e863fbffff
                         add                esp, 0x38                                     // 0x0041334d    83c438
                         pop                edi                                           // 0x00413350    5f
                         pop                esi                                           // 0x00413351    5e
                         pop                ebp                                           // 0x00413352    5d
                         pop                ebx                                           // 0x00413353    5b
                         ret                                                              // 0x00413354    c3
                         nop                                                              // 0x00413355    90
                         nop                                                              // 0x00413356    90
                         nop                                                              // 0x00413357    90
                         nop                                                              // 0x00413358    90
                         nop                                                              // 0x00413359    90
                         nop                                                              // 0x0041335a    90
                         nop                                                              // 0x0041335b    90
                         nop                                                              // 0x0041335c    90
                         nop                                                              // 0x0041335d    90
                         nop                                                              // 0x0041335e    90
                         nop                                                              // 0x0041335f    90
?DrawTab@SetupThing@@SAXHHHHHHHPA_WHH@Z:
                                       sub                esp, 0x08                                     // 0x00413360    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2078]          // 0x00413363    a178809c00
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00413368    89442404
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0041336c    8b442430
                         test               eax, eax                                      // 0x00413370    85c0
                         {disp8} jne        _jmp_addr_0x0041338a                          // 0x00413372    7516
                         {disp32} fild      dword ptr [data_bytes + 0x2078]               // 0x00413374    db0578809c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x262c]              // 0x0041337a    d80d2cb68a00
                         call               _jmp_addr_0x007a1400                          // 0x00413380    e87be03800
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x00413385    a378809c00
_jmp_addr_0x0041338a:    {disp32} mov       eax, dword ptr [data_bytes + 0x502230]        // 0x0041338a    a13082ec00
                         cmp                eax, 0x01                                     // 0x0041338f    83f801
                         {disp8} je         _jmp_addr_0x004133b5                          // 0x00413392    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413394    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00413399    8b08
                         push               0x1                                           // 0x0041339b    6a01
                         push               0x10                                          // 0x0041339d    6a10
                         push               0x0                                           // 0x0041339f    6a00
                         push               eax                                           // 0x004133a1    50
                         call               dword ptr [ecx + 0x94]                        // 0x004133a2    ff9194000000
                         neg                eax                                           // 0x004133a8    f7d8
                         sbb.s              eax, eax                                      // 0x004133aa    1bc0
                         and                eax, 0xfffffffe                               // 0x004133ac    83e0fe
                         inc                eax                                           // 0x004133af    40
                         {disp32} mov       dword ptr [data_bytes + 0x502230], eax        // 0x004133b0    a33082ec00
_jmp_addr_0x004133b5:    push               esi                                           // 0x004133b5    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x502630]        // 0x004133b6    8b353086ec00
                         cmp                esi, 0x01                                     // 0x004133bc    83fe01
                         {disp8} je         _jmp_addr_0x004133ea                          // 0x004133bf    7429
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004133c1    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004133c6    8b10
                         push               0x1                                           // 0x004133c8    6a01
                         push               0x10                                          // 0x004133ca    6a10
                         push               0x1                                           // 0x004133cc    6a01
                         push               eax                                           // 0x004133ce    50
                         call               dword ptr [edx + 0x94]                        // 0x004133cf    ff9294000000
                         mov.s              esi, eax                                      // 0x004133d5    8bf0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x502230]        // 0x004133d7    a13082ec00
                         neg                esi                                           // 0x004133dc    f7de
                         sbb.s              esi, esi                                      // 0x004133de    1bf6
                         and                esi, 0xfffffffe                               // 0x004133e0    83e6fe
                         inc                esi                                           // 0x004133e3    46
                         {disp32} mov       dword ptr [data_bytes + 0x502630], esi        // 0x004133e4    89353086ec00
_jmp_addr_0x004133ea:    {disp32} mov       ecx, dword ptr [data_bytes + 0x502234]        // 0x004133ea    8b0d3482ec00
                         cmp                ecx, 0x01                                     // 0x004133f0    83f901
                         {disp8} je         _jmp_addr_0x00413424                          // 0x004133f3    742f
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004133f5    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x004133fa    8b08
                         push               0x1                                           // 0x004133fc    6a01
                         push               0x11                                          // 0x004133fe    6a11
                         push               0x0                                           // 0x00413400    6a00
                         push               eax                                           // 0x00413402    50
                         call               dword ptr [ecx + 0x94]                        // 0x00413403    ff9194000000
                         {disp32} mov       esi, dword ptr [data_bytes + 0x502630]        // 0x00413409    8b353086ec00
                         mov.s              ecx, eax                                      // 0x0041340f    8bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x502230]        // 0x00413411    a13082ec00
                         neg                ecx                                           // 0x00413416    f7d9
                         sbb.s              ecx, ecx                                      // 0x00413418    1bc9
                         and                ecx, 0xfffffffe                               // 0x0041341a    83e1fe
                         inc                ecx                                           // 0x0041341d    41
                         {disp32} mov       dword ptr [data_bytes + 0x502234], ecx        // 0x0041341e    890d3482ec00
_jmp_addr_0x00413424:    {disp32} mov       edx, dword ptr [data_bytes + 0x502634]        // 0x00413424    8b153486ec00
                         cmp                edx, 0x01                                     // 0x0041342a    83fa01
                         {disp8} je         _jmp_addr_0x00413464                          // 0x0041342d    7435
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0041342f    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00413434    8b10
                         push               0x1                                           // 0x00413436    6a01
                         push               0x11                                          // 0x00413438    6a11
                         push               0x1                                           // 0x0041343a    6a01
                         push               eax                                           // 0x0041343c    50
                         call               dword ptr [edx + 0x94]                        // 0x0041343d    ff9294000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x502234]        // 0x00413443    8b0d3482ec00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x502630]        // 0x00413449    8b353086ec00
                         mov.s              edx, eax                                      // 0x0041344f    8bd0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x502230]        // 0x00413451    a13082ec00
                         neg                edx                                           // 0x00413456    f7da
                         sbb.s              edx, edx                                      // 0x00413458    1bd2
                         and                edx, 0xfffffffe                               // 0x0041345a    83e2fe
                         inc                edx                                           // 0x0041345d    42
                         {disp32} mov       dword ptr [data_bytes + 0x502634], edx        // 0x0041345e    89153486ec00
_jmp_addr_0x00413464:    cmp                eax, 0x01                                     // 0x00413464    83f801
                         {disp8} je         _jmp_addr_0x0041349c                          // 0x00413467    7433
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413469    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0041346e    8b08
                         push               0x1                                           // 0x00413470    6a01
                         push               0x10                                          // 0x00413472    6a10
                         push               0x0                                           // 0x00413474    6a00
                         push               eax                                           // 0x00413476    50
                         call               dword ptr [ecx + 0x94]                        // 0x00413477    ff9194000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x502634]        // 0x0041347d    8b153486ec00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x502234]        // 0x00413483    8b0d3482ec00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x502630]        // 0x00413489    8b353086ec00
                         neg                eax                                           // 0x0041348f    f7d8
                         sbb.s              eax, eax                                      // 0x00413491    1bc0
                         and                eax, 0xfffffffe                               // 0x00413493    83e0fe
                         inc                eax                                           // 0x00413496    40
                         {disp32} mov       dword ptr [data_bytes + 0x502230], eax        // 0x00413497    a33082ec00
_jmp_addr_0x0041349c:    cmp                esi, 0x01                                     // 0x0041349c    83fe01
                         {disp8} je         _jmp_addr_0x004134ce                          // 0x0041349f    742d
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004134a1    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004134a6    8b10
                         push               0x1                                           // 0x004134a8    6a01
                         push               0x10                                          // 0x004134aa    6a10
                         push               0x1                                           // 0x004134ac    6a01
                         push               eax                                           // 0x004134ae    50
                         call               dword ptr [edx + 0x94]                        // 0x004134af    ff9294000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x502634]        // 0x004134b5    8b153486ec00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x502234]        // 0x004134bb    8b0d3482ec00
                         neg                eax                                           // 0x004134c1    f7d8
                         sbb.s              eax, eax                                      // 0x004134c3    1bc0
                         and                eax, 0xfffffffe                               // 0x004134c5    83e0fe
                         inc                eax                                           // 0x004134c8    40
                         {disp32} mov       dword ptr [data_bytes + 0x502630], eax        // 0x004134c9    a33086ec00
_jmp_addr_0x004134ce:    cmp                ecx, 0x01                                     // 0x004134ce    83f901
                         {disp8} je         _jmp_addr_0x004134fa                          // 0x004134d1    7427
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004134d3    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x004134d8    8b08
                         push               0x1                                           // 0x004134da    6a01
                         push               0x11                                          // 0x004134dc    6a11
                         push               0x0                                           // 0x004134de    6a00
                         push               eax                                           // 0x004134e0    50
                         call               dword ptr [ecx + 0x94]                        // 0x004134e1    ff9194000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x502634]        // 0x004134e7    8b153486ec00
                         neg                eax                                           // 0x004134ed    f7d8
                         sbb.s              eax, eax                                      // 0x004134ef    1bc0
                         and                eax, 0xfffffffe                               // 0x004134f1    83e0fe
                         inc                eax                                           // 0x004134f4    40
                         {disp32} mov       dword ptr [data_bytes + 0x502234], eax        // 0x004134f5    a33482ec00
_jmp_addr_0x004134fa:    cmp                edx, 0x01                                     // 0x004134fa    83fa01
                         {disp8} je         _jmp_addr_0x00413520                          // 0x004134fd    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004134ff    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00413504    8b10
                         push               0x1                                           // 0x00413506    6a01
                         push               0x11                                          // 0x00413508    6a11
                         push               0x1                                           // 0x0041350a    6a01
                         push               eax                                           // 0x0041350c    50
                         call               dword ptr [edx + 0x94]                        // 0x0041350d    ff9294000000
                         neg                eax                                           // 0x00413513    f7d8
                         sbb.s              eax, eax                                      // 0x00413515    1bc0
                         and                eax, 0xfffffffe                               // 0x00413517    83e0fe
                         inc                eax                                           // 0x0041351a    40
                         {disp32} mov       dword ptr [data_bytes + 0x502634], eax        // 0x0041351b    a33486ec00
_jmp_addr_0x00413520:    {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x00413520    8b742420
                         test               esi, esi                                      // 0x00413524    85f6
                         push               ebx                                           // 0x00413526    53
                         push               ebp                                           // 0x00413527    55
                         push               edi                                           // 0x00413528    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00413529    8b7c2428
                         {disp8} jne        _jmp_addr_0x0041358a                          // 0x0041352d    755b
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0041352f    8b4c2434
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x00413533    8b6c2424
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00413537    8b5c241c
                         push               0x42c80000                                    // 0x0041353b    680000c842
                         push               0x0                                           // 0x00413540    6a00
                         neg                ecx                                           // 0x00413542    f7d9
                         sbb.s              ecx, ecx                                      // 0x00413544    1bc9
                         push               0x1                                           // 0x00413546    6a01
                         {disp8} lea        eax, dword ptr [edi + 0x02]                   // 0x00413548    8d4702
                         push               0x00ffffff                                    // 0x0041354b    68ffffff00
                         push               eax                                           // 0x00413550    50
                         and                ecx, 0x02                                     // 0x00413551    83e102
                         mov.s              edx, ebp                                      // 0x00413554    8bd5
                         sub.s              edx, ecx                                      // 0x00413556    2bd1
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00413558    89442424
                         push               edx                                           // 0x0041355c    52
                         push               eax                                           // 0x0041355d    50
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x0041355e    8b44244c
                         neg                eax                                           // 0x00413562    f7d8
                         sbb.s              eax, eax                                      // 0x00413564    1bc0
                         and                eax, 0x02                                     // 0x00413566    83e002
                         add.s              eax, ebx                                      // 0x00413569    03c3
                         push               eax                                           // 0x0041356b    50
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x0041356c    e82ff0ffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x2628]              // 0x00413571    d90528b68a00
                         add                esp, 0x20                                     // 0x00413577    83c420
_jmp_addr_0x0041357a:    test               esi, esi                                      // 0x0041357a    85f6
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0041357c    d95c241c
                         {disp8} je         _jmp_addr_0x004135f8                          // 0x00413580    7476
                         {disp32} fld       dword ptr [rdata_bytes + 0x2620]              // 0x00413582    d90520b68a00
                         {disp8} jmp        _jmp_addr_0x004135fe                          // 0x00413588    eb74
_jmp_addr_0x0041358a:    {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0041358a    8b542430
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0041358e    8b5c241c
                         push               0x42c80000                                    // 0x00413592    680000c842
                         push               0x0                                           // 0x00413597    6a00
                         push               0x1                                           // 0x00413599    6a01
                         push               0x00ffffff                                    // 0x0041359b    68ffffff00
                         neg                edx                                           // 0x004135a0    f7da
                         {disp8} lea        esi, dword ptr [edi + 0x02]                   // 0x004135a2    8d7702
                         push               esi                                           // 0x004135a5    56
                         sbb.s              edx, edx                                      // 0x004135a6    1bd2
                         {disp8} lea        ecx, dword ptr [ebx + 0x0a]                   // 0x004135a8    8d4b0a
                         push               ecx                                           // 0x004135ab    51
                         and                edx, 0x02                                     // 0x004135ac    83e202
                         add.s              edx, ebx                                      // 0x004135af    03d3
                         push               esi                                           // 0x004135b1    56
                         push               edx                                           // 0x004135b2    52
                         {disp8} mov        dword ptr [esp + 0x30], esi                   // 0x004135b3    89742430
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x004135b7    e8e4efffff
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x004135bc    8b442454
                         {disp8} mov        ebp, dword ptr [esp + 0x44]                   // 0x004135c0    8b6c2444
                         push               0x42c80000                                    // 0x004135c4    680000c842
                         push               0x0                                           // 0x004135c9    6a00
                         push               0x1                                           // 0x004135cb    6a01
                         neg                eax                                           // 0x004135cd    f7d8
                         sbb.s              eax, eax                                      // 0x004135cf    1bc0
                         push               0x00ffffff                                    // 0x004135d1    68ffffff00
                         and                eax, 0x02                                     // 0x004135d6    83e002
                         push               esi                                           // 0x004135d9    56
                         mov.s              ecx, ebp                                      // 0x004135da    8bcd
                         sub.s              ecx, eax                                      // 0x004135dc    2bc8
                         push               ecx                                           // 0x004135de    51
                         {disp8} lea        edx, dword ptr [ebp + -0x0a]                  // 0x004135df    8d55f6
                         push               esi                                           // 0x004135e2    56
                         push               edx                                           // 0x004135e3    52
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x004135e4    e8b7efffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x2620]              // 0x004135e9    d90520b68a00
                         {disp8} mov        esi, dword ptr [esp + 0x6c]                   // 0x004135ef    8b74246c
                         add                esp, 0x40                                     // 0x004135f3    83c440
                         {disp8} jmp        _jmp_addr_0x0041357a                          // 0x004135f6    eb82
_jmp_addr_0x004135f8:    {disp32} fld       dword ptr [rdata_bytes + 0x2628]              // 0x004135f8    d90528b68a00
_jmp_addr_0x004135fe:    test               esi, esi                                      // 0x004135fe    85f6
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2624]              // 0x00413600    d80524b68a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00413606    d95c2428
                         {disp8} jne        _jmp_addr_0x0041365a                          // 0x0041360a    754e
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x0041360c    a180ccc400
                         push               0x42c80000                                    // 0x00413611    680000c842
                         push               esi                                           // 0x00413616    56
                         push               0x0000a000                                    // 0x00413617    6800a00000
                         push               0xffff6000                                    // 0x0041361c    680060ffff
                         push               0x1                                           // 0x00413621    6a01
                         push               esi                                           // 0x00413623    56
                         push               eax                                           // 0x00413624    50
                         push               0x3cc00000                                    // 0x00413625    680000c03c
                         push               0x3e940000                                    // 0x0041362a    680000943e
                         push               esi                                           // 0x0041362f    56
                         push               0x3e580000                                    // 0x00413630    680000583e
                         push               edi                                           // 0x00413635    57
                         push               ebp                                           // 0x00413636    55
                         {disp8} lea        ecx, dword ptr [edi + -0x08]                  // 0x00413637    8d4ff8
                         push               ecx                                           // 0x0041363a    51
                         push               ebx                                           // 0x0041363b    53
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0041363c    e83ff3ffff
                         {disp32} fild      dword ptr [data_bytes + 0x2078]               // 0x00413641    db0578809c00
                         add                esp, 0x3c                                     // 0x00413647    83c43c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0041364a    d80db4a38a00
                         call               _jmp_addr_0x007a1400                          // 0x00413650    e8abdd3800
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x00413655    a378809c00
_jmp_addr_0x0041365a:    {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0041365a    8b542438
                         cmp                word ptr [edx], 0x00                          // 0x0041365e    66833a00
                         {disp32} je        _jmp_addr_0x00413894                          // 0x00413662    0f842c020000
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x00413668    8b1580ccc400
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0041366e    8b442420
                         push               0x42c80000                                    // 0x00413672    680000c842
                         push               0x0                                           // 0x00413677    6a00
                         push               0x0000a000                                    // 0x00413679    6800a00000
                         push               0xffff6000                                    // 0x0041367e    680060ffff
                         push               0x1                                           // 0x00413683    6a01
                         push               0x0                                           // 0x00413685    6a00
                         push               edx                                           // 0x00413687    52
                         push               0x3cc00000                                    // 0x00413688    680000c03c
                         push               0x3e940000                                    // 0x0041368d    680000943e
                         push               0x0                                           // 0x00413692    6a00
                         push               0x3e580000                                    // 0x00413694    680000583e
                         {disp8} lea        esi, dword ptr [eax + 0x08]                   // 0x00413699    8d7008
                         push               esi                                           // 0x0041369c    56
                         {disp8} lea        ecx, dword ptr [ebp + -0x08]                  // 0x0041369d    8d4df8
                         push               ecx                                           // 0x004136a0    51
                         push               eax                                           // 0x004136a1    50
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                   // 0x004136a2    8d4308
                         push               eax                                           // 0x004136a5    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004136a6    e8d5f2ffff
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x004136ab    8b0d80ccc400
                         push               0x42c80000                                    // 0x004136b1    680000c842
                         push               0x0                                           // 0x004136b6    6a00
                         push               0x0000a000                                    // 0x004136b8    6800a00000
                         push               0xffff6000                                    // 0x004136bd    680060ffff
                         push               0x1                                           // 0x004136c2    6a01
                         push               0x0                                           // 0x004136c4    6a00
                         push               ecx                                           // 0x004136c6    51
                         push               0x3dd00000                                    // 0x004136c7    680000d03d
                         push               0x3e580000                                    // 0x004136cc    680000583e
                         push               0x3cc00000                                    // 0x004136d1    680000c03c
                         push               0x3e400000                                    // 0x004136d6    680000403e
                         {disp8} lea        eax, dword ptr [edi + -0x08]                  // 0x004136db    8d47f8
                         push               eax                                           // 0x004136de    50
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                   // 0x004136df    8d4308
                         push               eax                                           // 0x004136e2    50
                         push               esi                                           // 0x004136e3    56
                         push               ebx                                           // 0x004136e4    53
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004136e5    e896f2ffff
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x004136ea    8b1580ccc400
                         add                esp, 0x78                                     // 0x004136f0    83c478
                         push               0x42c80000                                    // 0x004136f3    680000c842
                         push               0x0                                           // 0x004136f8    6a00
                         push               0x0000a000                                    // 0x004136fa    6800a00000
                         push               0xffff6000                                    // 0x004136ff    680060ffff
                         push               0x1                                           // 0x00413704    6a01
                         push               0x0                                           // 0x00413706    6a00
                         push               edx                                           // 0x00413708    52
                         push               0x3dd00000                                    // 0x00413709    680000d03d
                         push               0x3ea00000                                    // 0x0041370e    680000a03e
                         push               0x3cc00000                                    // 0x00413713    680000c03c
                         push               0x3e940000                                    // 0x00413718    680000943e
                         {disp8} lea        eax, dword ptr [edi + -0x08]                  // 0x0041371d    8d47f8
                         push               eax                                           // 0x00413720    50
                         push               ebp                                           // 0x00413721    55
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                  // 0x00413722    8d45f8
                         push               esi                                           // 0x00413725    56
                         push               eax                                           // 0x00413726    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413727    e854f2ffff
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x0041372c    a180ccc400
                         push               0x42c80000                                    // 0x00413731    680000c842
                         push               0x0                                           // 0x00413736    6a00
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x00413738    8b4c2464
                         push               0x0000a000                                    // 0x0041373c    6800a00000
                         push               0xffff6000                                    // 0x00413741    680060ffff
                         push               0x1                                           // 0x00413746    6a01
                         push               0x0                                           // 0x00413748    6a00
                         push               eax                                           // 0x0041374a    50
                         push               0x3cc00000                                    // 0x0041374b    680000c03c
                         push               0x3e580000                                    // 0x00413750    680000583e
                         push               0x0                                           // 0x00413755    6a00
                         push               0x3e400000                                    // 0x00413757    680000403e
                         push               esi                                           // 0x0041375c    56
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                   // 0x0041375d    8d4308
                         push               eax                                           // 0x00413760    50
                         push               ecx                                           // 0x00413761    51
                         push               ebx                                           // 0x00413762    53
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413763    e818f2ffff
                         add                esp, 0x78                                     // 0x00413768    83c478
                         push               0x42c80000                                    // 0x0041376b    680000c842
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x00413770    8b1580ccc400
                         push               0x0                                           // 0x00413776    6a00
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00413778    8b442428
                         push               0x0000a000                                    // 0x0041377c    6800a00000
                         push               0xffff6000                                    // 0x00413781    680060ffff
                         push               0x1                                           // 0x00413786    6a01
                         push               0x0                                           // 0x00413788    6a00
                         push               edx                                           // 0x0041378a    52
                         push               0x3cc00000                                    // 0x0041378b    680000c03c
                         push               0x3ea00000                                    // 0x00413790    680000a03e
                         push               0x0                                           // 0x00413795    6a00
                         push               0x3e940000                                    // 0x00413797    680000943e
                         push               esi                                           // 0x0041379c    56
                         push               ebp                                           // 0x0041379d    55
                         push               eax                                           // 0x0041379e    50
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                  // 0x0041379f    8d45f8
                         push               eax                                           // 0x004137a2    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004137a3    e8d8f1ffff
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x004137a8    8b0d80ccc400
                         {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x004137ae    8b542464
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x004137b2    8b442458
                         push               0x42c80000                                    // 0x004137b6    680000c842
                         push               0x0                                           // 0x004137bb    6a00
                         push               0x0000a000                                    // 0x004137bd    6800a00000
                         push               0xffff6000                                    // 0x004137c2    680060ffff
                         push               0x1                                           // 0x004137c7    6a01
                         push               0x0                                           // 0x004137c9    6a00
                         push               ecx                                           // 0x004137cb    51
                         push               edx                                           // 0x004137cc    52
                         push               0x3f760000                                    // 0x004137cd    680000763f
                         push               eax                                           // 0x004137d2    50
                         push               0x3f700000                                    // 0x004137d3    680000703f
                         push               edi                                           // 0x004137d8    57
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                   // 0x004137d9    8d4308
                         push               eax                                           // 0x004137dc    50
                         {disp8} lea        eax, dword ptr [edi + -0x08]                  // 0x004137dd    8d47f8
                         push               eax                                           // 0x004137e0    50
                         push               ebx                                           // 0x004137e1    53
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004137e2    e899f1ffff
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x004137e7    8b0d80ccc400
                         {disp32} mov       edx, dword ptr [esp + 0x000000a0]             // 0x004137ed    8b9424a0000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000094]             // 0x004137f4    8b842494000000
                         add                esp, 0x78                                     // 0x004137fb    83c478
                         push               0x42c80000                                    // 0x004137fe    680000c842
                         push               0x0                                           // 0x00413803    6a00
                         push               0x0000a000                                    // 0x00413805    6800a00000
                         push               0xffff6000                                    // 0x0041380a    680060ffff
                         push               0x1                                           // 0x0041380f    6a01
                         push               0x0                                           // 0x00413811    6a00
                         push               ecx                                           // 0x00413813    51
                         push               edx                                           // 0x00413814    52
                         push               0x3f800000                                    // 0x00413815    680000803f
                         push               eax                                           // 0x0041381a    50
                         push               0x3f7a0000                                    // 0x0041381b    6800007a3f
                         push               edi                                           // 0x00413820    57
                         push               ebp                                           // 0x00413821    55
                         {disp8} lea        eax, dword ptr [edi + -0x08]                  // 0x00413822    8d47f8
                         push               eax                                           // 0x00413825    50
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                  // 0x00413826    8d45f8
                         push               eax                                           // 0x00413829    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0041382a    e851f1ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x78]                   // 0x0041382f    8b4c2478
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                   // 0x00413833    8b44247c
                         push               ecx                                           // 0x00413837    51
                         neg                eax                                           // 0x00413838    f7d8
                         push               0x1                                           // 0x0041383a    6a01
                         sbb.s              eax, eax                                      // 0x0041383c    1bc0
                         push               0x10                                          // 0x0041383e    6a10
                         and                eax, 0x10                                     // 0x00413840    83e010
                         push               eax                                           // 0x00413843    50
                         push               edi                                           // 0x00413844    57
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                  // 0x00413845    8d45f8
                         push               eax                                           // 0x00413848    50
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                   // 0x00413849    8d4308
                         push               esi                                           // 0x0041384c    56
                         push               eax                                           // 0x0041384d    50
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x0041384e    e8cd030000
                         add                esp, 0x5c                                     // 0x00413853    83c45c
                         add                edi, -0x04                                    // 0x00413856    83c7fc
                         add                ebp, -0x0a                                    // 0x00413859    83c5f6
                         push               0x42c80000                                    // 0x0041385c    680000c842
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00413861    8b742414
                         push               0x0                                           // 0x00413865    6a00
                         push               0x1                                           // 0x00413867    6a01
                         push               0x00ffffff                                    // 0x00413869    68ffffff00
                         push               edi                                           // 0x0041386e    57
                         push               ebp                                           // 0x0041386f    55
                         push               esi                                           // 0x00413870    56
                         push               ebp                                           // 0x00413871    55
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x00413872    e829edffff
                         push               0x42c80000                                    // 0x00413877    680000c842
                         push               0x0                                           // 0x0041387c    6a00
                         push               0x1                                           // 0x0041387e    6a01
                         push               0x00ffffff                                    // 0x00413880    68ffffff00
                         push               edi                                           // 0x00413885    57
                         add                ebx, 0x0a                                     // 0x00413886    83c30a
                         push               ebx                                           // 0x00413889    53
                         push               esi                                           // 0x0041388a    56
                         push               ebx                                           // 0x0041388b    53
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x0041388c    e80fedffff
                         add                esp, 0x40                                     // 0x00413891    83c440
_jmp_addr_0x00413894:    {disp32} mov       eax, dword ptr [data_bytes + 0x502230]        // 0x00413894    a13082ec00
                         pop                edi                                           // 0x00413899    5f
                         mov                esi, 0x00000002                               // 0x0041389a    be02000000
                         cmp.s              eax, esi                                      // 0x0041389f    3bc6
                         pop                ebp                                           // 0x004138a1    5d
                         pop                ebx                                           // 0x004138a2    5b
                         {disp8} je         _jmp_addr_0x004138c6                          // 0x004138a3    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004138a5    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004138aa    8b10
                         push               esi                                           // 0x004138ac    56
                         push               0x10                                          // 0x004138ad    6a10
                         push               0x0                                           // 0x004138af    6a00
                         push               eax                                           // 0x004138b1    50
                         call               dword ptr [edx + 0x94]                        // 0x004138b2    ff9294000000
                         neg                eax                                           // 0x004138b8    f7d8
                         sbb.s              eax, eax                                      // 0x004138ba    1bc0
                         and                eax, 0xfffffffd                               // 0x004138bc    83e0fd
                         add.s              eax, esi                                      // 0x004138bf    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502230], eax        // 0x004138c1    a33082ec00
_jmp_addr_0x004138c6:    cmp                dword ptr [data_bytes + 0x502630], esi        // 0x004138c6    39353086ec00
                         {disp8} je         _jmp_addr_0x004138ef                          // 0x004138cc    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004138ce    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x004138d3    8b08
                         push               esi                                           // 0x004138d5    56
                         push               0x10                                          // 0x004138d6    6a10
                         push               0x1                                           // 0x004138d8    6a01
                         push               eax                                           // 0x004138da    50
                         call               dword ptr [ecx + 0x94]                        // 0x004138db    ff9194000000
                         neg                eax                                           // 0x004138e1    f7d8
                         sbb.s              eax, eax                                      // 0x004138e3    1bc0
                         and                eax, 0xfffffffd                               // 0x004138e5    83e0fd
                         add.s              eax, esi                                      // 0x004138e8    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502630], eax        // 0x004138ea    a33086ec00
_jmp_addr_0x004138ef:    cmp                dword ptr [data_bytes + 0x502234], esi        // 0x004138ef    39353482ec00
                         {disp8} je         _jmp_addr_0x00413918                          // 0x004138f5    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004138f7    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004138fc    8b10
                         push               esi                                           // 0x004138fe    56
                         push               0x11                                          // 0x004138ff    6a11
                         push               0x0                                           // 0x00413901    6a00
                         push               eax                                           // 0x00413903    50
                         call               dword ptr [edx + 0x94]                        // 0x00413904    ff9294000000
                         neg                eax                                           // 0x0041390a    f7d8
                         sbb.s              eax, eax                                      // 0x0041390c    1bc0
                         and                eax, 0xfffffffd                               // 0x0041390e    83e0fd
                         add.s              eax, esi                                      // 0x00413911    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502234], eax        // 0x00413913    a33482ec00
_jmp_addr_0x00413918:    cmp                dword ptr [data_bytes + 0x502634], esi        // 0x00413918    39353486ec00
                         {disp8} je         _jmp_addr_0x00413950                          // 0x0041391e    7430
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413920    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00413925    8b08
                         push               esi                                           // 0x00413927    56
                         push               0x11                                          // 0x00413928    6a11
                         push               0x1                                           // 0x0041392a    6a01
                         push               eax                                           // 0x0041392c    50
                         call               dword ptr [ecx + 0x94]                        // 0x0041392d    ff9194000000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00413933    8b542408
                         neg                eax                                           // 0x00413937    f7d8
                         sbb.s              eax, eax                                      // 0x00413939    1bc0
                         and                eax, 0xfffffffd                               // 0x0041393b    83e0fd
                         add.s              eax, esi                                      // 0x0041393e    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502634], eax        // 0x00413940    a33486ec00
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edx          // 0x00413945    891578809c00
                         pop                esi                                           // 0x0041394b    5e
                         add                esp, 0x08                                     // 0x0041394c    83c408
                         ret                                                              // 0x0041394f    c3
_jmp_addr_0x00413950:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00413950    8b442408
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x00413954    a378809c00
                         pop                esi                                           // 0x00413959    5e
                         add                esp, 0x08                                     // 0x0041395a    83c408
                         ret                                                              // 0x0041395d    c3
                         nop                                                              // 0x0041395e    90
                         nop                                                              // 0x0041395f    90
_jmp_addr_0x00413960:    push               ecx                                           // 0x00413960    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2078]          // 0x00413961    a178809c00
                         push               ebx                                           // 0x00413966    53
                         push               ebp                                           // 0x00413967    55
                         push               esi                                           // 0x00413968    56
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x00413969    8b742428
                         test               esi, esi                                      // 0x0041396d    85f6
                         push               edi                                           // 0x0041396f    57
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00413970    89442410
                         {disp8} jne        _jmp_addr_0x0041398c                          // 0x00413974    7516
                         {disp32} fild      dword ptr [data_bytes + 0x2078]               // 0x00413976    db0578809c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x262c]              // 0x0041397c    d80d2cb68a00
                         call               _jmp_addr_0x007a1400                          // 0x00413982    e879da3800
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x00413987    a378809c00
_jmp_addr_0x0041398c:    {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0041398c    8b542430
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00413990    8b4c2428
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x00413994    8b7c2420
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x00413998    8b6c241c
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x0041399c    8b5c2418
                         neg                edx                                           // 0x004139a0    f7da
                         sbb.s              edx, edx                                      // 0x004139a2    1bd2
                         push               ecx                                           // 0x004139a4    51
                         and                edx, 0xfffffffd                               // 0x004139a5    83e2fd
                         add                edx, 0x02                                     // 0x004139a8    83c202
                         push               edx                                           // 0x004139ab    52
                         neg                esi                                           // 0x004139ac    f7de
                         push               0x10                                          // 0x004139ae    6a10
                         sbb.s              esi, esi                                      // 0x004139b0    1bf6
                         and                esi, 0x10                                     // 0x004139b2    83e610
                         push               esi                                           // 0x004139b5    56
                         {disp8} mov        esi, dword ptr [esp + 0x34]                   // 0x004139b6    8b742434
                         push               esi                                           // 0x004139ba    56
                         push               edi                                           // 0x004139bb    57
                         push               ebp                                           // 0x004139bc    55
                         push               ebx                                           // 0x004139bd    53
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x004139be    e85d020000
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x004139c3    8b1580ccc400
                         push               0x42c80000                                    // 0x004139c9    680000c842
                         push               0x0                                           // 0x004139ce    6a00
                         push               0x0000a000                                    // 0x004139d0    6800a00000
                         push               0xffff6000                                    // 0x004139d5    680060ffff
                         push               0x1                                           // 0x004139da    6a01
                         push               0x0                                           // 0x004139dc    6a00
                         push               edx                                           // 0x004139de    52
                         push               0x3cc00000                                    // 0x004139df    680000c03c
                         push               0x3e580000                                    // 0x004139e4    680000583e
                         push               0x0                                           // 0x004139e9    6a00
                         sub                ebp, 0x08                                     // 0x004139eb    83ed08
                         push               0x3e400000                                    // 0x004139ee    680000403e
                         {disp8} lea        eax, dword ptr [ebp + 0x08]                   // 0x004139f3    8d4508
                         sub                ebx, 0x08                                     // 0x004139f6    83eb08
                         push               eax                                           // 0x004139f9    50
                         {disp8} lea        ecx, dword ptr [ebx + 0x08]                   // 0x004139fa    8d4b08
                         push               ecx                                           // 0x004139fd    51
                         push               ebp                                           // 0x004139fe    55
                         push               ebx                                           // 0x004139ff    53
                         add                edi, 0x08                                     // 0x00413a00    83c708
                         add                esi, 0x08                                     // 0x00413a03    83c608
                         {disp32} mov       dword ptr [esp + 0x00000080], eax             // 0x00413a06    89842480000000
                         {disp32} mov       dword ptr [esp + 0x00000084], ecx             // 0x00413a0d    898c2484000000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413a14    e867efffff
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x00413a19    8b0d80ccc400
                         add                esp, 0x5c                                     // 0x00413a1f    83c45c
                         push               0x42c80000                                    // 0x00413a22    680000c842
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00413a27    8b542428
                         push               0x0                                           // 0x00413a2b    6a00
                         push               0x0000a000                                    // 0x00413a2d    6800a00000
                         push               0xffff6000                                    // 0x00413a32    680060ffff
                         push               0x1                                           // 0x00413a37    6a01
                         push               0x0                                           // 0x00413a39    6a00
                         push               ecx                                           // 0x00413a3b    51
                         push               0x3cc00000                                    // 0x00413a3c    680000c03c
                         push               0x3ea00000                                    // 0x00413a41    680000a03e
                         push               0x0                                           // 0x00413a46    6a00
                         push               0x3e940000                                    // 0x00413a48    680000943e
                         push               edx                                           // 0x00413a4d    52
                         push               edi                                           // 0x00413a4e    57
                         {disp8} lea        eax, dword ptr [edi + -0x08]                  // 0x00413a4f    8d47f8
                         push               ebp                                           // 0x00413a52    55
                         push               eax                                           // 0x00413a53    50
                         {disp8} mov        dword ptr [esp + 0x68], eax                   // 0x00413a54    89442468
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413a58    e823efffff
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x00413a5d    8b0d80ccc400
                         push               0x42c80000                                    // 0x00413a63    680000c842
                         push               0x0                                           // 0x00413a68    6a00
                         push               0x0000a000                                    // 0x00413a6a    6800a00000
                         push               0xffff6000                                    // 0x00413a6f    680060ffff
                         push               0x1                                           // 0x00413a74    6a01
                         push               0x0                                           // 0x00413a76    6a00
                         push               ecx                                           // 0x00413a78    51
                         push               0x3e000000                                    // 0x00413a79    680000003e
                         {disp8} lea        eax, dword ptr [esi + -0x08]                  // 0x00413a7e    8d46f8
                         push               0x3e580000                                    // 0x00413a81    680000583e
                         {disp32} mov       dword ptr [esp + 0x00000080], eax             // 0x00413a86    89842480000000
                         push               0x3dd00000                                    // 0x00413a8d    680000d03d
                         {disp32} mov       edx, dword ptr [esp + 0x0000008c]             // 0x00413a92    8b94248c000000
                         push               0x3e400000                                    // 0x00413a99    680000403e
                         push               esi                                           // 0x00413a9e    56
                         push               edx                                           // 0x00413a9f    52
                         push               eax                                           // 0x00413aa0    50
                         push               ebx                                           // 0x00413aa1    53
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413aa2    e8d9eeffff
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x00413aa7    a180ccc400
                         add                esp, 0x78                                     // 0x00413aac    83c478
                         push               0x42c80000                                    // 0x00413aaf    680000c842
                         push               0x0                                           // 0x00413ab4    6a00
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00413ab6    8b4c2428
                         push               0x0000a000                                    // 0x00413aba    6800a00000
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00413abf    8b542438
                         push               0xffff6000                                    // 0x00413ac3    680060ffff
                         push               0x1                                           // 0x00413ac8    6a01
                         push               0x0                                           // 0x00413aca    6a00
                         push               eax                                           // 0x00413acc    50
                         push               0x3e000000                                    // 0x00413acd    680000003e
                         push               0x3ea00000                                    // 0x00413ad2    680000a03e
                         push               0x3dd00000                                    // 0x00413ad7    680000d03d
                         push               0x3e940000                                    // 0x00413adc    680000943e
                         push               esi                                           // 0x00413ae1    56
                         push               edi                                           // 0x00413ae2    57
                         push               ecx                                           // 0x00413ae3    51
                         push               edx                                           // 0x00413ae4    52
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413ae5    e896eeffff
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x00413aea    8b44246c
                         add                esp, 0x3c                                     // 0x00413aee    83c43c
                         test               eax, eax                                      // 0x00413af1    85c0
                         {disp8} je         _jmp_addr_0x00413b3b                          // 0x00413af3    7446
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x00413af5    a180ccc400
                         push               0x42c80000                                    // 0x00413afa    680000c842
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00413aff    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00413b03    8b542430
                         push               0x0                                           // 0x00413b07    6a00
                         push               0x0000a000                                    // 0x00413b09    6800a00000
                         push               0xffff6000                                    // 0x00413b0e    680060ffff
                         push               0x1                                           // 0x00413b13    6a01
                         push               0x0                                           // 0x00413b15    6a00
                         push               eax                                           // 0x00413b17    50
                         push               0x3cc00000                                    // 0x00413b18    680000c03c
                         push               0x3e940000                                    // 0x00413b1d    680000943e
                         push               0x0                                           // 0x00413b22    6a00
                         push               0x3e580000                                    // 0x00413b24    680000583e
                         push               ecx                                           // 0x00413b29    51
                         push               edx                                           // 0x00413b2a    52
                         push               ebp                                           // 0x00413b2b    55
                         {disp8} mov        ebp, dword ptr [esp + 0x60]                   // 0x00413b2c    8b6c2460
                         push               ebp                                           // 0x00413b30    55
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413b31    e84aeeffff
                         add                esp, 0x3c                                     // 0x00413b36    83c43c
                         {disp8} jmp        _jmp_addr_0x00413b3f                          // 0x00413b39    eb04
_jmp_addr_0x00413b3b:    {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00413b3b    8b6c2428
_jmp_addr_0x00413b3f:    {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x00413b3f    a180ccc400
                         push               0x42c80000                                    // 0x00413b44    680000c842
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00413b49    8b4c2430
                         push               0x0                                           // 0x00413b4d    6a00
                         push               0x0000a000                                    // 0x00413b4f    6800a00000
                         push               0xffff6000                                    // 0x00413b54    680060ffff
                         push               0x1                                           // 0x00413b59    6a01
                         push               0x0                                           // 0x00413b5b    6a00
                         push               eax                                           // 0x00413b5d    50
                         push               0x3e000000                                    // 0x00413b5e    680000003e
                         push               0x3e940000                                    // 0x00413b63    680000943e
                         push               0x3dd00000                                    // 0x00413b68    680000d03d
                         push               0x3e580000                                    // 0x00413b6d    680000583e
                         push               esi                                           // 0x00413b72    56
                         {disp8} mov        esi, dword ptr [esp + 0x50]                   // 0x00413b73    8b742450
                         push               ecx                                           // 0x00413b77    51
                         push               esi                                           // 0x00413b78    56
                         push               ebp                                           // 0x00413b79    55
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413b7a    e801eeffff
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x00413b7f    8b1580ccc400
                         push               0x42c80000                                    // 0x00413b85    680000c842
                         push               0x0                                           // 0x00413b8a    6a00
                         push               0x0000a000                                    // 0x00413b8c    6800a00000
                         push               0xffff6000                                    // 0x00413b91    680060ffff
                         push               0x1                                           // 0x00413b96    6a01
                         push               0x0                                           // 0x00413b98    6a00
                         push               edx                                           // 0x00413b9a    52
                         push               0x3dd00000                                    // 0x00413b9b    680000d03d
                         push               0x3e580000                                    // 0x00413ba0    680000583e
                         push               0x3cc00000                                    // 0x00413ba5    680000c03c
                         push               0x3e400000                                    // 0x00413baa    680000403e
                         push               esi                                           // 0x00413baf    56
                         push               ebp                                           // 0x00413bb0    55
                         {disp32} mov       ebp, dword ptr [esp + 0x00000094]             // 0x00413bb1    8bac2494000000
                         push               ebp                                           // 0x00413bb8    55
                         push               ebx                                           // 0x00413bb9    53
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413bba    e8c1edffff
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x00413bbf    a180ccc400
                         add                esp, 0x78                                     // 0x00413bc4    83c478
                         push               0x42c80000                                    // 0x00413bc7    680000c842
                         push               0x0                                           // 0x00413bcc    6a00
                         push               0x0000a000                                    // 0x00413bce    6800a00000
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x00413bd3    8b4c2438
                         push               0xffff6000                                    // 0x00413bd7    680060ffff
                         push               0x1                                           // 0x00413bdc    6a01
                         push               0x0                                           // 0x00413bde    6a00
                         push               eax                                           // 0x00413be0    50
                         push               0x3dd00000                                    // 0x00413be1    680000d03d
                         push               0x3ea00000                                    // 0x00413be6    680000a03e
                         push               0x3cc00000                                    // 0x00413beb    680000c03c
                         push               0x3e940000                                    // 0x00413bf0    680000943e
                         push               esi                                           // 0x00413bf5    56
                         push               edi                                           // 0x00413bf6    57
                         push               ebp                                           // 0x00413bf7    55
                         push               ecx                                           // 0x00413bf8    51
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413bf9    e882edffff
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x00413bfe    8b54244c
                         add                esp, 0x3c                                     // 0x00413c02    83c43c
                         pop                edi                                           // 0x00413c05    5f
                         pop                esi                                           // 0x00413c06    5e
                         pop                ebp                                           // 0x00413c07    5d
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edx          // 0x00413c08    891578809c00
                         pop                ebx                                           // 0x00413c0e    5b
                         pop                ecx                                           // 0x00413c0f    59
                         ret                                                              // 0x00413c10    c3
                         nop                                                              // 0x00413c11    90
                         nop                                                              // 0x00413c12    90
                         nop                                                              // 0x00413c13    90
                         nop                                                              // 0x00413c14    90
                         nop                                                              // 0x00413c15    90
                         nop                                                              // 0x00413c16    90
                         nop                                                              // 0x00413c17    90
                         nop                                                              // 0x00413c18    90
                         nop                                                              // 0x00413c19    90
                         nop                                                              // 0x00413c1a    90
                         nop                                                              // 0x00413c1b    90
                         nop                                                              // 0x00413c1c    90
                         nop                                                              // 0x00413c1d    90
                         nop                                                              // 0x00413c1e    90
                         nop                                                              // 0x00413c1f    90
?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z:
                                        sub                esp, 0x0c                                     // 0x00413c20    83ec0c
                         push               ebx                                           // 0x00413c23    53
                         push               esi                                           // 0x00413c24    56
                         push               edi                                           // 0x00413c25    57
                         {disp8} mov        edi, dword ptr [esp + 0x30]                   // 0x00413c26    8b7c2430
                         cmp                edi, 0x10                                     // 0x00413c2a    83ff10
                         {disp8} je         _jmp_addr_0x00413c4d                          // 0x00413c2d    741e
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00413c2f    db442430
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x00413c33    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00413c3b    c744241000000000
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00413c43    d83d90a38a00
                         fld                st(0)                                         // 0x00413c49    d9c0
                         {disp8} jmp        _jmp_addr_0x00413c69                          // 0x00413c4b    eb1c
_jmp_addr_0x00413c4d:    {disp32} fld       dword ptr [rdata_bytes + 0x2630]              // 0x00413c4d    d90530b68a00
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3d000000            // 0x00413c53    c744240c0000003d
                         {disp32} fld       dword ptr [rdata_bytes + 0x2630]              // 0x00413c5b    d90530b68a00
                         {disp8} mov        dword ptr [esp + 0x10], 0x3d000000            // 0x00413c61    c74424100000003d
_jmp_addr_0x00413c69:    {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x00413c69    8b74242c
                         mov.s              eax, esi                                      // 0x00413c6d    8bc6
                         and                eax, 0x0f                                     // 0x00413c6f    83e00f
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00413c72    89442430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00413c76    db442430
                         mov.s              eax, esi                                      // 0x00413c7a    8bc6
                         cdq                                                              // 0x00413c7c    99
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x00413c7d    8b4c2438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d8]              // 0x00413c81    d80dd8b38a00
                         and                edx, 0x0f                                     // 0x00413c87    83e20f
                         add.s              eax, edx                                      // 0x00413c8a    03c2
                         sar                eax, 4                                        // 0x00413c8c    c1f804
                         fld                st(0)                                         // 0x00413c8f    d9c0
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00413c91    8944242c
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00413c95    d8442410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x502230]        // 0x00413c99    a13082ec00
                         mov                ebx, 0x00000001                               // 0x00413c9e    bb01000000
                         cmp.s              eax, ebx                                      // 0x00413ca3    3bc3
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00413ca5    d95c2410
                         fadd               st, st(1)                                     // 0x00413ca9    d8c1
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00413cab    d95c2414
                         fstp               st(0)                                         // 0x00413caf    ddd8
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x00413cb1    db44242c
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00413cb5    894c242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d8]              // 0x00413cb9    d80dd8b38a00
                         fld                st(0)                                         // 0x00413cbf    d9c0
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x00413cc1    d844240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00413cc5    d95c240c
                         fadd               st, st(1)                                     // 0x00413cc9    d8c1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00413ccb    d95c2430
                         fstp               st(0)                                         // 0x00413ccf    ddd8
                         {disp8} je         _jmp_addr_0x00413cf3                          // 0x00413cd1    7420
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413cd3    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00413cd8    8b10
                         push               ebx                                           // 0x00413cda    53
                         push               0x10                                          // 0x00413cdb    6a10
                         push               0x0                                           // 0x00413cdd    6a00
                         push               eax                                           // 0x00413cdf    50
                         call               dword ptr [edx + 0x94]                        // 0x00413ce0    ff9294000000
                         neg                eax                                           // 0x00413ce6    f7d8
                         sbb.s              eax, eax                                      // 0x00413ce8    1bc0
                         and                eax, 0xfffffffe                               // 0x00413cea    83e0fe
                         inc                eax                                           // 0x00413ced    40
                         {disp32} mov       dword ptr [data_bytes + 0x502230], eax        // 0x00413cee    a33082ec00
_jmp_addr_0x00413cf3:    cmp                dword ptr [data_bytes + 0x502630], ebx        // 0x00413cf3    391d3086ec00
                         {disp8} je         _jmp_addr_0x00413d1a                          // 0x00413cf9    741f
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413cfb    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00413d00    8b08
                         push               ebx                                           // 0x00413d02    53
                         push               0x10                                          // 0x00413d03    6a10
                         push               ebx                                           // 0x00413d05    53
                         push               eax                                           // 0x00413d06    50
                         call               dword ptr [ecx + 0x94]                        // 0x00413d07    ff9194000000
                         neg                eax                                           // 0x00413d0d    f7d8
                         sbb.s              eax, eax                                      // 0x00413d0f    1bc0
                         and                eax, 0xfffffffe                               // 0x00413d11    83e0fe
                         inc                eax                                           // 0x00413d14    40
                         {disp32} mov       dword ptr [data_bytes + 0x502630], eax        // 0x00413d15    a33086ec00
_jmp_addr_0x00413d1a:    cmp                dword ptr [data_bytes + 0x502234], ebx        // 0x00413d1a    391d3482ec00
                         {disp8} je         _jmp_addr_0x00413d42                          // 0x00413d20    7420
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413d22    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00413d27    8b10
                         push               ebx                                           // 0x00413d29    53
                         push               0x11                                          // 0x00413d2a    6a11
                         push               0x0                                           // 0x00413d2c    6a00
                         push               eax                                           // 0x00413d2e    50
                         call               dword ptr [edx + 0x94]                        // 0x00413d2f    ff9294000000
                         neg                eax                                           // 0x00413d35    f7d8
                         sbb.s              eax, eax                                      // 0x00413d37    1bc0
                         and                eax, 0xfffffffe                               // 0x00413d39    83e0fe
                         inc                eax                                           // 0x00413d3c    40
                         {disp32} mov       dword ptr [data_bytes + 0x502234], eax        // 0x00413d3d    a33482ec00
_jmp_addr_0x00413d42:    cmp                dword ptr [data_bytes + 0x502634], ebx        // 0x00413d42    391d3486ec00
                         {disp8} je         _jmp_addr_0x00413d69                          // 0x00413d48    741f
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413d4a    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00413d4f    8b08
                         push               ebx                                           // 0x00413d51    53
                         push               0x11                                          // 0x00413d52    6a11
                         push               ebx                                           // 0x00413d54    53
                         push               eax                                           // 0x00413d55    50
                         call               dword ptr [ecx + 0x94]                        // 0x00413d56    ff9194000000
                         neg                eax                                           // 0x00413d5c    f7d8
                         sbb.s              eax, eax                                      // 0x00413d5e    1bc0
                         and                eax, 0xfffffffe                               // 0x00413d60    83e0fe
                         inc                eax                                           // 0x00413d63    40
                         {disp32} mov       dword ptr [data_bytes + 0x502634], eax        // 0x00413d64    a33486ec00
_jmp_addr_0x00413d69:    {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x00413d69    a180ccc400
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00413d6e    8b4c2430
                         push               ebp                                           // 0x00413d72    55
                         push               0x42c80000                                    // 0x00413d73    680000c842
                         push               0x0                                           // 0x00413d78    6a00
                         {disp8} mov        ebp, dword ptr [esp + 0x2c]                   // 0x00413d7a    8b6c242c
                         push               0x0000a000                                    // 0x00413d7e    6800a00000
                         push               0xffff6000                                    // 0x00413d83    680060ffff
                         push               ebx                                           // 0x00413d88    53
                         {disp8} lea        edx, dword ptr [esp + 0x44]                   // 0x00413d89    8d542444
                         push               edx                                           // 0x00413d8d    52
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00413d8e    8b542430
                         push               eax                                           // 0x00413d92    50
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00413d93    8b44242c
                         push               ecx                                           // 0x00413d97    51
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00413d98    8b4c2434
                         push               edx                                           // 0x00413d9c    52
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x00413d9d    8b542450
                         push               eax                                           // 0x00413da1    50
                         {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x00413da2    8b442450
                         push               ecx                                           // 0x00413da6    51
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x00413da7    8b4c244c
                         push               edx                                           // 0x00413dab    52
                         push               eax                                           // 0x00413dac    50
                         push               ebp                                           // 0x00413dad    55
                         push               ecx                                           // 0x00413dae    51
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00413daf    e8ccebffff
                         add                esp, 0x3c                                     // 0x00413db4    83c43c
                         cmp                edi, 0x10                                     // 0x00413db7    83ff10
                         {disp8} je         _jmp_addr_0x00413ddd                          // 0x00413dba    7421
                         cmp                edi, 0x08                                     // 0x00413dbc    83ff08
                         {disp32} jne       _jmp_addr_0x00413f33                          // 0x00413dbf    0f856e010000
                         cmp                esi, 0x0d                                     // 0x00413dc5    83fe0d
                         {disp8} je         _jmp_addr_0x00413ddd                          // 0x00413dc8    7413
                         cmp                esi, 0x0b                                     // 0x00413dca    83fe0b
                         {disp8} je         _jmp_addr_0x00413ddd                          // 0x00413dcd    740e
                         cmp                esi, 0x2d                                     // 0x00413dcf    83fe2d
                         {disp8} je         _jmp_addr_0x00413ddd                          // 0x00413dd2    7409
                         cmp                esi, 0x2b                                     // 0x00413dd4    83fe2b
                         {disp32} jne       _jmp_addr_0x00413f33                          // 0x00413dd7    0f8556010000
_jmp_addr_0x00413ddd:    mov.s              edx, esi                                      // 0x00413ddd    8bd6
                         and                edx, 0x03                                     // 0x00413ddf    83e203
                         cmp                edi, 0x08                                     // 0x00413de2    83ff08
                         {disp32} mov       eax, dword ptr [edx * 0x4 + ?LH3DColor_ARRAY_008ab250@@3PAKA]       // 0x00413de5    8b049550b28a00
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00413dec    89442434
                         {disp8} jne        _jmp_addr_0x00413e0e                          // 0x00413df0    751c
                         {disp32} mov       eax, dword ptr [?LH3DColor_ARRAY_008ab250@@3PAKA]    // 0x00413df2    a150b28a00
                         mov.s              ecx, esi                                      // 0x00413df7    8bce
                         and                ecx, 0x1f                                     // 0x00413df9    83e11f
                         cmp                cl, 0x0d                                      // 0x00413dfc    80f90d
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00413dff    89442434
                         {disp8} jne        _jmp_addr_0x00413e0e                          // 0x00413e03    7509
                         {disp32} mov       eax, dword ptr [?LH3DColor_ARRAY_008ab250@@3PAKA + 8]         // 0x00413e05    a158b28a00
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00413e0a    89442434
_jmp_addr_0x00413e0e:    {disp8} mov        edi, dword ptr [esp + 0x30]                   // 0x00413e0e    8b7c2430
                         xor.s              ebx, ebx                                      // 0x00413e12    33db
                         {disp8} mov        bl, byte ptr [esp + 0x36]                     // 0x00413e14    8a5c2436
                         mov.s              esi, edi                                      // 0x00413e18    8bf7
                         shr                esi, 8                                        // 0x00413e1a    c1ee08
                         xor.s              ecx, ecx                                      // 0x00413e1d    33c9
                         mov.s              cl, ah                                        // 0x00413e1f    8acc
                         mov.s              edx, esi                                      // 0x00413e21    8bd6
                         and                edx, 0x0000ff00                               // 0x00413e23    81e200ff0000
                         imul               ebx, edx                                      // 0x00413e29    0fafda
                         and                esi, 0x000000ff                               // 0x00413e2c    81e6ff000000
                         and                eax, 0x000000ff                               // 0x00413e32    25ff000000
                         imul               ecx, esi                                      // 0x00413e37    0fafce
                         mov.s              edx, edi                                      // 0x00413e3a    8bd7
                         and                edx, 0x000000ff                               // 0x00413e3c    81e2ff000000
                         imul               eax, edx                                      // 0x00413e42    0fafc2
                         and                ebx, 0xffff00ff                               // 0x00413e45    81e3ff00ffff
                         or.s               ebx, ecx                                      // 0x00413e4b    0bd9
                         and                ebx, 0x00ffff00                               // 0x00413e4d    81e300ffff00
                         shr                eax, 8                                        // 0x00413e53    c1e808
                         or.s               ebx, eax                                      // 0x00413e56    0bd8
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x00413e58    8a442438
                         and                edi, 0xff000000                               // 0x00413e5c    81e7000000ff
                         xor.s              ebx, edi                                      // 0x00413e62    33df
                         test               al, 0x01                                      // 0x00413e64    a801
                         {disp8} lea        esi, dword ptr [ebp + 0x02]                   // 0x00413e66    8d7502
                         {disp8} je         _jmp_addr_0x00413e91                          // 0x00413e69    7426
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00413e6b    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00413e6f    8b4c2420
                         push               0x42c80000                                    // 0x00413e73    680000c842
                         push               0x0                                           // 0x00413e78    6a00
                         push               0x1                                           // 0x00413e7a    6a01
                         push               ebx                                           // 0x00413e7c    53
                         push               esi                                           // 0x00413e7d    56
                         {disp8} lea        ebp, dword ptr [eax + -0x02]                  // 0x00413e7e    8d68fe
                         push               ebp                                           // 0x00413e81    55
                         {disp8} lea        edi, dword ptr [ecx + 0x02]                   // 0x00413e82    8d7902
                         push               esi                                           // 0x00413e85    56
                         push               edi                                           // 0x00413e86    57
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x00413e87    e814e7ffff
                         add                esp, 0x20                                     // 0x00413e8c    83c420
                         {disp8} jmp        _jmp_addr_0x00413ed2                          // 0x00413e8f    eb41
_jmp_addr_0x00413e91:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00413e91    8b542420
                         push               0x42c80000                                    // 0x00413e95    680000c842
                         push               0x0                                           // 0x00413e9a    6a00
                         push               0x1                                           // 0x00413e9c    6a01
                         push               ebx                                           // 0x00413e9e    53
                         mov.s              eax, edx                                      // 0x00413e9f    8bc2
                         push               esi                                           // 0x00413ea1    56
                         add                eax, 0x04                                     // 0x00413ea2    83c004
                         push               eax                                           // 0x00413ea5    50
                         {disp8} lea        edi, dword ptr [edx + 0x02]                   // 0x00413ea6    8d7a02
                         push               esi                                           // 0x00413ea9    56
                         push               edi                                           // 0x00413eaa    57
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x00413eab    e8f0e6ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x00413eb0    8b4c2448
                         push               0x42c80000                                    // 0x00413eb4    680000c842
                         push               0x0                                           // 0x00413eb9    6a00
                         push               0x1                                           // 0x00413ebb    6a01
                         push               ebx                                           // 0x00413ebd    53
                         push               esi                                           // 0x00413ebe    56
                         {disp8} lea        ebp, dword ptr [ecx + -0x02]                  // 0x00413ebf    8d69fe
                         push               ebp                                           // 0x00413ec2    55
                         mov.s              edx, ecx                                      // 0x00413ec3    8bd1
                         add                edx, -0x04                                    // 0x00413ec5    83c2fc
                         push               esi                                           // 0x00413ec8    56
                         push               edx                                           // 0x00413ec9    52
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x00413eca    e8d1e6ffff
                         add                esp, 0x40                                     // 0x00413ecf    83c440
_jmp_addr_0x00413ed2:    test               byte ptr [esp + 0x38], 0x02                   // 0x00413ed2    f644243802
                         {disp8} je         _jmp_addr_0x00413ef6                          // 0x00413ed7    741d
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00413ed9    8b44242c
                         push               0x42c80000                                    // 0x00413edd    680000c842
                         push               0x0                                           // 0x00413ee2    6a00
                         push               0x1                                           // 0x00413ee4    6a01
                         push               ebx                                           // 0x00413ee6    53
                         add                eax, -0x02                                    // 0x00413ee7    83c0fe
                         push               eax                                           // 0x00413eea    50
                         push               edi                                           // 0x00413eeb    57
                         push               eax                                           // 0x00413eec    50
                         push               ebp                                           // 0x00413eed    55
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x00413eee    e8ade6ffff
                         add                esp, 0x20                                     // 0x00413ef3    83c420
_jmp_addr_0x00413ef6:    {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00413ef6    8b4c242c
                         push               0x42c80000                                    // 0x00413efa    680000c842
                         push               0x0                                           // 0x00413eff    6a00
                         push               0x1                                           // 0x00413f01    6a01
                         push               ebx                                           // 0x00413f03    53
                         push               esi                                           // 0x00413f04    56
                         {disp8} lea        eax, dword ptr [ecx + -0x02]                  // 0x00413f05    8d41fe
                         push               edi                                           // 0x00413f08    57
                         push               eax                                           // 0x00413f09    50
                         push               edi                                           // 0x00413f0a    57
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00413f0b    89442440
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x00413f0f    e88ce6ffff
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x00413f14    8b542440
                         push               0x42c80000                                    // 0x00413f18    680000c842
                         push               0x0                                           // 0x00413f1d    6a00
                         push               0x1                                           // 0x00413f1f    6a01
                         push               ebx                                           // 0x00413f21    53
                         push               edx                                           // 0x00413f22    52
                         push               ebp                                           // 0x00413f23    55
                         push               esi                                           // 0x00413f24    56
                         push               ebp                                           // 0x00413f25    55
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x00413f26    e875e6ffff
                         add                esp, 0x40                                     // 0x00413f2b    83c440
                         mov                ebx, 0x00000001                               // 0x00413f2e    bb01000000
_jmp_addr_0x00413f33:    {disp32} mov       eax, dword ptr [data_bytes + 0x502230]        // 0x00413f33    a13082ec00
                         mov                esi, 0x00000002                               // 0x00413f38    be02000000
                         cmp.s              eax, esi                                      // 0x00413f3d    3bc6
                         pop                ebp                                           // 0x00413f3f    5d
                         {disp8} je         _jmp_addr_0x00413f63                          // 0x00413f40    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413f42    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00413f47    8b08
                         push               esi                                           // 0x00413f49    56
                         push               0x10                                          // 0x00413f4a    6a10
                         push               0x0                                           // 0x00413f4c    6a00
                         push               eax                                           // 0x00413f4e    50
                         call               dword ptr [ecx + 0x94]                        // 0x00413f4f    ff9194000000
                         neg                eax                                           // 0x00413f55    f7d8
                         sbb.s              eax, eax                                      // 0x00413f57    1bc0
                         and                eax, 0xfffffffd                               // 0x00413f59    83e0fd
                         add.s              eax, esi                                      // 0x00413f5c    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502230], eax        // 0x00413f5e    a33082ec00
_jmp_addr_0x00413f63:    cmp                dword ptr [data_bytes + 0x502630], esi        // 0x00413f63    39353086ec00
                         {disp8} je         _jmp_addr_0x00413f8b                          // 0x00413f69    7420
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413f6b    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00413f70    8b10
                         push               esi                                           // 0x00413f72    56
                         push               0x10                                          // 0x00413f73    6a10
                         push               ebx                                           // 0x00413f75    53
                         push               eax                                           // 0x00413f76    50
                         call               dword ptr [edx + 0x94]                        // 0x00413f77    ff9294000000
                         neg                eax                                           // 0x00413f7d    f7d8
                         sbb.s              eax, eax                                      // 0x00413f7f    1bc0
                         and                eax, 0xfffffffd                               // 0x00413f81    83e0fd
                         add.s              eax, esi                                      // 0x00413f84    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502630], eax        // 0x00413f86    a33086ec00
_jmp_addr_0x00413f8b:    cmp                dword ptr [data_bytes + 0x502234], esi        // 0x00413f8b    39353482ec00
                         {disp8} je         _jmp_addr_0x00413fb4                          // 0x00413f91    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413f93    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00413f98    8b08
                         push               esi                                           // 0x00413f9a    56
                         push               0x11                                          // 0x00413f9b    6a11
                         push               0x0                                           // 0x00413f9d    6a00
                         push               eax                                           // 0x00413f9f    50
                         call               dword ptr [ecx + 0x94]                        // 0x00413fa0    ff9194000000
                         neg                eax                                           // 0x00413fa6    f7d8
                         sbb.s              eax, eax                                      // 0x00413fa8    1bc0
                         and                eax, 0xfffffffd                               // 0x00413faa    83e0fd
                         add.s              eax, esi                                      // 0x00413fad    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502234], eax        // 0x00413faf    a33482ec00
_jmp_addr_0x00413fb4:    cmp                dword ptr [data_bytes + 0x502634], esi        // 0x00413fb4    39353486ec00
                         {disp8} je         _jmp_addr_0x00413fdc                          // 0x00413fba    7420
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00413fbc    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00413fc1    8b10
                         push               esi                                           // 0x00413fc3    56
                         push               0x11                                          // 0x00413fc4    6a11
                         push               ebx                                           // 0x00413fc6    53
                         push               eax                                           // 0x00413fc7    50
                         call               dword ptr [edx + 0x94]                        // 0x00413fc8    ff9294000000
                         neg                eax                                           // 0x00413fce    f7d8
                         sbb.s              eax, eax                                      // 0x00413fd0    1bc0
                         and                eax, 0xfffffffd                               // 0x00413fd2    83e0fd
                         add.s              eax, esi                                      // 0x00413fd5    03c6
                         {disp32} mov       dword ptr [data_bytes + 0x502634], eax        // 0x00413fd7    a33486ec00
_jmp_addr_0x00413fdc:    pop                edi                                           // 0x00413fdc    5f
                         pop                esi                                           // 0x00413fdd    5e
                         pop                ebx                                           // 0x00413fde    5b
                         add                esp, 0x0c                                     // 0x00413fdf    83c40c
                         ret                                                              // 0x00413fe2    c3
                         nop                                                              // 0x00413fe3    90
                         nop                                                              // 0x00413fe4    90
                         nop                                                              // 0x00413fe5    90
                         nop                                                              // 0x00413fe6    90
                         nop                                                              // 0x00413fe7    90
                         nop                                                              // 0x00413fe8    90
                         nop                                                              // 0x00413fe9    90
                         nop                                                              // 0x00413fea    90
                         nop                                                              // 0x00413feb    90
                         nop                                                              // 0x00413fec    90
                         nop                                                              // 0x00413fed    90
                         nop                                                              // 0x00413fee    90
                         nop                                                              // 0x00413fef    90
_globl_ct_0x00413ff0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00413ff0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00413ff6    b001
                         test               al, cl                                        // 0x00413ff8    84c8
                         {disp8} jne        _jmp_addr_0x00414004                          // 0x00413ffa    7508
                         or.s               cl, al                                        // 0x00413ffc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00413ffe    880d34c9fa00
_jmp_addr_0x00414004:    {disp32} jmp       _jmp_addr_0x00414010                          // 0x00414004    e907000000
                         nop                                                              // 0x00414009    90
                         nop                                                              // 0x0041400a    90
                         nop                                                              // 0x0041400b    90
                         nop                                                              // 0x0041400c    90
                         nop                                                              // 0x0041400d    90
                         nop                                                              // 0x0041400e    90
                         nop                                                              // 0x0041400f    90
_jmp_addr_0x00414010:    push               0x00407870                                    // 0x00414010    6870784000
                         call               _atexit                                       // 0x00414015    e877173b00
                         pop                ecx                                           // 0x0041401a    59
                         ret                                                              // 0x0041401b    c3
                         nop                                                              // 0x0041401c    90
                         nop                                                              // 0x0041401d    90
                         nop                                                              // 0x0041401e    90
                         nop                                                              // 0x0041401f    90
_globl_ct_0x00414020:    {disp32} jmp       _jmp_addr_0x00414030                          // 0x00414020    e90b000000
                         nop                                                              // 0x00414025    90
                         nop                                                              // 0x00414026    90
                         nop                                                              // 0x00414027    90
                         nop                                                              // 0x00414028    90
                         nop                                                              // 0x00414029    90
                         nop                                                              // 0x0041402a    90
                         nop                                                              // 0x0041402b    90
                         nop                                                              // 0x0041402c    90
                         nop                                                              // 0x0041402d    90
                         nop                                                              // 0x0041402e    90
                         nop                                                              // 0x0041402f    90
_jmp_addr_0x00414030:    {disp32} fld       dword ptr [rdata_bytes + 0x263c]              // 0x00414030    d9053cb68a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2638]              // 0x00414036    d80d38b68a00
                         {disp32} fstp      dword ptr [data_bytes + 0x28701c]             // 0x0041403c    d91d1cd0c400
                         ret                                                              // 0x00414042    c3
                         nop                                                              // 0x00414043    90
                         nop                                                              // 0x00414044    90
                         nop                                                              // 0x00414045    90
                         nop                                                              // 0x00414046    90
                         nop                                                              // 0x00414047    90
                         nop                                                              // 0x00414048    90
                         nop                                                              // 0x00414049    90
                         nop                                                              // 0x0041404a    90
                         nop                                                              // 0x0041404b    90
                         nop                                                              // 0x0041404c    90
                         nop                                                              // 0x0041404d    90
                         nop                                                              // 0x0041404e    90
                         nop                                                              // 0x0041404f    90
_globl_ct_0x00414050:    {disp32} jmp       _jmp_addr_0x00414060                          // 0x00414050    e90b000000
                         nop                                                              // 0x00414055    90
                         nop                                                              // 0x00414056    90
                         nop                                                              // 0x00414057    90
                         nop                                                              // 0x00414058    90
                         nop                                                              // 0x00414059    90
                         nop                                                              // 0x0041405a    90
                         nop                                                              // 0x0041405b    90
                         nop                                                              // 0x0041405c    90
                         nop                                                              // 0x0041405d    90
                         nop                                                              // 0x0041405e    90
                         nop                                                              // 0x0041405f    90
_jmp_addr_0x00414060:    {disp32} mov       dword ptr [data_bytes + 0x287018], 0xffffffff // 0x00414060    c70518d0c400ffffffff
                         ret                                                              // 0x0041406a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0041406b    e809d8feff
_globl_ct_0x00414070:    call               _jmp_addr_0x00414080                          // 0x00414070    e80b000000
                         {disp32} jmp       _jmp_addr_0x004140e0                          // 0x00414075    e966000000
                         nop                                                              // 0x0041407a    90
                         nop                                                              // 0x0041407b    90
                         nop                                                              // 0x0041407c    90
                         nop                                                              // 0x0041407d    90
                         nop                                                              // 0x0041407e    90
                         nop                                                              // 0x0041407f    90
_jmp_addr_0x00414080:    mov                eax, 0x00c4ce20                               // 0x00414080    b820cec400
                         mov                ecx, 0x00000007                               // 0x00414085    b907000000
                         xor.s              edx, edx                                      // 0x0041408a    33d2
.att_syntax
_jmp_addr_0x0041408c:    movl               $??_7Base@@6B@, (%eax)                        // 0x0041408c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00414092    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00414095    895008
                         mov                dword ptr [eax], 0x008ab64c                   // 0x00414098    c7004cb68a00
                         add                eax, 0x48                                     // 0x0041409e    83c048
                         dec                ecx                                           // 0x004140a1    49
                         {disp8} jne        _jmp_addr_0x0041408c                          // 0x004140a2    75e8
                         ret                                                              // 0x004140a4    c3
                         nop                                                              // 0x004140a5    90
                         nop                                                              // 0x004140a6    90
                         nop                                                              // 0x004140a7    90
                         nop                                                              // 0x004140a8    90
                         nop                                                              // 0x004140a9    90
                         nop                                                              // 0x004140aa    90
                         nop                                                              // 0x004140ab    90
                         nop                                                              // 0x004140ac    90
                         nop                                                              // 0x004140ad    90
                         nop                                                              // 0x004140ae    90
                         nop                                                              // 0x004140af    90
?GetDebugText@GBaseInfo@@UBEPBDXZ:
                         xor.s              eax, eax                                      // 0x004140b0    33c0
                         ret                                                              // 0x004140b2    c3
                         nop                                                              // 0x004140b3    90
                         nop                                                              // 0x004140b4    90
                         nop                                                              // 0x004140b5    90
                         nop                                                              // 0x004140b6    90
                         nop                                                              // 0x004140b7    90
                         nop                                                              // 0x004140b8    90
                         nop                                                              // 0x004140b9    90
                         nop                                                              // 0x004140ba    90
                         nop                                                              // 0x004140bb    90
                         nop                                                              // 0x004140bc    90
                         nop                                                              // 0x004140bd    90
                         nop                                                              // 0x004140be    90
                         nop                                                              // 0x004140bf    90
?GetBaseInfo@GAlignmentInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004140c0    8b442404
                         mov                dword ptr [eax], 0x00000007                   // 0x004140c4    c70007000000
                         mov                eax, 0x00c4ce20                               // 0x004140ca    b820cec400
                         ret                0x0004                                        // 0x004140cf    c20400
                         nop                                                              // 0x004140d2    90
                         nop                                                              // 0x004140d3    90
                         nop                                                              // 0x004140d4    90
                         nop                                                              // 0x004140d5    90
                         nop                                                              // 0x004140d6    90
                         nop                                                              // 0x004140d7    90
                         nop                                                              // 0x004140d8    90
                         nop                                                              // 0x004140d9    90
                         nop                                                              // 0x004140da    90
                         nop                                                              // 0x004140db    90
                         nop                                                              // 0x004140dc    90
                         nop                                                              // 0x004140dd    90
                         nop                                                              // 0x004140de    90
                         nop                                                              // 0x004140df    90
_jmp_addr_0x004140e0:    push               0x004140f0                                    // 0x004140e0    68f0404100
                         call               _atexit                                       // 0x004140e5    e8a7163b00
                         pop                ecx                                           // 0x004140ea    59
                         ret                                                              // 0x004140eb    c3
                         nop                                                              // 0x004140ec    90
                         nop                                                              // 0x004140ed    90
                         nop                                                              // 0x004140ee    90
                         nop                                                              // 0x004140ef    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x286e1c]          // 0x004140f0    8a0d1ccec400
                         mov                al, 0x01                                      // 0x004140f6    b001
                         test               al, cl                                        // 0x004140f8    84c8
                         {disp8} jne        _jmp_addr_0x0041411f                          // 0x004140fa    7523
                         push               esi                                           // 0x004140fc    56
                         or.s               cl, al                                        // 0x004140fd    0ac8
                         push               edi                                           // 0x004140ff    57
                         {disp32} mov       byte ptr [data_bytes + 0x286e1c], cl          // 0x00414100    880d1ccec400
                         mov                esi, 0x00c4d018                               // 0x00414106    be18d0c400
                         mov                edi, 0x00000007                               // 0x0041410b    bf07000000
_jmp_addr_0x00414110:    sub                esi, 0x48                                     // 0x00414110    83ee48
                         mov.s              ecx, esi                                      // 0x00414113    8bce
                         call               _jmp_addr_0x00436960                          // 0x00414115    e846280200
                         dec                edi                                           // 0x0041411a    4f
                         {disp8} jne        _jmp_addr_0x00414110                          // 0x0041411b    75f3
                         pop                edi                                           // 0x0041411d    5f
                         pop                esi                                           // 0x0041411e    5e
_jmp_addr_0x0041411f:    ret                                                              // 0x0041411f    c3
??_GGAlignmentInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x00414120    56
                         mov.s              esi, ecx                                      // 0x00414121    8bf1
                         call               _jmp_addr_0x00436960                          // 0x00414123    e838280200
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00414128    f644240801
                         {disp8} je         _jmp_addr_0x0041413a                          // 0x0041412d    740b
                         push               0x48                                          // 0x0041412f    6a48
                         push               esi                                           // 0x00414131    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00414132    e839280200
                         add                esp, 0x08                                     // 0x00414137    83c408
_jmp_addr_0x0041413a:    mov.s              eax, esi                                      // 0x0041413a    8bc6
                         pop                esi                                           // 0x0041413c    5e
                         ret                0x0004                                        // 0x0041413d    c20400
_jmp_addr_0x00414140:    push               esi                                           // 0x00414140    56
                         mov.s              esi, ecx                                      // 0x00414141    8bf1
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x00414143    d9460c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x00414146    d81d78b68a00
                         fnstsw             ax                                            // 0x0041414c    dfe0
                         test               ah, 0x01                                      // 0x0041414e    f6c401
                         {disp8} je         _jmp_addr_0x0041415c                          // 0x00414151    7409
                         {disp8} mov        dword ptr [esi + 0x0c], 0xbf800000            // 0x00414153    c7460c000080bf
                         {disp8} jmp        _jmp_addr_0x00414173                          // 0x0041415a    eb17
_jmp_addr_0x0041415c:    {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0041415c    d9460c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0041415f    d81d90a38a00
                         fnstsw             ax                                            // 0x00414165    dfe0
                         test               ah, 0x41                                      // 0x00414167    f6c441
                         {disp8} jne        _jmp_addr_0x00414173                          // 0x0041416a    7507
                         {disp8} mov        dword ptr [esi + 0x0c], 0x3f800000            // 0x0041416c    c7460c0000803f
_jmp_addr_0x00414173:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00414173    8b4c2408
                         mov                eax, dword ptr [ecx]                          // 0x00414177    8b01
                         call               dword ptr [eax + 0x40]                        // 0x00414179    ff5040
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x0041417c    d84e0c
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0041417f    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00414183    8b4c2408
                         push               ecx                                           // 0x00414187    51
                         mov.s              ecx, esi                                      // 0x00414188    8bce
                         call               _jmp_addr_0x004146b0                          // 0x0041418a    e821050000
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000            // 0x0041418f    c7460c00000000
                         pop                esi                                           // 0x00414196    5e
                         ret                0x0004                                        // 0x00414197    c20400
                         call               dword ptr [__imp__GetSystemMetrics@4]         // 0x0041419a    ff1504988a00
_jmp_addr_0x004141a0:    push               ebx                                           // 0x004141a0    53
                         push               esi                                           // 0x004141a1    56
                         mov.s              ebx, ecx                                      // 0x004141a2    8bd9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004141a4    8b0d5c19d000
                         push               edi                                           // 0x004141aa    57
                         call               _jmp_addr_0x00555880                          // 0x004141ab    e8d0161400
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004141b0    8b742410
                         test               esi, esi                                      // 0x004141b4    85f6
                         mov.s              edi, eax                                      // 0x004141b6    8bf8
                         {disp8} je         _jmp_addr_0x004141de                          // 0x004141b8    7424
                         push               edi                                           // 0x004141ba    57
                         mov.s              ecx, esi                                      // 0x004141bb    8bce
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                          // 0x004141bd    e88e952300
                         test               eax, eax                                      // 0x004141c2    85c0
                         {disp8} je         _jmp_addr_0x004141de                          // 0x004141c4    7418
                         mov                eax, dword ptr [esi]                          // 0x004141c6    8b06
                         {disp8} mov        edi, dword ptr [edi + 0x30]                   // 0x004141c8    8b7f30
                         mov.s              ecx, esi                                      // 0x004141cb    8bce
                         call               dword ptr [eax + 0x40]                        // 0x004141cd    ff5040
                         {disp8} fmul       dword ptr [ebx + 0x0c]                        // 0x004141d0    d84b0c
                         push               ecx                                           // 0x004141d3    51
                         mov.s              ecx, edi                                      // 0x004141d4    8bcf
                         fstp               dword ptr [esp]                               // 0x004141d6    d91c24
                         call               _jmp_addr_0x0071ceb0                          // 0x004141d9    e8d28c3000
_jmp_addr_0x004141de:    push               esi                                           // 0x004141de    56
                         mov.s              ecx, ebx                                      // 0x004141df    8bcb
                         call               _jmp_addr_0x00414140                          // 0x004141e1    e85affffff
                         pop                edi                                           // 0x004141e6    5f
                         pop                esi                                           // 0x004141e7    5e
                         pop                ebx                                           // 0x004141e8    5b
                         ret                0x0004                                        // 0x004141e9    c20400
                         nop                                                              // 0x004141ec    90
                         nop                                                              // 0x004141ed    90
                         nop                                                              // 0x004141ee    90
                         nop                                                              // 0x004141ef    90
_jmp_addr_0x004141f0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004141f0    8b442404
                         push               esi                                           // 0x004141f4    56
                         mov.s              esi, ecx                                      // 0x004141f5    8bf1
                         {disp8} lea        ecx, dword ptr [eax + 0x34]                   // 0x004141f7    8d4834
                         call               _jmp_addr_0x007466d0                          // 0x004141fa    e8d1243300
                         push               ecx                                           // 0x004141ff    51
                         mov.s              ecx, esi                                      // 0x00414200    8bce
                         fstp               dword ptr [esp]                               // 0x00414202    d91c24
                         call               _jmp_addr_0x00414660                          // 0x00414205    e856040000
                         {disp8} fadd       dword ptr [esi + 0x0c]                        // 0x0041420a    d8460c
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x0041420d    d95e0c
                         pop                esi                                           // 0x00414210    5e
                         ret                0x0004                                        // 0x00414211    c20400
                         nop                                                              // 0x00414214    90
                         nop                                                              // 0x00414215    90
                         nop                                                              // 0x00414216    90
                         nop                                                              // 0x00414217    90
                         nop                                                              // 0x00414218    90
                         nop                                                              // 0x00414219    90
                         nop                                                              // 0x0041421a    90
                         nop                                                              // 0x0041421b    90
                         nop                                                              // 0x0041421c    90
                         nop                                                              // 0x0041421d    90
                         nop                                                              // 0x0041421e    90
                         nop                                                              // 0x0041421f    90
_jmp_addr_0x00414220:    push               ecx                                           // 0x00414220    51
                         push               ebx                                           // 0x00414221    53
                         push               esi                                           // 0x00414222    56
                         push               edi                                           // 0x00414223    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00414224    8b7c2414
                         mov.s              ebx, ecx                                      // 0x00414228    8bd9
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x0041422a    8b8f64010000
                         add                ecx, 0x00000f48                               // 0x00414230    81c1480f0000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x00414236    c744240c00000000
                         call               _jmp_addr_0x004f12e0                          // 0x0041423e    e89dd00d00
                         test               eax, eax                                      // 0x00414243    85c0
                         {disp32} je        _jmp_addr_0x004142e3                          // 0x00414245    0f8498000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x0041424b    8b8f64010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000f50]             // 0x00414251    8b81500f0000
                         test               eax, eax                                      // 0x00414257    85c0
                         {disp8} jl         _jmp_addr_0x0041427f                          // 0x00414259    7c24
                         cmp                eax, 0x28                                     // 0x0041425b    83f828
                         {disp8} jge        _jmp_addr_0x0041427f                          // 0x0041425e    7d1f
                         {disp8} mov        esi, dword ptr [edi + 0x28]                   // 0x00414260    8b7728
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x00414263    8d14c500000000
                         sub.s              edx, eax                                      // 0x0041426a    2bd0
                         shl                edx, 6                                        // 0x0041426c    c1e206
                         {disp32} fld       dword ptr [edx + 0x00c67ee8]                  // 0x0041426f    d982e87ec600
                         {disp32} fmul      dword ptr [esi + 0x00000384]                  // 0x00414275    d88e84030000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0041427b    d95c240c
_jmp_addr_0x0041427f:    cmp                eax, 0x04                                     // 0x0041427f    83f804
                         {disp8} jne        _jmp_addr_0x004142e3                          // 0x00414282    755f
                         {disp32} mov       eax, dword ptr [ecx + 0x00000f58]             // 0x00414284    8b81580f0000
                         test               eax, eax                                      // 0x0041428a    85c0
                         {disp8} je         _jmp_addr_0x004142e3                          // 0x0041428c    7455
                         {disp8} mov        eax, dword ptr [eax + 0x30]                   // 0x0041428e    8b4030
                         push               0x0                                           // 0x00414291    6a00
                         push               0x009c7f50                                    // 0x00414293    68507f9c00
                         push               0x009c7f30                                    // 0x00414298    68307f9c00
                         push               0x0                                           // 0x0041429d    6a00
                         push               eax                                           // 0x0041429f    50
                         call               ___RTDynamicCast                              // 0x004142a0    e874173b00
                         mov.s              esi, eax                                      // 0x004142a5    8bf0
                         add                esp, 0x14                                     // 0x004142a7    83c414
                         test               esi, esi                                      // 0x004142aa    85f6
                         {disp8} je         _jmp_addr_0x004142e3                          // 0x004142ac    7435
                         mov                edx, dword ptr [esi]                          // 0x004142ae    8b16
                         push               0x0                                           // 0x004142b0    6a00
                         mov.s              ecx, esi                                      // 0x004142b2    8bce
                         call               dword ptr [edx + 0x2c8]                       // 0x004142b4    ff92c8020000
                         test               eax, eax                                      // 0x004142ba    85c0
                         {disp8} je         _jmp_addr_0x004142e3                          // 0x004142bc    7425
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x004142be    8b4e28
                         mov                eax, dword ptr [ecx]                          // 0x004142c1    8b01
                         call               dword ptr [eax + 0x34]                        // 0x004142c3    ff5034
                         test               eax, eax                                      // 0x004142c6    85c0
                         {disp8} jl         _jmp_addr_0x004142e3                          // 0x004142c8    7c19
                         cmp                eax, 0x0e                                     // 0x004142ca    83f80e
                         {disp8} jge        _jmp_addr_0x004142e3                          // 0x004142cd    7d14
                         {disp8} mov        ecx, dword ptr [edi + 0x28]                   // 0x004142cf    8b4f28
                         {disp32} fld       dword ptr [eax * 0x4 + 0x00c4ce30]            // 0x004142d2    d9048530cec400
                         {disp32} fmul      dword ptr [ecx + 0x00000384]                  // 0x004142d9    d88984030000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004142df    d95c240c
_jmp_addr_0x004142e3:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x004142e3    8b54240c
                         push               edx                                           // 0x004142e7    52
                         mov.s              ecx, ebx                                      // 0x004142e8    8bcb
                         call               _jmp_addr_0x00414660                          // 0x004142ea    e871030000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004142ef    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004142f3    8b442414
                         push               eax                                           // 0x004142f7    50
                         push               edi                                           // 0x004142f8    57
                         mov                ecx, 0x00c4cd40                               // 0x004142f9    b940cdc400
                         call               _jmp_addr_0x00414fa0                          // 0x004142fe    e89d0c0000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00414303    d9442414
                         {disp8} fadd       dword ptr [ebx + 0x0c]                        // 0x00414307    d8430c
                         pop                edi                                           // 0x0041430a    5f
                         pop                esi                                           // 0x0041430b    5e
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x0041430c    d95b0c
                         pop                ebx                                           // 0x0041430f    5b
                         pop                ecx                                           // 0x00414310    59
                         ret                0x0004                                        // 0x00414311    c20400
                         nop                                                              // 0x00414314    90
                         nop                                                              // 0x00414315    90
                         nop                                                              // 0x00414316    90
                         nop                                                              // 0x00414317    90
                         nop                                                              // 0x00414318    90
                         nop                                                              // 0x00414319    90
                         nop                                                              // 0x0041431a    90
                         nop                                                              // 0x0041431b    90
                         nop                                                              // 0x0041431c    90
                         nop                                                              // 0x0041431d    90
                         nop                                                              // 0x0041431e    90
                         nop                                                              // 0x0041431f    90
_jmp_addr_0x00414320:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00414320    8b442408
                         push               esi                                           // 0x00414324    56
                         mov.s              esi, ecx                                      // 0x00414325    8bf1
                         push               eax                                           // 0x00414327    50
                         call               _jmp_addr_0x00414660                          // 0x00414328    e833030000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0041432d    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00414331    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00414335    8b542408
                         push               ecx                                           // 0x00414339    51
                         push               edx                                           // 0x0041433a    52
                         mov                ecx, 0x00c4cd40                               // 0x0041433b    b940cdc400
                         call               _jmp_addr_0x00414ee0                          // 0x00414340    e89b0b0000
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00414345    d944240c
                         {disp8} fadd       dword ptr [esi + 0x0c]                        // 0x00414349    d8460c
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x0041434c    d95e0c
                         pop                esi                                           // 0x0041434f    5e
                         ret                0x0008                                        // 0x00414350    c20800
                         nop                                                              // 0x00414353    90
                         nop                                                              // 0x00414354    90
                         nop                                                              // 0x00414355    90
                         nop                                                              // 0x00414356    90
                         nop                                                              // 0x00414357    90
                         nop                                                              // 0x00414358    90
                         nop                                                              // 0x00414359    90
                         nop                                                              // 0x0041435a    90
                         nop                                                              // 0x0041435b    90
                         nop                                                              // 0x0041435c    90
                         nop                                                              // 0x0041435d    90
                         nop                                                              // 0x0041435e    90
                         nop                                                              // 0x0041435f    90
_jmp_addr_0x00414360:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00414360    d9442404
                         push               ebx                                           // 0x00414364    53
                         push               esi                                           // 0x00414365    56
                         push               edi                                           // 0x00414366    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00414367    8b7c2414
                         {disp8} mov        eax, dword ptr [edi + 0x64]                   // 0x0041436b    8b4764
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0041436e    d84814
                         mov.s              esi, ecx                                      // 0x00414371    8bf1
                         push               ecx                                           // 0x00414373    51
                         fstp               dword ptr [esp]                               // 0x00414374    d91c24
                         call               _jmp_addr_0x00414660                          // 0x00414377    e8e4020000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0041437c    8b442418
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00414380    d95c2410
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00414384    8b5c2410
                         push               ebx                                           // 0x00414388    53
                         push               eax                                           // 0x00414389    50
                         push               edi                                           // 0x0041438a    57
                         mov                ecx, 0x00c4cd40                               // 0x0041438b    b940cdc400
                         call               _jmp_addr_0x00415110                          // 0x00414390    e87b0d0000
                         push               ebx                                           // 0x00414395    53
                         mov.s              ecx, esi                                      // 0x00414396    8bce
                         call               _jmp_addr_0x004146b0                          // 0x00414398    e813030000
                         pop                edi                                           // 0x0041439d    5f
                         pop                esi                                           // 0x0041439e    5e
                         pop                ebx                                           // 0x0041439f    5b
                         ret                0x000c                                        // 0x004143a0    c20c00
                         nop                                                              // 0x004143a3    90
                         nop                                                              // 0x004143a4    90
                         nop                                                              // 0x004143a5    90
                         nop                                                              // 0x004143a6    90
                         nop                                                              // 0x004143a7    90
                         nop                                                              // 0x004143a8    90
                         nop                                                              // 0x004143a9    90
                         nop                                                              // 0x004143aa    90
                         nop                                                              // 0x004143ab    90
                         nop                                                              // 0x004143ac    90
                         nop                                                              // 0x004143ad    90
                         nop                                                              // 0x004143ae    90
                         nop                                                              // 0x004143af    90
_jmp_addr_0x004143b0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004143b0    8b442404
                         test               eax, eax                                      // 0x004143b4    85c0
                         push               edi                                           // 0x004143b6    57
                         mov.s              edi, ecx                                      // 0x004143b7    8bf9
                         {disp8} je         _jmp_addr_0x00414406                          // 0x004143b9    744b
                         {disp8} mov        eax, dword ptr [eax + 0x64]                   // 0x004143bb    8b4064
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004143be    8b4c2410
                         {disp8} fld        dword ptr [eax + ecx * 0x4 + 0x20]            // 0x004143c2    d9448820
                         push               esi                                           // 0x004143c6    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004143c7    8b742410
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004143cb    d95c240c
                         mov                edx, dword ptr [esi]                          // 0x004143cf    8b16
                         mov.s              ecx, esi                                      // 0x004143d1    8bce
                         call               dword ptr [edx + 0x458]                       // 0x004143d3    ff9258040000
                         test               eax, eax                                      // 0x004143d9    85c0
                         {disp8} je         _jmp_addr_0x004143e7                          // 0x004143db    740a
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x004143dd    d944240c
                         fadd.s             st(0), st(0)                                  // 0x004143e1    dcc0
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004143e3    d95c240c
_jmp_addr_0x004143e7:    mov                eax, dword ptr [esi]                          // 0x004143e7    8b06
                         mov.s              ecx, esi                                      // 0x004143e9    8bce
                         call               dword ptr [eax + 0x454]                       // 0x004143eb    ff9054040000
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x004143f1    d944240c
                         test               eax, eax                                      // 0x004143f5    85c0
                         pop                esi                                           // 0x004143f7    5e
                         {disp8} je         _jmp_addr_0x00414400                          // 0x004143f8    7406
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004143fa    d80db4a38a00
_jmp_addr_0x00414400:    {disp8} fadd       dword ptr [edi + 0x0c]                        // 0x00414400    d8470c
                         {disp8} fstp       dword ptr [edi + 0x0c]                        // 0x00414403    d95f0c
_jmp_addr_0x00414406:    pop                edi                                           // 0x00414406    5f
                         ret                0x000c                                        // 0x00414407    c20c00
                         call               dword ptr [rdata_bytes + 0x480]               // 0x0041440a    ff1580948a00
_jmp_addr_0x00414410:    sub                esp, 0x08                                     // 0x00414410    83ec08
                         push               esi                                           // 0x00414413    56
                         push               edi                                           // 0x00414414    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00414415    8b7c2414
                         mov                eax, dword ptr [edi]                          // 0x00414419    8b07
                         mov.s              esi, ecx                                      // 0x0041441b    8bf1
                         mov.s              ecx, edi                                      // 0x0041441d    8bcf
                         call               dword ptr [eax + 0x11c]                       // 0x0041441f    ff901c010000
                         {disp8} fsubr      dword ptr [esp + 0x1c]                        // 0x00414425    d86c241c
                         {disp8} fst        dword ptr [esp + 0x1c]                        // 0x00414429    d954241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0041442d    d81d98a38a00
                         fnstsw             ax                                            // 0x00414433    dfe0
                         test               ah, 0x40                                      // 0x00414435    f6c440
                         {disp32} jne       _jmp_addr_0x00414517                          // 0x00414438    0f85d9000000
                         {disp8} mov        ecx, dword ptr [edi + 0x28]                   // 0x0041443e    8b4f28
                         mov                edx, dword ptr [ecx]                          // 0x00414441    8b11
                         push               ebx                                           // 0x00414443    53
                         push               ebp                                           // 0x00414444    55
                         call               dword ptr [edx + 0x34]                        // 0x00414445    ff5234
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00414448    8b0d5c19d000
                         mov.s              ebp, eax                                      // 0x0041444e    8be8
                         push               0x0                                           // 0x00414450    6a00
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x00414452    896c2418
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x00414456    e855c51300
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0041445b    d9442424
                         {disp8} mov        eax, dword ptr [eax + 0x64]                   // 0x0041445f    8b4064
                         fabs                                                             // 0x00414462    d9e1
                         {disp8} fadd       dword ptr [eax + 0x1c]                        // 0x00414464    d8401c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00414467    8b4c2420
                         mov                edi, 0x00000001                               // 0x0041446b    bf01000000
                         {disp8} lea        ebx, dword ptr [ecx + 0x0c]                   // 0x00414470    8d590c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00414473    d95c2410
                         {disp32} lea       ebp, dword ptr [ebp * 0x4 + 0x00c4ce78]       // 0x00414477    8d2cad78cec400
_jmp_addr_0x0041447e:    fld                dword ptr [ebx]                               // 0x0041447e    d903
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00414480    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00414484    8b4c241c
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x00414488    d84d00
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0041448b    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0041448f    d95c2424
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00414493    8b542424
                         push               edx                                           // 0x00414497    52
                         push               edi                                           // 0x00414498    57
                         push               eax                                           // 0x00414499    50
                         push               ecx                                           // 0x0041449a    51
                         mov                ecx, 0x00c4cd40                               // 0x0041449b    b940cdc400
                         call               _jmp_addr_0x00414e10                          // 0x004144a0    e86b090000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x004144a5    8b542424
                         push               edx                                           // 0x004144a9    52
                         mov.s              ecx, esi                                      // 0x004144aa    8bce
                         call               _jmp_addr_0x00414660                          // 0x004144ac    e8af010000
                         {disp8} fadd       dword ptr [esi + 0x0c]                        // 0x004144b1    d8460c
                         inc                edi                                           // 0x004144b4    47
                         add                ebx, 0x04                                     // 0x004144b5    83c304
                         add                ebp, 0x48                                     // 0x004144b8    83c548
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x004144bb    d95e0c
                         cmp                edi, 0x04                                     // 0x004144be    83ff04
                         {disp8} jbe        _jmp_addr_0x0041447e                          // 0x004144c1    76bb
                         {disp8} mov        ebp, dword ptr [esp + 0x20]                   // 0x004144c3    8b6c2420
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x004144c7    8b4508
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x004144ca    8b54241c
                         mov.s              ecx, eax                                      // 0x004144ce    8bc8
                         push               ecx                                           // 0x004144d0    51
                         push               edx                                           // 0x004144d1    52
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x004144d2    89442428
                         call               _jmp_addr_0x0072eec0                          // 0x004144d6    e8e5a93100
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004144db    8b44241c
                         {disp32} fmul      dword ptr [eax * 0x4 + 0x00c4ce30]            // 0x004144df    d80c8530cec400
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x004144e6    8b4c2424
                         add                esp, 0x08                                     // 0x004144ea    83c408
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x004144ed    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x004144f1    d95c2420
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x004144f5    8b5c2420
                         push               ebx                                           // 0x004144f9    53
                         push               edi                                           // 0x004144fa    57
                         push               ebp                                           // 0x004144fb    55
                         push               ecx                                           // 0x004144fc    51
                         mov                ecx, 0x00c4cd40                               // 0x004144fd    b940cdc400
                         call               _jmp_addr_0x00414e10                          // 0x00414502    e809090000
                         push               ebx                                           // 0x00414507    53
                         mov.s              ecx, esi                                      // 0x00414508    8bce
                         call               _jmp_addr_0x00414660                          // 0x0041450a    e851010000
                         {disp8} fadd       dword ptr [esi + 0x0c]                        // 0x0041450f    d8460c
                         pop                ebp                                           // 0x00414512    5d
                         pop                ebx                                           // 0x00414513    5b
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x00414514    d95e0c
_jmp_addr_0x00414517:    pop                edi                                           // 0x00414517    5f
                         pop                esi                                           // 0x00414518    5e
                         add                esp, 0x08                                     // 0x00414519    83c408
                         ret                0x000c                                        // 0x0041451c    c20c00
                         nop                                                              // 0x0041451f    90
_jmp_addr_0x00414520:    push               ebx                                           // 0x00414520    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00414521    8b5c2410
                         test               ebx, ebx                                      // 0x00414525    85db
                         push               esi                                           // 0x00414527    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00414528    8b74240c
                         push               edi                                           // 0x0041452c    57
                         mov.s              edi, ecx                                      // 0x0041452d    8bf9
                         {disp8} jle        _jmp_addr_0x00414547                          // 0x0041452f    7e16
                         mov                eax, dword ptr [esi]                          // 0x00414531    8b06
                         mov.s              ecx, esi                                      // 0x00414533    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00414535    ff5048
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00414538    d944241c
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x0041453c    8b4828
                         {disp32} fmul      dword ptr [ecx + 0x00000138]                  // 0x0041453f    d88938010000
                         {disp8} jmp        _jmp_addr_0x0041455b                          // 0x00414545    eb14
_jmp_addr_0x00414547:    mov                edx, dword ptr [esi]                          // 0x00414547    8b16
                         mov.s              ecx, esi                                      // 0x00414549    8bce
                         call               dword ptr [edx + 0x48]                        // 0x0041454b    ff5248
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0041454e    d944241c
                         {disp8} mov        eax, dword ptr [eax + 0x28]                   // 0x00414552    8b4028
                         {disp32} fmul      dword ptr [eax + 0x0000013c]                  // 0x00414555    d8883c010000
_jmp_addr_0x0041455b:    {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0041455b    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0041455f    8b4c2410
                         push               ecx                                           // 0x00414563    51
                         mov.s              ecx, edi                                      // 0x00414564    8bcf
                         call               _jmp_addr_0x00414660                          // 0x00414566    e8f5000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0041456b    d95c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0041456f    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00414573    8b442414
                         push               edx                                           // 0x00414577    52
                         push               ebx                                           // 0x00414578    53
                         push               eax                                           // 0x00414579    50
                         push               esi                                           // 0x0041457a    56
                         mov                ecx, 0x00c4cd40                               // 0x0041457b    b940cdc400
                         call               _jmp_addr_0x004153c0                          // 0x00414580    e83b0e0000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00414585    d9442410
                         {disp8} fadd       dword ptr [edi + 0x0c]                        // 0x00414589    d8470c
                         {disp8} fstp       dword ptr [edi + 0x0c]                        // 0x0041458c    d95f0c
                         pop                edi                                           // 0x0041458f    5f
                         pop                esi                                           // 0x00414590    5e
                         pop                ebx                                           // 0x00414591    5b
                         ret                0x0010                                        // 0x00414592    c21000
                         nop                                                              // 0x00414595    90
                         nop                                                              // 0x00414596    90
                         nop                                                              // 0x00414597    90
                         nop                                                              // 0x00414598    90
                         nop                                                              // 0x00414599    90
                         nop                                                              // 0x0041459a    90
                         nop                                                              // 0x0041459b    90
                         nop                                                              // 0x0041459c    90
                         nop                                                              // 0x0041459d    90
                         nop                                                              // 0x0041459e    90
                         nop                                                              // 0x0041459f    90
_jmp_addr_0x004145a0:    {disp8} mov        al, byte ptr [esp + 0x0c]                     // 0x004145a0    8a44240c
                         test               al, al                                        // 0x004145a4    84c0
                         push               esi                                           // 0x004145a6    56
                         push               edi                                           // 0x004145a7    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004145a8    8b7c240c
                         mov.s              esi, ecx                                      // 0x004145ac    8bf1
                         {disp8} je         _jmp_addr_0x004145bc                          // 0x004145ae    740c
                         {disp8} mov        eax, dword ptr [edi + 0x64]                   // 0x004145b0    8b4764
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x004145b3    8b4818
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x004145b6    894c2414
                         {disp8} jmp        _jmp_addr_0x004145c8                          // 0x004145ba    eb0c
_jmp_addr_0x004145bc:    {disp8} mov        edx, dword ptr [edi + 0x64]                   // 0x004145bc    8b5764
                         {disp8} fld        dword ptr [edx + 0x18]                        // 0x004145bf    d94218
                         fchs                                                             // 0x004145c2    d9e0
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004145c4    d95c2414
_jmp_addr_0x004145c8:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004145c8    8b442414
                         push               eax                                           // 0x004145cc    50
                         mov.s              ecx, esi                                      // 0x004145cd    8bce
                         call               _jmp_addr_0x00414660                          // 0x004145cf    e88c000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004145d4    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004145d8    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004145dc    8b542410
                         push               ecx                                           // 0x004145e0    51
                         push               edx                                           // 0x004145e1    52
                         push               edi                                           // 0x004145e2    57
                         mov                ecx, 0x00c4cd40                               // 0x004145e3    b940cdc400
                         call               _jmp_addr_0x00415260                          // 0x004145e8    e8730c0000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004145ed    d9442414
                         {disp8} fadd       dword ptr [esi + 0x0c]                        // 0x004145f1    d8460c
                         pop                edi                                           // 0x004145f4    5f
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x004145f5    d95e0c
                         pop                esi                                           // 0x004145f8    5e
                         ret                0x000c                                        // 0x004145f9    c20c00
                         nop                                                              // 0x004145fc    90
                         nop                                                              // 0x004145fd    90
                         nop                                                              // 0x004145fe    90
                         nop                                                              // 0x004145ff    90
_jmp_addr_0x00414600:    push               esi                                           // 0x00414600    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00414601    8b74240c
                         mov                eax, dword ptr [esi]                          // 0x00414605    8b06
                         push               edi                                           // 0x00414607    57
                         mov.s              edi, ecx                                      // 0x00414608    8bf9
                         mov.s              ecx, esi                                      // 0x0041460a    8bce
                         call               dword ptr [eax + 0x48]                        // 0x0041460c    ff5048
                         test               eax, eax                                      // 0x0041460f    85c0
                         {disp8} je         _jmp_addr_0x00414655                          // 0x00414611    7442
                         mov                edx, dword ptr [esi]                          // 0x00414613    8b16
                         push               esi                                           // 0x00414615    56
                         mov.s              ecx, esi                                      // 0x00414616    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00414618    ff5248
                         mov.s              ecx, eax                                      // 0x0041461b    8bc8
                         call               _jmp_addr_0x00741220                          // 0x0041461d    e8fecb3200
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00414622    d95c2410
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00414626    8b442410
                         push               eax                                           // 0x0041462a    50
                         mov.s              ecx, edi                                      // 0x0041462b    8bcf
                         call               _jmp_addr_0x00414660                          // 0x0041462d    e82e000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00414632    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00414636    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0041463a    8b54240c
                         push               ecx                                           // 0x0041463e    51
                         push               esi                                           // 0x0041463f    56
                         push               edx                                           // 0x00414640    52
                         mov                ecx, 0x00c4cd40                               // 0x00414641    b940cdc400
                         call               _jmp_addr_0x00415310                          // 0x00414646    e8c50c0000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0041464b    d9442410
                         {disp8} fadd       dword ptr [edi + 0x0c]                        // 0x0041464f    d8470c
                         {disp8} fstp       dword ptr [edi + 0x0c]                        // 0x00414652    d95f0c
_jmp_addr_0x00414655:    pop                edi                                           // 0x00414655    5f
                         pop                esi                                           // 0x00414656    5e
                         ret                0x0008                                        // 0x00414657    c20800
                         call               dword ptr [__imp__CoFileTimeToDosDateTime@4]  // 0x0041465a    ff1578998a00
_jmp_addr_0x00414660:    {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00414660    d94108
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00414663    d81598a38a00
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00414669    d9442404
                         fnstsw             ax                                            // 0x0041466d    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0041466f    d81d98a38a00
                         test               ah, 0x01                                      // 0x00414675    f6c401
                         fnstsw             ax                                            // 0x00414678    dfe0
                         {disp8} je         _jmp_addr_0x00414696                          // 0x0041467a    741a
                         test               ah, 0x01                                      // 0x0041467c    f6c401
                         {disp8} jne        _jmp_addr_0x0041469b                          // 0x0041467f    751a
_jmp_addr_0x00414681:    {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00414681    d80db4a38a00
                         fabs                                                             // 0x00414687    d9e1
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]   // 0x00414689    dc0580b68a00
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0041468f    d84c2404
                         ret                0x0004                                        // 0x00414693    c20400
_jmp_addr_0x00414696:    test               ah, 0x01                                      // 0x00414696    f6c401
                         {disp8} jne        _jmp_addr_0x00414681                          // 0x00414699    75e6
_jmp_addr_0x0041469b:    {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0041469b    d80db4a38a00
                         fabs                                                             // 0x004146a1    d9e1
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x004146a3    dc2d80b68a00
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x004146a9    d84c2404
                         ret                0x0004                                        // 0x004146ad    c20400
_jmp_addr_0x004146b0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x004146b0    d9442404
                         {disp8} fadd       dword ptr [ecx + 0x08]                        // 0x004146b4    d84108
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]              // 0x004146b7    d81578b68a00
                         {disp8} fst        dword ptr [ecx + 0x08]                        // 0x004146bd    d95108
                         fnstsw             ax                                            // 0x004146c0    dfe0
                         test               ah, 0x01                                      // 0x004146c2    f6c401
                         {disp8} je         _jmp_addr_0x004146d3                          // 0x004146c5    740c
                         fstp               st(0)                                         // 0x004146c7    ddd8
                         {disp8} mov        dword ptr [ecx + 0x08], 0xbf800000            // 0x004146c9    c74108000080bf
                         ret                0x0004                                        // 0x004146d0    c20400
_jmp_addr_0x004146d3:    {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x004146d3    d81d90a38a00
                         fnstsw             ax                                            // 0x004146d9    dfe0
                         test               ah, 0x41                                      // 0x004146db    f6c441
                         {disp8} jne        _jmp_addr_0x004146e7                          // 0x004146de    7507
                         {disp8} mov        dword ptr [ecx + 0x08], 0x3f800000            // 0x004146e0    c741080000803f
_jmp_addr_0x004146e7:    ret                0x0004                                        // 0x004146e7    c20400
                         call               dword ptr [__imp__GetUserNameA@4]             // 0x004146ea    ff150c908a00
_jmp_addr_0x004146f0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x004146f0    d9442404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004146f4    8b442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x004146f8    d81d78b68a00
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x004146fe    894108
                         fnstsw             ax                                            // 0x00414701    dfe0
                         test               ah, 0x01                                      // 0x00414703    f6c401
                         {disp8} je         _jmp_addr_0x00414712                          // 0x00414706    740a
                         {disp8} mov        dword ptr [ecx + 0x08], 0xbf800000            // 0x00414708    c74108000080bf
                         ret                0x0004                                        // 0x0041470f    c20400
_jmp_addr_0x00414712:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00414712    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00414716    d81d90a38a00
                         fnstsw             ax                                            // 0x0041471c    dfe0
                         test               ah, 0x41                                      // 0x0041471e    f6c441
                         {disp8} jne        _jmp_addr_0x0041472a                          // 0x00414721    7507
                         {disp8} mov        dword ptr [ecx + 0x08], 0x3f800000            // 0x00414723    c741080000803f
_jmp_addr_0x0041472a:    ret                0x0004                                        // 0x0041472a    c20400
                         nop                                                              // 0x0041472d    90
                         nop                                                              // 0x0041472e    90
                         nop                                                              // 0x0041472f    90
_jmp_addr_0x00414730:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00414730    d9442404
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2640]              // 0x00414734    d82540b68a00
                         {disp32} fld       dword ptr [rdata_bytes + 0x2644]              // 0x0041473a    d90544b68a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2640]              // 0x00414740    d82540b68a00
                         fdivp              st(1), st                                     // 0x00414746    def9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2688]              // 0x00414748    d80d88b68a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x235c]              // 0x0041474e    d8155cb38a00
                         fnstsw             ax                                            // 0x00414754    dfe0
                         test               ah, 0x01                                      // 0x00414756    f6c401
                         {disp8} jne        _jmp_addr_0x00414763                          // 0x00414759    7508
                         fstp               st(0)                                         // 0x0041475b    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x235c]              // 0x0041475d    d9055cb38a00
_jmp_addr_0x00414763:    {disp32} jmp       _jmp_addr_0x007a1400                          // 0x00414763    e998cc3800
                         nop                                                              // 0x00414768    90
                         nop                                                              // 0x00414769    90
                         nop                                                              // 0x0041476a    90
                         nop                                                              // 0x0041476b    90
                         nop                                                              // 0x0041476c    90
                         nop                                                              // 0x0041476d    90
                         nop                                                              // 0x0041476e    90
                         nop                                                              // 0x0041476f    90
_globl_ct_0x00414770:    call               _jmp_addr_0x00414780                          // 0x00414770    e80b000000
                         {disp32} jmp       _jmp_addr_0x00414790                          // 0x00414775    e916000000
                         nop                                                              // 0x0041477a    90
                         nop                                                              // 0x0041477b    90
                         nop                                                              // 0x0041477c    90
                         nop                                                              // 0x0041477d    90
                         nop                                                              // 0x0041477e    90
                         nop                                                              // 0x0041477f    90
_jmp_addr_0x00414780:    mov                ecx, 0x00c4cd40                               // 0x00414780    b940cdc400
                         {disp32} jmp       _jmp_addr_0x004147c0                          // 0x00414785    e936000000
                         nop                                                              // 0x0041478a    90
                         nop                                                              // 0x0041478b    90
                         nop                                                              // 0x0041478c    90
                         nop                                                              // 0x0041478d    90
                         nop                                                              // 0x0041478e    90
                         nop                                                              // 0x0041478f    90
_jmp_addr_0x00414790:    push               0x004147a0                                    // 0x00414790    68a0474100
                         call               _atexit                                       // 0x00414795    e8f70f3b00
                         pop                ecx                                           // 0x0041479a    59
                         ret                                                              // 0x0041479b    c3
                         nop                                                              // 0x0041479c    90
                         nop                                                              // 0x0041479d    90
                         nop                                                              // 0x0041479e    90
                         nop                                                              // 0x0041479f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x286d38]          // 0x004147a0    8a0d38cdc400
                         mov                al, 0x01                                      // 0x004147a6    b001
                         test               al, cl                                        // 0x004147a8    84c8
                         {disp8} jne        _jmp_addr_0x004147be                          // 0x004147aa    7512
                         or.s               cl, al                                        // 0x004147ac    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x286d38], cl          // 0x004147ae    880d38cdc400
                         mov                ecx, 0x00c4cd40                               // 0x004147b4    b940cdc400
                         {disp32} jmp       _jmp_addr_0x00414820                          // 0x004147b9    e962000000
_jmp_addr_0x004147be:    ret                                                              // 0x004147be    c3
                         nop                                                              // 0x004147bf    90
_jmp_addr_0x004147c0:    mov.s              eax, ecx                                      // 0x004147c0    8bc1
                         push               esi                                           // 0x004147c2    56
                         {disp8} lea        edx, dword ptr [eax + 0x04]                   // 0x004147c3    8d5004
                         mov                esi, 0x00000008                               // 0x004147c6    be08000000
                         xor.s              ecx, ecx                                      // 0x004147cb    33c9
_jmp_addr_0x004147cd:    mov                dword ptr [edx], ecx                          // 0x004147cd    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x004147cf    894a04
                         add                edx, 0x08                                     // 0x004147d2    83c208
                         dec                esi                                           // 0x004147d5    4e
                         {disp8} jne        _jmp_addr_0x004147cd                          // 0x004147d6    75f5
                         {disp8} mov        esi, dword ptr [eax + 0x64]                   // 0x004147d8    8b7064
                         {disp32} mov       dword ptr [eax + 0x00000088], ecx             // 0x004147db    898888000000
                         mov                edx, 0x00000008                               // 0x004147e1    ba08000000
_jmp_addr_0x004147e6:    xor.s              esi, esi                                      // 0x004147e6    33f6
                         dec                edx                                           // 0x004147e8    4a
                         {disp8} jne        _jmp_addr_0x004147e6                          // 0x004147e9    75fb
                         {disp8} mov        dword ptr [eax + 0x64], esi                   // 0x004147eb    897064
                         {disp32} lea       edx, dword ptr [eax + 0x000000b4]             // 0x004147ee    8d90b4000000
                         mov                esi, 0x0000000a                               // 0x004147f4    be0a000000
_jmp_addr_0x004147f9:    {disp8} mov        dword ptr [edx + -0x28], ecx                  // 0x004147f9    894ad8
                         mov                dword ptr [edx], ecx                          // 0x004147fc    890a
                         add                edx, 0x04                                     // 0x004147fe    83c204
                         dec                esi                                           // 0x00414801    4e
                         {disp8} jne        _jmp_addr_0x004147f9                          // 0x00414802    75f5
                         {disp32} mov       byte ptr [eax + 0x00000084], cl               // 0x00414804    888884000000
                         {disp32} mov       byte ptr [eax + 0x00000085], cl               // 0x0041480a    888885000000
                         pop                esi                                           // 0x00414810    5e
                         ret                                                              // 0x00414811    c3
                         nop                                                              // 0x00414812    90
                         nop                                                              // 0x00414813    90
                         nop                                                              // 0x00414814    90
                         nop                                                              // 0x00414815    90
                         nop                                                              // 0x00414816    90
                         nop                                                              // 0x00414817    90
                         nop                                                              // 0x00414818    90
                         nop                                                              // 0x00414819    90
                         nop                                                              // 0x0041481a    90
                         nop                                                              // 0x0041481b    90
                         nop                                                              // 0x0041481c    90
                         nop                                                              // 0x0041481d    90
                         nop                                                              // 0x0041481e    90
                         nop                                                              // 0x0041481f    90
_jmp_addr_0x00414820:    push               esi                                           // 0x00414820    56
                         mov                esi, dword ptr [ecx]                          // 0x00414821    8b31
                         test               esi, esi                                      // 0x00414823    85f6
                         {disp8} je         _jmp_addr_0x00414837                          // 0x00414825    7410
                         mov.s              ecx, esi                                      // 0x00414827    8bce
                         call               _jmp_addr_0x0051fbe0                          // 0x00414829    e8b2b31000
                         push               esi                                           // 0x0041482e    56
                         call               ??3@YAXPAX@Z                                  // 0x0041482f    e864a63900
                         add                esp, 0x04                                     // 0x00414834    83c404
_jmp_addr_0x00414837:    pop                esi                                           // 0x00414837    5e
                         ret                                                              // 0x00414838    c3
                         nop                                                              // 0x00414839    90
                         nop                                                              // 0x0041483a    90
                         nop                                                              // 0x0041483b    90
                         nop                                                              // 0x0041483c    90
                         nop                                                              // 0x0041483d    90
                         nop                                                              // 0x0041483e    90
                         nop                                                              // 0x0041483f    90
                         push               ebp                                           // 0x00414840    55
                         mov.s              ebp, esp                                      // 0x00414841    8bec
                         and                esp, 0xfffffff8                               // 0x00414843    83e4f8
                         sub                esp, 0x00000248                               // 0x00414846    81ec48020000
                         push               ebx                                           // 0x0041484c    53
                         push               ebp                                           // 0x0041484d    55
                         mov.s              ebx, ecx                                      // 0x0041484e    8bd9
                         mov                eax, dword ptr [ebx]                          // 0x00414850    8b03
                         xor.s              ebp, ebp                                      // 0x00414852    33ed
                         cmp.s              eax, ebp                                      // 0x00414854    3bc5
                         push               esi                                           // 0x00414856    56
                         push               edi                                           // 0x00414857    57
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00414858    895c2414
                         {disp32} jne       _jmp_addr_0x00414962                          // 0x0041485c    0f8500010000
                         push               0x0000010e                                    // 0x00414862    680e010000
                         push               0x009c84d4                                    // 0x00414867    68d4849c00
                         push               0x00000278                                    // 0x0041486c    6878020000
                         call               ___nw__FUl                                    // 0x00414871    e81a6f3c00
                         mov.s              esi, eax                                      // 0x00414876    8bf0
                         add                esp, 0x0c                                     // 0x00414878    83c40c
                         cmp.s              esi, ebp                                      // 0x0041487b    3bf5
                         {disp32} je        _jmp_addr_0x0041493a                          // 0x0041487d    0f84b7000000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00414883    8b4c2414
                         push               0x00cc637c                                    // 0x00414887    687c63cc00
                         push               0x00cc6388                                    // 0x0041488c    688863cc00
                         push               0x00cc6398                                    // 0x00414891    689863cc00
                         push               0x00cc6398                                    // 0x00414896    689863cc00
                         push               0x1                                           // 0x0041489b    6a01
                         push               0x1                                           // 0x0041489d    6a01
                         push               0x2                                           // 0x0041489f    6a02
                         xor.s              ebx, ebx                                      // 0x004148a1    33db
                         push               ebx                                           // 0x004148a3    53
                         push               0x3dcccccd                                    // 0x004148a4    68cdcccc3d
                         push               0x3f800000                                    // 0x004148a9    680000803f
                         push               ebx                                           // 0x004148ae    53
                         add                ecx, 0x00000088                               // 0x004148af    81c188000000
                         push               ecx                                           // 0x004148b5    51
                         xor.s              edi, edi                                      // 0x004148b6    33ff
                         {disp32} mov       di, word ptr [data_bytes + 0x4bf05a]          // 0x004148b8    668b3d5a50e800
                         sub                esp, 0x10                                     // 0x004148bf    83ec10
                         mov.s              edx, esp                                      // 0x004148c2    8bd4
                         mov                dword ptr [edx], ebx                          // 0x004148c4    891a
                         {disp8} mov        dword ptr [edx + 0x04], ebp                   // 0x004148c6    896a04
                         mov                eax, 0x0000000b                               // 0x004148c9    b80b000000
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x004148ce    894208
                         dec                edi                                           // 0x004148d1    4f
                         mov.s              ecx, esi                                      // 0x004148d2    8bce
                         {disp8} mov        dword ptr [edx + 0x0c], edi                   // 0x004148d4    897a0c
                         call               _jmp_addr_0x004169e0                          // 0x004148d7    e804210000
                         push               0x54                                          // 0x004148dc    6a54
                         push               0x5e                                          // 0x004148de    6a5e
                         {disp32} lea       ecx, dword ptr [esi + 0x0000026c]             // 0x004148e0    8d8e6c020000
                         push               0x5d                                          // 0x004148e6    6a5d
                         mov                dl, 0x1f                                      // 0x004148e8    b21f
                         mov                dword ptr [esi], 0x008ab690                   // 0x004148ea    c70690b68a00
                         {disp32} mov       dword ptr [esi + 0x00000270], 0x3dcccccd      // 0x004148f0    c78670020000cdcccc3d
                         {disp32} mov       dword ptr [esi + 0x00000274], ebx             // 0x004148fa    899e74020000
                         call               _jmp_addr_0x00414b90                          // 0x00414900    e88b020000
                         push               0x54                                          // 0x00414905    6a54
                         push               0x5e                                          // 0x00414907    6a5e
                         push               0x5d                                          // 0x00414909    6a5d
                         mov                dl, 0x7f                                      // 0x0041490b    b27f
                         {disp32} lea       ecx, dword ptr [esi + 0x0000026c]             // 0x0041490d    8d8e6c020000
                         call               _jmp_addr_0x00414b90                          // 0x00414913    e878020000
                         mov.s              ecx, esi                                      // 0x00414918    8bce
                         call               _jmp_addr_0x00416750                          // 0x0041491a    e8311e0000
                         {disp8} lea        eax, dword ptr [esi + 0x04]                   // 0x0041491f    8d4604
                         mov.s              ecx, eax                                      // 0x00414922    8bc8
                         mov                dword ptr [ecx], ebx                          // 0x00414924    8919
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x00414926    8b5c2414
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x0041492a    896904
                         mov                eax, 0x0000000b                               // 0x0041492d    b80b000000
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00414932    894108
                         {disp8} mov        dword ptr [ecx + 0x0c], edi                   // 0x00414935    89790c
                         {disp8} jmp        _jmp_addr_0x0041493c                          // 0x00414938    eb02
_jmp_addr_0x0041493a:    xor.s              esi, esi                                      // 0x0041493a    33f6
_jmp_addr_0x0041493c:    mov                dword ptr [ebx], esi                          // 0x0041493c    8933
                         xor.s              ebp, ebp                                      // 0x0041493e    33ed
                         xor.s              esi, esi                                      // 0x00414940    33f6
                         {disp8} lea        edi, dword ptr [ebx + 0x64]                   // 0x00414942    8d7b64
_jmp_addr_0x00414945:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00414945    8b0d5c19d000
                         push               esi                                           // 0x0041494b    56
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0041494c    e85fc01300
                         {disp8} mov        edx, dword ptr [eax + 0x60]                   // 0x00414951    8b5060
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x00414954    d94208
                         inc                esi                                           // 0x00414957    46
                         fstp               dword ptr [edi]                               // 0x00414958    d91f
                         add                edi, 0x04                                     // 0x0041495a    83c704
                         cmp                esi, 0x08                                     // 0x0041495d    83fe08
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x00414945  // 0x00414960    72e3
_jmp_addr_0x00414962:    {disp32} mov       al, byte ptr [ebx + 0x00000084]               // 0x00414962    8a8384000000
                         test               al, al                                        // 0x00414968    84c0
                         {disp32} je        _jmp_addr_0x00414b79                          // 0x0041496a    0f8409020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00414970    a15850e800
                         and                eax, 0x0000ffff                               // 0x00414975    25ffff0000
                         shr                eax, 1                                        // 0x0041497a    d1e8
                         dec                eax                                           // 0x0041497c    48
                         mov                cl, 0x7d                                      // 0x0041497d    b17d
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0041497f    89442428
                         mov                al, -0x01                                     // 0x00414983    b0ff
                         {disp8} mov        byte ptr [esp + 0x18], cl                     // 0x00414985    884c2418
                         {disp8} mov        byte ptr [esp + 0x19], cl                     // 0x00414989    884c2419
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0041498d    8b0d5c19d000
                         push               ebp                                           // 0x00414993    55
                         {disp8} mov        dword ptr [esp + 0x34], 0x009c84c0            // 0x00414994    c7442434c0849c00
                         {disp8} mov        dword ptr [esp + 0x38], 0x009c84ac            // 0x0041499c    c7442438ac849c00
                         {disp8} mov        dword ptr [esp + 0x3c], 0x009c8498            // 0x004149a4    c744243c98849c00
                         {disp8} mov        dword ptr [esp + 0x40], 0x009c8484            // 0x004149ac    c744244084849c00
                         {disp8} mov        dword ptr [esp + 0x44], 0x009c8470            // 0x004149b4    c744244470849c00
                         {disp8} mov        dword ptr [esp + 0x48], 0x009c845c            // 0x004149bc    c74424485c849c00
                         {disp8} mov        dword ptr [esp + 0x4c], 0x009c8448            // 0x004149c4    c744244c48849c00
                         {disp8} mov        dword ptr [esp + 0x50], 0x009c8434            // 0x004149cc    c744245034849c00
                         {disp8} mov        dword ptr [esp + 0x54], 0x009c8420            // 0x004149d4    c744245420849c00
                         {disp8} mov        dword ptr [esp + 0x58], 0x009c840c            // 0x004149dc    c74424580c849c00
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x004149e4    896c2424
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x004149e8    896c2428
                         {disp8} mov        dword ptr [esp + 0x30], 0x0000000d            // 0x004149ec    c74424300d000000
                         {disp8} mov        byte ptr [esp + 0x20], al                     // 0x004149f4    88442420
                         {disp8} mov        byte ptr [esp + 0x21], al                     // 0x004149f8    88442421
                         {disp8} mov        byte ptr [esp + 0x22], al                     // 0x004149fc    88442422
                         {disp8} mov        byte ptr [esp + 0x23], al                     // 0x00414a00    88442423
                         {disp8} mov        byte ptr [esp + 0x1e], al                     // 0x00414a04    8844241e
                         {disp8} mov        byte ptr [esp + 0x1f], al                     // 0x00414a08    8844241f
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x00414a0c    e89fbf1300
                         {disp8} mov        ecx, dword ptr [eax + 0x60]                   // 0x00414a11    8b4860
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x00414a14    8b5108
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00414a17    89542414
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00414a1b    d9442414
                         sub                esp, 0x08                                     // 0x00414a1f    83ec08
                         fstp               qword ptr [esp]                               // 0x00414a22    dd1c24
                         {disp8} lea        eax, dword ptr [esp + 0x60]                   // 0x00414a25    8d442460
                         push               0x009c83fc                                    // 0x00414a29    68fc839c00
                         push               eax                                           // 0x00414a2e    50
                         call               _sprintf                                      // 0x00414a2f    e89e0d3b00
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00414a34    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00414a38    d81d98a38a00
                         add                esp, 0x10                                     // 0x00414a3e    83c410
                         fnstsw             ax                                            // 0x00414a41    dfe0
                         test               ah, 0x01                                      // 0x00414a43    f6c401
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00414a46    8d44241c
                         {disp8} je         _jmp_addr_0x00414a50                          // 0x00414a4a    7404
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00414a4c    8d442418
_jmp_addr_0x00414a50:    {disp32} mov       ecx, dword ptr [data_bytes + 0x300390]        // 0x00414a50    8b0d9063cc00
                         push               ecx                                           // 0x00414a56    51
                         push               ebp                                           // 0x00414a57    55
                         push               eax                                           // 0x00414a58    50
                         push               ebp                                           // 0x00414a59    55
                         {disp8} lea        edx, dword ptr [esp + 0x68]                   // 0x00414a5a    8d542468
                         push               edx                                           // 0x00414a5e    52
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x00414a5f    8d442434
                         push               eax                                           // 0x00414a63    50
                         call               _jmp_addr_0x00520b90                          // 0x00414a64    e827c11000
                         fstp               st(0)                                         // 0x00414a69    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x00414a6b    8b4c2444
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00414a6f    d944242c
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00414a73    8b54243c
                         {disp8} fsub       dword ptr [ebx + 0x64]                        // 0x00414a77    d86364
                         mov.s              eax, ecx                                      // 0x00414a7a    8bc1
                         sub.s              eax, edx                                      // 0x00414a7c    2bc2
                         inc                eax                                           // 0x00414a7e    40
                         {disp8} fstp       qword ptr [esp + 0x10]                        // 0x00414a7f    dd5c2410
                         add.s              ecx, eax                                      // 0x00414a83    03c8
                         add                esp, 0x10                                     // 0x00414a85    83c410
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00414a88    894c2434
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x00414a8c    8d4c2460
                         add.s              edx, eax                                      // 0x00414a90    03d0
                         push               0x009c83ec                                    // 0x00414a92    68ec839c00
                         push               ecx                                           // 0x00414a97    51
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00414a98    89542434
                         call               _sprintf                                      // 0x00414a9c    e8310d3b00
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00414aa1    d9442424
                         {disp8} fsub       dword ptr [ebx + 0x64]                        // 0x00414aa5    d86364
                         add                esp, 0x10                                     // 0x00414aa8    83c410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00414aab    d81d98a38a00
                         fnstsw             ax                                            // 0x00414ab1    dfe0
                         test               ah, 0x01                                      // 0x00414ab3    f6c401
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00414ab6    8d44241c
                         {disp8} je         _jmp_addr_0x00414ac0                          // 0x00414aba    7404
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00414abc    8d442418
_jmp_addr_0x00414ac0:    {disp32} mov       edx, dword ptr [data_bytes + 0x300390]        // 0x00414ac0    8b159063cc00
                         push               edx                                           // 0x00414ac6    52
                         push               ebp                                           // 0x00414ac7    55
                         push               eax                                           // 0x00414ac8    50
                         push               ebp                                           // 0x00414ac9    55
                         {disp8} lea        eax, dword ptr [esp + 0x68]                   // 0x00414aca    8d442468
                         push               eax                                           // 0x00414ace    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x00414acf    8d4c2434
                         push               ecx                                           // 0x00414ad3    51
                         call               _jmp_addr_0x00520b90                          // 0x00414ad4    e8b7c01000
                         fstp               st(0)                                         // 0x00414ad9    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x00414adb    8b4c2444
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00414adf    8b54243c
                         mov.s              eax, ecx                                      // 0x00414ae3    8bc1
                         sub.s              eax, edx                                      // 0x00414ae5    2bc2
                         add                esp, 0x18                                     // 0x00414ae7    83c418
                         inc                eax                                           // 0x00414aea    40
                         add.s              edx, eax                                      // 0x00414aeb    03d0
                         add.s              ecx, eax                                      // 0x00414aed    03c8
                         {disp32} lea       esi, dword ptr [ebx + 0x0000008c]             // 0x00414aef    8db38c000000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00414af5    89542424
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00414af9    894c242c
                         {disp8} lea        edi, dword ptr [esp + 0x30]                   // 0x00414afd    8d7c2430
                         mov                ebx, 0x0000000a                               // 0x00414b01    bb0a000000
_jmp_addr_0x00414b06:    {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x00414b06    8b5628
                         fld                dword ptr [esi]                               // 0x00414b09    d906
                         mov                eax, dword ptr [edi]                          // 0x00414b0b    8b07
                         push               edx                                           // 0x00414b0d    52
                         sub                esp, 0x08                                     // 0x00414b0e    83ec08
                         fstp               qword ptr [esp]                               // 0x00414b11    dd1c24
                         push               eax                                           // 0x00414b14    50
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x00414b15    8d4c2468
                         push               ecx                                           // 0x00414b19    51
                         call               _sprintf                                      // 0x00414b1a    e8b30c3b00
                         fld                dword ptr [esi]                               // 0x00414b1f    d906
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00414b21    d81d98a38a00
                         add                esp, 0x14                                     // 0x00414b27    83c414
                         fnstsw             ax                                            // 0x00414b2a    dfe0
                         test               ah, 0x01                                      // 0x00414b2c    f6c401
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00414b2f    8d44241c
                         {disp8} je         _jmp_addr_0x00414b39                          // 0x00414b33    7404
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00414b35    8d442418
_jmp_addr_0x00414b39:    {disp32} mov       edx, dword ptr [data_bytes + 0x300390]        // 0x00414b39    8b159063cc00
                         push               edx                                           // 0x00414b3f    52
                         push               ebp                                           // 0x00414b40    55
                         push               eax                                           // 0x00414b41    50
                         push               ebp                                           // 0x00414b42    55
                         {disp8} lea        eax, dword ptr [esp + 0x68]                   // 0x00414b43    8d442468
                         push               eax                                           // 0x00414b47    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x00414b48    8d4c2434
                         push               ecx                                           // 0x00414b4c    51
                         call               _jmp_addr_0x00520b90                          // 0x00414b4d    e83ec01000
                         fstp               st(0)                                         // 0x00414b52    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x00414b54    8b4c2444
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00414b58    8b54243c
                         mov.s              eax, ecx                                      // 0x00414b5c    8bc1
                         sub.s              eax, edx                                      // 0x00414b5e    2bc2
                         add                esp, 0x18                                     // 0x00414b60    83c418
                         inc                eax                                           // 0x00414b63    40
                         add.s              edx, eax                                      // 0x00414b64    03d0
                         add.s              ecx, eax                                      // 0x00414b66    03c8
                         add                edi, 0x04                                     // 0x00414b68    83c704
                         add                esi, 0x04                                     // 0x00414b6b    83c604
                         dec                ebx                                           // 0x00414b6e    4b
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00414b6f    89542424
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00414b73    894c242c
                         {disp8} jne        _jmp_addr_0x00414b06                          // 0x00414b77    758d
_jmp_addr_0x00414b79:    pop                edi                                           // 0x00414b79    5f
                         pop                esi                                           // 0x00414b7a    5e
                         pop                ebp                                           // 0x00414b7b    5d
                         pop                ebx                                           // 0x00414b7c    5b
                         mov.s              esp, ebp                                      // 0x00414b7d    8be5
                         pop                ebp                                           // 0x00414b7f    5d
                         ret                                                              // 0x00414b80    c3
                         nop                                                              // 0x00414b81    90
                         nop                                                              // 0x00414b82    90
                         nop                                                              // 0x00414b83    90
                         nop                                                              // 0x00414b84    90
                         nop                                                              // 0x00414b85    90
                         nop                                                              // 0x00414b86    90
                         nop                                                              // 0x00414b87    90
                         nop                                                              // 0x00414b88    90
                         nop                                                              // 0x00414b89    90
                         nop                                                              // 0x00414b8a    90
                         nop                                                              // 0x00414b8b    90
                         nop                                                              // 0x00414b8c    90
                         nop                                                              // 0x00414b8d    90
                         nop                                                              // 0x00414b8e    90
                         nop                                                              // 0x00414b8f    90
_jmp_addr_0x00414b90:    {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00414b90    8a442404
                         {disp8} mov        byte ptr [ecx + 0x03], dl                     // 0x00414b94    885103
                         {disp8} mov        dl, byte ptr [esp + 0x08]                     // 0x00414b97    8a542408
                         {disp8} mov        byte ptr [ecx + 0x02], al                     // 0x00414b9b    884102
                         {disp8} mov        al, byte ptr [esp + 0x0c]                     // 0x00414b9e    8a44240c
                         {disp8} mov        byte ptr [ecx + 0x01], dl                     // 0x00414ba2    885101
                         mov                byte ptr [ecx], al                            // 0x00414ba5    8801
                         ret                0x000c                                        // 0x00414ba7    c20c00
                         call               dword ptr [__imp__waveInClose@4]              // 0x00414baa    ff15a8988a00

?GetPDMRegion@EditorIconBase@@UAIPAULHRegion@@XZ:
                         mov                eax, dword ptr [ecx]                          // 0x00414bb0    8b01
                         jmp                dword ptr [eax]                               // 0x00414bb2    ff20
                         nop                                                              // 0x00414bb4    90
                         nop                                                              // 0x00414bb5    90
                         nop                                                              // 0x00414bb6    90
                         nop                                                              // 0x00414bb7    90
                         nop                                                              // 0x00414bb8    90
                         nop                                                              // 0x00414bb9    90
                         nop                                                              // 0x00414bba    90
                         nop                                                              // 0x00414bbb    90
                         nop                                                              // 0x00414bbc    90
                         nop                                                              // 0x00414bbd    90
                         nop                                                              // 0x00414bbe    90
                         nop                                                              // 0x00414bbf    90

?GetTextRegion@EditorIconBase@@UAIPAULHRegion@@XZ:
                         mov                eax, dword ptr [ecx]                          // 0x00414bc0    8b01
                         jmp                dword ptr [eax]                               // 0x00414bc2    ff20
                         nop                                                              // 0x00414bc4    90
                         nop                                                              // 0x00414bc5    90
                         nop                                                              // 0x00414bc6    90
                         nop                                                              // 0x00414bc7    90
                         nop                                                              // 0x00414bc8    90
                         nop                                                              // 0x00414bc9    90
                         nop                                                              // 0x00414bca    90
                         nop                                                              // 0x00414bcb    90
                         nop                                                              // 0x00414bcc    90
                         nop                                                              // 0x00414bcd    90
                         nop                                                              // 0x00414bce    90
                         nop                                                              // 0x00414bcf    90

?GetTextHandle@EditorIconBase@@UAIIXZ:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x300390]        // 0x00414bd0    a19063cc00
                         ret                                                              // 0x00414bd5    c3
                         nop                                                              // 0x00414bd6    90
                         nop                                                              // 0x00414bd7    90
                         nop                                                              // 0x00414bd8    90
                         nop                                                              // 0x00414bd9    90
                         nop                                                              // 0x00414bda    90
                         nop                                                              // 0x00414bdb    90
                         nop                                                              // 0x00414bdc    90
                         nop                                                              // 0x00414bdd    90
                         nop                                                              // 0x00414bde    90
                         nop                                                              // 0x00414bdf    90

?GetTextHeight@EditorIconBase@@UAIMXZ:
                         {disp32} fld       dword ptr [data_bytes + 0x223238]             // 0x00414be0    d9053892be00
                         ret                                                              // 0x00414be6    c3
                         nop                                                              // 0x00414be7    90
                         nop                                                              // 0x00414be8    90
                         nop                                                              // 0x00414be9    90
                         nop                                                              // 0x00414bea    90
                         nop                                                              // 0x00414beb    90
                         nop                                                              // 0x00414bec    90
                         nop                                                              // 0x00414bed    90
                         nop                                                              // 0x00414bee    90
                         nop                                                              // 0x00414bef    90

?GetHiliteColor@EditorIconBase@@UAIPAULH3DColor@@XZ:
                         mov                eax, 0x00cc6388                               // 0x00414bf0    b88863cc00
                         ret                                                              // 0x00414bf5    c3
                         nop                                                              // 0x00414bf6    90
                         nop                                                              // 0x00414bf7    90
                         nop                                                              // 0x00414bf8    90
                         nop                                                              // 0x00414bf9    90
                         nop                                                              // 0x00414bfa    90
                         nop                                                              // 0x00414bfb    90
                         nop                                                              // 0x00414bfc    90
                         nop                                                              // 0x00414bfd    90
                         nop                                                              // 0x00414bfe    90
                         nop                                                              // 0x00414bff    90

?IsScrollable@EditorIconBase@@UAI_NXZ:
                         xor.s              eax, eax                                      // 0x00414c00    33c0
                         ret                                                              // 0x00414c02    c3
                         nop                                                              // 0x00414c03    90
                         nop                                                              // 0x00414c04    90
                         nop                                                              // 0x00414c05    90
                         nop                                                              // 0x00414c06    90
                         nop                                                              // 0x00414c07    90
                         nop                                                              // 0x00414c08    90
                         nop                                                              // 0x00414c09    90
                         nop                                                              // 0x00414c0a    90
                         nop                                                              // 0x00414c0b    90
                         nop                                                              // 0x00414c0c    90
                         nop                                                              // 0x00414c0d    90
                         nop                                                              // 0x00414c0e    90
                         nop                                                              // 0x00414c0f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x30]                   // 0x00414c10    8b4130
                         ret                                                              // 0x00414c13    c3
                         nop                                                              // 0x00414c14    90
                         nop                                                              // 0x00414c15    90
                         nop                                                              // 0x00414c16    90
                         nop                                                              // 0x00414c17    90
                         nop                                                              // 0x00414c18    90
                         nop                                                              // 0x00414c19    90
                         nop                                                              // 0x00414c1a    90
                         nop                                                              // 0x00414c1b    90
                         nop                                                              // 0x00414c1c    90
                         nop                                                              // 0x00414c1d    90
                         nop                                                              // 0x00414c1e    90
                         nop                                                              // 0x00414c1f    90
                         {disp8} lea        eax, dword ptr [ecx + 0x04]                   // 0x00414c20    8d4104
                         ret                                                              // 0x00414c23    c3
                         nop                                                              // 0x00414c24    90
                         nop                                                              // 0x00414c25    90
                         nop                                                              // 0x00414c26    90
                         nop                                                              // 0x00414c27    90
                         nop                                                              // 0x00414c28    90
                         nop                                                              // 0x00414c29    90
                         nop                                                              // 0x00414c2a    90
                         nop                                                              // 0x00414c2b    90
                         nop                                                              // 0x00414c2c    90
                         nop                                                              // 0x00414c2d    90
                         nop                                                              // 0x00414c2e    90
                         nop                                                              // 0x00414c2f    90
                         {disp8} lea        eax, dword ptr [ecx + 0x28]                   // 0x00414c30    8d4128
                         ret                                                              // 0x00414c33    c3
                         nop                                                              // 0x00414c34    90
                         nop                                                              // 0x00414c35    90
                         nop                                                              // 0x00414c36    90
                         nop                                                              // 0x00414c37    90
                         nop                                                              // 0x00414c38    90
                         nop                                                              // 0x00414c39    90
                         nop                                                              // 0x00414c3a    90
                         nop                                                              // 0x00414c3b    90
                         nop                                                              // 0x00414c3c    90
                         nop                                                              // 0x00414c3d    90
                         nop                                                              // 0x00414c3e    90
                         nop                                                              // 0x00414c3f    90
                         {disp8} lea        eax, dword ptr [ecx + 0x20]                   // 0x00414c40    8d4120
                         ret                                                              // 0x00414c43    c3
                         nop                                                              // 0x00414c44    90
                         nop                                                              // 0x00414c45    90
                         nop                                                              // 0x00414c46    90
                         nop                                                              // 0x00414c47    90
                         nop                                                              // 0x00414c48    90
                         nop                                                              // 0x00414c49    90
                         nop                                                              // 0x00414c4a    90
                         nop                                                              // 0x00414c4b    90
                         nop                                                              // 0x00414c4c    90
                         nop                                                              // 0x00414c4d    90
                         nop                                                              // 0x00414c4e    90
                         nop                                                              // 0x00414c4f    90
                         {disp8} lea        eax, dword ptr [ecx + 0x24]                   // 0x00414c50    8d4124
                         ret                                                              // 0x00414c53    c3
                         nop                                                              // 0x00414c54    90
                         nop                                                              // 0x00414c55    90
                         nop                                                              // 0x00414c56    90
                         nop                                                              // 0x00414c57    90
                         nop                                                              // 0x00414c58    90
                         nop                                                              // 0x00414c59    90
                         nop                                                              // 0x00414c5a    90
                         nop                                                              // 0x00414c5b    90
                         nop                                                              // 0x00414c5c    90
                         nop                                                              // 0x00414c5d    90
                         nop                                                              // 0x00414c5e    90
                         nop                                                              // 0x00414c5f    90
                         sub                esp, 0x10                                     // 0x00414c60    83ec10
                         push               ebp                                           // 0x00414c63    55
                         mov.s              ebp, ecx                                      // 0x00414c64    8be9
                         {disp32} mov       al, byte ptr [ebp + 0x00000084]               // 0x00414c66    8a8584000000
                         test               al, al                                        // 0x00414c6c    84c0
                         {disp32} je        _jmp_addr_0x00414d2d                          // 0x00414c6e    0f84b9000000
                         {disp32} mov       al, byte ptr [ebp + 0x00000085]               // 0x00414c74    8a8585000000
                         test               al, al                                        // 0x00414c7a    84c0
                         {disp32} je        _jmp_addr_0x00414d2d                          // 0x00414c7c    0f84ab000000
                         xor.s              ecx, ecx                                      // 0x00414c82    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00414c84    668b0d5a50e800
                         mov                eax, 0x92492493                               // 0x00414c8b    b893244992
                         push               ebx                                           // 0x00414c90    53
                         push               esi                                           // 0x00414c91    56
                         {disp8} mov        esi, dword ptr [ebp + 0x04]                   // 0x00414c92    8b7504
                         xor.s              ebx, ebx                                      // 0x00414c95    33db
                         push               edi                                           // 0x00414c97    57
                         imul               ecx                                           // 0x00414c98    f7e9
                         add.s              edx, ecx                                      // 0x00414c9a    03d1
                         sar                edx, 3                                        // 0x00414c9c    c1fa03
                         mov.s              eax, edx                                      // 0x00414c9f    8bc2
                         shr                eax, 0x1f                                     // 0x00414ca1    c1e81f
                         add.s              edx, eax                                      // 0x00414ca4    03d0
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x00414ca6    8b4508
                         mov.s              ecx, eax                                      // 0x00414ca9    8bc8
                         sub.s              ecx, edx                                      // 0x00414cab    2bca
                         test               ecx, ecx                                      // 0x00414cad    85c9
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00414caf    8954241c
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00414cb3    895c2410
                         {disp8} jle        _jmp_addr_0x00414cf1                          // 0x00414cb7    7e38
                         cmp.s              esi, ebx                                      // 0x00414cb9    3bf3
                         {disp8} je         _jmp_addr_0x00414cf1                          // 0x00414cbb    7434
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00414cbd    89442414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x00414cc1    895c2418
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x00414cc5    df6c2414
                         {disp32} fmul      dword ptr [ebp + 0x00000088]                  // 0x00414cc9    d88d88000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00414ccf    d95c2414
_jmp_addr_0x00414cd3:    {disp8} fild       dword ptr [esp + 0x10]                        // 0x00414cd3    db442410
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x00414cd7    d85c2414
                         fnstsw             ax                                            // 0x00414cdb    dfe0
                         test               ah, 0x01                                      // 0x00414cdd    f6c401
                         {disp8} je         _jmp_addr_0x00414cf1                          // 0x00414ce0    740f
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00414ce2    8b4c2410
                         mov                esi, dword ptr [esi]                          // 0x00414ce6    8b36
                         inc                ecx                                           // 0x00414ce8    41
                         cmp.s              esi, ebx                                      // 0x00414ce9    3bf3
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00414ceb    894c2410
                         {disp8} jne        _jmp_addr_0x00414cd3                          // 0x00414cef    75e2
_jmp_addr_0x00414cf1:    cmp.s              esi, ebx                                      // 0x00414cf1    3bf3
                         mov                edi, 0x0000000e                               // 0x00414cf3    bf0e000000
                         {disp8} je         _jmp_addr_0x00414d18                          // 0x00414cf8    741e
                         {disp8} jmp        _jmp_addr_0x00414d00                          // 0x00414cfa    eb04
_jmp_addr_0x00414cfc:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00414cfc    8b54241c
_jmp_addr_0x00414d00:    cmp.s              ebx, edx                                      // 0x00414d00    3bda
                         {disp8} jge        _jmp_addr_0x00414d18                          // 0x00414d02    7d14
                         push               edi                                           // 0x00414d04    57
                         push               0xc                                           // 0x00414d05    6a0c
                         mov.s              ecx, esi                                      // 0x00414d07    8bce
                         call               _jmp_addr_0x004158b0                          // 0x00414d09    e8a20b0000
                         mov                esi, dword ptr [esi]                          // 0x00414d0e    8b36
                         add                edi, 0x0e                                     // 0x00414d10    83c70e
                         inc                ebx                                           // 0x00414d13    43
                         test               esi, esi                                      // 0x00414d14    85f6
                         {disp8} jne        _jmp_addr_0x00414cfc                          // 0x00414d16    75e4
_jmp_addr_0x00414d18:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x00414d18    8b4d00
                         mov                edx, dword ptr [ecx]                          // 0x00414d1b    8b11
                         call               dword ptr [edx + 4]                           // 0x00414d1d    ff5204
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x00414d20    8b4d00
                         mov                eax, dword ptr [ecx]                          // 0x00414d23    8b01
                         push               0x0                                           // 0x00414d25    6a00
                         call               dword ptr [eax + 8]                           // 0x00414d27    ff5008
                         pop                edi                                           // 0x00414d2a    5f
                         pop                esi                                           // 0x00414d2b    5e
                         pop                ebx                                           // 0x00414d2c    5b
_jmp_addr_0x00414d2d:    pop                ebp                                           // 0x00414d2d    5d
                         add                esp, 0x10                                     // 0x00414d2e    83c410
                         ret                                                              // 0x00414d31    c3
                         nop                                                              // 0x00414d32    90
                         nop                                                              // 0x00414d33    90
                         nop                                                              // 0x00414d34    90
                         nop                                                              // 0x00414d35    90
                         nop                                                              // 0x00414d36    90
                         nop                                                              // 0x00414d37    90
                         nop                                                              // 0x00414d38    90
                         nop                                                              // 0x00414d39    90
                         nop                                                              // 0x00414d3a    90
                         nop                                                              // 0x00414d3b    90
                         nop                                                              // 0x00414d3c    90
                         nop                                                              // 0x00414d3d    90
                         nop                                                              // 0x00414d3e    90
                         nop                                                              // 0x00414d3f    90
_jmp_addr_0x00414d40:    push               ebp                                           // 0x00414d40    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00414d41    8b6c2410
                         push               esi                                           // 0x00414d45    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00414d46    8b74240c
                         mov                eax, dword ptr [esi]                          // 0x00414d4a    8b06
                         push               edi                                           // 0x00414d4c    57
                         push               ebp                                           // 0x00414d4d    55
                         mov.s              edi, ecx                                      // 0x00414d4e    8bf9
                         push               0x0                                           // 0x00414d50    6a00
                         mov.s              ecx, esi                                      // 0x00414d52    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00414d54    ff501c
                         push               eax                                           // 0x00414d57    50
                         mov.s              ecx, edi                                      // 0x00414d58    8bcf
                         call               _jmp_addr_0x00415480                          // 0x00414d5a    e821070000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00414d5f    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00414d63    d81d98a38a00
                         fnstsw             ax                                            // 0x00414d69    dfe0
                         test               ah, 0x40                                      // 0x00414d6b    f6c440
                         {disp32} jne       _jmp_addr_0x00414dfd                          // 0x00414d6e    0f8589000000
                         {disp32} mov       al, byte ptr [edi + 0x00000085]               // 0x00414d74    8a8785000000
                         test               al, al                                        // 0x00414d7a    84c0
                         {disp8} je         _jmp_addr_0x00414dfd                          // 0x00414d7c    747f
                         push               ebx                                           // 0x00414d7e    53
                         push               0x00000164                                    // 0x00414d7f    6864010000
                         push               0x009c84d4                                    // 0x00414d84    68d4849c00
                         push               0x1c                                          // 0x00414d89    6a1c
                         call               ___nw__FUl                                    // 0x00414d8b    e8006a3c00
                         mov.s              ebx, eax                                      // 0x00414d90    8bd8
                         add                esp, 0x0c                                     // 0x00414d92    83c40c
                         test               ebx, ebx                                      // 0x00414d95    85db
                         {disp8} je         _jmp_addr_0x00414db3                          // 0x00414d97    741a
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00414d99    8b4c2418
                         mov                edx, dword ptr [esi]                          // 0x00414d9d    8b16
                         push               ebp                                           // 0x00414d9f    55
                         push               ecx                                           // 0x00414da0    51
                         push               esi                                           // 0x00414da1    56
                         mov.s              ecx, esi                                      // 0x00414da2    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x00414da4    ff521c
                         push               eax                                           // 0x00414da7    50
                         mov.s              ecx, ebx                                      // 0x00414da8    8bcb
                         call               _jmp_addr_0x00415500                          // 0x00414daa    e851070000
                         mov.s              ebx, eax                                      // 0x00414daf    8bd8
                         {disp8} jmp        _jmp_addr_0x00414db5                          // 0x00414db1    eb02
_jmp_addr_0x00414db3:    xor.s              ebx, ebx                                      // 0x00414db3    33db
_jmp_addr_0x00414db5:    mov                eax, dword ptr [esi]                          // 0x00414db5    8b06
                         mov.s              ecx, esi                                      // 0x00414db7    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00414db9    ff501c
                         mov.s              ecx, eax                                      // 0x00414dbc    8bc8
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x00414dbe    e8cd592300
                         {disp8} lea        edx, dword ptr [edi + eax * 0x8 + 0x04]       // 0x00414dc3    8d54c704
                         mov                eax, dword ptr [edx]                          // 0x00414dc7    8b02
                         test               eax, eax                                      // 0x00414dc9    85c0
                         {disp8} je         _jmp_addr_0x00414df1                          // 0x00414dcb    7424
                         mov                ecx, dword ptr [eax]                          // 0x00414dcd    8b08
                         test               ecx, ecx                                      // 0x00414dcf    85c9
                         {disp8} je         _jmp_addr_0x00414ddb                          // 0x00414dd1    7408
_jmp_addr_0x00414dd3:    mov.s              eax, ecx                                      // 0x00414dd3    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x00414dd5    8b08
                         test               ecx, ecx                                      // 0x00414dd7    85c9
                         {disp8} jne        _jmp_addr_0x00414dd3                          // 0x00414dd9    75f8
_jmp_addr_0x00414ddb:    mov                dword ptr [eax], ebx                          // 0x00414ddb    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x00414ddd    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00414de3    8b4204
                         pop                ebx                                           // 0x00414de6    5b
                         pop                edi                                           // 0x00414de7    5f
                         inc                eax                                           // 0x00414de8    40
                         pop                esi                                           // 0x00414de9    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00414dea    894204
                         pop                ebp                                           // 0x00414ded    5d
                         ret                0x000c                                        // 0x00414dee    c20c00
_jmp_addr_0x00414df1:    mov                dword ptr [edx], ebx                          // 0x00414df1    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x00414df3    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x00414df9    ff4204
                         pop                ebx                                           // 0x00414dfc    5b
_jmp_addr_0x00414dfd:    pop                edi                                           // 0x00414dfd    5f
                         pop                esi                                           // 0x00414dfe    5e
                         pop                ebp                                           // 0x00414dff    5d
                         ret                0x000c                                        // 0x00414e00    c20c00
                         nop                                                              // 0x00414e03    90
                         nop                                                              // 0x00414e04    90
                         nop                                                              // 0x00414e05    90
                         nop                                                              // 0x00414e06    90
                         nop                                                              // 0x00414e07    90
                         nop                                                              // 0x00414e08    90
                         nop                                                              // 0x00414e09    90
                         nop                                                              // 0x00414e0a    90
                         nop                                                              // 0x00414e0b    90
                         nop                                                              // 0x00414e0c    90
                         nop                                                              // 0x00414e0d    90
                         nop                                                              // 0x00414e0e    90
                         nop                                                              // 0x00414e0f    90
_jmp_addr_0x00414e10:    push               ebp                                           // 0x00414e10    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00414e11    8b6c2414
                         push               esi                                           // 0x00414e15    56
                         push               edi                                           // 0x00414e16    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00414e17    8b7c2414
                         push               ebp                                           // 0x00414e1b    55
                         mov.s              esi, ecx                                      // 0x00414e1c    8bf1
                         push               0x1                                           // 0x00414e1e    6a01
                         mov.s              ecx, edi                                      // 0x00414e20    8bcf
                         call               _jmp_addr_0x005254c0                          // 0x00414e22    e899061100
                         push               eax                                           // 0x00414e27    50
                         mov.s              ecx, esi                                      // 0x00414e28    8bce
                         call               _jmp_addr_0x00415480                          // 0x00414e2a    e851060000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00414e2f    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00414e33    d81d98a38a00
                         fnstsw             ax                                            // 0x00414e39    dfe0
                         test               ah, 0x40                                      // 0x00414e3b    f6c440
                         {disp32} jne       _jmp_addr_0x00414ed5                          // 0x00414e3e    0f8591000000
                         {disp32} mov       al, byte ptr [esi + 0x00000085]               // 0x00414e44    8a8685000000
                         test               al, al                                        // 0x00414e4a    84c0
                         {disp32} je        _jmp_addr_0x00414ed5                          // 0x00414e4c    0f8483000000
                         push               ebx                                           // 0x00414e52    53
                         push               0x0000016f                                    // 0x00414e53    686f010000
                         push               0x009c84d4                                    // 0x00414e58    68d4849c00
                         push               0x1c                                          // 0x00414e5d    6a1c
                         call               ___nw__FUl                                    // 0x00414e5f    e82c693c00
                         mov.s              ebx, eax                                      // 0x00414e64    8bd8
                         add                esp, 0x0c                                     // 0x00414e66    83c40c
                         test               ebx, ebx                                      // 0x00414e69    85db
                         {disp8} je         _jmp_addr_0x00414e8b                          // 0x00414e6b    741e
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00414e6d    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00414e71    8b4c2414
                         push               ebp                                           // 0x00414e75    55
                         push               eax                                           // 0x00414e76    50
                         push               ecx                                           // 0x00414e77    51
                         mov.s              ecx, edi                                      // 0x00414e78    8bcf
                         call               _jmp_addr_0x005254c0                          // 0x00414e7a    e841061100
                         push               eax                                           // 0x00414e7f    50
                         mov.s              ecx, ebx                                      // 0x00414e80    8bcb
                         call               _jmp_addr_0x00415550                          // 0x00414e82    e8c9060000
                         mov.s              ebx, eax                                      // 0x00414e87    8bd8
                         {disp8} jmp        _jmp_addr_0x00414e8d                          // 0x00414e89    eb02
_jmp_addr_0x00414e8b:    xor.s              ebx, ebx                                      // 0x00414e8b    33db
_jmp_addr_0x00414e8d:    mov.s              ecx, edi                                      // 0x00414e8d    8bcf
                         call               _jmp_addr_0x005254c0                          // 0x00414e8f    e82c061100
                         mov.s              ecx, eax                                      // 0x00414e94    8bc8
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x00414e96    e8f5582300
                         {disp8} lea        edx, dword ptr [esi + eax * 0x8 + 0x04]       // 0x00414e9b    8d54c604
                         mov                eax, dword ptr [edx]                          // 0x00414e9f    8b02
                         test               eax, eax                                      // 0x00414ea1    85c0
                         {disp8} je         _jmp_addr_0x00414ec9                          // 0x00414ea3    7424
                         mov                ecx, dword ptr [eax]                          // 0x00414ea5    8b08
                         test               ecx, ecx                                      // 0x00414ea7    85c9
                         {disp8} je         _jmp_addr_0x00414eb3                          // 0x00414ea9    7408
_jmp_addr_0x00414eab:    mov.s              eax, ecx                                      // 0x00414eab    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x00414ead    8b08
                         test               ecx, ecx                                      // 0x00414eaf    85c9
                         {disp8} jne        _jmp_addr_0x00414eab                          // 0x00414eb1    75f8
_jmp_addr_0x00414eb3:    mov                dword ptr [eax], ebx                          // 0x00414eb3    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x00414eb5    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00414ebb    8b4204
                         pop                ebx                                           // 0x00414ebe    5b
                         pop                edi                                           // 0x00414ebf    5f
                         inc                eax                                           // 0x00414ec0    40
                         pop                esi                                           // 0x00414ec1    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00414ec2    894204
                         pop                ebp                                           // 0x00414ec5    5d
                         ret                0x0010                                        // 0x00414ec6    c21000
_jmp_addr_0x00414ec9:    mov                dword ptr [edx], ebx                          // 0x00414ec9    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x00414ecb    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x00414ed1    ff4204
                         pop                ebx                                           // 0x00414ed4    5b
_jmp_addr_0x00414ed5:    pop                edi                                           // 0x00414ed5    5f
                         pop                esi                                           // 0x00414ed6    5e
                         pop                ebp                                           // 0x00414ed7    5d
                         ret                0x0010                                        // 0x00414ed8    c21000
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00414edb    e899c9feff
_jmp_addr_0x00414ee0:    push               ebp                                           // 0x00414ee0    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x00414ee1    8b6c240c
                         push               esi                                           // 0x00414ee5    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00414ee6    8b74240c
                         mov                eax, dword ptr [esi]                          // 0x00414eea    8b06
                         push               edi                                           // 0x00414eec    57
                         push               ebp                                           // 0x00414eed    55
                         mov.s              edi, ecx                                      // 0x00414eee    8bf9
                         push               0x2                                           // 0x00414ef0    6a02
                         mov.s              ecx, esi                                      // 0x00414ef2    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00414ef4    ff501c
                         push               eax                                           // 0x00414ef7    50
                         mov.s              ecx, edi                                      // 0x00414ef8    8bcf
                         call               _jmp_addr_0x00415480                          // 0x00414efa    e881050000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00414eff    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00414f03    d81d98a38a00
                         fnstsw             ax                                            // 0x00414f09    dfe0
                         test               ah, 0x40                                      // 0x00414f0b    f6c440
                         {disp32} jne       _jmp_addr_0x00414f98                          // 0x00414f0e    0f8584000000
                         {disp32} mov       al, byte ptr [edi + 0x00000085]               // 0x00414f14    8a8785000000
                         test               al, al                                        // 0x00414f1a    84c0
                         {disp8} je         _jmp_addr_0x00414f98                          // 0x00414f1c    747a
                         push               ebx                                           // 0x00414f1e    53
                         push               0x0000017a                                    // 0x00414f1f    687a010000
                         push               0x009c84d4                                    // 0x00414f24    68d4849c00
                         push               0x1c                                          // 0x00414f29    6a1c
                         call               ___nw__FUl                                    // 0x00414f2b    e860683c00
                         mov.s              ebx, eax                                      // 0x00414f30    8bd8
                         add                esp, 0x0c                                     // 0x00414f32    83c40c
                         test               ebx, ebx                                      // 0x00414f35    85db
                         {disp8} je         _jmp_addr_0x00414f4e                          // 0x00414f37    7415
                         mov                edx, dword ptr [esi]                          // 0x00414f39    8b16
                         push               ebp                                           // 0x00414f3b    55
                         push               esi                                           // 0x00414f3c    56
                         mov.s              ecx, esi                                      // 0x00414f3d    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x00414f3f    ff521c
                         push               eax                                           // 0x00414f42    50
                         mov.s              ecx, ebx                                      // 0x00414f43    8bcb
                         call               _jmp_addr_0x004155b0                          // 0x00414f45    e866060000
                         mov.s              ebx, eax                                      // 0x00414f4a    8bd8
                         {disp8} jmp        _jmp_addr_0x00414f50                          // 0x00414f4c    eb02
_jmp_addr_0x00414f4e:    xor.s              ebx, ebx                                      // 0x00414f4e    33db
_jmp_addr_0x00414f50:    mov                eax, dword ptr [esi]                          // 0x00414f50    8b06
                         mov.s              ecx, esi                                      // 0x00414f52    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00414f54    ff501c
                         mov.s              ecx, eax                                      // 0x00414f57    8bc8
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x00414f59    e832582300
                         {disp8} lea        edx, dword ptr [edi + eax * 0x8 + 0x04]       // 0x00414f5e    8d54c704
                         mov                eax, dword ptr [edx]                          // 0x00414f62    8b02
                         test               eax, eax                                      // 0x00414f64    85c0
                         {disp8} je         _jmp_addr_0x00414f8c                          // 0x00414f66    7424
                         mov                ecx, dword ptr [eax]                          // 0x00414f68    8b08
                         test               ecx, ecx                                      // 0x00414f6a    85c9
                         {disp8} je         _jmp_addr_0x00414f76                          // 0x00414f6c    7408
_jmp_addr_0x00414f6e:    mov.s              eax, ecx                                      // 0x00414f6e    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x00414f70    8b08
                         test               ecx, ecx                                      // 0x00414f72    85c9
                         {disp8} jne        _jmp_addr_0x00414f6e                          // 0x00414f74    75f8
_jmp_addr_0x00414f76:    mov                dword ptr [eax], ebx                          // 0x00414f76    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x00414f78    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00414f7e    8b4204
                         pop                ebx                                           // 0x00414f81    5b
                         pop                edi                                           // 0x00414f82    5f
                         inc                eax                                           // 0x00414f83    40
                         pop                esi                                           // 0x00414f84    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00414f85    894204
                         pop                ebp                                           // 0x00414f88    5d
                         ret                0x0008                                        // 0x00414f89    c20800
_jmp_addr_0x00414f8c:    mov                dword ptr [edx], ebx                          // 0x00414f8c    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x00414f8e    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x00414f94    ff4204
                         pop                ebx                                           // 0x00414f97    5b
_jmp_addr_0x00414f98:    pop                edi                                           // 0x00414f98    5f
                         pop                esi                                           // 0x00414f99    5e
                         pop                ebp                                           // 0x00414f9a    5d
                         ret                0x0008                                        // 0x00414f9b    c20800
                         nop                                                              // 0x00414f9e    90
                         nop                                                              // 0x00414f9f    90
_jmp_addr_0x00414fa0:    push               ebp                                           // 0x00414fa0    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x00414fa1    8b6c240c
                         push               esi                                           // 0x00414fa5    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00414fa6    8b74240c
                         mov                eax, dword ptr [esi]                          // 0x00414faa    8b06
                         push               edi                                           // 0x00414fac    57
                         push               ebp                                           // 0x00414fad    55
                         mov.s              edi, ecx                                      // 0x00414fae    8bf9
                         push               0x3                                           // 0x00414fb0    6a03
                         mov.s              ecx, esi                                      // 0x00414fb2    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00414fb4    ff501c
                         push               eax                                           // 0x00414fb7    50
                         mov.s              ecx, edi                                      // 0x00414fb8    8bcf
                         call               _jmp_addr_0x00415480                          // 0x00414fba    e8c1040000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00414fbf    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00414fc3    d81d98a38a00
                         fnstsw             ax                                            // 0x00414fc9    dfe0
                         test               ah, 0x40                                      // 0x00414fcb    f6c440
                         {disp32} jne       _jmp_addr_0x00415058                          // 0x00414fce    0f8584000000
                         {disp32} mov       al, byte ptr [edi + 0x00000085]               // 0x00414fd4    8a8785000000
                         test               al, al                                        // 0x00414fda    84c0
                         {disp8} je         _jmp_addr_0x00415058                          // 0x00414fdc    747a
                         push               ebx                                           // 0x00414fde    53
                         push               0x00000185                                    // 0x00414fdf    6885010000
                         push               0x009c84d4                                    // 0x00414fe4    68d4849c00
                         push               0x1c                                          // 0x00414fe9    6a1c
                         call               ___nw__FUl                                    // 0x00414feb    e8a0673c00
                         mov.s              ebx, eax                                      // 0x00414ff0    8bd8
                         add                esp, 0x0c                                     // 0x00414ff2    83c40c
                         test               ebx, ebx                                      // 0x00414ff5    85db
                         {disp8} je         _jmp_addr_0x0041500e                          // 0x00414ff7    7415
                         mov                edx, dword ptr [esi]                          // 0x00414ff9    8b16
                         push               ebp                                           // 0x00414ffb    55
                         push               esi                                           // 0x00414ffc    56
                         mov.s              ecx, esi                                      // 0x00414ffd    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x00414fff    ff521c
                         push               eax                                           // 0x00415002    50
                         mov.s              ecx, ebx                                      // 0x00415003    8bcb
                         call               _jmp_addr_0x00415600                          // 0x00415005    e8f6050000
                         mov.s              ebx, eax                                      // 0x0041500a    8bd8
                         {disp8} jmp        _jmp_addr_0x00415010                          // 0x0041500c    eb02
_jmp_addr_0x0041500e:    xor.s              ebx, ebx                                      // 0x0041500e    33db
_jmp_addr_0x00415010:    mov                eax, dword ptr [esi]                          // 0x00415010    8b06
                         mov.s              ecx, esi                                      // 0x00415012    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00415014    ff501c
                         mov.s              ecx, eax                                      // 0x00415017    8bc8
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x00415019    e872572300
                         {disp8} lea        edx, dword ptr [edi + eax * 0x8 + 0x04]       // 0x0041501e    8d54c704
                         mov                eax, dword ptr [edx]                          // 0x00415022    8b02
                         test               eax, eax                                      // 0x00415024    85c0
                         {disp8} je         _jmp_addr_0x0041504c                          // 0x00415026    7424
                         mov                ecx, dword ptr [eax]                          // 0x00415028    8b08
                         test               ecx, ecx                                      // 0x0041502a    85c9
                         {disp8} je         _jmp_addr_0x00415036                          // 0x0041502c    7408
_jmp_addr_0x0041502e:    mov.s              eax, ecx                                      // 0x0041502e    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x00415030    8b08
                         test               ecx, ecx                                      // 0x00415032    85c9
                         {disp8} jne        _jmp_addr_0x0041502e                          // 0x00415034    75f8
_jmp_addr_0x00415036:    mov                dword ptr [eax], ebx                          // 0x00415036    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x00415038    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0041503e    8b4204
                         pop                ebx                                           // 0x00415041    5b
                         pop                edi                                           // 0x00415042    5f
                         inc                eax                                           // 0x00415043    40
                         pop                esi                                           // 0x00415044    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00415045    894204
                         pop                ebp                                           // 0x00415048    5d
                         ret                0x0008                                        // 0x00415049    c20800
_jmp_addr_0x0041504c:    mov                dword ptr [edx], ebx                          // 0x0041504c    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x0041504e    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x00415054    ff4204
                         pop                ebx                                           // 0x00415057    5b
_jmp_addr_0x00415058:    pop                edi                                           // 0x00415058    5f
                         pop                esi                                           // 0x00415059    5e
                         pop                ebp                                           // 0x0041505a    5d
                         ret                0x0008                                        // 0x0041505b    c20800
                         nop                                                              // 0x0041505e    90
                         nop                                                              // 0x0041505f    90
                         push               ebx                                           // 0x00415060    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x00415061    8b5c2414
                         push               esi                                           // 0x00415065    56
                         push               edi                                           // 0x00415066    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00415067    8b7c2410
                         push               ebx                                           // 0x0041506b    53
                         push               0x6                                           // 0x0041506c    6a06
                         mov.s              esi, ecx                                      // 0x0041506e    8bf1
                         push               edi                                           // 0x00415070    57
                         call               _jmp_addr_0x00415480                          // 0x00415071    e80a040000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00415076    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0041507a    d81d98a38a00
                         fnstsw             ax                                            // 0x00415080    dfe0
                         test               ah, 0x40                                      // 0x00415082    f6c440
                         {disp8} jne        _jmp_addr_0x00415101                          // 0x00415085    757a
                         {disp32} mov       al, byte ptr [esi + 0x00000085]               // 0x00415087    8a8685000000
                         test               al, al                                        // 0x0041508d    84c0
                         {disp8} je         _jmp_addr_0x00415101                          // 0x0041508f    7470
                         push               0x00000190                                    // 0x00415091    6890010000
                         push               0x009c84d4                                    // 0x00415096    68d4849c00
                         push               0x1c                                          // 0x0041509b    6a1c
                         call               ___nw__FUl                                    // 0x0041509d    e8ee663c00
                         add                esp, 0x0c                                     // 0x004150a2    83c40c
                         test               eax, eax                                      // 0x004150a5    85c0
                         {disp8} je         _jmp_addr_0x004150c0                          // 0x004150a7    7417
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x004150a9    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004150ad    8b542414
                         push               ebx                                           // 0x004150b1    53
                         push               ecx                                           // 0x004150b2    51
                         push               edx                                           // 0x004150b3    52
                         push               edi                                           // 0x004150b4    57
                         mov.s              ecx, eax                                      // 0x004150b5    8bc8
                         call               _jmp_addr_0x00415790                          // 0x004150b7    e8d4060000
                         mov.s              ebx, eax                                      // 0x004150bc    8bd8
                         {disp8} jmp        _jmp_addr_0x004150c2                          // 0x004150be    eb02
_jmp_addr_0x004150c0:    xor.s              ebx, ebx                                      // 0x004150c0    33db
_jmp_addr_0x004150c2:    mov.s              ecx, edi                                      // 0x004150c2    8bcf
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x004150c4    e8c7562300
                         {disp8} lea        edx, dword ptr [esi + eax * 0x8 + 0x04]       // 0x004150c9    8d54c604
                         mov                eax, dword ptr [edx]                          // 0x004150cd    8b02
                         test               eax, eax                                      // 0x004150cf    85c0
                         {disp8} je         _jmp_addr_0x004150f6                          // 0x004150d1    7423
                         mov                ecx, dword ptr [eax]                          // 0x004150d3    8b08
                         test               ecx, ecx                                      // 0x004150d5    85c9
                         {disp8} je         _jmp_addr_0x004150e1                          // 0x004150d7    7408
_jmp_addr_0x004150d9:    mov.s              eax, ecx                                      // 0x004150d9    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x004150db    8b08
                         test               ecx, ecx                                      // 0x004150dd    85c9
                         {disp8} jne        _jmp_addr_0x004150d9                          // 0x004150df    75f8
_jmp_addr_0x004150e1:    mov                dword ptr [eax], ebx                          // 0x004150e1    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x004150e3    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x004150e9    8b4204
                         pop                edi                                           // 0x004150ec    5f
                         inc                eax                                           // 0x004150ed    40
                         pop                esi                                           // 0x004150ee    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x004150ef    894204
                         pop                ebx                                           // 0x004150f2    5b
                         ret                0x0010                                        // 0x004150f3    c21000
_jmp_addr_0x004150f6:    mov                dword ptr [edx], ebx                          // 0x004150f6    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x004150f8    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x004150fe    ff4204
_jmp_addr_0x00415101:    pop                edi                                           // 0x00415101    5f
                         pop                esi                                           // 0x00415102    5e
                         pop                ebx                                           // 0x00415103    5b
                         ret                0x0010                                        // 0x00415104    c21000
                         nop                                                              // 0x00415107    90
                         nop                                                              // 0x00415108    90
                         nop                                                              // 0x00415109    90
                         nop                                                              // 0x0041510a    90
                         nop                                                              // 0x0041510b    90
                         nop                                                              // 0x0041510c    90
                         nop                                                              // 0x0041510d    90
                         nop                                                              // 0x0041510e    90
                         nop                                                              // 0x0041510f    90
_jmp_addr_0x00415110:    push               ebx                                           // 0x00415110    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00415111    8b5c2410
                         push               esi                                           // 0x00415115    56
                         push               edi                                           // 0x00415116    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00415117    8b7c2410
                         push               ebx                                           // 0x0041511b    53
                         push               0x4                                           // 0x0041511c    6a04
                         mov.s              esi, ecx                                      // 0x0041511e    8bf1
                         push               edi                                           // 0x00415120    57
                         call               _jmp_addr_0x00415480                          // 0x00415121    e85a030000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00415126    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0041512a    d81d98a38a00
                         fnstsw             ax                                            // 0x00415130    dfe0
                         test               ah, 0x40                                      // 0x00415132    f6c440
                         {disp8} jne        _jmp_addr_0x004151ac                          // 0x00415135    7575
                         {disp32} mov       al, byte ptr [esi + 0x00000085]               // 0x00415137    8a8685000000
                         test               al, al                                        // 0x0041513d    84c0
                         {disp8} je         _jmp_addr_0x004151ac                          // 0x0041513f    746b
                         push               0x0000019b                                    // 0x00415141    689b010000
                         push               0x009c84d4                                    // 0x00415146    68d4849c00
                         push               0x1c                                          // 0x0041514b    6a1c
                         call               ___nw__FUl                                    // 0x0041514d    e83e663c00
                         add                esp, 0x0c                                     // 0x00415152    83c40c
                         test               eax, eax                                      // 0x00415155    85c0
                         {disp8} je         _jmp_addr_0x0041516b                          // 0x00415157    7412
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00415159    8b4c2414
                         push               ebx                                           // 0x0041515d    53
                         push               ecx                                           // 0x0041515e    51
                         push               edi                                           // 0x0041515f    57
                         mov.s              ecx, eax                                      // 0x00415160    8bc8
                         call               _jmp_addr_0x00415650                          // 0x00415162    e8e9040000
                         mov.s              ebx, eax                                      // 0x00415167    8bd8
                         {disp8} jmp        _jmp_addr_0x0041516d                          // 0x00415169    eb02
_jmp_addr_0x0041516b:    xor.s              ebx, ebx                                      // 0x0041516b    33db
_jmp_addr_0x0041516d:    mov.s              ecx, edi                                      // 0x0041516d    8bcf
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0041516f    e81c562300
                         {disp8} lea        edx, dword ptr [esi + eax * 0x8 + 0x04]       // 0x00415174    8d54c604
                         mov                eax, dword ptr [edx]                          // 0x00415178    8b02
                         test               eax, eax                                      // 0x0041517a    85c0
                         {disp8} je         _jmp_addr_0x004151a1                          // 0x0041517c    7423
                         mov                ecx, dword ptr [eax]                          // 0x0041517e    8b08
                         test               ecx, ecx                                      // 0x00415180    85c9
                         {disp8} je         _jmp_addr_0x0041518c                          // 0x00415182    7408
_jmp_addr_0x00415184:    mov.s              eax, ecx                                      // 0x00415184    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x00415186    8b08
                         test               ecx, ecx                                      // 0x00415188    85c9
                         {disp8} jne        _jmp_addr_0x00415184                          // 0x0041518a    75f8
_jmp_addr_0x0041518c:    mov                dword ptr [eax], ebx                          // 0x0041518c    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x0041518e    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00415194    8b4204
                         pop                edi                                           // 0x00415197    5f
                         inc                eax                                           // 0x00415198    40
                         pop                esi                                           // 0x00415199    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0041519a    894204
                         pop                ebx                                           // 0x0041519d    5b
                         ret                0x000c                                        // 0x0041519e    c20c00
_jmp_addr_0x004151a1:    mov                dword ptr [edx], ebx                          // 0x004151a1    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x004151a3    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x004151a9    ff4204
_jmp_addr_0x004151ac:    pop                edi                                           // 0x004151ac    5f
                         pop                esi                                           // 0x004151ad    5e
                         pop                ebx                                           // 0x004151ae    5b
                         ret                0x000c                                        // 0x004151af    c20c00
                         nop                                                              // 0x004151b2    90
                         nop                                                              // 0x004151b3    90
                         nop                                                              // 0x004151b4    90
                         nop                                                              // 0x004151b5    90
                         nop                                                              // 0x004151b6    90
                         nop                                                              // 0x004151b7    90
                         nop                                                              // 0x004151b8    90
                         nop                                                              // 0x004151b9    90
                         nop                                                              // 0x004151ba    90
                         nop                                                              // 0x004151bb    90
                         nop                                                              // 0x004151bc    90
                         nop                                                              // 0x004151bd    90
                         nop                                                              // 0x004151be    90
                         nop                                                              // 0x004151bf    90
                         push               ebx                                           // 0x004151c0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x004151c1    8b5c240c
                         push               esi                                           // 0x004151c5    56
                         push               edi                                           // 0x004151c6    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x004151c7    8b7c2410
                         push               ebx                                           // 0x004151cb    53
                         push               0x5                                           // 0x004151cc    6a05
                         mov.s              esi, ecx                                      // 0x004151ce    8bf1
                         push               edi                                           // 0x004151d0    57
                         call               _jmp_addr_0x00415480                          // 0x004151d1    e8aa020000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004151d6    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004151da    d81d98a38a00
                         fnstsw             ax                                            // 0x004151e0    dfe0
                         test               ah, 0x40                                      // 0x004151e2    f6c440
                         {disp8} jne        _jmp_addr_0x00415257                          // 0x004151e5    7570
                         {disp32} mov       al, byte ptr [esi + 0x00000085]               // 0x004151e7    8a8685000000
                         test               al, al                                        // 0x004151ed    84c0
                         {disp8} je         _jmp_addr_0x00415257                          // 0x004151ef    7466
                         push               0x000001a6                                    // 0x004151f1    68a6010000
                         push               0x009c84d4                                    // 0x004151f6    68d4849c00
                         push               0x1c                                          // 0x004151fb    6a1c
                         call               ___nw__FUl                                    // 0x004151fd    e88e653c00
                         add                esp, 0x0c                                     // 0x00415202    83c40c
                         test               eax, eax                                      // 0x00415205    85c0
                         {disp8} je         _jmp_addr_0x00415216                          // 0x00415207    740d
                         push               ebx                                           // 0x00415209    53
                         push               edi                                           // 0x0041520a    57
                         mov.s              ecx, eax                                      // 0x0041520b    8bc8
                         call               _jmp_addr_0x004156a0                          // 0x0041520d    e88e040000
                         mov.s              ebx, eax                                      // 0x00415212    8bd8
                         {disp8} jmp        _jmp_addr_0x00415218                          // 0x00415214    eb02
_jmp_addr_0x00415216:    xor.s              ebx, ebx                                      // 0x00415216    33db
_jmp_addr_0x00415218:    mov.s              ecx, edi                                      // 0x00415218    8bcf
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0041521a    e871552300
                         {disp8} lea        edx, dword ptr [esi + eax * 0x8 + 0x04]       // 0x0041521f    8d54c604
                         mov                eax, dword ptr [edx]                          // 0x00415223    8b02
                         test               eax, eax                                      // 0x00415225    85c0
                         {disp8} je         _jmp_addr_0x0041524c                          // 0x00415227    7423
                         mov                ecx, dword ptr [eax]                          // 0x00415229    8b08
                         test               ecx, ecx                                      // 0x0041522b    85c9
                         {disp8} je         _jmp_addr_0x00415237                          // 0x0041522d    7408
_jmp_addr_0x0041522f:    mov.s              eax, ecx                                      // 0x0041522f    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x00415231    8b08
                         test               ecx, ecx                                      // 0x00415233    85c9
                         {disp8} jne        _jmp_addr_0x0041522f                          // 0x00415235    75f8
_jmp_addr_0x00415237:    mov                dword ptr [eax], ebx                          // 0x00415237    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x00415239    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0041523f    8b4204
                         pop                edi                                           // 0x00415242    5f
                         inc                eax                                           // 0x00415243    40
                         pop                esi                                           // 0x00415244    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00415245    894204
                         pop                ebx                                           // 0x00415248    5b
                         ret                0x0008                                        // 0x00415249    c20800
_jmp_addr_0x0041524c:    mov                dword ptr [edx], ebx                          // 0x0041524c    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x0041524e    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x00415254    ff4204
_jmp_addr_0x00415257:    pop                edi                                           // 0x00415257    5f
                         pop                esi                                           // 0x00415258    5e
                         pop                ebx                                           // 0x00415259    5b
                         ret                0x0008                                        // 0x0041525a    c20800
                         nop                                                              // 0x0041525d    90
                         nop                                                              // 0x0041525e    90
                         nop                                                              // 0x0041525f    90
_jmp_addr_0x00415260:    push               ebx                                           // 0x00415260    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00415261    8b5c2410
                         push               esi                                           // 0x00415265    56
                         push               edi                                           // 0x00415266    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00415267    8b7c2410
                         push               ebx                                           // 0x0041526b    53
                         push               0x8                                           // 0x0041526c    6a08
                         mov.s              esi, ecx                                      // 0x0041526e    8bf1
                         push               edi                                           // 0x00415270    57
                         call               _jmp_addr_0x00415480                          // 0x00415271    e80a020000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00415276    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0041527a    d81d98a38a00
                         fnstsw             ax                                            // 0x00415280    dfe0
                         test               ah, 0x40                                      // 0x00415282    f6c440
                         {disp8} jne        _jmp_addr_0x004152fc                          // 0x00415285    7575
                         {disp32} mov       al, byte ptr [esi + 0x00000085]               // 0x00415287    8a8685000000
                         test               al, al                                        // 0x0041528d    84c0
                         {disp8} je         _jmp_addr_0x004152fc                          // 0x0041528f    746b
                         push               0x000001b1                                    // 0x00415291    68b1010000
                         push               0x009c84d4                                    // 0x00415296    68d4849c00
                         push               0x1c                                          // 0x0041529b    6a1c
                         call               ___nw__FUl                                    // 0x0041529d    e8ee643c00
                         add                esp, 0x0c                                     // 0x004152a2    83c40c
                         test               eax, eax                                      // 0x004152a5    85c0
                         {disp8} je         _jmp_addr_0x004152bb                          // 0x004152a7    7412
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004152a9    8b4c2414
                         push               ebx                                           // 0x004152ad    53
                         push               ecx                                           // 0x004152ae    51
                         push               edi                                           // 0x004152af    57
                         mov.s              ecx, eax                                      // 0x004152b0    8bc8
                         call               _jmp_addr_0x004156f0                          // 0x004152b2    e839040000
                         mov.s              ebx, eax                                      // 0x004152b7    8bd8
                         {disp8} jmp        _jmp_addr_0x004152bd                          // 0x004152b9    eb02
_jmp_addr_0x004152bb:    xor.s              ebx, ebx                                      // 0x004152bb    33db
_jmp_addr_0x004152bd:    mov.s              ecx, edi                                      // 0x004152bd    8bcf
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x004152bf    e8cc542300
                         {disp8} lea        edx, dword ptr [esi + eax * 0x8 + 0x04]       // 0x004152c4    8d54c604
                         mov                eax, dword ptr [edx]                          // 0x004152c8    8b02
                         test               eax, eax                                      // 0x004152ca    85c0
                         {disp8} je         _jmp_addr_0x004152f1                          // 0x004152cc    7423
                         mov                ecx, dword ptr [eax]                          // 0x004152ce    8b08
                         test               ecx, ecx                                      // 0x004152d0    85c9
                         {disp8} je         _jmp_addr_0x004152dc                          // 0x004152d2    7408
_jmp_addr_0x004152d4:    mov.s              eax, ecx                                      // 0x004152d4    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x004152d6    8b08
                         test               ecx, ecx                                      // 0x004152d8    85c9
                         {disp8} jne        _jmp_addr_0x004152d4                          // 0x004152da    75f8
_jmp_addr_0x004152dc:    mov                dword ptr [eax], ebx                          // 0x004152dc    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x004152de    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x004152e4    8b4204
                         pop                edi                                           // 0x004152e7    5f
                         inc                eax                                           // 0x004152e8    40
                         pop                esi                                           // 0x004152e9    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x004152ea    894204
                         pop                ebx                                           // 0x004152ed    5b
                         ret                0x000c                                        // 0x004152ee    c20c00
_jmp_addr_0x004152f1:    mov                dword ptr [edx], ebx                          // 0x004152f1    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x004152f3    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x004152f9    ff4204
_jmp_addr_0x004152fc:    pop                edi                                           // 0x004152fc    5f
                         pop                esi                                           // 0x004152fd    5e
                         pop                ebx                                           // 0x004152fe    5b
                         ret                0x000c                                        // 0x004152ff    c20c00
                         nop                                                              // 0x00415302    90
                         nop                                                              // 0x00415303    90
                         nop                                                              // 0x00415304    90
                         nop                                                              // 0x00415305    90
                         nop                                                              // 0x00415306    90
                         nop                                                              // 0x00415307    90
                         nop                                                              // 0x00415308    90
                         nop                                                              // 0x00415309    90
                         nop                                                              // 0x0041530a    90
                         nop                                                              // 0x0041530b    90
                         nop                                                              // 0x0041530c    90
                         nop                                                              // 0x0041530d    90
                         nop                                                              // 0x0041530e    90
                         nop                                                              // 0x0041530f    90
_jmp_addr_0x00415310:    push               ebx                                           // 0x00415310    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00415311    8b5c2410
                         push               esi                                           // 0x00415315    56
                         push               edi                                           // 0x00415316    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00415317    8b7c2410
                         push               ebx                                           // 0x0041531b    53
                         push               0x9                                           // 0x0041531c    6a09
                         mov.s              esi, ecx                                      // 0x0041531e    8bf1
                         push               edi                                           // 0x00415320    57
                         call               _jmp_addr_0x00415480                          // 0x00415321    e85a010000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00415326    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0041532a    d81d98a38a00
                         fnstsw             ax                                            // 0x00415330    dfe0
                         test               ah, 0x40                                      // 0x00415332    f6c440
                         {disp8} jne        _jmp_addr_0x004153ac                          // 0x00415335    7575
                         {disp32} mov       al, byte ptr [esi + 0x00000085]               // 0x00415337    8a8685000000
                         test               al, al                                        // 0x0041533d    84c0
                         {disp8} je         _jmp_addr_0x004153ac                          // 0x0041533f    746b
                         push               0x000001bc                                    // 0x00415341    68bc010000
                         push               0x009c84d4                                    // 0x00415346    68d4849c00
                         push               0x1c                                          // 0x0041534b    6a1c
                         call               ___nw__FUl                                    // 0x0041534d    e83e643c00
                         add                esp, 0x0c                                     // 0x00415352    83c40c
                         test               eax, eax                                      // 0x00415355    85c0
                         {disp8} je         _jmp_addr_0x0041536b                          // 0x00415357    7412
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00415359    8b4c2414
                         push               ebx                                           // 0x0041535d    53
                         push               ecx                                           // 0x0041535e    51
                         push               edi                                           // 0x0041535f    57
                         mov.s              ecx, eax                                      // 0x00415360    8bc8
                         call               _jmp_addr_0x00415740                          // 0x00415362    e8d9030000
                         mov.s              ebx, eax                                      // 0x00415367    8bd8
                         {disp8} jmp        _jmp_addr_0x0041536d                          // 0x00415369    eb02
_jmp_addr_0x0041536b:    xor.s              ebx, ebx                                      // 0x0041536b    33db
_jmp_addr_0x0041536d:    mov.s              ecx, edi                                      // 0x0041536d    8bcf
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0041536f    e81c542300
                         {disp8} lea        edx, dword ptr [esi + eax * 0x8 + 0x04]       // 0x00415374    8d54c604
                         mov                eax, dword ptr [edx]                          // 0x00415378    8b02
                         test               eax, eax                                      // 0x0041537a    85c0
                         {disp8} je         _jmp_addr_0x004153a1                          // 0x0041537c    7423
                         mov                ecx, dword ptr [eax]                          // 0x0041537e    8b08
                         test               ecx, ecx                                      // 0x00415380    85c9
                         {disp8} je         _jmp_addr_0x0041538c                          // 0x00415382    7408
_jmp_addr_0x00415384:    mov.s              eax, ecx                                      // 0x00415384    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x00415386    8b08
                         test               ecx, ecx                                      // 0x00415388    85c9
                         {disp8} jne        _jmp_addr_0x00415384                          // 0x0041538a    75f8
_jmp_addr_0x0041538c:    mov                dword ptr [eax], ebx                          // 0x0041538c    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x0041538e    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00415394    8b4204
                         pop                edi                                           // 0x00415397    5f
                         inc                eax                                           // 0x00415398    40
                         pop                esi                                           // 0x00415399    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0041539a    894204
                         pop                ebx                                           // 0x0041539d    5b
                         ret                0x000c                                        // 0x0041539e    c20c00
_jmp_addr_0x004153a1:    mov                dword ptr [edx], ebx                          // 0x004153a1    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x004153a3    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x004153a9    ff4204
_jmp_addr_0x004153ac:    pop                edi                                           // 0x004153ac    5f
                         pop                esi                                           // 0x004153ad    5e
                         pop                ebx                                           // 0x004153ae    5b
                         ret                0x000c                                        // 0x004153af    c20c00
                         nop                                                              // 0x004153b2    90
                         nop                                                              // 0x004153b3    90
                         nop                                                              // 0x004153b4    90
                         nop                                                              // 0x004153b5    90
                         nop                                                              // 0x004153b6    90
                         nop                                                              // 0x004153b7    90
                         nop                                                              // 0x004153b8    90
                         nop                                                              // 0x004153b9    90
                         nop                                                              // 0x004153ba    90
                         nop                                                              // 0x004153bb    90
                         nop                                                              // 0x004153bc    90
                         nop                                                              // 0x004153bd    90
                         nop                                                              // 0x004153be    90
                         nop                                                              // 0x004153bf    90
_jmp_addr_0x004153c0:    push               ebx                                           // 0x004153c0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x004153c1    8b5c2414
                         push               esi                                           // 0x004153c5    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x004153c6    8b74240c
                         mov                eax, dword ptr [esi]                          // 0x004153ca    8b06
                         push               edi                                           // 0x004153cc    57
                         push               ebx                                           // 0x004153cd    53
                         mov.s              edi, ecx                                      // 0x004153ce    8bf9
                         push               0x7                                           // 0x004153d0    6a07
                         mov.s              ecx, esi                                      // 0x004153d2    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x004153d4    ff501c
                         push               eax                                           // 0x004153d7    50
                         mov.s              ecx, edi                                      // 0x004153d8    8bcf
                         call               _jmp_addr_0x00415480                          // 0x004153da    e8a1000000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x004153df    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004153e3    d81d98a38a00
                         fnstsw             ax                                            // 0x004153e9    dfe0
                         test               ah, 0x40                                      // 0x004153eb    f6c440
                         {disp32} jne       _jmp_addr_0x00415475                          // 0x004153ee    0f8581000000
                         {disp32} mov       al, byte ptr [edi + 0x00000085]               // 0x004153f4    8a8785000000
                         test               al, al                                        // 0x004153fa    84c0
                         {disp8} je         _jmp_addr_0x00415475                          // 0x004153fc    7477
                         push               0x000001c7                                    // 0x004153fe    68c7010000
                         push               0x009c84d4                                    // 0x00415403    68d4849c00
                         push               0x1c                                          // 0x00415408    6a1c
                         call               ___nw__FUl                                    // 0x0041540a    e881633c00
                         add                esp, 0x0c                                     // 0x0041540f    83c40c
                         test               eax, eax                                      // 0x00415412    85c0
                         {disp8} je         _jmp_addr_0x0041542d                          // 0x00415414    7417
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00415416    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0041541a    8b542414
                         push               ebx                                           // 0x0041541e    53
                         push               ecx                                           // 0x0041541f    51
                         push               edx                                           // 0x00415420    52
                         push               esi                                           // 0x00415421    56
                         mov.s              ecx, eax                                      // 0x00415422    8bc8
                         call               _jmp_addr_0x00415840                          // 0x00415424    e817040000
                         mov.s              ebx, eax                                      // 0x00415429    8bd8
                         {disp8} jmp        _jmp_addr_0x0041542f                          // 0x0041542b    eb02
_jmp_addr_0x0041542d:    xor.s              ebx, ebx                                      // 0x0041542d    33db
_jmp_addr_0x0041542f:    mov                eax, dword ptr [esi]                          // 0x0041542f    8b06
                         mov.s              ecx, esi                                      // 0x00415431    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00415433    ff501c
                         mov.s              ecx, eax                                      // 0x00415436    8bc8
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x00415438    e853532300
                         {disp8} lea        edx, dword ptr [edi + eax * 0x8 + 0x04]       // 0x0041543d    8d54c704
                         mov                eax, dword ptr [edx]                          // 0x00415441    8b02
                         test               eax, eax                                      // 0x00415443    85c0
                         {disp8} je         _jmp_addr_0x0041546a                          // 0x00415445    7423
                         mov                ecx, dword ptr [eax]                          // 0x00415447    8b08
                         test               ecx, ecx                                      // 0x00415449    85c9
                         {disp8} je         _jmp_addr_0x00415455                          // 0x0041544b    7408
_jmp_addr_0x0041544d:    mov.s              eax, ecx                                      // 0x0041544d    8bc1
                         mov                ecx, dword ptr [eax]                          // 0x0041544f    8b08
                         test               ecx, ecx                                      // 0x00415451    85c9
                         {disp8} jne        _jmp_addr_0x0041544d                          // 0x00415453    75f8
_jmp_addr_0x00415455:    mov                dword ptr [eax], ebx                          // 0x00415455    8918
                         mov                dword ptr [ebx], 0x00000000                   // 0x00415457    c70300000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0041545d    8b4204
                         pop                edi                                           // 0x00415460    5f
                         inc                eax                                           // 0x00415461    40
                         pop                esi                                           // 0x00415462    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00415463    894204
                         pop                ebx                                           // 0x00415466    5b
                         ret                0x0010                                        // 0x00415467    c21000
_jmp_addr_0x0041546a:    mov                dword ptr [edx], ebx                          // 0x0041546a    891a
                         mov                dword ptr [ebx], 0x00000000                   // 0x0041546c    c70300000000
                         {disp8} inc        dword ptr [edx + 0x04]                        // 0x00415472    ff4204
_jmp_addr_0x00415475:    pop                edi                                           // 0x00415475    5f
                         pop                esi                                           // 0x00415476    5e
                         pop                ebx                                           // 0x00415477    5b
                         ret                0x0010                                        // 0x00415478    c21000
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0041547b    e8f9c3feff
_jmp_addr_0x00415480:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00415480    d944240c
                         push               edi                                           // 0x00415484    57
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00415485    d81d98a38a00
                         mov.s              edi, ecx                                      // 0x0041548b    8bf9
                         fnstsw             ax                                            // 0x0041548d    dfe0
                         test               ah, 0x40                                      // 0x0041548f    f6c440
                         {disp8} jne        _jmp_addr_0x004154f3                          // 0x00415492    755f
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00415494    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0041549a    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0041549c    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x004154a2    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x004154a5    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x004154a8    8d0450
                         shl                eax, 5                                        // 0x004154ab    c1e005
                         {disp8} lea        edx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x004154ae    8d540818
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x004154b2    8b4c2408
                         cmp.s              ecx, edx                                      // 0x004154b6    3bca
                         {disp8} jne        _jmp_addr_0x004154f3                          // 0x004154b8    7539
                         push               esi                                           // 0x004154ba    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004154bb    8b742410
                         cmp                esi, 0x04                                     // 0x004154bf    83fe04
                         {disp8} je         _jmp_addr_0x004154d1                          // 0x004154c2    740d
                         mov                eax, dword ptr [ecx]                          // 0x004154c4    8b01
                         call               dword ptr [eax + 0x40]                        // 0x004154c6    ff5040
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x004154c9    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004154cd    d95c2414
_jmp_addr_0x004154d1:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x004154d1    d9442414
                         {disp32} fadd      dword ptr [edi + esi * 0x4 + 0x0000008c]      // 0x004154d5    d884b78c000000
                         {disp32} fstp      dword ptr [edi + esi * 0x4 + 0x0000008c]      // 0x004154dc    d99cb78c000000
                         {disp32} mov       eax, dword ptr [edi + esi * 0x4 + 0x000000b4] // 0x004154e3    8b84b7b4000000
                         inc                eax                                           // 0x004154ea    40
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x000000b4], eax // 0x004154eb    8984b7b4000000
                         pop                esi                                           // 0x004154f2    5e
_jmp_addr_0x004154f3:    pop                edi                                           // 0x004154f3    5f
                         ret                0x000c                                        // 0x004154f4    c20c00
                         nop                                                              // 0x004154f7    90
                         nop                                                              // 0x004154f8    90
                         nop                                                              // 0x004154f9    90
                         nop                                                              // 0x004154fa    90
                         nop                                                              // 0x004154fb    90
                         nop                                                              // 0x004154fc    90
                         nop                                                              // 0x004154fd    90
                         nop                                                              // 0x004154fe    90
                         nop                                                              // 0x004154ff    90
_jmp_addr_0x00415500:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00415500    8b44240c
                         push               esi                                           // 0x00415504    56
                         mov.s              esi, ecx                                      // 0x00415505    8bf1
                         push               edi                                           // 0x00415507    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00415508    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x0041550c    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x00415512    c7460400000000
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00415519    894618
                         mov                edx, dword ptr [edi]                          // 0x0041551c    8b17
                         mov.s              ecx, edi                                      // 0x0041551e    8bcf
                         call               dword ptr [edx + 0x40]                        // 0x00415520    ff5240
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00415523    d84c2418
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x00415527    d9560c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0041552a    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0041552f    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x00415535    894e08
                         {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x00415538    8b5760
                         {disp8} fadd       dword ptr [edx + 0x08]                        // 0x0041553b    d84208
                         pop                edi                                           // 0x0041553e    5f
                         mov.s              eax, esi                                      // 0x0041553f    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x00415541    d95e10
                         pop                esi                                           // 0x00415544    5e
                         ret                0x0010                                        // 0x00415545    c21000
                         nop                                                              // 0x00415548    90
                         nop                                                              // 0x00415549    90
                         nop                                                              // 0x0041554a    90
                         nop                                                              // 0x0041554b    90
                         nop                                                              // 0x0041554c    90
                         nop                                                              // 0x0041554d    90
                         nop                                                              // 0x0041554e    90
                         nop                                                              // 0x0041554f    90
_jmp_addr_0x00415550:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00415550    8b44240c
                         push               esi                                           // 0x00415554    56
                         mov.s              esi, ecx                                      // 0x00415555    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00415557    8b4c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x0041555b    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000001            // 0x00415561    c7460401000000
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00415568    894618
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x0041556b    8b4928
                         mov                edx, dword ptr [ecx]                          // 0x0041556e    8b11
                         push               edi                                           // 0x00415570    57
                         call               dword ptr [edx + 0x34]                        // 0x00415571    ff5234
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00415574    8b7c240c
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00415578    894614
                         mov                eax, dword ptr [edi]                          // 0x0041557b    8b07
                         mov.s              ecx, edi                                      // 0x0041557d    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x0041557f    ff5040
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00415582    d84c2418
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x00415586    d9560c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00415589    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x0041558f    8b91405a2000
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00415595    895608
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x00415598    8b4760
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x0041559b    d84008
                         pop                edi                                           // 0x0041559e    5f
                         mov.s              eax, esi                                      // 0x0041559f    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x004155a1    d95e10
                         pop                esi                                           // 0x004155a4    5e
                         ret                0x0010                                        // 0x004155a5    c21000
                         nop                                                              // 0x004155a8    90
                         nop                                                              // 0x004155a9    90
                         nop                                                              // 0x004155aa    90
                         nop                                                              // 0x004155ab    90
                         nop                                                              // 0x004155ac    90
                         nop                                                              // 0x004155ad    90
                         nop                                                              // 0x004155ae    90
                         nop                                                              // 0x004155af    90
_jmp_addr_0x004155b0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004155b0    8b442408
                         push               esi                                           // 0x004155b4    56
                         mov.s              esi, ecx                                      // 0x004155b5    8bf1
                         mov                dword ptr [esi], 0x00000000                   // 0x004155b7    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000002            // 0x004155bd    c7460402000000
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x004155c4    8b4824
                         push               edi                                           // 0x004155c7    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004155c8    8b7c240c
                         {disp8} mov        dword ptr [esi + 0x18], ecx                   // 0x004155cc    894e18
                         mov                edx, dword ptr [edi]                          // 0x004155cf    8b17
                         mov.s              ecx, edi                                      // 0x004155d1    8bcf
                         call               dword ptr [edx + 0x40]                        // 0x004155d3    ff5240
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x004155d6    d84c2414
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x004155da    d9560c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004155dd    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x004155e2    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x004155e8    894e08
                         {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x004155eb    8b5760
                         {disp8} fadd       dword ptr [edx + 0x08]                        // 0x004155ee    d84208
                         pop                edi                                           // 0x004155f1    5f
                         mov.s              eax, esi                                      // 0x004155f2    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x004155f4    d95e10
                         pop                esi                                           // 0x004155f7    5e
                         ret                0x000c                                        // 0x004155f8    c20c00
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004155fb    e879c2feff
_jmp_addr_0x00415600:    push               esi                                           // 0x00415600    56
                         mov.s              esi, ecx                                      // 0x00415601    8bf1
                         push               edi                                           // 0x00415603    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00415604    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x00415608    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000003            // 0x0041560e    c7460403000000
                         mov                eax, dword ptr [edi]                          // 0x00415615    8b07
                         mov.s              ecx, edi                                      // 0x00415617    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x00415619    ff5040
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0041561c    d84c2414
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x00415620    d9560c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00415623    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x00415629    8b91405a2000
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0041562f    895608
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x00415632    8b4760
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x00415635    d84008
                         pop                edi                                           // 0x00415638    5f
                         mov.s              eax, esi                                      // 0x00415639    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x0041563b    d95e10
                         pop                esi                                           // 0x0041563e    5e
                         ret                0x000c                                        // 0x0041563f    c20c00
                         nop                                                              // 0x00415642    90
                         nop                                                              // 0x00415643    90
                         nop                                                              // 0x00415644    90
                         nop                                                              // 0x00415645    90
                         nop                                                              // 0x00415646    90
                         nop                                                              // 0x00415647    90
                         nop                                                              // 0x00415648    90
                         nop                                                              // 0x00415649    90
                         nop                                                              // 0x0041564a    90
                         nop                                                              // 0x0041564b    90
                         nop                                                              // 0x0041564c    90
                         nop                                                              // 0x0041564d    90
                         nop                                                              // 0x0041564e    90
                         nop                                                              // 0x0041564f    90
_jmp_addr_0x00415650:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00415650    8b442408
                         push               esi                                           // 0x00415654    56
                         mov.s              esi, ecx                                      // 0x00415655    8bf1
                         push               edi                                           // 0x00415657    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00415658    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x0041565c    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000004            // 0x00415662    c7460404000000
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00415669    894618
                         mov                edx, dword ptr [edi]                          // 0x0041566c    8b17
                         mov.s              ecx, edi                                      // 0x0041566e    8bcf
                         call               dword ptr [edx + 0x40]                        // 0x00415670    ff5240
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00415673    d84c2414
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x00415677    d9560c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0041567a    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0041567f    8b88405a2000
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00415685    d84c2414
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x00415689    894e08
                         {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x0041568c    8b5760
                         {disp8} fadd       dword ptr [edx + 0x08]                        // 0x0041568f    d84208
                         pop                edi                                           // 0x00415692    5f
                         mov.s              eax, esi                                      // 0x00415693    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x00415695    d95e10
                         pop                esi                                           // 0x00415698    5e
                         ret                0x000c                                        // 0x00415699    c20c00
                         nop                                                              // 0x0041569c    90
                         nop                                                              // 0x0041569d    90
                         nop                                                              // 0x0041569e    90
                         nop                                                              // 0x0041569f    90
_jmp_addr_0x004156a0:    push               esi                                           // 0x004156a0    56
                         mov.s              esi, ecx                                      // 0x004156a1    8bf1
                         push               edi                                           // 0x004156a3    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004156a4    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x004156a8    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000005            // 0x004156ae    c7460405000000
                         mov                eax, dword ptr [edi]                          // 0x004156b5    8b07
                         mov.s              ecx, edi                                      // 0x004156b7    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x004156b9    ff5040
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x004156bc    d84c2410
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x004156c0    d9560c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004156c3    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x004156c9    8b91405a2000
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x004156cf    895608
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x004156d2    8b4760
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x004156d5    d84008
                         pop                edi                                           // 0x004156d8    5f
                         mov.s              eax, esi                                      // 0x004156d9    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x004156db    d95e10
                         pop                esi                                           // 0x004156de    5e
                         ret                0x0008                                        // 0x004156df    c20800
                         nop                                                              // 0x004156e2    90
                         nop                                                              // 0x004156e3    90
                         nop                                                              // 0x004156e4    90
                         nop                                                              // 0x004156e5    90
                         nop                                                              // 0x004156e6    90
                         nop                                                              // 0x004156e7    90
                         nop                                                              // 0x004156e8    90
                         nop                                                              // 0x004156e9    90
                         nop                                                              // 0x004156ea    90
                         nop                                                              // 0x004156eb    90
                         nop                                                              // 0x004156ec    90
                         nop                                                              // 0x004156ed    90
                         nop                                                              // 0x004156ee    90
                         nop                                                              // 0x004156ef    90
_jmp_addr_0x004156f0:    push               esi                                           // 0x004156f0    56
                         mov.s              esi, ecx                                      // 0x004156f1    8bf1
                         push               edi                                           // 0x004156f3    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004156f4    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x004156f8    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000008            // 0x004156fe    c7460408000000
                         mov                eax, dword ptr [edi]                          // 0x00415705    8b07
                         mov.s              ecx, edi                                      // 0x00415707    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x00415709    ff5040
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0041570c    d84c2414
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x00415710    d9560c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00415713    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x00415719    8b91405a2000
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0041571f    895608
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x00415722    8b4760
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x00415725    d84008
                         pop                edi                                           // 0x00415728    5f
                         mov.s              eax, esi                                      // 0x00415729    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x0041572b    d95e10
                         pop                esi                                           // 0x0041572e    5e
                         ret                0x000c                                        // 0x0041572f    c20c00
                         nop                                                              // 0x00415732    90
                         nop                                                              // 0x00415733    90
                         nop                                                              // 0x00415734    90
                         nop                                                              // 0x00415735    90
                         nop                                                              // 0x00415736    90
                         nop                                                              // 0x00415737    90
                         nop                                                              // 0x00415738    90
                         nop                                                              // 0x00415739    90
                         nop                                                              // 0x0041573a    90
                         nop                                                              // 0x0041573b    90
                         nop                                                              // 0x0041573c    90
                         nop                                                              // 0x0041573d    90
                         nop                                                              // 0x0041573e    90
                         nop                                                              // 0x0041573f    90
_jmp_addr_0x00415740:    push               esi                                           // 0x00415740    56
                         mov.s              esi, ecx                                      // 0x00415741    8bf1
                         push               edi                                           // 0x00415743    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00415744    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x00415748    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000009            // 0x0041574e    c7460409000000
                         mov                eax, dword ptr [edi]                          // 0x00415755    8b07
                         mov.s              ecx, edi                                      // 0x00415757    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x00415759    ff5040
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0041575c    d84c2414
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x00415760    d9560c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00415763    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x00415769    8b91405a2000
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0041576f    895608
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x00415772    8b4760
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x00415775    d84008
                         pop                edi                                           // 0x00415778    5f
                         mov.s              eax, esi                                      // 0x00415779    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x0041577b    d95e10
                         pop                esi                                           // 0x0041577e    5e
                         ret                0x000c                                        // 0x0041577f    c20c00
                         nop                                                              // 0x00415782    90
                         nop                                                              // 0x00415783    90
                         nop                                                              // 0x00415784    90
                         nop                                                              // 0x00415785    90
                         nop                                                              // 0x00415786    90
                         nop                                                              // 0x00415787    90
                         nop                                                              // 0x00415788    90
                         nop                                                              // 0x00415789    90
                         nop                                                              // 0x0041578a    90
                         nop                                                              // 0x0041578b    90
                         nop                                                              // 0x0041578c    90
                         nop                                                              // 0x0041578d    90
                         nop                                                              // 0x0041578e    90
                         nop                                                              // 0x0041578f    90
_jmp_addr_0x00415790:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00415790    8b44240c
                         push               esi                                           // 0x00415794    56
                         mov.s              esi, ecx                                      // 0x00415795    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00415797    8b4c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x0041579b    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000006            // 0x004157a1    c7460406000000
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x004157a8    894618
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x004157ab    8b4928
                         mov                edx, dword ptr [ecx]                          // 0x004157ae    8b11
                         push               edi                                           // 0x004157b0    57
                         call               dword ptr [edx + 0x34]                        // 0x004157b1    ff5234
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004157b4    8b7c240c
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x004157b8    894614
                         mov                eax, dword ptr [edi]                          // 0x004157bb    8b07
                         mov.s              ecx, edi                                      // 0x004157bd    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x004157bf    ff5040
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x004157c2    d84c2418
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x004157c6    d9560c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004157c9    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x004157cf    8b91405a2000
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x004157d5    895608
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x004157d8    8b4760
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x004157db    d84008
                         pop                edi                                           // 0x004157de    5f
                         mov.s              eax, esi                                      // 0x004157df    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x004157e1    d95e10
                         pop                esi                                           // 0x004157e4    5e
                         ret                0x0010                                        // 0x004157e5    c21000
                         nop                                                              // 0x004157e8    90
                         nop                                                              // 0x004157e9    90
                         nop                                                              // 0x004157ea    90
                         nop                                                              // 0x004157eb    90
                         nop                                                              // 0x004157ec    90
                         nop                                                              // 0x004157ed    90
                         nop                                                              // 0x004157ee    90
                         nop                                                              // 0x004157ef    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004157f0    8b442408
                         push               esi                                           // 0x004157f4    56
                         mov.s              esi, ecx                                      // 0x004157f5    8bf1
                         push               edi                                           // 0x004157f7    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004157f8    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x004157fc    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00415802    894604
                         mov                edx, dword ptr [edi]                          // 0x00415805    8b17
                         mov.s              ecx, edi                                      // 0x00415807    8bcf
                         call               dword ptr [edx + 0x40]                        // 0x00415809    ff5240
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0041580c    d84c2414
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x00415810    d9560c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00415813    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x00415818    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x0041581e    894e08
                         {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x00415821    8b5760
                         {disp8} fadd       dword ptr [edx + 0x08]                        // 0x00415824    d84208
                         pop                edi                                           // 0x00415827    5f
                         mov.s              eax, esi                                      // 0x00415828    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x0041582a    d95e10
                         pop                esi                                           // 0x0041582d    5e
                         ret                0x000c                                        // 0x0041582e    c20c00
                         nop                                                              // 0x00415831    90
                         nop                                                              // 0x00415832    90
                         nop                                                              // 0x00415833    90
                         nop                                                              // 0x00415834    90
                         nop                                                              // 0x00415835    90
                         nop                                                              // 0x00415836    90
                         nop                                                              // 0x00415837    90
                         nop                                                              // 0x00415838    90
                         nop                                                              // 0x00415839    90
                         nop                                                              // 0x0041583a    90
                         nop                                                              // 0x0041583b    90
                         nop                                                              // 0x0041583c    90
                         nop                                                              // 0x0041583d    90
                         nop                                                              // 0x0041583e    90
                         nop                                                              // 0x0041583f    90
_jmp_addr_0x00415840:    push               esi                                           // 0x00415840    56
                         mov.s              esi, ecx                                      // 0x00415841    8bf1
                         push               edi                                           // 0x00415843    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00415844    8b7c240c
                         mov                dword ptr [esi], 0x00000000                   // 0x00415848    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000007            // 0x0041584e    c7460407000000
                         mov                eax, dword ptr [edi]                          // 0x00415855    8b07
                         mov.s              ecx, edi                                      // 0x00415857    8bcf
                         call               dword ptr [eax + 0x1c]                        // 0x00415859    ff501c
                         mov                edx, dword ptr [eax]                          // 0x0041585c    8b10
                         mov.s              ecx, eax                                      // 0x0041585e    8bc8
                         call               dword ptr [edx + 0x40]                        // 0x00415860    ff5240
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00415863    d84c2418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00415867    8b442414
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0041586b    894614
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0041586e    8b442410
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x00415872    d95e0c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00415875    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x0041587b    8b91405a2000
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00415881    895608
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00415884    894618
                         mov                edx, dword ptr [edi]                          // 0x00415887    8b17
                         mov.s              ecx, edi                                      // 0x00415889    8bcf
                         call               dword ptr [edx + 0x1c]                        // 0x0041588b    ff521c
                         {disp8} mov        eax, dword ptr [eax + 0x60]                   // 0x0041588e    8b4060
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00415891    d94008
                         pop                edi                                           // 0x00415894    5f
                         {disp8} fadd       dword ptr [esi + 0x0c]                        // 0x00415895    d8460c
                         mov.s              eax, esi                                      // 0x00415898    8bc6
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x0041589a    d95e10
                         pop                esi                                           // 0x0041589d    5e
                         ret                0x0010                                        // 0x0041589e    c21000
                         nop                                                              // 0x004158a1    90
                         nop                                                              // 0x004158a2    90
                         nop                                                              // 0x004158a3    90
                         nop                                                              // 0x004158a4    90
                         nop                                                              // 0x004158a5    90
                         nop                                                              // 0x004158a6    90
                         nop                                                              // 0x004158a7    90
                         nop                                                              // 0x004158a8    90
                         nop                                                              // 0x004158a9    90
                         nop                                                              // 0x004158aa    90
                         nop                                                              // 0x004158ab    90
                         nop                                                              // 0x004158ac    90
                         nop                                                              // 0x004158ad    90
                         nop                                                              // 0x004158ae    90
                         nop                                                              // 0x004158af    90
_jmp_addr_0x004158b0:    sub                esp, 0x000002a8                               // 0x004158b0    81eca8020000
                         push               ebx                                           // 0x004158b6    53
                         push               esi                                           // 0x004158b7    56
                         push               edi                                           // 0x004158b8    57
                         mov.s              esi, ecx                                      // 0x004158b9    8bf1
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x004158bb    d9460c
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x004158be    8b4608
                         sub                esp, 0x08                                     // 0x004158c1    83ec08
                         fstp               qword ptr [esp]                               // 0x004158c4    dd1c24
                         sub                esp, 0x08                                     // 0x004158c7    83ec08
                         {disp8} fld        dword ptr [esi + 0x10]                        // 0x004158ca    d94610
                         mov                bl, -0x01                                     // 0x004158cd    b3ff
                         fstp               qword ptr [esp]                               // 0x004158cf    dd1c24
                         push               eax                                           // 0x004158d2    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000200]             // 0x004158d3    8d8c2400020000
                         push               0x009c8ce4                                    // 0x004158da    68e48c9c00
                         mov                edi, 0x009c8cdc                               // 0x004158df    bfdc8c9c00
                         push               ecx                                           // 0x004158e4    51
                         {disp8} mov        dword ptr [esp + 0x5c], 0x009c8cd0            // 0x004158e5    c744245cd08c9c00
                         {disp8} mov        dword ptr [esp + 0x60], 0x009c8cc0            // 0x004158ed    c7442460c08c9c00
                         {disp8} mov        dword ptr [esp + 0x64], 0x009c8cb4            // 0x004158f5    c7442464b48c9c00
                         {disp8} mov        dword ptr [esp + 0x68], 0x009c8cac            // 0x004158fd    c7442468ac8c9c00
                         {disp8} mov        dword ptr [esp + 0x6c], 0x009c8ca0            // 0x00415905    c744246ca08c9c00
                         {disp8} mov        dword ptr [esp + 0x70], 0x009c8c94            // 0x0041590d    c7442470948c9c00
                         {disp8} mov        dword ptr [esp + 0x74], 0x009c8c88            // 0x00415915    c7442474888c9c00
                         {disp8} mov        dword ptr [esp + 0x78], 0x009c8c80            // 0x0041591d    c7442478808c9c00
                         {disp8} mov        dword ptr [esp + 0x7c], 0x009c8c78            // 0x00415925    c744247c788c9c00
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x009c8c70      // 0x0041592d    c7842480000000708c9c00
                         {disp32} mov       dword ptr [esp + 0x00000084], 0x009c8c60      // 0x00415938    c7842484000000608c9c00
                         {disp32} mov       dword ptr [esp + 0x00000088], 0x009c8c58      // 0x00415943    c7842488000000588c9c00
                         {disp32} mov       dword ptr [esp + 0x0000008c], 0x009c8c50      // 0x0041594e    c784248c000000508c9c00
                         {disp32} mov       dword ptr [esp + 0x00000090], 0x009c8c44      // 0x00415959    c7842490000000448c9c00
                         {disp32} mov       dword ptr [esp + 0x00000094], edi             // 0x00415964    89bc2494000000
                         {disp8} mov        byte ptr [esp + 0x28], bl                     // 0x0041596b    885c2428
                         {disp8} mov        byte ptr [esp + 0x29], bl                     // 0x0041596f    885c2429
                         {disp8} mov        byte ptr [esp + 0x2a], bl                     // 0x00415973    885c242a
                         {disp8} mov        byte ptr [esp + 0x2b], bl                     // 0x00415977    885c242b
                         call               _sprintf                                      // 0x0041597b    e852fe3a00
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x00415980    d9460c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00415983    d81d98a38a00
                         add                esp, 0x1c                                     // 0x00415989    83c41c
                         fnstsw             ax                                            // 0x0041598c    dfe0
                         test               ah, 0x01                                      // 0x0041598e    f6c401
                         {disp8} je         _jmp_addr_0x004159a6                          // 0x00415991    7413
                         {disp8} mov        byte ptr [esp + 0x0f], bl                     // 0x00415993    885c240f
                         {disp8} mov        byte ptr [esp + 0x0e], 0x37                   // 0x00415997    c644240e37
                         {disp8} mov        byte ptr [esp + 0x0d], 0x00                   // 0x0041599c    c644240d00
                         {disp8} mov        byte ptr [esp + 0x0c], 0x00                   // 0x004159a1    c644240c00
_jmp_addr_0x004159a6:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x004159a6    8b4604
                         cmp                eax, 0x09                                     // 0x004159a9    83f809
                         {disp32} ja        _jmp_addr_0x00415fd9                          // 0x004159ac    0f8727060000
                         jmp                dword ptr [eax*4 + 0x416034]                  // 0x004159b2    ff248534604100
                         {disp8} mov        esi, dword ptr [esi + 0x18]                   // 0x004159b9    8b7618
                         lea                edx, dword ptr [esi + esi * 0x2]              // 0x004159bc    8d1476
                         lea                eax, dword ptr [esi + edx * 0x4]              // 0x004159bf    8d0496
                         {disp32} mov       ecx, dword ptr [eax * 0x8 + _GTownDesireFunction_ARRAY_00da32c8]       // 0x004159c2    8b0cc5c832da00
                         push               ecx                                           // 0x004159c9    51
                         or                 ecx, 0xffffffff                               // 0x004159ca    83c9ff
                         xor.s              eax, eax                                      // 0x004159cd    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000001f0]             // 0x004159cf    8dbc24f0010000
                         repne scasb                                                      // 0x004159d6    f2ae
                         not                ecx                                           // 0x004159d8    f7d1
                         dec                ecx                                           // 0x004159da    49
                         {disp32} lea       edx, dword ptr [esp + ecx * 0x1 + 0x000001f0] // 0x004159db    8d940cf0010000
                         push               0x009c8c40                                    // 0x004159e2    68408c9c00
                         push               edx                                           // 0x004159e7    52
                         call               _sprintf                                      // 0x004159e8    e8e5fd3a00
                         add                esp, 0x0c                                     // 0x004159ed    83c40c
                         {disp32} jmp       _jmp_addr_0x00415fd9                          // 0x004159f0    e9e4050000
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x004159f5    8b4614
                         {disp8} mov        ecx, dword ptr [esp + eax * 0x4 + 0x40]       // 0x004159f8    8b4c8440
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x004159fc    8b5618
                         {disp8} mov        dword ptr [esp + 0x10], 0x009c8c34            // 0x004159ff    c7442410348c9c00
                         {disp8} mov        dword ptr [esp + 0x14], 0x009c8c28            // 0x00415a07    c7442414288c9c00
                         {disp8} mov        dword ptr [esp + 0x18], 0x009c8c1c            // 0x00415a0f    c74424181c8c9c00
                         {disp8} mov        dword ptr [esp + 0x1c], 0x009c8c10            // 0x00415a17    c744241c108c9c00
                         {disp8} mov        dword ptr [esp + 0x20], 0x009c8c00            // 0x00415a1f    c7442420008c9c00
                         {disp8} mov        dword ptr [esp + 0x24], 0x009c8be4            // 0x00415a27    c7442424e48b9c00
                         {disp8} mov        dword ptr [esp + 0x28], 0x009c8bc8            // 0x00415a2f    c7442428c88b9c00
                         {disp8} mov        eax, dword ptr [esp + edx * 0x4 + 0x10]       // 0x00415a37    8b449410
                         push               ecx                                           // 0x00415a3b    51
                         push               eax                                           // 0x00415a3c    50
                         push               0x009c8bc0                                    // 0x00415a3d    68c08b9c00
                         {disp32} jmp       _jmp_addr_0x00415f43                          // 0x00415a42    e9fc040000
                         {disp8} mov        esi, dword ptr [esi + 0x18]                   // 0x00415a47    8b7618
                         lea                edx, dword ptr [esi + esi * 0x2]              // 0x00415a4a    8d1476
                         shl                edx, 6                                        // 0x00415a4d    c1e206
                         or                 ecx, 0xffffffff                               // 0x00415a50    83c9ff
                         xor.s              eax, eax                                      // 0x00415a53    33c0
                         add                edx, 0x00c09c80                               // 0x00415a55    81c2809cc000
                         {disp32} lea       edi, dword ptr [esp + 0x000001ec]             // 0x00415a5b    8dbc24ec010000
                         repne scasb                                                      // 0x00415a62    f2ae
                         not                ecx                                           // 0x00415a64    f7d1
                         push               edx                                           // 0x00415a66    52
                         dec                ecx                                           // 0x00415a67    49
                         {disp32} lea       eax, dword ptr [esp + ecx * 0x1 + 0x000001f0] // 0x00415a68    8d840cf0010000
                         push               0x009c8c40                                    // 0x00415a6f    68408c9c00
                         push               eax                                           // 0x00415a74    50
                         call               _sprintf                                      // 0x00415a75    e858fd3a00
                         add                esp, 0x0c                                     // 0x00415a7a    83c40c
                         {disp32} jmp       _jmp_addr_0x00415fd9                          // 0x00415a7d    e957050000
                         push               0x009c8bb4                                    // 0x00415a82    68b48b9c00
                         {disp32} jmp       _jmp_addr_0x00415e81                          // 0x00415a87    e9f5030000
                         {disp8} mov        dword ptr [esp + 0x7c], 0x009c8ba4            // 0x00415a8c    c744247ca48b9c00
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x009c8b98      // 0x00415a94    c7842480000000988b9c00
                         {disp32} mov       dword ptr [esp + 0x00000084], 0x009c8b8c      // 0x00415a9f    c78424840000008c8b9c00
                         {disp32} mov       dword ptr [esp + 0x00000088], 0x009c8b80      // 0x00415aaa    c7842488000000808b9c00
                         {disp32} mov       dword ptr [esp + 0x0000008c], 0x009c8b70      // 0x00415ab5    c784248c000000708b9c00
                         {disp32} mov       dword ptr [esp + 0x00000090], 0x009c8b58      // 0x00415ac0    c7842490000000588b9c00
                         {disp32} mov       dword ptr [esp + 0x00000094], 0x009c8b4c      // 0x00415acb    c78424940000004c8b9c00
                         {disp32} mov       dword ptr [esp + 0x00000098], 0x009c8b44      // 0x00415ad6    c7842498000000448b9c00
                         {disp32} mov       dword ptr [esp + 0x0000009c], 0x009c8b38      // 0x00415ae1    c784249c000000388b9c00
                         {disp32} mov       dword ptr [esp + 0x000000a0], 0x009c8b2c      // 0x00415aec    c78424a00000002c8b9c00
                         {disp32} mov       dword ptr [esp + 0x000000a4], 0x009c8b20      // 0x00415af7    c78424a4000000208b9c00
                         {disp32} mov       dword ptr [esp + 0x000000a8], 0x009c8b10      // 0x00415b02    c78424a8000000108b9c00
                         {disp32} mov       dword ptr [esp + 0x000000ac], 0x009c8af8      // 0x00415b0d    c78424ac000000f88a9c00
                         {disp32} mov       dword ptr [esp + 0x000000b0], 0x009c8ae4      // 0x00415b18    c78424b0000000e48a9c00
                         {disp32} mov       dword ptr [esp + 0x000000b4], 0x009c8ad4      // 0x00415b23    c78424b4000000d48a9c00
                         {disp32} mov       dword ptr [esp + 0x000000b8], 0x009c8ac8      // 0x00415b2e    c78424b8000000c88a9c00
                         {disp32} mov       dword ptr [esp + 0x000000bc], 0x009c8ab8      // 0x00415b39    c78424bc000000b88a9c00
                         {disp32} mov       dword ptr [esp + 0x000000c0], 0x009c8aa8      // 0x00415b44    c78424c0000000a88a9c00
                         {disp32} mov       dword ptr [esp + 0x000000c4], 0x009c8a94      // 0x00415b4f    c78424c4000000948a9c00
                         {disp32} mov       dword ptr [esp + 0x000000c8], 0x009c8a84      // 0x00415b5a    c78424c8000000848a9c00
                         {disp32} mov       dword ptr [esp + 0x000000cc], 0x009c8a70      // 0x00415b65    c78424cc000000708a9c00
                         {disp32} mov       dword ptr [esp + 0x000000d0], 0x009c8a5c      // 0x00415b70    c78424d00000005c8a9c00
                         {disp32} mov       dword ptr [esp + 0x000000d4], 0x009c8a4c      // 0x00415b7b    c78424d40000004c8a9c00
                         {disp32} mov       dword ptr [esp + 0x000000d8], 0x009c8a40      // 0x00415b86    c78424d8000000408a9c00
                         {disp32} mov       dword ptr [esp + 0x000000dc], 0x009c8a34      // 0x00415b91    c78424dc000000348a9c00
                         {disp32} mov       dword ptr [esp + 0x000000e0], 0x009c8a20      // 0x00415b9c    c78424e0000000208a9c00
                         {disp32} mov       dword ptr [esp + 0x000000e4], 0x009c8a14      // 0x00415ba7    c78424e4000000148a9c00
                         {disp32} mov       dword ptr [esp + 0x000000e8], 0x009c8a08      // 0x00415bb2    c78424e8000000088a9c00
                         {disp32} mov       dword ptr [esp + 0x000000ec], 0x009c89fc      // 0x00415bbd    c78424ec000000fc899c00
                         {disp32} mov       dword ptr [esp + 0x000000f0], 0x009c89f0      // 0x00415bc8    c78424f0000000f0899c00
                         {disp32} mov       dword ptr [esp + 0x000000f4], 0x009c89e8      // 0x00415bd3    c78424f4000000e8899c00
                         {disp32} mov       dword ptr [esp + 0x000000f8], 0x009c89d0      // 0x00415bde    c78424f8000000d0899c00
                         {disp32} mov       dword ptr [esp + 0x000000fc], 0x009c89c0      // 0x00415be9    c78424fc000000c0899c00
                         {disp32} mov       dword ptr [esp + 0x00000100], 0x009c89ac      // 0x00415bf4    c7842400010000ac899c00
                         {disp32} mov       dword ptr [esp + 0x00000104], 0x009c899c      // 0x00415bff    c78424040100009c899c00
                         {disp32} mov       dword ptr [esp + 0x00000108], 0x009c8988      // 0x00415c0a    c784240801000088899c00
                         {disp32} mov       dword ptr [esp + 0x0000010c], 0x009c8970      // 0x00415c15    c784240c01000070899c00
                         {disp32} mov       dword ptr [esp + 0x00000110], 0x009c8960      // 0x00415c20    c784241001000060899c00
                         {disp32} mov       dword ptr [esp + 0x00000114], 0x009c8954      // 0x00415c2b    c784241401000054899c00
                         {disp32} mov       dword ptr [esp + 0x00000118], 0x009c8944      // 0x00415c36    c784241801000044899c00
                         {disp32} mov       dword ptr [esp + 0x0000011c], 0x009c8934      // 0x00415c41    c784241c01000034899c00
                         {disp32} mov       dword ptr [esp + 0x00000120], 0x009c8920      // 0x00415c4c    c784242001000020899c00
                         {disp32} mov       dword ptr [esp + 0x00000124], 0x009c8910      // 0x00415c57    c784242401000010899c00
                         {disp32} mov       dword ptr [esp + 0x00000128], 0x009c88fc      // 0x00415c62    c7842428010000fc889c00
                         {disp32} mov       dword ptr [esp + 0x0000012c], 0x009c88e4      // 0x00415c6d    c784242c010000e4889c00
                         {disp32} mov       dword ptr [esp + 0x00000130], 0x009c88d8      // 0x00415c78    c7842430010000d8889c00
                         {disp32} mov       dword ptr [esp + 0x00000134], 0x009c88cc      // 0x00415c83    c7842434010000cc889c00
                         {disp32} mov       dword ptr [esp + 0x00000138], 0x009c88bc      // 0x00415c8e    c7842438010000bc889c00
                         {disp32} mov       dword ptr [esp + 0x0000013c], 0x009c88b0      // 0x00415c99    c784243c010000b0889c00
                         {disp32} mov       dword ptr [esp + 0x00000140], 0x009c889c      // 0x00415ca4    c78424400100009c889c00
                         {disp32} mov       dword ptr [esp + 0x00000144], 0x009c8884      // 0x00415caf    c784244401000084889c00
                         {disp32} mov       dword ptr [esp + 0x00000148], 0x009c8870      // 0x00415cba    c784244801000070889c00
                         {disp32} mov       dword ptr [esp + 0x0000014c], 0x009c8860      // 0x00415cc5    c784244c01000060889c00
                         {disp32} mov       dword ptr [esp + 0x00000150], 0x009c8850      // 0x00415cd0    c784245001000050889c00
                         {disp32} mov       dword ptr [esp + 0x00000154], 0x009c8844      // 0x00415cdb    c784245401000044889c00
                         {disp32} mov       dword ptr [esp + 0x00000158], 0x009c8830      // 0x00415ce6    c784245801000030889c00
                         {disp32} mov       dword ptr [esp + 0x0000015c], 0x009c8814      // 0x00415cf1    c784245c01000014889c00
                         {disp32} mov       dword ptr [esp + 0x00000160], 0x009c8800      // 0x00415cfc    c784246001000000889c00
                         {disp32} mov       dword ptr [esp + 0x00000164], 0x009c87f4      // 0x00415d07    c7842464010000f4879c00
                         {disp32} mov       dword ptr [esp + 0x00000168], 0x009c87d8      // 0x00415d12    c7842468010000d8879c00
                         {disp32} mov       dword ptr [esp + 0x0000016c], 0x009c87bc      // 0x00415d1d    c784246c010000bc879c00
                         {disp32} mov       dword ptr [esp + 0x00000170], 0x009c87a0      // 0x00415d28    c7842470010000a0879c00
                         {disp32} mov       dword ptr [esp + 0x00000174], 0x009c878c      // 0x00415d33    c78424740100008c879c00
                         {disp32} mov       dword ptr [esp + 0x00000178], 0x009c877c      // 0x00415d3e    c78424780100007c879c00
                         {disp32} mov       dword ptr [esp + 0x0000017c], 0x009c8764      // 0x00415d49    c784247c01000064879c00
                         {disp32} mov       dword ptr [esp + 0x00000180], 0x009c8754      // 0x00415d54    c784248001000054879c00
                         {disp32} mov       dword ptr [esp + 0x00000184], 0x009c8748      // 0x00415d5f    c784248401000048879c00
                         {disp32} mov       dword ptr [esp + 0x00000188], 0x009c873c      // 0x00415d6a    c78424880100003c879c00
                         {disp32} mov       dword ptr [esp + 0x0000018c], 0x009c8730      // 0x00415d75    c784248c01000030879c00
                         {disp32} mov       dword ptr [esp + 0x00000190], 0x009c8714      // 0x00415d80    c784249001000014879c00
                         {disp32} mov       dword ptr [esp + 0x00000194], 0x009c86fc      // 0x00415d8b    c7842494010000fc869c00
                         {disp32} mov       dword ptr [esp + 0x00000198], 0x009c86ec      // 0x00415d96    c7842498010000ec869c00
                         {disp32} mov       dword ptr [esp + 0x0000019c], 0x009c86d4      // 0x00415da1    c784249c010000d4869c00
                         {disp32} mov       dword ptr [esp + 0x000001a0], 0x009c86c4      // 0x00415dac    c78424a0010000c4869c00
                         {disp32} mov       dword ptr [esp + 0x000001a4], 0x009c86b0      // 0x00415db7    c78424a4010000b0869c00
                         {disp32} mov       dword ptr [esp + 0x000001a8], 0x009c86a4      // 0x00415dc2    c78424a8010000a4869c00
                         {disp32} mov       dword ptr [esp + 0x000001ac], 0x009c8698      // 0x00415dcd    c78424ac01000098869c00
                         {disp32} mov       dword ptr [esp + 0x000001b0], 0x009c8688      // 0x00415dd8    c78424b001000088869c00
                         {disp32} mov       dword ptr [esp + 0x000001b4], 0x009c867c      // 0x00415de3    c78424b40100007c869c00
                         {disp32} mov       dword ptr [esp + 0x000001b8], 0x009c866c      // 0x00415dee    c78424b80100006c869c00
                         {disp32} mov       dword ptr [esp + 0x000001bc], 0x009c865c      // 0x00415df9    c78424bc0100005c869c00
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x00415e04    8b5618
                         {disp32} mov       dword ptr [esp + 0x000001c0], 0x009c8640      // 0x00415e07    c78424c001000040869c00
                         {disp32} mov       dword ptr [esp + 0x000001c4], 0x009c8630      // 0x00415e12    c78424c401000030869c00
                         {disp32} mov       dword ptr [esp + 0x000001c8], 0x009c8628      // 0x00415e1d    c78424c801000028869c00
                         {disp32} mov       dword ptr [esp + 0x000001cc], 0x009c8614      // 0x00415e28    c78424cc01000014869c00
                         {disp32} mov       dword ptr [esp + 0x000001d0], 0x009c8608      // 0x00415e33    c78424d001000008869c00
                         {disp32} mov       dword ptr [esp + 0x000001d4], 0x009c85f8      // 0x00415e3e    c78424d4010000f8859c00
                         {disp32} mov       dword ptr [esp + 0x000001d8], 0x009c85e4      // 0x00415e49    c78424d8010000e4859c00
                         {disp32} mov       dword ptr [esp + 0x000001dc], 0x009c85d4      // 0x00415e54    c78424dc010000d4859c00
                         {disp32} mov       dword ptr [esp + 0x000001e0], 0x009c85c4      // 0x00415e5f    c78424e0010000c4859c00
                         {disp32} mov       dword ptr [esp + 0x000001e4], 0x009c85b4      // 0x00415e6a    c78424e4010000b4859c00
                         {disp32} mov       dword ptr [esp + 0x000001e8], edi             // 0x00415e75    89bc24e8010000
                         {disp8} mov        eax, dword ptr [esp + edx * 0x4 + 0x7c]       // 0x00415e7c    8b44947c
                         push               eax                                           // 0x00415e80    50
_jmp_addr_0x00415e81:    or                 ecx, 0xffffffff                               // 0x00415e81    83c9ff
                         xor.s              eax, eax                                      // 0x00415e84    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000001f0]             // 0x00415e86    8dbc24f0010000
                         repne scasb                                                      // 0x00415e8d    f2ae
                         not                ecx                                           // 0x00415e8f    f7d1
                         dec                ecx                                           // 0x00415e91    49
                         {disp32} lea       ecx, dword ptr [esp + ecx * 0x1 + 0x000001f0] // 0x00415e92    8d8c0cf0010000
                         push               0x009c8c40                                    // 0x00415e99    68408c9c00
                         push               ecx                                           // 0x00415e9e    51
                         call               _sprintf                                      // 0x00415e9f    e82ef93a00
                         add                esp, 0x0c                                     // 0x00415ea4    83c40c
                         {disp32} jmp       _jmp_addr_0x00415fd9                          // 0x00415ea7    e92d010000
                         or                 ecx, 0xffffffff                               // 0x00415eac    83c9ff
                         xor.s              eax, eax                                      // 0x00415eaf    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000001ec]             // 0x00415eb1    8dbc24ec010000
                         repne scasb                                                      // 0x00415eb8    f2ae
                         not                ecx                                           // 0x00415eba    f7d1
                         push               0x009c85ac                                    // 0x00415ebc    68ac859c00
                         dec                ecx                                           // 0x00415ec1    49
                         {disp32} lea       edx, dword ptr [esp + ecx * 0x1 + 0x000001f0] // 0x00415ec2    8d940cf0010000
                         push               0x009c8c40                                    // 0x00415ec9    68408c9c00
                         push               edx                                           // 0x00415ece    52
                         call               _sprintf                                      // 0x00415ecf    e8fef83a00
                         add                esp, 0x0c                                     // 0x00415ed4    83c40c
                         {disp8} mov        byte ptr [esp + 0x0f], bl                     // 0x00415ed7    885c240f
                         {disp8} mov        byte ptr [esp + 0x0e], bl                     // 0x00415edb    885c240e
                         {disp8} mov        byte ptr [esp + 0x0d], 0x00                   // 0x00415edf    c644240d00
                         {disp8} mov        byte ptr [esp + 0x0c], 0x00                   // 0x00415ee4    c644240c00
                         {disp32} jmp       _jmp_addr_0x00415fd9                          // 0x00415ee9    e9eb000000
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00415eee    8b4618
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x00415ef1    8b5614
                         {disp8} mov        dword ptr [esp + 0x10], 0x009c859c            // 0x00415ef4    c74424109c859c00
                         {disp8} mov        dword ptr [esp + 0x14], 0x009c8590            // 0x00415efc    c744241490859c00
                         {disp8} mov        dword ptr [esp + 0x18], 0x009c8588            // 0x00415f04    c744241888859c00
                         {disp8} mov        dword ptr [esp + 0x1c], 0x009c8580            // 0x00415f0c    c744241c80859c00
                         {disp8} mov        dword ptr [esp + 0x20], 0x009c8578            // 0x00415f14    c744242078859c00
                         {disp8} mov        dword ptr [esp + 0x24], 0x009c8564            // 0x00415f1c    c744242464859c00
                         {disp8} mov        dword ptr [esp + 0x28], 0x009c8548            // 0x00415f24    c744242848859c00
                         {disp8} mov        dword ptr [esp + 0x2c], 0x009c89fc            // 0x00415f2c    c744242cfc899c00
                         {disp8} mov        ecx, dword ptr [esp + eax * 0x4 + 0x10]       // 0x00415f34    8b4c8410
                         {disp8} mov        eax, dword ptr [esp + edx * 0x4 + 0x40]       // 0x00415f38    8b449440
                         push               ecx                                           // 0x00415f3c    51
                         push               eax                                           // 0x00415f3d    50
                         push               0x009c8538                                    // 0x00415f3e    6838859c00
_jmp_addr_0x00415f43:    or                 ecx, 0xffffffff                               // 0x00415f43    83c9ff
                         xor.s              eax, eax                                      // 0x00415f46    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000001f8]             // 0x00415f48    8dbc24f8010000
                         repne scasb                                                      // 0x00415f4f    f2ae
                         not                ecx                                           // 0x00415f51    f7d1
                         dec                ecx                                           // 0x00415f53    49
                         {disp32} lea       ecx, dword ptr [esp + ecx * 0x1 + 0x000001f8] // 0x00415f54    8d8c0cf8010000
                         push               ecx                                           // 0x00415f5b    51
                         call               _sprintf                                      // 0x00415f5c    e871f83a00
                         add                esp, 0x10                                     // 0x00415f61    83c410
                         {disp8} jmp        _jmp_addr_0x00415fd9                          // 0x00415f64    eb73
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00415f66    8b4618
                         test               eax, eax                                      // 0x00415f69    85c0
                         mov                ecx, 0x009c8530                               // 0x00415f6b    b930859c00
                         {disp8} jne        _jmp_addr_0x00415f77                          // 0x00415f70    7505
                         mov                ecx, 0x009c8528                               // 0x00415f72    b928859c00
_jmp_addr_0x00415f77:    {disp8} mov        esi, dword ptr [esi + 0x14]                   // 0x00415f77    8b7614
                         test               esi, esi                                      // 0x00415f7a    85f6
                         mov                eax, 0x009c8520                               // 0x00415f7c    b820859c00
                         {disp8} jg         _jmp_addr_0x00415f88                          // 0x00415f81    7f05
                         mov                eax, 0x009c8518                               // 0x00415f83    b818859c00
_jmp_addr_0x00415f88:    push               ecx                                           // 0x00415f88    51
                         push               esi                                           // 0x00415f89    56
                         push               eax                                           // 0x00415f8a    50
                         or                 ecx, 0xffffffff                               // 0x00415f8b    83c9ff
                         xor.s              eax, eax                                      // 0x00415f8e    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000001f8]             // 0x00415f90    8dbc24f8010000
                         repne scasb                                                      // 0x00415f97    f2ae
                         not                ecx                                           // 0x00415f99    f7d1
                         dec                ecx                                           // 0x00415f9b    49
                         {disp32} lea       edx, dword ptr [esp + ecx * 0x1 + 0x000001f8] // 0x00415f9c    8d940cf8010000
                         push               0x009c8500                                    // 0x00415fa3    6800859c00
                         push               edx                                           // 0x00415fa8    52
                         call               _sprintf                                      // 0x00415fa9    e824f83a00
                         add                esp, 0x14                                     // 0x00415fae    83c414
                         {disp8} jmp        _jmp_addr_0x00415fd9                          // 0x00415fb1    eb26
                         or                 ecx, 0xffffffff                               // 0x00415fb3    83c9ff
                         xor.s              eax, eax                                      // 0x00415fb6    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000001ec]             // 0x00415fb8    8dbc24ec010000
                         repne scasb                                                      // 0x00415fbf    f2ae
                         not                ecx                                           // 0x00415fc1    f7d1
                         dec                ecx                                           // 0x00415fc3    49
                         {disp32} lea       eax, dword ptr [esp + ecx * 0x1 + 0x000001ec] // 0x00415fc4    8d840cec010000
                         push               0x009c84f4                                    // 0x00415fcb    68f4849c00
                         push               eax                                           // 0x00415fd0    50
                         call               _sprintf                                      // 0x00415fd1    e8fcf73a00
                         add                esp, 0x08                                     // 0x00415fd6    83c408
_jmp_addr_0x00415fd9:    {disp32} mov       ecx, dword ptr [esp + 0x000002bc]             // 0x00415fd9    8b8c24bc020000
                         {disp32} mov       eax, dword ptr [esp + 0x000002b8]             // 0x00415fe0    8b8424b8020000
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00415fe7    894c2434
                         add                ecx, 0xd                                      // 0x00415feb    83c10d
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00415fee    894c243c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x300390]        // 0x00415ff2    8b0d9063cc00
                         push               ecx                                           // 0x00415ff8    51
                         push               0x0                                           // 0x00415ff9    6a00
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00415ffb    89442438
                         add                eax, 0x000000ef                               // 0x00415fff    05ef000000
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00416004    8d542414
                         push               edx                                           // 0x00416008    52
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00416009    89442444
                         push               0x0                                           // 0x0041600d    6a00
                         {disp32} lea       eax, dword ptr [esp + 0x000001fc]             // 0x0041600f    8d8424fc010000
                         push               eax                                           // 0x00416016    50
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x00416017    8d4c2444
                         push               ecx                                           // 0x0041601b    51
                         call               _jmp_addr_0x00520b90                          // 0x0041601c    e86fab1000
                         fstp               st(0)                                         // 0x00416021    ddd8
                         add                esp, 0x18                                     // 0x00416023    83c418
                         pop                edi                                           // 0x00416026    5f
                         pop                esi                                           // 0x00416027    5e
                         pop                ebx                                           // 0x00416028    5b
                         add                esp, 0x000002a8                               // 0x00416029    81c4a8020000
                         ret                0x0008                                        // 0x0041602f    c20800

// Snippet: db, [0x00416032, 0x00416034)
.byte 0x8b, 0xff                  // 0x00416032

// Snippet: jmptbl, [0x00416034, 0x0041605c)
.byte 0xb9, 0x59, 0x41, 0x00      // 0x00416034
.byte 0xf5, 0x59, 0x41, 0x00      // 0x00416038
.byte 0x47, 0x5a, 0x41, 0x00      // 0x0041603c
.byte 0x82, 0x5a, 0x41, 0x00      // 0x00416040
.byte 0x8c, 0x5a, 0x41, 0x00      // 0x00416044
.byte 0xac, 0x5e, 0x41, 0x00      // 0x00416048
.byte 0xee, 0x5e, 0x41, 0x00      // 0x0041604c
.byte 0x66, 0x5f, 0x41, 0x00      // 0x00416050
.byte 0xd9, 0x5f, 0x41, 0x00      // 0x00416054
.byte 0xb3, 0x5f, 0x41, 0x00      // 0x00416058

// Snippet: db, [0x0041605c, 0x00416060)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0041605c

