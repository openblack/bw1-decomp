.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern _jmp_addr_0x00418a50
.extern _jmp_addr_0x0042ae70
.extern _jmp_addr_0x005bc6c0
.extern _jmp_addr_0x005bc700
.extern _jmp_addr_0x005bc720
.extern _jmp_addr_0x005bcbc0
.extern _jmp_addr_0x005bd2a0
.extern _jmp_addr_0x005bd390
.extern _jmp_addr_0x005bd440
.extern _jmp_addr_0x005bd4a0
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x006de590
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _memmove
.extern ___nw__FUl
.extern _jmp_addr_0x007ea570
.extern _jmp_addr_0x007ea810
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern _jmp_addr_0x0081b370
.extern _jmp_addr_0x0081c090
.extern _Random__Fff@8
.extern _jmp_addr_0x00860e00
.extern _jmp_addr_0x00861ee0

.globl _jmp_addr_0x005b8e60
.globl _jmp_addr_0x005b8f00
.globl _jmp_addr_0x005b90c0
.globl _jmp_addr_0x005b96d0
.globl _jmp_addr_0x005b98d0
.globl _jmp_addr_0x005ba010
.globl _jmp_addr_0x005ba350
.globl _jmp_addr_0x005ba780
.globl _jmp_addr_0x005baa40
.globl _jmp_addr_0x005bab10
.globl _jmp_addr_0x005bac10
.globl _jmp_addr_0x005bb060
.globl _jmp_addr_0x005bb1b0
.globl _jmp_addr_0x005bb2c0
.globl _jmp_addr_0x005bb340
.globl _jmp_addr_0x005bb610
.globl _jmp_addr_0x005bb730
.globl _jmp_addr_0x005bb760
.globl _jmp_addr_0x005bb7c0
.globl _jmp_addr_0x005bb840
.globl _jmp_addr_0x005bb8b0
.globl _jmp_addr_0x005bb980
.globl _jmp_addr_0x005bbbd0
.globl _jmp_addr_0x005bbcd0
.globl _jmp_addr_0x005bbd20
.globl _jmp_addr_0x005bbdd0
.globl _jmp_addr_0x005bbe70
.globl _jmp_addr_0x005bbef0
.globl _jmp_addr_0x005bbf30
.globl _jmp_addr_0x005bbfa0
.globl _jmp_addr_0x005bc0a0

.globl _globl_ct_0x005b8e90
.globl _globl_ct_0x005b8ec0
.globl _globl_ct_0x005b8ee0
.globl _globl_ct_0x005bad00
.globl _globl_ct_0x005bafe0
.globl ?DrawTheHeldObject@HandStateTug@@UAEXXZ

start_0x005b8e40_0x005bc4a0:
// Snippet: asm, [0x005b8e40, 0x005bc489)
?DrawTheHeldObject@HandStateTug@@UAEXXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x005b8e40    8b4104
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]              // 0x005b8e43    8b8804490000
                         mov                edx, dword ptr [ecx]                           // 0x005b8e49    8b11
                         push               0x0                                            // 0x005b8e4b    6a00
                         call               dword ptr [edx + 0x614]                        // 0x005b8e4d    ff9214060000
                         ret                                                               // 0x005b8e53    c3
                         nop                                                               // 0x005b8e54    90
                         nop                                                               // 0x005b8e55    90
                         nop                                                               // 0x005b8e56    90
                         nop                                                               // 0x005b8e57    90
                         nop                                                               // 0x005b8e58    90
                         nop                                                               // 0x005b8e59    90
                         nop                                                               // 0x005b8e5a    90
                         nop                                                               // 0x005b8e5b    90
                         nop                                                               // 0x005b8e5c    90
                         nop                                                               // 0x005b8e5d    90
                         nop                                                               // 0x005b8e5e    90
                         nop                                                               // 0x005b8e5f    90
_jmp_addr_0x005b8e60:    {disp8} mov        eax, dword ptr [ecx + 0x10]                    // 0x005b8e60    8b4110
                         test               eax, eax                                       // 0x005b8e63    85c0
                         {disp8} je         _jmp_addr_0x005b8e87                           // 0x005b8e65    7420
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x005b8e67    8b4104
                         push               esi                                            // 0x005b8e6a    56
                         push               edi                                            // 0x005b8e6b    57
                         {disp32} lea       esi, dword ptr [ecx + 0x000000bc]              // 0x005b8e6c    8db1bc000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00004904]              // 0x005b8e72    8b8804490000
                         {disp8} mov        edi, dword ptr [ecx + 0x40]                    // 0x005b8e78    8b7940
                         add                edi, 0x14                                      // 0x005b8e7b    83c714
                         mov                ecx, 0x0000000c                                // 0x005b8e7e    b90c000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005b8e83    f3a5
                         pop                edi                                            // 0x005b8e85    5f
                         pop                esi                                            // 0x005b8e86    5e
_jmp_addr_0x005b8e87:    ret                                                               // 0x005b8e87    c3
                         nop                                                               // 0x005b8e88    90
                         nop                                                               // 0x005b8e89    90
                         nop                                                               // 0x005b8e8a    90
                         nop                                                               // 0x005b8e8b    90
                         nop                                                               // 0x005b8e8c    90
                         nop                                                               // 0x005b8e8d    90
                         nop                                                               // 0x005b8e8e    90
                         nop                                                               // 0x005b8e8f    90
_globl_ct_0x005b8e90:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x005b8e90    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x005b8e96    b001
                         test               al, cl                                         // 0x005b8e98    84c8
                         {disp8} jne        _jmp_addr_0x005b8ea4                           // 0x005b8e9a    7508
                         or.s               cl, al                                         // 0x005b8e9c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x005b8e9e    880d34c9fa00
_jmp_addr_0x005b8ea4:    {disp32} jmp       _jmp_addr_0x005b8eb0                           // 0x005b8ea4    e907000000
                         nop                                                               // 0x005b8ea9    90
                         nop                                                               // 0x005b8eaa    90
                         nop                                                               // 0x005b8eab    90
                         nop                                                               // 0x005b8eac    90
                         nop                                                               // 0x005b8ead    90
                         nop                                                               // 0x005b8eae    90
                         nop                                                               // 0x005b8eaf    90
_jmp_addr_0x005b8eb0:    push               0x00407870                                     // 0x005b8eb0    6870784000
                         call               _atexit                                        // 0x005b8eb5    e8d7c82000
                         pop                ecx                                            // 0x005b8eba    59
                         ret                                                               // 0x005b8ebb    c3
                         nop                                                               // 0x005b8ebc    90
                         nop                                                               // 0x005b8ebd    90
                         nop                                                               // 0x005b8ebe    90
                         nop                                                               // 0x005b8ebf    90
_globl_ct_0x005b8ec0:    {disp32} jmp       _jmp_addr_0x005b8ed0                           // 0x005b8ec0    e90b000000
                         nop                                                               // 0x005b8ec5    90
                         nop                                                               // 0x005b8ec6    90
                         nop                                                               // 0x005b8ec7    90
                         nop                                                               // 0x005b8ec8    90
                         nop                                                               // 0x005b8ec9    90
                         nop                                                               // 0x005b8eca    90
                         nop                                                               // 0x005b8ecb    90
                         nop                                                               // 0x005b8ecc    90
                         nop                                                               // 0x005b8ecd    90
                         nop                                                               // 0x005b8ece    90
                         nop                                                               // 0x005b8ecf    90
_jmp_addr_0x005b8ed0:    ret                                                               // 0x005b8ed0    c3
                         nop                                                               // 0x005b8ed1    90
                         nop                                                               // 0x005b8ed2    90
                         nop                                                               // 0x005b8ed3    90
                         nop                                                               // 0x005b8ed4    90
                         nop                                                               // 0x005b8ed5    90
                         nop                                                               // 0x005b8ed6    90
                         nop                                                               // 0x005b8ed7    90
                         nop                                                               // 0x005b8ed8    90
                         nop                                                               // 0x005b8ed9    90
                         nop                                                               // 0x005b8eda    90
                         nop                                                               // 0x005b8edb    90
                         nop                                                               // 0x005b8edc    90
                         nop                                                               // 0x005b8edd    90
                         nop                                                               // 0x005b8ede    90
                         nop                                                               // 0x005b8edf    90
_globl_ct_0x005b8ee0:    {disp32} jmp       _jmp_addr_0x005b8ef0                           // 0x005b8ee0    e90b000000
                         nop                                                               // 0x005b8ee5    90
                         nop                                                               // 0x005b8ee6    90
                         nop                                                               // 0x005b8ee7    90
                         nop                                                               // 0x005b8ee8    90
                         nop                                                               // 0x005b8ee9    90
                         nop                                                               // 0x005b8eea    90
                         nop                                                               // 0x005b8eeb    90
                         nop                                                               // 0x005b8eec    90
                         nop                                                               // 0x005b8eed    90
                         nop                                                               // 0x005b8eee    90
                         nop                                                               // 0x005b8eef    90
_jmp_addr_0x005b8ef0:    ret                                                               // 0x005b8ef0    c3
                         nop                                                               // 0x005b8ef1    90
                         nop                                                               // 0x005b8ef2    90
                         nop                                                               // 0x005b8ef3    90
                         nop                                                               // 0x005b8ef4    90
                         nop                                                               // 0x005b8ef5    90
                         nop                                                               // 0x005b8ef6    90
                         nop                                                               // 0x005b8ef7    90
                         nop                                                               // 0x005b8ef8    90
                         nop                                                               // 0x005b8ef9    90
                         nop                                                               // 0x005b8efa    90
                         nop                                                               // 0x005b8efb    90
                         nop                                                               // 0x005b8efc    90
                         nop                                                               // 0x005b8efd    90
                         nop                                                               // 0x005b8efe    90
                         nop                                                               // 0x005b8eff    90
_jmp_addr_0x005b8f00:    {disp8} fld        dword ptr [esp + 0x08]                         // 0x005b8f00    d9442408
                         sub                esp, 0x2c                                      // 0x005b8f04    83ec2c
                         {disp32} fadd      dword ptr [ecx + 0x00000344]                   // 0x005b8f07    d88144030000
                         push               ebp                                            // 0x005b8f0d    55
                         push               esi                                            // 0x005b8f0e    56
                         push               edi                                            // 0x005b8f0f    57
                         {disp32} fcom      dword ptr [__real@3e4ccccd]                    // 0x005b8f10    d81544b28a00
                         {disp8} mov        edi, dword ptr [esp + 0x3c]                    // 0x005b8f16    8b7c243c
                         {disp32} fst       dword ptr [ecx + 0x00000344]                   // 0x005b8f1a    d99144030000
                         fnstsw             ax                                             // 0x005b8f20    dfe0
                         test               ah, 0x41                                       // 0x005b8f22    f6c441
                         {disp8} jne        _jmp_addr_0x005b8f63                           // 0x005b8f25    753c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000348]              // 0x005b8f27    8b8148030000
                         {disp32} fsub      dword ptr [__real@3e4ccccd]                    // 0x005b8f2d    d82544b28a00
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x005b8f33    8d0440
                         lea                edx, dword ptr [ecx + eax * 0x4]               // 0x005b8f36    8d1481
                         {disp32} fstp      dword ptr [ecx + 0x00000344]                   // 0x005b8f39    d99944030000
                         mov.s              eax, edi                                       // 0x005b8f3f    8bc7
                         mov                esi, dword ptr [eax]                           // 0x005b8f41    8b30
                         mov                dword ptr [edx], esi                           // 0x005b8f43    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                    // 0x005b8f45    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                    // 0x005b8f48    897204
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005b8f4b    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x005b8f4e    894208
                         {disp32} mov       edx, dword ptr [ecx + 0x00000348]              // 0x005b8f51    8b9148030000
                         inc                edx                                            // 0x005b8f57    42
                         and                edx, 0x1f                                      // 0x005b8f58    83e21f
                         {disp32} mov       dword ptr [ecx + 0x00000348], edx              // 0x005b8f5b    899148030000
                         {disp8} jmp        _jmp_addr_0x005b8f65                           // 0x005b8f61    eb02
_jmp_addr_0x005b8f63:    fstp               st(0)                                          // 0x005b8f63    ddd8
_jmp_addr_0x005b8f65:    {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b8f65    d9442440
                         {disp32} lea       esi, dword ptr [ecx + 0x00000180]              // 0x005b8f69    8db180010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c40]              // 0x005b8f6f    d80d400c9000
                         mov                ebp, 0x00000010                                // 0x005b8f75    bd10000000
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005b8f7a    d95c2410
_jmp_addr_0x005b8f7e:    {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b8f7e    d9442440
                         {disp8} fadd       dword ptr [esi + 0x18]                         // 0x005b8f82    d84618
                         {disp8} fst        dword ptr [esi + 0x18]                         // 0x005b8f85    d95618
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26e8]               // 0x005b8f88    d81de8b68a00
                         fnstsw             ax                                             // 0x005b8f8e    dfe0
                         test               ah, 0x01                                       // 0x005b8f90    f6c401
                         {disp32} jne       _jmp_addr_0x005b903c                           // 0x005b8f93    0f85a3000000
                         push               0x0                                            // 0x005b8f99    6a00
                         push               0xbf000000                                     // 0x005b8f9b    68000000bf
                         call               _Random__Fff@8                                 // 0x005b8fa0    e8db412600
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x005b8fa5    d95c240c
                         push               0x3dcccccd                                     // 0x005b8fa9    68cdcccc3d
                         push               0xbdcccccd                                     // 0x005b8fae    68cdccccbd
                         call               _Random__Fff@8                                 // 0x005b8fb3    e8c8412600
                         {disp8} fstp       dword ptr [esp + 0x3c]                         // 0x005b8fb8    d95c243c
                         push               0x3dcccccd                                     // 0x005b8fbc    68cdcccc3d
                         push               0xbdcccccd                                     // 0x005b8fc1    68cdccccbd
                         call               _Random__Fff@8                                 // 0x005b8fc6    e8b5412600
                         fadd               dword ptr [edi]                                // 0x005b8fcb    d807
                         mov.s              eax, esi                                       // 0x005b8fcd    8bc6
                         push               0x3e99999a                                     // 0x005b8fcf    689a99993e
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005b8fd4    d95c2418
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b8fd8    d9442440
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x005b8fdc    8b4c2418
                         {disp8} fadd       dword ptr [edi + 0x04]                         // 0x005b8fe0    d84704
                         push               0xbe99999a                                     // 0x005b8fe3    689a9999be
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x005b8fe8    d95c2420
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005b8fec    d9442414
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x005b8ff0    8b542420
                         {disp8} fadd       dword ptr [edi + 0x08]                         // 0x005b8ff4    d84708
                         mov                dword ptr [eax], ecx                           // 0x005b8ff7    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x005b8ff9    895004
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x005b8ffc    d95c2424
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x005b9000    8b4c2424
                         {disp8} mov        dword ptr [eax + 0x08], ecx                    // 0x005b9004    894808
                         call               _Random__Fff@8                                 // 0x005b9007    e874412600
                         {disp8} fstp       dword ptr [esp + 0x3c]                         // 0x005b900c    d95c243c
                         push               0x3dcccccd                                     // 0x005b9010    68cdcccc3d
                         push               0xbdcccccd                                     // 0x005b9015    68cdccccbd
                         call               _Random__Fff@8                                 // 0x005b901a    e861412600
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                    // 0x005b901f    8b54243c
                         {disp8} fstp       dword ptr [esi + 0x0c]                         // 0x005b9023    d95e0c
                         {disp8} mov        dword ptr [esi + 0x10], edx                    // 0x005b9026    895610
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000000             // 0x005b9029    c7461400000000
                         {disp8} fld        dword ptr [esi + 0x18]                         // 0x005b9030    d94618
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26e8]               // 0x005b9033    d825e8b68a00
                         {disp8} fstp       dword ptr [esi + 0x18]                         // 0x005b9039    d95e18
_jmp_addr_0x005b903c:    {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b903c    d9442440
                         add                esi, 0x1c                                      // 0x005b9040    83c61c
                         dec                ebp                                            // 0x005b9043    4d
                         {disp8} fmul       dword ptr [esi + -0x10]                        // 0x005b9044    d84ef0
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b9047    d9442440
                         {disp8} fmul       dword ptr [esi + -0x0c]                        // 0x005b904b    d84ef4
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x005b904e    d95c2424
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b9052    d9442440
                         {disp8} fmul       dword ptr [esi + -0x08]                        // 0x005b9056    d84ef8
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x005b9059    d95c2428
                         {disp32} fmul      dword ptr [__real@3dcccccd]                    // 0x005b905d    d80d2cb28a00
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005b9063    d9442424
                         {disp32} fmul      dword ptr [__real@3dcccccd]                    // 0x005b9067    d80d2cb28a00
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005b906d    d95c2430
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x005b9071    d9442428
                         {disp32} fmul      dword ptr [__real@3dcccccd]                    // 0x005b9075    d80d2cb28a00
                         {disp8} fstp       dword ptr [esp + 0x34]                         // 0x005b907b    d95c2434
                         {disp8} fadd       dword ptr [esi + -0x1c]                        // 0x005b907f    d846e4
                         {disp8} fstp       dword ptr [esi + -0x1c]                        // 0x005b9082    d95ee4
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x005b9085    d9442430
                         {disp8} fadd       dword ptr [esi + -0x18]                        // 0x005b9089    d846e8
                         {disp8} fstp       dword ptr [esi + -0x18]                        // 0x005b908c    d95ee8
                         {disp8} fld        dword ptr [esp + 0x34]                         // 0x005b908f    d9442434
                         {disp8} fadd       dword ptr [esi + -0x14]                        // 0x005b9093    d846ec
                         {disp8} fstp       dword ptr [esi + -0x14]                        // 0x005b9096    d95eec
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005b9099    d9442410
                         {disp8} fadd       dword ptr [esi + -0x0c]                        // 0x005b909d    d846f4
                         {disp8} fstp       dword ptr [esi + -0x0c]                        // 0x005b90a0    d95ef4
                         {disp32} jne       _jmp_addr_0x005b8f7e                           // 0x005b90a3    0f85d5feffff
                         pop                edi                                            // 0x005b90a9    5f
                         pop                esi                                            // 0x005b90aa    5e
                         pop                ebp                                            // 0x005b90ab    5d
                         add                esp, 0x2c                                      // 0x005b90ac    83c42c
                         ret                0x0008                                         // 0x005b90af    c20800
                         nop                                                               // 0x005b90b2    90
                         nop                                                               // 0x005b90b3    90
                         nop                                                               // 0x005b90b4    90
                         nop                                                               // 0x005b90b5    90
                         nop                                                               // 0x005b90b6    90
                         nop                                                               // 0x005b90b7    90
                         nop                                                               // 0x005b90b8    90
                         nop                                                               // 0x005b90b9    90
                         nop                                                               // 0x005b90ba    90
                         nop                                                               // 0x005b90bb    90
                         nop                                                               // 0x005b90bc    90
                         nop                                                               // 0x005b90bd    90
                         nop                                                               // 0x005b90be    90
                         nop                                                               // 0x005b90bf    90
_jmp_addr_0x005b90c0:    sub                esp, 0x44                                      // 0x005b90c0    83ec44
                         {disp8} mov        eax, dword ptr [esp + 0x48]                    // 0x005b90c3    8b442448
                         mov.s              edx, ecx                                       // 0x005b90c7    8bd1
                         {disp32} mov       ecx, dword ptr [eax + 0x00002c24]              // 0x005b90c9    8b88242c0000
                         test               ecx, ecx                                       // 0x005b90cf    85c9
                         {disp8} mov        dword ptr [esp + 0x04], edx                    // 0x005b90d1    89542404
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000             // 0x005b90d5    c744240c00000000
                         {disp8} jne        _jmp_addr_0x005b90e7                           // 0x005b90dd    7508
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f800000             // 0x005b90df    c744240c0000803f
_jmp_addr_0x005b90e7:    push               ebx                                            // 0x005b90e7    53
                         push               ebp                                            // 0x005b90e8    55
                         push               esi                                            // 0x005b90e9    56
                         xor.s              ebx, ebx                                       // 0x005b90ea    33db
                         push               edi                                            // 0x005b90ec    57
                         mov                esi, 0x00d15788                                // 0x005b90ed    be8857d100
                         {disp8} mov        dword ptr [esp + 0x20], 0x00d15284             // 0x005b90f2    c74424208452d100
                         {disp8} mov        dword ptr [esp + 0x18], 0x00d15488             // 0x005b90fa    c74424188854d100
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x005b9102    895c2410
                         mov                eax, 0x00d15088                                // 0x005b9106    b88850d100
                         mov                ebp, 0x0000003f                                // 0x005b910b    bd3f000000
                         {disp8} jmp        _jmp_addr_0x005b911a                           // 0x005b9110    eb08
_jmp_addr_0x005b9112:    {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005b9112    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x005b9116    8b44242c
_jmp_addr_0x005b911a:    {disp8} fild       dword ptr [esp + 0x10]                         // 0x005b911a    db442410
                         {disp8} lea        ecx, dword ptr [ebp + -0x03]                   // 0x005b911e    8d4dfd
                         mov                dword ptr [esi], ecx                           // 0x005b9121    890e
                         add                esi, 0x04                                      // 0x005b9123    83c604
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2630]               // 0x005b9126    d80d30b68a00
                         add                esi, 0x04                                      // 0x005b912c    83c604
                         {disp8} lea        edi, dword ptr [ebp + -0x02]                   // 0x005b912f    8d7dfe
                         {disp8} mov        dword ptr [esi + -0x04], edi                   // 0x005b9132    897efc
                         mov                dword ptr [esi], ebp                           // 0x005b9135    892e
                         {disp8} fst        dword ptr [eax + 0x04]                         // 0x005b9137    d95004
                         add                esi, 0x04                                      // 0x005b913a    83c604
                         {disp8} fstp       dword ptr [eax + -0x04]                        // 0x005b913d    d958fc
                         mov                dword ptr [esi], ebp                           // 0x005b9140    892e
                         add                esi, 0x04                                      // 0x005b9142    83c604
                         dec                ebp                                            // 0x005b9145    4d
                         mov                dword ptr [esi], ebp                           // 0x005b9146    892e
                         add                esi, 0x04                                      // 0x005b9148    83c604
                         mov                dword ptr [esi], ecx                           // 0x005b914b    890e
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005b914d    8b4c241c
                         mov                dword ptr [eax], ecx                           // 0x005b9151    8908
                         {disp8} mov        dword ptr [eax + 0x08], 0x3f000000             // 0x005b9153    c740080000003f
                         add                eax, 0x10                                      // 0x005b915a    83c010
                         add                esi, 0x04                                      // 0x005b915d    83c604
                         test               ebx, ebx                                       // 0x005b9160    85db
                         mov.s              ebp, edi                                       // 0x005b9162    8bef
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x005b9164    8944242c
                         {disp8} je         _jmp_addr_0x005b917b                           // 0x005b9168    7411
                         cmp                ebx, 0x1f                                      // 0x005b916a    83fb1f
                         {disp8} lea        eax, dword ptr [ebx + -0x01]                   // 0x005b916d    8d43ff
                         {disp8} jge        _jmp_addr_0x005b9186                           // 0x005b9170    7d14
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                    // 0x005b9172    8d4b01
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x005b9175    894c2410
                         {disp8} jmp        _jmp_addr_0x005b918e                           // 0x005b9179    eb13
_jmp_addr_0x005b917b:    {disp8} lea        ecx, dword ptr [ebx + 0x01]                    // 0x005b917b    8d4b01
                         xor.s              eax, eax                                       // 0x005b917e    33c0
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x005b9180    894c2410
                         {disp8} jmp        _jmp_addr_0x005b918e                           // 0x005b9184    eb08
_jmp_addr_0x005b9186:    {disp8} mov        dword ptr [esp + 0x10], 0x0000001f             // 0x005b9186    c74424101f000000
_jmp_addr_0x005b918e:    {disp32} mov       ecx, dword ptr [edx + 0x00000348]              // 0x005b918e    8b8a48030000
                         add.s              eax, ecx                                       // 0x005b9194    03c1
                         and                eax, 0x1f                                      // 0x005b9196    83e01f
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x005b9199    8d0440
                         lea                edx, dword ptr [edx + eax * 0x4]               // 0x005b919c    8d1482
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x005b919f    8b442410
                         add.s              eax, ecx                                       // 0x005b91a3    03c1
                         and                eax, 0x1f                                      // 0x005b91a5    83e01f
                         lea                edi, dword ptr [ecx + ebx * 0x1]               // 0x005b91a8    8d3c19
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x005b91ab    8d0c40
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x005b91ae    8b442414
                         fld                dword ptr [eax + ecx * 0x4]                    // 0x005b91b2    d90488
                         lea                eax, dword ptr [eax + ecx * 0x4]               // 0x005b91b5    8d0488
                         fsub               dword ptr [edx]                                // 0x005b91b8    d822
                         and                edi, 0x1f                                      // 0x005b91ba    83e71f
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005b91bd    d95c2430
                         {disp8} fld        dword ptr [eax + 0x04]                         // 0x005b91c1    d94004
                         {disp8} fsub       dword ptr [edx + 0x04]                         // 0x005b91c4    d86204
                         {disp8} fstp       dword ptr [esp + 0x34]                         // 0x005b91c7    d95c2434
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x005b91cb    d94008
                         {disp8} fsub       dword ptr [edx + 0x08]                         // 0x005b91ce    d86208
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x005b91d1    d9442430
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005b91d5    d81d98a38a00
                         fnstsw             ax                                             // 0x005b91db    dfe0
                         test               ah, 0x40                                       // 0x005b91dd    f6c440
                         {disp8} je         _jmp_addr_0x005b920e                           // 0x005b91e0    742c
                         {disp8} fld        dword ptr [esp + 0x34]                         // 0x005b91e2    d9442434
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005b91e6    d81d98a38a00
                         fnstsw             ax                                             // 0x005b91ec    dfe0
                         test               ah, 0x40                                       // 0x005b91ee    f6c440
                         {disp8} je         _jmp_addr_0x005b920e                           // 0x005b91f1    741b
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x005b91f3    d81598a38a00
                         fnstsw             ax                                             // 0x005b91f9    dfe0
                         test               ah, 0x40                                       // 0x005b91fb    f6c440
                         {disp8} je         _jmp_addr_0x005b920e                           // 0x005b91fe    740e
                         fstp               st(0)                                          // 0x005b9200    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005b9202    d90598a38a00
                         {disp8} fst        dword ptr [esp + 0x10]                         // 0x005b9208    d9542410
                         {disp8} jmp        _jmp_addr_0x005b9246                           // 0x005b920c    eb38
_jmp_addr_0x005b920e:    fld                st(0)                                          // 0x005b920e    d9c0
                         fmulp              st(1), st                                      // 0x005b9210    dec9
                         {disp8} fld        dword ptr [esp + 0x34]                         // 0x005b9212    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                         // 0x005b9216    d84c2434
                         faddp              st(1), st                                      // 0x005b921a    dec1
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x005b921c    d9442430
                         {disp8} fmul       dword ptr [esp + 0x30]                         // 0x005b9220    d84c2430
                         faddp              st(1), st                                      // 0x005b9224    dec1
                         fsqrt                                                             // 0x005b9226    d9fa
                         {disp8} fst        dword ptr [esp + 0x10]                         // 0x005b9228    d9542410
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005b922c    d90590a38a00
                         fdiv               st, st(1)                                      // 0x005b9232    d8f1
                         fld                st(0)                                          // 0x005b9234    d9c0
                         {disp8} fmul       dword ptr [esp + 0x30]                         // 0x005b9236    d84c2430
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005b923a    d95c2430
                         {disp8} fmul       dword ptr [esp + 0x34]                         // 0x005b923e    d84c2434
                         {disp8} fstp       dword ptr [esp + 0x34]                         // 0x005b9242    d95c2434
_jmp_addr_0x005b9246:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x005b9246    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]              // 0x005b924a    d81d18f58b00
                         fnstsw             ax                                             // 0x005b9250    dfe0
                         test               ah, 0x41                                       // 0x005b9252    f6c441
                         {disp8} jne        _jmp_addr_0x005b9263                           // 0x005b9255    750c
                         fstp               st(0)                                          // 0x005b9257    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005b9259    d9442410
                         {disp32} fadd      dword ptr [__real@3e4ccccd]                    // 0x005b925d    d80544b28a00
_jmp_addr_0x005b9263:    {disp32} fcom      dword ptr [rdata_bytes + 0x1ebdc]              // 0x005b9263    d815dc7b8c00
                         fnstsw             ax                                             // 0x005b9269    dfe0
                         test               ah, 0x41                                       // 0x005b926b    f6c441
                         {disp8} jne        _jmp_addr_0x005b9278                           // 0x005b926e    7508
                         fstp               st(0)                                          // 0x005b9270    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ebdc]              // 0x005b9272    d905dc7b8c00
_jmp_addr_0x005b9278:    {disp8} mov        eax, dword ptr [esp + 0x58]                    // 0x005b9278    8b442458
                         fld                st(0)                                          // 0x005b927c    d9c0
                         {disp32} fmul      dword ptr [eax + 0x000035b4]                   // 0x005b927e    d888b4350000
                         {disp32} fdiv      dword ptr [eax + 0x000035b8]                   // 0x005b9284    d8b0b8350000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x237e8]              // 0x005b928a    d80de8c78c00
                         fld                st(0)                                          // 0x005b9290    d9c0
                         {disp8} fmul       dword ptr [esp + 0x30]                         // 0x005b9292    d84c2430
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005b9296    d95c2430
                         {disp8} fmul       dword ptr [esp + 0x34]                         // 0x005b929a    d84c2434
                         {disp8} fstp       dword ptr [esp + 0x34]                         // 0x005b929e    d95c2434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e66c]              // 0x005b92a2    d80d6c768c00
                         call               _jmp_addr_0x007a1400                           // 0x005b92a8    e853811e00
                         mov                ecx, 0x00000014                                // 0x005b92ad    b914000000
                         sub.s              ecx, eax                                       // 0x005b92b2    2bc8
                         cmp                ecx, 0x40                                      // 0x005b92b4    83f940
                         {disp8} jbe        _jmp_addr_0x005b92be                           // 0x005b92b7    7605
                         mov                ecx, 0x00000040                                // 0x005b92b9    b940000000
