.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x005198f0
.extern _jmp_addr_0x005feda0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _LHFileLength__FPcPUl
.extern _LHLoadData__FPcPvUlPUl
.extern _memmove
.extern ??2@YAPAXI@Z
.extern _time
.extern _jmp_addr_0x007faff0
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern _jmp_addr_0x00802550
.extern ?Create@LH3DMesh@@SAPAV1@PBX_N@Z
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x008190d0
.extern _jmp_addr_0x0081c090
.extern _jmp_addr_0x00822180
.extern _jmp_addr_0x00822190
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern _jmp_addr_0x00838af0
.extern _jmp_addr_0x00838eb0
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x00869670
.extern _jmp_addr_0x00869850
.extern ?SetDayNightTimes@LH3DSky@@SAXMMMM@Z
.extern _jmp_addr_0x00869fd0
.extern _jmp_addr_0x008786d0
.extern _jmp_addr_0x00878780
.extern _jmp_addr_0x00878c70

.globl _jmp_addr_0x0086a110
.globl _jmp_addr_0x0086a160
.globl ?Time2SkyType@LH3DSky@@QAEMM@Z
.globl _jmp_addr_0x0086a270
.globl _jmp_addr_0x0086a2c0
.globl _jmp_addr_0x0086a330
.globl _jmp_addr_0x0086a3b0
.globl _jmp_addr_0x0086a770
.globl _jmp_addr_0x0086a7f0
.globl _jmp_addr_0x0086b010
.globl _jmp_addr_0x0086bb60
.globl _jmp_addr_0x0086c220
.globl _jmp_addr_0x0086c2d0
.globl _jmp_addr_0x0086c560
.globl _jmp_addr_0x0086c7a0
.globl _jmp_addr_0x0086c960
.globl _jmp_addr_0x0086ca40
.globl _jmp_addr_0x0086cb80
.globl _jmp_addr_0x0086cba0
.globl _jmp_addr_0x0086cff0
.globl _jmp_addr_0x0086d060

.globl _globl_ct_0x0086d040

start_0x0086a110_0x0086d360:
// Snippet: asm, [0x0086a110, 0x0086d336)
_jmp_addr_0x0086a110:    {disp32} mov       eax, dword ptr [data_bytes + 0x5dc694]         // 0x0086a110    a19426fa00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc698]         // 0x0086a115    8b0d9826fa00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc69c]         // 0x0086a11b    8b159c26fa00
                         push               eax                                            // 0x0086a121    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6a0]         // 0x0086a122    a1a026fa00
                         push               ecx                                            // 0x0086a127    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2735bc]         // 0x0086a128    8b0dbc95c300
                         push               edx                                            // 0x0086a12e    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2735b8]         // 0x0086a12f    8b15b895c300
                         push               eax                                            // 0x0086a135    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2735b4]         // 0x0086a136    a1b495c300
                         push               ecx                                            // 0x0086a13b    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2735b0]         // 0x0086a13c    8b0db095c300
                         push               edx                                            // 0x0086a142    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0086a143    8b54241c
                         push               eax                                            // 0x0086a147    50
                         push               ecx                                            // 0x0086a148    51
                         push               edx                                            // 0x0086a149    52
                         call               _jmp_addr_0x00869fd0                           // 0x0086a14a    e881feffff
                         add                esp, 0x24                                      // 0x0086a14f    83c424
                         ret                                                               // 0x0086a152    c3
                         nop                                                               // 0x0086a153    90
                         nop                                                               // 0x0086a154    90
                         nop                                                               // 0x0086a155    90
                         nop                                                               // 0x0086a156    90
                         nop                                                               // 0x0086a157    90
                         nop                                                               // 0x0086a158    90
                         nop                                                               // 0x0086a159    90
                         nop                                                               // 0x0086a15a    90
                         nop                                                               // 0x0086a15b    90
                         nop                                                               // 0x0086a15c    90
                         nop                                                               // 0x0086a15d    90
                         nop                                                               // 0x0086a15e    90
                         nop                                                               // 0x0086a15f    90
_jmp_addr_0x0086a160:    {disp32} mov       eax, dword ptr [data_bytes + 0x2735bc]         // 0x0086a160    a1bc95c300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2735b8]         // 0x0086a165    8b0db895c300
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2735b4]         // 0x0086a16b    8b15b495c300
                         push               eax                                            // 0x0086a171    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2735b0]         // 0x0086a172    a1b095c300
                         push               ecx                                            // 0x0086a177    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc694]         // 0x0086a178    8b0d9426fa00
                         push               edx                                            // 0x0086a17e    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc698]         // 0x0086a17f    8b159826fa00
                         push               eax                                            // 0x0086a185    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc69c]         // 0x0086a186    a19c26fa00
                         push               ecx                                            // 0x0086a18b    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc6a0]         // 0x0086a18c    8b0da026fa00
                         push               edx                                            // 0x0086a192    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0086a193    8b54241c
                         push               eax                                            // 0x0086a197    50
                         push               ecx                                            // 0x0086a198    51
                         push               edx                                            // 0x0086a199    52
                         call               _jmp_addr_0x00869fd0                           // 0x0086a19a    e831feffff
                         add                esp, 0x24                                      // 0x0086a19f    83c424
                         ret                                                               // 0x0086a1a2    c3
                         nop                                                               // 0x0086a1a3    90
                         nop                                                               // 0x0086a1a4    90
                         nop                                                               // 0x0086a1a5    90
                         nop                                                               // 0x0086a1a6    90
                         nop                                                               // 0x0086a1a7    90
                         nop                                                               // 0x0086a1a8    90
                         nop                                                               // 0x0086a1a9    90
                         nop                                                               // 0x0086a1aa    90
                         nop                                                               // 0x0086a1ab    90
                         nop                                                               // 0x0086a1ac    90
                         nop                                                               // 0x0086a1ad    90
                         nop                                                               // 0x0086a1ae    90
                         nop                                                               // 0x0086a1af    90
?Time2SkyType@LH3DSky@@QAEMM@Z:
                         push               ecx                                            // 0x0086a1b0    51
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086a1b1    d9442408
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000000             // 0x0086a1b5    c744240000000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x261c0]              // 0x0086a1bd    d81dc0f18c00
                         fnstsw             ax                                             // 0x0086a1c3    dfe0
                         test               ah, 0x41                                       // 0x0086a1c5    f6c441
                         {disp8} jne        _jmp_addr_0x0086a1d8                           // 0x0086a1c8    750e
                         {disp32} fld       dword ptr [rdata_bytes + 0x2126c]              // 0x0086a1ca    d9056ca28c00
                         {disp8} fsub       dword ptr [esp + 0x08]                         // 0x0086a1d0    d8642408
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x0086a1d4    d95c2408
_jmp_addr_0x0086a1d8:    {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086a1d8    d9442408
                         {disp32} fcomp     dword ptr [data_bytes + 0x5dc6a0]              // 0x0086a1dc    d81da026fa00
                         fnstsw             ax                                             // 0x0086a1e2    dfe0
                         test               ah, 0x01                                       // 0x0086a1e4    f6c401
                         {disp8} je         _jmp_addr_0x0086a1f1                           // 0x0086a1e7    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]               // 0x0086a1e9    d90578b48a00
                         pop                ecx                                            // 0x0086a1ef    59
                         ret                                                               // 0x0086a1f0    c3
_jmp_addr_0x0086a1f1:    {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086a1f1    d9442408
                         {disp32} fcomp     dword ptr [data_bytes + 0x5dc69c]              // 0x0086a1f5    d81d9c26fa00
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086a1fb    d9442408
                         fnstsw             ax                                             // 0x0086a1ff    dfe0
                         test               ah, 0x01                                       // 0x0086a201    f6c401
                         {disp8} je         _jmp_addr_0x0086a222                           // 0x0086a204    741c
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6a0]              // 0x0086a206    d825a026fa00
                         {disp32} fld       dword ptr [data_bytes + 0x5dc69c]              // 0x0086a20c    d9059c26fa00
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6a0]              // 0x0086a212    d825a026fa00
                         fdivp              st(1), st                                      // 0x0086a218    def9
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x2478]               // 0x0086a21a    d82d78b48a00
                         pop                ecx                                            // 0x0086a220    59
                         ret                                                               // 0x0086a221    c3
_jmp_addr_0x0086a222:    {disp32} fcomp     dword ptr [data_bytes + 0x5dc698]              // 0x0086a222    d81d9826fa00
                         fnstsw             ax                                             // 0x0086a228    dfe0
                         test               ah, 0x01                                       // 0x0086a22a    f6c401
                         {disp8} je         _jmp_addr_0x0086a237                           // 0x0086a22d    7408
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x0086a22f    d90590a38a00
                         pop                ecx                                            // 0x0086a235    59
                         ret                                                               // 0x0086a236    c3
_jmp_addr_0x0086a237:    {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086a237    d9442408
                         {disp32} fcomp     dword ptr [data_bytes + 0x5dc694]              // 0x0086a23b    d81d9426fa00
                         fnstsw             ax                                             // 0x0086a241    dfe0
                         test               ah, 0x01                                       // 0x0086a243    f6c401
                         {disp8} je         _jmp_addr_0x0086a268                           // 0x0086a246    7420
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086a248    d9442408
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc698]              // 0x0086a24c    d8259826fa00
                         {disp32} fld       dword ptr [data_bytes + 0x5dc694]              // 0x0086a252    d9059426fa00
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc698]              // 0x0086a258    d8259826fa00
                         fdivp              st(1), st                                      // 0x0086a25e    def9
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                    // 0x0086a260    d82d90a38a00
                         pop                ecx                                            // 0x0086a266    59
                         ret                                                               // 0x0086a267    c3
_jmp_addr_0x0086a268:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086a268    d9442400
                         pop                ecx                                            // 0x0086a26c    59
                         ret                                                               // 0x0086a26d    c3
                         nop                                                               // 0x0086a26e    90
                         nop                                                               // 0x0086a26f    90
_jmp_addr_0x0086a270:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x0086a270    8b442404
                         push               eax                                            // 0x0086a274    50
                         call               _jmp_addr_0x0086a2c0                           // 0x0086a275    e846000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x517470]         // 0x0086a27a    8b1570d4ed00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc6bc]         // 0x0086a280    8b0dbc26fa00
                         neg                edx                                            // 0x0086a286    f7da
                         sbb.s              edx, edx                                       // 0x0086a288    1bd2
                         and                edx, 0xffffff80                                // 0x0086a28a    83e280
                         add                edx, 0x00000100                                // 0x0086a28d    81c200010000
                         push               edx                                            // 0x0086a293    52
                         mov.s              eax, ecx                                       // 0x0086a294    8bc1
                         push               0x0                                            // 0x0086a296    6a00
                         push               eax                                            // 0x0086a298    50
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6c0], ecx         // 0x0086a299    890dc026fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6b8], 0x00000000  // 0x0086a29f    c705b826fa0000000000
                         call               _jmp_addr_0x0086b7f0                           // 0x0086a2a9    e842150000
                         add                esp, 0x10                                      // 0x0086a2ae    83c410
                         {disp32} jmp       _jmp_addr_0x00869850                           // 0x0086a2b1    e99af5ffff
                         nop                                                               // 0x0086a2b6    90
                         nop                                                               // 0x0086a2b7    90
                         nop                                                               // 0x0086a2b8    90
                         nop                                                               // 0x0086a2b9    90
                         nop                                                               // 0x0086a2ba    90
                         nop                                                               // 0x0086a2bb    90
                         nop                                                               // 0x0086a2bc    90
                         nop                                                               // 0x0086a2bd    90
                         nop                                                               // 0x0086a2be    90
                         nop                                                               // 0x0086a2bf    90
_jmp_addr_0x0086a2c0:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086a2c0    d9442404
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x0086a2c4    d81598a38a00
                         fnstsw             ax                                             // 0x0086a2ca    dfe0
                         test               ah, 0x01                                       // 0x0086a2cc    f6c401
                         {disp8} je         _jmp_addr_0x0086a2e8                           // 0x0086a2cf    7417
_jmp_addr_0x0086a2d1:    {disp32} fadd      dword ptr [rdata_bytes + 0x2126c]              // 0x0086a2d1    d8056ca28c00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x0086a2d7    d81598a38a00
                         fnstsw             ax                                             // 0x0086a2dd    dfe0
                         test               ah, 0x01                                       // 0x0086a2df    f6c401
                         {disp8} jne        _jmp_addr_0x0086a2d1                           // 0x0086a2e2    75ed
                         {disp8} fst        dword ptr [esp + 0x04]                         // 0x0086a2e4    d9542404
_jmp_addr_0x0086a2e8:    {disp32} fcom      dword ptr [rdata_bytes + 0x2126c]              // 0x0086a2e8    d8156ca28c00
                         fnstsw             ax                                             // 0x0086a2ee    dfe0
                         test               ah, 0x01                                       // 0x0086a2f0    f6c401
                         {disp8} jne        _jmp_addr_0x0086a30c                           // 0x0086a2f3    7517
_jmp_addr_0x0086a2f5:    {disp32} fsub      dword ptr [rdata_bytes + 0x2126c]              // 0x0086a2f5    d8256ca28c00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2126c]              // 0x0086a2fb    d8156ca28c00
                         fnstsw             ax                                             // 0x0086a301    dfe0
                         test               ah, 0x01                                       // 0x0086a303    f6c401
                         {disp8} je         _jmp_addr_0x0086a2f5                           // 0x0086a306    74ed
                         {disp8} fst        dword ptr [esp + 0x04]                         // 0x0086a308    d9542404
_jmp_addr_0x0086a30c:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x0086a30c    8b442404
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6c4]              // 0x0086a310    d91dc426fa00
                         push               eax                                            // 0x0086a316    50
                         call               ?Time2SkyType@LH3DSky@@QAEMM@Z                 // 0x0086a317    e894feffff
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6bc]              // 0x0086a31c    d91dbc26fa00
                         add                esp, 0x04                                      // 0x0086a322    83c404
                         ret                                                               // 0x0086a325    c3
                         nop                                                               // 0x0086a326    90
                         nop                                                               // 0x0086a327    90
                         nop                                                               // 0x0086a328    90
                         nop                                                               // 0x0086a329    90
                         nop                                                               // 0x0086a32a    90
                         nop                                                               // 0x0086a32b    90
                         nop                                                               // 0x0086a32c    90
                         nop                                                               // 0x0086a32d    90
                         nop                                                               // 0x0086a32e    90
                         nop                                                               // 0x0086a32f    90
_jmp_addr_0x0086a330:    call               _jmp_addr_0x00869850                           // 0x0086a330    e81bf5ffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517470]         // 0x0086a335    8b0d70d4ed00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc6b8]         // 0x0086a33b    8b15b826fa00
                         neg                ecx                                            // 0x0086a341    f7d9
                         sbb.s              ecx, ecx                                       // 0x0086a343    1bc9
                         and                ecx, 0xffffff80                                // 0x0086a345    83e180
                         add                ecx, 0x00000100                                // 0x0086a348    81c100010000
                         cmp.s              edx, ecx                                       // 0x0086a34e    3bd1
                         {disp8} jl         _jmp_addr_0x0086a383                           // 0x0086a350    7c31
                         {disp32} fld       dword ptr [data_bytes + 0x5dc6bc]              // 0x0086a352    d905bc26fa00
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6c0]              // 0x0086a358    d825c026fa00
                         fabs                                                              // 0x0086a35e    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0xf1168]              // 0x0086a360    dc1d68a19900
                         fnstsw             ax                                             // 0x0086a366    dfe0
                         test               ah, 0x41                                       // 0x0086a368    f6c441
                         {disp8} jne        _jmp_addr_0x0086a37f                           // 0x0086a36b    7512
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6bc]         // 0x0086a36d    a1bc26fa00
                         xor.s              edx, edx                                       // 0x0086a372    33d2
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6c0], eax         // 0x0086a374    a3c026fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6b8], edx         // 0x0086a379    8915b826fa00
_jmp_addr_0x0086a37f:    cmp.s              edx, ecx                                       // 0x0086a37f    3bd1
                         {disp8} jge        _jmp_addr_0x0086a3a2                           // 0x0086a381    7d1f
_jmp_addr_0x0086a383:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc6c0]         // 0x0086a383    8b0dc026fa00
                         push               0x20                                           // 0x0086a389    6a20
                         push               edx                                            // 0x0086a38b    52
                         push               ecx                                            // 0x0086a38c    51
                         call               _jmp_addr_0x0086b7f0                           // 0x0086a38d    e85e140000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6b8]         // 0x0086a392    a1b826fa00
                         add                esp, 0x0c                                      // 0x0086a397    83c40c
                         add                eax, 0x20                                      // 0x0086a39a    83c020
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6b8], eax         // 0x0086a39d    a3b826fa00
_jmp_addr_0x0086a3a2:    ret                                                               // 0x0086a3a2    c3
                         nop                                                               // 0x0086a3a3    90
                         nop                                                               // 0x0086a3a4    90
                         nop                                                               // 0x0086a3a5    90
                         nop                                                               // 0x0086a3a6    90
                         nop                                                               // 0x0086a3a7    90
                         nop                                                               // 0x0086a3a8    90
                         nop                                                               // 0x0086a3a9    90
                         nop                                                               // 0x0086a3aa    90
                         nop                                                               // 0x0086a3ab    90
                         nop                                                               // 0x0086a3ac    90
                         nop                                                               // 0x0086a3ad    90
                         nop                                                               // 0x0086a3ae    90
                         nop                                                               // 0x0086a3af    90
_jmp_addr_0x0086a3b0:    sub                esp, 0x14                                      // 0x0086a3b0    83ec14
                         push               ebx                                            // 0x0086a3b3    53
                         push               ebp                                            // 0x0086a3b4    55
                         push               esi                                            // 0x0086a3b5    56
                         push               edi                                            // 0x0086a3b6    57
                         push               0x41040000                                     // 0x0086a3b7    6800000441
                         push               0x40f00000                                     // 0x0086a3bc    680000f040
                         push               0x40e00000                                     // 0x0086a3c1    680000e040
                         mov                ebp, 0x00000001                                // 0x0086a3c6    bd01000000
                         push               0x40900000                                     // 0x0086a3cb    6800009040
                         {disp32} mov       dword ptr [data_bytes + 0x2735ac], ebp         // 0x0086a3d0    892dac95c300
                         {disp32} mov       dword ptr [data_bytes + 0x5dc750], 0x40400000  // 0x0086a3d6    c7055027fa0000004040
                         call               ?SetDayNightTimes@LH3DSky@@SAXMMMM@Z           // 0x0086a3e0    e8bbfbffff
                         xor.s              eax, eax                                       // 0x0086a3e5    33c0
                         mov                ecx, 0x00000009                                // 0x0086a3e7    b909000000
                         mov                edi, 0x00fa26e8                                // 0x0086a3ec    bfe826fa00
                         add                esp, 0x10                                      // 0x0086a3f1    83c410
                         {disp32} mov       dword ptr [data_bytes + 0x5dc750], 0x40800000  // 0x0086a3f4    c7055027fa0000008040
                         rep stosd                                                         // 0x0086a3fe    f3ab
                         call               _jmp_addr_0x00869670                           // 0x0086a400    e86bf2ffff
                         neg                al                                             // 0x0086a405    f6d8
                         sbb.s              eax, eax                                       // 0x0086a407    1bc0
                         and                eax, 0x02                                      // 0x0086a409    83e002
                         inc                eax                                            // 0x0086a40c    40
                         xor.s              ebx, ebx                                       // 0x0086a40d    33db
                         test               eax, eax                                       // 0x0086a40f    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0086a411    89442414
                         {disp32} jle       _jmp_addr_0x0086a52e                           // 0x0086a415    0f8e13010000
_jmp_addr_0x0086a41b:    xor.s              ebp, ebp                                       // 0x0086a41b    33ed
_jmp_addr_0x0086a41d:    or                 ecx, 0xffffffff                                // 0x0086a41d    83c9ff
                         xor.s              eax, eax                                       // 0x0086a420    33c0
                         mov                edi, 0x00c39660                                // 0x0086a422    bf6096c300
                         repne scasb                                                       // 0x0086a427    f2ae
                         not                ecx                                            // 0x0086a429    f7d1
                         sub.s              edi, ecx                                       // 0x0086a42b    2bf9
                         mov.s              eax, ecx                                       // 0x0086a42d    8bc1
                         shr                ecx, 2                                         // 0x0086a42f    c1e902
                         mov.s              esi, edi                                       // 0x0086a432    8bf7
                         mov                edi, 0x00fa2594                                // 0x0086a434    bf9425fa00
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x0086a439    f3a5
                         mov.s              ecx, eax                                       // 0x0086a43b    8bc8
                         and                ecx, 0x03                                      // 0x0086a43d    83e103
                         test               ebp, ebp                                       // 0x0086a440    85ed
                         rep movsb                                                         // 0x0086a442    f3a4
                         {disp8} jne        _jmp_addr_0x0086a44d                           // 0x0086a444    7507
                         mov                edi, 0x00c39658                                // 0x0086a446    bf5896c300
                         {disp8} jmp        _jmp_addr_0x0086a45c                           // 0x0086a44b    eb0f
_jmp_addr_0x0086a44d:    cmp                ebp, 0x01                                      // 0x0086a44d    83fd01
                         mov                edi, 0x00c39650                                // 0x0086a450    bf5096c300
                         {disp8} je         _jmp_addr_0x0086a45c                           // 0x0086a455    7405
                         mov                edi, 0x00c39648                                // 0x0086a457    bf4896c300
_jmp_addr_0x0086a45c:    or                 ecx, 0xffffffff                                // 0x0086a45c    83c9ff
                         xor.s              eax, eax                                       // 0x0086a45f    33c0
                         repne scasb                                                       // 0x0086a461    f2ae
                         not                ecx                                            // 0x0086a463    f7d1
                         sub.s              edi, ecx                                       // 0x0086a465    2bf9
                         mov.s              edx, ecx                                       // 0x0086a467    8bd1
                         or                 ecx, 0xffffffff                                // 0x0086a469    83c9ff
                         mov.s              esi, edi                                       // 0x0086a46c    8bf7
                         mov                edi, 0x00fa2594                                // 0x0086a46e    bf9425fa00
                         repne scasb                                                       // 0x0086a473    f2ae
                         mov.s              ecx, edx                                       // 0x0086a475    8bca
                         shr                ecx, 2                                         // 0x0086a477    c1e902
                         dec                edi                                            // 0x0086a47a    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x0086a47b    f3a5
                         mov.s              ecx, edx                                       // 0x0086a47d    8bca
                         and                ecx, 0x03                                      // 0x0086a47f    83e103
                         test               ebx, ebx                                       // 0x0086a482    85db
                         rep movsb                                                         // 0x0086a484    f3a4
                         {disp8} jne        _jmp_addr_0x0086a48f                           // 0x0086a486    7507
                         mov                edi, 0x00c3963c                                // 0x0086a488    bf3c96c300
                         {disp8} jmp        _jmp_addr_0x0086a49e                           // 0x0086a48d    eb0f
_jmp_addr_0x0086a48f:    cmp                ebx, 0x01                                      // 0x0086a48f    83fb01
                         mov                edi, 0x00c39630                                // 0x0086a492    bf3096c300
                         {disp8} je         _jmp_addr_0x0086a49e                           // 0x0086a497    7405
                         mov                edi, 0x00c39624                                // 0x0086a499    bf2496c300
_jmp_addr_0x0086a49e:    or                 ecx, 0xffffffff                                // 0x0086a49e    83c9ff
                         xor.s              eax, eax                                       // 0x0086a4a1    33c0
                         repne scasb                                                       // 0x0086a4a3    f2ae
                         not                ecx                                            // 0x0086a4a5    f7d1
                         sub.s              edi, ecx                                       // 0x0086a4a7    2bf9
                         mov.s              edx, ecx                                       // 0x0086a4a9    8bd1
                         or                 ecx, 0xffffffff                                // 0x0086a4ab    83c9ff
                         mov.s              esi, edi                                       // 0x0086a4ae    8bf7
                         mov                edi, 0x00fa2594                                // 0x0086a4b0    bf9425fa00
                         repne scasb                                                       // 0x0086a4b5    f2ae
                         mov.s              ecx, edx                                       // 0x0086a4b7    8bca
                         shr                ecx, 2                                         // 0x0086a4b9    c1e902
                         dec                edi                                            // 0x0086a4bc    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x0086a4bd    f3a5
                         mov.s              ecx, edx                                       // 0x0086a4bf    8bca
                         push               eax                                            // 0x0086a4c1    50
                         and                ecx, 0x03                                      // 0x0086a4c2    83e103
                         push               0x00fa2594                                     // 0x0086a4c5    689425fa00
                         rep movsb                                                         // 0x0086a4ca    f3a4
                         call               _jmp_addr_0x00822190                           // 0x0086a4cc    e8bf7cfbff
                         lea                ecx, dword ptr [ebx + ebx * 0x2]               // 0x0086a4d1    8d0c5b
                         add.s              ecx, ebp                                       // 0x0086a4d4    03cd
                         add                esp, 0x08                                      // 0x0086a4d6    83c408
                         inc                ebp                                            // 0x0086a4d9    45
                         cmp                ebp, 0x03                                      // 0x0086a4da    83fd03
                         {disp32} mov       dword ptr [ecx * 0x4 + 0x00fa26e8], eax        // 0x0086a4dd    89048de826fa00
                         {disp32} jl        _jmp_addr_0x0086a41d                           // 0x0086a4e4    0f8c33ffffff
                         lea                eax, dword ptr [ebx + ebx * 0x2]               // 0x0086a4ea    8d045b
                         shl                eax, 2                                         // 0x0086a4ed    c1e002
                         {disp32} mov       ecx, dword ptr [eax + 0x00fa26e8]              // 0x0086a4f0    8b88e826fa00
                         test               ecx, ecx                                       // 0x0086a4f6    85c9
                         {disp8} jne        _jmp_addr_0x0086a506                           // 0x0086a4f8    750c
                         {disp32} mov       ecx, dword ptr [eax + 0x00fa26ec]              // 0x0086a4fa    8b88ec26fa00
                         {disp32} mov       dword ptr [eax + 0x00fa26e8], ecx              // 0x0086a500    8988e826fa00
_jmp_addr_0x0086a506:    {disp32} mov       ecx, dword ptr [eax + 0x00fa26f0]              // 0x0086a506    8b88f026fa00
                         test               ecx, ecx                                       // 0x0086a50c    85c9
                         {disp8} jne        _jmp_addr_0x0086a51c                           // 0x0086a50e    750c
                         {disp32} mov       edx, dword ptr [eax + 0x00fa26ec]              // 0x0086a510    8b90ec26fa00
                         {disp32} mov       dword ptr [eax + 0x00fa26f0], edx              // 0x0086a516    8990f026fa00
_jmp_addr_0x0086a51c:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086a51c    8b442414
                         inc                ebx                                            // 0x0086a520    43
                         cmp.s              ebx, eax                                       // 0x0086a521    3bd8
                         {disp32} jl        _jmp_addr_0x0086a41b                           // 0x0086a523    0f8cf2feffff
                         mov                ebp, 0x00000001                                // 0x0086a529    bd01000000
_jmp_addr_0x0086a52e:    xor.s              esi, esi                                       // 0x0086a52e    33f6
_jmp_addr_0x0086a530:    {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x0086a530    8d442414
                         push               eax                                            // 0x0086a534    50
                         push               0x0                                            // 0x0086a535    6a00
                         push               0x00000104                                     // 0x0086a537    6804010000
                         push               0x0                                            // 0x0086a53c    6a00
                         {disp8} mov        dword ptr [esp + 0x24], ebp                    // 0x0086a53e    896c2424
                         call               _jmp_addr_0x008379e0                           // 0x0086a542    e899d4fcff
                         push               eax                                            // 0x0086a547    50
                         push               0x2                                            // 0x0086a548    6a02
                         {disp32} mov       dword ptr [esi + 0x00fa2738], eax              // 0x0086a54a    89863827fa00
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                           // 0x0086a550    e8db57fcff
                         {disp32} mov       dword ptr [esi + 0x00fa2744], eax              // 0x0086a555    89864427fa00
                         add                esi, 0x04                                      // 0x0086a55b    83c604
                         add                esp, 0x18                                      // 0x0086a55e    83c418
                         cmp                esi, 0x0c                                      // 0x0086a561    83fe0c
                         {disp8} jl         _jmp_addr_0x0086a530                           // 0x0086a564    7cca
                         {disp32} mov       esi, dword ptr [data_bytes + 0x517470]         // 0x0086a566    8b3570d4ed00
                         {disp8} mov        edi, dword ptr [esp + 0x28]                    // 0x0086a56c    8b7c2428
                         neg                esi                                            // 0x0086a570    f7de
                         sbb.s              esi, esi                                       // 0x0086a572    1bf6
                         and                esi, 0xffffff80                                // 0x0086a574    83e680
                         add                esi, 0x00000100                                // 0x0086a577    81c600010000
                         push               esi                                            // 0x0086a57d    56
                         push               0x0                                            // 0x0086a57e    6a00
                         push               edi                                            // 0x0086a580    57
                         call               ?Time2SkyType@LH3DSky@@QAEMM@Z                 // 0x0086a581    e82afcffff
                         fstp               dword ptr [esp]                                // 0x0086a586    d91c24
                         call               _jmp_addr_0x0086b7f0                           // 0x0086a589    e862120000
                         {disp8} fld        dword ptr [esp + 0x38]                         // 0x0086a58e    d9442438
                         fadd.s             st(0), st(0)                                   // 0x0086a592    dcc0
                         push               edi                                            // 0x0086a594    57
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6b8], esi         // 0x0086a595    8935b826fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6bc], 0x00000000  // 0x0086a59b    c705bc26fa0000000000
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc758]              // 0x0086a5a5    d91d5827fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6c0], 0x00000000  // 0x0086a5ab    c705c026fa0000000000
                         call               _jmp_addr_0x0086a2c0                           // 0x0086a5b5    e806fdffff
                         {disp32} mov       dword ptr [data_bytes + 0x5dc754], 0x00000000  // 0x0086a5ba    c7055427fa0000000000
                         call               _jmp_addr_0x00869850                           // 0x0086a5c4    e887f2ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                    // 0x0086a5c9    8d4c2420
                         push               ecx                                            // 0x0086a5cd    51
                         push               0x00c39608                                     // 0x0086a5ce    680896c300
                         call               _LHFileLength__FPcPUl                          // 0x0086a5d3    e88823f5ff
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x0086a5d8    8b542428
                         push               edx                                            // 0x0086a5dc    52
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                       // 0x0086a5dd    e8fe86fdff
                         mov.s              esi, eax                                       // 0x0086a5e2    8bf0
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x0086a5e4    8b44242c
                         push               0x0                                            // 0x0086a5e8    6a00
                         push               eax                                            // 0x0086a5ea    50
                         push               esi                                            // 0x0086a5eb    56
                         push               0x00c39608                                     // 0x0086a5ec    680896c300
                         call               _LHLoadData__FPcPvUlPUl                        // 0x0086a5f1    e8fa27f5ff
                         push               0x0                                            // 0x0086a5f6    6a00
                         push               esi                                            // 0x0086a5f8    56
                         call               ?Create@LH3DMesh@@SAPAV1@PBX_N@Z               // 0x0086a5f9    e862bef9ff
                         push               esi                                            // 0x0086a5fe    56
                         {disp32} mov       dword ptr [data_bytes + 0x5dc734], eax         // 0x0086a5ff    a33427fa00
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x0086a604    e85787fdff
                         add                esp, 0x38                                      // 0x0086a609    83c438
                         xor.s              ecx, ecx                                       // 0x0086a60c    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                           // 0x0086a60e    e8bd0efaff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc734]         // 0x0086a613    8b153427fa00
                         push               0x0                                            // 0x0086a619    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc730], eax         // 0x0086a61b    a33027fa00
                         mov                esi, dword ptr [eax]                           // 0x0086a620    8b30
                         push               0x0                                            // 0x0086a622    6a00
                         mov.s              ecx, eax                                       // 0x0086a624    8bc8
                         call               dword ptr [esi + 0xf4]                         // 0x0086a626    ff96f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc730]         // 0x0086a62c    8b0d3027fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086a632    8b01
                         xor.s              edx, edx                                       // 0x0086a634    33d2
                         call               dword ptr [eax + 0x58]                         // 0x0086a636    ff5058
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc730]         // 0x0086a639    8b0d3027fa00
                         push               0x40a00000                                     // 0x0086a63f    680000a040
                         {disp8} mov        dword ptr [esp + 0x1c], 0x45200000             // 0x0086a644    c744241c00002045
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x0086a64c    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x45200000             // 0x0086a654    c744242400002045
                         mov                eax, dword ptr [ecx]                           // 0x0086a65c    8b01
                         push               0x0                                            // 0x0086a65e    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x20]                    // 0x0086a660    8d542420
                         call               dword ptr [eax + 0x20]                         // 0x0086a664    ff5020
                         push               ebp                                            // 0x0086a667    55
                         push               0x00c395ec                                     // 0x0086a668    68ec95c300
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z         // 0x0086a66d    e87ec1f9ff
                         {disp32} mov       dword ptr [data_bytes + 0x5dc72c], eax         // 0x0086a672    a32c27fa00
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                    // 0x0086a677    8b480c
                         add                esp, 0x08                                      // 0x0086a67a    83c408
                         xor.s              esi, esi                                       // 0x0086a67d    33f6
                         test               ecx, ecx                                       // 0x0086a67f    85c9
                         {disp8} jle        _jmp_addr_0x0086a6b6                           // 0x0086a681    7e33
_jmp_addr_0x0086a683:    {disp8} mov        ecx, dword ptr [eax + 0x10]                    // 0x0086a683    8b4810
                         mov                ecx, dword ptr [ecx + esi * 0x4]               // 0x0086a686    8b0cb1
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                    // 0x0086a689    8b7904
                         xor.s              edx, edx                                       // 0x0086a68c    33d2
                         test               edi, edi                                       // 0x0086a68e    85ff
                         {disp8} jle        _jmp_addr_0x0086a6ae                           // 0x0086a690    7e1c
_jmp_addr_0x0086a692:    {disp8} mov        eax, dword ptr [ecx + 0x08]                    // 0x0086a692    8b4108
                         mov                eax, dword ptr [eax + edx * 0x4]               // 0x0086a695    8b0490
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4f3954]         // 0x0086a698    8b3d5499eb00
                         {disp8} mov        dword ptr [eax + 0x08], edi                    // 0x0086a69e    897808
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x0086a6a1    8b4104
                         inc                edx                                            // 0x0086a6a4    42
                         cmp.s              edx, eax                                       // 0x0086a6a5    3bd0
                         {disp8} jl         _jmp_addr_0x0086a692                           // 0x0086a6a7    7ce9
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc72c]         // 0x0086a6a9    a12c27fa00
_jmp_addr_0x0086a6ae:    {disp8} mov        ecx, dword ptr [eax + 0x0c]                    // 0x0086a6ae    8b480c
                         inc                esi                                            // 0x0086a6b1    46
                         cmp.s              esi, ecx                                       // 0x0086a6b2    3bf1
                         {disp8} jl         _jmp_addr_0x0086a683                           // 0x0086a6b4    7ccd
_jmp_addr_0x0086a6b6:    push               ebp                                            // 0x0086a6b6    55
                         push               0x00c395d0                                     // 0x0086a6b7    68d095c300
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z         // 0x0086a6bc    e82fc1f9ff
                         {disp32} mov       dword ptr [data_bytes + 0x5dc720], eax         // 0x0086a6c1    a32027fa00
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                    // 0x0086a6c6    8b480c
                         add                esp, 0x08                                      // 0x0086a6c9    83c408
                         xor.s              esi, esi                                       // 0x0086a6cc    33f6
                         test               ecx, ecx                                       // 0x0086a6ce    85c9
                         {disp8} jle        _jmp_addr_0x0086a714                           // 0x0086a6d0    7e42
_jmp_addr_0x0086a6d2:    {disp8} mov        ecx, dword ptr [eax + 0x10]                    // 0x0086a6d2    8b4810
                         mov                edx, dword ptr [ecx + esi * 0x4]               // 0x0086a6d5    8b14b1
                         {disp8} mov        edi, dword ptr [edx + 0x04]                    // 0x0086a6d8    8b7a04
                         xor.s              ecx, ecx                                       // 0x0086a6db    33c9
                         test               edi, edi                                       // 0x0086a6dd    85ff
                         {disp8} jle        _jmp_addr_0x0086a70c                           // 0x0086a6df    7e2b
_jmp_addr_0x0086a6e1:    {disp8} mov        eax, dword ptr [edx + 0x08]                    // 0x0086a6e1    8b4208
                         mov                eax, dword ptr [eax + ecx * 0x4]               // 0x0086a6e4    8b0488
                         {disp8} mov        bl, byte ptr [eax + 0x05]                      // 0x0086a6e7    8a5805
                         mov                dword ptr [eax], 0x0000000d                    // 0x0086a6ea    c7000d000000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4f3958]         // 0x0086a6f0    8b3d5899eb00
                         or                 bl, 1                                          // 0x0086a6f6    80cb01
                         {disp8} mov        dword ptr [eax + 0x08], edi                    // 0x0086a6f9    897808
                         {disp8} mov        byte ptr [eax + 0x05], bl                      // 0x0086a6fc    885805
                         {disp8} mov        eax, dword ptr [edx + 0x04]                    // 0x0086a6ff    8b4204
                         inc                ecx                                            // 0x0086a702    41
                         cmp.s              ecx, eax                                       // 0x0086a703    3bc8
                         {disp8} jl         _jmp_addr_0x0086a6e1                           // 0x0086a705    7cda
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc720]         // 0x0086a707    a12027fa00
_jmp_addr_0x0086a70c:    {disp8} mov        ecx, dword ptr [eax + 0x0c]                    // 0x0086a70c    8b480c
                         inc                esi                                            // 0x0086a70f    46
                         cmp.s              esi, ecx                                       // 0x0086a710    3bf1
                         {disp8} jl         _jmp_addr_0x0086a6d2                           // 0x0086a712    7cbe
