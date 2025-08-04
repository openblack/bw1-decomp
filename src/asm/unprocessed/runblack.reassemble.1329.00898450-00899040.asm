.intel_syntax noprefix
.align 16

.extern rdata_bytes

.extern  ??3@YAXPAX@Z
.extern _sprintf
.extern _fprintf
.extern _fopen
.extern _fclose
.extern _fwrite
.extern _exit
.extern _fflush
.extern _jmp_addr_0x00899040
.extern _jmp_addr_0x008995f0
.extern _jmp_addr_0x00899670
.extern _jmp_addr_0x00899810
.extern _jmp_addr_0x0089a430
.extern _jmp_addr_0x0089a470
.extern _jmp_addr_0x0089a490
.extern _jmp_addr_0x0089a4b0
.extern _jmp_addr_0x0089a4d0

.globl _jmp_addr_0x00898450
.globl _jmp_addr_0x008984a0
.globl _jmp_addr_0x008984b0
.globl _jmp_addr_0x00898500
.globl _jmp_addr_0x00898530
.globl _jmp_addr_0x008985b0
.globl _jmp_addr_0x008986b0

start_0x00898450_0x00899040:
// Snippet: asm, [0x00898450, 0x0089901f)
_jmp_addr_0x00898450:    push               esi                                           // 0x00898450    56
                         mov.s              esi, ecx                                      // 0x00898451    8bf1
                         push               edi                                           // 0x00898453    57
                         {disp32} lea       eax, dword ptr [esi + 0x00000170]             // 0x00898454    8d8670010000
                         mov                dword ptr [esi], 0x009a59b0                   // 0x0089845a    c706b0599a00
                         push               eax                                           // 0x00898460    50
                         {disp8} lea        edi, dword ptr [esi + 0x08]                   // 0x00898461    8d7e08
                         call               _jpeg_std_error                               // 0x00898464    e8f7040000
                         push               0x00000168                                    // 0x00898469    6868010000
                         push               0x3e                                          // 0x0089846e    6a3e
                         push               edi                                           // 0x00898470    57
                         mov                dword ptr [edi], eax                          // 0x00898471    8907
                         call               _jmp_addr_0x008985c0                          // 0x00898473    e848010000
                         add                esp, 0x10                                     // 0x00898478    83c410
                         mov.s              eax, esi                                      // 0x0089847b    8bc6
                         pop                edi                                           // 0x0089847d    5f
                         pop                esi                                           // 0x0089847e    5e
                         ret                                                              // 0x0089847f    c3
                         push               esi                                           // 0x00898480    56
                         mov.s              esi, ecx                                      // 0x00898481    8bf1
                         call               _jmp_addr_0x008984a0                          // 0x00898483    e818000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00898488    f644240801
                         {disp8} je         _jmp_addr_0x00898498                          // 0x0089848d    7409
                         push               esi                                           // 0x0089848f    56
                         call               ??3@YAXPAX@Z                                  // 0x00898490    e8036af1ff
                         add                esp, 0x04                                     // 0x00898495    83c404
_jmp_addr_0x00898498:    mov.s              eax, esi                                      // 0x00898498    8bc6
                         pop                esi                                           // 0x0089849a    5e
                         ret                0x0004                                        // 0x0089849b    c20400
                         nop                                                              // 0x0089849e    90
                         nop                                                              // 0x0089849f    90
_jmp_addr_0x008984a0:    mov                dword ptr [ecx], 0x009a59b0                   // 0x008984a0    c701b0599a00
                         ret                                                              // 0x008984a6    c3
                         nop                                                              // 0x008984a7    90
                         nop                                                              // 0x008984a8    90
                         nop                                                              // 0x008984a9    90
                         nop                                                              // 0x008984aa    90
                         nop                                                              // 0x008984ab    90
                         nop                                                              // 0x008984ac    90
                         nop                                                              // 0x008984ad    90
                         nop                                                              // 0x008984ae    90
                         nop                                                              // 0x008984af    90
_jmp_addr_0x008984b0:    push               esi                                           // 0x008984b0    56
                         push               edi                                           // 0x008984b1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x008984b2    8b7c240c
                         push               0x009ce5dc                                    // 0x008984b6    68dce59c00
                         mov.s              esi, ecx                                      // 0x008984bb    8bf1
                         push               edi                                           // 0x008984bd    57
                         call               _fopen                                        // 0x008984be    e85ae9f2ff
                         add                esp, 0x08                                     // 0x008984c3    83c408
                         {disp32} mov       dword ptr [esi + 0x000001f8], eax             // 0x008984c6    8986f8010000
                         test               eax, eax                                      // 0x008984cc    85c0
                         {disp8} jne        _jmp_addr_0x008984ea                          // 0x008984ce    751a
                         push               edi                                           // 0x008984d0    57
                         push               0x00c3ae80                                    // 0x008984d1    6880aec300
                         push               0x00c2d820                                    // 0x008984d6    6820d8c200
                         call               _fprintf                                      // 0x008984db    e8d0e8f2ff
                         add                esp, 0x0c                                     // 0x008984e0    83c40c
                         push               0x1                                           // 0x008984e3    6a01
                         call               _exit                                         // 0x008984e5    e8f719f3ff
_jmp_addr_0x008984ea:    add                esi, 0x08                                     // 0x008984ea    83c608
                         push               eax                                           // 0x008984ed    50
                         push               esi                                           // 0x008984ee    56
                         call               _jmp_addr_0x00898b10                          // 0x008984ef    e81c060000
                         add                esp, 0x08                                     // 0x008984f4    83c408
                         xor.s              al, al                                        // 0x008984f7    32c0
                         pop                edi                                           // 0x008984f9    5f
                         pop                esi                                           // 0x008984fa    5e
                         ret                0x0004                                        // 0x008984fb    c20400
                         nop                                                              // 0x008984fe    90
                         nop                                                              // 0x008984ff    90
_jmp_addr_0x00898500:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898500    8b442404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00898504    8b542408
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x00898508    894124
                         {disp8} mov        dword ptr [ecx + 0x28], edx                   // 0x0089850b    895128
                         {disp8} mov        dword ptr [ecx + 0x2c], 0x00000003            // 0x0089850e    c7412c03000000
                         {disp8} mov        dword ptr [ecx + 0x30], 0x00000002            // 0x00898515    c7413002000000
                         add                ecx, 0x8                                      // 0x0089851c    83c108
                         push               ecx                                           // 0x0089851f    51
                         call               _jmp_addr_0x00898dc0                          // 0x00898520    e89b080000
                         add                esp, 0x04                                     // 0x00898525    83c404
                         xor.s              al, al                                        // 0x00898528    32c0
                         ret                0x0008                                        // 0x0089852a    c20800
                         nop                                                              // 0x0089852d    90
                         nop                                                              // 0x0089852e    90
                         nop                                                              // 0x0089852f    90
_jmp_addr_0x00898530:    push               ecx                                           // 0x00898530    51
                         push               ebx                                           // 0x00898531    53
                         push               esi                                           // 0x00898532    56
                         mov.s              esi, ecx                                      // 0x00898533    8bf1
                         push               edi                                           // 0x00898535    57
                         push               0x1                                           // 0x00898536    6a01
                         {disp8} lea        edi, dword ptr [esi + 0x08]                   // 0x00898538    8d7e08
                         push               edi                                           // 0x0089853b    57
                         call               _jmp_addr_0x008995f0                          // 0x0089853c    e8af100000
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x00898541    8b4624
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00898544    8b4e28
                         add                esp, 0x08                                     // 0x00898547    83c408
                         lea                ebx, dword ptr [eax + eax * 0x2]              // 0x0089854a    8d1c40
                         {disp32} mov       eax, dword ptr [esi + 0x000000d8]             // 0x0089854d    8b86d8000000
                         cmp.s              eax, ecx                                      // 0x00898553    3bc1
                         {disp8} jae        _jmp_addr_0x00898583                          // 0x00898555    732c
_jmp_addr_0x00898557:    imul               eax, ebx                                      // 0x00898557    0fafc3
                         {disp32} mov       ecx, dword ptr [esi + 0x000001f4]             // 0x0089855a    8b8ef4010000
                         push               0x1                                           // 0x00898560    6a01
                         add.s              eax, ecx                                      // 0x00898562    03c1
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00898564    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00898568    8d442410
                         push               eax                                           // 0x0089856c    50
                         push               edi                                           // 0x0089856d    57
                         call               _jmp_addr_0x00899670                          // 0x0089856e    e8fd100000
                         {disp32} mov       eax, dword ptr [esi + 0x000000d8]             // 0x00898573    8b86d8000000
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00898579    8b4e28
                         add                esp, 0x0c                                     // 0x0089857c    83c40c
                         cmp.s              eax, ecx                                      // 0x0089857f    3bc1
                         .byte              0x72, 0xd4// {disp8} jb _jmp_addr_0x00898557  // 0x00898581    72d4
_jmp_addr_0x00898583:    push               edi                                           // 0x00898583    57
                         call               _jmp_addr_0x00898700                          // 0x00898584    e877010000
                         push               edi                                           // 0x00898589    57
                         call               _jmp_addr_0x00898690                          // 0x0089858a    e801010000
                         {disp32} mov       ecx, dword ptr [esi + 0x000001f8]             // 0x0089858f    8b8ef8010000
                         push               ecx                                           // 0x00898595    51
                         call               _fclose                                       // 0x00898596    e895e8f2ff
                         add                esp, 0x0c                                     // 0x0089859b    83c40c
                         xor.s              al, al                                        // 0x0089859e    32c0
                         pop                edi                                           // 0x008985a0    5f
                         pop                esi                                           // 0x008985a1    5e
                         pop                ebx                                           // 0x008985a2    5b
                         pop                ecx                                           // 0x008985a3    59
                         ret                                                              // 0x008985a4    c3
                         nop                                                              // 0x008985a5    90
                         nop                                                              // 0x008985a6    90
                         nop                                                              // 0x008985a7    90
                         nop                                                              // 0x008985a8    90
                         nop                                                              // 0x008985a9    90
                         nop                                                              // 0x008985aa    90
                         nop                                                              // 0x008985ab    90
                         nop                                                              // 0x008985ac    90
                         nop                                                              // 0x008985ad    90
                         nop                                                              // 0x008985ae    90
                         nop                                                              // 0x008985af    90
_jmp_addr_0x008985b0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008985b0    8b442404
                         {disp32} mov       dword ptr [ecx + 0x000001f4], eax             // 0x008985b4    8981f4010000
                         xor.s              al, al                                        // 0x008985ba    32c0
                         ret                0x0004                                        // 0x008985bc    c20400
                         nop                                                              // 0x008985bf    90
