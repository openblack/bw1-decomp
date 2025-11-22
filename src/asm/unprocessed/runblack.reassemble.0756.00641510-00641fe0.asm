.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @InsertString__9SetupListFiPw@16
.extern _jmp_addr_0x0043dff0
.extern _jmp_addr_0x005356f0
.extern _jmp_addr_0x00536670
.extern _jmp_addr_0x00538900
.extern ?Init@FrontEnd@@SAXXZ
.extern _jmp_addr_0x0053c480
.extern ?JustDoNewProfileBox@FrontEnd@@QAEXXZ
.extern ?JustDoSkirmishGameBox@FrontEnd@@QAEXXZ
.extern ?StartGame@GGame@@QAEIXZ
.extern _jmp_addr_0x0054d610
.extern _jmp_addr_0x0054eb40
.extern _jmp_addr_0x0054ec80
.extern ?InitOneTimeOnly@GGame@@QAEIXZ
.extern ?StartPlaygroundGame@GGame@@QAEXPAD@Z
.extern ?DoCitadelMultiplayer@@YAXXZ
.extern _jmp_addr_0x00564160
.extern _jmp_addr_0x00590fd0
.extern _jmp_addr_0x005ea980
.extern _jmp_addr_0x005ebaf0
.extern _jmp_addr_0x005f3d90
.extern ?StartTipOfTheDayText@@YAXXZ
.extern @GetNearestTown__9MapCoordsCFf@12
.extern _jmp_addr_0x0063ed40
.extern _jmp_addr_0x00640cb0
.extern ?PlayPreIntroVideo@@YAXXZ
.extern ?PlayLogoScreens@@YAXXZ
.extern ?start_system@@YAHXZ
.extern ?free_system@@YAXXZ
.extern _jmp_addr_0x0066b9c0
.extern @Reset__7GScriptFi@12
.extern ?LoadTextScripts@GSetup@@QAEHXZ
.extern _jmp_addr_0x0073e560
.extern _jmp_addr_0x007760a0
.extern _jmp_addr_0x0078e9b0
.extern _atexit
.extern __unlink
.extern _fprintf
.extern _fopen
.extern _fclose
.extern _tolower
.extern _strrchr
.extern __controlfp
.extern _jmp_addr_0x007dbed0
.extern _jmp_addr_0x007dedd0
.extern _jmp_addr_0x007dee00
.extern _jmp_addr_0x007f4300
.extern _Report3D__FPCce
.extern _jmp_addr_0x008a04f0

.globl _jmp_addr_0x00641510
.globl _stop_draw_sprite_to_screen__Fv
.globl _IsACmdLineString__FPcPCc
.globl _ScanParameters__Fv@0
.globl _pc_main__Fv

.globl _globl_ct_0x00641840
.globl _globl_ct_0x00641870
.globl _globl_ct_0x00641890

start_0x00641510_0x00641fe0:
// Snippet: asm, [0x00641510, 0x00641fc6)
_jmp_addr_0x00641510:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00641510    8b442404
                         push              esi                                           // 0x00641514    56
                         mov.s             esi, ecx                                      // 0x00641515    8bf1
                         {disp32} mov      ecx, dword ptr [esi + 0x00000250]             // 0x00641517    8b8e50020000
                         push              eax                                           // 0x0064151d    50
                         push              ecx                                           // 0x0064151e    51
                         mov.s             ecx, esi                                      // 0x0064151f    8bce
                         call              @InsertString__9SetupListFiPw@16              // 0x00641521    e84a99dcff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000250]             // 0x00641526    8b8e50020000
                         {disp8} lea       eax, dword ptr [ecx + -0x01]                  // 0x0064152c    8d41ff
                         test              eax, eax                                      // 0x0064152f    85c0
                         {disp8} jl        _jmp_addr_0x00641568                          // 0x00641531    7c35
                         cmp.s             eax, ecx                                      // 0x00641533    3bc1
                         {disp8} jge       _jmp_addr_0x00641568                          // 0x00641535    7d31
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x00641537    8b54240c
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x0064153b    8b4c2410
                         and               edx, 0x000000ff                               // 0x0064153f    81e2ff000000
                         and               ecx, 0x000000ff                               // 0x00641545    81e1ff000000
                         shl               edx, 8                                        // 0x0064154b    c1e208
                         add.s             edx, ecx                                      // 0x0064154e    03d1
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x00641550    8b4c2414
                         and               ecx, 0x000000ff                               // 0x00641554    81e1ff000000
                         shl               edx, 8                                        // 0x0064155a    c1e208
                         add.s             edx, ecx                                      // 0x0064155d    03d1
                         {disp32} mov      ecx, dword ptr [esi + 0x00000268]             // 0x0064155f    8b8e68020000
                         mov               dword ptr [ecx + eax * 0x4], edx              // 0x00641565    891481
_jmp_addr_0x00641568:    pop               esi                                           // 0x00641568    5e
                         ret               0x0010                                        // 0x00641569    c21000
                         nop                                                             // 0x0064156c    90
                         nop                                                             // 0x0064156d    90
                         nop                                                             // 0x0064156e    90
                         nop                                                             // 0x0064156f    90
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00641570    8b4c2404
                         mov.s             eax, ecx                                      // 0x00641574    8bc1
                         sub               esp, 0x00000120                               // 0x00641576    81ec20010000
                         sub               eax, 0x11                                     // 0x0064157c    83e811
                         {disp32} je       _jmp_addr_0x00641815                          // 0x0064157f    0f8490020000
                         sub               eax, 0x10                                     // 0x00641585    83e810
                         {disp8} je        _jmp_addr_0x006415d8                          // 0x00641588    744e
                         sub               eax, 0x02                                     // 0x0064158a    83e802
                         {disp8} je        _jmp_addr_0x006415aa                          // 0x0064158d    741b
                         {disp32} mov      eax, dword ptr [esp + 0x00000128]             // 0x0064158f    8b842428010000
                         push              eax                                           // 0x00641596    50
                         push              ecx                                           // 0x00641597    51
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641598    8b0d5c19d000
                         call              _jmp_addr_0x00640cb0                          // 0x0064159e    e80df7ffff
                         add               esp, 0x00000120                               // 0x006415a3    81c420010000
                         ret                                                             // 0x006415a9    c3
_jmp_addr_0x006415aa:    push              0x0                                           // 0x006415aa    6a00
                         push              0x00bfe7dc                                    // 0x006415ac    68dce7bf00
                         call              _jmp_addr_0x0063ed40                          // 0x006415b1    e88ad7ffff
                         push              0x1                                           // 0x006415b6    6a01
                         push              0x00bfe7c8                                    // 0x006415b8    68c8e7bf00
                         call              _jmp_addr_0x0063ed40                          // 0x006415bd    e87ed7ffff
                         push              0x2                                           // 0x006415c2    6a02
                         push              0x00bfe7ac                                    // 0x006415c4    68ace7bf00
                         call              _jmp_addr_0x0063ed40                          // 0x006415c9    e872d7ffff
                         add               esp, 0x18                                     // 0x006415ce    83c418
                         add               esp, 0x00000120                               // 0x006415d1    81c420010000
                         ret                                                             // 0x006415d7    c3
_jmp_addr_0x006415d8:    push              0x0                                           // 0x006415d8    6a00
                         push              0x00bfe788                                    // 0x006415da    6888e7bf00
                         call              _jmp_addr_0x0063ed40                          // 0x006415df    e85cd7ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x006415e4    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250090]             // 0x006415ea    8b8990002500
                         add               esp, 0x08                                     // 0x006415f0    83c408
                         push              0x1                                           // 0x006415f3    6a01
                         call              @Reset__7GScriptFi@12                         // 0x006415f5    e8d69c0a00
                         {disp32} mov      edx, dword ptr [data_bytes + 0x2380c8]        // 0x006415fa    8b15c8e0bf00
                         cmp               byte ptr [edx], 0x00                          // 0x00641600    803a00
                         {disp32} je       _jmp_addr_0x00641839                          // 0x00641603    0f8430020000
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x00641609    8d44241c
                         sub               eax, 0x04                                     // 0x0064160d    83e804
                         {disp8} mov       dword ptr [esp + 0x0c], eax                   // 0x00641610    8944240c
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x00641614    8d44241c
                         sub               eax, 0x03                                     // 0x00641618    83e803
                         {disp8} mov       dword ptr [esp + 0x18], eax                   // 0x0064161b    89442418
                         push              ebx                                           // 0x0064161f    53
                         {disp8} lea       eax, dword ptr [esp + 0x20]                   // 0x00641620    8d442420
                         sub               eax, 0x02                                     // 0x00641624    83e802
                         push              ebp                                           // 0x00641627    55
                         {disp8} mov       dword ptr [esp + 0x18], eax                   // 0x00641628    89442418
                         {disp8} lea       eax, dword ptr [esp + 0x24]                   // 0x0064162c    8d442424
                         mov               ebp, 0x00bfe0c8                               // 0x00641630    bdc8e0bf00
                         push              esi                                           // 0x00641635    56
                         dec               eax                                           // 0x00641636    48
                         mov.s             ebx, ebp                                      // 0x00641637    8bdd
                         push              edi                                           // 0x00641639    57
                         {disp8} mov       dword ptr [esp + 0x24], eax                   // 0x0064163a    89442424
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000002            // 0x0064163e    c744241402000000
                         {disp8} mov       dword ptr [esp + 0x18], ebx                   // 0x00641646    895c2418
