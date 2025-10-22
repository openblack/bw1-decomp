.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern ??2@YAPAXI@Z
.extern @FillPosAndHeading__8RPFollowFR7Point2DRff@20
.extern @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32
.extern @GetLength__9RouteNodeFP7RPAvoid@12
.extern ??0RPlan@@QAE@XZ
.extern ??_DRPlan@@QAEXXZ
.extern @SetStart__5RPlanFRC7Point2DfP8RPHolderiii@32
.extern @SetDest__5RPlanFRC7Point2Dfffiifi@40
.extern @GameTurnUpdate__5RPlanFi@12

.globl _jmp_addr_0x00864420

start_0x00864420_0x008648b0:
// Snippet: asm, [0x00864420, 0x00864893)
_jmp_addr_0x00864420:    {disp32} mov       eax, fs:[0x0]                                 // 0x00864420    64a100000000
                         push               -0x1                                          // 0x00864426    6aff
                         push               0x008a8286                                    // 0x00864428    6886828a00
                         push               eax                                           // 0x0086442d    50
                         {disp32} mov       fs:[0x0], esp                                 // 0x0086442e    64892500000000
                         sub                esp, 0x00000090                               // 0x00864435    81ec90000000
                         push               ebx                                           // 0x0086443b    53
                         push               ebp                                           // 0x0086443c    55
                         push               esi                                           // 0x0086443d    56
                         mov.s              esi, ecx                                      // 0x0086443e    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000640bc]             // 0x00864440    8b86bc400600
                         {disp32} mov       ebp, dword ptr [esi + eax * 0x4 + 0x00064090] // 0x00864446    8bac8690400600
                         {disp32} mov       ecx, dword ptr [esp + 0x000000ac]             // 0x0086444d    8b8c24ac000000
                         {disp8} mov        eax, dword ptr [ecx + 0x24]                   // 0x00864454    8b4124
                         test               eax, eax                                      // 0x00864457    85c0
                         push               edi                                           // 0x00864459    57
                         {disp8} mov        edi, dword ptr [ebp + 0x68]                   // 0x0086445a    8b7d68
                         {disp8} je         _jmp_addr_0x00864478                          // 0x0086445d    7419
_jmp_addr_0x0086445f:    {disp8} mov        ebx, dword ptr [eax + 0x24]                   // 0x0086445f    8b5824
                         push               eax                                           // 0x00864462    50
                         call               ??3@YAXPAX@Z                                  // 0x00864463    e830aaf4ff
                         add                esp, 0x04                                     // 0x00864468    83c404
                         test               ebx, ebx                                      // 0x0086446b    85db
                         mov.s              eax, ebx                                      // 0x0086446d    8bc3
                         {disp8} jne        _jmp_addr_0x0086445f                          // 0x0086446f    75ee
                         {disp32} mov       ecx, dword ptr [esp + 0x000000b0]             // 0x00864471    8b8c24b0000000
_jmp_addr_0x00864478:    mov                eax, dword ptr [edi]                          // 0x00864478    8b07
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0086447a    894124
                         {disp8} mov        dword ptr [eax + 0x28], ecx                   // 0x0086447d    894828
                         {disp32} mov       ecx, dword ptr [esi + 0x0006408c]             // 0x00864480    8b8e8c400600
                         {disp8} mov        edx, dword ptr [ecx + 0x68]                   // 0x00864486    8b5168
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00864489    8b4704
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0086448c    894204
                         {disp32} mov       eax, dword ptr [esi + 0x0006408c]             // 0x0086448f    8b868c400600
                         {disp8} mov        ecx, dword ptr [ebp + 0x34]                   // 0x00864495    8b4d34
                         {disp8} mov        dword ptr [eax + 0x34], ecx                   // 0x00864498    894834
                         {disp8} mov        edx, dword ptr [ebp + 0x38]                   // 0x0086449b    8b5538
                         {disp8} mov        dword ptr [eax + 0x38], edx                   // 0x0086449e    895038
                         add                eax, 0x34                                     // 0x008644a1    83c034
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x008644a4    8b4704
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x008644a7    8b4808
                         add                eax, 0x08                                     // 0x008644aa    83c008
                         {disp32} mov       dword ptr [esi + 0x00064044], ecx             // 0x008644ad    898e44400600
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x008644b3    8b5004
                         {disp32} mov       dword ptr [esi + 0x00064048], edx             // 0x008644b6    899648400600
                         {disp32} mov       eax, dword ptr [esi + 0x0006408c]             // 0x008644bc    8b868c400600
                         {disp8} mov        ecx, dword ptr [ebp + 0x40]                   // 0x008644c2    8b4d40
                         {disp8} mov        dword ptr [eax + 0x40], ecx                   // 0x008644c5    894840
                         {disp8} mov        eax, dword ptr [ebp + 0x3c]                   // 0x008644c8    8b453c
                         {disp32} mov       edx, dword ptr [esi + 0x0006408c]             // 0x008644cb    8b968c400600
                         {disp8} mov        dword ptr [edx + 0x3c], eax                   // 0x008644d1    89423c
                         {disp8} mov        dword ptr [edi + 0x04], 0x00000000            // 0x008644d4    c7470400000000
                         mov                dword ptr [edi], 0x00000000                   // 0x008644db    c70700000000
                         {disp32} mov       eax, dword ptr [esi + 0x000640b8]             // 0x008644e1    8b86b8400600
                         xor.s              edi, edi                                      // 0x008644e7    33ff
                         test               eax, eax                                      // 0x008644e9    85c0
                         {disp8} jle        _jmp_addr_0x00864517                          // 0x008644eb    7e2a
                         {disp32} lea       ebx, dword ptr [esi + 0x00064090]             // 0x008644ed    8d9e90400600