_jmp_addr_0x008985c0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x008985c0    8b442408
                         push               ebx                                           // 0x008985c4    53
                         push               esi                                           // 0x008985c5    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x008985c6    8b74240c
                         xor.s              ebx, ebx                                      // 0x008985ca    33db
                         cmp                eax, 0x3e                                     // 0x008985cc    83f83e
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x008985cf    895e04
                         {disp8} je         _jmp_addr_0x008985f3                          // 0x008985d2    741f
                         mov                ecx, dword ptr [esi]                          // 0x008985d4    8b0e
                         push               esi                                           // 0x008985d6    56
                         {disp8} mov        dword ptr [ecx + 0x14], 0x0000000c            // 0x008985d7    c741140c000000
                         mov                edx, dword ptr [esi]                          // 0x008985de    8b16
                         {disp8} mov        dword ptr [edx + 0x18], 0x0000003e            // 0x008985e0    c742183e000000
                         mov                ecx, dword ptr [esi]                          // 0x008985e7    8b0e
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x008985e9    89411c
                         mov                edx, dword ptr [esi]                          // 0x008985ec    8b16
                         call               dword ptr [edx]                               // 0x008985ee    ff12
                         add                esp, 0x04                                     // 0x008985f0    83c404
_jmp_addr_0x008985f3:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x008985f3    8b442414
                         cmp                eax, 0x00000168                               // 0x008985f7    3d68010000
                         {disp8} je         _jmp_addr_0x0089861d                          // 0x008985fc    741f
                         mov                ecx, dword ptr [esi]                          // 0x008985fe    8b0e
                         push               esi                                           // 0x00898600    56
                         {disp8} mov        dword ptr [ecx + 0x14], 0x00000015            // 0x00898601    c7411415000000
                         mov                edx, dword ptr [esi]                          // 0x00898608    8b16
                         {disp8} mov        dword ptr [edx + 0x18], 0x00000168            // 0x0089860a    c7421868010000
                         mov                ecx, dword ptr [esi]                          // 0x00898611    8b0e
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x00898613    89411c
                         mov                edx, dword ptr [esi]                          // 0x00898616    8b16
                         call               dword ptr [edx]                               // 0x00898618    ff12
                         add                esp, 0x04                                     // 0x0089861a    83c404
_jmp_addr_0x0089861d:    mov                edx, dword ptr [esi]                          // 0x0089861d    8b16
                         push               ebp                                           // 0x0089861f    55
                         {disp8} mov        ebp, dword ptr [esi + 0x0c]                   // 0x00898620    8b6e0c
                         push               edi                                           // 0x00898623    57
                         mov                ecx, 0x0000005a                               // 0x00898624    b95a000000
                         xor.s              eax, eax                                      // 0x00898629    33c0
                         mov.s              edi, esi                                      // 0x0089862b    8bfe
                         push               esi                                           // 0x0089862d    56
                         rep stosd                                                        // 0x0089862e    f3ab
                         mov                dword ptr [esi], edx                          // 0x00898630    8916
                         {disp8} mov        dword ptr [esi + 0x0c], ebp                   // 0x00898632    896e0c
                         {disp8} mov        byte ptr [esi + 0x10], bl                     // 0x00898635    885e10
                         call               _jmp_addr_0x00899810                          // 0x00898638    e8d3110000
                         add                esp, 0x04                                     // 0x0089863d    83c404
                         xor.s              eax, eax                                      // 0x00898640    33c0
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00898642    895e08
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x00898645    895e18
                         {disp8} mov        dword ptr [esi + 0x44], ebx                   // 0x00898648    895e44
                         {disp8} mov        dword ptr [esi + 0x48], eax                   // 0x0089864b    894648
                         {disp8} mov        dword ptr [esi + 0x4c], eax                   // 0x0089864e    89464c
                         pop                edi                                           // 0x00898651    5f
                         {disp8} mov        dword ptr [esi + 0x50], eax                   // 0x00898652    894650
                         mov                ecx, 0x00000004                               // 0x00898655    b904000000
                         {disp8} mov        dword ptr [esi + 0x54], eax                   // 0x0089865a    894654
                         {disp8} lea        eax, dword ptr [esi + 0x68]                   // 0x0089865d    8d4668
                         pop                ebp                                           // 0x00898660    5d
_jmp_addr_0x00898661:    {disp8} mov        dword ptr [eax + -0x10], ebx                  // 0x00898661    8958f0
                         mov                dword ptr [eax], ebx                          // 0x00898664    8918
                         add                eax, 0x04                                     // 0x00898666    83c004
                         dec                ecx                                           // 0x00898669    49
                         {disp8} jne        _jmp_addr_0x00898661                          // 0x0089866a    75f5
                         {disp8} mov        dword ptr [esi + 0x30], ebx                   // 0x0089866c    895e30
                         {disp32} mov       dword ptr [esi + 0x00000160], ebx             // 0x0089866f    899e60010000
                         {disp8} mov        dword ptr [esi + 0x34], 0x3ff00000            // 0x00898675    c746340000f03f
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000064            // 0x0089867c    c7461464000000
                         pop                esi                                           // 0x00898683    5e
                         pop                ebx                                           // 0x00898684    5b
                         ret                                                              // 0x00898685    c3
                         nop                                                              // 0x00898686    90
                         nop                                                              // 0x00898687    90
                         nop                                                              // 0x00898688    90
                         nop                                                              // 0x00898689    90
                         nop                                                              // 0x0089868a    90
                         nop                                                              // 0x0089868b    90
                         nop                                                              // 0x0089868c    90
                         nop                                                              // 0x0089868d    90
                         nop                                                              // 0x0089868e    90
                         nop                                                              // 0x0089868f    90
_jmp_addr_0x00898690:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898690    8b442404
                         push               eax                                           // 0x00898694    50
                         call               _jmp_addr_0x0089a470                          // 0x00898695    e8d61d0000
                         pop                ecx                                           // 0x0089869a    59
                         ret                                                              // 0x0089869b    c3
                         nop                                                              // 0x0089869c    90
                         nop                                                              // 0x0089869d    90
                         nop                                                              // 0x0089869e    90
                         nop                                                              // 0x0089869f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008986a0    8b442404
                         push               eax                                           // 0x008986a4    50
                         call               _jmp_addr_0x0089a430                          // 0x008986a5    e8861d0000
                         pop                ecx                                           // 0x008986aa    59
                         ret                                                              // 0x008986ab    c3
                         nop                                                              // 0x008986ac    90
                         nop                                                              // 0x008986ad    90
                         nop                                                              // 0x008986ae    90
                         nop                                                              // 0x008986af    90
_jmp_addr_0x008986b0:    {disp8} mov        dl, byte ptr [esp + 0x08]                     // 0x008986b0    8a542408
                         push               esi                                           // 0x008986b4    56
                         push               edi                                           // 0x008986b5    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x008986b6    8b7c240c
                         mov                esi, 0x00000004                               // 0x008986ba    be04000000
                         {disp8} lea        ecx, dword ptr [edi + 0x48]                   // 0x008986bf    8d4f48
_jmp_addr_0x008986c2:    mov                eax, dword ptr [ecx]                          // 0x008986c2    8b01
                         test               eax, eax                                      // 0x008986c4    85c0
                         {disp8} je         _jmp_addr_0x008986ce                          // 0x008986c6    7406
                         {disp32} mov       byte ptr [eax + 0x00000080], dl               // 0x008986c8    889080000000
_jmp_addr_0x008986ce:    add                ecx, 0x4                                      // 0x008986ce    83c104
                         dec                esi                                           // 0x008986d1    4e
                         {disp8} jne        _jmp_addr_0x008986c2                          // 0x008986d2    75ee
                         {disp8} lea        eax, dword ptr [edi + 0x68]                   // 0x008986d4    8d4768
                         mov                esi, 0x00000004                               // 0x008986d7    be04000000
_jmp_addr_0x008986dc:    {disp8} mov        ecx, dword ptr [eax + -0x10]                  // 0x008986dc    8b48f0
                         test               ecx, ecx                                      // 0x008986df    85c9
                         {disp8} je         _jmp_addr_0x008986e9                          // 0x008986e1    7406
                         {disp32} mov       byte ptr [ecx + 0x00000111], dl               // 0x008986e3    889111010000
_jmp_addr_0x008986e9:    mov                ecx, dword ptr [eax]                          // 0x008986e9    8b08
                         test               ecx, ecx                                      // 0x008986eb    85c9
                         {disp8} je         _jmp_addr_0x008986f5                          // 0x008986ed    7406
                         {disp32} mov       byte ptr [ecx + 0x00000111], dl               // 0x008986ef    889111010000
_jmp_addr_0x008986f5:    add                eax, 0x04                                     // 0x008986f5    83c004
                         dec                esi                                           // 0x008986f8    4e
                         {disp8} jne        _jmp_addr_0x008986dc                          // 0x008986f9    75e1
                         pop                edi                                           // 0x008986fb    5f
                         pop                esi                                           // 0x008986fc    5e
                         ret                                                              // 0x008986fd    c3
                         nop                                                              // 0x008986fe    90
                         nop                                                              // 0x008986ff    90
_jmp_addr_0x00898700:    push               esi                                           // 0x00898700    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00898701    8b742408
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00898705    8b4614
                         cmp                eax, 0x65                                     // 0x00898708    83f865
                         {disp8} je         _jmp_addr_0x0089872f                          // 0x0089870b    7422
                         cmp                eax, 0x66                                     // 0x0089870d    83f866
                         {disp8} je         _jmp_addr_0x0089872f                          // 0x00898710    741d
                         cmp                eax, 0x67                                     // 0x00898712    83f867
                         {disp8} je         _jmp_addr_0x0089875a                          // 0x00898715    7443
                         mov                eax, dword ptr [esi]                          // 0x00898717    8b06
                         push               esi                                           // 0x00898719    56
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000014            // 0x0089871a    c7401414000000
                         mov                ecx, dword ptr [esi]                          // 0x00898721    8b0e
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x00898723    8b5614
                         {disp8} mov        dword ptr [ecx + 0x18], edx                   // 0x00898726    895118
                         mov                eax, dword ptr [esi]                          // 0x00898729    8b06
                         call               dword ptr [eax]                               // 0x0089872b    ff10
                         {disp8} jmp        _jmp_addr_0x00898757                          // 0x0089872d    eb28
