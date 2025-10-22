.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0047f1c0
.extern _jmp_addr_0x0047f3a0
.extern _jmp_addr_0x004813b0
.extern ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ
.extern _jmp_addr_0x004846e0
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x004875d0
.extern _jmp_addr_0x00487b30
.extern _jmp_addr_0x00487ce0
.extern _jmp_addr_0x00487fa0
.extern _jmp_addr_0x00488320
.extern _jmp_addr_0x004884a0
.extern _jmp_addr_0x004887a0
.extern _jmp_addr_0x004890f0
.extern _jmp_addr_0x00489180
.extern _jmp_addr_0x00489540
.extern _jmp_addr_0x0048a5e0
.extern _jmp_addr_0x0048b970
.extern _jmp_addr_0x0048bab0
.extern _jmp_addr_0x0048bcc0
.extern _jmp_addr_0x0048c6c0
.extern _jmp_addr_0x0048ceb0
.extern _jmp_addr_0x0048d250
.extern _jmp_addr_0x0048d2a0
.extern _jmp_addr_0x0048dab0
.extern _jmp_addr_0x0048dc70
.extern _jmp_addr_0x004ee130
.extern _jmp_addr_0x004ee530
.extern _jmp_addr_0x005df310
.extern _jmp_addr_0x00617a10
.extern _jmp_addr_0x00617a80
.extern _jmp_addr_0x006182f0
.extern ?MorphTexture@Morphable@@UAEXXZ
.extern @GetAnim__9MorphableFll@16
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x006e8130
.extern _jmp_addr_0x006e8160
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x00865020
.extern _jmp_addr_0x00866a90
.extern _jmp_addr_0x00867040

.globl _jmp_addr_0x00485df0
.globl _jmp_addr_0x00485f40
.globl _jmp_addr_0x00486160
.globl _jmp_addr_0x00486390
.globl _jmp_addr_0x004866f0
.globl _jmp_addr_0x004867b0
.globl _jmp_addr_0x004867f0
.globl _jmp_addr_0x00486800
.globl _jmp_addr_0x00486a00

start_0x00485df0_0x004875d0:
// Snippet: asm, [0x00485df0, 0x0048752a)
_jmp_addr_0x00485df0:    sub                esp, 0x28                                            // 0x00485df0    83ec28
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x00485df3    8b44242c
                         sub                eax, 0x0e                                            // 0x00485df7    83e80e
                         push               esi                                                  // 0x00485dfa    56
                         mov.s              esi, ecx                                             // 0x00485dfb    8bf1
                         {disp8} mov        dword ptr [esp + 0x1c], 0xbecccccc                   // 0x00485dfd    c744241cccccccbe
                         {disp8} mov        dword ptr [esp + 0x20], 0xbecccccc                   // 0x00485e05    c7442420ccccccbe
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f666666                   // 0x00485e0d    c74424246666663f
                         {disp8} mov        dword ptr [esp + 0x28], 0x3f666666                   // 0x00485e15    c74424286666663f
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x00485e1d    c744240400000000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x00485e25    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00485e2d    c744240c00000000
                         {disp8} je         _jmp_addr_0x00485e49                                 // 0x00485e35    7412
                         sub                eax, 0x02                                            // 0x00485e37    83e802
                         {disp8} jne        _jmp_addr_0x00485e58                                 // 0x00485e3a    751c
                         call               _jmp_addr_0x004ee530                                 // 0x00485e3c    e8ef860600
                         {disp32} lea       eax, dword ptr [esi + 0x00004a44]                    // 0x00485e41    8d86444a0000
                         {disp8} jmp        _jmp_addr_0x00485e5c                                 // 0x00485e47    eb13
_jmp_addr_0x00485e49:    mov.s              ecx, esi                                             // 0x00485e49    8bce
                         call               _jmp_addr_0x004ee130                                 // 0x00485e4b    e8e0820600
                         {disp32} lea       eax, dword ptr [esi + 0x000049c8]                    // 0x00485e50    8d86c8490000
                         {disp8} jmp        _jmp_addr_0x00485e5c                                 // 0x00485e56    eb04
_jmp_addr_0x00485e58:    {disp8} mov        eax, dword ptr [esp + 0x30]                          // 0x00485e58    8b442430
_jmp_addr_0x00485e5c:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x00485e5c    8d4c241c
                         add                eax, 0x08                                            // 0x00485e60    83c008
                         mov                edx, 0x00000004                                      // 0x00485e63    ba04000000
_jmp_addr_0x00485e68:    fld                dword ptr [ecx]                                      // 0x00485e68    d901
                         add                ecx, 0x4                                             // 0x00485e6a    83c104
                         {disp32} fmul      dword ptr [esi + 0x00000094]                         // 0x00485e6d    d88e94000000
                         add                eax, 0x0c                                            // 0x00485e73    83c00c
                         dec                edx                                                  // 0x00485e76    4a
                         fld                st(0)                                                // 0x00485e77    d9c0
                         {disp8} fmul       dword ptr [eax + -0x14]                              // 0x00485e79    d848ec
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00485e7c    d95c2410
                         fld                st(0)                                                // 0x00485e80    d9c0
                         {disp8} fmul       dword ptr [eax + -0x10]                              // 0x00485e82    d848f0
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00485e85    d95c2414
                         {disp8} fmul       dword ptr [eax + -0x0c]                              // 0x00485e89    d848f4
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00485e8c    d9442410
                         {disp8} fadd       dword ptr [esp + 0x04]                               // 0x00485e90    d8442404
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x00485e94    d95c2404
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x00485e98    d9442408
                         {disp8} fadd       dword ptr [esp + 0x14]                               // 0x00485e9c    d8442414
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x00485ea0    d95c2408
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x00485ea4    d944240c
                         fadd               st, st(1)                                            // 0x00485ea8    d8c1
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00485eaa    d95c240c
                         fstp               st(0)                                                // 0x00485eae    ddd8
                         {disp8} jne        _jmp_addr_0x00485e68                                 // 0x00485eb0    75b6
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x00485eb2    d944240c
                         pop                esi                                                  // 0x00485eb6    5e
                         {disp8} fmul       dword ptr [esp + 0x08]                               // 0x00485eb7    d84c2408
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x00485ebb    d9442404
                         {disp8} fmul       dword ptr [esp + 0x04]                               // 0x00485ebf    d84c2404
                         faddp              st(1), st                                            // 0x00485ec3    dec1
                         {disp8} fld        dword ptr [esp + 0x00]                               // 0x00485ec5    d9442400
                         {disp8} fmul       dword ptr [esp + 0x00]                               // 0x00485ec9    d84c2400
                         faddp              st(1), st                                            // 0x00485ecd    dec1
                         fsqrt                                                                   // 0x00485ecf    d9fa
                         add                esp, 0x28                                            // 0x00485ed1    83c428
                         ret                0x0004                                               // 0x00485ed4    c20400
                         nop                                                                     // 0x00485ed7    90
                         nop                                                                     // 0x00485ed8    90
                         nop                                                                     // 0x00485ed9    90
                         nop                                                                     // 0x00485eda    90
                         nop                                                                     // 0x00485edb    90
                         nop                                                                     // 0x00485edc    90
                         nop                                                                     // 0x00485edd    90
                         nop                                                                     // 0x00485ede    90
                         nop                                                                     // 0x00485edf    90
_jmp_addr_0x00485ee0:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x00485ee0    8b442404
                         sub                eax, 0x0e                                            // 0x00485ee4    83e80e
                         push               esi                                                  // 0x00485ee7    56
                         mov.s              esi, ecx                                             // 0x00485ee8    8bf1
                         {disp8} je         _jmp_addr_0x00485efe                                 // 0x00485eea    7412
                         sub                eax, 0x02                                            // 0x00485eec    83e802
                         {disp8} jne        _jmp_addr_0x00485f0d                                 // 0x00485eef    751c
                         call               _jmp_addr_0x004ee530                                 // 0x00485ef1    e83a860600
                         {disp32} lea       eax, dword ptr [esi + 0x00004a44]                    // 0x00485ef6    8d86444a0000
                         {disp8} jmp        _jmp_addr_0x00485f11                                 // 0x00485efc    eb13
_jmp_addr_0x00485efe:    mov.s              ecx, esi                                             // 0x00485efe    8bce
                         call               _jmp_addr_0x004ee130                                 // 0x00485f00    e82b820600
                         {disp32} lea       eax, dword ptr [esi + 0x000049c8]                    // 0x00485f05    8d86c8490000
                         {disp8} jmp        _jmp_addr_0x00485f11                                 // 0x00485f0b    eb04
_jmp_addr_0x00485f0d:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x00485f0d    8b442408
_jmp_addr_0x00485f11:    {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x00485f11    d90598a38a00
                         add                eax, 0x08                                            // 0x00485f17    83c008
                         mov                ecx, 0x00000004                                      // 0x00485f1a    b904000000
_jmp_addr_0x00485f1f:    {disp32} fld       dword ptr [esi + 0x00000094]                         // 0x00485f1f    d98694000000
                         add                eax, 0x0c                                            // 0x00485f25    83c00c
                         dec                ecx                                                  // 0x00485f28    49
                         {disp8} fmul       dword ptr [eax + -0x0c]                              // 0x00485f29    d848f4
                         fsubp              st(1), st                                            // 0x00485f2c    dee9
                         {disp8} jne        _jmp_addr_0x00485f1f                                 // 0x00485f2e    75ef
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]                     // 0x00485f30    d80dd4b38a00
                         pop                esi                                                  // 0x00485f36    5e
                         ret                0x0004                                               // 0x00485f37    c20400
                         call               dword ptr [__imp__DirectXSetupGetVersion]            // 0x00485f3a    ff153c908a00
_jmp_addr_0x00485f40:    sub                esp, 0x1c                                            // 0x00485f40    83ec1c
                         push               ebx                                                  // 0x00485f43    53
                         push               ebp                                                  // 0x00485f44    55
                         push               esi                                                  // 0x00485f45    56
                         push               edi                                                  // 0x00485f46    57
                         mov.s              esi, ecx                                             // 0x00485f47    8bf1
                         call               _jmp_addr_0x004ee130                                 // 0x00485f49    e8e2810600
                         {disp8} mov        ebx, dword ptr [esp + 0x30]                          // 0x00485f4e    8b5c2430
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                          // 0x00485f52    8b431c
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                          // 0x00485f55    8d7b14
                         mov.s              ecx, edi                                             // 0x00485f58    8bcf
                         {disp8} mov        dword ptr [esp + 0x30], eax                          // 0x00485f5a    89442430
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00485f5e    e82dd13700
                         {disp8} fadd       dword ptr [esp + 0x30]                               // 0x00485f63    d8442430
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                          // 0x00485f67    8d4c2420
                         push               ecx                                                  // 0x00485f6b    51
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00485f6c    d95c241c
                         fild               dword ptr [edi]                                      // 0x00485f70    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00485f72    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00485f78    d95c2418
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x00485f7c    db4704
                         {disp8} lea        edi, dword ptr [esi + 0x78]                          // 0x00485f7f    8d7e78
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00485f82    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00485f88    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00485f8c    d9442418
                         fsub               dword ptr [edi]                                      // 0x00485f90    d827
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00485f92    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00485f96    d944241c
                         {disp8} fsub       dword ptr [edi + 0x04]                               // 0x00485f9a    d86704
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00485f9d    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x00485fa1    d9442420
                         {disp8} fsub       dword ptr [edi + 0x08]                               // 0x00485fa5    d86708
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x00485fa8    d95c242c
                         call               _jmp_addr_0x006e8160                                 // 0x00485fac    e8af212600
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x00485fb1    d95c2434
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]                    // 0x00485fb5    8b8694490000
                         add                esp, 0x04                                            // 0x00485fbb    83c404
                         cmp                eax, 0x01                                            // 0x00485fbe    83f801
                         {disp8} jne        _jmp_addr_0x00485fe6                                 // 0x00485fc1    7523
                         {disp8} mov        edx, dword ptr [esp + 0x38]                          // 0x00485fc3    8b542438
                         push               edx                                                  // 0x00485fc7    52
                         mov.s              ecx, esi                                             // 0x00485fc8    8bce
                         call               _jmp_addr_0x00485ee0                                 // 0x00485fca    e811ffffff
                         {disp8} fcomp      dword ptr [esp + 0x30]                               // 0x00485fcf    d85c2430
                         fnstsw             ax                                                   // 0x00485fd3    dfe0
                         test               ah, 0x41                                             // 0x00485fd5    f6c441
                         {disp8} jne        _jmp_addr_0x00486013                                 // 0x00485fd8    7539
_jmp_addr_0x00485fda:    pop                edi                                                  // 0x00485fda    5f
                         pop                esi                                                  // 0x00485fdb    5e
                         pop                ebp                                                  // 0x00485fdc    5d
                         xor.s              eax, eax                                             // 0x00485fdd    33c0
                         pop                ebx                                                  // 0x00485fdf    5b
                         add                esp, 0x1c                                            // 0x00485fe0    83c41c
                         ret                0x000c                                               // 0x00485fe3    c20c00
_jmp_addr_0x00485fe6:    {disp8} mov        ebp, dword ptr [esp + 0x38]                          // 0x00485fe6    8b6c2438
                         push               ebp                                                  // 0x00485fea    55
                         mov.s              ecx, esi                                             // 0x00485feb    8bce
                         call               _jmp_addr_0x00485df0                                 // 0x00485fed    e8fefdffff
                         {disp8} fcomp      dword ptr [esp + 0x30]                               // 0x00485ff2    d85c2430
                         fnstsw             ax                                                   // 0x00485ff6    dfe0
                         test               ah, 0x41                                             // 0x00485ff8    f6c441
                         {disp8} je         _jmp_addr_0x00485fda                                 // 0x00485ffb    74dd
                         {disp8} lea        eax, dword ptr [esp + 0x38]                          // 0x00485ffd    8d442438
                         push               eax                                                  // 0x00486001    50
                         push               ebp                                                  // 0x00486002    55
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x00486003    8d4c241c
                         push               ecx                                                  // 0x00486007    51
                         mov.s              ecx, esi                                             // 0x00486008    8bce
                         call               _jmp_addr_0x00486160                                 // 0x0048600a    e851010000
                         test               eax, eax                                             // 0x0048600f    85c0
                         {disp8} jne        _jmp_addr_0x00485fda                                 // 0x00486011    75c7