_jmp_addr_0x0064164a:    {disp8} mov       edx, dword ptr [ebp + 0x00]                   // 0x0064164a    8b5500
                         or                ecx, 0xffffffff                               // 0x0064164d    83c9ff
                         xor.s             eax, eax                                      // 0x00641650    33c0
                         mov.s             edi, edx                                      // 0x00641652    8bfa
                         repne scasb                                                     // 0x00641654    f2ae
                         not               ecx                                           // 0x00641656    f7d1
                         sub.s             edi, ecx                                      // 0x00641658    2bf9
                         mov.s             eax, ecx                                      // 0x0064165a    8bc1
                         {disp8} lea       esi, dword ptr [esp + 0x2c]                   // 0x0064165c    8d74242c
                         {disp8} mov       dword ptr [esp + 0x10], esi                   // 0x00641660    89742410
                         shr               ecx, 2                                        // 0x00641664    c1e902
                         mov.s             esi, edi                                      // 0x00641667    8bf7
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x00641669    8b7c2410
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x0064166d    f3a5
                         mov.s             ecx, eax                                      // 0x0064166f    8bc8
                         and               ecx, 0x03                                     // 0x00641671    83e103
                         push              0x5c                                          // 0x00641674    6a5c
                         push              edx                                           // 0x00641676    52
                         rep movsb                                                       // 0x00641677    f3a4
                         call              _strrchr                                      // 0x00641679    e872851800
                         add               esp, 0x08                                     // 0x0064167e    83c408
                         test              eax, eax                                      // 0x00641681    85c0
                         {disp8} jne       _jmp_addr_0x00641694                          // 0x00641683    750f
                         mov               ecx, dword ptr [ebx]                          // 0x00641685    8b0b
                         push              0x2f                                          // 0x00641687    6a2f
                         push              ecx                                           // 0x00641689    51
                         mov.s             ebp, ebx                                      // 0x0064168a    8beb
                         call              _strrchr                                      // 0x0064168c    e85f851800
                         add               esp, 0x08                                     // 0x00641691    83c408