_jmp_addr_0x0089872f:    {disp32} mov       ecx, dword ptr [esi + 0x000000d0]             // 0x0089872f    8b8ed0000000
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x00898735    8b4620
                         cmp.s              ecx, eax                                      // 0x00898738    3bc8
                         {disp8} jae        _jmp_addr_0x0089874d                          // 0x0089873a    7311
                         mov                edx, dword ptr [esi]                          // 0x0089873c    8b16
                         push               esi                                           // 0x0089873e    56
                         {disp8} mov        dword ptr [edx + 0x14], 0x00000043            // 0x0089873f    c7421443000000
                         mov                eax, dword ptr [esi]                          // 0x00898746    8b06
                         call               dword ptr [eax]                               // 0x00898748    ff10
                         add                esp, 0x04                                     // 0x0089874a    83c404
_jmp_addr_0x0089874d:    {disp32} mov       ecx, dword ptr [esi + 0x0000013c]             // 0x0089874d    8b8e3c010000
                         push               esi                                           // 0x00898753    56
                         call               dword ptr [ecx + 8]                           // 0x00898754    ff5108
_jmp_addr_0x00898757:    add                esp, 0x04                                     // 0x00898757    83c404
_jmp_addr_0x0089875a:    {disp32} mov       eax, dword ptr [esi + 0x0000013c]             // 0x0089875a    8b863c010000
                         {disp8} mov        cl, byte ptr [eax + 0x0d]                     // 0x00898760    8a480d
                         test               cl, cl                                        // 0x00898763    84c9
                         {disp8} jne        _jmp_addr_0x008987e6                          // 0x00898765    757f
                         push               ebx                                           // 0x00898767    53
                         push               edi                                           // 0x00898768    57
                         mov                ebx, 0x00000018                               // 0x00898769    bb18000000
_jmp_addr_0x0089876e:    push               esi                                           // 0x0089876e    56
                         call               dword ptr [eax]                               // 0x0089876f    ff10
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x00898771    8b86e0000000
                         add                esp, 0x04                                     // 0x00898777    83c404
                         xor.s              edi, edi                                      // 0x0089877a    33ff
                         test               eax, eax                                      // 0x0089877c    85c0
                         {disp8} jbe        _jmp_addr_0x008987ca                          // 0x0089877e    764a
_jmp_addr_0x00898780:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00898780    8b4608
                         test               eax, eax                                      // 0x00898783    85c0
                         {disp8} je         _jmp_addr_0x0089879f                          // 0x00898785    7418
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00898787    897804
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x0089878a    8b5608
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x0089878d    8b86e0000000
                         push               esi                                           // 0x00898793    56
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x00898794    894208
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00898797    8b4e08
                         call               dword ptr [ecx]                               // 0x0089879a    ff11
                         add                esp, 0x04                                     // 0x0089879c    83c404
_jmp_addr_0x0089879f:    {disp32} mov       edx, dword ptr [esi + 0x00000148]             // 0x0089879f    8b9648010000
                         push               0x0                                           // 0x008987a5    6a00
                         push               esi                                           // 0x008987a7    56
                         call               dword ptr [edx + 4]                           // 0x008987a8    ff5204
                         add                esp, 0x08                                     // 0x008987ab    83c408
                         test               al, al                                        // 0x008987ae    84c0
                         {disp8} jne        _jmp_addr_0x008987bf                          // 0x008987b0    750d
                         mov                eax, dword ptr [esi]                          // 0x008987b2    8b06
                         push               esi                                           // 0x008987b4    56
                         {disp8} mov        dword ptr [eax + 0x14], ebx                   // 0x008987b5    895814
                         mov                ecx, dword ptr [esi]                          // 0x008987b8    8b0e
                         call               dword ptr [ecx]                               // 0x008987ba    ff11
                         add                esp, 0x04                                     // 0x008987bc    83c404