_jmp_addr_0x0086a714:    xor.s              ecx, ecx                                       // 0x0086a714    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                           // 0x0086a716    e8b50dfaff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc72c]         // 0x0086a71b    8b152c27fa00
                         push               0x0                                            // 0x0086a721    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc728], eax         // 0x0086a723    a32827fa00
                         mov                esi, dword ptr [eax]                           // 0x0086a728    8b30
                         push               0x0                                            // 0x0086a72a    6a00
                         mov.s              ecx, eax                                       // 0x0086a72c    8bc8
                         call               dword ptr [esi + 0xf4]                         // 0x0086a72e    ff96f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086a734    8b0d2827fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086a73a    8b01
                         xor.s              edx, edx                                       // 0x0086a73c    33d2
                         call               dword ptr [eax + 0x58]                         // 0x0086a73e    ff5058
                         xor.s              ecx, ecx                                       // 0x0086a741    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                           // 0x0086a743    e8880dfaff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc720]         // 0x0086a748    8b152027fa00
                         push               0x0                                            // 0x0086a74e    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc71c], eax         // 0x0086a750    a31c27fa00
                         mov                esi, dword ptr [eax]                           // 0x0086a755    8b30
                         push               0x0                                            // 0x0086a757    6a00
                         mov.s              ecx, eax                                       // 0x0086a759    8bc8
                         call               dword ptr [esi + 0xf4]                         // 0x0086a75b    ff96f4000000
                         pop                edi                                            // 0x0086a761    5f
                         pop                esi                                            // 0x0086a762    5e
                         pop                ebp                                            // 0x0086a763    5d
                         pop                ebx                                            // 0x0086a764    5b
                         add                esp, 0x14                                      // 0x0086a765    83c414
                         ret                                                               // 0x0086a768    c3
                         nop                                                               // 0x0086a769    90
                         nop                                                               // 0x0086a76a    90
                         nop                                                               // 0x0086a76b    90
                         nop                                                               // 0x0086a76c    90
                         nop                                                               // 0x0086a76d    90
                         nop                                                               // 0x0086a76e    90
                         nop                                                               // 0x0086a76f    90
_jmp_addr_0x0086a770:    push               ebx                                            // 0x0086a770    53
                         push               ebp                                            // 0x0086a771    55
                         push               esi                                            // 0x0086a772    56
                         xor.s              ebp, ebp                                       // 0x0086a773    33ed
                         push               edi                                            // 0x0086a775    57
                         {disp32} mov       dword ptr [data_bytes + 0x2735ac], 0x00000001  // 0x0086a776    c705ac95c30001000000
                         xor.s              ebx, ebx                                       // 0x0086a780    33db
_jmp_addr_0x0086a782:    {disp32} mov       eax, dword ptr [ebx + 0x00fa2744]              // 0x0086a782    8b834427fa00
                         cmp.s              eax, ebp                                       // 0x0086a788    3bc5
                         {disp8} je         _jmp_addr_0x0086a78f                           // 0x0086a78a    7403
                         {disp8} mov        dword ptr [eax + 0x08], ebp                    // 0x0086a78c    896808
_jmp_addr_0x0086a78f:    {disp32} mov       ecx, dword ptr [ebx + 0x00fa2738]              // 0x0086a78f    8b8b3827fa00
                         cmp.s              ecx, ebp                                       // 0x0086a795    3bcd
                         {disp8} je         _jmp_addr_0x0086a79e                           // 0x0086a797    7405
                         call               ?Release@LH3DTexture@@QAEXXZ                   // 0x0086a799    e8a2d5fcff
_jmp_addr_0x0086a79e:    mov                esi, 0x00fa26ec                                // 0x0086a79e    beec26fa00
                         {disp32} lea       edi, dword ptr [ebx + 0x00fa26e8]              // 0x0086a7a3    8dbbe826fa00
_jmp_addr_0x0086a7a9:    {disp8} mov        eax, dword ptr [esi + -0x04]                   // 0x0086a7a9    8b46fc
                         cmp                eax, dword ptr [esi]                           // 0x0086a7ac    3b06
                         {disp8} jne        _jmp_addr_0x0086a7b3                           // 0x0086a7ae    7503
                         {disp8} mov        dword ptr [esi + -0x04], ebp                   // 0x0086a7b0    896efc
_jmp_addr_0x0086a7b3:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x0086a7b3    8b4e04
                         cmp                ecx, dword ptr [esi]                           // 0x0086a7b6    3b0e
                         {disp8} jne        _jmp_addr_0x0086a7bd                           // 0x0086a7b8    7503
                         {disp8} mov        dword ptr [esi + 0x04], ebp                    // 0x0086a7ba    896e04
_jmp_addr_0x0086a7bd:    mov                ecx, dword ptr [edi]                           // 0x0086a7bd    8b0f
                         cmp.s              ecx, ebp                                       // 0x0086a7bf    3bcd
                         {disp8} je         _jmp_addr_0x0086a7c8                           // 0x0086a7c1    7405
                         call               _jmp_addr_0x00822180                           // 0x0086a7c3    e8b879fbff
_jmp_addr_0x0086a7c8:    add                esi, 0x0c                                      // 0x0086a7c8    83c60c
                         add                edi, 0x0c                                      // 0x0086a7cb    83c70c
                         cmp                esi, 0x00fa2710                                // 0x0086a7ce    81fe1027fa00
                         {disp8} jl         _jmp_addr_0x0086a7a9                           // 0x0086a7d4    7cd3
                         add                ebx, 0x04                                      // 0x0086a7d6    83c304
                         cmp                ebx, 0x0c                                      // 0x0086a7d9    83fb0c
                         {disp8} jl         _jmp_addr_0x0086a782                           // 0x0086a7dc    7ca4
                         pop                edi                                            // 0x0086a7de    5f
                         pop                esi                                            // 0x0086a7df    5e
                         pop                ebp                                            // 0x0086a7e0    5d
                         pop                ebx                                            // 0x0086a7e1    5b
                         ret                                                               // 0x0086a7e2    c3
                         nop                                                               // 0x0086a7e3    90
                         nop                                                               // 0x0086a7e4    90
                         nop                                                               // 0x0086a7e5    90
                         nop                                                               // 0x0086a7e6    90
                         nop                                                               // 0x0086a7e7    90
                         nop                                                               // 0x0086a7e8    90
                         nop                                                               // 0x0086a7e9    90
                         nop                                                               // 0x0086a7ea    90
                         nop                                                               // 0x0086a7eb    90
                         nop                                                               // 0x0086a7ec    90
                         nop                                                               // 0x0086a7ed    90
                         nop                                                               // 0x0086a7ee    90
                         nop                                                               // 0x0086a7ef    90
_jmp_addr_0x0086a7f0:    call               dword ptr [__imp__GetTickCount@4]              // 0x0086a7f0    ff15c4918a00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc770]         // 0x0086a7f6    8b157027fa00
                         mov.s              ecx, eax                                       // 0x0086a7fc    8bc8
                         sub.s              ecx, edx                                       // 0x0086a7fe    2bca
                         cmp                ecx, 0x000007d0                                // 0x0086a800    81f9d0070000
                         {disp8} jle        _jmp_addr_0x0086a819                           // 0x0086a806    7e11
                         {disp32} mov       dword ptr [data_bytes + 0x5dc76c], 0x00000000  // 0x0086a808    c7056c27fa0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x5dc770], eax         // 0x0086a812    a37027fa00
                         {disp8} jmp        _jmp_addr_0x0086a822                           // 0x0086a817    eb09
_jmp_addr_0x0086a819:    {disp32} mov       eax, dword ptr [data_bytes + 0x5dc76c]         // 0x0086a819    a16c27fa00
                         test               eax, eax                                       // 0x0086a81e    85c0
                         {disp8} jne        _jmp_addr_0x0086a83b                           // 0x0086a820    7519
_jmp_addr_0x0086a822:    push               0x00fa276c                                     // 0x0086a822    686c27fa00
                         call               _time                                          // 0x0086a827    e8d1d1f5ff
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x0086a82c    8b542408
                         add                esp, 0x04                                      // 0x0086a830    83c404
                         mov                dword ptr [edx], 0x00000001                    // 0x0086a833    c70201000000
                         {disp8} jmp        _jmp_addr_0x0086a845                           // 0x0086a839    eb0a
_jmp_addr_0x0086a83b:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x0086a83b    8b442404
                         mov                dword ptr [eax], 0x00000000                    // 0x0086a83f    c70000000000
_jmp_addr_0x0086a845:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc76c]         // 0x0086a845    8b0d6c27fa00
                         mov                eax, 0xc22e4507                                // 0x0086a84b    b807452ec2
                         imul               ecx                                            // 0x0086a850    f7e9
                         add.s              edx, ecx                                       // 0x0086a852    03d1
                         sar                edx, 0x10                                      // 0x0086a854    c1fa10
                         mov.s              ecx, edx                                       // 0x0086a857    8bca
                         shr                ecx, 0x1f                                      // 0x0086a859    c1e91f
                         {disp32} lea       edx, dword ptr [edx + ecx * 0x1 + -0x00002ad2] // 0x0086a85c    8d940a2ed5ffff
                         {disp8} mov        dword ptr [esp + 0x04], edx                    // 0x0086a863    89542404
                         {disp8} fild       dword ptr [esp + 0x04]                         // 0x0086a867    db442404
                         {disp32} fmul      qword ptr [rdata_bytes + 0xfabe8]              // 0x0086a86b    dc0de83b9a00
                         fld                st(0)                                          // 0x0086a871    d9c0
                         call               _jmp_addr_0x007a1400                           // 0x0086a873    e8886bf3ff
                         {disp8} mov        dword ptr [esp + 0x04], eax                    // 0x0086a878    89442404
                         {disp8} fild       dword ptr [esp + 0x04]                         // 0x0086a87c    db442404
                         fsubp              st(1), st                                      // 0x0086a880    dee9
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]    // 0x0086a882    dc2d80b68a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2b5d8]              // 0x0086a888    dc0dd8458d00
                         ret                                                               // 0x0086a88e    c3
                         nop                                                               // 0x0086a88f    90
_jmp_addr_0x0086a890:    sub                esp, 0x40                                      // 0x0086a890    83ec40
                         {disp32} fld       dword ptr [data_bytes + 0x5dc724]              // 0x0086a893    d9052427fa00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc72c]         // 0x0086a899    a12c27fa00
                         fld                st(0)                                          // 0x0086a89e    d9c0
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                    // 0x0086a8a0    8b4810
                         fcos                                                              // 0x0086a8a3    d9ff
                         mov                eax, dword ptr [ecx]                           // 0x0086a8a5    8b01
                         {disp8} mov        edx, dword ptr [eax + 0x08]                    // 0x0086a8a7    8b5008
                         {disp8} mov        eax, dword ptr [eax + 0x04]                    // 0x0086a8aa    8b4004
                         test               eax, eax                                       // 0x0086a8ad    85c0
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x0086a8af    d95c2430
                         fsin                                                              // 0x0086a8b3    d9fe
                         fchs                                                              // 0x0086a8b5    d9e0
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x0086a8b7    d95c2428
                         {disp8} jle        _jmp_addr_0x0086a927                           // 0x0086a8bb    7e6a
                         push               esi                                            // 0x0086a8bd    56
                         push               edi                                            // 0x0086a8be    57
                         mov.s              esi, eax                                       // 0x0086a8bf    8bf0
_jmp_addr_0x0086a8c1:    mov                ecx, dword ptr [edx]                           // 0x0086a8c1    8b0a
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                    // 0x0086a8c3    8b4114
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]                    // 0x0086a8c6    8b4910
                         mov.s              edi, ecx                                       // 0x0086a8c9    8bf9
                         dec                ecx                                            // 0x0086a8cb    49
                         test               edi, edi                                       // 0x0086a8cc    85ff
                         {disp8} je         _jmp_addr_0x0086a91f                           // 0x0086a8ce    744f
                         inc                ecx                                            // 0x0086a8d0    41
_jmp_addr_0x0086a8d1:    {disp8} fld        dword ptr [eax + 0x04]                         // 0x0086a8d1    d94004
                         mov                edi, dword ptr [eax]                           // 0x0086a8d4    8b38
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x0086a8d6    d94008
                         {disp8} mov        dword ptr [esp + 0x0c], edi                    // 0x0086a8d9    897c240c
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x0086a8dd    d9442430
                         add                eax, 0x20                                      // 0x0086a8e1    83c020
                         dec                ecx                                            // 0x0086a8e4    49
                         fmul               st, st(1)                                      // 0x0086a8e5    d8c9
                         {disp8} fld        dword ptr [esp + 0x38]                         // 0x0086a8e7    d9442438
                         {disp8} mov        dword ptr [esp + 0x08], edi                    // 0x0086a8eb    897c2408
                         {disp8} fmul       dword ptr [esp + 0x0c]                         // 0x0086a8ef    d84c240c
                         faddp              st(1), st                                      // 0x0086a8f3    dec1
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x0086a8f5    d95c240c
                         fstp               st(0)                                          // 0x0086a8f9    ddd8
                         {disp8} fld        dword ptr [esp + 0x0c]                         // 0x0086a8fb    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26154]              // 0x0086a8ff    d80d54f18c00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x23d4]               // 0x0086a905    d805d4b38a00
                         {disp8} fstp       dword ptr [eax + -0x14]                        // 0x0086a90b    d958ec
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26154]              // 0x0086a90e    d80d54f18c00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x23d4]               // 0x0086a914    d805d4b38a00
                         {disp8} fstp       dword ptr [eax + -0x10]                        // 0x0086a91a    d958f0
                         {disp8} jne        _jmp_addr_0x0086a8d1                           // 0x0086a91d    75b2
_jmp_addr_0x0086a91f:    add                edx, 0x04                                      // 0x0086a91f    83c204
                         dec                esi                                            // 0x0086a922    4e
                         {disp8} jne        _jmp_addr_0x0086a8c1                           // 0x0086a923    759c
                         pop                edi                                            // 0x0086a925    5f
                         pop                esi                                            // 0x0086a926    5e
_jmp_addr_0x0086a927:    add                esp, 0x40                                      // 0x0086a927    83c440
                         ret                                                               // 0x0086a92a    c3
                         nop                                                               // 0x0086a92b    90
                         nop                                                               // 0x0086a92c    90
                         nop                                                               // 0x0086a92d    90
                         nop                                                               // 0x0086a92e    90
                         nop                                                               // 0x0086a92f    90
_jmp_addr_0x0086a930:    sub                esp, 0x08                                      // 0x0086a930    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516310]         // 0x0086a933    a110c3ed00
                         mov                dword ptr [eax], 0x00000000                    // 0x0086a938    c70000000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516310]         // 0x0086a93e    8b0d10c3ed00
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000001             // 0x0086a944    c7410401000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516310]         // 0x0086a94b    8b1510c3ed00
                         mov                eax, 0x00000003                                // 0x0086a951    b803000000
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x0086a956    894208
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516310]         // 0x0086a959    8b0d10c3ed00
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                    // 0x0086a95f    89410c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516310]         // 0x0086a962    8b1510c3ed00
                         {disp8} mov        dword ptr [edx + 0x10], 0x00000002             // 0x0086a968    c7421002000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516310]         // 0x0086a96f    a110c3ed00
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000000             // 0x0086a974    c7401400000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516304]         // 0x0086a97b    8b1504c3ed00
                         mov                ecx, 0x3e800000                                // 0x0086a981    b90000803e
                         mov                dword ptr [edx], ecx                           // 0x0086a986    890a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516304]         // 0x0086a988    a104c3ed00
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x0086a98d    894804
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516304]         // 0x0086a990    8b1504c3ed00
                         mov                eax, 0x3efccccd                                // 0x0086a996    b8cdccfc3e
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x0086a99b    894208
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516304]         // 0x0086a99e    8b1504c3ed00
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x0086a9a4    894a0c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516304]         // 0x0086a9a7    8b1504c3ed00
                         {disp8} mov        dword ptr [edx + 0x10], ecx                    // 0x0086a9ad    894a10
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516304]         // 0x0086a9b0    8b0d04c3ed00
                         {disp8} mov        dword ptr [ecx + 0x14], eax                    // 0x0086a9b6    894114
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516304]         // 0x0086a9b9    8b1504c3ed00
                         {disp8} mov        dword ptr [edx + 0x18], eax                    // 0x0086a9bf    894218
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516304]         // 0x0086a9c2    8b0d04c3ed00
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                    // 0x0086a9c8    89411c
                         push               esi                                            // 0x0086a9cb    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x0086a9cc    8b742410
                         mov                edx, dword ptr [esi]                           // 0x0086a9d0    8b16
                         {disp8} mov        dword ptr [esp + 0x04], edx                    // 0x0086a9d2    89542404
                         {disp8} mov        ecx, dword ptr [esp + 0x06]                    // 0x0086a9d6    8b4c2406
                         and                ecx, 0x000000ff                                // 0x0086a9da    81e1ff000000
                         mov                eax, 0x2aaaaaab                                // 0x0086a9e0    b8abaaaa2a
                         imul               ecx                                            // 0x0086a9e5    f7e9
                         mov.s              eax, edx                                       // 0x0086a9e7    8bc2
                         shr                eax, 0x1f                                      // 0x0086a9e9    c1e81f
                         add.s              edx, eax                                       // 0x0086a9ec    03d0
                         {disp8} mov        byte ptr [esp + 0x06], dl                      // 0x0086a9ee    88542406
                         {disp8} mov        ecx, dword ptr [esp + 0x05]                    // 0x0086a9f2    8b4c2405
                         and                ecx, 0x000000ff                                // 0x0086a9f6    81e1ff000000
                         mov                eax, 0x66666667                                // 0x0086a9fc    b867666666
                         imul               ecx                                            // 0x0086aa01    f7e9
                         sar                edx, 1                                         // 0x0086aa03    d1fa
                         mov.s              ecx, edx                                       // 0x0086aa05    8bca
                         shr                ecx, 0x1f                                      // 0x0086aa07    c1e91f
                         add.s              edx, ecx                                       // 0x0086aa0a    03d1
                         {disp8} mov        byte ptr [esp + 0x05], dl                      // 0x0086aa0c    88542405
                         shr                byte ptr [esp + 4], 2                          // 0x0086aa10    c06c240402
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516328]         // 0x0086aa15    8b1528c3ed00
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x0086aa1b    8b442404
                         mov                dword ptr [edx], eax                           // 0x0086aa1f    8902
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516328]         // 0x0086aa21    8b0d28c3ed00
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x0086aa27    894104
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516328]         // 0x0086aa2a    8b1528c3ed00
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x0086aa30    894208
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516328]         // 0x0086aa33    8b0d28c3ed00
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                    // 0x0086aa39    89410c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086aa3c    8b442414
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x51631c]         // 0x0086aa40    8b0d1cc3ed00
                         {disp8} lea        edx, dword ptr [eax + 0x18]                    // 0x0086aa46    8d5018
                         {disp8} fld        dword ptr [eax + 0x0c]                         // 0x0086aa49    d9400c
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x0086aa4c    89542410
                         fadd               dword ptr [eax]                                // 0x0086aa50    d800
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aa52    d80dec788c00
                         {disp8} fsubr      dword ptr [eax + 0x24]                         // 0x0086aa58    d86824
                         fstp               dword ptr [ecx]                                // 0x0086aa5b    d919
                         {disp8} fld        dword ptr [eax + 0x04]                         // 0x0086aa5d    d94004
                         {disp8} fadd       dword ptr [eax + 0x10]                         // 0x0086aa60    d84010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aa63    d80dec788c00
                         {disp8} fsubr      dword ptr [eax + 0x28]                         // 0x0086aa69    d86828
                         {disp8} fstp       dword ptr [ecx + 0x04]                         // 0x0086aa6c    d95904
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x0086aa6f    d94008
                         {disp8} fadd       dword ptr [eax + 0x14]                         // 0x0086aa72    d84014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aa75    d80dec788c00
                         {disp8} fsubr      dword ptr [eax + 0x2c]                         // 0x0086aa7b    d8682c
                         push               0x0                                            // 0x0086aa7e    6a00
                         {disp8} fstp       dword ptr [ecx + 0x08]                         // 0x0086aa80    d95908
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x51631c]         // 0x0086aa83    8b0d1cc3ed00
                         fld                dword ptr [eax]                                // 0x0086aa89    d900
                         add                ecx, 0xc                                       // 0x0086aa8b    83c10c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aa8e    d80dec788c00
                         {disp8} fld        dword ptr [eax + 0x0c]                         // 0x0086aa94    d9400c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aa97    d80dec788c00
                         fsubp              st(1), st                                      // 0x0086aa9d    dee9
                         {disp8} fadd       dword ptr [eax + 0x24]                         // 0x0086aa9f    d84024
                         fstp               dword ptr [ecx]                                // 0x0086aaa2    d919
                         {disp8} fld        dword ptr [eax + 0x04]                         // 0x0086aaa4    d94004
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aaa7    d80dec788c00
                         {disp8} fld        dword ptr [eax + 0x10]                         // 0x0086aaad    d94010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aab0    d80dec788c00
                         fsubp              st(1), st                                      // 0x0086aab6    dee9
                         {disp8} fadd       dword ptr [eax + 0x28]                         // 0x0086aab8    d84028
                         {disp8} fstp       dword ptr [ecx + 0x04]                         // 0x0086aabb    d95904
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x0086aabe    d94008
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aac1    d80dec788c00
                         {disp8} fld        dword ptr [eax + 0x14]                         // 0x0086aac7    d94014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aaca    d80dec788c00
                         fsubp              st(1), st                                      // 0x0086aad0    dee9
                         {disp8} fadd       dword ptr [eax + 0x2c]                         // 0x0086aad2    d8402c
                         {disp8} fstp       dword ptr [ecx + 0x08]                         // 0x0086aad5    d95908
                         {disp32} mov       edx, dword ptr [data_bytes + 0x51631c]         // 0x0086aad8    8b151cc3ed00
                         {disp8} fld        dword ptr [eax + 0x0c]                         // 0x0086aade    d9400c
                         {disp8} lea        ecx, dword ptr [edx + 0x18]                    // 0x0086aae1    8d4a18
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aae4    d80dec788c00
                         fld                dword ptr [eax]                                // 0x0086aaea    d900
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aaec    d80dec788c00
                         fsubp              st(1), st                                      // 0x0086aaf2    dee9
                         {disp8} fadd       dword ptr [eax + 0x24]                         // 0x0086aaf4    d84024
                         fstp               dword ptr [ecx]                                // 0x0086aaf7    d919
                         {disp8} fld        dword ptr [eax + 0x10]                         // 0x0086aaf9    d94010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086aafc    d80dec788c00
                         {disp8} fld        dword ptr [eax + 0x04]                         // 0x0086ab02    d94004
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086ab05    d80dec788c00
                         fsubp              st(1), st                                      // 0x0086ab0b    dee9
                         {disp8} fadd       dword ptr [eax + 0x28]                         // 0x0086ab0d    d84028
                         {disp8} fstp       dword ptr [ecx + 0x04]                         // 0x0086ab10    d95904
                         {disp8} fld        dword ptr [eax + 0x14]                         // 0x0086ab13    d94014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086ab16    d80dec788c00
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x0086ab1c    d94008
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086ab1f    d80dec788c00
                         fsubp              st(1), st                                      // 0x0086ab25    dee9
                         {disp8} fadd       dword ptr [eax + 0x2c]                         // 0x0086ab27    d8402c
                         {disp8} fstp       dword ptr [ecx + 0x08]                         // 0x0086ab2a    d95908
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x51631c]         // 0x0086ab2d    8b0d1cc3ed00
                         {disp8} fld        dword ptr [eax + 0x0c]                         // 0x0086ab33    d9400c
                         add                ecx, 0x24                                      // 0x0086ab36    83c124
                         fadd               dword ptr [eax]                                // 0x0086ab39    d800
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086ab3b    d80dec788c00
                         {disp8} fadd       dword ptr [eax + 0x24]                         // 0x0086ab41    d84024
                         fstp               dword ptr [ecx]                                // 0x0086ab44    d919
                         {disp8} fld        dword ptr [eax + 0x04]                         // 0x0086ab46    d94004
                         {disp8} fadd       dword ptr [eax + 0x10]                         // 0x0086ab49    d84010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086ab4c    d80dec788c00
                         {disp8} fadd       dword ptr [eax + 0x28]                         // 0x0086ab52    d84028
                         {disp8} fstp       dword ptr [ecx + 0x04]                         // 0x0086ab55    d95904
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x0086ab58    d94008
                         {disp8} fadd       dword ptr [eax + 0x14]                         // 0x0086ab5b    d84014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8ec]              // 0x0086ab5e    d80dec788c00
                         {disp8} fadd       dword ptr [eax + 0x2c]                         // 0x0086ab64    d8402c
                         {disp8} fstp       dword ptr [ecx + 0x08]                         // 0x0086ab67    d95908
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516364]         // 0x0086ab6a    8b1564c3ed00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516310]         // 0x0086ab70    a110c3ed00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516304]         // 0x0086ab75    8b0d04c3ed00
                         push               edx                                            // 0x0086ab7b    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516328]         // 0x0086ab7c    8b1528c3ed00
                         push               eax                                            // 0x0086ab82    50
                         push               0x2                                            // 0x0086ab83    6a02
                         push               ecx                                            // 0x0086ab85    51
                         push               edx                                            // 0x0086ab86    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x51631c]         // 0x0086ab87    8b151cc3ed00
                         mov                ecx, 0x00000004                                // 0x0086ab8d    b904000000
                         call               _jmp_addr_0x0081c090                           // 0x0086ab92    e8f914fbff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc728]         // 0x0086ab97    a12827fa00
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x0086ab9c    8b4c2418
                         add                eax, 0x14                                      // 0x0086aba0    83c014
                         mov                edx, dword ptr [ecx]                           // 0x0086aba3    8b11
                         mov                dword ptr [eax], edx                           // 0x0086aba5    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x0086aba7    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x0086abaa    895004
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                    // 0x0086abad    8b5108
                         {disp8} mov        dword ptr [eax + 0x08], edx                    // 0x0086abb0    895008
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                    // 0x0086abb3    8b510c
                         {disp8} mov        dword ptr [eax + 0x0c], edx                    // 0x0086abb6    89500c
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                    // 0x0086abb9    8b5110
                         {disp8} mov        dword ptr [eax + 0x10], edx                    // 0x0086abbc    895010
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                    // 0x0086abbf    8b5114
                         {disp8} mov        dword ptr [eax + 0x14], edx                    // 0x0086abc2    895014
                         {disp8} mov        edx, dword ptr [ecx + 0x18]                    // 0x0086abc5    8b5118
                         {disp8} mov        dword ptr [eax + 0x18], edx                    // 0x0086abc8    895018
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                    // 0x0086abcb    8b511c
                         {disp8} mov        dword ptr [eax + 0x1c], edx                    // 0x0086abce    89501c
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                    // 0x0086abd1    8b5120
                         {disp8} mov        dword ptr [eax + 0x20], edx                    // 0x0086abd4    895020
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                    // 0x0086abd7    8b5124
                         {disp8} mov        dword ptr [eax + 0x24], edx                    // 0x0086abda    895024
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                    // 0x0086abdd    8b5128
                         {disp8} mov        dword ptr [eax + 0x28], edx                    // 0x0086abe0    895028
                         {disp8} mov        ecx, dword ptr [ecx + 0x2c]                    // 0x0086abe3    8b492c
                         {disp8} mov        dword ptr [eax + 0x2c], ecx                    // 0x0086abe6    89482c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086abe9    8b0d2827fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086abef    8b01
                         mov                edx, dword ptr [esi]                           // 0x0086abf1    8b16
                         push               0x0                                            // 0x0086abf3    6a00
                         call               dword ptr [eax + 0x2c]                         // 0x0086abf5    ff502c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086abf8    8b0d2827fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086abfe    8b01
                         mov                edx, 0x00000001                                // 0x0086ac00    ba01000000
                         call               dword ptr [eax + 0x48]                         // 0x0086ac05    ff5048
                         {disp32} mov       al, byte ptr [data_bytes + 0x5dc774]           // 0x0086ac08    a07427fa00
                         test               al, al                                         // 0x0086ac0d    84c0
                         {disp8} jne        _jmp_addr_0x0086ac4c                           // 0x0086ac0f    753b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086ac11    8b0d2827fa00
                         mov                edx, dword ptr [ecx]                           // 0x0086ac17    8b11
                         call               dword ptr [edx + 0x108]                        // 0x0086ac19    ff9208010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086ac1f    8b0d2827fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086ac25    8b01
                         mov                edx, dword ptr [esi]                           // 0x0086ac27    8b16
                         push               0x0                                            // 0x0086ac29    6a00
                         call               dword ptr [eax + 0x2c]                         // 0x0086ac2b    ff502c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086ac2e    8b0d2827fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086ac34    8b01
                         mov                edx, 0x00000001                                // 0x0086ac36    ba01000000
                         call               dword ptr [eax + 0x48]                         // 0x0086ac3b    ff5048
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086ac3e    8b0d2827fa00
                         mov                edx, dword ptr [ecx]                           // 0x0086ac44    8b11
                         call               dword ptr [edx + 0x118]                        // 0x0086ac46    ff9218010000
_jmp_addr_0x0086ac4c:    pop                esi                                            // 0x0086ac4c    5e
                         add                esp, 0x08                                      // 0x0086ac4d    83c408
                         ret                                                               // 0x0086ac50    c3
                         nop                                                               // 0x0086ac51    90
                         nop                                                               // 0x0086ac52    90
                         nop                                                               // 0x0086ac53    90
                         nop                                                               // 0x0086ac54    90
                         nop                                                               // 0x0086ac55    90
                         nop                                                               // 0x0086ac56    90
                         nop                                                               // 0x0086ac57    90
                         nop                                                               // 0x0086ac58    90
                         nop                                                               // 0x0086ac59    90
                         nop                                                               // 0x0086ac5a    90
                         nop                                                               // 0x0086ac5b    90
                         nop                                                               // 0x0086ac5c    90
                         nop                                                               // 0x0086ac5d    90
                         nop                                                               // 0x0086ac5e    90
                         nop                                                               // 0x0086ac5f    90
_jmp_addr_0x0086ac60:    sub                esp, 0x60                                      // 0x0086ac60    83ec60
                         {disp8} mov        eax, dword ptr [esp + 0x64]                    // 0x0086ac63    8b442464
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd28]              // 0x0086ac67    d905281dea00
                         fmul               dword ptr [eax]                                // 0x0086ac6d    d808
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd40]              // 0x0086ac6f    d905401dea00
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x0086ac75    d84808
                         faddp              st(1), st                                      // 0x0086ac78    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd34]              // 0x0086ac7a    d905341dea00
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x0086ac80    d84804
                         faddp              st(1), st                                      // 0x0086ac83    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4dbd4c]              // 0x0086ac85    d8054c1dea00
                         {disp8} fst        dword ptr [esp + 0x00]                         // 0x0086ac8b    d9542400
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd2c]              // 0x0086ac8f    d9052c1dea00
                         fmul               dword ptr [eax]                                // 0x0086ac95    d808
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd44]              // 0x0086ac97    d905441dea00
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x0086ac9d    d84808
                         faddp              st(1), st                                      // 0x0086aca0    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd38]              // 0x0086aca2    d905381dea00
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x0086aca8    d84804
                         faddp              st(1), st                                      // 0x0086acab    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4dbd50]              // 0x0086acad    d805501dea00
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x0086acb3    d95c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x0086acb7    8b4c2404
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd30]              // 0x0086acbb    d905301dea00
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x0086acc1    894c2410
                         fmul               dword ptr [eax]                                // 0x0086acc5    d808
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd48]              // 0x0086acc7    d905481dea00
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x0086accd    d84808
                         faddp              st(1), st                                      // 0x0086acd0    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd3c]              // 0x0086acd2    d9053c1dea00
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x0086acd8    d84804
                         {disp8} mov        eax, dword ptr [esp + 0x00]                    // 0x0086acdb    8b442400
                         {disp8} mov        dword ptr [esp + 0x0c], eax                    // 0x0086acdf    8944240c
                         faddp              st(1), st                                      // 0x0086ace3    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4dbd54]              // 0x0086ace5    d805541dea00
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x0086aceb    d95c2408
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x0086acef    8b542408
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x0086acf3    89542414
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x0086acf7    d81598a38a00
                         fnstsw             ax                                             // 0x0086acfd    dfe0
                         test               ah, 0x40                                       // 0x0086acff    f6c440
                         {disp8} je         _jmp_addr_0x0086ad26                           // 0x0086ad02    7422
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086ad04    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086ad08    d81d98a38a00
                         fnstsw             ax                                             // 0x0086ad0e    dfe0
                         test               ah, 0x40                                       // 0x0086ad10    f6c440
                         {disp8} je         _jmp_addr_0x0086ad26                           // 0x0086ad13    7411
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086ad15    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086ad19    d81d98a38a00
                         fnstsw             ax                                             // 0x0086ad1f    dfe0
                         test               ah, 0x40                                       // 0x0086ad21    f6c440
                         {disp8} jne        _jmp_addr_0x0086ad5e                           // 0x0086ad24    7538
