.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern ___nw__FUl
.extern _jmp_addr_0x007fb810
.extern _jmp_addr_0x007fb880
.extern _jmp_addr_0x007fc760

.globl _jmp_addr_0x005f04c0
.globl ?GetPhysicsConstantsType@Animal@@UAEIXZ
.globl ?SetUpPhysOb@Animal@@UAEXPAUPhysOb@@@Z

start_0x005f04c0_0x005f0a60:
// Snippet: asm, [0x005f04c0, 0x005f0a28)
_jmp_addr_0x005f04c0:    mov.s              eax, ecx                                 // 0x005f04c0    8bc1
                         ret                                                         // 0x005f04c2    c3
                         nop                                                         // 0x005f04c3    90
                         nop                                                         // 0x005f04c4    90
                         nop                                                         // 0x005f04c5    90
                         nop                                                         // 0x005f04c6    90
                         nop                                                         // 0x005f04c7    90
                         nop                                                         // 0x005f04c8    90
                         nop                                                         // 0x005f04c9    90
                         nop                                                         // 0x005f04ca    90
                         nop                                                         // 0x005f04cb    90
                         nop                                                         // 0x005f04cc    90
                         nop                                                         // 0x005f04cd    90
                         nop                                                         // 0x005f04ce    90
                         nop                                                         // 0x005f04cf    90
?GetPhysicsConstantsType@Animal@@UAEIXZ:
                         mov                eax, 0x00000008                          // 0x005f04d0    b808000000
                         ret                                                         // 0x005f04d5    c3
                         nop                                                         // 0x005f04d6    90
                         nop                                                         // 0x005f04d7    90
                         nop                                                         // 0x005f04d8    90
                         nop                                                         // 0x005f04d9    90
                         nop                                                         // 0x005f04da    90
                         nop                                                         // 0x005f04db    90
                         nop                                                         // 0x005f04dc    90
                         nop                                                         // 0x005f04dd    90
                         nop                                                         // 0x005f04de    90
                         nop                                                         // 0x005f04df    90
?SetUpPhysOb@Animal@@UAEXPAUPhysOb@@@Z:
                         sub                esp, 0x40                                // 0x005f04e0    83ec40
                         push               ebx                                      // 0x005f04e3    53
                         push               ebp                                      // 0x005f04e4    55
                         push               esi                                      // 0x005f04e5    56
                         push               edi                                      // 0x005f04e6    57
                         mov.s              edi, ecx                                 // 0x005f04e7    8bf9
                         mov                eax, dword ptr [edi]                     // 0x005f04e9    8b07
                         call               dword ptr [eax + 0x638]                  // 0x005f04eb    ff9038060000
                         {disp8} fst        dword ptr [esp + 0x1c]                   // 0x005f04f1    d954241c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]        // 0x005f04f5    d81d40588c00
                         fnstsw             ax                                       // 0x005f04fb    dfe0
                         test               ah, 0x01                                 // 0x005f04fd    f6c401
                         {disp8} je         _jmp_addr_0x005f050a                     // 0x005f0500    7408
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3c23d70a       // 0x005f0502    c744241c0ad7233c
_jmp_addr_0x005f050a:    mov                edx, dword ptr [edi]                     // 0x005f050a    8b17
                         push               0x1                                      // 0x005f050c    6a01
                         mov.s              ecx, edi                                 // 0x005f050e    8bcf
                         call               dword ptr [edx + 0x788]                  // 0x005f0510    ff9288070000
                         {disp8} mov        edx, dword ptr [esp + 0x20]              // 0x005f0516    8b542420
                         {disp8} mov        esi, dword ptr [esp + 0x58]              // 0x005f051a    8b742458
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x005f051e    8d0440
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00cc63e0]  // 0x005f0521    8d0cc5e063cc00
                         push               ecx                                      // 0x005f0528    51
                         push               edx                                      // 0x005f0529    52
                         mov.s              ecx, esi                                 // 0x005f052a    8bce
                         call               _jmp_addr_0x007fb810                     // 0x005f052c    e8dfb22000
                         push               0x00000121                               // 0x005f0531    6821010000
                         push               0x00bf3b14                               // 0x005f0536    68143bbf00
                         push               0x000003c0                               // 0x005f053b    68c0030000
                         {disp32} mov       dword ptr [esi + 0x00000154], 0x0000000c // 0x005f0540    c786540100000c000000
                         call               ___nw__FUl                               // 0x005f054a    e841b21e00
                         mov.s              ebx, eax                                 // 0x005f054f    8bd8
                         xor.s              ebp, ebp                                 // 0x005f0551    33ed
                         add                esp, 0x0c                                // 0x005f0553    83c40c
                         cmp.s              ebx, ebp                                 // 0x005f0556    3bdd
                         {disp8} je         _jmp_addr_0x005f0587                     // 0x005f0558    742d
                         {disp8} mov        dword ptr [esp + 0x54], ebx              // 0x005f055a    895c2454
                         {disp8} mov        dword ptr [esp + 0x1c], 0x0000000c       // 0x005f055e    c744241c0c000000
