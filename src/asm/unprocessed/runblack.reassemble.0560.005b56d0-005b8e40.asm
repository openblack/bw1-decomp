.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern _jmp_addr_0x00422250
.extern @SetPosition__6ZoomerFf@12
.extern @__ct__7LHPointFfff@20
.extern @Update__6ZoomerFf@12
.extern _jmp_addr_0x004427b0
.extern _jmp_addr_0x00460710
.extern _jmp_addr_0x0046bfb0
.extern _jmp_addr_0x0046c040
.extern _jmp_addr_0x0046c0d0
.extern _jmp_addr_0x0046c500
.extern _jmp_addr_0x0046d080
.extern _jmp_addr_0x0046db70
.extern _jmp_addr_0x0046df60
.extern _jmp_addr_0x0046e160
.extern _jmp_addr_0x0046e4b0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005db710
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x006e8130
.extern _jmp_addr_0x0074bd20
.extern _jmp_addr_0x0074caf0
.extern _jmp_addr_0x0074cbd0
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast
.extern _jmp_addr_0x007e5550
.extern _jmp_addr_0x007fb180
.extern _jmp_addr_0x007fb5c0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x00803630
.extern _jmp_addr_0x00839f10
.extern _jmp_addr_0x00860e00
.extern _jmp_addr_0x00861ee0
.extern _jmp_addr_0x00865020

.globl @__ct__20HandStateMultiPickUpFP5CHand@12
.globl _jmp_addr_0x005b5b90
.globl @__ct__15HandStateNormalFP5CHand@12
.globl _jmp_addr_0x005b5e70
.globl @__ct__17HandStatePlayAnimFP5CHand@12
.globl @__ct__14HandStateTotemFP5CHand@12
.globl @__ct__12HandStateTugFP5CHand@12

.globl _globl_ct_0x005b5700
.globl _globl_ct_0x005b5bf0
.globl _globl_ct_0x005b5c20
.globl _globl_ct_0x005b5c50
.globl _globl_ct_0x005b5ca0
.globl _globl_ct_0x005b5cc0
.globl _globl_ct_0x005b5ce0
.globl _globl_ct_0x005b5e50
.globl _globl_ct_0x005b7470
.globl _globl_ct_0x005b74a0
.globl _globl_ct_0x005b74d0
.globl _globl_ct_0x005b7640
.globl _globl_ct_0x005b7d50
.globl _globl_ct_0x005b7d80
.globl _globl_ct_0x005b7db0
.globl ?Enter@HandStateNormal@@UAEXXZ
.globl ?Update@HandStateNormal@@UAEXMPAULHMatrix@@@Z
.globl ?Enter@HandStatePlayAnim@@UAEXXZ
.globl ?Update@HandStatePlayAnim@@UAEXMPAULHMatrix@@@Z
.globl ?Enter@HandStateTotem@@UAEXXZ
.globl ?Exit@HandStateTotem@@UAEXXZ
.globl ?Update@HandStateTotem@@UAEXMPAULHMatrix@@@Z
.globl ?Enter@HandStateTug@@UAEXXZ
.globl ?Update@HandStateTug@@UAEXMPAULHMatrix@@@Z

start_0x005b56d0_0x005b8e40:
// Snippet: asm, [0x005b56d0, 0x005b8e1e)
                         {disp32} mov       eax, dword ptr [data_bytes + 0x381824]        // 0x005b56d0    a12478d400
                         test               eax, eax                                      // 0x005b56d5    85c0
                         {disp8} je         _jmp_addr_0x005b56ea                          // 0x005b56d7    7411
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x005b56d9    8b4104
                         {disp32} mov       edx, dword ptr [eax + 0x00004904]             // 0x005b56dc    8b9004490000
                         cmp                edx, dword ptr [data_bytes + 0x381828]        // 0x005b56e2    3b152878d400
                         {disp8} je         _jmp_addr_0x005b56fd                          // 0x005b56e8    7413
_jmp_addr_0x005b56ea:    {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x005b56ea    8b4104
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]             // 0x005b56ed    8b8804490000
                         mov                edx, dword ptr [ecx]                          // 0x005b56f3    8b11
                         push               0x0                                           // 0x005b56f5    6a00
                         call               dword ptr [edx + 0x614]                       // 0x005b56f7    ff9214060000
_jmp_addr_0x005b56fd:    ret                                                              // 0x005b56fd    c3
                         nop                                                              // 0x005b56fe    90
                         nop                                                              // 0x005b56ff    90
_globl_ct_0x005b5700:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005b5700    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005b5706    b001
                         test               al, cl                                        // 0x005b5708    84c8
                         {disp8} jne        _jmp_addr_0x005b5714                          // 0x005b570a    7508
                         or.s               cl, al                                        // 0x005b570c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005b570e    880d34c9fa00
_jmp_addr_0x005b5714:    {disp32} jmp       _jmp_addr_0x005b5720                          // 0x005b5714    e907000000
                         nop                                                              // 0x005b5719    90
                         nop                                                              // 0x005b571a    90
                         nop                                                              // 0x005b571b    90
                         nop                                                              // 0x005b571c    90
                         nop                                                              // 0x005b571d    90
                         nop                                                              // 0x005b571e    90
                         nop                                                              // 0x005b571f    90
_jmp_addr_0x005b5720:    push               0x00407870                                    // 0x005b5720    6870784000
                         call               _atexit                                       // 0x005b5725    e867002100
                         pop                ecx                                           // 0x005b572a    59
                         ret                                                              // 0x005b572b    c3
                         nop                                                              // 0x005b572c    90
                         nop                                                              // 0x005b572d    90
                         nop                                                              // 0x005b572e    90
                         nop                                                              // 0x005b572f    90
@__ct__20HandStateMultiPickUpFP5CHand@12:    mov.s              eax, ecx                                      // 0x005b5730    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005b5732    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005b5736    894804
                         mov                dword ptr [eax], 0x00900b6c                   // 0x005b5739    c7006c0b9000
                         ret                0x0004                                        // 0x005b573f    c20400
                         nop                                                              // 0x005b5742    90
                         nop                                                              // 0x005b5743    90
                         nop                                                              // 0x005b5744    90
                         nop                                                              // 0x005b5745    90
                         nop                                                              // 0x005b5746    90
                         nop                                                              // 0x005b5747    90
                         nop                                                              // 0x005b5748    90
                         nop                                                              // 0x005b5749    90
                         nop                                                              // 0x005b574a    90
                         nop                                                              // 0x005b574b    90
                         nop                                                              // 0x005b574c    90
                         nop                                                              // 0x005b574d    90
                         nop                                                              // 0x005b574e    90
                         nop                                                              // 0x005b574f    90
                         push               esi                                           // 0x005b5750    56
                         mov.s              esi, ecx                                      // 0x005b5751    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b5753    8b0d5c19d000
                         push               edi                                           // 0x005b5759    57
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b575a    e8f100faff
                         {disp32} mov       edi, dword ptr [eax + 0x000003c8]             // 0x005b575f    8bb8c8030000
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b5765    8b4e04
                         push               edi                                           // 0x005b5768    57
                         call               _jmp_addr_0x0046db70                          // 0x005b5769    e80284ebff
                         push               ecx                                           // 0x005b576e    51
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b576f    8b4e04
                         fstp               dword ptr [esp]                               // 0x005b5772    d91c24
                         call               _jmp_addr_0x0046c0d0                          // 0x005b5775    e85669ebff
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x005b577a    8b7604
                         {disp32} mov       eax, dword ptr [esi + 0x00004854]             // 0x005b577d    8b8654480000
                         {disp8} lea        edx, dword ptr [esi + 0x78]                   // 0x005b5783    8d5678
                         push               eax                                           // 0x005b5786    50
                         {disp32} lea       ecx, dword ptr [esi + 0x0000485c]             // 0x005b5787    8d8e5c480000
                         call               _jmp_addr_0x0074caf0                          // 0x005b578d    e85e731900
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x005b5792    8d4f14
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b5795    e8f6d82400
                         fstp               st(0)                                         // 0x005b579a    ddd8
                         push               0xffff8000                                    // 0x005b579c    680080ffff
                         push               0xffff8000                                    // 0x005b57a1    680080ffff
                         mov                ecx, 0x00e85204                               // 0x005b57a6    b90452e800
                         call               _jmp_addr_0x007e5550                          // 0x005b57ab    e8a0fd2200
                         pop                edi                                           // 0x005b57b0    5f
                         pop                esi                                           // 0x005b57b1    5e
                         ret                                                              // 0x005b57b2    c3
                         nop                                                              // 0x005b57b3    90
                         nop                                                              // 0x005b57b4    90
                         nop                                                              // 0x005b57b5    90
                         nop                                                              // 0x005b57b6    90
                         nop                                                              // 0x005b57b7    90
                         nop                                                              // 0x005b57b8    90
                         nop                                                              // 0x005b57b9    90
                         nop                                                              // 0x005b57ba    90
                         nop                                                              // 0x005b57bb    90
                         nop                                                              // 0x005b57bc    90
                         nop                                                              // 0x005b57bd    90
                         nop                                                              // 0x005b57be    90
                         nop                                                              // 0x005b57bf    90
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2d0], 0x00000000 // 0x005b57c0    c705d052e80000000000
                         ret                                                              // 0x005b57ca    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005b57cb    e829c0e4ff
                         sub                esp, 0x000000a8                               // 0x005b57d0    81eca8000000
                         push               ebx                                           // 0x005b57d6    53
                         push               ebp                                           // 0x005b57d7    55
                         push               esi                                           // 0x005b57d8    56
                         mov.s              esi, ecx                                      // 0x005b57d9    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b57db    8b0d5c19d000
                         push               edi                                           // 0x005b57e1    57
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b57e2    e86900faff
                         {disp32} mov       ebp, dword ptr [eax + 0x000003c8]             // 0x005b57e7    8ba8c8030000
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]             // 0x005b57ed    8b809c030000
                         {disp8} mov        ebx, dword ptr [eax + 0x3c]                   // 0x005b57f3    8b583c
                         test               ebx, ebx                                      // 0x005b57f6    85db
                         {disp8} mov        dword ptr [esp + 0x14], 0x3fafede0            // 0x005b57f8    c7442414e0edaf3f
                         {disp8} je         _jmp_addr_0x005b586b                          // 0x005b5800    7469
                         {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x005b5802    8b7e04
                         {disp8} fld        dword ptr [edi + 0x78]                        // 0x005b5805    d94778
                         add                edi, 0x78                                     // 0x005b5808    83c778
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b580b    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b5811    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b5817    e8e4bb1e00
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x005b581c    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b581f    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x7c], eax                   // 0x005b5825    8944247c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b5829    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b582f    e8ccbb1e00
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                   // 0x005b5834    8d4c247c
                         {disp32} mov       dword ptr [esp + 0x00000080], eax             // 0x005b5838    89842480000000
                         {disp32} mov       dword ptr [esp + 0x00000084], 0x00000000      // 0x005b583f    c784248400000000000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b584a    e841d82400
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x005b584f    d95f04
                         mov                edx, dword ptr [ebx]                          // 0x005b5852    8b13
                         {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x005b5854    8b7e04
                         mov.s              ecx, ebx                                      // 0x005b5857    8bcb
                         call               dword ptr [edx + 0x42c]                       // 0x005b5859    ff922c040000
                         {disp32} fiadd     dword ptr [data_bytes + 0x22a1a0]             // 0x005b585f    da05a001bf00
                         {disp8} fadd       dword ptr [edi + 0x7c]                        // 0x005b5865    d8477c
                         {disp8} fstp       dword ptr [edi + 0x7c]                        // 0x005b5868    d95f7c
_jmp_addr_0x005b586b:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b586b    8b4e04
                         {disp8} fld        dword ptr [ecx + 0x7c]                        // 0x005b586e    d9417c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57b64]             // 0x005b5871    d81d640b9000
                         fnstsw             ax                                            // 0x005b5877    dfe0
                         test               ah, 0x01                                      // 0x005b5879    f6c401
                         {disp8} je         _jmp_addr_0x005b58a2                          // 0x005b587c    7424
                         {disp32} fld       dword ptr [rdata_bytes + 0x57b64]             // 0x005b587e    d905640b9000
                         {disp8} fsub       dword ptr [ecx + 0x7c]                        // 0x005b5884    d8617c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b5887    d95c2410
                         call               _jmp_addr_0x0046c040                          // 0x005b588b    e8b067ebff
                         {disp8} fdivr      dword ptr [esp + 0x10]                        // 0x005b5890    d87c2410
                         fld1                                                             // 0x005b5894    d9e8
                         fpatan                                                           // 0x005b5896    d9f3
                         {disp32} fadd      qword ptr [rdata_bytes + 0x57b80]             // 0x005b5898    dc05800b9000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b589e    d95c2414
_jmp_addr_0x005b58a2:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b58a2    d9442414
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b58a6    8b4e04
                         fchs                                                             // 0x005b58a9    d9e0
                         {disp32} lea       edx, dword ptr [esp + 0x00000088]             // 0x005b58ab    8d942488000000
                         fld                st(0)                                         // 0x005b58b2    d9c0
                         push               edx                                           // 0x005b58b4    52
                         fcos                                                             // 0x005b58b5    d9ff
                         {disp8} fst        dword ptr [esp + 0x40]                        // 0x005b58b7    d9542440
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005b58bb    d95c2430
                         fsin                                                             // 0x005b58bf    d9fe
                         {disp8} fst        dword ptr [esp + 0x3c]                        // 0x005b58c1    d954243c
                         fchs                                                             // 0x005b58c5    d9e0
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005b58c7    d95c2434
                         {disp32} fld       dword ptr [ecx + 0x00000084]                  // 0x005b58cb    d98184000000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x005b58d1    d805a0368c00
                         fld                st(0)                                         // 0x005b58d7    d9c0
                         fcos                                                             // 0x005b58d9    d9ff
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b58db    d95c241c
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005b58df    8b44241c
                         fsin                                                             // 0x005b58e3    d9fe
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005b58e5    89442420
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x005b58e9    d9542418
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005b58ed    d90598a38a00
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b58f3    d9442420
                         fsub               st, st(1)                                     // 0x005b58f7    d8e1
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b58f9    d95c2420
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005b58fd    d90598a38a00
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x005b5903    d9542414
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x005b5907    d8442418
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005b590b    d95c2428
                         fld                st(0)                                         // 0x005b590f    d9c0
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b5911    d9442414
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b5915    d9442434
                         fmul               st, st(4)                                     // 0x005b5919    d8cc
                         fsubr              st, st(1)                                     // 0x005b591b    d8e9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b591d    d95c242c
                         fstp               st(0)                                         // 0x005b5921    ddd8
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b5923    d9442434
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b5927    d84c241c
                         fadd               st, st(1)                                     // 0x005b592b    d8c1
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005b592d    d95c2434
                         fstp               st(0)                                         // 0x005b5931    ddd8
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b5933    d95c2418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b5937    d9442414
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005b593b    d9442440
                         fmul               st, st(2)                                     // 0x005b593f    d8ca
                         fsubr              st, st(1)                                     // 0x005b5941    d8e9
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b5943    d95c2438
                         fstp               st(0)                                         // 0x005b5947    ddd8
                         fstp               st(0)                                         // 0x005b5949    ddd8
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005b594b    d9442440
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b594f    d84c241c
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x005b5953    d8442418
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x005b5957    d95c2440
                         call               _jmp_addr_0x0046d080                          // 0x005b595b    e82077ebff
                         {disp32} lea       edx, dword ptr [esp + 0x00000088]             // 0x005b5960    8d942488000000
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x005b5967    8d4c244c
                         call               _jmp_addr_0x005b5b90                          // 0x005b596b    e820020000
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b5970    d9442434
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b5974    d84c2454
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005b5978    d9442428
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b597c    d84c2450
                         faddp              st(1), st                                     // 0x005b5980    dec1
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x005b5982    d944244c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b5986    d84c241c
                         faddp              st(1), st                                     // 0x005b598a    dec1
                         {disp32} fstp      dword ptr [esp + 0x00000088]                  // 0x005b598c    d99c2488000000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b5993    d9442438
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b5997    d84c2454
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b599b    d944242c
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b599f    d84c2450
                         faddp              st(1), st                                     // 0x005b59a3    dec1
                         {disp32} fstp      dword ptr [esp + 0x0000008c]                  // 0x005b59a5    d99c248c000000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b59ac    d944243c
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b59b0    d84c2454
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005b59b4    d9442430
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b59b8    d84c2450
                         faddp              st(1), st                                     // 0x005b59bc    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b59be    d9442424
                         {disp8} fmul       dword ptr [esp + 0x4c]                        // 0x005b59c2    d84c244c
                         faddp              st(1), st                                     // 0x005b59c6    dec1
                         {disp32} fstp      dword ptr [esp + 0x00000090]                  // 0x005b59c8    d99c2490000000
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b59cf    8b4604
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b59d2    d9442434
                         add                eax, 0x78                                     // 0x005b59d6    83c078
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005b59d9    d84c2460
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005b59dd    d9442428
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b59e1    d84c245c
                         faddp              st(1), st                                     // 0x005b59e5    dec1
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b59e7    d9442458
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b59eb    d84c241c
                         faddp              st(1), st                                     // 0x005b59ef    dec1
                         {disp32} fstp      dword ptr [esp + 0x00000094]                  // 0x005b59f1    d99c2494000000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b59f8    d9442438
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005b59fc    d84c2460
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b5a00    d944242c
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b5a04    d84c245c
                         faddp              st(1), st                                     // 0x005b5a08    dec1
                         {disp32} fstp      dword ptr [esp + 0x00000098]                  // 0x005b5a0a    d99c2498000000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b5a11    d944243c
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005b5a15    d84c2460
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005b5a19    d9442430
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b5a1d    d84c245c
                         faddp              st(1), st                                     // 0x005b5a21    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b5a23    d9442424
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b5a27    d84c2458
                         faddp              st(1), st                                     // 0x005b5a2b    dec1
                         {disp32} fstp      dword ptr [esp + 0x0000009c]                  // 0x005b5a2d    d99c249c000000
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b5a34    d9442434
                         {disp8} fmul       dword ptr [esp + 0x6c]                        // 0x005b5a38    d84c246c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005b5a3c    d9442428
                         {disp8} fmul       dword ptr [esp + 0x68]                        // 0x005b5a40    d84c2468
                         faddp              st(1), st                                     // 0x005b5a44    dec1
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x005b5a46    d9442464
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b5a4a    d84c241c
                         faddp              st(1), st                                     // 0x005b5a4e    dec1
                         {disp32} fstp      dword ptr [esp + 0x000000a0]                  // 0x005b5a50    d99c24a0000000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b5a57    d9442438
                         {disp8} fmul       dword ptr [esp + 0x6c]                        // 0x005b5a5b    d84c246c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b5a5f    d944242c
                         {disp8} fmul       dword ptr [esp + 0x68]                        // 0x005b5a63    d84c2468
                         faddp              st(1), st                                     // 0x005b5a67    dec1
                         {disp32} fstp      dword ptr [esp + 0x000000a4]                  // 0x005b5a69    d99c24a4000000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b5a70    d944243c
                         {disp8} fmul       dword ptr [esp + 0x6c]                        // 0x005b5a74    d84c246c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005b5a78    d9442430
                         {disp8} fmul       dword ptr [esp + 0x68]                        // 0x005b5a7c    d84c2468
                         faddp              st(1), st                                     // 0x005b5a80    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b5a82    d9442424
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x005b5a86    d84c2464
                         faddp              st(1), st                                     // 0x005b5a8a    dec1
                         {disp32} fstp      dword ptr [esp + 0x000000a8]                  // 0x005b5a8c    d99c24a8000000
                         mov                ecx, dword ptr [eax]                          // 0x005b5a93    8b08
                         {disp32} mov       dword ptr [esp + 0x000000ac], ecx             // 0x005b5a95    898c24ac000000
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005b5a9c    8b5004
                         {disp32} mov       dword ptr [esp + 0x000000b0], edx             // 0x005b5a9f    899424b0000000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005b5aa6    8b4008
                         {disp32} mov       dword ptr [esp + 0x000000b4], eax             // 0x005b5aa9    898424b4000000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x005b5ab0    8b5500
                         mov.s              ecx, ebp                                      // 0x005b5ab3    8bcd
                         call               dword ptr [edx + 0x590]                       // 0x005b5ab5    ff9290050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b5abb    d95c2410
                         call               _jmp_addr_0x0046c040                          // 0x005b5abf    e87c65ebff
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b5ac4    d80db4a38a00
                         {disp8} fdivr      dword ptr [esp + 0x10]                        // 0x005b5aca    d87c2410
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b5ace    d90590a38a00
                         fcomp              st(1)                                         // 0x005b5ad4    d8d9
                         fnstsw             ax                                            // 0x005b5ad6    dfe0
                         test               ah, 0x01                                      // 0x005b5ad8    f6c401
                         {disp8} je         _jmp_addr_0x005b5ae9                          // 0x005b5adb    740c
                         fstp               st(0)                                         // 0x005b5add    ddd8
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f800000            // 0x005b5adf    c74424100000803f
                         {disp8} jmp        _jmp_addr_0x005b5aed                          // 0x005b5ae7    eb04
_jmp_addr_0x005b5ae9:    {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b5ae9    d95c2410
_jmp_addr_0x005b5aed:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b5aed    8b4e04
                         push               0x0                                           // 0x005b5af0    6a00
                         push               0x9                                           // 0x005b5af2    6a09
                         call               @GetAnim__9MorphableFll@16                    // 0x005b5af4    e8573b0600
                         {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x005b5af9    8b7e04
                         mov.s              ebx, eax                                      // 0x005b5afc    8bd8
                         mov                ecx, dword ptr [ebx]                          // 0x005b5afe    8b0b
                         {disp32} mov       eax, dword ptr [edi + 0x000047fc]             // 0x005b5b00    8b87fc470000
                         sar                ecx, 1                                        // 0x005b5b06    d1f9
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x005b5b08    894c2414
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x005b5b0c    db442414
                         push               0x1                                           // 0x005b5b10    6a01
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b5b12    d9442414
                         push               0x0                                           // 0x005b5b16    6a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b5b18    d80db4a38a00
                         push               eax                                           // 0x005b5b1e    50
                         fmulp              st(1), st                                     // 0x005b5b1f    dec9
                         call               _jmp_addr_0x007a1400                          // 0x005b5b21    e8dab81e00
                         {disp32} mov       edx, dword ptr [edi + 0x000047f8]             // 0x005b5b26    8b97f8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000098]             // 0x005b5b2c    8b8f98000000
                         push               eax                                           // 0x005b5b32    50
                         {disp32} mov       eax, dword ptr [edi + 0x000047f4]             // 0x005b5b33    8b87f4470000
                         push               edx                                           // 0x005b5b39    52
                         {disp32} mov       edx, dword ptr [edi + ecx * 0x4 + 0x000000b4] // 0x005b5b3a    8b948fb4000000
                         {disp32} mov       edi, dword ptr [esp + 0x000000d4]             // 0x005b5b41    8bbc24d4000000
                         push               eax                                           // 0x005b5b48    50
                         push               edx                                           // 0x005b5b49    52
                         push               edi                                           // 0x005b5b4a    57
                         mov.s              ecx, ebx                                      // 0x005b5b4b    8bcb
                         call               _jmp_addr_0x00860e00                          // 0x005b5b4d    e8aeb22a00
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x005b5b52    8b7604
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]             // 0x005b5b55    8b8e98000000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x000000b4] // 0x005b5b5b    8b948eb4000000
                         {disp32} lea       eax, dword ptr [esp + 0x00000088]             // 0x005b5b62    8d842488000000
                         push               eax                                           // 0x005b5b69    50
                         push               edx                                           // 0x005b5b6a    52
                         push               edi                                           // 0x005b5b6b    57
                         call               _jmp_addr_0x00839f10                          // 0x005b5b6c    e89f432800
                         add                esp, 0x0c                                     // 0x005b5b71    83c40c
                         pop                edi                                           // 0x005b5b74    5f
                         pop                esi                                           // 0x005b5b75    5e
                         pop                ebp                                           // 0x005b5b76    5d
                         pop                ebx                                           // 0x005b5b77    5b
                         add                esp, 0x000000a8                               // 0x005b5b78    81c4a8000000
                         ret                0x0008                                        // 0x005b5b7e    c20800
                         nop                                                              // 0x005b5b81    90
                         nop                                                              // 0x005b5b82    90
                         nop                                                              // 0x005b5b83    90
                         nop                                                              // 0x005b5b84    90
                         nop                                                              // 0x005b5b85    90
                         nop                                                              // 0x005b5b86    90
                         nop                                                              // 0x005b5b87    90
                         nop                                                              // 0x005b5b88    90
                         nop                                                              // 0x005b5b89    90
                         nop                                                              // 0x005b5b8a    90
                         nop                                                              // 0x005b5b8b    90
                         nop                                                              // 0x005b5b8c    90
                         nop                                                              // 0x005b5b8d    90
                         nop                                                              // 0x005b5b8e    90
                         nop                                                              // 0x005b5b8f    90
_jmp_addr_0x005b5b90:    mov                eax, dword ptr [edx]                          // 0x005b5b90    8b02
                         mov                dword ptr [ecx], eax                          // 0x005b5b92    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x005b5b94    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x005b5b97    894104
                         {disp8} mov        eax, dword ptr [edx + 0x08]                   // 0x005b5b9a    8b4208
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x005b5b9d    894108
                         {disp8} mov        eax, dword ptr [edx + 0x0c]                   // 0x005b5ba0    8b420c
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x005b5ba3    89410c
                         {disp8} mov        eax, dword ptr [edx + 0x10]                   // 0x005b5ba6    8b4210
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x005b5ba9    894110
                         {disp8} mov        eax, dword ptr [edx + 0x14]                   // 0x005b5bac    8b4214
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x005b5baf    894114
                         {disp8} mov        eax, dword ptr [edx + 0x18]                   // 0x005b5bb2    8b4218
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x005b5bb5    894118
                         {disp8} mov        eax, dword ptr [edx + 0x1c]                   // 0x005b5bb8    8b421c
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x005b5bbb    89411c
                         {disp8} mov        edx, dword ptr [edx + 0x20]                   // 0x005b5bbe    8b5220
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x005b5bc1    895120
                         ret                                                              // 0x005b5bc4    c3
                         nop                                                              // 0x005b5bc5    90
                         nop                                                              // 0x005b5bc6    90
                         nop                                                              // 0x005b5bc7    90
                         nop                                                              // 0x005b5bc8    90
                         nop                                                              // 0x005b5bc9    90
                         nop                                                              // 0x005b5bca    90
                         nop                                                              // 0x005b5bcb    90
                         nop                                                              // 0x005b5bcc    90
                         nop                                                              // 0x005b5bcd    90
                         nop                                                              // 0x005b5bce    90
                         nop                                                              // 0x005b5bcf    90
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x005b5bd0    8b4104
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]             // 0x005b5bd3    8b8804490000
                         mov                edx, dword ptr [ecx]                          // 0x005b5bd9    8b11
                         push               0x0                                           // 0x005b5bdb    6a00
                         call               dword ptr [edx + 0x614]                       // 0x005b5bdd    ff9214060000
                         ret                                                              // 0x005b5be3    c3
                         nop                                                              // 0x005b5be4    90
                         nop                                                              // 0x005b5be5    90
                         nop                                                              // 0x005b5be6    90
                         nop                                                              // 0x005b5be7    90
                         nop                                                              // 0x005b5be8    90
                         nop                                                              // 0x005b5be9    90
                         nop                                                              // 0x005b5bea    90
                         nop                                                              // 0x005b5beb    90
                         nop                                                              // 0x005b5bec    90
                         nop                                                              // 0x005b5bed    90
                         nop                                                              // 0x005b5bee    90
                         nop                                                              // 0x005b5bef    90
_globl_ct_0x005b5bf0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005b5bf0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005b5bf6    b001
                         test               al, cl                                        // 0x005b5bf8    84c8
                         {disp8} jne        _jmp_addr_0x005b5c04                          // 0x005b5bfa    7508
                         or.s               cl, al                                        // 0x005b5bfc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005b5bfe    880d34c9fa00
_jmp_addr_0x005b5c04:    {disp32} jmp       _jmp_addr_0x005b5c10                          // 0x005b5c04    e907000000
                         nop                                                              // 0x005b5c09    90
                         nop                                                              // 0x005b5c0a    90
                         nop                                                              // 0x005b5c0b    90
                         nop                                                              // 0x005b5c0c    90
                         nop                                                              // 0x005b5c0d    90
                         nop                                                              // 0x005b5c0e    90
                         nop                                                              // 0x005b5c0f    90
_jmp_addr_0x005b5c10:    push               0x00407870                                    // 0x005b5c10    6870784000
                         call               _atexit                                       // 0x005b5c15    e877fb2000
                         pop                ecx                                           // 0x005b5c1a    59
                         ret                                                              // 0x005b5c1b    c3
                         nop                                                              // 0x005b5c1c    90
                         nop                                                              // 0x005b5c1d    90
                         nop                                                              // 0x005b5c1e    90
                         nop                                                              // 0x005b5c1f    90
_globl_ct_0x005b5c20:    {disp32} jmp       _jmp_addr_0x005b5c30                          // 0x005b5c20    e90b000000
                         nop                                                              // 0x005b5c25    90
                         nop                                                              // 0x005b5c26    90
                         nop                                                              // 0x005b5c27    90
                         nop                                                              // 0x005b5c28    90
                         nop                                                              // 0x005b5c29    90
                         nop                                                              // 0x005b5c2a    90
                         nop                                                              // 0x005b5c2b    90
                         nop                                                              // 0x005b5c2c    90
                         nop                                                              // 0x005b5c2d    90
                         nop                                                              // 0x005b5c2e    90
                         nop                                                              // 0x005b5c2f    90
_jmp_addr_0x005b5c30:    {disp32} fld       dword ptr [rdata_bytes + 0x57b98]             // 0x005b5c30    d905980b9000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57b94]             // 0x005b5c36    d80d940b9000
                         {disp32} fstp      dword ptr [data_bytes + 0x34e044]             // 0x005b5c3c    d91d4440d100
                         ret                                                              // 0x005b5c42    c3
                         nop                                                              // 0x005b5c43    90
                         nop                                                              // 0x005b5c44    90
                         nop                                                              // 0x005b5c45    90
                         nop                                                              // 0x005b5c46    90
                         nop                                                              // 0x005b5c47    90
                         nop                                                              // 0x005b5c48    90
                         nop                                                              // 0x005b5c49    90
                         nop                                                              // 0x005b5c4a    90
                         nop                                                              // 0x005b5c4b    90
                         nop                                                              // 0x005b5c4c    90
                         nop                                                              // 0x005b5c4d    90
                         nop                                                              // 0x005b5c4e    90
                         nop                                                              // 0x005b5c4f    90
_globl_ct_0x005b5c50:    {disp32} jmp       _jmp_addr_0x005b5c60                          // 0x005b5c50    e90b000000
                         nop                                                              // 0x005b5c55    90
                         nop                                                              // 0x005b5c56    90
                         nop                                                              // 0x005b5c57    90
                         nop                                                              // 0x005b5c58    90
                         nop                                                              // 0x005b5c59    90
                         nop                                                              // 0x005b5c5a    90
                         nop                                                              // 0x005b5c5b    90
                         nop                                                              // 0x005b5c5c    90
                         nop                                                              // 0x005b5c5d    90
                         nop                                                              // 0x005b5c5e    90
                         nop                                                              // 0x005b5c5f    90
_jmp_addr_0x005b5c60:    {disp32} mov       dword ptr [data_bytes + 0x34e040], 0xffffffff // 0x005b5c60    c7054040d100ffffffff
                         ret                                                              // 0x005b5c6a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005b5c6b    e889bbe4ff
@__ct__15HandStateNormalFP5CHand@12:    mov.s              eax, ecx                                      // 0x005b5c70    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005b5c72    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005b5c76    894804
                         mov                dword ptr [eax], 0x00900ba0                   // 0x005b5c79    c700a00b9000
                         {disp8} mov        dword ptr [eax + 0x08], 0x00000000            // 0x005b5c7f    c7400800000000
                         ret                0x0004                                        // 0x005b5c86    c20400
                         nop                                                              // 0x005b5c89    90
                         nop                                                              // 0x005b5c8a    90
                         nop                                                              // 0x005b5c8b    90
                         nop                                                              // 0x005b5c8c    90
                         nop                                                              // 0x005b5c8d    90
                         nop                                                              // 0x005b5c8e    90
                         nop                                                              // 0x005b5c8f    90
                         mov                al, 0x01                                      // 0x005b5c90    b001
                         ret                                                              // 0x005b5c92    c3
                         nop                                                              // 0x005b5c93    90
                         nop                                                              // 0x005b5c94    90
                         nop                                                              // 0x005b5c95    90
                         nop                                                              // 0x005b5c96    90
                         nop                                                              // 0x005b5c97    90
                         nop                                                              // 0x005b5c98    90
                         nop                                                              // 0x005b5c99    90
                         nop                                                              // 0x005b5c9a    90
                         nop                                                              // 0x005b5c9b    90
                         nop                                                              // 0x005b5c9c    90
                         nop                                                              // 0x005b5c9d    90
                         nop                                                              // 0x005b5c9e    90
                         nop                                                              // 0x005b5c9f    90
_globl_ct_0x005b5ca0:    {disp32} jmp       _jmp_addr_0x005b5cb0                          // 0x005b5ca0    e90b000000
                         nop                                                              // 0x005b5ca5    90
                         nop                                                              // 0x005b5ca6    90
                         nop                                                              // 0x005b5ca7    90
                         nop                                                              // 0x005b5ca8    90
                         nop                                                              // 0x005b5ca9    90
                         nop                                                              // 0x005b5caa    90
                         nop                                                              // 0x005b5cab    90
                         nop                                                              // 0x005b5cac    90
                         nop                                                              // 0x005b5cad    90
                         nop                                                              // 0x005b5cae    90
                         nop                                                              // 0x005b5caf    90
_jmp_addr_0x005b5cb0:    ret                                                              // 0x005b5cb0    c3
                         nop                                                              // 0x005b5cb1    90
                         nop                                                              // 0x005b5cb2    90
                         nop                                                              // 0x005b5cb3    90
                         nop                                                              // 0x005b5cb4    90
                         nop                                                              // 0x005b5cb5    90
                         nop                                                              // 0x005b5cb6    90
                         nop                                                              // 0x005b5cb7    90
                         nop                                                              // 0x005b5cb8    90
                         nop                                                              // 0x005b5cb9    90
                         nop                                                              // 0x005b5cba    90
                         nop                                                              // 0x005b5cbb    90
                         nop                                                              // 0x005b5cbc    90
                         nop                                                              // 0x005b5cbd    90
                         nop                                                              // 0x005b5cbe    90
                         nop                                                              // 0x005b5cbf    90
_globl_ct_0x005b5cc0:    {disp32} jmp       _jmp_addr_0x005b5cd0                          // 0x005b5cc0    e90b000000
                         nop                                                              // 0x005b5cc5    90
                         nop                                                              // 0x005b5cc6    90
                         nop                                                              // 0x005b5cc7    90
                         nop                                                              // 0x005b5cc8    90
                         nop                                                              // 0x005b5cc9    90
                         nop                                                              // 0x005b5cca    90
                         nop                                                              // 0x005b5ccb    90
                         nop                                                              // 0x005b5ccc    90
                         nop                                                              // 0x005b5ccd    90
                         nop                                                              // 0x005b5cce    90
                         nop                                                              // 0x005b5ccf    90
_jmp_addr_0x005b5cd0:    ret                                                              // 0x005b5cd0    c3
                         nop                                                              // 0x005b5cd1    90
                         nop                                                              // 0x005b5cd2    90
                         nop                                                              // 0x005b5cd3    90
                         nop                                                              // 0x005b5cd4    90
                         nop                                                              // 0x005b5cd5    90
                         nop                                                              // 0x005b5cd6    90
                         nop                                                              // 0x005b5cd7    90
                         nop                                                              // 0x005b5cd8    90
                         nop                                                              // 0x005b5cd9    90
                         nop                                                              // 0x005b5cda    90
                         nop                                                              // 0x005b5cdb    90
                         nop                                                              // 0x005b5cdc    90
                         nop                                                              // 0x005b5cdd    90
                         nop                                                              // 0x005b5cde    90
                         nop                                                              // 0x005b5cdf    90
_globl_ct_0x005b5ce0:    {disp32} jmp       _jmp_addr_0x005b5cf0                          // 0x005b5ce0    e90b000000
                         nop                                                              // 0x005b5ce5    90
                         nop                                                              // 0x005b5ce6    90
                         nop                                                              // 0x005b5ce7    90
                         nop                                                              // 0x005b5ce8    90
                         nop                                                              // 0x005b5ce9    90
                         nop                                                              // 0x005b5cea    90
                         nop                                                              // 0x005b5ceb    90
                         nop                                                              // 0x005b5cec    90
                         nop                                                              // 0x005b5ced    90
                         nop                                                              // 0x005b5cee    90
                         nop                                                              // 0x005b5cef    90
_jmp_addr_0x005b5cf0:    ret                                                              // 0x005b5cf0    c3
                         nop                                                              // 0x005b5cf1    90
                         nop                                                              // 0x005b5cf2    90
                         nop                                                              // 0x005b5cf3    90
                         nop                                                              // 0x005b5cf4    90
                         nop                                                              // 0x005b5cf5    90
                         nop                                                              // 0x005b5cf6    90
                         nop                                                              // 0x005b5cf7    90
                         nop                                                              // 0x005b5cf8    90
                         nop                                                              // 0x005b5cf9    90
                         nop                                                              // 0x005b5cfa    90
                         nop                                                              // 0x005b5cfb    90
                         nop                                                              // 0x005b5cfc    90
                         nop                                                              // 0x005b5cfd    90
                         nop                                                              // 0x005b5cfe    90
                         nop                                                              // 0x005b5cff    90
?Enter@HandStateNormal@@UAEXXZ:
                         xor.s              eax, eax                                      // 0x005b5d00    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x34e04c], eax        // 0x005b5d02    a34c40d100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfb4], eax        // 0x005b5d07    a3b43fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfb0], eax        // 0x005b5d0c    a3b03fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfcc], eax        // 0x005b5d11    a3cc3fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfc8], eax        // 0x005b5d16    a3c83fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfc4], eax        // 0x005b5d1b    a3c43fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfdc], eax        // 0x005b5d20    a3dc3fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfd8], eax        // 0x005b5d25    a3d83fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfc0], eax        // 0x005b5d2a    a3c03fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfd4], eax        // 0x005b5d2f    a3d43fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfbc], eax        // 0x005b5d34    a3bc3fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfd0], eax        // 0x005b5d39    a3d03fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfb8], eax        // 0x005b5d3e    a3b83fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfe4], 0x3f800000 // 0x005b5d43    c705e43fd1000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x34dfe0], 0x3f800000 // 0x005b5d4d    c705e03fd1000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x34dffc], 0x3f800000 // 0x005b5d57    c705fc3fd1000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x34dff8], eax        // 0x005b5d61    a3f83fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dff4], eax        // 0x005b5d66    a3f43fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34e00c], eax        // 0x005b5d6b    a30c40d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e008], eax        // 0x005b5d70    a30840d100
                         {disp32} mov       dword ptr [data_bytes + 0x34dff0], eax        // 0x005b5d75    a3f03fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34e004], eax        // 0x005b5d7a    a30440d100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfec], eax        // 0x005b5d7f    a3ec3fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34e000], eax        // 0x005b5d84    a30040d100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfe8], eax        // 0x005b5d89    a3e83fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34e014], eax        // 0x005b5d8e    a31440d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e010], eax        // 0x005b5d93    a31040d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e02c], eax        // 0x005b5d98    a32c40d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e028], eax        // 0x005b5d9d    a32840d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e024], eax        // 0x005b5da2    a32440d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e03c], eax        // 0x005b5da7    a33c40d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e038], eax        // 0x005b5dac    a33840d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e020], eax        // 0x005b5db1    a32040d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e034], eax        // 0x005b5db6    a33440d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e01c], eax        // 0x005b5dbb    a31c40d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e030], eax        // 0x005b5dc0    a33040d100
                         {disp32} mov       dword ptr [data_bytes + 0x34e018], eax        // 0x005b5dc5    a31840d100
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x005b5dca    894108
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x005b5dcd    8b4104
                         {disp8} mov        dword ptr [ecx + 0x0c], 0xffffffff            // 0x005b5dd0    c7410cffffffff
                         {disp32} fld       dword ptr [eax + 0x00004854]                  // 0x005b5dd7    d98054480000
                         {disp32} fst       dword ptr [data_bytes + 0x34df84]             // 0x005b5ddd    d915843fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df98], 0x00000000 // 0x005b5de3    c705983fd10000000000
                         {disp32} fst       dword ptr [data_bytes + 0x34df80]             // 0x005b5ded    d915803fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df94], 0x00000000 // 0x005b5df3    c705943fd10000000000
                         {disp32} fstp      dword ptr [data_bytes + 0x34df9c]             // 0x005b5dfd    d91d9c3fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34dfac], 0x00000000 // 0x005b5e03    c705ac3fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa8], 0x00000000 // 0x005b5e0d    c705a83fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df90], 0x00000000 // 0x005b5e17    c705903fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa4], 0x00000000 // 0x005b5e21    c705a43fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df8c], 0x00000000 // 0x005b5e2b    c7058c3fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa0], 0x00000000 // 0x005b5e35    c705a03fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df88], 0x00000000 // 0x005b5e3f    c705883fd10000000000
                         ret                                                              // 0x005b5e49    c3
                         call               dword ptr [rdata_bytes + 0x3bc]               // 0x005b5e4a    ff15bc938a00
_globl_ct_0x005b5e50:    {disp32} jmp       _jmp_addr_0x005b5e60                          // 0x005b5e50    e90b000000
                         nop                                                              // 0x005b5e55    90
                         nop                                                              // 0x005b5e56    90
                         nop                                                              // 0x005b5e57    90
                         nop                                                              // 0x005b5e58    90
                         nop                                                              // 0x005b5e59    90
                         nop                                                              // 0x005b5e5a    90
                         nop                                                              // 0x005b5e5b    90
                         nop                                                              // 0x005b5e5c    90
                         nop                                                              // 0x005b5e5d    90
                         nop                                                              // 0x005b5e5e    90
                         nop                                                              // 0x005b5e5f    90
_jmp_addr_0x005b5e60:    ret                                                              // 0x005b5e60    c3
                         nop                                                              // 0x005b5e61    90
                         nop                                                              // 0x005b5e62    90
                         nop                                                              // 0x005b5e63    90
                         nop                                                              // 0x005b5e64    90
                         nop                                                              // 0x005b5e65    90
                         nop                                                              // 0x005b5e66    90
                         nop                                                              // 0x005b5e67    90
                         nop                                                              // 0x005b5e68    90
                         nop                                                              // 0x005b5e69    90
                         nop                                                              // 0x005b5e6a    90
                         nop                                                              // 0x005b5e6b    90
                         nop                                                              // 0x005b5e6c    90
                         nop                                                              // 0x005b5e6d    90
                         nop                                                              // 0x005b5e6e    90
                         nop                                                              // 0x005b5e6f    90
_jmp_addr_0x005b5e70:    {disp32} mov       eax, dword ptr [data_bytes + 0x22a1cc]        // 0x005b5e70    a1cc01bf00
                         sub                esp, 0x000000ac                               // 0x005b5e75    81ecac000000
                         test               eax, eax                                      // 0x005b5e7b    85c0
                         {disp32} je        _jmp_addr_0x005b5f2c                          // 0x005b5e7d    0f84a9000000
                         push               0x0                                           // 0x005b5e83    6a00
                         mov                ecx, 0x00d13fb0                               // 0x005b5e85    b9b03fd100
                         call               @SetPosition__6ZoomerFf@12                    // 0x005b5e8a    e831bce8ff
                         push               0x3f800000                                    // 0x005b5e8f    680000803f
                         mov                ecx, 0x00d13fe0                               // 0x005b5e94    b9e03fd100
                         call               @SetPosition__6ZoomerFf@12                    // 0x005b5e99    e822bce8ff
                         push               0x0                                           // 0x005b5e9e    6a00
                         mov                ecx, 0x00d14010                               // 0x005b5ea0    b91040d100
                         call               @SetPosition__6ZoomerFf@12                    // 0x005b5ea5    e816bce8ff
                         {disp32} mov       dword ptr [data_bytes + 0x34df84], 0x00000000 // 0x005b5eaa    c705843fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df80], 0x00000000 // 0x005b5eb4    c705803fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df9c], 0x00000000 // 0x005b5ebe    c7059c3fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df98], 0x00000000 // 0x005b5ec8    c705983fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df94], 0x00000000 // 0x005b5ed2    c705943fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfac], 0x00000000 // 0x005b5edc    c705ac3fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa8], 0x00000000 // 0x005b5ee6    c705a83fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df90], 0x00000000 // 0x005b5ef0    c705903fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa4], 0x00000000 // 0x005b5efa    c705a43fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df8c], 0x00000000 // 0x005b5f04    c7058c3fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa0], 0x00000000 // 0x005b5f0e    c705a03fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df88], 0x00000000 // 0x005b5f18    c705883fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x22a1cc], 0x00000000 // 0x005b5f22    c705cc01bf0000000000
_jmp_addr_0x005b5f2c:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005b5f2c    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005b5f32    e84962f9ff
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005b5f37    8b4858
                         test               ecx, ecx                                      // 0x005b5f3a    85c9
                         {disp8} jge        _jmp_addr_0x005b5f42                          // 0x005b5f3c    7d04
                         xor.s              eax, eax                                      // 0x005b5f3e    33c0
                         {disp8} jmp        _jmp_addr_0x005b5f46                          // 0x005b5f40    eb04
_jmp_addr_0x005b5f42:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]       // 0x005b5f42    8b448828
_jmp_addr_0x005b5f46:    push               0x0                                           // 0x005b5f46    6a00
                         push               0x009cd3b0                                    // 0x005b5f48    68b0d39c00
                         push               0x009cd390                                    // 0x005b5f4d    6890d39c00
                         push               0x0                                           // 0x005b5f52    6a00
                         push               eax                                           // 0x005b5f54    50
                         call               ___RTDynamicCast                              // 0x005b5f55    e8bffa2000
                         add                esp, 0x14                                     // 0x005b5f5a    83c414
                         test               eax, eax                                      // 0x005b5f5d    85c0
                         {disp8} je         _jmp_addr_0x005b5f6d                          // 0x005b5f5f    740c
                         {disp8} mov        ecx, dword ptr [eax + 0x44]                   // 0x005b5f61    8b4844
                         test               ecx, ecx                                      // 0x005b5f64    85c9
                         {disp8} mov        byte ptr [esp + 0x3e], 0x01                   // 0x005b5f66    c644243e01
                         {disp8} jne        _jmp_addr_0x005b5f72                          // 0x005b5f6b    7505
