.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _malloc
.extern _free
.extern __strdup
.extern _jmp_addr_0x00887e70

.globl _jmp_addr_0x00891120

start_0x00891120_0x00891ca0:
// Snippet: asm, [0x00891120, 0x00891c30)
_jmp_addr_0x00891120:    sub              esp, 0x18                               // 0x00891120    83ec18
                         push             ebx                                     // 0x00891123    53
                         push             ebp                                     // 0x00891124    55
                         push             esi                                     // 0x00891125    56
                         {disp8} mov      esi, dword ptr [esp + 0x44]             // 0x00891126    8b742444
                         push             edi                                     // 0x0089112a    57
                         mov              ecx, 0x00000006                         // 0x0089112b    b906000000
                         xor.s            eax, eax                                // 0x00891130    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x10]             // 0x00891132    8d7c2410
                         rep stosd                                                // 0x00891136    f3ab
                         {disp8} mov      eax, dword ptr [esp + 0x30]             // 0x00891138    8b442430
                         {disp8} mov      ecx, dword ptr [esp + 0x34]             // 0x0089113c    8b4c2434
                         push             esi                                     // 0x00891140    56
                         {disp8} mov      dword ptr [esp + 0x14], eax             // 0x00891141    89442414
                         {disp8} mov      dword ptr [esp + 0x18], ecx             // 0x00891145    894c2418
                         call             _malloc                                 // 0x00891149    e8fe54f3ff
                         add              esp, 0x04                               // 0x0089114e    83c404
                         {disp8} mov      dword ptr [esp + 0x18], eax             // 0x00891151    89442418
                         test             eax, eax                                // 0x00891155    85c0
                         {disp32} je      _jmp_addr_0x00891bb1                    // 0x00891157    0f84540a0000
                         {disp8} mov      ebx, dword ptr [esp + 0x38]             // 0x0089115d    8b5c2438
                         mov.s            ecx, esi                                // 0x00891161    8bce
                         mov.s            edx, ecx                                // 0x00891163    8bd1
                         mov.s            esi, ebx                                // 0x00891165    8bf3
                         mov.s            edi, eax                                // 0x00891167    8bf8
                         {disp8} mov      eax, dword ptr [esp + 0x3c]             // 0x00891169    8b44243c
                         shr              ecx, 2                                  // 0x0089116d    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]            // 0x00891170    f3a5
                         mov.s            ecx, edx                                // 0x00891172    8bca
                         and              ecx, 0x03                               // 0x00891174    83e103
                         rep movsb                                                // 0x00891177    f3a4
                         {disp8} mov      esi, dword ptr [esp + 0x44]             // 0x00891179    8b742444
                         {disp8} mov      ecx, dword ptr [esp + 0x40]             // 0x0089117d    8b4c2440
                         test             esi, esi                                // 0x00891181    85f6
                         {disp8} mov      dword ptr [esp + 0x1c], eax             // 0x00891183    8944241c
                         {disp8} mov      dword ptr [esp + 0x20], ecx             // 0x00891187    894c2420
                         {disp8} jne      _jmp_addr_0x00891193                    // 0x0089118b    7506
                         {disp8} mov      dword ptr [esp + 0x24], esi             // 0x0089118d    89742424
                         {disp8} jmp      _jmp_addr_0x008911dc                    // 0x00891191    eb49
_jmp_addr_0x00891193:    mov.s            edi, esi                                // 0x00891193    8bfe
                         or               ecx, 0xffffffff                         // 0x00891195    83c9ff
                         xor.s            eax, eax                                // 0x00891198    33c0
                         repne scasb                                              // 0x0089119a    f2ae
                         not              ecx                                     // 0x0089119c    f7d1
                         dec              ecx                                     // 0x0089119e    49
                         mov.s            ebp, ecx                                // 0x0089119f    8be9
                         inc              ebp                                     // 0x008911a1    45
                         push             ebp                                     // 0x008911a2    55
                         call             _malloc                                 // 0x008911a3    e8a454f3ff
                         add              esp, 0x04                               // 0x008911a8    83c404
                         {disp8} mov      dword ptr [esp + 0x24], eax             // 0x008911ab    89442424
                         test             eax, eax                                // 0x008911af    85c0
                         {disp8} jne      _jmp_addr_0x008911ca                    // 0x008911b1    7517
                         {disp8} mov      edx, dword ptr [esp + 0x18]             // 0x008911b3    8b542418
                         push             edx                                     // 0x008911b7    52
                         call             _free                                   // 0x008911b8    e8c955f3ff
                         add              esp, 0x04                               // 0x008911bd    83c404
                         xor.s            eax, eax                                // 0x008911c0    33c0
                         pop              edi                                     // 0x008911c2    5f
                         pop              esi                                     // 0x008911c3    5e
                         pop              ebp                                     // 0x008911c4    5d
                         pop              ebx                                     // 0x008911c5    5b
                         add              esp, 0x18                               // 0x008911c6    83c418
                         ret                                                      // 0x008911c9    c3
_jmp_addr_0x008911ca:    mov.s            ecx, ebp                                // 0x008911ca    8bcd
                         mov.s            edi, eax                                // 0x008911cc    8bf8
                         mov.s            eax, ecx                                // 0x008911ce    8bc1
                         shr              ecx, 2                                  // 0x008911d0    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]            // 0x008911d3    f3a5
                         mov.s            ecx, eax                                // 0x008911d5    8bc8
                         and              ecx, 0x03                               // 0x008911d7    83e103
                         rep movsb                                                // 0x008911da    f3a4
_jmp_addr_0x008911dc:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x008911dc    8b442410
                         cmp              eax, 0x1b                               // 0x008911e0    83f81b
                         {disp32} ja      _jmp_addr_0x00891c0b                    // 0x008911e3    0f87220a0000
                         jmp              dword ptr [eax*4 + 0x891c30]            // 0x008911e9    ff2485301c8900
                         mov              ebx, dword ptr [ebx]                    // 0x008911f0    8b1b
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x008911f2    8b742418
                         test             ebx, ebx                                // 0x008911f6    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x008911f8    0f840d0a0000
                         push             ebx                                     // 0x008911fe    53
                         call             __strdup                                // 0x008911ff    e8d89af4ff
                         add              esp, 0x04                               // 0x00891204    83c404
                         mov              dword ptr [esi], eax                    // 0x00891207    8906
                         test             eax, eax                                // 0x00891209    85c0
                         {disp32} jne     _jmp_addr_0x00891c0b                    // 0x0089120b    0f85fa090000
                         push             esi                                     // 0x00891211    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x00891212    e988090000
                         mov              ebx, dword ptr [ebx]                    // 0x00891217    8b1b
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x00891219    8b742418
                         test             ebx, ebx                                // 0x0089121d    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x0089121f    0f84e6090000
                         push             ebx                                     // 0x00891225    53
                         call             __strdup                                // 0x00891226    e8b19af4ff
                         add              esp, 0x04                               // 0x0089122b    83c404
                         mov              dword ptr [esi], eax                    // 0x0089122e    8906
_jmp_addr_0x00891230:    test             eax, eax                                // 0x00891230    85c0
                         {disp32} jne     _jmp_addr_0x00891c0b                    // 0x00891232    0f85d3090000
