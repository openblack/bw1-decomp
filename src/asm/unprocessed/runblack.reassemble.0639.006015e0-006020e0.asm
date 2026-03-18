.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl _globl_ct_0x00601ec0
.globl _globl_ct_0x00601ef0
.globl _globl_ct_0x00601f20
.globl ?FindTypeOnMap@MapCell@@QAEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z
.globl ?FindFixedOnMap@MapCell@@QAEPAVFixed@@PAVObject@@@Z
.globl _jmp_addr_0x006016d0
.globl _jmp_addr_0x00601820
.globl _jmp_addr_0x00601850
.globl _jmp_addr_0x00601880
.globl @SetFirstObjectMobile__7MapCellFP6Object@12
.globl @SetFirstObjectFixed__7MapCellFP6Object@12
.globl ?GetX@MapCell@@QBEIXZ
.globl ?GetZ@MapCell@@QBEIXZ
.globl _jmp_addr_0x00601bc0
.globl _jmp_addr_0x00601ce0
.globl ?CollideWithFixe@MapCell@@QAEHABUMapCoords@@@Z
.globl _jmp_addr_0x00601e00
.globl _jmp_addr_0x00601e80
.globl _jmp_addr_0x00601ea0
.globl _jmp_addr_0x00601f40
.globl _jmp_addr_0x00601f90


?FindTypeOnMap@MapCell@@QAEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z:    push               ebx                                           // 0x006015e0    53
                         push               esi                                           // 0x006015e1    56
                         push               edi                                           // 0x006015e2    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x006015e3    8b7c2410
                         cmp                edi, -0x01                                    // 0x006015e7    83ffff
                         mov.s              esi, ecx                                      // 0x006015ea    8bf1
                         {disp8} jne        .Lbl_addr_0x0060163d                          // 0x006015ec    754f
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x006015ee    8b7c2414
                         test               edi, edi                                      // 0x006015f2    85ff
                         {disp8} jne        .Lbl_addr_0x00601609                          // 0x006015f4    7513
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x006015f6    8b4604
                         test               eax, eax                                      // 0x006015f9    85c0
                         {disp32} jne       .Lbl_addr_0x00601681                          // 0x006015fb    0f8580000000
                         mov                eax, dword ptr [esi]                          // 0x00601601    8b06
                         pop                edi                                           // 0x00601603    5f
                         pop                esi                                           // 0x00601604    5e
                         pop                ebx                                           // 0x00601605    5b
                         ret                0x0008                                        // 0x00601606    c20800
.Lbl_addr_0x00601609:    mov                eax, dword ptr [edi]                          // 0x00601609    8b07
                         push               esi                                           // 0x0060160b    56
                         mov.s              ecx, edi                                      // 0x0060160c    8bcf
                         call               dword ptr [eax + 0x53c]                       // 0x0060160e    ff903c050000
                         mov.s              ebx, eax                                      // 0x00601614    8bd8
                         test               ebx, ebx                                      // 0x00601616    85db
                         {disp8} jne        .Lbl_addr_0x00601635                          // 0x00601618    751b
                         {disp8} mov        ecx, dword ptr [edi + 0x28]                   // 0x0060161a    8b4f28
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0060161d    8b4110
                         push               eax                                           // 0x00601620    50
                         call               ?DoesObjectTypeCountAsFixed@MapCell@@SA_NW4OBJECT_TYPE@@@Z                   // 0x00601621    e8eafeffff
                         add                esp, 0x04                                     // 0x00601626    83c404
                         test               eax, eax                                      // 0x00601629    85c0
                         {disp8} je         .Lbl_addr_0x00601635                          // 0x0060162b    7408
                         mov                eax, dword ptr [esi]                          // 0x0060162d    8b06
                         pop                edi                                           // 0x0060162f    5f
                         pop                esi                                           // 0x00601630    5e
                         pop                ebx                                           // 0x00601631    5b
                         ret                0x0008                                        // 0x00601632    c20800
.Lbl_addr_0x00601635:    pop                edi                                           // 0x00601635    5f
                         pop                esi                                           // 0x00601636    5e
                         mov.s              eax, ebx                                      // 0x00601637    8bc3
                         pop                ebx                                           // 0x00601639    5b
                         ret                0x0008                                        // 0x0060163a    c20800
.Lbl_addr_0x0060163d:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0060163d    8b4c2414
                         test               ecx, ecx                                      // 0x00601641    85c9
                         {disp8} jne        .Lbl_addr_0x0060165b                          // 0x00601643    7516
                         push               edi                                           // 0x00601645    57
                         call               ?DoesObjectTypeCountAsFixed@MapCell@@SA_NW4OBJECT_TYPE@@@Z                   // 0x00601646    e8c5feffff
                         add                esp, 0x04                                     // 0x0060164b    83c404
                         test               eax, eax                                      // 0x0060164e    85c0
                         {disp8} je         .Lbl_addr_0x00601657                          // 0x00601650    7405
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00601652    8b4604
                         {disp8} jmp        .Lbl_addr_0x00601664                          // 0x00601655    eb0d
.Lbl_addr_0x00601657:    mov                eax, dword ptr [esi]                          // 0x00601657    8b06
                         {disp8} jmp        .Lbl_addr_0x00601664                          // 0x00601659    eb09
.Lbl_addr_0x0060165b:    mov                edx, dword ptr [ecx]                          // 0x0060165b    8b11
                         push               esi                                           // 0x0060165d    56
                         call               dword ptr [edx + 0x53c]                       // 0x0060165e    ff923c050000
.Lbl_addr_0x00601664:    test               eax, eax                                      // 0x00601664    85c0
                         {disp8} je         .Lbl_addr_0x0060167f                          // 0x00601666    7417