_jmp_addr_0x005b5f6d:    {disp8} mov        byte ptr [esp + 0x3e], 0x00                   // 0x005b5f6d    c644243e00
_jmp_addr_0x005b5f72:    push               ebx                                           // 0x005b5f72    53
                         push               ebp                                           // 0x005b5f73    55
                         {disp32} mov       ebp, dword ptr [esp + 0x000000b8]             // 0x005b5f74    8bac24b8000000
                         push               esi                                           // 0x005b5f7b    56
                         push               edi                                           // 0x005b5f7c    57
                         mov.s              ecx, ebp                                      // 0x005b5f7d    8bcd
                         call               _jmp_addr_0x0046e4b0                          // 0x005b5f7f    e82c85ebff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b5f84    8b0d5c19d000
                         test               eax, eax                                      // 0x005b5f8a    85c0
                         setne              byte ptr [esp + 0x7b]                         // 0x005b5f8c    0f9544247b
                         {disp8} mov        byte ptr [esp + 0x4f], 0x00                   // 0x005b5f91    c644244f00
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005b5f96    e8e561f9ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdb8]        // 0x005b5f9b    a1b81dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdbc]        // 0x005b5fa0    8b0dbc1dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc0]        // 0x005b5fa6    8b15c01dea00
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x005b5fac    89442460
                         {disp32} mov       eax, dword ptr [esp + 0x000000e0]             // 0x005b5fb0    8b8424e0000000
                         and                eax, 0x000000ff                               // 0x005b5fb7    25ff000000
                         {disp8} mov        dword ptr [esp + 0x64], ecx                   // 0x005b5fbc    894c2464
                         push               eax                                           // 0x005b5fc0    50
                         mov.s              ecx, ebp                                      // 0x005b5fc1    8bcd
                         {disp8} mov        dword ptr [esp + 0x6c], edx                   // 0x005b5fc3    8954246c
                         call               _jmp_addr_0x0046df60                          // 0x005b5fc7    e8947febff
                         {disp32} fstp      dword ptr [esp + 0x00000084]                  // 0x005b5fcc    d99c2484000000
                         {disp32} mov       esi, dword ptr [esp + 0x00000084]             // 0x005b5fd3    8bb42484000000
                         push               esi                                           // 0x005b5fda    56
                         mov.s              ecx, ebp                                      // 0x005b5fdb    8bcd
                         call               _jmp_addr_0x0046c0d0                          // 0x005b5fdd    e8ee60ebff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34e04c]        // 0x005b5fe2    a14c40d100
                         test               eax, eax                                      // 0x005b5fe7    85c0
                         {disp8} je         _jmp_addr_0x005b600a                          // 0x005b5fe9    741f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34df70]        // 0x005b5feb    8b0d703fd100
                         {disp32} mov       edx, dword ptr [data_bytes + 0x34df74]        // 0x005b5ff1    8b15743fd100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34df78]        // 0x005b5ff7    a1783fd100
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x005b5ffc    894c243c
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x005b6000    89542440
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x005b6004    89442444
                         {disp8} jmp        _jmp_addr_0x005b601a                          // 0x005b6008    eb10