_jmp_addr_0x005b92be:    {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x005b92be    8b442420
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005b92c2    8b542414
                         shl                ecx, 0x18                                      // 0x005b92c6    c1e118
                         or                 ecx, 0xffffff                                  // 0x005b92c9    81c9ffffff00
                         mov                dword ptr [eax], ecx                           // 0x005b92cf    8908
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x005b92d1    894804
                         add                eax, 0x04                                      // 0x005b92d4    83c004
                         add                eax, 0x04                                      // 0x005b92d7    83c004
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x005b92da    89442420
                         {disp8} mov        eax, dword ptr [esp + 0x30]                    // 0x005b92de    8b442430
                         lea                ecx, dword ptr [edi + edi * 0x2]               // 0x005b92e2    8d0c7f
                         {disp8} fld        dword ptr [edx + ecx * 0x4 + 0x04]             // 0x005b92e5    d9448a04
                         lea                edi, dword ptr [edx + ecx * 0x4]               // 0x005b92e9    8d3c8a
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                    // 0x005b92ec    8b4c2434
                         {disp8} mov        edx, dword ptr [edi + 0x08]                    // 0x005b92f0    8b5708
                         push               0x0                                            // 0x005b92f3    6a00
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x005b92f5    89442428
                         {disp8} fsub       dword ptr [esp + 0x28]                         // 0x005b92f9    d8642428
                         push               edx                                            // 0x005b92fd    52
                         push               ecx                                            // 0x005b92fe    51
                         {disp8} mov        dword ptr [esp + 0x34], ecx                    // 0x005b92ff    894c2434
                         fstp               dword ptr [esp]                                // 0x005b9303    d91c24
                         push               ecx                                            // 0x005b9306    51
                         {disp8} fld        dword ptr [esp + 0x38]                         // 0x005b9307    d9442438
                         {disp8} mov        ecx, dword ptr [esp + 0x68]                    // 0x005b930b    8b4c2468
                         fadd               dword ptr [edi]                                // 0x005b930f    d807
                         {disp8} lea        eax, dword ptr [esp + 0x4c]                    // 0x005b9311    8d44244c
                         fstp               dword ptr [esp]                                // 0x005b9315    d91c24
                         push               eax                                            // 0x005b9318    50
                         call               _jmp_addr_0x005bd2a0                           // 0x005b9319    e8823f0000
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005b931e    d9442424
                         mov                edx, dword ptr [eax]                           // 0x005b9322    8b10
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x005b9324    8b4c2418
                         mov                dword ptr [ecx], edx                           // 0x005b9328    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x005b932a    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                    // 0x005b932d    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005b9330    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x005b9333    894108
                         {disp8} fadd       dword ptr [edi + 0x04]                         // 0x005b9336    d84704
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                    // 0x005b9339    8b4f08
                         push               0x0                                            // 0x005b933c    6a00
                         push               ecx                                            // 0x005b933e    51
                         push               ecx                                            // 0x005b933f    51
                         fstp               dword ptr [esp]                                // 0x005b9340    d91c24
                         push               ecx                                            // 0x005b9343    51
                         fld                dword ptr [edi]                                // 0x005b9344    d907
                         {disp8} mov        ecx, dword ptr [esp + 0x68]                    // 0x005b9346    8b4c2468
                         {disp8} fsub       dword ptr [esp + 0x38]                         // 0x005b934a    d8642438
                         {disp8} lea        edx, dword ptr [esp + 0x58]                    // 0x005b934e    8d542458
                         fstp               dword ptr [esp]                                // 0x005b9352    d91c24
                         push               edx                                            // 0x005b9355    52
                         call               _jmp_addr_0x005bd2a0                           // 0x005b9356    e8453f0000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x005b935b    8b4c2418
                         mov                edi, dword ptr [eax]                           // 0x005b935f    8b38
                         {disp8} lea        edx, dword ptr [ecx + 0x0c]                    // 0x005b9361    8d510c
                         mov                dword ptr [edx], edi                           // 0x005b9364    893a
                         {disp8} mov        edi, dword ptr [eax + 0x04]                    // 0x005b9366    8b7804
                         add                ecx, 0x18                                      // 0x005b9369    83c118
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x005b936c    897a04
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005b936f    8b4008
                         inc                ebx                                            // 0x005b9372    43
                         cmp                ebx, 0x20                                      // 0x005b9373    83fb20
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x005b9376    894208
                         {disp8} mov        dword ptr [esp + 0x18], ecx                    // 0x005b9379    894c2418
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x005b937d    895c2410
                         {disp32} jl        _jmp_addr_0x005b9112                           // 0x005b9381    0f8c8bfdffff
                         cmp                dword ptr [data_bytes + 0x50424c], 0x02        // 0x005b9387    833d4ca2ec0002
                         pop                edi                                            // 0x005b938e    5f
                         pop                esi                                            // 0x005b938f    5e
                         pop                ebp                                            // 0x005b9390    5d
                         pop                ebx                                            // 0x005b9391    5b
                         {disp8} je         _jmp_addr_0x005b93b2                           // 0x005b9392    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9394    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x005b9399    8b08
                         push               0x2                                            // 0x005b939b    6a02
                         push               0x17                                           // 0x005b939d    6a17
                         push               eax                                            // 0x005b939f    50
                         call               dword ptr [ecx + 0x50]                         // 0x005b93a0    ff5150
                         neg                eax                                            // 0x005b93a3    f7d8
                         sbb.s              eax, eax                                       // 0x005b93a5    1bc0
                         and                eax, 0xfffffffd                                // 0x005b93a7    83e0fd
                         add                eax, 0x02                                      // 0x005b93aa    83c002
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x005b93ad    a34ca2ec00
_jmp_addr_0x005b93b2:    {disp8} mov        edx, dword ptr [esp + 0x4c]                    // 0x005b93b2    8b54244c
                         push               0x0                                            // 0x005b93b6    6a00
                         push               edx                                            // 0x005b93b8    52
                         push               0x00d15788                                     // 0x005b93b9    688857d100
                         push               0x3e                                           // 0x005b93be    6a3e
                         push               0x00d15084                                     // 0x005b93c0    688450d100
                         push               0x00d15284                                     // 0x005b93c5    688452d100
                         mov                edx, 0x00d15488                                // 0x005b93ca    ba8854d100
                         mov                ecx, 0x00000040                                // 0x005b93cf    b940000000
                         call               _jmp_addr_0x0081c090                           // 0x005b93d4    e8b72c2600
                         cmp                dword ptr [data_bytes + 0x50424c], 0x04        // 0x005b93d9    833d4ca2ec0004
                         {disp8} je         _jmp_addr_0x005b9400                           // 0x005b93e0    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b93e2    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x005b93e7    8b08
                         push               0x4                                            // 0x005b93e9    6a04
                         push               0x17                                           // 0x005b93eb    6a17
                         push               eax                                            // 0x005b93ed    50
                         call               dword ptr [ecx + 0x50]                         // 0x005b93ee    ff5150
                         neg                eax                                            // 0x005b93f1    f7d8
                         sbb.s              eax, eax                                       // 0x005b93f3    1bc0
                         and                eax, 0xfffffffb                                // 0x005b93f5    83e0fb
                         add                eax, 0x04                                      // 0x005b93f8    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x005b93fb    a34ca2ec00
_jmp_addr_0x005b9400:    add                esp, 0x44                                      // 0x005b9400    83c444
                         ret                0x0008                                         // 0x005b9403    c20800
                         nop                                                               // 0x005b9406    90
                         nop                                                               // 0x005b9407    90
                         nop                                                               // 0x005b9408    90
                         nop                                                               // 0x005b9409    90
                         nop                                                               // 0x005b940a    90
                         nop                                                               // 0x005b940b    90
                         nop                                                               // 0x005b940c    90
                         nop                                                               // 0x005b940d    90
                         nop                                                               // 0x005b940e    90
                         nop                                                               // 0x005b940f    90
                         sub                esp, 0x10                                      // 0x005b9410    83ec10
                         push               ebx                                            // 0x005b9413    53
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                    // 0x005b9414    8b5c2418
                         push               ebp                                            // 0x005b9418    55
                         push               esi                                            // 0x005b9419    56
                         push               edi                                            // 0x005b941a    57
                         mov.s              edi, ecx                                       // 0x005b941b    8bf9
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x005b941d    897c2410
_jmp_addr_0x005b9421:    mov                eax, dword ptr [edi]                           // 0x005b9421    8b07
                         xor.s              ebp, ebp                                       // 0x005b9423    33ed
                         xor.s              esi, esi                                       // 0x005b9425    33f6
                         dec                eax                                            // 0x005b9427    48
                         test               eax, eax                                       // 0x005b9428    85c0
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                    // 0x005b942a    896c241c
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x005b942e    89742414
                         {disp32} jle       _jmp_addr_0x005b94ce                           // 0x005b9432    0f8e96000000
                         {disp8} mov        dword ptr [esp + 0x18], ebp                    // 0x005b9438    896c2418
_jmp_addr_0x005b943c:    {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x005b943c    8b4f04
                         {disp8} fld        dword ptr [ecx + ebp * 0x1 + 0x08]             // 0x005b943f    d9442908
                         lea                edx, dword ptr [ecx + ebp * 0x1]               // 0x005b9443    8d1429
                         {disp8} fcomp      dword ptr [edx + 0x14]                         // 0x005b9446    d85a14
                         fnstsw             ax                                             // 0x005b9449    dfe0
                         test               ah, 0x41                                       // 0x005b944b    f6c441
                         {disp8} jne        _jmp_addr_0x005b94ab                           // 0x005b944e    755b
                         mov.s              eax, edx                                       // 0x005b9450    8bc2
                         mov                esi, dword ptr [eax]                           // 0x005b9452    8b30
                         {disp8} mov        edi, dword ptr [eax + 0x04]                    // 0x005b9454    8b7804
                         {disp8} mov        ebx, dword ptr [eax + 0x08]                    // 0x005b9457    8b5808
                         {disp8} lea        eax, dword ptr [ebp + 0x0c]                    // 0x005b945a    8d450c
                         add.s              ecx, eax                                       // 0x005b945d    03c8
                         mov                ebp, dword ptr [ecx]                           // 0x005b945f    8b29
                         mov                dword ptr [edx], ebp                           // 0x005b9461    892a
                         {disp8} mov        ebp, dword ptr [ecx + 0x04]                    // 0x005b9463    8b6904
                         {disp8} mov        dword ptr [edx + 0x04], ebp                    // 0x005b9466    896a04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x005b9469    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x005b946c    894a08
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005b946f    8b542410
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                    // 0x005b9473    8b4a04
                         add.s              ecx, eax                                       // 0x005b9476    03c8
                         mov                dword ptr [ecx], esi                           // 0x005b9478    8931
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x005b947a    8b742414
                         {disp8} mov        dword ptr [ecx + 0x04], edi                    // 0x005b947e    897904
                         {disp8} mov        dword ptr [ecx + 0x08], ebx                    // 0x005b9481    895908
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                    // 0x005b9484    8b5c2424
                         cmp.s              esi, ebx                                       // 0x005b9488    3bf3
                         {disp8} jne        _jmp_addr_0x005b948f                           // 0x005b948a    7503
                         inc                ebx                                            // 0x005b948c    43
                         {disp8} jmp        _jmp_addr_0x005b9497                           // 0x005b948d    eb08
_jmp_addr_0x005b948f:    {disp8} lea        edx, dword ptr [esi + 0x01]                    // 0x005b948f    8d5601
                         cmp.s              edx, ebx                                       // 0x005b9492    3bd3
                         {disp8} jne        _jmp_addr_0x005b949b                           // 0x005b9494    7505
                         dec                ebx                                            // 0x005b9496    4b
_jmp_addr_0x005b9497:    {disp8} mov        dword ptr [esp + 0x24], ebx                    // 0x005b9497    895c2424
_jmp_addr_0x005b949b:    {disp8} mov        ebp, dword ptr [esp + 0x18]                    // 0x005b949b    8b6c2418
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x005b949f    8b7c2410
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000001             // 0x005b94a3    c744241c01000000
_jmp_addr_0x005b94ab:    mov                eax, dword ptr [edi]                           // 0x005b94ab    8b07
                         inc                esi                                            // 0x005b94ad    46
                         add                ebp, 0x0c                                      // 0x005b94ae    83c50c
                         dec                eax                                            // 0x005b94b1    48
                         cmp.s              esi, eax                                       // 0x005b94b2    3bf0
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x005b94b4    89742414
                         {disp8} mov        dword ptr [esp + 0x18], ebp                    // 0x005b94b8    896c2418
                         {disp32} jl        _jmp_addr_0x005b943c                           // 0x005b94bc    0f8c7affffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x005b94c2    8b44241c
                         test               eax, eax                                       // 0x005b94c6    85c0
                         {disp32} jne       _jmp_addr_0x005b9421                           // 0x005b94c8    0f8553ffffff
_jmp_addr_0x005b94ce:    pop                edi                                            // 0x005b94ce    5f
                         pop                esi                                            // 0x005b94cf    5e
                         pop                ebp                                            // 0x005b94d0    5d
                         mov.s              eax, ebx                                       // 0x005b94d1    8bc3
                         pop                ebx                                            // 0x005b94d3    5b
                         add                esp, 0x10                                      // 0x005b94d4    83c410
                         ret                0x0004                                         // 0x005b94d7    c20400
                         call               dword ptr [__imp__DirectDrawCreateEx@4]        // 0x005b94da    ff1524908a00
                         sub                esp, 0x08                                      // 0x005b94e0    83ec08
                         push               ebx                                            // 0x005b94e3    53
                         push               ebp                                            // 0x005b94e4    55
                         mov.s              ebx, ecx                                       // 0x005b94e5    8bd9
                         mov                ecx, dword ptr [ebx]                           // 0x005b94e7    8b0b
                         push               esi                                            // 0x005b94e9    56
                         xor.s              ebp, ebp                                       // 0x005b94ea    33ed
                         test               ecx, ecx                                       // 0x005b94ec    85c9
                         push               edi                                            // 0x005b94ee    57
                         {disp8} jle        _jmp_addr_0x005b950c                           // 0x005b94ef    7e1b
                         {disp8} mov        edx, dword ptr [ebx + 0x04]                    // 0x005b94f1    8b5304
                         add                edx, 0x08                                      // 0x005b94f4    83c208
_jmp_addr_0x005b94f7:    fld                dword ptr [edx]                                // 0x005b94f7    d902
                         {disp8} fcomp      dword ptr [esp + 0x1c]                         // 0x005b94f9    d85c241c
                         fnstsw             ax                                             // 0x005b94fd    dfe0
                         test               ah, 0x01                                       // 0x005b94ff    f6c401
                         {disp8} je         _jmp_addr_0x005b950c                           // 0x005b9502    7408
                         inc                ebp                                            // 0x005b9504    45
                         add                edx, 0x0c                                      // 0x005b9505    83c20c
                         cmp.s              ebp, ecx                                       // 0x005b9508    3be9
                         {disp8} jl         _jmp_addr_0x005b94f7                           // 0x005b950a    7ceb
_jmp_addr_0x005b950c:    {disp8} lea        eax, dword ptr [ecx + 0x01]                    // 0x005b950c    8d4101
                         mov                dword ptr [ebx], eax                           // 0x005b950f    8903
                         push               0x000000fc                                     // 0x005b9511    68fc000000
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x005b9516    8d0440
                         shl                eax, 2                                         // 0x005b9519    c1e002
                         push               0x00bf04d0                                     // 0x005b951c    68d004bf00
                         push               eax                                            // 0x005b9521    50
                         call               ___nw__FUl                                     // 0x005b9522    e869222200
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                    // 0x005b9527    8b7304
                         mov.s              edi, eax                                       // 0x005b952a    8bf8
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x005b952c    8944241c
                         {disp8} lea        edx, dword ptr [ebp + ebp * 0x2 + 0x00]        // 0x005b9530    8d546d00
                         shl                edx, 2                                         // 0x005b9534    c1e202
                         mov.s              ecx, edx                                       // 0x005b9537    8bca
                         mov.s              eax, ecx                                       // 0x005b9539    8bc1
                         shr                ecx, 2                                         // 0x005b953b    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005b953e    f3a5
                         mov.s              ecx, eax                                       // 0x005b9540    8bc8
                         and                ecx, 0x03                                      // 0x005b9542    83e103
                         rep movsb                                                         // 0x005b9545    f3a4
                         mov                eax, dword ptr [ebx]                           // 0x005b9547    8b03
                         sub.s              eax, ebp                                       // 0x005b9549    2bc5
                         mov.s              esi, edx                                       // 0x005b954b    8bf2
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x005b954d    89542420
                         {disp8} mov        edx, dword ptr [ebx + 0x04]                    // 0x005b9551    8b5304
                         dec                eax                                            // 0x005b9554    48
                         add.s              esi, edx                                       // 0x005b9555    03f2
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x005b9557    8d0c40
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x005b955a    8b44241c
                         shl                ecx, 2                                         // 0x005b955e    c1e102
                         {disp8} lea        edx, dword ptr [ebp + ebp * 0x2 + 0x03]        // 0x005b9561    8d546d03
                         lea                edi, dword ptr [eax + edx * 0x4]               // 0x005b9565    8d3c90
                         mov.s              edx, ecx                                       // 0x005b9568    8bd1
                         shr                ecx, 2                                         // 0x005b956a    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005b956d    f3a5
                         mov.s              ecx, edx                                       // 0x005b956f    8bca
                         and                ecx, 0x03                                      // 0x005b9571    83e103
                         rep movsb                                                         // 0x005b9574    f3a4
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                    // 0x005b9576    8b4304
                         push               eax                                            // 0x005b9579    50
                         call               ??3@YAXPAX@Z                                   // 0x005b957a    e819591f00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x005b957f    8b4c2420
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x005b9583    8b442424
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x005b9587    d944242c
                         {disp8} mov        dword ptr [ebx + 0x04], ecx                    // 0x005b958b    894b04
                         {disp8} fstp       dword ptr [eax + ecx * 0x1 + 0x08]             // 0x005b958e    d95c0808
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                    // 0x005b9592    8b4b04
                         add                esp, 0x10                                      // 0x005b9595    83c410
                         {disp8} mov        dword ptr [eax + ecx * 0x1 + 0x04], 0x00000001 // 0x005b9598    c744080401000000
                         {disp8} mov        edx, dword ptr [ebx + 0x04]                    // 0x005b95a0    8b5304
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x005b95a3    8b4c2420
                         pop                edi                                            // 0x005b95a7    5f
                         pop                esi                                            // 0x005b95a8    5e
                         mov                dword ptr [eax + edx * 0x1], ecx               // 0x005b95a9    890c10
                         mov.s              eax, ebp                                       // 0x005b95ac    8bc5
                         pop                ebp                                            // 0x005b95ae    5d
                         pop                ebx                                            // 0x005b95af    5b
                         add                esp, 0x08                                      // 0x005b95b0    83c408
                         ret                0x0008                                         // 0x005b95b3    c20800
                         nop                                                               // 0x005b95b6    90
                         nop                                                               // 0x005b95b7    90
                         nop                                                               // 0x005b95b8    90
                         nop                                                               // 0x005b95b9    90
                         nop                                                               // 0x005b95ba    90
                         nop                                                               // 0x005b95bb    90
                         nop                                                               // 0x005b95bc    90
                         nop                                                               // 0x005b95bd    90
                         nop                                                               // 0x005b95be    90
                         nop                                                               // 0x005b95bf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005b95c0    8b442404
                         test               eax, eax                                       // 0x005b95c4    85c0
                         push               esi                                            // 0x005b95c6    56
                         mov.s              esi, ecx                                       // 0x005b95c7    8bf1
                         {disp8} jl         _jmp_addr_0x005b9612                           // 0x005b95c9    7c47
                         mov                edx, dword ptr [esi]                           // 0x005b95cb    8b16
                         cmp.s              eax, edx                                       // 0x005b95cd    3bc2
                         {disp8} jge        _jmp_addr_0x005b9612                           // 0x005b95cf    7d41
                         lea                edx, dword ptr [edx + edx * 0x2]               // 0x005b95d1    8d1452
                         {disp8} lea        ecx, dword ptr [eax + eax * 0x2 + 0x03]        // 0x005b95d4    8d4c4003
                         shl                ecx, 2                                         // 0x005b95d8    c1e102
                         shl                edx, 2                                         // 0x005b95db    c1e202
                         push               edi                                            // 0x005b95de    57
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x005b95df    8b7e04
                         sub.s              edx, ecx                                       // 0x005b95e2    2bd1
                         push               edx                                            // 0x005b95e4    52
                         add.s              ecx, edi                                       // 0x005b95e5    03cf
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x005b95e7    8d1440
                         push               ecx                                            // 0x005b95ea    51
                         lea                eax, dword ptr [edi + edx * 0x4]               // 0x005b95eb    8d0497
                         push               eax                                            // 0x005b95ee    50
                         call               _memmove                                       // 0x005b95ef    e8fcca2000
                         mov                eax, dword ptr [esi]                           // 0x005b95f4    8b06
                         add                esp, 0x0c                                      // 0x005b95f6    83c40c
                         dec                eax                                            // 0x005b95f9    48
                         mov                dword ptr [esi], eax                           // 0x005b95fa    8906
                         pop                edi                                            // 0x005b95fc    5f
                         {disp8} jne        _jmp_addr_0x005b9612                           // 0x005b95fd    7513
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x005b95ff    8b4e04
                         push               ecx                                            // 0x005b9602    51
                         call               ??3@YAXPAX@Z                                   // 0x005b9603    e890581f00
                         add                esp, 0x04                                      // 0x005b9608    83c404
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000             // 0x005b960b    c7460400000000
_jmp_addr_0x005b9612:    pop                esi                                            // 0x005b9612    5e
                         ret                0x0004                                         // 0x005b9613    c20400
                         nop                                                               // 0x005b9616    90
                         nop                                                               // 0x005b9617    90
                         nop                                                               // 0x005b9618    90
                         nop                                                               // 0x005b9619    90
                         nop                                                               // 0x005b961a    90
                         nop                                                               // 0x005b961b    90
                         nop                                                               // 0x005b961c    90
                         nop                                                               // 0x005b961d    90
                         nop                                                               // 0x005b961e    90
                         nop                                                               // 0x005b961f    90
_jmp_addr_0x005b9620:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005b9620    d90598a38a00
                         fcom               dword ptr [ecx]                                // 0x005b9626    d811
                         fnstsw             ax                                             // 0x005b9628    dfe0
                         test               ah, 0x40                                       // 0x005b962a    f6c440
                         {disp32} jne       _jmp_addr_0x005b96cb                           // 0x005b962d    0f8598000000
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9633    d9442404
                         {disp8} fsub       dword ptr [ecx + 0x04]                         // 0x005b9637    d86104
                         {disp8} fst        dword ptr [esp + 0x04]                         // 0x005b963a    d9542404
                         fabs                                                              // 0x005b963e    d9e1
                         {disp8} fld        dword ptr [ecx + 0x10]                         // 0x005b9640    d94110
                         fcompp                                                            // 0x005b9643    ded9
                         fnstsw             ax                                             // 0x005b9645    dfe0
                         test               ah, 0x01                                       // 0x005b9647    f6c401
                         {disp8} jne        _jmp_addr_0x005b96cb                           // 0x005b964a    757f
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x005b964c    d9442408
                         {disp8} fsub       dword ptr [ecx + 0x08]                         // 0x005b9650    d86108
                         {disp8} fst        dword ptr [esp + 0x08]                         // 0x005b9653    d9542408
                         fabs                                                              // 0x005b9657    d9e1
                         {disp8} fld        dword ptr [ecx + 0x10]                         // 0x005b9659    d94110
                         fcompp                                                            // 0x005b965c    ded9
                         fnstsw             ax                                             // 0x005b965e    dfe0
                         test               ah, 0x01                                       // 0x005b9660    f6c401
                         {disp8} jne        _jmp_addr_0x005b96cb                           // 0x005b9663    7566
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9665    d9442404
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x005b9669    d9442408
                         fld                st(0)                                          // 0x005b966d    d9c0
                         fmul               st, st(1)                                      // 0x005b966f    d8c9
                         fld                st(2)                                          // 0x005b9671    d9c2
                         fmul               st, st(3)                                      // 0x005b9673    d8cb
                         faddp              st(1), st                                      // 0x005b9675    dec1
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x005b9677    d95c2404
                         fstp               st(0)                                          // 0x005b967b    ddd8
                         fstp               st(0)                                          // 0x005b967d    ddd8
                         {disp8} fld        dword ptr [ecx + 0x10]                         // 0x005b967f    d94110
                         fld                st(0)                                          // 0x005b9682    d9c0
                         fmul               st, st(1)                                      // 0x005b9684    d8c9
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9686    d9442404
                         fcompp                                                            // 0x005b968a    ded9
                         fnstsw             ax                                             // 0x005b968c    dfe0
                         fstp               st(0)                                          // 0x005b968e    ddd8
                         test               ah, 0x41                                       // 0x005b9690    f6c441
                         {disp8} je         _jmp_addr_0x005b96cb                           // 0x005b9693    7436
                         fstp               st(0)                                          // 0x005b9695    ddd8
                         {disp8} fld        dword ptr [ecx + 0x0c]                         // 0x005b9697    d9410c
                         fld                st(0)                                          // 0x005b969a    d9c0
                         fmul               st, st(1)                                      // 0x005b969c    d8c9
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b969e    d9442404
                         fcompp                                                            // 0x005b96a2    ded9
                         fnstsw             ax                                             // 0x005b96a4    dfe0
                         fstp               st(0)                                          // 0x005b96a6    ddd8
                         test               ah, 0x01                                       // 0x005b96a8    f6c401
                         {disp8} je         _jmp_addr_0x005b96b2                           // 0x005b96ab    7405
                         fld                dword ptr [ecx]                                // 0x005b96ad    d901
                         ret                0x0008                                         // 0x005b96af    c20800
_jmp_addr_0x005b96b2:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b96b2    d9442404
                         fsqrt                                                             // 0x005b96b6    d9fa
                         {disp8} fsub       dword ptr [ecx + 0x0c]                         // 0x005b96b8    d8610c
                         {disp8} fld        dword ptr [ecx + 0x10]                         // 0x005b96bb    d94110
                         {disp8} fsub       dword ptr [ecx + 0x0c]                         // 0x005b96be    d8610c
                         fdivp              st(1), st                                      // 0x005b96c1    def9
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                    // 0x005b96c3    d82d90a38a00
                         fmul               dword ptr [ecx]                                // 0x005b96c9    d809
_jmp_addr_0x005b96cb:    ret                0x0008                                         // 0x005b96cb    c20800
                         nop                                                               // 0x005b96ce    90
                         nop                                                               // 0x005b96cf    90
_jmp_addr_0x005b96d0:    sub                esp, 0x6c                                      // 0x005b96d0    83ec6c
                         push               esi                                            // 0x005b96d3    56
                         mov.s              esi, ecx                                       // 0x005b96d4    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00002c18]                // 0x005b96d6    8a86182c0000
                         xor.s              ecx, ecx                                       // 0x005b96dc    33c9
                         cmp.s              al, cl                                         // 0x005b96de    3ac1
                         {disp32} jne       _jmp_addr_0x005b98c3                           // 0x005b96e0    0f85dd010000
                         {disp8} mov        al, byte ptr [esp + 0x7c]                      // 0x005b96e6    8a44247c
                         {disp8} fld        dword ptr [esp + 0x74]                         // 0x005b96ea    d9442474
                         cmp.s              al, cl                                         // 0x005b96ee    3ac1
                         {disp8} je         _jmp_addr_0x005b971e                           // 0x005b96f0    742c
                         {disp32} fcom      dword ptr [rdata_bytes + 0x57c44]              // 0x005b96f2    d815440c9000
                         fnstsw             ax                                             // 0x005b96f8    dfe0
                         test               ah, 0x41                                       // 0x005b96fa    f6c441
                         {disp8} jne        _jmp_addr_0x005b9716                           // 0x005b96fd    7517
                         {disp32} fcom      dword ptr [__real@3f400000]                    // 0x005b96ff    d81574b28a00
                         fnstsw             ax                                             // 0x005b9705    dfe0
                         test               ah, 0x01                                       // 0x005b9707    f6c401
                         {disp8} jne        _jmp_addr_0x005b971e                           // 0x005b970a    7512
                         fstp               st(0)                                          // 0x005b970c    ddd8
                         {disp32} fld       dword ptr [__real@3f400000]                    // 0x005b970e    d90574b28a00
                         {disp8} jmp        _jmp_addr_0x005b971e                           // 0x005b9714    eb08
_jmp_addr_0x005b9716:    fstp               st(0)                                          // 0x005b9716    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x57c44]              // 0x005b9718    d905440c9000
_jmp_addr_0x005b971e:    {disp8} fld        dword ptr [esp + 0x78]                         // 0x005b971e    d9442478
                         {disp32} fcomp     dword ptr [_rdata_float0p001]                  // 0x005b9722    d81db0a38a00
                         fnstsw             ax                                             // 0x005b9728    dfe0
                         test               ah, 0x01                                       // 0x005b972a    f6c401
                         {disp8} je         _jmp_addr_0x005b977e                           // 0x005b972d    744f
                         {disp32} fst       dword ptr [esi + 0x00003518]                   // 0x005b972f    d99618350000
                         {disp32} mov       dword ptr [esi + 0x0000352c], ecx              // 0x005b9735    898e2c350000
                         {disp32} fst       dword ptr [esi + 0x00003514]                   // 0x005b973b    d99614350000
                         {disp32} mov       dword ptr [esi + 0x00003528], ecx              // 0x005b9741    898e28350000
                         {disp32} fstp      dword ptr [esi + 0x00003530]                   // 0x005b9747    d99e30350000
                         {disp32} mov       dword ptr [esi + 0x00003540], ecx              // 0x005b974d    898e40350000
                         {disp32} mov       dword ptr [esi + 0x0000353c], ecx              // 0x005b9753    898e3c350000
                         {disp32} mov       dword ptr [esi + 0x00003524], ecx              // 0x005b9759    898e24350000
                         {disp32} mov       dword ptr [esi + 0x00003538], ecx              // 0x005b975f    898e38350000
                         {disp32} mov       dword ptr [esi + 0x00003520], ecx              // 0x005b9765    898e20350000
                         {disp32} mov       dword ptr [esi + 0x00003534], ecx              // 0x005b976b    898e34350000
                         {disp32} mov       dword ptr [esi + 0x0000351c], ecx              // 0x005b9771    898e1c350000
                         pop                esi                                            // 0x005b9777    5e
                         add                esp, 0x6c                                      // 0x005b9778    83c46c
                         ret                0x000c                                         // 0x005b977b    c20c00
_jmp_addr_0x005b977e:    {disp32} fstp      dword ptr [esi + 0x00003518]                   // 0x005b977e    d99e18350000
                         {disp32} mov       eax, dword ptr [esi + 0x00003514]              // 0x005b9784    8b8614350000
                         {disp8} fld        dword ptr [esp + 0x78]                         // 0x005b978a    d9442478
                         {disp32} mov       edx, dword ptr [esi + 0x00003520]              // 0x005b978e    8b9620350000
                         fld                st(0)                                          // 0x005b9794    d9c0
                         fmulp              st(1), st                                      // 0x005b9796    dec9
                         {disp32} mov       dword ptr [esi + 0x00003530], eax              // 0x005b9798    898630350000
                         {disp8} mov        eax, dword ptr [esp + 0x78]                    // 0x005b979e    8b442478
                         {disp32} mov       dword ptr [esi + 0x00003534], edx              // 0x005b97a2    899634350000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005b97a8    d80db4a38a00
                         {disp32} mov       dword ptr [esi + 0x0000351c], ecx              // 0x005b97ae    898e1c350000
                         {disp32} mov       dword ptr [esi + 0x00003528], ecx              // 0x005b97b4    898e28350000
                         fld                st(0)                                          // 0x005b97ba    d9c0
                         mov.s              ecx, eax                                       // 0x005b97bc    8bc8
                         {disp8} fmul       dword ptr [esp + 0x78]                         // 0x005b97be    d84c2478
                         mov.s              edx, eax                                       // 0x005b97c2    8bd0
                         {disp8} mov        dword ptr [esp + 0x24], ecx                    // 0x005b97c4    894c2424
                         {disp8} mov        dword ptr [esp + 0x2c], edx                    // 0x005b97c8    8954242c
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                    // 0x005b97cc    d80d6cb28a00
                         fld                st(1)                                          // 0x005b97d2    d9c1
                         {disp8} lea        edx, dword ptr [esp + 0x10]                    // 0x005b97d4    8d542410
                         fmul               st, st(2)                                      // 0x005b97d8    d8ca
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                    // 0x005b97da    8d4c2440
                         {disp32} mov       dword ptr [esi + 0x0000352c], eax              // 0x005b97de    89862c350000
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f800000             // 0x005b97e4    c74424300000803f
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                    // 0x005b97ec    d80d68b28a00
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000             // 0x005b97f2    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000             // 0x005b97fa    c744243800000000
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005b9802    d95c2410
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000             // 0x005b9806    c744243400000000
                         {disp8} fst        dword ptr [esp + 0x14]                         // 0x005b980e    d9542414
                         fld                st(1)                                          // 0x005b9812    d9c1
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005b9814    d95c2418
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005b9818    d95c241c
                         {disp8} fst        dword ptr [esp + 0x20]                         // 0x005b981c    d9542420
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x005b9820    d95c2428
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x005b9824    e8671a2400
                         {disp32} fld       dword ptr [esi + 0x00003518]                   // 0x005b9829    d98618350000
                         {disp32} fsub      dword ptr [esi + 0x00003530]                   // 0x005b982f    d8a630350000
                         {disp32} fld       dword ptr [esi + 0x0000352c]                   // 0x005b9835    d9862c350000
                         {disp32} fmul      dword ptr [esi + 0x00003534]                   // 0x005b983b    d88e34350000
                         fsubp              st(1), st                                      // 0x005b9841    dee9
                         {disp32} fld       dword ptr [esi + 0x0000351c]                   // 0x005b9843    d9861c350000
                         {disp32} fsub      dword ptr [esi + 0x00003534]                   // 0x005b9849    d8a634350000
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x005b984f    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005b9853    8b442408
                         {disp8} mov        dword ptr [esp + 0x78], eax                    // 0x005b9857    89442478
                         {disp8} fst        dword ptr [esp + 0x7c]                         // 0x005b985b    d954247c
                         {disp8} fld        dword ptr [esp + 0x4c]                         // 0x005b985f    d944244c
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x005b9863    d84c2408
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b9867    d9442440
                         fmul               st, st(2)                                      // 0x005b986b    d8ca
                         faddp              st(1), st                                      // 0x005b986d    dec1
                         {disp8} fadd       dword ptr [esp + 0x64]                         // 0x005b986f    d8442464
                         fstp               st(1)                                          // 0x005b9873    ddd9
                         {disp8} fld        dword ptr [esp + 0x44]                         // 0x005b9875    d9442444
                         {disp8} fmul       dword ptr [esp + 0x7c]                         // 0x005b9879    d84c247c
                         {disp8} fld        dword ptr [esp + 0x50]                         // 0x005b987d    d9442450
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x005b9881    d84c2408
                         faddp              st(1), st                                      // 0x005b9885    dec1
                         {disp8} fadd       dword ptr [esp + 0x68]                         // 0x005b9887    d8442468
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x005b988b    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x005b988f    8b4c2408
                         {disp8} fld        dword ptr [esp + 0x54]                         // 0x005b9893    d9442454
                         {disp32} mov       dword ptr [esi + 0x0000353c], ecx              // 0x005b9897    898e3c350000
                         {disp8} fmul       dword ptr [esp + 0x78]                         // 0x005b989d    d84c2478
                         {disp8} fld        dword ptr [esp + 0x48]                         // 0x005b98a1    d9442448
                         {disp8} fmul       dword ptr [esp + 0x7c]                         // 0x005b98a5    d84c247c
                         faddp              st(1), st                                      // 0x005b98a9    dec1
                         {disp8} fadd       dword ptr [esp + 0x6c]                         // 0x005b98ab    d844246c
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x005b98af    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x005b98b3    8b54240c
                         {disp32} mov       dword ptr [esi + 0x00003538], edx              // 0x005b98b7    899638350000
                         {disp32} fstp      dword ptr [esi + 0x00003540]                   // 0x005b98bd    d99e40350000
_jmp_addr_0x005b98c3:    pop                esi                                            // 0x005b98c3    5e
                         add                esp, 0x6c                                      // 0x005b98c4    83c46c
                         ret                0x000c                                         // 0x005b98c7    c20c00
                         call               dword ptr [__imp__DirectInputCreateA@4]        // 0x005b98ca    ff1534908a00
_jmp_addr_0x005b98d0:    sub                esp, 0x6c                                      // 0x005b98d0    83ec6c
                         push               esi                                            // 0x005b98d3    56
                         mov.s              esi, ecx                                       // 0x005b98d4    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00002c18]                // 0x005b98d6    8a86182c0000
                         xor.s              ecx, ecx                                       // 0x005b98dc    33c9
                         cmp.s              al, cl                                         // 0x005b98de    3ac1
                         {disp32} jne       _jmp_addr_0x005b9ac3                           // 0x005b98e0    0f85dd010000
                         {disp8} mov        al, byte ptr [esp + 0x7c]                      // 0x005b98e6    8a44247c
                         {disp8} fld        dword ptr [esp + 0x74]                         // 0x005b98ea    d9442474
                         cmp.s              al, cl                                         // 0x005b98ee    3ac1
                         {disp8} je         _jmp_addr_0x005b991e                           // 0x005b98f0    742c
                         {disp32} fcom      dword ptr [rdata_bytes + 0x57c48]              // 0x005b98f2    d815480c9000
                         fnstsw             ax                                             // 0x005b98f8    dfe0
                         test               ah, 0x41                                       // 0x005b98fa    f6c441
                         {disp8} jne        _jmp_addr_0x005b9916                           // 0x005b98fd    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1ebdc]              // 0x005b98ff    d815dc7b8c00
                         fnstsw             ax                                             // 0x005b9905    dfe0
                         test               ah, 0x01                                       // 0x005b9907    f6c401
                         {disp8} jne        _jmp_addr_0x005b991e                           // 0x005b990a    7512
                         fstp               st(0)                                          // 0x005b990c    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ebdc]              // 0x005b990e    d905dc7b8c00
                         {disp8} jmp        _jmp_addr_0x005b991e                           // 0x005b9914    eb08
_jmp_addr_0x005b9916:    fstp               st(0)                                          // 0x005b9916    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x57c48]              // 0x005b9918    d905480c9000
_jmp_addr_0x005b991e:    {disp8} fld        dword ptr [esp + 0x78]                         // 0x005b991e    d9442478
                         {disp32} fcomp     dword ptr [_rdata_float0p001]                  // 0x005b9922    d81db0a38a00
                         fnstsw             ax                                             // 0x005b9928    dfe0
                         test               ah, 0x01                                       // 0x005b992a    f6c401
                         {disp8} je         _jmp_addr_0x005b997e                           // 0x005b992d    744f
                         {disp32} fst       dword ptr [esi + 0x00003548]                   // 0x005b992f    d99648350000
                         {disp32} mov       dword ptr [esi + 0x0000355c], ecx              // 0x005b9935    898e5c350000
                         {disp32} fst       dword ptr [esi + 0x00003544]                   // 0x005b993b    d99644350000
                         {disp32} mov       dword ptr [esi + 0x00003558], ecx              // 0x005b9941    898e58350000
                         {disp32} fstp      dword ptr [esi + 0x00003560]                   // 0x005b9947    d99e60350000
                         {disp32} mov       dword ptr [esi + 0x00003570], ecx              // 0x005b994d    898e70350000
                         {disp32} mov       dword ptr [esi + 0x0000356c], ecx              // 0x005b9953    898e6c350000
                         {disp32} mov       dword ptr [esi + 0x00003554], ecx              // 0x005b9959    898e54350000
                         {disp32} mov       dword ptr [esi + 0x00003568], ecx              // 0x005b995f    898e68350000
                         {disp32} mov       dword ptr [esi + 0x00003550], ecx              // 0x005b9965    898e50350000
                         {disp32} mov       dword ptr [esi + 0x00003564], ecx              // 0x005b996b    898e64350000
                         {disp32} mov       dword ptr [esi + 0x0000354c], ecx              // 0x005b9971    898e4c350000
                         pop                esi                                            // 0x005b9977    5e
                         add                esp, 0x6c                                      // 0x005b9978    83c46c
                         ret                0x000c                                         // 0x005b997b    c20c00
_jmp_addr_0x005b997e:    {disp32} fstp      dword ptr [esi + 0x00003548]                   // 0x005b997e    d99e48350000
                         {disp32} mov       eax, dword ptr [esi + 0x00003544]              // 0x005b9984    8b8644350000
                         {disp8} fld        dword ptr [esp + 0x78]                         // 0x005b998a    d9442478
                         {disp32} mov       edx, dword ptr [esi + 0x00003550]              // 0x005b998e    8b9650350000
                         fld                st(0)                                          // 0x005b9994    d9c0
                         fmulp              st(1), st                                      // 0x005b9996    dec9
                         {disp32} mov       dword ptr [esi + 0x00003560], eax              // 0x005b9998    898660350000
                         {disp8} mov        eax, dword ptr [esp + 0x78]                    // 0x005b999e    8b442478
                         {disp32} mov       dword ptr [esi + 0x00003564], edx              // 0x005b99a2    899664350000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005b99a8    d80db4a38a00
                         {disp32} mov       dword ptr [esi + 0x0000354c], ecx              // 0x005b99ae    898e4c350000
                         {disp32} mov       dword ptr [esi + 0x00003558], ecx              // 0x005b99b4    898e58350000
                         fld                st(0)                                          // 0x005b99ba    d9c0
                         mov.s              ecx, eax                                       // 0x005b99bc    8bc8
                         {disp8} fmul       dword ptr [esp + 0x78]                         // 0x005b99be    d84c2478
                         mov.s              edx, eax                                       // 0x005b99c2    8bd0
                         {disp8} mov        dword ptr [esp + 0x24], ecx                    // 0x005b99c4    894c2424
                         {disp8} mov        dword ptr [esp + 0x2c], edx                    // 0x005b99c8    8954242c
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                    // 0x005b99cc    d80d6cb28a00
                         fld                st(1)                                          // 0x005b99d2    d9c1
                         {disp8} lea        edx, dword ptr [esp + 0x10]                    // 0x005b99d4    8d542410
                         fmul               st, st(2)                                      // 0x005b99d8    d8ca
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                    // 0x005b99da    8d4c2440
                         {disp32} mov       dword ptr [esi + 0x0000355c], eax              // 0x005b99de    89865c350000
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f800000             // 0x005b99e4    c74424300000803f
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                    // 0x005b99ec    d80d68b28a00
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000             // 0x005b99f2    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000             // 0x005b99fa    c744243800000000
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005b9a02    d95c2410
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000             // 0x005b9a06    c744243400000000
                         {disp8} fst        dword ptr [esp + 0x14]                         // 0x005b9a0e    d9542414
                         fld                st(1)                                          // 0x005b9a12    d9c1
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005b9a14    d95c2418
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005b9a18    d95c241c
                         {disp8} fst        dword ptr [esp + 0x20]                         // 0x005b9a1c    d9542420
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x005b9a20    d95c2428
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x005b9a24    e867182400
                         {disp32} fld       dword ptr [esi + 0x00003548]                   // 0x005b9a29    d98648350000
                         {disp32} fsub      dword ptr [esi + 0x00003560]                   // 0x005b9a2f    d8a660350000
                         {disp32} fld       dword ptr [esi + 0x0000355c]                   // 0x005b9a35    d9865c350000
                         {disp32} fmul      dword ptr [esi + 0x00003564]                   // 0x005b9a3b    d88e64350000
                         fsubp              st(1), st                                      // 0x005b9a41    dee9
                         {disp32} fld       dword ptr [esi + 0x0000354c]                   // 0x005b9a43    d9864c350000
                         {disp32} fsub      dword ptr [esi + 0x00003564]                   // 0x005b9a49    d8a664350000
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x005b9a4f    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005b9a53    8b442408
                         {disp8} mov        dword ptr [esp + 0x78], eax                    // 0x005b9a57    89442478
                         {disp8} fst        dword ptr [esp + 0x7c]                         // 0x005b9a5b    d954247c
                         {disp8} fld        dword ptr [esp + 0x4c]                         // 0x005b9a5f    d944244c
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x005b9a63    d84c2408
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x005b9a67    d9442440
                         fmul               st, st(2)                                      // 0x005b9a6b    d8ca
                         faddp              st(1), st                                      // 0x005b9a6d    dec1
                         {disp8} fadd       dword ptr [esp + 0x64]                         // 0x005b9a6f    d8442464
                         fstp               st(1)                                          // 0x005b9a73    ddd9
                         {disp8} fld        dword ptr [esp + 0x44]                         // 0x005b9a75    d9442444
                         {disp8} fmul       dword ptr [esp + 0x7c]                         // 0x005b9a79    d84c247c
                         {disp8} fld        dword ptr [esp + 0x50]                         // 0x005b9a7d    d9442450
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x005b9a81    d84c2408
                         faddp              st(1), st                                      // 0x005b9a85    dec1
                         {disp8} fadd       dword ptr [esp + 0x68]                         // 0x005b9a87    d8442468
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x005b9a8b    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x005b9a8f    8b4c2408
                         {disp8} fld        dword ptr [esp + 0x54]                         // 0x005b9a93    d9442454
                         {disp32} mov       dword ptr [esi + 0x0000356c], ecx              // 0x005b9a97    898e6c350000
                         {disp8} fmul       dword ptr [esp + 0x78]                         // 0x005b9a9d    d84c2478
                         {disp8} fld        dword ptr [esp + 0x48]                         // 0x005b9aa1    d9442448
                         {disp8} fmul       dword ptr [esp + 0x7c]                         // 0x005b9aa5    d84c247c
                         faddp              st(1), st                                      // 0x005b9aa9    dec1
                         {disp8} fadd       dword ptr [esp + 0x6c]                         // 0x005b9aab    d844246c
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x005b9aaf    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x005b9ab3    8b54240c
                         {disp32} mov       dword ptr [esi + 0x00003568], edx              // 0x005b9ab7    899668350000
                         {disp32} fstp      dword ptr [esi + 0x00003570]                   // 0x005b9abd    d99e70350000
_jmp_addr_0x005b9ac3:    pop                esi                                            // 0x005b9ac3    5e
                         add                esp, 0x6c                                      // 0x005b9ac4    83c46c
                         ret                0x000c                                         // 0x005b9ac7    c20c00
                         call               dword ptr [rdata_bytes + 0xd0]                 // 0x005b9aca    ff15d0908a00
_jmp_addr_0x005b9ad0:    sub                esp, 0x0c                                      // 0x005b9ad0    83ec0c
                         {disp32} mov       eax, dword ptr [_game]                         // 0x005b9ad3    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x0025005c]              // 0x005b9ad8    8b905c002500
                         {disp32} mov       eax, dword ptr [edx + 0x000045e8]              // 0x005b9ade    8b82e8450000
                         test               eax, eax                                       // 0x005b9ae4    85c0
                         {disp8} mov        dword ptr [esp + 0x00], 0x3f19999a             // 0x005b9ae6    c74424009a99193f
                         {disp8} je         _jmp_addr_0x005b9af8                           // 0x005b9aee    7408
                         {disp8} mov        dword ptr [esp + 0x00], 0x3ee66667             // 0x005b9af0    c74424006766e63e
_jmp_addr_0x005b9af8:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005b9af8    d90598a38a00
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005b9afe    d9442410
                         fabs                                                              // 0x005b9b02    d9e1
                         {disp8} fst        dword ptr [esp + 0x08]                         // 0x005b9b04    d9542408
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005b9b08    d9442414
                         fabs                                                              // 0x005b9b0c    d9e1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c50]              // 0x005b9b0e    d80d500c9000
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x005b9b14    d95c2404
                         {disp32} fcomp     dword ptr [__real@3f400000]                    // 0x005b9b18    d81d74b28a00
                         fnstsw             ax                                             // 0x005b9b1e    dfe0
                         test               ah, 0x41                                       // 0x005b9b20    f6c441
                         {disp8} jne        _jmp_addr_0x005b9b31                           // 0x005b9b23    750c
                         fstp               st(0)                                          // 0x005b9b25    ddd8
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x005b9b27    d9442408
                         {disp32} fsub      dword ptr [__real@3f400000]                    // 0x005b9b2b    d82574b28a00
_jmp_addr_0x005b9b31:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9b31    d9442404
                         {disp8} fcomp      dword ptr [esp + 0x00]                         // 0x005b9b35    d85c2400
                         fnstsw             ax                                             // 0x005b9b39    dfe0
                         test               ah, 0x41                                       // 0x005b9b3b    f6c441
                         {disp8} jne        _jmp_addr_0x005b9b4c                           // 0x005b9b3e    750c
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9b40    d9442404
                         {disp8} fsub       dword ptr [esp + 0x00]                         // 0x005b9b44    d8642400
                         fadd.s             st(0), st(0)                                   // 0x005b9b48    dcc0
                         faddp              st(1), st                                      // 0x005b9b4a    dec1
_jmp_addr_0x005b9b4c:    fld                st(0)                                          // 0x005b9b4c    d9c0
                         push               ebx                                            // 0x005b9b4e    53
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                    // 0x005b9b4f    8b5c2418
                         fmul               st, st(1)                                      // 0x005b9b53    d8c9
                         push               ebp                                            // 0x005b9b55    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                    // 0x005b9b56    8b6c2418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c4c]              // 0x005b9b5a    d80d4c0c9000
                         push               esi                                            // 0x005b9b60    56
                         push               edi                                            // 0x005b9b61    57
                         {disp32} lea       esi, dword ptr [ecx + 0x00003380]              // 0x005b9b62    8db180330000
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005b9b68    d95c2410
                         mov                edi, 0x00000006                                // 0x005b9b6c    bf06000000
                         fstp               st(0)                                          // 0x005b9b71    ddd8
_jmp_addr_0x005b9b73:    push               ebx                                            // 0x005b9b73    53
                         push               ebp                                            // 0x005b9b74    55
                         mov.s              ecx, esi                                       // 0x005b9b75    8bce
                         call               _jmp_addr_0x005b9620                           // 0x005b9b77    e8a4faffff
                         {disp8} fadd       dword ptr [esp + 0x10]                         // 0x005b9b7c    d8442410
                         add                esi, 0x14                                      // 0x005b9b80    83c614
                         dec                edi                                            // 0x005b9b83    4f
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005b9b84    d95c2410
                         {disp8} jne        _jmp_addr_0x005b9b73                           // 0x005b9b88    75e9
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005b9b8a    d9442410
                         pop                edi                                            // 0x005b9b8e    5f
                         pop                esi                                            // 0x005b9b8f    5e
                         pop                ebp                                            // 0x005b9b90    5d
                         pop                ebx                                            // 0x005b9b91    5b
                         add                esp, 0x0c                                      // 0x005b9b92    83c40c
                         ret                0x0008                                         // 0x005b9b95    c20800
                         nop                                                               // 0x005b9b98    90
                         nop                                                               // 0x005b9b99    90
                         nop                                                               // 0x005b9b9a    90
                         nop                                                               // 0x005b9b9b    90
                         nop                                                               // 0x005b9b9c    90
                         nop                                                               // 0x005b9b9d    90
                         nop                                                               // 0x005b9b9e    90
                         nop                                                               // 0x005b9b9f    90
_jmp_addr_0x005b9ba0:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9ba0    d9442404
                         fchs                                                              // 0x005b9ba4    d9e0
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9ba6    d9442404
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005b9baa    d80db4a38a00
                         {disp8} fst        dword ptr [esp + 0x04]                         // 0x005b9bb0    d9542404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005b9bb4    d81d98a38a00
                         fnstsw             ax                                             // 0x005b9bba    dfe0
                         test               ah, 0x01                                       // 0x005b9bbc    f6c401
                         {disp8} je         _jmp_addr_0x005b9bcb                           // 0x005b9bbf    740a
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000             // 0x005b9bc1    c744240400000000
                         {disp8} jmp        _jmp_addr_0x005b9be4                           // 0x005b9bc9    eb19
_jmp_addr_0x005b9bcb:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9bcb    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005b9bcf    d81d90a38a00
                         fnstsw             ax                                             // 0x005b9bd5    dfe0
                         test               ah, 0x41                                       // 0x005b9bd7    f6c441
                         {disp8} jne        _jmp_addr_0x005b9be4                           // 0x005b9bda    7508
                         {disp8} mov        dword ptr [esp + 0x04], 0x3f800000             // 0x005b9bdc    c74424040000803f
_jmp_addr_0x005b9be4:    {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x005b9be4    d81598a38a00
                         fnstsw             ax                                             // 0x005b9bea    dfe0
                         test               ah, 0x01                                       // 0x005b9bec    f6c401
                         {disp8} je         _jmp_addr_0x005b9bfb                           // 0x005b9bef    740a
                         fstp               st(0)                                          // 0x005b9bf1    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005b9bf3    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x005b9c10                           // 0x005b9bf9    eb15
_jmp_addr_0x005b9bfb:    {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x005b9bfb    d81590a38a00
                         fnstsw             ax                                             // 0x005b9c01    dfe0
                         test               ah, 0x41                                       // 0x005b9c03    f6c441
                         {disp8} jne        _jmp_addr_0x005b9c10                           // 0x005b9c06    7508
                         fstp               st(0)                                          // 0x005b9c08    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005b9c0a    d90590a38a00
_jmp_addr_0x005b9c10:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005b9c10    d9442404
                         push               esi                                            // 0x005b9c14    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57054]              // 0x005b9c15    d80d54009000
                         call               _jmp_addr_0x007a1400                           // 0x005b9c1b    e8e0771e00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57054]              // 0x005b9c20    d80d54009000
                         mov                ecx, 0x0000ff00                                // 0x005b9c26    b900ff0000
                         sub.s              ecx, eax                                       // 0x005b9c2b    2bc8
                         shl                ecx, 0x10                                      // 0x005b9c2d    c1e110
                         mov.s              esi, ecx                                       // 0x005b9c30    8bf1
                         call               _jmp_addr_0x007a1400                           // 0x005b9c32    e8c9771e00
                         sub.s              esi, eax                                       // 0x005b9c37    2bf0
                         mov.s              eax, esi                                       // 0x005b9c39    8bc6
                         pop                esi                                            // 0x005b9c3b    5e
                         ret                                                               // 0x005b9c3c    c3
                         nop                                                               // 0x005b9c3d    90
                         nop                                                               // 0x005b9c3e    90
                         nop                                                               // 0x005b9c3f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504228]         // 0x005b9c40    a128a2ec00
                         sub                esp, 0x000000ac                                // 0x005b9c45    81ecac000000
                         test               eax, eax                                       // 0x005b9c4b    85c0
                         push               ebx                                            // 0x005b9c4d    53
                         push               ebp                                            // 0x005b9c4e    55
                         push               esi                                            // 0x005b9c4f    56
                         push               edi                                            // 0x005b9c50    57
                         mov.s              esi, ecx                                       // 0x005b9c51    8bf1
                         {disp8} je         _jmp_addr_0x005b9c6d                           // 0x005b9c53    7418
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9c55    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x005b9c5a    8b08
                         push               0x0                                            // 0x005b9c5c    6a00
                         push               0xe                                            // 0x005b9c5e    6a0e
                         push               eax                                            // 0x005b9c60    50
                         call               dword ptr [ecx + 0x50]                         // 0x005b9c61    ff5150
                         neg                eax                                            // 0x005b9c64    f7d8
                         sbb.s              eax, eax                                       // 0x005b9c66    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax         // 0x005b9c68    a328a2ec00
_jmp_addr_0x005b9c6d:    cmp                dword ptr [data_bytes + 0x50424c], 0x08        // 0x005b9c6d    833d4ca2ec0008
                         {disp8} je         _jmp_addr_0x005b9c94                           // 0x005b9c74    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9c76    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x005b9c7b    8b10
                         push               0x8                                            // 0x005b9c7d    6a08
                         push               0x17                                           // 0x005b9c7f    6a17
                         push               eax                                            // 0x005b9c81    50
                         call               dword ptr [edx + 0x50]                         // 0x005b9c82    ff5250
                         neg                eax                                            // 0x005b9c85    f7d8
                         sbb.s              eax, eax                                       // 0x005b9c87    1bc0
                         and                eax, 0xfffffff7                                // 0x005b9c89    83e0f7
                         add                eax, 0x08                                      // 0x005b9c8c    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x005b9c8f    a34ca2ec00
_jmp_addr_0x005b9c94:    {disp32} mov       eax, dword ptr [data_bytes + 0x502230]         // 0x005b9c94    a13082ec00
                         mov                ebx, 0x00000002                                // 0x005b9c99    bb02000000
                         cmp.s              eax, ebx                                       // 0x005b9c9e    3bc3
                         {disp8} je         _jmp_addr_0x005b9cc3                           // 0x005b9ca0    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9ca2    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x005b9ca7    8b08
                         push               ebx                                            // 0x005b9ca9    53
                         push               0x10                                           // 0x005b9caa    6a10
                         push               0x0                                            // 0x005b9cac    6a00
                         push               eax                                            // 0x005b9cae    50
                         call               dword ptr [ecx + 0x94]                         // 0x005b9caf    ff9194000000
                         neg                eax                                            // 0x005b9cb5    f7d8
                         sbb.s              eax, eax                                       // 0x005b9cb7    1bc0
                         and                eax, 0xfffffffd                                // 0x005b9cb9    83e0fd
                         add.s              eax, ebx                                       // 0x005b9cbc    03c3
                         {disp32} mov       dword ptr [data_bytes + 0x502230], eax         // 0x005b9cbe    a33082ec00
_jmp_addr_0x005b9cc3:    {disp32} mov       eax, dword ptr [data_bytes + 0x50425c]         // 0x005b9cc3    a15ca2ec00
                         mov                edi, 0x00000001                                // 0x005b9cc8    bf01000000
                         cmp.s              eax, edi                                       // 0x005b9ccd    3bc7
                         {disp8} je         _jmp_addr_0x005b9d0c                           // 0x005b9ccf    743b
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9cd1    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x005b9cd6    8b10
                         push               edi                                            // 0x005b9cd8    57
                         push               0x1b                                           // 0x005b9cd9    6a1b
                         push               eax                                            // 0x005b9cdb    50
                         call               dword ptr [edx + 0x50]                         // 0x005b9cdc    ff5250
                         test               eax, eax                                       // 0x005b9cdf    85c0
                         {disp32} je        _jmp_addr_0x005b9ffc                           // 0x005b9ce1    0f8415030000
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9ce7    a138a6ec00
                         push               edi                                            // 0x005b9cec    57
                         push               0x1b                                           // 0x005b9ced    6a1b
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], 0xffffffff  // 0x005b9cef    c7055ca2ec00ffffffff
                         mov                ecx, dword ptr [eax]                           // 0x005b9cf9    8b08
                         push               eax                                            // 0x005b9cfb    50
                         call               dword ptr [ecx + 0x50]                         // 0x005b9cfc    ff5150
                         neg                eax                                            // 0x005b9cff    f7d8
                         sbb.s              eax, eax                                       // 0x005b9d01    1bc0
                         and                eax, 0xfffffffe                                // 0x005b9d03    83e0fe
                         inc                eax                                            // 0x005b9d06    40
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], eax         // 0x005b9d07    a35ca2ec00
_jmp_addr_0x005b9d0c:    cmp                dword ptr [data_bytes + 0x50423c], ebx         // 0x005b9d0c    391d3ca2ec00
                         {disp8} je         _jmp_addr_0x005b9d30                           // 0x005b9d12    741c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9d14    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x005b9d19    8b10
                         push               ebx                                            // 0x005b9d1b    53
                         push               0x13                                           // 0x005b9d1c    6a13
                         push               eax                                            // 0x005b9d1e    50
                         call               dword ptr [edx + 0x50]                         // 0x005b9d1f    ff5250
                         neg                eax                                            // 0x005b9d22    f7d8
                         sbb.s              eax, eax                                       // 0x005b9d24    1bc0
                         and                eax, 0xfffffffd                                // 0x005b9d26    83e0fd
                         add.s              eax, ebx                                       // 0x005b9d29    03c3
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], eax         // 0x005b9d2b    a33ca2ec00
_jmp_addr_0x005b9d30:    cmp                dword ptr [data_bytes + 0x504240], ebx         // 0x005b9d30    391d40a2ec00
                         {disp8} je         _jmp_addr_0x005b9d54                           // 0x005b9d36    741c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9d38    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x005b9d3d    8b08
                         push               ebx                                            // 0x005b9d3f    53
                         push               0x14                                           // 0x005b9d40    6a14
                         push               eax                                            // 0x005b9d42    50
                         call               dword ptr [ecx + 0x50]                         // 0x005b9d43    ff5150
                         neg                eax                                            // 0x005b9d46    f7d8
                         sbb.s              eax, eax                                       // 0x005b9d48    1bc0
                         and                eax, 0xfffffffd                                // 0x005b9d4a    83e0fd
                         add.s              eax, ebx                                       // 0x005b9d4d    03c3
                         {disp32} mov       dword ptr [data_bytes + 0x504240], eax         // 0x005b9d4f    a340a2ec00
_jmp_addr_0x005b9d54:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9d54    a138a6ec00
                         mov                edx, dword ptr [eax]                           // 0x005b9d59    8b10
                         push               0x0                                            // 0x005b9d5b    6a00
                         push               0x0                                            // 0x005b9d5d    6a00
                         push               eax                                            // 0x005b9d5f    50
                         {disp8} mov        dword ptr [esp + 0x44], eax                    // 0x005b9d60    89442444
                         call               dword ptr [edx + 0x8c]                         // 0x005b9d64    ff928c000000
                         xor.s              eax, eax                                       // 0x005b9d6a    33c0
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x005b9d6c    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], 0xfffffff1             // 0x005b9d70    c744241cf1ffffff
_jmp_addr_0x005b9d78:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005b9d78    8b4c241c
                         dec                ecx                                            // 0x005b9d7c    49
                         {disp8} mov        dword ptr [esp + 0x20], ecx                    // 0x005b9d7d    894c2420
                         {disp8} fild       dword ptr [esp + 0x20]                         // 0x005b9d81    db442420
                         add                eax, 0x19                                      // 0x005b9d85    83c019
                         xor.s              ebx, ebx                                       // 0x005b9d88    33db
                         mov                edi, 0xfffffff5                                // 0x005b9d8a    bff5ffffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d8]               // 0x005b9d8f    d80dd8b38a00
                         {disp8} mov        dword ptr [esp + 0x20], ebx                    // 0x005b9d95    895c2420
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x005b9d99    897c2414
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x005b9d9d    d95c2428
                         {disp8} fild       dword ptr [esp + 0x1c]                         // 0x005b9da1    db44241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d8]               // 0x005b9da5    d80dd8b38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005b9dab    d95c2430
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x005b9daf    db442418
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x005b9db3    89442418
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x005b9db7    d95c242c
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x005b9dbb    db442418
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x005b9dbf    d95c2424
_jmp_addr_0x005b9dc3:    {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x005b9dc3    8b442428
                         {disp8} lea        edx, dword ptr [edi + -0x01]                   // 0x005b9dc7    8d57ff
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x005b9dca    89542410
                         {disp8} fild       dword ptr [esp + 0x10]                         // 0x005b9dce    db442410
                         mov.s              ecx, esi                                       // 0x005b9dd2    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d8]               // 0x005b9dd4    d80dd8b38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005b9dda    d95c2410
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x005b9dde    8b6c2410
                         push               ebp                                            // 0x005b9de2    55
                         push               eax                                            // 0x005b9de3    50
                         call               _jmp_addr_0x005b9ad0                           // 0x005b9de4    e8e7fcffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x21284]              // 0x005b9de9    d80d84a28c00
                         push               ecx                                            // 0x005b9def    51
                         fstp               dword ptr [esp]                                // 0x005b9df0    d91c24
                         call               _jmp_addr_0x005b9ba0                           // 0x005b9df3    e8a8fdffff
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                    // 0x005b9df8    8b4c2434
                         add                esp, 0x04                                      // 0x005b9dfc    83c404
                         push               ebp                                            // 0x005b9dff    55
                         push               ecx                                            // 0x005b9e00    51
                         mov.s              ecx, esi                                       // 0x005b9e01    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x005b9e03    89442418
                         call               _jmp_addr_0x005b9ad0                           // 0x005b9e07    e8c4fcffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x21284]              // 0x005b9e0c    d80d84a28c00
                         push               ecx                                            // 0x005b9e12    51
                         fstp               dword ptr [esp]                                // 0x005b9e13    d91c24
                         call               _jmp_addr_0x005b9ba0                           // 0x005b9e16    e885fdffff
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x005b9e1b    db442418
                         add                esp, 0x04                                      // 0x005b9e1f    83c404
                         mov.s              ebp, eax                                       // 0x005b9e22    8be8
                         {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x005b9e24    8b442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d8]               // 0x005b9e28    d80dd8b38a00
                         mov.s              ecx, esi                                       // 0x005b9e2e    8bce
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005b9e30    d95c2414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005b9e34    8b542414
                         push               edx                                            // 0x005b9e38    52
                         push               eax                                            // 0x005b9e39    50
                         call               _jmp_addr_0x005b9ad0                           // 0x005b9e3a    e891fcffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x21284]              // 0x005b9e3f    d80d84a28c00
                         push               ecx                                            // 0x005b9e45    51
                         fstp               dword ptr [esp]                                // 0x005b9e46    d91c24
                         call               _jmp_addr_0x005b9ba0                           // 0x005b9e49    e852fdffff
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x005b9e4e    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x34]                    // 0x005b9e52    8b542434
                         add                esp, 0x04                                      // 0x005b9e56    83c404
                         push               ecx                                            // 0x005b9e59    51
                         push               edx                                            // 0x005b9e5a    52
                         mov.s              ecx, esi                                       // 0x005b9e5b    8bce
                         {disp8} mov        dword ptr [esp + 0x3c], eax                    // 0x005b9e5d    8944243c
                         call               _jmp_addr_0x005b9ad0                           // 0x005b9e61    e86afcffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x21284]              // 0x005b9e66    d80d84a28c00
                         push               ecx                                            // 0x005b9e6c    51
                         fstp               dword ptr [esp]                                // 0x005b9e6d    d91c24
                         call               _jmp_addr_0x005b9ba0                           // 0x005b9e70    e82bfdffff
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                    // 0x005b9e75    8b4c2430
                         {disp8} fild       dword ptr [esp + 0x24]                         // 0x005b9e79    db442424
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x57c30]         // 0x005b9e7d    8b15300c9000
                         {disp8} mov        dword ptr [esp + 0x48], edx                    // 0x005b9e83    89542448
                         {disp8} mov        dword ptr [esp + 0x40], ecx                    // 0x005b9e87    894c2440
                         {disp8} fst        dword ptr [esp + 0x44]                         // 0x005b9e8b    d9542444
                         mov.s              ecx, edx                                       // 0x005b9e8f    8bca
                         {disp8} fstp       dword ptr [esp + 0x64]                         // 0x005b9e91    d95c2464
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005b9e95    8b542414
                         {disp8} mov        dword ptr [esp + 0x50], edx                    // 0x005b9e99    89542450
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x005b9e9d    8b542428
                         {disp8} mov        dword ptr [esp + 0x60], edx                    // 0x005b9ea1    89542460
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x57c30]         // 0x005b9ea5    8b15300c9000
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                    // 0x005b9eab    894c244c
                         xor.s              ecx, ecx                                       // 0x005b9eaf    33c9
                         {disp8} mov        dword ptr [esp + 0x68], edx                    // 0x005b9eb1    89542468
                         {disp8} mov        dword ptr [esp + 0x6c], edx                    // 0x005b9eb5    8954246c
                         {disp8} mov        edx, dword ptr [esp + 0x30]                    // 0x005b9eb9    8b542430
                         add                esp, 0x04                                      // 0x005b9ebd    83c404
                         {disp8} mov        dword ptr [esp + 0x50], ecx                    // 0x005b9ec0    894c2450
                         {disp8} mov        dword ptr [esp + 0x54], ecx                    // 0x005b9ec4    894c2454
                         {disp8} mov        dword ptr [esp + 0x58], ecx                    // 0x005b9ec8    894c2458
                         {disp8} mov        dword ptr [esp + 0x6c], ebp                    // 0x005b9ecc    896c246c
                         {disp8} mov        dword ptr [esp + 0x70], ecx                    // 0x005b9ed0    894c2470
                         {disp8} mov        dword ptr [esp + 0x74], 0x3f800000             // 0x005b9ed4    c74424740000803f
                         {disp8} mov        dword ptr [esp + 0x78], ecx                    // 0x005b9edc    894c2478
                         {disp8} mov        dword ptr [esp + 0x7c], edx                    // 0x005b9ee0    8954247c
                         add                ebx, 0x19                                      // 0x005b9ee4    83c319
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x57c30]         // 0x005b9ee7    8b15300c9000
                         push               ecx                                            // 0x005b9eed    51
                         push               0x6                                            // 0x005b9eee    6a06
                         push               0x00900c34                                     // 0x005b9ef0    68340c9000
                         {disp32} mov       dword ptr [esp + 0x00000090], edx              // 0x005b9ef5    89942490000000
                         {disp32} mov       dword ptr [esp + 0x00000094], edx              // 0x005b9efc    89942494000000
                         {disp8} mov        edx, dword ptr [esp + 0x40]                    // 0x005b9f03    8b542440
                         push               0x4                                            // 0x005b9f07    6a04
                         {disp32} mov       dword ptr [esp + 0x0000009c], edx              // 0x005b9f09    8994249c000000
                         {disp8} mov        edx, dword ptr [esp + 0x34]                    // 0x005b9f10    8b542434
                         {disp32} mov       dword ptr [esp + 0x000000a0], ecx              // 0x005b9f14    898c24a0000000
                         {disp32} mov       dword ptr [esp + 0x000000a4], ecx              // 0x005b9f1b    898c24a4000000
                         {disp32} mov       dword ptr [esp + 0x000000c0], ecx              // 0x005b9f22    898c24c0000000
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                    // 0x005b9f29    8d4c244c
                         push               ecx                                            // 0x005b9f2d    51
                         {disp8} mov        dword ptr [esp + 0x24], ebx                    // 0x005b9f2e    895c2424
                         {disp8} fild       dword ptr [esp + 0x24]                         // 0x005b9f32    db442424
                         {disp32} mov       dword ptr [esp + 0x000000b0], edx              // 0x005b9f36    899424b0000000
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x57c30]         // 0x005b9f3d    8b15300c9000
                         push               0x000001c4                                     // 0x005b9f43    68c4010000
                         {disp32} mov       dword ptr [esp + 0x000000c4], eax              // 0x005b9f48    898424c4000000
                         {disp32} fst       dword ptr [esp + 0x00000098]                   // 0x005b9f4f    d9942498000000
                         {disp8} mov        eax, dword ptr [esp + 0x50]                    // 0x005b9f56    8b442450
                         {disp32} fstp      dword ptr [esp + 0x000000b8]                   // 0x005b9f5a    d99c24b8000000
                         push               0x4                                            // 0x005b9f61    6a04
                         {disp32} mov       dword ptr [esp + 0x000000c0], edx              // 0x005b9f63    899424c0000000
                         {disp32} mov       dword ptr [esp + 0x000000c4], edx              // 0x005b9f6a    899424c4000000
                         mov                edx, dword ptr [eax]                           // 0x005b9f71    8b10
                         push               eax                                            // 0x005b9f73    50
                         {disp32} mov       dword ptr [esp + 0x000000b8], 0x3f800000       // 0x005b9f74    c78424b80000000000803f
                         {disp32} mov       dword ptr [esp + 0x000000d4], 0x3f800000       // 0x005b9f7f    c78424d40000000000803f
                         {disp32} mov       dword ptr [esp + 0x000000d8], 0x3f800000       // 0x005b9f8a    c78424d80000000000803f
                         call               dword ptr [edx + 0x68]                         // 0x005b9f95    ff5268
                         inc                edi                                            // 0x005b9f98    47
                         {disp8} lea        edx, dword ptr [edi + 0x0b]                    // 0x005b9f99    8d570b
                         cmp                edx, 0x18                                      // 0x005b9f9c    83fa18
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x005b9f9f    897c2414
                         {disp8} mov        dword ptr [esp + 0x20], ebx                    // 0x005b9fa3    895c2420
                         {disp32} jl        _jmp_addr_0x005b9dc3                           // 0x005b9fa7    0f8c16feffff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005b9fad    8b4c241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x005b9fb1    8b442418
                         inc                ecx                                            // 0x005b9fb5    41
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x005b9fb6    894c241c
                         add                ecx, 0xf                                       // 0x005b9fba    83c10f
                         cmp                ecx, 0x20                                      // 0x005b9fbd    83f920
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x005b9fc0    89442418
                         {disp32} jl        _jmp_addr_0x005b9d78                           // 0x005b9fc4    0f8caefdffff
                         cmp                dword ptr [data_bytes + 0x50424c], 0x04        // 0x005b9fca    833d4ca2ec0004
                         pop                edi                                            // 0x005b9fd1    5f
                         pop                esi                                            // 0x005b9fd2    5e
                         pop                ebp                                            // 0x005b9fd3    5d
                         pop                ebx                                            // 0x005b9fd4    5b
                         {disp8} je         _jmp_addr_0x005b9ff5                           // 0x005b9fd5    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]              // 0x005b9fd7    a138a6ec00
                         mov                ecx, dword ptr [eax]                           // 0x005b9fdc    8b08
                         push               0x4                                            // 0x005b9fde    6a04
                         push               0x17                                           // 0x005b9fe0    6a17
                         push               eax                                            // 0x005b9fe2    50
                         call               dword ptr [ecx + 0x50]                         // 0x005b9fe3    ff5150
                         neg                eax                                            // 0x005b9fe6    f7d8
                         sbb.s              eax, eax                                       // 0x005b9fe8    1bc0
                         and                eax, 0xfffffffb                                // 0x005b9fea    83e0fb
                         add                eax, 0x04                                      // 0x005b9fed    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax         // 0x005b9ff0    a34ca2ec00