_jmp_addr_0x008644f3:    mov                ebp, dword ptr [ebx]                          // 0x008644f3    8b2b
                         test               ebp, ebp                                      // 0x008644f5    85ed
                         {disp8} je         _jmp_addr_0x00864509                          // 0x008644f7    7410
                         mov.s              ecx, ebp                                      // 0x008644f9    8bcd
                         call               ??_DRPlan@@QAEXXZ                             // 0x008644fb    e8f09b0000
                         push               ebp                                           // 0x00864500    55
                         call               ??3@YAXPAX@Z                                  // 0x00864501    e892a9f4ff
                         add                esp, 0x04                                     // 0x00864506    83c404
_jmp_addr_0x00864509:    {disp32} mov       eax, dword ptr [esi + 0x000640b8]             // 0x00864509    8b86b8400600
                         inc                edi                                           // 0x0086450f    47
                         add                ebx, 0x04                                     // 0x00864510    83c304
                         cmp.s              edi, eax                                      // 0x00864513    3bf8
                         {disp8} jl         _jmp_addr_0x008644f3                          // 0x00864515    7cdc
_jmp_addr_0x00864517:    {disp32} mov       eax, dword ptr [esi + 0x0006406c]             // 0x00864517    8b866c400600
                         test               eax, eax                                      // 0x0086451d    85c0
                         {disp32} mov       dword ptr [esi + 0x000640b8], 0x00000000      // 0x0086451f    c786b840060000000000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00864529    89442418
                         {disp8} je         _jmp_addr_0x00864543                          // 0x0086452d    7414
                         {disp32} mov       ecx, dword ptr [esi + 0x00064060]             // 0x0086452f    8b8e60400600
                         push               ecx                                           // 0x00864535    51
                         call               dword ptr [esp + 0x1c]                        // 0x00864536    ff54241c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086453a    d95c2418
                         add                esp, 0x04                                     // 0x0086453e    83c404
                         {disp8} jmp        _jmp_addr_0x0086454b                          // 0x00864541    eb08
