.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern _malloc
.extern _free
.extern __strcmpi
.extern _jmp_addr_0x008866c0
.extern _jmp_addr_0x00886780
.extern _jmp_addr_0x00886800
.extern _jmp_addr_0x00887d90
.extern _jmp_addr_0x00887de0
.extern _jmp_addr_0x00887e40
.extern _jmp_addr_0x00887e50
.extern _jmp_addr_0x00887e70
.extern _jmp_addr_0x00888000
.extern _jmp_addr_0x00888080
.extern _jmp_addr_0x0088a8d0
.extern _jmp_addr_0x0088a8e0
.extern _jmp_addr_0x0088a8f0
.extern _jmp_addr_0x0088a910
.extern _jmp_addr_0x008a507e
.extern _jmp_addr_0x008a5096
.extern _jmp_addr_0x008a50a8
.extern _jmp_addr_0x008a50b4
.extern _jmp_addr_0x008a50ba
.extern _jmp_addr_0x008a50c0
.extern _jmp_addr_0x008a50c6
.extern _jmp_addr_0x008a50cc
.extern _jmp_addr_0x008a50d2
.extern _jmp_addr_0x008a50d8
.extern _jmp_addr_0x008a50f0
.extern _jmp_addr_0x008a50f6

.globl _jmp_addr_0x00897740
.globl _jmp_addr_0x00897940
.globl _jmp_addr_0x008979a0
.globl _jmp_addr_0x00898290

start_0x00897550_0x00898390:
// Snippet: asm, [0x00897550, 0x00898390)
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00897550    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00897554    8b4c2408
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x00897558    8b15a0fdfb00
                         push               esi                                           // 0x0089755e    56
                         mov                esi, dword ptr [eax]                          // 0x0089755f    8b30
                         mov                eax, dword ptr [ecx]                          // 0x00897561    8b01
                         {disp32} mov       ecx, dword ptr [edx + 0x00000080]             // 0x00897563    8b8a80000000
                         push               edi                                           // 0x00897569    57
                         push               0x0                                           // 0x0089756a    6a00
                         push               ecx                                           // 0x0089756c    51
                         push               eax                                           // 0x0089756d    50
                         call               _jmp_addr_0x00886780                          // 0x0089756e    e80df2feff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x00897573    8b15a0fdfb00
                         mov.s              edi, eax                                      // 0x00897579    8bf8
                         push               0x0                                           // 0x0089757b    6a00
                         {disp32} mov       eax, dword ptr [edx + 0x00000080]             // 0x0089757d    8b8280000000
                         push               eax                                           // 0x00897583    50
                         push               esi                                           // 0x00897584    56
                         call               _jmp_addr_0x00886780                          // 0x00897585    e8f6f1feff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5f9da0]        // 0x0089758a    8b0da0fdfb00
                         add                esp, 0x18                                     // 0x00897590    83c418
                         sub.s              eax, edi                                      // 0x00897593    2bc7
                         {disp32} mov       edx, dword ptr [ecx + 0x00000084]             // 0x00897595    8b9184000000
                         pop                edi                                           // 0x0089759b    5f
                         test               edx, edx                                      // 0x0089759c    85d2
                         pop                esi                                           // 0x0089759e    5e
                         {disp8} jne        _jmp_addr_0x008975a3                          // 0x0089759f    7502
                         neg                eax                                           // 0x008975a1    f7d8
_jmp_addr_0x008975a3:    ret                                                              // 0x008975a3    c3
                         nop                                                              // 0x008975a4    90
                         nop                                                              // 0x008975a5    90
                         nop                                                              // 0x008975a6    90
                         nop                                                              // 0x008975a7    90
                         nop                                                              // 0x008975a8    90
                         nop                                                              // 0x008975a9    90
                         nop                                                              // 0x008975aa    90
                         nop                                                              // 0x008975ab    90
                         nop                                                              // 0x008975ac    90
                         nop                                                              // 0x008975ad    90
                         nop                                                              // 0x008975ae    90
                         nop                                                              // 0x008975af    90
                         sub                esp, 0x08                                     // 0x008975b0    83ec08
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x008975b3    8b4c2410
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x008975b7    8b15a0fdfb00
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x008975bd    8b44240c
                         push               esi                                           // 0x008975c1    56
                         mov                esi, dword ptr [ecx]                          // 0x008975c2    8b31
                         {disp32} mov       ecx, dword ptr [edx + 0x00000080]             // 0x008975c4    8b8a80000000
                         mov                eax, dword ptr [eax]                          // 0x008975ca    8b00
                         push               0x0                                           // 0x008975cc    6a00
                         push               0x0                                           // 0x008975ce    6a00
                         push               ecx                                           // 0x008975d0    51
                         push               eax                                           // 0x008975d1    50
                         call               _jmp_addr_0x00886800                          // 0x008975d2    e829f2feff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x008975d7    8b15a0fdfb00
                         push               0x0                                           // 0x008975dd    6a00
                         {disp8} fstp       qword ptr [esp + 0x18]                        // 0x008975df    dd5c2418
                         {disp32} mov       eax, dword ptr [edx + 0x00000080]             // 0x008975e3    8b8280000000
                         push               0x0                                           // 0x008975e9    6a00
                         push               eax                                           // 0x008975eb    50
                         push               esi                                           // 0x008975ec    56
                         call               _jmp_addr_0x00886800                          // 0x008975ed    e80ef2feff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5f9da0]        // 0x008975f2    8b0da0fdfb00
                         add                esp, 0x20                                     // 0x008975f8    83c420
                         {disp8} fsubr      qword ptr [esp + 0x04]                        // 0x008975fb    dc6c2404
                         {disp32} mov       eax, dword ptr [ecx + 0x00000084]             // 0x008975ff    8b8184000000
                         pop                esi                                           // 0x00897605    5e
                         test               eax, eax                                      // 0x00897606    85c0
                         {disp8} jne        _jmp_addr_0x0089760c                          // 0x00897608    7502
                         fchs                                                             // 0x0089760a    d9e0
_jmp_addr_0x0089760c:    {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0089760c    d81598a38a00
                         fnstsw             ax                                            // 0x00897612    dfe0
                         test               ah, 0x41                                      // 0x00897614    f6c441
                         {disp8} jne        _jmp_addr_0x00897624                          // 0x00897617    750b
                         fstp               st(0)                                         // 0x00897619    ddd8
                         mov                eax, 0x00000001                               // 0x0089761b    b801000000
                         add                esp, 0x08                                     // 0x00897620    83c408
                         ret                                                              // 0x00897623    c3
_jmp_addr_0x00897624:    {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00897624    d81d98a38a00
                         fnstsw             ax                                            // 0x0089762a    dfe0
                         test               ah, 0x01                                      // 0x0089762c    f6c401
                         {disp8} je         _jmp_addr_0x00897638                          // 0x0089762f    7407
                         or                 eax, -0x1                                     // 0x00897631    83c8ff
                         add                esp, 0x08                                     // 0x00897634    83c408
                         ret                                                              // 0x00897637    c3
_jmp_addr_0x00897638:    xor.s              eax, eax                                      // 0x00897638    33c0
                         add                esp, 0x08                                     // 0x0089763a    83c408
                         ret                                                              // 0x0089763d    c3
                         nop                                                              // 0x0089763e    90
                         nop                                                              // 0x0089763f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00897640    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00897644    8b4c2408
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x00897648    8b15a0fdfb00
                         push               ebx                                           // 0x0089764e    53
                         push               esi                                           // 0x0089764f    56
                         push               edi                                           // 0x00897650    57
                         mov                edi, dword ptr [eax]                          // 0x00897651    8b38
                         mov                eax, dword ptr [ecx]                          // 0x00897653    8b01
                         {disp32} mov       ecx, dword ptr [edx + 0x00000080]             // 0x00897655    8b8a80000000
                         push               0x00c58370                                    // 0x0089765b    687083c500
                         push               ecx                                           // 0x00897660    51
                         push               eax                                           // 0x00897661    50
                         call               _jmp_addr_0x008866c0                          // 0x00897662    e859f0feff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x00897667    8b15a0fdfb00
                         mov.s              esi, eax                                      // 0x0089766d    8bf0
                         push               0x00c58370                                    // 0x0089766f    687083c500
                         {disp32} mov       eax, dword ptr [edx + 0x00000080]             // 0x00897674    8b8280000000
                         push               eax                                           // 0x0089767a    50
                         push               edi                                           // 0x0089767b    57
                         call               _jmp_addr_0x008866c0                          // 0x0089767c    e83ff0feff
                         add                esp, 0x18                                     // 0x00897681    83c418
_jmp_addr_0x00897684:    mov                dl, byte ptr [eax]                            // 0x00897684    8a10
                         mov                bl, byte ptr [esi]                            // 0x00897686    8a1e
                         mov.s              cl, dl                                        // 0x00897688    8aca
                         cmp.s              dl, bl                                        // 0x0089768a    3ad3
                         {disp8} jne        _jmp_addr_0x008976ac                          // 0x0089768c    751e
                         test               cl, cl                                        // 0x0089768e    84c9
                         {disp8} je         _jmp_addr_0x008976a8                          // 0x00897690    7416
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00897692    8a5001
                         {disp8} mov        bl, byte ptr [esi + 0x01]                     // 0x00897695    8a5e01
                         mov.s              cl, dl                                        // 0x00897698    8aca
                         cmp.s              dl, bl                                        // 0x0089769a    3ad3
                         {disp8} jne        _jmp_addr_0x008976ac                          // 0x0089769c    750e
                         add                eax, 0x02                                     // 0x0089769e    83c002
                         add                esi, 0x02                                     // 0x008976a1    83c602
                         test               cl, cl                                        // 0x008976a4    84c9
                         {disp8} jne        _jmp_addr_0x00897684                          // 0x008976a6    75dc
_jmp_addr_0x008976a8:    xor.s              eax, eax                                      // 0x008976a8    33c0
                         {disp8} jmp        _jmp_addr_0x008976b1                          // 0x008976aa    eb05
_jmp_addr_0x008976ac:    sbb.s              eax, eax                                      // 0x008976ac    1bc0
                         sbb                eax, -0x01                                    // 0x008976ae    83d8ff
_jmp_addr_0x008976b1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5f9da0]        // 0x008976b1    8b0da0fdfb00
                         pop                edi                                           // 0x008976b7    5f
                         pop                esi                                           // 0x008976b8    5e
                         pop                ebx                                           // 0x008976b9    5b
                         {disp32} mov       edx, dword ptr [ecx + 0x00000084]             // 0x008976ba    8b9184000000
                         test               edx, edx                                      // 0x008976c0    85d2
                         {disp8} jne        _jmp_addr_0x008976c6                          // 0x008976c2    7502
                         neg                eax                                           // 0x008976c4    f7d8
_jmp_addr_0x008976c6:    ret                                                              // 0x008976c6    c3
                         nop                                                              // 0x008976c7    90
                         nop                                                              // 0x008976c8    90
                         nop                                                              // 0x008976c9    90
                         nop                                                              // 0x008976ca    90
                         nop                                                              // 0x008976cb    90
                         nop                                                              // 0x008976cc    90
                         nop                                                              // 0x008976cd    90
                         nop                                                              // 0x008976ce    90
                         nop                                                              // 0x008976cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008976d0    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x008976d4    8b4c2408
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x008976d8    8b15a0fdfb00
                         push               esi                                           // 0x008976de    56
                         mov                esi, dword ptr [eax]                          // 0x008976df    8b30
                         mov                eax, dword ptr [ecx]                          // 0x008976e1    8b01
                         {disp32} mov       ecx, dword ptr [edx + 0x00000080]             // 0x008976e3    8b8a80000000
                         push               0x00c58370                                    // 0x008976e9    687083c500
                         push               ecx                                           // 0x008976ee    51
                         push               eax                                           // 0x008976ef    50
                         call               _jmp_addr_0x008866c0                          // 0x008976f0    e8cbeffeff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5f9da0]        // 0x008976f5    8b15a0fdfb00
                         add                esp, 0x0c                                     // 0x008976fb    83c40c
                         push               eax                                           // 0x008976fe    50
                         {disp32} mov       eax, dword ptr [edx + 0x00000080]             // 0x008976ff    8b8280000000
                         push               0x00c58370                                    // 0x00897705    687083c500
                         push               eax                                           // 0x0089770a    50
                         push               esi                                           // 0x0089770b    56
                         call               _jmp_addr_0x008866c0                          // 0x0089770c    e8afeffeff
                         add                esp, 0x0c                                     // 0x00897711    83c40c
                         push               eax                                           // 0x00897714    50
                         call               __strcmpi                                     // 0x00897715    e8c6f5f2ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5f9da0]        // 0x0089771a    8b0da0fdfb00
                         add                esp, 0x08                                     // 0x00897720    83c408
                         {disp32} mov       edx, dword ptr [ecx + 0x00000084]             // 0x00897723    8b9184000000
                         pop                esi                                           // 0x00897729    5e
                         test               edx, edx                                      // 0x0089772a    85d2
                         {disp8} jne        _jmp_addr_0x00897730                          // 0x0089772c    7502
                         neg                eax                                           // 0x0089772e    f7d8
_jmp_addr_0x00897730:    ret                                                              // 0x00897730    c3
                         nop                                                              // 0x00897731    90
                         nop                                                              // 0x00897732    90
                         nop                                                              // 0x00897733    90
                         nop                                                              // 0x00897734    90
                         nop                                                              // 0x00897735    90
                         nop                                                              // 0x00897736    90
                         nop                                                              // 0x00897737    90
                         nop                                                              // 0x00897738    90
                         nop                                                              // 0x00897739    90
                         nop                                                              // 0x0089773a    90
                         nop                                                              // 0x0089773b    90
                         nop                                                              // 0x0089773c    90
                         nop                                                              // 0x0089773d    90
                         nop                                                              // 0x0089773e    90
                         nop                                                              // 0x0089773f    90
_jmp_addr_0x00897740:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67f0]        // 0x00897740    a1f0c7fa00
                         push               esi                                           // 0x00897745    56
                         test               eax, eax                                      // 0x00897746    85c0
                         push               edi                                           // 0x00897748    57
                         {disp8} je         _jmp_addr_0x00897750                          // 0x00897749    7405
                         pop                edi                                           // 0x0089774b    5f
                         xor.s              eax, eax                                      // 0x0089774c    33c0
                         pop                esi                                           // 0x0089774e    5e
                         ret                                                              // 0x0089774f    c3