_jmp_addr_0x005b9ff5:    add                esp, 0x000000ac                                // 0x005b9ff5    81c4ac000000
                         ret                                                               // 0x005b9ffb    c3
_jmp_addr_0x005b9ffc:    {disp32} mov       dword ptr [data_bytes + 0x50425c], edi         // 0x005b9ffc    893d5ca2ec00
                         {disp32} jmp       _jmp_addr_0x005b9d0c                           // 0x005ba002    e905fdffff
                         nop                                                               // 0x005ba007    90
                         nop                                                               // 0x005ba008    90
                         nop                                                               // 0x005ba009    90
                         nop                                                               // 0x005ba00a    90
                         nop                                                               // 0x005ba00b    90
                         nop                                                               // 0x005ba00c    90
                         nop                                                               // 0x005ba00d    90
                         nop                                                               // 0x005ba00e    90
                         nop                                                               // 0x005ba00f    90
_jmp_addr_0x005ba010:    sub                esp, 0x74                                      // 0x005ba010    83ec74
                         push               esi                                            // 0x005ba013    56
                         mov.s              esi, ecx                                       // 0x005ba014    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000037e8]              // 0x005ba016    8b86e8370000
                         push               edi                                            // 0x005ba01c    57
                         xor.s              edi, edi                                       // 0x005ba01d    33ff
                         cmp.s              eax, edi                                       // 0x005ba01f    3bc7
                         {disp32} jne       _jmp_addr_0x005ba327                           // 0x005ba021    0f8500030000
                         test               byte ptr [esi + 0x000035d0], 0x40              // 0x005ba027    f686d035000040
                         {disp32} jne       _jmp_addr_0x005ba327                           // 0x005ba02e    0f85f3020000
                         {disp32} mov       eax, dword ptr [esi + 0x00003470]              // 0x005ba034    8b8670340000
                         cmp.s              eax, edi                                       // 0x005ba03a    3bc7
                         {disp32} je        _jmp_addr_0x005ba21d                           // 0x005ba03c    0f84db010000
                         {disp32} fld       dword ptr [esi + 0x00003514]                   // 0x005ba042    d98614350000
                         {disp32} mov       ecx, dword ptr [eax + 0x00003514]              // 0x005ba048    8b8814350000
                         {disp32} fld       dword ptr [esi + 0x00003544]                   // 0x005ba04e    d98644350000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x005ba054    894c240c
                         {disp32} fld       dword ptr [eax + 0x00003544]                   // 0x005ba058    d98044350000
                         fxch               st(1)                                          // 0x005ba05e    d9c9
                         fsub               st, st(1)                                      // 0x005ba060    d8e1
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x005ba062    d95c2408
                         fstp               st(0)                                          // 0x005ba066    ddd8
                         {disp8} fsub       dword ptr [esp + 0x0c]                         // 0x005ba068    d864240c
                         fld                st(0)                                          // 0x005ba06c    d9c0
                         fmulp              st(1), st                                      // 0x005ba06e    dec9
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x005ba070    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x005ba074    d84c2408
                         faddp              st(1), st                                      // 0x005ba078    dec1
                         fld                st(0)                                          // 0x005ba07a    d9c0
                         fsqrt                                                             // 0x005ba07c    d9fa
                         {disp32} fst       dword ptr [esi + 0x00003474]                   // 0x005ba07e    d99674340000
                         {disp32} fstp      dword ptr [eax + 0x00003474]                   // 0x005ba084    d99874340000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57c58]              // 0x005ba08a    d81d580c9000
                         fnstsw             ax                                             // 0x005ba090    dfe0
                         test               ah, 0x01                                       // 0x005ba092    f6c401
                         {disp8} je         _jmp_addr_0x005ba113                           // 0x005ba095    747c
                         {disp32} fld       dword ptr [esi + 0x00003474]                   // 0x005ba097    d98674340000
                         push               0x3f800000                                     // 0x005ba09d    680000803f
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c54]              // 0x005ba0a2    d80d540c9000
                         push               edi                                            // 0x005ba0a8    57
                         push               ecx                                            // 0x005ba0a9    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00003470]              // 0x005ba0aa    8b8e70340000
                         fld                st(0)                                          // 0x005ba0b0    d9c0
                         add                ecx, 0x00003574                                // 0x005ba0b2    81c174350000
                         fmul               st, st(1)                                      // 0x005ba0b8    d8c9
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                    // 0x005ba0ba    d82d90a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005ba0c0    d95c2414
                         fstp               st(0)                                          // 0x005ba0c4    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba0c6    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fcc]              // 0x005ba0ca    d80dccef8c00
                         fstp               dword ptr [esp]                                // 0x005ba0d0    d91c24
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20// 0x005ba0d3    e888dce4ff
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x005ba0d8    d9442408
                         {disp32} fcomp     dword ptr [esp + 0x00000080]                   // 0x005ba0dc    d89c2480000000
                         fnstsw             ax                                             // 0x005ba0e3    dfe0
                         test               ah, 0x01                                       // 0x005ba0e5    f6c401
                         {disp8} je         _jmp_addr_0x005ba0f5                           // 0x005ba0e8    740b
                         {disp32} mov       edx, dword ptr [esp + 0x00000080]              // 0x005ba0ea    8b942480000000
                         {disp8} mov        dword ptr [esp + 0x08], edx                    // 0x005ba0f1    89542408
_jmp_addr_0x005ba0f5:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005ba0f5    8b442408
                         push               0x3f800000                                     // 0x005ba0f9    680000803f
                         push               edi                                            // 0x005ba0fe    57
                         push               eax                                            // 0x005ba0ff    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00003574]              // 0x005ba100    8d8e74350000
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20// 0x005ba106    e855dce4ff
                         pop                edi                                            // 0x005ba10b    5f
                         pop                esi                                            // 0x005ba10c    5e
                         add                esp, 0x74                                      // 0x005ba10d    83c474
                         ret                0x0004                                         // 0x005ba110    c20400
_jmp_addr_0x005ba113:    {disp32} mov       ecx, dword ptr [esi + 0x00003574]              // 0x005ba113    8b8e74350000
                         {disp32} mov       edx, dword ptr [esi + 0x00003580]              // 0x005ba119    8b9680350000
                         {disp32} mov       dword ptr [esi + 0x00003590], ecx              // 0x005ba11f    898e90350000
                         {disp32} mov       dword ptr [esi + 0x00003594], edx              // 0x005ba125    899694350000
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                    // 0x005ba12b    8d54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                    // 0x005ba12f    8d4c244c
                         {disp32} mov       dword ptr [esi + 0x00003578], edi              // 0x005ba133    89be78350000
                         {disp32} mov       dword ptr [esi + 0x0000357c], edi              // 0x005ba139    89be7c350000
                         {disp32} mov       dword ptr [esi + 0x0000358c], 0x3f800000       // 0x005ba13f    c7868c3500000000803f
                         {disp32} mov       dword ptr [esi + 0x00003588], edi              // 0x005ba149    89be88350000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3d2aaaab             // 0x005ba14f    c744241cabaa2a3d
                         {disp8} mov        dword ptr [esp + 0x20], 0x3e2aaaab             // 0x005ba157    c7442420abaa2a3e
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f000000             // 0x005ba15f    c74424240000003f
                         {disp8} mov        dword ptr [esp + 0x28], 0x3e2aaaab             // 0x005ba167    c7442428abaa2a3e
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3f000000             // 0x005ba16f    c744242c0000003f
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f800000             // 0x005ba177    c74424300000803f
                         {disp8} mov        dword ptr [esp + 0x34], 0x3f000000             // 0x005ba17f    c74424340000003f
                         {disp8} mov        dword ptr [esp + 0x38], 0x3f800000             // 0x005ba187    c74424380000803f
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3f800000             // 0x005ba18f    c744243c0000803f
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000             // 0x005ba197    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000             // 0x005ba19f    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000             // 0x005ba1a7    c744244000000000
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x005ba1af    e8dc102400
                         {disp32} fld       dword ptr [esi + 0x00003578]                   // 0x005ba1b4    d98678350000
                         {disp32} fsub      dword ptr [esi + 0x00003590]                   // 0x005ba1ba    d8a690350000
                         {disp8} lea        edx, dword ptr [esp + 0x10]                    // 0x005ba1c0    8d542410
                         {disp32} fld       dword ptr [esi + 0x00003594]                   // 0x005ba1c4    d98694350000
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                    // 0x005ba1ca    8d4c244c
                         {disp32} fmul      dword ptr [esi + 0x0000358c]                   // 0x005ba1ce    d88e8c350000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000             // 0x005ba1d4    c744241800000000
                         fsubp              st(1), st                                      // 0x005ba1dc    dee9
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005ba1de    d95c2410
                         {disp32} fld       dword ptr [esi + 0x0000357c]                   // 0x005ba1e2    d9867c350000
                         {disp32} fsub      dword ptr [esi + 0x00003594]                   // 0x005ba1e8    d8a694350000
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005ba1ee    d95c2414
                         call               _jmp_addr_0x00418a50                           // 0x005ba1f2    e859e8e5ff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x005ba1f7    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005ba1fb    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x005ba1ff    8b542418
                         pop                edi                                            // 0x005ba203    5f
                         {disp32} mov       dword ptr [esi + 0x000035a0], eax              // 0x005ba204    8986a0350000
                         {disp32} mov       dword ptr [esi + 0x0000359c], ecx              // 0x005ba20a    898e9c350000
                         {disp32} mov       dword ptr [esi + 0x00003598], edx              // 0x005ba210    899698350000
                         pop                esi                                            // 0x005ba216    5e
                         add                esp, 0x74                                      // 0x005ba217    83c474
                         ret                0x0004                                         // 0x005ba21a    c20400
_jmp_addr_0x005ba21d:    {disp32} mov       ecx, dword ptr [esi + 0x00003580]              // 0x005ba21d    8b8e80350000
                         {disp32} mov       eax, dword ptr [esi + 0x00003574]              // 0x005ba223    8b8674350000
                         {disp32} mov       dword ptr [esi + 0x00003594], ecx              // 0x005ba229    898e94350000
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                    // 0x005ba22f    8d54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                    // 0x005ba233    8d4c244c
                         {disp32} mov       dword ptr [esi + 0x00003590], eax              // 0x005ba237    898690350000
                         {disp32} mov       dword ptr [esi + 0x00003578], edi              // 0x005ba23d    89be78350000
                         {disp32} mov       dword ptr [esi + 0x0000357c], edi              // 0x005ba243    89be7c350000
                         {disp32} mov       dword ptr [esi + 0x0000358c], 0x3f800000       // 0x005ba249    c7868c3500000000803f
                         {disp32} mov       dword ptr [esi + 0x00003588], edi              // 0x005ba253    89be88350000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3d2aaaab             // 0x005ba259    c744241cabaa2a3d
                         {disp8} mov        dword ptr [esp + 0x20], 0x3e2aaaab             // 0x005ba261    c7442420abaa2a3e
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f000000             // 0x005ba269    c74424240000003f
                         {disp8} mov        dword ptr [esp + 0x28], 0x3e2aaaab             // 0x005ba271    c7442428abaa2a3e
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3f000000             // 0x005ba279    c744242c0000003f
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f800000             // 0x005ba281    c74424300000803f
                         {disp8} mov        dword ptr [esp + 0x34], 0x3f000000             // 0x005ba289    c74424340000003f
                         {disp8} mov        dword ptr [esp + 0x38], 0x3f800000             // 0x005ba291    c74424380000803f
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3f800000             // 0x005ba299    c744243c0000803f
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000             // 0x005ba2a1    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000             // 0x005ba2a9    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000             // 0x005ba2b1    c744244000000000
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x005ba2b9    e8d20f2400
                         {disp32} fld       dword ptr [esi + 0x00003578]                   // 0x005ba2be    d98678350000
                         {disp32} fsub      dword ptr [esi + 0x00003590]                   // 0x005ba2c4    d8a690350000
                         {disp8} lea        edx, dword ptr [esp + 0x10]                    // 0x005ba2ca    8d542410
                         {disp32} fld       dword ptr [esi + 0x00003594]                   // 0x005ba2ce    d98694350000
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                    // 0x005ba2d4    8d4c244c
                         {disp32} fmul      dword ptr [esi + 0x0000358c]                   // 0x005ba2d8    d88e8c350000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000             // 0x005ba2de    c744241800000000
                         fsubp              st(1), st                                      // 0x005ba2e6    dee9
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005ba2e8    d95c2410
                         {disp32} fld       dword ptr [esi + 0x0000357c]                   // 0x005ba2ec    d9867c350000
                         {disp32} fsub      dword ptr [esi + 0x00003594]                   // 0x005ba2f2    d8a694350000
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005ba2f8    d95c2414
                         call               _jmp_addr_0x00418a50                           // 0x005ba2fc    e84fe7e5ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005ba301    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x005ba305    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x005ba309    8b4c2418
                         pop                edi                                            // 0x005ba30d    5f
                         {disp32} mov       dword ptr [esi + 0x000035a0], edx              // 0x005ba30e    8996a0350000
                         {disp32} mov       dword ptr [esi + 0x0000359c], eax              // 0x005ba314    89869c350000
                         {disp32} mov       dword ptr [esi + 0x00003598], ecx              // 0x005ba31a    898e98350000
                         pop                esi                                            // 0x005ba320    5e
                         add                esp, 0x74                                      // 0x005ba321    83c474
                         ret                0x0004                                         // 0x005ba324    c20400
