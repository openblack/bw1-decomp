.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17
.extern _jmp_addr_0x0060a9f0
.extern ?InitStepsXZ@MobileWallHug@@QAEXXZ
.extern @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12
.extern @find__std__map_pNewCollide_Obj_std_set_pMobileWallHug__FRCPQ210NewCollide3Obj@16
.extern _jmp_addr_0x00611b40
.extern @GetMapChild__6ObjectFRC9MapCoords@12
.extern ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___nw__FUl
.extern @__dt__Q210NewCollide3ObjFv@4

.globl _jmp_addr_0x0060a400
.globl _jmp_addr_0x0060a450
.globl _jmp_addr_0x0060a5e0
.globl ??0CircleHugInfo@@QAE@XZ  
.globl ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ

start_0x0060a400_0x0060a770:
// Snippet: asm, [0x0060a400, 0x0060a746)
_jmp_addr_0x0060a400:    push              ecx                                    // 0x0060a400    51
                         {disp32} mov      eax, dword ptr [data_bytes + 0x378ec8] // 0x0060a401    a1c8eed300
                         test              eax, eax                               // 0x0060a406    85c0
                         {disp8} je        _jmp_addr_0x0060a445                   // 0x0060a408    743b
                         push              esi                                    // 0x0060a40a    56
                         push              edi                                    // 0x0060a40b    57
_jmp_addr_0x0060a40c:    {disp32} mov      eax, dword ptr [data_bytes + 0x378ec0] // 0x0060a40c    a1c0eed300
                         mov               esi, dword ptr [eax]                   // 0x0060a411    8b30
                         {disp8} mov       edi, dword ptr [esi + 0x10]            // 0x0060a413    8b7e10
                         test              edi, edi                               // 0x0060a416    85ff
                         {disp8} je        _jmp_addr_0x0060a42a                   // 0x0060a418    7410
                         mov.s             ecx, edi                               // 0x0060a41a    8bcf
                         call              @__dt__Q210NewCollide3ObjFv@4          // 0x0060a41c    e83f0a2200
                         push              edi                                    // 0x0060a421    57
                         call              ??3@YAXPAX@Z                           // 0x0060a422    e8714a1a00
                         add               esp, 0x04                              // 0x0060a427    83c404
_jmp_addr_0x0060a42a:    push              esi                                    // 0x0060a42a    56
                         {disp8} lea       ecx, dword ptr [esp + 0x0c]            // 0x0060a42b    8d4c240c
                         push              ecx                                    // 0x0060a42f    51
                         mov               ecx, 0x00d3eebc                        // 0x0060a430    b9bceed300
                         call              _jmp_addr_0x00611b40                   // 0x0060a435    e806770000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x378ec8] // 0x0060a43a    a1c8eed300
                         test              eax, eax                               // 0x0060a43f    85c0
                         {disp8} jne       _jmp_addr_0x0060a40c                   // 0x0060a441    75c9
                         pop               edi                                    // 0x0060a443    5f
                         pop               esi                                    // 0x0060a444    5e
_jmp_addr_0x0060a445:    pop               ecx                                    // 0x0060a445    59
                         ret                                                      // 0x0060a446    c3
                         nop                                                      // 0x0060a447    90
                         nop                                                      // 0x0060a448    90
                         nop                                                      // 0x0060a449    90
                         nop                                                      // 0x0060a44a    90
                         nop                                                      // 0x0060a44b    90
                         nop                                                      // 0x0060a44c    90
                         nop                                                      // 0x0060a44d    90
                         nop                                                      // 0x0060a44e    90
                         nop                                                      // 0x0060a44f    90