_jmp_addr_0x00897750:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00897750    8b7c240c
                         test               edi, edi                                      // 0x00897754    85ff
                         {disp8} je         _jmp_addr_0x0089775f                          // 0x00897756    7407
                         cmp                byte ptr [edi], 0x00                          // 0x00897758    803f00
                         {disp8} jne        _jmp_addr_0x0089775f                          // 0x0089775b    7502
                         xor.s              edi, edi                                      // 0x0089775d    33ff
_jmp_addr_0x0089775f:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0089775f    8b4c2418
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00897763    8b742410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00897767    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0089776b    8b54241c
                         {disp32} mov       dword ptr [data_bytes + 0x5e67c8], ecx        // 0x0089776f    890dc8c7fa00
                         xor.s              ecx, ecx                                      // 0x00897775    33c9
                         test               si, si                                        // 0x00897777    6685f6
                         {disp32} mov       dword ptr [data_bytes + 0x5e67e8], eax        // 0x0089777a    a3e8c7fa00
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0089777f    8b442420
                         push               0x0                                           // 0x00897783    6a00
                         push               0x0                                           // 0x00897785    6a00
                         setne              cl                                            // 0x00897787    0f95c1
                         push               0x20                                          // 0x0089778a    6a20
                         {disp32} mov       dword ptr [data_bytes + 0x5e67ec], edx        // 0x0089778c    8915ecc7fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5e67d8], eax        // 0x00897792    a3d8c7fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5e67e4], 0x00000000 // 0x00897797    c705e4c7fa0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x5e67e0], ecx        // 0x008977a1    890de0c7fa00
                         {disp32} mov       word ptr [data_bytes + 0x5e67d4], 0x0001      // 0x008977a7    66c705d4c7fa000100
                         {disp32} mov       dword ptr [data_bytes + 0x5e67dc], 0x00000000 // 0x008977b0    c705dcc7fa0000000000
                         call               _jmp_addr_0x00887d90                          // 0x008977ba    e8d105ffff
                         add                esp, 0x0c                                     // 0x008977bf    83c40c
                         {disp32} mov       dword ptr [data_bytes + 0x5e67d0], eax        // 0x008977c2    a3d0c7fa00
                         test               eax, eax                                      // 0x008977c7    85c0
                         {disp8} jne        _jmp_addr_0x008977ce                          // 0x008977c9    7503
                         pop                edi                                           // 0x008977cb    5f
                         pop                esi                                           // 0x008977cc    5e
                         ret                                                              // 0x008977cd    c3
_jmp_addr_0x008977ce:    push               0x0                                           // 0x008977ce    6a00
                         push               0x0                                           // 0x008977d0    6a00
                         push               0x1c                                          // 0x008977d2    6a1c
                         call               _jmp_addr_0x00887d90                          // 0x008977d4    e8b705ffff
                         add                esp, 0x0c                                     // 0x008977d9    83c40c
                         {disp32} mov       dword ptr [data_bytes + 0x5e67cc], eax        // 0x008977dc    a3ccc7fa00
                         test               eax, eax                                      // 0x008977e1    85c0
                         {disp8} jne        _jmp_addr_0x008977f9                          // 0x008977e3    7514
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e67d0]        // 0x008977e5    8b15d0c7fa00
                         push               edx                                           // 0x008977eb    52
                         call               _jmp_addr_0x00887de0                          // 0x008977ec    e8ef05ffff
                         add                esp, 0x04                                     // 0x008977f1    83c404
                         xor.s              eax, eax                                      // 0x008977f4    33c0
                         pop                edi                                           // 0x008977f6    5f
                         pop                esi                                           // 0x008977f7    5e
                         ret                                                              // 0x008977f8    c3
_jmp_addr_0x008977f9:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67e0]        // 0x008977f9    a1e0c7fa00
                         test               eax, eax                                      // 0x008977fe    85c0
                         {disp8} je         _jmp_addr_0x0089784e                          // 0x00897800    744c
                         push               esi                                           // 0x00897802    56
                         push               edi                                           // 0x00897803    57
                         call               _jmp_addr_0x00897860                          // 0x00897804    e857000000
                         add                esp, 0x08                                     // 0x00897809    83c408
                         test               eax, eax                                      // 0x0089780c    85c0
                         {disp8} jne        _jmp_addr_0x0089784e                          // 0x0089780e    753e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x274e7c]        // 0x00897810    a17caec300
                         cmp                eax, -0x01                                    // 0x00897815    83f8ff
                         {disp8} je         _jmp_addr_0x0089782a                          // 0x00897818    7410
                         push               eax                                           // 0x0089781a    50
                         call               _jmp_WSOCK32_DLL__Ordinal_3                   // 0x0089781b    e8a6d80000
                         {disp32} mov       dword ptr [data_bytes + 0x274e7c], 0xffffffff // 0x00897820    c7057caec300ffffffff
_jmp_addr_0x0089782a:    call               _jmp_addr_0x0088a910                          // 0x0089782a    e8e130ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d0]        // 0x0089782f    a1d0c7fa00
                         push               eax                                           // 0x00897834    50
                         call               _jmp_addr_0x00887de0                          // 0x00897835    e8a605ffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67cc]        // 0x0089783a    8b0dccc7fa00
                         push               ecx                                           // 0x00897840    51
                         call               _jmp_addr_0x00887de0                          // 0x00897841    e89a05ffff
                         add                esp, 0x08                                     // 0x00897846    83c408
                         xor.s              eax, eax                                      // 0x00897849    33c0
                         pop                edi                                           // 0x0089784b    5f
                         pop                esi                                           // 0x0089784c    5e
                         ret                                                              // 0x0089784d    c3
_jmp_addr_0x0089784e:    pop                edi                                           // 0x0089784e    5f
                         {disp32} mov       dword ptr [data_bytes + 0x5e67f0], 0x00000001 // 0x0089784f    c705f0c7fa0001000000
                         mov                eax, 0x00000001                               // 0x00897859    b801000000
                         pop                esi                                           // 0x0089785e    5e
                         ret                                                              // 0x0089785f    c3
_jmp_addr_0x00897860:    sub                esp, 0x14                                     // 0x00897860    83ec14
                         push               esi                                           // 0x00897863    56
                         call               _jmp_addr_0x0088a8f0                          // 0x00897864    e88730ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00897869    8b4c2420
                         xor.s              eax, eax                                      // 0x0089786d    33c0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0089786f    89442408
                         push               ecx                                           // 0x00897873    51
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00897874    89442410
                         {disp8} mov        word ptr [esp + 0x0c], 0x0002                 // 0x00897878    66c744240c0200
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0089787f    89442414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00897883    89442418
                         call               _jmp_WSOCK32_DLL__Ordinal_9                   // 0x00897887    e846d80000
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x0089788c    8b74241c
                         {disp8} mov        word ptr [esp + 0x0a], ax                     // 0x00897890    668944240a
                         test               esi, esi                                      // 0x00897895    85f6
                         {disp8} je         _jmp_addr_0x008978c0                          // 0x00897897    7427
                         push               esi                                           // 0x00897899    56
                         call               _jmp_WSOCK32_DLL__Ordinal_10                  // 0x0089789a    e8dfd70000
                         cmp                eax, -0x01                                    // 0x0089789f    83f8ff
                         {disp8} jne        _jmp_addr_0x008978ba                          // 0x008978a2    7516
                         push               esi                                           // 0x008978a4    56
                         call               _jmp_WSOCK32_DLL__Ordinal_52                  // 0x008978a5    e822d80000
                         test               eax, eax                                      // 0x008978aa    85c0
                         {disp8} jne        _jmp_addr_0x008978b3                          // 0x008978ac    7505
                         pop                esi                                           // 0x008978ae    5e
                         add                esp, 0x14                                     // 0x008978af    83c414
                         ret                                                              // 0x008978b2    c3