_jmp_addr_0x00486013:    push               0x0                                                  // 0x00486013    6a00
                         push               0x009c8de8                                           // 0x00486015    68e88d9c00
                         push               0x009c7f50                                           // 0x0048601a    68507f9c00
                         push               0x0                                                  // 0x0048601f    6a00
                         push               ebx                                                  // 0x00486021    53
                         call               ___RTDynamicCast                                     // 0x00486022    e8f2f93300
                         mov.s              ebx, eax                                             // 0x00486027    8bd8
                         add                esp, 0x14                                            // 0x00486029    83c414
                         test               ebx, ebx                                             // 0x0048602c    85db
                         {disp32} je        _jmp_addr_0x00486132                                 // 0x0048602e    0f84fe000000
                         mov                edx, dword ptr [ebx]                                 // 0x00486034    8b13
                         mov.s              ecx, ebx                                             // 0x00486036    8bcb
                         call               dword ptr [edx + 0x174]                              // 0x00486038    ff9274010000
                         test               eax, eax                                             // 0x0048603e    85c0
                         {disp32} je        _jmp_addr_0x00486132                                 // 0x00486040    0f84ec000000
                         {disp32} fld       dword ptr [esi + 0x00004848]                         // 0x00486046    d98648480000
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x0048604c    8d442414
                         {disp32} fmul      dword ptr [esi + 0x0000483c]                         // 0x00486050    d88e3c480000
                         push               edi                                                  // 0x00486056    57
                         push               eax                                                  // 0x00486057    50
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x00486058    d95c2440
                         {disp32} fld       dword ptr [esi + 0x00000090]                         // 0x0048605c    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1651c]                    // 0x00486062    d80d1cf58b00
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x00486068    d95c2438
                         call               _jmp_addr_0x006e8130                                 // 0x0048606c    e8bf202600
                         {disp8} fcomp      dword ptr [esp + 0x38]                               // 0x00486071    d85c2438
                         add                esp, 0x08                                            // 0x00486075    83c408
                         fnstsw             ax                                                   // 0x00486078    dfe0
                         test               ah, 0x01                                             // 0x0048607a    f6c401
                         {disp8} je         _jmp_addr_0x0048608f                                 // 0x0048607d    7410
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x0048607f    8d4c2414
                         push               edi                                                  // 0x00486083    57
                         push               ecx                                                  // 0x00486084    51
                         call               _jmp_addr_0x006e8130                                 // 0x00486085    e8a6202600
                         add                esp, 0x08                                            // 0x0048608a    83c408
                         {disp8} jmp        _jmp_addr_0x00486093                                 // 0x0048608d    eb04
_jmp_addr_0x0048608f:    {disp8} fld        dword ptr [esp + 0x30]                               // 0x0048608f    d9442430
_jmp_addr_0x00486093:    {disp8} fld        dword ptr [esp + 0x38]                               // 0x00486093    d9442438
                         {disp8} fmul       dword ptr [esp + 0x38]                               // 0x00486097    d84c2438
                         {disp32} fld       dword ptr [esi + 0x0000484c]                         // 0x0048609b    d9864c480000
                         fadd.s             st(0), st(0)                                         // 0x004860a1    dcc0
                         fdivp              st(1), st                                            // 0x004860a3    def9
                         fld                st(1)                                                // 0x004860a5    d9c1
                         fcomp              st(1)                                                // 0x004860a7    d8d9
                         fnstsw             ax                                                   // 0x004860a9    dfe0
                         test               ah, 0x01                                             // 0x004860ab    f6c401
                         {disp8} je         _jmp_addr_0x004860b8                                 // 0x004860ae    7408
                         fstp               st(0)                                                // 0x004860b0    ddd8
                         {disp8} fst        dword ptr [esp + 0x10]                               // 0x004860b2    d9542410
                         {disp8} jmp        _jmp_addr_0x004860bc                                 // 0x004860b6    eb04
_jmp_addr_0x004860b8:    {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004860b8    d95c2410
_jmp_addr_0x004860bc:    {disp8} fsub       dword ptr [esp + 0x10]                               // 0x004860bc    d8642410
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x004860c0    8d542414
                         push               edx                                                  // 0x004860c4    52
                         push               ecx                                                  // 0x004860c5    51
                         {disp8} fdiv       dword ptr [esp + 0x40]                               // 0x004860c6    d8742440
                         {disp8} fld        dword ptr [esp + 0x40]                               // 0x004860ca    d9442440
                         {disp32} fdiv      dword ptr [esi + 0x0000484c]                         // 0x004860ce    d8b64c480000
                         faddp              st(1), st                                            // 0x004860d4    dec1
                         fstp               dword ptr [esp]                                      // 0x004860d6    d91c24
                         push               ebx                                                  // 0x004860d9    53
                         call               _jmp_addr_0x0047f3a0                                 // 0x004860da    e8c192ffff
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x004860df    8d442420
                         push               edi                                                  // 0x004860e3    57
                         push               eax                                                  // 0x004860e4    50
                         call               _jmp_addr_0x006e8130                                 // 0x004860e5    e846202600
                         {disp8} fcomp      dword ptr [esp + 0x44]                               // 0x004860ea    d85c2444
                         add                esp, 0x14                                            // 0x004860ee    83c414
                         fnstsw             ax                                                   // 0x004860f1    dfe0
                         test               ah, 0x01                                             // 0x004860f3    f6c401
                         {disp8} je         _jmp_addr_0x00486108                                 // 0x004860f6    7410
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x004860f8    8d4c2414
                         push               edi                                                  // 0x004860fc    57
                         push               ecx                                                  // 0x004860fd    51
                         call               _jmp_addr_0x006e8130                                 // 0x004860fe    e82d202600
                         add                esp, 0x08                                            // 0x00486103    83c408
                         {disp8} jmp        _jmp_addr_0x0048610c                                 // 0x00486106    eb04
_jmp_addr_0x00486108:    {disp8} fld        dword ptr [esp + 0x30]                               // 0x00486108    d9442430
_jmp_addr_0x0048610c:    {disp8} fsub       dword ptr [esp + 0x10]                               // 0x0048610c    d8642410
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x00486110    8d542414
                         push               edx                                                  // 0x00486114    52
                         push               ecx                                                  // 0x00486115    51
                         {disp8} fdiv       dword ptr [esp + 0x40]                               // 0x00486116    d8742440
                         {disp8} fld        dword ptr [esp + 0x40]                               // 0x0048611a    d9442440
                         {disp32} fdiv      dword ptr [esi + 0x0000484c]                         // 0x0048611e    d8b64c480000
                         faddp              st(1), st                                            // 0x00486124    dec1
                         fstp               dword ptr [esp]                                      // 0x00486126    d91c24
                         push               ebx                                                  // 0x00486129    53
                         call               _jmp_addr_0x0047f3a0                                 // 0x0048612a    e87192ffff
                         add                esp, 0x0c                                            // 0x0048612f    83c40c
_jmp_addr_0x00486132:    {disp8} mov        eax, dword ptr [esp + 0x34]                          // 0x00486132    8b442434
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00486136    d9442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x0048613a    8b4c2418
                         fstp               dword ptr [eax]                                      // 0x0048613e    d918
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x00486140    8b54241c
                         pop                edi                                                  // 0x00486144    5f
                         pop                esi                                                  // 0x00486145    5e
                         pop                ebp                                                  // 0x00486146    5d
                         {disp8} mov        dword ptr [eax + 0x04], ecx                          // 0x00486147    894804
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x0048614a    895008
                         mov                eax, 0x00000001                                      // 0x0048614d    b801000000
                         pop                ebx                                                  // 0x00486152    5b
                         add                esp, 0x1c                                            // 0x00486153    83c41c
                         ret                0x000c                                               // 0x00486156    c20c00
                         nop                                                                     // 0x00486159    90
                         nop                                                                     // 0x0048615a    90
                         nop                                                                     // 0x0048615b    90
                         nop                                                                     // 0x0048615c    90
                         nop                                                                     // 0x0048615d    90
                         nop                                                                     // 0x0048615e    90
                         nop                                                                     // 0x0048615f    90
_jmp_addr_0x00486160:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x00486160    8b442408
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x00486164    d90598a38a00
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0048616a    d90598a38a00
                         sub                esp, 0x6c                                            // 0x00486170    83ec6c
                         cmp                eax, 0x0e                                            // 0x00486173    83f80e
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x00486176    d90598a38a00
                         push               ebx                                                  // 0x0048617c    53
                         push               ebp                                                  // 0x0048617d    55
                         push               esi                                                  // 0x0048617e    56
                         mov.s              esi, ecx                                             // 0x0048617f    8bf1
                         push               edi                                                  // 0x00486181    57
                         {disp32} lea       edi, dword ptr [esi + 0x000049c8]                    // 0x00486182    8dbec8490000
                         {disp8} je         _jmp_addr_0x00486190                                 // 0x00486188    7406
                         {disp32} lea       edi, dword ptr [esi + 0x00004a44]                    // 0x0048618a    8dbe444a0000
_jmp_addr_0x00486190:    {disp32} fld       dword ptr [esi + 0x00000094]                         // 0x00486190    d98694000000
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                          // 0x00486196    8d54244c
                         {disp8} lea        eax, dword ptr [edi + 0x08]                          // 0x0048619a    8d4708
                         sub.s              edx, edi                                             // 0x0048619d    2bd7
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                          // 0x0048619f    8d4c244c
                         mov                edi, 0x00000004                                      // 0x004861a3    bf04000000
_jmp_addr_0x004861a8:    fld                st(0)                                                // 0x004861a8    d9c0
                         mov.s              ebx, ecx                                             // 0x004861aa    8bd9
                         {disp8} fmul       dword ptr [eax + -0x08]                              // 0x004861ac    d848f8
                         add                eax, 0x0c                                            // 0x004861af    83c00c
                         add                ecx, 0xc                                             // 0x004861b2    83c10c
                         dec                edi                                                  // 0x004861b5    4f
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x004861b6    d95c241c
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                          // 0x004861ba    8b6c241c
                         fld                st(0)                                                // 0x004861be    d9c0
                         mov                dword ptr [ebx], ebp                                 // 0x004861c0    892b
                         {disp8} fmul       dword ptr [eax + -0x10]                              // 0x004861c2    d848f0
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x004861c5    d95c2420
                         {disp8} mov        ebp, dword ptr [esp + 0x20]                          // 0x004861c9    8b6c2420
                         fld                st(0)                                                // 0x004861cd    d9c0
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004861cf    896b04
                         {disp8} fmul       dword ptr [eax + -0x0c]                              // 0x004861d2    d848f4
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x004861d5    d95c2424
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                          // 0x004861d9    8b6c2424
                         fxch               st(1)                                                // 0x004861dd    d9c9
                         {disp8} mov        dword ptr [ebx + 0x08], ebp                          // 0x004861df    896b08
                         {disp8} fadd       dword ptr [ecx + -0x0c]                              // 0x004861e2    d841f4
                         fxch               st(1)                                                // 0x004861e5    d9c9
                         fxch               st(2)                                                // 0x004861e7    d9ca
                         {disp8} fadd       dword ptr [ecx + -0x08]                              // 0x004861e9    d841f8
                         fxch               st(2)                                                // 0x004861ec    d9ca
                         fxch               st(3)                                                // 0x004861ee    d9cb
                         {disp8} fadd       dword ptr [edx + eax * 0x1 + -0x0c]                  // 0x004861f0    d84402f4
                         fxch               st(3)                                                // 0x004861f4    d9cb
                         {disp8} jne        _jmp_addr_0x004861a8                                 // 0x004861f6    75b0
                         fstp               st(0)                                                // 0x004861f8    ddd8
                         {disp32} mov       ebp, dword ptr [esp + 0x00000080]                    // 0x004861fa    8bac2480000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]                     // 0x00486201    d80dd4b38a00
                         {disp8} lea        eax, dword ptr [esp + 0x34]                          // 0x00486207    8d442434
                         push               eax                                                  // 0x0048620b    50
                         push               ebp                                                  // 0x0048620c    55
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0048620d    d95c2424
                         mov.s              ecx, esi                                             // 0x00486211    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]                     // 0x00486213    d80dd4b38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00486219    d95c2428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]                     // 0x0048621d    d80dd4b38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x00486223    d95c242c
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x00486227    d9442424
                         fchs                                                                    // 0x0048622b    d9e0
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x0048622d    d95c2430
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x00486231    d9442428
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x00486235    d95c2434
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x00486239    d944242c
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x0048623d    d95c2438
                         call               _jmp_addr_0x0048dab0                                 // 0x00486241    e86a780000
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                          // 0x00486246    8d4c2428
                         push               ecx                                                  // 0x0048624a    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                          // 0x0048624b    8d542438
                         push               edx                                                  // 0x0048624f    52
                         call               _jmp_addr_0x006e8130                                 // 0x00486250    e8db1e2600
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00486255    d95c2420
                         {disp8} lea        eax, dword ptr [esp + 0x24]                          // 0x00486259    8d442424
                         push               eax                                                  // 0x0048625d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                          // 0x0048625e    8d4c2440
                         push               ecx                                                  // 0x00486262    51
                         call               _jmp_addr_0x006e8130                                 // 0x00486263    e8c81e2600
                         {disp8} fcomp      dword ptr [esp + 0x28]                               // 0x00486268    d85c2428
                         add                esp, 0x10                                            // 0x0048626c    83c410
                         fnstsw             ax                                                   // 0x0048626f    dfe0
                         test               ah, 0x41                                             // 0x00486271    f6c441
                         {disp8} jne        _jmp_addr_0x0048627d                                 // 0x00486274    7507
                         mov                edi, 0x00000001                                      // 0x00486276    bf01000000
                         {disp8} jmp        _jmp_addr_0x0048627f                                 // 0x0048627b    eb02
_jmp_addr_0x0048627d:    xor.s              edi, edi                                             // 0x0048627d    33ff
_jmp_addr_0x0048627f:    {disp32} mov       ebx, dword ptr [esp + 0x00000084]                    // 0x0048627f    8b9c2484000000
                         push               edi                                                  // 0x00486286    57
                         push               ebx                                                  // 0x00486287    53
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                          // 0x00486288    8d54243c
                         push               edx                                                  // 0x0048628c    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x0048628d    8d442420
                         push               eax                                                  // 0x00486291    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                          // 0x00486292    8d4c2420
                         push               ecx                                                  // 0x00486296    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000094]                    // 0x00486297    8d942494000000
                         push               edx                                                  // 0x0048629e    52
                         mov.s              ecx, esi                                             // 0x0048629f    8bce
                         call               _jmp_addr_0x0048dc70                                 // 0x004862a1    e8ca790000
                         cmp                ebx, 0x0e                                            // 0x004862a6    83fb0e
                         {disp8} jne        _jmp_addr_0x004862b3                                 // 0x004862a9    7508
                         {disp32} mov       dword ptr [esi + 0x00005230], edi                    // 0x004862ab    89be30520000
                         {disp8} jmp        _jmp_addr_0x004862b9                                 // 0x004862b1    eb06
_jmp_addr_0x004862b3:    {disp32} mov       dword ptr [esi + 0x00005234], edi                    // 0x004862b3    89be34520000
_jmp_addr_0x004862b9:    test               edi, edi                                             // 0x004862b9    85ff
                         {disp8} lea        eax, dword ptr [esp + 0x28]                          // 0x004862bb    8d442428
                         {disp8} jne        _jmp_addr_0x004862c5                                 // 0x004862bf    7504
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x004862c1    8d44241c
_jmp_addr_0x004862c5:    push               eax                                                  // 0x004862c5    50
                         call               _jmp_addr_0x007faa50                                 // 0x004862c6    e885473700
                         {disp32} fstp      dword ptr [esp + 0x00000088]                         // 0x004862cb    d99c2488000000
                         {disp8} fld        dword ptr [ebp + 0x00]                               // 0x004862d2    d94500
                         {disp8} lea        eax, dword ptr [esp + 0x44]                          // 0x004862d5    8d442444
                         {disp8} fsub       dword ptr [esi + 0x78]                               // 0x004862d9    d86678
                         push               eax                                                  // 0x004862dc    50
                         {disp8} fstp       dword ptr [esp + 0x48]                               // 0x004862dd    d95c2448
                         {disp8} fld        dword ptr [ebp + 0x04]                               // 0x004862e1    d94504
                         {disp8} fsub       dword ptr [esi + 0x7c]                               // 0x004862e4    d8667c
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x004862e7    d95c244c
                         {disp8} fld        dword ptr [ebp + 0x08]                               // 0x004862eb    d94508
                         {disp32} fsub      dword ptr [esi + 0x00000080]                         // 0x004862ee    d8a680000000
                         {disp8} fstp       dword ptr [esp + 0x50]                               // 0x004862f4    d95c2450
                         call               _jmp_addr_0x007faa50                                 // 0x004862f8    e853473700
                         {disp32} mov       ecx, dword ptr [esp + 0x00000090]                    // 0x004862fd    8b8c2490000000
                         {disp32} fsub      dword ptr [esp + 0x0000008c]                         // 0x00486304    d8a4248c000000
                         add                esp, 0x08                                            // 0x0048630b    83c408
                         pop                edi                                                  // 0x0048630e    5f
                         fstp               dword ptr [ecx]                                      // 0x0048630f    d919
                         pop                esi                                                  // 0x00486311    5e
                         {disp8} fld        dword ptr [esp + 0x78]                               // 0x00486312    d9442478
                         pop                ebp                                                  // 0x00486316    5d
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fcc]                    // 0x00486317    d81dccef8c00
                         pop                ebx                                                  // 0x0048631d    5b
                         fnstsw             ax                                                   // 0x0048631e    dfe0
                         test               ah, 0x41                                             // 0x00486320    f6c441
                         {disp8} jne        _jmp_addr_0x00486385                                 // 0x00486323    7560
                         {disp8} fld        dword ptr [esp + 0x70]                               // 0x00486325    d9442470
                         {disp32} fcomp     dword ptr [__real@3fc00000]                          // 0x00486329    d81d4cb28a00
                         fnstsw             ax                                                   // 0x0048632f    dfe0
                         test               ah, 0x01                                             // 0x00486331    f6c401
                         {disp8} je         _jmp_addr_0x00486385                                 // 0x00486334    744f
                         {disp8} fld        dword ptr [esp + 0x00]                               // 0x00486336    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fcc]                    // 0x0048633a    d81dccef8c00
                         fnstsw             ax                                                   // 0x00486340    dfe0
                         test               ah, 0x41                                             // 0x00486342    f6c441
                         {disp8} jne        _jmp_addr_0x00486385                                 // 0x00486345    753e
                         {disp8} fld        dword ptr [esp + 0x00]                               // 0x00486347    d9442400
                         {disp32} fcomp     dword ptr [__real@3fc00000]                          // 0x0048634b    d81d4cb28a00
                         fnstsw             ax                                                   // 0x00486351    dfe0
                         test               ah, 0x01                                             // 0x00486353    f6c401
                         {disp8} je         _jmp_addr_0x00486385                                 // 0x00486356    742d
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x00486358    d9442404
                         {disp32} fcomp     dword ptr [_rdata_floatn0p8]                         // 0x0048635c    d81da8a38a00
                         fnstsw             ax                                                   // 0x00486362    dfe0
                         test               ah, 0x41                                             // 0x00486364    f6c441
                         {disp8} jne        _jmp_addr_0x00486385                                 // 0x00486367    751c
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x00486369    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26030]                    // 0x0048636d    d81d30f08c00
                         fnstsw             ax                                                   // 0x00486373    dfe0
                         test               ah, 0x01                                             // 0x00486375    f6c401
                         {disp8} je         _jmp_addr_0x00486385                                 // 0x00486378    740b
                         mov                eax, 0x00000001                                      // 0x0048637a    b801000000
                         add                esp, 0x6c                                            // 0x0048637f    83c46c
                         ret                0x000c                                               // 0x00486382    c20c00