_jmp_addr_0x0060a450:    sub               esp, 0x14                              // 0x0060a450    83ec14
                         push              ebx                                    // 0x0060a453    53
                         push              ebp                                    // 0x0060a454    55
                         {disp8} mov       ebp, dword ptr [esp + 0x20]            // 0x0060a455    8b6c2420
                         xor.s             ebx, ebx                               // 0x0060a459    33db
                         cmp.s             ebp, ebx                               // 0x0060a45b    3beb
                         push              esi                                    // 0x0060a45d    56
                         push              edi                                    // 0x0060a45e    57
                         {disp8} jne       _jmp_addr_0x0060a489                   // 0x0060a45f    7528
                         {disp8} mov       eax, dword ptr [esp + 0x2c]            // 0x0060a461    8b44242c
                         mov               dword ptr [eax], ebx                   // 0x0060a465    8918
                         {disp8} mov       dword ptr [eax + 0x04], ebx            // 0x0060a467    895804
                         xor.s             edx, edx                               // 0x0060a46a    33d2
                         xor.s             ecx, ecx                               // 0x0060a46c    33c9
                         pop               edi                                    // 0x0060a46e    5f
                         add               eax, 0x08                              // 0x0060a46f    83c008
                         mov               dword ptr [eax], ecx                   // 0x0060a472    8908
                         pop               esi                                    // 0x0060a474    5e
                         {disp8} mov       dword ptr [eax + 0x04], edx            // 0x0060a475    895004
                         mov.s             ecx, edx                               // 0x0060a478    8bca
                         pop               ebp                                    // 0x0060a47a    5d
                         {disp8} mov       dword ptr [esp + 0x14], edx            // 0x0060a47b    89542414
                         {disp8} mov       dword ptr [eax + 0x08], ecx            // 0x0060a47f    894808
                         pop               ebx                                    // 0x0060a482    5b
                         add               esp, 0x14                              // 0x0060a483    83c414
                         ret               0x0008                                 // 0x0060a486    c20800
_jmp_addr_0x0060a489:    {disp8} fld       dword ptr [ebp + 0x00]                 // 0x0060a489    d94500
                         {disp32} fmul     dword ptr [rdata_bytes + 0x3400]       // 0x0060a48c    d80d00c48a00
                         call              _jmp_addr_0x007a1400                   // 0x0060a492    e8696f1900
                         {disp8} fld       dword ptr [ebp + 0x08]                 // 0x0060a497    d94508
                         {disp32} fmul     dword ptr [rdata_bytes + 0x3400]       // 0x0060a49a    d80d00c48a00
                         {disp8} mov       dword ptr [esp + 0x18], eax            // 0x0060a4a0    89442418
                         call              _jmp_addr_0x007a1400                   // 0x0060a4a4    e8576f1900
                         {disp8} mov       esi, dword ptr [esp + 0x2c]            // 0x0060a4a9    8b74242c
                         {disp8} mov       dword ptr [esp + 0x1c], eax            // 0x0060a4ad    8944241c
                         mov               eax, 0x00000001                        // 0x0060a4b1    b801000000
                         {disp8} mov       dword ptr [esp + 0x20], 0x00000000     // 0x0060a4b6    c744242000000000
                         {disp8} mov       dword ptr [esp + 0x28], 0x00000009     // 0x0060a4be    c744242809000000
                         {disp8} mov       dword ptr [esp + 0x14], eax            // 0x0060a4c6    89442414
                         {disp8} mov       dword ptr [esp + 0x10], eax            // 0x0060a4ca    89442410
_jmp_addr_0x0060a4ce:    {disp8} lea       ecx, dword ptr [esp + 0x18]            // 0x0060a4ce    8d4c2418
                         call              ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ  // 0x0060a4d2    e8d98fffff
                         mov.s             edi, eax                               // 0x0060a4d7    8bf8
                         test              edi, edi                               // 0x0060a4d9    85ff
                         {disp8} je        _jmp_addr_0x0060a539                   // 0x0060a4db    745c
_jmp_addr_0x0060a4dd:    mov               edx, dword ptr [edi]                   // 0x0060a4dd    8b17
                         mov.s             ecx, edi                               // 0x0060a4df    8bcf
                         call              dword ptr [edx + 0x858]                // 0x0060a4e1    ff9258080000
                         test              eax, eax                               // 0x0060a4e7    85c0
                         {disp8} je        _jmp_addr_0x0060a523                   // 0x0060a4e9    7438
                         mov               eax, dword ptr [eax]                   // 0x0060a4eb    8b00
                         cmp.s             eax, ebp                               // 0x0060a4ed    3bc5
                         {disp8} jne       _jmp_addr_0x0060a4f8                   // 0x0060a4ef    7507
                         mov.s             ebx, edi                               // 0x0060a4f1    8bdf
                         or                esi, 0xffffffff                        // 0x0060a4f3    83ceff
                         {disp8} jmp       _jmp_addr_0x0060a51b                   // 0x0060a4f6    eb23