_jmp_addr_0x008978b3:    {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x008978b3    8b500c
                         mov                eax, dword ptr [edx]                          // 0x008978b6    8b02
                         mov                eax, dword ptr [eax]                          // 0x008978b8    8b00
_jmp_addr_0x008978ba:    {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x008978ba    8944240c
                         {disp8} jmp        _jmp_addr_0x008978c8                          // 0x008978be    eb08
_jmp_addr_0x008978c0:    {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x008978c0    c744240c00000000
_jmp_addr_0x008978c8:    push               0x11                                          // 0x008978c8    6a11
                         push               0x2                                           // 0x008978ca    6a02
                         push               0x2                                           // 0x008978cc    6a02
                         call               _jmp_WSOCK32_DLL__Ordinal_23                  // 0x008978ce    e8e1d70000
                         cmp                eax, -0x01                                    // 0x008978d3    83f8ff
                         {disp32} mov       dword ptr [data_bytes + 0x274e7c], eax        // 0x008978d6    a37caec300
                         {disp8} jne        _jmp_addr_0x008978e9                          // 0x008978db    750c
                         call               _jmp_WSOCK32_DLL__Ordinal_111                 // 0x008978dd    e814d80000
                         xor.s              eax, eax                                      // 0x008978e2    33c0
                         pop                esi                                           // 0x008978e4    5e
                         add                esp, 0x14                                     // 0x008978e5    83c414
                         ret                                                              // 0x008978e8    c3
_jmp_addr_0x008978e9:    {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x008978e9    8d4c2404
                         push               0x4                                           // 0x008978ed    6a04
                         push               ecx                                           // 0x008978ef    51
                         push               0x4                                           // 0x008978f0    6a04
                         push               0x0000ffff                                    // 0x008978f2    68ffff0000
                         push               eax                                           // 0x008978f7    50
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000001            // 0x008978f8    c744241801000000
                         call               _jmp_WSOCK32_DLL__Ordinal_21                  // 0x00897900    e891d70000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x274e7c]        // 0x00897905    a17caec300
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0089790a    8d542408
                         push               0x10                                          // 0x0089790e    6a10
                         push               edx                                           // 0x00897910    52
                         push               eax                                           // 0x00897911    50
                         call               _jmp_WSOCK32_DLL__Ordinal_2                   // 0x00897912    e891d70000
                         cmp                eax, -0x01                                    // 0x00897917    83f8ff
                         {disp8} jne        _jmp_addr_0x00897928                          // 0x0089791a    750c
                         call               _jmp_WSOCK32_DLL__Ordinal_111                 // 0x0089791c    e8d5d70000
                         xor.s              eax, eax                                      // 0x00897921    33c0
                         pop                esi                                           // 0x00897923    5e
                         add                esp, 0x14                                     // 0x00897924    83c414
                         ret                                                              // 0x00897927    c3
_jmp_addr_0x00897928:    mov                eax, 0x00000001                               // 0x00897928    b801000000
                         pop                esi                                           // 0x0089792d    5e
                         add                esp, 0x14                                     // 0x0089792e    83c414
                         ret                                                              // 0x00897931    c3
                         nop                                                              // 0x00897932    90
                         nop                                                              // 0x00897933    90
                         nop                                                              // 0x00897934    90
                         nop                                                              // 0x00897935    90
                         nop                                                              // 0x00897936    90
                         nop                                                              // 0x00897937    90
                         nop                                                              // 0x00897938    90
                         nop                                                              // 0x00897939    90
                         nop                                                              // 0x0089793a    90
                         nop                                                              // 0x0089793b    90
                         nop                                                              // 0x0089793c    90
                         nop                                                              // 0x0089793d    90
                         nop                                                              // 0x0089793e    90
                         nop                                                              // 0x0089793f    90
_jmp_addr_0x00897940:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67f0]        // 0x00897940    a1f0c7fa00
                         test               eax, eax                                      // 0x00897945    85c0
                         {disp8} je         _jmp_addr_0x00897995                          // 0x00897947    744c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67e4]        // 0x00897949    a1e4c7fa00
                         test               eax, eax                                      // 0x0089794e    85c0
                         {disp8} jne        _jmp_addr_0x00897995                          // 0x00897950    7543
                         {disp32} mov       eax, dword ptr [data_bytes + 0x274e7c]        // 0x00897952    a17caec300
                         cmp                eax, -0x01                                    // 0x00897957    83f8ff
                         {disp8} je         _jmp_addr_0x0089796c                          // 0x0089795a    7410
                         push               eax                                           // 0x0089795c    50
                         call               _jmp_WSOCK32_DLL__Ordinal_3                   // 0x0089795d    e864d70000
                         {disp32} mov       dword ptr [data_bytes + 0x274e7c], 0xffffffff // 0x00897962    c7057caec300ffffffff
_jmp_addr_0x0089796c:    call               _jmp_addr_0x0088a910                          // 0x0089796c    e89f2fffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d0]        // 0x00897971    a1d0c7fa00
                         push               eax                                           // 0x00897976    50
                         call               _jmp_addr_0x00887de0                          // 0x00897977    e86404ffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67cc]        // 0x0089797c    8b0dccc7fa00
                         push               ecx                                           // 0x00897982    51
                         call               _jmp_addr_0x00887de0                          // 0x00897983    e85804ffff
                         add                esp, 0x08                                     // 0x00897988    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x5e67f0], 0x00000000 // 0x0089798b    c705f0c7fa0000000000
_jmp_addr_0x00897995:    ret                                                              // 0x00897995    c3
                         nop                                                              // 0x00897996    90
                         nop                                                              // 0x00897997    90
                         nop                                                              // 0x00897998    90
                         nop                                                              // 0x00897999    90
                         nop                                                              // 0x0089799a    90
                         nop                                                              // 0x0089799b    90
                         nop                                                              // 0x0089799c    90
                         nop                                                              // 0x0089799d    90
                         nop                                                              // 0x0089799e    90
                         nop                                                              // 0x0089799f    90
_jmp_addr_0x008979a0:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67f0]        // 0x008979a0    a1f0c7fa00
                         test               eax, eax                                      // 0x008979a5    85c0
                         {disp8} je         _jmp_addr_0x008979c1                          // 0x008979a7    7418
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67e4]        // 0x008979a9    a1e4c7fa00
                         test               eax, eax                                      // 0x008979ae    85c0
                         {disp8} jne        _jmp_addr_0x008979c1                          // 0x008979b0    750f
                         call               _jmp_addr_0x00897a60                          // 0x008979b2    e8a9000000
                         call               _jmp_addr_0x00898210                          // 0x008979b7    e854080000
                         {disp32} jmp       _jmp_addr_0x008979d0                          // 0x008979bc    e90f000000
_jmp_addr_0x008979c1:    ret                                                              // 0x008979c1    c3
                         nop                                                              // 0x008979c2    90
                         nop                                                              // 0x008979c3    90
                         nop                                                              // 0x008979c4    90
                         nop                                                              // 0x008979c5    90
                         nop                                                              // 0x008979c6    90
                         nop                                                              // 0x008979c7    90
                         nop                                                              // 0x008979c8    90
                         nop                                                              // 0x008979c9    90
                         nop                                                              // 0x008979ca    90
                         nop                                                              // 0x008979cb    90
                         nop                                                              // 0x008979cc    90
                         nop                                                              // 0x008979cd    90
                         nop                                                              // 0x008979ce    90
                         nop                                                              // 0x008979cf    90
_jmp_addr_0x008979d0:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67cc]        // 0x008979d0    a1ccc7fa00
                         sub                esp, 0x1c                                     // 0x008979d5    83ec1c
                         push               esi                                           // 0x008979d8    56
                         push               edi                                           // 0x008979d9    57
                         push               eax                                           // 0x008979da    50
                         call               _jmp_addr_0x00887e40                          // 0x008979db    e86004ffff
                         add                esp, 0x04                                     // 0x008979e0    83c404
                         test               eax, eax                                      // 0x008979e3    85c0
                         {disp8} jle        _jmp_addr_0x00897a52                          // 0x008979e5    7e6b
_jmp_addr_0x008979e7:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67cc]        // 0x008979e7    8b0dccc7fa00
                         push               0x0                                           // 0x008979ed    6a00
                         push               ecx                                           // 0x008979ef    51
                         call               _jmp_addr_0x00887e50                          // 0x008979f0    e85b04ffff
                         add                esp, 0x08                                     // 0x008979f5    83c408
                         test               eax, eax                                      // 0x008979f8    85c0
                         {disp8} je         _jmp_addr_0x00897a52                          // 0x008979fa    7456
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e67cc]        // 0x008979fc    8b15ccc7fa00
                         mov                ecx, 0x00000007                               // 0x00897a02    b907000000
                         mov.s              esi, eax                                      // 0x00897a07    8bf0
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x00897a09    8d7c2408
                         push               0x0                                           // 0x00897a0d    6a00
                         push               edx                                           // 0x00897a0f    52
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00897a10    f3a5
                         call               _jmp_addr_0x00888000                          // 0x00897a12    e8e905ffff
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00897a17    8b442424
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00897a1b    8b4c2420
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00897a1f    8b74241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00897a23    8b542418
                         push               eax                                           // 0x00897a27    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00897a28    8b442418
                         push               ecx                                           // 0x00897a2c    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00897a2d    8b4c2418
                         push               esi                                           // 0x00897a31    56
                         push               edx                                           // 0x00897a32    52
                         push               eax                                           // 0x00897a33    50
                         push               ecx                                           // 0x00897a34    51
                         call               dword ptr [esp + 0x40]                        // 0x00897a35    ff542440
                         push               esi                                           // 0x00897a39    56
                         call               _free                                         // 0x00897a3a    e847edf2ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e67cc]        // 0x00897a3f    8b15ccc7fa00
                         push               edx                                           // 0x00897a45    52
                         call               _jmp_addr_0x00887e40                          // 0x00897a46    e8f503ffff
                         add                esp, 0x28                                     // 0x00897a4b    83c428
                         test               eax, eax                                      // 0x00897a4e    85c0
                         {disp8} jg         _jmp_addr_0x008979e7                          // 0x00897a50    7f95
_jmp_addr_0x00897a52:    pop                edi                                           // 0x00897a52    5f
                         pop                esi                                           // 0x00897a53    5e
                         add                esp, 0x1c                                     // 0x00897a54    83c41c
                         ret                                                              // 0x00897a57    c3
                         nop                                                              // 0x00897a58    90
                         nop                                                              // 0x00897a59    90
                         nop                                                              // 0x00897a5a    90
                         nop                                                              // 0x00897a5b    90
                         nop                                                              // 0x00897a5c    90
                         nop                                                              // 0x00897a5d    90
                         nop                                                              // 0x00897a5e    90
                         nop                                                              // 0x00897a5f    90
_jmp_addr_0x00897a60:    sub                esp, 0x58                                     // 0x00897a60    83ec58
                         push               esi                                           // 0x00897a63    56
_jmp_addr_0x00897a64:    push               0x0                                           // 0x00897a64    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00897a66    8d442408
                         push               0x0                                           // 0x00897a6a    6a00
                         push               eax                                           // 0x00897a6c    50
                         call               _jmp_addr_0x00897b20                          // 0x00897a6d    e8ae000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00897a72    8b442410
                         add                esp, 0x0c                                     // 0x00897a76    83c40c
                         test               eax, eax                                      // 0x00897a79    85c0
                         {disp8} je         _jmp_addr_0x00897af6                          // 0x00897a7b    7479
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00897a7d    8d4c2408
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00897a81    8d542414
                         push               ecx                                           // 0x00897a85    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x274e7c]        // 0x00897a86    8b0d7caec300
                         push               edx                                           // 0x00897a8c    52
                         push               0x0                                           // 0x00897a8d    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x00897a8f    8d442448
                         push               0x20                                          // 0x00897a93    6a20
                         push               eax                                           // 0x00897a95    50
                         push               ecx                                           // 0x00897a96    51
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000010            // 0x00897a97    c744242010000000
                         call               _jmp_WSOCK32_DLL__Ordinal_17                  // 0x00897a9f    e816d60000
                         cmp                eax, -0x01                                    // 0x00897aa4    83f8ff
                         {disp8} jne        _jmp_addr_0x00897ab7                          // 0x00897aa7    750e
                         call               _jmp_WSOCK32_DLL__Ordinal_111                 // 0x00897aa9    e848d60000
                         cmp                eax, 0x00002738                               // 0x00897aae    3d38270000
                         {disp8} jne        _jmp_addr_0x00897b15                          // 0x00897ab3    7560
                         {disp8} jmp        _jmp_addr_0x00897abc                          // 0x00897ab5    eb05