_jmp_addr_0x005f0566:    {disp8} mov        ecx, dword ptr [esp + 0x54]              // 0x005f0566    8b4c2454
                         call               _jmp_addr_0x005f04c0                     // 0x005f056a    e851ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x54]              // 0x005f056f    8b4c2454
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x005f0573    8b44241c
                         add                ecx, 0x50                                // 0x005f0577    83c150
                         dec                eax                                      // 0x005f057a    48
                         {disp8} mov        dword ptr [esp + 0x54], ecx              // 0x005f057b    894c2454
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x005f057f    8944241c
                         {disp8} jne        _jmp_addr_0x005f0566                     // 0x005f0583    75e1
                         {disp8} jmp        _jmp_addr_0x005f0589                     // 0x005f0585    eb02
_jmp_addr_0x005f0587:    xor.s              ebx, ebx                                 // 0x005f0587    33db
_jmp_addr_0x005f0589:    {disp32} mov       dword ptr [esi + 0x0000015c], ebx        // 0x005f0589    899e5c010000
                         mov                eax, dword ptr [edi]                     // 0x005f058f    8b07
                         mov.s              ecx, edi                                 // 0x005f0591    8bcf
                         call               dword ptr [eax + 0x120]                  // 0x005f0593    ff9020010000
                         {disp32} fdivr     dword ptr [_rdata_float0p5]              // 0x005f0599    d83db4a38a00
                         mov                edx, dword ptr [edi]                     // 0x005f059f    8b17
                         mov.s              ecx, edi                                 // 0x005f05a1    8bcf
                         {disp8} fstp       dword ptr [esp + 0x54]                   // 0x005f05a3    d95c2454
                         call               dword ptr [edx + 0x42c]                  // 0x005f05a7    ff922c040000
                         {disp8} fmul       dword ptr [esp + 0x54]                   // 0x005f05ad    d84c2454
                         {disp32} mov       dword ptr [esi + 0x000000f8], ebp        // 0x005f05b1    89aef8000000
                         {disp32} mov       dword ptr [esi + 0x00000100], ebp        // 0x005f05b7    89ae00010000
                         {disp32} fstp      dword ptr [esi + 0x000000fc]             // 0x005f05bd    d99efc000000
                         mov                eax, dword ptr [edi]                     // 0x005f05c3    8b07
                         mov.s              ecx, edi                                 // 0x005f05c5    8bcf
                         call               dword ptr [eax + 0x42c]                  // 0x005f05c7    ff902c040000
                         {disp32} fmul      dword ptr [_rdata_float0p5]              // 0x005f05cd    d80db4a38a00
                         mov                edx, dword ptr [edi]                     // 0x005f05d3    8b17
                         mov.s              ecx, edi                                 // 0x005f05d5    8bcf
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x005f05d7    d95c2410
                         call               dword ptr [edx + 0x64]                   // 0x005f05db    ff5264
                         fld                st(0)                                    // 0x005f05de    d9c0
                         {disp32} mov       edi, dword ptr [esi + 0x0000015c]        // 0x005f05e0    8bbe5c010000
                         {disp32} fmul      dword ptr [__real@3e999999]              // 0x005f05e6    d80d3cb28a00
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x005f05ec    8d4c2420
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x005f05f0    d95c2418
                         fld                st(0)                                    // 0x005f05f4    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c844]        // 0x005f05f6    d80d44588c00
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x005f05fc    d95c241c
                         fld                st(0)                                    // 0x005f0600    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]         // 0x005f0602    d80dd4b38a00
                         {disp8} fstp       dword ptr [esp + 0x54]                   // 0x005f0608    d95c2454
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba04]        // 0x005f060c    d80d044a8c00
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x005f0612    d95c2414
                         call               ?SetIdentity@LHMatrix@@QAEXXZ            // 0x005f0616    e8e52ee1ff
                         {disp32} fld       qword ptr [rdata_bytes + 0x1eb48]        // 0x005f061b    dd05487b8c00
                         {disp32} mov       eax, dword ptr [esi + 0x00000154]        // 0x005f0621    8b8654010000
                         fcos                                                        // 0x005f0627    d9ff
                         xor.s              edx, edx                                 // 0x005f0629    33d2
                         cmp.s              eax, ebp                                 // 0x005f062b    3bc5
                         {disp8} fst        dword ptr [esp + 0x40]                   // 0x005f062d    d9542440
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x005f0631    d95c2420
                         {disp32} fld       qword ptr [rdata_bytes + 0x1eb48]        // 0x005f0635    dd05487b8c00
                         fsin                                                        // 0x005f063b    d9fe
                         {disp8} fst        dword ptr [esp + 0x28]                   // 0x005f063d    d9542428
                         fchs                                                        // 0x005f0641    d9e0
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x005f0643    d95c2438
                         {disp32} jle       _jmp_addr_0x005f083f                     // 0x005f0647    0f8ef2010000
                         {disp8} lea        ecx, dword ptr [edi + 0x14]              // 0x005f064d    8d4f14