_jmp_addr_0x00641694:    {disp8} mov       edx, dword ptr [ebp + 0x00]                   // 0x00641694    8b5500
                         or                ecx, 0xffffffff                               // 0x00641697    83c9ff
                         sub.s             eax, edx                                      // 0x0064169a    2bc2
                         {disp8} mov       byte ptr [esp + eax * 0x1 + 0x2c], 0x00       // 0x0064169c    c644042c00
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x006416a1    89442410
                         xor.s             eax, eax                                      // 0x006416a5    33c0
                         mov               edi, 0x00bfe774                               // 0x006416a7    bf74e7bf00
                         repne scasb                                                     // 0x006416ac    f2ae
                         not               ecx                                           // 0x006416ae    f7d1
                         sub.s             edi, ecx                                      // 0x006416b0    2bf9
                         mov.s             esi, edi                                      // 0x006416b2    8bf7
                         {disp8} lea       ebx, dword ptr [esp + 0x2c]                   // 0x006416b4    8d5c242c
                         mov.s             edi, ebx                                      // 0x006416b8    8bfb
                         mov.s             ebx, ecx                                      // 0x006416ba    8bd9
                         or                ecx, 0xffffffff                               // 0x006416bc    83c9ff
                         repne scasb                                                     // 0x006416bf    f2ae
                         dec               edi                                           // 0x006416c1    4f
                         {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x006416c2    8b442410
                         mov.s             ecx, ebx                                      // 0x006416c6    8bcb
                         shr               ecx, 2                                        // 0x006416c8    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x006416cb    f3a5
                         mov.s             ecx, ebx                                      // 0x006416cd    8bcb
                         and               ecx, 0x03                                     // 0x006416cf    83e103
                         rep movsb                                                       // 0x006416d2    f3a4
                         or                ecx, 0xffffffff                               // 0x006416d4    83c9ff
                         {disp8} lea       edi, dword ptr [edx + eax * 0x1 + 0x01]       // 0x006416d7    8d7c0201
                         xor.s             eax, eax                                      // 0x006416db    33c0
                         repne scasb                                                     // 0x006416dd    f2ae
                         not               ecx                                           // 0x006416df    f7d1
                         sub.s             edi, ecx                                      // 0x006416e1    2bf9
                         mov.s             ebx, ecx                                      // 0x006416e3    8bd9
                         or                ecx, 0xffffffff                               // 0x006416e5    83c9ff
                         mov.s             esi, edi                                      // 0x006416e8    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x2c]                   // 0x006416ea    8d54242c
                         mov.s             edi, edx                                      // 0x006416ee    8bfa
                         repne scasb                                                     // 0x006416f0    f2ae
                         dec               edi                                           // 0x006416f2    4f
                         mov.s             ecx, ebx                                      // 0x006416f3    8bcb
                         shr               ecx, 2                                        // 0x006416f5    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x006416f8    f3a5
                         {disp8} mov       edx, dword ptr [esp + 0x28]                   // 0x006416fa    8b542428
                         mov.s             ecx, ebx                                      // 0x006416fe    8bcb
                         and               ecx, 0x03                                     // 0x00641700    83e103
                         rep movsb                                                       // 0x00641703    f3a4
                         or                ecx, 0xffffffff                               // 0x00641705    83c9ff
                         {disp8} lea       edi, dword ptr [esp + 0x2c]                   // 0x00641708    8d7c242c
                         repne scasb                                                     // 0x0064170c    f2ae
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x0064170e    8b44241c
                         not               ecx                                           // 0x00641712    f7d1
                         dec               ecx                                           // 0x00641714    49
                         mov               byte ptr [eax + ecx * 0x1], 0x2e              // 0x00641715    c604082e
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x00641719    8b442420
                         mov               byte ptr [edx + ecx * 0x1], 0x66              // 0x0064171d    c6040a66
                         {disp8} mov       edx, dword ptr [esp + 0x24]                   // 0x00641721    8b542424
                         mov               byte ptr [eax + ecx * 0x1], 0x6f              // 0x00641725    c604086f
                         {disp8} lea       eax, dword ptr [esp + 0x2c]                   // 0x00641729    8d44242c
                         push              eax                                           // 0x0064172d    50
                         mov               byte ptr [edx + ecx * 0x1], 0x74              // 0x0064172e    c6040a74
                         call              __unlink                                      // 0x00641732    e8f2541800
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                   // 0x00641737    8b4c2418
                         {disp8} mov       edx, dword ptr [ebp + 0x00]                   // 0x0064173b    8b5500
                         push              ecx                                           // 0x0064173e    51
                         push              edx                                           // 0x0064173f    52
                         call              _jmp_addr_0x0063ed40                          // 0x00641740    e8fbd5ffff
                         {disp8} mov       eax, dword ptr [ebp + 0x00]                   // 0x00641745    8b4500
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641748    8b0d5c19d000
                         add               esp, 0x0c                                     // 0x0064174e    83c40c
                         push              eax                                           // 0x00641751    50
                         call              ?StartPlaygroundGame@GGame@@QAEXPAD@Z         // 0x00641752    e8e917f1ff
                         push              0x47c34f80                                    // 0x00641757    68804fc347
                         mov               ecx, 0x00c5e258                               // 0x0064175c    b958e2c500
                         call              @GetNearestTown__9MapCoordsCFf@12             // 0x00641761    e87a09fcff
                         test              eax, eax                                      // 0x00641766    85c0
                         {disp8} je        _jmp_addr_0x0064177c                          // 0x00641768    7412
                         push              0x41100000                                    // 0x0064176a    6800001041
                         push              0x00c5e258                                    // 0x0064176f    6858e2c500
                         call              _jmp_addr_0x0073e560                          // 0x00641774    e8e7cd0f00
                         add               esp, 0x08                                     // 0x00641779    83c408
_jmp_addr_0x0064177c:    {disp32} mov      ecx, dword ptr [_game]                        // 0x0064177c    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x00641782    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x00641784    8a81595a2000
                         inc               eax                                           // 0x0064178a    40
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0064178b    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0064178e    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x00641791    8d0450
                         shl               eax, 5                                        // 0x00641794    c1e005
                         mov               eax, dword ptr [eax + ecx * 0x1]              // 0x00641797    8b0408
                         test              eax, eax                                      // 0x0064179a    85c0
                         {disp8} je        _jmp_addr_0x006417b4                          // 0x0064179c    7416
                         {disp8} mov       eax, dword ptr [eax + 0x30]                   // 0x0064179e    8b4030
                         test              eax, eax                                      // 0x006417a1    85c0
                         {disp8} je        _jmp_addr_0x006417b4                          // 0x006417a3    740f
                         mov               edx, dword ptr [eax]                          // 0x006417a5    8b10
                         push              0x3f800000                                    // 0x006417a7    680000803f
                         mov.s             ecx, eax                                      // 0x006417ac    8bc8
                         call              dword ptr [edx + 0x900]                       // 0x006417ae    ff9200090000
_jmp_addr_0x006417b4:    call              _jmp_addr_0x00538900                          // 0x006417b4    e84771efff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x006417b9    a15c19d000
                         {disp32} mov      esi, dword ptr [eax + 0x00205c84]             // 0x006417be    8bb0845c2000
                         test              esi, esi                                      // 0x006417c4    85f6
                         {disp8} je        _jmp_addr_0x006417dc                          // 0x006417c6    7414
_jmp_addr_0x006417c8:    {disp8} mov       ecx, dword ptr [esi + 0x04]                   // 0x006417c8    8b4e04
                         push              0xa                                           // 0x006417cb    6a0a
                         push              ecx                                           // 0x006417cd    51
                         call              _jmp_addr_0x005356f0                          // 0x006417ce    e81d3fefff
                         mov               esi, dword ptr [esi]                          // 0x006417d3    8b36
                         add               esp, 0x08                                     // 0x006417d5    83c408
                         test              esi, esi                                      // 0x006417d8    85f6
                         {disp8} jne       _jmp_addr_0x006417c8                          // 0x006417da    75ec
_jmp_addr_0x006417dc:    push              0x00cd035c /* _CHAR_ARRAY_00cd035c */         // 0x006417dc    685c03cd00
                         call              _jmp_addr_0x00536670                          // 0x006417e1    e88a4eefff
                         {disp8} mov       edx, dword ptr [esp + 0x18]                   // 0x006417e6    8b542418
                         {disp8} mov       ebx, dword ptr [esp + 0x1c]                   // 0x006417ea    8b5c241c
                         add               esp, 0x04                                     // 0x006417ee    83c404
                         inc               edx                                           // 0x006417f1    42
                         add               ebx, 0x04                                     // 0x006417f2    83c304
                         {disp8} mov       dword ptr [esp + 0x14], edx                   // 0x006417f5    89542414
                         mov               edx, dword ptr [ebx]                          // 0x006417f9    8b13
                         cmp               byte ptr [edx], 0x00                          // 0x006417fb    803a00
                         {disp8} mov       dword ptr [esp + 0x18], ebx                   // 0x006417fe    895c2418
                         mov.s             ebp, ebx                                      // 0x00641802    8beb
                         {disp32} jne      _jmp_addr_0x0064164a                          // 0x00641804    0f8540feffff
                         pop               edi                                           // 0x0064180a    5f
                         pop               esi                                           // 0x0064180b    5e
                         pop               ebp                                           // 0x0064180c    5d
                         pop               ebx                                           // 0x0064180d    5b
                         add               esp, 0x00000120                               // 0x0064180e    81c420010000
                         ret                                                             // 0x00641814    c3
_jmp_addr_0x00641815:    {disp32} mov      ecx, dword ptr [_game]                        // 0x00641815    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0064181b    33c0
                         {disp32} mov      ax, word ptr [rdata_bytes + 0xf861c]          // 0x0064181d    66a11c169a00
                         or                ax, word ptr [0x9a1620]                       // 0x00641823    660b0520169a00
                         or                ax, word ptr [0x9a161e]                       // 0x0064182a    660b051e169a00
                         push              eax                                           // 0x00641831    50
                         push              0x57                                          // 0x00641832    6a57
                         call              _jmp_addr_0x00640cb0                          // 0x00641834    e877f4ffff
_jmp_addr_0x00641839:    add               esp, 0x00000120                               // 0x00641839    81c420010000
                         ret                                                             // 0x0064183f    c3
_globl_ct_0x00641840:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x00641840    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x00641846    b001
                         test              al, cl                                        // 0x00641848    84c8
                         {disp8} jne       _jmp_addr_0x00641854                          // 0x0064184a    7508
                         or.s              cl, al                                        // 0x0064184c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0064184e    880d34c9fa00
_jmp_addr_0x00641854:    {disp32} jmp      _jmp_addr_0x00641860                          // 0x00641854    e907000000
                         nop                                                             // 0x00641859    90
                         nop                                                             // 0x0064185a    90
                         nop                                                             // 0x0064185b    90
                         nop                                                             // 0x0064185c    90
                         nop                                                             // 0x0064185d    90
                         nop                                                             // 0x0064185e    90
                         nop                                                             // 0x0064185f    90
_jmp_addr_0x00641860:    push              0x00407870                                    // 0x00641860    6870784000
                         call              _atexit                                       // 0x00641865    e8273f1800
                         pop               ecx                                           // 0x0064186a    59
                         ret                                                             // 0x0064186b    c3
                         nop                                                             // 0x0064186c    90
                         nop                                                             // 0x0064186d    90
                         nop                                                             // 0x0064186e    90
                         nop                                                             // 0x0064186f    90
_globl_ct_0x00641870:    {disp32} jmp      _jmp_addr_0x00641880                          // 0x00641870    e90b000000
                         nop                                                             // 0x00641875    90
                         nop                                                             // 0x00641876    90
                         nop                                                             // 0x00641877    90
                         nop                                                             // 0x00641878    90
                         nop                                                             // 0x00641879    90
                         nop                                                             // 0x0064187a    90
                         nop                                                             // 0x0064187b    90
                         nop                                                             // 0x0064187c    90
                         nop                                                             // 0x0064187d    90
                         nop                                                             // 0x0064187e    90
                         nop                                                             // 0x0064187f    90
_jmp_addr_0x00641880:    {disp32} mov      dword ptr [data_bytes + 0x380ab0], 0xffffffff // 0x00641880    c705b06ad400ffffffff
                         ret                                                             // 0x0064188a    c3
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0064188b    e869ffdbff
_globl_ct_0x00641890:    {disp32} jmp      _jmp_addr_0x006418a0                          // 0x00641890    e90b000000
                         nop                                                             // 0x00641895    90
                         nop                                                             // 0x00641896    90
                         nop                                                             // 0x00641897    90
                         nop                                                             // 0x00641898    90
                         nop                                                             // 0x00641899    90
                         nop                                                             // 0x0064189a    90
                         nop                                                             // 0x0064189b    90
                         nop                                                             // 0x0064189c    90
                         nop                                                             // 0x0064189d    90
                         nop                                                             // 0x0064189e    90
                         nop                                                             // 0x0064189f    90
_jmp_addr_0x006418a0:    {disp32} fld      dword ptr [rdata_bytes + 0x88c30]             // 0x006418a0    d905301c9300
                         {disp32} fmul     dword ptr [rdata_bytes + 0x88c2c]             // 0x006418a6    d80d2c1c9300
                         {disp32} fstp     dword ptr [data_bytes + 0x380aac]             // 0x006418ac    d91dac6ad400
                         ret                                                             // 0x006418b2    c3
                         nop                                                             // 0x006418b3    90
                         nop                                                             // 0x006418b4    90
                         nop                                                             // 0x006418b5    90
                         nop                                                             // 0x006418b6    90
                         nop                                                             // 0x006418b7    90
                         nop                                                             // 0x006418b8    90
                         nop                                                             // 0x006418b9    90
                         nop                                                             // 0x006418ba    90
                         nop                                                             // 0x006418bb    90
                         nop                                                             // 0x006418bc    90
                         nop                                                             // 0x006418bd    90
                         nop                                                             // 0x006418be    90
                         nop                                                             // 0x006418bf    90
                         push              0x0                                           // 0x006418c0    6a00
                         push              0x0                                           // 0x006418c2    6a00
                         call              __controlfp                                   // 0x006418c4    e8aa831800
                         add               esp, 0x08                                     // 0x006418c9    83c408
                         and               eax, 0x0000ff00                               // 0x006418cc    2500ff0000
                         ret                                                             // 0x006418d1    c3
                         nop                                                             // 0x006418d2    90
                         nop                                                             // 0x006418d3    90
                         nop                                                             // 0x006418d4    90
                         nop                                                             // 0x006418d5    90
                         nop                                                             // 0x006418d6    90
                         nop                                                             // 0x006418d7    90
                         nop                                                             // 0x006418d8    90
                         nop                                                             // 0x006418d9    90
                         nop                                                             // 0x006418da    90
                         nop                                                             // 0x006418db    90
                         nop                                                             // 0x006418dc    90
                         nop                                                             // 0x006418dd    90
                         nop                                                             // 0x006418de    90
                         nop                                                             // 0x006418df    90
_jmp_addr_0x006418e0:    ret                                                             // 0x006418e0    c3
                         nop                                                             // 0x006418e1    90
                         nop                                                             // 0x006418e2    90
                         nop                                                             // 0x006418e3    90
                         nop                                                             // 0x006418e4    90
                         nop                                                             // 0x006418e5    90
                         nop                                                             // 0x006418e6    90
                         nop                                                             // 0x006418e7    90
                         nop                                                             // 0x006418e8    90
                         nop                                                             // 0x006418e9    90
                         nop                                                             // 0x006418ea    90
                         nop                                                             // 0x006418eb    90
                         nop                                                             // 0x006418ec    90
                         nop                                                             // 0x006418ed    90
                         nop                                                             // 0x006418ee    90
                         nop                                                             // 0x006418ef    90
                         sub               esp, 0x00000210                               // 0x006418f0    81ec10020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x238a30]        // 0x006418f6    a130eabf00
                         push              ebx                                           // 0x006418fb    53
                         push              esi                                           // 0x006418fc    56
                         push              edi                                           // 0x006418fd    57
                         push              0x1                                           // 0x006418fe    6a01
                         mov               bl, 0x64                                      // 0x00641900    b364
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x00641902    89442410
                         call              dword ptr [__imp__SetErrorMode@4]             // 0x00641906    ff15a0918a00
                         {disp32} mov      edi, dword ptr [rdata_bytes + 0x1a4]          // 0x0064190c    8b3da4918a00
_jmp_addr_0x00641912:    push              0x00000100                                    // 0x00641912    6800010000
                         {disp32} lea      ecx, dword ptr [esp + 0x00000120]             // 0x00641917    8d8c2420010000
                         push              ecx                                           // 0x0064191e    51
                         {disp8} lea       edx, dword ptr [esp + 0x20]                   // 0x0064191f    8d542420
                         push              edx                                           // 0x00641923    52
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x00641924    8d44241c
                         push              eax                                           // 0x00641928    50
                         {disp8} lea       ecx, dword ptr [esp + 0x24]                   // 0x00641929    8d4c2424
                         push              ecx                                           // 0x0064192d    51
                         push              0x00000100                                    // 0x0064192e    6800010000
                         {disp8} lea       edx, dword ptr [esp + 0x34]                   // 0x00641933    8d542434
                         push              edx                                           // 0x00641937    52
                         {disp8} lea       eax, dword ptr [esp + 0x28]                   // 0x00641938    8d442428
                         push              eax                                           // 0x0064193c    50
                         {disp8} mov       byte ptr [esp + 0x2c], bl                     // 0x0064193d    885c242c
                         call              edi                                           // 0x00641941    ffd7
                         inc               bl                                            // 0x00641943    fec3
                         mov               esi, 0x00bfea2c                               // 0x00641945    be2ceabf00
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x0064194a    8d44241c
_jmp_addr_0x0064194e:    mov               dl, byte ptr [eax]                            // 0x0064194e    8a10
                         mov.s             cl, dl                                        // 0x00641950    8aca
                         cmp               dl, byte ptr [esi]                            // 0x00641952    3a16
                         {disp8} jne       _jmp_addr_0x00641972                          // 0x00641954    751c
                         test              cl, cl                                        // 0x00641956    84c9
                         {disp8} je        _jmp_addr_0x0064196e                          // 0x00641958    7414
                         {disp8} mov       dl, byte ptr [eax + 0x01]                     // 0x0064195a    8a5001
                         mov.s             cl, dl                                        // 0x0064195d    8aca
                         cmp               dl, byte ptr [esi + 0x01]                     // 0x0064195f    3a5601
                         {disp8} jne       _jmp_addr_0x00641972                          // 0x00641962    750e
                         add               eax, 0x02                                     // 0x00641964    83c002
                         add               esi, 0x02                                     // 0x00641967    83c602
                         test              cl, cl                                        // 0x0064196a    84c9
                         {disp8} jne       _jmp_addr_0x0064194e                          // 0x0064196c    75e0
_jmp_addr_0x0064196e:    xor.s             eax, eax                                      // 0x0064196e    33c0
                         {disp8} jmp       _jmp_addr_0x00641977                          // 0x00641970    eb05
_jmp_addr_0x00641972:    sbb.s             eax, eax                                      // 0x00641972    1bc0
                         sbb               eax, -0x01                                    // 0x00641974    83d8ff
_jmp_addr_0x00641977:    test              eax, eax                                      // 0x00641977    85c0
                         {disp8} jne       _jmp_addr_0x006419b4                          // 0x00641979    7539
                         mov               esi, 0x00bfea24                               // 0x0064197b    be24eabf00
                         {disp32} lea      eax, dword ptr [esp + 0x0000011c]             // 0x00641980    8d84241c010000
_jmp_addr_0x00641987:    mov               dl, byte ptr [eax]                            // 0x00641987    8a10
                         mov.s             cl, dl                                        // 0x00641989    8aca
                         cmp               dl, byte ptr [esi]                            // 0x0064198b    3a16
                         {disp8} jne       _jmp_addr_0x006419ab                          // 0x0064198d    751c
                         test              cl, cl                                        // 0x0064198f    84c9
                         {disp8} je        _jmp_addr_0x006419a7                          // 0x00641991    7414
                         {disp8} mov       dl, byte ptr [eax + 0x01]                     // 0x00641993    8a5001
                         mov.s             cl, dl                                        // 0x00641996    8aca
                         cmp               dl, byte ptr [esi + 0x01]                     // 0x00641998    3a5601
                         {disp8} jne       _jmp_addr_0x006419ab                          // 0x0064199b    750e
                         add               eax, 0x02                                     // 0x0064199d    83c002
                         add               esi, 0x02                                     // 0x006419a0    83c602
                         test              cl, cl                                        // 0x006419a3    84c9
                         {disp8} jne       _jmp_addr_0x00641987                          // 0x006419a5    75e0
_jmp_addr_0x006419a7:    xor.s             eax, eax                                      // 0x006419a7    33c0
                         {disp8} jmp       _jmp_addr_0x006419b0                          // 0x006419a9    eb05
_jmp_addr_0x006419ab:    sbb.s             eax, eax                                      // 0x006419ab    1bc0
                         sbb               eax, -0x01                                    // 0x006419ad    83d8ff
_jmp_addr_0x006419b0:    test              eax, eax                                      // 0x006419b0    85c0
                         {disp8} je        _jmp_addr_0x006419be                          // 0x006419b2    740a
_jmp_addr_0x006419b4:    cmp               bl, 0x7a                                      // 0x006419b4    80fb7a
                         {disp8} je        _jmp_addr_0x006419dc                          // 0x006419b7    7423
                         {disp32} jmp      _jmp_addr_0x00641912                          // 0x006419b9    e954ffffff
_jmp_addr_0x006419be:    pop               edi                                           // 0x006419be    5f
                         dec               bl                                            // 0x006419bf    fecb
                         pop               esi                                           // 0x006419c1    5e
                         {disp32} mov      byte ptr [data_bytes + 0x2659e8], bl          // 0x006419c2    881de8b9c200
                         {disp32} mov      byte ptr [data_bytes + 0x380ab8], 0x01        // 0x006419c8    c605b86ad40001
                         mov               eax, 0x00000001                               // 0x006419cf    b801000000
                         pop               ebx                                           // 0x006419d4    5b
                         add               esp, 0x00000210                               // 0x006419d5    81c410020000
                         ret                                                             // 0x006419db    c3
_jmp_addr_0x006419dc:    pop               edi                                           // 0x006419dc    5f
                         pop               esi                                           // 0x006419dd    5e
                         xor.s             eax, eax                                      // 0x006419de    33c0
                         pop               ebx                                           // 0x006419e0    5b
                         add               esp, 0x00000210                               // 0x006419e1    81c410020000
                         ret                                                             // 0x006419e7    c3
                         nop                                                             // 0x006419e8    90
                         nop                                                             // 0x006419e9    90
                         nop                                                             // 0x006419ea    90
                         nop                                                             // 0x006419eb    90
                         nop                                                             // 0x006419ec    90
                         nop                                                             // 0x006419ed    90
                         nop                                                             // 0x006419ee    90
                         nop                                                             // 0x006419ef    90
_stop_draw_sprite_to_screen__Fv:    call              _jmp_addr_0x005f3d90                          // 0x006419f0    e89b23fbff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x238804]        // 0x006419f5    a104e8bf00
                         test              eax, eax                                      // 0x006419fa    85c0
                         {disp8} jne       _jmp_addr_0x00641a04                          // 0x006419fc    7506
                         jmp               dword ptr [data_bytes + 0x23880c]             // 0x006419fe    ff250ce8bf00
_jmp_addr_0x00641a04:    ret                                                             // 0x00641a04    c3
                         nop                                                             // 0x00641a05    90
                         nop                                                             // 0x00641a06    90
                         nop                                                             // 0x00641a07    90
                         nop                                                             // 0x00641a08    90
                         nop                                                             // 0x00641a09    90
                         nop                                                             // 0x00641a0a    90
                         nop                                                             // 0x00641a0b    90
                         nop                                                             // 0x00641a0c    90
                         nop                                                             // 0x00641a0d    90
                         nop                                                             // 0x00641a0e    90
                         nop                                                             // 0x00641a0f    90
_IsACmdLineString__FPcPCc:    {disp8} mov       edx, dword ptr [esp + 0x08]                   // 0x00641a10    8b542408
                         push              ebx                                           // 0x00641a14    53
                         {disp8} mov       ebx, dword ptr [esp + 0x08]                   // 0x00641a15    8b5c2408
                         or                ecx, 0xffffffff                               // 0x00641a19    83c9ff
                         push              ebp                                           // 0x00641a1c    55
                         push              esi                                           // 0x00641a1d    56
                         push              edi                                           // 0x00641a1e    57
                         xor.s             eax, eax                                      // 0x00641a1f    33c0
                         mov.s             edi, ebx                                      // 0x00641a21    8bfb
                         repne scasb                                                     // 0x00641a23    f2ae
                         not               ecx                                           // 0x00641a25    f7d1
                         dec               ecx                                           // 0x00641a27    49
                         mov.s             esi, ecx                                      // 0x00641a28    8bf1
                         or                ecx, 0xffffffff                               // 0x00641a2a    83c9ff
                         mov.s             edi, edx                                      // 0x00641a2d    8bfa
                         repne scasb                                                     // 0x00641a2f    f2ae
                         not               ecx                                           // 0x00641a31    f7d1
                         dec               ecx                                           // 0x00641a33    49
                         cmp.s             esi, ecx                                      // 0x00641a34    3bf1
                         {disp8} jae       _jmp_addr_0x00641a3f                          // 0x00641a36    7307
_jmp_addr_0x00641a38:    pop               edi                                           // 0x00641a38    5f
                         pop               esi                                           // 0x00641a39    5e
                         pop               ebp                                           // 0x00641a3a    5d
                         xor.s             al, al                                        // 0x00641a3b    32c0
                         pop               ebx                                           // 0x00641a3d    5b
                         ret                                                             // 0x00641a3e    c3
_jmp_addr_0x00641a3f:    or                ecx, 0xffffffff                               // 0x00641a3f    83c9ff
                         xor.s             eax, eax                                      // 0x00641a42    33c0
                         mov.s             edi, edx                                      // 0x00641a44    8bfa
                         repne scasb                                                     // 0x00641a46    f2ae
                         not               ecx                                           // 0x00641a48    f7d1
                         dec               ecx                                           // 0x00641a4a    49
                         mov.s             edi, ecx                                      // 0x00641a4b    8bf9
                         xor.s             esi, esi                                      // 0x00641a4d    33f6
                         test              edi, edi                                      // 0x00641a4f    85ff
                         {disp8} jle       _jmp_addr_0x00641a7b                          // 0x00641a51    7e28
                         {disp8} jmp       _jmp_addr_0x00641a59                          // 0x00641a53    eb04
_jmp_addr_0x00641a55:    {disp8} mov       edx, dword ptr [esp + 0x18]                   // 0x00641a55    8b542418
_jmp_addr_0x00641a59:    movsx             eax, byte ptr [esi + edx * 0x1]               // 0x00641a59    0fbe0416
                         push              eax                                           // 0x00641a5d    50
                         call              _tolower                                      // 0x00641a5e    e8857b1800
                         movsx             ecx, byte ptr [ebx]                           // 0x00641a63    0fbe0b
                         push              ecx                                           // 0x00641a66    51
                         mov.s             ebp, eax                                      // 0x00641a67    8be8
                         call              _tolower                                      // 0x00641a69    e87a7b1800
                         add               esp, 0x08                                     // 0x00641a6e    83c408
                         cmp.s             eax, ebp                                      // 0x00641a71    3bc5
                         {disp8} jne       _jmp_addr_0x00641a38                          // 0x00641a73    75c3
                         inc               ebx                                           // 0x00641a75    43
                         inc               esi                                           // 0x00641a76    46
                         cmp.s             esi, edi                                      // 0x00641a77    3bf7
                         {disp8} jl        _jmp_addr_0x00641a55                          // 0x00641a79    7cda
_jmp_addr_0x00641a7b:    {disp32} mov      eax, dword ptr [data_bytes + 0x23888c]        // 0x00641a7b    a18ce8bf00
                         test              eax, eax                                      // 0x00641a80    85c0
                         {disp8} jne       _jmp_addr_0x00641a8a                          // 0x00641a82    7506
                         call              dword ptr [data_bytes + 0x238894]             // 0x00641a84    ff1594e8bf00
_jmp_addr_0x00641a8a:    pop               edi                                           // 0x00641a8a    5f
                         pop               esi                                           // 0x00641a8b    5e
                         pop               ebp                                           // 0x00641a8c    5d
                         mov               al, 0x01                                      // 0x00641a8d    b001
                         pop               ebx                                           // 0x00641a8f    5b
                         ret                                                             // 0x00641a90    c3
                         nop                                                             // 0x00641a91    90
                         nop                                                             // 0x00641a92    90
                         nop                                                             // 0x00641a93    90
                         nop                                                             // 0x00641a94    90
                         nop                                                             // 0x00641a95    90
                         nop                                                             // 0x00641a96    90
                         nop                                                             // 0x00641a97    90
                         nop                                                             // 0x00641a98    90
                         nop                                                             // 0x00641a99    90
                         nop                                                             // 0x00641a9a    90
                         nop                                                             // 0x00641a9b    90
                         nop                                                             // 0x00641a9c    90
                         nop                                                             // 0x00641a9d    90
                         nop                                                             // 0x00641a9e    90
                         nop                                                             // 0x00641a9f    90
_ScanParameters__Fv@0:   push              ebx                                           // 0x00641aa0    53
                         push              esi                                           // 0x00641aa1    56
                         push              edi                                           // 0x00641aa2    57
                         call              dword ptr [__imp__GetCommandLineA@0]          // 0x00641aa3    ff1548918a00
                         mov.s             esi, eax                                      // 0x00641aa9    8bf0
                         mov               al, byte ptr [esi]                            // 0x00641aab    8a06
                         test              al, al                                        // 0x00641aad    84c0
                         {disp32} je       _jmp_addr_0x00641c42                          // 0x00641aaf    0f848d010000
                         mov               bl, 0x01                                      // 0x00641ab5    b301
_jmp_addr_0x00641ab7:    cmp               al, 0x2d                                      // 0x00641ab7    3c2d
                         {disp8} je        _jmp_addr_0x00641ac3                          // 0x00641ab9    7408
                         cmp               al, 0x2f                                      // 0x00641abb    3c2f
                         {disp32} jne      _jmp_addr_0x00641c36                          // 0x00641abd    0f8573010000
_jmp_addr_0x00641ac3:    inc               esi                                           // 0x00641ac3    46
                         {disp32} je       _jmp_addr_0x00641c51                          // 0x00641ac4    0f8487010000
                         push              0x00931c34                                    // 0x00641aca    68341c9300
                         push              esi                                           // 0x00641acf    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641ad0    e83bffffff
                         add               esp, 0x08                                     // 0x00641ad5    83c408
                         test              al, al                                        // 0x00641ad8    84c0
                         {disp8} je        _jmp_addr_0x00641aeb                          // 0x00641ada    740f
                         {disp32} mov      al, byte ptr [_ARGS_MULTIPLAYER]              // 0x00641adc    a0ba6ad400
                         test              al, al                                        // 0x00641ae1    84c0
                         {disp8} jne       _jmp_addr_0x00641aeb                          // 0x00641ae3    7506
                         {disp32} mov      byte ptr [_ARGS_NEWGAME], bl                  // 0x00641ae5    881db96ad400
_jmp_addr_0x00641aeb:    push              0x00931c3c                                    // 0x00641aeb    683c1c9300
                         push              esi                                           // 0x00641af0    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641af1    e81affffff
                         add               esp, 0x08                                     // 0x00641af6    83c408
                         test              al, al                                        // 0x00641af9    84c0
                         {disp8} je        _jmp_addr_0x00641b0c                          // 0x00641afb    740f
                         {disp32} mov      al, byte ptr [_ARGS_NEWGAME]                  // 0x00641afd    a0b96ad400
                         test              al, al                                        // 0x00641b02    84c0
                         {disp8} jne       _jmp_addr_0x00641b0c                          // 0x00641b04    7506
                         {disp32} mov      byte ptr [_ARGS_MULTIPLAYER], bl              // 0x00641b06    881dba6ad400
_jmp_addr_0x00641b0c:    push              0x00931c48                                    // 0x00641b0c    68481c9300
                         push              esi                                           // 0x00641b11    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641b12    e8f9feffff
                         add               esp, 0x08                                     // 0x00641b17    83c408
                         test              al, al                                        // 0x00641b1a    84c0
                         {disp8} je        _jmp_addr_0x00641b24                          // 0x00641b1c    7406
                         {disp32} mov      byte ptr [_ARGS_LAND], bl                     // 0x00641b1e    881dbb6ad400
_jmp_addr_0x00641b24:    push              0x00931c50                                    // 0x00641b24    68501c9300
                         push              esi                                           // 0x00641b29    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641b2a    e8e1feffff
                         add               esp, 0x08                                     // 0x00641b2f    83c408
                         test              al, al                                        // 0x00641b32    84c0
                         {disp8} je        _jmp_addr_0x00641b3c                          // 0x00641b34    7406
                         {disp32} mov      byte ptr [_ARGS_SKIRMISH], bl                 // 0x00641b36    881dbc6ad400
_jmp_addr_0x00641b3c:    push              0x00931c5c                                    // 0x00641b3c    685c1c9300
                         push              esi                                           // 0x00641b41    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641b42    e8c9feffff
                         add               esp, 0x08                                     // 0x00641b47    83c408
                         test              al, al                                        // 0x00641b4a    84c0
                         {disp8} je        _jmp_addr_0x00641b54                          // 0x00641b4c    7406
                         {disp32} mov      byte ptr [_ARGS_PREINTROVIDEO], bl            // 0x00641b4e    881dbd6ad400
_jmp_addr_0x00641b54:    push              0x00931c6c                                    // 0x00641b54    686c1c9300
                         push              esi                                           // 0x00641b59    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641b5a    e8b1feffff
                         add               esp, 0x08                                     // 0x00641b5f    83c408
                         test              al, al                                        // 0x00641b62    84c0
                         {disp8} je        _jmp_addr_0x00641b6c                          // 0x00641b64    7406
                         {disp32} mov      byte ptr [_ARGS_FORCEINETCONN], bl            // 0x00641b66    881dbe6ad400
_jmp_addr_0x00641b6c:    push              0x00931c7c                                    // 0x00641b6c    687c1c9300
                         push              esi                                           // 0x00641b71    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641b72    e899feffff
                         add               esp, 0x08                                     // 0x00641b77    83c408
                         test              al, al                                        // 0x00641b7a    84c0
                         {disp8} je        _jmp_addr_0x00641b84                          // 0x00641b7c    7406
                         {disp32} mov      byte ptr [_ARGS_NOINETCONN], bl               // 0x00641b7e    881dbf6ad400
_jmp_addr_0x00641b84:    push              0x00931c88                                    // 0x00641b84    68881c9300
                         push              esi                                           // 0x00641b89    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641b8a    e881feffff
                         add               esp, 0x08                                     // 0x00641b8f    83c408
                         test              al, al                                        // 0x00641b92    84c0
                         {disp8} je        _jmp_addr_0x00641b9c                          // 0x00641b94    7406
                         {disp32} mov      byte ptr [_ARGS_EDITOR], bl                   // 0x00641b96    881dc06ad400
_jmp_addr_0x00641b9c:    push              0x00931c90                                    // 0x00641b9c    68901c9300
                         push              esi                                           // 0x00641ba1    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641ba2    e869feffff
                         add               esp, 0x08                                     // 0x00641ba7    83c408
                         test              al, al                                        // 0x00641baa    84c0
                         {disp8} je        _jmp_addr_0x00641bb4                          // 0x00641bac    7406
                         {disp32} mov      byte ptr [_ARGS_CONVERT], bl                  // 0x00641bae    881dc16ad400
_jmp_addr_0x00641bb4:    push              0x00931c98                                    // 0x00641bb4    68981c9300
                         push              esi                                           // 0x00641bb9    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641bba    e851feffff
                         add               esp, 0x08                                     // 0x00641bbf    83c408
                         test              al, al                                        // 0x00641bc2    84c0
                         {disp8} je        _jmp_addr_0x00641bcc                          // 0x00641bc4    7406
                         {disp32} mov      byte ptr [_ARGS_VERSION], bl                  // 0x00641bc6    881dc26ad400
_jmp_addr_0x00641bcc:    push              0x00931ca0                                    // 0x00641bcc    68a01c9300
                         push              esi                                           // 0x00641bd1    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641bd2    e839feffff
                         add               esp, 0x08                                     // 0x00641bd7    83c408
                         test              al, al                                        // 0x00641bda    84c0
                         {disp8} je        _jmp_addr_0x00641be4                          // 0x00641bdc    7406
                         {disp32} mov      byte ptr [_ARGS_NOLOADMUSIC], bl              // 0x00641bde    881dc36ad400
_jmp_addr_0x00641be4:    push              0x00931cac                                    // 0x00641be4    68ac1c9300
                         push              esi                                           // 0x00641be9    56
                         call              _IsACmdLineString__FPcPCc                     // 0x00641bea    e821feffff
                         add               esp, 0x08                                     // 0x00641bef    83c408
                         test              al, al                                        // 0x00641bf2    84c0
                         {disp8} je        _jmp_addr_0x00641c36                          // 0x00641bf4    7440
                         xor.s             eax, eax                                      // 0x00641bf6    33c0
                         mov               ecx, 0x00000041                               // 0x00641bf8    b941000000
                         mov               edi, OFFSET _ARGS_SETTINGS_PATH               // 0x00641bfd    bf7c92d900
                         rep stosd                                                       // 0x00641c02    f3ab
                         or                ecx, 0xffffffff                               // 0x00641c04    83c9ff
                         mov               edi, 0x00931cac                               // 0x00641c07    bfac1c9300
                         repne scasb                                                     // 0x00641c0c    f2ae
                         not               ecx                                           // 0x00641c0e    f7d1
                         dec               ecx                                           // 0x00641c10    49
                         mov               al, byte ptr [ecx + esi * 0x1]                // 0x00641c11    8a0431
                         add.s             ecx, esi                                      // 0x00641c14    03ce
                         test              al, al                                        // 0x00641c16    84c0
                         {disp8} je        _jmp_addr_0x00641c30                          // 0x00641c18    7416
                         mov               edx, OFFSET _ARGS_SETTINGS_PATH               // 0x00641c1a    ba7c92d900
                         sub.s             edx, ecx                                      // 0x00641c1f    2bd1
_jmp_addr_0x00641c21:    cmp               al, 0x20                                      // 0x00641c21    3c20
                         {disp8} je        _jmp_addr_0x00641c30                          // 0x00641c23    740b
                         mov               byte ptr [edx + ecx * 0x1], al                // 0x00641c25    88040a
                         {disp8} mov       al, byte ptr [ecx + 0x01]                     // 0x00641c28    8a4101
                         inc               ecx                                           // 0x00641c2b    41
                         test              al, al                                        // 0x00641c2c    84c0
                         {disp8} jne       _jmp_addr_0x00641c21                          // 0x00641c2e    75f1
_jmp_addr_0x00641c30:    {disp32} mov      byte ptr [_ARGS_SETTINGS], bl                 // 0x00641c30    881dc46ad400
_jmp_addr_0x00641c36:    {disp8} mov       al, byte ptr [esi + 0x01]                     // 0x00641c36    8a4601
                         inc               esi                                           // 0x00641c39    46
                         test              al, al                                        // 0x00641c3a    84c0
                         {disp32} jne      _jmp_addr_0x00641ab7                          // 0x00641c3c    0f8575feffff
_jmp_addr_0x00641c42:    {disp32} mov      eax, dword ptr [data_bytes + 0x238914]        // 0x00641c42    a114e9bf00
                         test              eax, eax                                      // 0x00641c47    85c0
                         {disp8} jne       _jmp_addr_0x00641c51                          // 0x00641c49    7506
                         call              dword ptr [data_bytes + 0x23891c]             // 0x00641c4b    ff151ce9bf00
_jmp_addr_0x00641c51:    pop               edi                                           // 0x00641c51    5f
                         pop               esi                                           // 0x00641c52    5e
                         pop               ebx                                           // 0x00641c53    5b
                         ret                                                             // 0x00641c54    c3
                         nop                                                             // 0x00641c55    90
                         nop                                                             // 0x00641c56    90
                         nop                                                             // 0x00641c57    90
                         nop                                                             // 0x00641c58    90
                         nop                                                             // 0x00641c59    90
                         nop                                                             // 0x00641c5a    90
                         nop                                                             // 0x00641c5b    90
                         nop                                                             // 0x00641c5c    90
                         nop                                                             // 0x00641c5d    90
                         nop                                                             // 0x00641c5e    90
                         nop                                                             // 0x00641c5f    90
_pc_main__Fv:            push              ebp                                           // 0x00641c60    55
                         mov.s             ebp, esp                                      // 0x00641c61    8bec
                         sub               esp, 0x08                                     // 0x00641c63    83ec08
                         push              ebx                                           // 0x00641c66    53
                         push              esi                                           // 0x00641c67    56
                         wait                                                            // 0x00641c68    9b
                         wait                                                            // 0x00641c69    9b
                         fninit                                                          // 0x00641c6a    dbe3
                         wait                                                            // 0x00641c6c    9b
                         push              0xc                                           // 0x00641c6d    6a0c
                         call              _jmp_addr_0x007dedd0                          // 0x00641c6f    e85cd11900
                         push              0x00bfeaa8                                    // 0x00641c74    68a8eabf00
                         call              _jmp_addr_0x007760a0                          // 0x00641c79    e822441300
                         add               esp, 0x08                                     // 0x00641c7e    83c408
                         call              _jmp_addr_0x0054d610                          // 0x00641c81    e88ab9f0ff
                         call              _ScanParameters__Fv@0                         // 0x00641c86    e815feffff
                         {disp32} mov      al, byte ptr [_ARGS_VERSION]                  // 0x00641c8b    a0c26ad400
                         xor.s             ebx, ebx                                      // 0x00641c90    33db
                         cmp.s             al, bl                                        // 0x00641c92    3ac3
                         {disp8} je        _jmp_addr_0x00641cd0                          // 0x00641c94    743a
                         push              0x00bfea9c                                    // 0x00641c96    689ceabf00
                         call              __unlink                                      // 0x00641c9b    e8894f1800
                         push              0x009cd0bc                                    // 0x00641ca0    68bcd09c00
                         push              0x00bfea9c                                    // 0x00641ca5    689ceabf00
                         call              _fopen                                        // 0x00641caa    e86e511800
                         mov.s             esi, eax                                      // 0x00641caf    8bf0
                         {disp32} mov      eax, dword ptr [rdata_bytes + 0x3d4]          // 0x00641cb1    a1d4938a00
                         mov               ecx, dword ptr [eax]                          // 0x00641cb6    8b08
                         add               esp, 0x0c                                     // 0x00641cb8    83c40c
                         push              ecx                                           // 0x00641cbb    51
                         push              0x00bfea98                                    // 0x00641cbc    6898eabf00
                         push              esi                                           // 0x00641cc1    56
                         call              _fprintf                                      // 0x00641cc2    e8e9501800
                         push              esi                                           // 0x00641cc7    56
                         call              _fclose                                       // 0x00641cc8    e863511800
                         add               esp, 0x10                                     // 0x00641ccd    83c410
_jmp_addr_0x00641cd0:    {disp8} lea       edx, dword ptr [ebp + -0x08]                  // 0x00641cd0    8d55f8
                         push              edx                                           // 0x00641cd3    52
                         {disp8} lea       eax, dword ptr [ebp + -0x04]                  // 0x00641cd4    8d45fc
                         push              eax                                           // 0x00641cd7    50
                         call              _jmp_addr_0x008a04f0                          // 0x00641cd8    e813e82500
                         cmp               dword ptr [ebp + -0x04], 0x00040007           // 0x00641cdd    817dfc07000400
                         {disp8} jae       _jmp_addr_0x00641d10                          // 0x00641ce4    732a
                         call              _jmp_addr_0x007dbed0                          // 0x00641ce6    e8e5a11900
                         push              0x00001000                                    // 0x00641ceb    6800100000
                         push              0x00bfea90                                    // 0x00641cf0    6890eabf00
                         push              0x00bfea58                                    // 0x00641cf5    6858eabf00
                         push              ebx                                           // 0x00641cfa    53
                         call              dword ptr [__imp__MessageBoxA@16]             // 0x00641cfb    ff15b8978a00
                         push              ebx                                           // 0x00641d01    53
                         call              dword ptr [__imp__PostQuitMessage@4]          // 0x00641d02    ff15bc978a00
                         pop               esi                                           // 0x00641d08    5e
                         xor.s             eax, eax                                      // 0x00641d09    33c0
                         pop               ebx                                           // 0x00641d0b    5b
                         mov.s             esp, ebp                                      // 0x00641d0c    8be5
                         pop               ebp                                           // 0x00641d0e    5d
                         ret                                                             // 0x00641d0f    c3
_jmp_addr_0x00641d10:    call              ?start_system@@YAHXZ                          // 0x00641d10    e86b100000
                         test              eax, eax                                      // 0x00641d15    85c0
                         {disp32} jne      _jmp_addr_0x00641fb9                          // 0x00641d17    0f859c020000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4bf078]        // 0x00641d1d    8b0d7850e800
                         push              0x00bfea48                                    // 0x00641d23    6848eabf00
                         push              ecx                                           // 0x00641d28    51
                         call              dword ptr [__imp__SetWindowTextA@4]           // 0x00641d29    ff15c0978a00
                         call              _jmp_addr_0x006418e0                          // 0x00641d2f    e8acfbffff
                         call              _jmp_addr_0x0054d610                          // 0x00641d34    e8d7b8f0ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf078]        // 0x00641d39    a17850e800
                         {disp32} mov      edx, dword ptr [_DAT_00e83a20]                // 0x00641d3e    8b15203ae800
                         push              eax                                           // 0x00641d44    50
                         {disp32} mov      dword ptr [data_bytes + 0x380ab4], edx        // 0x00641d45    8915b46ad400
                         {disp32} mov      dword ptr [data_bytes + 0x2387f8], OFFSET _DAT_00e83a20 // 0x00641d4b    c705f8e7bf00203ae800
                         call              _jmp_addr_0x007f4300                          // 0x00641d55    e8a6251b00
                         add               esp, 0x04                                     // 0x00641d5a    83c404
                         call              ?PlayLogoScreens@@YAXXZ                       // 0x00641d5d    e8ee0b0000
                         call              _jmp_addr_0x007dee00                          // 0x00641d62    e899d01900
                         push              0x00bfea34                                    // 0x00641d67    6834eabf00
                         call              _Report3D__FPCce                              // 0x00641d6c    e85f9e1d00
                         add               esp, 0x04                                     // 0x00641d71    83c404
                         mov               ecx, OFFSET _global                           // 0x00641d74    b9203bcd00
                         call              _jmp_addr_0x00590fd0                          // 0x00641d79    e852f2f4ff
                         call              _jmp_addr_0x007dee00                          // 0x00641d7e    e87dd01900
                         cmp               byte ptr [_ARGS_PREINTROVIDEO], bl            // 0x00641d83    381dbd6ad400
                         {disp8} jne       _jmp_addr_0x00641d94                          // 0x00641d89    7509
                         call              _jmp_addr_0x0066b9c0                          // 0x00641d8b    e8309c0200
                         test              eax, eax                                      // 0x00641d90    85c0
                         {disp8} jne       _jmp_addr_0x00641d99                          // 0x00641d92    7505
_jmp_addr_0x00641d94:    call              ?PlayPreIntroVideo@@YAXXZ                     // 0x00641d94    e857090000
_jmp_addr_0x00641d99:    push              edi                                           // 0x00641d99    57
                         call              ?LoadTextScripts@GSetup@@QAEHXZ               // 0x00641d9a    e8e1740d00
                         call              ?StartTipOfTheDayText@@YAXXZ                  // 0x00641d9f    e8ec2efbff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641da4    8b0d5c19d000
                         call              ?InitOneTimeOnly@GGame@@QAEIXZ                // 0x00641daa    e891d1f0ff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641daf    8b0d5c19d000
                         add               ecx, 0x00250310                               // 0x00641db5    81c110032500
                         call              _jmp_addr_0x0078e9b0                          // 0x00641dbb    e8f0cb1400
                         call              ?Init@FrontEnd@@SAXXZ                         // 0x00641dc0    e80b97efff
                         cmp               byte ptr [_ARGS_NEWGAME], bl                  // 0x00641dc5    381db96ad400
                         mov               edi, 0x00000003                               // 0x00641dcb    bf03000000
                         {disp8} je        _jmp_addr_0x00641de5                          // 0x00641dd0    7413
                         {disp32} mov      edx, dword ptr [_game]                        // 0x00641dd2    8b155c19d000
                         mov               esi, 0x00000001                               // 0x00641dd8    be01000000
                         {disp32} mov      dword ptr [edx + 0x0025017c], esi             // 0x00641ddd    89b27c012500
                         {disp8} jmp       _jmp_addr_0x00641e17                          // 0x00641de3    eb32
_jmp_addr_0x00641de5:    cmp               byte ptr [_ARGS_SKIRMISH], bl                 // 0x00641de5    381dbc6ad400
                         {disp8} je        _jmp_addr_0x00641dfe                          // 0x00641deb    7411
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00641ded    a15c19d000
                         {disp32} mov      dword ptr [eax + 0x0025017c], 0x00000004      // 0x00641df2    c7807c01250004000000
                         {disp8} jmp       _jmp_addr_0x00641e12                          // 0x00641dfc    eb14
_jmp_addr_0x00641dfe:    cmp               byte ptr [_ARGS_MULTIPLAYER], bl              // 0x00641dfe    381dba6ad400
                         {disp8} je        _jmp_addr_0x00641e12                          // 0x00641e04    740c
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641e06    8b0d5c19d000
                         {disp32} mov      dword ptr [ecx + 0x0025017c], edi             // 0x00641e0c    89b97c012500
_jmp_addr_0x00641e12:    mov               esi, 0x00000001                               // 0x00641e12    be01000000
_jmp_addr_0x00641e17:    {disp32} mov      edx, dword ptr [_game]                        // 0x00641e17    8b155c19d000
                         cmp               dword ptr [edx + 0x00250180], 0x06            // 0x00641e1d    83ba8001250006
                         {disp32} je       _jmp_addr_0x00641fa8                          // 0x00641e24    0f847e010000
_jmp_addr_0x00641e2a:    {disp32} mov      byte ptr [data_bytes + 0x33b984], bl          // 0x00641e2a    881d8419d000
                         call              _jmp_addr_0x0066b9c0                          // 0x00641e30    e88b9b0200
                         test              eax, eax                                      // 0x00641e35    85c0
                         {disp8} jne       _jmp_addr_0x00641e50                          // 0x00641e37    7517
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00641e39    a15c19d000
                         {disp32} mov      dword ptr [eax + 0x0025017c], esi             // 0x00641e3e    89b07c012500
                         call              ?JustDoNewProfileBox@FrontEnd@@QAEXXZ         // 0x00641e44    e827b0efff
                         {disp32} mov      byte ptr [data_bytes + 0x33b984], 0x01        // 0x00641e49    c6058419d00001
_jmp_addr_0x00641e50:    {disp32} mov      ecx, dword ptr [_game]                        // 0x00641e50    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x0025017c], 0x04            // 0x00641e56    83b97c01250004
                         {disp8} jne       _jmp_addr_0x00641e64                          // 0x00641e5d    7505
                         call              ?JustDoSkirmishGameBox@FrontEnd@@QAEXXZ       // 0x00641e5f    e81c31f0ff
_jmp_addr_0x00641e64:    {disp32} mov      eax, dword ptr [_game]                        // 0x00641e64    a15c19d000
                         cmp               dword ptr [eax + 0x0025017c], edi             // 0x00641e69    39b87c012500
                         {disp8} je        _jmp_addr_0x00641e79                          // 0x00641e6f    7408
                         cmp               dword ptr [eax + 0x00250180], edi             // 0x00641e71    39b880012500
                         {disp8} jne       _jmp_addr_0x00641eb2                          // 0x00641e77    7539
_jmp_addr_0x00641e79:    call              dword ptr [rdata_bytes + 0x3ec]               // 0x00641e79    ff15ec938a00
                         {disp32} mov      edx, dword ptr [rdata_bytes + 0x3e8]          // 0x00641e7f    8b15e8938a00
                         cmp               dword ptr [edx], ebx                          // 0x00641e85    391a
                         {disp8} je        _jmp_addr_0x00641ea7                          // 0x00641e87    741e
                         call              ?DoCitadelMultiplayer@@YAXXZ                  // 0x00641e89    e8a236f1ff
                         mov               ecx, 0x00c599fc                               // 0x00641e8e    b9fc99c500
                         {disp32} mov      byte ptr [data_bytes + 0x380ac5], 0x01        // 0x00641e93    c605c56ad40001
                         call              _jmp_addr_0x0043dff0                          // 0x00641e9a    e851c1dfff
                         {disp32} mov      byte ptr [data_bytes + 0x380ac5], bl          // 0x00641e9f    881dc56ad400
                         {disp8} jmp       _jmp_addr_0x00641eb2                          // 0x00641ea5    eb0b
_jmp_addr_0x00641ea7:    {disp32} mov      eax, dword ptr [_game]                        // 0x00641ea7    a15c19d000
                         {disp32} mov      dword ptr [eax + 0x0025017c], ebx             // 0x00641eac    89987c012500
_jmp_addr_0x00641eb2:    cmp               byte ptr [data_bytes + 0x30a6dd], bl          // 0x00641eb2    381ddd06cd00
                         {disp8} je        _jmp_addr_0x00641ec8                          // 0x00641eb8    740e
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641eba    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x0025017c], esi             // 0x00641ec0    39b17c012500
                         {disp8} jne       _jmp_addr_0x00641ed3                          // 0x00641ec6    750b