_jmp_addr_0x0086ad26:    {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086ad26    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x0086ad2a    d84c2408
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086ad2e    d9442404
                         {disp8} fmul       dword ptr [esp + 0x04]                         // 0x0086ad32    d84c2404
                         faddp              st(1), st                                      // 0x0086ad36    dec1
                         fld                st(1)                                          // 0x0086ad38    d9c1
                         fmul               st, st(2)                                      // 0x0086ad3a    d8ca
                         faddp              st(1), st                                      // 0x0086ad3c    dec1
                         fsqrt                                                             // 0x0086ad3e    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                    // 0x0086ad40    d83d90a38a00
                         fld                st(0)                                          // 0x0086ad46    d9c0
                         fmul               st, st(2)                                      // 0x0086ad48    d8ca
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x0086ad4a    d95c240c
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086ad4e    d9442404
                         fmul               st, st(1)                                      // 0x0086ad52    d8c9
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x0086ad54    d95c2410
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x0086ad58    d84c2408
                         {disp8} jmp        _jmp_addr_0x0086ad62                           // 0x0086ad5c    eb04
_jmp_addr_0x0086ad5e:    {disp8} fld        dword ptr [esp + 0x14]                         // 0x0086ad5e    d9442414
_jmp_addr_0x0086ad62:    fld                st(0)                                          // 0x0086ad62    d9c0
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000             // 0x0086ad64    c744246400000000
                         {disp8} fsub       dword ptr [esp + 0x64]                         // 0x0086ad6c    d8642464
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086ad70    d90598a38a00
                         {disp8} fld        dword ptr [esp + 0x64]                         // 0x0086ad76    d9442464
                         {disp8} fsub       dword ptr [esp + 0x0c]                         // 0x0086ad7a    d864240c
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x0086ad7e    d95c2420
                         fld                st(1)                                          // 0x0086ad82    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086ad84    d81d98a38a00
                         fnstsw             ax                                             // 0x0086ad8a    dfe0
                         test               ah, 0x40                                       // 0x0086ad8c    f6c440
                         {disp8} je         _jmp_addr_0x0086adaf                           // 0x0086ad8f    741e
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x0086ad91    d81598a38a00
                         fnstsw             ax                                             // 0x0086ad97    dfe0
                         test               ah, 0x40                                       // 0x0086ad99    f6c440
                         {disp8} je         _jmp_addr_0x0086adaf                           // 0x0086ad9c    7411
                         {disp8} fld        dword ptr [esp + 0x20]                         // 0x0086ad9e    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086ada2    d81d98a38a00
                         fnstsw             ax                                             // 0x0086ada8    dfe0
                         test               ah, 0x40                                       // 0x0086adaa    f6c440
                         {disp8} jne        _jmp_addr_0x0086addb                           // 0x0086adad    752c
_jmp_addr_0x0086adaf:    {disp8} fld        dword ptr [esp + 0x20]                         // 0x0086adaf    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                         // 0x0086adb3    d84c2420
                         fld                st(1)                                          // 0x0086adb7    d9c1
                         fmul               st, st(2)                                      // 0x0086adb9    d8ca
                         faddp              st(1), st                                      // 0x0086adbb    dec1
                         fld                st(2)                                          // 0x0086adbd    d9c2
                         fmul               st, st(3)                                      // 0x0086adbf    d8cb
                         faddp              st(1), st                                      // 0x0086adc1    dec1
                         fsqrt                                                             // 0x0086adc3    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                    // 0x0086adc5    d83d90a38a00
                         fld                st(0)                                          // 0x0086adcb    d9c0
                         fmulp              st(3), st                                      // 0x0086adcd    decb
                         fld                st(0)                                          // 0x0086adcf    d9c0
                         fmulp              st(2), st                                      // 0x0086add1    deca
                         {disp8} fmul       dword ptr [esp + 0x20]                         // 0x0086add3    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x0086add7    d95c2420
_jmp_addr_0x0086addb:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086addb    d9442410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x0086addf    8b442420
                         {disp8} fmul       dword ptr [esp + 0x20]                         // 0x0086ade3    d84c2420
                         push               esi                                            // 0x0086ade7    56
                         {disp8} mov        esi, dword ptr [esp + 0x6c]                    // 0x0086ade8    8b74246c
                         fld                st(3)                                          // 0x0086adec    d9c3
                         fmul               st, st(2)                                      // 0x0086adee    d8ca
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x0086adf0    894608
                         fsubp              st(1), st                                      // 0x0086adf3    dee9
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x0086adf5    d95c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x0086adf9    8b4c2428
                         fld                st(2)                                          // 0x0086adfd    d9c2
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                    // 0x0086adff    894e0c
                         fmul               st, st(2)                                      // 0x0086ae02    d8ca
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0086ae04    8b4c2410
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086ae08    d9442410
                         {disp8} mov        dword ptr [esi + 0x18], ecx                    // 0x0086ae0c    894e18
                         {disp8} fmul       dword ptr [esp + 0x24]                         // 0x0086ae0f    d84c2424
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x0086ae13    8b4c240c
                         {disp8} mov        dword ptr [esi + 0x2c], ecx                    // 0x0086ae17    894e2c
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                    // 0x0086ae1a    8d4c2434
                         fsubp              st(1), st                                      // 0x0086ae1e    dee9
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x0086ae20    d95c242c
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                    // 0x0086ae24    8b54242c
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086ae28    d9442410
                         {disp8} mov        dword ptr [esi + 0x10], edx                    // 0x0086ae2c    895610
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x0086ae2f    8b542414
                         fmul               st, st(1)                                      // 0x0086ae33    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x0086ae35    d9442414
                         {disp8} mov        dword ptr [esi + 0x1c], edx                    // 0x0086ae39    89561c
                         fmul               st, st(3)                                      // 0x0086ae3c    d8cb
                         mov                edx, 0x00ea1d28                                // 0x0086ae3e    ba281dea00
                         fsubp              st(1), st                                      // 0x0086ae43    dee9
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x0086ae45    d95c2430
                         {disp8} mov        eax, dword ptr [esp + 0x30]                    // 0x0086ae49    8b442430
                         fxch               st(1)                                          // 0x0086ae4d    d9c9
                         {disp8} mov        dword ptr [esi + 0x14], eax                    // 0x0086ae4f    894614
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x0086ae52    8b442408
                         fstp               dword ptr [esi]                                // 0x0086ae56    d91e
                         {disp8} mov        dword ptr [esi + 0x28], eax                    // 0x0086ae58    894628
                         {disp8} fstp       dword ptr [esi + 0x04]                         // 0x0086ae5b    d95e04
                         {disp8} fstp       dword ptr [esi + 0x20]                         // 0x0086ae5e    d95e20
                         {disp8} fstp       dword ptr [esi + 0x24]                         // 0x0086ae61    d95e24
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x0086ae64    e82704f9ff
                         {disp8} lea        edx, dword ptr [esp + 0x34]                    // 0x0086ae69    8d542434
                         mov.s              ecx, esi                                       // 0x0086ae6d    8bce
                         call               _jmp_addr_0x007faff0                           // 0x0086ae6f    e87c01f9ff
                         {disp32} fld       dword ptr [data_bytes + 0x5dc750]              // 0x0086ae74    d9055027fa00
                         fld                st(0)                                          // 0x0086ae7a    d9c0
                         mov.s              edx, esi                                       // 0x0086ae7c    8bd6
                         fmul               dword ptr [esi]                                // 0x0086ae7e    d80e
                         fstp               dword ptr [esi]                                // 0x0086ae80    d91e
                         fld                st(0)                                          // 0x0086ae82    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                         // 0x0086ae84    d84e04
                         {disp8} fstp       dword ptr [esi + 0x04]                         // 0x0086ae87    d95e04
                         fld                st(0)                                          // 0x0086ae8a    d9c0
                         {disp8} fmul       dword ptr [esi + 0x08]                         // 0x0086ae8c    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                         // 0x0086ae8f    d95e08
                         fld                st(0)                                          // 0x0086ae92    d9c0
                         {disp8} fmul       dword ptr [esi + 0x0c]                         // 0x0086ae94    d84e0c
                         {disp8} fstp       dword ptr [esi + 0x0c]                         // 0x0086ae97    d95e0c
                         fld                st(0)                                          // 0x0086ae9a    d9c0
                         {disp8} fmul       dword ptr [esi + 0x10]                         // 0x0086ae9c    d84e10
                         {disp8} fstp       dword ptr [esi + 0x10]                         // 0x0086ae9f    d95e10
                         fld                st(0)                                          // 0x0086aea2    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                         // 0x0086aea4    d84e14
                         {disp8} fstp       dword ptr [esi + 0x14]                         // 0x0086aea7    d95e14
                         fld                st(0)                                          // 0x0086aeaa    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                         // 0x0086aeac    d84e18
                         {disp8} fstp       dword ptr [esi + 0x18]                         // 0x0086aeaf    d95e18
                         fld                st(0)                                          // 0x0086aeb2    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                         // 0x0086aeb4    d84e1c
                         {disp8} fstp       dword ptr [esi + 0x1c]                         // 0x0086aeb7    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x20]                         // 0x0086aeba    d84e20
                         {disp8} fstp       dword ptr [esi + 0x20]                         // 0x0086aebd    d95e20
                         {disp8} mov        esi, dword ptr [esp + 0x70]                    // 0x0086aec0    8b742470
                         mov.s              ecx, esi                                       // 0x0086aec4    8bce
                         call               _jmp_addr_0x005feda0                           // 0x0086aec6    e8d53ed9ff
                         {disp8} lea        edx, dword ptr [esp + 0x68]                    // 0x0086aecb    8d542468
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000001             // 0x0086aecf    c744246801000000
                         push               edx                                            // 0x0086aed7    52
                         call               _jmp_addr_0x0086a7f0                           // 0x0086aed8    e813f9ffff
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc724]              // 0x0086aedd    d91d2427fa00
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                    // 0x0086aee3    8b44246c
                         add                esp, 0x04                                      // 0x0086aee7    83c404
                         test               eax, eax                                       // 0x0086aeea    85c0
                         {disp8} je         _jmp_addr_0x0086aef3                           // 0x0086aeec    7405
                         call               _jmp_addr_0x0086a890                           // 0x0086aeee    e89df9ffff
_jmp_addr_0x0086aef3:    {disp32} mov       al, byte ptr [data_bytes + 0x5dc774]           // 0x0086aef3    a07427fa00
                         neg                al                                             // 0x0086aef8    f6d8
                         push               ecx                                            // 0x0086aefa    51
                         mov.s              ecx, esi                                       // 0x0086aefb    8bce
                         sbb.s              eax, eax                                       // 0x0086aefd    1bc0
                         and                eax, 0xfffffffe                                // 0x0086aeff    83e0fe
                         inc                eax                                            // 0x0086af02    40
                         {disp8} mov        dword ptr [esp + 0x70], eax                    // 0x0086af03    89442470
                         {disp8} fild       dword ptr [esp + 0x70]                         // 0x0086af07    db442470
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabf0]              // 0x0086af0b    d80df03b9a00
                         fstp               dword ptr [esp]                                // 0x0086af11    d91c24
                         call               _jmp_addr_0x0086afa0                           // 0x0086af14    e887000000
                         {disp32} fld       dword ptr [data_bytes + 0x5dc724]              // 0x0086af19    d9052427fa00
                         push               ecx                                            // 0x0086af1f    51
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]              // 0x0086af20    d805a0368c00
                         mov.s              ecx, esi                                       // 0x0086af26    8bce
                         fstp               dword ptr [esp]                                // 0x0086af28    d91c24
                         call               _jmp_addr_0x005198f0                           // 0x0086af2b    e8c0e9caff
                         fld                dword ptr [esi]                                // 0x0086af30    d906
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af32    d80d20c48a00
                         fstp               dword ptr [esi]                                // 0x0086af38    d91e
                         {disp8} fld        dword ptr [esi + 0x04]                         // 0x0086af3a    d94604
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af3d    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x04]                         // 0x0086af43    d95e04
                         {disp8} fld        dword ptr [esi + 0x08]                         // 0x0086af46    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af49    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x08]                         // 0x0086af4f    d95e08
                         {disp8} fld        dword ptr [esi + 0x0c]                         // 0x0086af52    d9460c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af55    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x0c]                         // 0x0086af5b    d95e0c
                         {disp8} fld        dword ptr [esi + 0x10]                         // 0x0086af5e    d94610
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af61    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x10]                         // 0x0086af67    d95e10
                         {disp8} fld        dword ptr [esi + 0x14]                         // 0x0086af6a    d94614
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af6d    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x14]                         // 0x0086af73    d95e14
                         {disp8} fld        dword ptr [esi + 0x18]                         // 0x0086af76    d94618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af79    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x18]                         // 0x0086af7f    d95e18
                         {disp8} fld        dword ptr [esi + 0x1c]                         // 0x0086af82    d9461c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af85    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x1c]                         // 0x0086af8b    d95e1c
                         {disp8} fld        dword ptr [esi + 0x20]                         // 0x0086af8e    d94620
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3420]               // 0x0086af91    d80d20c48a00
                         {disp8} fstp       dword ptr [esi + 0x20]                         // 0x0086af97    d95e20
                         pop                esi                                            // 0x0086af9a    5e
                         add                esp, 0x60                                      // 0x0086af9b    83c460
                         ret                                                               // 0x0086af9e    c3
                         nop                                                               // 0x0086af9f    90
_jmp_addr_0x0086afa0:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086afa0    d9442404
                         fcos                                                              // 0x0086afa4    d9ff
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086afa6    d9442404
                         fsin                                                              // 0x0086afaa    d9fe
                         fld                st(0)                                          // 0x0086afac    d9c0
                         fmul               dword ptr [ecx]                                // 0x0086afae    d809
                         fld                st(2)                                          // 0x0086afb0    d9c2
                         fmul               dword ptr [ecx]                                // 0x0086afb2    d809
                         fld                st(2)                                          // 0x0086afb4    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x0c]                         // 0x0086afb6    d8490c
                         fsubp              st(1), st                                      // 0x0086afb9    dee9
                         fstp               dword ptr [ecx]                                // 0x0086afbb    d919
                         fld                st(2)                                          // 0x0086afbd    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x0c]                         // 0x0086afbf    d8490c
                         fadd               st, st(1)                                      // 0x0086afc2    d8c1
                         {disp8} fstp       dword ptr [ecx + 0x0c]                         // 0x0086afc4    d9590c
                         fstp               st(0)                                          // 0x0086afc7    ddd8
                         fld                st(0)                                          // 0x0086afc9    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x04]                         // 0x0086afcb    d84904
                         fld                st(2)                                          // 0x0086afce    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x04]                         // 0x0086afd0    d84904
                         fld                st(2)                                          // 0x0086afd3    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x10]                         // 0x0086afd5    d84910
                         fsubp              st(1), st                                      // 0x0086afd8    dee9
                         {disp8} fstp       dword ptr [ecx + 0x04]                         // 0x0086afda    d95904
                         fld                st(2)                                          // 0x0086afdd    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x10]                         // 0x0086afdf    d84910
                         fadd               st, st(1)                                      // 0x0086afe2    d8c1
                         {disp8} fstp       dword ptr [ecx + 0x10]                         // 0x0086afe4    d95910
                         fstp               st(0)                                          // 0x0086afe7    ddd8
                         fld                st(0)                                          // 0x0086afe9    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x08]                         // 0x0086afeb    d84908
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x0086afee    d95c2404
                         fld                st(1)                                          // 0x0086aff2    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x08]                         // 0x0086aff4    d84908
                         fxch               st(1)                                          // 0x0086aff7    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x14]                         // 0x0086aff9    d84914
                         fsubp              st(1), st                                      // 0x0086affc    dee9
                         {disp8} fstp       dword ptr [ecx + 0x08]                         // 0x0086affe    d95908
                         {disp8} fmul       dword ptr [ecx + 0x14]                         // 0x0086b001    d84914
                         {disp8} fadd       dword ptr [esp + 0x04]                         // 0x0086b004    d8442404
                         {disp8} fstp       dword ptr [ecx + 0x14]                         // 0x0086b008    d95914
                         ret                0x0004                                         // 0x0086b00b    c20400
                         nop                                                               // 0x0086b00e    90
                         nop                                                               // 0x0086b00f    90
_jmp_addr_0x0086b010:    sub                esp, 0x0000009c                                // 0x0086b010    81ec9c000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x51737c]         // 0x0086b016    8b0d7cd3ed00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517378]         // 0x0086b01c    a178d3ed00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x517380]         // 0x0086b021    8b1580d3ed00
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x0086b027    894c2410
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086b02b    d9442410
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x0086b02f    d80db4a38a00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                    // 0x0086b035    8944240c
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x0086b039    89542414
                         {disp32} fsub      dword ptr [rdata_bytes + 0x82694]              // 0x0086b03d    d82594b69200
                         call               _jmp_addr_0x007a1400                           // 0x0086b043    e8b863f3ff
                         cmp                eax, 0x000000c8                                // 0x0086b048    3dc8000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x0086b04d    89442408
                         {disp8} jle        _jmp_addr_0x0086b05b                           // 0x0086b051    7e08
                         {disp8} mov        dword ptr [esp + 0x08], 0x000000c8             // 0x0086b053    c7442408c8000000
_jmp_addr_0x0086b05b:    {disp32} fld       dword ptr [data_bytes + 0x5dc754]              // 0x0086b05b    d9055427fa00
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086b061    d81d98a38a00
                         fnstsw             ax                                             // 0x0086b067    dfe0
                         test               ah, 0x41                                       // 0x0086b069    f6c441
                         {disp8} jne        _jmp_addr_0x0086b098                           // 0x0086b06c    752a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x271204]         // 0x0086b06e    a10472c300
                         test               eax, eax                                       // 0x0086b073    85c0
                         {disp8} je         _jmp_addr_0x0086b098                           // 0x0086b075    7421
                         {disp8} fild       dword ptr [esp + 0x08]                         // 0x0086b077    db442408
                         {disp32} fld       dword ptr [data_bytes + 0x5dc754]              // 0x0086b07b    d9055427fa00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c70]              // 0x0086b081    d80d702c8c00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x0086b087    d80590a38a00
                         fdivp              st(1), st                                      // 0x0086b08d    def9
                         call               _jmp_addr_0x007a1400                           // 0x0086b08f    e86c63f3ff
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x0086b094    89442408
_jmp_addr_0x0086b098:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x0086b098    8b442408
                         push               ebx                                            // 0x0086b09c    53
                         push               ebp                                            // 0x0086b09d    55
                         push               esi                                            // 0x0086b09e    56
                         push               edi                                            // 0x0086b09f    57
                         xor.s              edi, edi                                       // 0x0086b0a0    33ff
                         cmp.s              eax, edi                                       // 0x0086b0a2    3bc7
                         {disp8} jle        _jmp_addr_0x0086b0f6                           // 0x0086b0a4    7e50
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]              // 0x0086b0a6    d905b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]         // 0x0086b0ac    a1bc1dea00
                         {disp8} fld        dword ptr [esp + 0x1c]                         // 0x0086b0b1    d944241c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]         // 0x0086b0b5    8b0dc01dea00
                         fadd               st, st(1)                                      // 0x0086b0bb    d8c1
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x0086b0bd    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], ecx                    // 0x0086b0c1    894c2430
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc728]         // 0x0086b0c5    8b0d2827fa00
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x0086b0cb    d95c241c
                         mov                edx, 0x00000001                                // 0x0086b0cf    ba01000000
                         fstp               st(0)                                          // 0x0086b0d4    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x0086b0d6    d944242c
                         {disp8} fadd       dword ptr [esp + 0x20]                         // 0x0086b0da    d8442420
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x0086b0de    d95c2420
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x0086b0e2    d9442430
                         {disp8} fadd       dword ptr [esp + 0x24]                         // 0x0086b0e6    d8442424
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x0086b0ea    d95c2424
                         mov                eax, dword ptr [ecx]                           // 0x0086b0ee    8b01
                         call               dword ptr [eax + 0xa0]                         // 0x0086b0f0    ff90a0000000
_jmp_addr_0x0086b0f6:    {disp32} fld       dword ptr [data_bytes + 0x5dc758]              // 0x0086b0f6    d9055827fa00
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086b0fc    d81d98a38a00
                         fnstsw             ax                                             // 0x0086b102    dfe0
                         test               ah, 0x01                                       // 0x0086b104    f6c401
                         {disp8} je         _jmp_addr_0x0086b118                           // 0x0086b107    740f
                         {disp32} mov       dword ptr [data_bytes + 0x5dc758], 0x00000000  // 0x0086b109    c7055827fa0000000000
                         {disp32} jmp       _jmp_addr_0x0086b394                           // 0x0086b113    e97c020000
_jmp_addr_0x0086b118:    {disp32} fld       dword ptr [data_bytes + 0x5dc758]              // 0x0086b118    d9055827fa00
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]               // 0x0086b11e    d81d78b48a00
                         fnstsw             ax                                             // 0x0086b124    dfe0
                         test               ah, 0x41                                       // 0x0086b126    f6c441
                         {disp32} jne       _jmp_addr_0x0086b37d                           // 0x0086b129    0f854e020000
                         {disp32} mov       dword ptr [data_bytes + 0x5dc758], 0x40000000  // 0x0086b12f    c7055827fa0000000040
_jmp_addr_0x0086b139:    {disp32} fld       dword ptr [data_bytes + 0x5dc758]              // 0x0086b139    d9055827fa00
                         {disp32} fsub      dword ptr [_rdata_float1p0]                    // 0x0086b13f    d82590a38a00
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086b145    d80d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x0086b14b    e8b062f3ff
                         {disp8} mov        dword ptr [esp + 0x34], eax                    // 0x0086b150    89442434
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000001             // 0x0086b154    c744243801000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000002             // 0x0086b15c    c744241002000000
_jmp_addr_0x0086b164:    {disp8} mov        ecx, dword ptr [esp + 0x34]                    // 0x0086b164    8b4c2434
                         mov                eax, 0x000000ff                                // 0x0086b168    b8ff000000
                         sub.s              eax, ecx                                       // 0x0086b16d    2bc1
                         {disp8} mov        dword ptr [esp + 0x48], eax                    // 0x0086b16f    89442448
                         cmp                dword ptr [data_bytes + 0x50424c], 0x08        // 0x0086b173    833d4ca2ec0008
                         {disp8} je         _jmp_addr_0x0086b19a                           // 0x0086b17a    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x0086b17c    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086b181    8b08
                         push               0x8                                            // 0x0086b183    6a08
                         push               0x17                                           // 0x0086b185    6a17
                         push               eax                                            // 0x0086b187    50
                         call               dword ptr [ecx + 0x50]                         // 0x0086b188    ff5150
                         neg                eax                                            // 0x0086b18b    f7d8
                         sbb.s              eax, eax                                       // 0x0086b18d    1bc0
                         and                eax, 0xfffffff7                                // 0x0086b18f    83e0f7
                         add                eax, 0x08                                      // 0x0086b192    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x0086b195    a34ca2ec00
_jmp_addr_0x0086b19a:    {disp32} fld       dword ptr [data_bytes + 0x5dc754]              // 0x0086b19a    d9055427fa00
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086b1a0    d80d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x0086b1a6    e85562f3ff
                         mov.s              ebx, eax                                       // 0x0086b1ab    8bd8
                         {disp8} mov        dword ptr [esp + 0x3c], ebx                    // 0x0086b1ad    895c243c
                         or                 ebp, 0xffffffff                                // 0x0086b1b1    83cdff
                         call               _jmp_addr_0x00869670                           // 0x0086b1b4    e8b7e4ffff
                         test               al, al                                         // 0x0086b1b9    84c0
                         {disp32} jne       _jmp_addr_0x0086b2ad                           // 0x0086b1bb    0f85ec000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]               // 0x0086b1c1    d90578b48a00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc6a4]         // 0x0086b1c7    8b15a426fa00
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6bc]              // 0x0086b1cd    d825bc26fa00
                         {disp8} mov        dword ptr [esp + 0x28], edx                    // 0x0086b1d3    89542428
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x0086b1d7    d80db4a38a00
                         fld                st(0)                                          // 0x0086b1dd    d9c0
                         fadd.s             st(0), st(0)                                   // 0x0086b1df    dcc0
                         {disp32} fadd      dword ptr [_rdata_float0p5]                    // 0x0086b1e1    d805b4a38a00
                         {disp8} fst        dword ptr [esp + 0x40]                         // 0x0086b1e7    d9542440
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x0086b1eb    d81d90a38a00
                         fnstsw             ax                                             // 0x0086b1f1    dfe0
                         test               ah, 0x41                                       // 0x0086b1f3    f6c441
                         {disp8} jne        _jmp_addr_0x0086b200                           // 0x0086b1f6    7508
                         {disp8} mov        dword ptr [esp + 0x40], 0x3f800000             // 0x0086b1f8    c74424400000803f
_jmp_addr_0x0086b200:    fld                st(0)                                          // 0x0086b200    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26314]              // 0x0086b202    d80d14f38c00
                         {disp32} fadd      dword ptr [_rdata_float0p5]                    // 0x0086b208    d805b4a38a00
                         {disp8} fst        dword ptr [esp + 0x44]                         // 0x0086b20e    d9542444
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x0086b212    d81d90a38a00
                         fnstsw             ax                                             // 0x0086b218    dfe0
                         test               ah, 0x41                                       // 0x0086b21a    f6c441
                         {disp8} jne        _jmp_addr_0x0086b227                           // 0x0086b21d    7508
                         {disp8} mov        dword ptr [esp + 0x44], 0x3f800000             // 0x0086b21f    c74424440000803f
_jmp_addr_0x0086b227:    {disp32} fmul      dword ptr [__real@3fc00000]                    // 0x0086b227    d80d4cb28a00
                         {disp32} fadd      dword ptr [_rdata_float0p5]                    // 0x0086b22d    d805b4a38a00
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x0086b233    d81590a38a00
                         fnstsw             ax                                             // 0x0086b239    dfe0
                         test               ah, 0x41                                       // 0x0086b23b    f6c441
                         {disp8} jne        _jmp_addr_0x0086b248                           // 0x0086b23e    7508
                         fstp               st(0)                                          // 0x0086b240    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x0086b242    d90590a38a00
_jmp_addr_0x0086b248:    {disp8} mov        eax, dword ptr [esp + 0x2a]                    // 0x0086b248    8b44242a
                         and                eax, 0x000000ff                                // 0x0086b24c    25ff000000
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0086b251    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x0086b255    db442414
                         {disp8} fmul       dword ptr [esp + 0x40]                         // 0x0086b259    d84c2440
                         call               _jmp_addr_0x007a1400                           // 0x0086b25d    e89e61f3ff
                         {disp8} mov        byte ptr [esp + 0x2a], al                      // 0x0086b262    8844242a
                         {disp8} mov        ecx, dword ptr [esp + 0x29]                    // 0x0086b266    8b4c2429
                         and                ecx, 0x000000ff                                // 0x0086b26a    81e1ff000000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x0086b270    894c2414
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x0086b274    db442414
                         {disp8} fmul       dword ptr [esp + 0x44]                         // 0x0086b278    d84c2444
                         call               _jmp_addr_0x007a1400                           // 0x0086b27c    e87f61f3ff
                         {disp8} mov        byte ptr [esp + 0x29], al                      // 0x0086b281    88442429
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x0086b285    8b542428
                         and                edx, 0x000000ff                                // 0x0086b289    81e2ff000000
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x0086b28f    89542414
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x0086b293    db442414
                         fmul               st, st(1)                                      // 0x0086b297    d8c9
                         call               _jmp_addr_0x007a1400                           // 0x0086b299    e86261f3ff
                         fstp               st(0)                                          // 0x0086b29e    ddd8
                         {disp8} mov        byte ptr [esp + 0x28], al                      // 0x0086b2a0    88442428
                         {disp8} mov        byte ptr [esp + 0x2b], -0x01                   // 0x0086b2a4    c644242bff
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                    // 0x0086b2a9    8b6c2428
_jmp_addr_0x0086b2ad:    {disp32} fld       dword ptr [data_bytes + 0x5dc6b4]              // 0x0086b2ad    d905b426fa00
                         call               _jmp_addr_0x007a1400                           // 0x0086b2b3    e84861f3ff
                         {disp32} fld       dword ptr [data_bytes + 0x5dc6b0]              // 0x0086b2b8    d905b026fa00
                         mov.s              esi, eax                                       // 0x0086b2be    8bf0
                         or                 esi, 0xffffff00                                // 0x0086b2c0    81ce00ffffff
                         shl                esi, 8                                         // 0x0086b2c6    c1e608
                         call               _jmp_addr_0x007a1400                           // 0x0086b2c9    e83261f3ff
                         {disp32} fld       dword ptr [data_bytes + 0x5dc6ac]              // 0x0086b2ce    d905ac26fa00
                         or.s               esi, eax                                       // 0x0086b2d4    0bf0
                         shl                esi, 8                                         // 0x0086b2d6    c1e608
                         call               _jmp_addr_0x007a1400                           // 0x0086b2d9    e82261f3ff
                         or.s               esi, eax                                       // 0x0086b2de    0bf0
                         cmp                dword ptr [data_bytes + 0x271204], edi         // 0x0086b2e0    393d0472c300
                         {disp32} je        _jmp_addr_0x0086b3ba                           // 0x0086b2e6    0f84ce000000
                         mov.s              eax, esi                                       // 0x0086b2ec    8bc6
                         mov.s              edi, esi                                       // 0x0086b2ee    8bfe
                         mov.s              ecx, esi                                       // 0x0086b2f0    8bce
                         and                esi, 0xff000000                                // 0x0086b2f2    81e6000000ff
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x0086b2f8    89742414
                         and                eax, 0x00ff0000                                // 0x0086b2fc    250000ff00
                         mov.s              edx, ebp                                       // 0x0086b301    8bd5
                         and                edx, 0x00ff0000                                // 0x0086b303    81e20000ff00
                         mov.s              esi, eax                                       // 0x0086b309    8bf0
                         sub.s              esi, edx                                       // 0x0086b30b    2bf2
                         imul               esi, ebx                                       // 0x0086b30d    0faff3
                         shr                esi, 8                                         // 0x0086b310    c1ee08
                         mov.s              edx, ebp                                       // 0x0086b313    8bd5
                         and                edx, 0xffff0000                                // 0x0086b315    81e20000ffff
                         add.s              esi, edx                                       // 0x0086b31b    03f2
                         and                edi, 0x0000ff00                                // 0x0086b31d    81e700ff0000
                         mov.s              edx, ebp                                       // 0x0086b323    8bd5
                         and                edx, 0x0000ff00                                // 0x0086b325    81e200ff0000
                         mov.s              ebx, edi                                       // 0x0086b32b    8bdf
                         sub.s              ebx, edx                                       // 0x0086b32d    2bda
                         imul               ebx, dword ptr [esp + 0x3c]                    // 0x0086b32f    0faf5c243c
                         shr                ebx, 8                                         // 0x0086b334    c1eb08
                         mov.s              edx, ebp                                       // 0x0086b337    8bd5
                         and                edx, 0xffffff00                                // 0x0086b339    81e200ffffff
                         add.s              ebx, edx                                       // 0x0086b33f    03da
                         and                ebx, 0x0000ff00                                // 0x0086b341    81e300ff0000
                         and                esi, 0x00ff0000                                // 0x0086b347    81e60000ff00
                         or.s               esi, ebx                                       // 0x0086b34d    0bf3
                         and                ecx, 0x000000ff                                // 0x0086b34f    81e1ff000000
                         mov.s              edx, ebp                                       // 0x0086b355    8bd5
                         and                edx, 0x000000ff                                // 0x0086b357    81e2ff000000
                         mov.s              ebx, ecx                                       // 0x0086b35d    8bd9
                         sub.s              ebx, edx                                       // 0x0086b35f    2bda
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                    // 0x0086b361    8b54243c
                         imul               ebx, edx                                       // 0x0086b365    0fafda
                         shr                ebx, 8                                         // 0x0086b368    c1eb08
                         add.s              ebx, ebp                                       // 0x0086b36b    03dd
                         and                ebx, 0x000000ff                                // 0x0086b36d    81e3ff000000
                         or.s               esi, ebx                                       // 0x0086b373    0bf3
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                    // 0x0086b375    8b5c2414
                         or.s               esi, ebx                                       // 0x0086b379    0bf3
                         {disp8} jmp        _jmp_addr_0x0086b3be                           // 0x0086b37b    eb41
_jmp_addr_0x0086b37d:    {disp32} fld       dword ptr [data_bytes + 0x5dc758]              // 0x0086b37d    d9055827fa00
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x0086b383    d81d90a38a00
                         fnstsw             ax                                             // 0x0086b389    dfe0
                         test               ah, 0x41                                       // 0x0086b38b    f6c441
                         {disp32} je        _jmp_addr_0x0086b139                           // 0x0086b38e    0f84a5fdffff
_jmp_addr_0x0086b394:    {disp32} fld       dword ptr [data_bytes + 0x5dc758]              // 0x0086b394    d9055827fa00
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086b39a    d80d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x0086b3a0    e85b60f3ff
                         {disp8} mov        dword ptr [esp + 0x34], eax                    // 0x0086b3a5    89442434
                         {disp8} mov        dword ptr [esp + 0x38], edi                    // 0x0086b3a9    897c2438
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000001             // 0x0086b3ad    c744241001000000
                         {disp32} jmp       _jmp_addr_0x0086b164                           // 0x0086b3b5    e9aafdffff
_jmp_addr_0x0086b3ba:    mov.s              esi, ebp                                       // 0x0086b3ba    8bf5
                         {disp8} jmp        _jmp_addr_0x0086b3e1                           // 0x0086b3bc    eb23
_jmp_addr_0x0086b3be:    imul               edi, edx                                       // 0x0086b3be    0faffa
                         imul               ecx, edx                                       // 0x0086b3c1    0fafca
                         imul               eax, edx                                       // 0x0086b3c4    0fafc2
                         and                edi, 0x00ff0000                                // 0x0086b3c7    81e70000ff00
                         and                ecx, 0x0000ff00                                // 0x0086b3cd    81e100ff0000
                         or.s               edi, ecx                                       // 0x0086b3d3    0bf9
                         and                eax, 0xff0000ff                                // 0x0086b3d5    25ff0000ff
                         or.s               edi, eax                                       // 0x0086b3da    0bf8
                         shr                edi, 8                                         // 0x0086b3dc    c1ef08
                         or.s               edi, ebx                                       // 0x0086b3df    0bfb
_jmp_addr_0x0086b3e1:    test               byte ptr [data_bytes + 0x516360], 0x01         // 0x0086b3e1    f60560c3ed0001
                         {disp32} je        _jmp_addr_0x0086b4ba                           // 0x0086b3e8    0f84cc000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516374]         // 0x0086b3ee    8b0d74c3ed00
                         imul               ecx, ecx                                       // 0x0086b3f4    0fafc9
                         mov                eax, 0x1b4e81b5                                // 0x0086b3f7    b8b5814e1b
                         imul               ecx                                            // 0x0086b3fc    f7e9
                         sar                edx, 4                                         // 0x0086b3fe    c1fa04
                         mov.s              eax, edx                                       // 0x0086b401    8bc2
                         shr                eax, 0x1f                                      // 0x0086b403    c1e81f
                         add.s              edx, eax                                       // 0x0086b406    03d0
                         mov.s              ecx, esi                                       // 0x0086b408    8bce
                         and                ecx, 0x00ff0000                                // 0x0086b40a    81e10000ff00
                         imul               ecx, edx                                       // 0x0086b410    0fafca
                         neg                ecx                                            // 0x0086b413    f7d9
                         shr                ecx, 8                                         // 0x0086b415    c1e908
                         mov.s              eax, esi                                       // 0x0086b418    8bc6
                         and                eax, 0xffff0000                                // 0x0086b41a    250000ffff
                         add.s              ecx, eax                                       // 0x0086b41f    03c8
                         mov.s              eax, esi                                       // 0x0086b421    8bc6
                         and                eax, 0x0000ff00                                // 0x0086b423    2500ff0000
                         imul               eax, edx                                       // 0x0086b428    0fafc2
                         neg                eax                                            // 0x0086b42b    f7d8
                         shr                eax, 8                                         // 0x0086b42d    c1e808
                         and                ecx, 0x00ff0000                                // 0x0086b430    81e10000ff00
                         mov.s              ebx, esi                                       // 0x0086b436    8bde
                         and                ebx, 0xffffff00                                // 0x0086b438    81e300ffffff
                         add.s              eax, ebx                                       // 0x0086b43e    03c3
                         and                eax, 0x0000ff00                                // 0x0086b440    2500ff0000
                         or.s               ecx, eax                                       // 0x0086b445    0bc8
                         mov.s              eax, esi                                       // 0x0086b447    8bc6
                         and                eax, 0x000000ff                                // 0x0086b449    25ff000000
                         imul               eax, edx                                       // 0x0086b44e    0fafc2
                         neg                eax                                            // 0x0086b451    f7d8
                         shr                eax, 8                                         // 0x0086b453    c1e808
                         add.s              eax, esi                                       // 0x0086b456    03c6
                         and                eax, 0x000000ff                                // 0x0086b458    25ff000000
                         or.s               ecx, eax                                       // 0x0086b45d    0bc8
                         mov.s              esi, ecx                                       // 0x0086b45f    8bf1
                         mov.s              ecx, edi                                       // 0x0086b461    8bcf
                         and                ecx, 0x00ff0000                                // 0x0086b463    81e10000ff00
                         imul               ecx, edx                                       // 0x0086b469    0fafca
                         neg                ecx                                            // 0x0086b46c    f7d9
                         shr                ecx, 8                                         // 0x0086b46e    c1e908
                         mov.s              eax, edi                                       // 0x0086b471    8bc7
                         and                eax, 0xffff0000                                // 0x0086b473    250000ffff
                         add.s              ecx, eax                                       // 0x0086b478    03c8
                         mov.s              eax, edi                                       // 0x0086b47a    8bc7
                         and                eax, 0x0000ff00                                // 0x0086b47c    2500ff0000
                         imul               eax, edx                                       // 0x0086b481    0fafc2
                         neg                eax                                            // 0x0086b484    f7d8
                         shr                eax, 8                                         // 0x0086b486    c1e808
                         mov.s              ebx, edi                                       // 0x0086b489    8bdf
                         and                ebx, 0xffffff00                                // 0x0086b48b    81e300ffffff
                         add.s              eax, ebx                                       // 0x0086b491    03c3
                         and                eax, 0x0000ff00                                // 0x0086b493    2500ff0000
                         and                ecx, 0x00ff0000                                // 0x0086b498    81e10000ff00
                         or.s               ecx, eax                                       // 0x0086b49e    0bc8
                         mov.s              eax, edi                                       // 0x0086b4a0    8bc7
                         and                eax, 0x000000ff                                // 0x0086b4a2    25ff000000
                         imul               eax, edx                                       // 0x0086b4a7    0fafc2
                         neg                eax                                            // 0x0086b4aa    f7d8
                         shr                eax, 8                                         // 0x0086b4ac    c1e808
                         add.s              eax, edi                                       // 0x0086b4af    03c7
                         and                eax, 0x000000ff                                // 0x0086b4b1    25ff000000
                         or.s               ecx, eax                                       // 0x0086b4b6    0bc8
                         mov.s              edi, ecx                                       // 0x0086b4b8    8bf9