_jmp_addr_0x00891238:    push             esi                                     // 0x00891238    56
_jmp_addr_0x00891239:    call             _free                                   // 0x00891239    e84855f3ff
                         {disp8} mov      edx, dword ptr [esp + 0x28]             // 0x0089123e    8b542428
                         push             edx                                     // 0x00891242    52
                         call             _free                                   // 0x00891243    e83e55f3ff
                         add              esp, 0x08                               // 0x00891248    83c408
                         xor.s            eax, eax                                // 0x0089124b    33c0
                         pop              edi                                     // 0x0089124d    5f
                         pop              esi                                     // 0x0089124e    5e
                         pop              ebp                                     // 0x0089124f    5d
                         pop              ebx                                     // 0x00891250    5b
                         add              esp, 0x18                               // 0x00891251    83c418
                         ret                                                      // 0x00891254    c3
                         mov              eax, dword ptr [ebx]                    // 0x00891255    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x00891257    8b742418
                         test             eax, eax                                // 0x0089125b    85c0
                         {disp32} je      _jmp_addr_0x00891acc                    // 0x0089125d    0f8469080000
                         push             eax                                     // 0x00891263    50
                         call             __strdup                                // 0x00891264    e8739af4ff
                         add              esp, 0x04                               // 0x00891269    83c404
                         mov              dword ptr [esi], eax                    // 0x0089126c    8906
                         test             eax, eax                                // 0x0089126e    85c0
                         {disp32} jne     _jmp_addr_0x00891acc                    // 0x00891270    0f8556080000
                         push             esi                                     // 0x00891276    56
                         call             _free                                   // 0x00891277    e80a55f3ff
                         {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x0089127c    8b442428
                         push             eax                                     // 0x00891280    50
                         call             _free                                   // 0x00891281    e80055f3ff
                         add              esp, 0x08                               // 0x00891286    83c408
                         xor.s            eax, eax                                // 0x00891289    33c0
                         pop              edi                                     // 0x0089128b    5f
                         pop              esi                                     // 0x0089128c    5e
                         pop              ebp                                     // 0x0089128d    5d
                         pop              ebx                                     // 0x0089128e    5b
                         add              esp, 0x18                               // 0x0089128f    83c418
                         ret                                                      // 0x00891292    c3
                         mov              eax, dword ptr [ebx]                    // 0x00891293    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x00891295    8b742418
                         test             eax, eax                                // 0x00891299    85c0
                         {disp32} je      _jmp_addr_0x00891693                    // 0x0089129b    0f84f2030000
                         push             eax                                     // 0x008912a1    50
                         call             __strdup                                // 0x008912a2    e8359af4ff
                         add              esp, 0x04                               // 0x008912a7    83c404
                         mov              dword ptr [esi], eax                    // 0x008912aa    8906
                         test             eax, eax                                // 0x008912ac    85c0
                         {disp32} jne     _jmp_addr_0x00891693                    // 0x008912ae    0f85df030000
                         push             esi                                     // 0x008912b4    56
                         call             _free                                   // 0x008912b5    e8cc54f3ff
                         {disp8} mov      edx, dword ptr [esp + 0x28]             // 0x008912ba    8b542428
                         push             edx                                     // 0x008912be    52
                         call             _free                                   // 0x008912bf    e8c254f3ff
                         add              esp, 0x08                               // 0x008912c4    83c408
                         xor.s            eax, eax                                // 0x008912c7    33c0
                         pop              edi                                     // 0x008912c9    5f
                         pop              esi                                     // 0x008912ca    5e
                         pop              ebp                                     // 0x008912cb    5d
                         pop              ebx                                     // 0x008912cc    5b
                         add              esp, 0x18                               // 0x008912cd    83c418
                         ret                                                      // 0x008912d0    c3
                         mov              eax, dword ptr [ebx]                    // 0x008912d1    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x008912d3    8b742418
                         test             eax, eax                                // 0x008912d7    85c0
                         {disp8} je       _jmp_addr_0x008912f0                    // 0x008912d9    7415
                         push             eax                                     // 0x008912db    50
                         call             __strdup                                // 0x008912dc    e8fb99f4ff
                         add              esp, 0x04                               // 0x008912e1    83c404
                         mov              dword ptr [esi], eax                    // 0x008912e4    8906
                         test             eax, eax                                // 0x008912e6    85c0
                         {disp8} jne      _jmp_addr_0x008912f0                    // 0x008912e8    7506
                         push             esi                                     // 0x008912ea    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x008912eb    e9af080000
_jmp_addr_0x008912f0:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x008912f0    8b4304
                         test             eax, eax                                // 0x008912f3    85c0
                         {disp32} je      _jmp_addr_0x0089141d                    // 0x008912f5    0f8422010000
                         push             eax                                     // 0x008912fb    50
                         call             __strdup                                // 0x008912fc    e8db99f4ff
                         add              esp, 0x04                               // 0x00891301    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x00891304    894604
                         test             eax, eax                                // 0x00891307    85c0
                         {disp32} jne     _jmp_addr_0x0089141d                    // 0x00891309    0f850e010000
                         push             esi                                     // 0x0089130f    56
                         call             _free                                   // 0x00891310    e87154f3ff
                         {disp8} mov      edx, dword ptr [esp + 0x28]             // 0x00891315    8b542428
                         push             edx                                     // 0x00891319    52
                         call             _free                                   // 0x0089131a    e86754f3ff
                         add              esp, 0x08                               // 0x0089131f    83c408
                         xor.s            eax, eax                                // 0x00891322    33c0
                         pop              edi                                     // 0x00891324    5f
                         pop              esi                                     // 0x00891325    5e
                         pop              ebp                                     // 0x00891326    5d
                         pop              ebx                                     // 0x00891327    5b
                         add              esp, 0x18                               // 0x00891328    83c418
                         ret                                                      // 0x0089132b    c3
                         mov              eax, dword ptr [ebx]                    // 0x0089132c    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x0089132e    8b742418
                         test             eax, eax                                // 0x00891332    85c0
                         {disp8} je       _jmp_addr_0x008912f0                    // 0x00891334    74ba
                         push             eax                                     // 0x00891336    50
                         call             __strdup                                // 0x00891337    e8a099f4ff
                         add              esp, 0x04                               // 0x0089133c    83c404
                         mov              dword ptr [esi], eax                    // 0x0089133f    8906
                         test             eax, eax                                // 0x00891341    85c0
                         {disp8} jne      _jmp_addr_0x008912f0                    // 0x00891343    75ab
                         push             esi                                     // 0x00891345    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x00891346    e954080000
                         mov              eax, dword ptr [ebx]                    // 0x0089134b    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x0089134d    8b742418
                         test             eax, eax                                // 0x00891351    85c0
                         {disp32} je      _jmp_addr_0x00891458                    // 0x00891353    0f84ff000000
                         push             eax                                     // 0x00891359    50
                         call             __strdup                                // 0x0089135a    e87d99f4ff
                         add              esp, 0x04                               // 0x0089135f    83c404
                         mov              dword ptr [esi], eax                    // 0x00891362    8906
                         test             eax, eax                                // 0x00891364    85c0
                         {disp32} jne     _jmp_addr_0x00891458                    // 0x00891366    0f85ec000000
                         push             esi                                     // 0x0089136c    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x0089136d    e92d080000
                         mov              eax, dword ptr [ebx]                    // 0x00891372    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x00891374    8b742418
                         test             eax, eax                                // 0x00891378    85c0
                         {disp8} je       _jmp_addr_0x0089138f                    // 0x0089137a    7413
                         push             eax                                     // 0x0089137c    50
                         call             __strdup                                // 0x0089137d    e85a99f4ff
                         add              esp, 0x04                               // 0x00891382    83c404
                         mov              dword ptr [esi], eax                    // 0x00891385    8906
                         test             eax, eax                                // 0x00891387    85c0
                         {disp32} je      _jmp_addr_0x008916b2                    // 0x00891389    0f8423030000
_jmp_addr_0x0089138f:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x0089138f    8b4304
                         test             eax, eax                                // 0x00891392    85c0
                         {disp8} je       _jmp_addr_0x008913ac                    // 0x00891394    7416
                         push             eax                                     // 0x00891396    50
                         call             __strdup                                // 0x00891397    e84099f4ff
                         add              esp, 0x04                               // 0x0089139c    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x0089139f    894604
                         test             eax, eax                                // 0x008913a2    85c0
                         {disp8} jne      _jmp_addr_0x008913ac                    // 0x008913a4    7506
                         push             esi                                     // 0x008913a6    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x008913a7    e9f3070000
_jmp_addr_0x008913ac:    {disp8} mov      eax, dword ptr [ebx + 0x0c]             // 0x008913ac    8b430c
                         test             eax, eax                                // 0x008913af    85c0
                         {disp8} je       _jmp_addr_0x008913c7                    // 0x008913b1    7414
                         push             eax                                     // 0x008913b3    50
                         call             __strdup                                // 0x008913b4    e82399f4ff
                         add              esp, 0x04                               // 0x008913b9    83c404
                         {disp8} mov      dword ptr [esi + 0x0c], eax             // 0x008913bc    89460c
                         test             eax, eax                                // 0x008913bf    85c0
                         {disp32} je      _jmp_addr_0x00891238                    // 0x008913c1    0f8471feffff
_jmp_addr_0x008913c7:    {disp8} mov      ebx, dword ptr [ebx + 0x10]             // 0x008913c7    8b5b10
                         test             ebx, ebx                                // 0x008913ca    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x008913cc    0f8439080000
                         push             ebx                                     // 0x008913d2    53
                         call             __strdup                                // 0x008913d3    e80499f4ff
                         add              esp, 0x04                               // 0x008913d8    83c404
                         {disp8} mov      dword ptr [esi + 0x10], eax             // 0x008913db    894610
                         {disp32} jmp     _jmp_addr_0x008916aa                    // 0x008913de    e9c7020000
                         mov              eax, dword ptr [ebx]                    // 0x008913e3    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x008913e5    8b742418
                         test             eax, eax                                // 0x008913e9    85c0
                         {disp8} je       _jmp_addr_0x00891402                    // 0x008913eb    7415
                         push             eax                                     // 0x008913ed    50
                         call             __strdup                                // 0x008913ee    e8e998f4ff
                         add              esp, 0x04                               // 0x008913f3    83c404
                         mov              dword ptr [esi], eax                    // 0x008913f6    8906
                         test             eax, eax                                // 0x008913f8    85c0
                         {disp8} jne      _jmp_addr_0x00891402                    // 0x008913fa    7506
                         push             esi                                     // 0x008913fc    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x008913fd    e99d070000
_jmp_addr_0x00891402:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891402    8b4304
                         test             eax, eax                                // 0x00891405    85c0
                         {disp8} je       _jmp_addr_0x0089141d                    // 0x00891407    7414
                         push             eax                                     // 0x00891409    50
                         call             __strdup                                // 0x0089140a    e8cd98f4ff
                         add              esp, 0x04                               // 0x0089140f    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x00891412    894604
                         test             eax, eax                                // 0x00891415    85c0
                         {disp32} je      _jmp_addr_0x00891238                    // 0x00891417    0f841bfeffff
_jmp_addr_0x0089141d:    {disp8} mov      ebx, dword ptr [ebx + 0x08]             // 0x0089141d    8b5b08
                         test             ebx, ebx                                // 0x00891420    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x00891422    0f84e3070000
                         push             ebx                                     // 0x00891428    53
                         call             __strdup                                // 0x00891429    e8ae98f4ff
                         add              esp, 0x04                               // 0x0089142e    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax             // 0x00891431    894608
                         {disp32} jmp     _jmp_addr_0x008916aa                    // 0x00891434    e971020000
                         mov              eax, dword ptr [ebx]                    // 0x00891439    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x0089143b    8b742418
                         test             eax, eax                                // 0x0089143f    85c0
                         {disp8} je       _jmp_addr_0x00891458                    // 0x00891441    7415
                         push             eax                                     // 0x00891443    50
                         call             __strdup                                // 0x00891444    e89398f4ff
                         add              esp, 0x04                               // 0x00891449    83c404
                         mov              dword ptr [esi], eax                    // 0x0089144c    8906
                         test             eax, eax                                // 0x0089144e    85c0
                         {disp8} jne      _jmp_addr_0x00891458                    // 0x00891450    7506
                         push             esi                                     // 0x00891452    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x00891453    e947070000
_jmp_addr_0x00891458:    {disp8} mov      ebx, dword ptr [ebx + 0x04]             // 0x00891458    8b5b04
                         test             ebx, ebx                                // 0x0089145b    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x0089145d    0f84a8070000
                         push             ebx                                     // 0x00891463    53
                         call             __strdup                                // 0x00891464    e87398f4ff
                         add              esp, 0x04                               // 0x00891469    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x0089146c    894604
                         {disp32} jmp     _jmp_addr_0x00891230                    // 0x0089146f    e9bcfdffff
                         mov              eax, dword ptr [ebx]                    // 0x00891474    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x00891476    8b742418
                         test             eax, eax                                // 0x0089147a    85c0
                         {disp8} je       _jmp_addr_0x00891491                    // 0x0089147c    7413
                         push             eax                                     // 0x0089147e    50
                         call             __strdup                                // 0x0089147f    e85898f4ff
                         add              esp, 0x04                               // 0x00891484    83c404
                         mov              dword ptr [esi], eax                    // 0x00891487    8906
                         test             eax, eax                                // 0x00891489    85c0
                         {disp32} je      _jmp_addr_0x008916b2                    // 0x0089148b    0f8421020000
_jmp_addr_0x00891491:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891491    8b4304
                         test             eax, eax                                // 0x00891494    85c0
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x00891496    0f846f070000
                         push             0x1c                                    // 0x0089149c    6a1c
                         call             _malloc                                 // 0x0089149e    e8a951f3ff
                         add              esp, 0x04                               // 0x008914a3    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x008914a6    894604
                         test             eax, eax                                // 0x008914a9    85c0
                         {disp8} jne      _jmp_addr_0x008914b3                    // 0x008914ab    7506
                         push             esi                                     // 0x008914ad    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x008914ae    e9ec060000
_jmp_addr_0x008914b3:    {disp8} mov      esi, dword ptr [ebx + 0x04]             // 0x008914b3    8b7304
                         mov              ecx, 0x00000007                         // 0x008914b6    b907000000
                         mov.s            edi, eax                                // 0x008914bb    8bf8
                         rep movsd        es:[edi], dword ptr ds:[esi]            // 0x008914bd    f3a5
                         {disp32} jmp     _jmp_addr_0x00891c0b                    // 0x008914bf    e947070000
                         mov              eax, dword ptr [ebx]                    // 0x008914c4    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x008914c6    8b742418
                         test             eax, eax                                // 0x008914ca    85c0
                         {disp32} je      _jmp_addr_0x00891693                    // 0x008914cc    0f84c1010000
                         push             eax                                     // 0x008914d2    50
                         call             __strdup                                // 0x008914d3    e80498f4ff
                         add              esp, 0x04                               // 0x008914d8    83c404
                         mov              dword ptr [esi], eax                    // 0x008914db    8906
                         test             eax, eax                                // 0x008914dd    85c0
                         {disp32} jne     _jmp_addr_0x00891693                    // 0x008914df    0f85ae010000
                         {disp32} jmp     _jmp_addr_0x00891238                    // 0x008914e5    e94efdffff
                         {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x008914ea    8b4308
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x008914ed    8b742418
                         test             eax, eax                                // 0x008914f1    85c0
                         {disp8} je       _jmp_addr_0x00891509                    // 0x008914f3    7414
                         push             eax                                     // 0x008914f5    50
                         call             __strdup                                // 0x008914f6    e8e197f4ff
                         add              esp, 0x04                               // 0x008914fb    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax             // 0x008914fe    894608
                         test             eax, eax                                // 0x00891501    85c0
                         {disp32} je      _jmp_addr_0x00891238                    // 0x00891503    0f842ffdffff
_jmp_addr_0x00891509:    {disp8} mov      ebx, dword ptr [ebx + 0x0c]             // 0x00891509    8b5b0c
                         test             ebx, ebx                                // 0x0089150c    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x0089150e    0f84f7060000
                         push             ebx                                     // 0x00891514    53
                         call             __strdup                                // 0x00891515    e8c297f4ff
                         add              esp, 0x04                               // 0x0089151a    83c404
                         {disp8} mov      dword ptr [esi + 0x0c], eax             // 0x0089151d    89460c
                         {disp32} jmp     _jmp_addr_0x008916aa                    // 0x00891520    e985010000
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891525    8b4304
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x00891528    8b742418
                         test             eax, eax                                // 0x0089152c    85c0
                         {disp8} jle      _jmp_addr_0x00891586                    // 0x0089152e    7e56
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000000] // 0x00891530    8d0c8500000000
                         push             ecx                                     // 0x00891537    51
                         call             _malloc                                 // 0x00891538    e80f51f3ff
                         add              esp, 0x04                               // 0x0089153d    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax             // 0x00891540    894608
                         test             eax, eax                                // 0x00891543    85c0
                         {disp32} je      _jmp_addr_0x00891238                    // 0x00891545    0f84edfcffff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x0089154b    8b4304
                         xor.s            edi, edi                                // 0x0089154e    33ff
                         test             eax, eax                                // 0x00891550    85c0
                         {disp8} jle      _jmp_addr_0x00891586                    // 0x00891552    7e32
_jmp_addr_0x00891554:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891554    8b4308
                         mov              eax, dword ptr [eax + edi * 0x4]        // 0x00891557    8b04b8
                         test             eax, eax                                // 0x0089155a    85c0
                         {disp8} jne      _jmp_addr_0x00891566                    // 0x0089155c    7508
                         {disp8} mov      ecx, dword ptr [esi + 0x08]             // 0x0089155e    8b4e08
                         mov              dword ptr [ecx + edi * 0x4], eax        // 0x00891561    8904b9
                         {disp8} jmp      _jmp_addr_0x0089157e                    // 0x00891564    eb18
_jmp_addr_0x00891566:    push             eax                                     // 0x00891566    50
                         call             __strdup                                // 0x00891567    e87097f4ff
                         {disp8} mov      edx, dword ptr [esi + 0x08]             // 0x0089156c    8b5608
                         add              esp, 0x04                               // 0x0089156f    83c404
                         mov              dword ptr [edx + edi * 0x4], eax        // 0x00891572    8904ba
                         {disp8} mov      eax, dword ptr [esi + 0x08]             // 0x00891575    8b4608
                         cmp              dword ptr [eax + edi * 0x4], 0x00       // 0x00891578    833cb800
                         {disp8} je       _jmp_addr_0x008915c7                    // 0x0089157c    7449
_jmp_addr_0x0089157e:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x0089157e    8b4304
                         inc              edi                                     // 0x00891581    47
                         cmp.s            edi, eax                                // 0x00891582    3bf8
                         {disp8} jl       _jmp_addr_0x00891554                    // 0x00891584    7cce
_jmp_addr_0x00891586:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891586    8b4304
                         test             eax, eax                                // 0x00891589    85c0
                         {disp32} jle     _jmp_addr_0x00891622                    // 0x0089158b    0f8e91000000
                         {disp32} lea     edx, dword ptr [eax * 0x4 + 0x00000000] // 0x00891591    8d148500000000
                         push             edx                                     // 0x00891598    52
                         call             _malloc                                 // 0x00891599    e8ae50f3ff
                         add              esp, 0x04                               // 0x0089159e    83c404
                         {disp8} mov      dword ptr [esi + 0x0c], eax             // 0x008915a1    89460c
                         test             eax, eax                                // 0x008915a4    85c0
                         {disp32} je      _jmp_addr_0x008916b2                    // 0x008915a6    0f8406010000
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x008915ac    8b4304
                         xor.s            edi, edi                                // 0x008915af    33ff
                         test             eax, eax                                // 0x008915b1    85c0
                         {disp8} jle      _jmp_addr_0x00891622                    // 0x008915b3    7e6d
_jmp_addr_0x008915b5:    {disp8} mov      ecx, dword ptr [ebx + 0x0c]             // 0x008915b5    8b4b0c
                         mov              eax, dword ptr [ecx + edi * 0x4]        // 0x008915b8    8b04b9
                         test             eax, eax                                // 0x008915bb    85c0
                         {disp8} jne      _jmp_addr_0x00891602                    // 0x008915bd    7543
                         {disp8} mov      edx, dword ptr [esi + 0x0c]             // 0x008915bf    8b560c
                         mov              dword ptr [edx + edi * 0x4], eax        // 0x008915c2    8904ba
                         {disp8} jmp      _jmp_addr_0x0089161a                    // 0x008915c5    eb53
_jmp_addr_0x008915c7:    dec              edi                                     // 0x008915c7    4f
                         {disp8} js       _jmp_addr_0x008915dc                    // 0x008915c8    7812
_jmp_addr_0x008915ca:    {disp8} mov      ecx, dword ptr [esi + 0x08]             // 0x008915ca    8b4e08
                         mov              edx, dword ptr [ecx + edi * 0x4]        // 0x008915cd    8b14b9
                         push             edx                                     // 0x008915d0    52
                         call             _free                                   // 0x008915d1    e8b051f3ff
                         add              esp, 0x04                               // 0x008915d6    83c404
                         dec              edi                                     // 0x008915d9    4f
                         {disp8} jns      _jmp_addr_0x008915ca                    // 0x008915da    79ee
_jmp_addr_0x008915dc:    {disp8} mov      eax, dword ptr [esi + 0x08]             // 0x008915dc    8b4608
                         push             eax                                     // 0x008915df    50
                         call             _free                                   // 0x008915e0    e8a151f3ff
                         push             esi                                     // 0x008915e5    56
_jmp_addr_0x008915e6:    call             _free                                   // 0x008915e6    e89b51f3ff
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]             // 0x008915eb    8b4c242c
                         push             ecx                                     // 0x008915ef    51
                         call             _free                                   // 0x008915f0    e89151f3ff
                         add              esp, 0x0c                               // 0x008915f5    83c40c
                         xor.s            eax, eax                                // 0x008915f8    33c0
                         pop              edi                                     // 0x008915fa    5f
                         pop              esi                                     // 0x008915fb    5e
                         pop              ebp                                     // 0x008915fc    5d
                         pop              ebx                                     // 0x008915fd    5b
                         add              esp, 0x18                               // 0x008915fe    83c418
                         ret                                                      // 0x00891601    c3