_jmp_addr_0x005b600a:    {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x005b600a    8d54243c
                         push               esi                                           // 0x005b600e    56
                         {disp32} lea       ecx, dword ptr [ebp + 0x0000485c]             // 0x005b600f    8d8d5c480000
                         call               _jmp_addr_0x0074caf0                          // 0x005b6015    e8d66a1900
_jmp_addr_0x005b601a:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005b601a    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b6020    e82bf8f9ff
                         mov.s              ebx, eax                                      // 0x005b6025    8bd8
                         {disp32} mov       eax, dword ptr [ebx + 0x000003d8]             // 0x005b6027    8b83d8030000
                         test               eax, eax                                      // 0x005b602d    85c0
                         {disp32} mov       ecx, dword ptr [ebx + 0x000003d0]             // 0x005b602f    8b8bd0030000
                         {disp32} mov       edi, dword ptr [ebx + 0x000003c8]             // 0x005b6035    8bbbc8030000
                         {disp32} mov       dword ptr [esp + 0x00000080], ebx             // 0x005b603b    899c2480000000
                         {disp32} mov       dword ptr [esp + 0x00000088], ecx             // 0x005b6042    898c2488000000
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005b6049    89442428
                         {disp8} jne        _jmp_addr_0x005b606b                          // 0x005b604d    751c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b604f    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b6055    e8f6f7f9ff
                         cmp                dword ptr [eax + 0x44], 0x15                  // 0x005b605a    83784415
                         {disp8} jne        _jmp_addr_0x005b606b                          // 0x005b605e    750b
                         mov                esi, 0x00000001                               // 0x005b6060    be01000000
                         {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x005b6065    89742428
                         {disp8} jmp        _jmp_addr_0x005b6070                          // 0x005b6069    eb05
_jmp_addr_0x005b606b:    mov                esi, 0x00000001                               // 0x005b606b    be01000000
_jmp_addr_0x005b6070:    {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x005b6070    8b542428
                         {disp32} mov       ecx, dword ptr [esp + 0x000000d8]             // 0x005b6074    8b8c24d8000000
                         xor.s              eax, eax                                      // 0x005b607b    33c0
                         neg                edx                                           // 0x005b607d    f7da
                         sbb.s              edx, edx                                      // 0x005b607f    1bd2
                         and                edx, 0x0f                                     // 0x005b6081    83e20f
                         cmp.s              edi, eax                                      // 0x005b6084    3bf8
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x005b6086    89442450
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x005b608a    8944242c
                         mov                dword ptr [ecx], edx                          // 0x005b608e    8911
                         {disp8} mov        dword ptr [esp + 0x7c], eax                   // 0x005b6090    8944247c
                         {disp8} je         _jmp_addr_0x005b60b1                          // 0x005b6094    741b
                         push               eax                                           // 0x005b6096    50
                         push               0x00bf0200                                    // 0x005b6097    680002bf00
                         push               0x009c7f50                                    // 0x005b609c    68507f9c00
                         push               eax                                           // 0x005b60a1    50
                         push               edi                                           // 0x005b60a2    57
                         call               ___RTDynamicCast                              // 0x005b60a3    e871f92000
                         add                esp, 0x14                                     // 0x005b60a8    83c414
                         test               eax, eax                                      // 0x005b60ab    85c0
                         {disp8} je         _jmp_addr_0x005b60b1                          // 0x005b60ad    7402
                         xor.s              edi, edi                                      // 0x005b60af    33ff
_jmp_addr_0x005b60b1:    cmp                edi, dword ptr [ebp + 0x00004904]             // 0x005b60b1    3bbd04490000
                         {disp8} jne        _jmp_addr_0x005b60f3                          // 0x005b60b7    753a
                         xor.s              edi, edi                                      // 0x005b60b9    33ff
_jmp_addr_0x005b60bb:    {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x005b60bb    8b842488000000
                         test               eax, eax                                      // 0x005b60c2    85c0
                         {disp32} jne       _jmp_addr_0x005b6aeb                          // 0x005b60c4    0f85210a0000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005b60ca    8b442428
                         test               eax, eax                                      // 0x005b60ce    85c0
                         {disp32} jne       _jmp_addr_0x005b6aeb                          // 0x005b60d0    0f85150a0000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b60d6    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005b60dc    e89f60f9ff
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005b60e1    8b4858
                         test               ecx, ecx                                      // 0x005b60e4    85c9
                         {disp32} jge       _jmp_addr_0x005b6866                          // 0x005b60e6    0f8d7a070000
                         xor.s              eax, eax                                      // 0x005b60ec    33c0
                         {disp32} jmp       _jmp_addr_0x005b686a                          // 0x005b60ee    e977070000
_jmp_addr_0x005b60f3:    test               edi, edi                                      // 0x005b60f3    85ff
                         {disp8} je         _jmp_addr_0x005b60bb                          // 0x005b60f5    74c4
                         {disp8} mov        eax, dword ptr [edi + 0x40]                   // 0x005b60f7    8b4740
                         test               eax, eax                                      // 0x005b60fa    85c0
                         {disp8} je         _jmp_addr_0x005b60bb                          // 0x005b60fc    74bd
                         {disp32} mov       eax, dword ptr [ebx + 0x000003ac]             // 0x005b60fe    8b83ac030000
                         xor.s              edx, edx                                      // 0x005b6104    33d2
                         cmp                eax, 0x09                                     // 0x005b6106    83f809
                         {disp32} mov       eax, dword ptr [esp + 0x000000d8]             // 0x005b6109    8b8424d8000000
                         setne              dl                                            // 0x005b6110    0f95c2
                         push               0x0                                           // 0x005b6113    6a00
                         push               0x009c8de8                                    // 0x005b6115    68e88d9c00
                         push               0x009c7f50                                    // 0x005b611a    68507f9c00
                         push               0x0                                           // 0x005b611f    6a00
                         push               edi                                           // 0x005b6121    57
                         dec                edx                                           // 0x005b6122    4a
                         and                edx, 0xfffffff4                               // 0x005b6123    83e2f4
                         add                edx, 0x18                                     // 0x005b6126    83c218
                         mov                dword ptr [eax], edx                          // 0x005b6129    8910
                         call               ___RTDynamicCast                              // 0x005b612b    e8e9f82000
                         add                esp, 0x14                                     // 0x005b6130    83c414
                         test               eax, eax                                      // 0x005b6133    85c0
                         {disp32} je        _jmp_addr_0x005b61ee                          // 0x005b6135    0f84b3000000
                         push               0x0                                           // 0x005b613b    6a00
                         push               0x009c8060                                    // 0x005b613d    6860809c00
                         push               0x009c7f50                                    // 0x005b6142    68507f9c00
                         push               0x0                                           // 0x005b6147    6a00
                         push               edi                                           // 0x005b6149    57
                         call               ___RTDynamicCast                              // 0x005b614a    e8caf82000
                         mov.s              esi, eax                                      // 0x005b614f    8bf0
                         add                esp, 0x14                                     // 0x005b6151    83c414
                         test               esi, esi                                      // 0x005b6154    85f6
                         {disp32} je        _jmp_addr_0x005b61de                          // 0x005b6156    0f8482000000
                         {disp32} mov       edx, dword ptr [esp + 0x000000c0]             // 0x005b615c    8b9424c0000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005b6163    8b8e60010000
                         {disp32} mov       eax, dword ptr [edx + 0x00004904]             // 0x005b6169    8b8204490000
                         test               eax, eax                                      // 0x005b616f    85c0
                         {disp8} mov        ebp, dword ptr [ecx + 0x58]                   // 0x005b6171    8b6958
                         {disp32} mov       ebx, dword ptr [ebp + 0x000047f0]             // 0x005b6174    8b9df0470000
                         {disp8} mov        byte ptr [esp + 0x4f], 0x01                   // 0x005b617a    c644244f01
                         {disp32} je        _jmp_addr_0x005b622a                          // 0x005b617f    0f84a5000000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000080]             // 0x005b6185    8b8c2480000000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0000039c]             // 0x005b618c    8b899c030000
                         mov                edx, dword ptr [esi]                          // 0x005b6192    8b16
                         push               eax                                           // 0x005b6194    50
                         push               ecx                                           // 0x005b6195    51
                         mov.s              ecx, esi                                      // 0x005b6196    8bce
                         call               dword ptr [edx + 0x748]                       // 0x005b6198    ff9248070000
                         cmp                eax, 0x01                                     // 0x005b619e    83f801
                         {disp32} jne       _jmp_addr_0x005b622a                          // 0x005b61a1    0f8583000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000c0]             // 0x005b61a7    8b8424c0000000
                         cmp                dword ptr [eax + 0x000049b4], esi             // 0x005b61ae    39b0b4490000
                         {disp8} je         _jmp_addr_0x005b61d2                          // 0x005b61b4    741c
                         mov.s              ecx, eax                                      // 0x005b61b6    8bc8
                         {disp32} mov       dword ptr [ecx + 0x000049b4], esi             // 0x005b61b8    89b1b4490000
                         mov.s              ecx, esi                                      // 0x005b61be    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x005b61c0    e88b16ecff
                         {disp32} mov       edx, dword ptr [esp + 0x000000c0]             // 0x005b61c5    8b9424c0000000
                         {disp32} mov       dword ptr [edx + 0x000049b8], eax             // 0x005b61cc    8982b8490000
_jmp_addr_0x005b61d2:    {disp32} mov       dword ptr [data_bytes + 0x34df3c], 0x0000044c // 0x005b61d2    c7053c3fd1004c040000
                         {disp8} jmp        _jmp_addr_0x005b622a                          // 0x005b61dc    eb4c
_jmp_addr_0x005b61de:    {disp8} mov        ebx, dword ptr [edi + 0x40]                   // 0x005b61de    8b5f40
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000001            // 0x005b61e1    c744242c01000000
                         add                ebx, 0x14                                     // 0x005b61e9    83c314
                         {disp8} jmp        _jmp_addr_0x005b6223                          // 0x005b61ec    eb35
_jmp_addr_0x005b61ee:    {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x005b61ee    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x005b61f1    8b01
                         {disp8} lea        ebx, dword ptr [ecx + 0x14]                   // 0x005b61f3    8d5914
                         call               dword ptr [eax + 0x1ac]                       // 0x005b61f6    ff90ac010000
                         test               eax, eax                                      // 0x005b61fc    85c0
                         {disp8} je         _jmp_addr_0x005b6223                          // 0x005b61fe    7423
                         push               0x0                                           // 0x005b6200    6a00
                         push               0x009c9560                                    // 0x005b6202    6860959c00
                         push               0x009c7f50                                    // 0x005b6207    68507f9c00
                         push               0x0                                           // 0x005b620c    6a00
                         push               edi                                           // 0x005b620e    57
                         call               ___RTDynamicCast                              // 0x005b620f    e805f82000
                         add                esp, 0x14                                     // 0x005b6214    83c414
                         test               eax, eax                                      // 0x005b6217    85c0
                         {disp8} jne        _jmp_addr_0x005b6223                          // 0x005b6219    7508
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000001            // 0x005b621b    c744242c01000000
_jmp_addr_0x005b6223:    {disp32} mov       ebp, dword ptr [esp + 0x00000084]             // 0x005b6223    8bac2484000000
_jmp_addr_0x005b622a:    push               0x0                                           // 0x005b622a    6a00
                         push               0x00beceb0                                    // 0x005b622c    68b0cebe00
                         push               0x009c7f50                                    // 0x005b6231    68507f9c00
                         push               0x0                                           // 0x005b6236    6a00
                         push               edi                                           // 0x005b6238    57
                         call               ___RTDynamicCast                              // 0x005b6239    e8dbf72000
                         add                esp, 0x14                                     // 0x005b623e    83c414
                         test               eax, eax                                      // 0x005b6241    85c0
                         {disp8} je         _jmp_addr_0x005b62a1                          // 0x005b6243    745c
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x005b6245    8b4f1c
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x005b6248    8d7714
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x005b624b    894c2448
                         mov.s              ecx, esi                                      // 0x005b624f    8bce
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000001            // 0x005b6251    c744245001000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b6259    e832ce2400
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x005b625e    d8442448
                         {disp32} mov       edx, dword ptr [esp + 0x000000d8]             // 0x005b6262    8b9424d8000000
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x005b6269    d95c2440
                         fild               dword ptr [esi]                               // 0x005b626d    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005b626f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x005b6275    d95c243c
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x005b6279    db4604
                         mov                dword ptr [edx], 0x0000000c                   // 0x005b627c    c7020c000000
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005b6282    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x005b6288    d95c2444
                         call               _jmp_addr_0x0046c040                          // 0x005b628c    e8af5debff
                         {disp32} mov       ebp, dword ptr [esp + 0x000000c0]             // 0x005b6291    8bac24c0000000
                         {disp8} fstp       dword ptr [esp + 0x7c]                        // 0x005b6298    d95c247c
                         {disp32} jmp       _jmp_addr_0x005b69bb                          // 0x005b629c    e91a070000
_jmp_addr_0x005b62a1:    push               0x0                                           // 0x005b62a1    6a00
                         push               0x009c9560                                    // 0x005b62a3    6860959c00
                         push               0x009c7f50                                    // 0x005b62a8    68507f9c00
                         push               0x0                                           // 0x005b62ad    6a00
                         push               edi                                           // 0x005b62af    57
                         call               ___RTDynamicCast                              // 0x005b62b0    e864f72000
                         add                esp, 0x14                                     // 0x005b62b5    83c414
                         test               eax, eax                                      // 0x005b62b8    85c0
                         {disp8} je         _jmp_addr_0x005b62c9                          // 0x005b62ba    740d
                         mov.s              ecx, eax                                      // 0x005b62bc    8bc8
                         call               _jmp_addr_0x00422250                          // 0x005b62be    e88dbfe6ff
                         mov.s              ecx, eax                                      // 0x005b62c3    8bc8
                         xor.s              edx, edx                                      // 0x005b62c5    33d2
                         {disp8} jmp        _jmp_addr_0x005b62da                          // 0x005b62c7    eb11
_jmp_addr_0x005b62c9:    {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x005b62c9    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x005b62cc    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x005b62ce    ff90f8000000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005b62d4    8b54242c
                         mov.s              ecx, eax                                      // 0x005b62d8    8bc8
_jmp_addr_0x005b62da:    {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b62da    d944243c
                         {disp8} fsub       dword ptr [esp + 0x60]                        // 0x005b62de    d8642460
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005b62e2    d9442440
                         {disp8} fsub       dword ptr [esp + 0x64]                        // 0x005b62e6    d8642464
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005b62ea    d95c2434
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x005b62ee    d9442444
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x005b62f2    8b442434
                         {disp8} fsub       dword ptr [esp + 0x68]                        // 0x005b62f6    d8642468
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x005b62fa    89442458
                         fld                st(1)                                         // 0x005b62fe    d9c1
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x005b6300    d95c2454
                         {disp8} fst        dword ptr [esp + 0x5c]                        // 0x005b6304    d954245c
                         fld                st(1)                                         // 0x005b6308    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b630a    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6310    dfe0
                         test               ah, 0x40                                      // 0x005b6312    f6c440
                         {disp8} je         _jmp_addr_0x005b6335                          // 0x005b6315    741e
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b6317    d9442434
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b631b    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6321    dfe0
                         test               ah, 0x40                                      // 0x005b6323    f6c440
                         {disp8} je         _jmp_addr_0x005b6335                          // 0x005b6326    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005b6328    d81598a38a00
                         fnstsw             ax                                            // 0x005b632e    dfe0
                         test               ah, 0x40                                      // 0x005b6330    f6c440
                         {disp8} jne        _jmp_addr_0x005b636b                          // 0x005b6333    7536
_jmp_addr_0x005b6335:    fld                st(1)                                         // 0x005b6335    d9c1
                         fmul               st, st(2)                                     // 0x005b6337    d8ca
                         fld                st(1)                                         // 0x005b6339    d9c1
                         fmul               st, st(2)                                     // 0x005b633b    d8ca
                         faddp              st(1), st                                     // 0x005b633d    dec1
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b633f    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x005b6343    d84c2434
                         faddp              st(1), st                                     // 0x005b6347    dec1
                         fsqrt                                                            // 0x005b6349    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b634b    d83d90a38a00
                         fld                st(0)                                         // 0x005b6351    d9c0
                         fmul               st, st(3)                                     // 0x005b6353    d8cb
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x005b6355    d95c2454
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b6359    d9442434
                         fmul               st, st(1)                                     // 0x005b635d    d8c9
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x005b635f    d95c2458
                         fxch               st(1)                                         // 0x005b6363    d9c9
                         fmul               st, st(1)                                     // 0x005b6365    d8c9
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x005b6367    d95c245c
_jmp_addr_0x005b636b:    {disp32} mov       esi, dword ptr [esp + 0x000000c0]             // 0x005b636b    8bb424c0000000
                         fstp               st(0)                                         // 0x005b6372    ddd8
                         {disp32} mov       eax, dword ptr [esi + 0x00004904]             // 0x005b6374    8b8604490000
                         fstp               st(0)                                         // 0x005b637a    ddd8
                         test               eax, eax                                      // 0x005b637c    85c0
                         {disp32} je        _jmp_addr_0x005b6441                          // 0x005b637e    0f84bd000000
                         {disp32} fld       dword ptr [data_bytes + 0x34df30]             // 0x005b6384    d905303fd100
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x005b638a    8b442454
                         {disp8} fsub       dword ptr [esp + 0x60]                        // 0x005b638e    d8642460
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x005b6392    89442430
                         {disp32} fld       dword ptr [data_bytes + 0x34df34]             // 0x005b6396    d905343fd100
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x005b639c    8b442458
                         {disp8} fsub       dword ptr [esp + 0x64]                        // 0x005b63a0    d8642464
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x005b63a4    89442434
                         {disp32} fld       dword ptr [data_bytes + 0x34df38]             // 0x005b63a8    d905383fd100
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x005b63ae    8b44245c
                         {disp8} fsub       dword ptr [esp + 0x68]                        // 0x005b63b2    d8642468
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x005b63b6    89442438
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x005b63ba    d9542424
                         fld                st(2)                                         // 0x005b63be    d9c2
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x005b63c0    d95c2454
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x005b63c4    d95c245c
                         {disp32} fadd      dword ptr [data_bytes + 0x34df4c]             // 0x005b63c8    d8054c3fd100
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x005b63ce    d95c2458
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005b63d2    d81598a38a00
                         fnstsw             ax                                            // 0x005b63d8    dfe0
                         test               ah, 0x40                                      // 0x005b63da    f6c440
                         {disp8} je         _jmp_addr_0x005b6401                          // 0x005b63dd    7422
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b63df    d9442458
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b63e3    d81d98a38a00
                         fnstsw             ax                                            // 0x005b63e9    dfe0
                         test               ah, 0x40                                      // 0x005b63eb    f6c440
                         {disp8} je         _jmp_addr_0x005b6401                          // 0x005b63ee    7411
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b63f0    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b63f4    d81d98a38a00
                         fnstsw             ax                                            // 0x005b63fa    dfe0
                         test               ah, 0x40                                      // 0x005b63fc    f6c440
                         {disp8} jne        _jmp_addr_0x005b643f                          // 0x005b63ff    753e
_jmp_addr_0x005b6401:    {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b6401    d9442458
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b6405    d84c2458
                         fld                st(1)                                         // 0x005b6409    d9c1
                         fmul               st, st(2)                                     // 0x005b640b    d8ca
                         faddp              st(1), st                                     // 0x005b640d    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b640f    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b6413    d84c2424
                         faddp              st(1), st                                     // 0x005b6417    dec1
                         fsqrt                                                            // 0x005b6419    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b641b    d83d90a38a00
                         fld                st(0)                                         // 0x005b6421    d9c0
                         fmul               st, st(2)                                     // 0x005b6423    d8ca
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x005b6425    d95c2454
                         fld                st(0)                                         // 0x005b6429    d9c0
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b642b    d84c2458
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x005b642f    d95c2458
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b6433    d9442424
                         fmul               st, st(1)                                     // 0x005b6437    d8c9
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x005b6439    d95c245c
                         fstp               st(0)                                         // 0x005b643d    ddd8
_jmp_addr_0x005b643f:    fstp               st(0)                                         // 0x005b643f    ddd8
_jmp_addr_0x005b6441:    test               edx, edx                                      // 0x005b6441    85d2
                         {disp32} je        _jmp_addr_0x005b6508                          // 0x005b6443    0f84bf000000
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x005b6449    8b4f1c
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x005b644c    8d7714
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x005b644f    894c2448
                         mov.s              ecx, esi                                      // 0x005b6453    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b6455    e836cc2400
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x005b645a    d8442448
                         mov                edx, dword ptr [edi]                          // 0x005b645e    8b17
                         mov.s              ecx, edi                                      // 0x005b6460    8bcf
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005b6462    d95c2434
                         fild               dword ptr [esi]                               // 0x005b6466    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005b6468    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x005b646e    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005b6471    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b6477    d95c2438
                         {disp8} fsub       dword ptr [esp + 0x60]                        // 0x005b647b    d8642460
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b647f    d9442434
                         {disp8} fsub       dword ptr [esp + 0x64]                        // 0x005b6483    d8642464
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b6487    d9442438
                         {disp8} fsub       dword ptr [esp + 0x68]                        // 0x005b648b    d8642468
                         fld                st(2)                                         // 0x005b648f    d9c2
                         fmulp              st(3), st                                     // 0x005b6491    decb
                         fld                st(0)                                         // 0x005b6493    d9c0
                         fmul               st, st(1)                                     // 0x005b6495    d8c9
                         faddp              st(3), st                                     // 0x005b6497    dec3
                         fld                st(1)                                         // 0x005b6499    d9c1
                         fmul               st, st(2)                                     // 0x005b649b    d8ca
                         faddp              st(3), st                                     // 0x005b649d    dec3
                         fxch               st(2)                                         // 0x005b649f    d9ca
                         fsqrt                                                            // 0x005b64a1    d9fa
                         fxch               st(2)                                         // 0x005b64a3    d9ca
                         fstp               st(0)                                         // 0x005b64a5    ddd8
                         fstp               st(0)                                         // 0x005b64a7    ddd8
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x005b64a9    d95c2448
                         call               dword ptr [edx + 0x64]                        // 0x005b64ad    ff5264
                         {disp8} fsubr      dword ptr [esp + 0x48]                        // 0x005b64b0    d86c2448
                         {disp32} mov       eax, dword ptr [esp + 0x000000c0]             // 0x005b64b4    8b8424c0000000
                         {disp32} lea       esi, dword ptr [eax + 0x0000485c]             // 0x005b64bb    8db05c480000
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x005b64c1    8d54243c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b64c5    d95c242c
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x005b64c9    8b4c242c
                         push               ecx                                           // 0x005b64cd    51
                         mov.s              ecx, esi                                      // 0x005b64ce    8bce
                         call               _jmp_addr_0x0074caf0                          // 0x005b64d0    e81b661900
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005b64d5    d9442440
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x005b64d9    d8642434
                         push               ecx                                           // 0x005b64dd    51
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x005b64de    8d542440
                         mov.s              ecx, esi                                      // 0x005b64e2    8bce
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b64e4    d84c245c
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x005b64e8    d8442430
                         fstp               dword ptr [esp]                               // 0x005b64ec    d91c24
                         call               _jmp_addr_0x0074caf0                          // 0x005b64ef    e8fc651900
                         {disp32} mov       ebp, dword ptr [esp + 0x000000c0]             // 0x005b64f4    8bac24c0000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000001            // 0x005b64fb    c744245001000000
                         {disp32} jmp       _jmp_addr_0x005b69bb                          // 0x005b6503    e9b3040000
_jmp_addr_0x005b6508:    push               0x0                                           // 0x005b6508    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005b650a    8d542414
                         push               edx                                           // 0x005b650e    52
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x005b650f    8d442444
                         push               eax                                           // 0x005b6513    50
                         push               0x0                                           // 0x005b6514    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x64]                   // 0x005b6516    8d542464
                         push               edx                                           // 0x005b651a    52
                         {disp8} lea        eax, dword ptr [esp + 0x74]                   // 0x005b651b    8d442474
                         push               eax                                           // 0x005b651f    50
                         push               ebx                                           // 0x005b6520    53
                         push               ecx                                           // 0x005b6521    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000000ac]             // 0x005b6522    8d8c24ac000000
                         call               _jmp_addr_0x00865020                          // 0x005b6529    e8f2ea2a00
                         test               eax, eax                                      // 0x005b652e    85c0
                         {disp32} je        _jmp_addr_0x005b6852                          // 0x005b6530    0f841c030000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b6536    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b653a    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6540    dfe0
                         test               ah, 0x40                                      // 0x005b6542    f6c440
                         {disp8} je         _jmp_addr_0x005b6569                          // 0x005b6545    7422
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6547    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b654b    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6551    dfe0
                         test               ah, 0x40                                      // 0x005b6553    f6c440
                         {disp8} je         _jmp_addr_0x005b6569                          // 0x005b6556    7411
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b6558    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b655c    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6562    dfe0
                         test               ah, 0x40                                      // 0x005b6564    f6c440
                         {disp8} jne        _jmp_addr_0x005b65a9                          // 0x005b6567    7540
_jmp_addr_0x005b6569:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b6569    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b656d    d84c2418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6571    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b6575    d84c2414
                         faddp              st(1), st                                     // 0x005b6579    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b657b    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b657f    d84c2410
                         faddp              st(1), st                                     // 0x005b6583    dec1
                         fsqrt                                                            // 0x005b6585    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b6587    d83d90a38a00
                         fld                st(0)                                         // 0x005b658d    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b658f    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b6593    d95c2410
                         fld                st(0)                                         // 0x005b6597    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b6599    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b659d    d95c2414
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b65a1    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b65a5    d95c2418
_jmp_addr_0x005b65a9:    {disp8} fld        dword ptr [esp + 0x60]                        // 0x005b65a9    d9442460
                         {disp32} mov       ecx, dword ptr [esi + 0x00004904]             // 0x005b65ad    8b8e04490000
                         test               ecx, ecx                                      // 0x005b65b3    85c9
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x005b65b5    d864243c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b65b9    d95c241c
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x005b65bd    d9442464
                         {disp8} fsub       dword ptr [esp + 0x40]                        // 0x005b65c1    d8642440
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b65c5    d95c2420
                         {disp8} fld        dword ptr [esp + 0x68]                        // 0x005b65c9    d9442468
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x005b65cd    d8642444
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x005b65d1    d9542424
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b65d5    d84c245c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b65d9    d944241c
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b65dd    d84c2454
                         faddp              st(1), st                                     // 0x005b65e1    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b65e3    d9442420
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b65e7    d84c2458
                         faddp              st(1), st                                     // 0x005b65eb    dec1
                         fchs                                                             // 0x005b65ed    d9e0
                         {disp32} je        _jmp_addr_0x005b6693                          // 0x005b65ef    0f849e000000
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005b65f5    d9442430
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x005b65f9    8b542430
                         fmul               st, st(1)                                     // 0x005b65fd    d8c9
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x005b65ff    8b442434
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005b6603    d9442434
                         {disp8} mov        dword ptr [esp + 0x54], edx                   // 0x005b6607    89542454
                         fmul               st, st(2)                                     // 0x005b660b    d8ca
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x005b660d    8b542438
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x005b6611    89442458
                         {disp8} mov        dword ptr [esp + 0x5c], edx                   // 0x005b6615    8954245c
                         {disp8} fstp       dword ptr [esp + 0x70]                        // 0x005b6619    d95c2470
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b661d    d9442438
                         fmul               st, st(2)                                     // 0x005b6621    d8ca
                         {disp8} fstp       dword ptr [esp + 0x74]                        // 0x005b6623    d95c2474
                         {disp8} fadd       dword ptr [esp + 0x60]                        // 0x005b6627    d8442460
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005b662b    d95c2430
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x005b662f    d9442470
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x005b6633    8b442430
                         {disp8} fadd       dword ptr [esp + 0x64]                        // 0x005b6637    d8442464
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x005b663b    8944243c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005b663f    d95c2434
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x005b6643    d9442474
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x005b6647    8b542434
                         {disp8} fadd       dword ptr [esp + 0x68]                        // 0x005b664b    d8442468
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x005b664f    89542440
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b6653    d95c2438
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x005b6657    d9442460
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x005b665b    8b442438
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x005b665f    d8642430
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x005b6663    89442444
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x005b6667    d9442464
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x005b666b    d8642434
                         {disp8} fstp       dword ptr [esp + 0x70]                        // 0x005b666f    d95c2470
                         {disp8} fld        dword ptr [esp + 0x68]                        // 0x005b6673    d9442468
                         {disp8} mov        edx, dword ptr [esp + 0x70]                   // 0x005b6677    8b542470
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x005b667b    d8642438
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x005b667f    89542420
                         {disp8} fstp       dword ptr [esp + 0x74]                        // 0x005b6683    d95c2474
                         {disp8} mov        eax, dword ptr [esp + 0x74]                   // 0x005b6687    8b442474
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b668b    d95c241c
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005b668f    89442424
_jmp_addr_0x005b6693:    {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005b6693    d81d90a38a00
                         fnstsw             ax                                            // 0x005b6699    dfe0
                         test               ah, 0x01                                      // 0x005b669b    f6c401
                         {disp8} je         _jmp_addr_0x005b66f8                          // 0x005b669e    7458
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x005b66a0    d9442460
                         {disp8} fadd       dword ptr [esp + 0x54]                        // 0x005b66a4    d8442454
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005b66a8    d95c2430
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x005b66ac    d9442464
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x005b66b0    8b542430
                         {disp8} fadd       dword ptr [esp + 0x58]                        // 0x005b66b4    d8442458
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x005b66b8    8954243c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005b66bc    d95c2434
                         {disp8} fld        dword ptr [esp + 0x68]                        // 0x005b66c0    d9442468
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x005b66c4    8b442434
                         {disp8} fadd       dword ptr [esp + 0x5c]                        // 0x005b66c8    d844245c
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x005b66cc    89442440
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b66d0    d95c2438
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x005b66d4    d9442454
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x005b66d8    8b542438
                         fchs                                                             // 0x005b66dc    d9e0
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x005b66de    89542444
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b66e2    d95c241c
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b66e6    d9442458
                         fchs                                                             // 0x005b66ea    d9e0
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b66ec    d95c2420
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x005b66f0    d944245c
                         fchs                                                             // 0x005b66f4    d9e0
                         {disp8} jmp        _jmp_addr_0x005b6767                          // 0x005b66f6    eb6f
_jmp_addr_0x005b66f8:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b66f8    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b66fc    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6702    dfe0
                         test               ah, 0x40                                      // 0x005b6704    f6c440
                         {disp8} je         _jmp_addr_0x005b672b                          // 0x005b6707    7422
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b6709    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b670d    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6713    dfe0
                         test               ah, 0x40                                      // 0x005b6715    f6c440
                         {disp8} je         _jmp_addr_0x005b672b                          // 0x005b6718    7411
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b671a    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b671e    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6724    dfe0
                         test               ah, 0x40                                      // 0x005b6726    f6c440
                         {disp8} jne        _jmp_addr_0x005b676b                          // 0x005b6729    7540
_jmp_addr_0x005b672b:    {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b672b    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b672f    d84c2424
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b6733    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b6737    d84c2420
                         faddp              st(1), st                                     // 0x005b673b    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b673d    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b6741    d84c241c
                         faddp              st(1), st                                     // 0x005b6745    dec1
                         fsqrt                                                            // 0x005b6747    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b6749    d83d90a38a00
                         fld                st(0)                                         // 0x005b674f    d9c0
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b6751    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b6755    d95c241c
                         fld                st(0)                                         // 0x005b6759    d9c0
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b675b    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b675f    d95c2420
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b6763    d84c2424
_jmp_addr_0x005b6767:    {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b6767    d95c2424
_jmp_addr_0x005b676b:    test               ecx, ecx                                      // 0x005b676b    85c9
                         {disp32} je        _jmp_addr_0x005b6808                          // 0x005b676d    0f8495000000
                         {disp8} mov        al, byte ptr [esp + 0x4f]                     // 0x005b6773    8a44244f
                         test               al, al                                        // 0x005b6777    84c0
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x005b6779    c744242c00000000
                         {disp8} je         _jmp_addr_0x005b67c1                          // 0x005b6781    743e
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b6783    d944243c
                         {disp8} fsub       dword ptr [ebp + 0x78]                        // 0x005b6787    d86578
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x005b678a    d9442444
                         {disp32} fsub      dword ptr [ebp + 0x00000080]                  // 0x005b678e    d8a580000000
                         fld                st(0)                                         // 0x005b6794    d9c0
                         fmul               st, st(1)                                     // 0x005b6796    d8c9
                         fld                st(2)                                         // 0x005b6798    d9c2
                         fmul               st, st(3)                                     // 0x005b679a    d8cb
                         faddp              st(1), st                                     // 0x005b679c    dec1
                         fsqrt                                                            // 0x005b679e    d9fa
                         fstp               st(2)                                         // 0x005b67a0    ddda
                         fstp               st(0)                                         // 0x005b67a2    ddd8
                         {disp32} fld       dword ptr [ebp + 0x00005228]                  // 0x005b67a4    d98528520000
                         fld                st(1)                                         // 0x005b67aa    d9c1
                         fcomp              st(1)                                         // 0x005b67ac    d8d9
                         fnstsw             ax                                            // 0x005b67ae    dfe0
                         test               ah, 0x01                                      // 0x005b67b0    f6c401
                         {disp8} je         _jmp_addr_0x005b67bd                          // 0x005b67b3    7408
                         fsub               st, st(1)                                     // 0x005b67b5    d8e1
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b67b7    d95c242c
                         {disp8} jmp        _jmp_addr_0x005b67bf                          // 0x005b67bb    eb02
_jmp_addr_0x005b67bd:    fstp               st(0)                                         // 0x005b67bd    ddd8
_jmp_addr_0x005b67bf:    fstp               st(0)                                         // 0x005b67bf    ddd8
_jmp_addr_0x005b67c1:    mov                eax, dword ptr [ecx]                          // 0x005b67c1    8b01
                         call               dword ptr [eax + 0x64]                        // 0x005b67c3    ff5064
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b67c6    d80db4a38a00
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x005b67cc    d844242c
                         fld                st(0)                                         // 0x005b67d0    d9c0
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b67d2    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x6c]                        // 0x005b67d6    d95c246c
                         fld                st(0)                                         // 0x005b67da    d9c0
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b67dc    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x70]                        // 0x005b67e0    d95c2470
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b67e4    d84c2424
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x005b67e8    d944246c
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x005b67ec    d844243c
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x005b67f0    d95c243c
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x005b67f4    d9442470
                         {disp8} fadd       dword ptr [esp + 0x40]                        // 0x005b67f8    d8442440
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x005b67fc    d95c2440
                         {disp8} fadd       dword ptr [esp + 0x44]                        // 0x005b6800    d8442444
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x005b6804    d95c2444
_jmp_addr_0x005b6808:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b6808    d944241c
                         mov.s              ecx, edi                                      // 0x005b680c    8bcf
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x005b680e    d80dd4b38a00
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x005b6814    d8642410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b6818    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b681c    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x005b6820    d80dd4b38a00
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005b6826    d8642414
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x005b682a    d805b4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b6830    d95c2414
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b6834    d9442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x005b6838    d80dd4b38a00
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x005b683e    d8642418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b6842    d95c2418
                         mov                edx, dword ptr [edi]                          // 0x005b6846    8b17
                         call               dword ptr [edx + 0x59c]                       // 0x005b6848    ff929c050000
                         test               eax, eax                                      // 0x005b684e    85c0
                         {disp8} jne        _jmp_addr_0x005b685a                          // 0x005b6850    7508
_jmp_addr_0x005b6852:    {disp8} mov        dword ptr [esp + 0x50], 0x00000001            // 0x005b6852    c744245001000000
_jmp_addr_0x005b685a:    {disp32} mov       ebp, dword ptr [esp + 0x000000c0]             // 0x005b685a    8bac24c0000000
                         {disp32} jmp       _jmp_addr_0x005b69bb                          // 0x005b6861    e955010000
_jmp_addr_0x005b6866:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]       // 0x005b6866    8b448828
_jmp_addr_0x005b686a:    push               0x0                                           // 0x005b686a    6a00
                         push               0x009cd3b0                                    // 0x005b686c    68b0d39c00
                         push               0x009cd390                                    // 0x005b6871    6890d39c00
                         push               0x0                                           // 0x005b6876    6a00
                         push               eax                                           // 0x005b6878    50
                         call               ___RTDynamicCast                              // 0x005b6879    e89bf12000
                         add                esp, 0x14                                     // 0x005b687e    83c414
                         test               eax, eax                                      // 0x005b6881    85c0
                         {disp8} je         _jmp_addr_0x005b6898                          // 0x005b6883    7413
                         {disp32} mov       cl, byte ptr [esp + 0x000000dc]               // 0x005b6885    8a8c24dc000000
                         test               cl, cl                                        // 0x005b688c    84c9
                         {disp8} je         _jmp_addr_0x005b6898                          // 0x005b688e    7408
                         {disp32} mov       ebx, dword ptr [eax + 0x00000090]             // 0x005b6890    8b9890000000
                         {disp8} jmp        _jmp_addr_0x005b689a                          // 0x005b6896    eb02
_jmp_addr_0x005b6898:    xor.s              ebx, ebx                                      // 0x005b6898    33db
_jmp_addr_0x005b689a:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005b689a    8b0d5c19d000
                         push               0x0                                           // 0x005b68a0    6a00
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b68a2    e8a9eff9ff
                         mov.s              ecx, eax                                      // 0x005b68a7    8bc8
                         call               _jmp_addr_0x005db710                          // 0x005b68a9    e8624e0200
                         test               eax, eax                                      // 0x005b68ae    85c0
                         {disp8} je         _jmp_addr_0x005b68d1                          // 0x005b68b0    741f
                         {disp32} mov       al, byte ptr [data_bytes + 0x2950f4]          // 0x005b68b2    a0f4b0c500
                         test               al, 0x02                                      // 0x005b68b7    a802
                         {disp8} je         _jmp_addr_0x005b68bd                          // 0x005b68b9    7402
                         or.s               ebx, esi                                      // 0x005b68bb    0bde
_jmp_addr_0x005b68bd:    test               al, 0x01                                      // 0x005b68bd    a801
                         {disp8} je         _jmp_addr_0x005b68c4                          // 0x005b68bf    7403
                         or                 ebx, 2                                        // 0x005b68c1    83cb02
_jmp_addr_0x005b68c4:    test               al, 0x04                                      // 0x005b68c4    a804
                         {disp8} je         _jmp_addr_0x005b68cb                          // 0x005b68c6    7403
                         or                 ebx, 8                                        // 0x005b68c8    83cb08
_jmp_addr_0x005b68cb:    {disp32} mov       dword ptr [ebp + 0x00004858], esi             // 0x005b68cb    89b558480000
_jmp_addr_0x005b68d1:    test               bl, 0x01                                      // 0x005b68d1    f6c301
                         {disp32} je        _jmp_addr_0x005b6ac7                          // 0x005b68d4    0f84ed010000
                         test               byte ptr [data_bytes + 0x7d6c], 0x02          // 0x005b68da    f6056cdd9c0002
                         {disp32} je        _jmp_addr_0x005b6ae2                          // 0x005b68e1    0f84fb010000
                         {disp32} mov       eax, dword ptr [esp + 0x000000d8]             // 0x005b68e7    8b8424d8000000
                         mov                dword ptr [eax], 0x0000002d                   // 0x005b68ee    c7002d000000
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc4]             // 0x005b68f4    d905c41dea00
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x005b68fa    d864243c
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc8]             // 0x005b68fe    d905c81dea00
                         {disp8} fsub       dword ptr [esp + 0x40]                        // 0x005b6904    d8642440
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdcc]             // 0x005b6908    d905cc1dea00
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x005b690e    d8642444
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b6912    d95c2438
                         fld                st(1)                                         // 0x005b6916    d9c1
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x005b6918    8b4c2438
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b691c    d95c2410
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005b6920    894c2418
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b6924    d9442438
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x005b6928    d84c2438
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x005b692c    d95c2448
                         fld                st(1)                                         // 0x005b6930    d9c1
                         fmul               st, st(2)                                     // 0x005b6932    d8ca
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b6934    d95c242c
                         fld                st(0)                                         // 0x005b6938    d9c0
                         fmul               st, st(1)                                     // 0x005b693a    d8c9
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x005b693c    d844242c
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x005b6940    d8442448
                         fsqrt                                                            // 0x005b6944    d9fa
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x005b6946    d80d3cb28a00
                         fadd               st, st(1)                                     // 0x005b694c    d8c1
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b694e    d95c2414
                         fstp               st(0)                                         // 0x005b6952    ddd8
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005b6954    d81598a38a00
                         fnstsw             ax                                            // 0x005b695a    dfe0
                         test               ah, 0x40                                      // 0x005b695c    f6c440
                         {disp8} je         _jmp_addr_0x005b6983                          // 0x005b695f    7422
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6961    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6965    d81d98a38a00
                         fnstsw             ax                                            // 0x005b696b    dfe0
                         test               ah, 0x40                                      // 0x005b696d    f6c440
                         {disp8} je         _jmp_addr_0x005b6983                          // 0x005b6970    7411
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b6972    d9442438
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6976    d81d98a38a00
                         fnstsw             ax                                            // 0x005b697c    dfe0
                         test               ah, 0x40                                      // 0x005b697e    f6c440
                         {disp8} jne        _jmp_addr_0x005b69b9                          // 0x005b6981    7536
_jmp_addr_0x005b6983:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6983    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b6987    d84c2414
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x005b698b    d844242c
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x005b698f    d8442448
                         fsqrt                                                            // 0x005b6993    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b6995    d83d90a38a00
                         fld                st(0)                                         // 0x005b699b    d9c0
                         fmul               st, st(2)                                     // 0x005b699d    d8ca
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b699f    d95c2410
                         fld                st(0)                                         // 0x005b69a3    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b69a5    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b69a9    d95c2414
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b69ad    d9442438
                         fmul               st, st(1)                                     // 0x005b69b1    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b69b3    d95c2418
                         fstp               st(0)                                         // 0x005b69b7    ddd8
_jmp_addr_0x005b69b9:    fstp               st(0)                                         // 0x005b69b9    ddd8
_jmp_addr_0x005b69bb:    {disp32} mov       al, byte ptr [ebp + 0x00004874]               // 0x005b69bb    8a8574480000
                         test               al, al                                        // 0x005b69c1    84c0
                         {disp32} je        _jmp_addr_0x005b6aa5                          // 0x005b69c3    0f84dc000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000d8]             // 0x005b69c9    8b8424d8000000
                         mov                dword ptr [eax], 0x0000002d                   // 0x005b69d0    c7002d000000
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc4]             // 0x005b69d6    d905c41dea00
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x005b69dc    d864243c
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000            // 0x005b69e0    c744245000000000
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc8]             // 0x005b69e8    d905c81dea00
                         {disp8} fsub       dword ptr [esp + 0x40]                        // 0x005b69ee    d8642440
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdcc]             // 0x005b69f2    d905cc1dea00
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x005b69f8    d8642444
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b69fc    d95c2438
                         fld                st(1)                                         // 0x005b6a00    d9c1
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x005b6a02    8b4c2438
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b6a06    d95c2410
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005b6a0a    894c2418
                         fld                st(1)                                         // 0x005b6a0e    d9c1
                         fmul               st, st(2)                                     // 0x005b6a10    d8ca
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b6a12    d95c242c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b6a16    d9442438
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x005b6a1a    d84c2438
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x005b6a1e    d95c2448
                         fld                st(0)                                         // 0x005b6a22    d9c0
                         fmul               st, st(1)                                     // 0x005b6a24    d8c9
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x005b6a26    d8442448
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x005b6a2a    d844242c
                         fsqrt                                                            // 0x005b6a2e    d9fa
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x005b6a30    d80d3cb28a00
                         fadd               st, st(1)                                     // 0x005b6a36    d8c1
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b6a38    d95c2414
                         fstp               st(0)                                         // 0x005b6a3c    ddd8
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005b6a3e    d81598a38a00
                         fnstsw             ax                                            // 0x005b6a44    dfe0
                         test               ah, 0x40                                      // 0x005b6a46    f6c440
                         {disp8} je         _jmp_addr_0x005b6a6d                          // 0x005b6a49    7422
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6a4b    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6a4f    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6a55    dfe0
                         test               ah, 0x40                                      // 0x005b6a57    f6c440
                         {disp8} je         _jmp_addr_0x005b6a6d                          // 0x005b6a5a    7411
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b6a5c    d9442438
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6a60    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6a66    dfe0
                         test               ah, 0x40                                      // 0x005b6a68    f6c440
                         {disp8} jne        _jmp_addr_0x005b6aa3                          // 0x005b6a6b    7536
_jmp_addr_0x005b6a6d:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6a6d    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b6a71    d84c2414
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x005b6a75    d8442448
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x005b6a79    d844242c
                         fsqrt                                                            // 0x005b6a7d    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b6a7f    d83d90a38a00
                         fld                st(0)                                         // 0x005b6a85    d9c0
                         fmul               st, st(2)                                     // 0x005b6a87    d8ca
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b6a89    d95c2410
                         fld                st(0)                                         // 0x005b6a8d    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b6a8f    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b6a93    d95c2414
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b6a97    d9442438
                         fmul               st, st(1)                                     // 0x005b6a9b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b6a9d    d95c2418
                         fstp               st(0)                                         // 0x005b6aa1    ddd8
_jmp_addr_0x005b6aa3:    fstp               st(0)                                         // 0x005b6aa3    ddd8
_jmp_addr_0x005b6aa5:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005b6aa5    8b442428
                         test               eax, eax                                      // 0x005b6aa9    85c0
                         {disp8} jne        _jmp_addr_0x005b6b08                          // 0x005b6aab    755b
                         {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x005b6aad    8b842488000000
                         test               eax, eax                                      // 0x005b6ab4    85c0
                         {disp8} je         _jmp_addr_0x005b6b08                          // 0x005b6ab6    7450
                         {disp32} mov       edx, dword ptr [esp + 0x00000080]             // 0x005b6ab8    8b942480000000
                         {disp32} fld       dword ptr [edx + 0x000003d4]                  // 0x005b6abf    d982d4030000
                         {disp8} jmp        _jmp_addr_0x005b6b3e                          // 0x005b6ac5    eb77
_jmp_addr_0x005b6ac7:    test               bl, 0x02                                      // 0x005b6ac7    f6c302
                         {disp8} je         _jmp_addr_0x005b6ae2                          // 0x005b6aca    7416
                         test               byte ptr [data_bytes + 0x7d6c], 0x01          // 0x005b6acc    f6056cdd9c0001
                         {disp8} je         _jmp_addr_0x005b6ae2                          // 0x005b6ad3    740d
                         {disp32} mov       edx, dword ptr [esp + 0x000000d8]             // 0x005b6ad5    8b9424d8000000
                         mov                dword ptr [edx], 0x00000030                   // 0x005b6adc    c70230000000
_jmp_addr_0x005b6ae2:    {disp8} mov        dword ptr [esp + 0x50], esi                   // 0x005b6ae2    89742450
                         {disp32} jmp       _jmp_addr_0x005b69bb                          // 0x005b6ae6    e9d0feffff
_jmp_addr_0x005b6aeb:    {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x005b6aeb    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f800000            // 0x005b6af3    c74424140000803f
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x005b6afb    c744241800000000
                         {disp32} jmp       _jmp_addr_0x005b69bb                          // 0x005b6b03    e9b3feffff
_jmp_addr_0x005b6b08:    {disp8} fld        dword ptr [esp + 0x60]                        // 0x005b6b08    d9442460
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x005b6b0c    d864243c
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x005b6b10    d9442464
                         {disp8} fsub       dword ptr [esp + 0x40]                        // 0x005b6b14    d8642440
                         {disp8} fld        dword ptr [esp + 0x68]                        // 0x005b6b18    d9442468
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x005b6b1c    d8642444
                         fld                st(2)                                         // 0x005b6b20    d9c2
                         fmulp              st(3), st                                     // 0x005b6b22    decb
                         fld                st(0)                                         // 0x005b6b24    d9c0
                         fmul               st, st(1)                                     // 0x005b6b26    d8c9
                         faddp              st(3), st                                     // 0x005b6b28    dec3
                         fld                st(1)                                         // 0x005b6b2a    d9c1
                         fmul               st, st(2)                                     // 0x005b6b2c    d8ca
                         faddp              st(3), st                                     // 0x005b6b2e    dec3
                         fxch               st(2)                                         // 0x005b6b30    d9ca
                         fsqrt                                                            // 0x005b6b32    d9fa
                         fxch               st(2)                                         // 0x005b6b34    d9ca
                         fstp               st(0)                                         // 0x005b6b36    ddd8
                         fstp               st(0)                                         // 0x005b6b38    ddd8
                         {disp8} fsub       dword ptr [esp + 0x7c]                        // 0x005b6b3a    d864247c
_jmp_addr_0x005b6b3e:    {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005b6b3e    d95c2428
                         {disp32} fld       dword ptr [data_bytes + 0x34df80]             // 0x005b6b42    d905803fd100
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005b6b48    d9442428
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005b6b4c    d81d90a38a00
                         fnstsw             ax                                            // 0x005b6b52    dfe0
                         test               ah, 0x01                                      // 0x005b6b54    f6c401
                         {disp8} je         _jmp_addr_0x005b6b61                          // 0x005b6b57    7408
                         {disp8} mov        dword ptr [esp + 0x28], 0x3f800000            // 0x005b6b59    c74424280000803f
_jmp_addr_0x005b6b61:    {disp8} fld        dword ptr [esp + 0x28]                        // 0x005b6b61    d9442428
                         fcomp              st(1)                                         // 0x005b6b65    d8d9
                         fnstsw             ax                                            // 0x005b6b67    dfe0
                         fstp               st(0)                                         // 0x005b6b69    ddd8
                         test               ah, 0x01                                      // 0x005b6b6b    f6c401
                         {disp8} je         _jmp_addr_0x005b6b7b                          // 0x005b6b6e    740b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22a1d8]        // 0x005b6b70    a1d801bf00
                         {disp8} mov        dword ptr [esp + 0x7c], eax                   // 0x005b6b75    8944247c
                         {disp8} jmp        _jmp_addr_0x005b6bb4                          // 0x005b6b79    eb39
_jmp_addr_0x005b6b7b:    {disp8} mov        al, byte ptr [esp + 0x4e]                     // 0x005b6b7b    8a44244e
                         test               al, al                                        // 0x005b6b7f    84c0
                         {disp8} jne        _jmp_addr_0x005b6b8b                          // 0x005b6b81    7508
                         {disp8} mov        al, byte ptr [esp + 0x7b]                     // 0x005b6b83    8a44247b
                         test               al, al                                        // 0x005b6b87    84c0
                         {disp8} je         _jmp_addr_0x005b6baa                          // 0x005b6b89    741f
_jmp_addr_0x005b6b8b:    {disp32} fld       dword ptr [data_bytes + 0x34df8c]             // 0x005b6b8b    d9058c3fd100
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x005b6b91    d81d78b68a00
                         fnstsw             ax                                            // 0x005b6b97    dfe0
                         test               ah, 0x41                                      // 0x005b6b99    f6c441
                         {disp8} jne        _jmp_addr_0x005b6baa                          // 0x005b6b9c    750c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x22a1d4]        // 0x005b6b9e    8b0dd401bf00
                         {disp8} mov        dword ptr [esp + 0x7c], ecx                   // 0x005b6ba4    894c247c
                         {disp8} jmp        _jmp_addr_0x005b6bb4                          // 0x005b6ba8    eb0a
_jmp_addr_0x005b6baa:    {disp32} mov       edx, dword ptr [data_bytes + 0x22a1d0]        // 0x005b6baa    8b15d001bf00
                         {disp8} mov        dword ptr [esp + 0x7c], edx                   // 0x005b6bb0    8954247c
_jmp_addr_0x005b6bb4:    {disp8} mov        eax, dword ptr [esp + 0x7c]                   // 0x005b6bb4    8b44247c
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x005b6bb8    8b4c2428
                         push               eax                                           // 0x005b6bbc    50
                         push               0x0                                           // 0x005b6bbd    6a00
                         push               ecx                                           // 0x005b6bbf    51
                         mov                ecx, 0x00d13f80                               // 0x005b6bc0    b9803fd100
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x005b6bc5    e89611e5ff
                         {disp32} fld       dword ptr [data_bytes + 0x34df94]             // 0x005b6bca    d905943fd100
                         {disp32} fadd      dword ptr [esp + 0x000000c4]                  // 0x005b6bd0    d88424c4000000
                         {disp32} fst       dword ptr [data_bytes + 0x34df94]             // 0x005b6bd7    d915943fd100
                         {disp32} fcomp     dword ptr [data_bytes + 0x34df98]             // 0x005b6bdd    d81d983fd100
                         fnstsw             ax                                            // 0x005b6be3    dfe0
                         test               ah, 0x01                                      // 0x005b6be5    f6c401
                         {disp8} jne        _jmp_addr_0x005b6c1b                          // 0x005b6be8    7531
                         {disp32} mov       edx, dword ptr [data_bytes + 0x34df84]        // 0x005b6bea    8b15843fd100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34df88]        // 0x005b6bf0    a1883fd100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34df98]        // 0x005b6bf5    8b0d983fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df80], edx        // 0x005b6bfb    8915803fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df8c], eax        // 0x005b6c01    a38c3fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df90], 0x00000000 // 0x005b6c06    c705903fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df94], ecx        // 0x005b6c10    890d943fd100
                         {disp32} jmp       _jmp_addr_0x005b6ca3                          // 0x005b6c16    e988000000
_jmp_addr_0x005b6c1b:    {disp32} fld       dword ptr [data_bytes + 0x34df94]             // 0x005b6c1b    d905943fd100
                         fld                st(0)                                         // 0x005b6c21    d9c0
                         fmulp              st(1), st                                     // 0x005b6c23    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b6c25    d80db4a38a00
                         fld                st(0)                                         // 0x005b6c2b    d9c0
                         {disp32} fmul      dword ptr [data_bytes + 0x34df94]             // 0x005b6c2d    d80d943fd100
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x005b6c33    d80d6cb28a00
                         fld                st(0)                                         // 0x005b6c39    d9c0
                         {disp32} fmul      dword ptr [data_bytes + 0x34dfac]             // 0x005b6c3b    d80dac3fd100
                         fld                st(2)                                         // 0x005b6c41    d9c2
                         {disp32} fmul      dword ptr [data_bytes + 0x34dfa8]             // 0x005b6c43    d80da83fd100
                         faddp              st(1), st                                     // 0x005b6c49    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x34dfa4]             // 0x005b6c4b    d905a43fd100
                         {disp32} fmul      dword ptr [data_bytes + 0x34df94]             // 0x005b6c51    d80d943fd100
                         faddp              st(1), st                                     // 0x005b6c57    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x34dfa0]             // 0x005b6c59    d805a03fd100
                         {disp32} fstp      dword ptr [data_bytes + 0x34df8c]             // 0x005b6c5f    d91d8c3fd100
                         fld                st(1)                                         // 0x005b6c65    d9c1
                         fmul               st, st(2)                                     // 0x005b6c67    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x005b6c69    d80d68b28a00
                         {disp32} fmul      dword ptr [data_bytes + 0x34dfac]             // 0x005b6c6f    d80dac3fd100
                         fxch               st(1)                                         // 0x005b6c75    d9c9
                         {disp32} fmul      dword ptr [data_bytes + 0x34dfa8]             // 0x005b6c77    d80da83fd100
                         faddp              st(1), st                                     // 0x005b6c7d    dec1
                         fxch               st(1)                                         // 0x005b6c7f    d9c9
                         {disp32} fmul      dword ptr [data_bytes + 0x34dfa4]             // 0x005b6c81    d80da43fd100
                         faddp              st(1), st                                     // 0x005b6c87    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x34df94]             // 0x005b6c89    d905943fd100
                         {disp32} fmul      dword ptr [data_bytes + 0x34dfa0]             // 0x005b6c8f    d80da03fd100
                         faddp              st(1), st                                     // 0x005b6c95    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x34df9c]             // 0x005b6c97    d8059c3fd100
                         {disp32} fstp      dword ptr [data_bytes + 0x34df80]             // 0x005b6c9d    d91d803fd100
_jmp_addr_0x005b6ca3:    {disp32} fld       dword ptr [data_bytes + 0x34df80]             // 0x005b6ca3    d905803fd100
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005b6ca9    d81d90a38a00
                         fnstsw             ax                                            // 0x005b6caf    dfe0
                         test               ah, 0x01                                      // 0x005b6cb1    f6c401
                         {disp8} je         _jmp_addr_0x005b6d2e                          // 0x005b6cb4    7478
                         {disp32} mov       dword ptr [data_bytes + 0x34df84], 0x3f800000 // 0x005b6cb6    c705843fd1000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x34df80], 0x3f800000 // 0x005b6cc0    c705803fd1000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x34df9c], 0x3f800000 // 0x005b6cca    c7059c3fd1000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x34df98], 0x00000000 // 0x005b6cd4    c705983fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df94], 0x00000000 // 0x005b6cde    c705943fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfac], 0x00000000 // 0x005b6ce8    c705ac3fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa8], 0x00000000 // 0x005b6cf2    c705a83fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df90], 0x00000000 // 0x005b6cfc    c705903fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa4], 0x00000000 // 0x005b6d06    c705a43fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df8c], 0x00000000 // 0x005b6d10    c7058c3fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34dfa0], 0x00000000 // 0x005b6d1a    c705a03fd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x34df88], 0x00000000 // 0x005b6d24    c705883fd10000000000
_jmp_addr_0x005b6d2e:    {disp32} fld       dword ptr [data_bytes + 0x34df80]             // 0x005b6d2e    d905803fd100
                         {disp32} fcomp     dword ptr [esp + 0x00000084]                  // 0x005b6d34    d89c2484000000
                         fnstsw             ax                                            // 0x005b6d3b    dfe0
                         test               ah, 0x41                                      // 0x005b6d3d    f6c441
                         {disp8} jne        _jmp_addr_0x005b6d4f                          // 0x005b6d40    750d
                         {disp32} mov       edx, dword ptr [esp + 0x00000084]             // 0x005b6d42    8b942484000000
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x005b6d49    89542428
                         {disp8} jmp        _jmp_addr_0x005b6d59                          // 0x005b6d4d    eb0a
_jmp_addr_0x005b6d4f:    {disp32} fld       dword ptr [data_bytes + 0x34df80]             // 0x005b6d4f    d905803fd100
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005b6d55    d95c2428
_jmp_addr_0x005b6d59:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005b6d59    8b442428
                         {disp32} mov       ebx, dword ptr [esp + 0x000000c0]             // 0x005b6d5d    8b9c24c0000000
                         push               eax                                           // 0x005b6d64    50
                         mov.s              ecx, ebx                                      // 0x005b6d65    8bcb
                         call               _jmp_addr_0x0046c0d0                          // 0x005b6d67    e86453ebff
                         {disp32} mov       ebp, dword ptr [esp + 0x000000d0]             // 0x005b6d6c    8bac24d0000000
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x005b6d73    d94500
                         {disp32} mov       ecx, dword ptr [ebx + 0x00004854]             // 0x005b6d76    8b8b54480000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b6d7c    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x005b6d82    894c2428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b6d86    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b6d8c    e86fa61e00
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x005b6d91    d94508
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b6d94    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x6c], eax                   // 0x005b6d9a    8944246c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b6d9e    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b6da4    e857a61e00
                         {disp8} lea        ecx, dword ptr [esp + 0x6c]                   // 0x005b6da9    8d4c246c
                         {disp8} mov        dword ptr [esp + 0x70], eax                   // 0x005b6dad    89442470
                         {disp8} mov        dword ptr [esp + 0x74], 0x00000000            // 0x005b6db1    c744247400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b6db9    e8d2c22400
                         {disp8} fsubr      dword ptr [ebp + 0x04]                        // 0x005b6dbe    d86d04
                         {disp32} fstp      dword ptr [esp + 0x00000080]                  // 0x005b6dc1    d99c2480000000
                         call               _jmp_addr_0x0046c040                          // 0x005b6dc8    e87352ebff
                         {disp32} fmul      dword ptr [ebx + 0x00004834]                  // 0x005b6dcd    d88b34480000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b6dd3    d80db4a38a00
                         {disp32} fstp      dword ptr [esp + 0x00000088]                  // 0x005b6dd9    d99c2488000000
                         {disp32} fld       dword ptr [esp + 0x000000c8]                  // 0x005b6de0    d98424c8000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6de7    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6ded    dfe0
                         test               ah, 0x40                                      // 0x005b6def    f6c440
                         {disp32} jne       _jmp_addr_0x005b6f80                          // 0x005b6df2    0f8588010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b6df8    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x005b6dfe    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f800000            // 0x005b6e06    c74424140000803f
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x005b6e0e    c744241800000000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005b6e16    e86553f9ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x005b6e1b    8b15b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x005b6e21    a1bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x005b6e26    8b0dc01dea00
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005b6e2c    8954241c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b6e30    d944241c
                         {disp8} fsub       dword ptr [ebp + 0x00]                        // 0x005b6e34    d86500
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005b6e37    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x005b6e3b    894c2424
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b6e3f    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b6e43    d9442420
                         {disp8} fsub       dword ptr [ebp + 0x04]                        // 0x005b6e47    d86504
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b6e4a    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b6e4e    d9442424
                         {disp8} fsub       dword ptr [ebp + 0x08]                        // 0x005b6e52    d86508
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b6e55    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b6e59    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6e5d    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6e63    dfe0
                         test               ah, 0x40                                      // 0x005b6e65    f6c440
                         {disp8} je         _jmp_addr_0x005b6e8c                          // 0x005b6e68    7422
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b6e6a    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6e6e    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6e74    dfe0
                         test               ah, 0x40                                      // 0x005b6e76    f6c440
                         {disp8} je         _jmp_addr_0x005b6e8c                          // 0x005b6e79    7411
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b6e7b    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6e7f    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6e85    dfe0
                         test               ah, 0x40                                      // 0x005b6e87    f6c440
                         {disp8} jne        _jmp_addr_0x005b6ed0                          // 0x005b6e8a    7544
_jmp_addr_0x005b6e8c:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b6e8c    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b6e90    d84c241c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b6e94    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b6e98    d84c2424
                         faddp              st(1), st                                     // 0x005b6e9c    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b6e9e    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b6ea2    d84c2420
                         faddp              st(1), st                                     // 0x005b6ea6    dec1
                         fsqrt                                                            // 0x005b6ea8    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b6eaa    d83d90a38a00
                         fld                st(0)                                         // 0x005b6eb0    d9c0
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b6eb2    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b6eb6    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b6eba    d9442420
                         fmul               st, st(1)                                     // 0x005b6ebe    d8c9
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b6ec0    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005b6ec4    d9442424
                         fmul               st, st(1)                                     // 0x005b6ec8    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b6eca    d95c2424
                         fstp               st(0)                                         // 0x005b6ece    ddd8
_jmp_addr_0x005b6ed0:    {disp32} mov       edx, dword ptr [esp + 0x000000c8]             // 0x005b6ed0    8b9424c8000000
                         push               edx                                           // 0x005b6ed7    52
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x005b6ed8    8d542420
                         {disp32} lea       ecx, dword ptr [esp + 0x00000090]             // 0x005b6edc    8d8c2490000000
                         call               _jmp_addr_0x007fb180                          // 0x005b6ee3    e898422400
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b6ee8    d9442410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6eec    d9442414
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x005b6ef0    d984248c000000
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b6ef7    d84c2410
                         {disp32} fld       dword ptr [esp + 0x000000a4]                  // 0x005b6efb    d98424a4000000
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b6f02    d84c2418
                         faddp              st(1), st                                     // 0x005b6f06    dec1
                         {disp32} fld       dword ptr [esp + 0x00000098]                  // 0x005b6f08    d9842498000000
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b6f0f    d84c2414
                         faddp              st(1), st                                     // 0x005b6f13    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000b0]                  // 0x005b6f15    d88424b0000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b6f1c    d95c2410
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x005b6f20    d9842490000000
                         fmul               st, st(2)                                     // 0x005b6f27    d8ca
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x005b6f29    d98424a8000000
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b6f30    d84c2418
                         faddp              st(1), st                                     // 0x005b6f34    dec1
                         {disp32} fld       dword ptr [esp + 0x0000009c]                  // 0x005b6f36    d984249c000000
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b6f3d    d84c2414
                         faddp              st(1), st                                     // 0x005b6f41    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000b4]                  // 0x005b6f43    d88424b4000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b6f4a    d95c2414
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x005b6f4e    d98424a0000000
                         fmul               st, st(1)                                     // 0x005b6f55    d8c9
                         {disp32} fld       dword ptr [esp + 0x00000094]                  // 0x005b6f57    d9842494000000
                         fmul               st, st(3)                                     // 0x005b6f5e    d8cb
                         faddp              st(1), st                                     // 0x005b6f60    dec1
                         {disp32} fld       dword ptr [esp + 0x000000ac]                  // 0x005b6f62    d98424ac000000
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b6f69    d84c2418
                         faddp              st(1), st                                     // 0x005b6f6d    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000b8]                  // 0x005b6f6f    d88424b8000000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b6f76    d95c2418
                         fstp               st(0)                                         // 0x005b6f7a    ddd8
                         fstp               st(0)                                         // 0x005b6f7c    ddd8
                         {disp8} jmp        _jmp_addr_0x005b6fc9                          // 0x005b6f7e    eb49
_jmp_addr_0x005b6f80:    {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x005b6f80    8b442450
                         test               eax, eax                                      // 0x005b6f84    85c0
                         {disp8} jne        _jmp_addr_0x005b6fa1                          // 0x005b6f86    7519
                         test               edi, edi                                      // 0x005b6f88    85ff
                         {disp8} je         _jmp_addr_0x005b6fc9                          // 0x005b6f8a    743d
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x005b6f8c    d9842480000000
                         {disp32} fcomp     dword ptr [esp + 0x00000088]                  // 0x005b6f93    d89c2488000000
                         fnstsw             ax                                            // 0x005b6f9a    dfe0
                         test               ah, 0x01                                      // 0x005b6f9c    f6c401
                         {disp8} je         _jmp_addr_0x005b6fc9                          // 0x005b6f9f    7428
_jmp_addr_0x005b6fa1:    {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x005b6fa1    8b4d08
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x005b6fa4    8b4500
                         mov.s              edx, ecx                                      // 0x005b6fa7    8bd1
                         push               edx                                           // 0x005b6fa9    52
                         {disp8} mov        dword ptr [esp + 0x78], ecx                   // 0x005b6faa    894c2478
                         push               eax                                           // 0x005b6fae    50
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x005b6faf    8d4c2474
                         {disp8} mov        dword ptr [esp + 0x74], eax                   // 0x005b6fb3    89442474
                         call               _jmp_addr_0x004427b0                          // 0x005b6fb7    e8f4b7e8ff
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x005b6fbc    8d542410
                         {disp8} lea        ecx, dword ptr [esp + 0x6c]                   // 0x005b6fc0    8d4c246c
                         call               _jmp_addr_0x00803630                          // 0x005b6fc4    e867c62400
_jmp_addr_0x005b6fc9:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b6fc9    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6fcd    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6fd3    dfe0
                         test               ah, 0x40                                      // 0x005b6fd5    f6c440
                         {disp8} je         _jmp_addr_0x005b6ffc                          // 0x005b6fd8    7422
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b6fda    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6fde    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6fe4    dfe0
                         test               ah, 0x40                                      // 0x005b6fe6    f6c440
                         {disp8} je         _jmp_addr_0x005b6ffc                          // 0x005b6fe9    7411
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b6feb    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b6fef    d81d98a38a00
                         fnstsw             ax                                            // 0x005b6ff5    dfe0
                         test               ah, 0x40                                      // 0x005b6ff7    f6c440
                         {disp8} jne        _jmp_addr_0x005b703c                          // 0x005b6ffa    7540
_jmp_addr_0x005b6ffc:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b6ffc    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b7000    d84c2418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b7004    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b7008    d84c2414
                         faddp              st(1), st                                     // 0x005b700c    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b700e    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b7012    d84c2410
                         faddp              st(1), st                                     // 0x005b7016    dec1
                         fsqrt                                                            // 0x005b7018    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b701a    d83d90a38a00
                         fld                st(0)                                         // 0x005b7020    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b7022    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b7026    d95c2410
                         fld                st(0)                                         // 0x005b702a    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b702c    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b7030    d95c2414
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b7034    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b7038    d95c2418
_jmp_addr_0x005b703c:    call               _jmp_addr_0x0046c040                          // 0x005b703c    e8ff4febff
                         fstp               st(0)                                         // 0x005b7041    ddd8
                         {disp32} mov       eax, dword ptr [ebx + 0x00004858]             // 0x005b7043    8b8358480000
                         test               eax, eax                                      // 0x005b7049    85c0
                         {disp8} jne        _jmp_addr_0x005b7061                          // 0x005b704b    7514
                         {disp32} fld       dword ptr [esp + 0x000000c8]                  // 0x005b704d    d98424c8000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b7054    d81d98a38a00
                         fnstsw             ax                                            // 0x005b705a    dfe0
                         test               ah, 0x40                                      // 0x005b705c    f6c440
                         {disp8} jne        _jmp_addr_0x005b70ac                          // 0x005b705f    754b
_jmp_addr_0x005b7061:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b7061    d9442410
                         push               0x3ecccccd                                    // 0x005b7065    68cdcccc3e
                         push               0x0                                           // 0x005b706a    6a00
                         push               ecx                                           // 0x005b706c    51
                         fstp               dword ptr [esp]                               // 0x005b706d    d91c24
                         mov                ecx, 0x00d13fb0                               // 0x005b7070    b9b03fd100
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x005b7075    e8e60ce5ff
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b707a    d9442414
                         push               0x3ecccccd                                    // 0x005b707e    68cdcccc3e
                         push               0x0                                           // 0x005b7083    6a00
                         push               ecx                                           // 0x005b7085    51
                         fstp               dword ptr [esp]                               // 0x005b7086    d91c24
                         mov                ecx, 0x00d13fe0                               // 0x005b7089    b9e03fd100
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x005b708e    e8cd0ce5ff
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b7093    d9442418
                         push               0x3ecccccd                                    // 0x005b7097    68cdcccc3e
                         push               0x0                                           // 0x005b709c    6a00
                         push               ecx                                           // 0x005b709e    51
                         fstp               dword ptr [esp]                               // 0x005b709f    d91c24
                         mov                ecx, 0x00d14010                               // 0x005b70a2    b91040d100
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x005b70a7    e8b40ce5ff
_jmp_addr_0x005b70ac:    {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x005b70ac    db053481c300
                         mov                ecx, 0x00d13fb0                               // 0x005b70b2    b9b03fd100
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x005b70b7    d80d18c48a00
                         {disp32} fstp      dword ptr [esp + 0x00000080]                  // 0x005b70bd    d99c2480000000
                         {disp32} mov       esi, dword ptr [esp + 0x00000080]             // 0x005b70c4    8bb42480000000
                         push               esi                                           // 0x005b70cb    56
                         call               @Update__6ZoomerFf@12                         // 0x005b70cc    e84fb6e8ff
                         push               esi                                           // 0x005b70d1    56
                         mov                ecx, 0x00d13fe0                               // 0x005b70d2    b9e03fd100
                         call               @Update__6ZoomerFf@12                         // 0x005b70d7    e844b6e8ff
                         push               esi                                           // 0x005b70dc    56
                         mov                ecx, 0x00d14010                               // 0x005b70dd    b91040d100
                         call               @Update__6ZoomerFf@12                         // 0x005b70e2    e839b6e8ff
                         {disp32} fld       dword ptr [data_bytes + 0x34e010]             // 0x005b70e7    d9051040d100
                         push               ecx                                           // 0x005b70ed    51
                         fstp               dword ptr [esp]                               // 0x005b70ee    d91c24
                         {disp32} fld       dword ptr [data_bytes + 0x34dfe0]             // 0x005b70f1    d905e03fd100
                         push               ecx                                           // 0x005b70f7    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34dfb0]        // 0x005b70f8    8b0db03fd100
                         fstp               dword ptr [esp]                               // 0x005b70fe    d91c24
                         push               ecx                                           // 0x005b7101    51
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                   // 0x005b7102    8d4c2478
                         call               @__ct__7LHPointFfff@20                        // 0x005b7106    e8f5b5e8ff
                         {disp32} mov       esi, dword ptr [esp + 0x000000d4]             // 0x005b710b    8bb424d4000000
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x005b7112    8b44246c
                         {disp8} mov        ecx, dword ptr [esp + 0x70]                   // 0x005b7116    8b4c2470
                         mov.s              edx, esi                                      // 0x005b711a    8bd6
                         mov                dword ptr [edx], eax                          // 0x005b711c    8902
                         {disp8} mov        eax, dword ptr [esp + 0x74]                   // 0x005b711e    8b442474
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x005b7122    894a04
                         mov.s              ecx, esi                                      // 0x005b7125    8bce
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x005b7127    894208
                         call               _jmp_addr_0x00460710                          // 0x005b712a    e8e195eaff
                         fstp               st(0)                                         // 0x005b712f    ddd8
                         mov                ecx, dword ptr [esi]                          // 0x005b7131    8b0e
                         {disp32} mov       dword ptr [data_bytes + 0x34df60], ecx        // 0x005b7133    890d603fd100
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005b7139    8b5604
                         {disp32} mov       dword ptr [data_bytes + 0x34df64], edx        // 0x005b713c    8915643fd100
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x005b7142    8b4608
                         {disp32} mov       dword ptr [data_bytes + 0x34df68], eax        // 0x005b7145    a3683fd100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34e04c]        // 0x005b714a    a14c40d100
                         test               eax, eax                                      // 0x005b714f    85c0
                         {disp8} je         _jmp_addr_0x005b7182                          // 0x005b7151    742f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34df70]        // 0x005b7153    8b0d703fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34e04c], 0x00000000 // 0x005b7159    c7054c40d10000000000
                         {disp8} mov        dword ptr [ebp + 0x00], ecx                   // 0x005b7163    894d00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x34df74]        // 0x005b7166    8b15743fd100
                         {disp8} mov        dword ptr [ebp + 0x04], edx                   // 0x005b716c    895504
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34df78]        // 0x005b716f    a1783fd100
                         pop                edi                                           // 0x005b7174    5f
                         pop                esi                                           // 0x005b7175    5e
                         {disp8} mov        dword ptr [ebp + 0x08], eax                   // 0x005b7176    894508
                         pop                ebp                                           // 0x005b7179    5d
                         pop                ebx                                           // 0x005b717a    5b
                         add                esp, 0x000000ac                               // 0x005b717b    81c4ac000000
                         ret                                                              // 0x005b7181    c3
_jmp_addr_0x005b7182:    {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x005b7182    8b4c2428
                         push               ecx                                           // 0x005b7186    51
                         mov.s              edx, ebp                                      // 0x005b7187    8bd5
                         {disp32} lea       ecx, dword ptr [ebx + 0x0000485c]             // 0x005b7189    8d8b5c480000
                         call               _jmp_addr_0x0074caf0                          // 0x005b718f    e85c591900
                         pop                edi                                           // 0x005b7194    5f
                         pop                esi                                           // 0x005b7195    5e
                         pop                ebp                                           // 0x005b7196    5d
                         pop                ebx                                           // 0x005b7197    5b
                         add                esp, 0x000000ac                               // 0x005b7198    81c4ac000000
                         ret                                                              // 0x005b719e    c3
                         nop                                                              // 0x005b719f    90
?Update@HandStateNormal@@UAEXMPAULHMatrix@@@Z:
                         sub                esp, 0x40                                     // 0x005b71a0    83ec40
                         push               ebx                                           // 0x005b71a3    53
                         push               ebp                                           // 0x005b71a4    55
                         push               esi                                           // 0x005b71a5    56
                         push               edi                                           // 0x005b71a6    57
                         push               0x1                                           // 0x005b71a7    6a01
                         push               0x1                                           // 0x005b71a9    6a01
                         mov.s              esi, ecx                                      // 0x005b71ab    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b71ad    8b4604
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                   // 0x005b71b0    8d4c245c
                         push               ecx                                           // 0x005b71b4    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x005b71b5    8d542420
                         push               edx                                           // 0x005b71b9    52
                         {disp8} lea        ecx, dword ptr [eax + 0x78]                   // 0x005b71ba    8d4878
                         push               ecx                                           // 0x005b71bd    51
                         {disp8} mov        ecx, dword ptr [esp + 0x68]                   // 0x005b71be    8b4c2468
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x005b71c2    8d542424
                         push               edx                                           // 0x005b71c6    52
                         push               0x0                                           // 0x005b71c7    6a00
                         push               ecx                                           // 0x005b71c9    51
                         push               eax                                           // 0x005b71ca    50
                         call               _jmp_addr_0x005b5e70                          // 0x005b71cb    e8a0ecffff
                         {disp8} mov        edx, dword ptr [esp + 0x78]                   // 0x005b71d0    8b542478
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b71d4    8b4e04
                         add                esp, 0x24                                     // 0x005b71d7    83c424
                         push               0x0                                           // 0x005b71da    6a00
                         push               edx                                           // 0x005b71dc    52
                         call               @GetAnim__9MorphableFll@16                    // 0x005b71dd    e86e240600
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x005b71e2    8b5608
                         mov.s              edi, eax                                      // 0x005b71e5    8bf8
                         {disp32} mov       eax, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x005b71e7    a13481c300
                         add.s              eax, edx                                      // 0x005b71ec    03c2
                         cdq                                                              // 0x005b71ee    99
                         idiv               dword ptr [edi]                               // 0x005b71ef    f73f
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x005b71f1    8b460c
                         cmp                eax, -0x01                                    // 0x005b71f4    83f8ff
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x005b71f7    8b4c2454
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x005b71fb    895608
                         {disp8} jne        _jmp_addr_0x005b7229                          // 0x005b71fe    7529
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x005b7200    894e0c
_jmp_addr_0x005b7203:    {disp8} mov        ebp, dword ptr [esp + 0x58]                   // 0x005b7203    8b6c2458
_jmp_addr_0x005b7207:    cmp                ecx, 0x0f                                     // 0x005b7207    83f90f
                         {disp8} jne        _jmp_addr_0x005b724e                          // 0x005b720a    7542
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b720c    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b7212    e839e6f9ff
                         cmp                dword ptr [eax + 0x44], 0x15                  // 0x005b7217    83784415
                         {disp8} jne        _jmp_addr_0x005b7247                          // 0x005b721b    752a
                         mov                eax, dword ptr [edi]                          // 0x005b721d    8b07
                         cdq                                                              // 0x005b721f    99
                         sub.s              eax, edx                                      // 0x005b7220    2bc2
                         sar                eax, 1                                        // 0x005b7222    d1f8
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x005b7224    894608
                         {disp8} jmp        _jmp_addr_0x005b724e                          // 0x005b7227    eb25
_jmp_addr_0x005b7229:    cmp.s              ecx, eax                                      // 0x005b7229    3bc8
                         {disp8} je         _jmp_addr_0x005b7203                          // 0x005b722b    74d6
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x005b722d    894e0c
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7230    8b4e04
                         call               _jmp_addr_0x0046c500                          // 0x005b7233    e8c852ebff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b7238    8b4604
                         {disp32} mov       ebp, dword ptr [eax + 0x000047f0]             // 0x005b723b    8ba8f0470000
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x005b7241    8b4c2454
                         {disp8} jmp        _jmp_addr_0x005b7207                          // 0x005b7245    ebc0
_jmp_addr_0x005b7247:    {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x005b7247    c7460800000000
_jmp_addr_0x005b724e:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b724e    8b4e04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005b7251    8d542414
                         push               edx                                           // 0x005b7255    52
                         {disp8} lea        eax, dword ptr [ecx + 0x78]                   // 0x005b7256    8d4178
                         push               eax                                           // 0x005b7259    50
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x005b725a    8d542428
                         push               edx                                           // 0x005b725e    52
                         call               _jmp_addr_0x0046e160                          // 0x005b725f    e8fc6eebff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b7264    8b4604
                         {disp32} mov       ecx, dword ptr [eax + 0x000047fc]             // 0x005b7267    8b88fc470000
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x005b726d    8b5608
                         push               0x1                                           // 0x005b7270    6a01
                         push               0x0                                           // 0x005b7272    6a00
                         push               ecx                                           // 0x005b7274    51
                         {disp32} mov       ecx, dword ptr [eax + 0x000047f8]             // 0x005b7275    8b88f8470000
                         push               edx                                           // 0x005b727b    52
                         {disp32} mov       edx, dword ptr [eax + 0x000047f4]             // 0x005b727c    8b90f4470000
                         push               ecx                                           // 0x005b7282    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00000098]             // 0x005b7283    8b8898000000
                         push               edx                                           // 0x005b7289    52
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x4 + 0x000000b4] // 0x005b728a    8b9488b4000000
                         push               edx                                           // 0x005b7291    52
                         push               ebp                                           // 0x005b7292    55
                         mov.s              ecx, edi                                      // 0x005b7293    8bcf
                         call               _jmp_addr_0x00860e00                          // 0x005b7295    e8669b2a00
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x005b729a    8b442454
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b729e    8b4e04
                         push               0x0                                           // 0x005b72a1    6a00
                         inc                eax                                           // 0x005b72a3    40
                         push               eax                                           // 0x005b72a4    50
                         call               @GetAnim__9MorphableFll@16                    // 0x005b72a5    e8a6230600
                         {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x005b72aa    8b7e04
                         {disp32} fild      dword ptr [edi + 0x0000485c]                  // 0x005b72ad    db875c480000
                         mov.s              ebx, eax                                      // 0x005b72b3    8bd8
                         {disp32} fsubr     dword ptr [edi + 0x000048b8]                  // 0x005b72b5    d8afb8480000
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x005b72bb    d95c2458
                         {disp32} fld       dword ptr [rdata_bytes + 0x57b88]             // 0x005b72bf    d905880b9000
                         fchs                                                             // 0x005b72c5    d9e0
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b72c7    d9442458
                         fcomp              st(1)                                         // 0x005b72cb    d8d9
                         fnstsw             ax                                            // 0x005b72cd    dfe0
                         test               ah, 0x41                                      // 0x005b72cf    f6c441
                         {disp8} jne        _jmp_addr_0x005b72f3                          // 0x005b72d2    751f
                         fstp               st(0)                                         // 0x005b72d4    ddd8
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b72d6    d9442458
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57b88]             // 0x005b72da    d81d880b9000
                         fnstsw             ax                                            // 0x005b72e0    dfe0
                         test               ah, 0x01                                      // 0x005b72e2    f6c401
                         {disp8} je         _jmp_addr_0x005b72ed                          // 0x005b72e5    7406
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b72e7    d9442458
                         {disp8} jmp        _jmp_addr_0x005b72f3                          // 0x005b72eb    eb06
_jmp_addr_0x005b72ed:    {disp32} fld       dword ptr [rdata_bytes + 0x57b88]             // 0x005b72ed    d905880b9000
_jmp_addr_0x005b72f3:    test               ebx, ebx                                      // 0x005b72f3    85db
                         {disp8} je         _jmp_addr_0x005b735e                          // 0x005b72f5    7467
                         fld                st(0)                                         // 0x005b72f7    d9c0
                         fabs                                                             // 0x005b72f9    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x005b72fb    dc1dd8798c00
                         fnstsw             ax                                            // 0x005b7301    dfe0
                         test               ah, 0x41                                      // 0x005b7303    f6c441
                         {disp8} jne        _jmp_addr_0x005b735e                          // 0x005b7306    7556
                         {disp32} fld       dword ptr [rdata_bytes + 0x57b88]             // 0x005b7308    d905880b9000
                         push               0x0                                           // 0x005b730e    6a00
                         fadd               st, st(1)                                     // 0x005b7310    d8c1
                         push               0x0                                           // 0x005b7312    6a00
                         {disp32} fld       dword ptr [rdata_bytes + 0x57b88]             // 0x005b7314    d905880b9000
                         fadd.s             st(0), st(0)                                  // 0x005b731a    dcc0
                         fdivp              st(1), st                                     // 0x005b731c    def9
                         fimul              dword ptr [ebx]                               // 0x005b731e    da0b
                         call               _jmp_addr_0x007a1400                          // 0x005b7320    e8dba01e00
                         fstp               st(0)                                         // 0x005b7325    ddd8
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f8]             // 0x005b7327    8b8ff8470000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f4]             // 0x005b732d    8b97f4470000
                         push               eax                                           // 0x005b7333    50
                         {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x005b7334    8b8798000000
                         push               ecx                                           // 0x005b733a    51
                         {disp32} mov       ecx, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x005b733b    8b8c87b4000000
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x005b7342    8b431c
                         push               edx                                           // 0x005b7345    52
                         dec                eax                                           // 0x005b7346    48
                         cdq                                                              // 0x005b7347    99
                         sub.s              eax, edx                                      // 0x005b7348    2bc2
                         {disp8} mov        edx, dword ptr [ebx + 0x34]                   // 0x005b734a    8b5334
                         push               ecx                                           // 0x005b734d    51
                         sar                eax, 1                                        // 0x005b734e    d1f8
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x005b7350    8b0482
                         push               eax                                           // 0x005b7353    50
                         push               ebp                                           // 0x005b7354    55
                         mov.s              ecx, ebx                                      // 0x005b7355    8bcb
                         call               _jmp_addr_0x00861ee0                          // 0x005b7357    e884ab2a00
                         {disp8} jmp        _jmp_addr_0x005b7360                          // 0x005b735c    eb02
_jmp_addr_0x005b735e:    fstp               st(0)                                         // 0x005b735e    ddd8
_jmp_addr_0x005b7360:    {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x005b7360    8b4c2454
                         add                ecx, 0x2                                      // 0x005b7364    83c102
                         push               0x0                                           // 0x005b7367    6a00
                         push               ecx                                           // 0x005b7369    51
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b736a    8b4e04
                         call               @GetAnim__9MorphableFll@16                    // 0x005b736d    e8de220600
                         {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x005b7372    8b7e04
                         {disp32} fild      dword ptr [edi + 0x00004860]                  // 0x005b7375    db8760480000
                         mov.s              ebx, eax                                      // 0x005b737b    8bd8
                         {disp32} fsub      dword ptr [edi + 0x000048bc]                  // 0x005b737d    d8a7bc480000
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x005b7383    d95c2458
                         {disp32} fld       dword ptr [rdata_bytes + 0x57b8c]             // 0x005b7387    d9058c0b9000
                         fchs                                                             // 0x005b738d    d9e0
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b738f    d9442458
                         fcomp              st(1)                                         // 0x005b7393    d8d9
                         fnstsw             ax                                            // 0x005b7395    dfe0
                         test               ah, 0x41                                      // 0x005b7397    f6c441
                         {disp8} jne        _jmp_addr_0x005b73bb                          // 0x005b739a    751f
                         fstp               st(0)                                         // 0x005b739c    ddd8
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b739e    d9442458
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57b8c]             // 0x005b73a2    d81d8c0b9000
                         fnstsw             ax                                            // 0x005b73a8    dfe0
                         test               ah, 0x01                                      // 0x005b73aa    f6c401
                         {disp8} je         _jmp_addr_0x005b73b5                          // 0x005b73ad    7406
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005b73af    d9442458
                         {disp8} jmp        _jmp_addr_0x005b73bb                          // 0x005b73b3    eb06
_jmp_addr_0x005b73b5:    {disp32} fld       dword ptr [rdata_bytes + 0x57b8c]             // 0x005b73b5    d9058c0b9000
_jmp_addr_0x005b73bb:    test               ebx, ebx                                      // 0x005b73bb    85db
                         {disp8} je         _jmp_addr_0x005b742a                          // 0x005b73bd    746b
                         {disp32} fld       dword ptr [edi + 0x000048bc]                  // 0x005b73bf    d987bc480000
                         fabs                                                             // 0x005b73c5    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x005b73c7    dc1dd8798c00
                         fnstsw             ax                                            // 0x005b73cd    dfe0
                         test               ah, 0x41                                      // 0x005b73cf    f6c441
                         {disp8} jne        _jmp_addr_0x005b742a                          // 0x005b73d2    7556
                         {disp32} fld       dword ptr [rdata_bytes + 0x57b8c]             // 0x005b73d4    d9058c0b9000
                         push               0x0                                           // 0x005b73da    6a00
                         fadd               st, st(1)                                     // 0x005b73dc    d8c1
                         push               0x0                                           // 0x005b73de    6a00
                         {disp32} fld       dword ptr [rdata_bytes + 0x57b8c]             // 0x005b73e0    d9058c0b9000
                         fadd.s             st(0), st(0)                                  // 0x005b73e6    dcc0
                         fdivp              st(1), st                                     // 0x005b73e8    def9
                         fimul              dword ptr [ebx]                               // 0x005b73ea    da0b
                         call               _jmp_addr_0x007a1400                          // 0x005b73ec    e80fa01e00
                         fstp               st(0)                                         // 0x005b73f1    ddd8
                         {disp32} mov       edx, dword ptr [edi + 0x000047f8]             // 0x005b73f3    8b97f8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000098]             // 0x005b73f9    8b8f98000000
                         push               eax                                           // 0x005b73ff    50
                         {disp32} mov       eax, dword ptr [edi + 0x000047f4]             // 0x005b7400    8b87f4470000
                         push               edx                                           // 0x005b7406    52
                         {disp32} mov       edx, dword ptr [edi + ecx * 0x4 + 0x000000b4] // 0x005b7407    8b948fb4000000
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]                   // 0x005b740e    8b4b34
                         push               eax                                           // 0x005b7411    50
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x005b7412    8b431c
                         push               edx                                           // 0x005b7415    52
                         dec                eax                                           // 0x005b7416    48
                         cdq                                                              // 0x005b7417    99
                         sub.s              eax, edx                                      // 0x005b7418    2bc2
                         sar                eax, 1                                        // 0x005b741a    d1f8
                         mov                edx, dword ptr [ecx + eax * 0x4]              // 0x005b741c    8b1481
                         push               edx                                           // 0x005b741f    52
                         push               ebp                                           // 0x005b7420    55
                         mov.s              ecx, ebx                                      // 0x005b7421    8bcb
                         call               _jmp_addr_0x00861ee0                          // 0x005b7423    e8b8aa2a00
                         {disp8} jmp        _jmp_addr_0x005b742c                          // 0x005b7428    eb02
_jmp_addr_0x005b742a:    fstp               st(0)                                         // 0x005b742a    ddd8
_jmp_addr_0x005b742c:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b742c    8b4604
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x005b742f    8b9098000000
                         {disp32} mov       eax, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x005b7435    8b8490b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005b743c    8d4c2420
                         push               ecx                                           // 0x005b7440    51
                         push               eax                                           // 0x005b7441    50
                         push               ebp                                           // 0x005b7442    55
                         call               _jmp_addr_0x00839f10                          // 0x005b7443    e8c82a2800
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x005b7448    8b7604
                         {disp32} mov       ecx, dword ptr [esi + 0x0000485c]             // 0x005b744b    8b8e5c480000
                         add                esp, 0x0c                                     // 0x005b7451    83c40c
                         {disp32} mov       dword ptr [esi + 0x0000486c], ecx             // 0x005b7454    898e6c480000
                         {disp32} mov       edx, dword ptr [esi + 0x00004860]             // 0x005b745a    8b9660480000
                         pop                edi                                           // 0x005b7460    5f
                         {disp32} mov       dword ptr [esi + 0x00004870], edx             // 0x005b7461    899670480000
                         pop                esi                                           // 0x005b7467    5e
                         pop                ebp                                           // 0x005b7468    5d
                         pop                ebx                                           // 0x005b7469    5b
                         add                esp, 0x40                                     // 0x005b746a    83c440
                         ret                0x0008                                        // 0x005b746d    c20800
_globl_ct_0x005b7470:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005b7470    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005b7476    b001
                         test               al, cl                                        // 0x005b7478    84c8
                         {disp8} jne        _jmp_addr_0x005b7484                          // 0x005b747a    7508
                         or.s               cl, al                                        // 0x005b747c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005b747e    880d34c9fa00
_jmp_addr_0x005b7484:    {disp32} jmp       _jmp_addr_0x005b7490                          // 0x005b7484    e907000000
                         nop                                                              // 0x005b7489    90
                         nop                                                              // 0x005b748a    90
                         nop                                                              // 0x005b748b    90
                         nop                                                              // 0x005b748c    90
                         nop                                                              // 0x005b748d    90
                         nop                                                              // 0x005b748e    90
                         nop                                                              // 0x005b748f    90
_jmp_addr_0x005b7490:    push               0x00407870                                    // 0x005b7490    6870784000
                         call               _atexit                                       // 0x005b7495    e8f7e22000
                         pop                ecx                                           // 0x005b749a    59
                         ret                                                              // 0x005b749b    c3
                         nop                                                              // 0x005b749c    90
                         nop                                                              // 0x005b749d    90
                         nop                                                              // 0x005b749e    90
                         nop                                                              // 0x005b749f    90
_globl_ct_0x005b74a0:    {disp32} jmp       _jmp_addr_0x005b74b0                          // 0x005b74a0    e90b000000
                         nop                                                              // 0x005b74a5    90
                         nop                                                              // 0x005b74a6    90
                         nop                                                              // 0x005b74a7    90
                         nop                                                              // 0x005b74a8    90
                         nop                                                              // 0x005b74a9    90
                         nop                                                              // 0x005b74aa    90
                         nop                                                              // 0x005b74ab    90
                         nop                                                              // 0x005b74ac    90
                         nop                                                              // 0x005b74ad    90
                         nop                                                              // 0x005b74ae    90
                         nop                                                              // 0x005b74af    90
_jmp_addr_0x005b74b0:    {disp32} fld       dword ptr [rdata_bytes + 0x57bbc]             // 0x005b74b0    d905bc0b9000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57bb8]             // 0x005b74b6    d80db80b9000
                         {disp32} fstp      dword ptr [data_bytes + 0x34e054]             // 0x005b74bc    d91d5440d100
                         ret                                                              // 0x005b74c2    c3
                         nop                                                              // 0x005b74c3    90
                         nop                                                              // 0x005b74c4    90
                         nop                                                              // 0x005b74c5    90
                         nop                                                              // 0x005b74c6    90
                         nop                                                              // 0x005b74c7    90
                         nop                                                              // 0x005b74c8    90
                         nop                                                              // 0x005b74c9    90
                         nop                                                              // 0x005b74ca    90
                         nop                                                              // 0x005b74cb    90
                         nop                                                              // 0x005b74cc    90
                         nop                                                              // 0x005b74cd    90
                         nop                                                              // 0x005b74ce    90
                         nop                                                              // 0x005b74cf    90
_globl_ct_0x005b74d0:    {disp32} jmp       _jmp_addr_0x005b74e0                          // 0x005b74d0    e90b000000
                         nop                                                              // 0x005b74d5    90
                         nop                                                              // 0x005b74d6    90
                         nop                                                              // 0x005b74d7    90
                         nop                                                              // 0x005b74d8    90
                         nop                                                              // 0x005b74d9    90
                         nop                                                              // 0x005b74da    90
                         nop                                                              // 0x005b74db    90
                         nop                                                              // 0x005b74dc    90
                         nop                                                              // 0x005b74dd    90
                         nop                                                              // 0x005b74de    90
                         nop                                                              // 0x005b74df    90
_jmp_addr_0x005b74e0:    {disp32} mov       dword ptr [data_bytes + 0x34e050], 0xffffffff // 0x005b74e0    c7055040d100ffffffff
                         ret                                                              // 0x005b74ea    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005b74eb    e809a3e4ff
@__ct__17HandStatePlayAnimFP5CHand@12:    mov.s              eax, ecx                                      // 0x005b74f0    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005b74f2    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005b74f6    894804
                         mov                dword ptr [eax], 0x00900bc4                   // 0x005b74f9    c700c40b9000
                         {disp8} mov        dword ptr [eax + 0x18], 0x00000000            // 0x005b74ff    c7401800000000
                         ret                0x0004                                        // 0x005b7506    c20400
                         nop                                                              // 0x005b7509    90
                         nop                                                              // 0x005b750a    90
                         nop                                                              // 0x005b750b    90
                         nop                                                              // 0x005b750c    90
                         nop                                                              // 0x005b750d    90
                         nop                                                              // 0x005b750e    90
                         nop                                                              // 0x005b750f    90
?Enter@HandStatePlayAnim@@UAEXXZ:
                         {disp8} mov        dword ptr [ecx + 0x18], 0x00000000            // 0x005b7510    c7411800000000
                         ret                                                              // 0x005b7517    c3
                         nop                                                              // 0x005b7518    90
                         nop                                                              // 0x005b7519    90
                         nop                                                              // 0x005b751a    90
                         nop                                                              // 0x005b751b    90
                         nop                                                              // 0x005b751c    90
                         nop                                                              // 0x005b751d    90
                         nop                                                              // 0x005b751e    90
                         nop                                                              // 0x005b751f    90
?Update@HandStatePlayAnim@@UAEXMPAULHMatrix@@@Z:
                         sub                esp, 0x3c                                     // 0x005b7520    83ec3c
                         push               esi                                           // 0x005b7523    56
                         mov.s              esi, ecx                                      // 0x005b7524    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x005b7526    8b461c
                         test               eax, eax                                      // 0x005b7529    85c0
                         {disp8} jne        _jmp_addr_0x005b7534                          // 0x005b752b    7507
                         {disp8} mov        dword ptr [esi + 0x1c], 0x00000001            // 0x005b752d    c7461c01000000
_jmp_addr_0x005b7534:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005b7534    8b0d5c19d000
                         push               ebx                                           // 0x005b753a    53
                         push               edi                                           // 0x005b753b    57
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b753c    e80fe3f9ff
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x005b7541    8b4614
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7544    8b4e04
                         push               0x0                                           // 0x005b7547    6a00
                         push               eax                                           // 0x005b7549    50
                         call               @GetAnim__9MorphableFll@16                    // 0x005b754a    e801210600
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005b754f    8b5604
                         mov.s              edi, eax                                      // 0x005b7552    8bf8
                         add                edx, 0x78                                     // 0x005b7554    83c278
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                   // 0x005b7557    8d4e08
                         mov                eax, dword ptr [ecx]                          // 0x005b755a    8b01
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x005b755c    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f800000            // 0x005b7564    c74424100000803f
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x005b756c    c744241400000000
                         mov                dword ptr [edx], eax                          // 0x005b7574    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x005b7576    8b4104
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x005b7579    894204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005b757c    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x005b757f    894a08
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7582    8b4e04
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x005b7585    8d54240c
                         push               edx                                           // 0x005b7589    52
                         {disp8} lea        eax, dword ptr [ecx + 0x78]                   // 0x005b758a    8d4178
                         push               eax                                           // 0x005b758d    50
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x005b758e    8d542420
                         push               edx                                           // 0x005b7592    52
                         call               _jmp_addr_0x0046e160                          // 0x005b7593    e8c86bebff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b7598    8b4604
                         {disp32} mov       ecx, dword ptr [eax + 0x000047fc]             // 0x005b759b    8b88fc470000
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x005b75a1    8b5618
                         {disp8} mov        ebx, dword ptr [esp + 0x50]                   // 0x005b75a4    8b5c2450
                         push               0x1                                           // 0x005b75a8    6a01
                         push               0x0                                           // 0x005b75aa    6a00
                         push               ecx                                           // 0x005b75ac    51
                         {disp32} mov       ecx, dword ptr [eax + 0x000047f8]             // 0x005b75ad    8b88f8470000
                         push               edx                                           // 0x005b75b3    52
                         {disp32} mov       edx, dword ptr [eax + 0x000047f4]             // 0x005b75b4    8b90f4470000
                         push               ecx                                           // 0x005b75ba    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00000098]             // 0x005b75bb    8b8898000000
                         push               edx                                           // 0x005b75c1    52
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x4 + 0x000000b4] // 0x005b75c2    8b9488b4000000
                         push               edx                                           // 0x005b75c9    52
                         push               ebx                                           // 0x005b75ca    53
                         mov.s              ecx, edi                                      // 0x005b75cb    8bcf
                         call               _jmp_addr_0x00860e00                          // 0x005b75cd    e82e982a00
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b75d2    8b4604
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x005b75d5    8b9098000000
                         {disp32} mov       eax, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x005b75db    8b8490b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x005b75e2    8d4c2418
                         push               ecx                                           // 0x005b75e6    51
                         push               eax                                           // 0x005b75e7    50
                         push               ebx                                           // 0x005b75e8    53
                         call               _jmp_addr_0x00839f10                          // 0x005b75e9    e822292800
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b75ee    8b4604
                         {disp32} mov       ecx, dword ptr [eax + 0x0000485c]             // 0x005b75f1    8b885c480000
                         {disp32} mov       dword ptr [eax + 0x0000486c], ecx             // 0x005b75f7    89886c480000
                         {disp32} mov       edx, dword ptr [eax + 0x00004860]             // 0x005b75fd    8b9060480000
                         {disp32} mov       dword ptr [eax + 0x00004870], edx             // 0x005b7603    899070480000
                         {disp32} mov       eax, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x005b7609    a13481c300
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x005b760e    8b5618
                         add.s              edx, eax                                      // 0x005b7611    03d0
                         add                esp, 0x0c                                     // 0x005b7613    83c40c
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x005b7616    895618
                         mov                ecx, dword ptr [edi]                          // 0x005b7619    8b0f
                         mov.s              eax, edx                                      // 0x005b761b    8bc2
                         cmp.s              eax, ecx                                      // 0x005b761d    3bc1
                         pop                edi                                           // 0x005b761f    5f
                         pop                ebx                                           // 0x005b7620    5b
                         {disp8} jl         _jmp_addr_0x005b762d                          // 0x005b7621    7c0a
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7623    8b4e04
                         {disp32} mov       byte ptr [ecx + 0x0000491c], 0x00             // 0x005b7626    c6811c49000000
_jmp_addr_0x005b762d:    pop                esi                                           // 0x005b762d    5e
                         add                esp, 0x3c                                     // 0x005b762e    83c43c
                         ret                0x0008                                        // 0x005b7631    c20800
                         nop                                                              // 0x005b7634    90
                         nop                                                              // 0x005b7635    90
                         nop                                                              // 0x005b7636    90
                         nop                                                              // 0x005b7637    90
                         nop                                                              // 0x005b7638    90
                         nop                                                              // 0x005b7639    90
                         nop                                                              // 0x005b763a    90
                         nop                                                              // 0x005b763b    90
                         nop                                                              // 0x005b763c    90
                         nop                                                              // 0x005b763d    90
                         nop                                                              // 0x005b763e    90
                         nop                                                              // 0x005b763f    90
_globl_ct_0x005b7640:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005b7640    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005b7646    b001
                         test               al, cl                                        // 0x005b7648    84c8
                         {disp8} jne        _jmp_addr_0x005b7654                          // 0x005b764a    7508
                         or.s               cl, al                                        // 0x005b764c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005b764e    880d34c9fa00
_jmp_addr_0x005b7654:    {disp32} jmp       _jmp_addr_0x005b7660                          // 0x005b7654    e907000000
                         nop                                                              // 0x005b7659    90
                         nop                                                              // 0x005b765a    90
                         nop                                                              // 0x005b765b    90
                         nop                                                              // 0x005b765c    90
                         nop                                                              // 0x005b765d    90
                         nop                                                              // 0x005b765e    90
                         nop                                                              // 0x005b765f    90
_jmp_addr_0x005b7660:    push               0x00407870                                    // 0x005b7660    6870784000
                         call               _atexit                                       // 0x005b7665    e827e12000
                         pop                ecx                                           // 0x005b766a    59
                         ret                                                              // 0x005b766b    c3
                         nop                                                              // 0x005b766c    90
                         nop                                                              // 0x005b766d    90
                         nop                                                              // 0x005b766e    90
                         nop                                                              // 0x005b766f    90
@__ct__14HandStateTotemFP5CHand@12:    mov.s              eax, ecx                                      // 0x005b7670    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005b7672    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005b7676    894804
                         mov                dword ptr [eax], 0x00900be4                   // 0x005b7679    c700e40b9000
                         ret                0x0004                                        // 0x005b767f    c20400
                         nop                                                              // 0x005b7682    90
                         nop                                                              // 0x005b7683    90
                         nop                                                              // 0x005b7684    90
                         nop                                                              // 0x005b7685    90
                         nop                                                              // 0x005b7686    90
                         nop                                                              // 0x005b7687    90
                         nop                                                              // 0x005b7688    90
                         nop                                                              // 0x005b7689    90
                         nop                                                              // 0x005b768a    90
                         nop                                                              // 0x005b768b    90
                         nop                                                              // 0x005b768c    90
                         nop                                                              // 0x005b768d    90
                         nop                                                              // 0x005b768e    90
                         nop                                                              // 0x005b768f    90
?Enter@HandStateTotem@@UAEXXZ:
                         sub                esp, 0x10                                     // 0x005b7690    83ec10
                         push               esi                                           // 0x005b7693    56
                         mov.s              esi, ecx                                      // 0x005b7694    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b7696    8b0d5c19d000
                         push               edi                                           // 0x005b769c    57
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b769d    e8aee1f9ff
                         push               0x0                                           // 0x005b76a2    6a00
                         push               0x009dd560                                    // 0x005b76a4    6860d59d00
                         push               0x009c7f50                                    // 0x005b76a9    68507f9c00
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x005b76ae    c7460800000000
                         {disp32} mov       edi, dword ptr [eax + 0x000003c8]             // 0x005b76b5    8bb8c8030000
                         push               0x0                                           // 0x005b76bb    6a00
                         push               edi                                           // 0x005b76bd    57
                         call               ___RTDynamicCast                              // 0x005b76be    e856e32000
                         {disp8} mov        eax, dword ptr [edi + 0x40]                   // 0x005b76c3    8b4740
                         add                esp, 0x14                                     // 0x005b76c6    83c414
                         test               eax, eax                                      // 0x005b76c9    85c0
                         {disp8} je         _jmp_addr_0x005b76e5                          // 0x005b76cb    7418
                         mov                eax, dword ptr [edi]                          // 0x005b76cd    8b07
                         mov.s              ecx, edi                                      // 0x005b76cf    8bcf
                         call               dword ptr [eax + 0x42c]                       // 0x005b76d1    ff902c040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57bdc]             // 0x005b76d7    d80ddc0b9000
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x005b76dd    8b4f40
                         {disp8} fadd       dword ptr [ecx + 0x3c]                        // 0x005b76e0    d8413c
                         {disp8} jmp        _jmp_addr_0x005b76f8                          // 0x005b76e3    eb13
_jmp_addr_0x005b76e5:    {disp8} mov        edx, dword ptr [edi + 0x1c]                   // 0x005b76e5    8b571c
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x005b76e8    8d4f14
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x005b76eb    89542408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b76ef    e89cb92400
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x005b76f4    d8442408
_jmp_addr_0x005b76f8:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b76f8    8b4e04
                         {disp32} fstp      dword ptr [esi + 0x000000a8]                  // 0x005b76fb    d99ea8000000
                         push               edi                                           // 0x005b7701    57
                         call               _jmp_addr_0x0046db70                          // 0x005b7702    e86964ebff
                         push               ecx                                           // 0x005b7707    51
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7708    8b4e04
                         fstp               dword ptr [esp]                               // 0x005b770b    d91c24
                         call               _jmp_addr_0x0046c0d0                          // 0x005b770e    e8bd49ebff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b7713    8b4604
                         {disp32} mov       ecx, dword ptr [eax + 0x00004854]             // 0x005b7716    8b8854480000
                         push               ecx                                           // 0x005b771c    51
                         {disp8} lea        edx, dword ptr [eax + 0x78]                   // 0x005b771d    8d5078
                         {disp32} lea       ecx, dword ptr [eax + 0x0000485c]             // 0x005b7720    8d885c480000
                         call               _jmp_addr_0x0074caf0                          // 0x005b7726    e8c5531900
                         add                edi, 0x14                                     // 0x005b772b    83c714
                         mov.s              ecx, edi                                      // 0x005b772e    8bcf
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b7730    e85bb92400
                         fstp               st(0)                                         // 0x005b7735    ddd8
                         fild               dword ptr [edi]                               // 0x005b7737    db07
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005b7739    8b5604
                         push               0xffff8000                                    // 0x005b773c    680080ffff
                         push               0xffff8000                                    // 0x005b7741    680080ffff
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005b7746    d80da4a38a00
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x005b774c    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005b774f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b7755    d95c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005b7759    8b4c241c
                         {disp8} fstp       dword ptr [edx + 0x78]                        // 0x005b775d    d95a78
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b7760    8b4604
                         {disp32} mov       dword ptr [eax + 0x00000080], ecx             // 0x005b7763    898880000000
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005b7769    8b5604
                         {disp32} mov       eax, dword ptr [esi + 0x000000a8]             // 0x005b776c    8b86a8000000
                         mov                ecx, 0x00e85204                               // 0x005b7772    b90452e800
                         {disp8} mov        dword ptr [edx + 0x7c], eax                   // 0x005b7777    89427c
                         call               _jmp_addr_0x007e5550                          // 0x005b777a    e8d1dd2200
                         pop                edi                                           // 0x005b777f    5f
                         pop                esi                                           // 0x005b7780    5e
                         add                esp, 0x10                                     // 0x005b7781    83c410
                         ret                                                              // 0x005b7784    c3
                         nop                                                              // 0x005b7785    90
                         nop                                                              // 0x005b7786    90
                         nop                                                              // 0x005b7787    90
                         nop                                                              // 0x005b7788    90
                         nop                                                              // 0x005b7789    90
                         nop                                                              // 0x005b778a    90
                         nop                                                              // 0x005b778b    90
                         nop                                                              // 0x005b778c    90
                         nop                                                              // 0x005b778d    90
                         nop                                                              // 0x005b778e    90
                         nop                                                              // 0x005b778f    90
?Exit@HandStateTotem@@UAEXXZ:
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2d0], 0x00000000 // 0x005b7790    c705d052e80000000000
                         ret                                                              // 0x005b779a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005b779b    e859a0e4ff
?Update@HandStateTotem@@UAEXMPAULHMatrix@@@Z:
                         push               ebp                                           // 0x005b77a0    55
                         mov.s              ebp, esp                                      // 0x005b77a1    8bec
                         sub                esp, 0x000000a4                               // 0x005b77a3    81eca4000000
                         push               ebx                                           // 0x005b77a9    53
                         push               esi                                           // 0x005b77aa    56
                         mov.s              esi, ecx                                      // 0x005b77ab    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b77ad    8b0d5c19d000
                         push               edi                                           // 0x005b77b3    57
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005b77b4    e897e0f9ff
                         {disp32} mov       edi, dword ptr [eax + 0x000003c8]             // 0x005b77b9    8bb8c8030000
                         test               edi, edi                                      // 0x005b77bf    85ff
                         {disp32} je        _jmp_addr_0x005b7963                          // 0x005b77c1    0f849c010000
                         push               0x0                                           // 0x005b77c7    6a00
                         push               0x009dd560                                    // 0x005b77c9    6860d59d00
                         push               0x009c7f50                                    // 0x005b77ce    68507f9c00
                         push               0x0                                           // 0x005b77d3    6a00
                         push               edi                                           // 0x005b77d5    57
                         call               ___RTDynamicCast                              // 0x005b77d6    e83ee22000
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b77db    8b4604
                         {disp32} mov       ecx, dword ptr [eax + 0x00004868]             // 0x005b77de    8b8868480000
                         {disp32} mov       edx, dword ptr [eax + 0x00004860]             // 0x005b77e4    8b9060480000
                         add                esp, 0x14                                     // 0x005b77ea    83c414
                         sub.s              ecx, edx                                      // 0x005b77ed    2bca
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                  // 0x005b77ef    894dfc
                         {disp32} je        _jmp_addr_0x005b78be                          // 0x005b77f2    0f84c6000000
                         mov                edx, dword ptr [edi]                          // 0x005b77f8    8b17
                         mov.s              ecx, edi                                      // 0x005b77fa    8bcf
                         call               dword ptr [edx + 0x42c]                       // 0x005b77fc    ff922c040000
                         {disp8} fild       dword ptr [ebp + -0x04]                       // 0x005b7802    db45fc
                         xor.s              eax, eax                                      // 0x005b7805    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x005b7807    66a15a50e800
                         fmul               st, st(1)                                     // 0x005b780d    d8c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x005b780f    d80d502c8c00
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x005b7815    8945fc
                         {disp8} fidiv      dword ptr [ebp + -0x04]                       // 0x005b7818    da75fc
                         {disp8} fstp       dword ptr [ebp + -0x08]                       // 0x005b781b    d95df8
                         fstp               st(0)                                         // 0x005b781e    ddd8
                         {disp8} fld        dword ptr [ebp + -0x08]                       // 0x005b7820    d945f8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b7823    d81d98a38a00
                         fnstsw             ax                                            // 0x005b7829    dfe0
                         test               ah, 0x01                                      // 0x005b782b    f6c401
                         {disp8} je         _jmp_addr_0x005b7890                          // 0x005b782e    7460
                         {disp8} mov        ebx, dword ptr [esi + 0x04]                   // 0x005b7830    8b5e04
                         {disp8} fld        dword ptr [ebx + 0x78]                        // 0x005b7833    d94378
                         add                ebx, 0x78                                     // 0x005b7836    83c378
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b7839    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b783f    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b7845    e8b69b1e00
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x005b784a    d94308
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b784d    d80d08c48a00
                         {disp8} mov        dword ptr [ebp + -0x80], eax                  // 0x005b7853    894580
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b7856    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b785c    e89f9b1e00
                         {disp8} lea        ecx, dword ptr [ebp + -0x80]                  // 0x005b7861    8d4d80
                         {disp8} mov        dword ptr [ebp + -0x7c], eax                  // 0x005b7864    894584
                         {disp8} mov        dword ptr [ebp + -0x78], 0x00000000           // 0x005b7867    c7458800000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005b786e    e81db82400
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7873    8b4e04
                         {disp8} fsubr      dword ptr [ecx + 0x7c]                        // 0x005b7876    d8697c
                         {disp8} fld        dword ptr [ebp + -0x08]                       // 0x005b7879    d945f8
                         fchs                                                             // 0x005b787c    d9e0
                         fcomp              st(1)                                         // 0x005b787e    d8d9
                         fnstsw             ax                                            // 0x005b7880    dfe0
                         test               ah, 0x41                                      // 0x005b7882    f6c441
                         {disp8} jne        _jmp_addr_0x005b788e                          // 0x005b7885    7507
                         fchs                                                             // 0x005b7887    d9e0
                         {disp8} fstp       dword ptr [ebp + -0x08]                       // 0x005b7889    d95df8
                         {disp8} jmp        _jmp_addr_0x005b7890                          // 0x005b788c    eb02
_jmp_addr_0x005b788e:    fstp               st(0)                                         // 0x005b788e    ddd8
_jmp_addr_0x005b7890:    test               byte ptr [edi + 0x24], 0x10                   // 0x005b7890    f6472410
                         {disp8} je         _jmp_addr_0x005b78be                          // 0x005b7894    7428
                         mov                edx, dword ptr [edi]                          // 0x005b7896    8b17
                         mov.s              ecx, edi                                      // 0x005b7898    8bcf
                         call               dword ptr [edx + 0x6d8]                       // 0x005b789a    ff92d8060000
                         test               eax, eax                                      // 0x005b78a0    85c0
                         {disp8} je         _jmp_addr_0x005b78be                          // 0x005b78a2    741a
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                  // 0x005b78a4    8b45f8
                         mov                edx, dword ptr [edi]                          // 0x005b78a7    8b17
                         {disp32} mov       dword ptr [ebp + -0x0000008c], eax            // 0x005b78a9    898574ffffff
                         {disp32} lea       eax, dword ptr [ebp + -0x0000008c]            // 0x005b78af    8d8574ffffff
                         push               eax                                           // 0x005b78b5    50
                         mov.s              ecx, edi                                      // 0x005b78b6    8bcf
                         call               dword ptr [edx + 0x6dc]                       // 0x005b78b8    ff92dc060000
_jmp_addr_0x005b78be:    mov                edx, dword ptr [edi]                          // 0x005b78be    8b17
                         mov.s              ecx, edi                                      // 0x005b78c0    8bcf
                         call               dword ptr [edx + 0x42c]                       // 0x005b78c2    ff922c040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57bdc]             // 0x005b78c8    d80ddc0b9000
                         {disp8} mov        eax, dword ptr [edi + 0x40]                   // 0x005b78ce    8b4740
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b78d1    8b4e04
                         {disp8} fadd       dword ptr [eax + 0x3c]                        // 0x005b78d4    d8403c
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                  // 0x005b78d7    8d45f4
                         {disp8} fst        dword ptr [ecx + 0x7c]                        // 0x005b78da    d9517c
                         {disp8} lea        ecx, dword ptr [ebp + -0x30]                  // 0x005b78dd    8d4dd0
                         {disp32} fstp      dword ptr [esi + 0x000000a8]                  // 0x005b78e0    d99ea8000000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e40 // 0x005b78e6    c705a09eea00409eea00
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005b78f0    8b5604
                         add                edx, 0x78                                     // 0x005b78f3    83c278
                         push               edx                                           // 0x005b78f6    52
                         push               eax                                           // 0x005b78f7    50
                         push               ecx                                           // 0x005b78f8    51
                         call               _jmp_addr_0x005b7c10                          // 0x005b78f9    e812030000
                         {disp8} mov        eax, dword ptr [ebp + -0x0c]                  // 0x005b78fe    8b45f4
                         add                esp, 0x0c                                     // 0x005b7901    83c40c
                         test               eax, eax                                      // 0x005b7904    85c0
                         {disp8} jne        _jmp_addr_0x005b7963                          // 0x005b7906    755b
                         {disp8} fld        dword ptr [ebp + -0x30]                       // 0x005b7908    d945d0
                         call               _jmp_addr_0x007a1400                          // 0x005b790b    e8f09a1e00
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x005b7910    d945d4
                         mov.s              ebx, eax                                      // 0x005b7913    8bd8
                         call               _jmp_addr_0x007a1400                          // 0x005b7915    e8e69a1e00
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005b791a    8b5604
                         {disp32} mov       dword ptr [edx + 0x0000486c], ebx             // 0x005b791d    899a6c480000
                         {disp32} mov       dword ptr [edx + 0x00004870], eax             // 0x005b7923    898270480000
                         {disp8} mov        eax, dword ptr [ebp + -0x2c]                  // 0x005b7929    8b45d4
                         {disp8} lea        ecx, dword ptr [ebp + -0x08]                  // 0x005b792c    8d4df8
                         {disp8} mov        dword ptr [ebp + -0x44], eax                  // 0x005b792f    8945bc
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                  // 0x005b7932    894dfc
                         {disp8} fld        dword ptr [ebp + -0x44]                       // 0x005b7935    d945bc
                         {disp8} mov        edx, dword ptr [ebp + -0x04]                  // 0x005b7938    8b55fc
                         fistp              dword ptr [edx]                               // 0x005b793b    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x30]                  // 0x005b793d    8b55d0
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                  // 0x005b7940    8b45f8
                         {disp8} lea        ecx, dword ptr [ebp + -0x04]                  // 0x005b7943    8d4dfc
                         {disp8} mov        dword ptr [ebp + -0x10], edx                  // 0x005b7946    8955f0
                         {disp8} mov        dword ptr [ebp + -0x44], ecx                  // 0x005b7949    894dbc
                         {disp8} fld        dword ptr [ebp + -0x10]                       // 0x005b794c    d945f0
                         {disp8} mov        edx, dword ptr [ebp + -0x44]                  // 0x005b794f    8b55bc
                         fistp              dword ptr [edx]                               // 0x005b7952    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x04]                  // 0x005b7954    8b55fc
                         push               eax                                           // 0x005b7957    50
                         push               edx                                           // 0x005b7958    52
                         mov                ecx, 0x00e85204                               // 0x005b7959    b90452e800
                         call               _jmp_addr_0x007e5550                          // 0x005b795e    e8eddb2200
_jmp_addr_0x005b7963:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7963    8b4e04
                         {disp32} fld       dword ptr [rdata_bytes + 0x57bf8]             // 0x005b7966    d905f80b9000
                         {disp8} fld        dword ptr [ecx + 0x7c]                        // 0x005b796c    d9417c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57bd8]             // 0x005b796f    d81dd80b9000
                         fnstsw             ax                                            // 0x005b7975    dfe0
                         test               ah, 0x01                                      // 0x005b7977    f6c401
                         {disp8} je         _jmp_addr_0x005b799c                          // 0x005b797a    7420
                         fstp               st(0)                                         // 0x005b797c    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x57bd8]             // 0x005b797e    d905d80b9000
                         {disp8} fsub       dword ptr [ecx + 0x7c]                        // 0x005b7984    d8617c
                         {disp8} fstp       dword ptr [ebp + -0x10]                       // 0x005b7987    d95df0
                         call               _jmp_addr_0x0046c040                          // 0x005b798a    e8b146ebff
                         {disp8} fdivr      dword ptr [ebp + -0x10]                       // 0x005b798f    d87df0
                         fld1                                                             // 0x005b7992    d9e8
                         fpatan                                                           // 0x005b7994    d9f3
                         {disp32} fadd      qword ptr [rdata_bytes + 0x57b80]             // 0x005b7996    dc05800b9000
_jmp_addr_0x005b799c:    fchs                                                             // 0x005b799c    d9e0
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b799e    8b4e04
                         fld                st(0)                                         // 0x005b79a1    d9c0
                         {disp8} lea        edx, dword ptr [ebp + -0x74]                  // 0x005b79a3    8d558c
                         fcos                                                             // 0x005b79a6    d9ff
                         push               edx                                           // 0x005b79a8    52
                         {disp8} fst        dword ptr [ebp + -0x20]                       // 0x005b79a9    d955e0
                         {disp8} fstp       dword ptr [ebp + -0x30]                       // 0x005b79ac    d95dd0
                         fsin                                                             // 0x005b79af    d9fe
                         {disp8} fst        dword ptr [ebp + -0x24]                       // 0x005b79b1    d955dc
                         fchs                                                             // 0x005b79b4    d9e0
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x005b79b6    d95dd4
                         {disp32} fld       dword ptr [ecx + 0x00000084]                  // 0x005b79b9    d98184000000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x005b79bf    d805a0368c00
                         fld                st(0)                                         // 0x005b79c5    d9c0
                         fcos                                                             // 0x005b79c7    d9ff
                         {disp8} fstp       dword ptr [ebp + -0x04]                       // 0x005b79c9    d95dfc
                         {disp8} mov        eax, dword ptr [ebp + -0x04]                  // 0x005b79cc    8b45fc
                         {disp8} mov        dword ptr [ebp + -0x40], eax                  // 0x005b79cf    8945c0
                         fsin                                                             // 0x005b79d2    d9fe
                         {disp8} fst        dword ptr [ebp + -0x0c]                       // 0x005b79d4    d955f4
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005b79d7    d90598a38a00
                         {disp8} fld        dword ptr [ebp + -0x40]                       // 0x005b79dd    d945c0
                         fsub               st, st(1)                                     // 0x005b79e0    d8e1
                         {disp8} fstp       dword ptr [ebp + -0x40]                       // 0x005b79e2    d95dc0
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005b79e5    d90598a38a00
                         {disp8} fst        dword ptr [ebp + -0x08]                       // 0x005b79eb    d955f8
                         {disp8} fadd       dword ptr [ebp + -0x0c]                       // 0x005b79ee    d845f4
                         {disp8} fstp       dword ptr [ebp + -0x38]                       // 0x005b79f1    d95dc8
                         fld                st(0)                                         // 0x005b79f4    d9c0
                         {disp8} fld        dword ptr [ebp + -0x08]                       // 0x005b79f6    d945f8
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x005b79f9    d945d4
                         fmul               st, st(4)                                     // 0x005b79fc    d8cc
                         fsubr              st, st(1)                                     // 0x005b79fe    d8e9
                         {disp8} fstp       dword ptr [ebp + -0x34]                       // 0x005b7a00    d95dcc
                         fstp               st(0)                                         // 0x005b7a03    ddd8
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x005b7a05    d945d4
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x005b7a08    d84dfc
                         fadd               st, st(1)                                     // 0x005b7a0b    d8c1
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x005b7a0d    d95dd4
                         fstp               st(0)                                         // 0x005b7a10    ddd8
                         {disp8} fstp       dword ptr [ebp + -0x0c]                       // 0x005b7a12    d95df4
                         {disp8} fld        dword ptr [ebp + -0x08]                       // 0x005b7a15    d945f8
                         {disp8} fld        dword ptr [ebp + -0x20]                       // 0x005b7a18    d945e0
                         fmul               st, st(2)                                     // 0x005b7a1b    d8ca
                         fsubr              st, st(1)                                     // 0x005b7a1d    d8e9
                         {disp8} fstp       dword ptr [ebp + -0x28]                       // 0x005b7a1f    d95dd8
                         fstp               st(0)                                         // 0x005b7a22    ddd8
                         fstp               st(0)                                         // 0x005b7a24    ddd8
                         {disp8} fld        dword ptr [ebp + -0x20]                       // 0x005b7a26    d945e0
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x005b7a29    d84dfc
                         {disp8} fadd       dword ptr [ebp + -0x0c]                       // 0x005b7a2c    d845f4
                         {disp8} fstp       dword ptr [ebp + -0x20]                       // 0x005b7a2f    d95de0
                         call               _jmp_addr_0x0046d080                          // 0x005b7a32    e84956ebff
                         {disp8} fld        dword ptr [ebp + -0x74]                       // 0x005b7a37    d9458c
                         {disp8} mov        eax, dword ptr [ebp + -0x68]                  // 0x005b7a3a    8b4598
                         {disp8} fld        dword ptr [ebp + -0x70]                       // 0x005b7a3d    d94590
                         {disp8} mov        ecx, dword ptr [ebp + -0x64]                  // 0x005b7a40    8b4d9c
                         {disp8} fld        dword ptr [ebp + -0x6c]                       // 0x005b7a43    d94594
                         {disp8} mov        edx, dword ptr [ebp + -0x5c]                  // 0x005b7a46    8b55a4
                         {disp8} fmul       dword ptr [ebp + -0x28]                       // 0x005b7a49    d84dd8
                         {disp32} mov       dword ptr [ebp + -0x00000098], eax            // 0x005b7a4c    898568ffffff
                         {disp8} fld        dword ptr [ebp + -0x70]                       // 0x005b7a52    d94590
                         {disp8} mov        eax, dword ptr [ebp + -0x58]                  // 0x005b7a55    8b45a8
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x005b7a58    d84dcc
                         {disp32} mov       dword ptr [ebp + -0x00000094], ecx            // 0x005b7a5b    898d6cffffff
                         {disp32} mov       dword ptr [ebp + -0x0000008c], edx            // 0x005b7a61    899574ffffff
                         {disp32} mov       dword ptr [ebp + -0x00000088], eax            // 0x005b7a67    898578ffffff
                         faddp              st(1), st                                     // 0x005b7a6d    dec1
                         {disp8} fld        dword ptr [ebp + -0x74]                       // 0x005b7a6f    d9458c
                         {disp8} fmul       dword ptr [ebp + -0x40]                       // 0x005b7a72    d84dc0
                         faddp              st(1), st                                     // 0x005b7a75    dec1
                         {disp8} fstp       dword ptr [ebp + -0x74]                       // 0x005b7a77    d95d8c
                         {disp8} fld        dword ptr [ebp + -0x6c]                       // 0x005b7a7a    d94594
                         {disp8} fmul       dword ptr [ebp + -0x24]                       // 0x005b7a7d    d84ddc
                         {disp8} fld        dword ptr [ebp + -0x70]                       // 0x005b7a80    d94590
                         {disp8} fmul       dword ptr [ebp + -0x30]                       // 0x005b7a83    d84dd0
                         faddp              st(1), st                                     // 0x005b7a86    dec1
                         {disp8} fstp       dword ptr [ebp + -0x70]                       // 0x005b7a88    d95d90
                         {disp8} fld        dword ptr [ebp + -0x6c]                       // 0x005b7a8b    d94594
                         {disp8} fmul       dword ptr [ebp + -0x20]                       // 0x005b7a8e    d84de0
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x005b7a91    d945d4
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005b7a94    8b4604
                         fmul               st, st(2)                                     // 0x005b7a97    d8ca
                         add                eax, 0x78                                     // 0x005b7a99    83c078
                         faddp              st(1), st                                     // 0x005b7a9c    dec1
                         {disp8} fld        dword ptr [ebp + -0x38]                       // 0x005b7a9e    d945c8
                         fmul               st, st(3)                                     // 0x005b7aa1    d8cb
                         faddp              st(1), st                                     // 0x005b7aa3    dec1
                         {disp8} fstp       dword ptr [ebp + -0x6c]                       // 0x005b7aa5    d95d94
                         fstp               st(0)                                         // 0x005b7aa8    ddd8
                         fstp               st(0)                                         // 0x005b7aaa    ddd8
                         {disp8} fld        dword ptr [ebp + -0x60]                       // 0x005b7aac    d945a0
                         {disp8} fmul       dword ptr [ebp + -0x28]                       // 0x005b7aaf    d84dd8
                         {disp8} fld        dword ptr [ebp + -0x64]                       // 0x005b7ab2    d9459c
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x005b7ab5    d84dcc
                         faddp              st(1), st                                     // 0x005b7ab8    dec1
                         {disp8} fld        dword ptr [ebp + -0x68]                       // 0x005b7aba    d94598
                         {disp8} fmul       dword ptr [ebp + -0x40]                       // 0x005b7abd    d84dc0
                         faddp              st(1), st                                     // 0x005b7ac0    dec1
                         {disp8} fstp       dword ptr [ebp + -0x68]                       // 0x005b7ac2    d95d98
                         {disp8} fld        dword ptr [ebp + -0x60]                       // 0x005b7ac5    d945a0
                         {disp8} fmul       dword ptr [ebp + -0x24]                       // 0x005b7ac8    d84ddc
                         {disp8} fld        dword ptr [ebp + -0x64]                       // 0x005b7acb    d9459c
                         {disp8} fmul       dword ptr [ebp + -0x30]                       // 0x005b7ace    d84dd0
                         faddp              st(1), st                                     // 0x005b7ad1    dec1
                         {disp8} fstp       dword ptr [ebp + -0x64]                       // 0x005b7ad3    d95d9c
                         {disp8} fld        dword ptr [ebp + -0x60]                       // 0x005b7ad6    d945a0
                         {disp8} fmul       dword ptr [ebp + -0x20]                       // 0x005b7ad9    d84de0
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x005b7adc    d945d4
                         {disp32} fmul      dword ptr [ebp + -0x00000094]                 // 0x005b7adf    d88d6cffffff
                         faddp              st(1), st                                     // 0x005b7ae5    dec1
                         {disp8} fld        dword ptr [ebp + -0x38]                       // 0x005b7ae7    d945c8
                         {disp32} fmul      dword ptr [ebp + -0x00000098]                 // 0x005b7aea    d88d68ffffff
                         faddp              st(1), st                                     // 0x005b7af0    dec1
                         {disp8} fstp       dword ptr [ebp + -0x60]                       // 0x005b7af2    d95da0
                         {disp8} fld        dword ptr [ebp + -0x5c]                       // 0x005b7af5    d945a4
                         {disp8} fmul       dword ptr [ebp + -0x40]                       // 0x005b7af8    d84dc0
                         {disp8} fld        dword ptr [ebp + -0x54]                       // 0x005b7afb    d945ac
                         {disp8} fmul       dword ptr [ebp + -0x28]                       // 0x005b7afe    d84dd8
                         faddp              st(1), st                                     // 0x005b7b01    dec1
                         {disp8} fld        dword ptr [ebp + -0x58]                       // 0x005b7b03    d945a8
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x005b7b06    d84dcc
                         faddp              st(1), st                                     // 0x005b7b09    dec1
                         {disp8} fstp       dword ptr [ebp + -0x5c]                       // 0x005b7b0b    d95da4
                         {disp8} fld        dword ptr [ebp + -0x54]                       // 0x005b7b0e    d945ac
                         {disp8} fmul       dword ptr [ebp + -0x24]                       // 0x005b7b11    d84ddc
                         {disp8} fld        dword ptr [ebp + -0x58]                       // 0x005b7b14    d945a8
                         {disp8} fmul       dword ptr [ebp + -0x30]                       // 0x005b7b17    d84dd0
                         faddp              st(1), st                                     // 0x005b7b1a    dec1
                         {disp8} fstp       dword ptr [ebp + -0x58]                       // 0x005b7b1c    d95da8
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x005b7b1f    d945d4
                         {disp32} fmul      dword ptr [ebp + -0x00000088]                 // 0x005b7b22    d88d78ffffff
                         {disp8} fld        dword ptr [ebp + -0x38]                       // 0x005b7b28    d945c8
                         {disp32} fmul      dword ptr [ebp + -0x0000008c]                 // 0x005b7b2b    d88d74ffffff
                         faddp              st(1), st                                     // 0x005b7b31    dec1
                         {disp8} fld        dword ptr [ebp + -0x54]                       // 0x005b7b33    d945ac
                         {disp8} fmul       dword ptr [ebp + -0x20]                       // 0x005b7b36    d84de0
                         faddp              st(1), st                                     // 0x005b7b39    dec1
                         {disp8} fstp       dword ptr [ebp + -0x54]                       // 0x005b7b3b    d95dac
                         mov                ecx, dword ptr [eax]                          // 0x005b7b3e    8b08
                         {disp8} mov        dword ptr [ebp + -0x50], ecx                  // 0x005b7b40    894db0
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005b7b43    8b5004
                         {disp8} mov        dword ptr [ebp + -0x4c], edx                  // 0x005b7b46    8955b4
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005b7b49    8b4008
                         {disp8} mov        dword ptr [ebp + -0x48], eax                  // 0x005b7b4c    8945b8
                         mov                edx, dword ptr [edi]                          // 0x005b7b4f    8b17
                         mov.s              ecx, edi                                      // 0x005b7b51    8bcf
                         call               dword ptr [edx + 0x590]                       // 0x005b7b53    ff9290050000
                         {disp8} fstp       dword ptr [ebp + -0x10]                       // 0x005b7b59    d95df0
                         call               _jmp_addr_0x0046c040                          // 0x005b7b5c    e8df44ebff
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b7b61    d80db4a38a00
                         {disp8} fdivr      dword ptr [ebp + -0x10]                       // 0x005b7b67    d87df0
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b7b6a    d90590a38a00
                         fcomp              st(1)                                         // 0x005b7b70    d8d9
                         fnstsw             ax                                            // 0x005b7b72    dfe0
                         test               ah, 0x01                                      // 0x005b7b74    f6c401
                         {disp8} je         _jmp_addr_0x005b7b84                          // 0x005b7b77    740b
                         fstp               st(0)                                         // 0x005b7b79    ddd8
                         {disp8} mov        dword ptr [ebp + -0x04], 0x3f800000           // 0x005b7b7b    c745fc0000803f
                         {disp8} jmp        _jmp_addr_0x005b7b87                          // 0x005b7b82    eb03
_jmp_addr_0x005b7b84:    {disp8} fstp       dword ptr [ebp + -0x04]                       // 0x005b7b84    d95dfc
_jmp_addr_0x005b7b87:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7b87    8b4e04
                         push               0x0                                           // 0x005b7b8a    6a00
                         push               0x9                                           // 0x005b7b8c    6a09
                         call               @GetAnim__9MorphableFll@16                    // 0x005b7b8e    e8bd1a0600
                         mov.s              edi, eax                                      // 0x005b7b93    8bf8
                         mov                eax, dword ptr [edi]                          // 0x005b7b95    8b07
                         sar                eax, 1                                        // 0x005b7b97    d1f8
                         {disp8} mov        dword ptr [ebp + -0x10], eax                  // 0x005b7b99    8945f0
                         {disp8} fild       dword ptr [ebp + -0x10]                       // 0x005b7b9c    db45f0
                         {disp8} fld        dword ptr [ebp + -0x04]                       // 0x005b7b9f    d945fc
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b7ba2    d80db4a38a00
                         fmulp              st(1), st                                     // 0x005b7ba8    dec9
                         call               _jmp_addr_0x007a1400                          // 0x005b7baa    e851981e00
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b7baf    8b4e04
                         {disp8} mov        ebx, dword ptr [ebp + 0x0c]                   // 0x005b7bb2    8b5d0c
                         push               0x1                                           // 0x005b7bb5    6a01
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x005b7bb7    894608
                         {disp32} mov       edx, dword ptr [ecx + 0x000047fc]             // 0x005b7bba    8b91fc470000
                         push               0x0                                           // 0x005b7bc0    6a00
                         push               edx                                           // 0x005b7bc2    52
                         {disp32} mov       edx, dword ptr [ecx + 0x000047f4]             // 0x005b7bc3    8b91f4470000
                         push               eax                                           // 0x005b7bc9    50
                         {disp32} mov       eax, dword ptr [ecx + 0x000047f8]             // 0x005b7bca    8b81f8470000
                         push               eax                                           // 0x005b7bd0    50
                         {disp32} mov       eax, dword ptr [ecx + 0x00000098]             // 0x005b7bd1    8b8198000000
                         {disp32} mov       ecx, dword ptr [ecx + eax * 0x4 + 0x000000b4] // 0x005b7bd7    8b8c81b4000000
                         push               edx                                           // 0x005b7bde    52
                         push               ecx                                           // 0x005b7bdf    51
                         push               ebx                                           // 0x005b7be0    53
                         mov.s              ecx, edi                                      // 0x005b7be1    8bcf
                         call               _jmp_addr_0x00860e00                          // 0x005b7be3    e818922a00
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x005b7be8    8b7604
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]             // 0x005b7beb    8b8698000000
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x000000b4] // 0x005b7bf1    8b8c86b4000000
                         {disp8} lea        edx, dword ptr [ebp + -0x74]                  // 0x005b7bf8    8d558c
                         push               edx                                           // 0x005b7bfb    52
                         push               ecx                                           // 0x005b7bfc    51
                         push               ebx                                           // 0x005b7bfd    53
                         call               _jmp_addr_0x00839f10                          // 0x005b7bfe    e80d232800
                         add                esp, 0x0c                                     // 0x005b7c03    83c40c
                         pop                edi                                           // 0x005b7c06    5f
                         pop                esi                                           // 0x005b7c07    5e
                         pop                ebx                                           // 0x005b7c08    5b
                         mov.s              esp, ebp                                      // 0x005b7c09    8be5
                         pop                ebp                                           // 0x005b7c0b    5d
                         ret                0x0008                                        // 0x005b7c0c    c20800
                         nop                                                              // 0x005b7c0f    90
_jmp_addr_0x005b7c10:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005b7c10    8b44240c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x005b7c14    8b0da09eea00
                         {disp8} fld        dword ptr [ecx + 0x18]                        // 0x005b7c1a    d94118
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x005b7c1d    d84808
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x005b7c20    d9410c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x005b7c23    d84804
                         faddp              st(1), st                                     // 0x005b7c26    dec1
                         fld                dword ptr [eax]                               // 0x005b7c28    d900
                         fmul               dword ptr [ecx]                               // 0x005b7c2a    d809
                         faddp              st(1), st                                     // 0x005b7c2c    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x005b7c2e    d84124
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005b7c31    8b4c2404
                         fstp               dword ptr [ecx]                               // 0x005b7c35    d919
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ea0]        // 0x005b7c37    8b15a09eea00
                         {disp8} fld        dword ptr [edx + 0x1c]                        // 0x005b7c3d    d9421c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x005b7c40    d84808
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x005b7c43    d94204
                         fmul               dword ptr [eax]                               // 0x005b7c46    d808
                         faddp              st(1), st                                     // 0x005b7c48    dec1
                         {disp8} fld        dword ptr [edx + 0x10]                        // 0x005b7c4a    d94210
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x005b7c4d    d84804
                         faddp              st(1), st                                     // 0x005b7c50    dec1
                         {disp8} fadd       dword ptr [edx + 0x28]                        // 0x005b7c52    d84228
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x005b7c55    d95904
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ea0]        // 0x005b7c58    8b15a09eea00
                         {disp8} fld        dword ptr [edx + 0x20]                        // 0x005b7c5e    d94220
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x005b7c61    d84808
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x005b7c64    d94208
                         fmul               dword ptr [eax]                               // 0x005b7c67    d808
                         faddp              st(1), st                                     // 0x005b7c69    dec1
                         {disp8} fld        dword ptr [edx + 0x14]                        // 0x005b7c6b    d94214
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x005b7c6e    d84804
                         faddp              st(1), st                                     // 0x005b7c71    dec1
                         {disp8} fadd       dword ptr [edx + 0x2c]                        // 0x005b7c73    d8422c
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x005b7c76    d9510c
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x005b7c79    d81de039e800
                         fnstsw             ax                                            // 0x005b7c7f    dfe0
                         test               ah, 0x01                                      // 0x005b7c81    f6c401
                         {disp8} je         _jmp_addr_0x005b7c8d                          // 0x005b7c84    7407
                         mov                eax, 0x00000001                               // 0x005b7c86    b801000000
                         {disp8} jmp        _jmp_addr_0x005b7c8f                          // 0x005b7c8b    eb02
_jmp_addr_0x005b7c8d:    xor.s              eax, eax                                      // 0x005b7c8d    33c0
_jmp_addr_0x005b7c8f:    test               eax, eax                                      // 0x005b7c8f    85c0
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005b7c91    8b542408
                         mov                dword ptr [edx], eax                          // 0x005b7c95    8902
                         {disp32} jne       _jmp_addr_0x005b7d40                          // 0x005b7c97    0f85a3000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b7c9d    d90590a38a00
                         {disp8} fdiv       dword ptr [ecx + 0x0c]                        // 0x005b7ca3    d8710c
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x005b7ca6    d9510c
                         fmul               dword ptr [ecx]                               // 0x005b7ca9    d809
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x005b7cab    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x005b7cb1    d80df039e800
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005b7cb7    d81598a38a00
                         fst                dword ptr [ecx]                               // 0x005b7cbd    d911
                         fnstsw             ax                                            // 0x005b7cbf    dfe0
                         test               ah, 0x01                                      // 0x005b7cc1    f6c401
                         {disp8} je         _jmp_addr_0x005b7cd0                          // 0x005b7cc4    740a
                         fstp               st(0)                                         // 0x005b7cc6    ddd8
                         mov                dword ptr [ecx], 0x00000000                   // 0x005b7cc8    c70100000000
                         {disp8} jmp        _jmp_addr_0x005b7ce4                          // 0x005b7cce    eb14
_jmp_addr_0x005b7cd0:    {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x005b7cd0    d81d00abc200
                         fnstsw             ax                                            // 0x005b7cd6    dfe0
                         test               ah, 0x41                                      // 0x005b7cd8    f6c441
                         {disp8} jne        _jmp_addr_0x005b7ce4                          // 0x005b7cdb    7507
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x005b7cdd    a100abc200
                         mov                dword ptr [ecx], eax                          // 0x005b7ce2    8901
_jmp_addr_0x005b7ce4:    {disp32} fld       dword ptr [data_bytes + 0x4bd9f4]             // 0x005b7ce4    d905f439e800
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x005b7cea    d8490c
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x005b7ced    d84904
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x005b7cf0    d82df439e800
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005b7cf6    d81598a38a00
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x005b7cfc    d95104
                         fnstsw             ax                                            // 0x005b7cff    dfe0
                         test               ah, 0x01                                      // 0x005b7d01    f6c401
                         {disp8} je         _jmp_addr_0x005b7d11                          // 0x005b7d04    740b
                         fstp               st(0)                                         // 0x005b7d06    ddd8
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000            // 0x005b7d08    c7410400000000
                         {disp8} jmp        _jmp_addr_0x005b7d27                          // 0x005b7d0f    eb16
_jmp_addr_0x005b7d11:    {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x005b7d11    d81d04abc200
                         fnstsw             ax                                            // 0x005b7d17    dfe0
                         test               ah, 0x41                                      // 0x005b7d19    f6c441
                         {disp8} jne        _jmp_addr_0x005b7d27                          // 0x005b7d1c    7509
                         {disp32} mov       edx, dword ptr [data_bytes + 0x264b04]        // 0x005b7d1e    8b1504abc200
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005b7d24    895104
_jmp_addr_0x005b7d27:    {disp32} fld       dword ptr [_near_clipping]                    // 0x005b7d27    d905e039e800
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x005b7d2d    d8490c
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x005b7d30    d9510c
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b7d33    d90590a38a00
                         fsub               st, st(1)                                     // 0x005b7d39    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x005b7d3b    d95908
                         fstp               st(0)                                         // 0x005b7d3e    ddd8
_jmp_addr_0x005b7d40:    ret                                                              // 0x005b7d40    c3
                         nop                                                              // 0x005b7d41    90
                         nop                                                              // 0x005b7d42    90
                         nop                                                              // 0x005b7d43    90
                         nop                                                              // 0x005b7d44    90
                         nop                                                              // 0x005b7d45    90
                         nop                                                              // 0x005b7d46    90
                         nop                                                              // 0x005b7d47    90
                         nop                                                              // 0x005b7d48    90
                         nop                                                              // 0x005b7d49    90
                         nop                                                              // 0x005b7d4a    90
                         nop                                                              // 0x005b7d4b    90
                         nop                                                              // 0x005b7d4c    90
                         nop                                                              // 0x005b7d4d    90
                         nop                                                              // 0x005b7d4e    90
                         nop                                                              // 0x005b7d4f    90
_globl_ct_0x005b7d50:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005b7d50    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005b7d56    b001
                         test               al, cl                                        // 0x005b7d58    84c8
                         {disp8} jne        _jmp_addr_0x005b7d64                          // 0x005b7d5a    7508
                         or.s               cl, al                                        // 0x005b7d5c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005b7d5e    880d34c9fa00
_jmp_addr_0x005b7d64:    {disp32} jmp       _jmp_addr_0x005b7d70                          // 0x005b7d64    e907000000
                         nop                                                              // 0x005b7d69    90
                         nop                                                              // 0x005b7d6a    90
                         nop                                                              // 0x005b7d6b    90
                         nop                                                              // 0x005b7d6c    90
                         nop                                                              // 0x005b7d6d    90
                         nop                                                              // 0x005b7d6e    90
                         nop                                                              // 0x005b7d6f    90
_jmp_addr_0x005b7d70:    push               0x00407870                                    // 0x005b7d70    6870784000
                         call               _atexit                                       // 0x005b7d75    e817da2000
                         pop                ecx                                           // 0x005b7d7a    59
                         ret                                                              // 0x005b7d7b    c3
                         nop                                                              // 0x005b7d7c    90
                         nop                                                              // 0x005b7d7d    90
                         nop                                                              // 0x005b7d7e    90
                         nop                                                              // 0x005b7d7f    90
_globl_ct_0x005b7d80:    {disp32} jmp       _jmp_addr_0x005b7d90                          // 0x005b7d80    e90b000000
                         nop                                                              // 0x005b7d85    90
                         nop                                                              // 0x005b7d86    90
                         nop                                                              // 0x005b7d87    90
                         nop                                                              // 0x005b7d88    90
                         nop                                                              // 0x005b7d89    90
                         nop                                                              // 0x005b7d8a    90
                         nop                                                              // 0x005b7d8b    90
                         nop                                                              // 0x005b7d8c    90
                         nop                                                              // 0x005b7d8d    90
                         nop                                                              // 0x005b7d8e    90
                         nop                                                              // 0x005b7d8f    90
_jmp_addr_0x005b7d90:    {disp32} fld       dword ptr [rdata_bytes + 0x57c04]             // 0x005b7d90    d905040c9000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c00]             // 0x005b7d96    d80d000c9000
                         {disp32} fstp      dword ptr [data_bytes + 0x34e064]             // 0x005b7d9c    d91d6440d100
                         ret                                                              // 0x005b7da2    c3
                         nop                                                              // 0x005b7da3    90
                         nop                                                              // 0x005b7da4    90
                         nop                                                              // 0x005b7da5    90
                         nop                                                              // 0x005b7da6    90
                         nop                                                              // 0x005b7da7    90
                         nop                                                              // 0x005b7da8    90
                         nop                                                              // 0x005b7da9    90
                         nop                                                              // 0x005b7daa    90
                         nop                                                              // 0x005b7dab    90
                         nop                                                              // 0x005b7dac    90
                         nop                                                              // 0x005b7dad    90
                         nop                                                              // 0x005b7dae    90
                         nop                                                              // 0x005b7daf    90
_globl_ct_0x005b7db0:    {disp32} jmp       _jmp_addr_0x005b7dc0                          // 0x005b7db0    e90b000000
                         nop                                                              // 0x005b7db5    90
                         nop                                                              // 0x005b7db6    90
                         nop                                                              // 0x005b7db7    90
                         nop                                                              // 0x005b7db8    90
                         nop                                                              // 0x005b7db9    90
                         nop                                                              // 0x005b7dba    90
                         nop                                                              // 0x005b7dbb    90
                         nop                                                              // 0x005b7dbc    90
                         nop                                                              // 0x005b7dbd    90
                         nop                                                              // 0x005b7dbe    90
                         nop                                                              // 0x005b7dbf    90
_jmp_addr_0x005b7dc0:    {disp32} mov       dword ptr [data_bytes + 0x34e060], 0xffffffff // 0x005b7dc0    c7056040d100ffffffff
                         ret                                                              // 0x005b7dca    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005b7dcb    e8299ae4ff
@__ct__12HandStateTugFP5CHand@12:    mov.s              eax, ecx                                      // 0x005b7dd0    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005b7dd2    8b4c2404
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005b7dd6    894804
                         mov                dword ptr [eax], 0x00900c1c                   // 0x005b7dd9    c7001c0c9000
                         {disp8} mov        dword ptr [eax + 0x08], 0x00000000            // 0x005b7ddf    c7400800000000
                         ret                0x0004                                        // 0x005b7de6    c20400
                         nop                                                              // 0x005b7de9    90
                         nop                                                              // 0x005b7dea    90
                         nop                                                              // 0x005b7deb    90
                         nop                                                              // 0x005b7dec    90
                         nop                                                              // 0x005b7ded    90
                         nop                                                              // 0x005b7dee    90
                         nop                                                              // 0x005b7def    90
?Enter@HandStateTug@@UAEXXZ:
                         sub                esp, 0x38                                     // 0x005b7df0    83ec38
                         push               ebx                                           // 0x005b7df3    53
                         xor.s              ebx, ebx                                      // 0x005b7df4    33db
                         push               ebp                                           // 0x005b7df6    55
                         push               esi                                           // 0x005b7df7    56
                         push               edi                                           // 0x005b7df8    57
                         mov.s              edi, ecx                                      // 0x005b7df9    8bf9
                         push               0x3f800000                                    // 0x005b7dfb    680000803f
                         {disp8} lea        ecx, dword ptr [edi + 0x44]                   // 0x005b7e00    8d4f44
                         {disp8} mov        dword ptr [edi + 0x18], ebx                   // 0x005b7e03    895f18
                         {disp8} mov        dword ptr [edi + 0x14], ebx                   // 0x005b7e06    895f14
                         {disp8} mov        dword ptr [edi + 0x30], ebx                   // 0x005b7e09    895f30
                         {disp8} mov        dword ptr [edi + 0x2c], ebx                   // 0x005b7e0c    895f2c
                         {disp8} mov        dword ptr [edi + 0x28], ebx                   // 0x005b7e0f    895f28
                         {disp8} mov        dword ptr [edi + 0x40], ebx                   // 0x005b7e12    895f40
                         {disp8} mov        dword ptr [edi + 0x3c], ebx                   // 0x005b7e15    895f3c
                         {disp8} mov        dword ptr [edi + 0x24], ebx                   // 0x005b7e18    895f24
                         {disp8} mov        dword ptr [edi + 0x38], ebx                   // 0x005b7e1b    895f38
                         {disp8} mov        dword ptr [edi + 0x20], ebx                   // 0x005b7e1e    895f20
                         {disp8} mov        dword ptr [edi + 0x34], ebx                   // 0x005b7e21    895f34
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x005b7e24    895f1c
                         call               @SetPosition__6ZoomerFf@12                    // 0x005b7e27    e8949ce8ff
                         push               ebx                                           // 0x005b7e2c    53
                         {disp8} lea        ecx, dword ptr [edi + 0x74]                   // 0x005b7e2d    8d4f74
                         call               @SetPosition__6ZoomerFf@12                    // 0x005b7e30    e88b9ce8ff
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x005b7e35    8b4704
                         {disp8} mov        dword ptr [edi + 0x08], ebx                   // 0x005b7e38    895f08
                         {disp8} mov        dword ptr [edi + 0x10], ebx                   // 0x005b7e3b    895f10
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]             // 0x005b7e3e    8b8804490000
                         {disp8} mov        esi, dword ptr [ecx + 0x40]                   // 0x005b7e44    8b7140
                         mov                edx, dword ptr [ecx]                          // 0x005b7e47    8b11
                         add                esi, 0x14                                     // 0x005b7e49    83c614
                         push               esi                                           // 0x005b7e4c    56
                         call               dword ptr [edx + 0x63c]                       // 0x005b7e4d    ff923c060000
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x005b7e53    8b4f04
                         {disp8} lea        eax, dword ptr [esi + 0x24]                   // 0x005b7e56    8d4624
                         mov                edx, dword ptr [eax]                          // 0x005b7e59    8b10
                         add                ecx, 0x0000492c                               // 0x005b7e5b    81c12c490000
                         mov                dword ptr [ecx], edx                          // 0x005b7e61    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005b7e63    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005b7e66    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005b7e69    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x005b7e6c    894108
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x005b7e6f    8b4704
                         {disp32} fld       dword ptr [eax + 0x0000492c]                  // 0x005b7e72    d9802c490000
                         {disp32} mov       ecx, dword ptr [eax + 0x00004934]             // 0x005b7e78    8b8834490000
                         add                eax, 0x0000492c                               // 0x005b7e7e    052c490000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b7e83    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x005b7e89    894c2438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b7e8d    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b7e93    e868951e00
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b7e98    d9442438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005b7e9c    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005b7ea2    89442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005b7ea6    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005b7eac    e84f951e00
                         {disp32} lea       edx, dword ptr [edi + 0x000000a4]             // 0x005b7eb1    8d97a4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x005b7eb7    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005b7ebb    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x005b7ebf    895c242c
                         call               _jmp_addr_0x00803630                          // 0x005b7ec3    e868b72400
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005b7ec8    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005b7ece    e8ad42f9ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x005b7ed3    8b0dc01dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x005b7ed9    8b15b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x005b7edf    a1bc1dea00
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x005b7ee4    894c2420
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x005b7ee8    8b4f04
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x005b7eeb    89542418
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x005b7eef    8d54243c
                         add                ecx, 0x0000485c                               // 0x005b7ef3    81c15c480000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005b7ef9    8944241c
                         call               _jmp_addr_0x0074cbd0                          // 0x005b7efd    e8ce4c1900
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x005b7f02    8b5704
                         add                edx, 0x78                                     // 0x005b7f05    83c278
                         push               edx                                           // 0x005b7f08    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x005b7f09    8d44241c
                         push               eax                                           // 0x005b7f0d    50
                         call               _jmp_addr_0x006e8130                          // 0x005b7f0e    e81d021300
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b7f13    d95c2418
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x005b7f17    8b4f04
                         add                ecx, 0x0000492c                               // 0x005b7f1a    81c12c490000
                         push               ecx                                           // 0x005b7f20    51
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x005b7f21    8d542424
                         push               edx                                           // 0x005b7f25    52
                         call               _jmp_addr_0x006e8130                          // 0x005b7f26    e805021300
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b7f2b    d944242c
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x005b7f2f    8b4704
                         {disp8} fsub       dword ptr [eax + 0x7c]                        // 0x005b7f32    d8607c
                         {disp32} mov       ecx, dword ptr [eax + 0x0000492c]             // 0x005b7f35    8b882c490000
                         fxch               st(1)                                         // 0x005b7f3b    d9c9
                         {disp32} mov       edx, dword ptr [eax + 0x00004934]             // 0x005b7f3d    8b9034490000
                         {disp8} fdiv       dword ptr [esp + 0x20]                        // 0x005b7f43    d8742420
                         add                esp, 0x10                                     // 0x005b7f47    83c410
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x005b7f4a    894c2424
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x005b7f4e    8954242c
                         mov.s              ebp, eax                                      // 0x005b7f52    8be8
                         fmulp              st(1), st                                     // 0x005b7f54    dec9
                         {disp8} fsubr      dword ptr [esp + 0x1c]                        // 0x005b7f56    d86c241c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005b7f5a    d95c2428
                         call               _jmp_addr_0x0046c040                          // 0x005b7f5e    e8dd40ebff
                         {disp32} fmul      dword ptr [ebp + 0x00004834]                  // 0x005b7f63    d88d34480000
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x005b7f69    8b4704
                         {disp32} mov       ebp, dword ptr [eax + 0x00004904]             // 0x005b7f6c    8ba804490000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x005b7f72    8b5500
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x005b7f75    d80d3cb28a00
                         mov.s              ecx, ebp                                      // 0x005b7f7b    8bcd
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b7f7d    d95c2410
                         call               dword ptr [edx + 0x594]                       // 0x005b7f81    ff9294050000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x005b7f87    8b4500
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b7f8a    d95c2414
                         mov.s              ecx, ebp                                      // 0x005b7f8e    8bcd
                         call               dword ptr [eax + 0x42c]                       // 0x005b7f90    ff902c040000
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b7f96    d84c2414
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x005b7f9a    8b4f04
                         {disp32} fstp      dword ptr [ecx + 0x00004944]                  // 0x005b7f9d    d99944490000
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x005b7fa3    8b4f04
                         {disp32} fld       dword ptr [ecx + 0x00004944]                  // 0x005b7fa6    d98144490000
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x005b7fac    d85c2410
                         fnstsw             ax                                            // 0x005b7fb0    dfe0
                         test               ah, 0x01                                      // 0x005b7fb2    f6c401
                         {disp8} je         _jmp_addr_0x005b7fbd                          // 0x005b7fb5    7406
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b7fb7    d9442410
                         {disp8} jmp        _jmp_addr_0x005b7fc3                          // 0x005b7fbb    eb06
_jmp_addr_0x005b7fbd:    {disp32} fld       dword ptr [ecx + 0x00004944]                  // 0x005b7fbd    d98144490000
_jmp_addr_0x005b7fc3:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x005b7fc3    8b442424
                         {disp32} fstp      dword ptr [ecx + 0x00004944]                  // 0x005b7fc7    d99944490000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x005b7fcd    8b4c2428
                         {disp8} mov        dword ptr [edi + 0x0c], 0x00000001            // 0x005b7fd1    c7470c01000000
                         {disp32} lea       edx, dword ptr [edi + 0x000000b0]             // 0x005b7fd8    8d97b0000000
                         mov                dword ptr [edx], eax                          // 0x005b7fde    8902
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x005b7fe0    8b44242c
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x005b7fe4    894a04
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x005b7fe7    894208
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x005b7fea    8b4704
                         {disp32} mov       dword ptr [eax + 0x00004928], ebx             // 0x005b7fed    899828490000
                         {disp32} mov       dword ptr [eax + 0x00004924], ebx             // 0x005b7ff3    899824490000
                         {disp32} mov       dword ptr [eax + 0x00004920], ebx             // 0x005b7ff9    899820490000
                         add                eax, 0x00004920                               // 0x005b7fff    0520490000
                         mov                eax, 0x3f800000                               // 0x005b8004    b80000803f
                         {disp32} mov       dword ptr [edi + 0x00000134], ebx             // 0x005b8009    899f34010000
                         {disp32} mov       dword ptr [edi + 0x00000130], ebx             // 0x005b800f    899f30010000
                         {disp32} mov       dword ptr [edi + 0x00000148], ebx             // 0x005b8015    899f48010000
                         {disp32} mov       dword ptr [edi + 0x00000144], ebx             // 0x005b801b    899f44010000
                         {disp32} mov       dword ptr [edi + 0x0000012c], ebx             // 0x005b8021    899f2c010000
                         {disp32} mov       dword ptr [edi + 0x00000140], ebx             // 0x005b8027    899f40010000
                         {disp32} mov       dword ptr [edi + 0x00000128], ebx             // 0x005b802d    899f28010000
                         {disp32} mov       dword ptr [edi + 0x0000013c], ebx             // 0x005b8033    899f3c010000
                         {disp32} mov       dword ptr [edi + 0x00000124], ebx             // 0x005b8039    899f24010000
                         {disp32} mov       dword ptr [edi + 0x00000120], eax             // 0x005b803f    898720010000
                         {disp32} mov       dword ptr [edi + 0x0000011c], eax             // 0x005b8045    89871c010000
                         {disp32} mov       dword ptr [edi + 0x00000138], eax             // 0x005b804b    898738010000
                         add                edi, 0x000000ec                               // 0x005b8051    81c7ec000000
                         mov                ecx, 0x0000000c                               // 0x005b8057    b90c000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005b805c    f3a5
                         pop                edi                                           // 0x005b805e    5f
                         pop                esi                                           // 0x005b805f    5e
                         pop                ebp                                           // 0x005b8060    5d
                         pop                ebx                                           // 0x005b8061    5b
                         add                esp, 0x38                                     // 0x005b8062    83c438
                         ret                                                              // 0x005b8065    c3
                         nop                                                              // 0x005b8066    90
                         nop                                                              // 0x005b8067    90
                         nop                                                              // 0x005b8068    90
                         nop                                                              // 0x005b8069    90
                         nop                                                              // 0x005b806a    90
                         nop                                                              // 0x005b806b    90
                         nop                                                              // 0x005b806c    90
                         nop                                                              // 0x005b806d    90
                         nop                                                              // 0x005b806e    90
                         nop                                                              // 0x005b806f    90
?Update@HandStateTug@@UAEXMPAULHMatrix@@@Z:
                         sub                esp, 0x00000110                               // 0x005b8070    81ec10010000
                         push               ebx                                           // 0x005b8076    53
                         push               ebp                                           // 0x005b8077    55
                         mov.s              ebp, ecx                                      // 0x005b8078    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b807a    8b4504
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]             // 0x005b807d    8b8804490000
                         {disp8} mov        edx, dword ptr [ecx + 0x40]                   // 0x005b8083    8b5140
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                   // 0x005b8086    8b4d0c
                         test               ecx, ecx                                      // 0x005b8089    85c9
                         push               esi                                           // 0x005b808b    56
                         push               edi                                           // 0x005b808c    57
                         {disp32} mov       dword ptr [esp + 0x00000080], edx             // 0x005b808d    89942480000000
                         {disp8} je         _jmp_addr_0x005b80b9                          // 0x005b8094    7423
                         {disp32} fld       dword ptr [eax + 0x000049b0]                  // 0x005b8096    d980b0490000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57c08]             // 0x005b809c    d81d080c9000
                         fnstsw             ax                                            // 0x005b80a2    dfe0
                         test               ah, 0x01                                      // 0x005b80a4    f6c401
                         {disp32} jne       _jmp_addr_0x005b89a3                          // 0x005b80a7    0f85f6080000
                         {disp8} mov        dword ptr [ebp + 0x0c], 0x00000000            // 0x005b80ad    c7450c00000000
                         {disp32} jmp       _jmp_addr_0x005b89a3                          // 0x005b80b4    e9ea080000
_jmp_addr_0x005b80b9:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005b80b9    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005b80bf    e8bc40f9ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdbc]        // 0x005b80c4    8b0dbc1dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc0]        // 0x005b80ca    8b15c01dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdb8]        // 0x005b80d0    a1b81dea00
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x005b80d5    894c242c
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b80d9    8b4d04
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x005b80dc    89542430
                         {disp32} lea       edx, dword ptr [esp + 0x000000b4]             // 0x005b80e0    8d9424b4000000
                         add                ecx, 0x0000485c                               // 0x005b80e7    81c15c480000
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005b80ed    89442428
                         call               _jmp_addr_0x0074cbd0                          // 0x005b80f1    e8da4a1900
                         {disp32} fld       dword ptr [ebp + 0x000000b0]                  // 0x005b80f6    d985b0000000
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x005b80fc    d8642428
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8100    8b4504
                         {disp32} fld       dword ptr [ebp + 0x000000b4]                  // 0x005b8103    d985b4000000
                         add                eax, 0x78                                     // 0x005b8109    83c078
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x005b810c    d864242c
                         {disp32} lea       ebx, dword ptr [ebp + 0x000000ec]             // 0x005b8110    8d9dec000000
                         {disp32} fld       dword ptr [ebp + 0x000000b8]                  // 0x005b8116    d985b8000000
                         mov.s              esi, ebx                                      // 0x005b811c    8bf3
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x005b811e    d8642430
                         {disp32} lea       edi, dword ptr [esp + 0x000000c0]             // 0x005b8122    8dbc24c0000000
                         {disp32} fmul      dword ptr [ebp + 0x000000ac]                  // 0x005b8129    d88dac000000
                         fxch               st(1)                                         // 0x005b812f    d9c9
                         {disp32} fmul      dword ptr [ebp + 0x000000a8]                  // 0x005b8131    d88da8000000
                         faddp              st(1), st                                     // 0x005b8137    dec1
                         fxch               st(1)                                         // 0x005b8139    d9c9
                         {disp32} fmul      dword ptr [ebp + 0x000000a4]                  // 0x005b813b    d88da4000000
                         faddp              st(1), st                                     // 0x005b8141    dec1
                         {disp32} fld       dword ptr [esp + 0x000000bc]                  // 0x005b8143    d98424bc000000
                         {disp32} fmul      dword ptr [ebp + 0x000000ac]                  // 0x005b814a    d88dac000000
                         {disp32} fld       dword ptr [esp + 0x000000b8]                  // 0x005b8150    d98424b8000000
                         {disp32} fmul      dword ptr [ebp + 0x000000a8]                  // 0x005b8157    d88da8000000
                         faddp              st(1), st                                     // 0x005b815d    dec1
                         {disp32} fld       dword ptr [esp + 0x000000b4]                  // 0x005b815f    d98424b4000000
                         {disp32} fmul      dword ptr [ebp + 0x000000a4]                  // 0x005b8166    d88da4000000
                         faddp              st(1), st                                     // 0x005b816c    dec1
                         fdivp              st(1), st                                     // 0x005b816e    def9
                         {disp32} fld       dword ptr [esp + 0x000000b4]                  // 0x005b8170    d98424b4000000
                         fmul               st, st(1)                                     // 0x005b8177    d8c9
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b8179    d95c2438
                         {disp32} fld       dword ptr [esp + 0x000000b8]                  // 0x005b817d    d98424b8000000
                         fmul               st, st(1)                                     // 0x005b8184    d8c9
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x005b8186    d95c243c
                         {disp32} fmul      dword ptr [esp + 0x000000bc]                  // 0x005b818a    d88c24bc000000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b8191    d9442438
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x005b8195    d8442428
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b8199    d95c2410
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b819d    d944243c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005b81a1    8b4c2410
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x005b81a5    d844242c
                         mov                dword ptr [eax], ecx                          // 0x005b81a9    8908
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b81ab    d95c2414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005b81af    8b542414
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x005b81b3    d8442430
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x005b81b7    895004
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b81ba    d95c2418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005b81be    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x005b81c2    894808
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x005b81c5    8b5504
                         {disp32} fld       dword ptr [edx + 0x00004944]                  // 0x005b81c8    d98244490000
                         mov                ecx, 0x0000000c                               // 0x005b81ce    b90c000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005b81d3    f3a5
                         {disp32} lea       ecx, dword ptr [esp + 0x000000c0]             // 0x005b81d5    8d8c24c0000000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b81dc    d95c242c
                         call               _jmp_addr_0x007fb5c0                          // 0x005b81e0    e8db332400
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b81e5    d944242c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b81e9    d944242c
                         {disp32} fmul      dword ptr [esp + 0x000000cc]                  // 0x005b81ed    d88c24cc000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b81f4    8b4d04
                         {disp32} fadd      dword ptr [esp + 0x000000e4]                  // 0x005b81f7    d88424e4000000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005b81fe    d95c2428
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b8202    d944242c
                         {disp32} fmul      dword ptr [esp + 0x000000d0]                  // 0x005b8206    d88c24d0000000
                         {disp32} fadd      dword ptr [esp + 0x000000e8]                  // 0x005b820d    d88424e8000000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b8214    d95c242c
                         {disp32} fld       dword ptr [esp + 0x000000d4]                  // 0x005b8218    d98424d4000000
                         fmul               st, st(1)                                     // 0x005b821f    d8c9
                         {disp32} fadd      dword ptr [esp + 0x000000ec]                  // 0x005b8221    d88424ec000000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005b8228    d95c2430
                         fstp               st(0)                                         // 0x005b822c    ddd8
                         {disp8} fld        dword ptr [ecx + 0x78]                        // 0x005b822e    d94178
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x005b8231    d8642428
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b8235    d95c2410
                         {disp8} fld        dword ptr [ecx + 0x7c]                        // 0x005b8239    d9417c
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x005b823c    d864242c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b8240    d95c2414
                         {disp32} fld       dword ptr [ecx + 0x00000080]                  // 0x005b8244    d98180000000
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x005b824a    d8642430
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b824e    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b8252    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b8256    d84c2410
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b825a    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b825e    d84c2418
                         faddp              st(1), st                                     // 0x005b8262    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b8264    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b8268    d84c2414
                         faddp              st(1), st                                     // 0x005b826c    dec1
                         fsqrt                                                            // 0x005b826e    d9fa
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b8270    d95c241c
                         {disp32} fld       dword ptr [rdata_bytes + 0x57c0c]             // 0x005b8274    d9050c0c9000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b827a    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b827e    d95c2420
                         call               _jmp_addr_0x0046bfb0                          // 0x005b8282    e8293debff
                         {disp8} fcomp      dword ptr [esp + 0x20]                        // 0x005b8287    d85c2420
                         fnstsw             ax                                            // 0x005b828b    dfe0
                         test               ah, 0x41                                      // 0x005b828d    f6c441
                         {disp8} jne        _jmp_addr_0x005b82be                          // 0x005b8290    752c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b8292    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c0c]             // 0x005b8296    d80d0c0c9000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b829c    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b82a0    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c0c]             // 0x005b82a4    d80d0c0c9000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b82aa    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b82ae    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c0c]             // 0x005b82b2    d80d0c0c9000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b82b8    d95c2418
                         {disp8} jmp        _jmp_addr_0x005b82ea                          // 0x005b82bc    eb2c