_jmp_addr_0x0086b4ba:    {disp32} mov       eax, dword ptr [data_bytes + 0x5dc768]         // 0x0086b4ba    a16827fa00
                         test               eax, eax                                       // 0x0086b4bf    85c0
                         {disp32} je        _jmp_addr_0x0086b5b2                           // 0x0086b4c1    0f84eb000000
                         mov.s              ecx, esi                                       // 0x0086b4c7    8bce
                         and                ecx, 0x00ff0000                                // 0x0086b4c9    81e10000ff00
                         mov                edx, 0x00ff0000                                // 0x0086b4cf    ba0000ff00
                         sub.s              edx, ecx                                       // 0x0086b4d4    2bd1
                         imul               edx, eax                                       // 0x0086b4d6    0fafd0
                         shr                edx, 8                                         // 0x0086b4d9    c1ea08
                         mov.s              ecx, esi                                       // 0x0086b4dc    8bce
                         and                ecx, 0xffff0000                                // 0x0086b4de    81e10000ffff
                         add.s              edx, ecx                                       // 0x0086b4e4    03d1
                         mov.s              ecx, esi                                       // 0x0086b4e6    8bce
                         and                ecx, 0x0000ff00                                // 0x0086b4e8    81e100ff0000
                         mov                ebx, 0x0000ff00                                // 0x0086b4ee    bb00ff0000
                         sub.s              ebx, ecx                                       // 0x0086b4f3    2bd9
                         imul               ebx, eax                                       // 0x0086b4f5    0fafd8
                         shr                ebx, 8                                         // 0x0086b4f8    c1eb08
                         and                edx, 0xffff0000                                // 0x0086b4fb    81e20000ffff
                         mov.s              ecx, esi                                       // 0x0086b501    8bce
                         and                ecx, 0xffffff00                                // 0x0086b503    81e100ffffff
                         add.s              ebx, ecx                                       // 0x0086b509    03d9
                         and                ebx, 0x0000ff00                                // 0x0086b50b    81e300ff0000
                         or.s               edx, ebx                                       // 0x0086b511    0bd3
                         mov.s              ecx, esi                                       // 0x0086b513    8bce
                         and                ecx, 0x000000ff                                // 0x0086b515    81e1ff000000
                         mov                ebx, 0x000000ff                                // 0x0086b51b    bbff000000
                         sub.s              ebx, ecx                                       // 0x0086b520    2bd9
                         imul               ebx, eax                                       // 0x0086b522    0fafd8
                         shr                ebx, 8                                         // 0x0086b525    c1eb08
                         add.s              ebx, esi                                       // 0x0086b528    03de
                         and                ebx, 0x000000ff                                // 0x0086b52a    81e3ff000000
                         or.s               edx, ebx                                       // 0x0086b530    0bd3
                         or                 edx, 0xff000000                                // 0x0086b532    81ca000000ff
                         mov.s              esi, edx                                       // 0x0086b538    8bf2
                         cdq                                                               // 0x0086b53a    99
                         sub.s              eax, edx                                       // 0x0086b53b    2bc2
                         mov.s              edx, edi                                       // 0x0086b53d    8bd7
                         and                edx, 0x00ff0000                                // 0x0086b53f    81e20000ff00
                         sar                eax, 1                                         // 0x0086b545    d1f8
                         mov                ecx, 0x00ff0000                                // 0x0086b547    b90000ff00
                         sub.s              ecx, edx                                       // 0x0086b54c    2bca
                         imul               ecx, eax                                       // 0x0086b54e    0fafc8
                         shr                ecx, 8                                         // 0x0086b551    c1e908
                         mov.s              edx, edi                                       // 0x0086b554    8bd7
                         and                edx, 0xffff0000                                // 0x0086b556    81e20000ffff
                         add.s              ecx, edx                                       // 0x0086b55c    03ca
                         mov.s              edx, edi                                       // 0x0086b55e    8bd7
                         and                edx, 0x0000ff00                                // 0x0086b560    81e200ff0000
                         mov                ebx, 0x0000ff00                                // 0x0086b566    bb00ff0000
                         sub.s              ebx, edx                                       // 0x0086b56b    2bda
                         imul               ebx, eax                                       // 0x0086b56d    0fafd8
                         shr                ebx, 8                                         // 0x0086b570    c1eb08
                         mov.s              edx, edi                                       // 0x0086b573    8bd7
                         and                edx, 0xffffff00                                // 0x0086b575    81e200ffffff
                         add.s              ebx, edx                                       // 0x0086b57b    03da
                         and                ebx, 0x0000ff00                                // 0x0086b57d    81e300ff0000
                         and                ecx, 0xffff0000                                // 0x0086b583    81e10000ffff
                         or.s               ecx, ebx                                       // 0x0086b589    0bcb
                         mov.s              edx, edi                                       // 0x0086b58b    8bd7
                         and                edx, 0x000000ff                                // 0x0086b58d    81e2ff000000
                         mov                ebx, 0x000000ff                                // 0x0086b593    bbff000000
                         sub.s              ebx, edx                                       // 0x0086b598    2bda
                         imul               ebx, eax                                       // 0x0086b59a    0fafd8
                         shr                ebx, 8                                         // 0x0086b59d    c1eb08
                         add.s              ebx, edi                                       // 0x0086b5a0    03df
                         and                ebx, 0x000000ff                                // 0x0086b5a2    81e3ff000000
                         or.s               ecx, ebx                                       // 0x0086b5a8    0bcb
                         or                 ecx, 0xff000000                                // 0x0086b5aa    81c9000000ff
                         mov.s              edi, ecx                                       // 0x0086b5b0    8bf9
_jmp_addr_0x0086b5b2:    {disp8} mov        eax, dword ptr [esp + 0x48]                    // 0x0086b5b2    8b442448
                         test               eax, eax                                       // 0x0086b5b6    85c0
                         push               edi                                            // 0x0086b5b8    57
                         push               esi                                            // 0x0086b5b9    56
                         push               0x000000ff                                     // 0x0086b5ba    68ff000000
                         {disp8} jle        _jmp_addr_0x0086b5e0                           // 0x0086b5bf    7e1f
                         {disp8} mov        eax, dword ptr [esp + 0x44]                    // 0x0086b5c1    8b442444
                         push               eax                                            // 0x0086b5c5    50
                         call               _jmp_addr_0x0086b6b0                           // 0x0086b5c6    e8e5000000
                         {disp8} mov        eax, dword ptr [esp + 0x44]                    // 0x0086b5cb    8b442444
                         add                esp, 0x10                                      // 0x0086b5cf    83c410
                         test               eax, eax                                       // 0x0086b5d2    85c0
                         {disp8} jle        _jmp_addr_0x0086b5ed                           // 0x0086b5d4    7e17
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0086b5d6    8b4c2410
                         push               edi                                            // 0x0086b5da    57
                         push               esi                                            // 0x0086b5db    56
                         push               eax                                            // 0x0086b5dc    50
                         push               ecx                                            // 0x0086b5dd    51
                         {disp8} jmp        _jmp_addr_0x0086b5e5                           // 0x0086b5de    eb05
_jmp_addr_0x0086b5e0:    {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0086b5e0    8b54241c
                         push               edx                                            // 0x0086b5e4    52
_jmp_addr_0x0086b5e5:    call               _jmp_addr_0x0086b6b0                           // 0x0086b5e5    e8c6000000
                         add                esp, 0x10                                      // 0x0086b5ea    83c410
_jmp_addr_0x0086b5ed:    cmp                dword ptr [data_bytes + 0x50424c], 0x04        // 0x0086b5ed    833d4ca2ec0004
                         pop                edi                                            // 0x0086b5f4    5f
                         pop                esi                                            // 0x0086b5f5    5e
                         pop                ebp                                            // 0x0086b5f6    5d
                         pop                ebx                                            // 0x0086b5f7    5b
                         {disp8} je         _jmp_addr_0x0086b618                           // 0x0086b5f8    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x0086b5fa    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086b5ff    8b08
                         push               0x4                                            // 0x0086b601    6a04
                         push               0x17                                           // 0x0086b603    6a17
                         push               eax                                            // 0x0086b605    50
                         call               dword ptr [ecx + 0x50]                         // 0x0086b606    ff5150
                         neg                eax                                            // 0x0086b609    f7d8
                         sbb.s              eax, eax                                       // 0x0086b60b    1bc0
                         and                eax, 0xfffffffb                                // 0x0086b60d    83e0fb
                         add                eax, 0x04                                      // 0x0086b610    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x0086b613    a34ca2ec00
_jmp_addr_0x0086b618:    call               _jmp_addr_0x0086c140                           // 0x0086b618    e8230b0000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x0086b61d    8b442408
                         test               eax, eax                                       // 0x0086b621    85c0
                         {disp8} jle        _jmp_addr_0x0086b6a4                           // 0x0086b623    7e7f
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc6dc]         // 0x0086b625    8b15dc26fa00
                         {disp8} mov        dword ptr [esp + 0x00], edx                    // 0x0086b62b    89542400
                         {disp8} mov        byte ptr [esp + 0x03], al                      // 0x0086b62f    88442403
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                    // 0x0086b633    8d44243c
                         push               eax                                            // 0x0086b637    50
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                    // 0x0086b638    8d4c2470
                         push               ecx                                            // 0x0086b63c    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                    // 0x0086b63d    8d542414
                         push               edx                                            // 0x0086b641    52
                         {disp32} mov       byte ptr [data_bytes + 0x5dc774], 0x00         // 0x0086b642    c6057427fa0000
                         call               _jmp_addr_0x0086ac60                           // 0x0086b649    e812f6ffff
                         {disp8} lea        eax, dword ptr [esp + 0x48]                    // 0x0086b64e    8d442448
                         push               eax                                            // 0x0086b652    50
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                    // 0x0086b653    8d4c247c
                         push               ecx                                            // 0x0086b657    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                    // 0x0086b658    8d542414
                         push               edx                                            // 0x0086b65c    52
                         call               _jmp_addr_0x0086a930                           // 0x0086b65d    e8cef2ffff
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x0086b662    d9442428
                         {disp8} lea        eax, dword ptr [esp + 0x54]                    // 0x0086b666    8d442454
                         fchs                                                              // 0x0086b66a    d9e0
                         push               eax                                            // 0x0086b66c    50
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x0086b66d    d95c242c
                         {disp32} lea       ecx, dword ptr [esp + 0x00000088]              // 0x0086b671    8d8c2488000000
                         push               ecx                                            // 0x0086b678    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                    // 0x0086b679    8d54242c
                         push               edx                                            // 0x0086b67d    52
                         {disp32} mov       byte ptr [data_bytes + 0x5dc774], 0x01         // 0x0086b67e    c6057427fa0001
                         call               _jmp_addr_0x0086ac60                           // 0x0086b685    e8d6f5ffff
                         {disp8} lea        eax, dword ptr [esp + 0x60]                    // 0x0086b68a    8d442460
                         push               eax                                            // 0x0086b68e    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000094]              // 0x0086b68f    8d8c2494000000
                         push               ecx                                            // 0x0086b696    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                    // 0x0086b697    8d54242c
                         push               edx                                            // 0x0086b69b    52
                         call               _jmp_addr_0x0086a930                           // 0x0086b69c    e88ff2ffff
                         add                esp, 0x30                                      // 0x0086b6a1    83c430
_jmp_addr_0x0086b6a4:    add                esp, 0x0000009c                                // 0x0086b6a4    81c49c000000
                         ret                                                               // 0x0086b6aa    c3
                         nop                                                               // 0x0086b6ab    90
                         nop                                                               // 0x0086b6ac    90
                         nop                                                               // 0x0086b6ad    90
                         nop                                                               // 0x0086b6ae    90
                         nop                                                               // 0x0086b6af    90
_jmp_addr_0x0086b6b0:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x0086b6b0    8b542410
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc730]         // 0x0086b6b4    8b0d3027fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086b6ba    8b01
                         push               esi                                            // 0x0086b6bc    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x0086b6bd    8b74240c
                         push               edi                                            // 0x0086b6c1    57
                         push               edx                                            // 0x0086b6c2    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x0086b6c3    8b542418
                         mov.s              edi, esi                                       // 0x0086b6c7    8bfe
                         and                edx, 0x00ffffff                                // 0x0086b6c9    81e2ffffff00
                         shl                edi, 0x18                                      // 0x0086b6cf    c1e718
                         add.s              edx, edi                                       // 0x0086b6d2    03d7
                         call               dword ptr [eax + 0x2c]                         // 0x0086b6d4    ff502c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc734]         // 0x0086b6d7    a13427fa00
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                    // 0x0086b6dc    8b4810
                         mov                eax, dword ptr [ecx]                           // 0x0086b6df    8b01
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x0086b6e1    8b4804
                         test               ecx, ecx                                       // 0x0086b6e4    85c9
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x0086b6e6    8b4008
                         {disp8} jle        _jmp_addr_0x0086b718                           // 0x0086b6e9    7e2d
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x0086b6eb    8b54240c
                         push               ebx                                            // 0x0086b6ef    53
                         push               ebp                                            // 0x0086b6f0    55
_jmp_addr_0x0086b6f1:    {disp32} mov       edi, dword ptr [edx * 0x4 + 0x00fa2744]        // 0x0086b6f1    8b3c954427fa00
                         mov                ebp, dword ptr [edi]                           // 0x0086b6f8    8b2f
                         mov                ebx, dword ptr [eax]                           // 0x0086b6fa    8b18
                         mov                dword ptr [ebx], ebp                           // 0x0086b6fc    892b
                         {disp8} mov        ebp, dword ptr [edi + 0x04]                    // 0x0086b6fe    8b6f04
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                    // 0x0086b701    896b04
                         {disp8} mov        ebp, dword ptr [edi + 0x08]                    // 0x0086b704    8b6f08
                         {disp8} mov        dword ptr [ebx + 0x08], ebp                    // 0x0086b707    896b08
                         {disp8} mov        edi, dword ptr [edi + 0x0c]                    // 0x0086b70a    8b7f0c
                         add                eax, 0x04                                      // 0x0086b70d    83c004
                         dec                ecx                                            // 0x0086b710    49
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                    // 0x0086b711    897b0c
                         {disp8} jne        _jmp_addr_0x0086b6f1                           // 0x0086b714    75db
                         pop                ebp                                            // 0x0086b716    5d
                         pop                ebx                                            // 0x0086b717    5b
_jmp_addr_0x0086b718:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc730]         // 0x0086b718    8b0d3027fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086b71e    8b01
                         mov                edi, 0x00000001                                // 0x0086b720    bf01000000
                         mov.s              edx, edi                                       // 0x0086b725    8bd7
                         call               dword ptr [eax + 0xa0]                         // 0x0086b727    ff90a0000000
                         cmp                esi, 0x000000ff                                // 0x0086b72d    81feff000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc730]         // 0x0086b733    8b0d3027fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086b739    8b01
                         {disp8} je         _jmp_addr_0x0086b784                           // 0x0086b73b    7447
                         mov.s              edx, edi                                       // 0x0086b73d    8bd7
                         call               dword ptr [eax + 0x48]                         // 0x0086b73f    ff5048
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e9c]         // 0x0086b742    a19c9eea00
                         test               eax, eax                                       // 0x0086b747    85c0
                         {disp8} je         _jmp_addr_0x0086b76c                           // 0x0086b749    7421
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504200]         // 0x0086b74b    a100a2ec00
                         test               eax, eax                                       // 0x0086b750    85c0
                         {disp8} je         _jmp_addr_0x0086b76c                           // 0x0086b752    7418
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x0086b754    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086b759    8b08
                         push               0x0                                            // 0x0086b75b    6a00
                         push               0x4                                            // 0x0086b75d    6a04
                         push               eax                                            // 0x0086b75f    50
                         call               dword ptr [ecx + 0x50]                         // 0x0086b760    ff5150
                         neg                eax                                            // 0x0086b763    f7d8
                         sbb.s              eax, eax                                       // 0x0086b765    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504200], eax         // 0x0086b767    a300a2ec00
_jmp_addr_0x0086b76c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc730]         // 0x0086b76c    8b0d3027fa00
                         mov                edx, dword ptr [ecx]                           // 0x0086b772    8b11
                         call               dword ptr [edx + 0x108]                        // 0x0086b774    ff9208010000
                         cmp                dword ptr [data_bytes + 0x504200], edi         // 0x0086b77a    393d00a2ec00
                         {disp8} je         _jmp_addr_0x0086b7e4                           // 0x0086b780    7462
                         {disp8} jmp        _jmp_addr_0x0086b7c9                           // 0x0086b782    eb45
_jmp_addr_0x0086b784:    xor.s              edx, edx                                       // 0x0086b784    33d2
                         call               dword ptr [eax + 0x48]                         // 0x0086b786    ff5048
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e9c]         // 0x0086b789    a19c9eea00
                         test               eax, eax                                       // 0x0086b78e    85c0
                         {disp8} je         _jmp_addr_0x0086b7b3                           // 0x0086b790    7421
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504200]         // 0x0086b792    a100a2ec00
                         test               eax, eax                                       // 0x0086b797    85c0
                         {disp8} je         _jmp_addr_0x0086b7b3                           // 0x0086b799    7418
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x0086b79b    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086b7a0    8b08
                         push               0x0                                            // 0x0086b7a2    6a00
                         push               0x4                                            // 0x0086b7a4    6a04
                         push               eax                                            // 0x0086b7a6    50
                         call               dword ptr [ecx + 0x50]                         // 0x0086b7a7    ff5150
                         neg                eax                                            // 0x0086b7aa    f7d8
                         sbb.s              eax, eax                                       // 0x0086b7ac    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504200], eax         // 0x0086b7ae    a300a2ec00
_jmp_addr_0x0086b7b3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc730]         // 0x0086b7b3    8b0d3027fa00
                         mov                edx, dword ptr [ecx]                           // 0x0086b7b9    8b11
                         call               dword ptr [edx + 0x108]                        // 0x0086b7bb    ff9208010000
                         cmp                dword ptr [data_bytes + 0x504200], edi         // 0x0086b7c1    393d00a2ec00
                         {disp8} je         _jmp_addr_0x0086b7e4                           // 0x0086b7c7    741b
_jmp_addr_0x0086b7c9:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x0086b7c9    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086b7ce    8b08
                         push               edi                                            // 0x0086b7d0    57
                         push               0x4                                            // 0x0086b7d1    6a04
                         push               eax                                            // 0x0086b7d3    50
                         call               dword ptr [ecx + 0x50]                         // 0x0086b7d4    ff5150
                         neg                eax                                            // 0x0086b7d7    f7d8
                         sbb.s              eax, eax                                       // 0x0086b7d9    1bc0
                         and                eax, 0xfffffffe                                // 0x0086b7db    83e0fe
                         inc                eax                                            // 0x0086b7de    40
                         {disp32} mov       dword ptr [data_bytes + 0x504200], eax         // 0x0086b7df    a300a2ec00
_jmp_addr_0x0086b7e4:    pop                edi                                            // 0x0086b7e4    5f
                         pop                esi                                            // 0x0086b7e5    5e
                         ret                                                               // 0x0086b7e6    c3
                         nop                                                               // 0x0086b7e7    90
                         nop                                                               // 0x0086b7e8    90
                         nop                                                               // 0x0086b7e9    90
                         nop                                                               // 0x0086b7ea    90
                         nop                                                               // 0x0086b7eb    90
                         nop                                                               // 0x0086b7ec    90
                         nop                                                               // 0x0086b7ed    90
                         nop                                                               // 0x0086b7ee    90
                         nop                                                               // 0x0086b7ef    90
_jmp_addr_0x0086b7f0:    sub                esp, 0x14                                      // 0x0086b7f0    83ec14
                         push               ebx                                            // 0x0086b7f3    53
                         push               esi                                            // 0x0086b7f4    56
                         push               edi                                            // 0x0086b7f5    57
                         call               _jmp_addr_0x00869670                           // 0x0086b7f6    e875deffff
                         test               al, al                                         // 0x0086b7fb    84c0
                         {disp32} jne       _jmp_addr_0x0086b890                           // 0x0086b7fd    0f858d000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2735ac]         // 0x0086b803    a1ac95c300
                         test               eax, eax                                       // 0x0086b808    85c0
                         {disp32} je        _jmp_addr_0x0086b992                           // 0x0086b80a    0f8482010000
                         {disp32} mov       dword ptr [data_bytes + 0x2735ac], 0x00000000  // 0x0086b810    c705ac95c30000000000
                         xor.s              ebx, ebx                                       // 0x0086b81a    33db
_jmp_addr_0x0086b81c:    {disp32} mov       ecx, dword ptr [ebx + 0x00fa2738]              // 0x0086b81c    8b8b3827fa00
                         {disp8} lea        eax, dword ptr [esp + 0x10]                    // 0x0086b822    8d442410
                         push               eax                                            // 0x0086b826    50
                         call               _jmp_addr_0x00838af0                           // 0x0086b827    e8c4d2fcff
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x0086b82c    8b7c2410
                         test               edi, edi                                       // 0x0086b830    85ff
                         {disp8} je         _jmp_addr_0x0086b856                           // 0x0086b832    7422
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x0086b834    8b4c2418
                         imul               ecx, dword ptr [esp + 0x1c]                    // 0x0086b838    0faf4c241c
                         {disp32} mov       edx, dword ptr [ebx + 0x00fa26e8]              // 0x0086b83d    8b93e826fa00
                         {disp8} mov        esi, dword ptr [edx + 0x0c]                    // 0x0086b843    8b720c
                         shl                ecx, 1                                         // 0x0086b846    d1e1
                         mov.s              eax, ecx                                       // 0x0086b848    8bc1
                         shr                ecx, 2                                         // 0x0086b84a    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x0086b84d    f3a5
                         mov.s              ecx, eax                                       // 0x0086b84f    8bc8
                         and                ecx, 0x03                                      // 0x0086b851    83e103
                         rep movsb                                                         // 0x0086b854    f3a4
_jmp_addr_0x0086b856:    {disp32} mov       ecx, dword ptr [ebx + 0x00fa2738]              // 0x0086b856    8b8b3827fa00
                         call               _jmp_addr_0x00838eb0                           // 0x0086b85c    e84fd6fcff
                         {disp32} mov       ecx, dword ptr [ebx + 0x00fa2738]              // 0x0086b861    8b8b3827fa00
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                    // 0x0086b867    8b4110
                         and                eax, 0x3f                                      // 0x0086b86a    83e03f
                         cmp                eax, 0x08                                      // 0x0086b86d    83f808
                         {disp8} je         _jmp_addr_0x0086b877                           // 0x0086b870    7405
                         cmp                eax, 0x04                                      // 0x0086b872    83f804
                         {disp8} jne        _jmp_addr_0x0086b881                           // 0x0086b875    750a
_jmp_addr_0x0086b877:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001       // 0x0086b877    c7813801000001000000
_jmp_addr_0x0086b881:    add                ebx, 0x04                                      // 0x0086b881    83c304
                         cmp                ebx, 0x0c                                      // 0x0086b884    83fb0c
                         {disp8} jl         _jmp_addr_0x0086b81c                           // 0x0086b887    7c93
                         pop                edi                                            // 0x0086b889    5f
                         pop                esi                                            // 0x0086b88a    5e
                         pop                ebx                                            // 0x0086b88b    5b
                         add                esp, 0x14                                      // 0x0086b88c    83c414
                         ret                                                               // 0x0086b88f    c3
_jmp_addr_0x0086b890:    {disp8} fld        dword ptr [esp + 0x24]                         // 0x0086b890    d9442424
                         push               ebp                                            // 0x0086b894    55
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x0086b895    d81d90a38a00
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x0086b89b    d9442428
                         fnstsw             ax                                             // 0x0086b89f    dfe0
                         test               ah, 0x41                                       // 0x0086b8a1    f6c441
                         {disp8} je         _jmp_addr_0x0086b8bd                           // 0x0086b8a4    7417
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086b8a6    d80d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x0086b8ac    e84f5bf3ff
                         xor.s              ebp, ebp                                       // 0x0086b8b1    33ed
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000001             // 0x0086b8b3    c744242801000000
                         {disp8} jmp        _jmp_addr_0x0086b8db                           // 0x0086b8bb    eb1e
_jmp_addr_0x0086b8bd:    {disp32} fsub      dword ptr [_rdata_float1p0]                    // 0x0086b8bd    d82590a38a00
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086b8c3    d80d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x0086b8c9    e8325bf3ff
                         mov                ebp, 0x00000001                                // 0x0086b8ce    bd01000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000002             // 0x0086b8d3    c744242802000000
_jmp_addr_0x0086b8db:    {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x0086b8db    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x30]                    // 0x0086b8df    8b542430
                         mov                ebx, 0x000000ff                                // 0x0086b8e3    bbff000000
                         sub.s              ebx, eax                                       // 0x0086b8e8    2bd8
                         xor.s              edi, edi                                       // 0x0086b8ea    33ff
                         add.s              ecx, edx                                       // 0x0086b8ec    03ca
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x0086b8ee    894c2410
                         mov                esi, 0x00fa2738                                // 0x0086b8f2    be3827fa00
_jmp_addr_0x0086b8f7:    mov                ecx, dword ptr [esi]                           // 0x0086b8f7    8b0e
                         {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x0086b8f9    8d442414
                         push               eax                                            // 0x0086b8fd    50
                         call               _jmp_addr_0x00838af0                           // 0x0086b8fe    e8edd1fcff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x0086b903    8b4c2414
                         test               ecx, ecx                                       // 0x0086b907    85c9
                         {disp8} je         _jmp_addr_0x0086b954                           // 0x0086b909    7449
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0086b90b    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x30]                    // 0x0086b90f    8b442430
                         push               edx                                            // 0x0086b913    52
                         {disp8} mov        edx, dword ptr [esp + 0x30]                    // 0x0086b914    8b542430
                         push               eax                                            // 0x0086b918    50
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x0086b919    8b442420
                         push               edx                                            // 0x0086b91d    52
                         cdq                                                               // 0x0086b91e    99
                         sub.s              eax, edx                                       // 0x0086b91f    2bc2
                         sar                eax, 1                                         // 0x0086b921    d1f8
                         push               eax                                            // 0x0086b923    50
                         {disp8} mov        eax, dword ptr [esp + 0x38]                    // 0x0086b924    8b442438
                         lea                edx, dword ptr [edi + eax * 0x2]               // 0x0086b928    8d1447
                         add.s              eax, edx                                       // 0x0086b92b    03c2
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00fa26e8]        // 0x0086b92d    8b0485e826fa00
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x0086b934    8b500c
                         push               ebx                                            // 0x0086b937    53
                         push               edx                                            // 0x0086b938    52
                         lea                eax, dword ptr [edi + ebp * 0x2]               // 0x0086b939    8d046f
                         mov.s              edx, ebp                                       // 0x0086b93c    8bd5
                         add.s              edx, eax                                       // 0x0086b93e    03d0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00fa26e8]        // 0x0086b940    8b0495e826fa00
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x0086b947    8b500c
                         push               edx                                            // 0x0086b94a    52
                         push               ecx                                            // 0x0086b94b    51
                         call               _jmp_addr_0x0086b9a0                           // 0x0086b94c    e84f000000
                         add                esp, 0x20                                      // 0x0086b951    83c420
_jmp_addr_0x0086b954:    mov                ecx, dword ptr [esi]                           // 0x0086b954    8b0e
                         call               _jmp_addr_0x00838eb0                           // 0x0086b956    e855d5fcff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x0086b95b    8b442410
                         cmp                eax, dword ptr [esp + 0x20]                    // 0x0086b95f    3b442420
                         {disp8} jl         _jmp_addr_0x0086b981                           // 0x0086b963    7c1c
                         mov                ecx, dword ptr [esi]                           // 0x0086b965    8b0e
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                    // 0x0086b967    8b4110
                         and                eax, 0x3f                                      // 0x0086b96a    83e03f
                         cmp                eax, 0x08                                      // 0x0086b96d    83f808
                         {disp8} je         _jmp_addr_0x0086b977                           // 0x0086b970    7405
                         cmp                eax, 0x04                                      // 0x0086b972    83f804
                         {disp8} jne        _jmp_addr_0x0086b981                           // 0x0086b975    750a
_jmp_addr_0x0086b977:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001       // 0x0086b977    c7813801000001000000
_jmp_addr_0x0086b981:    add                esi, 0x04                                      // 0x0086b981    83c604
                         inc                edi                                            // 0x0086b984    47
                         cmp                esi, 0x00fa2744                                // 0x0086b985    81fe4427fa00
                         {disp32} jl        _jmp_addr_0x0086b8f7                           // 0x0086b98b    0f8c66ffffff
                         pop                ebp                                            // 0x0086b991    5d
_jmp_addr_0x0086b992:    pop                edi                                            // 0x0086b992    5f
                         pop                esi                                            // 0x0086b993    5e
                         pop                ebx                                            // 0x0086b994    5b
                         add                esp, 0x14                                      // 0x0086b995    83c414
                         ret                                                               // 0x0086b998    c3
                         nop                                                               // 0x0086b999    90
                         nop                                                               // 0x0086b99a    90
                         nop                                                               // 0x0086b99b    90
                         nop                                                               // 0x0086b99c    90
                         nop                                                               // 0x0086b99d    90
                         nop                                                               // 0x0086b99e    90
                         nop                                                               // 0x0086b99f    90
_jmp_addr_0x0086b9a0:    push               ebp                                            // 0x0086b9a0    55
                         mov.s              ebp, esp                                       // 0x0086b9a1    8bec
                         push               ebx                                            // 0x0086b9a3    53
                         push               esi                                            // 0x0086b9a4    56
                         {disp8} mov        esi, dword ptr [ebp + 0x08]                    // 0x0086b9a5    8b7508
                         test               esi, esi                                       // 0x0086b9a8    85f6
                         push               edi                                            // 0x0086b9aa    57
                         {disp32} je        _jmp_addr_0x0086bb4c                           // 0x0086b9ab    0f849b010000
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x0086b9b1    8b450c
                         test               eax, eax                                       // 0x0086b9b4    85c0
                         {disp32} je        _jmp_addr_0x0086bb4c                           // 0x0086b9b6    0f8490010000
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                    // 0x0086b9bc    8b4510
                         test               eax, eax                                       // 0x0086b9bf    85c0
                         {disp32} je        _jmp_addr_0x0086bb4c                           // 0x0086b9c1    0f8485010000
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                    // 0x0086b9c7    8b4520
                         test               eax, eax                                       // 0x0086b9ca    85c0
                         {disp32} jle       _jmp_addr_0x0086bb4c                           // 0x0086b9cc    0f8e7a010000
                         {disp8} mov        ecx, dword ptr [ebp + 0x1c]                    // 0x0086b9d2    8b4d1c
                         {disp8} mov        eax, dword ptr [ebp + 0x18]                    // 0x0086b9d5    8b4518
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x0086b9d8    8b550c
                         imul               eax, ecx                                       // 0x0086b9db    0fafc1
                         {disp8} mov        ebx, dword ptr [ebp + 0x10]                    // 0x0086b9de    8b5d10
                         shl                eax, 1                                         // 0x0086b9e1    d1e0
                         add.s              edx, eax                                       // 0x0086b9e3    03d0
                         {disp8} mov        dword ptr [ebp + 0x0c], edx                    // 0x0086b9e5    89550c
                         {disp8} mov        edx, dword ptr [ebp + 0x24]                    // 0x0086b9e8    8b5524
                         imul               ecx, edx                                       // 0x0086b9eb    0fafca
                         add.s              ebx, eax                                       // 0x0086b9ee    03d8
                         lea                eax, dword ptr [esi + ecx * 0x2]               // 0x0086b9f0    8d044e
                         {disp8} mov        dword ptr [ebp + 0x08], eax                    // 0x0086b9f3    894508
                         {disp8} mov        eax, dword ptr [ebp + 0x14]                    // 0x0086b9f6    8b4514
                         and                eax, 0x000000ff                                // 0x0086b9f9    25ff000000
                         mov                ecx, 0x000000ff                                // 0x0086b9fe    b9ff000000
                         sub.s              ecx, eax                                       // 0x0086ba03    2bc8
                         xor.s              esi, esi                                       // 0x0086ba05    33f6
                         {disp8} mov        dword ptr [ebp + 0x10], ebx                    // 0x0086ba07    895d10
                         {disp32} mov       dword ptr [data_bytes + 0x5dc510], edx         // 0x0086ba0a    89151025fa00
                         xor.s              edi, edi                                       // 0x0086ba10    33ff
_jmp_addr_0x0086ba12:    mov.s              edx, edi                                       // 0x0086ba12    8bd7
                         sar                edx, 8                                         // 0x0086ba14    c1fa08
                         {disp32} mov       byte ptr [esi + 0x00fa2554], dl                // 0x0086ba17    88965425fa00
                         inc                esi                                            // 0x0086ba1d    46
                         add.s              edi, eax                                       // 0x0086ba1e    03f8
                         cmp                esi, 0x40                                      // 0x0086ba20    83fe40
                         {disp8} jl         _jmp_addr_0x0086ba12                           // 0x0086ba23    7ced
                         xor.s              eax, eax                                       // 0x0086ba25    33c0
                         xor.s              esi, esi                                       // 0x0086ba27    33f6
_jmp_addr_0x0086ba29:    mov.s              edx, esi                                       // 0x0086ba29    8bd6
                         sar                edx, 8                                         // 0x0086ba2b    c1fa08
                         {disp32} mov       byte ptr [eax + 0x00fa2514], dl                // 0x0086ba2e    88901425fa00
                         inc                eax                                            // 0x0086ba34    40
                         add.s              esi, ecx                                       // 0x0086ba35    03f1
                         cmp                eax, 0x40                                      // 0x0086ba37    83f840
                         {disp8} jl         _jmp_addr_0x0086ba29                           // 0x0086ba3a    7ced
                         {disp32} mov       eax, dword ptr [data_bytes + 0x51746c]         // 0x0086ba3c    a16cd4ed00
                         test               eax, eax                                       // 0x0086ba41    85c0
                         {disp32} je        _jmp_addr_0x0086bacd                           // 0x0086ba43    0f8484000000
                         {disp8} mov        ch, byte ptr [ebp + 0x20]                      // 0x0086ba49    8a6d20
                         push               ebp                                            // 0x0086ba4c    55
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x0086ba4d    8b750c
                         {disp8} mov        edi, dword ptr [ebp + 0x08]                    // 0x0086ba50    8b7d08
                         {disp8} mov        ebp, dword ptr [ebp + 0x10]                    // 0x0086ba53    8b6d10
_jmp_addr_0x0086ba56:    {disp32} mov       cl, byte ptr [data_bytes + 0x5dc510]           // 0x0086ba56    8a0d1025fa00
_jmp_addr_0x0086ba5c:    mov                ebx, dword ptr [esi]                           // 0x0086ba5c    8b1e
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x0086ba5e    8b5500
                         shr                ebx, 0xb                                       // 0x0086ba61    c1eb0b
                         shr                edx, 0xb                                       // 0x0086ba64    c1ea0b
                         and                ebx, 0x1f                                      // 0x0086ba67    83e31f
                         and                edx, 0x1f                                      // 0x0086ba6a    83e21f
                         {disp32} mov       al, byte ptr [ebx + 0x00fa2554]                // 0x0086ba6d    8a835425fa00
                         mov                ebx, dword ptr [esi]                           // 0x0086ba73    8b1e
                         add                al, byte ptr [edx + 0x00fa2514]                // 0x0086ba75    02821425fa00
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x0086ba7b    8b5500
                         shr                ebx, 5                                         // 0x0086ba7e    c1eb05
                         shr                edx, 5                                         // 0x0086ba81    c1ea05
                         shl                eax, 6                                         // 0x0086ba84    c1e006
                         and                ebx, 0x3f                                      // 0x0086ba87    83e33f
                         and                edx, 0x3f                                      // 0x0086ba8a    83e23f
                         add                al, byte ptr [ebx + 0x00fa2554]                // 0x0086ba8d    02835425fa00
                         mov                ebx, dword ptr [esi]                           // 0x0086ba93    8b1e
                         add                al, byte ptr [edx + 0x00fa2514]                // 0x0086ba95    02821425fa00
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x0086ba9b    8b5500
                         shl                eax, 5                                         // 0x0086ba9e    c1e005
                         and                ebx, 0x1f                                      // 0x0086baa1    83e31f
                         and                edx, 0x1f                                      // 0x0086baa4    83e21f
                         add                al, byte ptr [ebx + 0x00fa2554]                // 0x0086baa7    02835425fa00
                         add                esi, 0x02                                      // 0x0086baad    83c602
                         add                ebp, 0x02                                      // 0x0086bab0    83c502
                         add                al, byte ptr [edx + 0x00fa2514]                // 0x0086bab3    02821425fa00
                         mov                word ptr [edi], ax                             // 0x0086bab9    668907
                         add                edi, 0x02                                      // 0x0086babc    83c702
                         dec                cl                                             // 0x0086babf    fec9
                         {disp8} jne        _jmp_addr_0x0086ba5c                           // 0x0086bac1    7599
                         dec                ch                                             // 0x0086bac3    fecd
                         {disp8} jne        _jmp_addr_0x0086ba56                           // 0x0086bac5    758f
                         pop                ebp                                            // 0x0086bac7    5d
                         pop                edi                                            // 0x0086bac8    5f
                         pop                esi                                            // 0x0086bac9    5e
                         pop                ebx                                            // 0x0086baca    5b
                         pop                ebp                                            // 0x0086bacb    5d
                         ret                                                               // 0x0086bacc    c3
_jmp_addr_0x0086bacd:    {disp8} mov        ch, byte ptr [ebp + 0x20]                      // 0x0086bacd    8a6d20
                         push               ebp                                            // 0x0086bad0    55
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x0086bad1    8b750c
                         {disp8} mov        edi, dword ptr [ebp + 0x08]                    // 0x0086bad4    8b7d08
                         {disp8} mov        ebp, dword ptr [ebp + 0x10]                    // 0x0086bad7    8b6d10
_jmp_addr_0x0086bada:    {disp32} mov       cl, byte ptr [data_bytes + 0x5dc510]           // 0x0086bada    8a0d1025fa00
_jmp_addr_0x0086bae0:    mov                ebx, dword ptr [esi]                           // 0x0086bae0    8b1e
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x0086bae2    8b5500
                         shr                ebx, 0xa                                       // 0x0086bae5    c1eb0a
                         shr                edx, 0xa                                       // 0x0086bae8    c1ea0a
                         and                ebx, 0x1f                                      // 0x0086baeb    83e31f
                         and                edx, 0x1f                                      // 0x0086baee    83e21f
                         {disp32} mov       al, byte ptr [ebx + 0x00fa2554]                // 0x0086baf1    8a835425fa00
                         mov                ebx, dword ptr [esi]                           // 0x0086baf7    8b1e
                         add                al, byte ptr [edx + 0x00fa2514]                // 0x0086baf9    02821425fa00
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x0086baff    8b5500
                         shr                ebx, 5                                         // 0x0086bb02    c1eb05
                         shr                edx, 5                                         // 0x0086bb05    c1ea05
                         shl                eax, 5                                         // 0x0086bb08    c1e005
                         and                ebx, 0x1f                                      // 0x0086bb0b    83e31f
                         and                edx, 0x1f                                      // 0x0086bb0e    83e21f
                         add                al, byte ptr [ebx + 0x00fa2554]                // 0x0086bb11    02835425fa00
                         mov                ebx, dword ptr [esi]                           // 0x0086bb17    8b1e
                         add                al, byte ptr [edx + 0x00fa2514]                // 0x0086bb19    02821425fa00
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x0086bb1f    8b5500
                         shl                eax, 5                                         // 0x0086bb22    c1e005
                         and                ebx, 0x1f                                      // 0x0086bb25    83e31f
                         and                edx, 0x1f                                      // 0x0086bb28    83e21f
                         add                al, byte ptr [ebx + 0x00fa2554]                // 0x0086bb2b    02835425fa00
                         add                esi, 0x02                                      // 0x0086bb31    83c602
                         add                ebp, 0x02                                      // 0x0086bb34    83c502
                         add                al, byte ptr [edx + 0x00fa2514]                // 0x0086bb37    02821425fa00
                         mov                word ptr [edi], ax                             // 0x0086bb3d    668907
                         add                edi, 0x02                                      // 0x0086bb40    83c702
                         dec                cl                                             // 0x0086bb43    fec9
                         {disp8} jne        _jmp_addr_0x0086bae0                           // 0x0086bb45    7599
                         dec                ch                                             // 0x0086bb47    fecd
                         {disp8} jne        _jmp_addr_0x0086bada                           // 0x0086bb49    758f
                         pop                ebp                                            // 0x0086bb4b    5d