_jmp_addr_0x00891602:    push             eax                                     // 0x00891602    50
                         call             __strdup                                // 0x00891603    e8d496f4ff
                         {disp8} mov      ecx, dword ptr [esi + 0x0c]             // 0x00891608    8b4e0c
                         add              esp, 0x04                               // 0x0089160b    83c404
                         mov              dword ptr [ecx + edi * 0x4], eax        // 0x0089160e    8904b9
                         {disp8} mov      edx, dword ptr [esi + 0x0c]             // 0x00891611    8b560c
                         cmp              dword ptr [edx + edi * 0x4], 0x00       // 0x00891614    833cba00
                         {disp8} je       _jmp_addr_0x0089164a                    // 0x00891618    7430
_jmp_addr_0x0089161a:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x0089161a    8b4304
                         inc              edi                                     // 0x0089161d    47
                         cmp.s            edi, eax                                // 0x0089161e    3bf8
                         {disp8} jl       _jmp_addr_0x008915b5                    // 0x00891620    7c93
_jmp_addr_0x00891622:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891622    8b4304
                         test             eax, eax                                // 0x00891625    85c0
                         {disp32} jle     _jmp_addr_0x00891c0b                    // 0x00891627    0f8ede050000
                         {disp32} lea     edi, dword ptr [eax * 0x4 + 0x00000000] // 0x0089162d    8d3c8500000000
                         push             edi                                     // 0x00891634    57
                         call             _malloc                                 // 0x00891635    e81250f3ff
                         add              esp, 0x04                               // 0x0089163a    83c404
                         {disp8} mov      dword ptr [esi + 0x10], eax             // 0x0089163d    894610
                         test             eax, eax                                // 0x00891640    85c0
                         {disp8} jne      _jmp_addr_0x00891685                    // 0x00891642    7541
                         push             esi                                     // 0x00891644    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x00891645    e955050000