_jmp_addr_0x00486385:    xor.s              eax, eax                                             // 0x00486385    33c0
                         add                esp, 0x6c                                            // 0x00486387    83c46c
                         ret                0x000c                                               // 0x0048638a    c20c00
                         nop                                                                     // 0x0048638d    90
                         nop                                                                     // 0x0048638e    90
                         nop                                                                     // 0x0048638f    90
_jmp_addr_0x00486390:    sub                esp, 0x40                                            // 0x00486390    83ec40
                         push               ebx                                                  // 0x00486393    53
                         push               esi                                                  // 0x00486394    56
                         push               edi                                                  // 0x00486395    57
                         {disp8} mov        edi, dword ptr [esp + 0x54]                          // 0x00486396    8b7c2454
                         mov                eax, dword ptr [edi]                                 // 0x0048639a    8b07
                         {disp8} mov        edx, dword ptr [edi + 0x08]                          // 0x0048639c    8b5708
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x0048639f    8944240c
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x004863a3    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004863a7    d81d98a38a00
                         mov.s              ebx, ecx                                             // 0x004863ad    8bd9
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                          // 0x004863af    8b4f04
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x004863b2    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x004863b6    89542414
                         fnstsw             ax                                                   // 0x004863ba    dfe0
                         test               ah, 0x40                                             // 0x004863bc    f6c440
                         {disp8} je         _jmp_addr_0x004863e3                                 // 0x004863bf    7422
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x004863c1    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004863c5    d81d98a38a00
                         fnstsw             ax                                                   // 0x004863cb    dfe0
                         test               ah, 0x40                                             // 0x004863cd    f6c440
                         {disp8} je         _jmp_addr_0x004863e3                                 // 0x004863d0    7411
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x004863d2    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004863d6    d81d98a38a00
                         fnstsw             ax                                                   // 0x004863dc    dfe0
                         test               ah, 0x40                                             // 0x004863de    f6c440
                         {disp8} jne        _jmp_addr_0x00486427                                 // 0x004863e1    7544
_jmp_addr_0x004863e3:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x004863e3    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x004863e7    d84c2414
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x004863eb    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x004863ef    d84c2410
                         faddp              st(1), st                                            // 0x004863f3    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x004863f5    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x004863f9    d84c240c
                         faddp              st(1), st                                            // 0x004863fd    dec1
                         fsqrt                                                                   // 0x004863ff    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x00486401    d83d90a38a00
                         fld                st(0)                                                // 0x00486407    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x00486409    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0048640d    d95c240c
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00486411    d9442410
                         fmul               st, st(1)                                            // 0x00486415    d8c9
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00486417    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048641b    d9442414
                         fmul               st, st(1)                                            // 0x0048641f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00486421    d95c2414
                         fstp               st(0)                                                // 0x00486425    ddd8
_jmp_addr_0x00486427:    {disp8} mov        edx, dword ptr [esp + 0x50]                          // 0x00486427    8b542450
                         {disp32} mov       eax, dword ptr [ebx + 0x00000098]                    // 0x0048642b    8b8398000000
                         {disp32} mov       esi, dword ptr [ebx + eax * 0x4 + 0x000000b4]        // 0x00486431    8bb483b4000000
                         push               0x1                                                  // 0x00486438    6a01
                         push               0x0                                                  // 0x0048643a    6a00
                         push               0x0                                                  // 0x0048643c    6a00
                         push               0x0                                                  // 0x0048643e    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x00486440    8d4c241c
                         push               ecx                                                  // 0x00486444    51
                         push               edx                                                  // 0x00486445    52
                         mov.s              ecx, ebx                                             // 0x00486446    8bcb
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ                // 0x00486448    e863deffff
                         push               eax                                                  // 0x0048644d    50
                         push               esi                                                  // 0x0048644e    56
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                          // 0x0048644f    8d4c2444
                         call               _jmp_addr_0x00865020                                 // 0x00486453    e8c8eb3d00
                         test               eax, eax                                             // 0x00486458    85c0
                         {disp8} je         _jmp_addr_0x004864d6                                 // 0x0048645a    747a
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                          // 0x0048645c    8b44245c
                         {disp8} mov        esi, dword ptr [esp + 0x58]                          // 0x00486460    8b742458
                         push               eax                                                  // 0x00486464    50
                         push               esi                                                  // 0x00486465    56
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                          // 0x00486466    8d4c242c
                         push               ecx                                                  // 0x0048646a    51
                         mov.s              ecx, ebx                                             // 0x0048646b    8bcb
                         call               _jmp_addr_0x004866f0                                 // 0x0048646d    e87e020000
                         cmp                esi, 0x02                                            // 0x00486472    83fe02
                         {disp8} jl         _jmp_addr_0x004864d6                                 // 0x00486475    7c5f
                         cmp                esi, 0x03                                            // 0x00486477    83fe03
                         {disp8} jle        _jmp_addr_0x00486481                                 // 0x0048647a    7e05
                         cmp                esi, 0x05                                            // 0x0048647c    83fe05
                         {disp8} jne        _jmp_addr_0x004864d6                                 // 0x0048647f    7555
_jmp_addr_0x00486481:    or                 edx, 0xffffffff                                      // 0x00486481    83caff
                         xor.s              eax, eax                                             // 0x00486484    33c0
                         {disp32} lea       ecx, dword ptr [ebx + 0x000053e8]                    // 0x00486486    8d8be8530000
_jmp_addr_0x0048648c:    cmp                edx, -0x01                                           // 0x0048648c    83faff
                         {disp8} jne        _jmp_addr_0x004864a9                                 // 0x0048648f    7518
                         cmp                dword ptr [ecx], 0x00002ee0                          // 0x00486491    8139e02e0000
                         {disp8} jl         _jmp_addr_0x0048649b                                 // 0x00486497    7c02
                         mov.s              edx, eax                                             // 0x00486499    8bd0
_jmp_addr_0x0048649b:    inc                eax                                                  // 0x0048649b    40
                         add                ecx, 0x4                                             // 0x0048649c    83c104
                         cmp                eax, 0x08                                            // 0x0048649f    83f808
                         {disp8} jl         _jmp_addr_0x0048648c                                 // 0x004864a2    7ce8
                         cmp                edx, -0x01                                           // 0x004864a4    83faff
                         {disp8} je         _jmp_addr_0x004864d6                                 // 0x004864a7    742d
_jmp_addr_0x004864a9:    mov                eax, dword ptr [edi]                                 // 0x004864a9    8b07
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                          // 0x004864ab    8b4f04
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x004864ae    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                          // 0x004864b2    894c241c
                         {disp32} lea       eax, dword ptr [edx + edx * 0x4 + 0x00000a55]        // 0x004864b6    8d8492550a0000
                         lea                edi, dword ptr [ebx + eax * 0x8]                     // 0x004864bd    8d3cc3
                         mov                ecx, 0x0000000a                                      // 0x004864c0    b90a000000
                         {disp8} lea        esi, dword ptr [esp + 0x24]                          // 0x004864c5    8d742424
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004864c9    f3a5
                         {disp32} mov       dword ptr [ebx + edx * 0x4 + 0x000053e8], 0x00000000 // 0x004864cb    c78493e853000000000000
_jmp_addr_0x004864d6:    pop                edi                                                  // 0x004864d6    5f
                         pop                esi                                                  // 0x004864d7    5e
                         pop                ebx                                                  // 0x004864d8    5b
                         add                esp, 0x40                                            // 0x004864d9    83c440
                         ret                0x0010                                               // 0x004864dc    c21000
                         nop                                                                     // 0x004864df    90
                         sub                esp, 0x18                                            // 0x004864e0    83ec18
                         push               esi                                                  // 0x004864e3    56
                         mov.s              esi, ecx                                             // 0x004864e4    8bf1
                         {disp8} mov        dword ptr [esp + 0x18], esi                          // 0x004864e6    89742418
                         call               ?MorphTexture@Morphable@@UAEXXZ                      // 0x004864ea    e811301900
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x004864ef    8b442420
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x0000569c]        // 0x004864f3    8b8c869c560000
                         test               ecx, ecx                                             // 0x004864fa    85c9
                         {disp32} je        _jmp_addr_0x004866dd                                 // 0x004864fc    0f84db010000
                         mov                cl, -0x01                                            // 0x00486502    b1ff
                         {disp8} mov        byte ptr [esp + 0x07], cl                            // 0x00486504    884c2407
                         {disp8} mov        byte ptr [esp + 0x06], cl                            // 0x00486508    884c2406
                         {disp8} mov        byte ptr [esp + 0x05], cl                            // 0x0048650c    884c2405
                         mov.s              cl, al                                               // 0x00486510    8ac8
                         shl                cl, 4                                                // 0x00486512    c0e104
                         {disp8} mov        byte ptr [esp + 0x04], cl                            // 0x00486515    884c2404
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e218]               // 0x00486519    8b0d1842c600
                         test               ecx, ecx                                             // 0x0048651f    85c9
                         {disp32} jne       _jmp_addr_0x00486660                                 // 0x00486521    0f8539010000
                         push               ebx                                                  // 0x00486527    53
                         push               ebp                                                  // 0x00486528    55
                         push               edi                                                  // 0x00486529    57
                         push               0x00001115                                           // 0x0048652a    6815110000
                         push               0x009d1094                                           // 0x0048652f    6894109d00
                         push               0x00001550                                           // 0x00486534    6850150000
                         call               ___nw__FUl                                           // 0x00486539    e852523500
                         mov.s              edi, eax                                             // 0x0048653e    8bf8
                         or                 eax, -0x1                                            // 0x00486540    83c8ff
                         mov                ecx, 0x00000554                                      // 0x00486543    b954050000
                         {disp32} mov       dword ptr [data_bytes + 0x29e218], edi               // 0x00486548    893d1842c600
                         add                esp, 0x0c                                            // 0x0048654e    83c40c
                         rep stosd                                                               // 0x00486551    f3ab
                         xor.s              edx, edx                                             // 0x00486553    33d2
                         xor.s              ecx, ecx                                             // 0x00486555    33c9
_jmp_addr_0x00486557:    mov                eax, 0x00000005                                      // 0x00486557    b805000000
                         sar                eax, cl                                              // 0x0048655c    d3f8
                         mov                ebp, 0x00000004                                      // 0x0048655e    bd04000000
                         mov.s              ebx, ebp                                             // 0x00486563    8bdd
                         mov                edi, 0x00000040                                      // 0x00486565    bf40000000
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x0048656a    89442418
                         mov                eax, 0x00000006                                      // 0x0048656e    b806000000
                         sar                eax, cl                                              // 0x00486573    d3f8
                         sar                ebx, cl                                              // 0x00486575    d3fb
                         sar                edi, cl                                              // 0x00486577    d3ff
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x00486579    8944241c
                         mov                eax, 0x00000007                                      // 0x0048657d    b807000000
                         sar                eax, cl                                              // 0x00486582    d3f8
                         {disp8} mov        dword ptr [esp + 0x14], ebx                          // 0x00486584    895c2414
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x00486588    89442420
                         {disp8} jmp        _jmp_addr_0x00486592                                 // 0x0048658c    eb04