_jmp_addr_0x0086bb4c:    pop                edi                                            // 0x0086bb4c    5f
                         pop                esi                                            // 0x0086bb4d    5e
                         pop                ebx                                            // 0x0086bb4e    5b
                         pop                ebp                                            // 0x0086bb4f    5d
                         ret                                                               // 0x0086bb50    c3
                         nop                                                               // 0x0086bb51    90
                         nop                                                               // 0x0086bb52    90
                         nop                                                               // 0x0086bb53    90
                         nop                                                               // 0x0086bb54    90
                         nop                                                               // 0x0086bb55    90
                         nop                                                               // 0x0086bb56    90
                         nop                                                               // 0x0086bb57    90
                         nop                                                               // 0x0086bb58    90
                         nop                                                               // 0x0086bb59    90
                         nop                                                               // 0x0086bb5a    90
                         nop                                                               // 0x0086bb5b    90
                         nop                                                               // 0x0086bb5c    90
                         nop                                                               // 0x0086bb5d    90
                         nop                                                               // 0x0086bb5e    90
                         nop                                                               // 0x0086bb5f    90
_jmp_addr_0x0086bb60:    push               ecx                                            // 0x0086bb60    51
                         {disp32} fld       dword ptr [data_bytes + 0x2735a8]              // 0x0086bb61    d905a895c300
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086bb67    d81d98a38a00
                         fnstsw             ax                                             // 0x0086bb6d    dfe0
                         test               ah, 0x40                                       // 0x0086bb6f    f6c440
                         {disp32} jne       _jmp_addr_0x0086bcf0                           // 0x0086bb72    0f8578010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc75c]         // 0x0086bb78    a15c27fa00
                         test               eax, eax                                       // 0x0086bb7d    85c0
                         {disp32} je        _jmp_addr_0x0086bcf0                           // 0x0086bb7f    0f846b010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc760]         // 0x0086bb85    a16027fa00
                         test               eax, eax                                       // 0x0086bb8a    85c0
                         {disp32} jne       _jmp_addr_0x0086bcf0                           // 0x0086bb8c    0f855e010000
                         {disp32} mov       dword ptr [data_bytes + 0x5dc75c], 0x00000000  // 0x0086bb92    c7055c27fa0000000000
                         call               _jmp_addr_0x0086bd00                           // 0x0086bb9c    e85f010000
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]              // 0x0086bba1    db05c09eea00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]              // 0x0086bba7    d80d104b8c00
                         fxch               st(1)                                          // 0x0086bbad    d9c9
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc778]              // 0x0086bbaf    d8257827fa00
                         fmulp              st(1), st                                      // 0x0086bbb5    dec9
                         {disp32} fadd      dword ptr [data_bytes + 0x5dc778]              // 0x0086bbb7    d8057827fa00
                         {disp32} fst       dword ptr [data_bytes + 0x5dc778]              // 0x0086bbbd    d9157827fa00
                         {disp32} fcomp     dword ptr [__real@437f0000]                    // 0x0086bbc3    d81d70b28a00
                         fnstsw             ax                                             // 0x0086bbc9    dfe0
                         test               ah, 0x41                                       // 0x0086bbcb    f6c441
                         {disp8} jne        _jmp_addr_0x0086bbdc                           // 0x0086bbce    750c
                         {disp32} mov       dword ptr [data_bytes + 0x5dc778], 0x437f0000  // 0x0086bbd0    c7057827fa0000007f43
                         {disp8} jmp        _jmp_addr_0x0086bbf9                           // 0x0086bbda    eb1d
_jmp_addr_0x0086bbdc:    {disp32} fld       dword ptr [data_bytes + 0x5dc778]              // 0x0086bbdc    d9057827fa00
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086bbe2    d81d98a38a00
                         fnstsw             ax                                             // 0x0086bbe8    dfe0
                         test               ah, 0x01                                       // 0x0086bbea    f6c401
                         {disp8} je         _jmp_addr_0x0086bbf9                           // 0x0086bbed    740a
                         {disp32} mov       dword ptr [data_bytes + 0x5dc778], 0x00000000  // 0x0086bbef    c7057827fa0000000000
_jmp_addr_0x0086bbf9:    {disp32} fld       dword ptr [data_bytes + 0x5dc778]              // 0x0086bbf9    d9057827fa00
                         {disp32} fmul      dword ptr [data_bytes + 0x2735a8]              // 0x0086bbff    d80da895c300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57058]              // 0x0086bc05    d80d58009000
                         call               _jmp_addr_0x007a1400                           // 0x0086bc0b    e8f057f3ff
                         {disp32} fld       dword ptr [data_bytes + 0x5dc754]              // 0x0086bc10    d9055427fa00
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086bc16    d81d98a38a00
                         mov.s              edx, eax                                       // 0x0086bc1c    8bd0
                         {disp8} mov        dword ptr [esp + 0x00], edx                    // 0x0086bc1e    89542400
                         fnstsw             ax                                             // 0x0086bc22    dfe0
                         test               ah, 0x41                                       // 0x0086bc24    f6c441
                         {disp8} jne        _jmp_addr_0x0086bc51                           // 0x0086bc27    7528
                         {disp32} mov       eax, dword ptr [data_bytes + 0x271204]         // 0x0086bc29    a10472c300
                         test               eax, eax                                       // 0x0086bc2e    85c0
                         {disp8} je         _jmp_addr_0x0086bc51                           // 0x0086bc30    741f
                         {disp8} fild       dword ptr [esp + 0x00]                         // 0x0086bc32    db442400
                         {disp32} fld       dword ptr [data_bytes + 0x5dc754]              // 0x0086bc36    d9055427fa00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c70]              // 0x0086bc3c    d80d702c8c00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x0086bc42    d80590a38a00
                         fdivp              st(1), st                                      // 0x0086bc48    def9
                         call               _jmp_addr_0x007a1400                           // 0x0086bc4a    e8b157f3ff
                         mov.s              edx, eax                                       // 0x0086bc4f    8bd0
_jmp_addr_0x0086bc51:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086bc51    8b0d1c27fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086bc57    8b01
                         shl                edx, 0x18                                      // 0x0086bc59    c1e218
                         push               0x0                                            // 0x0086bc5c    6a00
                         or                 edx, 0xa06a35                                  // 0x0086bc5e    81ca356aa000
                         call               dword ptr [eax + 0x2c]                         // 0x0086bc64    ff502c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086bc67    8b0d1c27fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086bc6d    8b01
                         push               0x3fe66666                                     // 0x0086bc6f    686666e63f
                         push               0x4016cbe4                                     // 0x0086bc74    68e4cb1640
                         mov                edx, 0x00fa2710                                // 0x0086bc79    ba1027fa00
                         call               dword ptr [eax + 0x20]                         // 0x0086bc7e    ff5020
                         cmp                dword ptr [data_bytes + 0x50424c], 0x08        // 0x0086bc81    833d4ca2ec0008
                         {disp8} je         _jmp_addr_0x0086bca8                           // 0x0086bc88    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x0086bc8a    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086bc8f    8b08
                         push               0x8                                            // 0x0086bc91    6a08
                         push               0x17                                           // 0x0086bc93    6a17
                         push               eax                                            // 0x0086bc95    50
                         call               dword ptr [ecx + 0x50]                         // 0x0086bc96    ff5150
                         neg                eax                                            // 0x0086bc99    f7d8
                         sbb.s              eax, eax                                       // 0x0086bc9b    1bc0
                         and                eax, 0xfffffff7                                // 0x0086bc9d    83e0f7
                         add                eax, 0x08                                      // 0x0086bca0    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x0086bca3    a34ca2ec00
_jmp_addr_0x0086bca8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086bca8    8b0d1c27fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086bcae    8b01
                         mov                edx, 0x00000001                                // 0x0086bcb0    ba01000000
                         call               dword ptr [eax + 0xa0]                         // 0x0086bcb5    ff90a0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086bcbb    8b0d1c27fa00
                         mov                edx, dword ptr [ecx]                           // 0x0086bcc1    8b11
                         call               dword ptr [edx + 0x108]                        // 0x0086bcc3    ff9208010000
                         cmp                dword ptr [data_bytes + 0x50424c], 0x04        // 0x0086bcc9    833d4ca2ec0004
                         {disp8} je         _jmp_addr_0x0086bcf0                           // 0x0086bcd0    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x0086bcd2    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086bcd7    8b08
                         push               0x4                                            // 0x0086bcd9    6a04
                         push               0x17                                           // 0x0086bcdb    6a17
                         push               eax                                            // 0x0086bcdd    50
                         call               dword ptr [ecx + 0x50]                         // 0x0086bcde    ff5150
                         neg                eax                                            // 0x0086bce1    f7d8
                         sbb.s              eax, eax                                       // 0x0086bce3    1bc0
                         and                eax, 0xfffffffb                                // 0x0086bce5    83e0fb
                         add                eax, 0x04                                      // 0x0086bce8    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x0086bceb    a34ca2ec00
_jmp_addr_0x0086bcf0:    pop                ecx                                            // 0x0086bcf0    59
                         ret                                                               // 0x0086bcf1    c3
                         nop                                                               // 0x0086bcf2    90
                         nop                                                               // 0x0086bcf3    90
                         nop                                                               // 0x0086bcf4    90
                         nop                                                               // 0x0086bcf5    90
                         nop                                                               // 0x0086bcf6    90
                         nop                                                               // 0x0086bcf7    90
                         nop                                                               // 0x0086bcf8    90
                         nop                                                               // 0x0086bcf9    90
                         nop                                                               // 0x0086bcfa    90
                         nop                                                               // 0x0086bcfb    90
                         nop                                                               // 0x0086bcfc    90
                         nop                                                               // 0x0086bcfd    90
                         nop                                                               // 0x0086bcfe    90
                         nop                                                               // 0x0086bcff    90
_jmp_addr_0x0086bd00:    sub                esp, 0x000000e4                                // 0x0086bd00    81ece4000000
                         {disp32} fld       dword ptr [data_bytes + 0x2735c0]              // 0x0086bd06    d905c095c300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc714]         // 0x0086bd0c    a11427fa00
                         fchs                                                              // 0x0086bd11    d9e0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc718]         // 0x0086bd13    8b0d1827fa00
                         {disp8} fst        dword ptr [esp + 0x30]                         // 0x0086bd19    d9542430
                         {disp8} mov        dword ptr [esp + 0x04], eax                    // 0x0086bd1d    89442404
                         {disp8} fst        dword ptr [esp + 0x34]                         // 0x0086bd21    d9542434
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x0086bd25    894c2408
                         {disp8} fst        dword ptr [esp + 0x3c]                         // 0x0086bd29    d954243c
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000             // 0x0086bd2d    c744242400000000
                         {disp32} fld       dword ptr [data_bytes + 0x2735c0]              // 0x0086bd35    d905c095c300
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000             // 0x0086bd3b    c744242800000000
                         {disp8} fstp       dword ptr [esp + 0x40]                         // 0x0086bd43    d95c2440
                         {disp32} fld       dword ptr [data_bytes + 0x2735c0]              // 0x0086bd47    d905c095c300
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000             // 0x0086bd4d    c744242c00000000
                         {disp8} fstp       dword ptr [esp + 0x48]                         // 0x0086bd55    d95c2448
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000             // 0x0086bd59    c744243800000000
                         {disp8} fstp       dword ptr [esp + 0x4c]                         // 0x0086bd61    d95c244c
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000             // 0x0086bd65    c744244400000000
                         {disp32} fld       dword ptr [data_bytes + 0x2735c0]              // 0x0086bd6d    d905c095c300
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000             // 0x0086bd73    c744245000000000
                         {disp8} fstp       dword ptr [esp + 0x54]                         // 0x0086bd7b    d95c2454
                         {disp32} fld       dword ptr [data_bytes + 0x2735c0]              // 0x0086bd7f    d905c095c300
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000             // 0x0086bd85    c744245c00000000
                         {disp8} fstp       dword ptr [esp + 0x58]                         // 0x0086bd8d    d95c2458
                         {disp32} fld       dword ptr [data_bytes + 0x5dc710]              // 0x0086bd91    d9051027fa00
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdb8]              // 0x0086bd97    d825b81dea00
                         {disp8} fstp       dword ptr [esp + 0x00]                         // 0x0086bd9d    d95c2400
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086bda1    d9442404
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdbc]              // 0x0086bda5    d825bc1dea00
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x0086bdab    d95c2404
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086bdaf    d9442408
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdc0]              // 0x0086bdb3    d825c01dea00
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x0086bdb9    d95c2408
                         {disp32} fld       dword ptr [_near_clipping]                     // 0x0086bdbd    d905e039e800
                         {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086bdc3    d9442400
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086bdc7    d81d98a38a00
                         fnstsw             ax                                             // 0x0086bdcd    dfe0
                         test               ah, 0x40                                       // 0x0086bdcf    f6c440
                         {disp8} je         _jmp_addr_0x0086bdf6                           // 0x0086bdd2    7422
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086bdd4    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086bdd8    d81d98a38a00
                         fnstsw             ax                                             // 0x0086bdde    dfe0
                         test               ah, 0x40                                       // 0x0086bde0    f6c440
                         {disp8} je         _jmp_addr_0x0086bdf6                           // 0x0086bde3    7411
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086bde5    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086bde9    d81d98a38a00
                         fnstsw             ax                                             // 0x0086bdef    dfe0
                         test               ah, 0x40                                       // 0x0086bdf1    f6c440
                         {disp8} jne        _jmp_addr_0x0086be34                           // 0x0086bdf4    753e
_jmp_addr_0x0086bdf6:    {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086bdf6    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x0086bdfa    d84c2408
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086bdfe    d9442404
                         {disp8} fmul       dword ptr [esp + 0x04]                         // 0x0086be02    d84c2404
                         faddp              st(1), st                                      // 0x0086be06    dec1
                         {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086be08    d9442400
                         {disp8} fmul       dword ptr [esp + 0x00]                         // 0x0086be0c    d84c2400
                         faddp              st(1), st                                      // 0x0086be10    dec1
                         fsqrt                                                             // 0x0086be12    d9fa
                         fdivp              st(1), st                                      // 0x0086be14    def9
                         fld                st(0)                                          // 0x0086be16    d9c0
                         {disp8} fmul       dword ptr [esp + 0x00]                         // 0x0086be18    d84c2400
                         {disp8} fstp       dword ptr [esp + 0x00]                         // 0x0086be1c    d95c2400
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086be20    d9442404
                         fmul               st, st(1)                                      // 0x0086be24    d8c9
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x0086be26    d95c2404
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0086be2a    d9442408
                         fmul               st, st(1)                                      // 0x0086be2e    d8c9
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x0086be30    d95c2408
_jmp_addr_0x0086be34:    {disp32} mov       eax, dword ptr [data_bytes + 0x2721ec]         // 0x0086be34    a1ec81c300
                         fstp               st(0)                                          // 0x0086be39    ddd8
                         cmp                eax, 0x03                                      // 0x0086be3b    83f803
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2726d8]         // 0x0086be3e    8b0dd886c300
                         push               ebx                                            // 0x0086be44    53
                         push               ebp                                            // 0x0086be45    55
                         push               esi                                            // 0x0086be46    56
                         push               edi                                            // 0x0086be47    57
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000001             // 0x0086be48    c744242c01000000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x0086be50    894c241c
                         {disp8} je         _jmp_addr_0x0086be6a                           // 0x0086be54    7414
                         cmp                eax, 0x04                                      // 0x0086be56    83f804
                         {disp8} je         _jmp_addr_0x0086be6a                           // 0x0086be59    740f
                         cmp                eax, 0x06                                      // 0x0086be5b    83f806
                         {disp8} je         _jmp_addr_0x0086be6a                           // 0x0086be5e    740a
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000             // 0x0086be60    c744241c00000000
                         {disp8} jmp        _jmp_addr_0x0086bea6                           // 0x0086be68    eb3c
_jmp_addr_0x0086be6a:    test               ecx, ecx                                       // 0x0086be6a    85c9
                         {disp8} je         _jmp_addr_0x0086bea6                           // 0x0086be6c    7438
                         push               0x0                                            // 0x0086be6e    6a00
                         xor.s              eax, eax                                       // 0x0086be70    33c0
                         mov                ecx, 0x0000001f                                // 0x0086be72    b91f000000
                         {disp8} lea        edi, dword ptr [esp + 0x7c]                    // 0x0086be77    8d7c247c
                         rep stosd                                                         // 0x0086be7b    f3ab
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50463c]         // 0x0086be7d    a13ca6ec00
                         push               0x00000811                                     // 0x0086be82    6811080000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]              // 0x0086be87    8d8c2480000000
                         push               ecx                                            // 0x0086be8e    51
                         push               0x0                                            // 0x0086be8f    6a00
                         {disp32} mov       dword ptr [esp + 0x00000088], 0x0000007c       // 0x0086be91    c78424880000007c000000
                         mov                edx, dword ptr [eax]                           // 0x0086be9c    8b10
                         push               eax                                            // 0x0086be9e    50
                         call               dword ptr [edx + 0x64]                         // 0x0086be9f    ff5264
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x0086bea2    8944242c
_jmp_addr_0x0086bea6:    {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x0086bea6    c744242000000000
                         {disp8} lea        edi, dword ptr [esp + 0x3c]                    // 0x0086beae    8d7c243c
                         mov                ebp, 0x00000005                                // 0x0086beb2    bd05000000
_jmp_addr_0x0086beb7:    {disp32} fld       dword ptr [data_bytes + 0x5dc710]              // 0x0086beb7    d9051027fa00
                         {disp8} lea        esi, dword ptr [edi + -0x08]                   // 0x0086bebd    8d77f8
                         fadd               dword ptr [esi]                                // 0x0086bec0    d806
                         fstp               dword ptr [esi]                                // 0x0086bec2    d91e
                         {disp32} fld       dword ptr [data_bytes + 0x5dc714]              // 0x0086bec4    d9051427fa00
                         {disp8} fadd       dword ptr [edi + -0x04]                        // 0x0086beca    d847fc
                         {disp8} fstp       dword ptr [edi + -0x04]                        // 0x0086becd    d95ffc
                         {disp32} fld       dword ptr [data_bytes + 0x5dc718]              // 0x0086bed0    d9051827fa00
                         fadd               dword ptr [edi]                                // 0x0086bed6    d807
                         fstp               dword ptr [edi]                                // 0x0086bed8    d91f
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086beda    d9442410
                         fadd               dword ptr [esi]                                // 0x0086bede    d806
                         fstp               dword ptr [esi]                                // 0x0086bee0    d91e
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x0086bee2    d9442414
                         {disp8} fadd       dword ptr [edi + -0x04]                        // 0x0086bee6    d847fc
                         {disp8} fstp       dword ptr [edi + -0x04]                        // 0x0086bee9    d95ffc
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x0086beec    d9442418
                         fadd               dword ptr [edi]                                // 0x0086bef0    d807
                         fstp               dword ptr [edi]                                // 0x0086bef2    d91f
                         {disp8} fld        dword ptr [edi + -0x04]                        // 0x0086bef4    d947fc
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2414]               // 0x0086bef7    d81d14b48a00
                         fnstsw             ax                                             // 0x0086befd    dfe0
                         test               ah, 0x01                                       // 0x0086beff    f6c401
                         {disp8} je         _jmp_addr_0x0086bf0b                           // 0x0086bf02    7407
                         {disp8} mov        dword ptr [edi + -0x04], 0x41200000            // 0x0086bf04    c747fc00002041
_jmp_addr_0x0086bf0b:    {disp8} lea        edx, dword ptr [esp + 0x70]                    // 0x0086bf0b    8d542470
                         push               edx                                            // 0x0086bf0f    52
                         {disp8} lea        eax, dword ptr [esp + 0x78]                    // 0x0086bf10    8d442478
                         push               eax                                            // 0x0086bf14    50
                         mov.s              edx, esi                                       // 0x0086bf15    8bd6
                         mov                ecx, 0x00ea1db8                                // 0x0086bf17    b9b81dea00
                         call               _jmp_addr_0x00802550                           // 0x0086bf1c    e82f66f9ff
                         mov.s              ebx, eax                                       // 0x0086bf21    8bd8
                         test               ebx, ebx                                       // 0x0086bf23    85db
                         {disp32} jne       _jmp_addr_0x0086bfb9                           // 0x0086bf25    0f858e000000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x0086bf2b    8b44242c
                         test               eax, eax                                       // 0x0086bf2f    85c0
                         {disp32} jne       _jmp_addr_0x0086bfb9                           // 0x0086bf31    0f8582000000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x0086bf37    8b44241c
                         test               eax, eax                                       // 0x0086bf3b    85c0
                         {disp8} je         _jmp_addr_0x0086bfb9                           // 0x0086bf3d    747a
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                    // 0x0086bf3f    8d4c2428
                         push               ecx                                            // 0x0086bf43    51
                         {disp8} lea        edx, dword ptr [esp + 0x28]                    // 0x0086bf44    8d542428
                         mov.s              ecx, esi                                       // 0x0086bf48    8bce
                         call               _jmp_addr_0x008190d0                           // 0x0086bf4a    e881d1faff
                         cmp                eax, 0x02                                      // 0x0086bf4f    83f802
                         {disp8} jne        _jmp_addr_0x0086bfb9                           // 0x0086bf52    7565
                         {disp8} mov        esi, dword ptr [esp + 0x24]                    // 0x0086bf54    8b742424
                         test               esi, esi                                       // 0x0086bf58    85f6
                         {disp8} jge        _jmp_addr_0x0086bf62                           // 0x0086bf5a    7d06
                         xor.s              esi, esi                                       // 0x0086bf5c    33f6
                         {disp8} mov        dword ptr [esp + 0x24], esi                    // 0x0086bf5e    89742424
_jmp_addr_0x0086bf62:    {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x0086bf62    8b4c2428
                         test               ecx, ecx                                       // 0x0086bf66    85c9
                         {disp8} jge        _jmp_addr_0x0086bf70                           // 0x0086bf68    7d06
                         xor.s              ecx, ecx                                       // 0x0086bf6a    33c9
                         {disp8} mov        dword ptr [esp + 0x28], ecx                    // 0x0086bf6c    894c2428
_jmp_addr_0x0086bf70:    {disp32} mov       eax, dword ptr [esp + 0x00000084]              // 0x0086bf70    8b842484000000
                         cmp.s              esi, eax                                       // 0x0086bf77    3bf0
                         .byte              0x72, 0x7// {disp8} jb _jmp_addr_0x0086bf82    // 0x0086bf79    7207
                         {disp8} lea        esi, dword ptr [eax + -0x01]                   // 0x0086bf7b    8d70ff
                         {disp8} mov        dword ptr [esp + 0x24], esi                    // 0x0086bf7e    89742424
_jmp_addr_0x0086bf82:    {disp32} mov       eax, dword ptr [esp + 0x00000080]              // 0x0086bf82    8b842480000000
                         cmp.s              ecx, eax                                       // 0x0086bf89    3bc8
                         .byte              0x72, 0x7// {disp8} jb _jmp_addr_0x0086bf94    // 0x0086bf8b    7207
                         {disp8} lea        ecx, dword ptr [eax + -0x01]                   // 0x0086bf8d    8d48ff
                         {disp8} mov        dword ptr [esp + 0x28], ecx                    // 0x0086bf90    894c2428
_jmp_addr_0x0086bf94:    {disp32} mov       eax, dword ptr [esp + 0x00000088]              // 0x0086bf94    8b842488000000
                         imul               eax, ecx                                       // 0x0086bf9b    0fafc1
                         cdq                                                               // 0x0086bf9e    99
                         sub.s              eax, edx                                       // 0x0086bf9f    2bc2
                         {disp32} mov       edx, dword ptr [esp + 0x0000009c]              // 0x0086bfa1    8b94249c000000
                         sar                eax, 1                                         // 0x0086bfa8    d1f8
                         add.s              eax, esi                                       // 0x0086bfaa    03c6
                         cmp                word ptr [edx + eax * 0x2], -0x0218            // 0x0086bfac    66813c42e8fd
                         {disp8} jae        _jmp_addr_0x0086bfb9                           // 0x0086bfb2    7305
                         mov                ebx, 0x00000001                                // 0x0086bfb4    bb01000000
_jmp_addr_0x0086bfb9:    xor.s              eax, eax                                       // 0x0086bfb9    33c0
                         test               ebx, ebx                                       // 0x0086bfbb    85db
                         setne              al                                             // 0x0086bfbd    0f95c0
                         add                edi, 0x0c                                      // 0x0086bfc0    83c70c
                         dec                ebp                                            // 0x0086bfc3    4d
                         {disp8} mov        dword ptr [esp + 0x30], eax                    // 0x0086bfc4    89442430
                         {disp8} fild       dword ptr [esp + 0x30]                         // 0x0086bfc8    db442430
                         {disp8} fadd       dword ptr [esp + 0x20]                         // 0x0086bfcc    d8442420
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x0086bfd0    d95c2420
                         {disp32} jne       _jmp_addr_0x0086beb7                           // 0x0086bfd4    0f85ddfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x0086bfda    8b44241c
                         test               eax, eax                                       // 0x0086bfde    85c0
                         pop                edi                                            // 0x0086bfe0    5f
                         pop                esi                                            // 0x0086bfe1    5e
                         pop                ebp                                            // 0x0086bfe2    5d
                         pop                ebx                                            // 0x0086bfe3    5b
                         {disp8} je         _jmp_addr_0x0086bff6                           // 0x0086bfe4    7410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50463c]         // 0x0086bfe6    a13ca6ec00
                         mov                ecx, dword ptr [eax]                           // 0x0086bfeb    8b08
                         push               0x0                                            // 0x0086bfed    6a00
                         push               eax                                            // 0x0086bfef    50
                         call               dword ptr [ecx + 0x80]                         // 0x0086bff0    ff9180000000
_jmp_addr_0x0086bff6:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086bff6    d9442410
                         {disp32} fmul      dword ptr [_rdata_float0p2]                    // 0x0086bffa    d80daca38a00
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                    // 0x0086c000    d82d90a38a00
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086c006    d80d70b28a00
                         add                esp, 0x000000e4                                // 0x0086c00c    81c4e4000000
                         ret                                                               // 0x0086c012    c3
                         nop                                                               // 0x0086c013    90
                         nop                                                               // 0x0086c014    90
                         nop                                                               // 0x0086c015    90
                         nop                                                               // 0x0086c016    90
                         nop                                                               // 0x0086c017    90
                         nop                                                               // 0x0086c018    90
                         nop                                                               // 0x0086c019    90
                         nop                                                               // 0x0086c01a    90
                         nop                                                               // 0x0086c01b    90
                         nop                                                               // 0x0086c01c    90
                         nop                                                               // 0x0086c01d    90
                         nop                                                               // 0x0086c01e    90
                         nop                                                               // 0x0086c01f    90
_jmp_addr_0x0086c020:    push               ecx                                            // 0x0086c020    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6c4]         // 0x0086c021    a1c426fa00
                         push               eax                                            // 0x0086c026    50
                         call               _jmp_addr_0x0086a160                           // 0x0086c027    e834e1ffff
                         {disp8} fst        dword ptr [esp + 0x04]                         // 0x0086c02c    d9542404
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086c030    d9442404
                         add                esp, 0x04                                      // 0x0086c034    83c404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xf1174]              // 0x0086c037    d81d74a19900
                         fnstsw             ax                                             // 0x0086c03d    dfe0
                         test               ah, 0x41                                       // 0x0086c03f    f6c441
                         {disp8} jne        _jmp_addr_0x0086c04e                           // 0x0086c042    750a
                         fstp               st(0)                                          // 0x0086c044    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0xf1174]              // 0x0086c046    d90574a19900
                         {disp8} jmp        _jmp_addr_0x0086c07a                           // 0x0086c04c    eb2c
_jmp_addr_0x0086c04e:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c04e    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x235c]               // 0x0086c052    d81d5cb38a00
                         fnstsw             ax                                             // 0x0086c058    dfe0
                         test               ah, 0x01                                       // 0x0086c05a    f6c401
                         {disp8} je         _jmp_addr_0x0086c069                           // 0x0086c05d    740a
                         fstp               st(0)                                          // 0x0086c05f    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x235c]               // 0x0086c061    d9055cb38a00
                         {disp8} jmp        _jmp_addr_0x0086c086                           // 0x0086c067    eb1d
_jmp_addr_0x0086c069:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c069    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x261c0]              // 0x0086c06d    d81dc0f18c00
                         fnstsw             ax                                             // 0x0086c073    dfe0
                         test               ah, 0x41                                       // 0x0086c075    f6c441
                         {disp8} jne        _jmp_addr_0x0086c086                           // 0x0086c078    750c
_jmp_addr_0x0086c07a:    {disp32} fsub      dword ptr [rdata_bytes + 0x261c0]              // 0x0086c07a    d825c0f18c00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x261c0]              // 0x0086c080    d82dc0f18c00
_jmp_addr_0x0086c086:    {disp32} fsub      dword ptr [rdata_bytes + 0x235c]               // 0x0086c086    d8255cb38a00
                         {disp32} mov       dword ptr [data_bytes + 0x2735a8], 0x437f0000  // 0x0086c08c    c705a895c30000007f43
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                    // 0x0086c096    d80d68b28a00
                         {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c09c    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x235c]               // 0x0086c0a0    d81d5cb38a00
                         fnstsw             ax                                             // 0x0086c0a6    dfe0
                         test               ah, 0x01                                       // 0x0086c0a8    f6c401
                         {disp8} je         _jmp_addr_0x0086c0e0                           // 0x0086c0ab    7433
                         {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c0ad    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]              // 0x0086c0b1    d81d502c8c00
                         fnstsw             ax                                             // 0x0086c0b7    dfe0
                         test               ah, 0x01                                       // 0x0086c0b9    f6c401
                         {disp8} je         _jmp_addr_0x0086c0ca                           // 0x0086c0bc    740c
                         {disp32} mov       dword ptr [data_bytes + 0x2735a8], 0x00000000  // 0x0086c0be    c705a895c30000000000
                         {disp8} jmp        _jmp_addr_0x0086c0e0                           // 0x0086c0c8    eb16
_jmp_addr_0x0086c0ca:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c0ca    d9442400
                         {disp32} fsub      dword ptr [rdata_bytes + 0x19c50]              // 0x0086c0ce    d825502c8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabfc]              // 0x0086c0d4    d80dfc3b9a00
                         {disp32} fstp      dword ptr [data_bytes + 0x2735a8]              // 0x0086c0da    d91da895c300
_jmp_addr_0x0086c0e0:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c0e0    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xf1174]              // 0x0086c0e4    d81d74a19900
                         fnstsw             ax                                             // 0x0086c0ea    dfe0
                         test               ah, 0x41                                       // 0x0086c0ec    f6c441
                         {disp8} jne        _jmp_addr_0x0086c130                           // 0x0086c0ef    753f
                         {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c0f1    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xfabf8]              // 0x0086c0f5    d81df83b9a00
                         fnstsw             ax                                             // 0x0086c0fb    dfe0
                         test               ah, 0x41                                       // 0x0086c0fd    f6c441
                         {disp8} jne        _jmp_addr_0x0086c114                           // 0x0086c100    7512
                         {disp32} mov       dword ptr [data_bytes + 0x2735a8], 0x00000000  // 0x0086c102    c705a895c30000000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabf4]              // 0x0086c10c    d80df43b9a00
                         pop                ecx                                            // 0x0086c112    59
                         ret                                                               // 0x0086c113    c3
_jmp_addr_0x0086c114:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c114    d9442400
                         {disp32} fsub      dword ptr [rdata_bytes + 0xf1174]              // 0x0086c118    d82574a19900
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabfc]              // 0x0086c11e    d80dfc3b9a00
                         {disp32} fsubr     dword ptr [__real@437f0000]                    // 0x0086c124    d82d70b28a00
                         {disp32} fstp      dword ptr [data_bytes + 0x2735a8]              // 0x0086c12a    d91da895c300
_jmp_addr_0x0086c130:    {disp32} fmul      dword ptr [rdata_bytes + 0xfabf4]              // 0x0086c130    d80df43b9a00
                         pop                ecx                                            // 0x0086c136    59
                         ret                                                               // 0x0086c137    c3
                         nop                                                               // 0x0086c138    90
                         nop                                                               // 0x0086c139    90
                         nop                                                               // 0x0086c13a    90
                         nop                                                               // 0x0086c13b    90
                         nop                                                               // 0x0086c13c    90
                         nop                                                               // 0x0086c13d    90
                         nop                                                               // 0x0086c13e    90
                         nop                                                               // 0x0086c13f    90
_jmp_addr_0x0086c140:    push               ecx                                            // 0x0086c140    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc760]         // 0x0086c141    a16027fa00
                         test               eax, eax                                       // 0x0086c146    85c0
                         {disp32} jne       _jmp_addr_0x0086c217                           // 0x0086c148    0f85c9000000
                         call               _jmp_addr_0x0086c020                           // 0x0086c14e    e8cdfeffff
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc714]              // 0x0086c153    d91d1427fa00
                         {disp32} fld       dword ptr [data_bytes + 0x2735a8]              // 0x0086c159    d905a895c300
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086c15f    d81d98a38a00
                         fnstsw             ax                                             // 0x0086c165    dfe0
                         test               ah, 0x40                                       // 0x0086c167    f6c440
                         {disp32} jne       _jmp_addr_0x0086c217                           // 0x0086c16a    0f85a7000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086c170    8b0d1c27fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086c176    8b01
                         push               0x3f800000                                     // 0x0086c178    680000803f
                         push               0x4016cbe4                                     // 0x0086c17d    68e4cb1640
                         mov                edx, 0x00fa2710                                // 0x0086c182    ba1027fa00
                         call               dword ptr [eax + 0x20]                         // 0x0086c187    ff5020
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086c18a    8b0d1c27fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086c190    8b01
                         mov                edx, 0x00000001                                // 0x0086c192    ba01000000
                         call               dword ptr [eax + 0xa0]                         // 0x0086c197    ff90a0000000
                         {disp32} fld       dword ptr [data_bytes + 0x2735a8]              // 0x0086c19d    d905a895c300
                         call               _jmp_addr_0x007a1400                           // 0x0086c1a3    e85852f3ff
                         {disp32} fld       dword ptr [data_bytes + 0x5dc754]              // 0x0086c1a8    d9055427fa00
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086c1ae    d81d98a38a00
                         mov.s              edx, eax                                       // 0x0086c1b4    8bd0
                         {disp8} mov        dword ptr [esp + 0x00], edx                    // 0x0086c1b6    89542400
                         fnstsw             ax                                             // 0x0086c1ba    dfe0
                         test               ah, 0x41                                       // 0x0086c1bc    f6c441
                         {disp8} jne        _jmp_addr_0x0086c1e9                           // 0x0086c1bf    7528
                         {disp32} mov       eax, dword ptr [data_bytes + 0x271204]         // 0x0086c1c1    a10472c300
                         test               eax, eax                                       // 0x0086c1c6    85c0
                         {disp8} je         _jmp_addr_0x0086c1e9                           // 0x0086c1c8    741f
                         {disp8} fild       dword ptr [esp + 0x00]                         // 0x0086c1ca    db442400
                         {disp32} fld       dword ptr [data_bytes + 0x5dc754]              // 0x0086c1ce    d9055427fa00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c70]              // 0x0086c1d4    d80d702c8c00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x0086c1da    d80590a38a00
                         fdivp              st(1), st                                      // 0x0086c1e0    def9
                         call               _jmp_addr_0x007a1400                           // 0x0086c1e2    e81952f3ff
                         mov.s              edx, eax                                       // 0x0086c1e7    8bd0
_jmp_addr_0x0086c1e9:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086c1e9    8b0d1c27fa00
                         mov                eax, dword ptr [ecx]                           // 0x0086c1ef    8b01
                         shl                edx, 0x18                                      // 0x0086c1f1    c1e218
                         push               0x0                                            // 0x0086c1f4    6a00
                         or                 edx, 0x957c63                                  // 0x0086c1f6    81ca637c9500
                         call               dword ptr [eax + 0x2c]                         // 0x0086c1fc    ff502c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc71c]         // 0x0086c1ff    8b0d1c27fa00
                         mov                edx, dword ptr [ecx]                           // 0x0086c205    8b11
                         call               dword ptr [edx + 0x108]                        // 0x0086c207    ff9208010000
                         {disp32} mov       dword ptr [data_bytes + 0x5dc75c], 0x00000001  // 0x0086c20d    c7055c27fa0001000000
_jmp_addr_0x0086c217:    pop                ecx                                            // 0x0086c217    59
                         ret                                                               // 0x0086c218    c3
                         nop                                                               // 0x0086c219    90
                         nop                                                               // 0x0086c21a    90
                         nop                                                               // 0x0086c21b    90
                         nop                                                               // 0x0086c21c    90
                         nop                                                               // 0x0086c21d    90
                         nop                                                               // 0x0086c21e    90
                         nop                                                               // 0x0086c21f    90