_jmp_addr_0x0089164a:    dec              edi                                     // 0x0089164a    4f
                         {disp8} js       _jmp_addr_0x0089165f                    // 0x0089164b    7812
_jmp_addr_0x0089164d:    {disp8} mov      eax, dword ptr [esi + 0x0c]             // 0x0089164d    8b460c
                         mov              ecx, dword ptr [eax + edi * 0x4]        // 0x00891650    8b0cb8
                         push             ecx                                     // 0x00891653    51
                         call             _free                                   // 0x00891654    e82d51f3ff
                         add              esp, 0x04                               // 0x00891659    83c404
                         dec              edi                                     // 0x0089165c    4f
                         {disp8} jns      _jmp_addr_0x0089164d                    // 0x0089165d    79ee
_jmp_addr_0x0089165f:    {disp8} mov      edx, dword ptr [esi + 0x0c]             // 0x0089165f    8b560c
                         push             edx                                     // 0x00891662    52
                         call             _free                                   // 0x00891663    e81e51f3ff
                         push             esi                                     // 0x00891668    56
_jmp_addr_0x00891669:    call             _free                                   // 0x00891669    e81851f3ff
                         {disp8} mov      eax, dword ptr [esp + 0x2c]             // 0x0089166e    8b44242c
                         push             eax                                     // 0x00891672    50
                         call             _free                                   // 0x00891673    e80e51f3ff
                         add              esp, 0x0c                               // 0x00891678    83c40c
                         xor.s            eax, eax                                // 0x0089167b    33c0
                         pop              edi                                     // 0x0089167d    5f
                         pop              esi                                     // 0x0089167e    5e
                         pop              ebp                                     // 0x0089167f    5d
                         pop              ebx                                     // 0x00891680    5b
                         add              esp, 0x18                               // 0x00891681    83c418
                         ret                                                      // 0x00891684    c3
_jmp_addr_0x00891685:    {disp8} mov      esi, dword ptr [ebx + 0x10]             // 0x00891685    8b7310
                         mov.s            ecx, edi                                // 0x00891688    8bcf
                         {disp32} jmp     _jmp_addr_0x00891bfb                    // 0x0089168a    e96c050000
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x0089168f    8b742418
_jmp_addr_0x00891693:    {disp8} mov      ebx, dword ptr [ebx + 0x04]             // 0x00891693    8b5b04
                         test             ebx, ebx                                // 0x00891696    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x00891698    0f846d050000
                         push             ebx                                     // 0x0089169e    53
                         call             __strdup                                // 0x0089169f    e83896f4ff
                         add              esp, 0x04                               // 0x008916a4    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x008916a7    894604
_jmp_addr_0x008916aa:    test             eax, eax                                // 0x008916aa    85c0
                         {disp32} jne     _jmp_addr_0x00891c0b                    // 0x008916ac    0f8559050000