_jmp_addr_0x0048658e:    {disp8} mov        ebx, dword ptr [esp + 0x14]                          // 0x0048658e    8b5c2414
_jmp_addr_0x00486592:    mov.s              esi, ebp                                             // 0x00486592    8bf5
                         sar                esi, cl                                              // 0x00486594    d3fe
                         mov.s              eax, edi                                             // 0x00486596    8bc7
                         imul               eax, esi                                             // 0x00486598    0fafc6
                         add.s              ebx, eax                                             // 0x0048659b    03d8
                         add                ebx, dword ptr [data_bytes + 0x29e218]               // 0x0048659d    031d1842c600
                         mov                byte ptr [ebx + edx * 0x1], 0x00                     // 0x004865a3    c6041300
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                          // 0x004865a7    8b5c2418
                         add.s              ebx, eax                                             // 0x004865ab    03d8
                         add                ebx, dword ptr [data_bytes + 0x29e218]               // 0x004865ad    031d1842c600
                         mov                byte ptr [ebx + edx * 0x1], 0x00                     // 0x004865b3    c6041300
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                          // 0x004865b7    8b5c241c
                         add.s              ebx, eax                                             // 0x004865bb    03d8
                         add                ebx, dword ptr [data_bytes + 0x29e218]               // 0x004865bd    031d1842c600
                         mov                byte ptr [ebx + edx * 0x1], 0x00                     // 0x004865c3    c6041300
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                          // 0x004865c7    8b5c2420
                         add.s              ebx, eax                                             // 0x004865cb    03d8
                         add                ebx, dword ptr [data_bytes + 0x29e218]               // 0x004865cd    031d1842c600
                         cmp                ebp, 0x1e                                            // 0x004865d3    83fd1e
                         mov                byte ptr [ebx + edx * 0x1], 0x00                     // 0x004865d6    c6041300
                         {disp8} jge        _jmp_addr_0x0048663a                                 // 0x004865da    7d5e
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x29e218]               // 0x004865dc    8b1d1842c600
                         mov                eax, 0x0000003b                                      // 0x004865e2    b83b000000
                         sar                eax, cl                                              // 0x004865e7    d3f8
                         imul               eax, edi                                             // 0x004865e9    0fafc7
                         add.s              eax, esi                                             // 0x004865ec    03c6
                         add.s              eax, ebx                                             // 0x004865ee    03c3
                         mov                byte ptr [eax + edx * 0x1], 0x00                     // 0x004865f0    c6041000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x29e218]               // 0x004865f4    8b1d1842c600
                         mov                eax, 0x0000003a                                      // 0x004865fa    b83a000000
                         sar                eax, cl                                              // 0x004865ff    d3f8
                         imul               eax, edi                                             // 0x00486601    0fafc7
                         add.s              eax, esi                                             // 0x00486604    03c6
                         add.s              eax, ebx                                             // 0x00486606    03c3
                         mov                byte ptr [eax + edx * 0x1], 0x00                     // 0x00486608    c6041000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x29e218]               // 0x0048660c    8b1d1842c600
                         mov                eax, 0x00000039                                      // 0x00486612    b839000000
                         sar                eax, cl                                              // 0x00486617    d3f8
                         imul               eax, edi                                             // 0x00486619    0fafc7
                         add.s              eax, esi                                             // 0x0048661c    03c6
                         add.s              eax, ebx                                             // 0x0048661e    03c3
                         mov                byte ptr [eax + edx * 0x1], 0x00                     // 0x00486620    c6041000
                         mov                eax, 0x00000038                                      // 0x00486624    b838000000
                         sar                eax, cl                                              // 0x00486629    d3f8
                         imul               eax, edi                                             // 0x0048662b    0fafc7
                         add.s              eax, esi                                             // 0x0048662e    03c6
                         add                eax, dword ptr [data_bytes + 0x29e218]               // 0x00486630    03051842c600
                         mov                byte ptr [eax + edx * 0x1], 0x00                     // 0x00486636    c6041000
_jmp_addr_0x0048663a:    inc                ebp                                                  // 0x0048663a    45
                         cmp                ebp, 0x3c                                            // 0x0048663b    83fd3c
                         {disp32} jl        _jmp_addr_0x0048658e                                 // 0x0048663e    0f8c4affffff
                         mov.s              eax, edi                                             // 0x00486644    8bc7
                         imul               eax, edi                                             // 0x00486646    0fafc7
                         add.s              edx, eax                                             // 0x00486649    03d0
                         inc                ecx                                                  // 0x0048664b    41
                         cmp                ecx, 0x05                                            // 0x0048664c    83f905
                         {disp32} jl        _jmp_addr_0x00486557                                 // 0x0048664f    0f8c02ffffff
                         {disp8} mov        esi, dword ptr [esp + 0x24]                          // 0x00486655    8b742424
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x00486659    8b44242c
                         pop                edi                                                  // 0x0048665d    5f
                         pop                ebp                                                  // 0x0048665e    5d
                         pop                ebx                                                  // 0x0048665f    5b
_jmp_addr_0x00486660:    {disp32} mov       ecx, dword ptr [data_bytes + 0x29e218]               // 0x00486660    8b0d1842c600
                         push               ecx                                                  // 0x00486666    51
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x000056fc]        // 0x00486667    8b8c86fc560000
                         push               0x0                                                  // 0x0048666e    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x00486670    8d54240c
                         push               edx                                                  // 0x00486674    52
                         xor.s              edx, edx                                             // 0x00486675    33d2
                         {disp32} mov       dl, byte ptr [esi + eax * 0x4 + 0x0000567d]          // 0x00486677    8a94867d560000
                         push               0x1                                                  // 0x0048667e    6a01
                         push               ecx                                                  // 0x00486680    51
                         push               ecx                                                  // 0x00486681    51
                         xor.s              ecx, ecx                                             // 0x00486682    33c9
                         {disp32} mov       cl, byte ptr [esi + eax * 0x4 + 0x0000567c]          // 0x00486684    8a8c867c560000
                         {disp8} mov        dword ptr [esp + 0x38], edx                          // 0x0048668b    89542438
                         {disp8} fild       dword ptr [esp + 0x38]                               // 0x0048668f    db442438
                         xor.s              edx, edx                                             // 0x00486693    33d2
                         {disp32} mov       dl, byte ptr [esi + eax * 0x4 + 0x0000567e]          // 0x00486695    8a94867e560000
                         fstp               dword ptr [esp]                                      // 0x0048669c    d91c24
                         push               ecx                                                  // 0x0048669f    51
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                          // 0x004866a0    894c243c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]                    // 0x004866a4    8b8e98000000
                         {disp8} fild       dword ptr [esp + 0x3c]                               // 0x004866aa    db44243c
                         {disp32} mov       ecx, dword ptr [esi + ecx * 0x4 + 0x000000b4]        // 0x004866ae    8b8c8eb4000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x3c]                          // 0x004866b5    8b493c
                         shr                edx, 6                                               // 0x004866b8    c1ea06
                         fstp               dword ptr [esp]                                      // 0x004866bb    d91c24
                         and                edx, 0x03                                            // 0x004866be    83e203
                         mov                edx, dword ptr [ecx + edx * 0x4]                     // 0x004866c1    8b1491
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x000056dc]        // 0x004866c4    8b8c86dc560000
                         push               edx                                                  // 0x004866cb    52
                         {disp32} mov       edx, dword ptr [esi + eax * 0x4 + 0x000056bc]        // 0x004866cc    8b9486bc560000
                         push               ecx                                                  // 0x004866d3    51
                         push               edx                                                  // 0x004866d4    52
                         call               _jmp_addr_0x005df310                                 // 0x004866d5    e8368c1500
                         add                esp, 0x28                                            // 0x004866da    83c428
_jmp_addr_0x004866dd:    pop                esi                                                  // 0x004866dd    5e
                         add                esp, 0x18                                            // 0x004866de    83c418
                         ret                0x0004                                               // 0x004866e1    c20400
                         nop                                                                     // 0x004866e4    90
                         nop                                                                     // 0x004866e5    90
                         nop                                                                     // 0x004866e6    90
                         nop                                                                     // 0x004866e7    90
                         nop                                                                     // 0x004866e8    90
                         nop                                                                     // 0x004866e9    90
                         nop                                                                     // 0x004866ea    90
                         nop                                                                     // 0x004866eb    90
                         nop                                                                     // 0x004866ec    90
                         nop                                                                     // 0x004866ed    90
                         nop                                                                     // 0x004866ee    90
                         nop                                                                     // 0x004866ef    90
_jmp_addr_0x004866f0:    push               esi                                                  // 0x004866f0    56
                         mov.s              esi, ecx                                             // 0x004866f1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]                    // 0x004866f3    8b8e98000000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x000000b4]        // 0x004866f9    8b948eb4000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                          // 0x00486700    8b4c2408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x00486704    8d442408
                         push               eax                                                  // 0x00486708    50
                         push               edx                                                  // 0x00486709    52
                         call               _jmp_addr_0x00866a90                                 // 0x0048670a    e881033e00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0048670f    8b442410
                         {disp8} mov        cl, byte ptr [esp + 0x0c]                            // 0x00486713    8a4c240c
                         or                 eax, 0xfff8                                          // 0x00486717    0df8ff0000
                         and                cl, 0x07                                             // 0x0048671c    80e107
                         shl                al, 3                                                // 0x0048671f    c0e003
                         or.s               al, cl                                               // 0x00486722    0ac1
                         xor.s              edx, edx                                             // 0x00486724    33d2
                         mov.s              dh, al                                               // 0x00486726    8af0
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]                    // 0x00486728    8b8698000000
                         push               0x0                                                  // 0x0048672e    6a00
                         {disp8} mov        dl, byte ptr [esp + 0x0e]                            // 0x00486730    8a54240e
                         {disp8} mov        word ptr [esp + 0x0e], dx                            // 0x00486734    668954240e
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x000000b4]        // 0x00486739    8b8c86b4000000
                         push               ecx                                                  // 0x00486740    51
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x00486741    8d4c2410
                         call               _jmp_addr_0x00867040                                 // 0x00486745    e8f6083e00
                         {disp32} mov       esi, dword ptr [esi + 0x00005184]                    // 0x0048674a    8bb684510000
                         {disp8} mov        eax, dword ptr [esi + 0x04]                          // 0x00486750    8b4604
                         cmp                eax, 0x00000400                                      // 0x00486753    3d00040000
                         {disp8} jae        _jmp_addr_0x0048676c                                 // 0x00486758    7312
                         {disp8} mov        edx, dword ptr [esp + 0x08]                          // 0x0048675a    8b542408
                         {disp32} mov       dword ptr [esi + eax * 0x4 + 0x00001008], edx        // 0x0048675e    89948608100000
                         {disp8} inc        dword ptr [esi + 0x04]                               // 0x00486765    ff4604
                         pop                esi                                                  // 0x00486768    5e
                         ret                0x000c                                               // 0x00486769    c20c00
_jmp_addr_0x0048676c:    push               ebp                                                  // 0x0048676c    55
                         push               edi                                                  // 0x0048676d    57
                         xor.s              edi, edi                                             // 0x0048676e    33ff
                         xor.s              ebp, ebp                                             // 0x00486770    33ed
                         xor.s              ecx, ecx                                             // 0x00486772    33c9
                         {disp32} lea       edx, dword ptr [esi + 0x0000100a]                    // 0x00486774    8d960a100000
_jmp_addr_0x0048677a:    xor.s              eax, eax                                             // 0x0048677a    33c0
                         mov                al, byte ptr [edx]                                   // 0x0048677c    8a02
                         and                eax, 0x3f                                            // 0x0048677e    83e03f
                         cmp.s              eax, edi                                             // 0x00486781    3bc7
                         {disp8} jle        _jmp_addr_0x00486789                                 // 0x00486783    7e04
                         mov.s              edi, eax                                             // 0x00486785    8bf8
                         mov.s              ebp, ecx                                             // 0x00486787    8be9
_jmp_addr_0x00486789:    inc                ecx                                                  // 0x00486789    41
                         add                edx, 0x04                                            // 0x0048678a    83c204
                         cmp                ecx, 0x00000400                                      // 0x0048678d    81f900040000
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x0048677a         // 0x00486793    72e5
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x00486795    8b442410
                         pop                edi                                                  // 0x00486799    5f
                         {disp32} mov       dword ptr [esi + ebp * 0x4 + 0x00001008], eax        // 0x0048679a    8984ae08100000
                         pop                ebp                                                  // 0x004867a1    5d
                         pop                esi                                                  // 0x004867a2    5e
                         ret                0x000c                                               // 0x004867a3    c20c00
                         nop                                                                     // 0x004867a6    90
                         nop                                                                     // 0x004867a7    90
                         nop                                                                     // 0x004867a8    90
                         nop                                                                     // 0x004867a9    90
                         nop                                                                     // 0x004867aa    90
                         nop                                                                     // 0x004867ab    90
                         nop                                                                     // 0x004867ac    90
                         nop                                                                     // 0x004867ad    90
                         nop                                                                     // 0x004867ae    90
                         nop                                                                     // 0x004867af    90
_jmp_addr_0x004867b0:    sub                esp, 0x0c                                            // 0x004867b0    83ec0c
                         push               esi                                                  // 0x004867b3    56
                         mov.s              esi, ecx                                             // 0x004867b4    8bf1
                         call               _jmp_addr_0x004813b0                                 // 0x004867b6    e8f5abffff
                         mov                ecx, dword ptr [eax]                                 // 0x004867bb    8b08
                         {disp8} mov        dword ptr [esp + 0x04], ecx                          // 0x004867bd    894c2404
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x004867c1    8b5004
                         {disp8} mov        dword ptr [esp + 0x08], edx                          // 0x004867c4    89542408
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004867c8    8b4008
                         mov                edx, dword ptr [esi]                                 // 0x004867cb    8b16
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x004867cd    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x004867d1    8d442404
                         push               eax                                                  // 0x004867d5    50
                         mov.s              ecx, esi                                             // 0x004867d6    8bce
                         call               dword ptr [edx + 0x28]                               // 0x004867d8    ff5228
                         {disp8} fsubr      dword ptr [esp + 0x08]                               // 0x004867db    d86c2408
                         pop                esi                                                  // 0x004867df    5e
                         add                esp, 0x0c                                            // 0x004867e0    83c40c
                         ret                                                                     // 0x004867e3    c3
                         nop                                                                     // 0x004867e4    90
                         nop                                                                     // 0x004867e5    90
                         nop                                                                     // 0x004867e6    90
                         nop                                                                     // 0x004867e7    90
                         nop                                                                     // 0x004867e8    90
                         nop                                                                     // 0x004867e9    90
                         nop                                                                     // 0x004867ea    90
                         nop                                                                     // 0x004867eb    90
                         nop                                                                     // 0x004867ec    90
                         nop                                                                     // 0x004867ed    90
                         nop                                                                     // 0x004867ee    90
                         nop                                                                     // 0x004867ef    90
_jmp_addr_0x004867f0:    ret                                                                     // 0x004867f0    c3
                         nop                                                                     // 0x004867f1    90
                         nop                                                                     // 0x004867f2    90
                         nop                                                                     // 0x004867f3    90
                         nop                                                                     // 0x004867f4    90
                         nop                                                                     // 0x004867f5    90
                         nop                                                                     // 0x004867f6    90
                         nop                                                                     // 0x004867f7    90
                         nop                                                                     // 0x004867f8    90
                         nop                                                                     // 0x004867f9    90
                         nop                                                                     // 0x004867fa    90
                         nop                                                                     // 0x004867fb    90
                         nop                                                                     // 0x004867fc    90
                         nop                                                                     // 0x004867fd    90
                         nop                                                                     // 0x004867fe    90
                         nop                                                                     // 0x004867ff    90