_jmp_addr_0x0086c220:    push               ecx                                            // 0x0086c220    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6c4]         // 0x0086c221    a1c426fa00
                         push               eax                                            // 0x0086c226    50
                         call               _jmp_addr_0x0086a160                           // 0x0086c227    e834dfffff
                         {disp8} fst        dword ptr [esp + 0x04]                         // 0x0086c22c    d9542404
                         {disp32} fcomp     dword ptr [data_bytes + 0x2735c4]              // 0x0086c230    d81dc495c300
                         add                esp, 0x04                                      // 0x0086c236    83c404
                         fnstsw             ax                                             // 0x0086c239    dfe0
                         test               ah, 0x41                                       // 0x0086c23b    f6c441
                         {disp8} jne        _jmp_addr_0x0086c277                           // 0x0086c23e    7537
                         {disp32} fld       dword ptr [data_bytes + 0x2735cc]              // 0x0086c240    d905cc95c300
                         {disp32} fadd      dword ptr [data_bytes + 0x2735c4]              // 0x0086c246    d805c495c300
                         {disp8} fcomp      dword ptr [esp + 0x00]                         // 0x0086c24c    d85c2400
                         fnstsw             ax                                             // 0x0086c250    dfe0
                         test               ah, 0x01                                       // 0x0086c252    f6c401
                         {disp8} je         _jmp_addr_0x0086c25f                           // 0x0086c255    7408
                         {disp32} fld       dword ptr [__real@437f0000]                    // 0x0086c257    d90570b28a00
                         pop                ecx                                            // 0x0086c25d    59
                         ret                                                               // 0x0086c25e    c3
_jmp_addr_0x0086c25f:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c25f    d9442400
                         {disp32} fsub      dword ptr [data_bytes + 0x2735c4]              // 0x0086c263    d825c495c300
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086c269    d80d70b28a00
                         {disp32} fdiv      dword ptr [data_bytes + 0x2735cc]              // 0x0086c26f    d835cc95c300
                         pop                ecx                                            // 0x0086c275    59
                         ret                                                               // 0x0086c276    c3
_jmp_addr_0x0086c277:    {disp8} fld        dword ptr [esp + 0x00]                         // 0x0086c277    d9442400
                         {disp32} fcomp     dword ptr [data_bytes + 0x2735c8]              // 0x0086c27b    d81dc895c300
                         fnstsw             ax                                             // 0x0086c281    dfe0
                         test               ah, 0x41                                       // 0x0086c283    f6c441
                         {disp8} jne        _jmp_addr_0x0086c290                           // 0x0086c286    7508
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086c288    d90598a38a00
                         pop                ecx                                            // 0x0086c28e    59
                         ret                                                               // 0x0086c28f    c3
_jmp_addr_0x0086c290:    {disp32} fld       dword ptr [data_bytes + 0x2735c8]              // 0x0086c290    d905c895c300
                         {disp32} fsub      dword ptr [data_bytes + 0x2735cc]              // 0x0086c296    d825cc95c300
                         {disp8} fcomp      dword ptr [esp + 0x00]                         // 0x0086c29c    d85c2400
                         fnstsw             ax                                             // 0x0086c2a0    dfe0
                         test               ah, 0x41                                       // 0x0086c2a2    f6c441
                         {disp8} jne        _jmp_addr_0x0086c2af                           // 0x0086c2a5    7508
                         {disp32} fld       dword ptr [__real@437f0000]                    // 0x0086c2a7    d90570b28a00
                         pop                ecx                                            // 0x0086c2ad    59
                         ret                                                               // 0x0086c2ae    c3
_jmp_addr_0x0086c2af:    {disp32} fld       dword ptr [data_bytes + 0x2735c8]              // 0x0086c2af    d905c895c300
                         {disp8} fsub       dword ptr [esp + 0x00]                         // 0x0086c2b5    d8642400
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086c2b9    d80d70b28a00
                         {disp32} fdiv      dword ptr [data_bytes + 0x2735cc]              // 0x0086c2bf    d835cc95c300
                         pop                ecx                                            // 0x0086c2c5    59
                         ret                                                               // 0x0086c2c6    c3
                         nop                                                               // 0x0086c2c7    90
                         nop                                                               // 0x0086c2c8    90
                         nop                                                               // 0x0086c2c9    90
                         nop                                                               // 0x0086c2ca    90
                         nop                                                               // 0x0086c2cb    90
                         nop                                                               // 0x0086c2cc    90
                         nop                                                               // 0x0086c2cd    90
                         nop                                                               // 0x0086c2ce    90
                         nop                                                               // 0x0086c2cf    90
_jmp_addr_0x0086c2d0:    sub                esp, 0x1c                                      // 0x0086c2d0    83ec1c
                         {disp8} fld        dword ptr [esp + 0x20]                         // 0x0086c2d3    d9442420
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x0086c2d7    894c2408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e9e8]              // 0x0086c2db    d80de8798c00
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x0086c2e1    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x0086c2e5    d9442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e9e8]              // 0x0086c2e9    d80de8798c00
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x0086c2ef    d95c2424
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x0086c2f3    d9442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e9e8]              // 0x0086c2f7    d80de8798c00
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x0086c2fd    d95c2428
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x0086c301    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e9e8]              // 0x0086c305    d80de8798c00
                         {disp8} fst        dword ptr [esp + 0x2c]                         // 0x0086c30b    d954242c
                         {disp8} fcomp      dword ptr [esp + 0x28]                         // 0x0086c30f    d85c2428
                         fnstsw             ax                                             // 0x0086c313    dfe0
                         test               ah, 0x41                                       // 0x0086c315    f6c441
                         {disp8} je         _jmp_addr_0x0086c328                           // 0x0086c318    740e
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x0086c31a    d9442428
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1c840]              // 0x0086c31e    d80540588c00
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x0086c324    d95c242c
_jmp_addr_0x0086c328:    {disp8} fld        dword ptr [esp + 0x20]                         // 0x0086c328    d9442420
                         push               ebx                                            // 0x0086c32c    53
                         {disp8} fsub       dword ptr [esp + 0x30]                         // 0x0086c32d    d8642430
                         push               ebp                                            // 0x0086c331    55
                         push               esi                                            // 0x0086c332    56
                         push               edi                                            // 0x0086c333    57
                         call               _jmp_addr_0x007a1400                           // 0x0086c334    e8c750f3ff
                         mov.s              edi, eax                                       // 0x0086c339    8bf8
                         cmp                edi, 0x00000080                                // 0x0086c33b    81ff80000000
                         {disp32} jge       _jmp_addr_0x0086c552                           // 0x0086c341    0f8d0b020000
                         test               edi, edi                                       // 0x0086c347    85ff
                         {disp8} jge        _jmp_addr_0x0086c34d                           // 0x0086c349    7d02
                         xor.s              edi, edi                                       // 0x0086c34b    33ff
_jmp_addr_0x0086c34d:    {disp8} fld        dword ptr [esp + 0x34]                         // 0x0086c34d    d9442434
                         {disp8} fsub       dword ptr [esp + 0x3c]                         // 0x0086c351    d864243c
                         call               _jmp_addr_0x007a1400                           // 0x0086c355    e8a650f3ff
                         mov.s              esi, eax                                       // 0x0086c35a    8bf0
                         cmp                esi, 0x00000080                                // 0x0086c35c    81fe80000000
                         {disp32} jge       _jmp_addr_0x0086c552                           // 0x0086c362    0f8dea010000
                         test               esi, esi                                       // 0x0086c368    85f6
                         {disp8} jge        _jmp_addr_0x0086c36e                           // 0x0086c36a    7d02
                         xor.s              esi, esi                                       // 0x0086c36c    33f6
_jmp_addr_0x0086c36e:    {disp8} fld        dword ptr [esp + 0x30]                         // 0x0086c36e    d9442430
                         {disp8} fadd       dword ptr [esp + 0x3c]                         // 0x0086c372    d844243c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]               // 0x0086c376    d80578b48a00
                         call               _jmp_addr_0x007a1400                           // 0x0086c37c    e87f50f3ff
                         mov.s              ebp, eax                                       // 0x0086c381    8be8
                         test               ebp, ebp                                       // 0x0086c383    85ed
                         {disp32} jle       _jmp_addr_0x0086c552                           // 0x0086c385    0f8ec7010000
                         cmp                ebp, 0x00000080                                // 0x0086c38b    81fd80000000
                         {disp8} jle        _jmp_addr_0x0086c398                           // 0x0086c391    7e05
                         mov                ebp, 0x00000080                                // 0x0086c393    bd80000000
_jmp_addr_0x0086c398:    {disp8} fld        dword ptr [esp + 0x34]                         // 0x0086c398    d9442434
                         {disp8} fadd       dword ptr [esp + 0x3c]                         // 0x0086c39c    d844243c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]               // 0x0086c3a0    d80578b48a00
                         call               _jmp_addr_0x007a1400                           // 0x0086c3a6    e85550f3ff
                         test               eax, eax                                       // 0x0086c3ab    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0086c3ad    89442414
                         {disp32} jle       _jmp_addr_0x0086c552                           // 0x0086c3b1    0f8e9b010000
                         cmp                eax, 0x00000080                                // 0x0086c3b7    3d80000000
                         {disp8} jle        _jmp_addr_0x0086c3ca                           // 0x0086c3bc    7e0c
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000080             // 0x0086c3be    c744241480000000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086c3c6    8b442414
_jmp_addr_0x0086c3ca:    cmp.s              esi, eax                                       // 0x0086c3ca    3bf0
                         {disp8} fld        dword ptr [esp + 0x38]                         // 0x0086c3cc    d9442438
                         {disp8} fmul       dword ptr [esp + 0x38]                         // 0x0086c3d0    d84c2438
                         mov.s              ebx, esi                                       // 0x0086c3d4    8bde
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                    // 0x0086c3d6    895c241c
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x0086c3da    d95c2410
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x0086c3de    d944243c
                         {disp8} fmul       dword ptr [esp + 0x3c]                         // 0x0086c3e2    d84c243c
                         {disp8} fst        dword ptr [esp + 0x38]                         // 0x0086c3e6    d9542438
                         {disp8} fsub       dword ptr [esp + 0x10]                         // 0x0086c3ea    d8642410
                         {disp8} fdivr      dword ptr [esp + 0x40]                         // 0x0086c3ee    d87c2440
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x0086c3f2    d95c2424
                         {disp32} jge       _jmp_addr_0x0086c552                           // 0x0086c3f6    0f8d56010000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x0086c3fc    8b4c2418
                         mov.s              eax, edi                                       // 0x0086c400    8bc7
                         shl                esi, 7                                         // 0x0086c402    c1e607
                         sar                eax, 2                                         // 0x0086c405    c1f802
                         add.s              esi, edi                                       // 0x0086c408    03f7
                         lea                esi, dword ptr [ecx + esi * 0x4]               // 0x0086c40a    8d34b1
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x0086c40d    89442428
                         {disp8} mov        dword ptr [esp + 0x20], esi                    // 0x0086c411    89742420
_jmp_addr_0x0086c415:    {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x0086c415    8b4c2418
                         mov.s              edx, ebx                                       // 0x0086c419    8bd3
                         sar                edx, 2                                         // 0x0086c41b    c1fa02
                         add                edx, 0x00000200                                // 0x0086c41e    81c200020000
                         shl                edx, 5                                         // 0x0086c424    c1e205
                         add.s              edx, eax                                       // 0x0086c427    03d0
                         cmp.s              edi, ebp                                       // 0x0086c429    3bfd
                         lea                ecx, dword ptr [ecx + edx * 0x4]               // 0x0086c42b    8d0c91
                         mov.s              edx, edi                                       // 0x0086c42e    8bd7
                         {disp8} mov        dword ptr [esp + 0x3c], edx                    // 0x0086c430    8954243c
                         {disp32} jge       _jmp_addr_0x0086c533                           // 0x0086c434    0f8df9000000
                         {disp8} fild       dword ptr [esp + 0x1c]                         // 0x0086c43a    db44241c
                         {disp8} fsub       dword ptr [esp + 0x34]                         // 0x0086c43e    d8642434
                         fld                st(0)                                          // 0x0086c442    d9c0
                         fmulp              st(1), st                                      // 0x0086c444    dec9
_jmp_addr_0x0086c446:    {disp8} fild       dword ptr [esp + 0x3c]                         // 0x0086c446    db44243c
                         {disp8} fsub       dword ptr [esp + 0x30]                         // 0x0086c44a    d8642430
                         fld                st(0)                                          // 0x0086c44e    d9c0
                         fmul               st, st(1)                                      // 0x0086c450    d8c9
                         fadd               st, st(2)                                      // 0x0086c452    d8c2
                         {disp8} fstp       dword ptr [esp + 0x3c]                         // 0x0086c454    d95c243c
                         fstp               st(0)                                          // 0x0086c458    ddd8
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x0086c45a    d944243c
                         {disp8} fcomp      dword ptr [esp + 0x38]                         // 0x0086c45e    d85c2438
                         fnstsw             ax                                             // 0x0086c462    dfe0
                         test               ah, 0x01                                       // 0x0086c464    f6c401
                         {disp32} je        _jmp_addr_0x0086c511                           // 0x0086c467    0f84a4000000
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x0086c46d    d944243c
                         {disp8} fcomp      dword ptr [esp + 0x10]                         // 0x0086c471    d85c2410
                         fnstsw             ax                                             // 0x0086c475    dfe0
                         test               ah, 0x41                                       // 0x0086c477    f6c441
                         {disp8} je         _jmp_addr_0x0086c482                           // 0x0086c47a    7406
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x0086c47c    d9442440
                         {disp8} jmp        _jmp_addr_0x0086c492                           // 0x0086c480    eb10
_jmp_addr_0x0086c482:    {disp8} fld        dword ptr [esp + 0x38]                         // 0x0086c482    d9442438
                         {disp8} fsub       dword ptr [esp + 0x3c]                         // 0x0086c486    d864243c
                         {disp8} fsub       dword ptr [esp + 0x10]                         // 0x0086c48a    d8642410
                         {disp8} fmul       dword ptr [esp + 0x24]                         // 0x0086c48e    d84c2424
_jmp_addr_0x0086c492:    fadd               dword ptr [esi]                                // 0x0086c492    d806
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x0086c494    d81598a38a00
                         fnstsw             ax                                             // 0x0086c49a    dfe0
                         test               ah, 0x01                                       // 0x0086c49c    f6c401
                         {disp8} je         _jmp_addr_0x0086c4ab                           // 0x0086c49f    740a
                         fstp               st(0)                                          // 0x0086c4a1    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086c4a3    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0086c4c0                           // 0x0086c4a9    eb15
_jmp_addr_0x0086c4ab:    {disp32} fcom      dword ptr [__real@437f0000]                    // 0x0086c4ab    d81570b28a00
                         fnstsw             ax                                             // 0x0086c4b1    dfe0
                         test               ah, 0x41                                       // 0x0086c4b3    f6c441
                         {disp8} jne        _jmp_addr_0x0086c4c0                           // 0x0086c4b6    7508
                         fstp               st(0)                                          // 0x0086c4b8    ddd8
                         {disp32} fld       dword ptr [__real@437f0000]                    // 0x0086c4ba    d90570b28a00
_jmp_addr_0x0086c4c0:    test               dl, 0x03                                       // 0x0086c4c0    f6c203
                         fld                st(0)                                          // 0x0086c4c3    d9c0
                         fsub               dword ptr [esi]                                // 0x0086c4c5    d826
                         {disp8} fst        dword ptr [esp + 0x3c]                         // 0x0086c4c7    d954243c
                         fadd               dword ptr [ecx]                                // 0x0086c4cb    d801
                         fstp               dword ptr [ecx]                                // 0x0086c4cd    d919
                         {disp8} jne        _jmp_addr_0x0086c4fb                           // 0x0086c4cf    752a
                         test               edx, edx                                       // 0x0086c4d1    85d2
                         {disp8} jle        _jmp_addr_0x0086c4fb                           // 0x0086c4d3    7e26
                         test               bl, 0x03                                       // 0x0086c4d5    f6c303
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x0086c4d8    d944243c
                         {disp8} fadd       dword ptr [ecx + -0x04]                        // 0x0086c4dc    d841fc
                         {disp8} fstp       dword ptr [ecx + -0x04]                        // 0x0086c4df    d959fc
                         {disp8} jne        _jmp_addr_0x0086c50f                           // 0x0086c4e2    752b
                         cmp                ebx, 0x01                                      // 0x0086c4e4    83fb01
                         {disp8} jle        _jmp_addr_0x0086c50f                           // 0x0086c4e7    7e26
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x0086c4e9    d944243c
                         {disp32} fadd      dword ptr [ecx + -0x00000084]                  // 0x0086c4ed    d8817cffffff
                         {disp32} fstp      dword ptr [ecx + -0x00000084]                  // 0x0086c4f3    d9997cffffff
                         {disp8} jmp        _jmp_addr_0x0086c50f                           // 0x0086c4f9    eb14
_jmp_addr_0x0086c4fb:    test               bl, 0x03                                       // 0x0086c4fb    f6c303
                         {disp8} jne        _jmp_addr_0x0086c50f                           // 0x0086c4fe    750f
                         cmp                ebx, 0x01                                      // 0x0086c500    83fb01
                         {disp8} jle        _jmp_addr_0x0086c50f                           // 0x0086c503    7e0a
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x0086c505    d944243c
                         {disp8} fadd       dword ptr [ecx + -0x80]                        // 0x0086c509    d84180
                         {disp8} fstp       dword ptr [ecx + -0x80]                        // 0x0086c50c    d95980
_jmp_addr_0x0086c50f:    fstp               dword ptr [esi]                                // 0x0086c50f    d91e
_jmp_addr_0x0086c511:    mov.s              eax, edx                                       // 0x0086c511    8bc2
                         and                eax, 0x03                                      // 0x0086c513    83e003
                         cmp                al, 0x03                                       // 0x0086c516    3c03
                         {disp8} jne        _jmp_addr_0x0086c51d                           // 0x0086c518    7503
                         add                ecx, 0x4                                       // 0x0086c51a    83c104
_jmp_addr_0x0086c51d:    add                esi, 0x04                                      // 0x0086c51d    83c604
                         inc                edx                                            // 0x0086c520    42
                         cmp.s              edx, ebp                                       // 0x0086c521    3bd5
                         {disp8} mov        dword ptr [esp + 0x3c], edx                    // 0x0086c523    8954243c
                         {disp32} jl        _jmp_addr_0x0086c446                           // 0x0086c527    0f8c19ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x0086c52d    8b442428
                         fstp               st(0)                                          // 0x0086c531    ddd8
_jmp_addr_0x0086c533:    {disp8} mov        esi, dword ptr [esp + 0x20]                    // 0x0086c533    8b742420
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x0086c537    8b4c2414
                         inc                ebx                                            // 0x0086c53b    43
                         add                esi, 0x00000200                                // 0x0086c53c    81c600020000
                         cmp.s              ebx, ecx                                       // 0x0086c542    3bd9
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                    // 0x0086c544    895c241c
                         {disp8} mov        dword ptr [esp + 0x20], esi                    // 0x0086c548    89742420
                         {disp32} jl        _jmp_addr_0x0086c415                           // 0x0086c54c    0f8cc3feffff
_jmp_addr_0x0086c552:    pop                edi                                            // 0x0086c552    5f
                         pop                esi                                            // 0x0086c553    5e
                         pop                ebp                                            // 0x0086c554    5d
                         pop                ebx                                            // 0x0086c555    5b
                         add                esp, 0x1c                                      // 0x0086c556    83c41c
                         ret                0x0014                                         // 0x0086c559    c21400
                         nop                                                               // 0x0086c55c    90
                         nop                                                               // 0x0086c55d    90
                         nop                                                               // 0x0086c55e    90
                         nop                                                               // 0x0086c55f    90
_jmp_addr_0x0086c560:    push               edi                                            // 0x0086c560    57
                         xor.s              eax, eax                                       // 0x0086c561    33c0
                         mov                ecx, 0x00000010                                // 0x0086c563    b910000000
                         mov                edi, 0x00fa27bc                                // 0x0086c568    bfbc27fa00
                         rep stosd                                                         // 0x0086c56d    f3ab
                         mov                ecx, 0x00000010                                // 0x0086c56f    b910000000
                         mov                edi, 0x00fa277c                                // 0x0086c574    bf7c27fa00
                         xor.s              edx, edx                                       // 0x0086c579    33d2
                         rep stosd                                                         // 0x0086c57b    f3ab
                         {disp32} mov       edi, dword ptr [data_bytes + 0x5dc918]         // 0x0086c57d    8b3d1829fa00
                         cmp.s              edi, edx                                       // 0x0086c583    3bfa
                         {disp32} mov       dword ptr [data_bytes + 0x5dc91c], edx         // 0x0086c585    89151c29fa00
                         {disp8} je         _jmp_addr_0x0086c5c0                           // 0x0086c58b    7433
                         mov                ecx, 0x00004000                                // 0x0086c58d    b900400000
                         rep stosd                                                         // 0x0086c592    f3ab
                         push               esi                                            // 0x0086c594    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x5dc918]         // 0x0086c595    8b351829fa00
                         {disp32} lea       edi, dword ptr [esi + 0x00010000]              // 0x0086c59b    8dbe00000100
                         mov                ecx, 0x00000400                                // 0x0086c5a1    b900040000
                         rep stosd                                                         // 0x0086c5a6    f3ab
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc918]         // 0x0086c5a8    a11829fa00
                         {disp32} mov       dword ptr [eax + 0x00011000], edx              // 0x0086c5ad    899000100100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc918]         // 0x0086c5b3    8b0d1829fa00
                         {disp32} mov       dword ptr [ecx + 0x00011004], edx              // 0x0086c5b9    899104100100
                         pop                esi                                            // 0x0086c5bf    5e
_jmp_addr_0x0086c5c0:    pop                edi                                            // 0x0086c5c0    5f
                         ret                                                               // 0x0086c5c1    c3
                         nop                                                               // 0x0086c5c2    90
                         nop                                                               // 0x0086c5c3    90
                         nop                                                               // 0x0086c5c4    90
                         nop                                                               // 0x0086c5c5    90
                         nop                                                               // 0x0086c5c6    90
                         nop                                                               // 0x0086c5c7    90
                         nop                                                               // 0x0086c5c8    90
                         nop                                                               // 0x0086c5c9    90
                         nop                                                               // 0x0086c5ca    90
                         nop                                                               // 0x0086c5cb    90
                         nop                                                               // 0x0086c5cc    90
                         nop                                                               // 0x0086c5cd    90
                         nop                                                               // 0x0086c5ce    90
                         nop                                                               // 0x0086c5cf    90
_jmp_addr_0x0086c5d0:    sub                esp, 0x10                                      // 0x0086c5d0    83ec10
                         push               ebx                                            // 0x0086c5d3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                    // 0x0086c5d4    8b5c2418
                         push               ebp                                            // 0x0086c5d8    55
                         {disp32} lea       ebp, dword ptr [ebx + 0x00000200]              // 0x0086c5d9    8dab00020000
                         shl                ebp, 7                                         // 0x0086c5df    c1e507
                         add.s              ebp, ecx                                       // 0x0086c5e2    03e9
                         test               ebx, ebx                                       // 0x0086c5e4    85db
                         push               esi                                            // 0x0086c5e6    56
                         {disp8} mov        dword ptr [esp + 0x0c], ebp                    // 0x0086c5e7    896c240c
                         {disp8} jne        _jmp_addr_0x0086c627                           // 0x0086c5eb    753a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc91c]         // 0x0086c5ed    a11c29fa00
                         xor.s              esi, esi                                       // 0x0086c5f2    33f6
                         test               eax, eax                                       // 0x0086c5f4    85c0
                         {disp8} jle        _jmp_addr_0x0086c61d                           // 0x0086c5f6    7e25
_jmp_addr_0x0086c5f8:    {disp32} mov       ecx, dword ptr [esi * 0x4 + 0x00fa27bc]        // 0x0086c5f8    8b0cb5bc27fa00
                         test               ecx, ecx                                       // 0x0086c5ff    85c9
                         {disp8} je         _jmp_addr_0x0086c608                           // 0x0086c601    7405
                         call               _jmp_addr_0x008786d0                           // 0x0086c603    e8c8c00000
_jmp_addr_0x0086c608:    {disp32} mov       eax, dword ptr [data_bytes + 0x5dc91c]         // 0x0086c608    a11c29fa00
                         {disp32} mov       dword ptr [esi * 0x4 + 0x00fa277c], 0x00000000 // 0x0086c60d    c704b57c27fa0000000000
                         inc                esi                                            // 0x0086c618    46
                         cmp.s              esi, eax                                       // 0x0086c619    3bf0
                         {disp8} jl         _jmp_addr_0x0086c5f8                           // 0x0086c61b    7cdb
_jmp_addr_0x0086c61d:    xor.s              edx, edx                                       // 0x0086c61d    33d2
                         {disp32} mov       dword ptr [data_bytes + 0x5dc91c], edx         // 0x0086c61f    89151c29fa00
                         {disp8} jmp        _jmp_addr_0x0086c62d                           // 0x0086c625    eb06
_jmp_addr_0x0086c627:    {disp32} mov       edx, dword ptr [data_bytes + 0x5dc91c]         // 0x0086c627    8b151c29fa00
_jmp_addr_0x0086c62d:    {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x0086c62d    8b4c2424
                         add.s              ecx, ebx                                       // 0x0086c631    03cb
                         cmp.s              ebx, ecx                                       // 0x0086c633    3bd9
                         mov.s              eax, ebx                                       // 0x0086c635    8bc3
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x0086c637    89442410
                         {disp8} mov        dword ptr [esp + 0x18], ecx                    // 0x0086c63b    894c2418
                         {disp32} jge       _jmp_addr_0x0086c795                           // 0x0086c63f    0f8d50010000
                         push               edi                                            // 0x0086c645    57
_jmp_addr_0x0086c646:    xor.s              edi, edi                                       // 0x0086c646    33ff
                         {disp32} lea       eax, dword ptr [eax + ?g_index_block@LH3DIsland@@3PAY0CA@EA]              // 0x0086c648    8d8064c9e900
                         {disp8} mov        dword ptr [esp + 0x18], edi                    // 0x0086c64e    897c2418
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x0086c652    89442428
_jmp_addr_0x0086c656:    {disp8} fld        dword ptr [ebp + 0x00]                         // 0x0086c656    d94500
                         fabs                                                              // 0x0086c659    d9e1
                         {disp8} fst        dword ptr [esp + 0x24]                         // 0x0086c65b    d9542424
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xfabe4]              // 0x0086c65f    d81de43b9a00
                         fnstsw             ax                                             // 0x0086c665    dfe0
                         test               ah, 0x41                                       // 0x0086c667    f6c441
                         {disp32} jne       _jmp_addr_0x0086c75f                           // 0x0086c66a    0f85ef000000
                         xor.s              esi, esi                                       // 0x0086c670    33f6
                         mov                ecx, 0x00fa277c                                // 0x0086c672    b97c27fa00
_jmp_addr_0x0086c677:    {disp8} fld        dword ptr [esp + 0x24]                         // 0x0086c677    d9442424
                         fcomp              dword ptr [ecx]                                // 0x0086c67b    d819
                         fnstsw             ax                                             // 0x0086c67d    dfe0
                         test               ah, 0x41                                       // 0x0086c67f    f6c441
                         {disp8} je         _jmp_addr_0x0086c695                           // 0x0086c682    7411
                         add                ecx, 0x4                                       // 0x0086c684    83c104
                         inc                esi                                            // 0x0086c687    46
                         cmp                ecx, 0x00fa27bc                                // 0x0086c688    81f9bc27fa00
                         {disp8} jl         _jmp_addr_0x0086c677                           // 0x0086c68e    7ce7
                         {disp32} jmp       _jmp_addr_0x0086c75f                           // 0x0086c690    e9ca000000
_jmp_addr_0x0086c695:    cmp                edx, 0x10                                      // 0x0086c695    83fa10
                         {disp8} jne        _jmp_addr_0x0086c6c0                           // 0x0086c698    7526
                         {disp32} mov       ecx, dword ptr [esi * 0x4 + 0x00fa27bc]        // 0x0086c69a    8b0cb5bc27fa00
                         test               ecx, ecx                                       // 0x0086c6a1    85c9
                         {disp32} lea       ebp, dword ptr [esi * 0x4 + 0x00fa27bc]        // 0x0086c6a3    8d2cb5bc27fa00
                         {disp8} je         _jmp_addr_0x0086c6b1                           // 0x0086c6aa    7405
                         call               _jmp_addr_0x008786d0                           // 0x0086c6ac    e81fc00000
_jmp_addr_0x0086c6b1:    {disp32} lea       ebx, dword ptr [esi * 0x4 + 0x00fa277c]        // 0x0086c6b1    8d1cb57c27fa00
                         mov                dword ptr [ebx], 0x00000000                    // 0x0086c6b8    c70300000000
                         {disp8} jmp        _jmp_addr_0x0086c715                           // 0x0086c6be    eb55
_jmp_addr_0x0086c6c0:    mov.s              edi, esi                                       // 0x0086c6c0    8bfe
                         shl                edi, 0x1e                                      // 0x0086c6c2    c1e71e
                         sub.s              edi, esi                                       // 0x0086c6c5    2bfe
                         lea                ecx, dword ptr [edi + edx * 0x1]               // 0x0086c6c7    8d0c17
                         shl                ecx, 2                                         // 0x0086c6ca    c1e102
                         push               ecx                                            // 0x0086c6cd    51
                         {disp32} lea       ebp, dword ptr [esi * 0x4 + 0x00fa27bc]        // 0x0086c6ce    8d2cb5bc27fa00
                         {disp32} lea       edx, dword ptr [esi * 0x4 + 0x00fa27c0]        // 0x0086c6d5    8d14b5c027fa00
                         push               ebp                                            // 0x0086c6dc    55
                         push               edx                                            // 0x0086c6dd    52
                         call               _memmove                                       // 0x0086c6de    e80d9af5ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc91c]         // 0x0086c6e3    a11c29fa00
                         add.s              edi, eax                                       // 0x0086c6e8    03f8
                         shl                edi, 2                                         // 0x0086c6ea    c1e702
                         push               edi                                            // 0x0086c6ed    57
                         {disp32} lea       ebx, dword ptr [esi * 0x4 + 0x00fa277c]        // 0x0086c6ee    8d1cb57c27fa00
                         {disp32} lea       ecx, dword ptr [esi * 0x4 + 0x00fa2780]        // 0x0086c6f5    8d0cb58027fa00
                         push               ebx                                            // 0x0086c6fc    53
                         push               ecx                                            // 0x0086c6fd    51
                         call               _memmove                                       // 0x0086c6fe    e8ed99f5ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc91c]         // 0x0086c703    a11c29fa00
                         {disp8} mov        edi, dword ptr [esp + 0x30]                    // 0x0086c708    8b7c2430
                         add                esp, 0x18                                      // 0x0086c70c    83c418
                         inc                eax                                            // 0x0086c70f    40
                         {disp32} mov       dword ptr [data_bytes + 0x5dc91c], eax         // 0x0086c710    a31c29fa00
_jmp_addr_0x0086c715:    test               edi, edi                                       // 0x0086c715    85ff
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x0086c717    8b542424
                         mov                dword ptr [ebx], edx                           // 0x0086c71b    8913
                         {disp8} jl         _jmp_addr_0x0086c746                           // 0x0086c71d    7c27
                         cmp                edi, 0x1f                                      // 0x0086c71f    83ff1f
                         {disp8} jg         _jmp_addr_0x0086c746                           // 0x0086c722    7f22
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086c724    8b442414
                         test               eax, eax                                       // 0x0086c728    85c0
                         {disp8} jl         _jmp_addr_0x0086c746                           // 0x0086c72a    7c1a
                         cmp                eax, 0x1f                                      // 0x0086c72c    83f81f
                         {disp8} jg         _jmp_addr_0x0086c746                           // 0x0086c72f    7f15
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x0086c731    8b4c2428
                         xor.s              eax, eax                                       // 0x0086c735    33c0
                         mov                al, byte ptr [ecx]                             // 0x0086c737    8a01
                         test               eax, eax                                       // 0x0086c739    85c0
                         {disp8} je         _jmp_addr_0x0086c746                           // 0x0086c73b    7409
                         {disp32} mov       eax, dword ptr [eax * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]        // 0x0086c73d    8b048564c5e900
                         {disp8} jmp        _jmp_addr_0x0086c748                           // 0x0086c744    eb02
_jmp_addr_0x0086c746:    xor.s              eax, eax                                       // 0x0086c746    33c0
_jmp_addr_0x0086c748:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x0086c748    8b542410
                         {disp8} mov        dword ptr [ebp + 0x00], eax                    // 0x0086c74c    894500
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x0086c74f    8b6c2410
                         mov                dword ptr [edx], 0x00000000                    // 0x0086c753    c70200000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc91c]         // 0x0086c759    8b151c29fa00
_jmp_addr_0x0086c75f:    {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x0086c75f    8b4c2428
                         add                ebp, 0x04                                      // 0x0086c763    83c504
                         inc                edi                                            // 0x0086c766    47
                         add                ecx, 0x20                                      // 0x0086c767    83c120
                         cmp                edi, 0x20                                      // 0x0086c76a    83ff20
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x0086c76d    896c2410
                         {disp8} mov        dword ptr [esp + 0x18], edi                    // 0x0086c771    897c2418
                         {disp8} mov        dword ptr [esp + 0x28], ecx                    // 0x0086c775    894c2428
                         {disp32} jl        _jmp_addr_0x0086c656                           // 0x0086c779    0f8cd7feffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086c77f    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x0086c783    8b4c241c
                         inc                eax                                            // 0x0086c787    40
                         cmp.s              eax, ecx                                       // 0x0086c788    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0086c78a    89442414
                         {disp32} jl        _jmp_addr_0x0086c646                           // 0x0086c78e    0f8cb2feffff
                         pop                edi                                            // 0x0086c794    5f
_jmp_addr_0x0086c795:    pop                esi                                            // 0x0086c795    5e
                         pop                ebp                                            // 0x0086c796    5d
                         pop                ebx                                            // 0x0086c797    5b
                         add                esp, 0x10                                      // 0x0086c798    83c410
                         ret                0x0008                                         // 0x0086c79b    c20800
                         nop                                                               // 0x0086c79e    90
                         nop                                                               // 0x0086c79f    90
_jmp_addr_0x0086c7a0:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086c7a0    d9442404
                         push               esi                                            // 0x0086c7a4    56
                         mov.s              esi, ecx                                       // 0x0086c7a5    8bf1
                         {disp32} fadd      dword ptr [esi + 0x00011000]                   // 0x0086c7a7    d88600100100
                         {disp32} fst       dword ptr [esi + 0x00011000]                   // 0x0086c7ad    d99600100100
                         {disp32} fcomp     dword ptr [__real@3e999999]                    // 0x0086c7b3    d81d3cb28a00
                         fnstsw             ax                                             // 0x0086c7b9    dfe0
                         test               ah, 0x41                                       // 0x0086c7bb    f6c441
                         {disp32} jne       _jmp_addr_0x0086c952                           // 0x0086c7be    0f858e010000
                         push               ebx                                            // 0x0086c7c4    53
                         push               ebp                                            // 0x0086c7c5    55
                         push               edi                                            // 0x0086c7c6    57
                         xor.s              ebp, ebp                                       // 0x0086c7c7    33ed
_jmp_addr_0x0086c7c9:    {disp32} mov       eax, dword ptr [esi + 0x00011004]              // 0x0086c7c9    8b8604100100
                         {disp32} fld       dword ptr [esi + 0x00011000]                   // 0x0086c7cf    d98600100100
                         {disp32} fsub      dword ptr [__real@3e999999]                    // 0x0086c7d5    d8253cb28a00
                         inc                eax                                            // 0x0086c7db    40
                         and                eax, 0x07                                      // 0x0086c7dc    83e007
                         {disp32} mov       dword ptr [esi + 0x00011004], eax              // 0x0086c7df    898604100100
                         shl                eax, 4                                         // 0x0086c7e5    c1e004
                         {disp32} fstp      dword ptr [esi + 0x00011000]                   // 0x0086c7e8    d99e00100100
                         mov.s              ebx, eax                                       // 0x0086c7ee    8bd8
                         mov.s              edx, ebx                                       // 0x0086c7f0    8bd3
                         shl                edx, 9                                         // 0x0086c7f2    c1e209
                         add.s              edx, esi                                       // 0x0086c7f5    03d6
                         {disp8} mov        dword ptr [esp + 0x14], ebp                    // 0x0086c7f7    896c2414
_jmp_addr_0x0086c7fb:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086c7fb    8b442414
                         lea                ecx, dword ptr [eax + ebx * 0x1]               // 0x0086c7ff    8d0c18
                         sar                ecx, 2                                         // 0x0086c802    c1f902
                         add                ecx, 0x00000200                                // 0x0086c805    81c100020000
                         shl                ecx, 7                                         // 0x0086c80b    c1e107
                         add.s              ecx, esi                                       // 0x0086c80e    03ce
                         mov                edi, 0x00000020                                // 0x0086c810    bf20000000
_jmp_addr_0x0086c815:    fld                dword ptr [edx]                                // 0x0086c815    d902
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]               // 0x0086c817    d81d78b48a00
                         fld                dword ptr [edx]                                // 0x0086c81d    d902
                         fnstsw             ax                                             // 0x0086c81f    dfe0
                         test               ah, 0x41                                       // 0x0086c821    f6c441
                         {disp8} jne        _jmp_addr_0x0086c83a                           // 0x0086c824    7514
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c826    d82578b48a00
                         fstp               dword ptr [edx]                                // 0x0086c82c    d91a
                         fld                dword ptr [ecx]                                // 0x0086c82e    d901
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c830    d82578b48a00
                         fstp               dword ptr [ecx]                                // 0x0086c836    d919
                         {disp8} jmp        _jmp_addr_0x0086c84f                           // 0x0086c838    eb15