_jmp_addr_0x008987bf:    {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x008987bf    8b86e0000000
                         inc                edi                                           // 0x008987c5    47
                         cmp.s              edi, eax                                      // 0x008987c6    3bf8
                         .byte              0x72, 0xb6// {disp8} jb _jmp_addr_0x00898780  // 0x008987c8    72b6
_jmp_addr_0x008987ca:    {disp32} mov       edx, dword ptr [esi + 0x0000013c]             // 0x008987ca    8b963c010000
                         push               esi                                           // 0x008987d0    56
                         call               dword ptr [edx + 8]                           // 0x008987d1    ff5208
                         {disp32} mov       eax, dword ptr [esi + 0x0000013c]             // 0x008987d4    8b863c010000
                         add                esp, 0x04                                     // 0x008987da    83c404
                         {disp8} mov        cl, byte ptr [eax + 0x0d]                     // 0x008987dd    8a480d
                         test               cl, cl                                        // 0x008987e0    84c9
                         {disp8} je         _jmp_addr_0x0089876e                          // 0x008987e2    748a
                         pop                edi                                           // 0x008987e4    5f
                         pop                ebx                                           // 0x008987e5    5b
_jmp_addr_0x008987e6:    {disp32} mov       eax, dword ptr [esi + 0x0000014c]             // 0x008987e6    8b864c010000
                         push               esi                                           // 0x008987ec    56
                         call               dword ptr [eax + 0xc]                         // 0x008987ed    ff500c
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x008987f0    8b4e18
                         push               esi                                           // 0x008987f3    56
                         call               dword ptr [ecx + 0x10]                        // 0x008987f4    ff5110
                         push               esi                                           // 0x008987f7    56
                         call               _jmp_addr_0x0089a430                          // 0x008987f8    e8331c0000
                         add                esp, 0x0c                                     // 0x008987fd    83c40c
                         pop                esi                                           // 0x00898800    5e
                         ret                                                              // 0x00898801    c3
                         nop                                                              // 0x00898802    90
                         nop                                                              // 0x00898803    90
                         nop                                                              // 0x00898804    90
                         nop                                                              // 0x00898805    90
                         nop                                                              // 0x00898806    90
                         nop                                                              // 0x00898807    90
                         nop                                                              // 0x00898808    90
                         nop                                                              // 0x00898809    90
                         nop                                                              // 0x0089880a    90
                         nop                                                              // 0x0089880b    90
                         nop                                                              // 0x0089880c    90
                         nop                                                              // 0x0089880d    90
                         nop                                                              // 0x0089880e    90
                         nop                                                              // 0x0089880f    90
                         push               ebp                                           // 0x00898810    55
                         push               esi                                           // 0x00898811    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00898812    8b74240c
                         push               edi                                           // 0x00898816    57
                         {disp32} mov       eax, dword ptr [esi + 0x000000d0]             // 0x00898817    8b86d0000000
                         test               eax, eax                                      // 0x0089881d    85c0
                         {disp8} jne        _jmp_addr_0x00898833                          // 0x0089881f    7512
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00898821    8b4614
                         cmp                eax, 0x65                                     // 0x00898824    83f865
                         {disp8} je         _jmp_addr_0x0089884c                          // 0x00898827    7423
                         cmp                eax, 0x66                                     // 0x00898829    83f866
                         {disp8} je         _jmp_addr_0x0089884c                          // 0x0089882c    741e
                         cmp                eax, 0x67                                     // 0x0089882e    83f867
                         {disp8} je         _jmp_addr_0x0089884c                          // 0x00898831    7419
_jmp_addr_0x00898833:    mov                eax, dword ptr [esi]                          // 0x00898833    8b06
                         push               esi                                           // 0x00898835    56
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000014            // 0x00898836    c7401414000000
                         mov                ecx, dword ptr [esi]                          // 0x0089883d    8b0e
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x0089883f    8b5614
                         {disp8} mov        dword ptr [ecx + 0x18], edx                   // 0x00898842    895118
                         mov                eax, dword ptr [esi]                          // 0x00898845    8b06
                         call               dword ptr [eax]                               // 0x00898847    ff10
                         add                esp, 0x04                                     // 0x00898849    83c404
_jmp_addr_0x0089884c:    {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x0089884c    8b7c241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00898850    8b542414
                         {disp32} mov       ecx, dword ptr [esi + 0x0000014c]             // 0x00898854    8b8e4c010000
                         push               edi                                           // 0x0089885a    57
                         push               edx                                           // 0x0089885b    52
                         push               esi                                           // 0x0089885c    56
                         call               dword ptr [ecx + 0x14]                        // 0x0089885d    ff5114
                         {disp32} mov       eax, dword ptr [esi + 0x0000014c]             // 0x00898860    8b864c010000
                         add                esp, 0x0c                                     // 0x00898866    83c40c
                         mov.s              ecx, edi                                      // 0x00898869    8bcf
                         dec                edi                                           // 0x0089886b    4f
                         {disp8} mov        ebp, dword ptr [eax + 0x18]                   // 0x0089886c    8b6818
                         test               ecx, ecx                                      // 0x0089886f    85c9
                         {disp8} je         _jmp_addr_0x0089888b                          // 0x00898871    7418
                         push               ebx                                           // 0x00898873    53
                         {disp8} lea        ebx, dword ptr [edi + 0x01]                   // 0x00898874    8d5f01
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00898877    8b7c241c
_jmp_addr_0x0089887b:    xor.s              edx, edx                                      // 0x0089887b    33d2
                         mov                dl, byte ptr [edi]                            // 0x0089887d    8a17
                         push               edx                                           // 0x0089887f    52
                         push               esi                                           // 0x00898880    56
                         call               ebp                                           // 0x00898881    ffd5
                         add                esp, 0x08                                     // 0x00898883    83c408
                         inc                edi                                           // 0x00898886    47
                         dec                ebx                                           // 0x00898887    4b
                         {disp8} jne        _jmp_addr_0x0089887b                          // 0x00898888    75f1
                         pop                ebx                                           // 0x0089888a    5b
_jmp_addr_0x0089888b:    pop                edi                                           // 0x0089888b    5f
                         pop                esi                                           // 0x0089888c    5e
                         pop                ebp                                           // 0x0089888d    5d
                         ret                                                              // 0x0089888e    c3
                         nop                                                              // 0x0089888f    90
                         push               esi                                           // 0x00898890    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00898891    8b742408
                         {disp32} mov       eax, dword ptr [esi + 0x000000d0]             // 0x00898895    8b86d0000000
                         test               eax, eax                                      // 0x0089889b    85c0
                         {disp8} jne        _jmp_addr_0x008988b1                          // 0x0089889d    7512
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0089889f    8b4614
                         cmp                eax, 0x65                                     // 0x008988a2    83f865
                         {disp8} je         _jmp_addr_0x008988ca                          // 0x008988a5    7423
                         cmp                eax, 0x66                                     // 0x008988a7    83f866
                         {disp8} je         _jmp_addr_0x008988ca                          // 0x008988aa    741e
                         cmp                eax, 0x67                                     // 0x008988ac    83f867
                         {disp8} je         _jmp_addr_0x008988ca                          // 0x008988af    7419
_jmp_addr_0x008988b1:    mov                eax, dword ptr [esi]                          // 0x008988b1    8b06
                         push               esi                                           // 0x008988b3    56
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000014            // 0x008988b4    c7401414000000
                         mov                ecx, dword ptr [esi]                          // 0x008988bb    8b0e
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x008988bd    8b5614
                         {disp8} mov        dword ptr [ecx + 0x18], edx                   // 0x008988c0    895118
                         mov                eax, dword ptr [esi]                          // 0x008988c3    8b06
                         call               dword ptr [eax]                               // 0x008988c5    ff10
                         add                esp, 0x04                                     // 0x008988c7    83c404
_jmp_addr_0x008988ca:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x008988ca    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x008988ce    8b44240c
                         {disp32} mov       ecx, dword ptr [esi + 0x0000014c]             // 0x008988d2    8b8e4c010000
                         push               edx                                           // 0x008988d8    52
                         push               eax                                           // 0x008988d9    50
                         push               esi                                           // 0x008988da    56
                         call               dword ptr [ecx + 0x14]                        // 0x008988db    ff5114
                         add                esp, 0x0c                                     // 0x008988de    83c40c
                         pop                esi                                           // 0x008988e1    5e
                         ret                                                              // 0x008988e2    c3
                         nop                                                              // 0x008988e3    90
                         nop                                                              // 0x008988e4    90
                         nop                                                              // 0x008988e5    90
                         nop                                                              // 0x008988e6    90
                         nop                                                              // 0x008988e7    90
                         nop                                                              // 0x008988e8    90
                         nop                                                              // 0x008988e9    90
                         nop                                                              // 0x008988ea    90
                         nop                                                              // 0x008988eb    90
                         nop                                                              // 0x008988ec    90
                         nop                                                              // 0x008988ed    90
                         nop                                                              // 0x008988ee    90
                         nop                                                              // 0x008988ef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008988f0    8b442404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x008988f4    8b542408
                         push               edx                                           // 0x008988f8    52
                         push               eax                                           // 0x008988f9    50
                         {disp32} mov       ecx, dword ptr [eax + 0x0000014c]             // 0x008988fa    8b884c010000
                         call               dword ptr [ecx + 0x18]                        // 0x00898900    ff5118
                         add                esp, 0x08                                     // 0x00898903    83c408
                         ret                                                              // 0x00898906    c3
                         nop                                                              // 0x00898907    90
                         nop                                                              // 0x00898908    90
                         nop                                                              // 0x00898909    90
                         nop                                                              // 0x0089890a    90
                         nop                                                              // 0x0089890b    90
                         nop                                                              // 0x0089890c    90
                         nop                                                              // 0x0089890d    90
                         nop                                                              // 0x0089890e    90
                         nop                                                              // 0x0089890f    90
                         push               esi                                           // 0x00898910    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00898911    8b742408
                         cmp                dword ptr [esi + 0x14], 0x64                  // 0x00898915    837e1464
                         {disp8} je         _jmp_addr_0x00898934                          // 0x00898919    7419
                         mov                eax, dword ptr [esi]                          // 0x0089891b    8b06
                         push               esi                                           // 0x0089891d    56
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000014            // 0x0089891e    c7401414000000
                         mov                ecx, dword ptr [esi]                          // 0x00898925    8b0e
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x00898927    8b5614
                         {disp8} mov        dword ptr [ecx + 0x18], edx                   // 0x0089892a    895118
                         mov                eax, dword ptr [esi]                          // 0x0089892d    8b06
                         call               dword ptr [eax]                               // 0x0089892f    ff10
                         add                esp, 0x04                                     // 0x00898931    83c404
_jmp_addr_0x00898934:    mov                ecx, dword ptr [esi]                          // 0x00898934    8b0e
                         push               esi                                           // 0x00898936    56
                         call               dword ptr [ecx + 0x10]                        // 0x00898937    ff5110
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x0089893a    8b5618
                         push               esi                                           // 0x0089893d    56
                         call               dword ptr [edx + 8]                           // 0x0089893e    ff5208
                         push               esi                                           // 0x00898941    56
                         call               _jmp_addr_0x0089a4d0                          // 0x00898942    e8891b0000
                         {disp32} mov       eax, dword ptr [esi + 0x0000014c]             // 0x00898947    8b864c010000
                         push               esi                                           // 0x0089894d    56
                         call               dword ptr [eax + 0x10]                        // 0x0089894e    ff5010
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00898951    8b4e18
                         push               esi                                           // 0x00898954    56
                         call               dword ptr [ecx + 0x10]                        // 0x00898955    ff5110
                         add                esp, 0x14                                     // 0x00898958    83c414
                         pop                esi                                           // 0x0089895b    5e
                         ret                                                              // 0x0089895c    c3
                         nop                                                              // 0x0089895d    90
                         nop                                                              // 0x0089895e    90
                         nop                                                              // 0x0089895f    90
_jpeg_std_error:         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898960    8b442404
                         xor.s              ecx, ecx                                      // 0x00898964    33c9
                         mov                dword ptr [eax], 0x008989b0                   // 0x00898966    c700b0898900
                         {disp8} mov        dword ptr [eax + 0x04], 0x00898a00            // 0x0089896c    c74004008a8900
                         {disp8} mov        dword ptr [eax + 0x08], 0x008989d0            // 0x00898973    c74008d0898900
                         {disp8} mov        dword ptr [eax + 0x0c], 0x00898a40            // 0x0089897a    c7400c408a8900
                         {disp8} mov        dword ptr [eax + 0x10], 0x00898af0            // 0x00898981    c74010f08a8900
                         {disp8} mov        dword ptr [eax + 0x68], ecx                   // 0x00898988    894868
                         {disp8} mov        dword ptr [eax + 0x6c], ecx                   // 0x0089898b    89486c
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0089898e    894814
                         {disp8} mov        dword ptr [eax + 0x70], 0x009a59b4            // 0x00898991    c74070b4599a00
                         {disp8} mov        dword ptr [eax + 0x74], 0x0000007b            // 0x00898998    c740747b000000
                         {disp8} mov        dword ptr [eax + 0x78], ecx                   // 0x0089899f    894878
                         {disp8} mov        dword ptr [eax + 0x7c], ecx                   // 0x008989a2    89487c
                         {disp32} mov       dword ptr [eax + 0x00000080], ecx             // 0x008989a5    898880000000
                         ret                                                              // 0x008989ab    c3
                         nop                                                              // 0x008989ac    90
                         nop                                                              // 0x008989ad    90
                         nop                                                              // 0x008989ae    90
                         nop                                                              // 0x008989af    90
                         push               esi                                           // 0x008989b0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x008989b1    8b742408
                         push               esi                                           // 0x008989b5    56
                         mov                eax, dword ptr [esi]                          // 0x008989b6    8b06
                         call               dword ptr [eax + 8]                           // 0x008989b8    ff5008
                         push               esi                                           // 0x008989bb    56
                         call               _jmp_addr_0x0089a470                          // 0x008989bc    e8af1a0000
                         add                esp, 0x08                                     // 0x008989c1    83c408
                         push               0x1                                           // 0x008989c4    6a01
                         call               _exit                                         // 0x008989c6    e81615f3ff
                         pop                esi                                           // 0x008989cb    5e
                         nop                                                              // 0x008989cc    90
                         nop                                                              // 0x008989cd    90
                         nop                                                              // 0x008989ce    90
                         nop                                                              // 0x008989cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008989d0    8b442404
                         sub                esp, 0x000000c8                               // 0x008989d4    81ecc8000000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x008989da    8d542400
                         mov                ecx, dword ptr [eax]                          // 0x008989de    8b08
                         push               edx                                           // 0x008989e0    52
                         push               eax                                           // 0x008989e1    50
                         call               dword ptr [ecx + 0xc]                         // 0x008989e2    ff510c
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x008989e5    8d442408
                         push               eax                                           // 0x008989e9    50
                         push               0x009cec10                                    // 0x008989ea    6810ec9c00
                         push               0x00c2d820                                    // 0x008989ef    6820d8c200
                         call               _fprintf                                      // 0x008989f4    e8b7e3f2ff
                         add                esp, 0x000000dc                               // 0x008989f9    81c4dc000000
                         ret                                                              // 0x008989ff    c3
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00898a00    8b4c2404
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00898a04    8b442408
                         push               esi                                           // 0x00898a08    56
                         mov                esi, dword ptr [ecx]                          // 0x00898a09    8b31
                         test               eax, eax                                      // 0x00898a0b    85c0
                         {disp8} jge        _jmp_addr_0x00898a2c                          // 0x00898a0d    7d1d
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x00898a0f    8b466c
                         test               eax, eax                                      // 0x00898a12    85c0
                         {disp8} je         _jmp_addr_0x00898a1c                          // 0x00898a14    7406
                         cmp                dword ptr [esi + 0x68], 0x03                  // 0x00898a16    837e6803
                         {disp8} jl         _jmp_addr_0x00898a23                          // 0x00898a1a    7c07
_jmp_addr_0x00898a1c:    push               ecx                                           // 0x00898a1c    51
                         call               dword ptr [esi + 8]                           // 0x00898a1d    ff5608
                         add                esp, 0x04                                     // 0x00898a20    83c404
_jmp_addr_0x00898a23:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x00898a23    8b466c
                         inc                eax                                           // 0x00898a26    40
                         {disp8} mov        dword ptr [esi + 0x6c], eax                   // 0x00898a27    89466c
                         pop                esi                                           // 0x00898a2a    5e
                         ret                                                              // 0x00898a2b    c3
_jmp_addr_0x00898a2c:    cmp                dword ptr [esi + 0x68], eax                   // 0x00898a2c    394668
                         {disp8} jl         _jmp_addr_0x00898a38                          // 0x00898a2f    7c07
                         push               ecx                                           // 0x00898a31    51
                         call               dword ptr [esi + 8]                           // 0x00898a32    ff5608
                         add                esp, 0x04                                     // 0x00898a35    83c404
_jmp_addr_0x00898a38:    pop                esi                                           // 0x00898a38    5e
                         ret                                                              // 0x00898a39    c3
                         nop                                                              // 0x00898a3a    90
                         nop                                                              // 0x00898a3b    90
                         nop                                                              // 0x00898a3c    90
                         nop                                                              // 0x00898a3d    90
                         nop                                                              // 0x00898a3e    90
                         nop                                                              // 0x00898a3f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898a40    8b442404
                         push               esi                                           // 0x00898a44    56
                         push               edi                                           // 0x00898a45    57
                         mov                eax, dword ptr [eax]                          // 0x00898a46    8b00
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x00898a48    8b4814
                         test               ecx, ecx                                      // 0x00898a4b    85c9
                         {disp8} jle        _jmp_addr_0x00898a5c                          // 0x00898a4d    7e0d
                         cmp                ecx, dword ptr [eax + 0x74]                   // 0x00898a4f    3b4874
                         {disp8} jg         _jmp_addr_0x00898a5c                          // 0x00898a52    7f08
                         {disp8} mov        edx, dword ptr [eax + 0x70]                   // 0x00898a54    8b5070
                         mov                edx, dword ptr [edx + ecx * 0x4]              // 0x00898a57    8b148a
                         {disp8} jmp        _jmp_addr_0x00898a79                          // 0x00898a5a    eb1d
_jmp_addr_0x00898a5c:    {disp8} mov        esi, dword ptr [eax + 0x78]                   // 0x00898a5c    8b7078
                         test               esi, esi                                      // 0x00898a5f    85f6
                         {disp8} je         _jmp_addr_0x00898a7d                          // 0x00898a61    741a
                         {disp8} mov        edx, dword ptr [eax + 0x7c]                   // 0x00898a63    8b507c
                         cmp.s              ecx, edx                                      // 0x00898a66    3bca
                         {disp8} jl         _jmp_addr_0x00898a7d                          // 0x00898a68    7c13
                         cmp                ecx, dword ptr [eax + 0x00000080]             // 0x00898a6a    3b8880000000
                         {disp8} jg         _jmp_addr_0x00898a7d                          // 0x00898a70    7f0b
                         mov.s              edi, ecx                                      // 0x00898a72    8bf9
                         sub.s              edi, edx                                      // 0x00898a74    2bfa
                         mov                edx, dword ptr [esi + edi * 0x4]              // 0x00898a76    8b14be
_jmp_addr_0x00898a79:    test               edx, edx                                      // 0x00898a79    85d2
                         {disp8} jne        _jmp_addr_0x00898a85                          // 0x00898a7b    7508
_jmp_addr_0x00898a7d:    {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x00898a7d    894818
                         {disp8} mov        ecx, dword ptr [eax + 0x70]                   // 0x00898a80    8b4870
                         mov                edx, dword ptr [ecx]                          // 0x00898a83    8b11
_jmp_addr_0x00898a85:    mov                cl, byte ptr [edx]                            // 0x00898a85    8a0a
                         {disp8} lea        esi, dword ptr [edx + 0x01]                   // 0x00898a87    8d7201
                         test               cl, cl                                        // 0x00898a8a    84c9
                         {disp8} je         _jmp_addr_0x00898a9a                          // 0x00898a8c    740c
_jmp_addr_0x00898a8e:    cmp                cl, 0x25                                      // 0x00898a8e    80f925
                         mov                cl, byte ptr [esi]                            // 0x00898a91    8a0e
                         {disp8} je         _jmp_addr_0x00898acb                          // 0x00898a93    7436
                         inc                esi                                           // 0x00898a95    46
                         test               cl, cl                                        // 0x00898a96    84c9
                         {disp8} jne        _jmp_addr_0x00898a8e                          // 0x00898a98    75f4
_jmp_addr_0x00898a9a:    {disp8} mov        ecx, dword ptr [eax + 0x34]                   // 0x00898a9a    8b4834
                         push               ecx                                           // 0x00898a9d    51
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00898a9e    8b4830
                         push               ecx                                           // 0x00898aa1    51
                         {disp8} mov        ecx, dword ptr [eax + 0x2c]                   // 0x00898aa2    8b482c
                         push               ecx                                           // 0x00898aa5    51
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00898aa6    8b4828
                         push               ecx                                           // 0x00898aa9    51
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00898aaa    8b4824
                         push               ecx                                           // 0x00898aad    51
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                   // 0x00898aae    8b4820
                         push               ecx                                           // 0x00898ab1    51
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x00898ab2    8b481c
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x00898ab5    8b4018
                         push               ecx                                           // 0x00898ab8    51
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00898ab9    8b4c242c
                         push               eax                                           // 0x00898abd    50
                         push               edx                                           // 0x00898abe    52
                         push               ecx                                           // 0x00898abf    51
                         call               _sprintf                                      // 0x00898ac0    e80dcdf2ff
                         add                esp, 0x28                                     // 0x00898ac5    83c428
                         pop                edi                                           // 0x00898ac8    5f
                         pop                esi                                           // 0x00898ac9    5e
                         ret                                                              // 0x00898aca    c3
_jmp_addr_0x00898acb:    cmp                cl, 0x73                                      // 0x00898acb    80f973
                         {disp8} jne        _jmp_addr_0x00898a9a                          // 0x00898ace    75ca
                         add                eax, 0x18                                     // 0x00898ad0    83c018
                         push               eax                                           // 0x00898ad3    50
                         push               edx                                           // 0x00898ad4    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00898ad5    8b542418
                         push               edx                                           // 0x00898ad9    52
                         call               _sprintf                                      // 0x00898ada    e8f3ccf2ff
                         add                esp, 0x0c                                     // 0x00898adf    83c40c
                         pop                edi                                           // 0x00898ae2    5f
                         pop                esi                                           // 0x00898ae3    5e
                         ret                                                              // 0x00898ae4    c3
                         nop                                                              // 0x00898ae5    90
                         nop                                                              // 0x00898ae6    90
                         nop                                                              // 0x00898ae7    90
                         nop                                                              // 0x00898ae8    90
                         nop                                                              // 0x00898ae9    90
                         nop                                                              // 0x00898aea    90
                         nop                                                              // 0x00898aeb    90
                         nop                                                              // 0x00898aec    90
                         nop                                                              // 0x00898aed    90
                         nop                                                              // 0x00898aee    90
                         nop                                                              // 0x00898aef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898af0    8b442404
                         xor.s              ecx, ecx                                      // 0x00898af4    33c9
                         mov                edx, dword ptr [eax]                          // 0x00898af6    8b10
                         {disp8} mov        dword ptr [edx + 0x6c], ecx                   // 0x00898af8    894a6c
                         mov                eax, dword ptr [eax]                          // 0x00898afb    8b00
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x00898afd    894814
                         ret                                                              // 0x00898b00    c3
                         nop                                                              // 0x00898b01    90
                         nop                                                              // 0x00898b02    90
                         nop                                                              // 0x00898b03    90
                         nop                                                              // 0x00898b04    90
                         nop                                                              // 0x00898b05    90
                         nop                                                              // 0x00898b06    90
                         nop                                                              // 0x00898b07    90
                         nop                                                              // 0x00898b08    90
                         nop                                                              // 0x00898b09    90
                         nop                                                              // 0x00898b0a    90
                         nop                                                              // 0x00898b0b    90
                         nop                                                              // 0x00898b0c    90
                         nop                                                              // 0x00898b0d    90
                         nop                                                              // 0x00898b0e    90
                         nop                                                              // 0x00898b0f    90
_jmp_addr_0x00898b10:    push               esi                                           // 0x00898b10    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00898b11    8b742408
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00898b15    8b4618
                         test               eax, eax                                      // 0x00898b18    85c0
                         {disp8} jne        _jmp_addr_0x00898b2c                          // 0x00898b1a    7510
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00898b1c    8b4604
                         push               0x1c                                          // 0x00898b1f    6a1c
                         push               0x0                                           // 0x00898b21    6a00
                         push               esi                                           // 0x00898b23    56
                         call               dword ptr [eax]                               // 0x00898b24    ff10
                         add                esp, 0x0c                                     // 0x00898b26    83c40c
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00898b29    894618
_jmp_addr_0x00898b2c:    {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00898b2c    8b4618
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00898b2f    8b4c240c
                         pop                esi                                           // 0x00898b33    5e
                         {disp8} mov        dword ptr [eax + 0x08], 0x00898b50            // 0x00898b34    c74008508b8900
                         {disp8} mov        dword ptr [eax + 0x0c], 0x00898b80            // 0x00898b3b    c7400c808b8900
                         {disp8} mov        dword ptr [eax + 0x10], 0x00898bd0            // 0x00898b42    c74010d08b8900
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x00898b49    894814
                         ret                                                              // 0x00898b4c    c3
                         nop                                                              // 0x00898b4d    90
                         nop                                                              // 0x00898b4e    90
                         nop                                                              // 0x00898b4f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898b50    8b442404
                         push               esi                                           // 0x00898b54    56
                         push               0x00001000                                    // 0x00898b55    6800100000
                         push               0x1                                           // 0x00898b5a    6a01
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00898b5c    8b4804
                         {disp8} mov        esi, dword ptr [eax + 0x18]                   // 0x00898b5f    8b7018
                         push               eax                                           // 0x00898b62    50
                         call               dword ptr [ecx]                               // 0x00898b63    ff11
                         add                esp, 0x0c                                     // 0x00898b65    83c40c
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00898b68    894618
                         mov                dword ptr [esi], eax                          // 0x00898b6b    8906
                         {disp8} mov        dword ptr [esi + 0x04], 0x00001000            // 0x00898b6d    c7460400100000
                         pop                esi                                           // 0x00898b74    5e
                         ret                                                              // 0x00898b75    c3
                         nop                                                              // 0x00898b76    90
                         nop                                                              // 0x00898b77    90
                         nop                                                              // 0x00898b78    90
                         nop                                                              // 0x00898b79    90
                         nop                                                              // 0x00898b7a    90
                         nop                                                              // 0x00898b7b    90
                         nop                                                              // 0x00898b7c    90
                         nop                                                              // 0x00898b7d    90
                         nop                                                              // 0x00898b7e    90
                         nop                                                              // 0x00898b7f    90
                         push               esi                                           // 0x00898b80    56
                         push               edi                                           // 0x00898b81    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00898b82    8b7c240c
                         {disp8} mov        esi, dword ptr [edi + 0x18]                   // 0x00898b86    8b7718
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00898b89    8b4614
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00898b8c    8b4e18
                         push               eax                                           // 0x00898b8f    50
                         push               0x00001000                                    // 0x00898b90    6800100000
                         push               0x1                                           // 0x00898b95    6a01
                         push               ecx                                           // 0x00898b97    51
                         call               _fwrite                                       // 0x00898b98    e805eaf2ff
                         add                esp, 0x10                                     // 0x00898b9d    83c410
                         cmp                eax, 0x00001000                               // 0x00898ba0    3d00100000
                         {disp8} je         _jmp_addr_0x00898bb8                          // 0x00898ba5    7411
                         mov                edx, dword ptr [edi]                          // 0x00898ba7    8b17
                         push               edi                                           // 0x00898ba9    57
                         {disp8} mov        dword ptr [edx + 0x14], 0x00000025            // 0x00898baa    c7421425000000
                         mov                eax, dword ptr [edi]                          // 0x00898bb1    8b07
                         call               dword ptr [eax]                               // 0x00898bb3    ff10
                         add                esp, 0x04                                     // 0x00898bb5    83c404
_jmp_addr_0x00898bb8:    {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00898bb8    8b4e18
                         {disp8} mov        dword ptr [esi + 0x04], 0x00001000            // 0x00898bbb    c7460400100000
                         mov                dword ptr [esi], ecx                          // 0x00898bc2    890e
                         pop                edi                                           // 0x00898bc4    5f
                         mov                al, 0x01                                      // 0x00898bc5    b001
                         pop                esi                                           // 0x00898bc7    5e
                         ret                                                              // 0x00898bc8    c3
                         nop                                                              // 0x00898bc9    90
                         nop                                                              // 0x00898bca    90
                         nop                                                              // 0x00898bcb    90
                         nop                                                              // 0x00898bcc    90
                         nop                                                              // 0x00898bcd    90
                         nop                                                              // 0x00898bce    90
                         nop                                                              // 0x00898bcf    90
                         push               ebx                                           // 0x00898bd0    53
                         push               esi                                           // 0x00898bd1    56
                         push               edi                                           // 0x00898bd2    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00898bd3    8b7c2410
                         mov                esi, 0x00001000                               // 0x00898bd7    be00100000
                         {disp8} mov        ebx, dword ptr [edi + 0x18]                   // 0x00898bdc    8b5f18
                         sub                esi, dword ptr [ebx + 0x04]                   // 0x00898bdf    2b7304
                         {disp8} je         _jmp_addr_0x00898c0c                          // 0x00898be2    7428
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                   // 0x00898be4    8b4314
                         {disp8} mov        ecx, dword ptr [ebx + 0x18]                   // 0x00898be7    8b4b18
                         push               eax                                           // 0x00898bea    50
                         push               esi                                           // 0x00898beb    56
                         push               0x1                                           // 0x00898bec    6a01
                         push               ecx                                           // 0x00898bee    51
                         call               _fwrite                                       // 0x00898bef    e8aee9f2ff
                         add                esp, 0x10                                     // 0x00898bf4    83c410
                         cmp.s              eax, esi                                      // 0x00898bf7    3bc6
                         {disp8} je         _jmp_addr_0x00898c0c                          // 0x00898bf9    7411
                         mov                edx, dword ptr [edi]                          // 0x00898bfb    8b17
                         push               edi                                           // 0x00898bfd    57
                         {disp8} mov        dword ptr [edx + 0x14], 0x00000025            // 0x00898bfe    c7421425000000
                         mov                eax, dword ptr [edi]                          // 0x00898c05    8b07
                         call               dword ptr [eax]                               // 0x00898c07    ff10
                         add                esp, 0x04                                     // 0x00898c09    83c404
_jmp_addr_0x00898c0c:    {disp8} mov        ecx, dword ptr [ebx + 0x14]                   // 0x00898c0c    8b4b14
                         push               ecx                                           // 0x00898c0f    51
                         call               _fflush                                       // 0x00898c10    e8e416f3ff
                         {disp8} mov        edx, dword ptr [ebx + 0x14]                   // 0x00898c15    8b5314
                         add                esp, 0x04                                     // 0x00898c18    83c404
                         test               byte ptr [edx + 0x0c], 0x20                   // 0x00898c1b    f6420c20
                         {disp8} je         _jmp_addr_0x00898c32                          // 0x00898c1f    7411
                         mov                eax, dword ptr [edi]                          // 0x00898c21    8b07
                         push               edi                                           // 0x00898c23    57
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000025            // 0x00898c24    c7401425000000
                         mov                ecx, dword ptr [edi]                          // 0x00898c2b    8b0f
                         call               dword ptr [ecx]                               // 0x00898c2d    ff11
                         add                esp, 0x04                                     // 0x00898c2f    83c404
_jmp_addr_0x00898c32:    pop                edi                                           // 0x00898c32    5f
                         pop                esi                                           // 0x00898c33    5e
                         pop                ebx                                           // 0x00898c34    5b
                         ret                                                              // 0x00898c35    c3
                         nop                                                              // 0x00898c36    90
                         nop                                                              // 0x00898c37    90
                         nop                                                              // 0x00898c38    90
                         nop                                                              // 0x00898c39    90
                         nop                                                              // 0x00898c3a    90
                         nop                                                              // 0x00898c3b    90
                         nop                                                              // 0x00898c3c    90
                         nop                                                              // 0x00898c3d    90
                         nop                                                              // 0x00898c3e    90
                         nop                                                              // 0x00898c3f    90
_jmp_addr_0x00898c40:    push               ebx                                           // 0x00898c40    53
                         push               ebp                                           // 0x00898c41    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x00898c42    8b6c240c
                         push               esi                                           // 0x00898c46    56
                         push               edi                                           // 0x00898c47    57
                         cmp                dword ptr [ebp + 0x14], 0x64                  // 0x00898c48    837d1464
                         {disp8} je         _jmp_addr_0x00898c6a                          // 0x00898c4c    741c
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00898c4e    8b4500
                         push               ebp                                           // 0x00898c51    55
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000014            // 0x00898c52    c7401414000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x00898c59    8b4d00
                         {disp8} mov        edx, dword ptr [ebp + 0x14]                   // 0x00898c5c    8b5514
                         {disp8} mov        dword ptr [ecx + 0x18], edx                   // 0x00898c5f    895118
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00898c62    8b4500
                         call               dword ptr [eax]                               // 0x00898c65    ff10
                         add                esp, 0x04                                     // 0x00898c67    83c404
_jmp_addr_0x00898c6a:    {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00898c6a    8b5c2418
                         test               ebx, ebx                                      // 0x00898c6e    85db
                         {disp8} jl         _jmp_addr_0x00898c77                          // 0x00898c70    7c05
                         cmp                ebx, 0x04                                     // 0x00898c72    83fb04
                         {disp8} jl         _jmp_addr_0x00898c90                          // 0x00898c75    7c19
_jmp_addr_0x00898c77:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x00898c77    8b4d00
                         push               ebp                                           // 0x00898c7a    55
                         {disp8} mov        dword ptr [ecx + 0x14], 0x0000001f            // 0x00898c7b    c741141f000000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x00898c82    8b5500
                         {disp8} mov        dword ptr [edx + 0x18], ebx                   // 0x00898c85    895a18
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00898c88    8b4500
                         call               dword ptr [eax]                               // 0x00898c8b    ff10
                         add                esp, 0x04                                     // 0x00898c8d    83c404
_jmp_addr_0x00898c90:    {disp8} mov        eax, dword ptr [ebp + ebx * 0x4 + 0x48]       // 0x00898c90    8b449d48
                         test               eax, eax                                      // 0x00898c94    85c0
                         {disp8} jne        _jmp_addr_0x00898ca5                          // 0x00898c96    750d
                         push               ebp                                           // 0x00898c98    55
                         call               _jmp_addr_0x0089a490                          // 0x00898c99    e8f2170000
                         add                esp, 0x04                                     // 0x00898c9e    83c404
                         {disp8} mov        dword ptr [ebp + ebx * 0x4 + 0x48], eax       // 0x00898ca1    89449d48
_jmp_addr_0x00898ca5:    {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00898ca5    8b7c241c
                         xor.s              esi, esi                                      // 0x00898ca9    33f6
_jmp_addr_0x00898cab:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00898cab    8b4c2420
                         mov                eax, 0x51eb851f                               // 0x00898caf    b81f85eb51
                         imul               ecx, dword ptr [edi]                          // 0x00898cb4    0faf0f
                         add                ecx, 0x32                                     // 0x00898cb7    83c132
                         imul               ecx                                           // 0x00898cba    f7e9
                         sar                edx, 5                                        // 0x00898cbc    c1fa05
                         mov.s              ecx, edx                                      // 0x00898cbf    8bca
                         shr                ecx, 0x1f                                     // 0x00898cc1    c1e91f
                         add.s              edx, ecx                                      // 0x00898cc4    03d1
                         test               edx, edx                                      // 0x00898cc6    85d2
                         {disp8} jg         _jmp_addr_0x00898cd1                          // 0x00898cc8    7f07
                         mov                edx, 0x00000001                               // 0x00898cca    ba01000000
                         {disp8} jmp        _jmp_addr_0x00898cde                          // 0x00898ccf    eb0d
_jmp_addr_0x00898cd1:    cmp                edx, 0x00007fff                               // 0x00898cd1    81faff7f0000
                         {disp8} jle        _jmp_addr_0x00898cde                          // 0x00898cd7    7e05
                         mov                edx, 0x00007fff                               // 0x00898cd9    baff7f0000
_jmp_addr_0x00898cde:    {disp8} mov        al, byte ptr [esp + 0x24]                     // 0x00898cde    8a442424
                         test               al, al                                        // 0x00898ce2    84c0
                         {disp8} je         _jmp_addr_0x00898cf3                          // 0x00898ce4    740d
                         cmp                edx, 0x000000ff                               // 0x00898ce6    81faff000000
                         {disp8} jle        _jmp_addr_0x00898cf3                          // 0x00898cec    7e05
                         mov                edx, 0x000000ff                               // 0x00898cee    baff000000
_jmp_addr_0x00898cf3:    {disp8} mov        eax, dword ptr [ebp + ebx * 0x4 + 0x48]       // 0x00898cf3    8b449d48
                         add                esi, 0x02                                     // 0x00898cf7    83c602
                         add                edi, 0x04                                     // 0x00898cfa    83c704
                         cmp                esi, 0x00000080                               // 0x00898cfd    81fe80000000
                         {disp8} mov        word ptr [eax + esi * 0x1 + -0x02], dx        // 0x00898d03    66895430fe
                         {disp8} jl         _jmp_addr_0x00898cab                          // 0x00898d08    7ca1
                         {disp8} mov        ecx, dword ptr [ebp + ebx * 0x4 + 0x48]       // 0x00898d0a    8b4c9d48
                         pop                edi                                           // 0x00898d0e    5f
                         pop                esi                                           // 0x00898d0f    5e
                         pop                ebp                                           // 0x00898d10    5d
                         {disp32} mov       byte ptr [ecx + 0x00000080], 0x00             // 0x00898d11    c6818000000000
                         pop                ebx                                           // 0x00898d18    5b
                         ret                                                              // 0x00898d19    c3
                         nop                                                              // 0x00898d1a    90
                         nop                                                              // 0x00898d1b    90
                         nop                                                              // 0x00898d1c    90
                         nop                                                              // 0x00898d1d    90
                         nop                                                              // 0x00898d1e    90
                         nop                                                              // 0x00898d1f    90
_jmp_addr_0x00898d20:    push               ebx                                           // 0x00898d20    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00898d21    8b5c2408
                         push               esi                                           // 0x00898d25    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00898d26    8b742414
                         push               edi                                           // 0x00898d2a    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00898d2b    8b7c2414
                         push               esi                                           // 0x00898d2f    56
                         push               edi                                           // 0x00898d30    57
                         push               0x009a5ba8                                    // 0x00898d31    68a85b9a00
                         push               0x0                                           // 0x00898d36    6a00
                         push               ebx                                           // 0x00898d38    53
                         call               _jmp_addr_0x00898c40                          // 0x00898d39    e802ffffff
                         push               esi                                           // 0x00898d3e    56
                         push               edi                                           // 0x00898d3f    57
                         push               0x009a5ca8                                    // 0x00898d40    68a85c9a00
                         push               0x1                                           // 0x00898d45    6a01
                         push               ebx                                           // 0x00898d47    53
                         call               _jmp_addr_0x00898c40                          // 0x00898d48    e8f3feffff
                         add                esp, 0x28                                     // 0x00898d4d    83c428
                         pop                edi                                           // 0x00898d50    5f
                         pop                esi                                           // 0x00898d51    5e
                         pop                ebx                                           // 0x00898d52    5b
                         ret                                                              // 0x00898d53    c3
                         nop                                                              // 0x00898d54    90
                         nop                                                              // 0x00898d55    90
                         nop                                                              // 0x00898d56    90
                         nop                                                              // 0x00898d57    90
                         nop                                                              // 0x00898d58    90
                         nop                                                              // 0x00898d59    90
                         nop                                                              // 0x00898d5a    90
                         nop                                                              // 0x00898d5b    90
                         nop                                                              // 0x00898d5c    90
                         nop                                                              // 0x00898d5d    90
                         nop                                                              // 0x00898d5e    90
                         nop                                                              // 0x00898d5f    90
_jmp_addr_0x00898d60:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00898d60    8b4c2404
                         test               ecx, ecx                                      // 0x00898d64    85c9
                         {disp8} jg         _jmp_addr_0x00898d76                          // 0x00898d66    7f0e
                         mov                eax, 0x00001388                               // 0x00898d68    b888130000
                         mov                ecx, 0x00000001                               // 0x00898d6d    b901000000
                         cdq                                                              // 0x00898d72    99
                         idiv               ecx                                           // 0x00898d73    f7f9
                         ret                                                              // 0x00898d75    c3
_jmp_addr_0x00898d76:    cmp                ecx, 0x64                                     // 0x00898d76    83f964
                         {disp8} jle        _jmp_addr_0x00898d8a                          // 0x00898d79    7e0f
                         mov                ecx, 0x00000064                               // 0x00898d7b    b964000000
_jmp_addr_0x00898d80:    mov                eax, 0x00000064                               // 0x00898d80    b864000000
                         sub.s              eax, ecx                                      // 0x00898d85    2bc1
                         shl                eax, 1                                        // 0x00898d87    d1e0
                         ret                                                              // 0x00898d89    c3
_jmp_addr_0x00898d8a:    cmp                ecx, 0x32                                     // 0x00898d8a    83f932
                         {disp8} jge        _jmp_addr_0x00898d80                          // 0x00898d8d    7df1
                         mov                eax, 0x00001388                               // 0x00898d8f    b888130000
                         cdq                                                              // 0x00898d94    99
                         idiv               ecx                                           // 0x00898d95    f7f9
                         ret                                                              // 0x00898d97    c3
                         nop                                                              // 0x00898d98    90
                         nop                                                              // 0x00898d99    90
                         nop                                                              // 0x00898d9a    90
                         nop                                                              // 0x00898d9b    90
                         nop                                                              // 0x00898d9c    90
                         nop                                                              // 0x00898d9d    90
                         nop                                                              // 0x00898d9e    90
                         nop                                                              // 0x00898d9f    90
_jmp_addr_0x00898da0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00898da0    8b442408
                         push               eax                                           // 0x00898da4    50
                         call               _jmp_addr_0x00898d60                          // 0x00898da5    e8b6ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00898daa    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00898dae    8b542408
                         push               ecx                                           // 0x00898db2    51
                         push               eax                                           // 0x00898db3    50
                         push               edx                                           // 0x00898db4    52
                         call               _jmp_addr_0x00898d20                          // 0x00898db5    e866ffffff
                         add                esp, 0x10                                     // 0x00898dba    83c410
                         ret                                                              // 0x00898dbd    c3
                         nop                                                              // 0x00898dbe    90
                         nop                                                              // 0x00898dbf    90
_jmp_addr_0x00898dc0:    push               ebx                                           // 0x00898dc0    53
                         push               esi                                           // 0x00898dc1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00898dc2    8b74240c
                         cmp                dword ptr [esi + 0x14], 0x64                  // 0x00898dc6    837e1464
                         {disp8} je         _jmp_addr_0x00898de5                          // 0x00898dca    7419
                         mov                eax, dword ptr [esi]                          // 0x00898dcc    8b06
                         push               esi                                           // 0x00898dce    56
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000014            // 0x00898dcf    c7401414000000
                         mov                ecx, dword ptr [esi]                          // 0x00898dd6    8b0e
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x00898dd8    8b5614
                         {disp8} mov        dword ptr [ecx + 0x18], edx                   // 0x00898ddb    895118
                         mov                eax, dword ptr [esi]                          // 0x00898dde    8b06
                         call               dword ptr [eax]                               // 0x00898de0    ff10
                         add                esp, 0x04                                     // 0x00898de2    83c404
_jmp_addr_0x00898de5:    {disp8} mov        eax, dword ptr [esi + 0x44]                   // 0x00898de5    8b4644
                         xor.s              ebx, ebx                                      // 0x00898de8    33db
                         cmp.s              eax, ebx                                      // 0x00898dea    3bc3
                         {disp8} jne        _jmp_addr_0x00898e00                          // 0x00898dec    7512
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00898dee    8b4e04
                         push               0x00000348                                    // 0x00898df1    6848030000
                         push               ebx                                           // 0x00898df6    53
                         push               esi                                           // 0x00898df7    56
                         call               dword ptr [ecx]                               // 0x00898df8    ff11
                         add                esp, 0x0c                                     // 0x00898dfa    83c40c
                         {disp8} mov        dword ptr [esi + 0x44], eax                   // 0x00898dfd    894644
_jmp_addr_0x00898e00:    push               ebp                                           // 0x00898e00    55
                         push               0x1                                           // 0x00898e01    6a01
                         push               0x4b                                          // 0x00898e03    6a4b
                         push               esi                                           // 0x00898e05    56
                         {disp8} mov        dword ptr [esi + 0x38], 0x00000008            // 0x00898e06    c7463808000000
                         call               _jmp_addr_0x00898da0                          // 0x00898e0d    e88effffff
                         push               esi                                           // 0x00898e12    56
                         call               _jmp_addr_0x00898ec0                          // 0x00898e13    e8a8000000
                         mov                ecx, 0xffffff78                               // 0x00898e18    b978ffffff
                         add                esp, 0x10                                     // 0x00898e1d    83c410
                         {disp32} lea       eax, dword ptr [esi + 0x00000088]             // 0x00898e20    8d8688000000
                         sub.s              ecx, esi                                      // 0x00898e26    2bce
                         mov                dl, 0x05                                      // 0x00898e28    b205
_jmp_addr_0x00898e2a:    {disp8} mov        byte ptr [eax + -0x10], bl                    // 0x00898e2a    8858f0
                         mov                byte ptr [eax], 0x01                          // 0x00898e2d    c60001
                         {disp8} mov        byte ptr [eax + 0x10], dl                     // 0x00898e30    885010
                         inc                eax                                           // 0x00898e33    40
                         lea                ebp, dword ptr [ecx + eax * 0x1]              // 0x00898e34    8d2c01
                         cmp                ebp, 0x10                                     // 0x00898e37    83fd10
                         {disp8} jl         _jmp_addr_0x00898e2a                          // 0x00898e3a    7cee
                         {disp8} mov        eax, dword ptr [esi + 0x38]                   // 0x00898e3c    8b4638
                         {disp32} mov       dword ptr [esi + 0x000000ac], ebx             // 0x00898e3f    899eac000000
                         cmp                eax, 0x08                                     // 0x00898e45    83f808
                         {disp32} mov       dword ptr [esi + 0x000000a8], ebx             // 0x00898e48    899ea8000000
                         {disp32} mov       byte ptr [esi + 0x000000b0], bl               // 0x00898e4e    889eb0000000
                         {disp32} mov       byte ptr [esi + 0x000000b1], bl               // 0x00898e54    889eb1000000
                         {disp32} mov       byte ptr [esi + 0x000000b2], bl               // 0x00898e5a    889eb2000000
                         pop                ebp                                           // 0x00898e60    5d
                         {disp8} jle        _jmp_addr_0x00898e6a                          // 0x00898e61    7e07
                         {disp32} mov       byte ptr [esi + 0x000000b2], 0x01             // 0x00898e63    c686b200000001
_jmp_addr_0x00898e6a:    mov                eax, 0x00000001                               // 0x00898e6a    b801000000
                         push               esi                                           // 0x00898e6f    56
                         {disp32} mov       byte ptr [esi + 0x000000b3], bl               // 0x00898e70    889eb3000000
                         {disp32} mov       dword ptr [esi + 0x000000b4], ebx             // 0x00898e76    899eb4000000
                         {disp32} mov       dword ptr [esi + 0x000000b8], ebx             // 0x00898e7c    899eb8000000
                         {disp32} mov       dword ptr [esi + 0x000000bc], ebx             // 0x00898e82    899ebc000000
                         {disp32} mov       dword ptr [esi + 0x000000c0], ebx             // 0x00898e88    899ec0000000
                         {disp32} mov       byte ptr [esi + 0x000000c5], 0x01             // 0x00898e8e    c686c500000001
                         {disp32} mov       byte ptr [esi + 0x000000c6], 0x01             // 0x00898e95    c686c600000001
                         {disp32} mov       byte ptr [esi + 0x000000c7], bl               // 0x00898e9c    889ec7000000
                         {disp32} mov       word ptr [esi + 0x000000c8], ax               // 0x00898ea2    668986c8000000
                         {disp32} mov       word ptr [esi + 0x000000ca], ax               // 0x00898ea9    668986ca000000
                         call               _jmp_addr_0x00898fc0                          // 0x00898eb0    e80b010000
                         add                esp, 0x04                                     // 0x00898eb5    83c404
                         pop                esi                                           // 0x00898eb8    5e
                         pop                ebx                                           // 0x00898eb9    5b
                         ret                                                              // 0x00898eba    c3
                         nop                                                              // 0x00898ebb    90
                         nop                                                              // 0x00898ebc    90
                         nop                                                              // 0x00898ebd    90
                         nop                                                              // 0x00898ebe    90
                         nop                                                              // 0x00898ebf    90
_jmp_addr_0x00898ec0:    push               esi                                           // 0x00898ec0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00898ec1    8b742408
                         push               0x009a5dbc                                    // 0x00898ec5    68bc5d9a00
                         push               0x009a5da8                                    // 0x00898eca    68a85d9a00
                         {disp8} lea        eax, dword ptr [esi + 0x58]                   // 0x00898ecf    8d4658
                         push               eax                                           // 0x00898ed2    50
                         push               esi                                           // 0x00898ed3    56
                         call               _jmp_addr_0x00898f20                          // 0x00898ed4    e847000000
                         push               0x009a5dfc                                    // 0x00898ed9    68fc5d9a00
                         {disp8} lea        ecx, dword ptr [esi + 0x68]                   // 0x00898ede    8d4e68
                         push               0x009a5de8                                    // 0x00898ee1    68e85d9a00
                         push               ecx                                           // 0x00898ee6    51
                         push               esi                                           // 0x00898ee7    56
                         call               _jmp_addr_0x00898f20                          // 0x00898ee8    e833000000
                         push               0x009a5ddc                                    // 0x00898eed    68dc5d9a00
                         {disp8} lea        edx, dword ptr [esi + 0x5c]                   // 0x00898ef2    8d565c
                         push               0x009a5dc8                                    // 0x00898ef5    68c85d9a00
                         push               edx                                           // 0x00898efa    52
                         push               esi                                           // 0x00898efb    56
                         call               _jmp_addr_0x00898f20                          // 0x00898efc    e81f000000
                         push               0x009a5eb4                                    // 0x00898f01    68b45e9a00
                         {disp8} lea        eax, dword ptr [esi + 0x6c]                   // 0x00898f06    8d466c
                         push               0x009a5ea0                                    // 0x00898f09    68a05e9a00
                         push               eax                                           // 0x00898f0e    50
                         push               esi                                           // 0x00898f0f    56
                         call               _jmp_addr_0x00898f20                          // 0x00898f10    e80b000000
                         add                esp, 0x40                                     // 0x00898f15    83c440
                         pop                esi                                           // 0x00898f18    5e
                         ret                                                              // 0x00898f19    c3
                         nop                                                              // 0x00898f1a    90
                         nop                                                              // 0x00898f1b    90
                         nop                                                              // 0x00898f1c    90
                         nop                                                              // 0x00898f1d    90
                         nop                                                              // 0x00898f1e    90
                         nop                                                              // 0x00898f1f    90
_jmp_addr_0x00898f20:    push               ebp                                           // 0x00898f20    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x00898f21    8b6c240c
                         push               esi                                           // 0x00898f25    56
                         push               edi                                           // 0x00898f26    57
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00898f27    8b4500
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00898f2a    8b7c2410
                         test               eax, eax                                      // 0x00898f2e    85c0
                         {disp8} jne        _jmp_addr_0x00898f3e                          // 0x00898f30    750c
                         push               edi                                           // 0x00898f32    57
                         call               _jmp_addr_0x0089a4b0                          // 0x00898f33    e878150000
                         add                esp, 0x04                                     // 0x00898f38    83c404
                         {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x00898f3b    894500
_jmp_addr_0x00898f3e:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00898f3e    8b4c2418
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x00898f42    8b5500
                         mov.s              eax, ecx                                      // 0x00898f45    8bc1
                         mov                esi, dword ptr [eax]                          // 0x00898f47    8b30
                         mov                dword ptr [edx], esi                          // 0x00898f49    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00898f4b    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x00898f4e    897204
                         {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x00898f51    8b7008
                         {disp8} mov        dword ptr [edx + 0x08], esi                   // 0x00898f54    897208
                         {disp8} mov        esi, dword ptr [eax + 0x0c]                   // 0x00898f57    8b700c
                         {disp8} mov        dword ptr [edx + 0x0c], esi                   // 0x00898f5a    89720c
                         xor.s              esi, esi                                      // 0x00898f5d    33f6
                         {disp8} mov        al, byte ptr [eax + 0x10]                     // 0x00898f5f    8a4010
                         {disp8} mov        byte ptr [edx + 0x10], al                     // 0x00898f62    884210
                         mov                eax, 0x00000001                               // 0x00898f65    b801000000
_jmp_addr_0x00898f6a:    xor.s              edx, edx                                      // 0x00898f6a    33d2
                         mov                dl, byte ptr [eax + ecx * 0x1]                // 0x00898f6c    8a1408
                         add.s              esi, edx                                      // 0x00898f6f    03f2
                         inc                eax                                           // 0x00898f71    40
                         cmp                eax, 0x10                                     // 0x00898f72    83f810
                         {disp8} jle        _jmp_addr_0x00898f6a                          // 0x00898f75    7ef3
                         cmp                esi, 0x01                                     // 0x00898f77    83fe01
                         {disp8} jl         _jmp_addr_0x00898f84                          // 0x00898f7a    7c08
                         cmp                esi, 0x00000100                               // 0x00898f7c    81fe00010000
                         {disp8} jle        _jmp_addr_0x00898f95                          // 0x00898f82    7e11
_jmp_addr_0x00898f84:    mov                eax, dword ptr [edi]                          // 0x00898f84    8b07
                         push               edi                                           // 0x00898f86    57
                         {disp8} mov        dword ptr [eax + 0x14], 0x00000008            // 0x00898f87    c7401408000000
                         mov                ecx, dword ptr [edi]                          // 0x00898f8e    8b0f
                         call               dword ptr [ecx]                               // 0x00898f90    ff11
                         add                esp, 0x04                                     // 0x00898f92    83c404
_jmp_addr_0x00898f95:    {disp8} mov        edi, dword ptr [ebp + 0x00]                   // 0x00898f95    8b7d00
                         mov.s              ecx, esi                                      // 0x00898f98    8bce
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00898f9a    8b74241c
                         mov.s              edx, ecx                                      // 0x00898f9e    8bd1
                         add                edi, 0x11                                     // 0x00898fa0    83c711
                         shr                ecx, 2                                        // 0x00898fa3    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00898fa6    f3a5
                         mov.s              ecx, edx                                      // 0x00898fa8    8bca
                         and                ecx, 0x03                                     // 0x00898faa    83e103
                         rep movsb                                                        // 0x00898fad    f3a4
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00898faf    8b4500
                         pop                edi                                           // 0x00898fb2    5f
                         pop                esi                                           // 0x00898fb3    5e
                         pop                ebp                                           // 0x00898fb4    5d
                         {disp32} mov       byte ptr [eax + 0x00000111], 0x00             // 0x00898fb5    c6801101000000
                         ret                                                              // 0x00898fbc    c3
                         nop                                                              // 0x00898fbd    90
                         nop                                                              // 0x00898fbe    90
                         nop                                                              // 0x00898fbf    90
_jmp_addr_0x00898fc0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898fc0    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00898fc4    8b4828
                         cmp                ecx, 0x05                                     // 0x00898fc7    83f905
                         {disp8} ja         _jmp_addr_0x0089900f                          // 0x00898fca    7743
                         jmp                dword ptr [ecx*4 + 0x899020]                  // 0x00898fcc    ff248d20908900
                         push               0x1                                           // 0x00898fd3    6a01
                         push               eax                                           // 0x00898fd5    50
                         call               _jmp_addr_0x00899040                          // 0x00898fd6    e865000000
                         add                esp, 0x08                                     // 0x00898fdb    83c408
                         ret                                                              // 0x00898fde    c3
                         push               0x3                                           // 0x00898fdf    6a03
                         push               eax                                           // 0x00898fe1    50
                         call               _jmp_addr_0x00899040                          // 0x00898fe2    e859000000
                         add                esp, 0x08                                     // 0x00898fe7    83c408
                         ret                                                              // 0x00898fea    c3
                         push               0x4                                           // 0x00898feb    6a04
                         push               eax                                           // 0x00898fed    50
                         call               _jmp_addr_0x00899040                          // 0x00898fee    e84d000000
                         add                esp, 0x08                                     // 0x00898ff3    83c408
                         ret                                                              // 0x00898ff6    c3
                         push               0x5                                           // 0x00898ff7    6a05
                         push               eax                                           // 0x00898ff9    50
                         call               _jmp_addr_0x00899040                          // 0x00898ffa    e841000000
                         add                esp, 0x08                                     // 0x00898fff    83c408
                         ret                                                              // 0x00899002    c3
                         push               0x0                                           // 0x00899003    6a00
                         push               eax                                           // 0x00899005    50
                         call               _jmp_addr_0x00899040                          // 0x00899006    e835000000
                         add                esp, 0x08                                     // 0x0089900b    83c408
                         ret                                                              // 0x0089900e    c3
_jmp_addr_0x0089900f:    mov                ecx, dword ptr [eax]                          // 0x0089900f    8b08
                         push               eax                                           // 0x00899011    50
                         {disp8} mov        dword ptr [ecx + 0x14], 0x00000009            // 0x00899012    c7411409000000
                         mov                edx, dword ptr [eax]                          // 0x00899019    8b10
                         call               dword ptr [edx]                               // 0x0089901b    ff12
                         pop                ecx                                           // 0x0089901d    59
                         ret                                                              // 0x0089901e    c3

// Snippet: db, [0x0089901f, 0x00899020)
.byte 0x90                        // 0x0089901f

// Snippet: jmptbl, [0x00899020, 0x00899038)
.byte 0x03, 0x90, 0x89, 0x00      // 0x00899020
.byte 0xd3, 0x8f, 0x89, 0x00      // 0x00899024
.byte 0xdf, 0x8f, 0x89, 0x00      // 0x00899028
.byte 0xdf, 0x8f, 0x89, 0x00      // 0x0089902c
.byte 0xeb, 0x8f, 0x89, 0x00      // 0x00899030
.byte 0xf7, 0x8f, 0x89, 0x00      // 0x00899034

// Snippet: db, [0x00899038, 0x00899040)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00899038
.byte 0x90, 0x90, 0x90, 0x90      // 0x0089903c