_jmp_addr_0x00897ab7:    cmp                eax, 0x20                                     // 0x00897ab7    83f820
                         {disp8} jl         _jmp_addr_0x00897b15                          // 0x00897aba    7c59
_jmp_addr_0x00897abc:    call               _jmp_addr_0x0088a8d0                          // 0x00897abc    e80f2effff
                         mov.s              esi, eax                                      // 0x00897ac1    8bf0
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x00897ac3    8d542424
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00897ac7    8d44240c
                         push               edx                                           // 0x00897acb    52
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00897acc    8d4c2440
                         push               eax                                           // 0x00897ad0    50
                         push               ecx                                           // 0x00897ad1    51
                         call               _jmp_addr_0x00897c70                          // 0x00897ad2    e899010000
                         add                esp, 0x0c                                     // 0x00897ad7    83c40c
                         test               eax, eax                                      // 0x00897ada    85c0
                         {disp8} je         _jmp_addr_0x00897af6                          // 0x00897adc    7418
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00897ade    8d542414
                         push               esi                                           // 0x00897ae2    56
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00897ae3    8d442428
                         push               edx                                           // 0x00897ae7    52
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00897ae8    8d4c2414
                         push               eax                                           // 0x00897aec    50
                         push               ecx                                           // 0x00897aed    51
                         call               _jmp_addr_0x00897cf0                          // 0x00897aee    e8fd010000
                         add                esp, 0x10                                     // 0x00897af3    83c410
_jmp_addr_0x00897af6:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67f0]        // 0x00897af6    a1f0c7fa00
                         test               eax, eax                                      // 0x00897afb    85c0
                         {disp8} je         _jmp_addr_0x00897b0b                          // 0x00897afd    740c
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00897aff    8b442404
                         test               eax, eax                                      // 0x00897b03    85c0
                         {disp32} jne       _jmp_addr_0x00897a64                          // 0x00897b05    0f8559ffffff
_jmp_addr_0x00897b0b:    call               _jmp_addr_0x0088a8d0                          // 0x00897b0b    e8c02dffff
                         {disp32} mov       dword ptr [data_bytes + 0x5e67dc], eax        // 0x00897b10    a3dcc7fa00
_jmp_addr_0x00897b15:    pop                esi                                           // 0x00897b15    5e
                         add                esp, 0x58                                     // 0x00897b16    83c458
                         ret                                                              // 0x00897b19    c3
                         nop                                                              // 0x00897b1a    90
                         nop                                                              // 0x00897b1b    90
                         nop                                                              // 0x00897b1c    90
                         nop                                                              // 0x00897b1d    90
                         nop                                                              // 0x00897b1e    90
                         nop                                                              // 0x00897b1f    90
_jmp_addr_0x00897b20:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00897b20    8b442404
                         sub                esp, 0x00000314                               // 0x00897b24    81ec14030000
                         xor.s              edx, edx                                      // 0x00897b2a    33d2
                         push               ebx                                           // 0x00897b2c    53
                         push               ebp                                           // 0x00897b2d    55
                         push               esi                                           // 0x00897b2e    56
                         cmp.s              eax, edx                                      // 0x00897b2f    3bc2
                         {disp32} mov       eax, dword ptr [data_bytes + 0x274e7c]        // 0x00897b31    a17caec300
                         push               edi                                           // 0x00897b36    57
                         {disp8} je         _jmp_addr_0x00897b4c                          // 0x00897b37    7413
                         mov                ecx, 0x00000001                               // 0x00897b39    b901000000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00897b3e    8944241c
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00897b42    894c2418
                         {disp8} lea        edi, dword ptr [esp + 0x18]                   // 0x00897b46    8d7c2418
                         {disp8} jmp        _jmp_addr_0x00897b53                          // 0x00897b4a    eb07
_jmp_addr_0x00897b4c:    xor.s              edi, edi                                      // 0x00897b4c    33ff
                         mov                ecx, 0x00000001                               // 0x00897b4e    b901000000
_jmp_addr_0x00897b53:    cmp                dword ptr [esp + 0x0000032c], edx             // 0x00897b53    3994242c030000
                         {disp8} je         _jmp_addr_0x00897b73                          // 0x00897b5a    7417
                         {disp32} mov       dword ptr [esp + 0x00000120], eax             // 0x00897b5c    89842420010000
                         {disp32} mov       dword ptr [esp + 0x0000011c], ecx             // 0x00897b63    898c241c010000
                         {disp32} lea       ebx, dword ptr [esp + 0x0000011c]             // 0x00897b6a    8d9c241c010000
                         {disp8} jmp        _jmp_addr_0x00897b75                          // 0x00897b71    eb02
_jmp_addr_0x00897b73:    xor.s              ebx, ebx                                      // 0x00897b73    33db
_jmp_addr_0x00897b75:    cmp                dword ptr [esp + 0x00000330], edx             // 0x00897b75    39942430030000
                         {disp8} je         _jmp_addr_0x00897b95                          // 0x00897b7c    7417
                         {disp32} mov       dword ptr [esp + 0x00000224], eax             // 0x00897b7e    89842424020000
                         {disp32} mov       dword ptr [esp + 0x00000220], ecx             // 0x00897b85    898c2420020000
                         {disp32} lea       ebp, dword ptr [esp + 0x00000220]             // 0x00897b8c    8dac2420020000
                         {disp8} jmp        _jmp_addr_0x00897b97                          // 0x00897b93    eb02
_jmp_addr_0x00897b95:    xor.s              ebp, ebp                                      // 0x00897b95    33ed
_jmp_addr_0x00897b97:    {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00897b97    8d442410
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00897b9b    89542410
                         push               eax                                           // 0x00897b9f    50
                         push               ebp                                           // 0x00897ba0    55
                         push               ebx                                           // 0x00897ba1    53
                         push               edi                                           // 0x00897ba2    57
                         push               0x40                                          // 0x00897ba3    6a40
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00897ba5    89542428
                         call               _jmp_WSOCK32_DLL__Ordinal_18                  // 0x00897ba9    e812d50000
                         mov.s              esi, eax                                      // 0x00897bae    8bf0
                         cmp                esi, -0x01                                    // 0x00897bb0    83feff
                         {disp32} je        _jmp_addr_0x00897c5a                          // 0x00897bb3    0f84a1000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000328]             // 0x00897bb9    8b842428030000
                         test               eax, eax                                      // 0x00897bc0    85c0
                         {disp8} je         _jmp_addr_0x00897bf5                          // 0x00897bc2    7431
                         test               esi, esi                                      // 0x00897bc4    85f6
                         {disp8} jle        _jmp_addr_0x00897be8                          // 0x00897bc6    7e20
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x274e7c]        // 0x00897bc8    8b0d7caec300
                         push               edi                                           // 0x00897bce    57
                         push               ecx                                           // 0x00897bcf    51
                         call               _jmp_WSOCK32_DLL__Ordinal_151                 // 0x00897bd0    e81bd50000
                         test               eax, eax                                      // 0x00897bd5    85c0
                         {disp8} je         _jmp_addr_0x00897be8                          // 0x00897bd7    740f
                         {disp32} mov       edx, dword ptr [esp + 0x00000328]             // 0x00897bd9    8b942428030000
                         mov                dword ptr [edx], 0x00000001                   // 0x00897be0    c70201000000
                         {disp8} jmp        _jmp_addr_0x00897bf5                          // 0x00897be6    eb0d
_jmp_addr_0x00897be8:    {disp32} mov       eax, dword ptr [esp + 0x00000328]             // 0x00897be8    8b842428030000
                         mov                dword ptr [eax], 0x00000000                   // 0x00897bef    c70000000000
_jmp_addr_0x00897bf5:    {disp32} mov       edi, dword ptr [esp + 0x0000032c]             // 0x00897bf5    8bbc242c030000
                         test               edi, edi                                      // 0x00897bfc    85ff
                         {disp8} je         _jmp_addr_0x00897c23                          // 0x00897bfe    7423
                         test               esi, esi                                      // 0x00897c00    85f6
                         {disp8} jle        _jmp_addr_0x00897c1d                          // 0x00897c02    7e19
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x274e7c]        // 0x00897c04    8b0d7caec300
                         push               ebx                                           // 0x00897c0a    53
                         push               ecx                                           // 0x00897c0b    51
                         call               _jmp_WSOCK32_DLL__Ordinal_151                 // 0x00897c0c    e8dfd40000
                         test               eax, eax                                      // 0x00897c11    85c0
                         {disp8} je         _jmp_addr_0x00897c1d                          // 0x00897c13    7408
                         mov                dword ptr [edi], 0x00000001                   // 0x00897c15    c70701000000
                         {disp8} jmp        _jmp_addr_0x00897c23                          // 0x00897c1b    eb06
_jmp_addr_0x00897c1d:    mov                dword ptr [edi], 0x00000000                   // 0x00897c1d    c70700000000
_jmp_addr_0x00897c23:    {disp32} mov       edi, dword ptr [esp + 0x00000330]             // 0x00897c23    8bbc2430030000
                         test               edi, edi                                      // 0x00897c2a    85ff
                         {disp8} je         _jmp_addr_0x00897c5a                          // 0x00897c2c    742c
                         test               esi, esi                                      // 0x00897c2e    85f6
                         {disp8} jle        _jmp_addr_0x00897c54                          // 0x00897c30    7e22
                         {disp32} mov       edx, dword ptr [data_bytes + 0x274e7c]        // 0x00897c32    8b157caec300
                         push               ebp                                           // 0x00897c38    55
                         push               edx                                           // 0x00897c39    52
                         call               _jmp_WSOCK32_DLL__Ordinal_151                 // 0x00897c3a    e8b1d40000
                         test               eax, eax                                      // 0x00897c3f    85c0
                         {disp8} je         _jmp_addr_0x00897c54                          // 0x00897c41    7411
                         mov                dword ptr [edi], 0x00000001                   // 0x00897c43    c70701000000
                         pop                edi                                           // 0x00897c49    5f
                         pop                esi                                           // 0x00897c4a    5e
                         pop                ebp                                           // 0x00897c4b    5d
                         pop                ebx                                           // 0x00897c4c    5b
                         add                esp, 0x00000314                               // 0x00897c4d    81c414030000
                         ret                                                              // 0x00897c53    c3
_jmp_addr_0x00897c54:    mov                dword ptr [edi], 0x00000000                   // 0x00897c54    c70700000000
_jmp_addr_0x00897c5a:    pop                edi                                           // 0x00897c5a    5f
                         pop                esi                                           // 0x00897c5b    5e
                         pop                ebp                                           // 0x00897c5c    5d
                         pop                ebx                                           // 0x00897c5d    5b
                         add                esp, 0x00000314                               // 0x00897c5e    81c414030000
                         ret                                                              // 0x00897c64    c3
                         nop                                                              // 0x00897c65    90
                         nop                                                              // 0x00897c66    90
                         nop                                                              // 0x00897c67    90
                         nop                                                              // 0x00897c68    90
                         nop                                                              // 0x00897c69    90
                         nop                                                              // 0x00897c6a    90
                         nop                                                              // 0x00897c6b    90
                         nop                                                              // 0x00897c6c    90
                         nop                                                              // 0x00897c6d    90
                         nop                                                              // 0x00897c6e    90
                         nop                                                              // 0x00897c6f    90