_jmp_addr_0x005f0650:    cmp                edx, 0x0b                                // 0x005f0650    83fa0b
                         mov                dword ptr [edi], ebp                     // 0x005f0653    892f
                         {disp8} mov        dword ptr [ecx + -0x08], ebp             // 0x005f0655    8969f8
                         {disp8} mov        dword ptr [ecx + -0x0c], ebp             // 0x005f0658    8969f4
                         {disp8} mov        dword ptr [ecx + -0x10], ebp             // 0x005f065b    8969f0
                         {disp32} ja        _jmp_addr_0x005f0763                     // 0x005f065e    0f87ff000000
                         jmp                dword ptr [edx*4 + 0x5f0a28]             // 0x005f0664    ff2495280a5f00
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f066b    8b442454
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f066f    8941fc
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f0672    8b442410
                         mov                dword ptr [ecx], eax                     // 0x005f0676    8901
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f0678    8b442414
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f067c    894104
                         {disp32} jmp       _jmp_addr_0x005f0763                     // 0x005f067f    e9df000000
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f0684    d9442454
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f0688    8b442410
                         fchs                                                        // 0x005f068c    d9e0
                         mov                dword ptr [ecx], eax                     // 0x005f068e    8901
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f0690    d959fc
                         {disp32} jmp       _jmp_addr_0x005f075a                     // 0x005f0693    e9c2000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f0698    8b442410
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f069c    d9442454
                         mov                dword ptr [ecx], eax                     // 0x005f06a0    8901
                         fchs                                                        // 0x005f06a2    d9e0
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f06a4    8b442414
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f06a8    d959fc
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f06ab    894104
                         {disp32} jmp       _jmp_addr_0x005f0763                     // 0x005f06ae    e9b0000000
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f06b3    8b442454
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f06b7    8941fc
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f06ba    8b442410
                         mov                dword ptr [ecx], eax                     // 0x005f06be    8901
                         {disp32} jmp       _jmp_addr_0x005f075a                     // 0x005f06c0    e995000000
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x005f06c5    8b442418
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f06c9    8941fc
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x005f06cc    8b44241c
                         mov                dword ptr [ecx], ebp                     // 0x005f06d0    8929
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f06d2    894104
                         {disp32} jmp       _jmp_addr_0x005f0763                     // 0x005f06d5    e989000000
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x005f06da    d9442418
                         mov                dword ptr [ecx], ebp                     // 0x005f06de    8929
                         fchs                                                        // 0x005f06e0    d9e0
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f06e2    d959fc
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x005f06e5    d944241c
                         {disp8} jmp        _jmp_addr_0x005f075e                     // 0x005f06e9    eb73
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x005f06eb    d9442418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x005f06ef    8b44241c
                         fchs                                                        // 0x005f06f3    d9e0
                         mov                dword ptr [ecx], ebp                     // 0x005f06f5    8929
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f06f7    d959fc
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f06fa    894104
                         {disp8} jmp        _jmp_addr_0x005f0763                     // 0x005f06fd    eb64
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x005f06ff    8b442418
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x005f0703    d944241c
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f0707    8941fc
                         mov                dword ptr [ecx], ebp                     // 0x005f070a    8929
                         {disp8} jmp        _jmp_addr_0x005f075e                     // 0x005f070c    eb50
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f070e    8b442454
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x005f0712    d9442410
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f0716    8941fc
                         fchs                                                        // 0x005f0719    d9e0
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f071b    8b442414
                         fstp               dword ptr [ecx]                          // 0x005f071f    d919
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f0721    894104
                         {disp8} jmp        _jmp_addr_0x005f0763                     // 0x005f0724    eb3d
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f0726    d9442454
                         fchs                                                        // 0x005f072a    d9e0
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f072c    d959fc
                         {disp8} jmp        _jmp_addr_0x005f0752                     // 0x005f072f    eb21
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f0731    d9442454
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f0735    8b442414
                         fchs                                                        // 0x005f0739    d9e0
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f073b    894104
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f073e    d959fc
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x005f0741    d9442410
                         fchs                                                        // 0x005f0745    d9e0
                         fstp               dword ptr [ecx]                          // 0x005f0747    d919
                         {disp8} jmp        _jmp_addr_0x005f0763                     // 0x005f0749    eb18
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f074b    8b442454
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f074f    8941fc
_jmp_addr_0x005f0752:    {disp8} fld        dword ptr [esp + 0x10]                   // 0x005f0752    d9442410
                         fchs                                                        // 0x005f0756    d9e0
                         fstp               dword ptr [ecx]                          // 0x005f0758    d919