_jmp_addr_0x005ba327:    push               0x3f000000                                     // 0x005ba327    680000003f
                         push               edi                                            // 0x005ba32c    57
                         push               edi                                            // 0x005ba32d    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00003574]              // 0x005ba32e    8d8e74350000
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20// 0x005ba334    e827dae4ff
                         pop                edi                                            // 0x005ba339    5f
                         pop                esi                                            // 0x005ba33a    5e
                         add                esp, 0x74                                      // 0x005ba33b    83c474
                         ret                0x0004                                         // 0x005ba33e    c20400
                         nop                                                               // 0x005ba341    90
                         nop                                                               // 0x005ba342    90
                         nop                                                               // 0x005ba343    90
                         nop                                                               // 0x005ba344    90
                         nop                                                               // 0x005ba345    90
                         nop                                                               // 0x005ba346    90
                         nop                                                               // 0x005ba347    90
                         nop                                                               // 0x005ba348    90
                         nop                                                               // 0x005ba349    90
                         nop                                                               // 0x005ba34a    90
                         nop                                                               // 0x005ba34b    90
                         nop                                                               // 0x005ba34c    90
                         nop                                                               // 0x005ba34d    90
                         nop                                                               // 0x005ba34e    90
                         nop                                                               // 0x005ba34f    90
_jmp_addr_0x005ba350:    sub                esp, 0x34                                      // 0x005ba350    83ec34
                         push               ebx                                            // 0x005ba353    53
                         push               esi                                            // 0x005ba354    56
                         mov.s              esi, ecx                                       // 0x005ba355    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00003490]              // 0x005ba357    8b8690340000
                         cmp                eax, 0x40                                      // 0x005ba35d    83f840
                         {disp32} je        _jmp_addr_0x005ba773                           // 0x005ba360    0f840d040000
                         cmp                eax, 0x00000080                                // 0x005ba366    3d80000000
                         {disp32} je        _jmp_addr_0x005ba773                           // 0x005ba36b    0f8402040000
                         test               ah, 0x01                                       // 0x005ba371    f6c401
                         {disp32} jne       _jmp_addr_0x005ba773                           // 0x005ba374    0f85f9030000
                         cmp                eax, 0x00000200                                // 0x005ba37a    3d00020000
                         {disp32} je        _jmp_addr_0x005ba773                           // 0x005ba37f    0f84ee030000
                         {disp32} fld       dword ptr [esi + 0x00003528]                   // 0x005ba385    d98628350000
                         {disp32} fcomp     dword ptr [esi + 0x0000352c]                   // 0x005ba38b    d89e2c350000
                         fnstsw             ax                                             // 0x005ba391    dfe0
                         test               ah, 0x40                                       // 0x005ba393    f6c440
                         {disp32} je        _jmp_addr_0x005ba773                           // 0x005ba396    0f84d7030000
                         {disp32} fld       dword ptr [esi + 0x00003558]                   // 0x005ba39c    d98658350000
                         {disp32} fcomp     dword ptr [esi + 0x0000355c]                   // 0x005ba3a2    d89e5c350000
                         fnstsw             ax                                             // 0x005ba3a8    dfe0
                         test               ah, 0x40                                       // 0x005ba3aa    f6c440
                         {disp32} je        _jmp_addr_0x005ba773                           // 0x005ba3ad    0f84c0030000
                         {disp32} mov       al, byte ptr [esi + 0x00002c18]                // 0x005ba3b3    8a86182c0000
                         test               al, al                                         // 0x005ba3b9    84c0
                         {disp32} jne       _jmp_addr_0x005ba773                           // 0x005ba3bb    0f85b2030000
                         {disp32} mov       ecx, dword ptr [esi + 0x00003544]              // 0x005ba3c1    8b8e44350000
                         {disp32} mov       eax, dword ptr [esi + 0x00003514]              // 0x005ba3c7    8b8614350000
                         push               ebp                                            // 0x005ba3cd    55
                         push               edi                                            // 0x005ba3ce    57
                         mov.s              edx, ecx                                       // 0x005ba3cf    8bd1
                         push               edx                                            // 0x005ba3d1    52
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                    // 0x005ba3d2    894c242c
                         push               eax                                            // 0x005ba3d6    50
                         mov.s              ecx, esi                                       // 0x005ba3d7    8bce
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x005ba3d9    8944242c
                         call               _jmp_addr_0x005b9ad0                           // 0x005ba3dd    e8eef6ffff
                         {disp8} fst        dword ptr [esp + 0x10]                         // 0x005ba3e2    d9542410
                         fabs                                                              // 0x005ba3e6    d9e1
                         mov                ebp, 0x00000001                                // 0x005ba3e8    bd01000000
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]    // 0x005ba3ed    dc0580b68a00
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000             // 0x005ba3f3    c744243400000000
                         {disp32} fmul      dword ptr [__real@3e999999]                    // 0x005ba3fb    d80d3cb28a00
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x005ba401    d95c2420
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005ba405    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]               // 0x005ba409    d81d78b68a00
                         fnstsw             ax                                             // 0x005ba40f    dfe0
                         test               ah, 0x01                                       // 0x005ba411    f6c401
                         {disp8} je         _jmp_addr_0x005ba427                           // 0x005ba414    7411
                         {disp8} mov        dword ptr [esp + 0x34], ebp                    // 0x005ba416    896c2434
                         {disp8} mov        dword ptr [esp + 0x20], 0x40000000             // 0x005ba41a    c744242000000040
                         mov                ebp, 0x00000019                                // 0x005ba422    bd19000000
_jmp_addr_0x005ba427:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005ba427    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x005ba42b    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x005ba42f    8b442428
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x005ba433    894c241c
                         {disp32} mov       ecx, dword ptr [esi + 0x00003470]              // 0x005ba437    8b8e70340000
                         or                 ebx, 0xffffffff                                // 0x005ba43d    83cbff
                         test               ecx, ecx                                       // 0x005ba440    85c9
                         {disp8} mov        dword ptr [esp + 0x2c], edx                    // 0x005ba442    8954242c
                         {disp8} mov        dword ptr [esp + 0x30], eax                    // 0x005ba446    89442430
                         {disp32} je        _jmp_addr_0x005ba604                           // 0x005ba44a    0f84b4010000
                         {disp32} fld       dword ptr [esi + 0x00003474]                   // 0x005ba450    d98674340000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57c5c]              // 0x005ba456    d81d5c0c9000
                         fnstsw             ax                                             // 0x005ba45c    dfe0
                         test               ah, 0x01                                       // 0x005ba45e    f6c401
                         {disp32} je        _jmp_addr_0x005ba604                           // 0x005ba461    0f849d010000
                         {disp32} fld       dword ptr [esi + 0x00003514]                   // 0x005ba467    d98614350000
                         {disp32} fsub      dword ptr [ecx + 0x00003514]                   // 0x005ba46d    d8a114350000
                         {disp32} fld       dword ptr [esi + 0x00003544]                   // 0x005ba473    d98644350000
                         {disp32} fsub      dword ptr [ecx + 0x00003544]                   // 0x005ba479    d8a144350000
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005ba47f    d95c2418
                         fld                st(0)                                          // 0x005ba483    d9c0
                         fabs                                                              // 0x005ba485    d9e1
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005ba487    d9442418
                         fabs                                                              // 0x005ba48b    d9e1
                         fcompp                                                            // 0x005ba48d    ded9
                         fnstsw             ax                                             // 0x005ba48f    dfe0
                         test               ah, 0x01                                       // 0x005ba491    f6c401
                         {disp8} je         _jmp_addr_0x005ba4ae                           // 0x005ba494    7418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005ba496    d81d98a38a00
                         fnstsw             ax                                             // 0x005ba49c    dfe0
                         test               ah, 0x01                                       // 0x005ba49e    f6c401
                         {disp8} je         _jmp_addr_0x005ba4a7                           // 0x005ba4a1    7404
                         xor.s              edi, edi                                       // 0x005ba4a3    33ff
                         {disp8} jmp        _jmp_addr_0x005ba4cb                           // 0x005ba4a5    eb24
_jmp_addr_0x005ba4a7:    mov                edi, 0x00000001                                // 0x005ba4a7    bf01000000
                         {disp8} jmp        _jmp_addr_0x005ba4cb                           // 0x005ba4ac    eb1d
_jmp_addr_0x005ba4ae:    fstp               st(0)                                          // 0x005ba4ae    ddd8
                         mov                edi, 0x00000002                                // 0x005ba4b0    bf02000000
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005ba4b5    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005ba4b9    d81d98a38a00
                         fnstsw             ax                                             // 0x005ba4bf    dfe0
                         test               ah, 0x01                                       // 0x005ba4c1    f6c401
                         {disp8} jne        _jmp_addr_0x005ba4cb                           // 0x005ba4c4    7505
                         mov                edi, 0x00000003                                // 0x005ba4c6    bf03000000
_jmp_addr_0x005ba4cb:    {disp8} mov        ecx, dword ptr [esi + 0x24]                    // 0x005ba4cb    8b4e24
                         {disp32} mov       eax, dword ptr [ecx + edi * 0x4 + 0x00000080]  // 0x005ba4ce    8b84b980000000
                         test               eax, eax                                       // 0x005ba4d5    85c0
                         {disp32} je        _jmp_addr_0x005ba604                           // 0x005ba4d7    0f8427010000
                         {disp8} fld        dword ptr [eax + 0x10]                         // 0x005ba4dd    d94010
                         {disp8} mov        edx, dword ptr [eax + 0x14]                    // 0x005ba4e0    8b5014
                         {disp8} mov        eax, dword ptr [eax + 0x18]                    // 0x005ba4e3    8b4018
                         {disp8} fst        dword ptr [esp + 0x18]                         // 0x005ba4e6    d9542418
                         {disp8} mov        dword ptr [esp + 0x40], eax                    // 0x005ba4ea    89442440
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x005ba4ee    d9442440
                         {disp32} fmul      dword ptr [esi + 0x00003368]                   // 0x005ba4f2    d88e68330000
                         {disp8} mov        dword ptr [esp + 0x3c], edx                    // 0x005ba4f8    8954243c
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x005ba4fc    d944243c
                         mov.s              ecx, edx                                       // 0x005ba500    8bca
                         {disp32} fmul      dword ptr [esi + 0x0000335c]                   // 0x005ba502    d88e5c330000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x005ba508    894c2414
                         push               0x1                                            // 0x005ba50c    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x18]                    // 0x005ba50e    8d542418
                         faddp              st(1), st                                      // 0x005ba512    dec1
                         push               edx                                            // 0x005ba514    52
                         fxch               st(1)                                          // 0x005ba515    d9c9
                         {disp8} lea        eax, dword ptr [esp + 0x20]                    // 0x005ba517    8d442420
                         {disp32} fmul      dword ptr [esi + 0x00003350]                   // 0x005ba51b    d88e50330000
                         push               eax                                            // 0x005ba521    50
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                    // 0x005ba522    8d4c2444
                         push               ecx                                            // 0x005ba526    51
                         faddp              st(1), st                                      // 0x005ba527    dec1
                         mov.s              ecx, esi                                       // 0x005ba529    8bce
                         {disp8} fld        dword ptr [esp + 0x50]                         // 0x005ba52b    d9442450
                         {disp32} fmul      dword ptr [esi + 0x0000336c]                   // 0x005ba52f    d88e6c330000
                         {disp8} fld        dword ptr [esp + 0x4c]                         // 0x005ba535    d944244c
                         {disp32} fmul      dword ptr [esi + 0x00003360]                   // 0x005ba539    d88e60330000
                         faddp              st(1), st                                      // 0x005ba53f    dec1
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x005ba541    d9442428
                         {disp32} fmul      dword ptr [esi + 0x00003354]                   // 0x005ba545    d88e54330000
                         faddp              st(1), st                                      // 0x005ba54b    dec1
                         {disp8} fstp       dword ptr [esp + 0x4c]                         // 0x005ba54d    d95c244c
                         {disp8} fld        dword ptr [esp + 0x50]                         // 0x005ba551    d9442450
                         {disp32} fmul      dword ptr [esi + 0x00003370]                   // 0x005ba555    d88e70330000
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005ba55b    d9442424
                         {disp32} fmul      dword ptr [esi + 0x00003364]                   // 0x005ba55f    d88e64330000
                         faddp              st(1), st                                      // 0x005ba565    dec1
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x005ba567    d9442428
                         {disp32} fmul      dword ptr [esi + 0x00003358]                   // 0x005ba56b    d88e58330000
                         faddp              st(1), st                                      // 0x005ba571    dec1
                         {disp8} fstp       dword ptr [esp + 0x50]                         // 0x005ba573    d95c2450
                         {disp32} fadd      dword ptr [esi + 0x00003374]                   // 0x005ba577    d88674330000
                         {disp8} fstp       dword ptr [esp + 0x48]                         // 0x005ba57d    d95c2448
                         {disp8} fld        dword ptr [esp + 0x4c]                         // 0x005ba581    d944244c
                         {disp32} fadd      dword ptr [esi + 0x00003378]                   // 0x005ba585    d88678330000
                         {disp8} fstp       dword ptr [esp + 0x4c]                         // 0x005ba58b    d95c244c
                         {disp8} fld        dword ptr [esp + 0x50]                         // 0x005ba58f    d9442450
                         {disp32} fadd      dword ptr [esi + 0x0000337c]                   // 0x005ba593    d8867c330000
                         {disp8} fstp       dword ptr [esp + 0x50]                         // 0x005ba599    d95c2450
                         call               _jmp_addr_0x005bd390                           // 0x005ba59d    e8ee2d0000
                         test               eax, eax                                       // 0x005ba5a2    85c0
                         {disp8} je         _jmp_addr_0x005ba604                           // 0x005ba5a4    745e
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005ba5a6    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x005ba5aa    8b442418
                         push               edx                                            // 0x005ba5ae    52
                         push               eax                                            // 0x005ba5af    50
                         mov.s              ecx, esi                                       // 0x005ba5b0    8bce
                         call               _jmp_addr_0x005b9ad0                           // 0x005ba5b2    e819f5ffff
                         {disp8} fsub       dword ptr [esp + 0x10]                         // 0x005ba5b7    d8642410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x235c]               // 0x005ba5bb    d80d5cb38a00
                         {disp8} fadd       dword ptr [esp + 0x10]                         // 0x005ba5c1    d8442410
                         {disp8} fcom       dword ptr [esp + 0x10]                         // 0x005ba5c5    d8542410
                         fnstsw             ax                                             // 0x005ba5c9    dfe0
                         test               ah, 0x41                                       // 0x005ba5cb    f6c441
                         {disp8} jne        _jmp_addr_0x005ba602                           // 0x005ba5ce    7532
                         test               edi, edi                                       // 0x005ba5d0    85ff
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005ba5d2    d95c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x005ba5d6    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005ba5da    8b542414
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                    // 0x005ba5de    894c242c
                         {disp8} mov        dword ptr [esp + 0x30], edx                    // 0x005ba5e2    89542430
                         mov.s              ebx, edi                                       // 0x005ba5e6    8bdf
                         {disp8} jl         _jmp_addr_0x005ba604                           // 0x005ba5e8    7c1a
                         push               0xa                                            // 0x005ba5ea    6a0a
                         call               ?LocalRand@GRand@@SAIJ@Z                       // 0x005ba5ec    e87f3f1200
                         add                esp, 0x04                                      // 0x005ba5f1    83c404
                         cmp                eax, 0x05                                      // 0x005ba5f4    83f805
                         {disp32} jae       _jmp_addr_0x005ba6e7                           // 0x005ba5f7    0f83ea000000
                         or                 ebx, 0xffffffff                                // 0x005ba5fd    83cbff
                         {disp8} jmp        _jmp_addr_0x005ba604                           // 0x005ba600    eb02
_jmp_addr_0x005ba602:    fstp               st(0)                                          // 0x005ba602    ddd8
_jmp_addr_0x005ba604:    test               ebp, ebp                                       // 0x005ba604    85ed
                         {disp32} jle       _jmp_addr_0x005ba6e7                           // 0x005ba606    0f8edb000000
                         {disp8} fld        dword ptr [esp + 0x20]                         // 0x005ba60c    d9442420
                         fadd.s             st(0), st(0)                                   // 0x005ba610    dcc0
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005ba612    d95c2418
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x005ba616    8b7c2418
_jmp_addr_0x005ba61a:    push               edi                                            // 0x005ba61a    57
                         call               _jmp_addr_0x006de590                           // 0x005ba61b    e8703f1200
                         {disp8} fadd       dword ptr [esp + 0x28]                         // 0x005ba620    d8442428
                         push               edi                                            // 0x005ba624    57
                         {disp8} fsub       dword ptr [esp + 0x28]                         // 0x005ba625    d8642428
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005ba629    d95c241c
                         call               _jmp_addr_0x006de590                           // 0x005ba62d    e85e3f1200
                         {disp8} fadd       dword ptr [esp + 0x30]                         // 0x005ba632    d8442430
                         add                esp, 0x08                                      // 0x005ba636    83c408
                         {disp8} fsub       dword ptr [esp + 0x20]                         // 0x005ba639    d8642420
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005ba63d    d95c2418
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba641    d9442414
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]               // 0x005ba645    d81d78b68a00
                         fnstsw             ax                                             // 0x005ba64b    dfe0
                         test               ah, 0x01                                       // 0x005ba64d    f6c401
                         {disp8} je         _jmp_addr_0x005ba65c                           // 0x005ba650    740a
                         {disp8} mov        dword ptr [esp + 0x14], 0xbf800000             // 0x005ba652    c7442414000080bf
                         {disp8} jmp        _jmp_addr_0x005ba675                           // 0x005ba65a    eb19
_jmp_addr_0x005ba65c:    {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba65c    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005ba660    d81d90a38a00
                         fnstsw             ax                                             // 0x005ba666    dfe0
                         test               ah, 0x41                                       // 0x005ba668    f6c441
                         {disp8} jne        _jmp_addr_0x005ba675                           // 0x005ba66b    7508
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f800000             // 0x005ba66d    c74424140000803f
_jmp_addr_0x005ba675:    {disp8} fld        dword ptr [esp + 0x18]                         // 0x005ba675    d9442418
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57c44]              // 0x005ba679    d81d440c9000
                         fnstsw             ax                                             // 0x005ba67f    dfe0
                         test               ah, 0x01                                       // 0x005ba681    f6c401
                         {disp8} je         _jmp_addr_0x005ba690                           // 0x005ba684    740a
                         {disp8} mov        dword ptr [esp + 0x18], 0xbf400000             // 0x005ba686    c7442418000040bf
                         {disp8} jmp        _jmp_addr_0x005ba6a9                           // 0x005ba68e    eb19
_jmp_addr_0x005ba690:    {disp8} fld        dword ptr [esp + 0x18]                         // 0x005ba690    d9442418
                         {disp32} fcomp     dword ptr [__real@3f400000]                    // 0x005ba694    d81d74b28a00
                         fnstsw             ax                                             // 0x005ba69a    dfe0
                         test               ah, 0x41                                       // 0x005ba69c    f6c441
                         {disp8} jne        _jmp_addr_0x005ba6a9                           // 0x005ba69f    7508
                         {disp8} mov        dword ptr [esp + 0x18], 0x3f400000             // 0x005ba6a1    c74424180000403f
_jmp_addr_0x005ba6a9:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x005ba6a9    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005ba6ad    8b4c2414
                         push               eax                                            // 0x005ba6b1    50
                         push               ecx                                            // 0x005ba6b2    51
                         mov.s              ecx, esi                                       // 0x005ba6b3    8bce
                         call               _jmp_addr_0x005b9ad0                           // 0x005ba6b5    e816f4ffff
                         {disp8} fcom       dword ptr [esp + 0x1c]                         // 0x005ba6ba    d854241c
                         fnstsw             ax                                             // 0x005ba6be    dfe0
                         test               ah, 0x41                                       // 0x005ba6c0    f6c441
                         {disp8} jne        _jmp_addr_0x005ba6de                           // 0x005ba6c3    7519
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005ba6c5    8b542414
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005ba6c9    d95c241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x005ba6cd    8b442418
                         {disp8} mov        dword ptr [esp + 0x2c], edx                    // 0x005ba6d1    8954242c
                         {disp8} mov        dword ptr [esp + 0x30], eax                    // 0x005ba6d5    89442430
                         or                 ebx, 0xffffffff                                // 0x005ba6d9    83cbff
                         {disp8} jmp        _jmp_addr_0x005ba6e0                           // 0x005ba6dc    eb02
_jmp_addr_0x005ba6de:    fstp               st(0)                                          // 0x005ba6de    ddd8
_jmp_addr_0x005ba6e0:    dec                ebp                                            // 0x005ba6e0    4d
                         {disp32} jne       _jmp_addr_0x005ba61a                           // 0x005ba6e1    0f8533ffffff
_jmp_addr_0x005ba6e7:    {disp8} mov        eax, dword ptr [esp + 0x34]                    // 0x005ba6e7    8b442434
                         test               eax, eax                                       // 0x005ba6eb    85c0
                         pop                edi                                            // 0x005ba6ed    5f
                         pop                ebp                                            // 0x005ba6ee    5d
                         {disp8} jne        _jmp_addr_0x005ba730                           // 0x005ba6ef    753f
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba6f1    d9442414
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000             // 0x005ba6f5    c744242c00000000
                         {disp8} fcomp      dword ptr [esp + 0x08]                         // 0x005ba6fd    d85c2408
                         fnstsw             ax                                             // 0x005ba701    dfe0
                         test               ah, 0x41                                       // 0x005ba703    f6c441
                         {disp8} jne        _jmp_addr_0x005ba718                           // 0x005ba706    7510
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba708    d9442414
                         {disp8} fsub       dword ptr [esp + 0x08]                         // 0x005ba70c    d8642408
                         {disp8} fmul       dword ptr [esp + 0x40]                         // 0x005ba710    d84c2440
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x005ba714    d95c242c
_jmp_addr_0x005ba718:    push               0x3f800000                                     // 0x005ba718    680000803f
                         call               _jmp_addr_0x006de590                           // 0x005ba71d    e86e3e1200
                         {disp8} fcomp      dword ptr [esp + 0x30]                         // 0x005ba722    d85c2430
                         add                esp, 0x04                                      // 0x005ba726    83c404
                         fnstsw             ax                                             // 0x005ba729    dfe0
                         test               ah, 0x41                                       // 0x005ba72b    f6c441
                         {disp8} je         _jmp_addr_0x005ba773                           // 0x005ba72e    7443
_jmp_addr_0x005ba730:    test               ebx, ebx                                       // 0x005ba730    85db
                         {disp8} jl         _jmp_addr_0x005ba74d                           // 0x005ba732    7c19
                         push               0x0                                            // 0x005ba734    6a00
                         push               0x40                                           // 0x005ba736    6a40
                         mov.s              ecx, esi                                       // 0x005ba738    8bce
                         {disp32} mov       dword ptr [esi + 0x000035cc], ebx              // 0x005ba73a    899ecc350000
                         call               _jmp_addr_0x005bd4a0                           // 0x005ba740    e85b2d0000
                         pop                esi                                            // 0x005ba745    5e
                         pop                ebx                                            // 0x005ba746    5b
                         add                esp, 0x34                                      // 0x005ba747    83c434
                         ret                0x0004                                         // 0x005ba74a    c20400
_jmp_addr_0x005ba74d:    {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x005ba74d    8b4c2424
                         push               0x1                                            // 0x005ba751    6a01
                         push               0x3f800000                                     // 0x005ba753    680000803f
                         push               ecx                                            // 0x005ba758    51
                         mov.s              ecx, esi                                       // 0x005ba759    8bce
                         call               _jmp_addr_0x005b96d0                           // 0x005ba75b    e870efffff
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x005ba760    8b542428
                         push               0x1                                            // 0x005ba764    6a01
                         push               0x3f800000                                     // 0x005ba766    680000803f
                         push               edx                                            // 0x005ba76b    52
                         mov.s              ecx, esi                                       // 0x005ba76c    8bce
                         call               _jmp_addr_0x005b98d0                           // 0x005ba76e    e85df1ffff
_jmp_addr_0x005ba773:    pop                esi                                            // 0x005ba773    5e
                         pop                ebx                                            // 0x005ba774    5b
                         add                esp, 0x34                                      // 0x005ba775    83c434
                         ret                0x0004                                         // 0x005ba778    c20400
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                           // 0x005ba77b    e87970e4ff
_jmp_addr_0x005ba780:    sub                esp, 0x14                                      // 0x005ba780    83ec14
                         push               ebx                                            // 0x005ba783    53
                         push               ebp                                            // 0x005ba784    55
                         push               esi                                            // 0x005ba785    56
                         push               edi                                            // 0x005ba786    57
                         mov.s              edi, ecx                                       // 0x005ba787    8bf9
                         fld                dword ptr [edi]                                // 0x005ba789    d907
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005ba78b    d81d98a38a00
                         fnstsw             ax                                             // 0x005ba791    dfe0
                         test               ah, 0x40                                       // 0x005ba793    f6c440
                         {disp32} jne       _jmp_addr_0x005ba9ac                           // 0x005ba796    0f8510020000
                         fld                dword ptr [edi]                                // 0x005ba79c    d907
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005ba79e    d81d98a38a00
                         fnstsw             ax                                             // 0x005ba7a4    dfe0
                         test               ah, 0x41                                       // 0x005ba7a6    f6c441
                         {disp8} jne        _jmp_addr_0x005ba7bf                           // 0x005ba7a9    7514
                         mov                al, -0x01                                      // 0x005ba7ab    b0ff
                         {disp8} mov        byte ptr [esp + 0x10], al                      // 0x005ba7ad    88442410
                         {disp8} mov        byte ptr [esp + 0x11], al                      // 0x005ba7b1    88442411
                         {disp8} mov        byte ptr [esp + 0x12], al                      // 0x005ba7b5    88442412
                         {disp8} lea        esi, dword ptr [esp + 0x10]                    // 0x005ba7b9    8d742410
                         {disp8} jmp        _jmp_addr_0x005ba7d2                           // 0x005ba7bd    eb13
_jmp_addr_0x005ba7bf:    xor.s              al, al                                         // 0x005ba7bf    32c0
                         {disp8} mov        byte ptr [esp + 0x10], al                      // 0x005ba7c1    88442410
                         {disp8} mov        byte ptr [esp + 0x11], al                      // 0x005ba7c5    88442411
                         {disp8} mov        byte ptr [esp + 0x12], -0x01                   // 0x005ba7c9    c6442412ff
                         {disp8} lea        esi, dword ptr [esp + 0x10]                    // 0x005ba7ce    8d742410
_jmp_addr_0x005ba7d2:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]         // 0x005ba7d2    a15850e800
                         and                eax, 0x0000ffff                                // 0x005ba7d7    25ffff0000
                         xor.s              ecx, ecx                                       // 0x005ba7dc    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]           // 0x005ba7de    668b0d5a50e800
                         shr                eax, 1                                         // 0x005ba7e5    d1e8
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x005ba7e7    89442420
                         {disp8} fild       dword ptr [esp + 0x20]                         // 0x005ba7eb    db442420
                         {disp8} fst        dword ptr [esp + 0x14]                         // 0x005ba7ef    d9542414
                         {disp8} fmul       dword ptr [edi + 0x0c]                         // 0x005ba7f3    d84f0c
                         shr                ecx, 1                                         // 0x005ba7f6    d1e9
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x005ba7f8    894c241c
                         call               _jmp_addr_0x007a1400                           // 0x005ba7fc    e8ff6b1e00
                         {disp8} fild       dword ptr [esp + 0x1c]                         // 0x005ba801    db44241c
                         mov.s              ebx, eax                                       // 0x005ba805    8bd8
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x005ba807    d95c2420
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba80b    d9442414
                         {disp8} fmul       dword ptr [edi + 0x08]                         // 0x005ba80f    d84f08
                         {disp8} fadd       dword ptr [esp + 0x20]                         // 0x005ba812    d8442420
                         call               _jmp_addr_0x007a1400                           // 0x005ba816    e8e56b1e00
                         {disp8} fld        dword ptr [edi + 0x04]                         // 0x005ba81b    d94704
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x005ba81e    d80590a38a00
                         mov.s              ebp, eax                                       // 0x005ba824    8be8
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005ba826    d84c2414
                         call               _jmp_addr_0x007a1400                           // 0x005ba82a    e8d16b1e00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x005ba82f    8944241c
                         cmp                byte ptr [data_bytes + 0x4bf064], 0x10         // 0x005ba833    803d6450e80010
                         {disp8} jne        _jmp_addr_0x005ba8b4                           // 0x005ba83a    7578
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cb]           // 0x005ba83c    8a0dcb50e800
                         mov.s              edx, esi                                       // 0x005ba842    8bd6
                         mov                ax, word ptr [edx]                             // 0x005ba844    668b02
                         {disp8} mov        dl, byte ptr [edx + 0x02]                      // 0x005ba847    8a5202
                         shr                dl, cl                                         // 0x005ba84a    d2ea
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0ce]           // 0x005ba84c    8a0dce50e800
                         {disp8} mov        word ptr [esp + 0x18], ax                      // 0x005ba852    6689442418
                         xor.s              eax, eax                                       // 0x005ba857    33c0
                         {disp8} mov        al, byte ptr [esp + 0x19]                      // 0x005ba859    8a442419
                         movzx              dx, dl                                         // 0x005ba85d    660fb6d2
                         push               0x1                                            // 0x005ba861    6a01
                         shl                edx, cl                                        // 0x005ba863    d3e2
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cc]           // 0x005ba865    8a0dcc50e800
                         shr                al, cl                                         // 0x005ba86b    d2e8
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cf]           // 0x005ba86d    8a0dcf50e800
                         movzx              ax, al                                         // 0x005ba873    660fb6c0
                         shl                eax, cl                                        // 0x005ba877    d3e0
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cd]           // 0x005ba879    8a0dcd50e800
                         add.s              edx, eax                                       // 0x005ba87f    03d0
                         xor.s              eax, eax                                       // 0x005ba881    33c0
                         {disp8} mov        al, byte ptr [esp + 0x1c]                      // 0x005ba883    8a44241c
                         shr                al, cl                                         // 0x005ba887    d2e8
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0d0]           // 0x005ba889    8a0dd050e800
                         movzx              ax, al                                         // 0x005ba88f    660fb6c0
                         shl                eax, cl                                        // 0x005ba893    d3e0
                         add.s              edx, eax                                       // 0x005ba895    03d0
                         {disp8} mov        word ptr [esp + 0x1c], dx                      // 0x005ba897    668954241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005ba89c    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x005ba8a0    8b542420
                         push               ecx                                            // 0x005ba8a4    51
                         push               ebx                                            // 0x005ba8a5    53
                         push               ebp                                            // 0x005ba8a6    55
                         push               edx                                            // 0x005ba8a7    52
                         mov                ecx, 0x00e8586c                                // 0x005ba8a8    b96c58e800
                         call               _jmp_addr_0x007ea570                           // 0x005ba8ad    e8befc2200
                         {disp8} jmp        _jmp_addr_0x005ba8d8                           // 0x005ba8b2    eb24
_jmp_addr_0x005ba8b4:    push               0x1                                            // 0x005ba8b4    6a01
                         push               ecx                                            // 0x005ba8b6    51
                         mov.s              ecx, esp                                       // 0x005ba8b7    8bcc
                         mov.s              eax, esi                                       // 0x005ba8b9    8bc6
                         mov                dx, word ptr [eax]                             // 0x005ba8bb    668b10
                         {disp8} mov        al, byte ptr [eax + 0x02]                      // 0x005ba8be    8a4002
                         mov                word ptr [ecx], dx                             // 0x005ba8c1    668911
                         push               ebx                                            // 0x005ba8c4    53
                         {disp8} mov        byte ptr [ecx + 0x02], al                      // 0x005ba8c5    884102
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x005ba8c8    8b4c2428
                         push               ebp                                            // 0x005ba8cc    55
                         push               ecx                                            // 0x005ba8cd    51
                         mov                ecx, 0x00e8586c                                // 0x005ba8ce    b96c58e800
                         call               _jmp_addr_0x007ea810                           // 0x005ba8d3    e838ff2200
_jmp_addr_0x005ba8d8:    {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba8d8    d9442414
                         {disp8} fmul       dword ptr [edi + 0x10]                         // 0x005ba8dc    d84f10
                         call               _jmp_addr_0x007a1400                           // 0x005ba8df    e81c6b1e00
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005ba8e4    d9442414
                         {disp8} fmul       dword ptr [edi + 0x08]                         // 0x005ba8e8    d84f08
                         mov.s              ebp, eax                                       // 0x005ba8eb    8be8
                         {disp8} fadd       dword ptr [esp + 0x20]                         // 0x005ba8ed    d8442420
                         call               _jmp_addr_0x007a1400                           // 0x005ba8f1    e80a6b1e00
                         {disp8} fld        dword ptr [edi + 0x04]                         // 0x005ba8f6    d94704
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x005ba8f9    d80590a38a00
                         mov.s              ebx, eax                                       // 0x005ba8ff    8bd8
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005ba901    d84c2414
                         call               _jmp_addr_0x007a1400                           // 0x005ba905    e8f66a1e00
                         mov.s              edi, eax                                       // 0x005ba90a    8bf8
                         cmp                byte ptr [data_bytes + 0x4bf064], 0x10         // 0x005ba90c    803d6450e80010
                         {disp8} jne        _jmp_addr_0x005ba98e                           // 0x005ba913    7579
                         mov                dx, word ptr [esi]                             // 0x005ba915    668b16
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cb]           // 0x005ba918    8a0dcb50e800
                         {disp8} mov        word ptr [esp + 0x20], dx                      // 0x005ba91e    6689542420
                         {disp8} mov        dl, byte ptr [esi + 0x02]                      // 0x005ba923    8a5602
                         shr                dl, cl                                         // 0x005ba926    d2ea
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0ce]           // 0x005ba928    8a0dce50e800
                         xor.s              ax, ax                                         // 0x005ba92e    6633c0
                         push               0x1                                            // 0x005ba931    6a01
                         mov.s              al, dl                                         // 0x005ba933    8ac2
                         xor.s              edx, edx                                       // 0x005ba935    33d2
                         {disp8} mov        dl, byte ptr [esp + 0x25]                      // 0x005ba937    8a542425
                         shl                eax, cl                                        // 0x005ba93b    d3e0
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cc]           // 0x005ba93d    8a0dcc50e800
                         shr                dl, cl                                         // 0x005ba943    d2ea
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cf]           // 0x005ba945    8a0dcf50e800
                         movzx              dx, dl                                         // 0x005ba94b    660fb6d2
                         shl                edx, cl                                        // 0x005ba94f    d3e2
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cd]           // 0x005ba951    8a0dcd50e800
                         add.s              eax, edx                                       // 0x005ba957    03c2
                         xor.s              edx, edx                                       // 0x005ba959    33d2
                         {disp8} mov        dl, byte ptr [esp + 0x24]                      // 0x005ba95b    8a542424
                         shr                dl, cl                                         // 0x005ba95f    d2ea
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0d0]           // 0x005ba961    8a0dd050e800
                         movzx              dx, dl                                         // 0x005ba967    660fb6d2
                         shl                edx, cl                                        // 0x005ba96b    d3e2
                         mov                ecx, 0x00e8586c                                // 0x005ba96d    b96c58e800
                         add.s              eax, edx                                       // 0x005ba972    03c2
                         {disp8} mov        word ptr [esp + 0x24], ax                      // 0x005ba974    6689442424
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x005ba979    8b442424
                         push               eax                                            // 0x005ba97d    50
                         push               ebp                                            // 0x005ba97e    55
                         push               ebx                                            // 0x005ba97f    53
                         push               edi                                            // 0x005ba980    57
                         call               _jmp_addr_0x007ea570                           // 0x005ba981    e8eafb2200
                         pop                edi                                            // 0x005ba986    5f
                         pop                esi                                            // 0x005ba987    5e
                         pop                ebp                                            // 0x005ba988    5d
                         pop                ebx                                            // 0x005ba989    5b
                         add                esp, 0x14                                      // 0x005ba98a    83c414
                         ret                                                               // 0x005ba98d    c3
_jmp_addr_0x005ba98e:    mov                dx, word ptr [esi]                             // 0x005ba98e    668b16
                         {disp8} mov        al, byte ptr [esi + 0x02]                      // 0x005ba991    8a4602
                         push               0x1                                            // 0x005ba994    6a01
                         push               ecx                                            // 0x005ba996    51
                         mov.s              ecx, esp                                       // 0x005ba997    8bcc
                         push               ebp                                            // 0x005ba999    55
                         mov                word ptr [ecx], dx                             // 0x005ba99a    668911
                         push               ebx                                            // 0x005ba99d    53
                         {disp8} mov        byte ptr [ecx + 0x02], al                      // 0x005ba99e    884102
                         push               edi                                            // 0x005ba9a1    57
                         mov                ecx, 0x00e8586c                                // 0x005ba9a2    b96c58e800
                         call               _jmp_addr_0x007ea810                           // 0x005ba9a7    e864fe2200
_jmp_addr_0x005ba9ac:    pop                edi                                            // 0x005ba9ac    5f
                         pop                esi                                            // 0x005ba9ad    5e
                         pop                ebp                                            // 0x005ba9ae    5d
                         pop                ebx                                            // 0x005ba9af    5b
                         add                esp, 0x14                                      // 0x005ba9b0    83c414
                         ret                                                               // 0x005ba9b3    c3
                         nop                                                               // 0x005ba9b4    90
                         nop                                                               // 0x005ba9b5    90
                         nop                                                               // 0x005ba9b6    90
                         nop                                                               // 0x005ba9b7    90
                         nop                                                               // 0x005ba9b8    90
                         nop                                                               // 0x005ba9b9    90
                         nop                                                               // 0x005ba9ba    90
                         nop                                                               // 0x005ba9bb    90
                         nop                                                               // 0x005ba9bc    90
                         nop                                                               // 0x005ba9bd    90
                         nop                                                               // 0x005ba9be    90
                         nop                                                               // 0x005ba9bf    90
_jmp_addr_0x005ba9c0:    push               ebx                                            // 0x005ba9c0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x005ba9c1    8b5c2408
                         push               ebp                                            // 0x005ba9c5    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                    // 0x005ba9c6    8b6c240c
                         push               esi                                            // 0x005ba9ca    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x005ba9cb    8b742414
                         push               edi                                            // 0x005ba9cf    57
                         mov.s              edi, esi                                       // 0x005ba9d0    8bfe
                         sub.s              edi, ebx                                       // 0x005ba9d2    2bfb
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                    // 0x005ba9d4    8d4308
                         mov.s              ebx, ecx                                       // 0x005ba9d7    8bd9
                         sub.s              ebx, ebp                                       // 0x005ba9d9    2bdd
                         mov.s              ebp, esi                                       // 0x005ba9db    8bee
                         {disp8} lea        edx, dword ptr [ecx + 0x10]                    // 0x005ba9dd    8d5110
                         sub.s              ebp, ecx                                       // 0x005ba9e0    2be9
                         mov                ecx, 0x00000002                                // 0x005ba9e2    b902000000