_jmp_addr_0x00897c70:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00897c70    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00897c74    8b4c2408
                         mov                dl, byte ptr [eax]                            // 0x00897c78    8a10
                         inc                eax                                           // 0x00897c7a    40
                         mov                byte ptr [ecx], dl                            // 0x00897c7b    8811
                         mov                dl, byte ptr [eax]                            // 0x00897c7d    8a10
                         inc                eax                                           // 0x00897c7f    40
                         {disp8} mov        byte ptr [ecx + 0x01], dl                     // 0x00897c80    885101
                         xor.s              edx, edx                                      // 0x00897c83    33d2
                         mov                dh, byte ptr [eax]                            // 0x00897c85    8a30
                         inc                eax                                           // 0x00897c87    40
                         {disp8} mov        word ptr [ecx + 0x02], dx                     // 0x00897c88    66895102
                         movzx              dx, byte ptr [eax]                            // 0x00897c8c    660fb610
                         or                 word ptr [ecx + 2], dx                        // 0x00897c90    66095102
                         inc                eax                                           // 0x00897c94    40
                         xor.s              edx, edx                                      // 0x00897c95    33d2
                         mov                dh, byte ptr [eax]                            // 0x00897c97    8a30
                         inc                eax                                           // 0x00897c99    40
                         {disp8} mov        word ptr [ecx + 0x04], dx                     // 0x00897c9a    66895104
                         movzx              dx, byte ptr [eax]                            // 0x00897c9e    660fb610
                         or                 word ptr [ecx + 4], dx                        // 0x00897ca2    66095104
                         inc                eax                                           // 0x00897ca6    40
                         xor.s              edx, edx                                      // 0x00897ca7    33d2
                         mov                dh, byte ptr [eax]                            // 0x00897ca9    8a30
                         inc                eax                                           // 0x00897cab    40
                         {disp8} mov        word ptr [ecx + 0x06], dx                     // 0x00897cac    66895106
                         movzx              dx, byte ptr [eax]                            // 0x00897cb0    660fb610
                         or                 word ptr [ecx + 6], dx                        // 0x00897cb4    66095106
                         mov                dl, byte ptr [ecx]                            // 0x00897cb8    8a11
                         cmp                dl, -0x6f                                     // 0x00897cba    80fa91
                         {disp8} jne        _jmp_addr_0x00897ced                          // 0x00897cbd    752e
                         cmp                byte ptr [ecx + 0x01], 0x01                   // 0x00897cbf    80790101
                         {disp8} jne        _jmp_addr_0x00897ced                          // 0x00897cc3    7528
                         {disp8} mov        cx, word ptr [ecx + 0x02]                     // 0x00897cc5    668b4902
                         cmp                cx, 0x01                                      // 0x00897cc9    6683f901
                         .byte              0x72, 0x1e// {disp8} jb _jmp_addr_0x00897ced  // 0x00897ccd    721e
                         cmp                cx, 0x03                                      // 0x00897ccf    6683f903
                         {disp8} ja         _jmp_addr_0x00897ced                          // 0x00897cd3    7718
                         push               esi                                           // 0x00897cd5    56
                         push               edi                                           // 0x00897cd6    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00897cd7    8b7c2414
                         {disp8} lea        esi, dword ptr [eax + 0x01]                   // 0x00897cdb    8d7001
                         mov                ecx, 0x00000006                               // 0x00897cde    b906000000
                         mov                eax, 0x00000001                               // 0x00897ce3    b801000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00897ce8    f3a5
                         pop                edi                                           // 0x00897cea    5f
                         pop                esi                                           // 0x00897ceb    5e
                         ret                                                              // 0x00897cec    c3
_jmp_addr_0x00897ced:    xor.s              eax, eax                                      // 0x00897ced    33c0
                         ret                                                              // 0x00897cef    c3
_jmp_addr_0x00897cf0:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00897cf0    8b4c2404
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00897cf4    668b4102
                         cmp                ax, 0x0001                                    // 0x00897cf8    663d0100
                         {disp8} jne        _jmp_addr_0x00897d17                          // 0x00897cfc    7519
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00897cfe    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00897d02    8b54240c
                         push               eax                                           // 0x00897d06    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00897d07    8b44240c
                         push               edx                                           // 0x00897d0b    52
                         push               eax                                           // 0x00897d0c    50
                         push               ecx                                           // 0x00897d0d    51
                         call               _jmp_addr_0x00897d60                          // 0x00897d0e    e84d000000
                         add                esp, 0x10                                     // 0x00897d13    83c410
                         ret                                                              // 0x00897d16    c3
_jmp_addr_0x00897d17:    cmp                ax, 0x0002                                    // 0x00897d17    663d0200
                         {disp8} jne        _jmp_addr_0x00897d36                          // 0x00897d1b    7519
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00897d1d    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00897d21    8b44240c
                         push               edx                                           // 0x00897d25    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00897d26    8b54240c
                         push               eax                                           // 0x00897d2a    50
                         push               edx                                           // 0x00897d2b    52
                         push               ecx                                           // 0x00897d2c    51
                         call               _jmp_addr_0x00897f60                          // 0x00897d2d    e82e020000
                         add                esp, 0x10                                     // 0x00897d32    83c410
                         ret                                                              // 0x00897d35    c3
_jmp_addr_0x00897d36:    cmp                ax, 0x0003                                    // 0x00897d36    663d0300
                         {disp8} jne        _jmp_addr_0x00897d54                          // 0x00897d3a    7518
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00897d3c    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00897d40    8b54240c
                         push               eax                                           // 0x00897d44    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00897d45    8b44240c
                         push               edx                                           // 0x00897d49    52
                         push               eax                                           // 0x00897d4a    50
                         push               ecx                                           // 0x00897d4b    51
                         call               _jmp_addr_0x00898190                          // 0x00897d4c    e83f040000
                         add                esp, 0x10                                     // 0x00897d51    83c410
_jmp_addr_0x00897d54:    ret                                                              // 0x00897d54    c3
                         nop                                                              // 0x00897d55    90
                         nop                                                              // 0x00897d56    90
                         nop                                                              // 0x00897d57    90
                         nop                                                              // 0x00897d58    90
                         nop                                                              // 0x00897d59    90
                         nop                                                              // 0x00897d5a    90
                         nop                                                              // 0x00897d5b    90
                         nop                                                              // 0x00897d5c    90
                         nop                                                              // 0x00897d5d    90
                         nop                                                              // 0x00897d5e    90
                         nop                                                              // 0x00897d5f    90
_jmp_addr_0x00897d60:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00897d60    8b442404
                         sub                esp, 0x38                                     // 0x00897d64    83ec38
                         push               ebx                                           // 0x00897d67    53
                         push               ebp                                           // 0x00897d68    55
                         xor.s              ebp, ebp                                      // 0x00897d69    33ed
                         push               esi                                           // 0x00897d6b    56
                         cmp                word ptr [eax + 0x04], bp                     // 0x00897d6c    66396804
                         {disp32} je        _jmp_addr_0x00897e4b                          // 0x00897d70    0f84d5000000
                         cmp                word ptr [eax + 0x06], bp                     // 0x00897d76    66396806
                         {disp32} jne       _jmp_addr_0x00897e4b                          // 0x00897d7a    0f85cb000000
                         cmp                dword ptr [data_bytes + 0x5e67e8], ebp        // 0x00897d80    392de8c7fa00
                         {disp8} je         _jmp_addr_0x00897d91                          // 0x00897d86    7409
                         call               _jmp_addr_0x00897e60                          // 0x00897d88    e8d3000000
                         mov.s              ebx, eax                                      // 0x00897d8d    8bd8
                         {disp8} jmp        _jmp_addr_0x00897d93                          // 0x00897d8f    eb02
_jmp_addr_0x00897d91:    xor.s              ebx, ebx                                      // 0x00897d91    33db
_jmp_addr_0x00897d93:    {disp8} mov        esi, dword ptr [esp + 0x50]                   // 0x00897d93    8b742450
                         push               edi                                           // 0x00897d97    57
                         mov                ecx, 0x00000006                               // 0x00897d98    b906000000
                         xor.s              eax, eax                                      // 0x00897d9d    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x00897d9f    8d7c2410
                         rep stosd                                                        // 0x00897da3    f3ab
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67ec]        // 0x00897da5    a1ecc7fa00
                         pop                edi                                           // 0x00897daa    5f
                         cmp.s              eax, ebp                                      // 0x00897dab    3bc5
                         {disp8} je         _jmp_addr_0x00897ddb                          // 0x00897dad    742c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67d8]        // 0x00897daf    8b0dd8c7fa00
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00897db5    8d54240c
                         push               ecx                                           // 0x00897db9    51
                         {disp32} mov       dword ptr [data_bytes + 0x5e67e4], 0x00000001 // 0x00897dba    c705e4c7fa0001000000
                         {disp8} mov        cx, word ptr [esi + 0x02]                     // 0x00897dc4    668b4e02
                         push               0x18                                          // 0x00897dc8    6a18
                         push               edx                                           // 0x00897dca    52
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x00897dcb    8b5604
                         push               ecx                                           // 0x00897dce    51
                         push               edx                                           // 0x00897dcf    52
                         call               eax                                           // 0x00897dd0    ffd0
                         add                esp, 0x14                                     // 0x00897dd2    83c414
                         {disp32} mov       dword ptr [data_bytes + 0x5e67e4], ebp        // 0x00897dd5    892de4c7fa00
_jmp_addr_0x00897ddb:    {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x00897ddb    8b4c2448
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00897ddf    8d44240c
                         push               eax                                           // 0x00897de3    50
                         push               ebx                                           // 0x00897de4    53
                         {disp8} mov        dx, word ptr [ecx + 0x04]                     // 0x00897de5    668b5104
                         push               edx                                           // 0x00897de9    52
                         push               0x2                                           // 0x00897dea    6a02
                         push               esi                                           // 0x00897dec    56
                         call               _jmp_addr_0x00897e80                          // 0x00897ded    e88e000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67e8]        // 0x00897df2    a1e8c7fa00
                         add                esp, 0x14                                     // 0x00897df7    83c414
                         cmp.s              eax, ebp                                      // 0x00897dfa    3bc5
                         {disp8} je         _jmp_addr_0x00897e4b                          // 0x00897dfc    744d
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x00897dfe    896c2424
                         {disp8} mov        word ptr [esp + 0x28], bx                     // 0x00897e02    66895c2428
                         {disp8} mov        word ptr [esp + 0x2a], 0x0003                 // 0x00897e07    66c744242a0300
                         call               _jmp_addr_0x0088a8d0                          // 0x00897e0e    e8bd2affff
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00897e13    8944242c
                         {disp8} mov        cx, word ptr [esi + 0x02]                     // 0x00897e17    668b4e02
                         add                eax, 0x00002710                               // 0x00897e1b    0510270000
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x00897e20    8d542424
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00897e24    89442430
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00897e28    8b4604
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00897e2b    89442434
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d0]        // 0x00897e2f    a1d0c7fa00
                         push               edx                                           // 0x00897e34    52
                         push               eax                                           // 0x00897e35    50
                         {disp8} mov        word ptr [esp + 0x40], cx                     // 0x00897e36    66894c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x00897e3b    896c2444
                         {disp8} mov        dword ptr [esp + 0x48], ebp                   // 0x00897e3f    896c2448
                         call               _jmp_addr_0x00887e70                          // 0x00897e43    e82800ffff
                         add                esp, 0x08                                     // 0x00897e48    83c408