_jmp_addr_0x008916b2:    push             esi                                     // 0x008916b2    56
_jmp_addr_0x008916b3:    call             _free                                   // 0x008916b3    e8ce50f3ff
                         {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x008916b8    8b442428
                         push             eax                                     // 0x008916bc    50
                         call             _free                                   // 0x008916bd    e8c450f3ff
                         add              esp, 0x08                               // 0x008916c2    83c408
                         xor.s            eax, eax                                // 0x008916c5    33c0
                         pop              edi                                     // 0x008916c7    5f
                         pop              esi                                     // 0x008916c8    5e
                         pop              ebp                                     // 0x008916c9    5d
                         pop              ebx                                     // 0x008916ca    5b
                         add              esp, 0x18                               // 0x008916cb    83c418
                         ret                                                      // 0x008916ce    c3
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x008916cf    8b4304
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x008916d2    8b742418
                         test             eax, eax                                // 0x008916d6    85c0
                         {disp8} je       _jmp_addr_0x008916f0                    // 0x008916d8    7416
                         push             eax                                     // 0x008916da    50
                         call             __strdup                                // 0x008916db    e8fc95f4ff
                         add              esp, 0x04                               // 0x008916e0    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x008916e3    894604
                         test             eax, eax                                // 0x008916e6    85c0
                         {disp8} jne      _jmp_addr_0x008916f0                    // 0x008916e8    7506
                         push             esi                                     // 0x008916ea    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x008916eb    e9af040000
_jmp_addr_0x008916f0:    {disp8} mov      ebx, dword ptr [ebx + 0x08]             // 0x008916f0    8b5b08
                         test             ebx, ebx                                // 0x008916f3    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x008916f5    0f8410050000
                         push             ebx                                     // 0x008916fb    53
                         call             __strdup                                // 0x008916fc    e8db95f4ff
                         add              esp, 0x04                               // 0x00891701    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax             // 0x00891704    894608
                         {disp32} jmp     _jmp_addr_0x00891230                    // 0x00891707    e924fbffff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x0089170c    8b4304
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x0089170f    8b742418
                         test             eax, eax                                // 0x00891713    85c0
                         {disp8} je       _jmp_addr_0x00891744                    // 0x00891715    742d
                         push             eax                                     // 0x00891717    50
                         call             __strdup                                // 0x00891718    e8bf95f4ff
                         add              esp, 0x04                               // 0x0089171d    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x00891720    894604
                         test             eax, eax                                // 0x00891723    85c0
                         {disp8} jne      _jmp_addr_0x00891744                    // 0x00891725    751d
                         push             esi                                     // 0x00891727    56
                         call             _free                                   // 0x00891728    e85950f3ff
                         {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x0089172d    8b442428
                         push             eax                                     // 0x00891731    50
                         call             _free                                   // 0x00891732    e84f50f3ff
                         add              esp, 0x08                               // 0x00891737    83c408
                         xor.s            eax, eax                                // 0x0089173a    33c0
                         pop              edi                                     // 0x0089173c    5f
                         pop              esi                                     // 0x0089173d    5e
                         pop              ebp                                     // 0x0089173e    5d
                         pop              ebx                                     // 0x0089173f    5b
                         add              esp, 0x18                               // 0x00891740    83c418
                         ret                                                      // 0x00891743    c3
_jmp_addr_0x00891744:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891744    8b4308
                         test             eax, eax                                // 0x00891747    85c0
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x00891749    0f84bc040000
                         push             0x1c                                    // 0x0089174f    6a1c
                         call             _malloc                                 // 0x00891751    e8f64ef3ff
                         add              esp, 0x04                               // 0x00891756    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax             // 0x00891759    894608
                         test             eax, eax                                // 0x0089175c    85c0
                         {disp8} jne      _jmp_addr_0x00891766                    // 0x0089175e    7506
                         push             esi                                     // 0x00891760    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x00891761    e939040000
_jmp_addr_0x00891766:    {disp8} mov      esi, dword ptr [ebx + 0x08]             // 0x00891766    8b7308
                         mov              ecx, 0x00000007                         // 0x00891769    b907000000
                         mov.s            edi, eax                                // 0x0089176e    8bf8
                         rep movsd        es:[edi], dword ptr ds:[esi]            // 0x00891770    f3a5
                         {disp32} jmp     _jmp_addr_0x00891c0b                    // 0x00891772    e994040000
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891777    8b4304
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x0089177a    8b742418
                         test             eax, eax                                // 0x0089177e    85c0
                         {disp32} je      _jmp_addr_0x00891509                    // 0x00891780    0f8483fdffff
                         push             eax                                     // 0x00891786    50
                         call             __strdup                                // 0x00891787    e85095f4ff
                         add              esp, 0x04                               // 0x0089178c    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x0089178f    894604
                         test             eax, eax                                // 0x00891792    85c0
                         {disp32} jne     _jmp_addr_0x00891509                    // 0x00891794    0f856ffdffff
                         {disp32} jmp     _jmp_addr_0x00891238                    // 0x0089179a    e999faffff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x0089179f    8b4304
                         {disp8} mov      ebp, dword ptr [esp + 0x18]             // 0x008917a2    8b6c2418
                         test             eax, eax                                // 0x008917a6    85c0
                         {disp8} je       _jmp_addr_0x008917be                    // 0x008917a8    7414
                         push             eax                                     // 0x008917aa    50
                         call             __strdup                                // 0x008917ab    e82c95f4ff
                         add              esp, 0x04                               // 0x008917b0    83c404
                         {disp8} mov      dword ptr [ebp + 0x04], eax             // 0x008917b3    894504
                         test             eax, eax                                // 0x008917b6    85c0
                         {disp32} je      _jmp_addr_0x00891b9e                    // 0x008917b8    0f84e0030000
_jmp_addr_0x008917be:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x008917be    8b4308
                         test             eax, eax                                // 0x008917c1    85c0
                         {disp8} jle      _jmp_addr_0x0089181d                    // 0x008917c3    7e58
                         {disp32} lea     edx, dword ptr [eax * 0x4 + 0x00000000] // 0x008917c5    8d148500000000
                         push             edx                                     // 0x008917cc    52
                         call             _malloc                                 // 0x008917cd    e87a4ef3ff
                         add              esp, 0x04                               // 0x008917d2    83c404
                         {disp8} mov      dword ptr [ebp + 0x0c], eax             // 0x008917d5    89450c
                         test             eax, eax                                // 0x008917d8    85c0
                         {disp8} jne      _jmp_addr_0x008917e2                    // 0x008917da    7506
                         push             ebp                                     // 0x008917dc    55
                         {disp32} jmp     _jmp_addr_0x008916b3                    // 0x008917dd    e9d1feffff
_jmp_addr_0x008917e2:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x008917e2    8b4308
                         xor.s            esi, esi                                // 0x008917e5    33f6
                         test             eax, eax                                // 0x008917e7    85c0
                         {disp8} jle      _jmp_addr_0x0089181d                    // 0x008917e9    7e32
_jmp_addr_0x008917eb:    {disp8} mov      ecx, dword ptr [ebx + 0x0c]             // 0x008917eb    8b4b0c
                         mov              eax, dword ptr [ecx + esi * 0x4]        // 0x008917ee    8b04b1
                         test             eax, eax                                // 0x008917f1    85c0
                         {disp8} jne      _jmp_addr_0x008917fd                    // 0x008917f3    7508
                         {disp8} mov      edx, dword ptr [ebp + 0x0c]             // 0x008917f5    8b550c
                         mov              dword ptr [edx + esi * 0x4], eax        // 0x008917f8    8904b2
                         {disp8} jmp      _jmp_addr_0x00891815                    // 0x008917fb    eb18
_jmp_addr_0x008917fd:    push             eax                                     // 0x008917fd    50
                         call             __strdup                                // 0x008917fe    e8d994f4ff
                         {disp8} mov      ecx, dword ptr [ebp + 0x0c]             // 0x00891803    8b4d0c
                         add              esp, 0x04                               // 0x00891806    83c404
                         mov              dword ptr [ecx + esi * 0x4], eax        // 0x00891809    8904b1
                         {disp8} mov      edx, dword ptr [ebp + 0x0c]             // 0x0089180c    8b550c
                         cmp              dword ptr [edx + esi * 0x4], 0x00       // 0x0089180f    833cb200
                         {disp8} je       _jmp_addr_0x0089184d                    // 0x00891813    7438
_jmp_addr_0x00891815:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891815    8b4308
                         inc              esi                                     // 0x00891818    46
                         cmp.s            esi, eax                                // 0x00891819    3bf0
                         {disp8} jl       _jmp_addr_0x008917eb                    // 0x0089181b    7cce
_jmp_addr_0x0089181d:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x0089181d    8b4308
                         test             eax, eax                                // 0x00891820    85c0
                         {disp32} jle     _jmp_addr_0x00891c0b                    // 0x00891822    0f8ee3030000
                         {disp32} lea     esi, dword ptr [eax * 0x4 + 0x00000000] // 0x00891828    8d348500000000
                         push             esi                                     // 0x0089182f    56
                         call             _malloc                                 // 0x00891830    e8174ef3ff
                         add              esp, 0x04                               // 0x00891835    83c404
                         {disp8} mov      dword ptr [ebp + 0x10], eax             // 0x00891838    894510
                         test             eax, eax                                // 0x0089183b    85c0
                         {disp32} je      _jmp_addr_0x00891b9e                    // 0x0089183d    0f845b030000
                         mov.s            ecx, esi                                // 0x00891843    8bce
                         {disp8} mov      esi, dword ptr [ebx + 0x10]             // 0x00891845    8b7310
                         {disp32} jmp     _jmp_addr_0x00891bfb                    // 0x00891848    e9ae030000
_jmp_addr_0x0089184d:    dec              esi                                     // 0x0089184d    4e
                         {disp8} js       _jmp_addr_0x00891862                    // 0x0089184e    7812
_jmp_addr_0x00891850:    {disp8} mov      eax, dword ptr [ebp + 0x0c]             // 0x00891850    8b450c
                         mov              ecx, dword ptr [eax + esi * 0x4]        // 0x00891853    8b0cb0
                         push             ecx                                     // 0x00891856    51
                         call             _free                                   // 0x00891857    e82a4ff3ff
                         add              esp, 0x04                               // 0x0089185c    83c404
                         dec              esi                                     // 0x0089185f    4e
                         {disp8} jns      _jmp_addr_0x00891850                    // 0x00891860    79ee
_jmp_addr_0x00891862:    {disp8} mov      edx, dword ptr [ebp + 0x0c]             // 0x00891862    8b550c
                         push             edx                                     // 0x00891865    52
                         call             _free                                   // 0x00891866    e81b4ff3ff
                         push             ebp                                     // 0x0089186b    55
                         {disp32} jmp     _jmp_addr_0x00891669                    // 0x0089186c    e9f8fdffff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891871    8b4304
                         {disp8} mov      edi, dword ptr [esp + 0x18]             // 0x00891874    8b7c2418
                         test             eax, eax                                // 0x00891878    85c0
                         {disp8} je       _jmp_addr_0x00891892                    // 0x0089187a    7416
                         push             eax                                     // 0x0089187c    50
                         call             __strdup                                // 0x0089187d    e85a94f4ff
                         add              esp, 0x04                               // 0x00891882    83c404
                         {disp8} mov      dword ptr [edi + 0x04], eax             // 0x00891885    894704
                         test             eax, eax                                // 0x00891888    85c0
                         {disp8} jne      _jmp_addr_0x00891892                    // 0x0089188a    7506
                         push             edi                                     // 0x0089188c    57
                         {disp32} jmp     _jmp_addr_0x008916b3                    // 0x0089188d    e921feffff
_jmp_addr_0x00891892:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891892    8b4308
                         test             eax, eax                                // 0x00891895    85c0
                         {disp8} je       _jmp_addr_0x008918af                    // 0x00891897    7416
                         push             eax                                     // 0x00891899    50
                         call             __strdup                                // 0x0089189a    e83d94f4ff
                         add              esp, 0x04                               // 0x0089189f    83c404
                         {disp8} mov      dword ptr [edi + 0x08], eax             // 0x008918a2    894708
                         test             eax, eax                                // 0x008918a5    85c0
                         {disp8} jne      _jmp_addr_0x008918af                    // 0x008918a7    7506
                         push             edi                                     // 0x008918a9    57
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x008918aa    e9f0020000
_jmp_addr_0x008918af:    {disp8} mov      eax, dword ptr [ebx + 0x0c]             // 0x008918af    8b430c
                         test             eax, eax                                // 0x008918b2    85c0
                         {disp8} je       _jmp_addr_0x008918cc                    // 0x008918b4    7416
                         push             eax                                     // 0x008918b6    50
                         call             __strdup                                // 0x008918b7    e82094f4ff
                         add              esp, 0x04                               // 0x008918bc    83c404
                         {disp8} mov      dword ptr [edi + 0x0c], eax             // 0x008918bf    89470c
                         test             eax, eax                                // 0x008918c2    85c0
                         {disp8} jne      _jmp_addr_0x008918cc                    // 0x008918c4    7506
                         push             edi                                     // 0x008918c6    57
                         {disp32} jmp     _jmp_addr_0x00891239                    // 0x008918c7    e96df9ffff
_jmp_addr_0x008918cc:    {disp8} mov      eax, dword ptr [ebx + 0x10]             // 0x008918cc    8b4310
                         test             eax, eax                                // 0x008918cf    85c0
                         {disp8} je       _jmp_addr_0x008918e9                    // 0x008918d1    7416
                         push             eax                                     // 0x008918d3    50
                         call             __strdup                                // 0x008918d4    e80394f4ff
                         add              esp, 0x04                               // 0x008918d9    83c404
                         {disp8} mov      dword ptr [edi + 0x10], eax             // 0x008918dc    894710
                         test             eax, eax                                // 0x008918df    85c0
                         {disp8} jne      _jmp_addr_0x008918e9                    // 0x008918e1    7506
                         push             edi                                     // 0x008918e3    57
                         {disp32} jmp     _jmp_addr_0x008916b3                    // 0x008918e4    e9cafdffff
_jmp_addr_0x008918e9:    {disp8} mov      eax, dword ptr [ebx + 0x14]             // 0x008918e9    8b4314
                         test             eax, eax                                // 0x008918ec    85c0
                         {disp32} jle     _jmp_addr_0x00891c0b                    // 0x008918ee    0f8e17030000
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000000] // 0x008918f4    8d0c8500000000
                         push             ecx                                     // 0x008918fb    51
                         call             _malloc                                 // 0x008918fc    e84b4df3ff
                         add              esp, 0x04                               // 0x00891901    83c404
                         {disp8} mov      dword ptr [edi + 0x18], eax             // 0x00891904    894718
                         test             eax, eax                                // 0x00891907    85c0
                         {disp8} jne      _jmp_addr_0x00891911                    // 0x00891909    7506
                         push             edi                                     // 0x0089190b    57
                         {disp32} jmp     _jmp_addr_0x00891239                    // 0x0089190c    e928f9ffff
_jmp_addr_0x00891911:    {disp8} mov      eax, dword ptr [ebx + 0x14]             // 0x00891911    8b4314
                         xor.s            esi, esi                                // 0x00891914    33f6
                         test             eax, eax                                // 0x00891916    85c0
                         {disp32} jle     _jmp_addr_0x00891c0b                    // 0x00891918    0f8eed020000
_jmp_addr_0x0089191e:    {disp8} mov      eax, dword ptr [ebx + 0x18]             // 0x0089191e    8b4318
                         mov              eax, dword ptr [eax + esi * 0x4]        // 0x00891921    8b04b0
                         test             eax, eax                                // 0x00891924    85c0
                         {disp8} jne      _jmp_addr_0x00891930                    // 0x00891926    7508
                         {disp8} mov      ecx, dword ptr [edi + 0x18]             // 0x00891928    8b4f18
                         mov              dword ptr [ecx + esi * 0x4], eax        // 0x0089192b    8904b1
                         {disp8} jmp      _jmp_addr_0x00891948                    // 0x0089192e    eb18
_jmp_addr_0x00891930:    push             eax                                     // 0x00891930    50
                         call             __strdup                                // 0x00891931    e8a693f4ff
                         {disp8} mov      edx, dword ptr [edi + 0x18]             // 0x00891936    8b5718
                         add              esp, 0x04                               // 0x00891939    83c404
                         mov              dword ptr [edx + esi * 0x4], eax        // 0x0089193c    8904b2
                         {disp8} mov      eax, dword ptr [edi + 0x18]             // 0x0089193f    8b4718
                         cmp              dword ptr [eax + esi * 0x4], 0x00       // 0x00891942    833cb000
                         {disp8} je       _jmp_addr_0x00891955                    // 0x00891946    740d
_jmp_addr_0x00891948:    {disp8} mov      eax, dword ptr [ebx + 0x14]             // 0x00891948    8b4314
                         inc              esi                                     // 0x0089194b    46
                         cmp.s            esi, eax                                // 0x0089194c    3bf0
                         {disp8} jl       _jmp_addr_0x0089191e                    // 0x0089194e    7cce
                         {disp32} jmp     _jmp_addr_0x00891c0b                    // 0x00891950    e9b6020000
_jmp_addr_0x00891955:    dec              esi                                     // 0x00891955    4e
                         {disp8} js       _jmp_addr_0x0089196a                    // 0x00891956    7812
_jmp_addr_0x00891958:    {disp8} mov      ecx, dword ptr [edi + 0x18]             // 0x00891958    8b4f18
                         mov              edx, dword ptr [ecx + esi * 0x4]        // 0x0089195b    8b14b1
                         push             edx                                     // 0x0089195e    52
                         call             _free                                   // 0x0089195f    e8224ef3ff
                         add              esp, 0x04                               // 0x00891964    83c404
                         dec              esi                                     // 0x00891967    4e
                         {disp8} jns      _jmp_addr_0x00891958                    // 0x00891968    79ee
_jmp_addr_0x0089196a:    {disp8} mov      eax, dword ptr [edi + 0x18]             // 0x0089196a    8b4718
                         push             eax                                     // 0x0089196d    50
                         call             _free                                   // 0x0089196e    e8134ef3ff
                         push             edi                                     // 0x00891973    57
                         {disp32} jmp     _jmp_addr_0x008915e6                    // 0x00891974    e96dfcffff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891979    8b4304
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x0089197c    8b742418
                         test             eax, eax                                // 0x00891980    85c0
                         {disp8} je       _jmp_addr_0x00891998                    // 0x00891982    7414
                         push             eax                                     // 0x00891984    50
                         call             __strdup                                // 0x00891985    e85293f4ff
                         add              esp, 0x04                               // 0x0089198a    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x0089198d    894604
                         test             eax, eax                                // 0x00891990    85c0
                         {disp32} je      _jmp_addr_0x00891238                    // 0x00891992    0f84a0f8ffff
_jmp_addr_0x00891998:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891998    8b4308
                         test             eax, eax                                // 0x0089199b    85c0
                         {disp8} je       _jmp_addr_0x008919b3                    // 0x0089199d    7414
                         push             eax                                     // 0x0089199f    50
                         call             __strdup                                // 0x008919a0    e83793f4ff
                         add              esp, 0x04                               // 0x008919a5    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax             // 0x008919a8    894608
                         test             eax, eax                                // 0x008919ab    85c0
                         {disp32} je      _jmp_addr_0x008916b2                    // 0x008919ad    0f84fffcffff
_jmp_addr_0x008919b3:    {disp8} mov      ebx, dword ptr [ebx + 0x0c]             // 0x008919b3    8b5b0c
                         test             ebx, ebx                                // 0x008919b6    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x008919b8    0f844d020000
                         push             ebx                                     // 0x008919be    53
                         call             __strdup                                // 0x008919bf    e81893f4ff
                         add              esp, 0x04                               // 0x008919c4    83c404
                         {disp8} mov      dword ptr [esi + 0x0c], eax             // 0x008919c7    89460c
_jmp_addr_0x008919ca:    test             eax, eax                                // 0x008919ca    85c0
                         {disp32} jne     _jmp_addr_0x00891c0b                    // 0x008919cc    0f8539020000
                         push             esi                                     // 0x008919d2    56
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x008919d3    e9c7010000
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x008919d8    8b4304
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x008919db    8b742418
                         test             eax, eax                                // 0x008919df    85c0
                         {disp32} je      _jmp_addr_0x0089141d                    // 0x008919e1    0f8436faffff
                         push             eax                                     // 0x008919e7    50
                         call             __strdup                                // 0x008919e8    e8ef92f4ff
                         add              esp, 0x04                               // 0x008919ed    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x008919f0    894604
                         test             eax, eax                                // 0x008919f3    85c0
                         {disp32} jne     _jmp_addr_0x0089141d                    // 0x008919f5    0f8522faffff
                         {disp32} jmp     _jmp_addr_0x00891238                    // 0x008919fb    e938f8ffff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891a00    8b4304
                         {disp8} mov      edi, dword ptr [esp + 0x18]             // 0x00891a03    8b7c2418
                         test             eax, eax                                // 0x00891a07    85c0
                         {disp8} je       _jmp_addr_0x00891a21                    // 0x00891a09    7416
                         push             eax                                     // 0x00891a0b    50
                         call             __strdup                                // 0x00891a0c    e8cb92f4ff
                         add              esp, 0x04                               // 0x00891a11    83c404
                         {disp8} mov      dword ptr [edi + 0x04], eax             // 0x00891a14    894704
                         test             eax, eax                                // 0x00891a17    85c0
                         {disp8} jne      _jmp_addr_0x00891a21                    // 0x00891a19    7506
                         push             edi                                     // 0x00891a1b    57
                         {disp32} jmp     _jmp_addr_0x00891b9f                    // 0x00891a1c    e97e010000
_jmp_addr_0x00891a21:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891a21    8b4308
                         test             eax, eax                                // 0x00891a24    85c0
                         {disp32} jle     _jmp_addr_0x00891c0b                    // 0x00891a26    0f8edf010000
                         {disp32} lea     edx, dword ptr [eax * 0x4 + 0x00000000] // 0x00891a2c    8d148500000000
                         push             edx                                     // 0x00891a33    52
                         call             _malloc                                 // 0x00891a34    e8134cf3ff
                         add              esp, 0x04                               // 0x00891a39    83c404
                         {disp8} mov      dword ptr [edi + 0x0c], eax             // 0x00891a3c    89470c
                         test             eax, eax                                // 0x00891a3f    85c0
                         {disp8} jne      _jmp_addr_0x00891a49                    // 0x00891a41    7506
                         push             edi                                     // 0x00891a43    57
                         {disp32} jmp     _jmp_addr_0x008916b3                    // 0x00891a44    e96afcffff
_jmp_addr_0x00891a49:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891a49    8b4308
                         xor.s            esi, esi                                // 0x00891a4c    33f6
                         test             eax, eax                                // 0x00891a4e    85c0
                         {disp32} jle     _jmp_addr_0x00891c0b                    // 0x00891a50    0f8eb5010000
_jmp_addr_0x00891a56:    {disp8} mov      ecx, dword ptr [ebx + 0x0c]             // 0x00891a56    8b4b0c
                         mov              eax, dword ptr [ecx + esi * 0x4]        // 0x00891a59    8b04b1
                         test             eax, eax                                // 0x00891a5c    85c0
                         {disp8} jne      _jmp_addr_0x00891a68                    // 0x00891a5e    7508
                         {disp8} mov      edx, dword ptr [edi + 0x0c]             // 0x00891a60    8b570c
                         mov              dword ptr [edx + esi * 0x4], eax        // 0x00891a63    8904b2
                         {disp8} jmp      _jmp_addr_0x00891a80                    // 0x00891a66    eb18
_jmp_addr_0x00891a68:    push             eax                                     // 0x00891a68    50
                         call             __strdup                                // 0x00891a69    e86e92f4ff
                         {disp8} mov      ecx, dword ptr [edi + 0x0c]             // 0x00891a6e    8b4f0c
                         add              esp, 0x04                               // 0x00891a71    83c404
                         mov              dword ptr [ecx + esi * 0x4], eax        // 0x00891a74    8904b1
                         {disp8} mov      edx, dword ptr [edi + 0x0c]             // 0x00891a77    8b570c
                         cmp              dword ptr [edx + esi * 0x4], 0x00       // 0x00891a7a    833cb200
                         {disp8} je       _jmp_addr_0x00891a8d                    // 0x00891a7e    740d
_jmp_addr_0x00891a80:    {disp8} mov      eax, dword ptr [ebx + 0x08]             // 0x00891a80    8b4308
                         inc              esi                                     // 0x00891a83    46
                         cmp.s            esi, eax                                // 0x00891a84    3bf0
                         {disp8} jl       _jmp_addr_0x00891a56                    // 0x00891a86    7cce
                         {disp32} jmp     _jmp_addr_0x00891c0b                    // 0x00891a88    e97e010000
_jmp_addr_0x00891a8d:    dec              esi                                     // 0x00891a8d    4e
                         {disp8} js       _jmp_addr_0x00891aa2                    // 0x00891a8e    7812
_jmp_addr_0x00891a90:    {disp8} mov      eax, dword ptr [edi + 0x0c]             // 0x00891a90    8b470c
                         mov              ecx, dword ptr [eax + esi * 0x4]        // 0x00891a93    8b0cb0
                         push             ecx                                     // 0x00891a96    51
                         call             _free                                   // 0x00891a97    e8ea4cf3ff
                         add              esp, 0x04                               // 0x00891a9c    83c404
                         dec              esi                                     // 0x00891a9f    4e
                         {disp8} jns      _jmp_addr_0x00891a90                    // 0x00891aa0    79ee
_jmp_addr_0x00891aa2:    {disp8} mov      edx, dword ptr [edi + 0x0c]             // 0x00891aa2    8b570c
                         push             edx                                     // 0x00891aa5    52
                         call             _free                                   // 0x00891aa6    e8db4cf3ff
                         push             edi                                     // 0x00891aab    57
                         call             _free                                   // 0x00891aac    e8d54cf3ff
                         {disp8} mov      eax, dword ptr [esp + 0x2c]             // 0x00891ab1    8b44242c
                         push             eax                                     // 0x00891ab5    50
                         call             _free                                   // 0x00891ab6    e8cb4cf3ff
                         add              esp, 0x0c                               // 0x00891abb    83c40c
                         xor.s            eax, eax                                // 0x00891abe    33c0
                         pop              edi                                     // 0x00891ac0    5f
                         pop              esi                                     // 0x00891ac1    5e
                         pop              ebp                                     // 0x00891ac2    5d
                         pop              ebx                                     // 0x00891ac3    5b
                         add              esp, 0x18                               // 0x00891ac4    83c418
                         ret                                                      // 0x00891ac7    c3
                         {disp8} mov      esi, dword ptr [esp + 0x18]             // 0x00891ac8    8b742418
_jmp_addr_0x00891acc:    {disp8} mov      ebx, dword ptr [ebx + 0x04]             // 0x00891acc    8b5b04
                         test             ebx, ebx                                // 0x00891acf    85db
                         {disp32} je      _jmp_addr_0x00891c0b                    // 0x00891ad1    0f8434010000
                         push             ebx                                     // 0x00891ad7    53
                         call             __strdup                                // 0x00891ad8    e8ff91f4ff
                         add              esp, 0x04                               // 0x00891add    83c404
                         {disp8} mov      dword ptr [esi + 0x04], eax             // 0x00891ae0    894604
                         {disp32} jmp     _jmp_addr_0x008919ca                    // 0x00891ae3    e9e2feffff
                         mov              eax, dword ptr [ebx]                    // 0x00891ae8    8b03
                         {disp8} mov      ebp, dword ptr [esp + 0x18]             // 0x00891aea    8b6c2418
                         test             eax, eax                                // 0x00891aee    85c0
                         {disp8} je       _jmp_addr_0x00891b06                    // 0x00891af0    7414
                         push             eax                                     // 0x00891af2    50
                         call             __strdup                                // 0x00891af3    e8e491f4ff
                         add              esp, 0x04                               // 0x00891af8    83c404
                         {disp8} mov      dword ptr [ebp + 0x00], eax             // 0x00891afb    894500
                         test             eax, eax                                // 0x00891afe    85c0
                         {disp32} je      _jmp_addr_0x00891b9e                    // 0x00891b00    0f8498000000
_jmp_addr_0x00891b06:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891b06    8b4304
                         test             eax, eax                                // 0x00891b09    85c0
                         {disp8} jle      _jmp_addr_0x00891b7c                    // 0x00891b0b    7e6f
                         {disp32} lea     edx, dword ptr [eax * 0x4 + 0x00000000] // 0x00891b0d    8d148500000000
                         push             edx                                     // 0x00891b14    52
                         call             _malloc                                 // 0x00891b15    e8324bf3ff
                         add              esp, 0x04                               // 0x00891b1a    83c404
                         {disp8} mov      dword ptr [ebp + 0x08], eax             // 0x00891b1d    894508
                         test             eax, eax                                // 0x00891b20    85c0
                         {disp8} jne      _jmp_addr_0x00891b41                    // 0x00891b22    751d
                         push             ebp                                     // 0x00891b24    55
                         call             _free                                   // 0x00891b25    e85c4cf3ff
                         {disp8} mov      eax, dword ptr [esp + 0x28]             // 0x00891b2a    8b442428
                         push             eax                                     // 0x00891b2e    50
                         call             _free                                   // 0x00891b2f    e8524cf3ff
                         add              esp, 0x08                               // 0x00891b34    83c408
                         xor.s            eax, eax                                // 0x00891b37    33c0
                         pop              edi                                     // 0x00891b39    5f
                         pop              esi                                     // 0x00891b3a    5e
                         pop              ebp                                     // 0x00891b3b    5d
                         pop              ebx                                     // 0x00891b3c    5b
                         add              esp, 0x18                               // 0x00891b3d    83c418
                         ret                                                      // 0x00891b40    c3
_jmp_addr_0x00891b41:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891b41    8b4304
                         xor.s            esi, esi                                // 0x00891b44    33f6
                         test             eax, eax                                // 0x00891b46    85c0
                         {disp8} jle      _jmp_addr_0x00891b7c                    // 0x00891b48    7e32
_jmp_addr_0x00891b4a:    {disp8} mov      ecx, dword ptr [ebx + 0x08]             // 0x00891b4a    8b4b08
                         mov              eax, dword ptr [ecx + esi * 0x4]        // 0x00891b4d    8b04b1
                         test             eax, eax                                // 0x00891b50    85c0
                         {disp8} jne      _jmp_addr_0x00891b5c                    // 0x00891b52    7508
                         {disp8} mov      edx, dword ptr [ebp + 0x08]             // 0x00891b54    8b5508
                         mov              dword ptr [edx + esi * 0x4], eax        // 0x00891b57    8904b2
                         {disp8} jmp      _jmp_addr_0x00891b74                    // 0x00891b5a    eb18
_jmp_addr_0x00891b5c:    push             eax                                     // 0x00891b5c    50
                         call             __strdup                                // 0x00891b5d    e87a91f4ff
                         {disp8} mov      ecx, dword ptr [ebp + 0x08]             // 0x00891b62    8b4d08
                         add              esp, 0x04                               // 0x00891b65    83c404
                         mov              dword ptr [ecx + esi * 0x4], eax        // 0x00891b68    8904b1
                         {disp8} mov      edx, dword ptr [ebp + 0x08]             // 0x00891b6b    8b5508
                         cmp              dword ptr [edx + esi * 0x4], 0x00       // 0x00891b6e    833cb200
                         {disp8} je       _jmp_addr_0x00891bbb                    // 0x00891b72    7447
_jmp_addr_0x00891b74:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891b74    8b4304
                         inc              esi                                     // 0x00891b77    46
                         cmp.s            esi, eax                                // 0x00891b78    3bf0
                         {disp8} jl       _jmp_addr_0x00891b4a                    // 0x00891b7a    7cce
_jmp_addr_0x00891b7c:    {disp8} mov      eax, dword ptr [ebx + 0x04]             // 0x00891b7c    8b4304
                         test             eax, eax                                // 0x00891b7f    85c0
                         {disp32} jle     _jmp_addr_0x00891c0b                    // 0x00891b81    0f8e84000000
                         {disp32} lea     esi, dword ptr [eax * 0x4 + 0x00000000] // 0x00891b87    8d348500000000
                         push             esi                                     // 0x00891b8e    56
                         call             _malloc                                 // 0x00891b8f    e8b84af3ff
                         add              esp, 0x04                               // 0x00891b94    83c404
                         {disp8} mov      dword ptr [ebp + 0x0c], eax             // 0x00891b97    89450c
                         test             eax, eax                                // 0x00891b9a    85c0
                         {disp8} jne      _jmp_addr_0x00891bf6                    // 0x00891b9c    7558
_jmp_addr_0x00891b9e:    push             ebp                                     // 0x00891b9e    55
_jmp_addr_0x00891b9f:    call             _free                                   // 0x00891b9f    e8e24bf3ff
                         {disp8} mov      ecx, dword ptr [esp + 0x28]             // 0x00891ba4    8b4c2428
                         push             ecx                                     // 0x00891ba8    51
                         call             _free                                   // 0x00891ba9    e8d84bf3ff
                         add              esp, 0x08                               // 0x00891bae    83c408
_jmp_addr_0x00891bb1:    pop              edi                                     // 0x00891bb1    5f
                         pop              esi                                     // 0x00891bb2    5e
                         pop              ebp                                     // 0x00891bb3    5d
                         xor.s            eax, eax                                // 0x00891bb4    33c0
                         pop              ebx                                     // 0x00891bb6    5b
                         add              esp, 0x18                               // 0x00891bb7    83c418
                         ret                                                      // 0x00891bba    c3
_jmp_addr_0x00891bbb:    dec              esi                                     // 0x00891bbb    4e
                         {disp8} js       _jmp_addr_0x00891bd0                    // 0x00891bbc    7812
_jmp_addr_0x00891bbe:    {disp8} mov      eax, dword ptr [ebp + 0x08]             // 0x00891bbe    8b4508
                         mov              ecx, dword ptr [eax + esi * 0x4]        // 0x00891bc1    8b0cb0
                         push             ecx                                     // 0x00891bc4    51
                         call             _free                                   // 0x00891bc5    e8bc4bf3ff
                         add              esp, 0x04                               // 0x00891bca    83c404
                         dec              esi                                     // 0x00891bcd    4e
                         {disp8} jns      _jmp_addr_0x00891bbe                    // 0x00891bce    79ee
_jmp_addr_0x00891bd0:    {disp8} mov      edx, dword ptr [ebp + 0x08]             // 0x00891bd0    8b5508
                         push             edx                                     // 0x00891bd3    52
                         call             _free                                   // 0x00891bd4    e8ad4bf3ff
                         push             ebp                                     // 0x00891bd9    55
                         call             _free                                   // 0x00891bda    e8a74bf3ff
                         {disp8} mov      eax, dword ptr [esp + 0x2c]             // 0x00891bdf    8b44242c
                         push             eax                                     // 0x00891be3    50
                         call             _free                                   // 0x00891be4    e89d4bf3ff
                         add              esp, 0x0c                               // 0x00891be9    83c40c
                         xor.s            eax, eax                                // 0x00891bec    33c0
                         pop              edi                                     // 0x00891bee    5f
                         pop              esi                                     // 0x00891bef    5e
                         pop              ebp                                     // 0x00891bf0    5d
                         pop              ebx                                     // 0x00891bf1    5b
                         add              esp, 0x18                               // 0x00891bf2    83c418
                         ret                                                      // 0x00891bf5    c3
_jmp_addr_0x00891bf6:    mov.s            ecx, esi                                // 0x00891bf6    8bce
                         {disp8} mov      esi, dword ptr [ebx + 0x0c]             // 0x00891bf8    8b730c
_jmp_addr_0x00891bfb:    mov.s            edx, ecx                                // 0x00891bfb    8bd1
                         mov.s            edi, eax                                // 0x00891bfd    8bf8
                         shr              ecx, 2                                  // 0x00891bff    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]            // 0x00891c02    f3a5
                         mov.s            ecx, edx                                // 0x00891c04    8bca
                         and              ecx, 0x03                               // 0x00891c06    83e103
                         rep movsb                                                // 0x00891c09    f3a4
_jmp_addr_0x00891c0b:    {disp8} mov      ecx, dword ptr [esp + 0x2c]             // 0x00891c0b    8b4c242c
                         {disp8} lea      eax, dword ptr [esp + 0x10]             // 0x00891c0f    8d442410
                         push             eax                                     // 0x00891c13    50
                         {disp32} mov     edx, dword ptr [ecx + 0x00000390]       // 0x00891c14    8b9190030000
                         push             edx                                     // 0x00891c1a    52
                         call             _jmp_addr_0x00887e70                    // 0x00891c1b    e85062ffff
                         add              esp, 0x08                               // 0x00891c20    83c408
                         mov              eax, 0x00000001                         // 0x00891c23    b801000000
                         pop              edi                                     // 0x00891c28    5f
                         pop              esi                                     // 0x00891c29    5e
                         pop              ebp                                     // 0x00891c2a    5d
                         pop              ebx                                     // 0x00891c2b    5b
                         add              esp, 0x18                               // 0x00891c2c    83c418
                         ret                                                      // 0x00891c2f    c3

// Snippet: jmptbl, [0x00891c30, 0x00891ca0)
.byte 0xf0, 0x11, 0x89, 0x00      // 0x00891c30
.byte 0x17, 0x12, 0x89, 0x00      // 0x00891c34
.byte 0x55, 0x12, 0x89, 0x00      // 0x00891c38
.byte 0x93, 0x12, 0x89, 0x00      // 0x00891c3c
.byte 0xd1, 0x12, 0x89, 0x00      // 0x00891c40
.byte 0x2c, 0x13, 0x89, 0x00      // 0x00891c44
.byte 0x4b, 0x13, 0x89, 0x00      // 0x00891c48
.byte 0x72, 0x13, 0x89, 0x00      // 0x00891c4c
.byte 0xe3, 0x13, 0x89, 0x00      // 0x00891c50
.byte 0x39, 0x14, 0x89, 0x00      // 0x00891c54
.byte 0x74, 0x14, 0x89, 0x00      // 0x00891c58
.byte 0xc4, 0x14, 0x89, 0x00      // 0x00891c5c
.byte 0xf0, 0x11, 0x89, 0x00      // 0x00891c60
.byte 0x0b, 0x1c, 0x89, 0x00      // 0x00891c64
.byte 0xea, 0x14, 0x89, 0x00      // 0x00891c68
.byte 0x25, 0x15, 0x89, 0x00      // 0x00891c6c
.byte 0x8f, 0x16, 0x89, 0x00      // 0x00891c70
.byte 0xcf, 0x16, 0x89, 0x00      // 0x00891c74
.byte 0x0c, 0x17, 0x89, 0x00      // 0x00891c78
.byte 0x77, 0x17, 0x89, 0x00      // 0x00891c7c
.byte 0x9f, 0x17, 0x89, 0x00      // 0x00891c80
.byte 0x71, 0x18, 0x89, 0x00      // 0x00891c84
.byte 0x79, 0x19, 0x89, 0x00      // 0x00891c88
.byte 0xd8, 0x19, 0x89, 0x00      // 0x00891c8c
.byte 0x00, 0x1a, 0x89, 0x00      // 0x00891c90
.byte 0xc8, 0x1a, 0x89, 0x00      // 0x00891c94
.byte 0xd8, 0x19, 0x89, 0x00      // 0x00891c98
.byte 0xe8, 0x1a, 0x89, 0x00      // 0x00891c9c