_jmp_addr_0x00641ec8:    push              ebx                                           // 0x00641ec8    53
                         mov               ecx, 0x00d204a8                               // 0x00641ec9    b9a804d200
                         call              _jmp_addr_0x005ebaf0                          // 0x00641ece    e81d9cfaff
_jmp_addr_0x00641ed3:    {disp32} mov      al, byte ptr [data_bytes + 0x30a6dd]          // 0x00641ed3    a0dd06cd00
                         xor.s             edx, edx                                      // 0x00641ed8    33d2
                         cmp.s             al, bl                                        // 0x00641eda    3ac3
                         {disp32} mov      eax, dword ptr [data_bytes + 0x380ab4]        // 0x00641edc    a1b46ad400
                         setne             dl                                            // 0x00641ee1    0f95c2
                         dec               edx                                           // 0x00641ee4    4a
                         and.s             edx, eax                                      // 0x00641ee5    23d0
                         {disp32} mov      eax, dword ptr [data_bytes + 0x2387f8]        // 0x00641ee7    a1f8e7bf00
                         mov               dword ptr [eax], edx                          // 0x00641eec    8910
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641eee    8b0d5c19d000
                         call              ?StartGame@GGame@@QAEIXZ                        // 0x00641ef4    e897a2f0ff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641ef9    8b0d5c19d000
                         call              _jmp_addr_0x0054ec80                          // 0x00641eff    e87ccdf0ff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00641f04    a15c19d000
                         cmp               dword ptr [eax + 0x00250180], edi             // 0x00641f09    39b880012500
                         {disp8} jne       _jmp_addr_0x00641f39                          // 0x00641f0f    7528
                         call              _jmp_addr_0x00564160                          // 0x00641f11    e84a22f2ff
                         test              eax, eax                                      // 0x00641f16    85c0
                         {disp8} je        _jmp_addr_0x00641f28                          // 0x00641f18    740e
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641f1a    8b0d5c19d000
                         {disp32} mov      dword ptr [ecx + 0x0025017c], ebx             // 0x00641f20    89997c012500
                         {disp8} jmp       _jmp_addr_0x00641f34                          // 0x00641f26    eb0c