_jmp_addr_0x00897e4b:    pop                esi                                           // 0x00897e4b    5e
                         pop                ebp                                           // 0x00897e4c    5d
                         pop                ebx                                           // 0x00897e4d    5b
                         add                esp, 0x38                                     // 0x00897e4e    83c438
                         ret                                                              // 0x00897e51    c3
                         nop                                                              // 0x00897e52    90
                         nop                                                              // 0x00897e53    90
                         nop                                                              // 0x00897e54    90
                         nop                                                              // 0x00897e55    90
                         nop                                                              // 0x00897e56    90
                         nop                                                              // 0x00897e57    90
                         nop                                                              // 0x00897e58    90
                         nop                                                              // 0x00897e59    90
                         nop                                                              // 0x00897e5a    90
                         nop                                                              // 0x00897e5b    90
                         nop                                                              // 0x00897e5c    90
                         nop                                                              // 0x00897e5d    90
                         nop                                                              // 0x00897e5e    90
                         nop                                                              // 0x00897e5f    90
_jmp_addr_0x00897e60:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d4]        // 0x00897e60    a1d4c7fa00
                         cmp                ax, -0x0001                                   // 0x00897e65    663dffff
                         {disp8} jne        _jmp_addr_0x00897e75                          // 0x00897e69    750a
                         {disp32} mov       word ptr [data_bytes + 0x5e67d4], 0x0001      // 0x00897e6b    66c705d4c7fa000100
                         ret                                                              // 0x00897e74    c3
_jmp_addr_0x00897e75:    {disp32} inc       word ptr [data_bytes + 0x5e67d4]              // 0x00897e75    66ff05d4c7fa00
                         ret                                                              // 0x00897e7c    c3
                         nop                                                              // 0x00897e7d    90
                         nop                                                              // 0x00897e7e    90
                         nop                                                              // 0x00897e7f    90
_jmp_addr_0x00897e80:    sub                esp, 0x28                                     // 0x00897e80    83ec28
                         {disp8} mov        ax, word ptr [esp + 0x30]                     // 0x00897e83    668b442430
                         {disp8} mov        cx, word ptr [esp + 0x34]                     // 0x00897e88    668b4c2434
                         {disp8} mov        dx, word ptr [esp + 0x38]                     // 0x00897e8d    668b542438
                         {disp8} mov        word ptr [esp + 0x02], ax                     // 0x00897e92    6689442402
                         push               esi                                           // 0x00897e97    56
                         {disp8} mov        word ptr [esp + 0x08], cx                     // 0x00897e98    66894c2408
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00897e9d    8d44240c
                         push               edi                                           // 0x00897ea1    57
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00897ea2    8d4c2408
                         push               eax                                           // 0x00897ea6    50
                         push               ecx                                           // 0x00897ea7    51
                         {disp8} mov        byte ptr [esp + 0x10], -0x6f                  // 0x00897ea8    c644241091
                         {disp8} mov        byte ptr [esp + 0x11], 0x01                   // 0x00897ead    c644241101
                         {disp8} mov        word ptr [esp + 0x16], dx                     // 0x00897eb2    6689542416
                         call               _jmp_addr_0x00897f20                          // 0x00897eb7    e864000000
                         {disp8} mov        esi, dword ptr [esp + 0x4c]                   // 0x00897ebc    8b74244c
                         add                esp, 0x08                                     // 0x00897ec0    83c408
                         test               esi, esi                                      // 0x00897ec3    85f6
                         mov                ecx, 0x00000006                               // 0x00897ec5    b906000000
                         {disp8} je         _jmp_addr_0x00897ed4                          // 0x00897eca    7408
                         {disp8} lea        edi, dword ptr [esp + 0x18]                   // 0x00897ecc    8d7c2418
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00897ed0    f3a5
                         {disp8} jmp        _jmp_addr_0x00897edc                          // 0x00897ed2    eb08
_jmp_addr_0x00897ed4:    xor.s              eax, eax                                      // 0x00897ed4    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x18]                   // 0x00897ed6    8d7c2418
                         rep stosd                                                        // 0x00897eda    f3ab
_jmp_addr_0x00897edc:    {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00897edc    8b542434
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x274e7c]        // 0x00897ee0    8b0d7caec300
                         push               0x10                                          // 0x00897ee6    6a10
                         push               edx                                           // 0x00897ee8    52
                         push               0x0                                           // 0x00897ee9    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00897eeb    8d44241c
                         push               0x20                                          // 0x00897eef    6a20
                         push               eax                                           // 0x00897ef1    50
                         push               ecx                                           // 0x00897ef2    51
                         call               _jmp_WSOCK32_DLL__Ordinal_20                  // 0x00897ef3    e8e0d10000
                         pop                edi                                           // 0x00897ef8    5f
                         cmp                eax, 0x20                                     // 0x00897ef9    83f820
                         pop                esi                                           // 0x00897efc    5e
                         {disp8} je         _jmp_addr_0x00897f0a                          // 0x00897efd    740b
                         call               _jmp_WSOCK32_DLL__Ordinal_111                 // 0x00897eff    e8f2d10000
                         xor.s              eax, eax                                      // 0x00897f04    33c0
                         add                esp, 0x28                                     // 0x00897f06    83c428
                         ret                                                              // 0x00897f09    c3
_jmp_addr_0x00897f0a:    mov                eax, 0x00000001                               // 0x00897f0a    b801000000
                         add                esp, 0x28                                     // 0x00897f0f    83c428
                         ret                                                              // 0x00897f12    c3
                         nop                                                              // 0x00897f13    90
                         nop                                                              // 0x00897f14    90
                         nop                                                              // 0x00897f15    90
                         nop                                                              // 0x00897f16    90
                         nop                                                              // 0x00897f17    90
                         nop                                                              // 0x00897f18    90
                         nop                                                              // 0x00897f19    90
                         nop                                                              // 0x00897f1a    90
                         nop                                                              // 0x00897f1b    90
                         nop                                                              // 0x00897f1c    90
                         nop                                                              // 0x00897f1d    90
                         nop                                                              // 0x00897f1e    90
                         nop                                                              // 0x00897f1f    90
_jmp_addr_0x00897f20:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00897f20    8b4c2404
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00897f24    8b442408
                         inc                eax                                           // 0x00897f28    40
                         mov                dl, byte ptr [ecx]                            // 0x00897f29    8a11
                         {disp8} mov        byte ptr [eax + -0x01], dl                    // 0x00897f2b    8850ff
                         {disp8} mov        dl, byte ptr [ecx + 0x01]                     // 0x00897f2e    8a5101
                         mov                byte ptr [eax], dl                            // 0x00897f31    8810
                         xor.s              edx, edx                                      // 0x00897f33    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x03]                     // 0x00897f35    8a5103
                         inc                eax                                           // 0x00897f38    40
                         mov                byte ptr [eax], dl                            // 0x00897f39    8810
                         {disp8} mov        dl, byte ptr [ecx + 0x02]                     // 0x00897f3b    8a5102
                         inc                eax                                           // 0x00897f3e    40
                         mov                byte ptr [eax], dl                            // 0x00897f3f    8810
                         xor.s              edx, edx                                      // 0x00897f41    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x05]                     // 0x00897f43    8a5105
                         inc                eax                                           // 0x00897f46    40
                         mov                byte ptr [eax], dl                            // 0x00897f47    8810
                         {disp8} mov        dl, byte ptr [ecx + 0x04]                     // 0x00897f49    8a5104
                         inc                eax                                           // 0x00897f4c    40
                         mov                byte ptr [eax], dl                            // 0x00897f4d    8810
                         xor.s              edx, edx                                      // 0x00897f4f    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x07]                     // 0x00897f51    8a5107
                         inc                eax                                           // 0x00897f54    40
                         mov                byte ptr [eax], dl                            // 0x00897f55    8810
                         {disp8} mov        cl, byte ptr [ecx + 0x06]                     // 0x00897f57    8a4906
                         {disp8} mov        byte ptr [eax + 0x01], cl                     // 0x00897f5a    884801
                         ret                                                              // 0x00897f5d    c3
                         nop                                                              // 0x00897f5e    90
                         nop                                                              // 0x00897f5f    90
_jmp_addr_0x00897f60:    sub                esp, 0x18                                     // 0x00897f60    83ec18
                         push               ebx                                           // 0x00897f63    53
                         push               ebp                                           // 0x00897f64    55
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x00897f65    8b6c2424
                         {disp8} mov        ax, word ptr [ebp + 0x04]                     // 0x00897f69    668b4504
                         test               ax, ax                                        // 0x00897f6d    6685c0
                         {disp32} je        _jmp_addr_0x00898041                          // 0x00897f70    0f84cb000000
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00897f76    8d4c2424
                         push               ecx                                           // 0x00897f7a    51
                         push               eax                                           // 0x00897f7b    50
                         call               _jmp_addr_0x008980e0                          // 0x00897f7c    e85f010000
                         mov.s              ebx, eax                                      // 0x00897f81    8bd8
                         add                esp, 0x08                                     // 0x00897f83    83c408
                         test               ebx, ebx                                      // 0x00897f86    85db
                         {disp32} je        _jmp_addr_0x00898041                          // 0x00897f88    0f84b3000000
                         push               esi                                           // 0x00897f8e    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00897f8f    8b742430
                         push               edi                                           // 0x00897f93    57
                         mov                ecx, 0x00000006                               // 0x00897f94    b906000000
                         xor.s              eax, eax                                      // 0x00897f99    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x00897f9b    8d7c2410
                         rep stosd                                                        // 0x00897f9f    f3ab
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67ec]        // 0x00897fa1    a1ecc7fa00
                         test               eax, eax                                      // 0x00897fa6    85c0
                         {disp8} je         _jmp_addr_0x00897fda                          // 0x00897fa8    7430
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e67d8]        // 0x00897faa    8b15d8c7fa00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00897fb0    8d4c2410
                         push               edx                                           // 0x00897fb4    52
                         {disp32} mov       dword ptr [data_bytes + 0x5e67e4], 0x00000001 // 0x00897fb5    c705e4c7fa0001000000
                         {disp8} mov        dx, word ptr [esi + 0x02]                     // 0x00897fbf    668b5602
                         push               0x18                                          // 0x00897fc3    6a18
                         push               ecx                                           // 0x00897fc5    51
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00897fc6    8b4e04
                         push               edx                                           // 0x00897fc9    52
                         push               ecx                                           // 0x00897fca    51
                         call               eax                                           // 0x00897fcb    ffd0
                         add                esp, 0x14                                     // 0x00897fcd    83c414
                         {disp32} mov       dword ptr [data_bytes + 0x5e67e4], 0x00000000 // 0x00897fd0    c705e4c7fa0000000000
_jmp_addr_0x00897fda:    {disp8} mov        ax, word ptr [ebp + 0x06]                     // 0x00897fda    668b4506
                         test               ax, ax                                        // 0x00897fde    6685c0
                         {disp8} je         _jmp_addr_0x00897ff6                          // 0x00897fe1    7413
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00897fe3    8d542410
                         push               edx                                           // 0x00897fe7    52
                         push               eax                                           // 0x00897fe8    50
                         push               0x0                                           // 0x00897fe9    6a00
                         push               0x3                                           // 0x00897feb    6a03
                         push               esi                                           // 0x00897fed    56
                         call               _jmp_addr_0x00897e80                          // 0x00897fee    e88dfeffff
                         add                esp, 0x14                                     // 0x00897ff3    83c414