_jmp_addr_0x0060a4f8:    {disp8} mov       eax, dword ptr [eax + 0x24]            // 0x0060a4f8    8b4024
                         test              eax, eax                               // 0x0060a4fb    85c0
                         {disp8} je        _jmp_addr_0x0060a51b                   // 0x0060a4fd    741c
                         {disp8} mov       ecx, dword ptr [eax + 0x04]            // 0x0060a4ff    8b4804
                         xor.s             esi, esi                               // 0x0060a502    33f6
                         test              ecx, ecx                               // 0x0060a504    85c9
                         {disp8} jle       _jmp_addr_0x0060a51b                   // 0x0060a506    7e13
                         {disp8} mov       eax, dword ptr [eax + 0x08]            // 0x0060a508    8b4008
_jmp_addr_0x0060a50b:    cmp               dword ptr [eax], ebp                   // 0x0060a50b    3928
                         {disp8} je        _jmp_addr_0x0060a519                   // 0x0060a50d    740a
                         inc               esi                                    // 0x0060a50f    46
                         add               eax, 0x04                              // 0x0060a510    83c004
                         cmp.s             esi, ecx                               // 0x0060a513    3bf1
                         {disp8} jl        _jmp_addr_0x0060a50b                   // 0x0060a515    7cf4
                         {disp8} jmp       _jmp_addr_0x0060a51b                   // 0x0060a517    eb02
_jmp_addr_0x0060a519:    mov.s             ebx, edi                               // 0x0060a519    8bdf
_jmp_addr_0x0060a51b:    test              ebx, ebx                               // 0x0060a51b    85db
                         {disp32} jne      _jmp_addr_0x0060a5ac                   // 0x0060a51d    0f8589000000
_jmp_addr_0x0060a523:    {disp8} lea       eax, dword ptr [esp + 0x18]            // 0x0060a523    8d442418
                         push              eax                                    // 0x0060a527    50
                         mov.s             ecx, edi                               // 0x0060a528    8bcf
                         call              @GetMapChild__6ObjectFRC9MapCoords@12  // 0x0060a52a    e831e00200
                         mov.s             edi, eax                               // 0x0060a52f    8bf8
                         test              edi, edi                               // 0x0060a531    85ff
                         {disp8} jne       _jmp_addr_0x0060a4dd                   // 0x0060a533    75a8
                         test              ebx, ebx                               // 0x0060a535    85db
                         {disp8} jne       _jmp_addr_0x0060a5ac                   // 0x0060a537    7573