_jmp_addr_0x00486800:    sub                esp, 0x4c                                            // 0x00486800    83ec4c
                         {disp32} mov       eax, dword ptr [ecx + 0x0000528c]                    // 0x00486803    8b818c520000
                         {disp8} fld        dword ptr [eax + 0x78]                               // 0x00486809    d94078
                         add                eax, 0x78                                            // 0x0048680c    83c078
                         {disp32} fsub      dword ptr [ecx + 0x00004a98]                         // 0x0048680f    d8a1984a0000
                         {disp8} fld        dword ptr [eax + 0x08]                               // 0x00486815    d94008
                         {disp32} fsub      dword ptr [ecx + 0x00004aa0]                         // 0x00486818    d8a1a04a0000
                         {disp32} fld       dword ptr [rdata_bytes + 0x2609c]                    // 0x0048681e    d9059cf08c00
                         {disp32} fmul      dword ptr [ecx + 0x00004aa4]                         // 0x00486824    d889a44a0000
                         {disp8} fstp       dword ptr [esp + 0x00]                               // 0x0048682a    d95c2400
                         fld                st(0)                                                // 0x0048682e    d9c0
                         fmul               st, st(1)                                            // 0x00486830    d8c9
                         fld                st(2)                                                // 0x00486832    d9c2
                         fmul               st, st(3)                                            // 0x00486834    d8cb
                         faddp              st(1), st                                            // 0x00486836    dec1
                         fsqrt                                                                   // 0x00486838    d9fa
                         fstp               st(2)                                                // 0x0048683a    ddda
                         fstp               st(0)                                                // 0x0048683c    ddd8
                         {disp8} fcomp      dword ptr [esp + 0x00]                               // 0x0048683e    d85c2400
                         fnstsw             ax                                                   // 0x00486842    dfe0
                         test               ah, 0x01                                             // 0x00486844    f6c401
                         {disp8} je         _jmp_addr_0x0048687f                                 // 0x00486847    7436
                         {disp8} fld        dword ptr [ecx + 0x78]                               // 0x00486849    d94178
                         {disp32} fsub      dword ptr [ecx + 0x00004a98]                         // 0x0048684c    d8a1984a0000
                         {disp32} fld       dword ptr [ecx + 0x00000080]                         // 0x00486852    d98180000000
                         {disp32} fsub      dword ptr [ecx + 0x00004aa0]                         // 0x00486858    d8a1a04a0000
                         fld                st(0)                                                // 0x0048685e    d9c0
                         fmul               st, st(1)                                            // 0x00486860    d8c9
                         fld                st(2)                                                // 0x00486862    d9c2
                         fmul               st, st(3)                                            // 0x00486864    d8cb
                         faddp              st(1), st                                            // 0x00486866    dec1
                         fsqrt                                                                   // 0x00486868    d9fa
                         fstp               st(2)                                                // 0x0048686a    ddda
                         fstp               st(0)                                                // 0x0048686c    ddd8
                         {disp8} fcomp      dword ptr [esp + 0x00]                               // 0x0048686e    d85c2400
                         fnstsw             ax                                                   // 0x00486872    dfe0
                         test               ah, 0x01                                             // 0x00486874    f6c401
                         {disp8} je         _jmp_addr_0x0048687f                                 // 0x00486877    7406
                         xor.s              eax, eax                                             // 0x00486879    33c0
                         add                esp, 0x4c                                            // 0x0048687b    83c44c
                         ret                                                                     // 0x0048687e    c3
_jmp_addr_0x0048687f:    {disp32} mov       eax, dword ptr [ecx + 0x00004994]                    // 0x0048687f    8b8194490000
                         cmp                eax, 0x1b                                            // 0x00486885    83f81b
                         {disp8} jne        _jmp_addr_0x0048689a                                 // 0x00486888    7510
                         push               0x1d                                                 // 0x0048688a    6a1d
                         call               _jmp_addr_0x00484ec0                                 // 0x0048688c    e82fe6ffff
                         mov                eax, 0x00000001                                      // 0x00486891    b801000000
                         add                esp, 0x4c                                            // 0x00486896    83c44c
                         ret                                                                     // 0x00486899    c3
_jmp_addr_0x0048689a:    cmp                eax, 0x17                                            // 0x0048689a    83f817
                         {disp32} jne       _jmp_addr_0x004869f3                                 // 0x0048689d    0f8550010000
                         {disp32} fld       dword ptr [ecx + 0x00004a98]                         // 0x004868a3    d981984a0000
                         {disp8} fsub       dword ptr [ecx + 0x78]                               // 0x004868a9    d86178
                         {disp32} fld       dword ptr [ecx + 0x00004a9c]                         // 0x004868ac    d9819c4a0000
                         {disp8} fsub       dword ptr [ecx + 0x7c]                               // 0x004868b2    d8617c
                         {disp32} fld       dword ptr [ecx + 0x00004aa0]                         // 0x004868b5    d981a04a0000
                         {disp32} fsub      dword ptr [ecx + 0x00000080]                         // 0x004868bb    d8a180000000
                         {disp8} fst        dword ptr [esp + 0x0c]                               // 0x004868c1    d954240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x004868c5    d84c240c
                         fld                st(1)                                                // 0x004868c9    d9c1
                         fmul               st, st(2)                                            // 0x004868cb    d8ca
                         faddp              st(1), st                                            // 0x004868cd    dec1
                         fld                st(2)                                                // 0x004868cf    d9c2
                         fmul               st, st(3)                                            // 0x004868d1    d8cb
                         faddp              st(1), st                                            // 0x004868d3    dec1
                         fsqrt                                                                   // 0x004868d5    d9fa
                         fstp               st(1)                                                // 0x004868d7    ddd9
                         {disp32} fld       dword ptr [ecx + 0x00005228]                         // 0x004868d9    d98128520000
                         fcompp                                                                  // 0x004868df    ded9
                         fnstsw             ax                                                   // 0x004868e1    dfe0
                         test               ah, 0x01                                             // 0x004868e3    f6c401
                         {disp32} je        _jmp_addr_0x004869f1                                 // 0x004868e6    0f8405010000
                         {disp32} fld       dword ptr [ecx + 0x00000084]                         // 0x004868ec    d98184000000
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000000                   // 0x004868f2    c744240000000000
                         fchs                                                                    // 0x004868fa    d9e0
                         {disp32} mov       dword ptr [data_bytes + 0x29e214], 0x00000001        // 0x004868fc    c7051442c60001000000
                         fld                st(0)                                                // 0x00486906    d9c0
                         fcos                                                                    // 0x00486908    d9ff
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x0048690a    d95c243c
                         fsin                                                                    // 0x0048690e    d9fe
                         fld                st(0)                                                // 0x00486910    d9c0
                         fchs                                                                    // 0x00486912    d9e0
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x00486914    d84c240c
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00486918    d944243c
                         fmul               st, st(3)                                            // 0x0048691c    d8cb
                         faddp              st(1), st                                            // 0x0048691e    dec1
                         {disp8} fadd       dword ptr [esp + 0x00]                               // 0x00486920    d8442400
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00486924    d95c2410
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00486928    d944243c
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x0048692c    d84c240c
                         fxch               st(1)                                                // 0x00486930    d9c9
                         fmul               st, st(2)                                            // 0x00486932    d8ca
                         faddp              st(1), st                                            // 0x00486934    dec1
                         {disp8} fadd       dword ptr [esp + 0x00]                               // 0x00486936    d8442400
                         fstp               st(1)                                                // 0x0048693a    ddd9
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0048693c    d9442410
                         fabs                                                                    // 0x00486940    d9e1
                         {disp32} fmul      dword ptr [__real@3fc00000]                          // 0x00486942    d80d4cb28a00
                         fld                st(1)                                                // 0x00486948    d9c1
                         fabs                                                                    // 0x0048694a    d9e1
                         fxch               st(1)                                                // 0x0048694c    d9c9
                         fxch               st(1)                                                // 0x0048694e    d9c9
                         fcompp                                                                  // 0x00486950    ded9
                         fnstsw             ax                                                   // 0x00486952    dfe0
                         test               ah, 0x01                                             // 0x00486954    f6c401
                         {disp8} je         _jmp_addr_0x004869a8                                 // 0x00486957    744f
                         fstp               st(0)                                                // 0x00486959    ddd8
                         push               0x0                                                  // 0x0048695b    6a00
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048695d    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00486961    d81d98a38a00
                         fnstsw             ax                                                   // 0x00486967    dfe0
                         test               ah, 0x01                                             // 0x00486969    f6c401
                         {disp8} je         _jmp_addr_0x0048698b                                 // 0x0048696c    741d
                         push               0x0000008b                                           // 0x0048696e    688b000000
                         call               _jmp_addr_0x004846e0                                 // 0x00486973    e868ddffff
                         {disp32} mov       dword ptr [data_bytes + 0x29e214], 0x00000000        // 0x00486978    c7051442c60000000000
                         mov                eax, 0x00000001                                      // 0x00486982    b801000000
                         add                esp, 0x4c                                            // 0x00486987    83c44c
                         ret                                                                     // 0x0048698a    c3
_jmp_addr_0x0048698b:    push               0x0000008c                                           // 0x0048698b    688c000000
                         call               _jmp_addr_0x004846e0                                 // 0x00486990    e84bddffff
                         {disp32} mov       dword ptr [data_bytes + 0x29e214], 0x00000000        // 0x00486995    c7051442c60000000000
                         mov                eax, 0x00000001                                      // 0x0048699f    b801000000
                         add                esp, 0x4c                                            // 0x004869a4    83c44c
                         ret                                                                     // 0x004869a7    c3
_jmp_addr_0x004869a8:    {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004869a8    d81d98a38a00
                         push               0x0                                                  // 0x004869ae    6a00
                         fnstsw             ax                                                   // 0x004869b0    dfe0
                         test               ah, 0x01                                             // 0x004869b2    f6c401
                         {disp8} je         _jmp_addr_0x004869d4                                 // 0x004869b5    741d
                         push               0x00000089                                           // 0x004869b7    6889000000
                         call               _jmp_addr_0x004846e0                                 // 0x004869bc    e81fddffff
                         {disp32} mov       dword ptr [data_bytes + 0x29e214], 0x00000000        // 0x004869c1    c7051442c60000000000
                         mov                eax, 0x00000001                                      // 0x004869cb    b801000000
                         add                esp, 0x4c                                            // 0x004869d0    83c44c
                         ret                                                                     // 0x004869d3    c3
_jmp_addr_0x004869d4:    push               0x0000008a                                           // 0x004869d4    688a000000
                         call               _jmp_addr_0x004846e0                                 // 0x004869d9    e802ddffff
                         {disp32} mov       dword ptr [data_bytes + 0x29e214], 0x00000000        // 0x004869de    c7051442c60000000000
                         mov                eax, 0x00000001                                      // 0x004869e8    b801000000
                         add                esp, 0x4c                                            // 0x004869ed    83c44c
                         ret                                                                     // 0x004869f0    c3
_jmp_addr_0x004869f1:    fstp               st(0)                                                // 0x004869f1    ddd8
_jmp_addr_0x004869f3:    mov                eax, 0x00000001                                      // 0x004869f3    b801000000
                         add                esp, 0x4c                                            // 0x004869f8    83c44c
                         ret                                                                     // 0x004869fb    c3
                         nop                                                                     // 0x004869fc    90
                         nop                                                                     // 0x004869fd    90
                         nop                                                                     // 0x004869fe    90
                         nop                                                                     // 0x004869ff    90
_jmp_addr_0x00486a00:    sub                esp, 0x6c                                            // 0x00486a00    83ec6c
                         push               ebx                                                  // 0x00486a03    53
                         push               esi                                                  // 0x00486a04    56
                         mov.s              esi, ecx                                             // 0x00486a05    8bf1
                         {disp32} fld       dword ptr [esi + 0x000048b8]                         // 0x00486a07    d986b8480000
                         push               edi                                                  // 0x00486a0d    57
                         {disp32} fdiv      dword ptr [esi + 0x0000498c]                         // 0x00486a0e    d8b68c490000
                         {disp32} fadd      dword ptr [esi + 0x00004988]                         // 0x00486a14    d88688490000
                         fld                st(0)                                                // 0x00486a1a    d9c0
                         call               _jmp_addr_0x007a1400                                 // 0x00486a1c    e8dfa93100
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00486a21    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                               // 0x00486a25    db442414
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]                    // 0x00486a29    8b8694490000
                         cmp                eax, 0x25                                            // 0x00486a2f    83f825
                         fsubr              st, st(1)                                            // 0x00486a32    d8e9
                         {disp32} fstp      dword ptr [esi + 0x00004988]                         // 0x00486a34    d99e88490000
                         fstp               st(0)                                                // 0x00486a3a    ddd8
                         {disp32} ja        _jmp_addr_0x004874f6                                 // 0x00486a3c    0f87b40a0000
                         jmp                dword ptr [eax*4 + 0x48752c]                         // 0x00486a42    ff24852c754800
                         mov.s              ecx, esi                                             // 0x00486a49    8bce
                         call               _jmp_addr_0x0048d250                                 // 0x00486a4b    e800680000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486a50    e9a10a0000
                         mov.s              ecx, esi                                             // 0x00486a55    8bce
                         call               _jmp_addr_0x0048d2a0                                 // 0x00486a57    e844680000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486a5c    e9950a0000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00486a61    8b86a0490000
                         push               0x0                                                  // 0x00486a67    6a00
                         dec                eax                                                  // 0x00486a69    48
                         push               eax                                                  // 0x00486a6a    50
                         mov.s              ecx, esi                                             // 0x00486a6b    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486a6d    e8de2b1900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]                    // 0x00486a72    8b8ebc480000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486a78    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486a7e    c786e04700000000803f
                         push               ecx                                                  // 0x00486a88    51
                         {disp8} jmp        _jmp_addr_0x00486abf                                 // 0x00486a89    eb34
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]                    // 0x00486a8b    8b8ea0490000
                         dec                ecx                                                  // 0x00486a91    49
                         push               0x0                                                  // 0x00486a92    6a00
                         push               ecx                                                  // 0x00486a94    51
                         mov.s              ecx, esi                                             // 0x00486a95    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486a97    e8b42b1900
                         mov.s              ecx, esi                                             // 0x00486a9c    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486a9e    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486aa4    c786e04700000000803f
                         call               _jmp_addr_0x0047f1c0                                 // 0x00486aae    e80d87ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                         // 0x00486ab3    da8eb4480000
                         call               _jmp_addr_0x007a1400                                 // 0x00486ab9    e842a93100
                         push               eax                                                  // 0x00486abe    50