_jmp_addr_0x00897ff6:    {disp8} mov        eax, dword ptr [ebx + 0x18]                   // 0x00897ff6    8b4318
                         test               eax, eax                                      // 0x00897ff9    85c0
                         {disp8} je         _jmp_addr_0x0089802c                          // 0x00897ffb    742f
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00897ffd    8b442438
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x00898001    8b4b08
                         push               eax                                           // 0x00898004    50
                         push               ecx                                           // 0x00898005    51
                         call               _jmp_addr_0x00898160                          // 0x00898006    e855010000
                         {disp8} mov        edx, dword ptr [ebx + 0x18]                   // 0x0089800b    8b5318
                         {disp8} mov        ecx, dword ptr [ebx + 0x1c]                   // 0x0089800e    8b4b1c
                         push               edx                                           // 0x00898011    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00898012    8b54243c
                         push               ecx                                           // 0x00898016    51
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00898017    8b4e04
                         push               0x18                                          // 0x0089801a    6a18
                         push               edx                                           // 0x0089801c    52
                         push               eax                                           // 0x0089801d    50
                         {disp8} mov        ax, word ptr [esi + 0x02]                     // 0x0089801e    668b4602
                         push               eax                                           // 0x00898022    50
                         push               ecx                                           // 0x00898023    51
                         call               _jmp_addr_0x00898050                          // 0x00898024    e827000000
                         add                esp, 0x24                                     // 0x00898029    83c424
_jmp_addr_0x0089802c:    {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0089802c    8b54242c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d0]        // 0x00898030    a1d0c7fa00
                         push               edx                                           // 0x00898035    52
                         push               eax                                           // 0x00898036    50
                         call               _jmp_addr_0x00888000                          // 0x00898037    e8c4fffeff
                         add                esp, 0x08                                     // 0x0089803c    83c408
                         pop                edi                                           // 0x0089803f    5f
                         pop                esi                                           // 0x00898040    5e
_jmp_addr_0x00898041:    pop                ebp                                           // 0x00898041    5d
                         pop                ebx                                           // 0x00898042    5b
                         add                esp, 0x18                                     // 0x00898043    83c418
                         ret                                                              // 0x00898046    c3
                         nop                                                              // 0x00898047    90
                         nop                                                              // 0x00898048    90
                         nop                                                              // 0x00898049    90
                         nop                                                              // 0x0089804a    90
                         nop                                                              // 0x0089804b    90
                         nop                                                              // 0x0089804c    90
                         nop                                                              // 0x0089804d    90
                         nop                                                              // 0x0089804e    90
                         nop                                                              // 0x0089804f    90
_jmp_addr_0x00898050:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00898050    8b44241c
                         sub                esp, 0x1c                                     // 0x00898054    83ec1c
                         test               eax, eax                                      // 0x00898057    85c0
                         push               ebx                                           // 0x00898059    53
                         push               esi                                           // 0x0089805a    56
                         {disp8} je         _jmp_addr_0x008980d6                          // 0x0089805b    7479
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0089805d    8b4c2428
                         {disp8} mov        dx, word ptr [esp + 0x2c]                     // 0x00898061    668b54242c
                         {disp8} mov        esi, dword ptr [esp + 0x34]                   // 0x00898066    8b742434
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                   // 0x0089806a    8b5c2438
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0089806e    894c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00898072    8b4c2430
                         {disp8} mov        word ptr [esp + 0x0c], dx                     // 0x00898076    668954240c
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0089807b    8b54243c
                         test               esi, esi                                      // 0x0089807f    85f6
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00898081    894c2410
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x00898085    895c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00898089    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0089808d    89442420
                         {disp8} je         _jmp_addr_0x008980ba                          // 0x00898091    7427
                         push               ebx                                           // 0x00898093    53
                         call               _malloc                                       // 0x00898094    e8b3e5f2ff
                         add                esp, 0x04                                     // 0x00898099    83c404
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0089809c    89442414
                         test               eax, eax                                      // 0x008980a0    85c0
                         {disp8} je         _jmp_addr_0x008980d6                          // 0x008980a2    7432
                         push               edi                                           // 0x008980a4    57
                         mov.s              ecx, ebx                                      // 0x008980a5    8bcb
                         mov.s              edi, eax                                      // 0x008980a7    8bf8
                         mov.s              eax, ecx                                      // 0x008980a9    8bc1
                         shr                ecx, 2                                        // 0x008980ab    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x008980ae    f3a5
                         mov.s              ecx, eax                                      // 0x008980b0    8bc8
                         and                ecx, 0x03                                     // 0x008980b2    83e103
                         rep movsb                                                        // 0x008980b5    f3a4
                         pop                edi                                           // 0x008980b7    5f
                         {disp8} jmp        _jmp_addr_0x008980c2                          // 0x008980b8    eb08
_jmp_addr_0x008980ba:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x008980ba    c744241400000000
_jmp_addr_0x008980c2:    {disp32} mov       edx, dword ptr [data_bytes + 0x5e67cc]        // 0x008980c2    8b15ccc7fa00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x008980c8    8d4c2408
                         push               ecx                                           // 0x008980cc    51
                         push               edx                                           // 0x008980cd    52
                         call               _jmp_addr_0x00887e70                          // 0x008980ce    e89dfdfeff
                         add                esp, 0x08                                     // 0x008980d3    83c408
_jmp_addr_0x008980d6:    pop                esi                                           // 0x008980d6    5e
                         pop                ebx                                           // 0x008980d7    5b
                         add                esp, 0x1c                                     // 0x008980d8    83c41c
                         ret                                                              // 0x008980db    c3
                         nop                                                              // 0x008980dc    90
                         nop                                                              // 0x008980dd    90
                         nop                                                              // 0x008980de    90
                         nop                                                              // 0x008980df    90
_jmp_addr_0x008980e0:    sub                esp, 0x20                                     // 0x008980e0    83ec20
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e67d0]        // 0x008980e3    8b15d0c7fa00
                         {disp8} mov        ax, word ptr [esp + 0x24]                     // 0x008980e9    668b442424
                         push               0x0                                           // 0x008980ee    6a00
                         push               0x0                                           // 0x008980f0    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x008980f2    8d4c2408
                         push               0x00898140                                    // 0x008980f6    6840818900
                         push               ecx                                           // 0x008980fb    51
                         push               edx                                           // 0x008980fc    52
                         {disp8} mov        word ptr [esp + 0x18], ax                     // 0x008980fd    6689442418
                         call               _jmp_addr_0x00888080                          // 0x00898102    e879fffeff
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00898107    8b4c243c
                         add                esp, 0x14                                     // 0x0089810b    83c414
                         test               ecx, ecx                                      // 0x0089810e    85c9
                         {disp8} je         _jmp_addr_0x00898114                          // 0x00898110    7402
                         mov                dword ptr [ecx], eax                          // 0x00898112    8901
_jmp_addr_0x00898114:    cmp                eax, -0x01                                    // 0x00898114    83f8ff
                         {disp8} jne        _jmp_addr_0x0089811f                          // 0x00898117    7506
                         xor.s              eax, eax                                      // 0x00898119    33c0
                         add                esp, 0x20                                     // 0x0089811b    83c420
                         ret                                                              // 0x0089811e    c3
_jmp_addr_0x0089811f:    push               eax                                           // 0x0089811f    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d0]        // 0x00898120    a1d0c7fa00
                         push               eax                                           // 0x00898125    50
                         call               _jmp_addr_0x00887e50                          // 0x00898126    e825fdfeff
                         add                esp, 0x08                                     // 0x0089812b    83c408
                         add                esp, 0x20                                     // 0x0089812e    83c420
                         ret                                                              // 0x00898131    c3
                         nop                                                              // 0x00898132    90
                         nop                                                              // 0x00898133    90
                         nop                                                              // 0x00898134    90
                         nop                                                              // 0x00898135    90
                         nop                                                              // 0x00898136    90
                         nop                                                              // 0x00898137    90
                         nop                                                              // 0x00898138    90
                         nop                                                              // 0x00898139    90
                         nop                                                              // 0x0089813a    90
                         nop                                                              // 0x0089813b    90
                         nop                                                              // 0x0089813c    90
                         nop                                                              // 0x0089813d    90
                         nop                                                              // 0x0089813e    90
                         nop                                                              // 0x0089813f    90
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00898140    8b4c2404
                         xor.s              eax, eax                                      // 0x00898144    33c0
                         xor.s              edx, edx                                      // 0x00898146    33d2
                         {disp8} mov        ax, word ptr [ecx + 0x04]                     // 0x00898148    668b4104
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0089814c    8b4c2408
                         {disp8} mov        dx, word ptr [ecx + 0x04]                     // 0x00898150    668b5104
                         sub.s              eax, edx                                      // 0x00898154    2bc2
                         ret                                                              // 0x00898156    c3
                         nop                                                              // 0x00898157    90
                         nop                                                              // 0x00898158    90
                         nop                                                              // 0x00898159    90
                         nop                                                              // 0x0089815a    90
                         nop                                                              // 0x0089815b    90
                         nop                                                              // 0x0089815c    90
                         nop                                                              // 0x0089815d    90
                         nop                                                              // 0x0089815e    90
                         nop                                                              // 0x0089815f    90
_jmp_addr_0x00898160:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00898160    8b4c2408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00898164    8b542404
                         mov.s              eax, ecx                                      // 0x00898168    8bc1
                         sub.s              eax, edx                                      // 0x0089816a    2bc2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e67dc]        // 0x0089816c    8b15dcc7fa00
                         test               edx, edx                                      // 0x00898172    85d2
                         {disp8} je         _jmp_addr_0x00898180                          // 0x00898174    740a
                         sub.s              ecx, edx                                      // 0x00898176    2bca
                         shr                ecx, 1                                        // 0x00898178    d1e9
                         sub.s              eax, ecx                                      // 0x0089817a    2bc1
                         {disp8} jns        _jmp_addr_0x00898180                          // 0x0089817c    7902
                         xor.s              eax, eax                                      // 0x0089817e    33c0
_jmp_addr_0x00898180:    ret                                                              // 0x00898180    c3
                         nop                                                              // 0x00898181    90
                         nop                                                              // 0x00898182    90
                         nop                                                              // 0x00898183    90
                         nop                                                              // 0x00898184    90
                         nop                                                              // 0x00898185    90
                         nop                                                              // 0x00898186    90
                         nop                                                              // 0x00898187    90
                         nop                                                              // 0x00898188    90
                         nop                                                              // 0x00898189    90
                         nop                                                              // 0x0089818a    90
                         nop                                                              // 0x0089818b    90
                         nop                                                              // 0x0089818c    90
                         nop                                                              // 0x0089818d    90
                         nop                                                              // 0x0089818e    90
                         nop                                                              // 0x0089818f    90