_jmp_addr_0x0060a539:    {disp8} mov       edi, dword ptr [esp + 0x28]            // 0x0060a539    8b7c2428
                         {disp8} lea       ecx, dword ptr [esp + 0x10]            // 0x0060a53d    8d4c2410
                         push              ecx                                    // 0x0060a541    51
                         {disp8} lea       edx, dword ptr [esp + 0x18]            // 0x0060a542    8d542418
                         dec               edi                                    // 0x0060a546    4f
                         push              edx                                    // 0x0060a547    52
                         {disp8} mov       dword ptr [esp + 0x30], edi            // 0x0060a548    897c2430
                         call              ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z // 0x0060a54c    e88f321400
                         add               esp, 0x08                              // 0x0060a551    83c408
                         push              eax                                    // 0x0060a554    50
                         {disp8} lea       ecx, dword ptr [esp + 0x1c]            // 0x0060a555    8d4c241c
                         call              @__apl__9MapCoordsFRC9JustMapXZ@12     // 0x0060a559    e812afffff
                         test              edi, edi                               // 0x0060a55e    85ff
                         {disp32} jne      _jmp_addr_0x0060a4ce                   // 0x0060a560    0f8568ffffff
                         {disp8} fld       dword ptr [ebp + 0x00]                 // 0x0060a566    d94500
                         {disp32} fmul     dword ptr [rdata_bytes + 0x3400]       // 0x0060a569    d80d00c48a00
                         call              _jmp_addr_0x007a1400                   // 0x0060a56f    e88c6e1900
                         {disp8} fld       dword ptr [ebp + 0x08]                 // 0x0060a574    d94508
                         {disp32} fmul     dword ptr [rdata_bytes + 0x3400]       // 0x0060a577    d80d00c48a00
                         mov.s             esi, eax                               // 0x0060a57d    8bf0
                         call              _jmp_addr_0x007a1400                   // 0x0060a57f    e87c6e1900
                         {disp8} mov       ecx, dword ptr [esp + 0x2c]            // 0x0060a584    8b4c242c
                         mov               dword ptr [ecx], edi                   // 0x0060a588    8939
                         {disp8} mov       dword ptr [ecx + 0x04], 0x00000001     // 0x0060a58a    c7410401000000
                         add               ecx, 0x8                               // 0x0060a591    83c108
                         mov.s             edx, edi                               // 0x0060a594    8bd7
                         {disp8} mov       dword ptr [esp + 0x20], edi            // 0x0060a596    897c2420
                         pop               edi                                    // 0x0060a59a    5f
                         mov               dword ptr [ecx], esi                   // 0x0060a59b    8931
                         pop               esi                                    // 0x0060a59d    5e
                         {disp8} mov       dword ptr [ecx + 0x04], eax            // 0x0060a59e    894104
                         pop               ebp                                    // 0x0060a5a1    5d
                         {disp8} mov       dword ptr [ecx + 0x08], edx            // 0x0060a5a2    895108
                         pop               ebx                                    // 0x0060a5a5    5b
                         add               esp, 0x14                              // 0x0060a5a6    83c414
                         ret               0x0008                                 // 0x0060a5a9    c20800
_jmp_addr_0x0060a5ac:    mov               eax, dword ptr [ebx]                   // 0x0060a5ac    8b03
                         mov.s             ecx, ebx                               // 0x0060a5ae    8bcb
                         call              dword ptr [eax + 0x858]                // 0x0060a5b0    ff9058080000
                         {disp8} mov       eax, dword ptr [esp + 0x2c]            // 0x0060a5b6    8b44242c
                         mov               dword ptr [eax], ebx                   // 0x0060a5ba    8918
                         {disp8} mov       dword ptr [eax + 0x04], esi            // 0x0060a5bc    897004
                         xor.s             edx, edx                               // 0x0060a5bf    33d2
                         xor.s             ecx, ecx                               // 0x0060a5c1    33c9
                         pop               edi                                    // 0x0060a5c3    5f
                         add               eax, 0x08                              // 0x0060a5c4    83c008
                         mov               dword ptr [eax], ecx                   // 0x0060a5c7    8908
                         pop               esi                                    // 0x0060a5c9    5e
                         {disp8} mov       dword ptr [eax + 0x04], edx            // 0x0060a5ca    895004
                         mov.s             ecx, edx                               // 0x0060a5cd    8bca
                         pop               ebp                                    // 0x0060a5cf    5d
                         {disp8} mov       dword ptr [esp + 0x14], edx            // 0x0060a5d0    89542414
                         {disp8} mov       dword ptr [eax + 0x08], ecx            // 0x0060a5d4    894808
                         pop               ebx                                    // 0x0060a5d7    5b
                         add               esp, 0x14                              // 0x0060a5d8    83c414
                         ret               0x0008                                 // 0x0060a5db    c20800
                         nop                                                      // 0x0060a5de    90
                         nop                                                      // 0x0060a5df    90