_jmp_addr_0x00486abf:    {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x00486abf    8b96d0470000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00486ac5    8b86a0490000
                         push               edx                                                  // 0x00486acb    52
                         dec                eax                                                  // 0x00486acc    48
                         push               eax                                                  // 0x00486acd    50
                         mov.s              ecx, esi                                             // 0x00486ace    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00486ad0    e83b0f1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486ad5    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486adb    e9160a0000
                         cmp                dword ptr [esi + 0x0000579c], 0x01                   // 0x00486ae0    83be9c57000001
                         mov                edi, 0x00000002                                      // 0x00486ae7    bf02000000
                         {disp8} jne        _jmp_addr_0x00486b0a                                 // 0x00486aec    751c
                         {disp32} mov       eax, dword ptr [esi + 0x00004ab8]                    // 0x00486aee    8b86b84a0000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]                    // 0x00486af4    8b8eb4480000
                         sub.s              eax, ecx                                             // 0x00486afa    2bc1
                         {disp32} mov       dword ptr [esi + 0x00004ab8], eax                    // 0x00486afc    8986b84a0000
                         {disp8} jns        _jmp_addr_0x00486b0a                                 // 0x00486b02    7906
                         {disp32} mov       dword ptr [esi + 0x0000579c], edi                    // 0x00486b04    89be9c570000
_jmp_addr_0x00486b0a:    push               0x0                                                  // 0x00486b0a    6a00
                         push               0x0000008f                                           // 0x00486b0c    688f000000
                         mov.s              ecx, esi                                             // 0x00486b11    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486b13    e8382b1900
                         mov.s              ecx, esi                                             // 0x00486b18    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486b1a    8986c0470000
                         call               _jmp_addr_0x0047f1c0                                 // 0x00486b20    e89b86ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                         // 0x00486b25    da8eb4480000
                         call               _jmp_addr_0x007a1400                                 // 0x00486b2b    e8d0a83100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x00486b30    8b96d0470000
                         push               eax                                                  // 0x00486b36    50
                         push               edx                                                  // 0x00486b37    52
                         push               0x0000008f                                           // 0x00486b38    688f000000
                         mov.s              ecx, esi                                             // 0x00486b3d    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00486b3f    e8cc0e1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486b44    8986d0470000
                         {disp32} mov       eax, dword ptr [esi + 0x0000528c]                    // 0x00486b4a    8b868c520000
                         test               eax, eax                                             // 0x00486b50    85c0
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486b52    c786e04700000000803f
                         {disp32} je        _jmp_addr_0x004874f6                                 // 0x00486b5c    0f8494090000
                         {disp32} fld       dword ptr [eax + 0x00000080]                         // 0x00486b62    d98080000000
                         {disp32} fsub      dword ptr [esi + 0x00000080]                         // 0x00486b68    d8a680000000
                         {disp8} fld        dword ptr [eax + 0x7c]                               // 0x00486b6e    d9407c
                         {disp8} fsub       dword ptr [esi + 0x7c]                               // 0x00486b71    d8667c
                         {disp8} fld        dword ptr [eax + 0x78]                               // 0x00486b74    d94078
                         {disp8} lea        eax, dword ptr [esp + 0x30]                          // 0x00486b77    8d442430
                         {disp8} fsub       dword ptr [esi + 0x78]                               // 0x00486b7b    d86678
                         push               eax                                                  // 0x00486b7e    50
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x00486b7f    d95c2434
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x00486b83    d95c2438
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x00486b87    d95c243c
                         call               _jmp_addr_0x007faa50                                 // 0x00486b8b    e8c03e3700
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00486b90    d95c2418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x00486b94    8b4c2418
                         push               ecx                                                  // 0x00486b98    51
                         call               _jmp_addr_0x007faaf0                                 // 0x00486b99    e8523f3700
                         {disp32} fstp      dword ptr [esi + 0x00000084]                         // 0x00486b9e    d99e84000000
                         add                esp, 0x08                                            // 0x00486ba4    83c408
                         mov.s              ecx, esi                                             // 0x00486ba7    8bce
                         call               _jmp_addr_0x00486800                                 // 0x00486ba9    e852fcffff
                         test               eax, eax                                             // 0x00486bae    85c0
                         {disp32} jne       _jmp_addr_0x004874f6                                 // 0x00486bb0    0f8540090000
                         cmp                dword ptr [esi + 0x0000579c], edi                    // 0x00486bb6    39be9c570000
                         {disp8} je         _jmp_addr_0x00486bca                                 // 0x00486bbc    740c
                         mov.s              ecx, esi                                             // 0x00486bbe    8bce
                         call               _jmp_addr_0x00489540                                 // 0x00486bc0    e87b290000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486bc5    e92c090000
_jmp_addr_0x00486bca:    push               0x000011d8                                           // 0x00486bca    68d8110000
                         push               0x009d1094                                           // 0x00486bcf    6894109d00
                         push               0x8                                                  // 0x00486bd4    6a08
                         call               ?GameRand@GRand@@SAHJ@Z                              // 0x00486bd6    e835792500
                         add                esp, 0x0c                                            // 0x00486bdb    83c40c
                         cmp                eax, 0x01                                            // 0x00486bde    83f801
                         {disp32} jne       _jmp_addr_0x004874f6                                 // 0x00486be1    0f850f090000
                         push               0x1d                                                 // 0x00486be7    6a1d
                         mov.s              ecx, esi                                             // 0x00486be9    8bce
                         call               _jmp_addr_0x00484ec0                                 // 0x00486beb    e8d0e2ffff
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486bf0    e901090000
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]                    // 0x00486bf5    8b96a0490000
                         push               0x0                                                  // 0x00486bfb    6a00
                         push               edx                                                  // 0x00486bfd    52
                         mov.s              ecx, esi                                             // 0x00486bfe    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486c00    e84b2a1900
                         mov.s              ecx, esi                                             // 0x00486c05    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486c07    8986c0470000
                         call               _jmp_addr_0x0047f1c0                                 // 0x00486c0d    e8ae85ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                         // 0x00486c12    da8eb4480000
                         call               _jmp_addr_0x007a1400                                 // 0x00486c18    e8e3a73100
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]                    // 0x00486c1d    8b8ea0490000
                         push               eax                                                  // 0x00486c23    50
                         {disp32} mov       eax, dword ptr [esi + 0x000047d0]                    // 0x00486c24    8b86d0470000
                         push               eax                                                  // 0x00486c2a    50
                         push               ecx                                                  // 0x00486c2b    51
                         mov.s              ecx, esi                                             // 0x00486c2c    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00486c2e    e8dd0d1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486c33    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874ec                                 // 0x00486c39    e9ae080000
                         mov.s              ecx, esi                                             // 0x00486c3e    8bce
                         call               _jmp_addr_0x004875d0                                 // 0x00486c40    e88b090000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486c45    e9ac080000
                         push               0x0                                                  // 0x00486c4a    6a00
                         push               0x00000090                                           // 0x00486c4c    6890000000
                         mov.s              ecx, esi                                             // 0x00486c51    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486c53    e8f8291900
                         mov.s              ecx, esi                                             // 0x00486c58    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486c5a    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486c60    c786e04700000000803f
                         call               _jmp_addr_0x0047f1c0                                 // 0x00486c6a    e85185ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                         // 0x00486c6f    da8eb4480000
                         call               _jmp_addr_0x007a1400                                 // 0x00486c75    e886a73100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x00486c7a    8b96d0470000
                         push               eax                                                  // 0x00486c80    50
                         push               edx                                                  // 0x00486c81    52
                         push               0x00000090                                           // 0x00486c82    6890000000
                         mov.s              ecx, esi                                             // 0x00486c87    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00486c89    e8820d1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486c8e    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486c94    e95d080000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00486c99    8b86a0490000
                         push               0x0                                                  // 0x00486c9f    6a00
                         inc                eax                                                  // 0x00486ca1    40
                         push               eax                                                  // 0x00486ca2    50
                         mov.s              ecx, esi                                             // 0x00486ca3    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486ca5    e8a6291900
                         mov.s              ecx, esi                                             // 0x00486caa    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486cac    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486cb2    c786e04700000000803f
                         call               _jmp_addr_0x0047f1c0                                 // 0x00486cbc    e8ff84ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                         // 0x00486cc1    da8eb4480000
                         call               _jmp_addr_0x007a1400                                 // 0x00486cc7    e834a73100
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]                    // 0x00486ccc    8b8ed0470000
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]                    // 0x00486cd2    8b96a0490000
                         push               eax                                                  // 0x00486cd8    50
                         push               ecx                                                  // 0x00486cd9    51
                         inc                edx                                                  // 0x00486cda    42
                         push               edx                                                  // 0x00486cdb    52
                         mov.s              ecx, esi                                             // 0x00486cdc    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00486cde    e82d0d1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486ce3    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486ce9    e908080000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00486cee    8b86a0490000
                         push               0x0                                                  // 0x00486cf4    6a00
                         inc                eax                                                  // 0x00486cf6    40
                         push               eax                                                  // 0x00486cf7    50
                         mov.s              ecx, esi                                             // 0x00486cf8    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486cfa    e851291900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]                    // 0x00486cff    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x00486d05    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486d0b    8986c0470000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00486d11    8b86a0490000
                         push               ecx                                                  // 0x00486d17    51
                         push               edx                                                  // 0x00486d18    52
                         inc                eax                                                  // 0x00486d19    40
                         push               eax                                                  // 0x00486d1a    50
                         mov.s              ecx, esi                                             // 0x00486d1b    8bce
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486d1d    c786e04700000000803f
                         call               _jmp_addr_0x00617a10                                 // 0x00486d27    e8e40c1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486d2c    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486d32    e9bf070000
                         push               0x0                                                  // 0x00486d37    6a00
                         push               0x00000091                                           // 0x00486d39    6891000000
                         mov.s              ecx, esi                                             // 0x00486d3e    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486d40    e80b291900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]                    // 0x00486d45    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x00486d4b    8b96d0470000
                         push               ecx                                                  // 0x00486d51    51
                         push               edx                                                  // 0x00486d52    52
                         push               0x00000091                                           // 0x00486d53    6891000000
                         mov.s              ecx, esi                                             // 0x00486d58    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486d5a    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486d60    c786e04700000000803f
                         call               _jmp_addr_0x00617a10                                 // 0x00486d6a    e8a10c1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486d6f    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486d75    e97c070000
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]                    // 0x00486d7a    8b868c510000
                         test               eax, eax                                             // 0x00486d80    85c0
                         {disp8} jne        _jmp_addr_0x00486da7                                 // 0x00486d82    7523
                         mov.s              ecx, esi                                             // 0x00486d84    8bce
                         call               _jmp_addr_0x0048b970                                 // 0x00486d86    e8e54b0000
                         test               eax, eax                                             // 0x00486d8b    85c0
                         {disp32} je        _jmp_addr_0x00487523                                 // 0x00486d8d    0f8490070000
                         {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000001             // 0x00486d93    c7868c51000001000000
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000             // 0x00486d9d    c786d047000000000000
_jmp_addr_0x00486da7:    push               0x0                                                  // 0x00486da7    6a00
                         push               0x7a                                                 // 0x00486da9    6a7a
                         mov.s              ecx, esi                                             // 0x00486dab    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486dad    e89e281900
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]                    // 0x00486db2    8b8ed0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486db8    8986c0470000
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]                    // 0x00486dbe    8b86bc480000
                         push               eax                                                  // 0x00486dc4    50
                         push               ecx                                                  // 0x00486dc5    51
                         push               0x7a                                                 // 0x00486dc6    6a7a
                         mov.s              ecx, esi                                             // 0x00486dc8    8bce
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x00486dca    c786e04700000000803f
                         call               _jmp_addr_0x00617a10                                 // 0x00486dd4    e8370c1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486dd9    8986d0470000
                         {disp32} mov       eax, dword ptr [esi + 0x0000528c]                    // 0x00486ddf    8b868c520000
                         test               eax, eax                                             // 0x00486de5    85c0
                         {disp32} je        _jmp_addr_0x004874f6                                 // 0x00486de7    0f8409070000
                         {disp32} fld       dword ptr [eax + 0x00000080]                         // 0x00486ded    d98080000000
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                          // 0x00486df3    8d54243c
                         {disp32} fsub      dword ptr [esi + 0x00000080]                         // 0x00486df7    d8a680000000
                         push               edx                                                  // 0x00486dfd    52
                         {disp8} fld        dword ptr [eax + 0x7c]                               // 0x00486dfe    d9407c
                         {disp8} fsub       dword ptr [esi + 0x7c]                               // 0x00486e01    d8667c
                         {disp8} fld        dword ptr [eax + 0x78]                               // 0x00486e04    d94078
                         {disp8} fsub       dword ptr [esi + 0x78]                               // 0x00486e07    d86678
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x00486e0a    d95c2440
                         {disp8} fstp       dword ptr [esp + 0x44]                               // 0x00486e0e    d95c2444
                         {disp8} fstp       dword ptr [esp + 0x48]                               // 0x00486e12    d95c2448
                         call               _jmp_addr_0x007faa50                                 // 0x00486e16    e8353c3700
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00486e1b    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x00486e1f    8b442418
                         push               eax                                                  // 0x00486e23    50
                         call               _jmp_addr_0x007faaf0                                 // 0x00486e24    e8c73c3700
                         {disp32} fstp      dword ptr [esi + 0x00000084]                         // 0x00486e29    d99e84000000
                         add                esp, 0x08                                            // 0x00486e2f    83c408
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00486e32    e9bf060000
                         cmp                dword ptr [esi + 0x0000579c], 0x01                   // 0x00486e37    83be9c57000001
                         {disp8} jne        _jmp_addr_0x00486e54                                 // 0x00486e3e    7514
                         {disp32} mov       eax, dword ptr [esi + 0x00004ab8]                    // 0x00486e40    8b86b84a0000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]                    // 0x00486e46    8b8eb4480000
                         sub.s              eax, ecx                                             // 0x00486e4c    2bc1
                         {disp32} mov       dword ptr [esi + 0x00004ab8], eax                    // 0x00486e4e    8986b84a0000
_jmp_addr_0x00486e54:    {disp32} fld       dword ptr [esi + 0x00000084]                         // 0x00486e54    d98684000000
                         push               0x0                                                  // 0x00486e5a    6a00
                         fld                st(0)                                                // 0x00486e5c    d9c0
                         push               0x000000c6                                           // 0x00486e5e    68c6000000
                         fcos                                                                    // 0x00486e63    d9ff
                         mov.s              ecx, esi                                             // 0x00486e65    8bce
                         {disp8} fstp       dword ptr [esp + 0x70]                               // 0x00486e67    d95c2470
                         fsin                                                                    // 0x00486e6b    d9fe
                         {disp8} fst        dword ptr [esp + 0x58]                               // 0x00486e6d    d9542458
                         fchs                                                                    // 0x00486e71    d9e0
                         {disp8} fstp       dword ptr [esp + 0x68]                               // 0x00486e73    d95c2468
                         call               @GetAnim__9MorphableFll@16                           // 0x00486e77    e8d4271900
                         {disp32} fild      dword ptr [esi + 0x000048bc]                         // 0x00486e7c    db86bc480000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486e82    8986c0470000
                         {disp8} lea        edx, dword ptr [eax + 0x10]                          // 0x00486e88    8d5010
                         mov                ecx, dword ptr [edx]                                 // 0x00486e8b    8b0a
                         {disp32} fmul      dword ptr [esi + 0x00000094]                         // 0x00486e8d    d88e94000000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x00486e93    894c2418
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                          // 0x00486e97    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                          // 0x00486e9a    8b5208
                         fidiv              dword ptr [eax]                                      // 0x00486e9d    da30
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                          // 0x00486e9f    894c241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x00486ea3    89542420
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00486ea7    d95c240c
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00486eab    d9442418
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x00486eaf    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00486eb3    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x00486eb7    8b442418
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00486ebb    d944241c
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00486ebf    89442414
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x00486ec3    d84c240c
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x00486ec7    d9442420
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x00486ecb    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00486ecf    d95c2420
                         {disp8} fst        dword ptr [esp + 0x10]                               // 0x00486ed3    d9542410
                         {disp8} fld        dword ptr [esp + 0x60]                               // 0x00486ed7    d9442460
                         {disp8} fmul       dword ptr [esp + 0x20]                               // 0x00486edb    d84c2420
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x00486edf    d9442468
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x00486ee3    d84c2418
                         faddp              st(1), st                                            // 0x00486ee7    dec1
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00486ee9    d95c2418
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x00486eed    d9442468
                         {disp8} fmul       dword ptr [esp + 0x20]                               // 0x00486ef1    d84c2420
                         {disp8} fld        dword ptr [esp + 0x50]                               // 0x00486ef5    d9442450
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00486ef9    d84c2414
                         faddp              st(1), st                                            // 0x00486efd    dec1
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00486eff    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00486f03    d9442418
                         {disp8} fadd       dword ptr [esi + 0x78]                               // 0x00486f07    d84678
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00486f0a    d95c2424
                         {disp8} fadd       dword ptr [esi + 0x7c]                               // 0x00486f0e    d8467c
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00486f11    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x00486f15    d9442420
                         {disp32} fadd      dword ptr [esi + 0x00000080]                         // 0x00486f19    d88680000000
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x00486f1f    d95c242c
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x00486f23    d9442424
                         {disp32} fsub      dword ptr [esi + 0x00004a98]                         // 0x00486f27    d8a6984a0000
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x00486f2d    d944242c
                         {disp32} fsub      dword ptr [esi + 0x00004aa0]                         // 0x00486f31    d8a6a04a0000
                         fld                st(0)                                                // 0x00486f37    d9c0
                         fmul               st, st(1)                                            // 0x00486f39    d8c9
                         fld                st(2)                                                // 0x00486f3b    d9c2
                         fmul               st, st(3)                                            // 0x00486f3d    d8cb
                         faddp              st(1), st                                            // 0x00486f3f    dec1
                         fsqrt                                                                   // 0x00486f41    d9fa
                         fstp               st(2)                                                // 0x00486f43    ddda
                         fstp               st(0)                                                // 0x00486f45    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2609c]                    // 0x00486f47    d9059cf08c00
                         {disp32} fmul      dword ptr [esi + 0x00004aa4]                         // 0x00486f4d    d88ea44a0000
                         fcompp                                                                  // 0x00486f53    ded9
                         fnstsw             ax                                                   // 0x00486f55    dfe0
                         test               ah, 0x41                                             // 0x00486f57    f6c441
                         {disp8} jne        _jmp_addr_0x00486f68                                 // 0x00486f5a    750c
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x00486f5c    8d4c2424
                         push               ecx                                                  // 0x00486f60    51
                         mov.s              ecx, esi                                             // 0x00486f61    8bce
                         call               _jmp_addr_0x006182f0                                 // 0x00486f63    e888131900