_jmp_addr_0x005f075a:    {disp8} fld        dword ptr [esp + 0x14]                   // 0x005f075a    d9442414
_jmp_addr_0x005f075e:    fchs                                                        // 0x005f075e    d9e0
                         {disp8} fstp       dword ptr [ecx + 0x04]                   // 0x005f0760    d95904
_jmp_addr_0x005f0763:    {disp8} fld        dword ptr [ecx + -0x04]                  // 0x005f0763    d941fc
                         fld                dword ptr [ecx]                          // 0x005f0766    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                   // 0x005f0768    d94104
                         {disp8} fld        dword ptr [esp + 0x38]                   // 0x005f076b    d9442438
                         fmul               st, st(1)                                // 0x005f076f    d8c9
                         {disp8} fld        dword ptr [esp + 0x2c]                   // 0x005f0771    d944242c
                         fmul               st, st(3)                                // 0x005f0775    d8cb
                         faddp              st(1), st                                // 0x005f0777    dec1
                         fld                st(3)                                    // 0x005f0779    d9c3
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x005f077b    d84c2420
                         faddp              st(1), st                                // 0x005f077f    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                   // 0x005f0781    d8442444
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f0785    d959fc
                         {disp8} fld        dword ptr [esp + 0x3c]                   // 0x005f0788    d944243c
                         fmul               st, st(1)                                // 0x005f078c    d8c9
                         {disp8} fld        dword ptr [esp + 0x30]                   // 0x005f078e    d9442430
                         fmul               st, st(3)                                // 0x005f0792    d8cb
                         faddp              st(1), st                                // 0x005f0794    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                   // 0x005f0796    d9442424
                         fmul               st, st(4)                                // 0x005f079a    d8cc
                         faddp              st(1), st                                // 0x005f079c    dec1
                         {disp8} fadd       dword ptr [esp + 0x48]                   // 0x005f079e    d8442448
                         fstp               dword ptr [ecx]                          // 0x005f07a2    d919
                         {disp8} fld        dword ptr [esp + 0x34]                   // 0x005f07a4    d9442434
                         fmul               st, st(2)                                // 0x005f07a8    d8ca
                         {disp8} fld        dword ptr [esp + 0x40]                   // 0x005f07aa    d9442440
                         fmul               st, st(2)                                // 0x005f07ae    d8ca
                         faddp              st(1), st                                // 0x005f07b0    dec1
                         {disp8} fld        dword ptr [esp + 0x28]                   // 0x005f07b2    d9442428
                         fmul               st, st(4)                                // 0x005f07b6    d8cc
                         faddp              st(1), st                                // 0x005f07b8    dec1
                         {disp8} fadd       dword ptr [esp + 0x4c]                   // 0x005f07ba    d844244c
                         {disp8} fstp       dword ptr [ecx + 0x04]                   // 0x005f07be    d95904
                         fstp               st(0)                                    // 0x005f07c1    ddd8
                         fstp               st(0)                                    // 0x005f07c3    ddd8
                         fstp               st(0)                                    // 0x005f07c5    ddd8
                         {disp8} fld        dword ptr [ecx + -0x04]                  // 0x005f07c7    d941fc
                         fld                dword ptr [ecx]                          // 0x005f07ca    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                   // 0x005f07cc    d94104
                         {disp32} fld       dword ptr [esi + 0x00000150]             // 0x005f07cf    d98650010000
                         fld                st(1)                                    // 0x005f07d5    d9c1
                         fmul               st, st(2)                                // 0x005f07d7    d8ca
                         fld                st(3)                                    // 0x005f07d9    d9c3
                         fmul               st, st(4)                                // 0x005f07db    d8cc
                         faddp              st(1), st                                // 0x005f07dd    dec1
                         fld                st(4)                                    // 0x005f07df    d9c4
                         fmul               st, st(5)                                // 0x005f07e1    d8cd
                         faddp              st(1), st                                // 0x005f07e3    dec1
                         fsqrt                                                       // 0x005f07e5    d9fa
                         fstp               st(4)                                    // 0x005f07e7    dddc
                         fxch               st(1)                                    // 0x005f07e9    d9c9
                         fxch               st(3)                                    // 0x005f07eb    d9cb
                         fcompp                                                      // 0x005f07ed    ded9
                         fxch               st(1)                                    // 0x005f07ef    d9c9
                         fstp               st(0)                                    // 0x005f07f1    ddd8
                         fstp               st(0)                                    // 0x005f07f3    ddd8
                         fnstsw             ax                                       // 0x005f07f5    dfe0
                         test               ah, 0x01                                 // 0x005f07f7    f6c401
                         {disp8} je         _jmp_addr_0x005f0804                     // 0x005f07fa    7408
                         {disp32} fld       dword ptr [esi + 0x00000150]             // 0x005f07fc    d98650010000
                         {disp8} jmp        _jmp_addr_0x005f0824                     // 0x005f0802    eb20