_jmp_addr_0x0060a5e0:    push              esi                                    // 0x0060a5e0    56
                         push              0x00000138                             // 0x0060a5e1    6838010000
                         push              0x00bf42a4                             // 0x0060a5e6    68a442bf00
                         push              0x14                                   // 0x0060a5eb    6a14
                         mov.s             esi, ecx                               // 0x0060a5ed    8bf1
                         call              ___nw__FUl                             // 0x0060a5ef    e89c111d00
                         xor.s             ecx, ecx                               // 0x0060a5f4    33c9
                         add               esp, 0x0c                              // 0x0060a5f6    83c40c
                         cmp.s             eax, ecx                               // 0x0060a5f9    3bc1
                         {disp8} je        _jmp_addr_0x0060a608                   // 0x0060a5fb    740b
                         {disp8} mov       dword ptr [eax + 0x08], ecx            // 0x0060a5fd    894808
                         {disp8} mov       dword ptr [eax + 0x0c], ecx            // 0x0060a600    89480c
                         {disp8} mov       dword ptr [eax + 0x10], ecx            // 0x0060a603    894810
                         {disp8} jmp       _jmp_addr_0x0060a60a                   // 0x0060a606    eb02
_jmp_addr_0x0060a608:    xor.s             eax, eax                               // 0x0060a608    33c0
_jmp_addr_0x0060a60a:    {disp8} mov       ecx, dword ptr [esp + 0x08]            // 0x0060a60a    8b4c2408
                         mov               dword ptr [esi], eax                   // 0x0060a60e    8906
                         mov               dword ptr [eax], ecx                   // 0x0060a610    8908
                         mov               edx, dword ptr [esi]                   // 0x0060a612    8b16
                         {disp8} mov       eax, dword ptr [esp + 0x0c]            // 0x0060a614    8b44240c
                         {disp8} mov       dword ptr [edx + 0x04], eax            // 0x0060a618    894204
                         mov               ecx, dword ptr [esi]                   // 0x0060a61b    8b0e
                         {disp8} mov       edx, dword ptr [esp + 0x10]            // 0x0060a61d    8b542410
                         mov               eax, dword ptr [edx]                   // 0x0060a621    8b02
                         add               ecx, 0x8                               // 0x0060a623    83c108
                         mov               dword ptr [ecx], eax                   // 0x0060a626    8901
                         {disp8} mov       eax, dword ptr [edx + 0x04]            // 0x0060a628    8b4204
                         {disp8} mov       dword ptr [ecx + 0x04], eax            // 0x0060a62b    894104
                         {disp8} mov       edx, dword ptr [edx + 0x08]            // 0x0060a62e    8b5208
                         {disp8} mov       dword ptr [ecx + 0x08], edx            // 0x0060a631    895108
                         pop               esi                                    // 0x0060a634    5e
                         ret               0x000c                                 // 0x0060a635    c20c00
                         nop                                                      // 0x0060a638    90
                         nop                                                      // 0x0060a639    90
                         nop                                                      // 0x0060a63a    90
                         nop                                                      // 0x0060a63b    90
                         nop                                                      // 0x0060a63c    90
                         nop                                                      // 0x0060a63d    90
                         nop                                                      // 0x0060a63e    90
                         nop                                                      // 0x0060a63f    90
??0CircleHugInfo@@QAE@XZ:
                               push              esi                                    // 0x0060a640    56
                         mov.s             esi, ecx                               // 0x0060a641    8bf1
                         push              0x0                                    // 0x0060a643    6a00
                         mov               dword ptr [esi], 0x00000000            // 0x0060a645    c70600000000
                         call              _jmp_addr_0x0060a9f0                   // 0x0060a64b    e8a0030000
                         mov.s             eax, esi                               // 0x0060a650    8bc6
                         pop               esi                                    // 0x0060a652    5e
                         ret                                                      // 0x0060a653    c3
                         nop                                                      // 0x0060a654    90
                         nop                                                      // 0x0060a655    90
                         nop                                                      // 0x0060a656    90
                         nop                                                      // 0x0060a657    90
                         nop                                                      // 0x0060a658    90
                         nop                                                      // 0x0060a659    90
                         nop                                                      // 0x0060a65a    90
                         nop                                                      // 0x0060a65b    90
                         nop                                                      // 0x0060a65c    90
                         nop                                                      // 0x0060a65d    90
                         nop                                                      // 0x0060a65e    90
                         nop                                                      // 0x0060a65f    90