_jmp_addr_0x00486f68:    push               0x0                                                  // 0x00486f68    6a00
                         push               0x000000c6                                           // 0x00486f6a    68c6000000
                         mov.s              ecx, esi                                             // 0x00486f6f    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486f71    e8da261900
                         mov.s              ecx, esi                                             // 0x00486f76    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00486f78    8986c0470000
                         call               _jmp_addr_0x0047f1c0                                 // 0x00486f7e    e83d82ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                         // 0x00486f83    da8eb4480000
                         call               _jmp_addr_0x007a1400                                 // 0x00486f89    e872a43100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x00486f8e    8b96d0470000
                         push               eax                                                  // 0x00486f94    50
                         push               edx                                                  // 0x00486f95    52
                         push               0x000000c6                                           // 0x00486f96    68c6000000
                         mov.s              ecx, esi                                             // 0x00486f9b    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00486f9d    e86e0a1900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00486fa2    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874ec                                 // 0x00486fa8    e93f050000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00486fad    8b86a0490000
                         push               0x0                                                  // 0x00486fb3    6a00
                         push               eax                                                  // 0x00486fb5    50
                         mov.s              ecx, esi                                             // 0x00486fb6    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00486fb8    e893261900
                         mov.s              ebx, eax                                             // 0x00486fbd    8bd8
                         {disp32} mov       eax, dword ptr [esi + 0x000048b4]                    // 0x00486fbf    8b86b4480000
                         {disp32} mov       dword ptr [esi + 0x000047c0], ebx                    // 0x00486fc5    899ec0470000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x33b964]               // 0x00486fcb    8b3d6419d000
                         test               edi, edi                                             // 0x00486fd1    85ff
                         {disp32} je        _jmp_addr_0x00487272                                 // 0x00486fd3    0f8499020000
                         test               ebx, ebx                                             // 0x00486fd9    85db
                         {disp32} je        _jmp_addr_0x00487272                                 // 0x00486fdb    0f8491020000
                         {disp32} fld       dword ptr [edi + 0x0000350c]                         // 0x00486fe1    d9870c350000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b8]                    // 0x00486fe7    8b8eb8480000
                         {disp32} fcomp     dword ptr [edi + 0x0000102c]                         // 0x00486fed    d89f2c100000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x00486ff3    894c2414
                         fnstsw             ax                                                   // 0x00486ff7    dfe0
                         test               ah, 0x41                                             // 0x00486ff9    f6c441
                         {disp8} jne        _jmp_addr_0x00487030                                 // 0x00486ffc    7532
                         call               dword ptr [__imp__GetTickCount@4]                    // 0x00486ffe    ff15c4918a00
                         sub                eax, dword ptr [edi + 0x00003508]                    // 0x00487004    2b8708350000
                         cmp                eax, 0x00000fa0                                      // 0x0048700a    3da00f0000
                         {disp8} jae        _jmp_addr_0x00487030                                 // 0x0048700f    731f
                         {disp32} fld       dword ptr [edi + 0x00003050]                         // 0x00487011    d98750300000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1dca4]                    // 0x00487017    d81da46c8c00
                         fnstsw             ax                                                   // 0x0048701d    dfe0
                         test               ah, 0x01                                             // 0x0048701f    f6c401
                         {disp8} je         _jmp_addr_0x00487030                                 // 0x00487022    740c
                         {disp32} mov       edx, dword ptr [edi + 0x00003058]                    // 0x00487024    8b9758300000
                         {disp8} mov        dword ptr [esp + 0x0c], edx                          // 0x0048702a    8954240c
                         {disp8} jmp        _jmp_addr_0x00487038                                 // 0x0048702e    eb08
_jmp_addr_0x00487030:    {disp8} mov        dword ptr [esp + 0x0c], 0x00000078                   // 0x00487030    c744240c78000000
_jmp_addr_0x00487038:    {disp8} fild       dword ptr [esp + 0x0c]                               // 0x00487038    db44240c
                         {disp32} mov       eax, dword ptr [edi + 0x00003054]                    // 0x0048703c    8b8754300000
                         test               eax, eax                                             // 0x00487042    85c0
                         {disp32} fst       dword ptr [edi + 0x00003518]                         // 0x00487044    d99718350000
                         {disp8} je         _jmp_addr_0x00487075                                 // 0x0048704a    7429
                         {disp32} fld       dword ptr [edi + 0x00003510]                         // 0x0048704c    d98710350000
                         {disp32} mov       dword ptr [edi + 0x00003054], 0x00000000             // 0x00487052    c7875430000000000000
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x0048705c    d805b4a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x00487062    e899a33100
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x00487067    89442410
                         {disp8} fild       dword ptr [esp + 0x10]                               // 0x0048706b    db442410
                         {disp32} fstp      dword ptr [edi + 0x00003510]                         // 0x0048706f    d99f10350000
_jmp_addr_0x00487075:    {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00487075    d84c2414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c818]                    // 0x00487079    d80d18588c00
                         fld                st(0)                                                // 0x0048707f    d9c0
                         {disp32} fadd      dword ptr [edi + 0x00003510]                         // 0x00487081    d88710350000
                         {disp8} fst        dword ptr [esp + 0x10]                               // 0x00487087    d9542410
                         {disp32} fstp      dword ptr [edi + 0x00003510]                         // 0x0048708b    d99f10350000
                         {disp32} fadd      dword ptr [edi + 0x00003514]                         // 0x00487091    d88714350000
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00487097    d95c240c
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0048709b    d9442410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x0048709f    8b44240c
                         {disp8} fsub       dword ptr [esp + 0x0c]                               // 0x004870a3    d864240c
                         {disp32} mov       dword ptr [edi + 0x00003514], eax                    // 0x004870a7    898714350000
                         fld                st(0)                                                // 0x004870ad    d9c0
                         fabs                                                                    // 0x004870af    d9e1
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]                  // 0x004870b1    dc1d60b28a00
                         fnstsw             ax                                                   // 0x004870b7    dfe0
                         test               ah, 0x41                                             // 0x004870b9    f6c441
                         {disp8} jne        _jmp_addr_0x004870f4                                 // 0x004870bc    7536
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x004870be    d944240c
                         push               ebp                                                  // 0x004870c2    55
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x004870c3    d805b4a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x004870c9    e832a33100
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x004870ce    d9442414
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x004870d2    d805b4a38a00
                         mov.s              ebp, eax                                             // 0x004870d8    8be8
                         call               _jmp_addr_0x007a1400                                 // 0x004870da    e821a33100
                         sub.s              eax, ebp                                             // 0x004870df    2bc5
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x004870e1    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                               // 0x004870e5    db442414
                         pop                ebp                                                  // 0x004870e9    5d
                         {disp8} fadd       dword ptr [esp + 0x0c]                               // 0x004870ea    d844240c
                         {disp32} fstp      dword ptr [edi + 0x00003514]                         // 0x004870ee    d99f14350000
_jmp_addr_0x004870f4:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x004870f4    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]                     // 0x004870f8    d80d14b48a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]                     // 0x004870fe    d81578b68a00
                         fnstsw             ax                                                   // 0x00487104    dfe0
                         test               ah, 0x41                                             // 0x00487106    f6c441
                         {disp8} jne        _jmp_addr_0x00487122                                 // 0x00487109    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                          // 0x0048710b    d81590a38a00
                         fnstsw             ax                                                   // 0x00487111    dfe0
                         test               ah, 0x01                                             // 0x00487113    f6c401
                         {disp8} jne        _jmp_addr_0x0048712a                                 // 0x00487116    7512
                         fstp               st(0)                                                // 0x00487118    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x0048711a    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0048712a                                 // 0x00487120    eb08
_jmp_addr_0x00487122:    fstp               st(0)                                                // 0x00487122    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]                     // 0x00487124    d90578b68a00
_jmp_addr_0x0048712a:    fmul               st, st(1)                                            // 0x0048712a    d8c9
                         {disp32} fadd      dword ptr [edi + 0x00003514]                         // 0x0048712c    d88714350000
                         {disp32} fstp      dword ptr [edi + 0x00003514]                         // 0x00487132    d99f14350000
                         fstp               st(0)                                                // 0x00487138    ddd8
                         fild               dword ptr [ebx]                                      // 0x0048713a    db03
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x2615c]                    // 0x0048713c    d83d5cf18c00
                         {disp32} fcom      dword ptr [__real@3dcccccd]                          // 0x00487142    d8152cb28a00
                         fnstsw             ax                                                   // 0x00487148    dfe0
                         test               ah, 0x01                                             // 0x0048714a    f6c401
                         {disp8} je         _jmp_addr_0x00487159                                 // 0x0048714d    740a
                         fstp               st(0)                                                // 0x0048714f    ddd8
                         {disp32} fld       dword ptr [__real@3dcccccd]                          // 0x00487151    d9052cb28a00
                         {disp8} jmp        _jmp_addr_0x0048717d                                 // 0x00487157    eb24
_jmp_addr_0x00487159:    {disp32} fcom      dword ptr [rdata_bytes + 0x1c8a4]                    // 0x00487159    d815a4588c00
                         fnstsw             ax                                                   // 0x0048715f    dfe0
                         test               ah, 0x41                                             // 0x00487161    f6c441
                         {disp8} jne        _jmp_addr_0x00487170                                 // 0x00487164    750a
                         fstp               st(0)                                                // 0x00487166    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1c8a4]                    // 0x00487168    d905a4588c00
                         {disp8} jmp        _jmp_addr_0x00487199                                 // 0x0048716e    eb29
_jmp_addr_0x00487170:    {disp32} fcom      dword ptr [rdata_bytes + 0x1c82c]                    // 0x00487170    d8152c588c00
                         fnstsw             ax                                                   // 0x00487176    dfe0
                         test               ah, 0x01                                             // 0x00487178    f6c401
                         {disp8} je         _jmp_addr_0x0048718c                                 // 0x0048717b    740f
_jmp_addr_0x0048717d:    fadd.s             st(0), st(0)                                         // 0x0048717d    dcc0
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1c82c]                    // 0x0048717f    d8152c588c00
                         fnstsw             ax                                                   // 0x00487185    dfe0
                         test               ah, 0x01                                             // 0x00487187    f6c401
                         {disp8} jne        _jmp_addr_0x0048717d                                 // 0x0048718a    75f1
_jmp_addr_0x0048718c:    {disp32} fcom      dword ptr [rdata_bytes + 0x1c828]                    // 0x0048718c    d81528588c00
                         fnstsw             ax                                                   // 0x00487192    dfe0
                         test               ah, 0x01                                             // 0x00487194    f6c401
                         {disp8} jne        _jmp_addr_0x004871ac                                 // 0x00487197    7513
_jmp_addr_0x00487199:    {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x00487199    d80db4a38a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1c828]                    // 0x0048719f    d81528588c00
                         fnstsw             ax                                                   // 0x004871a5    dfe0
                         test               ah, 0x01                                             // 0x004871a7    f6c401
                         {disp8} je         _jmp_addr_0x00487199                                 // 0x004871aa    74ed
_jmp_addr_0x004871ac:    {disp32} fild      dword ptr [esi + 0x000047d0]                         // 0x004871ac    db86d0470000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x33b964]               // 0x004871b2    8b1d6419d000
                         fmul               st, st(1)                                            // 0x004871b8    d8c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26158]                    // 0x004871ba    d80d58f18c00
                         fld                st(0)                                                // 0x004871c0    d9c0
                         {disp32} fsub      dword ptr [ebx + 0x00003514]                         // 0x004871c2    d8a314350000
                         fabs                                                                    // 0x004871c8    d9e1
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]                  // 0x004871ca    dc1d60b28a00
                         fnstsw             ax                                                   // 0x004871d0    dfe0
                         test               ah, 0x41                                             // 0x004871d2    f6c441
                         {disp8} jne        _jmp_addr_0x00487242                                 // 0x004871d5    756b
                         fld                st(0)                                                // 0x004871d7    d9c0
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x004871d9    d805b4a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x004871df    e81ca23100
                         {disp32} fld       dword ptr [ebx + 0x00003514]                         // 0x004871e4    d98314350000
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x004871ea    d805b4a38a00
                         mov.s              edi, eax                                             // 0x004871f0    8bf8
                         call               _jmp_addr_0x007a1400                                 // 0x004871f2    e809a23100
                         mov.s              ecx, edi                                             // 0x004871f7    8bcf
                         sub.s              ecx, eax                                             // 0x004871f9    2bc8
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x004871fb    894c2414
                         {disp8} fild       dword ptr [esp + 0x14]                               // 0x004871ff    db442414
                         {disp32} fadd      dword ptr [ebx + 0x00003514]                         // 0x00487203    d88314350000
                         {disp32} fstp      dword ptr [ebx + 0x00003514]                         // 0x00487209    d99b14350000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x33b964]               // 0x0048720f    8b1d6419d000
                         {disp32} fld       dword ptr [ebx + 0x00003510]                         // 0x00487215    d98310350000
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x0048721b    d805b4a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x00487221    e8daa13100
                         sub.s              edi, eax                                             // 0x00487226    2bf8
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x00487228    897c2414
                         {disp8} fild       dword ptr [esp + 0x14]                               // 0x0048722c    db442414
                         {disp32} fadd      dword ptr [ebx + 0x00003510]                         // 0x00487230    d88310350000
                         {disp32} fstp      dword ptr [ebx + 0x00003510]                         // 0x00487236    d99b10350000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x33b964]               // 0x0048723c    8b1d6419d000
_jmp_addr_0x00487242:    {disp32} fld       dword ptr [ebx + 0x00003514]                         // 0x00487242    d98314350000
                         fsub               st, st(1)                                            // 0x00487248    d8e1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2615c]                    // 0x0048724a    d80d5cf18c00
                         fdiv               st, st(2)                                            // 0x00487250    d8f2
                         call               _jmp_addr_0x007a1400                                 // 0x00487252    e8a9a13100
                         fstp               st(0)                                                // 0x00487257    ddd8
                         test               eax, eax                                             // 0x00487259    85c0
                         fstp               st(0)                                                // 0x0048725b    ddd8
                         {disp8} jle        _jmp_addr_0x00487270                                 // 0x0048725d    7e11
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]                    // 0x0048725f    8b8eb4480000
                         lea                ecx, dword ptr [ecx + ecx * 0x4]                     // 0x00487265    8d0c89
                         cmp.s              eax, ecx                                             // 0x00487268    3bc1
                         {disp8} jl         _jmp_addr_0x00487272                                 // 0x0048726a    7c06
                         mov.s              eax, ecx                                             // 0x0048726c    8bc1
                         {disp8} jmp        _jmp_addr_0x00487272                                 // 0x0048726e    eb02