_jmp_addr_0x00898190:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00898190    8b442404
                         cmp                word ptr [eax + 0x04], 0x00                   // 0x00898194    6683780400
                         {disp8} jne        _jmp_addr_0x00898207                          // 0x00898199    756c
                         {disp8} mov        ax, word ptr [eax + 0x06]                     // 0x0089819b    668b4006
                         test               ax, ax                                        // 0x0089819f    6685c0
                         {disp8} je         _jmp_addr_0x00898207                          // 0x008981a2    7463
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x008981a4    8d4c2404
                         push               ecx                                           // 0x008981a8    51
                         push               eax                                           // 0x008981a9    50
                         call               _jmp_addr_0x008980e0                          // 0x008981aa    e831ffffff
                         add                esp, 0x08                                     // 0x008981af    83c408
                         test               eax, eax                                      // 0x008981b2    85c0
                         {disp8} je         _jmp_addr_0x00898207                          // 0x008981b4    7451
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67e8]        // 0x008981b6    8b0de8c7fa00
                         test               ecx, ecx                                      // 0x008981bc    85c9
                         {disp8} je         _jmp_addr_0x008981f3                          // 0x008981be    7433
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x008981c0    8b542410
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x008981c4    8b4008
                         push               edx                                           // 0x008981c7    52
                         push               eax                                           // 0x008981c8    50
                         call               _jmp_addr_0x00898160                          // 0x008981c9    e892ffffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67c8]        // 0x008981ce    8b0dc8c7fa00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x008981d4    8b542410
                         push               ecx                                           // 0x008981d8    51
                         push               0x18                                          // 0x008981d9    6a18
                         push               edx                                           // 0x008981db    52
                         push               eax                                           // 0x008981dc    50
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x008981dd    8b442424
                         {disp8} mov        cx, word ptr [eax + 0x02]                     // 0x008981e1    668b4802
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x008981e5    8b5004
                         push               ecx                                           // 0x008981e8    51
                         push               edx                                           // 0x008981e9    52
                         call               dword ptr [data_bytes + 0x5e67e8]             // 0x008981ea    ff15e8c7fa00
                         add                esp, 0x20                                     // 0x008981f0    83c420
_jmp_addr_0x008981f3:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008981f3    8b442404
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67d0]        // 0x008981f7    8b0dd0c7fa00
                         push               eax                                           // 0x008981fd    50
                         push               ecx                                           // 0x008981fe    51
                         call               _jmp_addr_0x00888000                          // 0x008981ff    e8fcfdfeff
                         add                esp, 0x08                                     // 0x00898204    83c408
_jmp_addr_0x00898207:    ret                                                              // 0x00898207    c3
                         nop                                                              // 0x00898208    90
                         nop                                                              // 0x00898209    90
                         nop                                                              // 0x0089820a    90
                         nop                                                              // 0x0089820b    90
                         nop                                                              // 0x0089820c    90
                         nop                                                              // 0x0089820d    90
                         nop                                                              // 0x0089820e    90
                         nop                                                              // 0x0089820f    90
_jmp_addr_0x00898210:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d0]        // 0x00898210    a1d0c7fa00
                         push               esi                                           // 0x00898215    56
                         push               edi                                           // 0x00898216    57
                         push               eax                                           // 0x00898217    50
                         call               _jmp_addr_0x00887e40                          // 0x00898218    e823fcfeff
                         mov.s              esi, eax                                      // 0x0089821d    8bf0
                         add                esp, 0x04                                     // 0x0089821f    83c404
                         test               esi, esi                                      // 0x00898222    85f6
                         {disp8} je         _jmp_addr_0x0089828b                          // 0x00898224    7465
                         call               _jmp_addr_0x0088a8d0                          // 0x00898226    e8a526ffff
                         dec                esi                                           // 0x0089822b    4e
                         mov.s              edi, eax                                      // 0x0089822c    8bf8
                         test               esi, esi                                      // 0x0089822e    85f6
                         {disp8} jl         _jmp_addr_0x0089828b                          // 0x00898230    7c59
_jmp_addr_0x00898232:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5e67d0]        // 0x00898232    8b0dd0c7fa00
                         push               esi                                           // 0x00898238    56
                         push               ecx                                           // 0x00898239    51
                         call               _jmp_addr_0x00887e50                          // 0x0089823a    e811fcfeff
                         add                esp, 0x08                                     // 0x0089823f    83c408
                         test               eax, eax                                      // 0x00898242    85c0
                         {disp8} je         _jmp_addr_0x00898288                          // 0x00898244    7442
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x00898246    8b480c
                         test               ecx, ecx                                      // 0x00898249    85c9
                         {disp8} je         _jmp_addr_0x00898288                          // 0x0089824b    743b
                         cmp.s              ecx, edi                                      // 0x0089824d    3bcf
                         {disp8} ja         _jmp_addr_0x00898288                          // 0x0089824f    7737
                         cmp                dword ptr [eax], 0x00                         // 0x00898251    833800
                         {disp8} je         _jmp_addr_0x00898279                          // 0x00898254    7423
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x00898256    8b4818
                         test               ecx, ecx                                      // 0x00898259    85c9
                         {disp8} je         _jmp_addr_0x00898279                          // 0x0089825b    741c
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                   // 0x0089825d    8b501c
                         push               ecx                                           // 0x00898260    51
                         {disp8} mov        cx, word ptr [eax + 0x14]                     // 0x00898261    668b4814
                         push               edx                                           // 0x00898265    52
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x00898266    8b5010
                         push               0x0                                           // 0x00898269    6a00
                         push               0x0                                           // 0x0089826b    6a00
                         push               -0x1                                          // 0x0089826d    6aff
                         push               ecx                                           // 0x0089826f    51
                         push               edx                                           // 0x00898270    52
                         call               _jmp_addr_0x00898050                          // 0x00898271    e8dafdffff
                         add                esp, 0x1c                                     // 0x00898276    83c41c
_jmp_addr_0x00898279:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67d0]        // 0x00898279    a1d0c7fa00
                         push               esi                                           // 0x0089827e    56
                         push               eax                                           // 0x0089827f    50
                         call               _jmp_addr_0x00888000                          // 0x00898280    e87bfdfeff
                         add                esp, 0x08                                     // 0x00898285    83c408
_jmp_addr_0x00898288:    dec                esi                                           // 0x00898288    4e
                         {disp8} jns        _jmp_addr_0x00898232                          // 0x00898289    79a7
_jmp_addr_0x0089828b:    pop                edi                                           // 0x0089828b    5f
                         pop                esi                                           // 0x0089828c    5e
                         ret                                                              // 0x0089828d    c3
                         nop                                                              // 0x0089828e    90
                         nop                                                              // 0x0089828f    90
_jmp_addr_0x00898290:    {disp32} mov       eax, dword ptr [data_bytes + 0x5e67e4]        // 0x00898290    a1e4c7fa00
                         sub                esp, 0x30                                     // 0x00898295    83ec30
                         test               eax, eax                                      // 0x00898298    85c0
                         push               esi                                           // 0x0089829a    56
                         {disp32} jne       _jmp_addr_0x00898389                          // 0x0089829b    0f85e8000000
                         xor.s              eax, eax                                      // 0x008982a1    33c0
                         push               ebx                                           // 0x008982a3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x40]                   // 0x008982a4    8b5c2440
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x008982a8    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x008982ac    8944240c
                         push               ebp                                           // 0x008982b0    55
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x008982b1    89442414
                         push               ebx                                           // 0x008982b5    53
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x008982b6    8944241c
                         {disp8} mov        word ptr [esp + 0x10], 0x0002                 // 0x008982ba    66c74424100200
                         call               _jmp_WSOCK32_DLL__Ordinal_9                   // 0x008982c1    e80cce0000
                         {disp8} mov        ebp, dword ptr [esp + 0x40]                   // 0x008982c6    8b6c2440
                         {disp8} mov        word ptr [esp + 0x0e], ax                     // 0x008982ca    668944240e
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x008982cf    896c2410
                         call               _jmp_addr_0x00897e60                          // 0x008982d3    e888fbffff
                         mov.s              esi, eax                                      // 0x008982d8    8bf0
                         push               0x0                                           // 0x008982da    6a00
                         push               0x0                                           // 0x008982dc    6a00
                         push               esi                                           // 0x008982de    56
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x008982df    8d4c2418
                         push               0x1                                           // 0x008982e3    6a01
                         push               ecx                                           // 0x008982e5    51
                         call               _jmp_addr_0x00897e80                          // 0x008982e6    e895fbffff
                         add                esp, 0x14                                     // 0x008982eb    83c414
                         test               eax, eax                                      // 0x008982ee    85c0
                         {disp8} je         _jmp_addr_0x00898350                          // 0x008982f0    745e
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000001            // 0x008982f2    c744241c01000000
                         {disp8} mov        word ptr [esp + 0x20], si                     // 0x008982fa    6689742420
                         {disp8} mov        word ptr [esp + 0x22], 0x0002                 // 0x008982ff    66c74424220200
                         call               _jmp_addr_0x0088a8d0                          // 0x00898306    e8c525ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x0089830b    8b4c2454
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0089830f    89442424
                         test               ecx, ecx                                      // 0x00898313    85c9
                         {disp8} jne        _jmp_addr_0x0089831d                          // 0x00898315    7506
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00898317    894c2428
                         {disp8} jmp        _jmp_addr_0x00898323                          // 0x0089831b    eb06
_jmp_addr_0x0089831d:    add.s              eax, ecx                                      // 0x0089831d    03c1
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0089831f    89442428
_jmp_addr_0x00898323:    {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x00898323    8b542448
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x00898327    8b44244c
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0089832b    89542434
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5e67d0]        // 0x0089832f    8b15d0c7fa00
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00898335    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x00898339    896c242c
                         push               ecx                                           // 0x0089833d    51
                         push               edx                                           // 0x0089833e    52
                         {disp8} mov        word ptr [esp + 0x38], bx                     // 0x0089833f    66895c2438
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00898344    89442440
                         call               _jmp_addr_0x00887e70                          // 0x00898348    e823fbfeff
                         add                esp, 0x08                                     // 0x0089834d    83c408
_jmp_addr_0x00898350:    {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x00898350    8b442450
                         pop                ebp                                           // 0x00898354    5d
                         test               eax, eax                                      // 0x00898355    85c0
                         pop                ebx                                           // 0x00898357    5b
                         {disp8} je         _jmp_addr_0x00898389                          // 0x00898358    742f
                         push               0x0                                           // 0x0089835a    6a00
                         push               esi                                           // 0x0089835c    56
                         call               _jmp_addr_0x008980e0                          // 0x0089835d    e87efdffff
                         add                esp, 0x08                                     // 0x00898362    83c408
                         test               eax, eax                                      // 0x00898365    85c0
                         {disp8} je         _jmp_addr_0x00898384                          // 0x00898367    741b
_jmp_addr_0x00898369:    call               _jmp_addr_0x008979a0                          // 0x00898369    e832f6ffff
                         push               0x1                                           // 0x0089836e    6a01
                         call               _jmp_addr_0x0088a8e0                          // 0x00898370    e86b25ffff
                         push               0x0                                           // 0x00898375    6a00
                         push               esi                                           // 0x00898377    56
                         call               _jmp_addr_0x008980e0                          // 0x00898378    e863fdffff
                         add                esp, 0x0c                                     // 0x0089837d    83c40c
                         test               eax, eax                                      // 0x00898380    85c0
                         {disp8} jne        _jmp_addr_0x00898369                          // 0x00898382    75e5
_jmp_addr_0x00898384:    call               _jmp_addr_0x008979d0                          // 0x00898384    e847f6ffff
_jmp_addr_0x00898389:    pop                esi                                           // 0x00898389    5e
                         add                esp, 0x30                                     // 0x0089838a    83c430
                         ret                                                              // 0x0089838d    c3
                         nop                                                              // 0x0089838e    90
                         nop                                                              // 0x0089838f    90