_jmp_addr_0x005b82be:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b82be    8b4d04
                         call               _jmp_addr_0x0046bfb0                          // 0x005b82c1    e8ea3cebff
                         {disp8} fdiv       dword ptr [esp + 0x1c]                        // 0x005b82c6    d874241c
                         fld                st(0)                                         // 0x005b82ca    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b82cc    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b82d0    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b82d4    d9442414
                         fmul               st, st(1)                                     // 0x005b82d8    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b82da    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b82de    d9442418
                         fmul               st, st(1)                                     // 0x005b82e2    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b82e4    d95c2418
                         fstp               st(0)                                         // 0x005b82e8    ddd8
_jmp_addr_0x005b82ea:    {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b82ea    8b4504
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]             // 0x005b82ed    8b8804490000
                         mov                edx, dword ptr [ecx]                          // 0x005b82f3    8b11
                         call               dword ptr [edx + 0x638]                       // 0x005b82f5    ff9238060000
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x005b82fb    d9542420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2602c]             // 0x005b82ff    d80d2cf08c00
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8305    8b4504
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b8308    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b830c    d944241c
                         {disp32} fadd      dword ptr [eax + 0x00004944]                  // 0x005b8310    d88044490000
                         {disp32} fdiv      dword ptr [eax + 0x00004944]                  // 0x005b8316    d8b044490000
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ea18]             // 0x005b831c    d905187a8c00
                         fcomp              st(1)                                         // 0x005b8322    d8d9
                         fnstsw             ax                                            // 0x005b8324    dfe0
                         test               ah, 0x01                                      // 0x005b8326    f6c401
                         {disp8} je         _jmp_addr_0x005b8337                          // 0x005b8329    740c
                         fstp               st(0)                                         // 0x005b832b    ddd8
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3fa66666            // 0x005b832d    c744241c6666a63f
                         {disp8} jmp        _jmp_addr_0x005b833b                          // 0x005b8335    eb04