_jmp_addr_0x0086c83a:    {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086c83a    d81d98a38a00
                         fnstsw             ax                                             // 0x0086c840    dfe0
                         test               ah, 0x41                                       // 0x0086c842    f6c441
                         {disp8} jne        _jmp_addr_0x0086c84f                           // 0x0086c845    7508
                         fld                dword ptr [ecx]                                // 0x0086c847    d901
                         fsub               dword ptr [edx]                                // 0x0086c849    d822
                         fstp               dword ptr [ecx]                                // 0x0086c84b    d919
                         mov                dword ptr [edx], ebp                           // 0x0086c84d    892a
_jmp_addr_0x0086c84f:    {disp8} fld        dword ptr [edx + 0x04]                         // 0x0086c84f    d94204
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]               // 0x0086c852    d81d78b48a00
                         {disp8} fld        dword ptr [edx + 0x04]                         // 0x0086c858    d94204
                         fnstsw             ax                                             // 0x0086c85b    dfe0
                         test               ah, 0x41                                       // 0x0086c85d    f6c441
                         {disp8} jne        _jmp_addr_0x0086c877                           // 0x0086c860    7515
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c862    d82578b48a00
                         {disp8} fstp       dword ptr [edx + 0x04]                         // 0x0086c868    d95a04
                         fld                dword ptr [ecx]                                // 0x0086c86b    d901
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c86d    d82578b48a00
                         fstp               dword ptr [ecx]                                // 0x0086c873    d919
                         {disp8} jmp        _jmp_addr_0x0086c88e                           // 0x0086c875    eb17
_jmp_addr_0x0086c877:    {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086c877    d81d98a38a00
                         fnstsw             ax                                             // 0x0086c87d    dfe0
                         test               ah, 0x41                                       // 0x0086c87f    f6c441
                         {disp8} jne        _jmp_addr_0x0086c88e                           // 0x0086c882    750a
                         fld                dword ptr [ecx]                                // 0x0086c884    d901
                         {disp8} fsub       dword ptr [edx + 0x04]                         // 0x0086c886    d86204
                         fstp               dword ptr [ecx]                                // 0x0086c889    d919
                         {disp8} mov        dword ptr [edx + 0x04], ebp                    // 0x0086c88b    896a04
_jmp_addr_0x0086c88e:    {disp8} fld        dword ptr [edx + 0x08]                         // 0x0086c88e    d94208
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]               // 0x0086c891    d81d78b48a00
                         {disp8} fld        dword ptr [edx + 0x08]                         // 0x0086c897    d94208
                         fnstsw             ax                                             // 0x0086c89a    dfe0
                         test               ah, 0x41                                       // 0x0086c89c    f6c441
                         {disp8} jne        _jmp_addr_0x0086c8b6                           // 0x0086c89f    7515
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c8a1    d82578b48a00
                         {disp8} fstp       dword ptr [edx + 0x08]                         // 0x0086c8a7    d95a08
                         fld                dword ptr [ecx]                                // 0x0086c8aa    d901
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c8ac    d82578b48a00
                         fstp               dword ptr [ecx]                                // 0x0086c8b2    d919
                         {disp8} jmp        _jmp_addr_0x0086c8cd                           // 0x0086c8b4    eb17
_jmp_addr_0x0086c8b6:    {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086c8b6    d81d98a38a00
                         fnstsw             ax                                             // 0x0086c8bc    dfe0
                         test               ah, 0x41                                       // 0x0086c8be    f6c441
                         {disp8} jne        _jmp_addr_0x0086c8cd                           // 0x0086c8c1    750a
                         fld                dword ptr [ecx]                                // 0x0086c8c3    d901
                         {disp8} fsub       dword ptr [edx + 0x08]                         // 0x0086c8c5    d86208
                         fstp               dword ptr [ecx]                                // 0x0086c8c8    d919
                         {disp8} mov        dword ptr [edx + 0x08], ebp                    // 0x0086c8ca    896a08
_jmp_addr_0x0086c8cd:    {disp8} fld        dword ptr [edx + 0x0c]                         // 0x0086c8cd    d9420c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]               // 0x0086c8d0    d81d78b48a00
                         {disp8} fld        dword ptr [edx + 0x0c]                         // 0x0086c8d6    d9420c
                         fnstsw             ax                                             // 0x0086c8d9    dfe0
                         test               ah, 0x41                                       // 0x0086c8db    f6c441
                         {disp8} jne        _jmp_addr_0x0086c8f5                           // 0x0086c8de    7515
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c8e0    d82578b48a00
                         {disp8} fstp       dword ptr [edx + 0x0c]                         // 0x0086c8e6    d95a0c
                         fld                dword ptr [ecx]                                // 0x0086c8e9    d901
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]               // 0x0086c8eb    d82578b48a00
                         fstp               dword ptr [ecx]                                // 0x0086c8f1    d919
                         {disp8} jmp        _jmp_addr_0x0086c90c                           // 0x0086c8f3    eb17
_jmp_addr_0x0086c8f5:    {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086c8f5    d81d98a38a00
                         fnstsw             ax                                             // 0x0086c8fb    dfe0
                         test               ah, 0x41                                       // 0x0086c8fd    f6c441
                         {disp8} jne        _jmp_addr_0x0086c90c                           // 0x0086c900    750a
                         fld                dword ptr [ecx]                                // 0x0086c902    d901
                         {disp8} fsub       dword ptr [edx + 0x0c]                         // 0x0086c904    d8620c
                         fstp               dword ptr [ecx]                                // 0x0086c907    d919
                         {disp8} mov        dword ptr [edx + 0x0c], ebp                    // 0x0086c909    896a0c
_jmp_addr_0x0086c90c:    add                edx, 0x10                                      // 0x0086c90c    83c210
                         add                ecx, 0x4                                       // 0x0086c90f    83c104
                         dec                edi                                            // 0x0086c912    4f
                         {disp32} jne       _jmp_addr_0x0086c815                           // 0x0086c913    0f85fcfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086c919    8b442414
                         inc                eax                                            // 0x0086c91d    40
                         cmp                eax, 0x10                                      // 0x0086c91e    83f810
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0086c921    89442414
                         {disp32} jl        _jmp_addr_0x0086c7fb                           // 0x0086c925    0f8cd0feffff
                         push               0x4                                            // 0x0086c92b    6a04
                         sar                ebx, 2                                         // 0x0086c92d    c1fb02
                         push               ebx                                            // 0x0086c930    53
                         mov.s              ecx, esi                                       // 0x0086c931    8bce
                         call               _jmp_addr_0x0086c5d0                           // 0x0086c933    e898fcffff
                         {disp32} fld       dword ptr [esi + 0x00011000]                   // 0x0086c938    d98600100100
                         {disp32} fcomp     dword ptr [__real@3e999999]                    // 0x0086c93e    d81d3cb28a00
                         fnstsw             ax                                             // 0x0086c944    dfe0
                         test               ah, 0x41                                       // 0x0086c946    f6c441
                         {disp32} je        _jmp_addr_0x0086c7c9                           // 0x0086c949    0f847afeffff
                         pop                edi                                            // 0x0086c94f    5f
                         pop                ebp                                            // 0x0086c950    5d
                         pop                ebx                                            // 0x0086c951    5b
_jmp_addr_0x0086c952:    pop                esi                                            // 0x0086c952    5e
                         ret                0x0004                                         // 0x0086c953    c20400
                         nop                                                               // 0x0086c956    90
                         nop                                                               // 0x0086c957    90
                         nop                                                               // 0x0086c958    90
                         nop                                                               // 0x0086c959    90
                         nop                                                               // 0x0086c95a    90
                         nop                                                               // 0x0086c95b    90
                         nop                                                               // 0x0086c95c    90
                         nop                                                               // 0x0086c95d    90
                         nop                                                               // 0x0086c95e    90
                         nop                                                               // 0x0086c95f    90
_jmp_addr_0x0086c960:    mov.s              edx, ecx                                       // 0x0086c960    8bd1
                         xor.s              eax, eax                                       // 0x0086c962    33c0
                         push               edi                                            // 0x0086c964    57
                         mov                ecx, 0x00004000                                // 0x0086c965    b900400000
                         mov.s              edi, edx                                       // 0x0086c96a    8bfa
                         rep stosd                                                         // 0x0086c96c    f3ab
                         mov                ecx, 0x00000400                                // 0x0086c96e    b900040000
                         {disp32} lea       edi, dword ptr [edx + 0x00010000]              // 0x0086c973    8dba00000100
                         rep stosd                                                         // 0x0086c979    f3ab
                         {disp32} mov       dword ptr [edx + 0x00011000], eax              // 0x0086c97b    898200100100
                         {disp32} mov       dword ptr [edx + 0x00011004], eax              // 0x0086c981    898204100100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc918]         // 0x0086c987    a11829fa00
                         {disp32} mov       dword ptr [edx + 0x00011008], eax              // 0x0086c98c    898208100100
                         {disp32} mov       al, byte ptr [data_bytes + 0x5dc914]           // 0x0086c992    a01429fa00
                         test               al, al                                         // 0x0086c997    84c0
                         {disp32} mov       dword ptr [data_bytes + 0x5dc918], edx         // 0x0086c999    89151829fa00
                         {disp32} jne       _jmp_addr_0x0086ca2e                           // 0x0086c99f    0f8589000000
                         push               esi                                            // 0x0086c9a5    56
                         xor.s              esi, esi                                       // 0x0086c9a6    33f6
_jmp_addr_0x0086c9a8:    xor.s              eax, eax                                       // 0x0086c9a8    33c0
                         {disp32} lea       ecx, dword ptr [esi + 0x00fa27fc]              // 0x0086c9aa    8d8efc27fa00
                         mov                edi, 0x00000011                                // 0x0086c9b0    bf11000000
_jmp_addr_0x0086c9b5:    mov.s              edx, eax                                       // 0x0086c9b5    8bd0
                         sar                edx, 4                                         // 0x0086c9b7    c1fa04
                         mov                byte ptr [ecx], dl                             // 0x0086c9ba    8811
                         add.s              eax, esi                                       // 0x0086c9bc    03c6
                         add                ecx, 0x10                                      // 0x0086c9be    83c110
                         dec                edi                                            // 0x0086c9c1    4f
                         {disp8} jne        _jmp_addr_0x0086c9b5                           // 0x0086c9c2    75f1
                         inc                esi                                            // 0x0086c9c4    46
                         cmp                esi, 0x10                                      // 0x0086c9c5    83fe10
                         {disp8} jl         _jmp_addr_0x0086c9a8                           // 0x0086c9c8    7cde
                         push               0x00010000                                     // 0x0086c9ca    6800000100
                         call               ??2@YAPAXI@Z                                   // 0x0086c9cf    e81a9bf5ff
                         push               0x00010000                                     // 0x0086c9d4    6800000100
                         {disp32} mov       dword ptr [data_bytes + 0x5dc90c], eax         // 0x0086c9d9    a30c29fa00
                         call               ??2@YAPAXI@Z                                   // 0x0086c9de    e80b9bf5ff
                         push               0x0                                            // 0x0086c9e3    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc910], eax         // 0x0086c9e5    a31029fa00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc90c]         // 0x0086c9ea    a10c29fa00
                         push               0x00010000                                     // 0x0086c9ef    6800000100
                         push               eax                                            // 0x0086c9f4    50
                         push               0x00c39678                                     // 0x0086c9f5    687896c300
                         call               _LHLoadData__FPcPvUlPUl                        // 0x0086c9fa    e8f103f5ff
                         add                esp, 0x18                                      // 0x0086c9ff    83c418
                         xor.s              ecx, ecx                                       // 0x0086ca02    33c9
                         pop                esi                                            // 0x0086ca04    5e
_jmp_addr_0x0086ca05:    {disp32} mov       edx, dword ptr [data_bytes + 0x5dc90c]         // 0x0086ca05    8b150c29fa00
                         mov                al, byte ptr [edx + ecx * 0x1]                 // 0x0086ca0b    8a040a
                         mov.s              dl, al                                         // 0x0086ca0e    8ad0
                         shr                dl, 2                                          // 0x0086ca10    c0ea02
                         shr                al, 1                                          // 0x0086ca13    d0e8
                         add.s              dl, al                                         // 0x0086ca15    02d0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc910]         // 0x0086ca17    a11029fa00
                         and                dl, 0x01                                       // 0x0086ca1c    80e201
                         add                dl, 0x0e                                       // 0x0086ca1f    80c20e
                         mov                byte ptr [eax + ecx * 0x1], dl                 // 0x0086ca22    881408
                         inc                ecx                                            // 0x0086ca25    41
                         cmp                ecx, 0x00010000                                // 0x0086ca26    81f900000100
                         {disp8} jl         _jmp_addr_0x0086ca05                           // 0x0086ca2c    7cd7
_jmp_addr_0x0086ca2e:    {disp32} inc       byte ptr [data_bytes + 0x5dc914]               // 0x0086ca2e    fe051429fa00
                         pop                edi                                            // 0x0086ca34    5f
                         ret                                                               // 0x0086ca35    c3
                         nop                                                               // 0x0086ca36    90
                         nop                                                               // 0x0086ca37    90
                         nop                                                               // 0x0086ca38    90
                         nop                                                               // 0x0086ca39    90
                         nop                                                               // 0x0086ca3a    90
                         nop                                                               // 0x0086ca3b    90
                         nop                                                               // 0x0086ca3c    90
                         nop                                                               // 0x0086ca3d    90
                         nop                                                               // 0x0086ca3e    90
                         nop                                                               // 0x0086ca3f    90
_jmp_addr_0x0086ca40:    {disp32} mov       eax, dword ptr [ecx + 0x00011008]              // 0x0086ca40    8b8108100100
                         {disp32} mov       dword ptr [data_bytes + 0x5dc918], eax         // 0x0086ca46    a31829fa00
                         dec                byte ptr [data_bytes + 0x5dc914]               // 0x0086ca4b    fe0d1429fa00
                         {disp8} jne        _jmp_addr_0x0086ca7a                           // 0x0086ca51    7527
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc90c]         // 0x0086ca53    8b0d0c29fa00
                         push               ecx                                            // 0x0086ca59    51
                         call               ??3@YAXPAX@Z                                   // 0x0086ca5a    e83924f4ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc910]         // 0x0086ca5f    8b151029fa00
                         push               edx                                            // 0x0086ca65    52
                         call               ??3@YAXPAX@Z                                   // 0x0086ca66    e82d24f4ff
                         add                esp, 0x08                                      // 0x0086ca6b    83c408
                         xor.s              eax, eax                                       // 0x0086ca6e    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x5dc90c], eax         // 0x0086ca70    a30c29fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc910], eax         // 0x0086ca75    a31029fa00
_jmp_addr_0x0086ca7a:    ret                                                               // 0x0086ca7a    c3
                         nop                                                               // 0x0086ca7b    90
                         nop                                                               // 0x0086ca7c    90
                         nop                                                               // 0x0086ca7d    90
                         nop                                                               // 0x0086ca7e    90
                         nop                                                               // 0x0086ca7f    90
_jmp_addr_0x0086ca80:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x0086ca80    d9442404
                         sub                esp, 0x08                                      // 0x0086ca84    83ec08
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2850c]              // 0x0086ca87    d80d0c158d00
                         push               esi                                            // 0x0086ca8d    56
                         mov.s              esi, ecx                                       // 0x0086ca8e    8bf1
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x0086ca90    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x0086ca94    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2850c]              // 0x0086ca98    d80d0c158d00
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x0086ca9e    d95c2414
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086caa2    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086caa6    d81d98a38a00
                         fnstsw             ax                                             // 0x0086caac    dfe0
                         test               ah, 0x01                                       // 0x0086caae    f6c401
                         {disp32} jne       _jmp_addr_0x0086cb65                           // 0x0086cab1    0f85ae000000
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086cab7    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ba00]              // 0x0086cabb    d81d004a8c00
                         fnstsw             ax                                             // 0x0086cac1    dfe0
                         test               ah, 0x01                                       // 0x0086cac3    f6c401
                         {disp32} je        _jmp_addr_0x0086cb65                           // 0x0086cac6    0f8499000000
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x0086cacc    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086cad0    d81d98a38a00
                         fnstsw             ax                                             // 0x0086cad6    dfe0
                         test               ah, 0x01                                       // 0x0086cad8    f6c401
                         {disp32} jne       _jmp_addr_0x0086cb65                           // 0x0086cadb    0f8584000000
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x0086cae1    d9442414
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ba00]              // 0x0086cae5    d81d004a8c00
                         fnstsw             ax                                             // 0x0086caeb    dfe0
                         test               ah, 0x01                                       // 0x0086caed    f6c401
                         {disp8} je         _jmp_addr_0x0086cb65                           // 0x0086caf0    7473
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086caf2    d9442410
                         push               edi                                            // 0x0086caf6    57
                         call               _jmp_addr_0x007a1400                           // 0x0086caf7    e80449f3ff
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x0086cafc    d9442418
                         mov.s              edi, eax                                       // 0x0086cb00    8bf8
                         {disp8} mov        dword ptr [esp + 0x08], edi                    // 0x0086cb02    897c2408
                         call               _jmp_addr_0x007a1400                           // 0x0086cb06    e8f548f3ff
                         {disp8} fild       dword ptr [esp + 0x08]                         // 0x0086cb0b    db442408
                         mov.s              ecx, eax                                       // 0x0086cb0f    8bc8
                         shl                ecx, 7                                         // 0x0086cb11    c1e107
                         {disp8} fsubr      dword ptr [esp + 0x14]                         // 0x0086cb14    d86c2414
                         add.s              ecx, edi                                       // 0x0086cb18    03cf
                         fld                dword ptr [esi + ecx * 0x4]                    // 0x0086cb1a    d9048e
                         {disp8} mov        dword ptr [esp + 0x0c], eax                    // 0x0086cb1d    8944240c
                         inc                eax                                            // 0x0086cb21    40
                         shl                eax, 7                                         // 0x0086cb22    c1e007
                         add.s              eax, edi                                       // 0x0086cb25    03c7
                         fld                dword ptr [esi + eax * 0x4]                    // 0x0086cb27    d90486
                         pop                edi                                            // 0x0086cb2a    5f
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x0086cb2b    d95c2410
                         {disp8} fld        dword ptr [esi + ecx * 0x4 + 0x04]             // 0x0086cb2f    d9448e04
                         fsub               st, st(1)                                      // 0x0086cb33    d8e1
                         fmul               st, st(2)                                      // 0x0086cb35    d8ca
                         faddp              st(1), st                                      // 0x0086cb37    dec1
                         {disp32} fld       dword ptr [esi + ecx * 0x4 + 0x00000204]       // 0x0086cb39    d9848e04020000
                         pop                esi                                            // 0x0086cb40    5e
                         {disp8} fsub       dword ptr [esp + 0x0c]                         // 0x0086cb41    d864240c
                         fmulp              st(2), st                                      // 0x0086cb45    deca
                         fxch               st(1)                                          // 0x0086cb47    d9c9
                         {disp8} fadd       dword ptr [esp + 0x0c]                         // 0x0086cb49    d844240c
                         fsub               st, st(1)                                      // 0x0086cb4d    d8e1
                         {disp8} fild       dword ptr [esp + 0x04]                         // 0x0086cb4f    db442404
                         {disp8} fsubr      dword ptr [esp + 0x10]                         // 0x0086cb53    d86c2410
                         fmulp              st(1), st                                      // 0x0086cb57    dec9
                         fadd               st, st(1)                                      // 0x0086cb59    d8c1
                         fxch               st(1)                                          // 0x0086cb5b    d9c9
                         fstp               st(0)                                          // 0x0086cb5d    ddd8
                         add                esp, 0x08                                      // 0x0086cb5f    83c408
                         ret                0x0008                                         // 0x0086cb62    c20800
_jmp_addr_0x0086cb65:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086cb65    d90598a38a00
                         pop                esi                                            // 0x0086cb6b    5e
                         add                esp, 0x08                                      // 0x0086cb6c    83c408
                         ret                0x0008                                         // 0x0086cb6f    c20800
                         nop                                                               // 0x0086cb72    90
                         nop                                                               // 0x0086cb73    90
                         nop                                                               // 0x0086cb74    90
                         nop                                                               // 0x0086cb75    90
                         nop                                                               // 0x0086cb76    90
                         nop                                                               // 0x0086cb77    90
                         nop                                                               // 0x0086cb78    90
                         nop                                                               // 0x0086cb79    90
                         nop                                                               // 0x0086cb7a    90
                         nop                                                               // 0x0086cb7b    90
                         nop                                                               // 0x0086cb7c    90
                         nop                                                               // 0x0086cb7d    90
                         nop                                                               // 0x0086cb7e    90
                         nop                                                               // 0x0086cb7f    90
_jmp_addr_0x0086cb80:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x0086cb80    8b442404
                         {disp8} mov        edx, dword ptr [eax + 0x08]                    // 0x0086cb84    8b5008
                         mov                eax, dword ptr [eax]                           // 0x0086cb87    8b00
                         push               edx                                            // 0x0086cb89    52
                         push               eax                                            // 0x0086cb8a    50
                         call               _jmp_addr_0x0086ca80                           // 0x0086cb8b    e8f0feffff
                         ret                0x0004                                         // 0x0086cb90    c20400
                         nop                                                               // 0x0086cb93    90
                         nop                                                               // 0x0086cb94    90
                         nop                                                               // 0x0086cb95    90
                         nop                                                               // 0x0086cb96    90
                         nop                                                               // 0x0086cb97    90
                         nop                                                               // 0x0086cb98    90
                         nop                                                               // 0x0086cb99    90
                         nop                                                               // 0x0086cb9a    90
                         nop                                                               // 0x0086cb9b    90
                         nop                                                               // 0x0086cb9c    90
                         nop                                                               // 0x0086cb9d    90
                         nop                                                               // 0x0086cb9e    90
                         nop                                                               // 0x0086cb9f    90
_jmp_addr_0x0086cba0:    sub                esp, 0x44                                      // 0x0086cba0    83ec44
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc918]         // 0x0086cba3    a11829fa00
                         push               esi                                            // 0x0086cba8    56
                         xor.s              esi, esi                                       // 0x0086cba9    33f6
                         cmp.s              eax, esi                                       // 0x0086cbab    3bc6
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x0086cbad    894c240c
                         {disp32} je        _jmp_addr_0x0086cf45                           // 0x0086cbb1    0f848e030000
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                    // 0x0086cbb7    8b4c2458
                         cmp                ecx, 0x04                                      // 0x0086cbbb    83f904
                         {disp32} jl        _jmp_addr_0x0086cf45                           // 0x0086cbbe    0f8c81030000
                         mov.s              eax, ecx                                       // 0x0086cbc4    8bc1
                         cdq                                                               // 0x0086cbc6    99
                         push               ebx                                            // 0x0086cbc7    53
                         and                edx, 0x03                                      // 0x0086cbc8    83e203
                         add.s              eax, edx                                       // 0x0086cbcb    03c2
                         push               ebp                                            // 0x0086cbcd    55
                         push               edi                                            // 0x0086cbce    57
                         mov.s              edi, eax                                       // 0x0086cbcf    8bf8
                         mov                eax, 0x00000100                                // 0x0086cbd1    b800010000
                         cdq                                                               // 0x0086cbd6    99
                         sar                edi, 2                                         // 0x0086cbd7    c1ff02
                         idiv               ecx                                            // 0x0086cbda    f7f9
                         {disp8} mov        dword ptr [esp + 0x4c], edi                    // 0x0086cbdc    897c244c
                         {disp8} mov        dword ptr [esp + 0x2c], esi                    // 0x0086cbe0    8974242c
                         {disp8} mov        dword ptr [esp + 0x28], esi                    // 0x0086cbe4    89742428
                         {disp8} mov        dword ptr [esp + 0x34], eax                    // 0x0086cbe8    89442434
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                    // 0x0086cbec    8b44245c
                         {disp32} lea       ebx, dword ptr [eax * 0x4 + 0x00000000]        // 0x0086cbf0    8d1c8500000000
                         {disp8} mov        dword ptr [esp + 0x20], ebx                    // 0x0086cbf7    895c2420
                         {disp8} jmp        _jmp_addr_0x0086cc01                           // 0x0086cbfb    eb04
_jmp_addr_0x0086cbfd:    {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x0086cbfd    8b5c2420
_jmp_addr_0x0086cc01:    {disp8} mov        eax, dword ptr [esp + 0x58]                    // 0x0086cc01    8b442458
                         mov.s              ebp, eax                                       // 0x0086cc05    8be8
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00000000]        // 0x0086cc07    8d0c8500000000
                         shl                ebp, 9                                         // 0x0086cc0e    c1e509
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000             // 0x0086cc11    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x5c], ecx                    // 0x0086cc19    894c245c
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                    // 0x0086cc1d    896c241c
                         {disp8} jmp        _jmp_addr_0x0086cc2b                           // 0x0086cc21    eb08
_jmp_addr_0x0086cc23:    {disp8} mov        ebp, dword ptr [esp + 0x1c]                    // 0x0086cc23    8b6c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                    // 0x0086cc27    8b4c245c
_jmp_addr_0x0086cc2b:    test               ebx, ebx                                       // 0x0086cc2b    85db
                         {disp8} jl         _jmp_addr_0x0086cc4f                           // 0x0086cc2d    7c20
                         test               ecx, ecx                                       // 0x0086cc2f    85c9
                         {disp8} jl         _jmp_addr_0x0086cc4f                           // 0x0086cc31    7c1c
                         cmp                ebx, 0x00000080                                // 0x0086cc33    81fb80000000
                         {disp8} jge        _jmp_addr_0x0086cc4f                           // 0x0086cc39    7d14
                         cmp                ecx, 0x00000080                                // 0x0086cc3b    81f980000000
                         {disp8} jge        _jmp_addr_0x0086cc4f                           // 0x0086cc41    7d0c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x0086cc43    8b542418
                         lea                ecx, dword ptr [ebx + ebp * 0x1]               // 0x0086cc47    8d0c2b
                         fld                dword ptr [edx + ecx * 0x4]                    // 0x0086cc4a    d9048a
                         {disp8} jmp        _jmp_addr_0x0086cc55                           // 0x0086cc4d    eb06