_jmp_addr_0x005ba9e7:    fld                dword ptr [esi]                                // 0x005ba9e7    d906
                         add                esi, 0x04                                      // 0x005ba9e9    83c604
                         {disp8} fsub       dword ptr [eax + -0x08]                        // 0x005ba9ec    d860f8
                         add                eax, 0x04                                      // 0x005ba9ef    83c004
                         add                edx, 0x04                                      // 0x005ba9f2    83c204
                         dec                ecx                                            // 0x005ba9f5    49
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005ba9f6    d84c241c
                         {disp8} fadd       dword ptr [eax + -0x0c]                        // 0x005ba9fa    d840f4
                         {disp8} fstp       dword ptr [edx + -0x14]                        // 0x005ba9fd    d95aec
                         {disp8} fld        dword ptr [edi + eax * 0x1 + -0x04]            // 0x005baa00    d94407fc
                         {disp8} fsub       dword ptr [eax + -0x04]                        // 0x005baa04    d860fc
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baa07    d84c241c
                         {disp8} fadd       dword ptr [eax + -0x04]                        // 0x005baa0b    d840fc
                         {disp8} fstp       dword ptr [ebx + eax * 0x1 + -0x04]            // 0x005baa0e    d95c03fc
                         {disp8} fld        dword ptr [edx + ebp * 0x1 + -0x04]            // 0x005baa12    d9442afc
                         {disp8} fsub       dword ptr [eax + 0x04]                         // 0x005baa16    d86004
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baa19    d84c241c
                         {disp8} fadd       dword ptr [eax + 0x04]                         // 0x005baa1d    d84004
                         {disp8} fstp       dword ptr [edx + -0x04]                        // 0x005baa20    d95afc
                         {disp8} fld        dword ptr [esi + 0x14]                         // 0x005baa23    d94614
                         {disp8} fsub       dword ptr [eax + 0x0c]                         // 0x005baa26    d8600c
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baa29    d84c241c
                         {disp8} fadd       dword ptr [eax + 0x0c]                         // 0x005baa2d    d8400c
                         {disp8} fstp       dword ptr [edx + 0x04]                         // 0x005baa30    d95a04
                         {disp8} jne        _jmp_addr_0x005ba9e7                           // 0x005baa33    75b2
                         pop                edi                                            // 0x005baa35    5f
                         pop                esi                                            // 0x005baa36    5e
                         pop                ebp                                            // 0x005baa37    5d
                         pop                ebx                                            // 0x005baa38    5b
                         ret                0x000c                                         // 0x005baa39    c20c00
                         nop                                                               // 0x005baa3c    90
                         nop                                                               // 0x005baa3d    90
                         nop                                                               // 0x005baa3e    90
                         nop                                                               // 0x005baa3f    90
_jmp_addr_0x005baa40:    push               ebx                                            // 0x005baa40    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                    // 0x005baa41    8b5c240c
                         push               ebp                                            // 0x005baa45    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                    // 0x005baa46    8b6c2414
                         push               esi                                            // 0x005baa4a    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x005baa4b    8b742410
                         push               edi                                            // 0x005baa4f    57
                         push               ebp                                            // 0x005baa50    55
                         mov.s              edi, ecx                                       // 0x005baa51    8bf9
                         {disp8} lea        eax, dword ptr [ebx + 0x0c]                    // 0x005baa53    8d430c
                         push               eax                                            // 0x005baa56    50
                         {disp8} lea        ecx, dword ptr [esi + 0x0c]                    // 0x005baa57    8d4e0c
                         push               ecx                                            // 0x005baa5a    51
                         {disp8} lea        ecx, dword ptr [edi + 0x0c]                    // 0x005baa5b    8d4f0c
                         call               _jmp_addr_0x005ba9c0                           // 0x005baa5e    e85dffffff
                         push               ebp                                            // 0x005baa63    55
                         push               ebx                                            // 0x005baa64    53
                         push               esi                                            // 0x005baa65    56
                         mov.s              ecx, edi                                       // 0x005baa66    8bcf
                         call               _jmp_addr_0x005baad0                           // 0x005baa68    e863000000
                         {disp8} fld        dword ptr [ebx + 0x2c]                         // 0x005baa6d    d9432c
                         {disp8} fsub       dword ptr [esi + 0x2c]                         // 0x005baa70    d8662c
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baa73    d84c241c
                         {disp8} fadd       dword ptr [esi + 0x2c]                         // 0x005baa77    d8462c
                         {disp8} fstp       dword ptr [edi + 0x2c]                         // 0x005baa7a    d95f2c
                         {disp8} fld        dword ptr [ebx + 0x30]                         // 0x005baa7d    d94330
                         {disp8} fsub       dword ptr [esi + 0x30]                         // 0x005baa80    d86630
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baa83    d84c241c
                         {disp8} fadd       dword ptr [esi + 0x30]                         // 0x005baa87    d84630
                         {disp8} fstp       dword ptr [edi + 0x30]                         // 0x005baa8a    d95f30
                         {disp8} fld        dword ptr [ebx + 0x34]                         // 0x005baa8d    d94334
                         {disp8} fsub       dword ptr [esi + 0x34]                         // 0x005baa90    d86634
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baa93    d84c241c
                         {disp8} fadd       dword ptr [esi + 0x34]                         // 0x005baa97    d84634
                         {disp8} fstp       dword ptr [edi + 0x34]                         // 0x005baa9a    d95f34
                         {disp8} fld        dword ptr [ebx + 0x38]                         // 0x005baa9d    d94338
                         {disp8} fsub       dword ptr [esi + 0x38]                         // 0x005baaa0    d86638
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baaa3    d84c241c
                         {disp8} fadd       dword ptr [esi + 0x38]                         // 0x005baaa7    d84638
                         {disp8} fstp       dword ptr [edi + 0x38]                         // 0x005baaaa    d95f38
                         {disp8} fld        dword ptr [ebx + 0x3c]                         // 0x005baaad    d9433c
                         {disp8} fsub       dword ptr [esi + 0x3c]                         // 0x005baab0    d8663c
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x005baab3    d84c241c
                         {disp8} fadd       dword ptr [esi + 0x3c]                         // 0x005baab7    d8463c
                         {disp8} fstp       dword ptr [edi + 0x3c]                         // 0x005baaba    d95f3c
                         pop                edi                                            // 0x005baabd    5f
                         pop                esi                                            // 0x005baabe    5e
                         pop                ebp                                            // 0x005baabf    5d
                         pop                ebx                                            // 0x005baac0    5b
                         ret                0x000c                                         // 0x005baac1    c20c00
                         nop                                                               // 0x005baac4    90
                         nop                                                               // 0x005baac5    90
                         nop                                                               // 0x005baac6    90
                         nop                                                               // 0x005baac7    90
                         nop                                                               // 0x005baac8    90
                         nop                                                               // 0x005baac9    90
                         nop                                                               // 0x005baaca    90
                         nop                                                               // 0x005baacb    90
                         nop                                                               // 0x005baacc    90
                         nop                                                               // 0x005baacd    90
                         nop                                                               // 0x005baace    90
                         nop                                                               // 0x005baacf    90
_jmp_addr_0x005baad0:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005baad0    8b442404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x005baad4    8b542408
                         fld                dword ptr [edx]                                // 0x005baad8    d902
                         fsub               dword ptr [eax]                                // 0x005baada    d820
                         {disp8} fmul       dword ptr [esp + 0x0c]                         // 0x005baadc    d84c240c
                         fadd               dword ptr [eax]                                // 0x005baae0    d800
                         fstp               dword ptr [ecx]                                // 0x005baae2    d919
                         {disp8} fld        dword ptr [edx + 0x04]                         // 0x005baae4    d94204
                         {disp8} fsub       dword ptr [eax + 0x04]                         // 0x005baae7    d86004
                         {disp8} fmul       dword ptr [esp + 0x0c]                         // 0x005baaea    d84c240c
                         {disp8} fadd       dword ptr [eax + 0x04]                         // 0x005baaee    d84004
                         {disp8} fstp       dword ptr [ecx + 0x04]                         // 0x005baaf1    d95904
                         {disp8} fld        dword ptr [edx + 0x08]                         // 0x005baaf4    d94208
                         {disp8} fsub       dword ptr [eax + 0x08]                         // 0x005baaf7    d86008
                         {disp8} fmul       dword ptr [esp + 0x0c]                         // 0x005baafa    d84c240c
                         {disp8} fadd       dword ptr [eax + 0x08]                         // 0x005baafe    d84008
                         {disp8} fstp       dword ptr [ecx + 0x08]                         // 0x005bab01    d95908
                         ret                0x000c                                         // 0x005bab04    c20c00
                         nop                                                               // 0x005bab07    90
                         nop                                                               // 0x005bab08    90
                         nop                                                               // 0x005bab09    90
                         nop                                                               // 0x005bab0a    90
                         nop                                                               // 0x005bab0b    90
                         nop                                                               // 0x005bab0c    90
                         nop                                                               // 0x005bab0d    90
                         nop                                                               // 0x005bab0e    90
                         nop                                                               // 0x005bab0f    90
_jmp_addr_0x005bab10:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x005bab10    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x005bab14    8b4c2408
                         fld                st(0)                                          // 0x005bab18    d9c0
                         sub                esp, 0x10                                      // 0x005bab1a    83ec10
                         fcomp              dword ptr [ecx]                                // 0x005bab1d    d819
                         push               ebx                                            // 0x005bab1f    53
                         push               esi                                            // 0x005bab20    56
                         push               edi                                            // 0x005bab21    57
                         fnstsw             ax                                             // 0x005bab22    dfe0
                         test               ah, 0x41                                       // 0x005bab24    f6c441
                         {disp8} je         _jmp_addr_0x005bab58                           // 0x005bab27    742f
                         mov                eax, dword ptr [ecx]                           // 0x005bab29    8b01
                         {disp8} mov        esi, dword ptr [ecx + 0x08]                    // 0x005bab2b    8b7108
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x005bab2e    8b5104
                         {disp8} mov        ecx, dword ptr [ecx + 0x0c]                    // 0x005bab31    8b490c
                         {disp8} mov        dword ptr [esp + 0x0c], eax                    // 0x005bab34    8944240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x005bab38    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x005bab3c    8b442420
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                    // 0x005bab40    8b5c240c
                         mov.s              edi, eax                                       // 0x005bab44    8bf8
                         mov                dword ptr [edi], ebx                           // 0x005bab46    891f
                         {disp8} mov        dword ptr [edi + 0x04], edx                    // 0x005bab48    895704
                         {disp8} mov        dword ptr [edi + 0x08], esi                    // 0x005bab4b    897708
                         {disp8} mov        dword ptr [edi + 0x0c], ecx                    // 0x005bab4e    894f0c
                         pop                edi                                            // 0x005bab51    5f
                         pop                esi                                            // 0x005bab52    5e
                         pop                ebx                                            // 0x005bab53    5b
                         add                esp, 0x10                                      // 0x005bab54    83c410
                         ret                                                               // 0x005bab57    c3
_jmp_addr_0x005bab58:    {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x005bab58    8b542428
                         fld                st(0)                                          // 0x005bab5c    d9c0
                         fcomp              dword ptr [edx]                                // 0x005bab5e    d81a
                         fnstsw             ax                                             // 0x005bab60    dfe0
                         test               ah, 0x01                                       // 0x005bab62    f6c401
                         {disp8} jne        _jmp_addr_0x005bab96                           // 0x005bab65    752f
                         mov                ecx, dword ptr [edx]                           // 0x005bab67    8b0a
                         {disp8} mov        esi, dword ptr [edx + 0x08]                    // 0x005bab69    8b7208
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x005bab6c    8b442420
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x005bab70    894c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x005bab74    d95c240c
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                    // 0x005bab78    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x0c]                    // 0x005bab7b    8b520c
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                    // 0x005bab7e    8b5c240c
                         mov.s              edi, eax                                       // 0x005bab82    8bf8
                         mov                dword ptr [edi], ebx                           // 0x005bab84    891f
                         {disp8} mov        dword ptr [edi + 0x04], ecx                    // 0x005bab86    894f04
                         {disp8} mov        dword ptr [edi + 0x08], esi                    // 0x005bab89    897708
                         {disp8} mov        dword ptr [edi + 0x0c], edx                    // 0x005bab8c    89570c
                         pop                edi                                            // 0x005bab8f    5f
                         pop                esi                                            // 0x005bab90    5e
                         pop                ebx                                            // 0x005bab91    5b
                         add                esp, 0x10                                      // 0x005bab92    83c410
                         ret                                                               // 0x005bab95    c3
_jmp_addr_0x005bab96:    {disp8} fst        dword ptr [esp + 0x0c]                         // 0x005bab96    d954240c
                         {disp8} mov        edi, dword ptr [esp + 0x30]                    // 0x005bab9a    8b7c2430
                         fsub               dword ptr [ecx]                                // 0x005bab9e    d821
                         xor.s              esi, esi                                       // 0x005baba0    33f6
                         test               edi, edi                                       // 0x005baba2    85ff
                         fld                dword ptr [edx]                                // 0x005baba4    d902
                         fsub               dword ptr [ecx]                                // 0x005baba6    d821
                         {disp8} mov        dword ptr [esp + 0x18], esi                    // 0x005baba8    89742418
                         {disp8} mov        dword ptr [esp + 0x10], esi                    // 0x005babac    89742410
                         fdivp              st(1), st                                      // 0x005babb0    def9
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x005babb2    89742414
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x005babb6    d95c242c
                         {disp8} jle        _jmp_addr_0x005babe4                           // 0x005babba    7e28
                         sub.s              edx, ecx                                       // 0x005babbc    2bd1
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                    // 0x005babbe    8d74240c
                         {disp8} lea        eax, dword ptr [ecx + 0x04]                    // 0x005babc2    8d4104
                         sub.s              esi, ecx                                       // 0x005babc5    2bf1
                         mov.s              ecx, edi                                       // 0x005babc7    8bcf
_jmp_addr_0x005babc9:    fld                dword ptr [edx + eax * 0x1]                    // 0x005babc9    d90402
                         add                eax, 0x04                                      // 0x005babcc    83c004
                         dec                ecx                                            // 0x005babcf    49
                         {disp8} fsub       dword ptr [eax + -0x04]                        // 0x005babd0    d860fc
                         {disp8} fmul       dword ptr [esp + 0x2c]                         // 0x005babd3    d84c242c
                         {disp8} fadd       dword ptr [eax + -0x04]                        // 0x005babd7    d840fc
                         {disp8} fstp       dword ptr [esi + eax * 0x1 + -0x04]            // 0x005babda    d95c06fc
                         {disp8} jne        _jmp_addr_0x005babc9                           // 0x005babde    75e9
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x005babe0    8b742418
_jmp_addr_0x005babe4:    {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x005babe4    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x005babe8    8b4c240c
                         mov.s              edx, eax                                       // 0x005babec    8bd0
                         mov                dword ptr [edx], ecx                           // 0x005babee    890a
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005babf0    8b4c2410
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x005babf4    894a04
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005babf7    8b4c2414
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x005babfb    894a08
                         pop                edi                                            // 0x005babfe    5f
                         {disp8} mov        dword ptr [edx + 0x0c], esi                    // 0x005babff    89720c
                         pop                esi                                            // 0x005bac02    5e
                         pop                ebx                                            // 0x005bac03    5b
                         add                esp, 0x10                                      // 0x005bac04    83c410
                         ret                                                               // 0x005bac07    c3
                         nop                                                               // 0x005bac08    90
                         nop                                                               // 0x005bac09    90
                         nop                                                               // 0x005bac0a    90
                         nop                                                               // 0x005bac0b    90
                         nop                                                               // 0x005bac0c    90
                         nop                                                               // 0x005bac0d    90
                         nop                                                               // 0x005bac0e    90
                         nop                                                               // 0x005bac0f    90
_jmp_addr_0x005bac10:    push               ebx                                            // 0x005bac10    53
                         push               esi                                            // 0x005bac11    56
                         push               edi                                            // 0x005bac12    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x005bac13    8b7c2418
                         fld                dword ptr [edi]                                // 0x005bac17    d907
                         mov.s              esi, ecx                                       // 0x005bac19    8bf1
                         {disp8} fadd       dword ptr [esp + 0x1c]                         // 0x005bac1b    d844241c
                         {disp8} fcom       dword ptr [esi + 0x08]                         // 0x005bac1f    d85608
                         fnstsw             ax                                             // 0x005bac22    dfe0
                         test               ah, 0x41                                       // 0x005bac24    f6c441
                         {disp8} jne        _jmp_addr_0x005bac5b                           // 0x005bac27    7532
                         fstp               st(0)                                          // 0x005bac29    ddd8
                         push               ecx                                            // 0x005bac2b    51
                         {disp8} fld        dword ptr [esi + 0x04]                         // 0x005bac2c    d94604
                         fsub               dword ptr [esi]                                // 0x005bac2f    d826
                         fstp               dword ptr [esp]                                // 0x005bac31    d91c24
                         call               _jmp_addr_0x006de590                           // 0x005bac34    e857391200
                         fadd               dword ptr [esi]                                // 0x005bac39    d806
                         push               0x5                                            // 0x005bac3b    6a05
                         fchs                                                              // 0x005bac3d    d9e0
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x005bac3f    d95c2420
                         call               ?LocalRand@GRand@@SAIJ@Z                       // 0x005bac43    e828391200
                         add                esp, 0x08                                      // 0x005bac48    83c408
                         test               eax, eax                                       // 0x005bac4b    85c0
                         {disp8} jne        _jmp_addr_0x005bac57                           // 0x005bac4d    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x25fc4]              // 0x005bac4f    d905c4ef8c00
                         {disp8} jmp        _jmp_addr_0x005bac5b                           // 0x005bac55    eb04
_jmp_addr_0x005bac57:    {disp8} fld        dword ptr [esp + 0x18]                         // 0x005bac57    d9442418
_jmp_addr_0x005bac5b:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005bac5b    d90598a38a00
                         fld                st(1)                                          // 0x005bac61    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005bac63    d81d98a38a00
                         fnstsw             ax                                             // 0x005bac69    dfe0
                         test               ah, 0x41                                       // 0x005bac6b    f6c441
                         {disp8} jne        _jmp_addr_0x005baca7                           // 0x005bac6e    7537
                         fstp               st(0)                                          // 0x005bac70    ddd8
                         fld                st(0)                                          // 0x005bac72    d9c0
                         fadd.s             st(0), st(0)                                   // 0x005bac74    dcc0
                         {disp8} fdiv       dword ptr [esi + 0x08]                         // 0x005bac76    d87608
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x005bac79    d81590a38a00
                         fnstsw             ax                                             // 0x005bac7f    dfe0
                         test               ah, 0x41                                       // 0x005bac81    f6c441
                         {disp8} jne        _jmp_addr_0x005bac8c                           // 0x005bac84    7506
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x2478]               // 0x005bac86    d82d78b48a00
_jmp_addr_0x005bac8c:    {disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]              // 0x005bac8c    d80d986c8c00
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x005bac92    d81590a38a00
                         fnstsw             ax                                             // 0x005bac98    dfe0
                         test               ah, 0x41                                       // 0x005bac9a    f6c441
                         {disp8} jne        _jmp_addr_0x005baca7                           // 0x005bac9d    7508
                         fstp               st(0)                                          // 0x005bac9f    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005baca1    d90590a38a00
_jmp_addr_0x005baca7:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005baca7    8b542410
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x005bacab    8b742414
                         {disp8} lea        ecx, dword ptr [edx + 0x10]                    // 0x005bacaf    8d4a10
                         {disp8} lea        eax, dword ptr [esi + 0x18]                    // 0x005bacb2    8d4618
                         sub.s              edx, esi                                       // 0x005bacb5    2bd6
                         mov                esi, 0x00000002                                // 0x005bacb7    be02000000
_jmp_addr_0x005bacbc:    {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005bacbc    d90590a38a00
                         add                eax, 0x04                                      // 0x005bacc2    83c004
                         {disp8} fsub       dword ptr [eax + -0x04]                        // 0x005bacc5    d860fc
                         add                ecx, 0x4                                       // 0x005bacc8    83c104
                         dec                esi                                            // 0x005baccb    4e
                         fmul               st, st(1)                                      // 0x005baccc    d8c9
                         {disp8} fadd       dword ptr [eax + -0x04]                        // 0x005bacce    d840fc
                         {disp8} fstp       dword ptr [edx + eax * 0x1 + -0x04]            // 0x005bacd1    d95c02fc
                         {disp8} mov        ebx, dword ptr [eax + -0x1c]                   // 0x005bacd5    8b58e4
                         {disp8} mov        dword ptr [ecx + -0x14], ebx                   // 0x005bacd8    8959ec
                         {disp8} mov        ebx, dword ptr [eax + -0x14]                   // 0x005bacdb    8b58ec
                         {disp8} mov        dword ptr [ecx + -0x0c], ebx                   // 0x005bacde    8959f4
                         {disp8} mov        ebx, dword ptr [eax + -0x0c]                   // 0x005bace1    8b58f4
                         {disp8} mov        dword ptr [ecx + -0x04], ebx                   // 0x005bace4    8959fc
                         {disp8} jne        _jmp_addr_0x005bacbc                           // 0x005bace7    75d3
                         fstp               st(0)                                          // 0x005bace9    ddd8
                         fstp               dword ptr [edi]                                // 0x005baceb    d91f
                         pop                edi                                            // 0x005baced    5f
                         pop                esi                                            // 0x005bacee    5e
                         pop                ebx                                            // 0x005bacef    5b
                         ret                0x0010                                         // 0x005bacf0    c21000
                         nop                                                               // 0x005bacf3    90
                         nop                                                               // 0x005bacf4    90
                         nop                                                               // 0x005bacf5    90
                         nop                                                               // 0x005bacf6    90
                         nop                                                               // 0x005bacf7    90
                         nop                                                               // 0x005bacf8    90
                         nop                                                               // 0x005bacf9    90
                         nop                                                               // 0x005bacfa    90
                         nop                                                               // 0x005bacfb    90
                         nop                                                               // 0x005bacfc    90
                         nop                                                               // 0x005bacfd    90
                         nop                                                               // 0x005bacfe    90
                         nop                                                               // 0x005bacff    90
_globl_ct_0x005bad00:    {disp32} jmp       _jmp_addr_0x005bad10                           // 0x005bad00    e90b000000
                         nop                                                               // 0x005bad05    90
                         nop                                                               // 0x005bad06    90
                         nop                                                               // 0x005bad07    90
                         nop                                                               // 0x005bad08    90
                         nop                                                               // 0x005bad09    90
                         nop                                                               // 0x005bad0a    90
                         nop                                                               // 0x005bad0b    90
                         nop                                                               // 0x005bad0c    90
                         nop                                                               // 0x005bad0d    90
                         nop                                                               // 0x005bad0e    90
                         nop                                                               // 0x005bad0f    90
_jmp_addr_0x005bad10:    {disp32} mov       eax, dword ptr [data_bytes + 0x22a27c]         // 0x005bad10    a17c02bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x22a280]         // 0x005bad15    8b0d8002bf00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x22a284]         // 0x005bad1b    8b158402bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2c4], eax         // 0x005bad21    a3c402bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22a288]         // 0x005bad26    a18802bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2c8], ecx         // 0x005bad2b    890dc802bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x22a28c]         // 0x005bad31    8b0d8c02bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2cc], edx         // 0x005bad37    8915cc02bf00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x22a290]         // 0x005bad3d    8b159002bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2d0], eax         // 0x005bad43    a3d002bf00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22a294]         // 0x005bad48    a19402bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2d4], ecx         // 0x005bad4d    890dd402bf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x22a298]         // 0x005bad53    8b0d9802bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2d8], edx         // 0x005bad59    8915d802bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2dc], eax         // 0x005bad5f    a3dc02bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2e0], ecx         // 0x005bad64    890de002bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2e4], 0x00bf0728  // 0x005bad6a    c705e402bf002807bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2e8], 0x00bf071c  // 0x005bad74    c705e802bf001c07bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2ec], 0x00bf0714  // 0x005bad7e    c705ec02bf001407bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2f0], 0x00bf0708  // 0x005bad88    c705f002bf000807bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2f4], 0x00bf06fc  // 0x005bad92    c705f402bf00fc06bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2f8], 0x00bf06f0  // 0x005bad9c    c705f802bf00f006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a2fc], 0x00bf06e8  // 0x005bada6    c705fc02bf00e806bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a300], 0x00bf06dc  // 0x005badb0    c7050003bf00dc06bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a304], 0x00bf06d4  // 0x005badba    c7050403bf00d406bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a308], 0x00bf06c8  // 0x005badc4    c7050803bf00c806bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a30c], 0x00bf06c0  // 0x005badce    c7050c03bf00c006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a310], 0x00bf06b4  // 0x005badd8    c7051003bf00b406bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a314], 0x00bf06ac  // 0x005bade2    c7051403bf00ac06bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a318], 0x00bf06a0  // 0x005badec    c7051803bf00a006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a31c], 0x00bf0698  // 0x005badf6    c7051c03bf009806bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a320], 0x00bf0690  // 0x005bae00    c7052003bf009006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a324], 0x00bf0688  // 0x005bae0a    c7052403bf008806bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a328], 0x00bf0680  // 0x005bae14    c7052803bf008006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a32c], 0x00bf0674  // 0x005bae1e    c7052c03bf007406bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a330], 0x00bf066c  // 0x005bae28    c7053003bf006c06bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a334], 0x00bf0660  // 0x005bae32    c7053403bf006006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a338], 0x00bf0654  // 0x005bae3c    c7053803bf005406bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a33c], 0x00bf0648  // 0x005bae46    c7053c03bf004806bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a340], 0x00bf063c  // 0x005bae50    c7054003bf003c06bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a344], 0x009d8a3c  // 0x005bae5a    c7054403bf003c8a9d00
                         {disp32} mov       dword ptr [data_bytes + 0x22a348], 0x00bf0630  // 0x005bae64    c7054803bf003006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a34c], 0x00bf0628  // 0x005bae6e    c7054c03bf002806bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a350], 0x00bf0624  // 0x005bae78    c7055003bf002406bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a354], 0x00bf0618  // 0x005bae82    c7055403bf001806bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a358], 0x009ce0f0  // 0x005bae8c    c7055803bf00f0e09c00
                         {disp32} mov       dword ptr [data_bytes + 0x22a35c], 0x00bf060c  // 0x005bae96    c7055c03bf000c06bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a360], 0x00bf0600  // 0x005baea0    c7056003bf000006bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a364], 0x00bf05f4  // 0x005baeaa    c7056403bf00f405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a368], 0x00bf05ec  // 0x005baeb4    c7056803bf00ec05bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a36c], 0x00bf05e0  // 0x005baebe    c7056c03bf00e005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a370], 0x00bf05d8  // 0x005baec8    c7057003bf00d805bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a374], 0x00bf05d0  // 0x005baed2    c7057403bf00d005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a378], 0x00bf05c8  // 0x005baedc    c7057803bf00c805bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a37c], 0x00bf05c0  // 0x005baee6    c7057c03bf00c005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a380], 0x00bf05b4  // 0x005baef0    c7058003bf00b405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a384], 0x00bf05a8  // 0x005baefa    c7058403bf00a805bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a388], 0x00bf05a0  // 0x005baf04    c7058803bf00a005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a38c], 0x00bf0598  // 0x005baf0e    c7058c03bf009805bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a390], 0x00bf0590  // 0x005baf18    c7059003bf009005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a394], 0x009d89a0  // 0x005baf22    c7059403bf00a0899d00
                         {disp32} mov       dword ptr [data_bytes + 0x22a398], 0x00bf0588  // 0x005baf2c    c7059803bf008805bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a39c], 0x00bf0580  // 0x005baf36    c7059c03bf008005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3a0], 0x00bf0578  // 0x005baf40    c705a003bf007805bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3a4], 0x00bf0570  // 0x005baf4a    c705a403bf007005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3a8], 0x00bf0568  // 0x005baf54    c705a803bf006805bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3ac], 0x00bf0560  // 0x005baf5e    c705ac03bf006005bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3b0], 0x00bf0554  // 0x005baf68    c705b003bf005405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3b4], 0x00bf0544  // 0x005baf72    c705b403bf004405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3b8], 0x00bf0534  // 0x005baf7c    c705b803bf003405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3bc], 0x00bf052c  // 0x005baf86    c705bc03bf002c05bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3c0], 0x00bf0524  // 0x005baf90    c705c003bf002405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3c4], 0x00bf051c  // 0x005baf9a    c705c403bf001c05bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3c8], 0x00bf0514  // 0x005bafa4    c705c803bf001405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3cc], 0x00bf050c  // 0x005bafae    c705cc03bf000c05bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3d0], 0x00bf0504  // 0x005bafb8    c705d003bf000405bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3d4], 0x00bf04fc  // 0x005bafc2    c705d403bf00fc04bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22a3d8], 0x00bf04f0  // 0x005bafcc    c705d803bf00f004bf00
                         ret                                                               // 0x005bafd6    c3
                         nop                                                               // 0x005bafd7    90
                         nop                                                               // 0x005bafd8    90
                         nop                                                               // 0x005bafd9    90
                         nop                                                               // 0x005bafda    90
                         nop                                                               // 0x005bafdb    90
                         nop                                                               // 0x005bafdc    90
                         nop                                                               // 0x005bafdd    90
                         nop                                                               // 0x005bafde    90
                         nop                                                               // 0x005bafdf    90
_globl_ct_0x005bafe0:    {disp32} jmp       _jmp_addr_0x005baff0                           // 0x005bafe0    e90b000000
                         nop                                                               // 0x005bafe5    90
                         nop                                                               // 0x005bafe6    90
                         nop                                                               // 0x005bafe7    90
                         nop                                                               // 0x005bafe8    90
                         nop                                                               // 0x005bafe9    90
                         nop                                                               // 0x005bafea    90
                         nop                                                               // 0x005bafeb    90
                         nop                                                               // 0x005bafec    90
                         nop                                                               // 0x005bafed    90
                         nop                                                               // 0x005bafee    90
                         nop                                                               // 0x005bafef    90
_jmp_addr_0x005baff0:    mov                al, -0x38                                      // 0x005baff0    b0c8
                         mov                cl, -0x6a                                      // 0x005baff2    b196
                         {disp32} mov       byte ptr [data_bytes + 0x34e070], al           // 0x005baff4    a27040d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e071], al           // 0x005baff9    a27140d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e072], al           // 0x005baffe    a27240d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e073], cl           // 0x005bb003    880d7340d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e074], cl           // 0x005bb009    880d7440d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e075], al           // 0x005bb00f    a27540d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e076], cl           // 0x005bb014    880d7640d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e077], al           // 0x005bb01a    a27740d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e078], cl           // 0x005bb01f    880d7840d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e079], al           // 0x005bb025    a27940d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e07a], cl           // 0x005bb02a    880d7a40d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e07b], cl           // 0x005bb030    880d7b40d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e07c], cl           // 0x005bb036    880d7c40d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e07d], al           // 0x005bb03c    a27d40d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e07e], al           // 0x005bb041    a27e40d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e07f], al           // 0x005bb046    a27f40d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e080], al           // 0x005bb04b    a28040d100
                         {disp32} mov       byte ptr [data_bytes + 0x34e081], cl           // 0x005bb050    880d8140d100
                         ret                                                               // 0x005bb056    c3
                         nop                                                               // 0x005bb057    90
                         nop                                                               // 0x005bb058    90
                         nop                                                               // 0x005bb059    90
                         nop                                                               // 0x005bb05a    90
                         nop                                                               // 0x005bb05b    90
                         nop                                                               // 0x005bb05c    90
                         nop                                                               // 0x005bb05d    90
                         nop                                                               // 0x005bb05e    90
                         nop                                                               // 0x005bb05f    90
_jmp_addr_0x005bb060:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005bb060    8b442408
                         push               ebx                                            // 0x005bb064    53
                         push               edi                                            // 0x005bb065    57
                         xor.s              ebx, ebx                                       // 0x005bb066    33db
                         cmp.s              eax, ebx                                       // 0x005bb068    3bc3
                         mov.s              edi, ecx                                       // 0x005bb06a    8bf9
                         {disp32} mov       dword ptr [edi + 0x00002efc], eax              // 0x005bb06c    8987fc2e0000
                         {disp32} je        _jmp_addr_0x005bb133                           // 0x005bb072    0f84bb000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00002f04]              // 0x005bb078    8b8f042f0000
                         cmp.s              ecx, ebx                                       // 0x005bb07e    3bcb
                         push               esi                                            // 0x005bb080    56
                         {disp8} je         _jmp_addr_0x005bb0b4                           // 0x005bb081    7431
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                   // 0x005bb083    8b41fc
                         push               ebp                                            // 0x005bb086    55
                         {disp8} lea        ebp, dword ptr [ecx + -0x04]                   // 0x005bb087    8d69fc
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x005bb08a    8d1440
                         dec                eax                                            // 0x005bb08d    48
                         lea                esi, dword ptr [ecx + edx * 0x4]               // 0x005bb08e    8d3491
                         {disp8} js         _jmp_addr_0x005bb0aa                           // 0x005bb091    7817
                         {disp8} lea        ebx, dword ptr [eax + 0x01]                    // 0x005bb093    8d5801
_jmp_addr_0x005bb096:    {disp8} mov        eax, dword ptr [esi + -0x0c]                   // 0x005bb096    8b46f4
                         sub                esi, 0x0c                                      // 0x005bb099    83ee0c
                         push               eax                                            // 0x005bb09c    50
                         call               ??3@YAXPAX@Z                                   // 0x005bb09d    e8f63d1f00
                         add                esp, 0x04                                      // 0x005bb0a2    83c404
                         dec                ebx                                            // 0x005bb0a5    4b
                         {disp8} jne        _jmp_addr_0x005bb096                           // 0x005bb0a6    75ee
                         xor.s              ebx, ebx                                       // 0x005bb0a8    33db
_jmp_addr_0x005bb0aa:    push               ebp                                            // 0x005bb0aa    55
                         call               ??3@YAXPAX@Z                                   // 0x005bb0ab    e8e83d1f00
                         add                esp, 0x04                                      // 0x005bb0b0    83c404
                         pop                ebp                                            // 0x005bb0b3    5d
_jmp_addr_0x005bb0b4:    {disp32} mov       ecx, dword ptr [edi + 0x00002efc]              // 0x005bb0b4    8b8ffc2e0000
                         push               ecx                                            // 0x005bb0ba    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00002ef8]              // 0x005bb0bb    8b8ff82e0000
                         call               dword ptr [rdata_bytes + 0x6cc]                // 0x005bb0c1    ff15cc968a00
                         mov.s              esi, eax                                       // 0x005bb0c7    8bf0
                         push               0x000002bd                                     // 0x005bb0c9    68bd020000
                         lea                edx, dword ptr [esi + esi * 0x2]               // 0x005bb0ce    8d1476
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00000004]        // 0x005bb0d1    8d049504000000
                         push               0x00bf04d0                                     // 0x005bb0d8    68d004bf00
                         push               eax                                            // 0x005bb0dd    50
                         {disp32} mov       dword ptr [edi + 0x00002f00], esi              // 0x005bb0de    89b7002f0000
                         call               ___nw__FUl                                     // 0x005bb0e4    e8a7062200
                         add                esp, 0x0c                                      // 0x005bb0e9    83c40c
                         cmp.s              eax, ebx                                       // 0x005bb0ec    3bc3
                         {disp8} je         _jmp_addr_0x005bb11f                           // 0x005bb0ee    742f
                         {disp8} lea        ecx, dword ptr [esi + -0x01]                   // 0x005bb0f0    8d4eff
                         cmp.s              ecx, ebx                                       // 0x005bb0f3    3bcb
                         {disp8} lea        edx, dword ptr [eax + 0x04]                    // 0x005bb0f5    8d5004
                         mov                dword ptr [eax], esi                           // 0x005bb0f8    8930
                         mov.s              eax, edx                                       // 0x005bb0fa    8bc2
                         {disp8} jl         _jmp_addr_0x005bb121                           // 0x005bb0fc    7c23
                         inc                ecx                                            // 0x005bb0fe    41
_jmp_addr_0x005bb0ff:    {disp8} mov        dword ptr [eax + 0x04], ebx                    // 0x005bb0ff    895804
                         mov                dword ptr [eax], ebx                           // 0x005bb102    8918
                         {disp8} mov        dword ptr [eax + 0x08], ebx                    // 0x005bb104    895808
                         add                eax, 0x0c                                      // 0x005bb107    83c00c
                         dec                ecx                                            // 0x005bb10a    49
                         {disp8} jne        _jmp_addr_0x005bb0ff                           // 0x005bb10b    75f2
                         {disp32} mov       eax, dword ptr [edi + 0x00002efc]              // 0x005bb10d    8b87fc2e0000
                         pop                esi                                            // 0x005bb113    5e
                         {disp32} mov       dword ptr [edi + 0x00002f04], edx              // 0x005bb114    8997042f0000
                         pop                edi                                            // 0x005bb11a    5f
                         pop                ebx                                            // 0x005bb11b    5b
                         ret                0x0008                                         // 0x005bb11c    c20800
_jmp_addr_0x005bb11f:    xor.s              edx, edx                                       // 0x005bb11f    33d2
_jmp_addr_0x005bb121:    {disp32} mov       eax, dword ptr [edi + 0x00002efc]              // 0x005bb121    8b87fc2e0000
                         pop                esi                                            // 0x005bb127    5e
                         {disp32} mov       dword ptr [edi + 0x00002f04], edx              // 0x005bb128    8997042f0000
                         pop                edi                                            // 0x005bb12e    5f
                         pop                ebx                                            // 0x005bb12f    5b
                         ret                0x0008                                         // 0x005bb130    c20800
_jmp_addr_0x005bb133:    {disp32} mov       eax, dword ptr [edi + 0x00002efc]              // 0x005bb133    8b87fc2e0000
                         pop                edi                                            // 0x005bb139    5f
                         pop                ebx                                            // 0x005bb13a    5b
                         ret                0x0008                                         // 0x005bb13b    c20800
                         nop                                                               // 0x005bb13e    90
                         nop                                                               // 0x005bb13f    90
                         push               ebx                                            // 0x005bb140    53
                         {disp8} mov        bl, byte ptr [esp + 0x08]                      // 0x005bb141    8a5c2408
                         test               bl, 0x02                                       // 0x005bb145    f6c302
                         push               esi                                            // 0x005bb148    56
                         mov.s              esi, ecx                                       // 0x005bb149    8bf1
                         {disp8} je         _jmp_addr_0x005bb18a                           // 0x005bb14b    743d
                         {disp8} mov        eax, dword ptr [esi + -0x04]                   // 0x005bb14d    8b46fc
                         push               ebp                                            // 0x005bb150    55
                         {disp8} lea        ebp, dword ptr [esi + -0x04]                   // 0x005bb151    8d6efc
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x005bb154    8d0c40
                         dec                eax                                            // 0x005bb157    48
                         lea                esi, dword ptr [esi + ecx * 0x4]               // 0x005bb158    8d348e
                         {disp8} js         _jmp_addr_0x005bb174                           // 0x005bb15b    7817
                         push               edi                                            // 0x005bb15d    57
                         {disp8} lea        edi, dword ptr [eax + 0x01]                    // 0x005bb15e    8d7801
_jmp_addr_0x005bb161:    {disp8} mov        edx, dword ptr [esi + -0x0c]                   // 0x005bb161    8b56f4
                         sub                esi, 0x0c                                      // 0x005bb164    83ee0c
                         push               edx                                            // 0x005bb167    52
                         call               ??3@YAXPAX@Z                                   // 0x005bb168    e82b3d1f00
                         add                esp, 0x04                                      // 0x005bb16d    83c404
                         dec                edi                                            // 0x005bb170    4f
                         {disp8} jne        _jmp_addr_0x005bb161                           // 0x005bb171    75ee
                         pop                edi                                            // 0x005bb173    5f
_jmp_addr_0x005bb174:    test               bl, 0x01                                       // 0x005bb174    f6c301
                         {disp8} je         _jmp_addr_0x005bb182                           // 0x005bb177    7409
                         push               ebp                                            // 0x005bb179    55
                         call               ??3@YAXPAX@Z                                   // 0x005bb17a    e8193d1f00
                         add                esp, 0x04                                      // 0x005bb17f    83c404
_jmp_addr_0x005bb182:    mov.s              eax, ebp                                       // 0x005bb182    8bc5
                         pop                ebp                                            // 0x005bb184    5d
                         pop                esi                                            // 0x005bb185    5e
                         pop                ebx                                            // 0x005bb186    5b
                         ret                0x0004                                         // 0x005bb187    c20400
_jmp_addr_0x005bb18a:    mov                eax, dword ptr [esi]                           // 0x005bb18a    8b06
                         push               eax                                            // 0x005bb18c    50
                         call               ??3@YAXPAX@Z                                   // 0x005bb18d    e8063d1f00
                         add                esp, 0x04                                      // 0x005bb192    83c404
                         test               bl, 0x01                                       // 0x005bb195    f6c301
                         {disp8} je         _jmp_addr_0x005bb1a3                           // 0x005bb198    7409
                         push               esi                                            // 0x005bb19a    56
                         call               ??3@YAXPAX@Z                                   // 0x005bb19b    e8f83c1f00
                         add                esp, 0x04                                      // 0x005bb1a0    83c404
_jmp_addr_0x005bb1a3:    mov.s              eax, esi                                       // 0x005bb1a3    8bc6
                         pop                esi                                            // 0x005bb1a5    5e
                         pop                ebx                                            // 0x005bb1a6    5b
                         ret                0x0004                                         // 0x005bb1a7    c20400
                         call               dword ptr [__imp__DirectXSetupGetVersion]      // 0x005bb1aa    ff153c908a00
_jmp_addr_0x005bb1b0:    push               ebx                                            // 0x005bb1b0    53
                         push               edi                                            // 0x005bb1b1    57
                         mov.s              edi, ecx                                       // 0x005bb1b2    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00002efc]              // 0x005bb1b4    8b87fc2e0000
                         xor.s              ebx, ebx                                       // 0x005bb1ba    33db
                         cmp.s              eax, ebx                                       // 0x005bb1bc    3bc3
                         {disp8} je         _jmp_addr_0x005bb1c5                           // 0x005bb1be    7405
                         call               _jmp_addr_0x005bb2c0                           // 0x005bb1c0    e8fb000000
_jmp_addr_0x005bb1c5:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x005bb1c5    8b4c240c
                         cmp.s              ecx, ebx                                       // 0x005bb1c9    3bcb
                         {disp32} mov       dword ptr [edi + 0x00002ef8], ecx              // 0x005bb1cb    898ff82e0000
                         {disp8} jne        _jmp_addr_0x005bb1da                           // 0x005bb1d1    7507
                         pop                edi                                            // 0x005bb1d3    5f
                         xor.s              eax, eax                                       // 0x005bb1d4    33c0
                         pop                ebx                                            // 0x005bb1d6    5b
                         ret                0x0008                                         // 0x005bb1d7    c20800
_jmp_addr_0x005bb1da:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x005bb1da    8b442410
                         push               ebx                                            // 0x005bb1de    53
                         push               eax                                            // 0x005bb1df    50
                         {disp32} mov       dword ptr [edi + 0x00002f0c], ebx              // 0x005bb1e0    899f0c2f0000
                         call               dword ptr [rdata_bytes + 0x700]                // 0x005bb1e6    ff1500978a00
                         cmp.s              eax, ebx                                       // 0x005bb1ec    3bc3
                         {disp32} mov       dword ptr [edi + 0x00002efc], eax              // 0x005bb1ee    8987fc2e0000
                         {disp32} je        _jmp_addr_0x005bb2aa                           // 0x005bb1f4    0f84b0000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00002f04]              // 0x005bb1fa    8b8f042f0000
                         cmp.s              ecx, ebx                                       // 0x005bb200    3bcb
                         push               esi                                            // 0x005bb202    56
                         {disp8} je         _jmp_addr_0x005bb236                           // 0x005bb203    7431
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                   // 0x005bb205    8b41fc
                         push               ebp                                            // 0x005bb208    55
                         {disp8} lea        ebp, dword ptr [ecx + -0x04]                   // 0x005bb209    8d69fc
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x005bb20c    8d1440
                         dec                eax                                            // 0x005bb20f    48
                         lea                esi, dword ptr [ecx + edx * 0x4]               // 0x005bb210    8d3491
                         {disp8} js         _jmp_addr_0x005bb22c                           // 0x005bb213    7817
                         {disp8} lea        ebx, dword ptr [eax + 0x01]                    // 0x005bb215    8d5801
_jmp_addr_0x005bb218:    {disp8} mov        eax, dword ptr [esi + -0x0c]                   // 0x005bb218    8b46f4
                         sub                esi, 0x0c                                      // 0x005bb21b    83ee0c
                         push               eax                                            // 0x005bb21e    50
                         call               ??3@YAXPAX@Z                                   // 0x005bb21f    e8743c1f00
                         add                esp, 0x04                                      // 0x005bb224    83c404
                         dec                ebx                                            // 0x005bb227    4b
                         {disp8} jne        _jmp_addr_0x005bb218                           // 0x005bb228    75ee
                         xor.s              ebx, ebx                                       // 0x005bb22a    33db
_jmp_addr_0x005bb22c:    push               ebp                                            // 0x005bb22c    55
                         call               ??3@YAXPAX@Z                                   // 0x005bb22d    e8663c1f00
                         add                esp, 0x04                                      // 0x005bb232    83c404
                         pop                ebp                                            // 0x005bb235    5d
_jmp_addr_0x005bb236:    {disp32} mov       ecx, dword ptr [edi + 0x00002efc]              // 0x005bb236    8b8ffc2e0000
                         push               ecx                                            // 0x005bb23c    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00002ef8]              // 0x005bb23d    8b8ff82e0000
                         call               dword ptr [rdata_bytes + 0x6cc]                // 0x005bb243    ff15cc968a00
                         mov.s              esi, eax                                       // 0x005bb249    8bf0
                         push               0x000002ce                                     // 0x005bb24b    68ce020000
                         lea                edx, dword ptr [esi + esi * 0x2]               // 0x005bb250    8d1476
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00000004]        // 0x005bb253    8d049504000000
                         push               0x00bf04d0                                     // 0x005bb25a    68d004bf00
                         push               eax                                            // 0x005bb25f    50
                         {disp32} mov       dword ptr [edi + 0x00002f00], esi              // 0x005bb260    89b7002f0000
                         call               ___nw__FUl                                     // 0x005bb266    e825052200
                         add                esp, 0x0c                                      // 0x005bb26b    83c40c
                         cmp.s              eax, ebx                                       // 0x005bb26e    3bc3
                         {disp8} je         _jmp_addr_0x005bb2a1                           // 0x005bb270    742f
                         {disp8} lea        ecx, dword ptr [esi + -0x01]                   // 0x005bb272    8d4eff
                         cmp.s              ecx, ebx                                       // 0x005bb275    3bcb
                         {disp8} lea        edx, dword ptr [eax + 0x04]                    // 0x005bb277    8d5004
                         mov                dword ptr [eax], esi                           // 0x005bb27a    8930
                         mov.s              eax, edx                                       // 0x005bb27c    8bc2
                         {disp8} jl         _jmp_addr_0x005bb2a3                           // 0x005bb27e    7c23
                         inc                ecx                                            // 0x005bb280    41