_jmp_addr_0x00864543:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00864543    c744241400000000
_jmp_addr_0x0086454b:    {disp32} mov       ecx, dword ptr [esi + 0x00064070]             // 0x0086454b    8b8e70400600
                         push               esi                                           // 0x00864551    56
                         call               @GetLength__9RouteNodeFP7RPAvoid@12           // 0x00864552    e8494c0000
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00864557    d9542418
                         {disp32} fsub      dword ptr [esi + 0x00064038]                  // 0x0086455b    d8a638400600
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00864561    d9442414
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x00864565    d81d40588c00
                         fnstsw             ax                                            // 0x0086456b    dfe0
                         test               ah, 0x41                                      // 0x0086456d    f6c441
                         {disp8} jne        _jmp_addr_0x008645d8                          // 0x00864570    7566
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1c840]             // 0x00864572    d81540588c00
                         fnstsw             ax                                            // 0x00864578    dfe0
                         test               ah, 0x41                                      // 0x0086457a    f6c441
                         {disp8} jne        _jmp_addr_0x008645d8                          // 0x0086457d    7559
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086457f    d9442414
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1c840]             // 0x00864583    d80540588c00
                         fxch               st(1)                                         // 0x00864589    d9c9
                         fcompp                                                           // 0x0086458b    ded9
                         fnstsw             ax                                            // 0x0086458d    dfe0
                         test               ah, 0x41                                      // 0x0086458f    f6c441
                         {disp8} jne        _jmp_addr_0x008645ba                          // 0x00864592    7526
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00864594    d9442414
                         push               ecx                                           // 0x00864598    51
                         {disp32} fadd      dword ptr [esi + 0x00064038]                  // 0x00864599    d88638400600
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0086459f    8d54242c
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x008645a3    8d442420
                         mov.s              ecx, esi                                      // 0x008645a7    8bce
                         fstp               dword ptr [esp]                               // 0x008645a9    d91c24
                         push               edx                                           // 0x008645ac    52
                         push               eax                                           // 0x008645ad    50
                         call               @FillPosAndHeading__8RPFollowFR7Point2DRff@20 // 0x008645ae    e8ed050000
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                   // 0x008645b3    c644241301
                         {disp8} jmp        _jmp_addr_0x008645f3                          // 0x008645b8    eb39