_jmp_addr_0x0086cc4f:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086cc4f    d90598a38a00
_jmp_addr_0x0086cc55:    {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x0086cc55    d80d08c48a00
                         call               _jmp_addr_0x007a1400                           // 0x0086cc5b    e8a047f3ff
                         test               ebx, ebx                                       // 0x0086cc60    85db
                         mov.s              esi, eax                                       // 0x0086cc62    8bf0
                         {disp8} jl         _jmp_addr_0x0086cc8e                           // 0x0086cc64    7c28
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                    // 0x0086cc66    8b44245c
                         inc                eax                                            // 0x0086cc6a    40
                         test               eax, eax                                       // 0x0086cc6b    85c0
                         {disp8} jl         _jmp_addr_0x0086cc8e                           // 0x0086cc6d    7c1f
                         cmp                ebx, 0x00000080                                // 0x0086cc6f    81fb80000000
                         {disp8} jge        _jmp_addr_0x0086cc8e                           // 0x0086cc75    7d17
                         cmp                eax, 0x00000080                                // 0x0086cc77    3d80000000
                         {disp8} jge        _jmp_addr_0x0086cc8e                           // 0x0086cc7c    7d10
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x0086cc7e    8b542418
                         lea                ecx, dword ptr [ebx + ebp * 0x1]               // 0x0086cc82    8d0c2b
                         {disp32} fld       dword ptr [edx + ecx * 0x4 + 0x00000200]       // 0x0086cc85    d9848a00020000
                         {disp8} jmp        _jmp_addr_0x0086cc94                           // 0x0086cc8c    eb06
_jmp_addr_0x0086cc8e:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086cc8e    d90598a38a00
_jmp_addr_0x0086cc94:    {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x0086cc94    d80d08c48a00
                         call               _jmp_addr_0x007a1400                           // 0x0086cc9a    e86147f3ff
                         inc                ebx                                            // 0x0086cc9f    43
                         test               ebx, ebx                                       // 0x0086cca0    85db
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x0086cca2    89442410
                         {disp8} jl         _jmp_addr_0x0086ccca                           // 0x0086cca6    7c22
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                    // 0x0086cca8    8b44245c
                         test               eax, eax                                       // 0x0086ccac    85c0
                         {disp8} jl         _jmp_addr_0x0086ccca                           // 0x0086ccae    7c1a
                         cmp                ebx, 0x00000080                                // 0x0086ccb0    81fb80000000
                         {disp8} jge        _jmp_addr_0x0086ccca                           // 0x0086ccb6    7d12
                         cmp                eax, 0x00000080                                // 0x0086ccb8    3d80000000
                         {disp8} jge        _jmp_addr_0x0086ccca                           // 0x0086ccbd    7d0b
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x0086ccbf    8b442418
                         add.s              ebp, ebx                                       // 0x0086ccc3    03eb
                         fld                dword ptr [eax + ebp * 0x4]                    // 0x0086ccc5    d904a8
                         {disp8} jmp        _jmp_addr_0x0086ccd0                           // 0x0086ccc8    eb06
_jmp_addr_0x0086ccca:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086ccca    d90598a38a00
_jmp_addr_0x0086ccd0:    {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x0086ccd0    d80d08c48a00
                         call               _jmp_addr_0x007a1400                           // 0x0086ccd6    e82547f3ff
                         test               ebx, ebx                                       // 0x0086ccdb    85db
                         mov.s              ebp, eax                                       // 0x0086ccdd    8be8
                         {disp8} jl         _jmp_addr_0x0086cd0e                           // 0x0086ccdf    7c2d
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                    // 0x0086cce1    8b4c245c
                         {disp8} lea        eax, dword ptr [ecx + 0x01]                    // 0x0086cce5    8d4101
                         test               eax, eax                                       // 0x0086cce8    85c0
                         {disp8} jl         _jmp_addr_0x0086cd0e                           // 0x0086ccea    7c22
                         cmp                ebx, 0x00000080                                // 0x0086ccec    81fb80000000
                         {disp8} jge        _jmp_addr_0x0086cd0e                           // 0x0086ccf2    7d1a
                         cmp                eax, 0x00000080                                // 0x0086ccf4    3d80000000
                         {disp8} jge        _jmp_addr_0x0086cd0e                           // 0x0086ccf9    7d13
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0086ccfb    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x0086ccff    8b442418
                         add.s              edx, ebx                                       // 0x0086cd03    03d3
                         {disp32} fld       dword ptr [eax + edx * 0x4 + 0x00000200]       // 0x0086cd05    d9849000020000
                         {disp8} jmp        _jmp_addr_0x0086cd14                           // 0x0086cd0c    eb06
_jmp_addr_0x0086cd0e:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086cd0e    d90598a38a00
_jmp_addr_0x0086cd14:    {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x0086cd14    d80d08c48a00
                         call               _jmp_addr_0x007a1400                           // 0x0086cd1a    e8e146f3ff
                         cmp                esi, 0x00050000                                // 0x0086cd1f    81fe00000500
                         mov.s              ecx, eax                                       // 0x0086cd25    8bc8
                         {disp8} jg         _jmp_addr_0x0086cd47                           // 0x0086cd27    7f1e
                         cmp                dword ptr [esp + 0x10], 0x00050000             // 0x0086cd29    817c241000000500
                         {disp8} jg         _jmp_addr_0x0086cd47                           // 0x0086cd31    7f14
                         cmp                ebp, 0x00050000                                // 0x0086cd33    81fd00000500
                         {disp8} jg         _jmp_addr_0x0086cd47                           // 0x0086cd39    7f0c
                         cmp                ecx, 0x00050000                                // 0x0086cd3b    81f900000500
                         {disp32} jle       _jmp_addr_0x0086ceea                           // 0x0086cd41    0f8ea3010000
_jmp_addr_0x0086cd47:    mov.s              eax, ebp                                       // 0x0086cd47    8bc5
                         sub.s              eax, esi                                       // 0x0086cd49    2bc6
                         cdq                                                               // 0x0086cd4b    99
                         idiv               edi                                            // 0x0086cd4c    f7ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x0086cd4e    8b542410
                         {disp8} mov        dword ptr [esp + 0x3c], eax                    // 0x0086cd52    8944243c
                         mov.s              eax, ecx                                       // 0x0086cd56    8bc1
                         sub.s              eax, edx                                       // 0x0086cd58    2bc2
                         cdq                                                               // 0x0086cd5a    99
                         idiv               edi                                            // 0x0086cd5b    f7ff
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x0086cd5d    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x60]                    // 0x0086cd61    8b542460
                         {disp8} mov        dword ptr [esp + 0x44], eax                    // 0x0086cd65    89442444
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x0086cd69    8b442424
                         add.s              ecx, eax                                       // 0x0086cd6d    03c8
                         imul               ecx, edi                                       // 0x0086cd6f    0fafcf
                         lea                ebx, dword ptr [edx + ecx * 0x2]               // 0x0086cd72    8d1c4a
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x0086cd75    8b4c242c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc90c]         // 0x0086cd79    8b150c29fa00
                         add.s              eax, ecx                                       // 0x0086cd7f    03c1
                         shl                eax, 6                                         // 0x0086cd81    c1e006
                         test               edi, edi                                       // 0x0086cd84    85ff
                         lea                ecx, dword ptr [eax + edx * 0x1]               // 0x0086cd86    8d0c10
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc910]         // 0x0086cd89    8b151029fa00
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x0086cd8f    894c2414
                         lea                ebp, dword ptr [eax + edx * 0x1]               // 0x0086cd93    8d2c10
                         {disp32} jle       _jmp_addr_0x0086ceea                           // 0x0086cd96    0f8e4e010000
                         {disp8} mov        dword ptr [esp + 0x38], edi                    // 0x0086cd9c    897c2438
                         {disp8} jmp        _jmp_addr_0x0086cda6                           // 0x0086cda0    eb04
_jmp_addr_0x0086cda2:    {disp8} mov        esi, dword ptr [esp + 0x40]                    // 0x0086cda2    8b742440
_jmp_addr_0x0086cda6:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x0086cda6    8b442410
                         sub.s              eax, esi                                       // 0x0086cdaa    2bc6
                         cdq                                                               // 0x0086cdac    99
                         idiv               edi                                            // 0x0086cdad    f7ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x0086cdaf    8b542410
                         mov.s              ecx, esi                                       // 0x0086cdb3    8bce
                         {disp8} mov        dword ptr [esp + 0x30], edi                    // 0x0086cdb5    897c2430
                         {disp8} mov        dword ptr [esp + 0x48], eax                    // 0x0086cdb9    89442448
                         add                esi, dword ptr [esp + 0x3c]                    // 0x0086cdbd    0374243c
                         {disp8} mov        eax, dword ptr [esp + 0x44]                    // 0x0086cdc1    8b442444
                         add.s              edx, eax                                       // 0x0086cdc5    03d0
                         {disp8} mov        dword ptr [esp + 0x40], esi                    // 0x0086cdc7    89742440
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x0086cdcb    89542410
_jmp_addr_0x0086cdcf:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086cdcf    8b442414
                         xor.s              edx, edx                                       // 0x0086cdd3    33d2
                         mov                dl, byte ptr [eax]                             // 0x0086cdd5    8a10
                         mov.s              esi, ecx                                       // 0x0086cdd7    8bf1
                         sar                esi, 0x10                                      // 0x0086cdd9    c1fe10
                         sub.s              esi, edx                                       // 0x0086cddc    2bf2
                         {disp8} mov        edx, dword ptr [esp + 0x48]                    // 0x0086cdde    8b542448
                         sar                esi, 3                                         // 0x0086cde2    c1fe03
                         add.s              ecx, edx                                       // 0x0086cde5    03ca
                         test               esi, esi                                       // 0x0086cde7    85f6
                         {disp8} mov        dword ptr [esp + 0x50], ecx                    // 0x0086cde9    894c2450
                         {disp32} jle       _jmp_addr_0x0086ce9c                           // 0x0086cded    0f8ea9000000
                         cmp                esi, 0x0f                                      // 0x0086cdf3    83fe0f
                         {disp8} jle        _jmp_addr_0x0086ce14                           // 0x0086cdf6    7e1c
                         xor.s              ecx, ecx                                       // 0x0086cdf8    33c9
                         {disp8} mov        cl, byte ptr [ebp + 0x00]                      // 0x0086cdfa    8a4d00
                         movzx              ax, byte ptr [ecx + 0x00fa28fc]                // 0x0086cdfd    660fb681fc28fa00
                         mov.s              ecx, eax                                       // 0x0086ce05    8bc8
                         shl                ecx, 4                                         // 0x0086ce07    c1e104
                         add.s              ecx, eax                                       // 0x0086ce0a    03c8
                         shl                ecx, 4                                         // 0x0086ce0c    c1e104
                         add                ecx, 0xf                                       // 0x0086ce0f    83c10f
                         {disp8} jmp        _jmp_addr_0x0086ce88                           // 0x0086ce12    eb74
_jmp_addr_0x0086ce14:    mov                dx, word ptr [ebx]                             // 0x0086ce14    668b13
                         xor.s              ecx, ecx                                       // 0x0086ce17    33c9
                         {disp8} mov        cl, byte ptr [ebp + 0x00]                      // 0x0086ce19    8a4d00
                         mov.s              eax, esi                                       // 0x0086ce1c    8bc6
                         shl                eax, 4                                         // 0x0086ce1e    c1e004
                         and                edx, 0x0000ffff                                // 0x0086ce21    81e2ffff0000
                         movzx              di, byte ptr [eax + ecx * 0x1 + 0x00fa27fc]    // 0x0086ce27    660fb6bc08fc27fa00
                         mov                ecx, 0x00000010                                // 0x0086ce30    b910000000
                         sub.s              ecx, esi                                       // 0x0086ce35    2bce
                         shl                ecx, 4                                         // 0x0086ce37    c1e104
                         mov.s              esi, ecx                                       // 0x0086ce3a    8bf1
                         mov.s              eax, edx                                       // 0x0086ce3c    8bc2
                         shr                eax, 8                                         // 0x0086ce3e    c1e808
                         and                eax, 0x0f                                      // 0x0086ce41    83e00f
                         movzx              cx, byte ptr [eax + esi * 0x1 + 0x00fa27fc]    // 0x0086ce44    660fb68c30fc27fa00
                         xor.s              eax, eax                                       // 0x0086ce4d    33c0
                         mov.s              eax, edx                                       // 0x0086ce4f    8bc2
                         shr                eax, 4                                         // 0x0086ce51    c1e804
                         and                eax, 0x0f                                      // 0x0086ce54    83e00f
                         movzx              ax, byte ptr [eax + esi * 0x1 + 0x00fa27fc]    // 0x0086ce57    660fb68430fc27fa00
                         shl                ecx, 4                                         // 0x0086ce60    c1e104
                         and                edx, 0x0f                                      // 0x0086ce63    83e20f
                         movzx              dx, byte ptr [edx + esi * 0x1 + 0x00fa27fc]    // 0x0086ce66    660fb69432fc27fa00
                         add.s              ecx, eax                                       // 0x0086ce6f    03c8
                         mov.s              eax, edi                                       // 0x0086ce71    8bc7
                         shl                eax, 4                                         // 0x0086ce73    c1e004
                         add.s              eax, edi                                       // 0x0086ce76    03c7
                         shl                ecx, 4                                         // 0x0086ce78    c1e104
                         shl                eax, 4                                         // 0x0086ce7b    c1e004
                         add.s              eax, edi                                       // 0x0086ce7e    03c7
                         {disp8} mov        edi, dword ptr [esp + 0x4c]                    // 0x0086ce80    8b7c244c
                         add.s              ecx, edx                                       // 0x0086ce84    03ca
                         add.s              ecx, eax                                       // 0x0086ce86    03c8
_jmp_addr_0x0086ce88:    xor.s              edx, edx                                       // 0x0086ce88    33d2
                         mov                dx, word ptr [ebx]                             // 0x0086ce8a    668b13
                         and                edx, 0x0000f000                                // 0x0086ce8d    81e200f00000
                         or.s               edx, ecx                                       // 0x0086ce93    0bd1
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                    // 0x0086ce95    8b4c2450
                         mov                word ptr [ebx], dx                             // 0x0086ce99    668913
_jmp_addr_0x0086ce9c:    {disp8} mov        eax, dword ptr [esp + 0x34]                    // 0x0086ce9c    8b442434
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x0086cea0    8b542414
                         add.s              edx, eax                                       // 0x0086cea4    03d0
                         add.s              ebp, eax                                       // 0x0086cea6    03e8
                         {disp8} mov        eax, dword ptr [esp + 0x30]                    // 0x0086cea8    8b442430
                         add                ebx, 0x02                                      // 0x0086ceac    83c302
                         dec                eax                                            // 0x0086ceaf    48
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x0086ceb0    89542414
                         {disp8} mov        dword ptr [esp + 0x30], eax                    // 0x0086ceb4    89442430
                         {disp32} jne       _jmp_addr_0x0086cdcf                           // 0x0086ceb8    0f8511ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x34]                    // 0x0086cebe    8b442434
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                    // 0x0086cec2    8b4c2464
                         shl                eax, 8                                         // 0x0086cec6    c1e008
                         add                eax, -0x40                                     // 0x0086cec9    83c0c0
                         mov.s              esi, edx                                       // 0x0086cecc    8bf2
                         add.s              esi, eax                                       // 0x0086cece    03f0
                         add.s              ebp, eax                                       // 0x0086ced0    03e8
                         {disp8} mov        eax, dword ptr [esp + 0x38]                    // 0x0086ced2    8b442438
                         sub.s              ecx, edi                                       // 0x0086ced6    2bcf
                         dec                eax                                            // 0x0086ced8    48
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x0086ced9    89742414
                         lea                ebx, dword ptr [ebx + ecx * 0x2]               // 0x0086cedd    8d1c4b
                         {disp8} mov        dword ptr [esp + 0x38], eax                    // 0x0086cee0    89442438
                         {disp32} jne       _jmp_addr_0x0086cda2                           // 0x0086cee4    0f85b8feffff
_jmp_addr_0x0086ceea:    {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x0086ceea    8b442424
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x0086ceee    8b74241c
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                    // 0x0086cef2    8b54245c
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x0086cef6    8b5c2420
                         inc                eax                                            // 0x0086cefa    40
                         add                esi, 0x00000080                                // 0x0086cefb    81c680000000
                         inc                edx                                            // 0x0086cf01    42
                         cmp                eax, 0x04                                      // 0x0086cf02    83f804
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x0086cf05    89442424
                         {disp8} mov        dword ptr [esp + 0x1c], esi                    // 0x0086cf09    8974241c
                         {disp8} mov        dword ptr [esp + 0x5c], edx                    // 0x0086cf0d    8954245c
                         {disp32} jl        _jmp_addr_0x0086cc23                           // 0x0086cf11    0f8c0cfdffff
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x0086cf17    8b44242c
                         {disp8} mov        esi, dword ptr [esp + 0x28]                    // 0x0086cf1b    8b742428
                         {disp8} mov        edx, dword ptr [esp + 0x64]                    // 0x0086cf1f    8b542464
                         add                eax, 0x00000100                                // 0x0086cf23    0500010000
                         inc                ebx                                            // 0x0086cf28    43
                         add.s              esi, edx                                       // 0x0086cf29    03f2
                         cmp                eax, 0x00000400                                // 0x0086cf2b    3d00040000
                         {disp8} mov        dword ptr [esp + 0x20], ebx                    // 0x0086cf30    895c2420
                         {disp8} mov        dword ptr [esp + 0x28], esi                    // 0x0086cf34    89742428
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x0086cf38    8944242c
                         {disp32} jl        _jmp_addr_0x0086cbfd                           // 0x0086cf3c    0f8cbbfcffff
                         pop                edi                                            // 0x0086cf42    5f
                         pop                ebp                                            // 0x0086cf43    5d
                         pop                ebx                                            // 0x0086cf44    5b
_jmp_addr_0x0086cf45:    pop                esi                                            // 0x0086cf45    5e
                         add                esp, 0x44                                      // 0x0086cf46    83c444
                         ret                0x0010                                         // 0x0086cf49    c21000
                         nop                                                               // 0x0086cf4c    90
                         nop                                                               // 0x0086cf4d    90
                         nop                                                               // 0x0086cf4e    90
                         nop                                                               // 0x0086cf4f    90
_jmp_addr_0x0086cf50:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x0086cf50    d9442410
                         push               esi                                            // 0x0086cf54    56
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086cf55    d80d70b28a00
                         push               edi                                            // 0x0086cf5b    57
                         mov.s              esi, ecx                                       // 0x0086cf5c    8bf1
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x0086cf5e    d81598a38a00
                         fnstsw             ax                                             // 0x0086cf64    dfe0
                         test               ah, 0x01                                       // 0x0086cf66    f6c401
                         {disp8} je         _jmp_addr_0x0086cf75                           // 0x0086cf69    740a
                         fstp               st(0)                                          // 0x0086cf6b    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x0086cf6d    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0086cf8a                           // 0x0086cf73    eb15
_jmp_addr_0x0086cf75:    {disp32} fcom      dword ptr [__real@437f0000]                    // 0x0086cf75    d81570b28a00
                         fnstsw             ax                                             // 0x0086cf7b    dfe0
                         test               ah, 0x41                                       // 0x0086cf7d    f6c441
                         {disp8} jne        _jmp_addr_0x0086cf8a                           // 0x0086cf80    7508
                         fstp               st(0)                                          // 0x0086cf82    ddd8
                         {disp32} fld       dword ptr [__real@437f0000]                    // 0x0086cf84    d90570b28a00
_jmp_addr_0x0086cf8a:    mov                ecx, dword ptr [edx]                           // 0x0086cf8a    8b0a
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x0086cf8c    8b7c2410
                         mov.s              eax, esi                                       // 0x0086cf90    8bc6
                         mov                dword ptr [eax], ecx                           // 0x0086cf92    8908
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                    // 0x0086cf94    8b4a04
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x0086cf97    894804
                         {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x0086cf9a    8b5208
                         {disp8} mov        dword ptr [eax + 0x08], edx                    // 0x0086cf9d    895008
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x0086cfa0    8b44240c
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x0086cfa4    89460c
                         {disp8} mov        dword ptr [esi + 0x10], edi                    // 0x0086cfa7    897e10
                         call               _jmp_addr_0x007a1400                           // 0x0086cfaa    e85144f3ff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x0086cfaf    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x0086cfb3    8b542420
                         {disp8} mov        dword ptr [esi + 0x2c], eax                    // 0x0086cfb7    89462c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0086cfba    8b442414
                         test               eax, eax                                       // 0x0086cfbe    85c0
                         {disp8} mov        dword ptr [esi + 0x30], ecx                    // 0x0086cfc0    894e30
                         {disp8} mov        dword ptr [esi + 0x28], edx                    // 0x0086cfc3    895628
                         {disp8} je         _jmp_addr_0x0086cfe7                           // 0x0086cfc6    741f
                         dec                edi                                            // 0x0086cfc8    4f
                         {disp8} mov        dword ptr [esp + 0x18], edi                    // 0x0086cfc9    897c2418
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x0086cfcd    db442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]               // 0x0086cfd1    d80de4b68a00
                         fld                dword ptr [esi]                                // 0x0086cfd7    d906
                         fsub               st, st(1)                                      // 0x0086cfd9    d8e1
                         fstp               dword ptr [esi]                                // 0x0086cfdb    d91e
                         {disp8} fld        dword ptr [esi + 0x08]                         // 0x0086cfdd    d94608
                         fsub               st, st(1)                                      // 0x0086cfe0    d8e1
                         {disp8} fstp       dword ptr [esi + 0x08]                         // 0x0086cfe2    d95e08
                         fstp               st(0)                                          // 0x0086cfe5    ddd8
_jmp_addr_0x0086cfe7:    pop                edi                                            // 0x0086cfe7    5f
                         pop                esi                                            // 0x0086cfe8    5e
                         ret                0x0018                                         // 0x0086cfe9    c21800
                         nop                                                               // 0x0086cfec    90
                         nop                                                               // 0x0086cfed    90
                         nop                                                               // 0x0086cfee    90
                         nop                                                               // 0x0086cfef    90
_jmp_addr_0x0086cff0:    {disp32} mov       eax, dword ptr [data_bytes + 0x5df1c0]         // 0x0086cff0    a1c051fa00
                         cmp                eax, 0x000000c8                                // 0x0086cff5    3dc8000000
                         {disp8} jae        _jmp_addr_0x0086d032                           // 0x0086cffa    7336
                         push               esi                                            // 0x0086cffc    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x0086cffd    8b742418
                         push               esi                                            // 0x0086d001    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x0086d002    8b742418
                         push               esi                                            // 0x0086d006    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x0086d007    8b742418
                         push               esi                                            // 0x0086d00b    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x0086d00c    8b742418
                         push               esi                                            // 0x0086d010    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x0086d011    8b742418
                         push               esi                                            // 0x0086d015    56
                         push               edx                                            // 0x0086d016    52
                         mov.s              edx, ecx                                       // 0x0086d017    8bd1
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x0086d019    8d0c40
                         lea                eax, dword ptr [eax + ecx * 0x4]               // 0x0086d01c    8d0488
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00fa2920]        // 0x0086d01f    8d0c852029fa00
                         call               _jmp_addr_0x0086cf50                           // 0x0086d026    e825ffffff
                         {disp32} inc       dword ptr [data_bytes + 0x5df1c0]              // 0x0086d02b    ff05c051fa00
                         pop                esi                                            // 0x0086d031    5e
_jmp_addr_0x0086d032:    ret                0x0014                                         // 0x0086d032    c21400
                         nop                                                               // 0x0086d035    90
                         nop                                                               // 0x0086d036    90
                         nop                                                               // 0x0086d037    90
                         nop                                                               // 0x0086d038    90
                         nop                                                               // 0x0086d039    90
                         nop                                                               // 0x0086d03a    90
                         nop                                                               // 0x0086d03b    90
                         nop                                                               // 0x0086d03c    90
                         nop                                                               // 0x0086d03d    90
                         nop                                                               // 0x0086d03e    90
                         nop                                                               // 0x0086d03f    90
_globl_ct_0x0086d040:    {disp32} jmp       _jmp_addr_0x0086d050                           // 0x0086d040    e90b000000
                         nop                                                               // 0x0086d045    90
                         nop                                                               // 0x0086d046    90
                         nop                                                               // 0x0086d047    90
                         nop                                                               // 0x0086d048    90
                         nop                                                               // 0x0086d049    90
                         nop                                                               // 0x0086d04a    90
                         nop                                                               // 0x0086d04b    90
                         nop                                                               // 0x0086d04c    90
                         nop                                                               // 0x0086d04d    90
                         nop                                                               // 0x0086d04e    90
                         nop                                                               // 0x0086d04f    90
_jmp_addr_0x0086d050:    ret                                                               // 0x0086d050    c3
                         nop                                                               // 0x0086d051    90
                         nop                                                               // 0x0086d052    90
                         nop                                                               // 0x0086d053    90
                         nop                                                               // 0x0086d054    90
                         nop                                                               // 0x0086d055    90
                         nop                                                               // 0x0086d056    90
                         nop                                                               // 0x0086d057    90
                         nop                                                               // 0x0086d058    90
                         nop                                                               // 0x0086d059    90
                         nop                                                               // 0x0086d05a    90
                         nop                                                               // 0x0086d05b    90
                         nop                                                               // 0x0086d05c    90
                         nop                                                               // 0x0086d05d    90
                         nop                                                               // 0x0086d05e    90
                         nop                                                               // 0x0086d05f    90
_jmp_addr_0x0086d060:    push               ebp                                            // 0x0086d060    55
                         mov.s              ebp, esp                                       // 0x0086d061    8bec
                         sub                esp, 0x18                                      // 0x0086d063    83ec18
                         push               ebx                                            // 0x0086d066    53
                         push               esi                                            // 0x0086d067    56
                         mov.s              esi, ecx                                       // 0x0086d068    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                    // 0x0086d06a    8b460c
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x0086d06d    8945f8
                         {disp8} mov        eax, dword ptr [esi + 0x30]                    // 0x0086d070    8b4630
                         mov                ecx, 0x00000001                                // 0x0086d073    b901000000
                         dec                eax                                            // 0x0086d078    48
                         cmp                eax, 0x07                                      // 0x0086d079    83f807
                         push               edi                                            // 0x0086d07c    57
                         {disp8} mov        dword ptr [esi + 0x24], ecx                    // 0x0086d07d    894e24
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                   // 0x0086d080    894dfc
                         {disp8} ja         _jmp_addr_0x0086d0a1                           // 0x0086d083    771c
                         jmp                dword ptr [eax*4 + 0x86d338]                   // 0x0086d085    ff248538d38600
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000003            // 0x0086d08c    c745fc03000000
                         {disp8} jmp        _jmp_addr_0x0086d0a1                           // 0x0086d093    eb0c
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                   // 0x0086d095    894dfc
                         {disp8} jmp        _jmp_addr_0x0086d0a1                           // 0x0086d098    eb07
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000004            // 0x0086d09a    c745fc04000000
_jmp_addr_0x0086d0a1:    fld                dword ptr [esi]                                // 0x0086d0a1    d906
                         {disp8} mov        eax, dword ptr [esi + 0x10]                    // 0x0086d0a3    8b4610
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x0086d0a6    d80d04c48a00
                         dec                eax                                            // 0x0086d0ac    48
                         {disp8} mov        dword ptr [esi + 0x1c], eax                    // 0x0086d0ad    89461c
                         {disp8} mov        dword ptr [esi + 0x20], eax                    // 0x0086d0b0    894620
                         {disp8} fstp       dword ptr [ebp + -0x0c]                        // 0x0086d0b3    d95df4
                         {disp8} fld        dword ptr [esi + 0x08]                         // 0x0086d0b6    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x0086d0b9    d80d04c48a00
                         {disp8} fld        dword ptr [ebp + -0x0c]                        // 0x0086d0bf    d945f4
                         call               _jmp_addr_0x007a1400                           // 0x0086d0c2    e83943f3ff
                         fld                st(0)                                          // 0x0086d0c7    d9c0
                         {disp8} mov        dword ptr [esi + 0x14], eax                    // 0x0086d0c9    894614
                         call               _jmp_addr_0x007a1400                           // 0x0086d0cc    e82f43f3ff
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x0086d0d1    d81598a38a00
                         {disp8} mov        dword ptr [ebp + -0x10], eax                   // 0x0086d0d7    8945f0
                         {disp8} fild       dword ptr [ebp + -0x10]                        // 0x0086d0da    db45f0
                         {disp8} mov        dword ptr [esi + 0x18], eax                    // 0x0086d0dd    894618
                         fnstsw             ax                                             // 0x0086d0e0    dfe0
                         test               ah, 0x01                                       // 0x0086d0e2    f6c401
                         {disp8} jne        _jmp_addr_0x0086d110                           // 0x0086d0e5    7529
                         fsubr              st, st(1)                                      // 0x0086d0e7    d8e9
                         {disp8} lea        ecx, dword ptr [ebp + -0x10]                   // 0x0086d0e9    8d4df0
                         {disp8} mov        dword ptr [ebp + -0x14], ecx                   // 0x0086d0ec    894dec
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086d0ef    d80d70b28a00
                         {disp32} fsubr     dword ptr [__real@437f0000]                    // 0x0086d0f5    d82d70b28a00
                         {disp8} fstp       dword ptr [ebp + -0x18]                        // 0x0086d0fb    d95de8
                         fstp               st(0)                                          // 0x0086d0fe    ddd8
                         {disp8} fld        dword ptr [ebp + -0x18]                        // 0x0086d100    d945e8
                         {disp8} mov        edx, dword ptr [ebp + -0x14]                   // 0x0086d103    8b55ec
                         fistp              dword ptr [edx]                                // 0x0086d106    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x10]                   // 0x0086d108    8b55f0
                         {disp8} mov        dword ptr [ebp + -0x10], edx                   // 0x0086d10b    8955f0
                         {disp8} jmp        _jmp_addr_0x0086d138                           // 0x0086d10e    eb28
_jmp_addr_0x0086d110:    fsub               st, st(1)                                      // 0x0086d110    d8e1
                         {disp8} lea        eax, dword ptr [ebp + -0x10]                   // 0x0086d112    8d45f0
                         {disp8} mov        dword ptr [ebp + -0x18], eax                   // 0x0086d115    8945e8
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086d118    d80d70b28a00
                         {disp8} fstp       dword ptr [ebp + -0x14]                        // 0x0086d11e    d95dec
                         fstp               st(0)                                          // 0x0086d121    ddd8
                         {disp8} fld        dword ptr [ebp + -0x14]                        // 0x0086d123    d945ec
                         {disp8} mov        edx, dword ptr [ebp + -0x18]                   // 0x0086d126    8b55e8
                         fistp              dword ptr [edx]                                // 0x0086d129    db1a
                         {disp8} mov        eax, dword ptr [esi + 0x18]                    // 0x0086d12b    8b4618
                         {disp8} mov        ecx, dword ptr [ebp + -0x10]                   // 0x0086d12e    8b4df0
                         dec                eax                                            // 0x0086d131    48
                         {disp8} mov        dword ptr [ebp + -0x10], ecx                   // 0x0086d132    894df0
                         {disp8} mov        dword ptr [esi + 0x18], eax                    // 0x0086d135    894618
_jmp_addr_0x0086d138:    {disp8} fld        dword ptr [ebp + -0x0c]                        // 0x0086d138    d945f4
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0086d13b    d81d98a38a00
                         {disp8} fild       dword ptr [esi + 0x14]                         // 0x0086d141    db4614
                         fnstsw             ax                                             // 0x0086d144    dfe0
                         test               ah, 0x01                                       // 0x0086d146    f6c401
                         {disp8} jne        _jmp_addr_0x0086d173                           // 0x0086d149    7528
                         {disp8} fsubr      dword ptr [ebp + -0x0c]                        // 0x0086d14b    d86df4
                         {disp8} lea        edx, dword ptr [ebp + -0x0c]                   // 0x0086d14e    8d55f4
                         {disp8} mov        dword ptr [ebp + -0x18], edx                   // 0x0086d151    8955e8
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086d154    d80d70b28a00
                         {disp32} fsubr     dword ptr [__real@437f0000]                    // 0x0086d15a    d82d70b28a00
                         {disp8} fstp       dword ptr [ebp + -0x14]                        // 0x0086d160    d95dec
                         {disp8} fld        dword ptr [ebp + -0x14]                        // 0x0086d163    d945ec
                         {disp8} mov        edx, dword ptr [ebp + -0x18]                   // 0x0086d166    8b55e8
                         fistp              dword ptr [edx]                                // 0x0086d169    db1a
                         {disp8} mov        eax, dword ptr [ebp + -0x0c]                   // 0x0086d16b    8b45f4
                         {disp8} mov        dword ptr [ebp + -0x0c], eax                   // 0x0086d16e    8945f4
                         {disp8} jmp        _jmp_addr_0x0086d19a                           // 0x0086d171    eb27
_jmp_addr_0x0086d173:    {disp8} fsub       dword ptr [ebp + -0x0c]                        // 0x0086d173    d865f4
                         {disp8} lea        ecx, dword ptr [ebp + -0x0c]                   // 0x0086d176    8d4df4
                         {disp8} mov        dword ptr [ebp + -0x18], ecx                   // 0x0086d179    894de8
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x0086d17c    d80d70b28a00
                         {disp8} fstp       dword ptr [ebp + -0x14]                        // 0x0086d182    d95dec
                         {disp8} fld        dword ptr [ebp + -0x14]                        // 0x0086d185    d945ec
                         {disp8} mov        edx, dword ptr [ebp + -0x18]                   // 0x0086d188    8b55e8
                         fistp              dword ptr [edx]                                // 0x0086d18b    db1a
                         {disp8} mov        eax, dword ptr [esi + 0x14]                    // 0x0086d18d    8b4614
                         {disp8} mov        edx, dword ptr [ebp + -0x0c]                   // 0x0086d190    8b55f4
                         dec                eax                                            // 0x0086d193    48
                         {disp8} mov        dword ptr [ebp + -0x0c], edx                   // 0x0086d194    8955f4
                         {disp8} mov        dword ptr [esi + 0x14], eax                    // 0x0086d197    894614
_jmp_addr_0x0086d19a:    {disp8} mov        edx, dword ptr [ebp + -0x10]                   // 0x0086d19a    8b55f0
                         {disp8} mov        ecx, dword ptr [ebp + -0x0c]                   // 0x0086d19d    8b4df4
                         mov                eax, 0x000000ff                                // 0x0086d1a0    b8ff000000
                         and.s              edx, eax                                       // 0x0086d1a5    23d0
                         and.s              ecx, eax                                       // 0x0086d1a7    23c8
                         {disp8} mov        eax, dword ptr [esi + 0x14]                    // 0x0086d1a9    8b4614
                         {disp8} mov        dword ptr [ebp + -0x10], edx                   // 0x0086d1ac    8955f0
                         {disp8} mov        dword ptr [ebp + -0x0c], ecx                   // 0x0086d1af    894df4
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                    // 0x0086d1b2    8b4e10
                         mov                edx, 0x00000200                                // 0x0086d1b5    ba00020000
                         sub.s              edx, ecx                                       // 0x0086d1ba    2bd1
                         cmp.s              eax, edx                                       // 0x0086d1bc    3bc2
                         {disp8} jle        _jmp_addr_0x0086d1da                           // 0x0086d1be    7e1a
                         cmp                eax, 0x00000200                                // 0x0086d1c0    3d00020000
                         {disp8} jl         _jmp_addr_0x0086d1ce                           // 0x0086d1c5    7c07
                         {disp8} mov        dword ptr [esi + 0x24], 0x00000000             // 0x0086d1c7    c7462400000000
_jmp_addr_0x0086d1ce:    mov                ecx, 0x00000200                                // 0x0086d1ce    b900020000
                         sub.s              ecx, eax                                       // 0x0086d1d3    2bc8
                         {disp8} mov        dword ptr [esi + 0x20], ecx                    // 0x0086d1d5    894e20
                         {disp8} jmp        _jmp_addr_0x0086d201                           // 0x0086d1d8    eb27
_jmp_addr_0x0086d1da:    test               eax, eax                                       // 0x0086d1da    85c0
                         {disp8} jge        _jmp_addr_0x0086d201                           // 0x0086d1dc    7d23
                         {disp8} mov        edi, dword ptr [esi + 0x20]                    // 0x0086d1de    8b7e20
                         add.s              edi, eax                                       // 0x0086d1e1    03f8
                         xor.s              ebx, ebx                                       // 0x0086d1e3    33db
                         cmp.s              edi, ebx                                       // 0x0086d1e5    3bfb
                         {disp8} jge        _jmp_addr_0x0086d1ec                           // 0x0086d1e7    7d03
                         {disp8} mov        dword ptr [esi + 0x24], ebx                    // 0x0086d1e9    895e24
_jmp_addr_0x0086d1ec:    imul               eax, ecx                                       // 0x0086d1ec    0fafc1
                         imul               eax, dword ptr [ebp + -0x04]                   // 0x0086d1ef    0faf45fc
                         {disp8} mov        ecx, dword ptr [ebp + -0x08]                   // 0x0086d1f3    8b4df8
                         sub.s              ecx, eax                                       // 0x0086d1f6    2bc8
                         {disp8} mov        dword ptr [esi + 0x20], edi                    // 0x0086d1f8    897e20
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                   // 0x0086d1fb    894df8
                         {disp8} mov        dword ptr [esi + 0x14], ebx                    // 0x0086d1fe    895e14
_jmp_addr_0x0086d201:    {disp8} mov        eax, dword ptr [esi + 0x18]                    // 0x0086d201    8b4618
                         cmp.s              eax, edx                                       // 0x0086d204    3bc2
                         {disp8} jle        _jmp_addr_0x0086d222                           // 0x0086d206    7e1a
                         cmp                eax, 0x00000200                                // 0x0086d208    3d00020000
                         {disp8} jl         _jmp_addr_0x0086d216                           // 0x0086d20d    7c07
                         {disp8} mov        dword ptr [esi + 0x24], 0x00000000             // 0x0086d20f    c7462400000000
_jmp_addr_0x0086d216:    mov                edx, 0x00000200                                // 0x0086d216    ba00020000
                         sub.s              edx, eax                                       // 0x0086d21b    2bd0
                         {disp8} mov        dword ptr [esi + 0x1c], edx                    // 0x0086d21d    89561c
                         {disp8} jmp        _jmp_addr_0x0086d241                           // 0x0086d220    eb1f
_jmp_addr_0x0086d222:    xor.s              edx, edx                                       // 0x0086d222    33d2
                         cmp.s              eax, edx                                       // 0x0086d224    3bc2
                         {disp8} jge        _jmp_addr_0x0086d241                           // 0x0086d226    7d19
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                    // 0x0086d228    8b4e1c
                         add.s              ecx, eax                                       // 0x0086d22b    03c8
                         cmp.s              ecx, edx                                       // 0x0086d22d    3bca
                         {disp8} jge        _jmp_addr_0x0086d234                           // 0x0086d22f    7d03
                         {disp8} mov        dword ptr [esi + 0x24], edx                    // 0x0086d231    895624
_jmp_addr_0x0086d234:    imul               eax, dword ptr [ebp + -0x04]                   // 0x0086d234    0faf45fc
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                    // 0x0086d238    894e1c
                         sub                dword ptr [ebp + -0x08], eax                   // 0x0086d23b    2945f8
                         {disp8} mov        dword ptr [esi + 0x18], edx                    // 0x0086d23e    895618
_jmp_addr_0x0086d241:    {disp8} mov        eax, dword ptr [esi + 0x24]                    // 0x0086d241    8b4624
                         test               eax, eax                                       // 0x0086d244    85c0
                         {disp32} je        _jmp_addr_0x0086d32f                           // 0x0086d246    0f84e3000000
                         {disp8} mov        edi, dword ptr [esi + 0x18]                    // 0x0086d24c    8b7e18
                         {disp8} mov        ebx, dword ptr [esi + 0x14]                    // 0x0086d24f    8b5e14
                         mov.s              eax, edi                                       // 0x0086d252    8bc7
                         cdq                                                               // 0x0086d254    99
                         and                edx, 0x0f                                      // 0x0086d255    83e20f
                         add.s              eax, edx                                       // 0x0086d258    03c2
                         sar                eax, 4                                         // 0x0086d25a    c1f804
                         {disp8} mov        dword ptr [ebp + -0x18], eax                   // 0x0086d25d    8945e8
                         {disp8} mov        eax, dword ptr [esi + 0x20]                    // 0x0086d260    8b4620
                         add.s              eax, ebx                                       // 0x0086d263    03c3
                         cdq                                                               // 0x0086d265    99
                         and                edx, 0x0f                                      // 0x0086d266    83e20f
                         add.s              eax, edx                                       // 0x0086d269    03c2
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                    // 0x0086d26b    8b561c
                         mov.s              ecx, eax                                       // 0x0086d26e    8bc8
                         mov.s              eax, edi                                       // 0x0086d270    8bc7
                         add.s              eax, edx                                       // 0x0086d272    03c2
                         cdq                                                               // 0x0086d274    99
                         and                edx, 0x0f                                      // 0x0086d275    83e20f
                         add.s              eax, edx                                       // 0x0086d278    03c2
                         sar                eax, 4                                         // 0x0086d27a    c1f804
                         sar                ecx, 4                                         // 0x0086d27d    c1f904
                         inc                ecx                                            // 0x0086d280    41
                         inc                eax                                            // 0x0086d281    40
                         {disp8} mov        dword ptr [ebp + -0x04], eax                   // 0x0086d282    8945fc
                         mov.s              eax, ebx                                       // 0x0086d285    8bc3
                         cdq                                                               // 0x0086d287    99
                         and                edx, 0x0f                                      // 0x0086d288    83e20f
                         add.s              eax, edx                                       // 0x0086d28b    03c2
                         sar                eax, 4                                         // 0x0086d28d    c1f804
                         cmp.s              eax, ecx                                       // 0x0086d290    3bc1
                         {disp32} jge       _jmp_addr_0x0086d32f                           // 0x0086d292    0f8d97000000
                         mov.s              edi, eax                                       // 0x0086d298    8bf8
                         shl                edi, 5                                         // 0x0086d29a    c1e705
                         add                edi, OFFSET ?g_index_block@LH3DIsland@@3PAY0CA@EA                                // 0x0086d29d    81c764c9e900
                         sub.s              ecx, eax                                       // 0x0086d2a3    2bc8
                         {disp8} mov        dword ptr [ebp + -0x14], ecx                   // 0x0086d2a5    894dec
_jmp_addr_0x0086d2a8:    {disp8} mov        eax, dword ptr [ebp + -0x18]                   // 0x0086d2a8    8b45e8
                         cmp                eax, dword ptr [ebp + -0x04]                   // 0x0086d2ab    3b45fc
                         mov.s              ebx, eax                                       // 0x0086d2ae    8bd8
                         {disp8} jge        _jmp_addr_0x0086d31f                           // 0x0086d2b0    7d6d
_jmp_addr_0x0086d2b2:    cmp                edi, OFFSET ?g_index_block@LH3DIsland@@3PAY0CA@EA                                // 0x0086d2b2    81ff64c9e900
                         {disp8} jl         _jmp_addr_0x0086d317                           // 0x0086d2b8    7c5d
                         cmp                edi, 0x00e9cd44                                // 0x0086d2ba    81ff44cde900
                         {disp8} jg         _jmp_addr_0x0086d317                           // 0x0086d2c0    7f55
                         test               ebx, ebx                                       // 0x0086d2c2    85db
                         {disp8} jl         _jmp_addr_0x0086d317                           // 0x0086d2c4    7c51
                         cmp                ebx, 0x1f                                      // 0x0086d2c6    83fb1f
                         {disp8} jg         _jmp_addr_0x0086d317                           // 0x0086d2c9    7f4c
                         xor.s              eax, eax                                       // 0x0086d2cb    33c0
                         mov                al, byte ptr [edi + ebx * 0x1]                 // 0x0086d2cd    8a041f
                         test               eax, eax                                       // 0x0086d2d0    85c0
                         {disp8} je         _jmp_addr_0x0086d317                           // 0x0086d2d2    7443
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]        // 0x0086d2d4    8b0c8564c5e900
                         test               ecx, ecx                                       // 0x0086d2db    85c9
                         {disp8} je         _jmp_addr_0x0086d317                           // 0x0086d2dd    7438
                         test               byte ptr [ecx + 0x00000920], 0x04              // 0x0086d2df    f6812009000004
                         {disp8} je         _jmp_addr_0x0086d317                           // 0x0086d2e6    742f
                         {disp8} mov        eax, dword ptr [esi + 0x30]                    // 0x0086d2e8    8b4630
                         dec                eax                                            // 0x0086d2eb    48
                         {disp8} je         _jmp_addr_0x0086d305                           // 0x0086d2ec    7417
                         dec                eax                                            // 0x0086d2ee    48
                         {disp8} jne        _jmp_addr_0x0086d317                           // 0x0086d2ef    7526
                         {disp8} mov        edx, dword ptr [ebp + -0x0c]                   // 0x0086d2f1    8b55f4
                         {disp8} mov        eax, dword ptr [ebp + -0x10]                   // 0x0086d2f4    8b45f0
                         push               edx                                            // 0x0086d2f7    52
                         {disp8} mov        edx, dword ptr [ebp + -0x08]                   // 0x0086d2f8    8b55f8
                         push               eax                                            // 0x0086d2fb    50
                         push               edx                                            // 0x0086d2fc    52
                         push               esi                                            // 0x0086d2fd    56
                         call               _jmp_addr_0x00878c70                           // 0x0086d2fe    e86db90000
                         {disp8} jmp        _jmp_addr_0x0086d317                           // 0x0086d303    eb12
_jmp_addr_0x0086d305:    {disp8} mov        eax, dword ptr [ebp + -0x0c]                   // 0x0086d305    8b45f4
                         {disp8} mov        edx, dword ptr [ebp + -0x10]                   // 0x0086d308    8b55f0
                         push               eax                                            // 0x0086d30b    50
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                   // 0x0086d30c    8b45f8
                         push               edx                                            // 0x0086d30f    52
                         push               eax                                            // 0x0086d310    50
                         push               esi                                            // 0x0086d311    56
                         call               _jmp_addr_0x00878780                           // 0x0086d312    e869b40000
_jmp_addr_0x0086d317:    {disp8} mov        eax, dword ptr [ebp + -0x04]                   // 0x0086d317    8b45fc
                         inc                ebx                                            // 0x0086d31a    43
                         cmp.s              ebx, eax                                       // 0x0086d31b    3bd8
                         {disp8} jl         _jmp_addr_0x0086d2b2                           // 0x0086d31d    7c93
_jmp_addr_0x0086d31f:    {disp8} mov        eax, dword ptr [ebp + -0x14]                   // 0x0086d31f    8b45ec
                         add                edi, 0x20                                      // 0x0086d322    83c720
                         dec                eax                                            // 0x0086d325    48
                         {disp8} mov        dword ptr [ebp + -0x14], eax                   // 0x0086d326    8945ec
                         {disp32} jne       _jmp_addr_0x0086d2a8                           // 0x0086d329    0f8579ffffff
_jmp_addr_0x0086d32f:    pop                edi                                            // 0x0086d32f    5f
                         pop                esi                                            // 0x0086d330    5e
                         pop                ebx                                            // 0x0086d331    5b
                         mov.s              esp, ebp                                       // 0x0086d332    8be5
                         pop                ebp                                            // 0x0086d334    5d
                         ret                                                               // 0x0086d335    c3

// Snippet: db, [0x0086d336, 0x0086d338)
.byte 0x8b, 0xff                  // 0x0086d336

// Snippet: jmptbl, [0x0086d338, 0x0086d358)
.byte 0x8c, 0xd0, 0x86, 0x00      // 0x0086d338
.byte 0x95, 0xd0, 0x86, 0x00      // 0x0086d33c
.byte 0xa1, 0xd0, 0x86, 0x00      // 0x0086d340
.byte 0x95, 0xd0, 0x86, 0x00      // 0x0086d344
.byte 0xa1, 0xd0, 0x86, 0x00      // 0x0086d348
.byte 0xa1, 0xd0, 0x86, 0x00      // 0x0086d34c
.byte 0xa1, 0xd0, 0x86, 0x00      // 0x0086d350
.byte 0x9a, 0xd0, 0x86, 0x00      // 0x0086d354

// Snippet: db, [0x0086d358, 0x0086d360)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0086d358
.byte 0x90, 0x90, 0x90, 0x90      // 0x0086d35c

