.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00480a60
.extern _jmp_addr_0x00481160
.extern _jmp_addr_0x004813b0
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x0048b790
.extern _jmp_addr_0x0048d7b0
.extern _jmp_addr_0x0048d8e0
.extern _jmp_addr_0x0048d930
.extern _jmp_addr_0x004ee2b0
.extern @GetAnim__9MorphableFll@16
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?LocalRand@GRand@@SAIJ@Z
.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern _jmp_addr_0x0085e490
.extern _jmp_addr_0x00863b00

.globl _jmp_addr_0x00484830
.globl _jmp_addr_0x004848c0
.globl _jmp_addr_0x004848f0
.globl _jmp_addr_0x00484920
.globl _jmp_addr_0x00484ac0
.globl _jmp_addr_0x00484ae0
.globl _jmp_addr_0x00484b00
.globl _jmp_addr_0x00484b80
.globl _jmp_addr_0x00484c20
.globl _jmp_addr_0x00484c60
.globl _jmp_addr_0x00484c80
.globl _jmp_addr_0x00484ce0
.globl _jmp_addr_0x00484e10
.globl _jmp_addr_0x00484e20
.globl _jmp_addr_0x00484e60
.globl _jmp_addr_0x00484ec0

start_0x00484830_0x004851a0:
// Snippet: asm, [0x00484830, 0x00485108)
_jmp_addr_0x00484830:    push               esi                                      // 0x00484830    56
                         mov.s              esi, ecx                                 // 0x00484831    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00484833    e898faffff
                         test               eax, eax                                 // 0x00484838    85c0
                         {disp8} jne        _jmp_addr_0x00484890                     // 0x0048483a    7554
                         push               0x1                                      // 0x0048483c    6a01
                         push               0x00000091                               // 0x0048483e    6891000000
                         mov.s              ecx, esi                                 // 0x00484843    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484845    e8064e1900
                         test               eax, eax                                 // 0x0048484a    85c0
                         {disp8} je         _jmp_addr_0x00484890                     // 0x0048484c    7442
                         push               0x1                                      // 0x0048484e    6a01
                         push               0x00000093                               // 0x00484850    6893000000
                         mov.s              ecx, esi                                 // 0x00484855    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484857    e8f44d1900
                         test               eax, eax                                 // 0x0048485c    85c0
                         {disp8} je         _jmp_addr_0x00484890                     // 0x0048485e    7430
                         push               0x1                                      // 0x00484860    6a01
                         push               0x00000092                               // 0x00484862    6892000000
                         mov.s              ecx, esi                                 // 0x00484867    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484869    e8e24d1900
                         test               eax, eax                                 // 0x0048486e    85c0
                         {disp8} je         _jmp_addr_0x00484890                     // 0x00484870    741e
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00484872    8b442408
                         push               eax                                      // 0x00484876    50
                         mov.s              ecx, esi                                 // 0x00484877    8bce
                         call               _jmp_addr_0x004848a0                     // 0x00484879    e822000000
                         push               0x5                                      // 0x0048487e    6a05
                         mov.s              ecx, esi                                 // 0x00484880    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00484882    e839060000
                         mov                eax, 0x00000001                          // 0x00484887    b801000000
                         pop                esi                                      // 0x0048488c    5e
                         ret                0x0004                                   // 0x0048488d    c20400
_jmp_addr_0x00484890:    xor.s              eax, eax                                 // 0x00484890    33c0
                         pop                esi                                      // 0x00484892    5e
                         ret                0x0004                                   // 0x00484893    c20400
                         nop                                                         // 0x00484896    90
                         nop                                                         // 0x00484897    90
                         nop                                                         // 0x00484898    90
                         nop                                                         // 0x00484899    90
                         nop                                                         // 0x0048489a    90
                         nop                                                         // 0x0048489b    90
                         nop                                                         // 0x0048489c    90
                         nop                                                         // 0x0048489d    90
                         nop                                                         // 0x0048489e    90
                         nop                                                         // 0x0048489f    90
_jmp_addr_0x004848a0:    {disp8} mov        edx, dword ptr [esp + 0x04]              // 0x004848a0    8b542404
                         mov                eax, dword ptr [ecx]                     // 0x004848a4    8b01
                         push               edx                                      // 0x004848a6    52
                         push               0x00000093                               // 0x004848a7    6893000000
                         call               dword ptr [eax]                          // 0x004848ac    ff10
                         mov                eax, 0x00000001                          // 0x004848ae    b801000000
                         ret                0x0004                                   // 0x004848b3    c20400
                         nop                                                         // 0x004848b6    90
                         nop                                                         // 0x004848b7    90
                         nop                                                         // 0x004848b8    90
                         nop                                                         // 0x004848b9    90
                         nop                                                         // 0x004848ba    90
                         nop                                                         // 0x004848bb    90
                         nop                                                         // 0x004848bc    90
                         nop                                                         // 0x004848bd    90
                         nop                                                         // 0x004848be    90
                         nop                                                         // 0x004848bf    90
_jmp_addr_0x004848c0:    {disp32} mov       eax, dword ptr [ecx + 0x00004994]        // 0x004848c0    8b8194490000
                         cmp                eax, 0x03                                // 0x004848c6    83f803
                         {disp8} jne        _jmp_addr_0x004848d8                     // 0x004848c9    750d
                         push               0x4                                      // 0x004848cb    6a04
                         call               _jmp_addr_0x00484ec0                     // 0x004848cd    e8ee050000
                         mov                eax, 0x00000001                          // 0x004848d2    b801000000
                         ret                                                         // 0x004848d7    c3
_jmp_addr_0x004848d8:    cmp                eax, 0x02                                // 0x004848d8    83f802
                         {disp8} jne        _jmp_addr_0x004848e9                     // 0x004848db    750c
                         mov                eax, 0x00000001                          // 0x004848dd    b801000000
                         {disp32} mov       dword ptr [ecx + 0x00005238], eax        // 0x004848e2    898138520000
                         ret                                                         // 0x004848e8    c3
_jmp_addr_0x004848e9:    xor.s              eax, eax                                 // 0x004848e9    33c0
                         ret                                                         // 0x004848eb    c3
                         nop                                                         // 0x004848ec    90
                         nop                                                         // 0x004848ed    90
                         nop                                                         // 0x004848ee    90
                         nop                                                         // 0x004848ef    90
_jmp_addr_0x004848f0:    {disp32} mov       eax, dword ptr [ecx + 0x00004994]        // 0x004848f0    8b8194490000
                         cmp                eax, 0x06                                // 0x004848f6    83f806
                         {disp8} jne        _jmp_addr_0x00484908                     // 0x004848f9    750d
                         push               0x7                                      // 0x004848fb    6a07
                         call               _jmp_addr_0x00484ec0                     // 0x004848fd    e8be050000
                         mov                eax, 0x00000001                          // 0x00484902    b801000000
                         ret                                                         // 0x00484907    c3