_jmp_addr_0x005b8337:    {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b8337    d95c241c
_jmp_addr_0x005b833b:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005b833b    8b44241c
                         push               0x3e99999a                                    // 0x005b833f    689a99993e
                         xor.s              edi, edi                                      // 0x005b8344    33ff
                         push               edi                                           // 0x005b8346    57
                         {disp32} lea       esi, dword ptr [ebp + 0x0000011c]             // 0x005b8347    8db51c010000
                         push               eax                                           // 0x005b834d    50
                         mov.s              ecx, esi                                      // 0x005b834e    8bce
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x005b8350    e80bfae4ff
                         {disp32} fld       dword ptr [esp + 0x00000124]                  // 0x005b8355    d9842424010000
                         {disp8} fadd       dword ptr [esi + 0x14]                        // 0x005b835c    d84614
                         {disp8} fcom       dword ptr [esi + 0x18]                        // 0x005b835f    d85618
                         {disp8} fst        dword ptr [esi + 0x14]                        // 0x005b8362    d95614
                         fnstsw             ax                                            // 0x005b8365    dfe0
                         test               ah, 0x01                                      // 0x005b8367    f6c401
                         {disp8} jne        _jmp_addr_0x005b8384                          // 0x005b836a    7518
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005b836c    8b4e04
                         fstp               st(0)                                         // 0x005b836f    ddd8
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x005b8371    8b5608
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x005b8374    8b4618
                         mov                dword ptr [esi], ecx                          // 0x005b8377    890e
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x005b8379    89560c
                         {disp8} mov        dword ptr [esi + 0x10], edi                   // 0x005b837c    897e10
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x005b837f    894614
                         {disp8} jmp        _jmp_addr_0x005b83d8                          // 0x005b8382    eb54
_jmp_addr_0x005b8384:    fld                st(0)                                         // 0x005b8384    d9c0
                         fld                st(0)                                         // 0x005b8386    d9c0
                         fmulp              st(1), st                                     // 0x005b8388    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b838a    d80db4a38a00
                         fld                st(1)                                         // 0x005b8390    d9c1
                         fmul               st, st(1)                                     // 0x005b8392    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x005b8394    d80d6cb28a00
                         fld                st(2)                                         // 0x005b839a    d9c2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x005b839c    d84e24
                         fld                st(2)                                         // 0x005b839f    d9c2
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x005b83a1    d84e28
                         faddp              st(1), st                                     // 0x005b83a4    dec1
                         fld                st(1)                                         // 0x005b83a6    d9c1
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x005b83a8    d84e2c
                         faddp              st(1), st                                     // 0x005b83ab    dec1
                         {disp8} fadd       dword ptr [esi + 0x20]                        // 0x005b83ad    d84620
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x005b83b0    d95e0c
                         fld                st(1)                                         // 0x005b83b3    d9c1
                         fmul               st, st(2)                                     // 0x005b83b5    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x005b83b7    d80d68b28a00
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x005b83bd    d84e2c
                         fxch               st(1)                                         // 0x005b83c0    d9c9
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x005b83c2    d84e28
                         faddp              st(1), st                                     // 0x005b83c5    dec1
                         fxch               st(2)                                         // 0x005b83c7    d9ca
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x005b83c9    d84e20
                         faddp              st(2), st                                     // 0x005b83cc    dec2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x005b83ce    d84e24
                         faddp              st(1), st                                     // 0x005b83d1    dec1
                         {disp8} fadd       dword ptr [esi + 0x1c]                        // 0x005b83d3    d8461c
                         fstp               dword ptr [esi]                               // 0x005b83d6    d91e
_jmp_addr_0x005b83d8:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b83d8    8b4d04
                         {disp32} mov       ecx, dword ptr [ecx + 0x00004904]             // 0x005b83db    8b8904490000
                         mov                edx, dword ptr [ecx]                          // 0x005b83e1    8b11
                         call               dword ptr [edx + 0x788]                       // 0x005b83e3    ff9288070000
                         cmp                eax, 0x03                                     // 0x005b83e9    83f803
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b83ec    8b4504
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]             // 0x005b83ef    8b8804490000
                         mov                edx, dword ptr [ecx]                          // 0x005b83f5    8b11
                         sete               byte ptr [esp + 0x37]                         // 0x005b83f7    0f94442437
                         call               dword ptr [edx + 0x338]                       // 0x005b83fc    ff9238030000
                         test               eax, eax                                      // 0x005b8402    85c0
                         {disp8} jne        _jmp_addr_0x005b8414                          // 0x005b8404    750e
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8406    8b4504
                         {disp32} mov       dword ptr [eax + 0x00004908], edi             // 0x005b8409    89b808490000
                         {disp32} jmp       _jmp_addr_0x005b84b8                          // 0x005b840f    e9a4000000