?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ:
                                       mov               eax, dword ptr [ecx]                   // 0x0060a660    8b01
                         ret                                                      // 0x0060a662    c3
                         nop                                                      // 0x0060a663    90
                         nop                                                      // 0x0060a664    90
                         nop                                                      // 0x0060a665    90
                         nop                                                      // 0x0060a666    90
                         nop                                                      // 0x0060a667    90
                         nop                                                      // 0x0060a668    90
                         nop                                                      // 0x0060a669    90
                         nop                                                      // 0x0060a66a    90
                         nop                                                      // 0x0060a66b    90
                         nop                                                      // 0x0060a66c    90
                         nop                                                      // 0x0060a66d    90
                         nop                                                      // 0x0060a66e    90
                         nop                                                      // 0x0060a66f    90
                         {disp8} mov       eax, dword ptr [esp + 0x04]            // 0x0060a670    8b442404
                         push              eax                                    // 0x0060a674    50
                         mov               ecx, OFFSET _CircleHugStateInfoT_00d3ee78 // 0x0060a675    b978eed300
                         call              _jmp_addr_0x0060a680                   // 0x0060a67a    e801000000
                         ret                                                      // 0x0060a67f    c3
_jmp_addr_0x0060a680:    push              ecx                                    // 0x0060a680    51
                         push              ebx                                    // 0x0060a681    53
                         push              ebp                                    // 0x0060a682    55
                         push              esi                                    // 0x0060a683    56
                         mov.s             ebp, ecx                               // 0x0060a684    8be9
                         push              edi                                    // 0x0060a686    57
                         {disp8} lea       ebx, dword ptr [ebp + 0x10]            // 0x0060a687    8d5d10
_jmp_addr_0x0060a68a:    {disp8} lea       eax, dword ptr [esp + 0x18]            // 0x0060a68a    8d442418
                         push              eax                                    // 0x0060a68e    50
                         {disp8} lea       ecx, dword ptr [esp + 0x14]            // 0x0060a68f    8d4c2414
                         push              ecx                                    // 0x0060a693    51
                         mov.s             ecx, ebx                               // 0x0060a694    8bcb
                         call              @find__std__map_pNewCollide_Obj_std_set_pMobileWallHug__FRCPQ210NewCollide3Obj@16                   // 0x0060a696    e8156b0000
                         {disp8} mov       eax, dword ptr [esp + 0x10]            // 0x0060a69b    8b442410
                         cmp               eax, dword ptr [ebp + 0x14]            // 0x0060a69f    3b4514
                         {disp32} je       _jmp_addr_0x0060a73e                   // 0x0060a6a2    0f8496000000
                         {disp8} mov       edx, dword ptr [eax + 0x14]            // 0x0060a6a8    8b5014
                         mov               eax, dword ptr [edx]                   // 0x0060a6ab    8b02
                         {disp8} mov       esi, dword ptr [eax + 0x0c]            // 0x0060a6ad    8b700c
                         {disp8} lea       edi, dword ptr [esi + 0x70]            // 0x0060a6b0    8d7e70
                         mov.s             ecx, edi                               // 0x0060a6b3    8bcf
                         call              ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ     // 0x0060a6b5    e8a6ffffff
                         xor.s             eax, eax                               // 0x0060a6ba    33c0
                         {disp8} mov       al, byte ptr [esi + 0x5e]              // 0x0060a6bc    8a465e
                         add               eax, -0x0c                             // 0x0060a6bf    83c0f4
                         cmp               eax, 0x06                              // 0x0060a6c2    83f806
                         {disp8} ja        _jmp_addr_0x0060a72d                   // 0x0060a6c5    7766
                         jmp               dword ptr [eax*4 + 0x60a748]           // 0x0060a6c7    ff248548a76000
                         {disp8} lea       ecx, dword ptr [esi + 0x14]            // 0x0060a6ce    8d4e14
                         push              ecx                                    // 0x0060a6d1    51
                         mov.s             ecx, esi                               // 0x0060a6d2    8bce
                         call              @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                   // 0x0060a6d4    e877230000
                         {disp8} jmp       _jmp_addr_0x0060a68a                   // 0x0060a6d9    ebaf
                         mov.s             ecx, esi                               // 0x0060a6db    8bce
                         call              ?InitStepsXZ@MobileWallHug@@QAEXXZ     // 0x0060a6dd    e8be180000
                         {disp8} lea       edx, dword ptr [esi + 0x14]            // 0x0060a6e2    8d5614
                         push              edx                                    // 0x0060a6e5    52
                         mov.s             ecx, esi                               // 0x0060a6e6    8bce
                         {disp8} mov       byte ptr [esi + 0x5e], 0x0d            // 0x0060a6e8    c6465e0d
                         call              @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                   // 0x0060a6ec    e85f230000
                         {disp8} jmp       _jmp_addr_0x0060a68a                   // 0x0060a6f1    eb97
                         mov.s             ecx, esi                               // 0x0060a6f3    8bce
                         call              ?InitStepsXZ@MobileWallHug@@QAEXXZ     // 0x0060a6f5    e8a6180000
                         {disp8} lea       eax, dword ptr [esi + 0x14]            // 0x0060a6fa    8d4614
                         push              eax                                    // 0x0060a6fd    50
                         mov.s             ecx, esi                               // 0x0060a6fe    8bce
                         {disp8} mov       byte ptr [esi + 0x5e], 0x0e            // 0x0060a700    c6465e0e
                         call              @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                   // 0x0060a704    e847230000
                         {disp32} jmp      _jmp_addr_0x0060a68a                   // 0x0060a709    e97cffffff
                         mov.s             ecx, esi                               // 0x0060a70e    8bce
                         call              ?InitStepsXZ@MobileWallHug@@QAEXXZ     // 0x0060a710    e88b180000
                         cmp               byte ptr [esi + 0x5e], 0x12            // 0x0060a715    807e5e12
                         setne             cl                                     // 0x0060a719    0f95c1
                         {disp8} lea       edx, dword ptr [esi + 0x14]            // 0x0060a71c    8d5614
                         push              edx                                    // 0x0060a71f    52
                         add               ecx, 0xd                               // 0x0060a720    83c10d
                         {disp8} mov       byte ptr [esi + 0x5e], cl              // 0x0060a723    884e5e
                         mov.s             ecx, esi                               // 0x0060a726    8bce
                         call              @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                   // 0x0060a728    e823230000