_jmp_addr_0x005f0804:    {disp8} fld        dword ptr [ecx + -0x04]                  // 0x005f0804    d941fc
                         fld                dword ptr [ecx]                          // 0x005f0807    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                   // 0x005f0809    d94104
                         fld                st(0)                                    // 0x005f080c    d9c0
                         fmul               st, st(1)                                // 0x005f080e    d8c9
                         fld                st(2)                                    // 0x005f0810    d9c2
                         fmul               st, st(3)                                // 0x005f0812    d8cb
                         faddp              st(1), st                                // 0x005f0814    dec1
                         fld                st(3)                                    // 0x005f0816    d9c3
                         fmul               st, st(4)                                // 0x005f0818    d8cc
                         faddp              st(1), st                                // 0x005f081a    dec1
                         fsqrt                                                       // 0x005f081c    d9fa
                         fstp               st(3)                                    // 0x005f081e    dddb
                         fstp               st(0)                                    // 0x005f0820    ddd8
                         fstp               st(0)                                    // 0x005f0822    ddd8
_jmp_addr_0x005f0824:    {disp32} mov       eax, dword ptr [esi + 0x00000154]        // 0x005f0824    8b8654010000
                         add                edi, 0x50                                // 0x005f082a    83c750
                         add                ecx, 0x50                                // 0x005f082d    83c150
                         inc                edx                                      // 0x005f0830    42
                         cmp.s              edx, eax                                 // 0x005f0831    3bd0
                         {disp32} fstp      dword ptr [esi + 0x00000150]             // 0x005f0833    d99e50010000
                         {disp32} jl        _jmp_addr_0x005f0650                     // 0x005f0839    0f8c11feffff