_jmp_addr_0x005b8414:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8414    8b4d04
                         call               _jmp_addr_0x0046bfb0                          // 0x005b8417    e8943bebff
                         {disp8} fcomp      dword ptr [esp + 0x24]                        // 0x005b841c    d85c2424
                         fnstsw             ax                                            // 0x005b8420    dfe0
                         test               ah, 0x01                                      // 0x005b8422    f6c401
                         {disp32} jne       _jmp_addr_0x005b84b8                          // 0x005b8425    0f858d000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b842b    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b842f    d84c2410
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b8433    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b8437    d84c2418
                         faddp              st(1), st                                     // 0x005b843b    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b843d    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b8441    d84c2414
                         faddp              st(1), st                                     // 0x005b8445    dec1
                         fsqrt                                                            // 0x005b8447    d9fa
                         {disp8} fcomp      dword ptr [esp + 0x20]                        // 0x005b8449    d85c2420
                         fnstsw             ax                                            // 0x005b844d    dfe0
                         test               ah, 0x41                                      // 0x005b844f    f6c441
                         {disp8} jne        _jmp_addr_0x005b84b8                          // 0x005b8452    7564
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8454    8b4d04
                         {disp32} mov       edx, dword ptr [ecx + 0x00004904]             // 0x005b8457    8b9104490000
                         push               edi                                           // 0x005b845d    57
                         push               0x009d96e0                                    // 0x005b845e    68e0969d00
                         push               0x009c7f50                                    // 0x005b8463    68507f9c00
                         push               edi                                           // 0x005b8468    57
                         push               edx                                           // 0x005b8469    52
                         call               ___RTDynamicCast                              // 0x005b846a    e8aad52000
                         add                esp, 0x14                                     // 0x005b846f    83c414
                         cmp.s              eax, edi                                      // 0x005b8472    3bc7
                         {disp8} je         _jmp_addr_0x005b8483                          // 0x005b8474    740d
                         test               byte ptr [eax + 0x24], 0x40                   // 0x005b8476    f6402440
                         {disp8} jne        _jmp_addr_0x005b8483                          // 0x005b847a    7507
                         mov.s              ecx, eax                                      // 0x005b847c    8bc8
                         call               _jmp_addr_0x0074bd20                          // 0x005b847e    e89d381900