.Lbl_addr_0x00601668:    {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00601668    8b4828
                         cmp                dword ptr [ecx + 0x10], edi                   // 0x0060166b    397910
                         {disp8} je         .Lbl_addr_0x00601681                          // 0x0060166e    7411
                         mov                edx, dword ptr [eax]                          // 0x00601670    8b10
                         push               esi                                           // 0x00601672    56
                         mov.s              ecx, eax                                      // 0x00601673    8bc8
                         call               dword ptr [edx + 0x53c]                       // 0x00601675    ff923c050000
                         test               eax, eax                                      // 0x0060167b    85c0
                         {disp8} jne        .Lbl_addr_0x00601668                          // 0x0060167d    75e9
.Lbl_addr_0x0060167f:    xor.s              eax, eax                                      // 0x0060167f    33c0
.Lbl_addr_0x00601681:    pop                edi                                           // 0x00601681    5f
                         pop                esi                                           // 0x00601682    5e
                         pop                ebx                                           // 0x00601683    5b
                         ret                0x0008                                        // 0x00601684    c20800
                         nop                                                              // 0x00601687    90
                         nop                                                              // 0x00601688    90
                         nop                                                              // 0x00601689    90
                         nop                                                              // 0x0060168a    90
                         nop                                                              // 0x0060168b    90
                         nop                                                              // 0x0060168c    90
                         nop                                                              // 0x0060168d    90
                         nop                                                              // 0x0060168e    90
                         nop                                                              // 0x0060168f    90
?FindFixedOnMap@MapCell@@QAEPAVFixed@@PAVObject@@@Z:
                         push               esi                                           // 0x00601690    56
                         mov.s              esi, ecx                                      // 0x00601691    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00601693    8b4c2408
                         test               ecx, ecx                                      // 0x00601697    85c9
                         {disp8} jne        .Lbl_addr_0x006016a0                          // 0x00601699    7505
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0060169b    8b4604
                         {disp8} jmp        .Lbl_addr_0x006016a9                          // 0x0060169e    eb09
.Lbl_addr_0x006016a0:    mov                eax, dword ptr [ecx]                          // 0x006016a0    8b01
                         push               esi                                           // 0x006016a2    56
                         call               dword ptr [eax + 0x53c]                       // 0x006016a3    ff903c050000
.Lbl_addr_0x006016a9:    test               eax, eax                                      // 0x006016a9    85c0
                         {disp8} je         .Lbl_addr_0x006016c2                          // 0x006016ab    7415
.Lbl_addr_0x006016ad:    test               byte ptr [eax + 0x24], 0x02                   // 0x006016ad    f6402402
                         {disp8} jne        .Lbl_addr_0x006016c2                          // 0x006016b1    750f
                         mov                edx, dword ptr [eax]                          // 0x006016b3    8b10
                         push               esi                                           // 0x006016b5    56
                         mov.s              ecx, eax                                      // 0x006016b6    8bc8
                         call               dword ptr [edx + 0x53c]                       // 0x006016b8    ff923c050000
                         test               eax, eax                                      // 0x006016be    85c0
                         {disp8} jne        .Lbl_addr_0x006016ad                          // 0x006016c0    75eb
.Lbl_addr_0x006016c2:    pop                esi                                           // 0x006016c2    5e
                         ret                0x0004                                        // 0x006016c3    c20400
                         nop                                                              // 0x006016c6    90
                         nop                                                              // 0x006016c7    90
                         nop                                                              // 0x006016c8    90
                         nop                                                              // 0x006016c9    90
                         nop                                                              // 0x006016ca    90
                         nop                                                              // 0x006016cb    90
                         nop                                                              // 0x006016cc    90
                         nop                                                              // 0x006016cd    90
                         nop                                                              // 0x006016ce    90
                         nop                                                              // 0x006016cf    90
_jmp_addr_0x006016d0:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006016d0    8b0d5c19d000
                         push               esi                                           // 0x006016d6    56
                         push               edi                                           // 0x006016d7    57
                         push               0x0                                           // 0x006016d8    6a00
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x006016da    e8c1f1f4ff
                         mov.s              edi, eax                                      // 0x006016df    8bf8
                         test               edi, edi                                      // 0x006016e1    85ff
                         {disp8} je         .Lbl_addr_0x0060172c                          // 0x006016e3    7447
.Lbl_addr_0x006016e5:    {disp32} mov       ecx, dword ptr [edi + 0x00000a48]             // 0x006016e5    8b8f480a0000
                         test               ecx, ecx                                      // 0x006016eb    85c9
                         {disp8} je         .Lbl_addr_0x006016f8                          // 0x006016ed    7409
                         {disp8} mov        eax, dword ptr [ecx + 0x6c]                   // 0x006016ef    8b416c
                         push               eax                                           // 0x006016f2    50
                         call               _jmp_addr_0x00463a20                          // 0x006016f3    e82823e6ff
.Lbl_addr_0x006016f8:    {disp32} mov       esi, dword ptr [edi + 0x00000a50]             // 0x006016f8    8bb7500a0000
                         test               esi, esi                                      // 0x006016fe    85f6
                         {disp8} je         .Lbl_addr_0x0060171a                          // 0x00601700    7418
.Lbl_addr_0x00601702:    {disp32} mov       ecx, dword ptr [esi + 0x000005c8]             // 0x00601702    8b8ec8050000
                         push               ecx                                           // 0x00601708    51
                         mov.s              ecx, esi                                      // 0x00601709    8bce
                         call               _jmp_addr_0x0073e1f0                          // 0x0060170b    e8e0ca1300
                         {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x00601710    8bb65c070000
                         test               esi, esi                                      // 0x00601716    85f6
                         {disp8} jne        .Lbl_addr_0x00601702                          // 0x00601718    75e8
.Lbl_addr_0x0060171a:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0060171a    8b0d5c19d000
                         push               edi                                           // 0x00601720    57
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x00601721    e87af1f4ff
                         mov.s              edi, eax                                      // 0x00601726    8bf8
                         test               edi, edi                                      // 0x00601728    85ff
                         {disp8} jne        .Lbl_addr_0x006016e5                          // 0x0060172a    75b9
.Lbl_addr_0x0060172c:    {disp32} mov       eax, dword ptr [_game]                        // 0x0060172c    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205c4c]             // 0x00601731    8b884c5c2000
                         test               ecx, ecx                                      // 0x00601737    85c9
                         {disp8} je         .Lbl_addr_0x00601755                          // 0x00601739    741a
.Lbl_addr_0x0060173b:    {disp8} fld        dword ptr [ecx + 0x38]                        // 0x0060173b    d94138
                         {disp8} mov        esi, dword ptr [ecx + 0x40]                   // 0x0060173e    8b7140
                         push               ecx                                           // 0x00601741    51
                         fstp               dword ptr [esp]                               // 0x00601742    d91c24
                         call               _jmp_addr_0x005cdb40                          // 0x00601745    e8f6c3fcff
                         test               esi, esi                                      // 0x0060174a    85f6
                         mov.s              ecx, esi                                      // 0x0060174c    8bce
                         {disp8} jne        .Lbl_addr_0x0060173b                          // 0x0060174e    75eb
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00601750    a15c19d000
.Lbl_addr_0x00601755:    or                 byte ptr [eax + 0x59c0], 1                    // 0x00601755    8088c059000001
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0060175c    a15c19d000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x00601761    8b4814
                         and                ecx, 0xffffefff                               // 0x00601764    81e1ffefffff
                         pop                edi                                           // 0x0060176a    5f
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0060176b    894814
                         pop                esi                                           // 0x0060176e    5e
                         ret                                                              // 0x0060176f    c3
                         ret                                                              // 0x00601770    c3
                         nop                                                              // 0x00601771    90
                         nop                                                              // 0x00601772    90
                         nop                                                              // 0x00601773    90
                         nop                                                              // 0x00601774    90
                         nop                                                              // 0x00601775    90
                         nop                                                              // 0x00601776    90
                         nop                                                              // 0x00601777    90
                         nop                                                              // 0x00601778    90
                         nop                                                              // 0x00601779    90
                         nop                                                              // 0x0060177a    90
                         nop                                                              // 0x0060177b    90
                         nop                                                              // 0x0060177c    90
                         nop                                                              // 0x0060177d    90
                         nop                                                              // 0x0060177e    90
                         nop                                                              // 0x0060177f    90
                         push               ecx                                           // 0x00601780    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00601781    8b0d5c19d000
                         push               esi                                           // 0x00601787    56
                         push               0x0                                           // 0x00601788    6a00
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0060178a    c744240800000000
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x00601792    e809f1f4ff
                         mov.s              esi, eax                                      // 0x00601797    8bf0
                         test               esi, esi                                      // 0x00601799    85f6
                         {disp8} je         .Lbl_addr_0x00601814                          // 0x0060179b    7477
                         push               edi                                           // 0x0060179d    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0060179e    8b7c2410
.Lbl_addr_0x006017a2:    push               0x1                                           // 0x006017a2    6a01
                         push               0x0                                           // 0x006017a4    6a00
                         push               0x0                                           // 0x006017a6    6a00
                         push               esi                                           // 0x006017a8    56
                         push               edi                                           // 0x006017a9    57
                         call               _jmp_addr_0x005cd170                          // 0x006017aa    e8c1b9fcff
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x006017af    d9542424
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x006017b3    d844241c
                         add                esp, 0x14                                     // 0x006017b7    83c414
                         mov.s              ecx, esi                                      // 0x006017ba    8bce
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x006017bc    d95c2408
                         call               _jmp_addr_0x0064d6a0                          // 0x006017c0    e8dbbe0400
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x006017c5    d84c2410
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006017c9    8b0d5c19d000
                         push               esi                                           // 0x006017cf    56
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006017d0    d95c2414
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x006017d4    e8c7f0f4ff
                         mov.s              esi, eax                                      // 0x006017d9    8bf0
                         test               esi, esi                                      // 0x006017db    85f6
                         {disp8} jne        .Lbl_addr_0x006017a2                          // 0x006017dd    75c3
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006017df    d9442408
                         pop                edi                                           // 0x006017e3    5f
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x006017e4    d81d98a38a00
                         fnstsw             ax                                            // 0x006017ea    dfe0
                         test               ah, 0x40                                      // 0x006017ec    f6c440
                         {disp8} jne        .Lbl_addr_0x00601814                          // 0x006017ef    7523
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006017f1    d944240c
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x006017f5    d8742404
                         {disp32} fadd      dword ptr [__real@4@3fff8000000000000000]                   // 0x006017f9    d80590a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826ec]             // 0x006017ff    d80decb69200
                         call               __ftol                                        // 0x00601805    e8f6fb1900
                         and                eax, 0x000000ff                               // 0x0060180a    25ff000000
                         pop                esi                                           // 0x0060180f    5e
                         pop                ecx                                           // 0x00601810    59
                         ret                0x0004                                        // 0x00601811    c20400
.Lbl_addr_0x00601814:    mov                eax, 0x0000007f                               // 0x00601814    b87f000000
                         pop                esi                                           // 0x00601819    5e
                         pop                ecx                                           // 0x0060181a    59
                         ret                0x0004                                        // 0x0060181b    c20400
                         nop                                                              // 0x0060181e    90
                         nop                                                              // 0x0060181f    90
_jmp_addr_0x00601820:    push               esi                                           // 0x00601820    56
                         mov.s              esi, ecx                                      // 0x00601821    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x00601823    8b4610
                         push               edi                                           // 0x00601826    57
                         xor.s              edi, edi                                      // 0x00601827    33ff
                         cmp.s              eax, edi                                      // 0x00601829    3bc7
                         {disp32} mov       word ptr [esi + 0x00200044], di               // 0x0060182b    6689be44002000
                         {disp8} jle        .Lbl_addr_0x00601843                          // 0x00601832    7e0f
.Lbl_addr_0x00601834:    mov.s              ecx, esi                                      // 0x00601834    8bce
                         call               _jmp_addr_0x00601850                          // 0x00601836    e815000000
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x0060183b    8b4610
                         inc                edi                                           // 0x0060183e    47
                         cmp.s              edi, eax                                      // 0x0060183f    3bf8
                         {disp8} jl         .Lbl_addr_0x00601834                          // 0x00601841    7cf1
.Lbl_addr_0x00601843:    pop                edi                                           // 0x00601843    5f
                         pop                esi                                           // 0x00601844    5e
                         ret                                                              // 0x00601845    c3
                         nop                                                              // 0x00601846    90
                         nop                                                              // 0x00601847    90
                         nop                                                              // 0x00601848    90
                         nop                                                              // 0x00601849    90
                         nop                                                              // 0x0060184a    90
                         nop                                                              // 0x0060184b    90
                         nop                                                              // 0x0060184c    90
                         nop                                                              // 0x0060184d    90
                         nop                                                              // 0x0060184e    90
                         nop                                                              // 0x0060184f    90
_jmp_addr_0x00601850:    {disp32} inc       word ptr [ecx + 0x00200044]                   // 0x00601850    66ff8144002000
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x00601857    8b510c
                         xor.s              eax, eax                                      // 0x0060185a    33c0
                         {disp32} mov       ax, word ptr [ecx + 0x00200044]               // 0x0060185c    668b8144002000
                         and                eax, 0x0000ffff                               // 0x00601863    25ffff0000
                         cmp.s              eax, edx                                      // 0x00601868    3bc2
                         {disp8} jl         .Lbl_addr_0x00601875                          // 0x0060186a    7c09
                         {disp32} mov       word ptr [ecx + 0x00200044], 0x0000           // 0x0060186c    66c781440020000000
.Lbl_addr_0x00601875:    ret                                                              // 0x00601875    c3
                         nop                                                              // 0x00601876    90
                         nop                                                              // 0x00601877    90
                         nop                                                              // 0x00601878    90
                         nop                                                              // 0x00601879    90
                         nop                                                              // 0x0060187a    90
                         nop                                                              // 0x0060187b    90
                         nop                                                              // 0x0060187c    90
                         nop                                                              // 0x0060187d    90
                         nop                                                              // 0x0060187e    90
                         nop                                                              // 0x0060187f    90
_jmp_addr_0x00601880:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00601880    8b442404
                         sub                esp, 0x40                                     // 0x00601884    83ec40
                         test               eax, eax                                      // 0x00601887    85c0
                         push               esi                                           // 0x00601889    56
                         mov.s              esi, ecx                                      // 0x0060188a    8bf1
                         {disp8} jne        .Lbl_addr_0x006018a4                          // 0x0060188c    7516
                         mov                al, -0x01                                     // 0x0060188e    b0ff
                         {disp8} mov        byte ptr [esp + 0x48], al                     // 0x00601890    88442448
                         {disp8} mov        byte ptr [esp + 0x49], al                     // 0x00601894    88442449
                         {disp8} mov        byte ptr [esp + 0x4a], al                     // 0x00601898    8844244a
                         {disp8} mov        byte ptr [esp + 0x4b], al                     // 0x0060189c    8844244b
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x006018a0    8d442448
.Lbl_addr_0x006018a4:    mov                eax, dword ptr [eax]                          // 0x006018a4    8b00
                         mov.s              ecx, esi                                      // 0x006018a6    8bce
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006018a8    89442404
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x006018ac    e8ef020000
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006018b1    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006018b5    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x006018bd    df6c2408
                         mov.s              ecx, esi                                      // 0x006018c1    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87020]             // 0x006018c3    d80d20009300
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x006018c9    d95c2448
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x006018cd    e8ae020000
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006018d2    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006018d6    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x006018de    df6c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x006018e2    8b4c2448
                         mov.s              edx, ecx                                      // 0x006018e6    8bd1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87020]             // 0x006018e8    d80d20009300
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x006018ee    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x006018f6    894c241c
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x006018fa    c744242400000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00601902    d95c2414
                         {disp32} fld       dword ptr [rdata_bytes + 0x87020]             // 0x00601906    d90520009300
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0060190c    8b442414
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x00601910    d8442414
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00601914    89542428
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x00601918    c744243000000000
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x00601920    d9542420
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00601924    89442438
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00601928    d95c242c
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000            // 0x0060192c    c744243c00000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x87020]             // 0x00601934    d90520009300
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x0060193a    d8442448
                         {disp8} fst        dword ptr [esp + 0x34]                        // 0x0060193e    d9542434
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00601942    d95c2440
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00601946    d9442414
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x0060194a    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00601950    d80d04c48a00
                         call               __ftol                                        // 0x00601956    e8a5fa1900
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0060195b    d9442448
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x0060195f    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00601965    89442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00601969    d80d04c48a00
                         call               __ftol                                        // 0x0060196f    e88cfa1900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00601974    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00601978    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0060197c    c744241000000000
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00601984    e807172000
                         {disp32} fadd      dword ptr [__real@3e999999]                   // 0x00601989    d8053cb28a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0060198f    d95c2418
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00601993    d9442420
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00601997    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0060199d    d80d04c48a00
                         call               __ftol                                        // 0x006019a3    e858fa1900
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x006019a8    d9442428
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006019ac    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006019b2    89442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006019b6    d80d04c48a00
                         call               __ftol                                        // 0x006019bc    e83ffa1900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006019c1    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006019c5    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x006019c9    c744241000000000
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x006019d1    e8ba162000
                         {disp32} fadd      dword ptr [__real@3e999999]                   // 0x006019d6    d8053cb28a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x006019dc    d95c2424
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x006019e0    d944242c
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006019e4    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006019ea    d80d04c48a00
                         call               __ftol                                        // 0x006019f0    e80bfa1900
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x006019f5    d9442434
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006019f9    89442408
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006019fd    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00601a03    d80d04c48a00
                         call               __ftol                                        // 0x00601a09    e8f2f91900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00601a0e    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00601a12    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00601a16    c744241000000000
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00601a1e    e86d162000
                         {disp32} fadd      dword ptr [__real@3e999999]                   // 0x00601a23    d8053cb28a00
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00601a29    d95c2430
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00601a2d    d9442438
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00601a31    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00601a37    d80d04c48a00
                         call               __ftol                                        // 0x00601a3d    e8bef91900
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00601a42    d9442440
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00601a46    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00601a4c    89442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00601a50    d80d04c48a00
                         call               __ftol                                        // 0x00601a56    e8a5f91900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00601a5b    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00601a5f    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00601a63    c744241000000000
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00601a6b    e820162000
                         {disp32} fadd      dword ptr [__real@3e999999]                   // 0x00601a70    d8053cb28a00
                         push               0x0                                           // 0x00601a76    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00601a78    8d4c2408
                         push               ecx                                           // 0x00601a7c    51
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00601a7d    d95c2444
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x00601a81    8d542428
                         push               edx                                           // 0x00601a85    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x00601a86    8d442420
                         push               eax                                           // 0x00601a8a    50
                         call               _jmp_addr_0x008398a0                          // 0x00601a8b    e8107e2300
                         push               0x0                                           // 0x00601a90    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00601a92    8d4c2418
                         push               ecx                                           // 0x00601a96    51
                         {disp8} lea        edx, dword ptr [esp + 0x44]                   // 0x00601a97    8d542444
                         push               edx                                           // 0x00601a9b    52
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00601a9c    8d44243c
                         push               eax                                           // 0x00601aa0    50
                         call               _jmp_addr_0x008398a0                          // 0x00601aa1    e8fa7d2300
                         push               0x0                                           // 0x00601aa6    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00601aa8    8d4c2428
                         push               ecx                                           // 0x00601aac    51
                         {disp8} lea        edx, dword ptr [esp + 0x60]                   // 0x00601aad    8d542460
                         push               edx                                           // 0x00601ab1    52
                         {disp8} lea        eax, dword ptr [esp + 0x58]                   // 0x00601ab2    8d442458
                         push               eax                                           // 0x00601ab6    50
                         call               _jmp_addr_0x008398a0                          // 0x00601ab7    e8e47d2300
                         push               0x0                                           // 0x00601abc    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00601abe    8d4c2438
                         push               ecx                                           // 0x00601ac2    51
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x00601ac3    8d54244c
                         push               edx                                           // 0x00601ac7    52
                         {disp8} lea        eax, dword ptr [esp + 0x74]                   // 0x00601ac8    8d442474
                         push               eax                                           // 0x00601acc    50
                         call               _jmp_addr_0x008398a0                          // 0x00601acd    e8ce7d2300
                         add                esp, 0x40                                     // 0x00601ad2    83c440
                         pop                esi                                           // 0x00601ad5    5e
                         add                esp, 0x40                                     // 0x00601ad6    83c440
                         ret                0x0004                                        // 0x00601ad9    c20400
                         nop                                                              // 0x00601adc    90
                         nop                                                              // 0x00601add    90
                         nop                                                              // 0x00601ade    90
                         nop                                                              // 0x00601adf    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4d6d70]        // 0x00601ae0    a170cde900
                         push               esi                                           // 0x00601ae5    56
                         mov                esi, 0x00000001                               // 0x00601ae6    be01000000
                         cmp.s              eax, esi                                      // 0x00601aeb    3bc6
                         {disp8} jle        .Lbl_addr_0x00601b0a                          // 0x00601aed    7e1b
                         push               edi                                           // 0x00601aef    57
                         mov                edi, 0x00e9c568                               // 0x00601af0    bf68c5e900
.Lbl_addr_0x00601af5:    mov                ecx, dword ptr [edi]                          // 0x00601af5    8b0f
                         call               _jmp_addr_0x008786d0                          // 0x00601af7    e8d46b2700
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4d6d70]        // 0x00601afc    a170cde900
                         inc                esi                                           // 0x00601b01    46
                         add                edi, 0x04                                     // 0x00601b02    83c704
                         cmp.s              esi, eax                                      // 0x00601b05    3bf0
                         {disp8} jl         .Lbl_addr_0x00601af5                          // 0x00601b07    7cec
                         pop                edi                                           // 0x00601b09    5f
.Lbl_addr_0x00601b0a:    pop                esi                                           // 0x00601b0a    5e
                         ret                                                              // 0x00601b0b    c3
                         nop                                                              // 0x00601b0c    90
                         nop                                                              // 0x00601b0d    90
                         nop                                                              // 0x00601b0e    90
                         nop                                                              // 0x00601b0f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00601b10    8b4104
                         test               eax, eax                                      // 0x00601b13    85c0
                         mov                edx, 0x00000001                               // 0x00601b15    ba01000000
                         {disp8} jne        .Lbl_addr_0x00601b20                          // 0x00601b1a    7504
                         mov                eax, dword ptr [ecx]                          // 0x00601b1c    8b01
                         xor.s              edx, edx                                      // 0x00601b1e    33d2
.Lbl_addr_0x00601b20:    push               ebx                                           // 0x00601b20    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00601b21    8b5c2408
                         test               ebx, ebx                                      // 0x00601b25    85db
                         push               esi                                           // 0x00601b27    56
                         push               edi                                           // 0x00601b28    57
                         mov.s              edi, edx                                      // 0x00601b29    8bfa
                         mov.s              esi, ecx                                      // 0x00601b2b    8bf1
                         {disp8} je         .Lbl_addr_0x00601b52                          // 0x00601b2d    7423
                         cmp.s              eax, ebx                                      // 0x00601b2f    3bc3
                         {disp8} je         .Lbl_addr_0x00601b52                          // 0x00601b31    741f
.Lbl_addr_0x00601b33:    test               eax, eax                                      // 0x00601b33    85c0
                         {disp8} je         .Lbl_addr_0x00601b52                          // 0x00601b35    741b
                         mov                edx, dword ptr [eax]                          // 0x00601b37    8b10
                         push               esi                                           // 0x00601b39    56
                         mov.s              ecx, eax                                      // 0x00601b3a    8bc8
                         call               dword ptr [edx + 0x53c]                       // 0x00601b3c    ff923c050000
                         test               eax, eax                                      // 0x00601b42    85c0
                         {disp8} jne        .Lbl_addr_0x00601b4e                          // 0x00601b44    7508
                         test               edi, edi                                      // 0x00601b46    85ff
                         {disp8} je         .Lbl_addr_0x00601b4e                          // 0x00601b48    7404
                         mov                eax, dword ptr [esi]                          // 0x00601b4a    8b06
                         xor.s              edi, edi                                      // 0x00601b4c    33ff
.Lbl_addr_0x00601b4e:    cmp.s              eax, ebx                                      // 0x00601b4e    3bc3
                         {disp8} jne        .Lbl_addr_0x00601b33                          // 0x00601b50    75e1
.Lbl_addr_0x00601b52:    pop                edi                                           // 0x00601b52    5f
                         pop                esi                                           // 0x00601b53    5e
                         pop                ebx                                           // 0x00601b54    5b
                         ret                0x0004                                        // 0x00601b55    c20400
                         nop                                                              // 0x00601b58    90
                         nop                                                              // 0x00601b59    90
                         nop                                                              // 0x00601b5a    90
                         nop                                                              // 0x00601b5b    90
                         nop                                                              // 0x00601b5c    90
                         nop                                                              // 0x00601b5d    90
                         nop                                                              // 0x00601b5e    90
                         nop                                                              // 0x00601b5f    90
@SetFirstObjectMobile__7MapCellFP6Object@12:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00601b60    8b442404
                         mov                dword ptr [ecx], eax                          // 0x00601b64    8901
                         ret                0x0004                                        // 0x00601b66    c20400
                         nop                                                              // 0x00601b69    90
                         nop                                                              // 0x00601b6a    90
                         nop                                                              // 0x00601b6b    90
                         nop                                                              // 0x00601b6c    90
                         nop                                                              // 0x00601b6d    90
                         nop                                                              // 0x00601b6e    90
                         nop                                                              // 0x00601b6f    90
@SetFirstObjectFixed__7MapCellFP6Object@12:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00601b70    8b442404
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00601b74    894104
                         ret                0x0004                                        // 0x00601b77    c20400
                         call               dword ptr [__imp__GetOpenFileNameA@4]         // 0x00601b7a    ff1570998a00
?GetX@MapCell@@QBEIXZ:
                         mov.s              eax, ecx                                      // 0x00601b80    8bc1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00601b82    8b0d5c19d000
                         sub.s              eax, ecx                                      // 0x00601b88    2bc1
                         sub                eax, 0x000059fc                               // 0x00601b8a    2dfc590000
                         sar                eax, 3                                        // 0x00601b8f    c1f803
                         xor.s              edx, edx                                      // 0x00601b92    33d2
                         div                dword ptr [ecx + 0x000059c4]                  // 0x00601b94    f7b1c4590000
                         ret                                                              // 0x00601b9a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00601b9b    e859fcdfff
?GetZ@MapCell@@QBEIXZ:
                         mov.s              eax, ecx                                      // 0x00601ba0    8bc1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00601ba2    8b0d5c19d000
                         sub.s              eax, ecx                                      // 0x00601ba8    2bc1
                         sub                eax, 0x000059fc                               // 0x00601baa    2dfc590000
                         sar                eax, 3                                        // 0x00601baf    c1f803
                         xor.s              edx, edx                                      // 0x00601bb2    33d2
                         div                dword ptr [ecx + 0x000059c4]                  // 0x00601bb4    f7b1c4590000
                         mov.s              eax, edx                                      // 0x00601bba    8bc2
                         ret                                                              // 0x00601bbc    c3
                         nop                                                              // 0x00601bbd    90
                         nop                                                              // 0x00601bbe    90
                         nop                                                              // 0x00601bbf    90
_jmp_addr_0x00601bc0:    call               .Lbl_addr_0x00601bd0                          // 0x00601bc0    e80b000000
                         and                eax, dword ptr [esp + 0x04]                   // 0x00601bc5    23442404
                         ret                0x0004                                        // 0x00601bc9    c20400
                         nop                                                              // 0x00601bcc    90
                         nop                                                              // 0x00601bcd    90
                         nop                                                              // 0x00601bce    90
                         nop                                                              // 0x00601bcf    90
.Lbl_addr_0x00601bd0:    sub                esp, 0x0c                                     // 0x00601bd0    83ec0c
                         push               esi                                           // 0x00601bd3    56
                         push               edi                                           // 0x00601bd4    57
                         mov.s              edi, ecx                                      // 0x00601bd5    8bf9
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x00601bd7    e8c4ffffff
                         push               eax                                           // 0x00601bdc    50
                         mov.s              ecx, edi                                      // 0x00601bdd    8bcf
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x00601bdf    e89cffffff
                         push               eax                                           // 0x00601be4    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00601be5    8d4c2410
                         call               _jmp_addr_0x00602fc0                          // 0x00601be9    e8d2130000
                         {disp8} mov        eax, dword ptr [esp + 0x0e]                   // 0x00601bee    8b44240e
                         {disp8} mov        ecx, dword ptr [esp + 0x0a]                   // 0x00601bf2    8b4c240a
                         and                eax, 0x0000ffff                               // 0x00601bf6    25ffff0000
                         and                ecx, 0x0000ffff                               // 0x00601bfb    81e1ffff0000
                         {disp8} jl         .Lbl_addr_0x00601c5d                          // 0x00601c01    7c5a
                         cmp                ecx, 0x000001ff                               // 0x00601c03    81f9ff010000
                         {disp8} jg         .Lbl_addr_0x00601c5d                          // 0x00601c09    7f52
                         test               eax, eax                                      // 0x00601c0b    85c0
                         {disp8} jl         .Lbl_addr_0x00601c5d                          // 0x00601c0d    7c4e
                         cmp                eax, 0x000001ff                               // 0x00601c0f    3dff010000
                         {disp8} jg         .Lbl_addr_0x00601c5d                          // 0x00601c14    7f47
                         mov.s              edx, ecx                                      // 0x00601c16    8bd1
                         sar                edx, 4                                        // 0x00601c18    c1fa04
                         push               ebx                                           // 0x00601c1b    53
                         xor.s              ebx, ebx                                      // 0x00601c1c    33db
                         shl                edx, 5                                        // 0x00601c1e    c1e205
                         mov.s              esi, eax                                      // 0x00601c21    8bf0
                         sar                esi, 4                                        // 0x00601c23    c1fe04
                         {disp32} mov       bl, byte ptr [edx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x00601c26    8a9c3264c9e900
                         mov.s              edx, ebx                                      // 0x00601c2d    8bd3
                         test               edx, edx                                      // 0x00601c2f    85d2
                         pop                ebx                                           // 0x00601c31    5b
                         {disp8} je         .Lbl_addr_0x00601c5d                          // 0x00601c32    7429
                         and                ecx, 0x0f                                     // 0x00601c34    83e10f
                         mov.s              esi, ecx                                      // 0x00601c37    8bf1
                         shl                esi, 4                                        // 0x00601c39    c1e604
                         and                eax, 0x0f                                     // 0x00601c3c    83e00f
                         add.s              esi, ecx                                      // 0x00601c3f    03f1
                         add.s              esi, eax                                      // 0x00601c41    03f0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x00601c43    8b049564c5e900
                         lea                eax, dword ptr [eax + esi * 0x8]              // 0x00601c4a    8d04f0
                         test               eax, eax                                      // 0x00601c4d    85c0
                         {disp8} je         .Lbl_addr_0x00601c5d                          // 0x00601c4f    740c
                         xor.s              ecx, ecx                                      // 0x00601c51    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x06]                     // 0x00601c53    8a4806
                         and                ecx, 0x10                                     // 0x00601c56    83e110
                         mov.s              esi, ecx                                      // 0x00601c59    8bf1
                         {disp8} jmp        .Lbl_addr_0x00601c62                          // 0x00601c5b    eb05
.Lbl_addr_0x00601c5d:    mov                esi, 0x00000001                               // 0x00601c5d    be01000000
.Lbl_addr_0x00601c62:    mov.s              ecx, edi                                      // 0x00601c62    8bcf
                         call               _jmp_addr_0x00601e00                          // 0x00601c64    e897010000
                         test               eax, eax                                      // 0x00601c69    85c0
                         {disp8} jne        .Lbl_addr_0x00601c78                          // 0x00601c6b    750b
                         pop                edi                                           // 0x00601c6d    5f
                         mov                eax, 0x00000010                               // 0x00601c6e    b810000000
                         pop                esi                                           // 0x00601c73    5e
                         add                esp, 0x0c                                     // 0x00601c74    83c40c
                         ret                                                              // 0x00601c77    c3
.Lbl_addr_0x00601c78:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00601c78    8b4704
                         xor.s              edx, edx                                      // 0x00601c7b    33d2
                         test               esi, esi                                      // 0x00601c7d    85f6
                         sete               dl                                            // 0x00601c7f    0f94c2
                         inc                edx                                           // 0x00601c82    42
                         test               eax, eax                                      // 0x00601c83    85c0
                         mov.s              esi, edx                                      // 0x00601c85    8bf2
                         {disp8} je         .Lbl_addr_0x00601cb0                          // 0x00601c87    7427
.Lbl_addr_0x00601c89:    {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00601c89    8b4828
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]                   // 0x00601c8c    8b4910
                         cmp                ecx, 0x06                                     // 0x00601c8f    83f906
                         {disp8} je         .Lbl_addr_0x00601c9e                          // 0x00601c92    740a
                         cmp                ecx, 0x12                                     // 0x00601c94    83f912
                         {disp8} jne        .Lbl_addr_0x00601ca1                          // 0x00601c97    7508
                         or                 esi, 4                                        // 0x00601c99    83ce04
                         {disp8} jmp        .Lbl_addr_0x00601ca1                          // 0x00601c9c    eb03
.Lbl_addr_0x00601c9e:    or                 esi, 0x20                                     // 0x00601c9e    83ce20
.Lbl_addr_0x00601ca1:    mov                edx, dword ptr [eax]                          // 0x00601ca1    8b10
                         push               edi                                           // 0x00601ca3    57
                         mov.s              ecx, eax                                      // 0x00601ca4    8bc8
                         call               dword ptr [edx + 0x53c]                       // 0x00601ca6    ff923c050000
                         test               eax, eax                                      // 0x00601cac    85c0
                         {disp8} jne        .Lbl_addr_0x00601c89                          // 0x00601cae    75d9
.Lbl_addr_0x00601cb0:    pop                edi                                           // 0x00601cb0    5f
                         mov.s              eax, esi                                      // 0x00601cb1    8bc6
                         pop                esi                                           // 0x00601cb3    5e
                         add                esp, 0x0c                                     // 0x00601cb4    83c40c
                         ret                                                              // 0x00601cb7    c3
                         nop                                                              // 0x00601cb8    90
                         nop                                                              // 0x00601cb9    90
                         nop                                                              // 0x00601cba    90
                         nop                                                              // 0x00601cbb    90
                         nop                                                              // 0x00601cbc    90
                         nop                                                              // 0x00601cbd    90
                         nop                                                              // 0x00601cbe    90
                         nop                                                              // 0x00601cbf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00601cc0    8b442404
                         push               eax                                           // 0x00601cc4    50
                         call               _jmp_addr_0x00601ce0                          // 0x00601cc5    e816000000
                         and                eax, dword ptr [esp + 0x08]                   // 0x00601cca    23442408
                         ret                0x0008                                        // 0x00601cce    c20800
                         nop                                                              // 0x00601cd1    90
                         nop                                                              // 0x00601cd2    90
                         nop                                                              // 0x00601cd3    90
                         nop                                                              // 0x00601cd4    90
                         nop                                                              // 0x00601cd5    90
                         nop                                                              // 0x00601cd6    90
                         nop                                                              // 0x00601cd7    90
                         nop                                                              // 0x00601cd8    90
                         nop                                                              // 0x00601cd9    90
                         nop                                                              // 0x00601cda    90
                         nop                                                              // 0x00601cdb    90
                         nop                                                              // 0x00601cdc    90
                         nop                                                              // 0x00601cdd    90
                         nop                                                              // 0x00601cde    90
                         nop                                                              // 0x00601cdf    90
_jmp_addr_0x00601ce0:    push               ebx                                           // 0x00601ce0    53
                         push               esi                                           // 0x00601ce1    56
                         mov.s              esi, ecx                                      // 0x00601ce2    8bf1
                         call               .Lbl_addr_0x00601bd0                          // 0x00601ce4    e8e7feffff
                         mov.s              ebx, eax                                      // 0x00601ce9    8bd8
                         test               bl, 0x08                                      // 0x00601ceb    f6c308
                         {disp8} je         .Lbl_addr_0x00601cfe                          // 0x00601cee    740e
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00601cf0    8b44240c
                         push               eax                                           // 0x00601cf4    50
                         mov.s              ecx, esi                                      // 0x00601cf5    8bce
                         call               ?CollideWithFixe@MapCell@@QAEHABUMapCoords@@@Z                          // 0x00601cf7    e814000000
                         or.s               ebx, eax                                      // 0x00601cfc    0bd8
.Lbl_addr_0x00601cfe:    pop                esi                                           // 0x00601cfe    5e
                         mov.s              eax, ebx                                      // 0x00601cff    8bc3
                         pop                ebx                                           // 0x00601d01    5b
                         ret                0x0004                                        // 0x00601d02    c20400
                         nop                                                              // 0x00601d05    90
                         nop                                                              // 0x00601d06    90
                         nop                                                              // 0x00601d07    90
                         nop                                                              // 0x00601d08    90
                         nop                                                              // 0x00601d09    90
                         nop                                                              // 0x00601d0a    90
                         nop                                                              // 0x00601d0b    90
                         nop                                                              // 0x00601d0c    90
                         nop                                                              // 0x00601d0d    90
                         nop                                                              // 0x00601d0e    90
                         nop                                                              // 0x00601d0f    90
?CollideWithFixe@MapCell@@QAEHABUMapCoords@@@Z:    sub                esp, 0x34                                     // 0x00601d10    83ec34
                         push               ebx                                           // 0x00601d13    53
                         push               esi                                           // 0x00601d14    56
                         push               edi                                           // 0x00601d15    57
                         mov.s              edi, ecx                                      // 0x00601d16    8bf9
                         call               .Lbl_addr_0x00601bd0                          // 0x00601d18    e8b3feffff
                         mov.s              ebx, eax                                      // 0x00601d1d    8bd8
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x00601d1f    8b442444
                         fild               dword ptr [eax]                               // 0x00601d23    db00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00601d25    8d4c2418
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00601d29    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00601d2f    d95c240c
                         {disp8} fild       dword ptr [eax + 0x04]                        // 0x00601d33    db4004
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00601d36    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00601d3c    d95c2414
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00601d40    d94008
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00601d43    8d44240c
                         push               eax                                           // 0x00601d47    50
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00601d48    d95c2414
                         push               0x3f000000                                    // 0x00601d4c    680000003f
                         call               @__ct__Q210NewCollide3ObjFfP7LHPoint@16       // 0x00601d51    e83a902200
                         {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x00601d56    8b7704
                         test               esi, esi                                      // 0x00601d59    85f6
                         {disp8} je         .Lbl_addr_0x00601d8c                          // 0x00601d5b    742f
.Lbl_addr_0x00601d5d:    mov                edx, dword ptr [esi]                          // 0x00601d5d    8b16
                         mov.s              ecx, esi                                      // 0x00601d5f    8bce
                         call               dword ptr [edx + 0x858]                       // 0x00601d61    ff9258080000
                         test               eax, eax                                      // 0x00601d67    85c0
                         {disp8} je         .Lbl_addr_0x00601d7b                          // 0x00601d69    7410
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00601d6b    8d4c2418
                         push               ecx                                           // 0x00601d6f    51
                         mov                ecx, dword ptr [eax]                          // 0x00601d70    8b08
                         call               @Collide__Q210NewCollide3ObjFPQ210NewCollide3Obj@12                          // 0x00601d72    e8c9732200
                         test               eax, eax                                      // 0x00601d77    85c0
                         {disp8} jne        .Lbl_addr_0x00601da0                          // 0x00601d79    7525
.Lbl_addr_0x00601d7b:    mov                edx, dword ptr [esi]                          // 0x00601d7b    8b16
                         push               edi                                           // 0x00601d7d    57
                         mov.s              ecx, esi                                      // 0x00601d7e    8bce
                         call               dword ptr [edx + 0x53c]                       // 0x00601d80    ff923c050000
                         mov.s              esi, eax                                      // 0x00601d86    8bf0
                         test               esi, esi                                      // 0x00601d88    85f6
                         {disp8} jne        .Lbl_addr_0x00601d5d                          // 0x00601d8a    75d1
.Lbl_addr_0x00601d8c:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00601d8c    8d4c2418
                         call               @__dt__Q210NewCollide3ObjFv@4                 // 0x00601d90    e8cb902200
                         pop                edi                                           // 0x00601d95    5f
                         pop                esi                                           // 0x00601d96    5e
                         mov.s              eax, ebx                                      // 0x00601d97    8bc3
                         pop                ebx                                           // 0x00601d99    5b
                         add                esp, 0x34                                     // 0x00601d9a    83c434
                         ret                0x0004                                        // 0x00601d9d    c20400
.Lbl_addr_0x00601da0:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00601da0    8d4c2418
                         call               @__dt__Q210NewCollide3ObjFv@4                 // 0x00601da4    e8b7902200
                         pop                edi                                           // 0x00601da9    5f
                         mov.s              eax, ebx                                      // 0x00601daa    8bc3
                         pop                esi                                           // 0x00601dac    5e
                         or                 eax, 0x8                                      // 0x00601dad    83c808
                         pop                ebx                                           // 0x00601db0    5b
                         add                esp, 0x34                                     // 0x00601db1    83c434
                         ret                0x0004                                        // 0x00601db4    c20400
                         nop                                                              // 0x00601db7    90
                         nop                                                              // 0x00601db8    90
                         nop                                                              // 0x00601db9    90
                         nop                                                              // 0x00601dba    90
                         nop                                                              // 0x00601dbb    90
                         nop                                                              // 0x00601dbc    90
                         nop                                                              // 0x00601dbd    90
                         nop                                                              // 0x00601dbe    90
                         nop                                                              // 0x00601dbf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00601dc0    8b442404
                         push               eax                                           // 0x00601dc4    50
                         call               ?CollideWithFixe@MapCell@@QAEHABUMapCoords@@@Z                          // 0x00601dc5    e846ffffff
                         and                eax, dword ptr [esp + 0x08]                   // 0x00601dca    23442408
                         ret                0x0008                                        // 0x00601dce    c20800
                         nop                                                              // 0x00601dd1    90
                         nop                                                              // 0x00601dd2    90
                         nop                                                              // 0x00601dd3    90
                         nop                                                              // 0x00601dd4    90
                         nop                                                              // 0x00601dd5    90
                         nop                                                              // 0x00601dd6    90
                         nop                                                              // 0x00601dd7    90
                         nop                                                              // 0x00601dd8    90
                         nop                                                              // 0x00601dd9    90
                         nop                                                              // 0x00601dda    90
                         nop                                                              // 0x00601ddb    90
                         nop                                                              // 0x00601ddc    90
                         nop                                                              // 0x00601ddd    90
                         nop                                                              // 0x00601dde    90
                         nop                                                              // 0x00601ddf    90
                         push               0x0                                           // 0x00601de0    6a00
                         push               0x12                                          // 0x00601de2    6a12
                         call               ?FindTypeOnMap@MapCell@@QAEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x00601de4    e8f7f7ffff
                         test               eax, eax                                      // 0x00601de9    85c0
                         setne              al                                            // 0x00601deb    0f95c0
                         and                eax, 0x000000ff                               // 0x00601dee    25ff000000
                         ret                                                              // 0x00601df3    c3
                         nop                                                              // 0x00601df4    90
                         nop                                                              // 0x00601df5    90
                         nop                                                              // 0x00601df6    90
                         nop                                                              // 0x00601df7    90
                         nop                                                              // 0x00601df8    90
                         nop                                                              // 0x00601df9    90
                         nop                                                              // 0x00601dfa    90
                         nop                                                              // 0x00601dfb    90
                         nop                                                              // 0x00601dfc    90
                         nop                                                              // 0x00601dfd    90
                         nop                                                              // 0x00601dfe    90
                         nop                                                              // 0x00601dff    90
_jmp_addr_0x00601e00:    push               esi                                           // 0x00601e00    56
                         push               edi                                           // 0x00601e01    57
                         mov.s              esi, ecx                                      // 0x00601e02    8bf1
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x00601e04    e897fdffff
                         mov.s              ecx, esi                                      // 0x00601e09    8bce
                         mov.s              edi, eax                                      // 0x00601e0b    8bf8
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x00601e0d    e86efdffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00601e12    8b0d5c19d000
                         cmp                eax, dword ptr [ecx + 0x000059c8]             // 0x00601e18    3b81c8590000
                         {disp8} jae        .Lbl_addr_0x00601e30                          // 0x00601e1e    7310
                         cmp                edi, dword ptr [ecx + 0x000059c4]             // 0x00601e20    3bb9c4590000
                         {disp8} jae        .Lbl_addr_0x00601e30                          // 0x00601e26    7308
                         pop                edi                                           // 0x00601e28    5f
                         mov                eax, 0x00000001                               // 0x00601e29    b801000000
                         pop                esi                                           // 0x00601e2e    5e
                         ret                                                              // 0x00601e2f    c3
.Lbl_addr_0x00601e30:    pop                edi                                           // 0x00601e30    5f
                         xor.s              eax, eax                                      // 0x00601e31    33c0
                         pop                esi                                           // 0x00601e33    5e
                         ret                                                              // 0x00601e34    c3
                         nop                                                              // 0x00601e35    90
                         nop                                                              // 0x00601e36    90
                         nop                                                              // 0x00601e37    90
                         nop                                                              // 0x00601e38    90
                         nop                                                              // 0x00601e39    90
                         nop                                                              // 0x00601e3a    90
                         nop                                                              // 0x00601e3b    90
                         nop                                                              // 0x00601e3c    90
                         nop                                                              // 0x00601e3d    90
                         nop                                                              // 0x00601e3e    90
                         nop                                                              // 0x00601e3f    90
                         push               esi                                           // 0x00601e40    56
                         push               edi                                           // 0x00601e41    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00601e42    8b7c240c
                         mov                eax, dword ptr [edi]                          // 0x00601e46    8b07
                         push               eax                                           // 0x00601e48    50
                         mov.s              esi, ecx                                      // 0x00601e49    8bf1
                         call               _jmp_addr_0x0074dc80                          // 0x00601e4b    e830be1400
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00601e50    8b4e10
                         add                esp, 0x04                                     // 0x00601e53    83c404
                         cmp.s              eax, ecx                                      // 0x00601e56    3bc1
                         {disp8} jae        .Lbl_addr_0x00601e77                          // 0x00601e58    731d
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x00601e5a    8b4f08
                         push               ecx                                           // 0x00601e5d    51
                         call               _jmp_addr_0x0074dc80                          // 0x00601e5e    e81dbe1400
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x00601e63    8b4e0c
                         add                esp, 0x04                                     // 0x00601e66    83c404
                         cmp.s              eax, ecx                                      // 0x00601e69    3bc1
                         {disp8} jae        .Lbl_addr_0x00601e77                          // 0x00601e6b    730a
                         pop                edi                                           // 0x00601e6d    5f
                         mov                eax, 0x00000001                               // 0x00601e6e    b801000000
                         pop                esi                                           // 0x00601e73    5e
                         ret                0x0004                                        // 0x00601e74    c20400
.Lbl_addr_0x00601e77:    pop                edi                                           // 0x00601e77    5f
                         xor.s              eax, eax                                      // 0x00601e78    33c0
                         pop                esi                                           // 0x00601e7a    5e
                         ret                0x0004                                        // 0x00601e7b    c20400
                         nop                                                              // 0x00601e7e    90
                         nop                                                              // 0x00601e7f    90
_jmp_addr_0x00601e80:    {disp32} mov       eax, dword ptr [data_bytes + 0x33adb8]        // 0x00601e80    a1b80dd000
                         neg                eax                                           // 0x00601e85    f7d8
                         sbb.s              eax, eax                                      // 0x00601e87    1bc0
                         and                eax, 0xffff2000                               // 0x00601e89    250020ffff
                         add                eax, 0x00010000                               // 0x00601e8e    0500000100
                         ret                                                              // 0x00601e93    c3
                         nop                                                              // 0x00601e94    90
                         nop                                                              // 0x00601e95    90
                         nop                                                              // 0x00601e96    90
                         nop                                                              // 0x00601e97    90
                         nop                                                              // 0x00601e98    90
                         nop                                                              // 0x00601e99    90
                         nop                                                              // 0x00601e9a    90
                         nop                                                              // 0x00601e9b    90
                         nop                                                              // 0x00601e9c    90
                         nop                                                              // 0x00601e9d    90
                         nop                                                              // 0x00601e9e    90
                         nop                                                              // 0x00601e9f    90
_jmp_addr_0x00601ea0:    {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00601ea0    8b4104
                         test               eax, eax                                      // 0x00601ea3    85c0
                         {disp8} je         .Lbl_addr_0x00601eb0                          // 0x00601ea5    7409
                         {disp8} mov        al, byte ptr [eax + 0x24]                     // 0x00601ea7    8a4024
                         shr                eax, 1                                        // 0x00601eaa    d1e8
                         and                eax, 0x01                                     // 0x00601eac    83e001
                         ret                                                              // 0x00601eaf    c3
.Lbl_addr_0x00601eb0:    xor.s              eax, eax                                      // 0x00601eb0    33c0
                         ret                                                              // 0x00601eb2    c3
                         nop                                                              // 0x00601eb3    90
                         nop                                                              // 0x00601eb4    90
                         nop                                                              // 0x00601eb5    90
                         nop                                                              // 0x00601eb6    90
                         nop                                                              // 0x00601eb7    90
                         nop                                                              // 0x00601eb8    90
                         nop                                                              // 0x00601eb9    90
                         nop                                                              // 0x00601eba    90
                         nop                                                              // 0x00601ebb    90
                         nop                                                              // 0x00601ebc    90
                         nop                                                              // 0x00601ebd    90
                         nop                                                              // 0x00601ebe    90
                         nop                                                              // 0x00601ebf    90
_globl_ct_0x00601ec0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00601ec0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00601ec6    b001
                         test               al, cl                                        // 0x00601ec8    84c8
                         {disp8} jne        .Lbl_addr_0x00601ed4                          // 0x00601eca    7508
                         or.s               cl, al                                        // 0x00601ecc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00601ece    880d34c9fa00
.Lbl_addr_0x00601ed4:    {disp32} jmp       .Lbl_addr_0x00601ee0                          // 0x00601ed4    e907000000
                         nop                                                              // 0x00601ed9    90
                         nop                                                              // 0x00601eda    90
                         nop                                                              // 0x00601edb    90
                         nop                                                              // 0x00601edc    90
                         nop                                                              // 0x00601edd    90
                         nop                                                              // 0x00601ede    90
                         nop                                                              // 0x00601edf    90
.Lbl_addr_0x00601ee0:    push               0x00407870                                    // 0x00601ee0    6870784000
                         call               _atexit                                       // 0x00601ee5    e8a7381c00
                         pop                ecx                                           // 0x00601eea    59
                         ret                                                              // 0x00601eeb    c3
                         nop                                                              // 0x00601eec    90
                         nop                                                              // 0x00601eed    90
                         nop                                                              // 0x00601eee    90
                         nop                                                              // 0x00601eef    90
_globl_ct_0x00601ef0:    {disp32} jmp       .Lbl_addr_0x00601f00                          // 0x00601ef0    e90b000000
                         nop                                                              // 0x00601ef5    90
                         nop                                                              // 0x00601ef6    90
                         nop                                                              // 0x00601ef7    90
                         nop                                                              // 0x00601ef8    90
                         nop                                                              // 0x00601ef9    90
                         nop                                                              // 0x00601efa    90
                         nop                                                              // 0x00601efb    90
                         nop                                                              // 0x00601efc    90
                         nop                                                              // 0x00601efd    90
                         nop                                                              // 0x00601efe    90
                         nop                                                              // 0x00601eff    90
.Lbl_addr_0x00601f00:    {disp32} fld       dword ptr [rdata_bytes + 0x87058]             // 0x00601f00    d90558009300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87054]             // 0x00601f06    d80d54009300
                         {disp32} fstp      dword ptr [data_bytes + 0x372328]             // 0x00601f0c    d91d2883d300
                         ret                                                              // 0x00601f12    c3
                         nop                                                              // 0x00601f13    90
                         nop                                                              // 0x00601f14    90
                         nop                                                              // 0x00601f15    90
                         nop                                                              // 0x00601f16    90
                         nop                                                              // 0x00601f17    90
                         nop                                                              // 0x00601f18    90
                         nop                                                              // 0x00601f19    90
                         nop                                                              // 0x00601f1a    90
                         nop                                                              // 0x00601f1b    90
                         nop                                                              // 0x00601f1c    90
                         nop                                                              // 0x00601f1d    90
                         nop                                                              // 0x00601f1e    90
                         nop                                                              // 0x00601f1f    90
_globl_ct_0x00601f20:    {disp32} jmp       .Lbl_addr_0x00601f30                          // 0x00601f20    e90b000000
                         nop                                                              // 0x00601f25    90
                         nop                                                              // 0x00601f26    90
                         nop                                                              // 0x00601f27    90
                         nop                                                              // 0x00601f28    90
                         nop                                                              // 0x00601f29    90
                         nop                                                              // 0x00601f2a    90
                         nop                                                              // 0x00601f2b    90
                         nop                                                              // 0x00601f2c    90
                         nop                                                              // 0x00601f2d    90
                         nop                                                              // 0x00601f2e    90
                         nop                                                              // 0x00601f2f    90
.Lbl_addr_0x00601f30:    {disp32} mov       dword ptr [data_bytes + 0x372324], 0xffffffff // 0x00601f30    c7052483d300ffffffff
                         ret                                                              // 0x00601f3a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00601f3b    e8b9f8dfff
_jmp_addr_0x00601f40:    {disp8} mov        ax, word ptr [esp + 0x04]                     // 0x00601f40    668b442404
                         {disp8} mov        dx, word ptr [esp + 0x08]                     // 0x00601f45    668b542408
                         {disp8} mov        word ptr [ecx + 0x06], dx                     // 0x00601f4a    66895106
                         {disp8} mov        word ptr [ecx + 0x02], ax                     // 0x00601f4e    66894102
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000            // 0x00601f52    c7410800000000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00601f59    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x000059e0]             // 0x00601f5e    8b90e0590000
                         shr                edx, 1                                        // 0x00601f64    d1ea
                         imul               dx, word ptr [eax + 0x000059e4]               // 0x00601f66    660faf90e4590000
                         mov                word ptr [ecx], dx                            // 0x00601f6e    668911
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00601f71    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x000059e0]             // 0x00601f76    8b90e0590000
                         shr                edx, 1                                        // 0x00601f7c    d1ea
                         imul               dx, word ptr [eax + 0x000059e8]               // 0x00601f7e    660faf90e8590000
                         {disp8} mov        word ptr [ecx + 0x04], dx                     // 0x00601f86    66895104
                         ret                0x0008                                        // 0x00601f8a    c20800
                         nop                                                              // 0x00601f8d    90
                         nop                                                              // 0x00601f8e    90
                         nop                                                              // 0x00601f8f    90
_jmp_addr_0x00601f90:    sub                esp, 0x0c                                     // 0x00601f90    83ec0c
                         push               ebx                                           // 0x00601f93    53
                         push               ebp                                           // 0x00601f94    55
                         mov.s              ebx, ecx                                      // 0x00601f95    8bd9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00601f97    8b0d5c19d000
                         xor.s              ebp, ebp                                      // 0x00601f9d    33ed
                         push               ebp                                           // 0x00601f9f    55
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00601fa0    895c2414
                         {disp8} mov        dword ptr [esp + 0x10], 0x00989680            // 0x00601fa4    c744241080969800
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00601fac    e8cfe9f4ff
                         test               eax, eax                                      // 0x00601fb1    85c0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00601fb3    89442408
                         {disp32} je        .Lbl_addr_0x0060205d                          // 0x00601fb7    0f84a0000000
                         push               esi                                           // 0x00601fbd    56
                         push               edi                                           // 0x00601fbe    57
                         {disp8} jmp        .Lbl_addr_0x00601fc5                          // 0x00601fbf    eb04
.Lbl_addr_0x00601fc1:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00601fc1    8b442410
.Lbl_addr_0x00601fc5:    {disp32} mov       esi, dword ptr [eax + 0x00000a50]             // 0x00601fc5    8bb0500a0000
                         test               esi, esi                                      // 0x00601fcb    85f6
                         {disp8} je         .Lbl_addr_0x0060203f                          // 0x00601fcd    7470
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00601fcf    8b442418
                         xor.s              edi, edi                                      // 0x00601fd3    33ff
                         {disp8} mov        di, word ptr [ebx + 0x02]                     // 0x00601fd5    668b7b02
                         xor.s              ebx, ebx                                      // 0x00601fd9    33db
                         {disp8} mov        bx, word ptr [eax + 0x06]                     // 0x00601fdb    668b5806
.Lbl_addr_0x00601fdf:    xor.s              ecx, ecx                                      // 0x00601fdf    33c9
                         {disp8} mov        cx, word ptr [esi + 0x16]                     // 0x00601fe1    668b4e16
                         mov.s              eax, edi                                      // 0x00601fe5    8bc7
                         sub.s              eax, ecx                                      // 0x00601fe7    2bc1
                         cdq                                                              // 0x00601fe9    99
                         mov.s              ecx, eax                                      // 0x00601fea    8bc8
                         xor.s              ecx, edx                                      // 0x00601fec    33ca
                         sub.s              ecx, edx                                      // 0x00601fee    2bca
                         xor.s              edx, edx                                      // 0x00601ff0    33d2
                         {disp8} mov        dx, word ptr [esi + 0x1a]                     // 0x00601ff2    668b561a
                         mov.s              eax, ebx                                      // 0x00601ff6    8bc3
                         sub.s              eax, edx                                      // 0x00601ff8    2bc2
                         cdq                                                              // 0x00601ffa    99
                         xor.s              eax, edx                                      // 0x00601ffb    33c2
                         sub.s              eax, edx                                      // 0x00601ffd    2bc2
                         cmp.s              ecx, eax                                      // 0x00601fff    3bc8
                         {disp8} jge        .Lbl_addr_0x0060200b                          // 0x00602001    7d08
                         sar                ecx, 1                                        // 0x00602003    d1f9
                         add.s              ecx, eax                                      // 0x00602005    03c8
                         mov.s              eax, ecx                                      // 0x00602007    8bc1
                         {disp8} jmp        .Lbl_addr_0x0060200f                          // 0x00602009    eb04
.Lbl_addr_0x0060200b:    sar                eax, 1                                        // 0x0060200b    d1f8
                         add.s              eax, ecx                                      // 0x0060200d    03c1
.Lbl_addr_0x0060200f:    cmp                eax, dword ptr [esp + 0x14]                   // 0x0060200f    3b442414
                         {disp8} jae        .Lbl_addr_0x0060202d                          // 0x00602013    7318
                         cmp                esi, dword ptr [esp + 0x28]                   // 0x00602015    3b742428
                         {disp8} je         .Lbl_addr_0x0060202d                          // 0x00602019    7412
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0060201b    8b4c242c
                         cmp                dword ptr [esi + 0x000005b8], ecx             // 0x0060201f    398eb8050000
                         {disp8} je         .Lbl_addr_0x0060202d                          // 0x00602025    7406
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00602027    89442414
                         mov.s              ebp, esi                                      // 0x0060202b    8bee
.Lbl_addr_0x0060202d:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x0060202d    8bb65c070000
                         test               esi, esi                                      // 0x00602033    85f6
                         {disp8} jne        .Lbl_addr_0x00601fdf                          // 0x00602035    75a8
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00602037    8b5c2418
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060203b    8b442410
.Lbl_addr_0x0060203f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0060203f    8b0d5c19d000
                         push               eax                                           // 0x00602045    50
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00602046    e835e9f4ff
                         test               eax, eax                                      // 0x0060204b    85c0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0060204d    89442410
                         {disp32} jne       .Lbl_addr_0x00601fc1                          // 0x00602051    0f856affffff
                         test               ebp, ebp                                      // 0x00602057    85ed
                         pop                edi                                           // 0x00602059    5f
                         pop                esi                                           // 0x0060205a    5e
                         {disp8} jne        .Lbl_addr_0x00602067                          // 0x0060205b    750a
.Lbl_addr_0x0060205d:    pop                ebp                                           // 0x0060205d    5d
                         xor.s              eax, eax                                      // 0x0060205e    33c0
                         pop                ebx                                           // 0x00602060    5b
                         add                esp, 0x0c                                     // 0x00602061    83c40c
                         ret                0x0010                                        // 0x00602064    c21000
.Lbl_addr_0x00602067:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00602067    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0060206b    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0060206f    8b4c240c
                         mov                dword ptr [edx], ebp                          // 0x00602073    892a
                         mov                dword ptr [eax], ecx                          // 0x00602075    8908
                         xor.s              eax, eax                                      // 0x00602077    33c0
                         {disp8} mov        ax, word ptr [ebx + 0x02]                     // 0x00602079    668b4302
                         xor.s              edx, edx                                      // 0x0060207d    33d2
                         {disp32} mov       dx, word ptr [ebp + 0x0000072a]               // 0x0060207f    668b952a070000
                         {disp8} lea        ecx, dword ptr [eax + 0x04]                   // 0x00602086    8d4804
                         cmp.s              ecx, edx                                      // 0x00602089    3bca
                         .byte              0x72, 0x3b// {disp8} jb .Lbl_addr_0x006020c8  // 0x0060208b    723b
                         xor.s              edx, edx                                      // 0x0060208d    33d2
                         {disp32} mov       dx, word ptr [ebp + 0x00000736]               // 0x0060208f    668b9536070000
                         add                eax, -0x04                                    // 0x00602096    83c0fc
                         cmp.s              eax, edx                                      // 0x00602099    3bc2
                         {disp8} ja         .Lbl_addr_0x006020c8                          // 0x0060209b    772b
                         xor.s              eax, eax                                      // 0x0060209d    33c0
                         {disp8} mov        ax, word ptr [ebx + 0x06]                     // 0x0060209f    668b4306
                         xor.s              ecx, ecx                                      // 0x006020a3    33c9
                         {disp32} mov       cx, word ptr [ebp + 0x0000072e]               // 0x006020a5    668b8d2e070000
                         {disp8} lea        edx, dword ptr [eax + 0x04]                   // 0x006020ac    8d5004
                         cmp.s              edx, ecx                                      // 0x006020af    3bd1
                         .byte              0x72, 0x15// {disp8} jb .Lbl_addr_0x006020c8  // 0x006020b1    7215
                         xor.s              ecx, ecx                                      // 0x006020b3    33c9
                         {disp32} mov       cx, word ptr [ebp + 0x0000073a]               // 0x006020b5    668b8d3a070000
                         add                eax, -0x04                                    // 0x006020bc    83c0fc
                         cmp.s              eax, ecx                                      // 0x006020bf    3bc1
                         mov                eax, 0x00000001                               // 0x006020c1    b801000000
                         {disp8} jbe        .Lbl_addr_0x006020cd                          // 0x006020c6    7605
.Lbl_addr_0x006020c8:    mov                eax, 0x00000002                               // 0x006020c8    b802000000
.Lbl_addr_0x006020cd:    pop                ebp                                           // 0x006020cd    5d
                         pop                ebx                                           // 0x006020ce    5b
                         add                esp, 0x0c                                     // 0x006020cf    83c40c
                         ret                0x0010                                        // 0x006020d2    c21000
                         nop                                                              // 0x006020d5    90
                         nop                                                              // 0x006020d6    90
                         nop                                                              // 0x006020d7    90
                         nop                                                              // 0x006020d8    90
                         nop                                                              // 0x006020d9    90
                         nop                                                              // 0x006020da    90
                         nop                                                              // 0x006020db    90
                         nop                                                              // 0x006020dc    90
                         nop                                                              // 0x006020dd    90
                         nop                                                              // 0x006020de    90
                         nop                                                              // 0x006020df    90