_jmp_addr_0x005bb281:    {disp8} mov        dword ptr [eax + 0x04], ebx                    // 0x005bb281    895804
                         mov                dword ptr [eax], ebx                           // 0x005bb284    8918
                         {disp8} mov        dword ptr [eax + 0x08], ebx                    // 0x005bb286    895808
                         add                eax, 0x0c                                      // 0x005bb289    83c00c
                         dec                ecx                                            // 0x005bb28c    49
                         {disp8} jne        _jmp_addr_0x005bb281                           // 0x005bb28d    75f2
                         {disp32} mov       eax, dword ptr [edi + 0x00002efc]              // 0x005bb28f    8b87fc2e0000
                         pop                esi                                            // 0x005bb295    5e
                         {disp32} mov       dword ptr [edi + 0x00002f04], edx              // 0x005bb296    8997042f0000
                         pop                edi                                            // 0x005bb29c    5f
                         pop                ebx                                            // 0x005bb29d    5b
                         ret                0x0008                                         // 0x005bb29e    c20800
_jmp_addr_0x005bb2a1:    xor.s              edx, edx                                       // 0x005bb2a1    33d2
_jmp_addr_0x005bb2a3:    {disp32} mov       dword ptr [edi + 0x00002f04], edx              // 0x005bb2a3    8997042f0000
                         pop                esi                                            // 0x005bb2a9    5e
_jmp_addr_0x005bb2aa:    {disp32} mov       eax, dword ptr [edi + 0x00002efc]              // 0x005bb2aa    8b87fc2e0000
                         pop                edi                                            // 0x005bb2b0    5f
                         pop                ebx                                            // 0x005bb2b1    5b
                         ret                0x0008                                         // 0x005bb2b2    c20800
                         nop                                                               // 0x005bb2b5    90
                         nop                                                               // 0x005bb2b6    90
                         nop                                                               // 0x005bb2b7    90
                         nop                                                               // 0x005bb2b8    90
                         nop                                                               // 0x005bb2b9    90
                         nop                                                               // 0x005bb2ba    90
                         nop                                                               // 0x005bb2bb    90
                         nop                                                               // 0x005bb2bc    90
                         nop                                                               // 0x005bb2bd    90
                         nop                                                               // 0x005bb2be    90
                         nop                                                               // 0x005bb2bf    90
_jmp_addr_0x005bb2c0:    push               ebx                                            // 0x005bb2c0    53
                         push               edi                                            // 0x005bb2c1    57
                         mov.s              edi, ecx                                       // 0x005bb2c2    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00002ef8]              // 0x005bb2c4    8b87f82e0000
                         xor.s              ebx, ebx                                       // 0x005bb2ca    33db
                         cmp.s              eax, ebx                                       // 0x005bb2cc    3bc3
                         {disp8} je         _jmp_addr_0x005bb332                           // 0x005bb2ce    7462
                         cmp                dword ptr [edi + 0x00002efc], ebx              // 0x005bb2d0    399ffc2e0000
                         {disp8} je         _jmp_addr_0x005bb332                           // 0x005bb2d6    745a
                         call               _jmp_addr_0x005bb840                           // 0x005bb2d8    e863050000
                         {disp32} mov       ecx, dword ptr [edi + 0x00002f04]              // 0x005bb2dd    8b8f042f0000
                         cmp.s              ecx, ebx                                       // 0x005bb2e3    3bcb
                         {disp8} je         _jmp_addr_0x005bb31a                           // 0x005bb2e5    7433
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                   // 0x005bb2e7    8b41fc
                         push               ebp                                            // 0x005bb2ea    55
                         {disp8} lea        ebp, dword ptr [ecx + -0x04]                   // 0x005bb2eb    8d69fc
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x005bb2ee    8d1440
                         dec                eax                                            // 0x005bb2f1    48
                         push               esi                                            // 0x005bb2f2    56
                         lea                esi, dword ptr [ecx + edx * 0x4]               // 0x005bb2f3    8d3491
                         {disp8} js         _jmp_addr_0x005bb30f                           // 0x005bb2f6    7817
                         {disp8} lea        ebx, dword ptr [eax + 0x01]                    // 0x005bb2f8    8d5801
_jmp_addr_0x005bb2fb:    {disp8} mov        eax, dword ptr [esi + -0x0c]                   // 0x005bb2fb    8b46f4
                         sub                esi, 0x0c                                      // 0x005bb2fe    83ee0c
                         push               eax                                            // 0x005bb301    50
                         call               ??3@YAXPAX@Z                                   // 0x005bb302    e8913b1f00
                         add                esp, 0x04                                      // 0x005bb307    83c404
                         dec                ebx                                            // 0x005bb30a    4b
                         {disp8} jne        _jmp_addr_0x005bb2fb                           // 0x005bb30b    75ee
                         xor.s              ebx, ebx                                       // 0x005bb30d    33db
_jmp_addr_0x005bb30f:    push               ebp                                            // 0x005bb30f    55
                         call               ??3@YAXPAX@Z                                   // 0x005bb310    e8833b1f00
                         add                esp, 0x04                                      // 0x005bb315    83c404
                         pop                esi                                            // 0x005bb318    5e
                         pop                ebp                                            // 0x005bb319    5d
_jmp_addr_0x005bb31a:    {disp32} mov       dword ptr [edi + 0x00002f04], ebx              // 0x005bb31a    899f042f0000
                         {disp32} mov       dword ptr [edi + 0x00002f00], ebx              // 0x005bb320    899f002f0000
                         {disp32} mov       dword ptr [edi + 0x00002efc], ebx              // 0x005bb326    899ffc2e0000
                         {disp32} mov       dword ptr [edi + 0x00002f0c], ebx              // 0x005bb32c    899f0c2f0000
_jmp_addr_0x005bb332:    pop                edi                                            // 0x005bb332    5f
                         pop                ebx                                            // 0x005bb333    5b
                         ret                                                               // 0x005bb334    c3
                         nop                                                               // 0x005bb335    90
                         nop                                                               // 0x005bb336    90
                         nop                                                               // 0x005bb337    90
                         nop                                                               // 0x005bb338    90
                         nop                                                               // 0x005bb339    90
                         nop                                                               // 0x005bb33a    90
                         nop                                                               // 0x005bb33b    90
                         nop                                                               // 0x005bb33c    90
                         nop                                                               // 0x005bb33d    90
                         nop                                                               // 0x005bb33e    90
                         nop                                                               // 0x005bb33f    90
_jmp_addr_0x005bb340:    push               esi                                            // 0x005bb340    56
                         mov.s              esi, ecx                                       // 0x005bb341    8bf1
                         {disp32} mov       dword ptr [data_bytes + 0x34faa0], esi         // 0x005bb343    8935a05ad100
                         {disp32} mov       eax, dword ptr [esi + 0x00002efc]              // 0x005bb349    8b86fc2e0000
                         test               eax, eax                                       // 0x005bb34f    85c0
                         {disp32} je        _jmp_addr_0x005bb40d                           // 0x005bb351    0f84b6000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34fa9c]         // 0x005bb357    a19c5ad100
                         test               eax, eax                                       // 0x005bb35c    85c0
                         {disp8} je         _jmp_addr_0x005bb37c                           // 0x005bb35e    741c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x005bb360    8b44240c
                         test               eax, eax                                       // 0x005bb364    85c0
                         {disp8} je         _jmp_addr_0x005bb377                           // 0x005bb366    740f
                         call               _jmp_addr_0x005bb760                           // 0x005bb368    e8f3030000
                         test               eax, eax                                       // 0x005bb36d    85c0
                         {disp32} jne       _jmp_addr_0x005bb40d                           // 0x005bb36f    0f8598000000
                         {disp8} jmp        _jmp_addr_0x005bb37c                           // 0x005bb375    eb05
_jmp_addr_0x005bb377:    call               _jmp_addr_0x005bb840                           // 0x005bb377    e8c4040000
_jmp_addr_0x005bb37c:    {disp32} mov       eax, dword ptr [esi + 0x00002efc]              // 0x005bb37c    8b86fc2e0000
                         {disp32} mov       ecx, dword ptr [esi + 0x00002ef8]              // 0x005bb382    8b8ef82e0000
                         push               eax                                            // 0x005bb388    50
                         call               dword ptr [rdata_bytes + 0x6cc]                // 0x005bb389    ff15cc968a00
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x005bb38f    8b4c2408
                         cmp.s              ecx, eax                                       // 0x005bb393    3bc8
                         {disp8} ja         _jmp_addr_0x005bb40d                           // 0x005bb395    7776
                         cmp                ecx, 0x01                                      // 0x005bb397    83f901
                         {disp8} jl         _jmp_addr_0x005bb40d                           // 0x005bb39a    7c71
                         {disp32} mov       edx, dword ptr [esi + 0x00002efc]              // 0x005bb39c    8b96fc2e0000
                         {disp32} mov       eax, dword ptr [esi + 0x00003374]              // 0x005bb3a2    8b8674330000
                         {disp32} mov       dword ptr [esi + 0x00003680], edx              // 0x005bb3a8    899680360000
                         {disp32} mov       edx, dword ptr [esi + 0x00003378]              // 0x005bb3ae    8b9678330000
                         {disp32} mov       dword ptr [esi + 0x000036ac], eax              // 0x005bb3b4    8986ac360000
                         {disp32} mov       eax, dword ptr [esi + 0x0000337c]              // 0x005bb3ba    8b867c330000
                         {disp32} mov       dword ptr [esi + 0x000036a0], ecx              // 0x005bb3c0    898ea0360000
                         {disp32} mov       dword ptr [esi + 0x0000369c], 0x0000270c       // 0x005bb3c6    c7869c3600000c270000
                         {disp32} mov       dword ptr [esi + 0x00003684], 0x00000000       // 0x005bb3d0    c7868436000000000000
                         {disp32} mov       dword ptr [esi + 0x000036b0], edx              // 0x005bb3da    8996b0360000
                         {disp32} mov       dword ptr [esi + 0x000036b4], eax              // 0x005bb3e0    8986b4360000
                         {disp32} mov       dword ptr [esi + 0x000037e0], 0x00000001       // 0x005bb3e6    c786e037000001000000
                         {disp32} mov       dword ptr [esi + 0x000035d8], ecx              // 0x005bb3f0    898ed8350000
                         call               dword ptr [__imp__GetTickCount@4]              // 0x005bb3f6    ff15c4918a00
                         add                eax, dword ptr [esp + 0x10]                    // 0x005bb3fc    03442410
                         mov.s              ecx, esi                                       // 0x005bb400    8bce
                         {disp32} mov       dword ptr [esi + 0x000035d4], eax              // 0x005bb402    8986d4350000
                         call               _jmp_addr_0x005bb610                           // 0x005bb408    e803020000
_jmp_addr_0x005bb40d:    pop                esi                                            // 0x005bb40d    5e
                         ret                0x000c                                         // 0x005bb40e    c20c00
                         nop                                                               // 0x005bb411    90
                         nop                                                               // 0x005bb412    90
                         nop                                                               // 0x005bb413    90
                         nop                                                               // 0x005bb414    90
                         nop                                                               // 0x005bb415    90
                         nop                                                               // 0x005bb416    90
                         nop                                                               // 0x005bb417    90
                         nop                                                               // 0x005bb418    90
                         nop                                                               // 0x005bb419    90
                         nop                                                               // 0x005bb41a    90
                         nop                                                               // 0x005bb41b    90
                         nop                                                               // 0x005bb41c    90
                         nop                                                               // 0x005bb41d    90
                         nop                                                               // 0x005bb41e    90
                         nop                                                               // 0x005bb41f    90
                         sub                esp, 0x08                                      // 0x005bb420    83ec08
                         push               esi                                            // 0x005bb423    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x005bb424    8b742414
                         test               esi, esi                                       // 0x005bb428    85f6
                         {disp32} je        _jmp_addr_0x005bb521                           // 0x005bb42a    0f84f1000000
                         call               dword ptr [__imp__GetTickCount@4]              // 0x005bb430    ff15c4918a00
                         sub                eax, dword ptr [data_bytes + 0x34fa98]         // 0x005bb436    2b05985ad100
                         {disp8} mov        dword ptr [esp + 0x04], eax                    // 0x005bb43c    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000             // 0x005bb440    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                         // 0x005bb448    df6c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]               // 0x005bb44c    d80d18c48a00
                         {disp8} fst        dword ptr [esp + 0x14]                         // 0x005bb452    d9542414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005bb456    d81d98a38a00
                         fnstsw             ax                                             // 0x005bb45c    dfe0
                         test               ah, 0x01                                       // 0x005bb45e    f6c401
                         {disp32} jne       _jmp_addr_0x005bb521                           // 0x005bb461    0f85ba000000
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005bb467    d9442414
                         {disp32} fcomp     dword ptr [data_bytes + 0x34fa90]              // 0x005bb46b    d81d905ad100
                         fnstsw             ax                                             // 0x005bb471    dfe0
                         test               ah, 0x01                                       // 0x005bb473    f6c401
                         {disp32} je        _jmp_addr_0x005bb521                           // 0x005bb476    0f84a5000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34fa94]         // 0x005bb47c    a1945ad100
                         test               eax, eax                                       // 0x005bb481    85c0
                         {disp32} je        _jmp_addr_0x005bb521                           // 0x005bb483    0f8498000000
                         {disp32} mov       eax, dword ptr [_global]                       // 0x005bb489    a1203bcd00
                         {disp32} mov       eax, dword ptr [eax + 0x000003c0]              // 0x005bb48e    8b80c0030000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005bb494    8b4c2410
                         push               esi                                            // 0x005bb498    56
                         push               0x0000270c                                     // 0x005bb499    680c270000
                         push               eax                                            // 0x005bb49e    50
                         call               dword ptr [rdata_bytes + 0x74c]                // 0x005bb49f    ff154c978a00
                         test               eax, eax                                       // 0x005bb4a5    85c0
                         {disp8} je         _jmp_addr_0x005bb521                           // 0x005bb4a7    7478
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005bb4a9    d9442414
                         {disp32} fdiv      dword ptr [data_bytes + 0x34fa90]              // 0x005bb4ad    d835905ad100
                         {disp32} fimul     dword ptr [data_bytes + 0x34fa8c]              // 0x005bb4b3    da0d8c5ad100
                         call               _jmp_addr_0x007a1400                           // 0x005bb4b9    e8425f1e00
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x005bb4be    8b4c2418
                         {disp32} mov       edx, dword ptr [data_bytes + 0x34fa8c]         // 0x005bb4c2    8b158c5ad100
                         add.s              ecx, eax                                       // 0x005bb4c8    03c8
                         test               eax, eax                                       // 0x005bb4ca    85c0
                         {disp8} jle        _jmp_addr_0x005bb4d6                           // 0x005bb4cc    7e08
                         cmp.s              eax, edx                                       // 0x005bb4ce    3bc2
                         {disp8} jl         _jmp_addr_0x005bb4d8                           // 0x005bb4d0    7c06
                         mov.s              eax, edx                                       // 0x005bb4d2    8bc2
                         {disp8} jmp        _jmp_addr_0x005bb4d8                           // 0x005bb4d4    eb02
_jmp_addr_0x005bb4d6:    xor.s              eax, eax                                       // 0x005bb4d6    33c0
_jmp_addr_0x005bb4d8:    test               ecx, ecx                                       // 0x005bb4d8    85c9
                         {disp8} jle        _jmp_addr_0x005bb4e4                           // 0x005bb4da    7e08
                         cmp.s              ecx, edx                                       // 0x005bb4dc    3bca
                         {disp8} jl         _jmp_addr_0x005bb4e6                           // 0x005bb4de    7c06
                         mov.s              ecx, edx                                       // 0x005bb4e0    8bca
                         {disp8} jmp        _jmp_addr_0x005bb4e6                           // 0x005bb4e2    eb02
_jmp_addr_0x005bb4e4:    xor.s              ecx, ecx                                       // 0x005bb4e4    33c9
_jmp_addr_0x005bb4e6:    cmp.s              eax, ecx                                       // 0x005bb4e6    3bc1
                         {disp8} jge        _jmp_addr_0x005bb521                           // 0x005bb4e8    7d37
                         {disp32} mov       edx, dword ptr [data_bytes + 0x34fa94]         // 0x005bb4ea    8b15945ad100
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005bb4f0    d90598a38a00
                         lea                edx, dword ptr [edx + eax * 0x2]               // 0x005bb4f6    8d1442
                         sub.s              ecx, eax                                       // 0x005bb4f9    2bc8
_jmp_addr_0x005bb4fb:    movsx              eax, word ptr [edx]                            // 0x005bb4fb    0fbf02
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x005bb4fe    89442414
                         add                edx, 0x02                                      // 0x005bb502    83c202
                         dec                ecx                                            // 0x005bb505    49
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x005bb506    db442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c848]              // 0x005bb50a    d80d48588c00
                         fld                st(0)                                          // 0x005bb510    d9c0
                         fmul               st, st(1)                                      // 0x005bb512    d8c9
                         faddp              st(2), st                                      // 0x005bb514    dec2
                         fstp               st(0)                                          // 0x005bb516    ddd8
                         {disp8} jne        _jmp_addr_0x005bb4fb                           // 0x005bb518    75e1
                         fsqrt                                                             // 0x005bb51a    d9fa
                         pop                esi                                            // 0x005bb51c    5e
                         add                esp, 0x08                                      // 0x005bb51d    83c408
                         ret                                                               // 0x005bb520    c3
_jmp_addr_0x005bb521:    {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005bb521    d90598a38a00
                         pop                esi                                            // 0x005bb527    5e
                         add                esp, 0x08                                      // 0x005bb528    83c408
                         ret                                                               // 0x005bb52b    c3
                         nop                                                               // 0x005bb52c    90
                         nop                                                               // 0x005bb52d    90
                         nop                                                               // 0x005bb52e    90
                         nop                                                               // 0x005bb52f    90
_jmp_addr_0x005bb530:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005bb530    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x005bb534    8b4c2404
                         push               ebx                                            // 0x005bb538    53
                         push               eax                                            // 0x005bb539    50
                         {disp32} mov       dword ptr [eax + 0x00000164], 0x00000001       // 0x005bb53a    c7806401000001000000
                         call               dword ptr [rdata_bytes + 0x79c]                // 0x005bb544    ff159c978a00
                         mov.s              ebx, eax                                       // 0x005bb54a    8bd8
                         test               ebx, ebx                                       // 0x005bb54c    85db
                         {disp32} je        _jmp_addr_0x005bb605                           // 0x005bb54e    0f84b1000000
                         call               dword ptr [__imp__GetTickCount@4]              // 0x005bb554    ff15c4918a00
                         {disp32} mov       dword ptr [data_bytes + 0x34fa98], eax         // 0x005bb55a    a3985ad100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34fa94]         // 0x005bb55f    a1945ad100
                         test               eax, eax                                       // 0x005bb564    85c0
                         {disp8} je         _jmp_addr_0x005bb571                           // 0x005bb566    7409
                         push               eax                                            // 0x005bb568    50
                         call               ??3@YAXPAX@Z                                   // 0x005bb569    e82a391f00
                         add                esp, 0x04                                      // 0x005bb56e    83c404
_jmp_addr_0x005bb571:    {disp32} mov       dword ptr [data_bytes + 0x34fa94], 0x00000000  // 0x005bb571    c705945ad10000000000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000084]              // 0x005bb57b    8b8384000000
                         {disp32} mov       dword ptr [data_bytes + 0x34fa8c], eax         // 0x005bb581    a38c5ad100
                         cdq                                                               // 0x005bb586    99
                         push               esi                                            // 0x005bb587    56
                         sub.s              eax, edx                                       // 0x005bb588    2bc2
                         push               0x00000336                                     // 0x005bb58a    6836030000
                         sar                eax, 1                                         // 0x005bb58f    d1f8
                         shl                eax, 1                                         // 0x005bb591    d1e0
                         push               0x00bf04d0                                     // 0x005bb593    68d004bf00
                         push               eax                                            // 0x005bb598    50
                         call               ___nw__FUl                                     // 0x005bb599    e8f2012200
                         add                esp, 0x0c                                      // 0x005bb59e    83c40c
                         test               eax, eax                                       // 0x005bb5a1    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x34fa94], eax         // 0x005bb5a3    a3945ad100
                         {disp8} je         _jmp_addr_0x005bb5cc                           // 0x005bb5a8    7422
                         {disp32} mov       esi, dword ptr [ebx + 0x00000080]              // 0x005bb5aa    8bb380000000
                         test               esi, esi                                       // 0x005bb5b0    85f6
                         {disp8} je         _jmp_addr_0x005bb5cc                           // 0x005bb5b2    7418
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34fa8c]         // 0x005bb5b4    8b0d8c5ad100
                         push               edi                                            // 0x005bb5ba    57
                         mov.s              edi, eax                                       // 0x005bb5bb    8bf8
                         mov.s              eax, ecx                                       // 0x005bb5bd    8bc1
                         shr                ecx, 2                                         // 0x005bb5bf    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005bb5c2    f3a5
                         mov.s              ecx, eax                                       // 0x005bb5c4    8bc8
                         and                ecx, 0x03                                      // 0x005bb5c6    83e103
                         rep movsb                                                         // 0x005bb5c9    f3a4
                         pop                edi                                            // 0x005bb5cb    5f
_jmp_addr_0x005bb5cc:    {disp8} mov        ecx, dword ptr [ebx + 0x74]                    // 0x005bb5cc    8b4b74
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34fa8c]         // 0x005bb5cf    a18c5ad100
                         xor.s              edx, edx                                       // 0x005bb5d4    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x02]                      // 0x005bb5d6    668b5102
                         mov.s              esi, edx                                       // 0x005bb5da    8bf2
                         cdq                                                               // 0x005bb5dc    99
                         shl                esi, 1                                         // 0x005bb5dd    d1e6
                         idiv               esi                                            // 0x005bb5df    f7fe
                         pop                esi                                            // 0x005bb5e1    5e
                         {disp32} mov       dword ptr [data_bytes + 0x34fa8c], eax         // 0x005bb5e2    a38c5ad100
                         {disp32} fild      dword ptr [data_bytes + 0x34fa8c]              // 0x005bb5e7    db058c5ad100
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x005bb5ed    8b4104
                         {disp32} mov       dword ptr [data_bytes + 0x34fa88], eax         // 0x005bb5f0    a3885ad100
                         {disp32} fidiv     dword ptr [data_bytes + 0x34fa88]              // 0x005bb5f5    da35885ad100
                         mov.s              eax, ebx                                       // 0x005bb5fb    8bc3
                         pop                ebx                                            // 0x005bb5fd    5b
                         {disp32} fstp      dword ptr [data_bytes + 0x34fa90]              // 0x005bb5fe    d91d905ad100
                         ret                                                               // 0x005bb604    c3
_jmp_addr_0x005bb605:    mov.s              eax, ebx                                       // 0x005bb605    8bc3
                         pop                ebx                                            // 0x005bb607    5b
                         ret                                                               // 0x005bb608    c3
                         nop                                                               // 0x005bb609    90
                         nop                                                               // 0x005bb60a    90
                         nop                                                               // 0x005bb60b    90
                         nop                                                               // 0x005bb60c    90
                         nop                                                               // 0x005bb60d    90
                         nop                                                               // 0x005bb60e    90
                         nop                                                               // 0x005bb60f    90
_jmp_addr_0x005bb610:    push               ebx                                            // 0x005bb610    53
                         push               esi                                            // 0x005bb611    56
                         mov.s              esi, ecx                                       // 0x005bb612    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000035d4]              // 0x005bb614    8b86d4350000
                         xor.s              ebx, ebx                                       // 0x005bb61a    33db
                         cmp.s              eax, ebx                                       // 0x005bb61c    3bc3
                         push               edi                                            // 0x005bb61e    57
                         {disp32} je        _jmp_addr_0x005bb722                           // 0x005bb61f    0f84fd000000
                         call               dword ptr [__imp__GetTickCount@4]              // 0x005bb625    ff15c4918a00
                         cmp                eax, dword ptr [esi + 0x000035d4]              // 0x005bb62b    3b86d4350000
                         {disp32} jl        _jmp_addr_0x005bb722                           // 0x005bb631    0f8ceb000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00002ef8]              // 0x005bb637    8b8ef82e0000
                         {disp32} lea       eax, dword ptr [esi + 0x0000367c]              // 0x005bb63d    8d867c360000
                         push               eax                                            // 0x005bb643    50
                         push               ecx                                            // 0x005bb644    51
                         {disp32} mov       dword ptr [esi + 0x000035d4], ebx              // 0x005bb645    899ed4350000
                         call               _jmp_addr_0x005bb530                           // 0x005bb64b    e8e0feffff
                         mov.s              edi, eax                                       // 0x005bb650    8bf8
                         add                esp, 0x08                                      // 0x005bb652    83c408
                         cmp.s              edi, ebx                                       // 0x005bb655    3bfb
                         {disp8} je         _jmp_addr_0x005bb6d0                           // 0x005bb657    7477
                         {disp8} mov        eax, dword ptr [edi + 0x1c]                    // 0x005bb659    8b471c
                         cmp.s              eax, ebx                                       // 0x005bb65c    3bc3
                         {disp32} mov       dword ptr [data_bytes + 0x34fa9c], eax         // 0x005bb65e    a39c5ad100
                         {disp32} je        _jmp_addr_0x005bb722                           // 0x005bb663    0f84b9000000
                         {disp32} mov       eax, dword ptr [esi + 0x000035d8]              // 0x005bb669    8b86d8350000
                         {disp32} mov       dword ptr [esi + 0x00002f0c], eax              // 0x005bb66f    89860c2f0000
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x005bb675    8d1440
                         {disp32} mov       eax, dword ptr [esi + 0x00002f04]              // 0x005bb678    8b86042f0000
                         {disp8} mov        ecx, dword ptr [eax + edx * 0x4 + -0x0c]       // 0x005bb67e    8b4c90f4
                         push               ecx                                            // 0x005bb682    51
                         call               ??3@YAXPAX@Z                                   // 0x005bb683    e810381f00
                         {disp32} mov       eax, dword ptr [esi + 0x00002f0c]              // 0x005bb688    8b860c2f0000
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x005bb68e    8d1440
                         {disp32} mov       eax, dword ptr [esi + 0x00002f04]              // 0x005bb691    8b86042f0000
                         {disp8} lea        ecx, dword ptr [eax + edx * 0x4 + -0x0c]       // 0x005bb697    8d4c90f4
                         {disp32} mov       dword ptr [esi + 0x00002f08], ecx              // 0x005bb69b    898e082f0000
                         {disp32} mov       dword ptr [data_bytes + 0x29236c], ebx         // 0x005bb6a1    891d6c83c500
                         {disp8} mov        eax, dword ptr [edi + 0x78]                    // 0x005bb6a7    8b4778
                         add                esp, 0x04                                      // 0x005bb6aa    83c404
                         cmp.s              eax, ebx                                       // 0x005bb6ad    3bc3
                         {disp8} je         _jmp_addr_0x005bb6da                           // 0x005bb6af    7429
                         {disp32} mov       edx, dword ptr [esi + 0x00002f08]              // 0x005bb6b1    8b96082f0000
                         {disp8} mov        ecx, dword ptr [edi + 0x7c]                    // 0x005bb6b7    8b4f7c
                         push               edx                                            // 0x005bb6ba    52
                         push               ecx                                            // 0x005bb6bb    51
                         push               eax                                            // 0x005bb6bc    50
                         call               _jmp_addr_0x0042ae70                           // 0x005bb6bd    e8aef7e6ff
                         {disp32} mov       edx, dword ptr [esi + 0x00002f08]              // 0x005bb6c2    8b96082f0000
                         add                esp, 0x0c                                      // 0x005bb6c8    83c40c
                         {disp8} mov        dword ptr [edx + 0x04], eax                    // 0x005bb6cb    894204
                         {disp8} jmp        _jmp_addr_0x005bb6ef                           // 0x005bb6ce    eb1f
_jmp_addr_0x005bb6d0:    pop                edi                                            // 0x005bb6d0    5f
                         pop                esi                                            // 0x005bb6d1    5e
                         {disp32} mov       dword ptr [data_bytes + 0x34fa9c], ebx         // 0x005bb6d2    891d9c5ad100
                         pop                ebx                                            // 0x005bb6d8    5b
                         ret                                                               // 0x005bb6d9    c3
_jmp_addr_0x005bb6da:    {disp32} mov       eax, dword ptr [esi + 0x00002f08]              // 0x005bb6da    8b86082f0000
                         {disp8} mov        dword ptr [eax + 0x04], ebx                    // 0x005bb6e0    895804
                         {disp32} mov       dword ptr [data_bytes + 0x29236c], 0x00000001  // 0x005bb6e3    c7056c83c50001000000
                         {disp8} jmp        _jmp_addr_0x005bb6f7                           // 0x005bb6ed    eb08
_jmp_addr_0x005bb6ef:    cmp                dword ptr [data_bytes + 0x29236c], ebx         // 0x005bb6ef    391d6c83c500
                         {disp8} je         _jmp_addr_0x005bb719                           // 0x005bb6f5    7422
_jmp_addr_0x005bb6f7:    {disp32} mov       ecx, dword ptr [esi + 0x00002f08]              // 0x005bb6f7    8b8e082f0000
                         mov                edx, dword ptr [ecx]                           // 0x005bb6fd    8b11
                         push               edx                                            // 0x005bb6ff    52
                         call               ??3@YAXPAX@Z                                   // 0x005bb700    e893371f00
                         {disp32} mov       eax, dword ptr [esi + 0x00002f08]              // 0x005bb705    8b86082f0000
                         mov                dword ptr [eax], ebx                           // 0x005bb70b    8918
                         {disp32} mov       ecx, dword ptr [esi + 0x00002f08]              // 0x005bb70d    8b8e082f0000
                         add                esp, 0x04                                      // 0x005bb713    83c404
                         {disp8} mov        dword ptr [ecx + 0x04], ebx                    // 0x005bb716    895904
_jmp_addr_0x005bb719:    {disp32} mov       edx, dword ptr [esi + 0x00002f08]              // 0x005bb719    8b96082f0000
                         {disp8} mov        dword ptr [edx + 0x08], ebx                    // 0x005bb71f    895a08
_jmp_addr_0x005bb722:    pop                edi                                            // 0x005bb722    5f
                         pop                esi                                            // 0x005bb723    5e
                         pop                ebx                                            // 0x005bb724    5b
                         ret                                                               // 0x005bb725    c3
                         nop                                                               // 0x005bb726    90
                         nop                                                               // 0x005bb727    90
                         nop                                                               // 0x005bb728    90
                         nop                                                               // 0x005bb729    90
                         nop                                                               // 0x005bb72a    90
                         nop                                                               // 0x005bb72b    90
                         nop                                                               // 0x005bb72c    90
                         nop                                                               // 0x005bb72d    90
                         nop                                                               // 0x005bb72e    90
                         nop                                                               // 0x005bb72f    90
_jmp_addr_0x005bb730:    push               esi                                            // 0x005bb730    56
                         mov.s              esi, ecx                                       // 0x005bb731    8bf1
                         call               _jmp_addr_0x005bb760                           // 0x005bb733    e828000000
                         test               eax, eax                                       // 0x005bb738    85c0
                         {disp8} je         _jmp_addr_0x005bb743                           // 0x005bb73a    7407
                         mov                eax, 0x00000001                                // 0x005bb73c    b801000000
                         pop                esi                                            // 0x005bb741    5e
                         ret                                                               // 0x005bb742    c3
_jmp_addr_0x005bb743:    call               dword ptr [__imp__GetTickCount@4]              // 0x005bb743    ff15c4918a00
                         sub                eax, dword ptr [esi + 0x000037ec]              // 0x005bb749    2b86ec370000
                         cmp                eax, 0x000000c8                                // 0x005bb74f    3dc8000000
                         sbb.s              eax, eax                                       // 0x005bb754    1bc0
                         neg                eax                                            // 0x005bb756    f7d8
                         pop                esi                                            // 0x005bb758    5e
                         ret                                                               // 0x005bb759    c3
                         call               dword ptr [__imp__ReleaseCapture@4]            // 0x005bb75a    ff1568988a00