_jmp_addr_0x00641f28:    {disp32} mov      edx, dword ptr [_game]                        // 0x00641f28    8b155c19d000
                         {disp32} mov      dword ptr [edx + 0x0025017c], esi             // 0x00641f2e    89b27c012500
_jmp_addr_0x00641f34:    {disp32} mov      eax, dword ptr [_game]                        // 0x00641f34    a15c19d000
_jmp_addr_0x00641f39:    {disp32} mov      ecx, dword ptr [eax + 0x00250180]             // 0x00641f39    8b8880012500
                         dec               ecx                                           // 0x00641f3f    49
                         cmp               ecx, 0x05                                     // 0x00641f40    83f905
                         {disp8} ja        _jmp_addr_0x00641f7c                          // 0x00641f43    7737
                         jmp               dword ptr [ecx*4 + 0x641fc8]                  // 0x00641f45    ff248dc81f6400
                         {disp32} mov      dword ptr [eax + 0x0025017c], esi             // 0x00641f4c    89b07c012500
                         {disp8} jmp       _jmp_addr_0x00641f86                          // 0x00641f52    eb32
                         {disp32} mov      dword ptr [eax + 0x0025017c], ebx             // 0x00641f54    89987c012500
                         {disp8} jmp       _jmp_addr_0x00641f86                          // 0x00641f5a    eb2a
                         {disp32} mov      dword ptr [eax + 0x0025017c], edi             // 0x00641f5c    89b87c012500
                         {disp8} jmp       _jmp_addr_0x00641f86                          // 0x00641f62    eb22
                         {disp32} mov      dword ptr [eax + 0x0025017c], 0x00000002      // 0x00641f64    c7807c01250002000000
                         {disp8} jmp       _jmp_addr_0x00641f86                          // 0x00641f6e    eb16
                         {disp32} mov      dword ptr [eax + 0x0025017c], 0x00000004      // 0x00641f70    c7807c01250004000000
                         {disp8} jmp       _jmp_addr_0x00641f86                          // 0x00641f7a    eb0a