_jmp_addr_0x00487270:    xor.s              eax, eax                                             // 0x00487270    33c0
_jmp_addr_0x00487272:    {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x00487272    8b96d0470000
                         push               eax                                                  // 0x00487278    50
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00487279    8b86a0490000
                         push               edx                                                  // 0x0048727f    52
                         push               eax                                                  // 0x00487280    50
                         mov.s              ecx, esi                                             // 0x00487281    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00487283    e888071900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00487288    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874ec                                 // 0x0048728e    e959020000
                         cmp                dword ptr [esi + 0x0000579c], 0x01                   // 0x00487293    83be9c57000001
                         {disp8} jne        _jmp_addr_0x004872bc                                 // 0x0048729a    7520
                         {disp32} mov       eax, dword ptr [esi + 0x00004ab8]                    // 0x0048729c    8b86b84a0000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]                    // 0x004872a2    8b8eb4480000
                         sub.s              eax, ecx                                             // 0x004872a8    2bc1
                         {disp32} mov       dword ptr [esi + 0x00004ab8], eax                    // 0x004872aa    8986b84a0000
                         {disp8} jns        _jmp_addr_0x004872bc                                 // 0x004872b0    790a
                         {disp32} mov       dword ptr [esi + 0x0000579c], 0x00000002             // 0x004872b2    c7869c57000002000000
_jmp_addr_0x004872bc:    mov.s              ecx, esi                                             // 0x004872bc    8bce
                         call               _jmp_addr_0x00489180                                 // 0x004872be    e8bd1e0000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x004872c3    e92e020000
                         push               0x0                                                  // 0x004872c8    6a00
                         push               0x00000092                                           // 0x004872ca    6892000000
                         mov.s              ecx, esi                                             // 0x004872cf    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x004872d1    e87a231900
                         {disp32} mov       edx, dword ptr [esi + 0x000048bc]                    // 0x004872d6    8b96bc480000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x004872dc    8986c0470000
                         {disp32} mov       eax, dword ptr [esi + 0x000047d0]                    // 0x004872e2    8b86d0470000
                         push               edx                                                  // 0x004872e8    52
                         push               eax                                                  // 0x004872e9    50
                         push               0x00000092                                           // 0x004872ea    6892000000
                         mov.s              ecx, esi                                             // 0x004872ef    8bce
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x004872f1    c786e04700000000803f
                         call               _jmp_addr_0x00617a10                                 // 0x004872fb    e810071900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00487300    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487306    e9eb010000
                         push               0x0                                                  // 0x0048730b    6a00
                         push               0x7c                                                 // 0x0048730d    6a7c
                         mov.s              ecx, esi                                             // 0x0048730f    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00487311    e83a231900
                         mov.s              ecx, esi                                             // 0x00487316    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00487318    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x0048731e    c786e04700000000803f
                         call               _jmp_addr_0x0047f1c0                                 // 0x00487328    e8937effff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                         // 0x0048732d    da8eb4480000
                         call               _jmp_addr_0x007a1400                                 // 0x00487333    e8c8a03100
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]                    // 0x00487338    8b8ed0470000
                         push               eax                                                  // 0x0048733e    50
                         push               ecx                                                  // 0x0048733f    51
                         push               0x7c                                                 // 0x00487340    6a7c
                         mov.s              ecx, esi                                             // 0x00487342    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00487344    e8c7061900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x00487349    8986d0470000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x0048734f    e9a2010000
                         mov.s              ecx, esi                                             // 0x00487354    8bce
                         call               _jmp_addr_0x004890f0                                 // 0x00487356    e8951d0000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x0048735b    e996010000
                         push               0x0                                                  // 0x00487360    6a00
                         mov.s              ecx, esi                                             // 0x00487362    8bce
                         call               _jmp_addr_0x00487ce0                                 // 0x00487364    e877090000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487369    e988010000
                         mov.s              ecx, esi                                             // 0x0048736e    8bce
                         call               _jmp_addr_0x00487b30                                 // 0x00487370    e8bb070000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487375    e97c010000
                         {disp32} mov       edx, dword ptr [esi + 0x000049a0]                    // 0x0048737a    8b96a0490000
                         push               0x0                                                  // 0x00487380    6a00
                         push               edx                                                  // 0x00487382    52
                         mov.s              ecx, esi                                             // 0x00487383    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00487385    e8c6221900
                         {disp32} mov       ebx, dword ptr [esi + 0x000047d0]                    // 0x0048738a    8b9ed0470000
                         {disp32} mov       ecx, dword ptr [esi + 0x000049a0]                    // 0x00487390    8b8ea0490000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00487396    8986c0470000
                         mov                edi, dword ptr [eax]                                 // 0x0048739c    8b38
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]                    // 0x0048739e    8b86bc480000
                         push               eax                                                  // 0x004873a4    50
                         push               ebx                                                  // 0x004873a5    53
                         push               ecx                                                  // 0x004873a6    51
                         mov.s              ecx, esi                                             // 0x004873a7    8bce
                         sar                edi, 1                                               // 0x004873a9    d1ff
                         call               _jmp_addr_0x00617a10                                 // 0x004873ab    e860061900
                         cmp.s              ebx, edi                                             // 0x004873b0    3bdf
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x004873b2    8986d0470000
                         {disp32} jg        _jmp_addr_0x004874ec                                 // 0x004873b8    0f8f2e010000
                         cmp.s              eax, edi                                             // 0x004873be    3bc7
                         {disp32} jle       _jmp_addr_0x004874ec                                 // 0x004873c0    0f8e26010000
                         {disp32} mov       dword ptr [esi + 0x00005268], 0x00000001             // 0x004873c6    c7866852000001000000
                         {disp32} jmp       _jmp_addr_0x004874ec                                 // 0x004873d0    e917010000
                         cmp                dword ptr [esi + 0x0000579c], 0x01                   // 0x004873d5    83be9c57000001
                         {disp8} jne        _jmp_addr_0x004873f2                                 // 0x004873dc    7514
                         {disp32} mov       eax, dword ptr [esi + 0x00004ab8]                    // 0x004873de    8b86b84a0000
                         {disp32} mov       edx, dword ptr [esi + 0x000048b4]                    // 0x004873e4    8b96b4480000
                         sub.s              eax, edx                                             // 0x004873ea    2bc2
                         {disp32} mov       dword ptr [esi + 0x00004ab8], eax                    // 0x004873ec    8986b84a0000
_jmp_addr_0x004873f2:    mov.s              ecx, esi                                             // 0x004873f2    8bce
                         call               _jmp_addr_0x0048a5e0                                 // 0x004873f4    e8e7310000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x004873f9    e9f8000000
                         mov.s              ecx, esi                                             // 0x004873fe    8bce
                         call               _jmp_addr_0x0048c6c0                                 // 0x00487400    e8bb520000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487405    e9ec000000
                         mov.s              ecx, esi                                             // 0x0048740a    8bce
                         call               _jmp_addr_0x0048ceb0                                 // 0x0048740c    e89f5a0000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487411    e9e0000000
                         mov.s              ecx, esi                                             // 0x00487416    8bce
                         call               _jmp_addr_0x004887a0                                 // 0x00487418    e883130000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x0048741d    e9d4000000
                         mov.s              ecx, esi                                             // 0x00487422    8bce
                         call               _jmp_addr_0x004884a0                                 // 0x00487424    e877100000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487429    e9c8000000
                         mov.s              ecx, esi                                             // 0x0048742e    8bce
                         call               _jmp_addr_0x00488320                                 // 0x00487430    e8eb0e0000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487435    e9bc000000
                         mov.s              ecx, esi                                             // 0x0048743a    8bce
                         call               _jmp_addr_0x00487fa0                                 // 0x0048743c    e85f0b0000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x00487441    e9b0000000
                         mov.s              ecx, esi                                             // 0x00487446    8bce
                         call               _jmp_addr_0x0048bcc0                                 // 0x00487448    e873480000
                         {disp32} jmp       _jmp_addr_0x004874f6                                 // 0x0048744d    e9a4000000
                         mov.s              ecx, esi                                             // 0x00487452    8bce
                         call               _jmp_addr_0x0048bab0                                 // 0x00487454    e857460000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x00487459    8b86a0490000
                         push               0x0                                                  // 0x0048745f    6a00
                         push               eax                                                  // 0x00487461    50
                         mov.s              ecx, esi                                             // 0x00487462    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x00487464    e8e7211900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]                    // 0x00487469    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x0048746f    8b96d0470000
                         push               ecx                                                  // 0x00487475    51
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x00487476    8986c0470000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x0048747c    8b86a0490000
                         push               edx                                                  // 0x00487482    52
                         push               eax                                                  // 0x00487483    50
                         mov.s              ecx, esi                                             // 0x00487484    8bce
                         call               _jmp_addr_0x00617a80                                 // 0x00487486    e8f5051900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x0048748b    8986d0470000
                         {disp8} jmp        _jmp_addr_0x004874ec                                 // 0x00487491    eb59
                         mov.s              ecx, esi                                             // 0x00487493    8bce
                         call               _jmp_addr_0x0048b970                                 // 0x00487495    e8d6440000
                         {disp8} jmp        _jmp_addr_0x004874f6                                 // 0x0048749a    eb5a
                         push               0x0                                                  // 0x0048749c    6a00
                         push               0x6d                                                 // 0x0048749e    6a6d
                         mov.s              ecx, esi                                             // 0x004874a0    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x004874a2    e8a9211900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]                    // 0x004874a7    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]                    // 0x004874ad    8b96d0470000
                         push               ecx                                                  // 0x004874b3    51
                         push               edx                                                  // 0x004874b4    52
                         push               0x6d                                                 // 0x004874b5    6a6d
                         mov.s              ecx, esi                                             // 0x004874b7    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x004874b9    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x004874bf    c786e04700000000803f
                         call               _jmp_addr_0x00617a10                                 // 0x004874c9    e842051900
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax                    // 0x004874ce    8986d0470000
                         {disp8} jmp        _jmp_addr_0x004874f6                                 // 0x004874d4    eb20
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]                    // 0x004874d6    8b86a0490000
                         push               0x0                                                  // 0x004874dc    6a00
                         push               eax                                                  // 0x004874de    50
                         mov.s              ecx, esi                                             // 0x004874df    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x004874e1    e86a211900
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax                    // 0x004874e6    8986c0470000
_jmp_addr_0x004874ec:    {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000             // 0x004874ec    c786e04700000000803f
_jmp_addr_0x004874f6:    {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x004874f6    8b8634480000
                         test               eax, eax                                             // 0x004874fc    85c0
                         {disp8} je         _jmp_addr_0x00487506                                 // 0x004874fe    7406
                         test               byte ptr [eax + 0x24], 0x10                          // 0x00487500    f6402410
                         {disp8} jne        _jmp_addr_0x00487523                                 // 0x00487504    751d
_jmp_addr_0x00487506:    {disp32} mov       ecx, dword ptr [esi + 0x00004994]                    // 0x00487506    8b8e94490000
                         {disp32} mov       edx, dword ptr [esi + 0x000047b8]                    // 0x0048750c    8b96b8470000
                         {disp32} mov       eax, dword ptr [esi + 0x00005178]                    // 0x00487512    8b8678510000
                         push               ecx                                                  // 0x00487518    51
                         push               edx                                                  // 0x00487519    52
                         push               eax                                                  // 0x0048751a    50
                         call               _jmp_addr_0x004867f0                                 // 0x0048751b    e8d0f2ffff
                         add                esp, 0x0c                                            // 0x00487520    83c40c
_jmp_addr_0x00487523:    pop                edi                                                  // 0x00487523    5f
                         pop                esi                                                  // 0x00487524    5e
                         pop                ebx                                                  // 0x00487525    5b
                         add                esp, 0x6c                                            // 0x00487526    83c46c
                         ret                                                                     // 0x00487529    c3

// Snippet: db, [0x0048752a, 0x0048752c)
.byte 0x8b, 0xff                  // 0x0048752a

// Snippet: jmptbl, [0x0048752c, 0x004875c4)
.byte 0x49, 0x6a, 0x48, 0x00      // 0x0048752c
.byte 0x55, 0x6a, 0x48, 0x00      // 0x00487530
.byte 0x61, 0x6a, 0x48, 0x00      // 0x00487534
.byte 0x3e, 0x6c, 0x48, 0x00      // 0x00487538
.byte 0xee, 0x6c, 0x48, 0x00      // 0x0048753c
.byte 0x37, 0x6d, 0x48, 0x00      // 0x00487540
.byte 0xad, 0x6f, 0x48, 0x00      // 0x00487544
.byte 0xc8, 0x72, 0x48, 0x00      // 0x00487548
.byte 0x60, 0x73, 0x48, 0x00      // 0x0048754c
.byte 0x60, 0x73, 0x48, 0x00      // 0x00487550
.byte 0x7a, 0x73, 0x48, 0x00      // 0x00487554
.byte 0x7a, 0x73, 0x48, 0x00      // 0x00487558
.byte 0xfe, 0x73, 0x48, 0x00      // 0x0048755c
.byte 0x0a, 0x74, 0x48, 0x00      // 0x00487560
.byte 0x46, 0x74, 0x48, 0x00      // 0x00487564
.byte 0x6e, 0x73, 0x48, 0x00      // 0x00487568
.byte 0x46, 0x74, 0x48, 0x00      // 0x0048756c
.byte 0x54, 0x73, 0x48, 0x00      // 0x00487570
.byte 0x16, 0x74, 0x48, 0x00      // 0x00487574
.byte 0x22, 0x74, 0x48, 0x00      // 0x00487578
.byte 0x2e, 0x74, 0x48, 0x00      // 0x0048757c
.byte 0x3a, 0x74, 0x48, 0x00      // 0x00487580
.byte 0x7a, 0x6d, 0x48, 0x00      // 0x00487584
.byte 0x93, 0x72, 0x48, 0x00      // 0x00487588
.byte 0xd5, 0x73, 0x48, 0x00      // 0x0048758c
.byte 0x0b, 0x73, 0x48, 0x00      // 0x00487590
.byte 0x8b, 0x6a, 0x48, 0x00      // 0x00487594
.byte 0xe0, 0x6a, 0x48, 0x00      // 0x00487598
.byte 0x37, 0x6e, 0x48, 0x00      // 0x0048759c
.byte 0x4a, 0x6c, 0x48, 0x00      // 0x004875a0
.byte 0x52, 0x74, 0x48, 0x00      // 0x004875a4
.byte 0x52, 0x74, 0x48, 0x00      // 0x004875a8
.byte 0x8b, 0x6a, 0x48, 0x00      // 0x004875ac
.byte 0xf5, 0x6b, 0x48, 0x00      // 0x004875b0
.byte 0x99, 0x6c, 0x48, 0x00      // 0x004875b4
.byte 0x93, 0x74, 0x48, 0x00      // 0x004875b8
.byte 0xd6, 0x74, 0x48, 0x00      // 0x004875bc
.byte 0x9c, 0x74, 0x48, 0x00      // 0x004875c0

// Snippet: db, [0x004875c4, 0x004875d0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004875c4
.byte 0x90, 0x90, 0x90, 0x90      // 0x004875c8
.byte 0x90, 0x90, 0x90, 0x90      // 0x004875cc