_jmp_addr_0x005bb760:    {disp32} mov       eax, dword ptr [data_bytes + 0x34faa0]         // 0x005bb760    a1a05ad100
                         push               esi                                            // 0x005bb765    56
                         mov.s              esi, ecx                                       // 0x005bb766    8bf1
                         cmp.s              eax, esi                                       // 0x005bb768    3bc6
                         {disp8} jne        _jmp_addr_0x005bb7bb                           // 0x005bb76a    754f
                         {disp32} mov       eax, dword ptr [esi + 0x000035d4]              // 0x005bb76c    8b86d4350000
                         test               eax, eax                                       // 0x005bb772    85c0
                         {disp8} jne        _jmp_addr_0x005bb7a1                           // 0x005bb774    752b
                         {disp32} mov       eax, dword ptr [esi + 0x00002efc]              // 0x005bb776    8b86fc2e0000
                         test               eax, eax                                       // 0x005bb77c    85c0
                         {disp8} je         _jmp_addr_0x005bb7bb                           // 0x005bb77e    743b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34fa9c]         // 0x005bb780    8b0d9c5ad100
                         test               ecx, ecx                                       // 0x005bb786    85c9
                         {disp8} je         _jmp_addr_0x005bb7bb                           // 0x005bb788    7431
                         push               ecx                                            // 0x005bb78a    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00002ef8]              // 0x005bb78b    8b8ef82e0000
                         push               0x0000270c                                     // 0x005bb791    680c270000
                         push               eax                                            // 0x005bb796    50
                         call               dword ptr [rdata_bytes + 0x74c]                // 0x005bb797    ff154c978a00
                         test               eax, eax                                       // 0x005bb79d    85c0
                         {disp8} je         _jmp_addr_0x005bb7b4                           // 0x005bb79f    7413
_jmp_addr_0x005bb7a1:    call               dword ptr [__imp__GetTickCount@4]              // 0x005bb7a1    ff15c4918a00
                         {disp32} mov       dword ptr [esi + 0x000037ec], eax              // 0x005bb7a7    8986ec370000
                         mov                eax, 0x00000001                                // 0x005bb7ad    b801000000
                         pop                esi                                            // 0x005bb7b2    5e
                         ret                                                               // 0x005bb7b3    c3
_jmp_addr_0x005bb7b4:    mov.s              ecx, esi                                       // 0x005bb7b4    8bce
                         call               _jmp_addr_0x005bb840                           // 0x005bb7b6    e885000000
_jmp_addr_0x005bb7bb:    xor.s              eax, eax                                       // 0x005bb7bb    33c0
                         pop                esi                                            // 0x005bb7bd    5e
                         ret                                                               // 0x005bb7be    c3
                         nop                                                               // 0x005bb7bf    90
_jmp_addr_0x005bb7c0:    push               ecx                                            // 0x005bb7c0    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34faa0]         // 0x005bb7c1    a1a05ad100
                         push               esi                                            // 0x005bb7c6    56
                         mov.s              esi, ecx                                       // 0x005bb7c7    8bf1
                         cmp.s              eax, esi                                       // 0x005bb7c9    3bc6
                         {disp8} jne        _jmp_addr_0x005bb837                           // 0x005bb7cb    756a
                         {disp32} mov       eax, dword ptr [esi + 0x000035d4]              // 0x005bb7cd    8b86d4350000
                         test               eax, eax                                       // 0x005bb7d3    85c0
                         {disp8} je         _jmp_addr_0x005bb7ec                           // 0x005bb7d5    7415
                         call               dword ptr [__imp__GetTickCount@4]              // 0x005bb7d7    ff15c4918a00
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005bb7dd    d90598a38a00
                         {disp32} mov       dword ptr [esi + 0x000037ec], eax              // 0x005bb7e3    8986ec370000
                         pop                esi                                            // 0x005bb7e9    5e
                         pop                ecx                                            // 0x005bb7ea    59
                         ret                                                               // 0x005bb7eb    c3
_jmp_addr_0x005bb7ec:    {disp32} mov       eax, dword ptr [esi + 0x00002efc]              // 0x005bb7ec    8b86fc2e0000
                         test               eax, eax                                       // 0x005bb7f2    85c0
                         {disp8} je         _jmp_addr_0x005bb837                           // 0x005bb7f4    7441
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34fa9c]         // 0x005bb7f6    8b0d9c5ad100
                         test               ecx, ecx                                       // 0x005bb7fc    85c9
                         {disp8} je         _jmp_addr_0x005bb837                           // 0x005bb7fe    7437
                         push               ecx                                            // 0x005bb800    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00002ef8]              // 0x005bb801    8b8ef82e0000
                         push               0x0000270c                                     // 0x005bb807    680c270000
                         push               eax                                            // 0x005bb80c    50
                         call               dword ptr [rdata_bytes + 0x6dc]                // 0x005bb80d    ff15dc968a00
                         {disp8} fst        dword ptr [esp + 0x04]                         // 0x005bb813    d9542404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005bb817    d81d90a38a00
                         fnstsw             ax                                             // 0x005bb81d    dfe0
                         test               ah, 0x01                                       // 0x005bb81f    f6c401
                         {disp8} je         _jmp_addr_0x005bb837                           // 0x005bb822    7413
                         call               dword ptr [__imp__GetTickCount@4]              // 0x005bb824    ff15c4918a00
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005bb82a    d9442404
                         {disp32} mov       dword ptr [esi + 0x000037ec], eax              // 0x005bb82e    8986ec370000
                         pop                esi                                            // 0x005bb834    5e
                         pop                ecx                                            // 0x005bb835    59
                         ret                                                               // 0x005bb836    c3
_jmp_addr_0x005bb837:    {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005bb837    d90590a38a00
                         pop                esi                                            // 0x005bb83d    5e
                         pop                ecx                                            // 0x005bb83e    59
                         ret                                                               // 0x005bb83f    c3
_jmp_addr_0x005bb840:    push               esi                                            // 0x005bb840    56
                         mov.s              esi, ecx                                       // 0x005bb841    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00002efc]              // 0x005bb843    8b86fc2e0000
                         push               edi                                            // 0x005bb849    57
                         xor.s              edi, edi                                       // 0x005bb84a    33ff
                         cmp.s              eax, edi                                       // 0x005bb84c    3bc7
                         {disp32} mov       dword ptr [esi + 0x000035d4], edi              // 0x005bb84e    89bed4350000
                         {disp8} je         _jmp_addr_0x005bb8a5                           // 0x005bb854    744f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34fa9c]         // 0x005bb856    8b0d9c5ad100
                         cmp.s              ecx, edi                                       // 0x005bb85c    3bcf
                         {disp8} je         _jmp_addr_0x005bb8a5                           // 0x005bb85e    7445
                         cmp                dword ptr [data_bytes + 0x34faa0], esi         // 0x005bb860    3935a05ad100
                         {disp8} jne        _jmp_addr_0x005bb8a5                           // 0x005bb866    753d
                         push               ecx                                            // 0x005bb868    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00002ef8]              // 0x005bb869    8b8ef82e0000
                         push               0x0000270c                                     // 0x005bb86f    680c270000
                         push               eax                                            // 0x005bb874    50
                         call               dword ptr [rdata_bytes + 0x7a4]                // 0x005bb875    ff15a4978a00
                         {disp32} fld       dword ptr [data_bytes + 0x34fa90]              // 0x005bb87b    d905905ad100
                         {disp32} fadd      dword ptr [rdata_bytes + 0x241c]               // 0x005bb881    d8051cb48a00
                         push               edi                                            // 0x005bb887    57
                         push               ecx                                            // 0x005bb888    51
                         mov.s              ecx, esi                                       // 0x005bb889    8bce
                         fstp               dword ptr [esp]                                // 0x005bb88b    d91c24
                         call               _jmp_addr_0x005bcbc0                           // 0x005bb88e    e82d130000
                         {disp32} mov       dword ptr [data_bytes + 0x34fa9c], edi         // 0x005bb893    893d9c5ad100
                         {disp32} mov       dword ptr [esi + 0x00002f08], edi              // 0x005bb899    89be082f0000
                         {disp32} mov       dword ptr [data_bytes + 0x34faa0], edi         // 0x005bb89f    893da05ad100
_jmp_addr_0x005bb8a5:    pop                edi                                            // 0x005bb8a5    5f
                         pop                esi                                            // 0x005bb8a6    5e
                         ret                                                               // 0x005bb8a7    c3
                         nop                                                               // 0x005bb8a8    90
                         nop                                                               // 0x005bb8a9    90
                         nop                                                               // 0x005bb8aa    90
                         nop                                                               // 0x005bb8ab    90
                         nop                                                               // 0x005bb8ac    90
                         nop                                                               // 0x005bb8ad    90
                         nop                                                               // 0x005bb8ae    90
                         nop                                                               // 0x005bb8af    90
_jmp_addr_0x005bb8b0:    mov.s              eax, ecx                                       // 0x005bb8b0    8bc1
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                    // 0x005bb8b2    8b4824
                         mov                ecx, dword ptr [ecx]                           // 0x005bb8b5    8b09
                         test               ecx, ecx                                       // 0x005bb8b7    85c9
                         {disp8} je         _jmp_addr_0x005bb8e6                           // 0x005bb8b9    742b
                         {disp8} mov        edx, dword ptr [eax + 0x28]                    // 0x005bb8bb    8b5028
                         push               0x1                                            // 0x005bb8be    6a01
                         push               0x0                                            // 0x005bb8c0    6a00
                         push               edx                                            // 0x005bb8c2    52
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005bb8c3    8b542410
                         push               edx                                            // 0x005bb8c7    52
                         {disp32} mov       edx, dword ptr [eax + 0x000028b0]              // 0x005bb8c8    8b90b0280000
                         push               edx                                            // 0x005bb8ce    52
                         {disp32} mov       edx, dword ptr [eax + 0x000028ac]              // 0x005bb8cf    8b90ac280000
                         push               edx                                            // 0x005bb8d5    52
                         {disp8} mov        edx, dword ptr [eax + 0x14]                    // 0x005bb8d6    8b5014
                         {disp32} mov       eax, dword ptr [eax + 0x000028b4]              // 0x005bb8d9    8b80b4280000
                         push               edx                                            // 0x005bb8df    52
                         push               eax                                            // 0x005bb8e0    50
                         call               _jmp_addr_0x00860e00                           // 0x005bb8e1    e81a552a00
_jmp_addr_0x005bb8e6:    ret                0x0004                                         // 0x005bb8e6    c20400
                         nop                                                               // 0x005bb8e9    90
                         nop                                                               // 0x005bb8ea    90
                         nop                                                               // 0x005bb8eb    90
                         nop                                                               // 0x005bb8ec    90
                         nop                                                               // 0x005bb8ed    90
                         nop                                                               // 0x005bb8ee    90
                         nop                                                               // 0x005bb8ef    90
_jmp_addr_0x005bb8f0:    {disp32} mov       eax, dword ptr [ecx + 0x00002c24]              // 0x005bb8f0    8b81242c0000
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005bb8f6    d9442404
                         test               eax, eax                                       // 0x005bb8fa    85c0
                         {disp8} je         _jmp_addr_0x005bb94b                           // 0x005bb8fc    744d
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57c60]              // 0x005bb8fe    d81d600c9000
                         mov                edx, 0x00000001                                // 0x005bb904    ba01000000
                         fnstsw             ax                                             // 0x005bb909    dfe0
                         test               ah, 0x41                                       // 0x005bb90b    f6c441
                         {disp8} jne        _jmp_addr_0x005bb923                           // 0x005bb90e    7513
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005bb910    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x23d4]               // 0x005bb914    d81dd4b38a00
                         fnstsw             ax                                             // 0x005bb91a    dfe0
                         test               dl, ah                                         // 0x005bb91c    84e2
                         {disp8} je         _jmp_addr_0x005bb923                           // 0x005bb91e    7403
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x005bb920    895108
_jmp_addr_0x005bb923:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005bb923    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2ae80]              // 0x005bb927    d81d803e8d00
                         fnstsw             ax                                             // 0x005bb92d    dfe0
                         test               ah, 0x41                                       // 0x005bb92f    f6c441
                         {disp8} jne        _jmp_addr_0x005bb970                           // 0x005bb932    753c
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005bb934    d9442404
                         {disp32} fcomp     dword ptr [__real@3f333333]                    // 0x005bb938    d81d38b28a00
                         fnstsw             ax                                             // 0x005bb93e    dfe0
                         test               ah, 0x01                                       // 0x005bb940    f6c401
                         {disp8} je         _jmp_addr_0x005bb970                           // 0x005bb943    742b
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x005bb945    895108
                         ret                0x0004                                         // 0x005bb948    c20400
_jmp_addr_0x005bb94b:    {disp32} fcomp     dword ptr [rdata_bytes + 0x1ec80]              // 0x005bb94b    d81d807c8c00
                         fnstsw             ax                                             // 0x005bb951    dfe0
                         test               ah, 0x41                                       // 0x005bb953    f6c441
                         {disp8} jne        _jmp_addr_0x005bb970                           // 0x005bb956    7518
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005bb958    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x23d4]               // 0x005bb95c    d81dd4b38a00
                         fnstsw             ax                                             // 0x005bb962    dfe0
                         test               ah, 0x01                                       // 0x005bb964    f6c401
                         {disp8} je         _jmp_addr_0x005bb970                           // 0x005bb967    7407
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000001             // 0x005bb969    c7410801000000
_jmp_addr_0x005bb970:    ret                0x0004                                         // 0x005bb970    c20400
                         nop                                                               // 0x005bb973    90
                         nop                                                               // 0x005bb974    90
                         nop                                                               // 0x005bb975    90
                         nop                                                               // 0x005bb976    90
                         nop                                                               // 0x005bb977    90
                         nop                                                               // 0x005bb978    90
                         nop                                                               // 0x005bb979    90
                         nop                                                               // 0x005bb97a    90
                         nop                                                               // 0x005bb97b    90
                         nop                                                               // 0x005bb97c    90
                         nop                                                               // 0x005bb97d    90
                         nop                                                               // 0x005bb97e    90
                         nop                                                               // 0x005bb97f    90
_jmp_addr_0x005bb980:    sub                esp, 0x0c                                      // 0x005bb980    83ec0c
                         push               esi                                            // 0x005bb983    56
                         mov.s              esi, ecx                                       // 0x005bb984    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x24]                    // 0x005bb986    8b4624
                         push               edi                                            // 0x005bb989    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x005bb98a    8b7c2418
                         cmp                dword ptr [eax + edi * 0x4], 0x00              // 0x005bb98e    833cb800
                         {disp32} je        _jmp_addr_0x005bbb1e                           // 0x005bb992    0f8486010000
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x005bb998    8b442424
                         {disp8} fld        dword ptr [esp + 0x1c]                         // 0x005bb99c    d944241c
                         test               eax, eax                                       // 0x005bb9a0    85c0
                         {disp32} je        _jmp_addr_0x005bbb26                           // 0x005bb9a2    0f847e010000
                         call               _jmp_addr_0x007a1400                           // 0x005bb9a8    e8535a1e00
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x005bb9ad    89442424
                         {disp8} fild       dword ptr [esp + 0x24]                         // 0x005bb9b1    db442424
                         {disp8} fsubr      dword ptr [esp + 0x1c]                         // 0x005bb9b5    d86c241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005bb9b9    d95c241c
_jmp_addr_0x005bb9bd:    {disp8} fld        dword ptr [esp + 0x1c]                         // 0x005bb9bd    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005bb9c1    d81d98a38a00
                         fnstsw             ax                                             // 0x005bb9c7    dfe0
                         test               ah, 0x01                                       // 0x005bb9c9    f6c401
                         {disp8} je         _jmp_addr_0x005bb9d6                           // 0x005bb9cc    7408
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000             // 0x005bb9ce    c744241c00000000
_jmp_addr_0x005bb9d6:    cmp                edi, 0x2e                                      // 0x005bb9d6    83ff2e
                         {disp8} jne        _jmp_addr_0x005bb9e7                           // 0x005bb9d9    750c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005bb9db    8b4c241c
                         push               ecx                                            // 0x005bb9df    51
                         mov.s              ecx, esi                                       // 0x005bb9e0    8bce
                         call               _jmp_addr_0x005bb8f0                           // 0x005bb9e2    e809ffffff
_jmp_addr_0x005bb9e7:    {disp8} mov        edx, dword ptr [esi + 0x24]                    // 0x005bb9e7    8b5624
                         mov                edi, dword ptr [edx + edi * 0x4]               // 0x005bb9ea    8b3cba
                         push               ebx                                            // 0x005bb9ed    53
                         push               ebp                                            // 0x005bb9ee    55
                         mov                ebp, dword ptr [edi]                           // 0x005bb9ef    8b2f
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                    // 0x005bb9f1    896c242c
                         {disp8} fild       dword ptr [esp + 0x2c]                         // 0x005bb9f5    db44242c
                         {disp8} fmul       dword ptr [esp + 0x24]                         // 0x005bb9f9    d84c2424
                         call               _jmp_addr_0x007a1400                           // 0x005bb9fd    e8fe591e00
                         mov.s              ebx, eax                                       // 0x005bba02    8bd8
                         {disp8} mov        eax, dword ptr [edi + 0x1c]                    // 0x005bba04    8b471c
                         dec                eax                                            // 0x005bba07    48
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x005bba08    8944242c
                         {disp8} fild       dword ptr [esp + 0x2c]                         // 0x005bba0c    db44242c
                         {disp8} fmul       dword ptr [esp + 0x28]                         // 0x005bba10    d84c2428
                         call               _jmp_addr_0x007a1400                           // 0x005bba14    e8e7591e00
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005bba19    d9442424
                         cmp.s              ebx, ebp                                       // 0x005bba1d    3bdd
                         {disp8} fmul       dword ptr [edi + 0x10]                         // 0x005bba1f    d84f10
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005bba22    d9442424
                         {disp8} fmul       dword ptr [edi + 0x14]                         // 0x005bba26    d84f14
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005bba29    d95c2414
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005bba2d    d9442424
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005bba31    8b4c2414
                         {disp8} fmul       dword ptr [edi + 0x18]                         // 0x005bba35    d84f18
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                    // 0x005bba38    894c242c
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005bba3c    d95c2418
                         {disp8} fst        dword ptr [esp + 0x24]                         // 0x005bba40    d9542424
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005bba44    d9442418
                         {disp32} fmul      dword ptr [esi + 0x00003368]                   // 0x005bba48    d88e68330000
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005bba4e    d9442414
                         {disp32} fmul      dword ptr [esi + 0x0000335c]                   // 0x005bba52    d88e5c330000
                         faddp              st(1), st                                      // 0x005bba58    dec1
                         fxch               st(1)                                          // 0x005bba5a    d9c9
                         {disp32} fmul      dword ptr [esi + 0x00003350]                   // 0x005bba5c    d88e50330000
                         faddp              st(1), st                                      // 0x005bba62    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005bba64    d9442418
                         {disp32} fmul      dword ptr [esi + 0x0000336c]                   // 0x005bba68    d88e6c330000
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005bba6e    d9442414
                         {disp32} fmul      dword ptr [esi + 0x00003360]                   // 0x005bba72    d88e60330000
                         faddp              st(1), st                                      // 0x005bba78    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005bba7a    d9442424
                         {disp32} fmul      dword ptr [esi + 0x00003354]                   // 0x005bba7e    d88e54330000
                         faddp              st(1), st                                      // 0x005bba84    dec1
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005bba86    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005bba8a    d9442418
                         {disp32} fmul      dword ptr [esi + 0x00003370]                   // 0x005bba8e    d88e70330000
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x005bba94    d944242c
                         {disp32} fmul      dword ptr [esi + 0x00003364]                   // 0x005bba98    d88e64330000
                         faddp              st(1), st                                      // 0x005bba9e    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005bbaa0    d9442424
                         {disp32} fmul      dword ptr [esi + 0x00003358]                   // 0x005bbaa4    d88e58330000
                         faddp              st(1), st                                      // 0x005bbaaa    dec1
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005bbaac    d95c2418
                         {disp32} fadd      dword ptr [esi + 0x00003374]                   // 0x005bbab0    d88674330000
                         {disp32} fstp      dword ptr [esi + 0x00003374]                   // 0x005bbab6    d99e74330000
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005bbabc    d9442414
                         {disp32} fadd      dword ptr [esi + 0x00003378]                   // 0x005bbac0    d88678330000
                         {disp32} fstp      dword ptr [esi + 0x00003378]                   // 0x005bbac6    d99e78330000
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005bbacc    d9442418
                         {disp32} fadd      dword ptr [esi + 0x0000337c]                   // 0x005bbad0    d8867c330000
                         {disp32} fstp      dword ptr [esi + 0x0000337c]                   // 0x005bbad6    d99e7c330000
                         {disp8} jl         _jmp_addr_0x005bbae1                           // 0x005bbadc    7c03
                         {disp8} lea        ebx, dword ptr [ebp + -0x01]                   // 0x005bbade    8d5dff
_jmp_addr_0x005bbae1:    cmp.s              eax, ebp                                       // 0x005bbae1    3bc5
                         {disp8} jl         _jmp_addr_0x005bbae8                           // 0x005bbae3    7c03
                         {disp8} lea        eax, dword ptr [ebp + -0x01]                   // 0x005bbae5    8d45ff
_jmp_addr_0x005bbae8:    {disp8} mov        edx, dword ptr [esi + 0x24]                    // 0x005bbae8    8b5624
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x005bbaeb    8b4c2420
                         mov                ecx, dword ptr [edx + ecx * 0x4]               // 0x005bbaef    8b0c8a
                         {disp32} mov       edx, dword ptr [esi + 0x000028b0]              // 0x005bbaf2    8b96b0280000
                         push               0x0                                            // 0x005bbaf8    6a00
                         push               0x0                                            // 0x005bbafa    6a00
                         push               ebx                                            // 0x005bbafc    53
                         push               edx                                            // 0x005bbafd    52
                         {disp32} mov       edx, dword ptr [esi + 0x000028ac]              // 0x005bbafe    8b96ac280000
                         push               edx                                            // 0x005bbb04    52
                         {disp8} mov        edx, dword ptr [esi + 0x14]                    // 0x005bbb05    8b5614
                         push               edx                                            // 0x005bbb08    52
                         {disp8} mov        edx, dword ptr [ecx + 0x34]                    // 0x005bbb09    8b5134
                         mov                eax, dword ptr [edx + eax * 0x4]               // 0x005bbb0c    8b0482
                         {disp32} mov       edx, dword ptr [esi + 0x000028b4]              // 0x005bbb0f    8b96b4280000
                         push               eax                                            // 0x005bbb15    50
                         push               edx                                            // 0x005bbb16    52
                         call               _jmp_addr_0x00861ee0                           // 0x005bbb17    e8c4632a00
                         pop                ebp                                            // 0x005bbb1c    5d
                         pop                ebx                                            // 0x005bbb1d    5b
_jmp_addr_0x005bbb1e:    pop                edi                                            // 0x005bbb1e    5f
                         pop                esi                                            // 0x005bbb1f    5e
                         add                esp, 0x0c                                      // 0x005bbb20    83c40c
                         ret                0x0010                                         // 0x005bbb23    c21000
_jmp_addr_0x005bbb26:    {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005bbb26    d81d90a38a00
                         fnstsw             ax                                             // 0x005bbb2c    dfe0
                         test               ah, 0x41                                       // 0x005bbb2e    f6c441
                         {disp32} jne       _jmp_addr_0x005bb9bd                           // 0x005bbb31    0f8586feffff
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3f800000             // 0x005bbb37    c744241c0000803f
                         {disp32} jmp       _jmp_addr_0x005bb9d6                           // 0x005bbb3f    e992feffff
                         nop                                                               // 0x005bbb44    90
                         nop                                                               // 0x005bbb45    90
                         nop                                                               // 0x005bbb46    90
                         nop                                                               // 0x005bbb47    90
                         nop                                                               // 0x005bbb48    90
                         nop                                                               // 0x005bbb49    90
                         nop                                                               // 0x005bbb4a    90
                         nop                                                               // 0x005bbb4b    90
                         nop                                                               // 0x005bbb4c    90
                         nop                                                               // 0x005bbb4d    90
                         nop                                                               // 0x005bbb4e    90
                         nop                                                               // 0x005bbb4f    90
                         push               esi                                            // 0x005bbb50    56
                         mov.s              esi, ecx                                       // 0x005bbb51    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x24]                    // 0x005bbb53    8b4624
                         push               edi                                            // 0x005bbb56    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x005bbb57    8b7c240c
                         mov                eax, dword ptr [eax + edi * 0x4]               // 0x005bbb5b    8b04b8
                         test               eax, eax                                       // 0x005bbb5e    85c0
                         {disp8} je         _jmp_addr_0x005bbbc0                           // 0x005bbb60    745e
                         mov                ecx, dword ptr [eax]                           // 0x005bbb62    8b08
                         test               ecx, ecx                                       // 0x005bbb64    85c9
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x005bbb66    894c240c
                         {disp8} je         _jmp_addr_0x005bbb77                           // 0x005bbb6a    740b
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x005bbb6c    8b442410
                         cdq                                                               // 0x005bbb70    99
                         idiv               ecx                                            // 0x005bbb71    f7f9
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x005bbb73    89542410
_jmp_addr_0x005bbb77:    cmp                edi, 0x2e                                      // 0x005bbb77    83ff2e
                         {disp8} jne        _jmp_addr_0x005bbb8f                           // 0x005bbb7a    7513
                         {disp8} fild       dword ptr [esp + 0x10]                         // 0x005bbb7c    db442410
                         push               ecx                                            // 0x005bbb80    51
                         mov.s              ecx, esi                                       // 0x005bbb81    8bce
                         {disp8} fidiv      dword ptr [esp + 0x10]                         // 0x005bbb83    da742410
                         fstp               dword ptr [esp]                                // 0x005bbb87    d91c24
                         call               _jmp_addr_0x005bb8f0                           // 0x005bbb8a    e861fdffff
_jmp_addr_0x005bbb8f:    {disp8} mov        ecx, dword ptr [esi + 0x28]                    // 0x005bbb8f    8b4e28
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005bbb92    8b542410
                         {disp32} mov       eax, dword ptr [esi + 0x000028b0]              // 0x005bbb96    8b86b0280000
                         push               0x0                                            // 0x005bbb9c    6a00
                         push               0x0                                            // 0x005bbb9e    6a00
                         push               ecx                                            // 0x005bbba0    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000028ac]              // 0x005bbba1    8b8eac280000
                         push               edx                                            // 0x005bbba7    52
                         {disp8} mov        edx, dword ptr [esi + 0x14]                    // 0x005bbba8    8b5614
                         push               eax                                            // 0x005bbbab    50
                         {disp32} mov       eax, dword ptr [esi + 0x000028b4]              // 0x005bbbac    8b86b4280000
                         push               ecx                                            // 0x005bbbb2    51
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                    // 0x005bbbb3    8b4e24
                         mov                ecx, dword ptr [ecx + edi * 0x4]               // 0x005bbbb6    8b0cb9
                         push               edx                                            // 0x005bbbb9    52
                         push               eax                                            // 0x005bbbba    50
                         call               _jmp_addr_0x00860e00                           // 0x005bbbbb    e840522a00
_jmp_addr_0x005bbbc0:    pop                edi                                            // 0x005bbbc0    5f
                         pop                esi                                            // 0x005bbbc1    5e
                         ret                0x0008                                         // 0x005bbbc2    c20800
                         nop                                                               // 0x005bbbc5    90
                         nop                                                               // 0x005bbbc6    90
                         nop                                                               // 0x005bbbc7    90
                         nop                                                               // 0x005bbbc8    90
                         nop                                                               // 0x005bbbc9    90
                         nop                                                               // 0x005bbbca    90
                         nop                                                               // 0x005bbbcb    90
                         nop                                                               // 0x005bbbcc    90
                         nop                                                               // 0x005bbbcd    90
                         nop                                                               // 0x005bbbce    90
                         nop                                                               // 0x005bbbcf    90
_jmp_addr_0x005bbbd0:    push               ecx                                            // 0x005bbbd0    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]         // 0x005bbbd1    a15850e800
                         and                eax, 0x0000ffff                                // 0x005bbbd6    25ffff0000
                         push               esi                                            // 0x005bbbdb    56
                         mov.s              esi, ecx                                       // 0x005bbbdc    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x005bbbde    8b4c240c
                         mov                edx, dword ptr [ecx]                           // 0x005bbbe2    8b11
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                    // 0x005bbbe4    8b4904
                         shr                eax, 1                                         // 0x005bbbe7    d1e8
                         sub.s              edx, eax                                       // 0x005bbbe9    2bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                    // 0x005bbbeb    89442404
                         {disp8} fild       dword ptr [esp + 0x04]                         // 0x005bbbef    db442404
                         xor.s              eax, eax                                       // 0x005bbbf3    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]           // 0x005bbbf5    66a15a50e800
                         {disp8} mov        dword ptr [esp + 0x0c], edx                    // 0x005bbbfb    8954240c
                         {disp8} fild       dword ptr [esp + 0x0c]                         // 0x005bbbff    db44240c
                         push               edi                                            // 0x005bbc03    57
                         xor.s              edi, edi                                       // 0x005bbc04    33ff
                         {disp32} mov       dword ptr [esi + 0x0000352c], edi              // 0x005bbc06    89be2c350000
                         fdiv               st, st(1)                                      // 0x005bbc0c    d8f1
                         {disp32} mov       dword ptr [esi + 0x00003528], edi              // 0x005bbc0e    89be28350000
                         {disp32} mov       dword ptr [esi + 0x00003540], edi              // 0x005bbc14    89be40350000
                         shr                eax, 1                                         // 0x005bbc1a    d1e8
                         sub.s              ecx, eax                                       // 0x005bbc1c    2bc8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x005bbc1e    894c2410
                         {disp32} mov       dword ptr [esi + 0x0000353c], edi              // 0x005bbc22    89be3c350000
                         {disp32} mov       dword ptr [esi + 0x00003524], edi              // 0x005bbc28    89be24350000
                         {disp32} mov       dword ptr [esi + 0x00003538], edi              // 0x005bbc2e    89be38350000
                         {disp32} mov       dword ptr [esi + 0x00003520], edi              // 0x005bbc34    89be20350000
                         {disp32} mov       dword ptr [esi + 0x00003534], edi              // 0x005bbc3a    89be34350000
                         {disp32} mov       dword ptr [esi + 0x0000351c], edi              // 0x005bbc40    89be1c350000
                         {disp8} fild       dword ptr [esp + 0x10]                         // 0x005bbc46    db442410
                         fdiv               st, st(2)                                      // 0x005bbc4a    d8f2
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005bbc4c    d95c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005bbc50    8b542410
                         {disp32} fst       dword ptr [esi + 0x00003518]                   // 0x005bbc54    d99618350000
                         mov.s              ecx, edx                                       // 0x005bbc5a    8bca
                         {disp32} fst       dword ptr [esi + 0x00003514]                   // 0x005bbc5c    d99614350000
                         mov.s              eax, edx                                       // 0x005bbc62    8bc2
                         {disp32} fstp      dword ptr [esi + 0x00003530]                   // 0x005bbc64    d99e30350000
                         {disp32} mov       dword ptr [esi + 0x00003560], ecx              // 0x005bbc6a    898e60350000
                         mov.s              ecx, esi                                       // 0x005bbc70    8bce
                         fstp               st(0)                                          // 0x005bbc72    ddd8
                         {disp32} mov       dword ptr [esi + 0x00003548], edx              // 0x005bbc74    899648350000
                         {disp32} mov       dword ptr [esi + 0x00003544], eax              // 0x005bbc7a    898644350000
                         {disp32} mov       dword ptr [esi + 0x0000355c], edi              // 0x005bbc80    89be5c350000
                         {disp32} mov       dword ptr [esi + 0x00003558], edi              // 0x005bbc86    89be58350000
                         {disp32} mov       dword ptr [esi + 0x00003570], edi              // 0x005bbc8c    89be70350000
                         {disp32} mov       dword ptr [esi + 0x0000356c], edi              // 0x005bbc92    89be6c350000
                         {disp32} mov       dword ptr [esi + 0x00003554], edi              // 0x005bbc98    89be54350000
                         {disp32} mov       dword ptr [esi + 0x00003568], edi              // 0x005bbc9e    89be68350000
                         {disp32} mov       dword ptr [esi + 0x00003550], edi              // 0x005bbca4    89be50350000
                         {disp32} mov       dword ptr [esi + 0x00003564], edi              // 0x005bbcaa    89be64350000
                         {disp32} mov       dword ptr [esi + 0x0000354c], edi              // 0x005bbcb0    89be4c350000
                         call               _jmp_addr_0x005bbcd0                           // 0x005bbcb6    e815000000
                         push               edi                                            // 0x005bbcbb    57
                         push               0x4                                            // 0x005bbcbc    6a04
                         mov.s              ecx, esi                                       // 0x005bbcbe    8bce
                         call               _jmp_addr_0x005bd4a0                           // 0x005bbcc0    e8db170000
                         pop                edi                                            // 0x005bbcc5    5f
                         pop                esi                                            // 0x005bbcc6    5e
                         pop                ecx                                            // 0x005bbcc7    59
                         ret                0x0004                                         // 0x005bbcc8    c20400
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                           // 0x005bbccb    e8295be4ff
_jmp_addr_0x005bbcd0:    sub                esp, 0x0c                                      // 0x005bbcd0    83ec0c
                         {disp32} fld       dword ptr [ecx + 0x00003514]                   // 0x005bbcd3    d98114350000
                         push               esi                                            // 0x005bbcd9    56
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x005bbcda    d95c2404
                         {disp32} fld       dword ptr [ecx + 0x00003544]                   // 0x005bbcde    d98144350000
                         {disp32} lea       esi, dword ptr [ecx + 0x000028bc]              // 0x005bbce4    8db1bc280000
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x005bbcea    d95c2408
                         {disp32} fld       dword ptr [ecx + 0x00003574]                   // 0x005bbcee    d98174350000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x005bbcf4    8b4c2404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x005bbcf8    8b542408
                         mov.s              eax, esi                                       // 0x005bbcfc    8bc6
                         mov                dword ptr [eax], ecx                           // 0x005bbcfe    8908
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x005bbd00    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x005bbd04    8b4c240c
                         push               edi                                            // 0x005bbd08    57
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x005bbd09    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                    // 0x005bbd0c    894808
                         {disp8} lea        edi, dword ptr [esi + 0x0c]                    // 0x005bbd0f    8d7e0c
                         mov                ecx, 0x0000005d                                // 0x005bbd12    b95d000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005bbd17    f3a5
                         pop                edi                                            // 0x005bbd19    5f
                         pop                esi                                            // 0x005bbd1a    5e
                         add                esp, 0x0c                                      // 0x005bbd1b    83c40c
                         ret                                                               // 0x005bbd1e    c3
                         nop                                                               // 0x005bbd1f    90
_jmp_addr_0x005bbd20:    cmp                dword ptr [ecx + 0x00003490], 0x00000120       // 0x005bbd20    81b99034000020010000
                         {disp32} je        _jmp_addr_0x005bbdc8                           // 0x005bbd2a    0f8498000000
                         {disp32} fld       dword ptr [ecx + 0x000034ec]                   // 0x005bbd30    d981ec340000
                         fabs                                                              // 0x005bbd36    d9e1
                         {disp32} fld       dword ptr [ecx + 0x000034f0]                   // 0x005bbd38    d981f0340000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c64]              // 0x005bbd3e    d80d640c9000
                         fabs                                                              // 0x005bbd44    d9e1
                         fcompp                                                            // 0x005bbd46    ded9
                         fnstsw             ax                                             // 0x005bbd48    dfe0
                         test               ah, 0x01                                       // 0x005bbd4a    f6c401
                         {disp8} je         _jmp_addr_0x005bbd8c                           // 0x005bbd4d    743d
                         {disp32} fld       dword ptr [ecx + 0x000034ec]                   // 0x005bbd4f    d981ec340000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005bbd55    d81d98a38a00
                         fnstsw             ax                                             // 0x005bbd5b    dfe0
                         test               ah, 0x41                                       // 0x005bbd5d    f6c441
                         {disp8} jne        _jmp_addr_0x005bbd77                           // 0x005bbd60    7515
                         {disp32} mov       dword ptr [ecx + 0x000034f4], 0x00000003       // 0x005bbd62    c781f434000003000000
                         {disp32} mov       dword ptr [ecx + 0x000034ec], 0x3f851eb8       // 0x005bbd6c    c781ec340000b81e853f
                         ret                                                               // 0x005bbd76    c3
_jmp_addr_0x005bbd77:    {disp32} mov       dword ptr [ecx + 0x000034f4], 0x00000001       // 0x005bbd77    c781f434000001000000
                         {disp32} mov       dword ptr [ecx + 0x000034ec], 0xbf851eb8       // 0x005bbd81    c781ec340000b81e85bf
                         ret                                                               // 0x005bbd8b    c3
_jmp_addr_0x005bbd8c:    {disp32} fld       dword ptr [ecx + 0x000034f0]                   // 0x005bbd8c    d981f0340000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005bbd92    d81d98a38a00
                         fnstsw             ax                                             // 0x005bbd98    dfe0
                         test               ah, 0x41                                       // 0x005bbd9a    f6c441
                         {disp8} jne        _jmp_addr_0x005bbdb4                           // 0x005bbd9d    7515
                         {disp32} mov       dword ptr [ecx + 0x000034f4], 0x00000000       // 0x005bbd9f    c781f434000000000000
                         {disp32} mov       dword ptr [ecx + 0x000034f0], 0x3f47ae14       // 0x005bbda9    c781f034000014ae473f
                         ret                                                               // 0x005bbdb3    c3
_jmp_addr_0x005bbdb4:    {disp32} mov       dword ptr [ecx + 0x000034f4], 0x00000002       // 0x005bbdb4    c781f434000002000000
                         {disp32} mov       dword ptr [ecx + 0x000034f0], 0xbf47ae14       // 0x005bbdbe    c781f034000014ae47bf
_jmp_addr_0x005bbdc8:    ret                                                               // 0x005bbdc8    c3
                         nop                                                               // 0x005bbdc9    90
                         nop                                                               // 0x005bbdca    90
                         nop                                                               // 0x005bbdcb    90
                         nop                                                               // 0x005bbdcc    90
                         nop                                                               // 0x005bbdcd    90
                         nop                                                               // 0x005bbdce    90
                         nop                                                               // 0x005bbdcf    90
_jmp_addr_0x005bbdd0:    push               ecx                                            // 0x005bbdd0    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]         // 0x005bbdd1    a15850e800
                         push               ebx                                            // 0x005bbdd6    53
                         push               esi                                            // 0x005bbdd7    56
                         mov.s              esi, ecx                                       // 0x005bbdd8    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005bbdda    8b4c2410
                         mov                edx, dword ptr [ecx]                           // 0x005bbdde    8b11
                         and                eax, 0x0000ffff                                // 0x005bbde0    25ffff0000
                         shr                eax, 1                                         // 0x005bbde5    d1e8
                         sub.s              edx, eax                                       // 0x005bbde7    2bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x005bbde9    89442408
                         {disp8} fild       dword ptr [esp + 0x08]                         // 0x005bbded    db442408
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x005bbdf1    89542410
                         {disp8} fild       dword ptr [esp + 0x10]                         // 0x005bbdf5    db442410
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                    // 0x005bbdf9    8b4904
                         xor.s              eax, eax                                       // 0x005bbdfc    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]           // 0x005bbdfe    66a15a50e800
                         fdiv               st, st(1)                                      // 0x005bbe04    d8f1
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                    // 0x005bbe06    8b5c2414
                         push               edi                                            // 0x005bbe0a    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                    // 0x005bbe0b    8b7c241c
                         push               edi                                            // 0x005bbe0f    57
                         push               ebx                                            // 0x005bbe10    53
                         shr                eax, 1                                         // 0x005bbe11    d1e8
                         sub.s              ecx, eax                                       // 0x005bbe13    2bc8
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x005bbe15    894c2414
                         mov.s              ecx, esi                                       // 0x005bbe19    8bce
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005bbe1b    d95c241c
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x005bbe1f    db442414
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x005bbe23    8b54241c
                         push               edx                                            // 0x005bbe27    52
                         fdiv               st, st(1)                                      // 0x005bbe28    d8f1
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005bbe2a    d95c2418
                         fstp               st(0)                                          // 0x005bbe2e    ddd8
                         call               _jmp_addr_0x005b96d0                           // 0x005bbe30    e89bd8ffff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x005bbe35    8b44240c
                         push               edi                                            // 0x005bbe39    57
                         push               ebx                                            // 0x005bbe3a    53
                         push               eax                                            // 0x005bbe3b    50
                         mov.s              ecx, esi                                       // 0x005bbe3c    8bce
                         call               _jmp_addr_0x005b98d0                           // 0x005bbe3e    e88ddaffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005bbe43    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x005bbe47    8b54240c
                         {disp32} mov       dword ptr [esi + 0x000034ec], ecx              // 0x005bbe4b    898eec340000
                         mov.s              ecx, esi                                       // 0x005bbe51    8bce
                         {disp32} mov       dword ptr [esi + 0x000034f0], edx              // 0x005bbe53    8996f0340000
                         call               _jmp_addr_0x005bbd20                           // 0x005bbe59    e8c2feffff
                         push               0x0                                            // 0x005bbe5e    6a00
                         push               0x4                                            // 0x005bbe60    6a04
                         mov.s              ecx, esi                                       // 0x005bbe62    8bce
                         call               _jmp_addr_0x005bd4a0                           // 0x005bbe64    e837160000
                         pop                edi                                            // 0x005bbe69    5f
                         pop                esi                                            // 0x005bbe6a    5e
                         pop                ebx                                            // 0x005bbe6b    5b
                         pop                ecx                                            // 0x005bbe6c    59
                         ret                0x000c                                         // 0x005bbe6d    c20c00
_jmp_addr_0x005bbe70:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005bbe70    8b442404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x005bbe74    8b542408
                         sub                esp, 0x08                                      // 0x005bbe78    83ec08
                         push               esi                                            // 0x005bbe7b    56
                         mov.s              esi, ecx                                       // 0x005bbe7c    8bf1
                         mov.s              ecx, eax                                       // 0x005bbe7e    8bc8
                         {disp32} mov       dword ptr [esi + 0x000034ec], eax              // 0x005bbe80    8986ec340000
                         {disp32} mov       dword ptr [esi + 0x000034fc], ecx              // 0x005bbe86    898efc340000
                         mov.s              eax, edx                                       // 0x005bbe8c    8bc2
                         mov.s              ecx, esi                                       // 0x005bbe8e    8bce
                         {disp32} mov       dword ptr [esi + 0x000034f0], edx              // 0x005bbe90    8996f0340000
                         {disp32} mov       dword ptr [esi + 0x00003500], eax              // 0x005bbe96    898600350000
                         call               _jmp_addr_0x005bbd20                           // 0x005bbe9c    e87ffeffff
                         {disp8} mov        al, byte ptr [esp + 0x18]                      // 0x005bbea1    8a442418
                         test               al, al                                         // 0x005bbea5    84c0
                         {disp8} je         _jmp_addr_0x005bbecc                           // 0x005bbea7    7423
                         {disp32} mov       ecx, dword ptr [esi + 0x000034f4]              // 0x005bbea9    8b8ef4340000
                         push               ecx                                            // 0x005bbeaf    51
                         {disp8} lea        edx, dword ptr [esp + 0x08]                    // 0x005bbeb0    8d542408
                         push               edx                                            // 0x005bbeb4    52
                         call               _jmp_addr_0x005bd440                           // 0x005bbeb5    e886150000
                         add                esp, 0x08                                      // 0x005bbeba    83c408
                         push               eax                                            // 0x005bbebd    50
                         mov.s              ecx, esi                                       // 0x005bbebe    8bce
                         call               _jmp_addr_0x005bbbd0                           // 0x005bbec0    e80bfdffff
                         mov.s              ecx, esi                                       // 0x005bbec5    8bce
                         call               _jmp_addr_0x005bbcd0                           // 0x005bbec7    e804feffff
_jmp_addr_0x005bbecc:    push               0x0                                            // 0x005bbecc    6a00
                         push               0x00000100                                     // 0x005bbece    6800010000
                         mov.s              ecx, esi                                       // 0x005bbed3    8bce
                         call               _jmp_addr_0x005bd4a0                           // 0x005bbed5    e8c6150000
                         pop                esi                                            // 0x005bbeda    5e
                         add                esp, 0x08                                      // 0x005bbedb    83c408
                         ret                0x000c                                         // 0x005bbede    c20c00
                         nop                                                               // 0x005bbee1    90
                         nop                                                               // 0x005bbee2    90
                         nop                                                               // 0x005bbee3    90
                         nop                                                               // 0x005bbee4    90
                         nop                                                               // 0x005bbee5    90
                         nop                                                               // 0x005bbee6    90
                         nop                                                               // 0x005bbee7    90
                         nop                                                               // 0x005bbee8    90
                         nop                                                               // 0x005bbee9    90
                         nop                                                               // 0x005bbeea    90
                         nop                                                               // 0x005bbeeb    90
                         nop                                                               // 0x005bbeec    90
                         nop                                                               // 0x005bbeed    90
                         nop                                                               // 0x005bbeee    90
                         nop                                                               // 0x005bbeef    90
_jmp_addr_0x005bbef0:    {disp32} mov       eax, dword ptr [ecx + 0x00003490]              // 0x005bbef0    8b8190340000
                         cmp                eax, 0x00000080                                // 0x005bbef6    3d80000000
                         mov                edx, 0x00000200                                // 0x005bbefb    ba00020000
                         {disp8} je         _jmp_addr_0x005bbf0e                           // 0x005bbf00    740c
                         cmp                dword ptr [ecx + 0x00003494], 0x00000080       // 0x005bbf02    81b99434000080000000
                         {disp8} jne        _jmp_addr_0x005bbf16                           // 0x005bbf0c    7508
_jmp_addr_0x005bbf0e:    cmp                dword ptr [ecx + 0x00003510], edx              // 0x005bbf0e    399110350000
                         {disp8} je         _jmp_addr_0x005bbf25                           // 0x005bbf14    740f
_jmp_addr_0x005bbf16:    cmp.s              eax, edx                                       // 0x005bbf16    3bc2
                         {disp8} je         _jmp_addr_0x005bbf25                           // 0x005bbf18    740b
                         cmp                dword ptr [ecx + 0x00003494], edx              // 0x005bbf1a    399194340000
                         {disp8} je         _jmp_addr_0x005bbf25                           // 0x005bbf20    7403
                         xor.s              al, al                                         // 0x005bbf22    32c0
                         ret                                                               // 0x005bbf24    c3
_jmp_addr_0x005bbf25:    mov                al, 0x01                                       // 0x005bbf25    b001
                         ret                                                               // 0x005bbf27    c3
                         nop                                                               // 0x005bbf28    90
                         nop                                                               // 0x005bbf29    90
                         nop                                                               // 0x005bbf2a    90
                         nop                                                               // 0x005bbf2b    90
                         nop                                                               // 0x005bbf2c    90
                         nop                                                               // 0x005bbf2d    90
                         nop                                                               // 0x005bbf2e    90
                         nop                                                               // 0x005bbf2f    90
_jmp_addr_0x005bbf30:    push               esi                                            // 0x005bbf30    56
                         push               edi                                            // 0x005bbf31    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x005bbf32    8b7c2414
                         test               edi, edi                                       // 0x005bbf36    85ff
                         mov.s              esi, ecx                                       // 0x005bbf38    8bf1
                         {disp8} jne        _jmp_addr_0x005bbf54                           // 0x005bbf3a    7518
                         call               _jmp_addr_0x005bbef0                           // 0x005bbf3c    e8afffffff
                         test               al, al                                         // 0x005bbf41    84c0
                         {disp8} je         _jmp_addr_0x005bbf54                           // 0x005bbf43    740f
                         push               edi                                            // 0x005bbf45    57
                         push               0x4                                            // 0x005bbf46    6a04
                         mov.s              ecx, esi                                       // 0x005bbf48    8bce
                         call               _jmp_addr_0x005bd4a0                           // 0x005bbf4a    e851150000
                         pop                edi                                            // 0x005bbf4f    5f
                         pop                esi                                            // 0x005bbf50    5e
                         ret                0x0010                                         // 0x005bbf51    c21000
_jmp_addr_0x005bbf54:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005bbf54    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x005bbf58    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x005bbf5c    8b542418
                         push               0x0                                            // 0x005bbf60    6a00
                         {disp32} mov       dword ptr [esi + 0x00003500], ecx              // 0x005bbf62    898e00350000
                         push               0x00000080                                     // 0x005bbf68    6880000000
                         mov.s              ecx, esi                                       // 0x005bbf6d    8bce
                         {disp32} mov       dword ptr [esi + 0x000034fc], eax              // 0x005bbf6f    8986fc340000
                         {disp32} mov       dword ptr [esi + 0x00003510], 0x00000200       // 0x005bbf75    c7861035000000020000
                         {disp32} mov       dword ptr [esi + 0x00003508], edx              // 0x005bbf7f    899608350000
                         {disp32} mov       dword ptr [esi + 0x0000350c], edi              // 0x005bbf85    89be0c350000
                         call               _jmp_addr_0x005bd4a0                           // 0x005bbf8b    e810150000
                         pop                edi                                            // 0x005bbf90    5f
                         pop                esi                                            // 0x005bbf91    5e
                         ret                0x0010                                         // 0x005bbf92    c21000
                         nop                                                               // 0x005bbf95    90
                         nop                                                               // 0x005bbf96    90
                         nop                                                               // 0x005bbf97    90
                         nop                                                               // 0x005bbf98    90
                         nop                                                               // 0x005bbf99    90
                         nop                                                               // 0x005bbf9a    90
                         nop                                                               // 0x005bbf9b    90
                         nop                                                               // 0x005bbf9c    90
                         nop                                                               // 0x005bbf9d    90
                         nop                                                               // 0x005bbf9e    90
                         nop                                                               // 0x005bbf9f    90
_jmp_addr_0x005bbfa0:    push               ecx                                            // 0x005bbfa0    51
                         xor.s              edx, edx                                       // 0x005bbfa1    33d2
                         {disp32} mov       byte ptr [ecx + 0x000035a4], 0x00              // 0x005bbfa3    c681a435000000
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]           // 0x005bbfaa    668b155a50e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]         // 0x005bbfb1    a15850e800
                         push               esi                                            // 0x005bbfb6    56
                         push               edi                                            // 0x005bbfb7    57
                         and                eax, 0x0000ffff                                // 0x005bbfb8    25ffff0000
                         shr                eax, 1                                         // 0x005bbfbd    d1e8
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x005bbfbf    89442408
                         {disp8} fild       dword ptr [esp + 0x08]                         // 0x005bbfc3    db442408
                         mov.s              esi, edx                                       // 0x005bbfc7    8bf2
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005bbfc9    8b542410
                         {disp8} mov        edi, dword ptr [edx + 0x04]                    // 0x005bbfcd    8b7a04
                         mov                edx, dword ptr [edx]                           // 0x005bbfd0    8b12
                         shr                esi, 1                                         // 0x005bbfd2    d1ee
                         sub.s              edi, esi                                       // 0x005bbfd4    2bfe
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x005bbfd6    897c2410
                         {disp8} fild       dword ptr [esp + 0x10]                         // 0x005bbfda    db442410
                         sub.s              edx, eax                                       // 0x005bbfde    2bd0
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x005bbfe0    89542410
                         push               0x0                                            // 0x005bbfe4    6a00
                         fdiv               st, st(1)                                      // 0x005bbfe6    d8f1
                         push               0x8                                            // 0x005bbfe8    6a08
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x005bbfea    db442418
                         fdiv               st, st(2)                                      // 0x005bbfee    d8f2
                         {disp32} fstp      dword ptr [ecx + 0x000035ac]                   // 0x005bbff0    d999ac350000
                         {disp32} fstp      dword ptr [ecx + 0x000035b0]                   // 0x005bbff6    d999b0350000
                         fstp               st(0)                                          // 0x005bbffc    ddd8
                         call               _jmp_addr_0x005bd4a0                           // 0x005bbffe    e89d140000
                         pop                edi                                            // 0x005bc003    5f
                         pop                esi                                            // 0x005bc004    5e
                         pop                ecx                                            // 0x005bc005    59
                         ret                0x0004                                         // 0x005bc006    c20400
                         nop                                                               // 0x005bc009    90
                         nop                                                               // 0x005bc00a    90
                         nop                                                               // 0x005bc00b    90
                         nop                                                               // 0x005bc00c    90
                         nop                                                               // 0x005bc00d    90
                         nop                                                               // 0x005bc00e    90
                         nop                                                               // 0x005bc00f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005bc010    8b442404
                         sub                esp, 0x1c                                      // 0x005bc014    83ec1c
                         test               eax, eax                                       // 0x005bc017    85c0
                         push               esi                                            // 0x005bc019    56
                         mov.s              esi, ecx                                       // 0x005bc01a    8bf1
                         push               0x0                                            // 0x005bc01c    6a00
                         {disp8} je         _jmp_addr_0x005bc089                           // 0x005bc01e    7469
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                    // 0x005bc020    8d4c2428
                         push               ecx                                            // 0x005bc024    51
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                    // 0x005bc025    8d54240c
                         push               edx                                            // 0x005bc029    52
                         push               eax                                            // 0x005bc02a    50
                         mov.s              ecx, esi                                       // 0x005bc02b    8bce
                         call               _jmp_addr_0x005bd390                           // 0x005bc02d    e85e130000
                         test               eax, eax                                       // 0x005bc032    85c0
                         {disp8} je         _jmp_addr_0x005bc087                           // 0x005bc034    7451
                         {disp32} fld       dword ptr [esi + 0x00003574]                   // 0x005bc036    d98674350000
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x005bc03c    8b442424
                         push               0x0                                            // 0x005bc040    6a00
                         fchs                                                              // 0x005bc042    d9e0
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1ebdc]              // 0x005bc044    d825dc7b8c00
                         push               ecx                                            // 0x005bc04a    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x005bc04b    8b4c240c
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                    // 0x005bc04f    8d54241c
                         fstp               dword ptr [esp]                                // 0x005bc053    d91c24
                         push               eax                                            // 0x005bc056    50
                         push               ecx                                            // 0x005bc057    51
                         push               edx                                            // 0x005bc058    52
                         mov.s              ecx, esi                                       // 0x005bc059    8bce
                         call               _jmp_addr_0x005bd2a0                           // 0x005bc05b    e840120000
                         mov                ecx, dword ptr [eax]                           // 0x005bc060    8b08
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x005bc062    894c2408
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x005bc066    8b5004
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                    // 0x005bc069    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x0c], edx                    // 0x005bc06d    8954240c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005bc071    8b4008
                         push               ecx                                            // 0x005bc074    51
                         mov.s              ecx, esi                                       // 0x005bc075    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x005bc077    89442414
                         call               _jmp_addr_0x005bc6c0                           // 0x005bc07b    e840060000
                         pop                esi                                            // 0x005bc080    5e
                         add                esp, 0x1c                                      // 0x005bc081    83c41c
                         ret                0x0004                                         // 0x005bc084    c20400