_jmp_addr_0x00641f7c:    {disp32} mov      dword ptr [eax + 0x00250180], 0x00000006      // 0x00641f7c    c7808001250006000000
_jmp_addr_0x00641f86:    mov               ecx, 0x00d204a8                               // 0x00641f86    b9a804d200
                         {disp32} mov      byte ptr [data_bytes + 0x30a6dd], bl          // 0x00641f8b    881ddd06cd00
                         call              _jmp_addr_0x005ea980                          // 0x00641f91    e8ea89faff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00641f96    a15c19d000
                         cmp               dword ptr [eax + 0x00250180], 0x06            // 0x00641f9b    83b88001250006
                         {disp32} jne      _jmp_addr_0x00641e2a                          // 0x00641fa2    0f8582feffff
_jmp_addr_0x00641fa8:    call              _jmp_addr_0x0053c480                          // 0x00641fa8    e8d3a4efff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00641fad    8b0d5c19d000
                         call              _jmp_addr_0x0054eb40                          // 0x00641fb3    e888cbf0ff
                         pop               edi                                           // 0x00641fb8    5f
_jmp_addr_0x00641fb9:    call              ?free_system@@YAXXZ                           // 0x00641fb9    e862140000
                         pop               esi                                           // 0x00641fbe    5e
                         xor.s             eax, eax                                      // 0x00641fbf    33c0
                         pop               ebx                                           // 0x00641fc1    5b
                         mov.s             esp, ebp                                      // 0x00641fc2    8be5
                         pop               ebp                                           // 0x00641fc4    5d
                         ret                                                             // 0x00641fc5    c3

// Snippet: db, [0x00641fc6, 0x00641fc8)
.byte 0x8b, 0xff                  // 0x00641fc6

// Snippet: jmptbl, [0x00641fc8, 0x00641fe0)
.byte 0x4c, 0x1f, 0x64, 0x00      // 0x00641fc8
.byte 0x54, 0x1f, 0x64, 0x00      // 0x00641fcc
.byte 0x5c, 0x1f, 0x64, 0x00      // 0x00641fd0
.byte 0x64, 0x1f, 0x64, 0x00      // 0x00641fd4
.byte 0x70, 0x1f, 0x64, 0x00      // 0x00641fd8
.byte 0x86, 0x1f, 0x64, 0x00      // 0x00641fdc