_jmp_addr_0x005f083f:    push               0x0000016a                               // 0x005f083f    686a010000
                         push               0x00bf3b14                               // 0x005f0844    68143bbf00
                         push               0x000002d0                               // 0x005f0849    68d0020000
                         {disp32} mov       dword ptr [esi + 0x00000160], 0x00000014 // 0x005f084e    c7866001000014000000
                         call               ___nw__FUl                               // 0x005f0858    e833af1e00
                         {disp32} mov       dword ptr [esi + 0x00000164], eax        // 0x005f085d    898664010000
                         {disp8} mov        dword ptr [eax + 0x08], ebp              // 0x005f0863    896808
                         mov                dword ptr [eax], 0x00000001              // 0x005f0866    c70001000000
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000002       // 0x005f086c    c7400402000000
                         {disp8} mov        dword ptr [eax + 0x24], ebp              // 0x005f0873    896824
                         {disp8} mov        dword ptr [eax + 0x2c], 0x00000001       // 0x005f0876    c7402c01000000
                         mov                edx, 0x00000003                          // 0x005f087d    ba03000000
                         {disp8} mov        dword ptr [eax + 0x28], edx              // 0x005f0882    895028
                         {disp8} mov        dword ptr [eax + 0x50], edx              // 0x005f0885    895050
                         {disp8} mov        dword ptr [eax + 0x4c], 0x00000001       // 0x005f0888    c7404c01000000
                         mov                ebx, 0x00000005                          // 0x005f088f    bb05000000
                         {disp8} mov        dword ptr [eax + 0x48], ebx              // 0x005f0894    895848
                         {disp8} mov        dword ptr [eax + 0x74], edx              // 0x005f0897    895074
                         {disp8} mov        dword ptr [eax + 0x70], ebx              // 0x005f089a    895870
                         mov                ecx, 0x00000007                          // 0x005f089d    b907000000
                         {disp8} mov        dword ptr [eax + 0x6c], ecx              // 0x005f08a2    89486c
                         {disp32} mov       dword ptr [eax + 0x00000094], edx        // 0x005f08a5    899094000000
                         {disp32} mov       dword ptr [eax + 0x00000090], ecx        // 0x005f08ab    898890000000
                         {disp32} mov       dword ptr [eax + 0x00000098], ebp        // 0x005f08b1    89a898000000
                         {disp32} mov       dword ptr [eax + 0x000000b8], ecx        // 0x005f08b7    8988b8000000
                         {disp32} mov       dword ptr [eax + 0x000000bc], ebp        // 0x005f08bd    89a8bc000000
                         mov                edi, 0x00000004                          // 0x005f08c3    bf04000000
                         {disp32} mov       dword ptr [eax + 0x000000b4], edi        // 0x005f08c8    89b8b4000000
                         {disp32} mov       dword ptr [eax + 0x000000e0], ebp        // 0x005f08ce    89a8e0000000
                         {disp32} mov       dword ptr [eax + 0x000000dc], edi        // 0x005f08d4    89b8dc000000
                         mov                edx, 0x00000006                          // 0x005f08da    ba06000000
                         {disp32} mov       dword ptr [eax + 0x000000d8], edx        // 0x005f08df    8990d8000000
                         {disp32} mov       dword ptr [eax + 0x00000104], ebp        // 0x005f08e5    89a804010000
                         {disp32} mov       dword ptr [eax + 0x00000100], edx        // 0x005f08eb    899000010000
                         {disp32} mov       dword ptr [eax + 0x000000fc], 0x00000002 // 0x005f08f1    c780fc00000002000000
                         {disp32} mov       dword ptr [eax + 0x00000120], edx        // 0x005f08fb    899020010000
                         {disp32} mov       dword ptr [eax + 0x00000124], 0x00000002 // 0x005f0901    c7802401000002000000
                         mov                ebp, 0x00000001                          // 0x005f090b    bd01000000
                         {disp32} mov       dword ptr [eax + 0x00000128], ebp        // 0x005f0910    89a828010000
                         {disp32} mov       dword ptr [eax + 0x0000014c], ebp        // 0x005f0916    89a84c010000
                         {disp32} mov       dword ptr [eax + 0x00000148], edx        // 0x005f091c    899048010000
                         {disp32} mov       dword ptr [eax + 0x00000144], ebx        // 0x005f0922    899844010000
                         {disp32} mov       dword ptr [eax + 0x00000170], ecx        // 0x005f0928    898870010000
                         {disp32} mov       dword ptr [eax + 0x00000168], 0x00000009 // 0x005f092e    c7806801000009000000
                         {disp32} mov       dword ptr [eax + 0x0000016c], ebx        // 0x005f0938    89986c010000
                         {disp32} mov       dword ptr [eax + 0x00000194], ecx        // 0x005f093e    898894010000
                         {disp32} mov       dword ptr [eax + 0x00000190], 0x00000009 // 0x005f0944    c7809001000009000000
                         mov                ebp, 0x0000000b                          // 0x005f094e    bd0b000000
                         {disp32} mov       dword ptr [eax + 0x0000018c], ebp        // 0x005f0953    89a88c010000
                         {disp32} mov       dword ptr [eax + 0x000001b4], ecx        // 0x005f0959    8988b4010000
                         {disp32} mov       dword ptr [eax + 0x000001b0], ebp        // 0x005f095f    89a8b0010000
                         {disp32} mov       dword ptr [eax + 0x000001b8], edi        // 0x005f0965    89b8b8010000
                         {disp32} mov       dword ptr [eax + 0x000001d4], 0x00000008 // 0x005f096b    c780d401000008000000
                         {disp32} mov       dword ptr [eax + 0x000001d8], ebp        // 0x005f0975    89a8d8010000
                         {disp32} mov       dword ptr [eax + 0x000001dc], edi        // 0x005f097b    89b8dc010000
                         {disp32} mov       dword ptr [eax + 0x000001fc], 0x00000008 // 0x005f0981    c780fc01000008000000
                         {disp32} mov       dword ptr [eax + 0x00000200], edi        // 0x005f098b    89b800020000
                         mov                ecx, 0x0000000a                          // 0x005f0991    b90a000000
                         {disp32} mov       dword ptr [eax + 0x000001f8], ecx        // 0x005f0996    8988f8010000
                         {disp32} mov       dword ptr [eax + 0x0000021c], edx        // 0x005f099c    89901c020000
                         {disp32} mov       dword ptr [eax + 0x00000220], ecx        // 0x005f09a2    898820020000
                         {disp32} mov       dword ptr [eax + 0x00000224], edi        // 0x005f09a8    89b824020000
                         {disp32} mov       dword ptr [eax + 0x00000244], edx        // 0x005f09ae    899044020000
                         {disp32} mov       dword ptr [eax + 0x00000240], ecx        // 0x005f09b4    898840020000
                         {disp32} mov       dword ptr [eax + 0x00000248], ebx        // 0x005f09ba    899848020000
                         {disp32} mov       dword ptr [eax + 0x00000268], ecx        // 0x005f09c0    898868020000
                         {disp32} mov       dword ptr [eax + 0x0000026c], ebx        // 0x005f09c6    89986c020000
                         mov                edx, 0x00000009                          // 0x005f09cc    ba09000000
                         {disp32} mov       dword ptr [eax + 0x00000264], edx        // 0x005f09d1    899064020000
                         {disp32} mov       dword ptr [eax + 0x0000028c], ecx        // 0x005f09d7    89888c020000
                         {disp32} mov       dword ptr [eax + 0x00000288], ebp        // 0x005f09dd    89a888020000
                         {disp32} mov       dword ptr [eax + 0x00000290], edx        // 0x005f09e3    899090020000
                         {disp32} mov       dword ptr [eax + 0x000002b0], ecx        // 0x005f09e9    8988b0020000
                         add                esp, 0x0c                                // 0x005f09ef    83c40c
                         mov.s              ecx, esi                                 // 0x005f09f2    8bce
                         {disp32} mov       dword ptr [eax + 0x000002ac], 0x00000008 // 0x005f09f4    c780ac02000008000000
                         {disp32} mov       dword ptr [eax + 0x000002b4], ebp        // 0x005f09fe    89a8b4020000
                         call               _jmp_addr_0x007fb880                     // 0x005f0a04    e877ae2000
                         {disp32} fld       dword ptr [esi + 0x0000014c]             // 0x005f0a09    d9864c010000
                         fadd.s             st(0), st(0)                             // 0x005f0a0f    dcc0
                         {disp32} fstp      dword ptr [esi + 0x0000014c]             // 0x005f0a11    d99e4c010000
                         mov.s              ecx, esi                                 // 0x005f0a17    8bce
                         call               _jmp_addr_0x007fc760                     // 0x005f0a19    e842bd2000
                         pop                edi                                      // 0x005f0a1e    5f
                         pop                esi                                      // 0x005f0a1f    5e
                         pop                ebp                                      // 0x005f0a20    5d
                         pop                ebx                                      // 0x005f0a21    5b
                         add                esp, 0x40                                // 0x005f0a22    83c440
                         ret                0x0004                                   // 0x005f0a25    c20400

// Snippet: jmptbl, [0x005f0a28, 0x005f0a58)
.byte 0x6b, 0x06, 0x5f, 0x00      // 0x005f0a28
.byte 0x84, 0x06, 0x5f, 0x00      // 0x005f0a2c
.byte 0x98, 0x06, 0x5f, 0x00      // 0x005f0a30
.byte 0xb3, 0x06, 0x5f, 0x00      // 0x005f0a34
.byte 0xc5, 0x06, 0x5f, 0x00      // 0x005f0a38
.byte 0xda, 0x06, 0x5f, 0x00      // 0x005f0a3c
.byte 0xeb, 0x06, 0x5f, 0x00      // 0x005f0a40
.byte 0xff, 0x06, 0x5f, 0x00      // 0x005f0a44
.byte 0x0e, 0x07, 0x5f, 0x00      // 0x005f0a48
.byte 0x26, 0x07, 0x5f, 0x00      // 0x005f0a4c
.byte 0x31, 0x07, 0x5f, 0x00      // 0x005f0a50
.byte 0x4b, 0x07, 0x5f, 0x00      // 0x005f0a54

// Snippet: db, [0x005f0a58, 0x005f0a60)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f0a58
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f0a5c