_jmp_addr_0x005bc087:    push               0x0                                            // 0x005bc087    6a00
_jmp_addr_0x005bc089:    mov.s              ecx, esi                                       // 0x005bc089    8bce
                         call               _jmp_addr_0x005bc6c0                           // 0x005bc08b    e830060000
                         pop                esi                                            // 0x005bc090    5e
                         add                esp, 0x1c                                      // 0x005bc091    83c41c
                         ret                0x0004                                         // 0x005bc094    c20400
                         nop                                                               // 0x005bc097    90
                         nop                                                               // 0x005bc098    90
                         nop                                                               // 0x005bc099    90
                         nop                                                               // 0x005bc09a    90
                         nop                                                               // 0x005bc09b    90
                         nop                                                               // 0x005bc09c    90
                         nop                                                               // 0x005bc09d    90
                         nop                                                               // 0x005bc09e    90
                         nop                                                               // 0x005bc09f    90
_jmp_addr_0x005bc0a0:    sub                esp, 0x30                                      // 0x005bc0a0    83ec30
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf2c4]         // 0x005bc0a3    8b15c452e800
                         push               ebx                                            // 0x005bc0a9    53
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4bf2c0]         // 0x005bc0aa    8b1dc052e800
                         push               ebp                                            // 0x005bc0b0    55
                         push               esi                                            // 0x005bc0b1    56
                         mov.s              esi, ecx                                       // 0x005bc0b2    8bf1
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]         // 0x005bc0b4    8b0d5850e800
                         and                ecx, 0x0000ffff                                // 0x005bc0ba    81e1ffff0000
                         shr                ecx, 1                                         // 0x005bc0c0    d1e9
                         mov.s              eax, ebx                                       // 0x005bc0c2    8bc3
                         sub.s              eax, ecx                                       // 0x005bc0c4    2bc1
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x005bc0c6    89542414
                         cdq                                                               // 0x005bc0ca    99
                         idiv               ecx                                            // 0x005bc0cb    f7f9
                         push               edi                                            // 0x005bc0cd    57
                         xor.s              edi, edi                                       // 0x005bc0ce    33ff
                         {disp32} mov       di, word ptr [data_bytes + 0x4bf05a]           // 0x005bc0d0    668b3d5a50e800
                         {disp32} mov       ebp, dword ptr [esi + 0x00002f78]              // 0x005bc0d7    8bae782f0000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000002             // 0x005bc0dd    c744241002000000
                         shr                edi, 1                                         // 0x005bc0e5    d1ef
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x005bc0e7    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x005bc0eb    db442414
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c4]         // 0x005bc0ef    a1c452e800
                         sub.s              eax, edi                                       // 0x005bc0f4    2bc7
                         cdq                                                               // 0x005bc0f6    99
                         {disp32} fsub      dword ptr [esi + 0x00003514]                   // 0x005bc0f7    d8a614350000
                         idiv               edi                                            // 0x005bc0fd    f7ff
                         {disp8} mov        dword ptr [esp + 0x14], ebx                    // 0x005bc0ff    895c2414
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x005bc103    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x005bc107    db442414
                         mov.s              eax, ebp                                       // 0x005bc10b    8bc5
                         sub                eax, 0x00                                      // 0x005bc10d    83e800
                         {disp32} fsub      dword ptr [esi + 0x00003544]                   // 0x005bc110    d8a644350000
                         fld                st(0)                                          // 0x005bc116    d9c0
                         fmul               st, st(1)                                      // 0x005bc118    d8c9
                         fld                st(2)                                          // 0x005bc11a    d9c2
                         fmul               st, st(3)                                      // 0x005bc11c    d8cb
                         faddp              st(1), st                                      // 0x005bc11e    dec1
                         fsqrt                                                             // 0x005bc120    d9fa
                         fstp               st(2)                                          // 0x005bc122    ddda
                         fstp               st(0)                                          // 0x005bc124    ddd8
                         {disp8} je         _jmp_addr_0x005bc147                           // 0x005bc126    741f
                         sub                eax, 0x02                                      // 0x005bc128    83e802
                         {disp8} je         _jmp_addr_0x005bc13d                           // 0x005bc12b    7410
                         sub                eax, 0x02                                      // 0x005bc12d    83e802
                         {disp8} jne        _jmp_addr_0x005bc17d                           // 0x005bc130    754b
                         mov                ebp, 0x00000004                                // 0x005bc132    bd04000000
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x005bc137    896c2410
                         {disp8} jmp        _jmp_addr_0x005bc17d                           // 0x005bc13b    eb40
_jmp_addr_0x005bc13d:    {disp8} mov        dword ptr [esp + 0x10], 0x00000001             // 0x005bc13d    c744241001000000
                         {disp8} jmp        _jmp_addr_0x005bc17d                           // 0x005bc145    eb36
_jmp_addr_0x005bc147:    {disp8} mov        al, byte ptr [esp + 0x48]                      // 0x005bc147    8a442448
                         test               al, al                                         // 0x005bc14b    84c0
                         {disp8} je         _jmp_addr_0x005bc15e                           // 0x005bc14d    740f
                         mov                ebp, 0x00000002                                // 0x005bc14f    bd02000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000001             // 0x005bc154    c744241001000000
                         {disp8} jmp        _jmp_addr_0x005bc16b                           // 0x005bc15c    eb0d
_jmp_addr_0x005bc15e:    mov                ebp, 0x00000001                                // 0x005bc15e    bd01000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000002             // 0x005bc163    c744241002000000
_jmp_addr_0x005bc16b:    test               byte ptr [esi + 0x00003490], 0x08              // 0x005bc16b    f6869034000008
                         {disp8} je         _jmp_addr_0x005bc17d                           // 0x005bc172    7409
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x005bc174    896c2410
                         mov                ebp, 0x00000003                                // 0x005bc178    bd03000000
_jmp_addr_0x005bc17d:    {disp8} mov        edi, dword ptr [esp + 0x54]                    // 0x005bc17d    8b7c2454
                         test               edi, edi                                       // 0x005bc181    85ff
                         {disp8} mov        bl, byte ptr [esp + 0x4c]                      // 0x005bc183    8a5c244c
                         {disp8} je         _jmp_addr_0x005bc19a                           // 0x005bc187    7411
                         xor.s              eax, eax                                       // 0x005bc189    33c0
                         test               bl, bl                                         // 0x005bc18b    84db
                         sete               al                                             // 0x005bc18d    0f94c0
                         mov                ebp, 0x00000005                                // 0x005bc190    bd05000000
                         inc                eax                                            // 0x005bc195    40
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x005bc196    89442410
_jmp_addr_0x005bc19a:    {disp32} fld       dword ptr [esi + 0x00003340]                   // 0x005bc19a    d98640330000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2418]               // 0x005bc1a0    d81d18b48a00
                         fnstsw             ax                                             // 0x005bc1a6    dfe0
                         test               ah, 0x41                                       // 0x005bc1a8    f6c441
                         {disp8} jne        _jmp_addr_0x005bc200                           // 0x005bc1ab    7553
                         {disp32} fcomp     dword ptr [__real@3e999999]                    // 0x005bc1ad    d81d3cb28a00
                         fnstsw             ax                                             // 0x005bc1b3    dfe0
                         test               ah, 0x01                                       // 0x005bc1b5    f6c401
                         {disp8} je         _jmp_addr_0x005bc202                           // 0x005bc1b8    7448
                         {disp32} fld       dword ptr [esi + 0x00003344]                   // 0x005bc1ba    d98644330000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005bc1c0    d81d90a38a00
                         fnstsw             ax                                             // 0x005bc1c6    dfe0
                         test               ah, 0x01                                       // 0x005bc1c8    f6c401
                         {disp8} je         _jmp_addr_0x005bc202                           // 0x005bc1cb    7435
                         push               0x3f800000                                     // 0x005bc1cd    680000803f
                         push               0x0                                            // 0x005bc1d2    6a00
                         call               _Random__Fff@8                                 // 0x005bc1d4    e8a70f2600
                         {disp32} fcomp     dword ptr [__real@3e999999]                    // 0x005bc1d9    d81d3cb28a00
                         fnstsw             ax                                             // 0x005bc1df    dfe0
                         test               ah, 0x01                                       // 0x005bc1e1    f6c401
                         {disp8} je         _jmp_addr_0x005bc202                           // 0x005bc1e4    741c
                         {disp32} fld       dword ptr [esi + 0x00003340]                   // 0x005bc1e6    d98640330000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2418]               // 0x005bc1ec    d82518b48a00
                         {disp32} fmul      dword ptr [__real@3e4ccccd]                    // 0x005bc1f2    d80d44b28a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]               // 0x005bc1f8    d80578b48a00
                         {disp8} jmp        _jmp_addr_0x005bc212                           // 0x005bc1fe    eb12
_jmp_addr_0x005bc200:    fstp               st(0)                                          // 0x005bc200    ddd8
_jmp_addr_0x005bc202:    {disp8} fld        dword ptr [esp + 0x44]                         // 0x005bc202    d9442444
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005bc206    d80db4a38a00
                         {disp32} fsubr     dword ptr [esi + 0x00003344]                   // 0x005bc20c    d8ae44330000
_jmp_addr_0x005bc212:    {disp32} fstp      dword ptr [esi + 0x00003344]                   // 0x005bc212    d99e44330000
                         {disp32} fld       dword ptr [esi + 0x00003344]                   // 0x005bc218    d98644330000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005bc21e    d81d98a38a00
                         fnstsw             ax                                             // 0x005bc224    dfe0
                         test               ah, 0x01                                       // 0x005bc226    f6c401
                         {disp8} je         _jmp_addr_0x005bc235                           // 0x005bc229    740a
                         {disp32} mov       dword ptr [esi + 0x00003344], 0x00000000       // 0x005bc22b    c7864433000000000000
_jmp_addr_0x005bc235:    {disp32} fld       dword ptr [esi + 0x00003344]                   // 0x005bc235    d98644330000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]              // 0x005bc23b    d81d502c8c00
                         fnstsw             ax                                             // 0x005bc241    dfe0
                         test               ah, 0x41                                       // 0x005bc243    f6c441
                         {disp8} jne        _jmp_addr_0x005bc252                           // 0x005bc246    750a
                         {disp32} mov       dword ptr [esi + 0x00003344], 0x40400000       // 0x005bc248    c7864433000000004040
_jmp_addr_0x005bc252:    {disp8} mov        al, byte ptr [esp + 0x48]                      // 0x005bc252    8a442448
                         test               al, al                                         // 0x005bc256    84c0
                         {disp8} jne        _jmp_addr_0x005bc281                           // 0x005bc258    7527
                         {disp32} fld       dword ptr [esi + 0x00003344]                   // 0x005bc25a    d98644330000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005bc260    d81d90a38a00
                         fnstsw             ax                                             // 0x005bc266    dfe0
                         test               ah, 0x41                                       // 0x005bc268    f6c441
                         {disp8} jne        _jmp_addr_0x005bc281                           // 0x005bc26b    7514
                         mov.s              ecx, esi                                       // 0x005bc26d    8bce
                         call               _jmp_addr_0x005bb730                           // 0x005bc26f    e8bcf4ffff
                         test               eax, eax                                       // 0x005bc274    85c0
                         {disp8} jne        _jmp_addr_0x005bc281                           // 0x005bc276    7509
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x005bc278    896c2410
                         mov                ebp, 0x00000004                                // 0x005bc27c    bd04000000
_jmp_addr_0x005bc281:    mov.s              ecx, esi                                       // 0x005bc281    8bce
                         call               _jmp_addr_0x005bb730                           // 0x005bc283    e8a8f4ffff
                         test               eax, eax                                       // 0x005bc288    85c0
                         {disp8} jne        _jmp_addr_0x005bc298                           // 0x005bc28a    750c
                         cmp                dword ptr [esi + 0x00003490], 0x00000200       // 0x005bc28c    81be9034000000020000
                         {disp8} jne        _jmp_addr_0x005bc2a1                           // 0x005bc296    7509
_jmp_addr_0x005bc298:    mov                ebp, 0x00000002                                // 0x005bc298    bd02000000
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x005bc29d    896c2410
_jmp_addr_0x005bc2a1:    {disp32} fld       dword ptr [esi + 0x0000334c]                   // 0x005bc2a1    d9864c330000
                         {disp8} fsub       dword ptr [esp + 0x44]                         // 0x005bc2a7    d8642444
                         {disp32} fst       dword ptr [esi + 0x0000334c]                   // 0x005bc2ab    d9964c330000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005bc2b1    d81d98a38a00
                         fnstsw             ax                                             // 0x005bc2b7    dfe0
                         test               ah, 0x01                                       // 0x005bc2b9    f6c401
                         {disp8} je         _jmp_addr_0x005bc2fa                           // 0x005bc2bc    743c
                         {disp32} mov       dl, byte ptr [esi + 0x00003348]                // 0x005bc2be    8a9648330000
                         test               dl, dl                                         // 0x005bc2c4    84d2
                         sete               al                                             // 0x005bc2c6    0f94c0
                         test               al, al                                         // 0x005bc2c9    84c0
                         {disp32} mov       byte ptr [esi + 0x00003348], al                // 0x005bc2cb    888648330000
                         {disp8} je         _jmp_addr_0x005bc2df                           // 0x005bc2d1    740c
                         push               0x40800000                                     // 0x005bc2d3    6800008040
                         push               0x40000000                                     // 0x005bc2d8    6800000040
                         {disp8} jmp        _jmp_addr_0x005bc2e9                           // 0x005bc2dd    eb0a
_jmp_addr_0x005bc2df:    push               0x40c00000                                     // 0x005bc2df    680000c040
                         push               0x40400000                                     // 0x005bc2e4    6800004040
_jmp_addr_0x005bc2e9:    call               _Random__Fff@8                                 // 0x005bc2e9    e8920e2600
                         {disp32} fadd      dword ptr [esi + 0x0000334c]                   // 0x005bc2ee    d8864c330000
                         {disp32} fstp      dword ptr [esi + 0x0000334c]                   // 0x005bc2f4    d99e4c330000
_jmp_addr_0x005bc2fa:    {disp32} mov       al, byte ptr [esi + 0x00003348]                // 0x005bc2fa    8a8648330000
                         test               al, al                                         // 0x005bc300    84c0
                         {disp8} je         _jmp_addr_0x005bc308                           // 0x005bc302    7404
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x005bc304    8b6c2410
_jmp_addr_0x005bc308:    cmp                ebp, 0x01                                      // 0x005bc308    83fd01
                         {disp8} jne        _jmp_addr_0x005bc313                           // 0x005bc30b    7506
                         test               bl, bl                                         // 0x005bc30d    84db
                         {disp8} jne        _jmp_addr_0x005bc326                           // 0x005bc30f    7515
                         {disp8} jmp        _jmp_addr_0x005bc321                           // 0x005bc311    eb0e
_jmp_addr_0x005bc313:    cmp                ebp, 0x03                                      // 0x005bc313    83fd03
                         {disp8} jne        _jmp_addr_0x005bc326                           // 0x005bc316    750e
                         test               byte ptr [esi + 0x00003490], 0x08              // 0x005bc318    f6869034000008
                         {disp8} jne        _jmp_addr_0x005bc326                           // 0x005bc31f    7505
_jmp_addr_0x005bc321:    mov                ebp, 0x00000002                                // 0x005bc321    bd02000000
_jmp_addr_0x005bc326:    {disp8} lea        eax, dword ptr [ebp + -0x01]                   // 0x005bc326    8d45ff
                         cmp                eax, 0x04                                      // 0x005bc329    83f804
                         {disp32} ja        _jmp_addr_0x005bc45d                           // 0x005bc32c    0f872b010000
                         jmp                dword ptr [eax*4 + 0x5bc48c]                   // 0x005bc332    ff24858cc45b00
                         test               edi, edi                                       // 0x005bc339    85ff
                         {disp32} je        _jmp_addr_0x005bc47f                           // 0x005bc33b    0f843e010000
                         push               0x1                                            // 0x005bc341    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                    // 0x005bc343    8d4c244c
                         push               ecx                                            // 0x005bc347    51
                         {disp8} lea        edx, dword ptr [esp + 0x54]                    // 0x005bc348    8d542454
                         push               edx                                            // 0x005bc34c    52
                         push               edi                                            // 0x005bc34d    57
                         mov.s              ecx, esi                                       // 0x005bc34e    8bce
                         call               _jmp_addr_0x005bd390                           // 0x005bc350    e83b100000
                         {disp32} fld       dword ptr [esi + 0x00003574]                   // 0x005bc355    d98674350000
                         {disp32} mov       eax, dword ptr [esi + 0x000035b0]              // 0x005bc35b    8b86b0350000
                         fchs                                                              // 0x005bc361    d9e0
                         {disp32} fsub      dword ptr [_rdata_float0p5]                    // 0x005bc363    d825b4a38a00
                         push               0x0                                            // 0x005bc369    6a00
                         push               ecx                                            // 0x005bc36b    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000035ac]              // 0x005bc36c    8b8eac350000
                         fstp               dword ptr [esp]                                // 0x005bc372    d91c24
                         push               eax                                            // 0x005bc375    50
                         push               ecx                                            // 0x005bc376    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                    // 0x005bc377    8d542438
                         push               edx                                            // 0x005bc37b    52
                         mov.s              ecx, esi                                       // 0x005bc37c    8bce
                         call               _jmp_addr_0x005bd2a0                           // 0x005bc37e    e81d0f0000
                         mov                ecx, dword ptr [eax]                           // 0x005bc383    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x005bc385    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x005bc389    8b5004
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x005bc38c    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x005bc390    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005bc394    8b4008
                         push               ecx                                            // 0x005bc397    51
                         mov.s              ecx, esi                                       // 0x005bc398    8bce
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x005bc39a    89442428
                         call               _jmp_addr_0x005bc6c0                           // 0x005bc39e    e81d030000
                         pop                edi                                            // 0x005bc3a3    5f
                         pop                esi                                            // 0x005bc3a4    5e
                         pop                ebp                                            // 0x005bc3a5    5d
                         pop                ebx                                            // 0x005bc3a6    5b
                         add                esp, 0x30                                      // 0x005bc3a7    83c430
                         ret                0x0014                                         // 0x005bc3aa    c21400
                         mov.s              ecx, esi                                       // 0x005bc3ad    8bce
                         call               _jmp_addr_0x005bc720                           // 0x005bc3af    e86c030000
                         pop                edi                                            // 0x005bc3b4    5f
                         pop                esi                                            // 0x005bc3b5    5e
                         pop                ebp                                            // 0x005bc3b6    5d
                         pop                ebx                                            // 0x005bc3b7    5b
                         add                esp, 0x30                                      // 0x005bc3b8    83c430
                         ret                0x0014                                         // 0x005bc3bb    c21400
                         {disp32} fld       dword ptr [esi + 0x00003574]                   // 0x005bc3be    d98674350000
                         {disp32} mov       edx, dword ptr [esi + 0x000035b0]              // 0x005bc3c4    8b96b0350000
                         {disp32} mov       eax, dword ptr [esi + 0x000035ac]              // 0x005bc3ca    8b86ac350000
                         fchs                                                              // 0x005bc3d0    d9e0
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1ea44]              // 0x005bc3d2    d825447a8c00
                         push               0x0                                            // 0x005bc3d8    6a00
                         push               ecx                                            // 0x005bc3da    51
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                    // 0x005bc3db    8d4c243c
                         fstp               dword ptr [esp]                                // 0x005bc3df    d91c24
                         push               edx                                            // 0x005bc3e2    52
                         push               eax                                            // 0x005bc3e3    50
                         push               ecx                                            // 0x005bc3e4    51
                         mov.s              ecx, esi                                       // 0x005bc3e5    8bce
                         call               _jmp_addr_0x005bd2a0                           // 0x005bc3e7    e8b40e0000
                         mov                edx, dword ptr [eax]                           // 0x005bc3ec    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x005bc3ee    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x005bc3f2    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                    // 0x005bc3f5    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                    // 0x005bc3f9    8b5008
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x005bc3fc    8d44241c
                         push               eax                                            // 0x005bc400    50
                         mov.s              ecx, esi                                       // 0x005bc401    8bce
                         {disp8} mov        dword ptr [esp + 0x28], edx                    // 0x005bc403    89542428
                         call               _jmp_addr_0x005bc6c0                           // 0x005bc407    e8b4020000
                         pop                edi                                            // 0x005bc40c    5f
                         pop                esi                                            // 0x005bc40d    5e
                         pop                ebp                                            // 0x005bc40e    5d
                         pop                ebx                                            // 0x005bc40f    5b
                         add                esp, 0x30                                      // 0x005bc410    83c430
                         ret                0x0014                                         // 0x005bc413    c21400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c0]         // 0x005bc416    8b0dc052e800
                         {disp32} fld       dword ptr [esi + 0x000035b8]                   // 0x005bc41c    d986b8350000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf2c4]         // 0x005bc422    8b15c452e800
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba04]              // 0x005bc428    d80d044a8c00
                         push               ecx                                            // 0x005bc42e    51
                         {disp8} mov        dword ptr [esp + 0x18], ecx                    // 0x005bc42f    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x005bc433    8954241c
                         fstp               dword ptr [esp]                                // 0x005bc437    d91c24
                         {disp8} lea        edx, dword ptr [esp + 0x20]                    // 0x005bc43a    8d542420
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x005bc43e    8d4c2418
                         call               _jmp_addr_0x0081b370                           // 0x005bc442    e829ef2500
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x005bc447    8d44241c
                         push               eax                                            // 0x005bc44b    50
                         mov.s              ecx, esi                                       // 0x005bc44c    8bce
                         call               _jmp_addr_0x005bc6c0                           // 0x005bc44e    e86d020000
                         pop                edi                                            // 0x005bc453    5f
                         pop                esi                                            // 0x005bc454    5e
                         pop                ebp                                            // 0x005bc455    5d
                         pop                ebx                                            // 0x005bc456    5b
                         add                esp, 0x30                                      // 0x005bc457    83c430
                         ret                0x0014                                         // 0x005bc45a    c21400
_jmp_addr_0x005bc45d:    {disp8} mov        al, byte ptr [esp + 0x50]                      // 0x005bc45d    8a442450
                         test               al, al                                         // 0x005bc461    84c0
                         {disp8} je         _jmp_addr_0x005bc476                           // 0x005bc463    7411
                         mov.s              ecx, esi                                       // 0x005bc465    8bce
                         call               _jmp_addr_0x005bc700                           // 0x005bc467    e894020000
                         pop                edi                                            // 0x005bc46c    5f
                         pop                esi                                            // 0x005bc46d    5e
                         pop                ebp                                            // 0x005bc46e    5d
                         pop                ebx                                            // 0x005bc46f    5b
                         add                esp, 0x30                                      // 0x005bc470    83c430
                         ret                0x0014                                         // 0x005bc473    c21400
_jmp_addr_0x005bc476:    push               0x0                                            // 0x005bc476    6a00
                         mov.s              ecx, esi                                       // 0x005bc478    8bce
                         call               _jmp_addr_0x005bc6c0                           // 0x005bc47a    e841020000
_jmp_addr_0x005bc47f:    pop                edi                                            // 0x005bc47f    5f
                         pop                esi                                            // 0x005bc480    5e
                         pop                ebp                                            // 0x005bc481    5d
                         pop                ebx                                            // 0x005bc482    5b
                         add                esp, 0x30                                      // 0x005bc483    83c430
                         ret                0x0014                                         // 0x005bc486    c21400

// Snippet: db, [0x005bc489, 0x005bc48c)
.byte 0x8d, 0x49, 0x00            // 0x005bc489

// Snippet: jmptbl, [0x005bc48c, 0x005bc4a0)
.byte 0xad, 0xc3, 0x5b, 0x00      // 0x005bc48c
.byte 0x5d, 0xc4, 0x5b, 0x00      // 0x005bc490
.byte 0xbe, 0xc3, 0x5b, 0x00      // 0x005bc494
.byte 0x16, 0xc4, 0x5b, 0x00      // 0x005bc498
.byte 0x39, 0xc3, 0x5b, 0x00      // 0x005bc49c