_jmp_addr_0x005b8483:    {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8483    8b4504
                         push               edi                                           // 0x005b8486    57
                         push               0x009c8de8                                    // 0x005b8487    68e88d9c00
                         {disp32} mov       dword ptr [eax + 0x00004908], edi             // 0x005b848c    89b808490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8492    8b4d04
                         {disp32} mov       edx, dword ptr [ecx + 0x00004904]             // 0x005b8495    8b9104490000
                         push               0x009c7f50                                    // 0x005b849b    68507f9c00
                         push               edi                                           // 0x005b84a0    57
                         push               edx                                           // 0x005b84a1    52
                         call               ___RTDynamicCast                              // 0x005b84a2    e872d52000
                         add                esp, 0x14                                     // 0x005b84a7    83c414
                         test               eax, eax                                      // 0x005b84aa    85c0
                         {disp8} je         _jmp_addr_0x005b84b8                          // 0x005b84ac    740a
                         {disp32} mov       dword ptr [data_bytes + 0x22d58c], 0x00000001 // 0x005b84ae    c7058c35bf0001000000
_jmp_addr_0x005b84b8:    {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b84b8    8b4504
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005b84bb    d9442428
                         {disp32} fsub      dword ptr [eax + 0x0000492c]                  // 0x005b84bf    d8a02c490000
                         {disp8} mov        cl, byte ptr [esp + 0x37]                     // 0x005b84c5    8a4c2437
                         test               cl, cl                                        // 0x005b84c9    84c9
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b84cb    d944242c
                         {disp32} fsub      dword ptr [eax + 0x00004930]                  // 0x005b84cf    d8a030490000
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005b84d5    d9442430
                         {disp32} fsub      dword ptr [eax + 0x00004934]                  // 0x005b84d9    d8a034490000
                         fld                st(0)                                         // 0x005b84df    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b84e1    d84c2414
                         fld                st(2)                                         // 0x005b84e5    d9c2
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b84e7    d84c2418
                         fsubp              st(1), st                                     // 0x005b84eb    dee9
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005b84ed    d95c2438
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b84f1    d9442418
                         fmul               st, st(3)                                     // 0x005b84f5    d8cb
                         fxch               st(1)                                         // 0x005b84f7    d9c9
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b84f9    d84c2410
                         fsubp              st(1), st                                     // 0x005b84fd    dee9
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x005b84ff    d95c243c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b8503    d84c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b8507    d9442414
                         fmul               st, st(2)                                     // 0x005b850b    d8ca
                         fsubp              st(1), st                                     // 0x005b850d    dee9
                         fstp               st(1)                                         // 0x005b850f    ddd9
                         {disp8} je         _jmp_addr_0x005b852d                          // 0x005b8511    741a
                         fstp               st(0)                                         // 0x005b8513    ddd8
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x005b8515    c744241800000000
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005b851d    d90598a38a00
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x005b8523    c744241400000000
                         {disp8} jmp        _jmp_addr_0x005b8567                          // 0x005b852b    eb3a
_jmp_addr_0x005b852d:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b852d    d90590a38a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x57c10]             // 0x005b8533    d835100c9000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005b8539    d9442438
                         fmul               st, st(1)                                     // 0x005b853d    d8c9
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b853f    d944243c
                         fmul               st, st(2)                                     // 0x005b8543    d8ca
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x005b8545    d95c243c
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x005b8549    8b4c243c
                         fxch               st(2)                                         // 0x005b854d    d9ca
                         fmul               st, st(1)                                     // 0x005b854f    d8c9
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x005b8551    894c2414
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x005b8555    d95c2440
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x005b8559    8b542440
                         fxch               st(1)                                         // 0x005b855d    d9c9
                         fxch               st(1)                                         // 0x005b855f    d9c9
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x005b8561    89542418
                         fstp               st(0)                                         // 0x005b8565    ddd8
_jmp_addr_0x005b8567:    {disp32} fmul      dword ptr [esp + 0x00000124]                  // 0x005b8567    d88c2424010000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b856e    d9442414
                         {disp32} fmul      dword ptr [esp + 0x00000124]                  // 0x005b8572    d88c2424010000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b8579    d95c242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b857d    d9442418
                         {disp32} fmul      dword ptr [esp + 0x00000124]                  // 0x005b8581    d88c2424010000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005b8588    d95c2430
                         {disp32} fld       dword ptr [eax + 0x00004920]                  // 0x005b858c    d98020490000
                         {disp32} fld       dword ptr [eax + 0x00004924]                  // 0x005b8592    d98024490000
                         {disp32} fld       dword ptr [eax + 0x00004928]                  // 0x005b8598    d98028490000
                         fld                st(0)                                         // 0x005b859e    d9c0
                         fmul               st, st(1)                                     // 0x005b85a0    d8c9
                         fld                st(3)                                         // 0x005b85a2    d9c3
                         fmul               st, st(4)                                     // 0x005b85a4    d8cc
                         faddp              st(1), st                                     // 0x005b85a6    dec1
                         fld                st(2)                                         // 0x005b85a8    d9c2
                         fmul               st, st(3)                                     // 0x005b85aa    d8cb
                         faddp              st(1), st                                     // 0x005b85ac    dec1
                         fsqrt                                                            // 0x005b85ae    d9fa
                         fstp               st(3)                                         // 0x005b85b0    dddb
                         fstp               st(0)                                         // 0x005b85b2    ddd8
                         fstp               st(0)                                         // 0x005b85b4    ddd8
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c14]             // 0x005b85b6    d80d140c9000
                         {disp32} fmul      dword ptr [esp + 0x00000124]                  // 0x005b85bc    d88c2424010000
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x57c10]             // 0x005b85c3    d835100c9000
                         fld                st(0)                                         // 0x005b85c9    d9c0
                         {disp32} fmul      dword ptr [eax + 0x00004920]                  // 0x005b85cb    d88820490000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b85d1    d95c2410
                         fld                st(0)                                         // 0x005b85d5    d9c0
                         {disp32} fmul      dword ptr [eax + 0x00004924]                  // 0x005b85d7    d88824490000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b85dd    d95c2414
                         {disp32} fmul      dword ptr [eax + 0x00004928]                  // 0x005b85e1    d88828490000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b85e7    d95c2418
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x005b85eb    d8642410
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b85ef    d944242c
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005b85f3    d8642414
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b85f7    d95c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005b85fb    d9442430
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x005b85ff    d8642418
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005b8603    d95c2430
                         {disp32} fadd      dword ptr [eax + 0x00004920]                  // 0x005b8607    d88020490000
                         {disp32} fstp      dword ptr [eax + 0x00004920]                  // 0x005b860d    d99820490000
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b8613    d944242c
                         {disp32} fadd      dword ptr [eax + 0x00004924]                  // 0x005b8617    d88024490000
                         {disp32} fstp      dword ptr [eax + 0x00004924]                  // 0x005b861d    d99824490000
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005b8623    d9442430
                         {disp32} fadd      dword ptr [eax + 0x00004928]                  // 0x005b8627    d88028490000
                         {disp32} fstp      dword ptr [eax + 0x00004928]                  // 0x005b862d    d99828490000
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8633    8b4504
                         {disp32} fld       dword ptr [esp + 0x00000124]                  // 0x005b8636    d9842424010000
                         add                eax, 0x00004920                               // 0x005b863d    0520490000
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x005b8642    d84808
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b8645    d95c241c
                         {disp32} fld       dword ptr [esp + 0x00000124]                  // 0x005b8649    d9842424010000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005b8650    8b4c241c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x005b8654    d84804
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b8657    d95c2420
                         {disp32} fld       dword ptr [esp + 0x00000124]                  // 0x005b865b    d9842424010000
                         fmul               dword ptr [eax]                               // 0x005b8662    d808
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005b8664    8b442420
                         {disp8} mov        dword ptr [esp + 0x78], eax                   // 0x005b8668    89442478
                         {disp8} mov        dword ptr [esp + 0x7c], ecx                   // 0x005b866c    894c247c
                         {disp8} fstp       dword ptr [esp + 0x74]                        // 0x005b8670    d95c2474
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x005b8674    d9442474
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b8678    d81d98a38a00
                         fnstsw             ax                                            // 0x005b867e    dfe0
                         test               ah, 0x40                                      // 0x005b8680    f6c440
                         {disp8} je         _jmp_addr_0x005b86af                          // 0x005b8683    742a
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b8685    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b8689    d81d98a38a00
                         fnstsw             ax                                            // 0x005b868f    dfe0
                         test               ah, 0x40                                      // 0x005b8691    f6c440
                         {disp8} je         _jmp_addr_0x005b86af                          // 0x005b8694    7419
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b8696    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b869a    d81d98a38a00
                         fnstsw             ax                                            // 0x005b86a0    dfe0
                         test               ah, 0x40                                      // 0x005b86a2    f6c440
                         {disp8} je         _jmp_addr_0x005b86af                          // 0x005b86a5    7408
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005b86a7    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x005b86f1                          // 0x005b86ad    eb42
_jmp_addr_0x005b86af:    {disp8} fld        dword ptr [esp + 0x74]                        // 0x005b86af    d9442474
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x005b86b3    d84c2474
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005b86b7    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b86bb    d84c2420
                         faddp              st(1), st                                     // 0x005b86bf    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b86c1    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b86c5    d84c241c
                         faddp              st(1), st                                     // 0x005b86c9    dec1
                         fsqrt                                                            // 0x005b86cb    d9fa
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b86cd    d90590a38a00
                         fdiv               st, st(1)                                     // 0x005b86d3    d8f1
                         fld                st(0)                                         // 0x005b86d5    d9c0
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x005b86d7    d84c2474
                         {disp8} fstp       dword ptr [esp + 0x74]                        // 0x005b86db    d95c2474
                         fld                st(0)                                         // 0x005b86df    d9c0
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b86e1    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x78]                        // 0x005b86e5    d95c2478
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005b86e9    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x7c]                        // 0x005b86ed    d95c247c
_jmp_addr_0x005b86f1:    push               ecx                                           // 0x005b86f1    51
                         fstp               dword ptr [esp]                               // 0x005b86f2    d91c24
                         {disp8} lea        edx, dword ptr [esp + 0x78]                   // 0x005b86f5    8d542478
                         {disp32} lea       ecx, dword ptr [esp + 0x00000088]             // 0x005b86f9    8d8c2488000000
                         call               _jmp_addr_0x007fb180                          // 0x005b8700    e87b2a2400
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x005b8705    8b5504
                         {disp32} mov       ecx, dword ptr [edx + 0x00004904]             // 0x005b8708    8b8a04490000
                         mov                eax, dword ptr [ecx]                          // 0x005b870e    8b01
                         call               dword ptr [eax + 0x42c]                       // 0x005b8710    ff902c040000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b8716    d80db4a38a00
                         mov.s              edx, ebx                                      // 0x005b871c    8bd3
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x005b871e    8d4c2444
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x005b8722    d954242c
                         {disp8} fmul       dword ptr [ebx + 0x0c]                        // 0x005b8726    d84b0c
                         {disp8} fadd       dword ptr [ebx + 0x24]                        // 0x005b8729    d84324
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b872c    d95c2410
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b8730    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x10]                        // 0x005b8734    d84b10
                         {disp8} fadd       dword ptr [ebx + 0x28]                        // 0x005b8737    d84328
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b873a    d95c2414
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b873e    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x14]                        // 0x005b8742    d84b14
                         {disp8} fadd       dword ptr [ebx + 0x2c]                        // 0x005b8745    d8432c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b8748    d95c2418
                         call               _jmp_addr_0x005b5b90                          // 0x005b874c    e83fd4ffff
                         {disp32} fld       dword ptr [esp + 0x0000009c]                  // 0x005b8751    d984249c000000
                         {disp8} fmul       dword ptr [esp + 0x4c]                        // 0x005b8758    d84c244c
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x005b875c    d9842490000000
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x005b8763    d84c2448
                         faddp              st(1), st                                     // 0x005b8767    dec1
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x005b8769    d9842484000000
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x005b8770    d84c2444
                         faddp              st(1), st                                     // 0x005b8774    dec1
                         fstp               dword ptr [ebx]                               // 0x005b8776    d91b
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x005b8778    d98424a0000000
                         {disp8} fmul       dword ptr [esp + 0x4c]                        // 0x005b877f    d84c244c
                         {disp32} fld       dword ptr [esp + 0x00000094]                  // 0x005b8783    d9842494000000
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x005b878a    d84c2448
                         faddp              st(1), st                                     // 0x005b878e    dec1
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x005b8790    d9842488000000
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x005b8797    d84c2444
                         faddp              st(1), st                                     // 0x005b879b    dec1
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x005b879d    d95b04
                         {disp32} fld       dword ptr [esp + 0x000000a4]                  // 0x005b87a0    d98424a4000000
                         {disp8} fmul       dword ptr [esp + 0x4c]                        // 0x005b87a7    d84c244c
                         {disp32} fld       dword ptr [esp + 0x00000098]                  // 0x005b87ab    d9842498000000
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x005b87b2    d84c2448
                         faddp              st(1), st                                     // 0x005b87b6    dec1
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x005b87b8    d984248c000000
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x005b87bf    d84c2444
                         faddp              st(1), st                                     // 0x005b87c3    dec1
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x005b87c5    d95b08
                         {disp32} fld       dword ptr [esp + 0x0000009c]                  // 0x005b87c8    d984249c000000
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b87cf    d84c2458
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x005b87d3    d9842490000000
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b87da    d84c2454
                         faddp              st(1), st                                     // 0x005b87de    dec1
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x005b87e0    d9842484000000
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b87e7    d84c2450
                         faddp              st(1), st                                     // 0x005b87eb    dec1
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x005b87ed    d95b0c
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x005b87f0    d98424a0000000
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b87f7    d84c2458
                         {disp32} fld       dword ptr [esp + 0x00000094]                  // 0x005b87fb    d9842494000000
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b8802    d84c2454
                         faddp              st(1), st                                     // 0x005b8806    dec1
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x005b8808    d9842488000000
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b880f    d84c2450
                         faddp              st(1), st                                     // 0x005b8813    dec1
                         {disp8} fstp       dword ptr [ebx + 0x10]                        // 0x005b8815    d95b10
                         {disp32} fld       dword ptr [esp + 0x000000a4]                  // 0x005b8818    d98424a4000000
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b881f    d84c2458
                         {disp32} fld       dword ptr [esp + 0x00000098]                  // 0x005b8823    d9842498000000
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b882a    d84c2454
                         faddp              st(1), st                                     // 0x005b882e    dec1
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x005b8830    d984248c000000
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b8837    d84c2450
                         faddp              st(1), st                                     // 0x005b883b    dec1
                         {disp8} fstp       dword ptr [ebx + 0x14]                        // 0x005b883d    d95b14
                         {disp32} fld       dword ptr [esp + 0x0000009c]                  // 0x005b8840    d984249c000000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000080]             // 0x005b8847    8b8c2480000000
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x005b884e    d84c2464
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x005b8852    8d4114
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x005b8855    d9842490000000
                         mov                ecx, 0x0000000c                               // 0x005b885c    b90c000000
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005b8861    d84c2460
                         mov.s              esi, ebx                                      // 0x005b8865    8bf3
                         mov.s              edi, eax                                      // 0x005b8867    8bf8
                         faddp              st(1), st                                     // 0x005b8869    dec1
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x005b886b    d9842484000000
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b8872    d84c245c
                         faddp              st(1), st                                     // 0x005b8876    dec1
                         {disp8} fstp       dword ptr [ebx + 0x18]                        // 0x005b8878    d95b18
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x005b887b    d98424a0000000
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x005b8882    d84c2464
                         {disp32} fld       dword ptr [esp + 0x00000094]                  // 0x005b8886    d9842494000000
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005b888d    d84c2460
                         faddp              st(1), st                                     // 0x005b8891    dec1
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x005b8893    d9842488000000
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b889a    d84c245c
                         faddp              st(1), st                                     // 0x005b889e    dec1
                         {disp8} fstp       dword ptr [ebx + 0x1c]                        // 0x005b88a0    d95b1c
                         {disp32} fld       dword ptr [esp + 0x000000a4]                  // 0x005b88a3    d98424a4000000
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x005b88aa    d84c2464
                         {disp32} fld       dword ptr [esp + 0x00000098]                  // 0x005b88ae    d9842498000000
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005b88b5    d84c2460
                         faddp              st(1), st                                     // 0x005b88b9    dec1
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x005b88bb    d984248c000000
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b88c2    d84c245c
                         faddp              st(1), st                                     // 0x005b88c6    dec1
                         {disp8} fstp       dword ptr [ebx + 0x20]                        // 0x005b88c8    d95b20
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b88cb    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x0c]                        // 0x005b88cf    d84b0c
                         {disp8} fadd       dword ptr [ebx + 0x24]                        // 0x005b88d2    d84324
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b88d5    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x10]                        // 0x005b88d9    d84b10
                         {disp8} fadd       dword ptr [ebx + 0x28]                        // 0x005b88dc    d84328
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x005b88df    d95c243c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005b88e3    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x14]                        // 0x005b88e7    d84b14
                         {disp8} fadd       dword ptr [ebx + 0x2c]                        // 0x005b88ea    d8432c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005b88ed    f3a5
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x005b88ef    d95c2440
                         {disp8} mov        cl, byte ptr [esp + 0x37]                     // 0x005b88f3    8a4c2437
                         test               cl, cl                                        // 0x005b88f7    84c9
                         {disp8} je         _jmp_addr_0x005b8912                          // 0x005b88f9    7417
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b88fb    8b4d04
                         fstp               st(0)                                         // 0x005b88fe    ddd8
                         add                ecx, 0x00004938                               // 0x005b8900    81c138490000
                         xor.s              edx, edx                                      // 0x005b8906    33d2
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x005b8908    895108
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005b890b    895104
                         mov                dword ptr [ecx], edx                          // 0x005b890e    8911
                         {disp8} jmp        _jmp_addr_0x005b898d                          // 0x005b8910    eb7b