_jmp_addr_0x008645ba:    {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x008645ba    8b8670400600
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x008645c0    8b4808
                         add                eax, 0x08                                     // 0x008645c3    83c008
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x008645c6    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x008645ca    8b5004
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x008645cd    89542420
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                   // 0x008645d1    c644241301
                         {disp8} jmp        _jmp_addr_0x008645f3                          // 0x008645d6    eb1b
_jmp_addr_0x008645d8:    {disp32} mov       eax, dword ptr [esi + 0x0006402c]             // 0x008645d8    8b862c400600
                         fstp               st(0)                                         // 0x008645de    ddd8
                         {disp32} mov       ecx, dword ptr [esi + 0x00064030]             // 0x008645e0    8b8e30400600
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x008645e6    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x008645ea    894c2420
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x008645ee    c644241300
_jmp_addr_0x008645f3:    {disp32} mov       edx, dword ptr [esi + 0x0006402c]             // 0x008645f3    8b962c400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x008645f9    8b8670400600
                         mov                dword ptr [eax], edx                          // 0x008645ff    8910
                         {disp32} mov       ecx, dword ptr [esi + 0x00064030]             // 0x00864601    8b8e30400600
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00864607    894804
                         {disp32} mov       edx, dword ptr [esi + 0x0006408c]             // 0x0086460a    8b968c400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x00864610    8b8670400600
                         xor.s              ebx, ebx                                      // 0x00864616    33db
                         {disp32} mov       dword ptr [esi + 0x00064038], ebx             // 0x00864618    899e38400600
                         {disp8} mov        ecx, dword ptr [edx + 0x68]                   // 0x0086461e    8b4a68
                         cmp                dword ptr [ecx], eax                          // 0x00864621    3901
                         {disp8} je         _jmp_addr_0x00864642                          // 0x00864623    741d
                         {disp8} mov        eax, dword ptr [eax + 0x28]                   // 0x00864625    8b4028
                         {disp32} mov       edx, dword ptr [esi + 0x0006402c]             // 0x00864628    8b962c400600
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0086462e    895008
                         {disp32} mov       ecx, dword ptr [esi + 0x00064030]             // 0x00864631    8b8e30400600
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x00864637    89480c
                         mov                dword ptr [eax], edx                          // 0x0086463a    8910
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x0086463c    8b480c
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0086463f    894804
_jmp_addr_0x00864642:    {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00864642    8d4c242c
                         call               ??0RPlan@@QAE@XZ                              // 0x00864646    e8859a0000
                         {disp32} mov       edx, dword ptr [esi + 0x0006404c]             // 0x0086464b    8b964c400600
                         push               ebx                                           // 0x00864651    53
                         push               -0x1                                          // 0x00864652    6aff
                         push               -0x1                                          // 0x00864654    6aff
                         push               esi                                           // 0x00864656    56
                         push               edx                                           // 0x00864657    52
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x00864658    8d442430
                         push               eax                                           // 0x0086465c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x0086465d    8d4c2444
                         {disp32} mov       dword ptr [esp + 0x000000c0], ebx             // 0x00864661    899c24c0000000
                         call               @SetStart__5RPlanFRC7Point2DfP8RPHolderiii@32 // 0x00864668    e8939b0000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000b0]             // 0x0086466d    8b8c24b0000000
                         {disp8} mov        edi, dword ptr [ecx + 0x24]                   // 0x00864674    8b7924
                         cmp.s              edi, ebx                                      // 0x00864677    3bfb
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00864679    895c2414
                         {disp32} je        _jmp_addr_0x00864864                          // 0x0086467d    0f84e1010000
_jmp_addr_0x00864683:    cmp                dword ptr [esp + 0x14], 0x04                  // 0x00864683    837c241404
                         {disp32} jge       _jmp_addr_0x00864864                          // 0x00864688    0f8dd6010000
                         {disp32} mov       edx, dword ptr [esi + 0x00064070]             // 0x0086468e    8b9670400600
                         {disp8} fld        dword ptr [edi + 0x20]                        // 0x00864694    d94720
                         {disp8} fsub       dword ptr [edx + 0x20]                        // 0x00864697    d86220
                         push               0x0                                           // 0x0086469a    6a00
                         {disp8} lea        ecx, dword ptr [edi + 0x08]                   // 0x0086469c    8d4f08
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0086469f    d844241c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x008646a3    d95c2428
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x008646a7    8b442428
                         push               eax                                           // 0x008646ab    50
                         push               0x0                                           // 0x008646ac    6a00
                         push               -0x1                                          // 0x008646ae    6aff
                         push               0x0                                           // 0x008646b0    6a00
                         push               0x3a83126f                                    // 0x008646b2    686f12833a
                         push               0x0                                           // 0x008646b7    6a00
                         push               ecx                                           // 0x008646b9    51
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x008646ba    8d4c244c
                         call               @SetDest__5RPlanFRC7Point2Dfffiifi@40         // 0x008646be    e88d9b0000
                         mov                ebp, 0x00000001                               // 0x008646c3    bd01000000
                         xor.s              ebx, ebx                                      // 0x008646c8    33db
_jmp_addr_0x008646ca:    cmp                ebx, 0x20                                     // 0x008646ca    83fb20
                         {disp8} jge        _jmp_addr_0x008646f6                          // 0x008646cd    7d27
                         {disp8} mov        edx, dword ptr [esp + 0x7c]                   // 0x008646cf    8b54247c
                         {disp8} lea        eax, dword ptr [edx + -0x02]                  // 0x008646d3    8d42fe
                         cmp                eax, 0x03                                     // 0x008646d6    83f803
                         {disp8} ja         _jmp_addr_0x008646f1                          // 0x008646d9    7716
                         jmp                dword ptr [eax*4 + 0x864894]                  // 0x008646db    ff248594488600
                         push               0x0                                           // 0x008646e2    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x008646e4    8d4c2430
                         call               @GameTurnUpdate__5RPlanFi@12                  // 0x008646e8    e8b3a20000
                         {disp8} jmp        _jmp_addr_0x008646f1                          // 0x008646ed    eb02
                         xor.s              ebp, ebp                                      // 0x008646ef    33ed
_jmp_addr_0x008646f1:    inc                ebx                                           // 0x008646f1    43
                         test               ebp, ebp                                      // 0x008646f2    85ed
                         {disp8} jne        _jmp_addr_0x008646ca                          // 0x008646f4    75d4
_jmp_addr_0x008646f6:    cmp                dword ptr [esp + 0x7c], 0x05                  // 0x008646f6    837c247c05
                         {disp8} mov        ebx, dword ptr [edi + 0x24]                   // 0x008646fb    8b5f24
                         {disp32} jne       _jmp_addr_0x0086484f                          // 0x008646fe    0f854b010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000094]             // 0x00864704    8b842494000000
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086470b    8b4004
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x0086470e    8b4810
                         cmp                ecx, dword ptr [edi + 0x10]                   // 0x00864711    3b4f10
                         {disp8} je         _jmp_addr_0x0086471f                          // 0x00864714    7409
                         cmp                ecx, -0x01                                    // 0x00864716    83f9ff
                         {disp32} jne       _jmp_addr_0x0086484f                          // 0x00864719    0f8530010000
_jmp_addr_0x0086471f:    {disp8} mov        ecx, dword ptr [edi + 0x14]                   // 0x0086471f    8b4f14
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x00864722    894814
                         {disp32} mov       edx, dword ptr [esp + 0x00000094]             // 0x00864725    8b942494000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086472c    8b4204
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x0086472f    8b4f10
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x00864732    894810
                         {disp32} mov       edx, dword ptr [esp + 0x00000094]             // 0x00864735    8b942494000000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086473c    8b4204
                         xor.s              ebp, ebp                                      // 0x0086473f    33ed
                         cmp.s              ebx, ebp                                      // 0x00864741    3bdd
                         {disp8} mov        dword ptr [eax + 0x24], ebx                   // 0x00864743    895824
                         {disp8} je         _jmp_addr_0x0086475a                          // 0x00864746    7412
                         {disp32} mov       ecx, dword ptr [esp + 0x00000094]             // 0x00864748    8b8c2494000000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0086474f    8b5104
                         {disp8} mov        dword ptr [ebx + 0x28], edx                   // 0x00864752    895328
                         {disp8} mov        dword ptr [edi + 0x24], ebp                   // 0x00864755    896f24
                         {disp8} jmp        _jmp_addr_0x00864770                          // 0x00864758    eb16
_jmp_addr_0x0086475a:    {disp32} mov       eax, dword ptr [esi + 0x0006408c]             // 0x0086475a    8b868c400600
                         {disp32} mov       edx, dword ptr [esp + 0x00000094]             // 0x00864760    8b942494000000
                         {disp8} mov        ecx, dword ptr [eax + 0x68]                   // 0x00864767    8b4868
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086476a    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0086476d    894104
_jmp_addr_0x00864770:    {disp32} mov       ecx, dword ptr [esi + 0x0006408c]             // 0x00864770    8b8e8c400600
                         {disp8} mov        eax, dword ptr [ecx + 0x68]                   // 0x00864776    8b4168
                         mov                edi, dword ptr [eax]                          // 0x00864779    8b38
                         {disp32} mov       edx, dword ptr [esp + 0x00000094]             // 0x0086477b    8b942494000000
                         mov                ecx, dword ptr [edx]                          // 0x00864782    8b0a
                         mov                dword ptr [eax], ecx                          // 0x00864784    8908
                         {disp32} mov       edx, dword ptr [esi + 0x0006408c]             // 0x00864786    8b968c400600
                         {disp8} mov        eax, dword ptr [edx + 0x68]                   // 0x0086478c    8b4268
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086478f    8b4004
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00864792    8b4808
                         add                eax, 0x08                                     // 0x00864795    83c008
                         {disp32} mov       dword ptr [esi + 0x00064044], ecx             // 0x00864798    898e44400600
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0086479e    8b5004
                         {disp8} mov        al, byte ptr [esp + 0x13]                     // 0x008647a1    8a442413
                         test               al, al                                        // 0x008647a5    84c0
                         {disp32} mov       dword ptr [esi + 0x00064048], edx             // 0x008647a7    899648400600
                         {disp8} je         _jmp_addr_0x0086480f                          // 0x008647ad    7460
                         push               0x2c                                          // 0x008647af    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x008647b1    e8381df6ff
                         add                esp, 0x04                                     // 0x008647b6    83c404
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x008647b9    89442424
                         cmp.s              eax, ebp                                      // 0x008647bd    3bc5
                         {disp32} mov       byte ptr [esp + 0x000000a8], 0x01             // 0x008647bf    c68424a800000001
                         {disp8} je         _jmp_addr_0x008647e3                          // 0x008647c7    741a
                         push               ebp                                           // 0x008647c9    55
                         push               -0x1                                          // 0x008647ca    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x008647cc    8d4c2424
                         push               ecx                                           // 0x008647d0    51
                         {disp32} lea       ecx, dword ptr [esi + 0x0006402c]             // 0x008647d1    8d8e2c400600
                         push               ecx                                           // 0x008647d7    51
                         push               ebp                                           // 0x008647d8    55
                         push               ebp                                           // 0x008647d9    55
                         mov.s              ecx, eax                                      // 0x008647da    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x008647dc    e86f490000
                         {disp8} jmp        _jmp_addr_0x008647e5                          // 0x008647e1    eb02
_jmp_addr_0x008647e3:    xor.s              eax, eax                                      // 0x008647e3    33c0
_jmp_addr_0x008647e5:    {disp8} mov        dword ptr [eax + 0x20], ebp                   // 0x008647e5    896820
                         {disp32} mov       edx, dword ptr [esi + 0x0006408c]             // 0x008647e8    8b968c400600
                         {disp8} mov        ecx, dword ptr [edx + 0x68]                   // 0x008647ee    8b4a68
                         mov                edx, dword ptr [ecx]                          // 0x008647f1    8b11
                         {disp8} mov        dword ptr [eax + 0x24], edx                   // 0x008647f3    895024
                         {disp32} mov       ecx, dword ptr [esi + 0x0006408c]             // 0x008647f6    8b8e8c400600
                         {disp8} mov        edx, dword ptr [ecx + 0x68]                   // 0x008647fc    8b5168
                         mov                dword ptr [edx], eax                          // 0x008647ff    8902
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00864801    8b4824
                         {disp32} mov       byte ptr [esp + 0x000000a8], 0x00             // 0x00864804    c68424a800000000
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x0086480c    894128
_jmp_addr_0x0086480f:    cmp.s              edi, ebp                                      // 0x0086480f    3bfd
                         {disp32} mov       edx, dword ptr [esi + 0x0006408c]             // 0x00864811    8b968c400600
                         {disp8} mov        eax, dword ptr [edx + 0x68]                   // 0x00864817    8b4268
                         mov                ecx, dword ptr [eax]                          // 0x0086481a    8b08
                         {disp32} mov       edx, dword ptr [esp + 0x00000094]             // 0x0086481c    8b942494000000
                         {disp32} mov       dword ptr [esi + 0x00064070], ecx             // 0x00864823    898e70400600
                         {disp32} mov       dword ptr [esi + 0x00064038], ebp             // 0x00864829    89ae38400600
                         {disp8} mov        dword ptr [edx + 0x04], ebp                   // 0x0086482f    896a04
                         {disp32} mov       eax, dword ptr [esp + 0x00000094]             // 0x00864832    8b842494000000
                         mov                dword ptr [eax], ebp                          // 0x00864839    8928
                         {disp8} je         _jmp_addr_0x00864851                          // 0x0086483b    7414
_jmp_addr_0x0086483d:    {disp8} mov        ebp, dword ptr [edi + 0x24]                   // 0x0086483d    8b6f24
                         push               edi                                           // 0x00864840    57
                         call               ??3@YAXPAX@Z                                  // 0x00864841    e852a6f4ff
                         add                esp, 0x04                                     // 0x00864846    83c404
                         test               ebp, ebp                                      // 0x00864849    85ed
                         mov.s              edi, ebp                                      // 0x0086484b    8bfd
                         {disp8} jne        _jmp_addr_0x0086483d                          // 0x0086484d    75ee
_jmp_addr_0x0086484f:    xor.s              ebp, ebp                                      // 0x0086484f    33ed
_jmp_addr_0x00864851:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00864851    8b4c2414
                         inc                ecx                                           // 0x00864855    41
                         cmp.s              ebx, ebp                                      // 0x00864856    3bdd
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00864858    894c2414
                         mov.s              edi, ebx                                      // 0x0086485c    8bfb
                         {disp32} jne       _jmp_addr_0x00864683                          // 0x0086485e    0f851ffeffff
_jmp_addr_0x00864864:    {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00864864    8d4c242c
                         {disp32} mov       dword ptr [esp + 0x000000a8], 0xffffffff      // 0x00864868    c78424a8000000ffffffff
                         call               ??_DRPlan@@QAEXXZ                             // 0x00864873    e878980000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a0]             // 0x00864878    8b8c24a0000000
                         pop                edi                                           // 0x0086487f    5f
                         pop                esi                                           // 0x00864880    5e
                         pop                ebp                                           // 0x00864881    5d
                         pop                ebx                                           // 0x00864882    5b
                         {disp32} mov       fs:[0x0], ecx                                 // 0x00864883    64890d00000000
                         add                esp, 0x0000009c                               // 0x0086488a    81c49c000000
                         ret                0x0004                                        // 0x00864890    c20400

// Snippet: db, [0x00864893, 0x00864894)
.byte 0x90                        // 0x00864893

// Snippet: jmptbl, [0x00864894, 0x008648a4)
.byte 0xe2, 0x46, 0x86, 0x00      // 0x00864894
.byte 0xef, 0x46, 0x86, 0x00      // 0x00864898
.byte 0xef, 0x46, 0x86, 0x00      // 0x0086489c
.byte 0xef, 0x46, 0x86, 0x00      // 0x008648a0

// Snippet: db, [0x008648a4, 0x008648b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x008648a4
.byte 0x90, 0x90, 0x90, 0x90      // 0x008648a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x008648ac