_jmp_addr_0x00484908:    cmp                eax, 0x05                                // 0x00484908    83f805
                         {disp8} jne        _jmp_addr_0x00484919                     // 0x0048490b    750c
                         mov                eax, 0x00000001                          // 0x0048490d    b801000000
                         {disp32} mov       dword ptr [ecx + 0x00005238], eax        // 0x00484912    898138520000
                         ret                                                         // 0x00484918    c3
_jmp_addr_0x00484919:    xor.s              eax, eax                                 // 0x00484919    33c0
                         ret                                                         // 0x0048491b    c3
                         nop                                                         // 0x0048491c    90
                         nop                                                         // 0x0048491d    90
                         nop                                                         // 0x0048491e    90
                         nop                                                         // 0x0048491f    90
_jmp_addr_0x00484920:    sub                esp, 0x0c                                // 0x00484920    83ec0c
                         push               esi                                      // 0x00484923    56
                         mov.s              esi, ecx                                 // 0x00484924    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00484926    e8a5f9ffff
                         test               eax, eax                                 // 0x0048492b    85c0
                         {disp8} je         _jmp_addr_0x0048493b                     // 0x0048492d    740c
                         {disp8} mov        al, byte ptr [esp + 0x18]                // 0x0048492f    8a442418
                         test               al, al                                   // 0x00484933    84c0
                         {disp32} je        _jmp_addr_0x00484aa8                     // 0x00484935    0f846d010000