_jmp_addr_0x005b8912:    {disp32} fld       dword ptr [ebp + 0x0000011c]                  // 0x005b8912    d9851c010000
                         fld                st(0)                                         // 0x005b8918    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x005b891a    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x005b891d    d9580c
                         fld                st(0)                                         // 0x005b8920    d9c0
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x005b8922    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x005b8925    d95810
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x005b8928    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x005b892b    d95814
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b892e    8b4d04
                         add                ecx, 0x00004938                               // 0x005b8931    81c138490000
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x005b8937    d8642410
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005b893b    d944243c
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005b893f    d8642414
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005b8943    d95c242c
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005b8947    d9442440
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005b894b    8b54242c
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x005b894f    d8642418
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005b8953    895104
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005b8956    d95c2430
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x005b895a    8b542430
                         fstp               dword ptr [ecx]                               // 0x005b895e    d919
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x005b8960    895108
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b8963    d90590a38a00
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8969    8b4d04
                         {disp32} fdiv      dword ptr [esp + 0x00000124]                  // 0x005b896c    d8b42424010000
                         add                ecx, 0x00004938                               // 0x005b8973    81c138490000
                         fld                st(0)                                         // 0x005b8979    d9c0
                         fmul               dword ptr [ecx]                               // 0x005b897b    d809
                         fstp               dword ptr [ecx]                               // 0x005b897d    d919
                         fld                st(0)                                         // 0x005b897f    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x005b8981    d84904
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x005b8984    d95904
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x005b8987    d84908
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x005b898a    d95908
_jmp_addr_0x005b898d:    {disp32} lea       edi, dword ptr [ebp + 0x000000bc]             // 0x005b898d    8dbdbc000000
                         mov                ecx, 0x0000000c                               // 0x005b8993    b90c000000
                         mov.s              esi, eax                                      // 0x005b8998    8bf0
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005b899a    f3a5
                         {disp8} mov        dword ptr [ebp + 0x10], 0x00000001            // 0x005b899c    c7451001000000
_jmp_addr_0x005b89a3:    call               _jmp_addr_0x0046c040                          // 0x005b89a3    e89836ebff
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005b89a8    d95c241c
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b89ac    8b4504
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]             // 0x005b89af    8b8804490000
                         test               ecx, ecx                                      // 0x005b89b5    85c9
                         {disp32} je        _jmp_addr_0x005b8e11                          // 0x005b89b7    0f8454040000
                         {disp32} mov       ecx, dword ptr [eax + 0x0000490c]             // 0x005b89bd    8b880c490000
                         dec                ecx                                           // 0x005b89c3    49
                         cmp                ecx, 0x06                                     // 0x005b89c4    83f906
                         {disp32} ja        _jmp_addr_0x005b8c16                          // 0x005b89c7    0f8749020000
                         jmp                dword ptr [ecx*4 + 0x5b8e20]                  // 0x005b89cd    ff248d208e5b00
                         {disp32} mov       eax, dword ptr [eax + 0x00004904]             // 0x005b89d4    8b8004490000
                         mov                edx, dword ptr [eax]                          // 0x005b89da    8b10
                         mov.s              ecx, eax                                      // 0x005b89dc    8bc8
                         call               dword ptr [edx + 0x590]                       // 0x005b89de    ff9290050000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]             // 0x005b89e4    d80d986c8c00
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b89ea    8b4d04
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b89ed    d944241c
                         {disp32} fmul      dword ptr [ecx + 0x00004834]                  // 0x005b89f1    d88934480000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]             // 0x005b89f7    d80d986c8c00
                         fdivp              st(1), st                                     // 0x005b89fd    def9
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b89ff    d90590a38a00
                         fcomp              st(1)                                         // 0x005b8a05    d8d9
                         fnstsw             ax                                            // 0x005b8a07    dfe0
                         test               ah, 0x01                                      // 0x005b8a09    f6c401
                         {disp8} je         _jmp_addr_0x005b8a1a                          // 0x005b8a0c    740c
                         fstp               st(0)                                         // 0x005b8a0e    ddd8
                         {disp8} mov        dword ptr [esp + 0x20], 0x3f800000            // 0x005b8a10    c74424200000803f
                         {disp8} jmp        _jmp_addr_0x005b8a1e                          // 0x005b8a18    eb04
_jmp_addr_0x005b8a1a:    {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b8a1a    d95c2420
_jmp_addr_0x005b8a1e:    {disp32} mov       eax, dword ptr [ecx + 0x00004904]             // 0x005b8a1e    8b8104490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8a24    8b4d04
                         {disp32} mov       esi, dword ptr [ecx + 0x00004904]             // 0x005b8a27    8bb104490000
                         mov                edx, dword ptr [esi]                          // 0x005b8a2d    8b16
                         mov.s              ecx, esi                                      // 0x005b8a2f    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005b8a31    8944241c
                         call               dword ptr [edx + 0x594]                       // 0x005b8a35    ff9294050000
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b8a3b    d95c2424
                         mov                eax, dword ptr [esi]                          // 0x005b8a3f    8b06
                         mov.s              ecx, esi                                      // 0x005b8a41    8bce
                         call               dword ptr [eax + 0x42c]                       // 0x005b8a43    ff902c040000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b8a49    d84c2424
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8a4d    8b4d04
                         push               0x0                                           // 0x005b8a50    6a00
                         {disp32} fstp      dword ptr [ecx + 0x00004944]                  // 0x005b8a52    d99944490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8a58    8b4d04
                         push               0x6                                           // 0x005b8a5b    6a06
                         call               @GetAnim__9MorphableFll@16                    // 0x005b8a5d    e8ee0b0600
                         mov.s              ebx, eax                                      // 0x005b8a62    8bd8
                         fild               dword ptr [ebx]                               // 0x005b8a64    db03
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005b8a66    d80db4a38a00
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b8a6c    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x005b8a72    d8642420
                         fmulp              st(1), st                                     // 0x005b8a76    dec9
                         call               _jmp_addr_0x007a1400                          // 0x005b8a78    e883891e00
                         {disp8} mov        dword ptr [ebp + 0x08], eax                   // 0x005b8a7d    894508
                         {disp32} jmp       _jmp_addr_0x005b8c1a                          // 0x005b8a80    e995010000
                         {disp32} mov       edx, dword ptr [eax + 0x00004904]             // 0x005b8a85    8b9004490000
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8a8b    8b4504
                         {disp32} mov       esi, dword ptr [eax + 0x00004904]             // 0x005b8a8e    8bb004490000
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005b8a94    8954241c
                         mov                edx, dword ptr [esi]                          // 0x005b8a98    8b16
                         mov.s              ecx, esi                                      // 0x005b8a9a    8bce
                         call               dword ptr [edx + 0x594]                       // 0x005b8a9c    ff9294050000
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b8aa2    d95c2424
                         mov                eax, dword ptr [esi]                          // 0x005b8aa6    8b06
                         mov.s              ecx, esi                                      // 0x005b8aa8    8bce
                         call               dword ptr [eax + 0x42c]                       // 0x005b8aaa    ff902c040000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b8ab0    d84c2424
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8ab4    8b4d04
                         push               0x0                                           // 0x005b8ab7    6a00
                         {disp32} fstp      dword ptr [ecx + 0x00004944]                  // 0x005b8ab9    d99944490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8abf    8b4d04
                         push               0x0                                           // 0x005b8ac2    6a00
                         call               @GetAnim__9MorphableFll@16                    // 0x005b8ac4    e8870b0600
                         mov.s              ebx, eax                                      // 0x005b8ac9    8bd8
                         mov                edx, dword ptr [ebx]                          // 0x005b8acb    8b13
                         sar                edx, 1                                        // 0x005b8acd    d1fa
                         {disp8} mov        dword ptr [ebp + 0x08], edx                   // 0x005b8acf    895508
                         {disp32} jmp       _jmp_addr_0x005b8c1a                          // 0x005b8ad2    e943010000
                         {disp32} mov       eax, dword ptr [eax + 0x00004904]             // 0x005b8ad7    8b8004490000
                         mov                edx, dword ptr [eax]                          // 0x005b8add    8b10
                         mov.s              ecx, eax                                      // 0x005b8adf    8bc8
                         call               dword ptr [edx + 0x590]                       // 0x005b8ae1    ff9290050000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b8ae7    d944241c
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8aeb    8b4d04
                         {disp32} fmul      dword ptr [ecx + 0x00004834]                  // 0x005b8aee    d88934480000
                         fdivp              st(1), st                                     // 0x005b8af4    def9
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b8af6    d90590a38a00
                         fcomp              st(1)                                         // 0x005b8afc    d8d9
                         fnstsw             ax                                            // 0x005b8afe    dfe0
                         test               ah, 0x01                                      // 0x005b8b00    f6c401
                         {disp8} je         _jmp_addr_0x005b8b11                          // 0x005b8b03    740c
                         fstp               st(0)                                         // 0x005b8b05    ddd8
                         {disp8} mov        dword ptr [esp + 0x20], 0x3f800000            // 0x005b8b07    c74424200000803f
                         {disp8} jmp        _jmp_addr_0x005b8b15                          // 0x005b8b0f    eb04
_jmp_addr_0x005b8b11:    {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b8b11    d95c2420
_jmp_addr_0x005b8b15:    {disp32} mov       eax, dword ptr [ecx + 0x00004904]             // 0x005b8b15    8b8104490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8b1b    8b4d04
                         {disp32} mov       esi, dword ptr [ecx + 0x00004904]             // 0x005b8b1e    8bb104490000
                         mov                edx, dword ptr [esi]                          // 0x005b8b24    8b16
                         mov.s              ecx, esi                                      // 0x005b8b26    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005b8b28    8944241c
                         call               dword ptr [edx + 0x594]                       // 0x005b8b2c    ff9294050000
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b8b32    d95c2424
                         mov                eax, dword ptr [esi]                          // 0x005b8b36    8b06
                         mov.s              ecx, esi                                      // 0x005b8b38    8bce
                         call               dword ptr [eax + 0x42c]                       // 0x005b8b3a    ff902c040000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b8b40    d84c2424
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8b44    8b4d04
                         push               0x0                                           // 0x005b8b47    6a00
                         {disp32} fstp      dword ptr [ecx + 0x00004944]                  // 0x005b8b49    d99944490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8b4f    8b4d04
                         push               0x3c                                          // 0x005b8b52    6a3c
                         call               @GetAnim__9MorphableFll@16                    // 0x005b8b54    e8f70a0600
                         mov.s              ebx, eax                                      // 0x005b8b59    8bd8
                         mov                edx, dword ptr [ebx]                          // 0x005b8b5b    8b13
                         sar                edx, 1                                        // 0x005b8b5d    d1fa
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x005b8b5f    89542424
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x005b8b63    db442424
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b8b67    d84c2420
                         call               _jmp_addr_0x007a1400                          // 0x005b8b6b    e890881e00
                         {disp8} mov        dword ptr [ebp + 0x08], eax                   // 0x005b8b70    894508
                         {disp32} jmp       _jmp_addr_0x005b8c1a                          // 0x005b8b73    e9a2000000
                         {disp32} mov       eax, dword ptr [eax + 0x00004904]             // 0x005b8b78    8b8004490000
                         mov                edx, dword ptr [eax]                          // 0x005b8b7e    8b10
                         mov.s              ecx, eax                                      // 0x005b8b80    8bc8
                         call               dword ptr [edx + 0x590]                       // 0x005b8b82    ff9290050000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005b8b88    d944241c
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8b8c    8b4d04
                         {disp32} fmul      dword ptr [ecx + 0x00004834]                  // 0x005b8b8f    d88934480000
                         fdivp              st(1), st                                     // 0x005b8b95    def9
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005b8b97    d90590a38a00
                         fcomp              st(1)                                         // 0x005b8b9d    d8d9
                         fnstsw             ax                                            // 0x005b8b9f    dfe0
                         test               ah, 0x01                                      // 0x005b8ba1    f6c401
                         {disp8} je         _jmp_addr_0x005b8bb2                          // 0x005b8ba4    740c
                         fstp               st(0)                                         // 0x005b8ba6    ddd8
                         {disp8} mov        dword ptr [esp + 0x20], 0x3f800000            // 0x005b8ba8    c74424200000803f
                         {disp8} jmp        _jmp_addr_0x005b8bb6                          // 0x005b8bb0    eb04
_jmp_addr_0x005b8bb2:    {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005b8bb2    d95c2420
_jmp_addr_0x005b8bb6:    {disp32} mov       eax, dword ptr [ecx + 0x00004904]             // 0x005b8bb6    8b8104490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8bbc    8b4d04
                         {disp32} mov       esi, dword ptr [ecx + 0x00004904]             // 0x005b8bbf    8bb104490000
                         mov                edx, dword ptr [esi]                          // 0x005b8bc5    8b16
                         mov.s              ecx, esi                                      // 0x005b8bc7    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005b8bc9    8944241c
                         call               dword ptr [edx + 0x594]                       // 0x005b8bcd    ff9294050000
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005b8bd3    d95c2424
                         mov                eax, dword ptr [esi]                          // 0x005b8bd7    8b06
                         mov.s              ecx, esi                                      // 0x005b8bd9    8bce
                         call               dword ptr [eax + 0x42c]                       // 0x005b8bdb    ff902c040000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005b8be1    d84c2424
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8be5    8b4d04
                         push               0x0                                           // 0x005b8be8    6a00
                         {disp32} fstp      dword ptr [ecx + 0x00004944]                  // 0x005b8bea    d99944490000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8bf0    8b4d04
                         push               0x9                                           // 0x005b8bf3    6a09
                         call               @GetAnim__9MorphableFll@16                    // 0x005b8bf5    e8560a0600
                         mov.s              ebx, eax                                      // 0x005b8bfa    8bd8
                         mov                edx, dword ptr [ebx]                          // 0x005b8bfc    8b13
                         sar                edx, 1                                        // 0x005b8bfe    d1fa
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x005b8c00    89542424
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x005b8c04    db442424
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005b8c08    d84c2420
                         call               _jmp_addr_0x007a1400                          // 0x005b8c0c    e8ef871e00
                         {disp8} mov        dword ptr [ebp + 0x08], eax                   // 0x005b8c11    894508
                         {disp8} jmp        _jmp_addr_0x005b8c1a                          // 0x005b8c14    eb04
_jmp_addr_0x005b8c16:    {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x005b8c16    8b5c2424
_jmp_addr_0x005b8c1a:    {disp32} lea       esi, dword ptr [ebp + 0x000000ec]             // 0x005b8c1a    8db5ec000000
                         mov                ecx, 0x0000000c                               // 0x005b8c20    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x44]                   // 0x005b8c25    8d7c2444
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005b8c29    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x005b8c2b    8d4c2444
                         call               _jmp_addr_0x007fb5c0                          // 0x005b8c2f    e88c292400
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8c34    8b4504
                         {disp32} fld       dword ptr [ebp + 0x0000011c]                  // 0x005b8c37    d9851c010000
                         xor.s              esi, esi                                      // 0x005b8c3d    33f6
                         fld                st(0)                                         // 0x005b8c3f    d9c0
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b8c41    d84c2450
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x005b8c45    d95c2450
                         fld                st(0)                                         // 0x005b8c49    d9c0
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b8c4b    d84c2454
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x005b8c4f    d95c2454
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b8c53    d84c2458
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x005b8c57    d95c2458
                         {disp32} fld       dword ptr [eax + 0x00004944]                  // 0x005b8c5b    d98044490000
                         {disp8} mov        dword ptr [eax + 0x78], esi                   // 0x005b8c61    897078
                         {disp8} fstp       dword ptr [eax + 0x7c]                        // 0x005b8c64    d9587c
                         {disp32} mov       dword ptr [eax + 0x00000080], esi             // 0x005b8c67    89b080000000
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8c6d    8b4504
                         {disp8} fld        dword ptr [eax + 0x78]                        // 0x005b8c70    d94078
                         add                eax, 0x78                                     // 0x005b8c73    83c078
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x005b8c76    d94004
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x005b8c79    d94008
                         fld                st(2)                                         // 0x005b8c7c    d9c2
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x005b8c7e    d84c2444
                         fld                st(1)                                         // 0x005b8c82    d9c1
                         {disp8} fmul       dword ptr [esp + 0x5c]                        // 0x005b8c84    d84c245c
                         faddp              st(1), st                                     // 0x005b8c88    dec1
                         fld                st(2)                                         // 0x005b8c8a    d9c2
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x005b8c8c    d84c2450
                         faddp              st(1), st                                     // 0x005b8c90    dec1
                         {disp8} fadd       dword ptr [esp + 0x68]                        // 0x005b8c92    d8442468
                         fstp               dword ptr [eax]                               // 0x005b8c96    d918
                         fld                st(0)                                         // 0x005b8c98    d9c0
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005b8c9a    d84c2460
                         fld                st(2)                                         // 0x005b8c9e    d9c2
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005b8ca0    d84c2454
                         faddp              st(1), st                                     // 0x005b8ca4    dec1
                         fld                st(3)                                         // 0x005b8ca6    d9c3
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x005b8ca8    d84c2448
                         faddp              st(1), st                                     // 0x005b8cac    dec1
                         {disp8} fadd       dword ptr [esp + 0x6c]                        // 0x005b8cae    d844246c
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x005b8cb2    d95804
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x005b8cb5    d84c2464
                         fxch               st(1)                                         // 0x005b8cb9    d9c9
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x005b8cbb    d84c2458
                         faddp              st(1), st                                     // 0x005b8cbf    dec1
                         fxch               st(1)                                         // 0x005b8cc1    d9c9
                         {disp8} fmul       dword ptr [esp + 0x4c]                        // 0x005b8cc3    d84c244c
                         faddp              st(1), st                                     // 0x005b8cc7    dec1
                         {disp8} fadd       dword ptr [esp + 0x70]                        // 0x005b8cc9    d8442470
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x005b8ccd    d95808
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]             // 0x005b8cd0    8b842480000000
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                   // 0x005b8cd7    8b4820
                         {disp8} mov        edx, dword ptr [eax + 0x24]                   // 0x005b8cda    8b5024
                         {disp8} mov        eax, dword ptr [eax + 0x28]                   // 0x005b8cdd    8b4028
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005b8ce0    894c2410
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b8ce4    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b8ce8    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005b8cee    89442418
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x005b8cf2    89542414
                         fnstsw             ax                                            // 0x005b8cf6    dfe0
                         test               ah, 0x40                                      // 0x005b8cf8    f6c440
                         {disp8} je         _jmp_addr_0x005b8d1f                          // 0x005b8cfb    7422
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b8cfd    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b8d01    d81d98a38a00
                         fnstsw             ax                                            // 0x005b8d07    dfe0
                         test               ah, 0x40                                      // 0x005b8d09    f6c440
                         {disp8} je         _jmp_addr_0x005b8d1f                          // 0x005b8d0c    7411
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b8d0e    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005b8d12    d81d98a38a00
                         fnstsw             ax                                            // 0x005b8d18    dfe0
                         test               ah, 0x40                                      // 0x005b8d1a    f6c440
                         {disp8} jne        _jmp_addr_0x005b8d5f                          // 0x005b8d1d    7540
_jmp_addr_0x005b8d1f:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x005b8d1f    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b8d23    d84c2410
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005b8d27    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b8d2b    d84c2418
                         faddp              st(1), st                                     // 0x005b8d2f    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005b8d31    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b8d35    d84c2414
                         faddp              st(1), st                                     // 0x005b8d39    dec1
                         fsqrt                                                            // 0x005b8d3b    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005b8d3d    d83d90a38a00
                         fld                st(0)                                         // 0x005b8d43    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005b8d45    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005b8d49    d95c2410
                         fld                st(0)                                         // 0x005b8d4d    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005b8d4f    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005b8d53    d95c2414
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005b8d57    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005b8d5b    d95c2418
_jmp_addr_0x005b8d5f:    call               _jmp_addr_0x0046c040                          // 0x005b8d5f    e8dc32ebff
                         fstp               st(0)                                         // 0x005b8d64    ddd8
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005b8d66    8b4d04
                         {disp8} mov        edx, dword ptr [ecx + 0x78]                   // 0x005b8d69    8b5178
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x005b8d6c    89542438
                         {disp8} mov        eax, dword ptr [ecx + 0x7c]                   // 0x005b8d70    8b417c
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x005b8d73    8944243c
                         {disp32} mov       edx, dword ptr [ecx + 0x00000080]             // 0x005b8d77    8b9180000000
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x005b8d7d    8d442410
                         push               eax                                           // 0x005b8d81    50
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x005b8d82    89542444
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x005b8d86    8d54243c
                         push               edx                                           // 0x005b8d8a    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000f8]             // 0x005b8d8b    8d8424f8000000
                         push               eax                                           // 0x005b8d92    50
                         call               _jmp_addr_0x0046e160                          // 0x005b8d93    e8c853ebff
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8d98    8b4504
                         {disp32} mov       ecx, dword ptr [eax + 0x000047fc]             // 0x005b8d9b    8b88fc470000
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x005b8da1    8b5508
                         push               0x1                                           // 0x005b8da4    6a01
                         push               esi                                           // 0x005b8da6    56
                         {disp32} mov       esi, dword ptr [esp + 0x00000130]             // 0x005b8da7    8bb42430010000
                         push               ecx                                           // 0x005b8dae    51
                         {disp32} mov       ecx, dword ptr [eax + 0x000047f8]             // 0x005b8daf    8b88f8470000
                         push               edx                                           // 0x005b8db5    52
                         {disp32} mov       edx, dword ptr [eax + 0x000047f4]             // 0x005b8db6    8b90f4470000
                         push               ecx                                           // 0x005b8dbc    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00000098]             // 0x005b8dbd    8b8898000000
                         push               edx                                           // 0x005b8dc3    52
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x4 + 0x000000b4] // 0x005b8dc4    8b9488b4000000
                         push               edx                                           // 0x005b8dcb    52
                         push               esi                                           // 0x005b8dcc    56
                         mov.s              ecx, ebx                                      // 0x005b8dcd    8bcb
                         call               _jmp_addr_0x00860e00                          // 0x005b8dcf    e82c802a00
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005b8dd4    8b4504
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x005b8dd7    8b9098000000
                         {disp32} mov       eax, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x005b8ddd    8b8490b4000000
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f0]             // 0x005b8de4    8d8c24f0000000
                         push               ecx                                           // 0x005b8deb    51
                         push               eax                                           // 0x005b8dec    50
                         push               esi                                           // 0x005b8ded    56
                         call               _jmp_addr_0x00839f10                          // 0x005b8dee    e81d112800
                         {disp8} mov        ebp, dword ptr [ebp + 0x04]                   // 0x005b8df3    8b6d04
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000485c]             // 0x005b8df6    8b8d5c480000
                         {disp32} mov       dword ptr [ebp + 0x0000486c], ecx             // 0x005b8dfc    898d6c480000
                         {disp32} mov       edx, dword ptr [ebp + 0x00004860]             // 0x005b8e02    8b9560480000
                         add                esp, 0x0c                                     // 0x005b8e08    83c40c
                         {disp32} mov       dword ptr [ebp + 0x00004870], edx             // 0x005b8e0b    899570480000
_jmp_addr_0x005b8e11:    pop                edi                                           // 0x005b8e11    5f
                         pop                esi                                           // 0x005b8e12    5e
                         pop                ebp                                           // 0x005b8e13    5d
                         pop                ebx                                           // 0x005b8e14    5b
                         add                esp, 0x00000110                               // 0x005b8e15    81c410010000
                         ret                0x0008                                        // 0x005b8e1b    c20800

// Snippet: db, [0x005b8e1e, 0x005b8e20)
.byte 0x8b, 0xff                  // 0x005b8e1e

// Snippet: jmptbl, [0x005b8e20, 0x005b8e3c)
.byte 0xd4, 0x89, 0x5b, 0x00      // 0x005b8e20
.byte 0x85, 0x8a, 0x5b, 0x00      // 0x005b8e24
.byte 0xd7, 0x8a, 0x5b, 0x00      // 0x005b8e28
.byte 0x16, 0x8c, 0x5b, 0x00      // 0x005b8e2c
.byte 0x78, 0x8b, 0x5b, 0x00      // 0x005b8e30
.byte 0x78, 0x8b, 0x5b, 0x00      // 0x005b8e34
.byte 0x78, 0x8b, 0x5b, 0x00      // 0x005b8e38

// Snippet: db, [0x005b8e3c, 0x005b8e40)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005b8e3c