_jmp_addr_0x0060a72d:    push              0x0                                    // 0x0060a72d    6a00
                         push              esi                                    // 0x0060a72f    56
                         push              0x0                                    // 0x0060a730    6a00
                         mov.s             ecx, edi                               // 0x0060a732    8bcf
                         call              @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                   // 0x0060a734    e837000000
                         {disp32} jmp      _jmp_addr_0x0060a68a                   // 0x0060a739    e94cffffff
_jmp_addr_0x0060a73e:    pop               edi                                    // 0x0060a73e    5f
                         pop               esi                                    // 0x0060a73f    5e
                         pop               ebp                                    // 0x0060a740    5d
                         pop               ebx                                    // 0x0060a741    5b
                         pop               ecx                                    // 0x0060a742    59
                         ret               0x0004                                 // 0x0060a743    c20400

// Snippet: db, [0x0060a746, 0x0060a748)
.byte 0x8b, 0xff                  // 0x0060a746

// Snippet: jmptbl, [0x0060a748, 0x0060a764)
.byte 0xce, 0xa6, 0x60, 0x00      // 0x0060a748
.byte 0xce, 0xa6, 0x60, 0x00      // 0x0060a74c
.byte 0xce, 0xa6, 0x60, 0x00      // 0x0060a750
.byte 0xdb, 0xa6, 0x60, 0x00      // 0x0060a754
.byte 0xf3, 0xa6, 0x60, 0x00      // 0x0060a758
.byte 0x0e, 0xa7, 0x60, 0x00      // 0x0060a75c
.byte 0x0e, 0xa7, 0x60, 0x00      // 0x0060a760

// Snippet: db, [0x0060a764, 0x0060a770)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060a764
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060a768
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060a76c