_jmp_addr_0x0048493b:    push               0x1                                      // 0x0048493b    6a01
                         push               0x000000d0                               // 0x0048493d    68d0000000
                         mov.s              ecx, esi                                 // 0x00484942    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484944    e8074d1900
                         test               eax, eax                                 // 0x00484949    85c0
                         {disp32} je        _jmp_addr_0x00484aa8                     // 0x0048494b    0f8457010000
                         push               0x1                                      // 0x00484951    6a01
                         push               0x000000d1                               // 0x00484953    68d1000000
                         mov.s              ecx, esi                                 // 0x00484958    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x0048495a    e8f14c1900
                         test               eax, eax                                 // 0x0048495f    85c0
                         {disp32} je        _jmp_addr_0x00484aa8                     // 0x00484961    0f8441010000
                         push               0x1                                      // 0x00484967    6a01
                         push               0x000000d2                               // 0x00484969    68d2000000
                         mov.s              ecx, esi                                 // 0x0048496e    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484970    e8db4c1900
                         test               eax, eax                                 // 0x00484975    85c0
                         {disp32} je        _jmp_addr_0x00484aa8                     // 0x00484977    0f842b010000
                         push               0x1                                      // 0x0048497d    6a01
                         push               0x000000d3                               // 0x0048497f    68d3000000
                         mov.s              ecx, esi                                 // 0x00484984    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484986    e8c54c1900
                         test               eax, eax                                 // 0x0048498b    85c0
                         {disp32} je        _jmp_addr_0x00484aa8                     // 0x0048498d    0f8415010000
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00484993    8b442414
                         mov                edx, dword ptr [eax]                     // 0x00484997    8b10
                         push               edi                                      // 0x00484999    57
                         {disp32} lea       edi, dword ptr [esi + 0x00004a74]        // 0x0048499a    8dbe744a0000
                         mov.s              ecx, edi                                 // 0x004849a0    8bcf
                         mov                dword ptr [ecx], edx                     // 0x004849a2    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]              // 0x004849a4    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx              // 0x004849a7    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]              // 0x004849aa    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax              // 0x004849ad    894108
                         mov.s              ecx, esi                                 // 0x004849b0    8bce
                         call               _jmp_addr_0x004813b0                     // 0x004849b2    e8f9c9ffff
                         {disp8} fld        dword ptr [edi + 0x08]                   // 0x004849b7    d94708
                         {disp8} fsub       dword ptr [eax + 0x08]                   // 0x004849ba    d86008
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x004849bd    8d4c2408
                         {disp8} fld        dword ptr [edi + 0x04]                   // 0x004849c1    d94704
                         push               ecx                                      // 0x004849c4    51
                         {disp8} fsub       dword ptr [eax + 0x04]                   // 0x004849c5    d86004
                         fld                dword ptr [edi]                          // 0x004849c8    d907
                         fsub               dword ptr [eax]                          // 0x004849ca    d820
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x004849cc    d95c240c
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x004849d0    d95c2410
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x004849d4    d95c2414
                         call               _jmp_addr_0x007faa50                     // 0x004849d8    e873603700
                         {disp8} fst        dword ptr [esp + 0x1c]                   // 0x004849dd    d954241c
                         {disp32} fsub      dword ptr [esi + 0x00000084]             // 0x004849e1    d8a684000000
                         fstp               dword ptr [esp]                          // 0x004849e7    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x004849ea    e801613700
                         fld                st(0)                                    // 0x004849ef    d9c0
                         add                esp, 0x04                                // 0x004849f1    83c404
                         fabs                                                        // 0x004849f4    d9e1
                         pop                edi                                      // 0x004849f6    5f
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26150]        // 0x004849f7    d81d50f18c00
                         fnstsw             ax                                       // 0x004849fd    dfe0
                         test               ah, 0x01                                 // 0x004849ff    f6c401
                         {disp8} je         _jmp_addr_0x00484a53                     // 0x00484a02    744f
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]        // 0x00484a04    8b86d0480000
                         test               eax, eax                                 // 0x00484a0a    85c0
                         {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000001 // 0x00484a0c    c7868c51000001000000
                         {disp8} je         _jmp_addr_0x00484a2f                     // 0x00484a16    7417
                         {disp32} mov       eax, dword ptr [esi + 0x00005230]        // 0x00484a18    8b8630520000
                         fstp               st(0)                                    // 0x00484a1e    ddd8
                         xor.s              edx, edx                                 // 0x00484a20    33d2
                         test               eax, eax                                 // 0x00484a22    85c0
                         sete               dl                                       // 0x00484a24    0f94c2
                         {disp32} mov       dword ptr [esi + 0x0000522c], edx        // 0x00484a27    89962c520000
                         {disp8} jmp        _jmp_addr_0x00484a6b                     // 0x00484a2d    eb3c
_jmp_addr_0x00484a2f:    {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00484a2f    d81d98a38a00
                         fnstsw             ax                                       // 0x00484a35    dfe0
                         test               ah, 0x41                                 // 0x00484a37    f6c441
                         {disp8} jne        _jmp_addr_0x00484a49                     // 0x00484a3a    750d
                         mov                eax, 0x00000001                          // 0x00484a3c    b801000000
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00484a41    89862c520000
                         {disp8} jmp        _jmp_addr_0x00484a6b                     // 0x00484a47    eb22
_jmp_addr_0x00484a49:    xor.s              eax, eax                                 // 0x00484a49    33c0
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00484a4b    89862c520000
                         {disp8} jmp        _jmp_addr_0x00484a6b                     // 0x00484a51    eb18
_jmp_addr_0x00484a53:    {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00484a53    8b442414
                         fstp               st(0)                                    // 0x00484a57    ddd8
                         push               eax                                      // 0x00484a59    50
                         mov.s              ecx, esi                                 // 0x00484a5a    8bce
                         call               _jmp_addr_0x0048b790                     // 0x00484a5c    e82f6d0000
                         {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000000 // 0x00484a61    c7868c51000000000000
_jmp_addr_0x00484a6b:    {disp8} mov        al, byte ptr [esp + 0x18]                // 0x00484a6b    8a442418
                         test               al, al                                   // 0x00484a6f    84c0
                         {disp8} je         _jmp_addr_0x00484a93                     // 0x00484a71    7420
                         {disp32} mov       dword ptr [esi + 0x00005190], 0x00000002 // 0x00484a73    c7869051000002000000
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x00484a7d    c786d047000000000000
                         mov                eax, 0x00000001                          // 0x00484a87    b801000000
                         pop                esi                                      // 0x00484a8c    5e
                         add                esp, 0x0c                                // 0x00484a8d    83c40c
                         ret                0x0008                                   // 0x00484a90    c20800
_jmp_addr_0x00484a93:    push               0x8                                      // 0x00484a93    6a08
                         mov.s              ecx, esi                                 // 0x00484a95    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00484a97    e824040000
                         mov                eax, 0x00000001                          // 0x00484a9c    b801000000
                         pop                esi                                      // 0x00484aa1    5e
                         add                esp, 0x0c                                // 0x00484aa2    83c40c
                         ret                0x0008                                   // 0x00484aa5    c20800
_jmp_addr_0x00484aa8:    xor.s              eax, eax                                 // 0x00484aa8    33c0
                         pop                esi                                      // 0x00484aaa    5e
                         add                esp, 0x0c                                // 0x00484aab    83c40c
                         ret                0x0008                                   // 0x00484aae    c20800
                         nop                                                         // 0x00484ab1    90
                         nop                                                         // 0x00484ab2    90
                         nop                                                         // 0x00484ab3    90
                         nop                                                         // 0x00484ab4    90
                         nop                                                         // 0x00484ab5    90
                         nop                                                         // 0x00484ab6    90
                         nop                                                         // 0x00484ab7    90
                         nop                                                         // 0x00484ab8    90
                         nop                                                         // 0x00484ab9    90
                         nop                                                         // 0x00484aba    90
                         nop                                                         // 0x00484abb    90
                         nop                                                         // 0x00484abc    90
                         nop                                                         // 0x00484abd    90
                         nop                                                         // 0x00484abe    90
                         nop                                                         // 0x00484abf    90
_jmp_addr_0x00484ac0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00484ac0    8b442404
                         mov                edx, dword ptr [eax]                     // 0x00484ac4    8b10
                         add                ecx, 0x00004a74                          // 0x00484ac6    81c1744a0000
                         mov                dword ptr [ecx], edx                     // 0x00484acc    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]              // 0x00484ace    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx              // 0x00484ad1    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]              // 0x00484ad4    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax              // 0x00484ad7    894108
                         ret                0x0004                                   // 0x00484ada    c20400
                         nop                                                         // 0x00484add    90
                         nop                                                         // 0x00484ade    90
                         nop                                                         // 0x00484adf    90
_jmp_addr_0x00484ae0:    cmp                dword ptr [ecx + 0x00004994], 0x08       // 0x00484ae0    83b99449000008
                         {disp8} jne        _jmp_addr_0x00484af3                     // 0x00484ae7    750a
                         {disp32} mov       dword ptr [ecx + 0x00004994], 0x00000009 // 0x00484ae9    c7819449000009000000
_jmp_addr_0x00484af3:    ret                                                         // 0x00484af3    c3
                         nop                                                         // 0x00484af4    90
                         nop                                                         // 0x00484af5    90
                         nop                                                         // 0x00484af6    90
                         nop                                                         // 0x00484af7    90
                         nop                                                         // 0x00484af8    90
                         nop                                                         // 0x00484af9    90
                         nop                                                         // 0x00484afa    90
                         nop                                                         // 0x00484afb    90
                         nop                                                         // 0x00484afc    90
                         nop                                                         // 0x00484afd    90
                         nop                                                         // 0x00484afe    90
                         nop                                                         // 0x00484aff    90
_jmp_addr_0x00484b00:    push               esi                                      // 0x00484b00    56
                         mov.s              esi, ecx                                 // 0x00484b01    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]        // 0x00484b03    8b86d0480000
                         test               eax, eax                                 // 0x00484b09    85c0
                         {disp8} je         _jmp_addr_0x00484b2b                     // 0x00484b0b    741e
                         {disp32} mov       ecx, dword ptr [esi + 0x00005230]        // 0x00484b0d    8b8e30520000
                         xor.s              eax, eax                                 // 0x00484b13    33c0
                         test               ecx, ecx                                 // 0x00484b15    85c9
                         sete               al                                       // 0x00484b17    0f94c0
                         mov.s              ecx, esi                                 // 0x00484b1a    8bce
                         push               eax                                      // 0x00484b1c    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00484b1d    8b44240c
                         push               eax                                      // 0x00484b21    50
                         call               _jmp_addr_0x00484b80                     // 0x00484b22    e859000000
                         pop                esi                                      // 0x00484b27    5e
                         ret                0x0004                                   // 0x00484b28    c20400
_jmp_addr_0x00484b2b:    {disp32} mov       eax, dword ptr [esi + 0x00004834]        // 0x00484b2b    8b8634480000
                         test               eax, eax                                 // 0x00484b31    85c0
                         {disp8} je         _jmp_addr_0x00484b5a                     // 0x00484b33    7425
                         push               0x00000d0a                               // 0x00484b35    680a0d0000
                         push               0x009d1094                               // 0x00484b3a    6894109d00
                         push               0x2                                      // 0x00484b3f    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                  // 0x00484b41    e8ca992500
                         add                esp, 0x0c                                // 0x00484b46    83c40c
                         push               eax                                      // 0x00484b49    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00484b4a    8b44240c
                         push               eax                                      // 0x00484b4e    50
                         mov.s              ecx, esi                                 // 0x00484b4f    8bce
                         call               _jmp_addr_0x00484b80                     // 0x00484b51    e82a000000
                         pop                esi                                      // 0x00484b56    5e
                         ret                0x0004                                   // 0x00484b57    c20400
_jmp_addr_0x00484b5a:    push               0x2                                      // 0x00484b5a    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00484b5c    e80f9a2500
                         add                esp, 0x04                                // 0x00484b61    83c404
                         push               eax                                      // 0x00484b64    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00484b65    8b44240c
                         push               eax                                      // 0x00484b69    50
                         mov.s              ecx, esi                                 // 0x00484b6a    8bce
                         call               _jmp_addr_0x00484b80                     // 0x00484b6c    e80f000000
                         pop                esi                                      // 0x00484b71    5e
                         ret                0x0004                                   // 0x00484b72    c20400
                         nop                                                         // 0x00484b75    90
                         nop                                                         // 0x00484b76    90
                         nop                                                         // 0x00484b77    90
                         nop                                                         // 0x00484b78    90
                         nop                                                         // 0x00484b79    90
                         nop                                                         // 0x00484b7a    90
                         nop                                                         // 0x00484b7b    90
                         nop                                                         // 0x00484b7c    90
                         nop                                                         // 0x00484b7d    90
                         nop                                                         // 0x00484b7e    90
                         nop                                                         // 0x00484b7f    90
_jmp_addr_0x00484b80:    push               esi                                      // 0x00484b80    56
                         push               edi                                      // 0x00484b81    57
                         mov.s              esi, ecx                                 // 0x00484b82    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00484b84    e847f7ffff
                         test               eax, eax                                 // 0x00484b89    85c0
                         {disp8} jne        _jmp_addr_0x00484bc2                     // 0x00484b8b    7535
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00484b8d    8b7c240c
                         push               0x1                                      // 0x00484b91    6a01
                         push               edi                                      // 0x00484b93    57
                         mov.s              ecx, esi                                 // 0x00484b94    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484b96    e8b54a1900
                         test               eax, eax                                 // 0x00484b9b    85c0
                         {disp8} je         _jmp_addr_0x00484bc2                     // 0x00484b9d    7423
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x00484b9f    8b442410
                         push               0xa                                      // 0x00484ba3    6a0a
                         mov.s              ecx, esi                                 // 0x00484ba5    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi        // 0x00484ba7    89bea0490000
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00484bad    89862c520000
                         call               _jmp_addr_0x00484ec0                     // 0x00484bb3    e808030000
                         pop                edi                                      // 0x00484bb8    5f
                         mov                eax, 0x00000001                          // 0x00484bb9    b801000000
                         pop                esi                                      // 0x00484bbe    5e
                         ret                0x0008                                   // 0x00484bbf    c20800
_jmp_addr_0x00484bc2:    pop                edi                                      // 0x00484bc2    5f
                         xor.s              eax, eax                                 // 0x00484bc3    33c0
                         pop                esi                                      // 0x00484bc5    5e
                         ret                0x0008                                   // 0x00484bc6    c20800
                         nop                                                         // 0x00484bc9    90
                         nop                                                         // 0x00484bca    90
                         nop                                                         // 0x00484bcb    90
                         nop                                                         // 0x00484bcc    90
                         nop                                                         // 0x00484bcd    90
                         nop                                                         // 0x00484bce    90
                         nop                                                         // 0x00484bcf    90
                         push               esi                                      // 0x00484bd0    56
                         mov.s              esi, ecx                                 // 0x00484bd1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]        // 0x00484bd3    8b8634480000
                         test               eax, eax                                 // 0x00484bd9    85c0
                         {disp8} je         _jmp_addr_0x00484c02                     // 0x00484bdb    7425
                         push               0x00000d21                               // 0x00484bdd    68210d0000
                         push               0x009d1094                               // 0x00484be2    6894109d00
                         push               0x2                                      // 0x00484be7    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                  // 0x00484be9    e822992500
                         add                esp, 0x0c                                // 0x00484bee    83c40c
                         push               eax                                      // 0x00484bf1    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00484bf2    8b44240c
                         push               eax                                      // 0x00484bf6    50
                         mov.s              ecx, esi                                 // 0x00484bf7    8bce
                         call               _jmp_addr_0x00484c20                     // 0x00484bf9    e822000000
                         pop                esi                                      // 0x00484bfe    5e
                         ret                0x0004                                   // 0x00484bff    c20400
_jmp_addr_0x00484c02:    push               0x2                                      // 0x00484c02    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00484c04    e867992500
                         add                esp, 0x04                                // 0x00484c09    83c404
                         push               eax                                      // 0x00484c0c    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00484c0d    8b44240c
                         push               eax                                      // 0x00484c11    50
                         mov.s              ecx, esi                                 // 0x00484c12    8bce
                         call               _jmp_addr_0x00484c20                     // 0x00484c14    e807000000
                         pop                esi                                      // 0x00484c19    5e
                         ret                0x0004                                   // 0x00484c1a    c20400
                         nop                                                         // 0x00484c1d    90
                         nop                                                         // 0x00484c1e    90
                         nop                                                         // 0x00484c1f    90
_jmp_addr_0x00484c20:    push               esi                                      // 0x00484c20    56
                         push               edi                                      // 0x00484c21    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00484c22    8b7c240c
                         push               0x1                                      // 0x00484c26    6a01
                         mov.s              esi, ecx                                 // 0x00484c28    8bf1
                         push               edi                                      // 0x00484c2a    57
                         call               @GetAnim__9MorphableFll@16               // 0x00484c2b    e8204a1900
                         test               eax, eax                                 // 0x00484c30    85c0
                         {disp8} jne        _jmp_addr_0x00484c39                     // 0x00484c32    7505
                         pop                edi                                      // 0x00484c34    5f
                         pop                esi                                      // 0x00484c35    5e
                         ret                0x0008                                   // 0x00484c36    c20800
_jmp_addr_0x00484c39:    {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x00484c39    8b442410
                         push               0xa                                      // 0x00484c3d    6a0a
                         mov.s              ecx, esi                                 // 0x00484c3f    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi        // 0x00484c41    89bea0490000
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00484c47    89862c520000
                         call               _jmp_addr_0x00484ec0                     // 0x00484c4d    e86e020000
                         pop                edi                                      // 0x00484c52    5f
                         mov                eax, 0x00000001                          // 0x00484c53    b801000000
                         pop                esi                                      // 0x00484c58    5e
                         ret                0x0008                                   // 0x00484c59    c20800
                         nop                                                         // 0x00484c5c    90
                         nop                                                         // 0x00484c5d    90
                         nop                                                         // 0x00484c5e    90
                         nop                                                         // 0x00484c5f    90
_jmp_addr_0x00484c60:    push               esi                                      // 0x00484c60    56
                         mov.s              esi, ecx                                 // 0x00484c61    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]        // 0x00484c63    8b86a0490000
                         push               0x0                                      // 0x00484c69    6a00
                         push               eax                                      // 0x00484c6b    50
                         call               @GetAnim__9MorphableFll@16               // 0x00484c6c    e8df491900
                         {disp32} fild      dword ptr [esi + 0x000047d0]             // 0x00484c71    db86d0470000
                         pop                esi                                      // 0x00484c77    5e
                         fidiv              dword ptr [eax]                          // 0x00484c78    da30
                         ret                                                         // 0x00484c7a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x00484c7b    e8f9cbf7ff
_jmp_addr_0x00484c80:    push               esi                                      // 0x00484c80    56
                         mov.s              esi, ecx                                 // 0x00484c81    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]        // 0x00484c83    8b86d0480000
                         test               eax, eax                                 // 0x00484c89    85c0
                         push               edi                                      // 0x00484c8b    57
                         {disp8} je         _jmp_addr_0x00484cce                     // 0x00484c8c    7440
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00484c8e    e83df6ffff
                         test               eax, eax                                 // 0x00484c93    85c0
                         {disp8} jne        _jmp_addr_0x00484cce                     // 0x00484c95    7537
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00484c97    8b7c240c
                         push               0x1                                      // 0x00484c9b    6a01
                         push               edi                                      // 0x00484c9d    57
                         mov.s              ecx, esi                                 // 0x00484c9e    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484ca0    e8ab491900
                         test               eax, eax                                 // 0x00484ca5    85c0
                         {disp8} je         _jmp_addr_0x00484cce                     // 0x00484ca7    7425
                         push               0xb                                      // 0x00484ca9    6a0b
                         mov.s              ecx, esi                                 // 0x00484cab    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi        // 0x00484cad    89bea0490000
                         call               _jmp_addr_0x00484ec0                     // 0x00484cb3    e808020000
                         {disp32} mov       eax, dword ptr [esi + 0x00005230]        // 0x00484cb8    8b8630520000
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00484cbe    89862c520000
                         pop                edi                                      // 0x00484cc4    5f
                         mov                eax, 0x00000001                          // 0x00484cc5    b801000000
                         pop                esi                                      // 0x00484cca    5e
                         ret                0x0004                                   // 0x00484ccb    c20400
_jmp_addr_0x00484cce:    pop                edi                                      // 0x00484cce    5f
                         xor.s              eax, eax                                 // 0x00484ccf    33c0
                         pop                esi                                      // 0x00484cd1    5e
                         ret                0x0004                                   // 0x00484cd2    c20400
                         nop                                                         // 0x00484cd5    90
                         nop                                                         // 0x00484cd6    90
                         nop                                                         // 0x00484cd7    90
                         nop                                                         // 0x00484cd8    90
                         nop                                                         // 0x00484cd9    90
                         nop                                                         // 0x00484cda    90
                         nop                                                         // 0x00484cdb    90
                         nop                                                         // 0x00484cdc    90
                         nop                                                         // 0x00484cdd    90
                         nop                                                         // 0x00484cde    90
                         nop                                                         // 0x00484cdf    90
_jmp_addr_0x00484ce0:    push               esi                                      // 0x00484ce0    56
                         mov.s              esi, ecx                                 // 0x00484ce1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]        // 0x00484ce3    8b8634480000
                         test               eax, eax                                 // 0x00484ce9    85c0
                         {disp8} je         _jmp_addr_0x00484d12                     // 0x00484ceb    7425
                         push               0x00000d4b                               // 0x00484ced    684b0d0000
                         push               0x009d1094                               // 0x00484cf2    6894109d00
                         push               0x2                                      // 0x00484cf7    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                  // 0x00484cf9    e812982500
                         add                esp, 0x0c                                // 0x00484cfe    83c40c
                         push               eax                                      // 0x00484d01    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00484d02    8b44240c
                         push               eax                                      // 0x00484d06    50
                         mov.s              ecx, esi                                 // 0x00484d07    8bce
                         call               _jmp_addr_0x00484d30                     // 0x00484d09    e822000000
                         pop                esi                                      // 0x00484d0e    5e
                         ret                0x0004                                   // 0x00484d0f    c20400
_jmp_addr_0x00484d12:    push               0x2                                      // 0x00484d12    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00484d14    e857982500
                         add                esp, 0x04                                // 0x00484d19    83c404
                         push               eax                                      // 0x00484d1c    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00484d1d    8b44240c
                         push               eax                                      // 0x00484d21    50
                         mov.s              ecx, esi                                 // 0x00484d22    8bce
                         call               _jmp_addr_0x00484d30                     // 0x00484d24    e807000000
                         pop                esi                                      // 0x00484d29    5e
                         ret                0x0004                                   // 0x00484d2a    c20400
                         nop                                                         // 0x00484d2d    90
                         nop                                                         // 0x00484d2e    90
                         nop                                                         // 0x00484d2f    90
_jmp_addr_0x00484d30:    sub                esp, 0x08                                // 0x00484d30    83ec08
                         push               ebp                                      // 0x00484d33    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]              // 0x00484d34    8b6c2410
                         push               esi                                      // 0x00484d38    56
                         push               0x1                                      // 0x00484d39    6a01
                         mov.s              esi, ecx                                 // 0x00484d3b    8bf1
                         push               ebp                                      // 0x00484d3d    55
                         call               @GetAnim__9MorphableFll@16               // 0x00484d3e    e80d491900
                         test               eax, eax                                 // 0x00484d43    85c0
                         {disp32} je        _jmp_addr_0x00484deb                     // 0x00484d45    0f84a0000000
                         mov.s              ecx, esi                                 // 0x00484d4b    8bce
                         call               _jmp_addr_0x00484e00                     // 0x00484d4d    e8ae000000
                         test               eax, eax                                 // 0x00484d52    85c0
                         {disp32} jne       _jmp_addr_0x00484deb                     // 0x00484d54    0f8591000000
                         mov.s              ecx, esi                                 // 0x00484d5a    8bce
                         call               _jmp_addr_0x00484e10                     // 0x00484d5c    e8af000000
                         test               eax, eax                                 // 0x00484d61    85c0
                         {disp32} jne       _jmp_addr_0x00484deb                     // 0x00484d63    0f8582000000
                         {disp8} fld        dword ptr [esi + 0x78]                   // 0x00484d69    d94678
                         push               edi                                      // 0x00484d6c    57
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00484d6d    d95c240c
                         {disp32} fld       dword ptr [esi + 0x00000080]             // 0x00484d71    d98680000000
                         mov.s              ecx, esi                                 // 0x00484d77    8bce
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00484d79    d95c2410
                         call               _jmp_addr_0x00480a60                     // 0x00484d7d    e8debcffff
                         push               ecx                                      // 0x00484d82    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x00484d83    8b8e98510000
                         fstp               dword ptr [esp]                          // 0x00484d89    d91c24
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x00484d8c    8d442410
                         push               eax                                      // 0x00484d90    50
                         call               _jmp_addr_0x00863b00                     // 0x00484d91    e86aed3d00
                         {disp32} mov       edi, dword ptr [esi + 0x00005220]        // 0x00484d96    8bbe20520000
                         test               edi, edi                                 // 0x00484d9c    85ff
                         {disp32} mov       dword ptr [esi + 0x00005190], 0x00000000 // 0x00484d9e    c7869051000000000000
                         {disp8} je         _jmp_addr_0x00484dc4                     // 0x00484da8    741a
                         mov.s              ecx, edi                                 // 0x00484daa    8bcf
                         call               _jmp_addr_0x0085e490                     // 0x00484dac    e8df963d00
                         push               edi                                      // 0x00484db1    57
                         call               ??3@YAXPAX@Z                             // 0x00484db2    e8e1a03200
                         add                esp, 0x04                                // 0x00484db7    83c404
                         {disp32} mov       dword ptr [esi + 0x00005220], 0x00000000 // 0x00484dba    c7862052000000000000
_jmp_addr_0x00484dc4:    {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00484dc4    8b4c241c
                         {disp32} mov       dword ptr [esi + 0x0000522c], ecx        // 0x00484dc8    898e2c520000
                         push               0x1e                                     // 0x00484dce    6a1e
                         mov.s              ecx, esi                                 // 0x00484dd0    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], ebp        // 0x00484dd2    89aea0490000
                         call               _jmp_addr_0x00484ec0                     // 0x00484dd8    e8e3000000
                         pop                edi                                      // 0x00484ddd    5f
                         pop                esi                                      // 0x00484dde    5e
                         mov                eax, 0x00000001                          // 0x00484ddf    b801000000
                         pop                ebp                                      // 0x00484de4    5d
                         add                esp, 0x08                                // 0x00484de5    83c408
                         ret                0x0008                                   // 0x00484de8    c20800
_jmp_addr_0x00484deb:    pop                esi                                      // 0x00484deb    5e
                         xor.s              eax, eax                                 // 0x00484dec    33c0
                         pop                ebp                                      // 0x00484dee    5d
                         add                esp, 0x08                                // 0x00484def    83c408
                         ret                0x0008                                   // 0x00484df2    c20800
                         nop                                                         // 0x00484df5    90
                         nop                                                         // 0x00484df6    90
                         nop                                                         // 0x00484df7    90
                         nop                                                         // 0x00484df8    90
                         nop                                                         // 0x00484df9    90
                         nop                                                         // 0x00484dfa    90
                         nop                                                         // 0x00484dfb    90
                         nop                                                         // 0x00484dfc    90
                         nop                                                         // 0x00484dfd    90
                         nop                                                         // 0x00484dfe    90
                         nop                                                         // 0x00484dff    90
_jmp_addr_0x00484e00:    {disp32} mov       edx, dword ptr [ecx + 0x00004994]        // 0x00484e00    8b9194490000
                         xor.s              eax, eax                                 // 0x00484e06    33c0
                         cmp                edx, 0x1e                                // 0x00484e08    83fa1e
                         sete               al                                       // 0x00484e0b    0f94c0
                         ret                                                         // 0x00484e0e    c3
                         nop                                                         // 0x00484e0f    90
_jmp_addr_0x00484e10:    {disp32} mov       edx, dword ptr [ecx + 0x00004994]        // 0x00484e10    8b9194490000
                         xor.s              eax, eax                                 // 0x00484e16    33c0
                         cmp                edx, 0x24                                // 0x00484e18    83fa24
                         sete               al                                       // 0x00484e1b    0f94c0
                         ret                                                         // 0x00484e1e    c3
                         nop                                                         // 0x00484e1f    90
_jmp_addr_0x00484e20:    push               esi                                      // 0x00484e20    56
                         mov.s              esi, ecx                                 // 0x00484e21    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]        // 0x00484e23    8b8694490000
                         cmp                eax, 0x1e                                // 0x00484e29    83f81e
                         {disp8} je         _jmp_addr_0x00484e37                     // 0x00484e2c    7409
                         cmp                eax, 0x24                                // 0x00484e2e    83f824
                         {disp8} je         _jmp_addr_0x00484e37                     // 0x00484e31    7404
                         xor.s              eax, eax                                 // 0x00484e33    33c0
                         pop                esi                                      // 0x00484e35    5e
                         ret                                                         // 0x00484e36    c3
_jmp_addr_0x00484e37:    push               0x1                                      // 0x00484e37    6a01
                         push               0x6b                                     // 0x00484e39    6a6b
                         mov.s              ecx, esi                                 // 0x00484e3b    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], 0x0000006b // 0x00484e3d    c786a04900006b000000
                         call               @GetAnim__9MorphableFll@16               // 0x00484e47    e804481900
                         push               0x1f                                     // 0x00484e4c    6a1f
                         mov.s              ecx, esi                                 // 0x00484e4e    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00484e50    e86b000000
                         mov                eax, 0x00000001                          // 0x00484e55    b801000000
                         pop                esi                                      // 0x00484e5a    5e
                         ret                                                         // 0x00484e5b    c3
                         nop                                                         // 0x00484e5c    90
                         nop                                                         // 0x00484e5d    90
                         nop                                                         // 0x00484e5e    90
                         nop                                                         // 0x00484e5f    90
_jmp_addr_0x00484e60:    push               esi                                      // 0x00484e60    56
                         push               edi                                      // 0x00484e61    57
                         mov.s              esi, ecx                                 // 0x00484e62    8bf1
                         call               _jmp_addr_0x004ee2b0                     // 0x00484e64    e847940600
                         mov.s              ecx, esi                                 // 0x00484e69    8bce
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00484e6b    e860f4ffff
                         test               eax, eax                                 // 0x00484e70    85c0
                         {disp8} jne        _jmp_addr_0x00484eb4                     // 0x00484e72    7540
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00484e74    8b7c240c
                         push               eax                                      // 0x00484e78    50
                         push               edi                                      // 0x00484e79    57
                         mov.s              ecx, esi                                 // 0x00484e7a    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484e7c    e8cf471900
                         test               eax, eax                                 // 0x00484e81    85c0
                         {disp8} je         _jmp_addr_0x00484eb4                     // 0x00484e83    742f
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]        // 0x00484e85    8b86d0480000
                         test               eax, eax                                 // 0x00484e8b    85c0
                         {disp8} je         _jmp_addr_0x00484eb4                     // 0x00484e8d    7425
                         push               0xc                                      // 0x00484e8f    6a0c
                         mov.s              ecx, esi                                 // 0x00484e91    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi        // 0x00484e93    89bea0490000
                         call               _jmp_addr_0x00484ec0                     // 0x00484e99    e822000000
                         {disp32} mov       eax, dword ptr [esi + 0x00005230]        // 0x00484e9e    8b8630520000
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00484ea4    89862c520000
                         pop                edi                                      // 0x00484eaa    5f
                         mov                eax, 0x00000001                          // 0x00484eab    b801000000
                         pop                esi                                      // 0x00484eb0    5e
                         ret                0x0004                                   // 0x00484eb1    c20400
_jmp_addr_0x00484eb4:    pop                edi                                      // 0x00484eb4    5f
                         xor.s              eax, eax                                 // 0x00484eb5    33c0
                         pop                esi                                      // 0x00484eb7    5e
                         ret                0x0004                                   // 0x00484eb8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x00484ebb    e8b9c9f7ff
_jmp_addr_0x00484ec0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00484ec0    8b442404
                         cmp                eax, 0x25                                // 0x00484ec4    83f825
                         push               esi                                      // 0x00484ec7    56
                         mov.s              esi, ecx                                 // 0x00484ec8    8bf1
                         push               edi                                      // 0x00484eca    57
                         {disp32} mov       dword ptr [esi + 0x00004994], eax        // 0x00484ecb    898694490000
                         {disp32} ja        _jmp_addr_0x00485103                     // 0x00484ed1    0f872c020000
                         jmp                dword ptr [eax*4 + 0x485108]             // 0x00484ed7    ff248508514800
                         {disp32} lea       eax, dword ptr [esi + 0x000047e0]        // 0x00484ede    8d86e0470000
                         mov                ecx, 0x00000004                          // 0x00484ee4    b904000000
                         xor.s              edi, edi                                 // 0x00484ee9    33ff
_jmp_addr_0x00484eeb:    {disp8} mov        dword ptr [eax + -0x20], edi             // 0x00484eeb    8978e0
                         mov                dword ptr [eax], edi                     // 0x00484eee    8938
                         add                eax, 0x04                                // 0x00484ef0    83c004
                         dec                ecx                                      // 0x00484ef3    49
                         {disp8} jne        _jmp_addr_0x00484eeb                     // 0x00484ef4    75f5
                         cmp                dword ptr [esi + 0x0000523c], edi        // 0x00484ef6    39be3c520000
                         {disp32} mov       dword ptr [esi + 0x00005730], edi        // 0x00484efc    89be30570000
                         {disp32} mov       dword ptr [esi + 0x00004838], edi        // 0x00484f02    89be38480000
                         {disp8} je         _jmp_addr_0x00484f1e                     // 0x00484f08    7414
                         {disp32} mov       eax, dword ptr [esi + 0x00005240]        // 0x00484f0a    8b8640520000
                         push               eax                                      // 0x00484f10    50
                         mov.s              ecx, esi                                 // 0x00484f11    8bce
                         {disp32} mov       dword ptr [esi + 0x0000523c], edi        // 0x00484f13    89be3c520000
                         call               _jmp_addr_0x00481160                     // 0x00484f19    e842c2ffff
_jmp_addr_0x00484f1e:    mov.s              ecx, esi                                 // 0x00484f1e    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi        // 0x00484f20    89bea0490000
                         call               _jmp_addr_0x0048d930                     // 0x00484f26    e8058a0000
                         pop                edi                                      // 0x00484f2b    5f
                         pop                esi                                      // 0x00484f2c    5e
                         ret                0x0004                                   // 0x00484f2d    c20400
                         pop                edi                                      // 0x00484f30    5f
                         {disp32} mov       dword ptr [esi + 0x000047d4], 0x00000000 // 0x00484f31    c786d447000000000000
                         pop                esi                                      // 0x00484f3b    5e
                         ret                0x0004                                   // 0x00484f3c    c20400
                         xor.s              edi, edi                                 // 0x00484f3f    33ff
_jmp_addr_0x00484f41:    push               0x00000dbc                               // 0x00484f41    68bc0d0000
                         push               0x009d1094                               // 0x00484f46    6894109d00
                         push               0x7                                      // 0x00484f4b    6a07
                         call               ?GameRand@GRand@@SAHJ@Z                  // 0x00484f4d    e8be952500
                         add                esp, 0x0c                                // 0x00484f52    83c40c
                         add                eax, 0x00000093                          // 0x00484f55    0593000000
                         push               edi                                      // 0x00484f5a    57
                         push               eax                                      // 0x00484f5b    50
                         mov.s              ecx, esi                                 // 0x00484f5c    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], eax        // 0x00484f5e    8986a0490000
                         call               @GetAnim__9MorphableFll@16               // 0x00484f64    e8e7461900
                         test               eax, eax                                 // 0x00484f69    85c0
                         {disp8} je         _jmp_addr_0x00484f41                     // 0x00484f6b    74d4
                         {disp32} mov       dword ptr [esi + 0x000047d0], edi        // 0x00484f6d    89bed0470000
                         pop                edi                                      // 0x00484f73    5f
                         pop                esi                                      // 0x00484f74    5e
                         ret                0x0004                                   // 0x00484f75    c20400
                         push               0x1                                      // 0x00484f78    6a01
                         push               0x0000008e                               // 0x00484f7a    688e000000
                         mov.s              ecx, esi                                 // 0x00484f7f    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484f81    e8ca461900
                         push               0x1                                      // 0x00484f86    6a01
                         push               0x0000008f                               // 0x00484f88    688f000000
                         {disp8} jmp        _jmp_addr_0x00484fa5                     // 0x00484f8d    eb16
                         mov.s              ecx, esi                                 // 0x00484f8f    8bce
                         call               _jmp_addr_0x0048d8e0                     // 0x00484f91    e84a890000
                         push               0x1                                      // 0x00484f96    6a01
                         push               0x6e                                     // 0x00484f98    6a6e
                         mov.s              ecx, esi                                 // 0x00484f9a    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484f9c    e8af461900
                         push               0x1                                      // 0x00484fa1    6a01
                         push               0x6f                                     // 0x00484fa3    6a6f
_jmp_addr_0x00484fa5:    mov.s              ecx, esi                                 // 0x00484fa5    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00484fa7    e8a4461900
                         xor.s              edi, edi                                 // 0x00484fac    33ff
                         {disp32} mov       dword ptr [esi + 0x000052a4], edi        // 0x00484fae    89bea4520000
                         {disp32} mov       dword ptr [esi + 0x000047d0], edi        // 0x00484fb4    89bed0470000
                         {disp32} mov       dword ptr [esi + 0x00005238], edi        // 0x00484fba    89be38520000
                         pop                edi                                      // 0x00484fc0    5f
                         pop                esi                                      // 0x00484fc1    5e
                         ret                0x0004                                   // 0x00484fc2    c20400
                         mov.s              ecx, esi                                 // 0x00484fc5    8bce
                         call               _jmp_addr_0x0048d8e0                     // 0x00484fc7    e814890000
                         xor.s              edi, edi                                 // 0x00484fcc    33ff
                         {disp32} mov       dword ptr [esi + 0x000052a4], edi        // 0x00484fce    89bea4520000
                         {disp32} mov       dword ptr [esi + 0x000047d0], edi        // 0x00484fd4    89bed0470000
                         {disp32} mov       dword ptr [esi + 0x00005238], edi        // 0x00484fda    89be38520000
                         pop                edi                                      // 0x00484fe0    5f
                         pop                esi                                      // 0x00484fe1    5e
                         ret                0x0004                                   // 0x00484fe2    c20400
                         cmp                dword ptr [esi + 0x000049a0], 0x1d       // 0x00484fe5    83bea04900001d
                         {disp8} jne        _jmp_addr_0x00484ffc                     // 0x00484fec    750e
                         mov.s              ecx, esi                                 // 0x00484fee    8bce
                         call               _jmp_addr_0x0048d7b0                     // 0x00484ff0    e8bb870000
                         mov.s              ecx, esi                                 // 0x00484ff5    8bce
                         call               _jmp_addr_0x0048d8e0                     // 0x00484ff7    e8e4880000
_jmp_addr_0x00484ffc:    xor.s              edi, edi                                 // 0x00484ffc    33ff
                         {disp32} mov       dword ptr [esi + 0x000047d0], edi        // 0x00484ffe    89bed0470000
                         {disp32} mov       dword ptr [esi + 0x00005238], edi        // 0x00485004    89be38520000
                         pop                edi                                      // 0x0048500a    5f
                         pop                esi                                      // 0x0048500b    5e
                         ret                0x0004                                   // 0x0048500c    c20400
                         push               0x1                                      // 0x0048500f    6a01
                         push               0x0000008f                               // 0x00485011    688f000000
                         {disp8} jmp        _jmp_addr_0x0048502b                     // 0x00485016    eb13
                         push               0x1                                      // 0x00485018    6a01
                         push               0x00000090                               // 0x0048501a    6890000000
                         {disp8} jmp        _jmp_addr_0x0048502b                     // 0x0048501f    eb0a
                         push               0x1                                      // 0x00485021    6a01
                         push               0x6f                                     // 0x00485023    6a6f
                         {disp8} jmp        _jmp_addr_0x0048502b                     // 0x00485025    eb04
                         push               0x1                                      // 0x00485027    6a01
                         push               0x70                                     // 0x00485029    6a70
_jmp_addr_0x0048502b:    mov.s              ecx, esi                                 // 0x0048502b    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x0048502d    e81e461900
                         pop                edi                                      // 0x00485032    5f
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x00485033    c786d047000000000000
                         pop                esi                                      // 0x0048503d    5e
                         ret                0x0004                                   // 0x0048503e    c20400
                         cmp                dword ptr [esi + 0x000049a0], 0x1d       // 0x00485041    83bea04900001d
                         {disp8} jne        _jmp_addr_0x00485062                     // 0x00485048    7518
                         {disp32} mov       dword ptr [esi + 0x00005460], 0x00000002 // 0x0048504a    c7866054000002000000
                         mov.s              ecx, esi                                 // 0x00485054    8bce
                         call               _jmp_addr_0x0048d7b0                     // 0x00485056    e855870000
                         mov.s              ecx, esi                                 // 0x0048505b    8bce
                         call               _jmp_addr_0x0048d8e0                     // 0x0048505d    e87e880000
_jmp_addr_0x00485062:    pop                edi                                      // 0x00485062    5f
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x00485063    c786d047000000000000
                         pop                esi                                      // 0x0048506d    5e
                         ret                0x0004                                   // 0x0048506e    c20400
                         cmp                dword ptr [esi + 0x000049a0], 0x1d       // 0x00485071    83bea04900001d
                         {disp8} jne        _jmp_addr_0x0048508b                     // 0x00485078    7511
                         mov.s              ecx, esi                                 // 0x0048507a    8bce
                         {disp32} mov       dword ptr [esi + 0x00005460], 0x00000001 // 0x0048507c    c7866054000001000000
                         call               _jmp_addr_0x0048d930                     // 0x00485086    e8a5880000
_jmp_addr_0x0048508b:    pop                edi                                      // 0x0048508b    5f
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x0048508c    c786d047000000000000
                         pop                esi                                      // 0x00485096    5e
                         ret                0x0004                                   // 0x00485097    c20400
                         pop                edi                                      // 0x0048509a    5f
                         {disp32} mov       dword ptr [esi + 0x00005460], 0x00000002 // 0x0048509b    c7866054000002000000
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x004850a5    c786d047000000000000
                         pop                esi                                      // 0x004850af    5e
                         ret                0x0004                                   // 0x004850b0    c20400
                         xor.s              edi, edi                                 // 0x004850b3    33ff
                         mov.s              ecx, esi                                 // 0x004850b5    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi        // 0x004850b7    89bea0490000
                         {disp32} mov       dword ptr [esi + 0x000047d0], edi        // 0x004850bd    89bed0470000
                         call               _jmp_addr_0x0048d930                     // 0x004850c3    e868880000
                         pop                edi                                      // 0x004850c8    5f
                         pop                esi                                      // 0x004850c9    5e
                         ret                0x0004                                   // 0x004850ca    c20400
                         {disp32} mov       ecx, dword ptr [esi + 0x0000522c]        // 0x004850cd    8b8e2c520000
                         {disp32} mov       dword ptr [esi + 0x00005230], ecx        // 0x004850d3    898e30520000
                         {disp32} mov       dword ptr [esi + 0x00004998], 0x00000001 // 0x004850d9    c7869849000001000000
                         pop                edi                                      // 0x004850e3    5f
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x004850e4    c786d047000000000000
                         pop                esi                                      // 0x004850ee    5e
                         ret                0x0004                                   // 0x004850ef    c20400
                         mov.s              ecx, esi                                 // 0x004850f2    8bce
                         call               _jmp_addr_0x0048d930                     // 0x004850f4    e837880000
                         {disp32} mov       dword ptr [esi + 0x00005460], 0x00000001 // 0x004850f9    c7866054000001000000
_jmp_addr_0x00485103:    pop                edi                                      // 0x00485103    5f
                         pop                esi                                      // 0x00485104    5e
                         ret                0x0004                                   // 0x00485105    c20400

// Snippet: jmptbl, [0x00485108, 0x004851a0)
.byte 0xde, 0x4e, 0x48, 0x00      // 0x00485108
.byte 0x30, 0x4f, 0x48, 0x00      // 0x0048510c
.byte 0xe5, 0x4f, 0x48, 0x00      // 0x00485110
.byte 0x71, 0x50, 0x48, 0x00      // 0x00485114
.byte 0x41, 0x50, 0x48, 0x00      // 0x00485118
.byte 0xe5, 0x4f, 0x48, 0x00      // 0x0048511c
.byte 0x3f, 0x4f, 0x48, 0x00      // 0x00485120
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485124
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485128
.byte 0x03, 0x51, 0x48, 0x00      // 0x0048512c
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485130
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485134
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485138
.byte 0xe3, 0x50, 0x48, 0x00      // 0x0048513c
.byte 0xd9, 0x50, 0x48, 0x00      // 0x00485140
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485144
.byte 0xd9, 0x50, 0x48, 0x00      // 0x00485148
.byte 0xe3, 0x50, 0x48, 0x00      // 0x0048514c
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485150
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485154
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485158
.byte 0xcd, 0x50, 0x48, 0x00      // 0x0048515c
.byte 0xc5, 0x4f, 0x48, 0x00      // 0x00485160
.byte 0xb3, 0x50, 0x48, 0x00      // 0x00485164
.byte 0x5b, 0x50, 0x48, 0x00      // 0x00485168
.byte 0xe3, 0x50, 0x48, 0x00      // 0x0048516c
.byte 0x78, 0x4f, 0x48, 0x00      // 0x00485170
.byte 0x0f, 0x50, 0x48, 0x00      // 0x00485174
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485178
.byte 0x18, 0x50, 0x48, 0x00      // 0x0048517c
.byte 0x54, 0x50, 0x48, 0x00      // 0x00485180
.byte 0x9a, 0x50, 0x48, 0x00      // 0x00485184
.byte 0x8f, 0x4f, 0x48, 0x00      // 0x00485188
.byte 0x21, 0x50, 0x48, 0x00      // 0x0048518c
.byte 0x27, 0x50, 0x48, 0x00      // 0x00485190
.byte 0xe3, 0x50, 0x48, 0x00      // 0x00485194
.byte 0xf2, 0x50, 0x48, 0x00      // 0x00485198
.byte 0xe3, 0x50, 0x48, 0x00      // 0x0048519c

